package com.intercred.repository;

import com.intercred.domain.SimulacaoEmprestimo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Repositório Spring Data JPA para SimulacaoEmprestimo.
 * <p>
 * Equivalente ao DataModule/Query do Delphi para simulação de empréstimo.
 * <p>
 * - Entidade: SimulacaoEmprestimo
 * - Tabela: simulacao_emprestimo
 * - Usado em: SimulacaoEmprestimoService, SimulacaoEmprestimoController
 */
@Repository
public interface SimulacaoEmprestimoRepository extends JpaRepository<SimulacaoEmprestimo, Long> {
    // Métodos customizados podem ser adicionados aqui se necessário
}