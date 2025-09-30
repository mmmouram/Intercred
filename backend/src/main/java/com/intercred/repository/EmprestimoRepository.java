package com.intercred.repository;

import com.intercred.domain.Emprestimo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Repositório Spring Data JPA para Emprestimo.
 * <p>
 * Equivalente ao DataModule/Query do Delphi para empréstimos.
 * <p>
 * - Entidade: Emprestimo
 * - Tabela: emprestimo
 * - Usado em: EmprestimoService, EmprestimoController
 */
@Repository
public interface EmprestimoRepository extends JpaRepository<Emprestimo, Long> {
    // Métodos customizados podem ser adicionados aqui se necessário
}