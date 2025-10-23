package com.intercred.exception;

/**
 * Exceção de negócio para regras de domínio e validação customizada.
 * <p>
 * Usada para sinalizar erros de negócio (ex: registro não encontrado, conflito, validação de domínio)
 * e ser tratada pelo GlobalExceptionHandler, retornando Problem Details (RFC7807) no padrão REST.
 * <p>
 * Equivalente ao uso de Exception/raise no Delphi para regras de tela, DataModule e service.
 * <p>
 * Exemplo de uso:
 * <pre>
 *   if (obj == null) {
 *       throw new BusinessException("Registro não encontrado");
 *   }
 * </pre>
 */
public class BusinessException extends RuntimeException {

    /**
     * Cria uma BusinessException com mensagem.
     * @param message mensagem de erro
     */
    public BusinessException(String message) {
        super(message);
    }

    /**
     * Cria uma BusinessException com mensagem e causa.
     * @param message mensagem de erro
     * @param cause causa original
     */
    public BusinessException(String message, Throwable cause) {
        super(message, cause);
    }
}