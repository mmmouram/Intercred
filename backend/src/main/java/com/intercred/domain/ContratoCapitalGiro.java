package com.intercred.domain;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.*;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * Entidade ContratoCapitalGiro
 * Equivalente ao contrato de capital de giro do Delphi (ex: FACTBPRO, KG_BOLETOOPERACAO)
 * 
 * Tabela: contrato_capital_giro
 * 
 * Mapeamento:
 *  - Delphi: FACTBPRO, KG_BOLETOOPERACAO (campos principais)
 *  - Java:   ContratoCapitalGiro (id, numeroContrato, cedente, produto, datas, valores, taxas, status, etc.)
 * 
 * Usado em: ContratoCapitalGiroController, ContratoCapitalGiroService, ContratoCapitalGiroRepository, ContratoCapitalGiroDTO
 */
@Entity
@Table(name = "contrato_capital_giro")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ContratoCapitalGiro {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "{contratoCapitalGiro.numeroContrato.notnull}")
    @Size(max = 30)
    @Column(name = "numero_contrato", nullable = false, length = 30)
    private String numeroContrato;

    @NotNull(message = "{contratoCapitalGiro.cedenteId.notnull}")
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "cedente_id", nullable = false)
    private Cedente cedente;

    @NotNull(message = "{contratoCapitalGiro.produtoId.notnull}")
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "produto_id", nullable = false)
    private Produto produto;

    @NotNull(message = "{contratoCapitalGiro.dataOperacao.notnull}")
    @Column(name = "data_operacao", nullable = false)
    private LocalDate dataOperacao;

    @NotNull(message = "{contratoCapitalGiro.valorReferencia.notnull}")
    @DecimalMin(value = "0.01", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_referencia", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorReferencia;

    @NotNull(message = "{contratoCapitalGiro.valorFinanciado.notnull}")
    @DecimalMin(value = "0.01", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_financiado", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorFinanciado;

    @NotNull(message = "{contratoCapitalGiro.valorLiquido.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_liquido", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorLiquido;

    @NotNull(message = "{contratoCapitalGiro.taxaMes.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "taxa_mes", nullable = false, precision = 8, scale = 4)
    private BigDecimal taxaMes;

    @NotNull(message = "{contratoCapitalGiro.taxaEfetiva.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "taxa_efetiva", nullable = false, precision = 8, scale = 4)
    private BigDecimal taxaEfetiva;

    @NotNull(message = "{contratoCapitalGiro.taxaIOF.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "taxa_iof", nullable = false, precision = 8, scale = 4)
    private BigDecimal taxaIOF;

    @NotNull(message = "{contratoCapitalGiro.taxaIOFComplementar.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "taxa_iof_complementar", nullable = false, precision = 8, scale = 4)
    private BigDecimal taxaIOFComplementar;

    @NotNull(message = "{contratoCapitalGiro.valorIOF.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_iof", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorIOF;

    @NotNull(message = "{contratoCapitalGiro.valorIOFComplementar.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_iof_complementar", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorIOFComplementar;

    @NotNull(message = "{contratoCapitalGiro.valorTac.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_tac", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorTac;

    @NotNull(message = "{contratoCapitalGiro.valorCustoCobranca.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_custo_cobranca", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorCustoCobranca;

    @NotNull(message = "{contratoCapitalGiro.valorDoc.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_doc", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorDoc;

    @NotNull(message = "{contratoCapitalGiro.valorCustoAdministrativo.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_custo_administrativo", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorCustoAdministrativo;

    @NotNull(message = "{contratoCapitalGiro.valorOutrasDespesas.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_outras_despesas", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorOutrasDespesas;

    @NotNull(message = "{contratoCapitalGiro.taxaAberturaCredito.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "taxa_abertura_credito", nullable = false, precision = 8, scale = 4)
    private BigDecimal taxaAberturaCredito;

    @NotNull(message = "{contratoCapitalGiro.totalParcelas.notnull}")
    @Min(value = 1, message = "{javax.validation.constraints.Min.message}")
    @Column(name = "total_parcelas", nullable = false)
    private Integer totalParcelas;

    @NotNull(message = "{contratoCapitalGiro.dataPrimeiraParcela.notnull}")
    @Column(name = "data_primeira_parcela", nullable = false)
    private LocalDate dataPrimeiraParcela;

    @NotNull(message = "{contratoCapitalGiro.diasCarencia.notnull}")
    @Min(value = 0, message = "{javax.validation.constraints.Min.message}")
    @Column(name = "dias_carencia", nullable = false)
    private Integer diasCarencia;

    @NotNull(message = "{contratoCapitalGiro.parcelasCarencia.notnull}")
    @Min(value = 0, message = "{javax.validation.constraints.Min.message}")
    @Column(name = "parcelas_carencia", nullable = false)
    private Integer parcelasCarencia;

    @NotBlank(message = "{contratoCapitalGiro.tipoPagtoIOF.notnull}")
    @Size(max = 2)
    @Column(name = "tipo_pagto_iof", nullable = false, length = 2)
    private String tipoPagtoIOF;

    @NotBlank(message = "{contratoCapitalGiro.tipoPagtoTac.notnull}")
    @Size(max = 2)
    @Column(name = "tipo_pagto_tac", nullable = false, length = 2)
    private String tipoPagtoTac;

    @NotBlank(message = "{contratoCapitalGiro.tipoContrato.notnull}")
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