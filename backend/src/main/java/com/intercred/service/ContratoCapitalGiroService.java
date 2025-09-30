package com.intercred.service;

import com.intercred.domain.ContratoCapitalGiro;
import com.intercred.exception.BusinessException;
import com.intercred.model.ContratoCapitalGiroDTO;
import com.intercred.repository.ContratoCapitalGiroRepository;
import com.intercred.util.ContratoCapitalGiroMapper;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * Serviço de regras de negócio para Contrato de Capital de Giro.
 * <p>
 * - CRUD completo (listar, buscar, criar, atualizar, excluir)
 * - Validação Bean Validation (camada DTO e entidade)
 * - Mapeamento bidirecional via MapStruct (ContratoCapitalGiro <-> ContratoCapitalGiroDTO)
 * - Tratamento de erros com BusinessException (RFC7807)
 * <p>
 * Equivalente ao DataModule/Service do Delphi para contratos de capital de giro.
 * <p>
 * Usado em: ContratoCapitalGiroController, ContratoCapitalGiroRepository, ContratoCapitalGiroMapper
 */
@Service
@RequiredArgsConstructor
public class ContratoCapitalGiroService {

    private final ContratoCapitalGiroRepository repository;
    private final ContratoCapitalGiroMapper mapper;

    /**
     * Lista todos os contratos de capital de giro.
     *
     * @return lista de ContratoCapitalGiroDTO
     */
    @Transactional(readOnly = true)
    public List<ContratoCapitalGiroDTO> findAll() {
        List<ContratoCapitalGiro> entities = repository.findAll();
        return entities.stream()
                .map(mapper::toDto)
                .collect(Collectors.toList());
    }

    /**
     * Busca um contrato de capital de giro por ID.
     *
     * @param id identificador do contrato
     * @return ContratoCapitalGiroDTO
     * @throws BusinessException se não encontrado
     */
    @Transactional(readOnly = true)
    public ContratoCapitalGiroDTO findById(Long id) {
        ContratoCapitalGiro entity = repository.findById(id)
                .orElseThrow(() -> new BusinessException("Contrato de Capital de Giro não encontrado (id=" + id + ")"));
        return mapper.toDto(entity);
    }

    /**
     * Cria um novo contrato de capital de giro.
     *
     * @param dto DTO de entrada
     * @return ContratoCapitalGiroDTO criado
     */
    @Transactional
    public ContratoCapitalGiroDTO create(@Valid ContratoCapitalGiroDTO dto) {
        ContratoCapitalGiro entity = mapper.toEntity(dto);
        ContratoCapitalGiro saved = repository.save(entity);
        return mapper.toDto(saved);
    }

    /**
     * Atualiza um contrato de capital de giro existente.
     *
     * @param id  identificador do contrato
     * @param dto DTO com campos a atualizar
     * @return ContratoCapitalGiroDTO atualizado
     * @throws BusinessException se não encontrado
     */
    @Transactional
    public ContratoCapitalGiroDTO update(Long id, @Valid ContratoCapitalGiroDTO dto) {
        ContratoCapitalGiro entity = repository.findById(id)
                .orElseThrow(() -> new BusinessException("Contrato de Capital de Giro não encontrado (id=" + id + ")"));
        mapper.updateFromDto(dto, entity);
        ContratoCapitalGiro updated = repository.save(entity);
        return mapper.toDto(updated);
    }

    /**
     * Exclui um contrato de capital de giro por ID.
     *
     * @param id identificador do contrato
     * @throws BusinessException se não encontrado
     */
    @Transactional
    public void delete(Long id) {
        try {
            repository.deleteById(id);
        } catch (EmptyResultDataAccessException ex) {
            throw new BusinessException("Contrato de Capital de Giro não encontrado (id=" + id + ")");
        }
    }
}