package com.intercred.domain;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.*;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * Entidade Emprestimo
 * Equivalente ao empréstimo do Delphi (ex: FACTBPRO, KG_BOLETOOPERACAO)
 * 
 * Tabela: emprestimo
 * 
 * Mapeamento:
 *  - Delphi: FACTBPRO, KG_BOLETOOPERACAO (campos principais)
 *  - Java:   Emprestimo (id, numeroContrato, cedente, produto, datas, valores, taxas, status, etc.)
 * 
 * Usado em: EmprestimoController, EmprestimoService, EmprestimoRepository, EmprestimoDTO
 */
@Entity
@Table(name = "emprestimo")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Emprestimo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "{emprestimo.numeroContrato.notnull}")
    @Size(max = 30)
    @Column(name = "numero_contrato", nullable = false, length = 30)
    private String numeroContrato;

    @NotNull(message = "{emprestimo.cedenteId.notnull}")
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "cedente_id", nullable = false)
    private Cedente cedente;

    @NotNull(message = "{emprestimo.produtoId.notnull}")
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "produto_id", nullable = false)
    private Produto produto;

    @NotNull(message = "{emprestimo.dataOperacao.notnull}")
    @Column(name = "data_operacao", nullable = false)
    private LocalDate dataOperacao;

    @NotNull(message = "{emprestimo.valorReferencia.notnull}")
    @DecimalMin(value = "0.01", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_referencia", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorReferencia;

    @NotNull(message = "{emprestimo.valorFinanciado.notnull}")
    @DecimalMin(value = "0.01", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_financiado", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorFinanciado;

    @NotNull(message = "{emprestimo.valorLiquido.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_liquido", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorLiquido;

    @NotNull(message = "{emprestimo.taxaMes.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "taxa_mes", nullable = false, precision = 8, scale = 4)
    private BigDecimal taxaMes;

    @NotNull(message = "{emprestimo.taxaEfetiva.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "taxa_efetiva", nullable = false, precision = 8, scale = 4)
    private BigDecimal taxaEfetiva;

    @NotNull(message = "{emprestimo.taxaIOF.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "taxa_iof", nullable = false, precision = 8, scale = 4)
    private BigDecimal taxaIOF;

    @NotNull(message = "{emprestimo.taxaIOFComplementar.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "taxa_iof_complementar", nullable = false, precision = 8, scale = 4)
    private BigDecimal taxaIOFComplementar;

    @NotNull(message = "{emprestimo.valorIOF.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_iof", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorIOF;

    @NotNull(message = "{emprestimo.valorIOFComplementar.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_iof_complementar", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorIOFComplementar;

    @NotNull(message = "{emprestimo.valorTac.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_tac", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorTac;

    @NotNull(message = "{emprestimo.valorCustoCobranca.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_custo_cobranca", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorCustoCobranca;

    @NotNull(message = "{emprestimo.valorDoc.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_doc", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorDoc;

    @NotNull(message = "{emprestimo.valorCustoAdministrativo.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_custo_administrativo", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorCustoAdministrativo;

    @NotNull(message = "{emprestimo.valorOutrasDespesas.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_outras_despesas", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorOutrasDespesas;

    @NotNull(message = "{emprestimo.taxaAberturaCredito.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "taxa_abertura_credito", nullable = false, precision = 8, scale = 4)
    private BigDecimal taxaAberturaCredito;

    @NotNull(message = "{emprestimo.totalParcelas.notnull}")
    @Min(value = 1, message = "{javax.validation.constraints.Min.message}")
    @Column(name = "total_parcelas", nullable = false)
    private Integer totalParcelas;

    @NotNull(message = "{emprestimo.dataPrimeiraParcela.notnull}")
    @Column(name = "data_primeira_parcela", nullable = false)
    private LocalDate dataPrimeiraParcela;

    @NotNull(message = "{emprestimo.diasCarencia.notnull}")
    @Min(value = 0, message = "{javax.validation.constraints.Min.message}")
    @Column(name = "dias_carencia", nullable = false)
    private Integer diasCarencia;

    @NotNull(message = "{emprestimo.parcelasCarencia.notnull}")
    @Min(value = 0, message = "{javax.validation.constraints.Min.message}")
    @Column(name = "parcelas_carencia", nullable = false)
    private Integer parcelasCarencia;

    @NotBlank(message = "{emprestimo.tipoPagtoIOF.notnull}")
    @Size(max = 2)
    @Column(name = "tipo_pagto_iof", nullable = false, length = 2)
    private String tipoPagtoIOF;

    @NotBlank(message = "{emprestimo.tipoPagtoTac.notnull}")
    @Size(max = 2)
    @Column(name = "tipo_pagto_tac", nullable = false, length = 2)
    private String tipoPagtoTac;

    @NotBlank(message = "{emprestimo.tipoContrato.notnull}")
    @Size(max = 2)
    @Column(name = "tipo_contrato", nullable = false, length = 2)
    private String tipoContrato;

    @Size(max = 20)
    @Column(name = "status", nullable = false)
    private String status = "ABERTO";

    @Size(max = 50)
    @Column(name = "usuario_comercial")
    private String usuarioComercial;

    @Column(name = "created_at", nullable = false, updatable = false)
    private LocalDateTime createdAt;

    @Column(name = "updated_at", nullable = false)
    private LocalDateTime updatedAt;

    @PrePersist
    public void prePersist() {
        LocalDateTime now = LocalDateTime.now();
        this.createdAt = now;
        this.updatedAt = now;
        if (this.status == null) {
            this.status = "ABERTO";
        }
    }

    @PreUpdate
    public void preUpdate() {
        this.updatedAt = LocalDateTime.now();
    }
}