package com.intercred.service;

import com.intercred.domain.Emprestimo;
import com.intercred.exception.BusinessException;
import com.intercred.model.EmprestimoDTO;
import com.intercred.repository.EmprestimoRepository;
import com.intercred.util.EmprestimoMapper;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

/**
 * Serviço de regras de negócio para Empréstimo.
 * <p>
 * - CRUD completo (listar, buscar, criar, atualizar, excluir)
 * - Validação Bean Validation (camada DTO e entidade)
 * - Mapeamento bidirecional via MapStruct (Emprestimo <-> EmprestimoDTO)
 * - Tratamento de erros com BusinessException (RFC7807)
 * <p>
 * Equivalente ao DataModule/Service do Delphi para empréstimos.
 * <p>
 * Usado em: EmprestimoController, EmprestimoRepository, EmprestimoMapper
 */
@Service
@RequiredArgsConstructor
public class EmprestimoService {

    private final EmprestimoRepository repository;
    private final EmprestimoMapper mapper;

    /**
     * Lista todos os empréstimos.
     *
     * @return lista de EmprestimoDTO
     */
    @Transactional(readOnly = true)
    public List<EmprestimoDTO> findAll() {
        List<Emprestimo> entities = repository.findAll();
        return entities.stream()
                .map(mapper::toDto)
                .collect(Collectors.toList());
    }

    /**
     * Busca um empréstimo por ID.
     *
     * @param id identificador do empréstimo
     * @return EmprestimoDTO
     * @throws BusinessException se não encontrado
     */
    @Transactional(readOnly = true)
    public EmprestimoDTO findById(Long id) {
        Emprestimo entity = repository.findById(id)
                .orElseThrow(() -> new BusinessException("Empréstimo não encontrado (id=" + id + ")"));
        return mapper.toDto(entity);
    }

    /**
     * Cria um novo empréstimo.
     *
     * @param dto DTO de entrada
     * @return EmprestimoDTO criado
     */
    @Transactional
    public EmprestimoDTO create(@Valid EmprestimoDTO dto) {
        Emprestimo entity = mapper.toEntity(dto);
        Emprestimo saved = repository.save(entity);
        return mapper.toDto(saved);
    }

    /**
     * Atualiza um empréstimo existente.
     *
     * @param id  identificador do empréstimo
     * @param dto DTO com campos a atualizar
     * @return EmprestimoDTO atualizado
     * @throws BusinessException se não encontrado
     */
    @Transactional
    public EmprestimoDTO update(Long id, @Valid EmprestimoDTO dto) {
        Emprestimo entity = repository.findById(id)
                .orElseThrow(() -> new BusinessException("Empréstimo não encontrado (id=" + id + ")"));
        mapper.updateFromDto(dto, entity);
        Emprestimo updated = repository.save(entity);
        return mapper.toDto(updated);
    }

    /**
     * Exclui um empréstimo por ID.
     *
     * @param id identificador do empréstimo
     * @throws BusinessException se não encontrado
     */
    @Transactional
    public void delete(Long id) {
        try {
            repository.deleteById(id);
        } catch (EmptyResultDataAccessException ex) {
            throw new BusinessException("Empréstimo não encontrado (id=" + id + ")");
        }
    }
}