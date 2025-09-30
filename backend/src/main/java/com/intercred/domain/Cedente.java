package com.intercred.domain;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.*;
import java.time.LocalDateTime;

/**
 * Entidade Cedente (equivalente ao cadastro de cedente/sacado no Delphi)
 * Tabela: cedente
 * 
 * Mapeamento:
 *  - Delphi: FACTBCLI (campos principais: CLICOD, CLINOM, CLICGC, CLITIP, etc.)
 *  - Java:   Cedente (id, nome, documento, tipo, email, telefone, createdAt, updatedAt)
 * 
 * Usado em: ContratoCapitalGiro, Emprestimo, SimulacaoEmprestimo
 */
@Entity
@Table(name = "cedente")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Cedente {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "{cedente.nome.notnull}")
    @Size(max = 120, message = "{javax.validation.constraints.Size.message}")
    @Column(name = "nome", nullable = false, length = 120)
    private String nome;

    @NotBlank(message = "{cedente.documento.notnull}")
    @Size(max = 20, message = "{javax.validation.constraints.Size.message}")
    @Column(name = "documento", nullable = false, length = 20)
    private String documento;

    @NotBlank(message = "{cedente.tipo.notnull}")
    @Size(max = 10, message = "{javax.validation.constraints.Size.message}")
    @Column(name = "tipo", nullable = false, length = 10)
    private String tipo; // Ex: "PJ", "CPF", "CNPJ"

    @Email(message = "{javax.validation.constraints.Email.message}")
    @Size(max = 120, message = "{javax.validation.constraints.Size.message}")
    @Column(name = "email", length = 120)
    private String email;

    @Size(max = 30, message = "{javax.validation.constraints.Size.message}")
    @Column(name = "telefone", length = 30)
    private String telefone;

    @Column(name = "created_at", nullable = false, updatable = false)
    private LocalDateTime createdAt;

    @Column(name = "updated_at", nullable = false)
    private LocalDateTime updatedAt;

    @PrePersist
    public void prePersist() {
        LocalDateTime now = LocalDateTime.now();
        this.createdAt = now;
        this.updatedAt = now;
    }

    @PreUpdate
    public void preUpdate() {
        this.updatedAt = LocalDateTime.now();
    }
}