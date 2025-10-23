package com.intercred.service;

import com.intercred.domain.SimulacaoEmprestimo;
import com.intercred.exception.BusinessException;
import com.intercred.model.SimulacaoEmprestimoDTO;
import com.intercred.repository.SimulacaoEmprestimoRepository;
import com.intercred.util.SimulacaoEmprestimoMapper;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

/**
 * Serviço de regras de negócio para Simulação de Empréstimo.
 * <p>
 * - CRUD completo (listar, buscar, criar, atualizar, excluir)
 * - Validação Bean Validation (camada DTO e entidade)
 * - Mapeamento bidirecional via MapStruct (SimulacaoEmprestimo <-> SimulacaoEmprestimoDTO)
 * - Tratamento de erros com BusinessException (RFC7807)
 * <p>
 * Equivalente ao DataModule/Service do Delphi para simulação de empréstimo.
 * <p>
 * Usado em: SimulacaoEmprestimoController, SimulacaoEmprestimoRepository, SimulacaoEmprestimoMapper
 */
@Service
@RequiredArgsConstructor
public class SimulacaoEmprestimoService {

    private final SimulacaoEmprestimoRepository repository;
    private final SimulacaoEmprestimoMapper mapper;

    /**
     * Lista todas as simulações de empréstimo.
     *
     * @return lista de SimulacaoEmprestimoDTO
     */
    @Transactional(readOnly = true)
    public List<SimulacaoEmprestimoDTO> findAll() {
        List<SimulacaoEmprestimo> entities = repository.findAll();
        return entities.stream()
                .map(mapper::toDto)
                .collect(Collectors.toList());
    }

    /**
     * Busca uma simulação de empréstimo por ID.
     *
     * @param id identificador da simulação
     * @return SimulacaoEmprestimoDTO
     * @throws BusinessException se não encontrado
     */
    @Transactional(readOnly = true)
    public SimulacaoEmprestimoDTO findById(Long id) {
        SimulacaoEmprestimo entity = repository.findById(id)
                .orElseThrow(() -> new BusinessException("Simulação de Empréstimo não encontrada (id=" + id + ")"));
        return mapper.toDto(entity);
    }

    /**
     * Cria uma nova simulação de empréstimo.
     *
     * @param dto DTO de entrada
     * @return SimulacaoEmprestimoDTO criada
     */
    @Transactional
    public SimulacaoEmprestimoDTO create(@Valid SimulacaoEmprestimoDTO dto) {
        SimulacaoEmprestimo entity = mapper.toEntity(dto);
        SimulacaoEmprestimo saved = repository.save(entity);
        return mapper.toDto(saved);
    }

    /**
     * Atualiza uma simulação de empréstimo existente.
     *
     * @param id  identificador da simulação
     * @param dto DTO com campos a atualizar
     * @return SimulacaoEmprestimoDTO atualizada
     * @throws BusinessException se não encontrado
     */
    @Transactional
    public SimulacaoEmprestimoDTO update(Long id, @Valid SimulacaoEmprestimoDTO dto) {
        SimulacaoEmprestimo entity = repository.findById(id)
                .orElseThrow(() -> new BusinessException("Simulação de Empréstimo não encontrada (id=" + id + ")"));
        mapper.updateFromDto(dto, entity);
        SimulacaoEmprestimo updated = repository.save(entity);
        return mapper.toDto(updated);
    }

    /**
     * Exclui uma simulação de empréstimo por ID.
     *
     * @param id identificador da simulação
     * @throws BusinessException se não encontrado
     */
    @Transactional
    public void delete(Long id) {
        try {
            repository.deleteById(id);
        } catch (EmptyResultDataAccessException ex) {
            throw new BusinessException("Simulação de Empréstimo não encontrada (id=" + id + ")");
        }
    }
}