package com.intercred.controller;

import com.intercred.model.ContratoCapitalGiroDTO;
import com.intercred.service.ContratoCapitalGiroService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

/**
 * REST Controller para Contrato de Capital de Giro.
 * <p>
 * Equivalente ao fluxo de cadastro/edição/exclusão de contratos de capital de giro do Delphi.
 * <p>
 * - CRUD completo (listar, buscar, criar, atualizar, excluir)
 * - Validação Bean Validation (DTO)
 * - Erros tratados via BusinessException/ProblemDetails
 * <p>
 * Usado em: frontend/src/pages/ContratoCapitalGiroPage.tsx, frontend/src/components/ContratoCapitalGiroForm.tsx
 * API: /api/contrato-capital-giro
 */
@RestController
@RequestMapping("/api/contrato-capital-giro")
@RequiredArgsConstructor
@Validated
public class ContratoCapitalGiroController {

    private final ContratoCapitalGiroService service;

    /**
     * Lista todos os contratos de capital de giro.
     *
     * GET /api/contrato-capital-giro
     */
    @GetMapping
    public List<ContratoCapitalGiroDTO> listAll() {
        return service.findAll();
    }

    /**
     * Busca um contrato de capital de giro por ID.
     *
     * GET /api/contrato-capital-giro/{id}
     */
    @GetMapping("/{id}")
    public ResponseEntity<ContratoCapitalGiroDTO> getById(@PathVariable Long id) {
        ContratoCapitalGiroDTO dto = service.findById(id);
        return ResponseEntity.ok(dto);
    }

    /**
     * Cria um novo contrato de capital de giro.
     *
     * POST /api/contrato-capital-giro
     */
    @PostMapping
    public ResponseEntity<ContratoCapitalGiroDTO> create(@Valid @RequestBody ContratoCapitalGiroDTO dto) {
        ContratoCapitalGiroDTO created = service.create(dto);
        return ResponseEntity.status(HttpStatus.CREATED).body(created);
    }

    /**
     * Atualiza um contrato de capital de giro existente.
     *
     * PUT /api/contrato-capital-giro/{id}
     */
    @PutMapping("/{id}")
    public ResponseEntity<ContratoCapitalGiroDTO> update(
            @PathVariable Long id,
            @Valid @RequestBody ContratoCapitalGiroDTO dto
    ) {
        ContratoCapitalGiroDTO updated = service.update(id, dto);
        return ResponseEntity.ok(updated);
    }

    /**
     * Exclui um contrato de capital de giro por ID.
     *
     * DELETE /api/contrato-capital-giro/{id}
     */
    @DeleteMapping("/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void delete(@PathVariable Long id) {
        service.delete(id);
    }
}