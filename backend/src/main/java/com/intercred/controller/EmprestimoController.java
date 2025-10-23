package com.intercred.controller;

import com.intercred.model.EmprestimoDTO;
import com.intercred.service.EmprestimoService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * REST Controller para Empréstimo.
 * <p>
 * Equivalente ao fluxo de cadastro/edição/exclusão de empréstimos do Delphi.
 * <p>
 * - CRUD completo (listar, buscar, criar, atualizar, excluir)
 * - Validação Bean Validation (DTO)
 * - Erros tratados via BusinessException/ProblemDetails
 * <p>
 * Usado em: frontend/src/pages/EmprestimoPage.tsx, frontend/src/components/EmprestimoForm.tsx
 * API: /api/emprestimos
 */
@RestController
@RequestMapping("/api/emprestimos")
@RequiredArgsConstructor
@Validated
public class EmprestimoController {

    private final EmprestimoService service;

    /**
     * Lista todos os empréstimos.
     *
     * GET /api/emprestimos
     */
    @GetMapping
    public List<EmprestimoDTO> listAll() {
        return service.findAll();
    }

    /**
     * Busca um empréstimo por ID.
     *
     * GET /api/emprestimos/{id}
     */
    @GetMapping("/{id}")
    public ResponseEntity<EmprestimoDTO> getById(@PathVariable Long id) {
        EmprestimoDTO dto = service.findById(id);
        return ResponseEntity.ok(dto);
    }

    /**
     * Cria um novo empréstimo.
     *
     * POST /api/emprestimos
     */
    @PostMapping
    public ResponseEntity<EmprestimoDTO> create(@Valid @RequestBody EmprestimoDTO dto) {
        EmprestimoDTO created = service.create(dto);
        return ResponseEntity.status(HttpStatus.CREATED).body(created);
    }

    /**
     * Atualiza um empréstimo existente.
     *
     * PUT /api/emprestimos/{id}
     */
    @PutMapping("/{id}")
    public ResponseEntity<EmprestimoDTO> update(
            @PathVariable Long id,
            @Valid @RequestBody EmprestimoDTO dto
    ) {
        EmprestimoDTO updated = service.update(id, dto);
        return ResponseEntity.ok(updated);
    }

    /**
     * Exclui um empréstimo por ID.
     *
     * DELETE /api/emprestimos/{id}
     */
    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable Long id) {
        service.delete(id);
    }
}