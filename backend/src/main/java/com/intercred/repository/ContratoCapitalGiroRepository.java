package com.intercred.repository;

import com.intercred.domain.ContratoCapitalGiro;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Repositório Spring Data JPA para ContratoCapitalGiro.
 * <p>
 * Equivalente ao DataModule/Query do Delphi para contratos de capital de giro.
 * <p>
 * - Entidade: ContratoCapitalGiro
 * - Tabela: contrato_capital_giro
 * - Usado em: ContratoCapitalGiroService, ContratoCapitalGiroController
 */
@Repository
public interface ContratoCapitalGiroRepository extends JpaRepository<ContratoCapitalGiro, Long> {
    // Métodos customizados podem ser adicionados aqui se necessário
}