package com.intercred.exception;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.validation.ConstraintViolationException;
import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ProblemDetail;
import org.springframework.http.ResponseEntity;
import org.springframework.lang.Nullable;
import org.springframework.validation.BindException;
import org.springframework.validation.FieldError;
import org.springframework.web.ErrorResponseException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.method.annotation.MethodArgumentTypeMismatchException;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import java.net.URI;
import java.time.OffsetDateTime;
import java.util.*;

/**
 * Handler global para exceções REST, retornando Problem Details (RFC7807).
 * <p>
 * - Mapeia BusinessException, validação Bean Validation, erros 404, 400, 500, etc.
 * - Retorna application/problem+json com detalhes, status, type, title, instance, errors.
 * - Mensagens internacionalizadas via MessageSource/messages.properties.
 * <p>
 * Equivalente ao tratamento de erros centralizado do Delphi (raise Exception, try/catch, Application.OnException).
 * <p>
 * Usado por todos os controllers REST (ContratoCapitalGiro, Emprestimo, SimulacaoEmprestimo, etc).
 */
@RestControllerAdvice
@Order(Ordered.HIGHEST_PRECEDENCE)
public class GlobalExceptionHandler extends ResponseEntityExceptionHandler {

    private final MessageSource messageSource;

    public GlobalExceptionHandler(MessageSource messageSource) {
        this.messageSource = messageSource;
    }

    // --- BusinessException (regra de negócio) ---
    @ExceptionHandler(BusinessException.class)
    public ResponseEntity<Object> handleBusinessException(
            BusinessException ex,
            HttpServletRequest request
    ) {
        ProblemDetail problem = createProblemDetail(
                HttpStatus.BAD_REQUEST,
                "business-error",
                getMessage("problem.title", "Erro de validação"),
                ex.getMessage(),
                request.getRequestURI()
        );
        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(problem);
    }

    // --- Bean Validation: @Valid (MethodArgumentNotValidException) ---
    @Override
    protected ResponseEntity<Object> handleMethodArgumentNotValid(
            MethodArgumentNotValidException ex,
            HttpHeaders headers,
            HttpStatusCode status,
            WebRequest request
    ) {
        Map<String, List<String>> errors = new LinkedHashMap<>();
        for (FieldError fieldError : ex.getBindingResult().getFieldErrors()) {
            String field = fieldError.getField();
            String msg = resolveFieldErrorMessage(fieldError);
            errors.computeIfAbsent(field, k -> new ArrayList<>()).add(msg);
        }
        ProblemDetail problem = createProblemDetail(
                HttpStatus.BAD_REQUEST,
                "validation-error",
                getMessage("problem.title", "Erro de validação"),
                getMessage("problem.detail", "Um ou mais campos estão inválidos. Corrija e tente novamente."),
                getRequestUri(request)
        );
        problem.setProperty("errors", errors);
        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(problem);
    }

    // --- Bean Validation: ConstraintViolationException (ex: @Validated em @RequestParam/@PathVariable) ---
    @ExceptionHandler(ConstraintViolationException.class)
    public ResponseEntity<Object> handleConstraintViolation(
            ConstraintViolationException ex,
            HttpServletRequest request
    ) {
        Map<String, List<String>> errors = new LinkedHashMap<>();
        ex.getConstraintViolations().forEach(violation -> {
            String field = extractFieldFromPath(violation.getPropertyPath().toString());
            String msg = getMessage(violation.getMessage(), violation.getMessage());
            errors.computeIfAbsent(field, k -> new ArrayList<>()).add(msg);
        });
        ProblemDetail problem = createProblemDetail(
                HttpStatus.BAD_REQUEST,
                "validation-error",
                getMessage("problem.title", "Erro de validação"),
                getMessage("problem.detail", "Um ou mais campos estão inválidos. Corrija e tente novamente."),
                request.getRequestURI()
        );
        problem.setProperty("errors", errors);
        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(problem);
    }

    // --- BindException (ex: @Valid em @ModelAttribute) ---
    @Override
    protected ResponseEntity<Object> handleBindException(
            BindException ex,
            HttpHeaders headers,
            HttpStatusCode status,
            WebRequest request
    ) {
        Map<String, List<String>> errors = new LinkedHashMap<>();
        for (FieldError fieldError : ex.getBindingResult().getFieldErrors()) {
            String field = fieldError.getField();
            String msg = resolveFieldErrorMessage(fieldError);
            errors.computeIfAbsent(field, k -> new ArrayList<>()).add(msg);
        }
        ProblemDetail problem = createProblemDetail(
                HttpStatus.BAD_REQUEST,
                "validation-error",
                getMessage("problem.title", "Erro de validação"),
                getMessage("problem.detail", "Um ou mais campos estão inválidos. Corrija e tente novamente."),
                getRequestUri(request)
        );
        problem.setProperty("errors", errors);
        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(problem);
    }

    // --- Argumento inválido (ex: tipo errado em path param) ---
    @ExceptionHandler(MethodArgumentTypeMismatchException.class)
    public ResponseEntity<Object> handleTypeMismatch(
            MethodArgumentTypeMismatchException ex,
            HttpServletRequest request
    ) {
        String field = ex.getName();
        String msg = getMessage("error.invalid", "Valor inválido") + ": " + ex.getValue();
        Map<String, List<String>> errors = new LinkedHashMap<>();
        errors.computeIfAbsent(field, k -> new ArrayList<>()).add(msg);
        ProblemDetail problem = createProblemDetail(
                HttpStatus.BAD_REQUEST,
                "type-mismatch",
                getMessage("problem.title", "Erro de validação"),
                getMessage("problem.detail", "Um ou mais campos estão inválidos. Corrija e tente novamente."),
                request.getRequestURI()
        );
        problem.setProperty("errors", errors);
        return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(problem);
    }

    // --- 404 Not Found (ex: registro não encontrado) ---
    @ExceptionHandler({org.springframework.web.server.ResponseStatusException.class})
    public ResponseEntity<Object> handleResponseStatusException(
            org.springframework.web.server.ResponseStatusException ex,
            HttpServletRequest request
    ) {
        HttpStatus status = ex.getStatusCode() != null ? ex.getStatusCode() : HttpStatus.NOT_FOUND;
        ProblemDetail problem = createProblemDetail(
                status,
                "not-found",
                getMessage("message.notfound", "Registro não encontrado"),
                ex.getReason() != null ? ex.getReason() : getMessage("message.notfound", "Registro não encontrado"),
                request.getRequestURI()
        );
        return ResponseEntity.status(status).body(problem);
    }

    // --- ErrorResponseException (Spring 6+) ---
    @ExceptionHandler(ErrorResponseException.class)
    public ResponseEntity<Object> handleErrorResponseException(
            ErrorResponseException ex,
            HttpServletRequest request
    ) {
        HttpStatus status = ex.getStatusCode() != null ? ex.getStatusCode() : HttpStatus.BAD_REQUEST;
        ProblemDetail problem = createProblemDetail(
                status,
                "error-response",
                ex.getBody() != null && ex.getBody().getTitle() != null ? ex.getBody().getTitle() : getMessage("problem.title", "Erro de validação"),
                ex.getBody() != null && ex.getBody().getDetail() != null ? ex.getBody().getDetail() : ex.getMessage(),
                request.getRequestURI()
        );
        return ResponseEntity.status(status).body(problem);
    }

    // --- Fallback: Exception (500) ---
    @ExceptionHandler(Exception.class)
    public ResponseEntity<Object> handleAllExceptions(
            Exception ex,
            HttpServletRequest request
    ) {
        ProblemDetail problem = createProblemDetail(
                HttpStatus.INTERNAL_SERVER_ERROR,
                "internal-error",
                getMessage("error.internal", "Erro interno do servidor"),
                ex.getMessage() != null ? ex.getMessage() : getMessage("default.error", "Ocorreu um erro inesperado"),
                request.getRequestURI()
        );
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(problem);
    }

    // --- Utilitários ---

    private ProblemDetail createProblemDetail(
            HttpStatus status,
            String type,
            String title,
            String detail,
            String instance
    ) {
        ProblemDetail problem = ProblemDetail.forStatusAndDetail(status, detail);
        problem.setType(URI.create("https://intercred.com.br/problem/" + type));
        problem.setTitle(title);
        problem.setInstance(URI.create(instance != null ? instance : "/"));
        problem.setProperty("timestamp", OffsetDateTime.now());
        problem.setProperty("status", status.value());
        return problem;
    }

    private String getMessage(String code, String defaultMsg) {
        try {
            return messageSource.getMessage(code, null, LocaleContextHolder.getLocale());
        } catch (Exception e) {
            return defaultMsg;
        }
    }

    private String resolveFieldErrorMessage(FieldError fieldError) {
        String code = fieldError.getDefaultMessage();
        if (code == null) return "Campo obrigatório";
        try {
            return messageSource.getMessage(code, fieldError.getArguments(), LocaleContextHolder.getLocale());
        } catch (Exception e) {
            return code;
        }
    }

    private String extractFieldFromPath(String path) {
        if (path == null) return "";
        int idx = path.lastIndexOf('.');
        if (idx >= 0 && idx < path.length() - 1) {
            return path.substring(idx + 1);
        }
        return path;
    }

    private String getRequestUri(WebRequest request) {
        String desc = request.getDescription(false);
        if (desc != null && desc.startsWith("uri=")) {
            return desc.substring(4);
        }
        return "/";
    }
}