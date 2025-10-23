package com.intercred.controller;

import com.intercred.model.SimulacaoEmprestimoDTO;
import com.intercred.service.SimulacaoEmprestimoService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * REST Controller para Simulação de Empréstimo.
 * <p>
 * Equivalente ao fluxo de cadastro/edição/exclusão de simulações de empréstimo do Delphi.
 * <p>
 * - CRUD completo (listar, buscar, criar, atualizar, excluir)
 * - Validação Bean Validation (DTO)
 * - Erros tratados via BusinessException/ProblemDetails
 * <p>
 * Usado em: frontend/src/pages/SimulacaoEmprestimoPage.tsx, frontend/src/components/SimulacaoEmprestimoForm.tsx
 * API: /api/simulacao-emprestimo
 */
@RestController
@RequestMapping("/api/simulacao-emprestimo")
@RequiredArgsConstructor
@Validated
public class SimulacaoEmprestimoController {

    private final SimulacaoEmprestimoService service;

    /**
     * Lista todas as simulações de empréstimo.
     *
     * GET /api/simulacao-emprestimo
     */
    @GetMapping
    public List<SimulacaoEmprestimoDTO> listAll() {
        return service.findAll();
    }

    /**
     * Busca uma simulação de empréstimo por ID.
     *
     * GET /api/simulacao-emprestimo/{id}
     */
    @GetMapping("/{id}")
    public ResponseEntity<SimulacaoEmprestimoDTO> getById(@PathVariable Long id) {
        SimulacaoEmprestimoDTO dto = service.findById(id);
        return ResponseEntity.ok(dto);
    }

    /**
     * Cria uma nova simulação de empréstimo.
     *
     * POST /api/simulacao-emprestimo
     */
    @PostMapping
    public ResponseEntity<SimulacaoEmprestimoDTO> create(@Valid @RequestBody SimulacaoEmprestimoDTO dto) {
        SimulacaoEmprestimoDTO created = service.create(dto);
        return ResponseEntity.status(HttpStatus.CREATED).body(created);
    }

    /**
     * Atualiza uma simulação de empréstimo existente.
     *
     * PUT /api/simulacao-emprestimo/{id}
     */
    @PutMapping("/{id}")
    public ResponseEntity<SimulacaoEmprestimoDTO> update(
            @PathVariable Long id,
            @Valid @RequestBody SimulacaoEmprestimoDTO dto
    ) {
        SimulacaoEmprestimoDTO updated = service.update(id, dto);
        return ResponseEntity.ok(updated);
    }

    /**
     * Exclui uma simulação de empréstimo por ID.
     *
     * DELETE /api/simulacao-emprestimo/{id}
     */
    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable Long id) {
        service.delete(id);
    }
}