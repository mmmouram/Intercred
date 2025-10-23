package com.intercred.domain;

import jakarta.persistence.*;
import jakarta.validation.constraints.*;
import lombok.*;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * Entidade SimulacaoEmprestimo
 * Equivalente à simulação de empréstimo do Delphi (ex: KG_SimulacaoProposta)
 *
 * Tabela: simulacao_emprestimo
 *
 * Mapeamento:
 *  - Delphi: KG_SimulacaoProposta, KG_SimulacaoProposta_Item (campos principais)
 *  - Java:   SimulacaoEmprestimo (id, numeroSimulacao, cedente, produto, datas, valores, taxas, status, etc.)
 *
 * Usado em: SimulacaoEmprestimoController, SimulacaoEmprestimoService, SimulacaoEmprestimoRepository, SimulacaoEmprestimoDTO
 */
@Entity
@Table(name = "simulacao_emprestimo")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class SimulacaoEmprestimo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank(message = "{simulacaoEmprestimo.numeroSimulacao.notnull}")
    @Size(max = 30)
    @Column(name = "numero_simulacao", nullable = false, length = 30)
    private String numeroSimulacao;

    @NotNull(message = "{simulacaoEmprestimo.cedenteId.notnull}")
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "cedente_id", nullable = false)
    private Cedente cedente;

    @NotNull(message = "{simulacaoEmprestimo.produtoId.notnull}")
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "produto_id", nullable = false)
    private Produto produto;

    @NotNull(message = "{simulacaoEmprestimo.dataOperacao.notnull}")
    @Column(name = "data_operacao", nullable = false)
    private LocalDate dataOperacao;

    @NotNull(message = "{simulacaoEmprestimo.valorReferencia.notnull}")
    @DecimalMin(value = "0.01", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_referencia", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorReferencia;

    @NotNull(message = "{simulacaoEmprestimo.valorFinanciado.notnull}")
    @DecimalMin(value = "0.01", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_financiado", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorFinanciado;

    @NotNull(message = "{simulacaoEmprestimo.valorLiquido.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_liquido", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorLiquido;

    @NotNull(message = "{simulacaoEmprestimo.taxaMes.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "taxa_mes", nullable = false, precision = 8, scale = 4)
    private BigDecimal taxaMes;

    @NotNull(message = "{simulacaoEmprestimo.taxaEfetiva.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "taxa_efetiva", nullable = false, precision = 8, scale = 4)
    private BigDecimal taxaEfetiva;

    @NotNull(message = "{simulacaoEmprestimo.taxaIOF.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "taxa_iof", nullable = false, precision = 8, scale = 4)
    private BigDecimal taxaIOF;

    @NotNull(message = "{simulacaoEmprestimo.taxaIOFComplementar.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "taxa_iof_complementar", nullable = false, precision = 8, scale = 4)
    private BigDecimal taxaIOFComplementar;

    @NotNull(message = "{simulacaoEmprestimo.valorIOF.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_iof", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorIOF;

    @NotNull(message = "{simulacaoEmprestimo.valorIOFComplementar.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_iof_complementar", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorIOFComplementar;

    @NotNull(message = "{simulacaoEmprestimo.valorTac.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_tac", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorTac;

    @NotNull(message = "{simulacaoEmprestimo.valorCustoCobranca.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_custo_cobranca", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorCustoCobranca;

    @NotNull(message = "{simulacaoEmprestimo.valorDoc.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_doc", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorDoc;

    @NotNull(message = "{simulacaoEmprestimo.valorCustoAdministrativo.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_custo_administrativo", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorCustoAdministrativo;

    @NotNull(message = "{simulacaoEmprestimo.valorOutrasDespesas.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "valor_outras_despesas", nullable = false, precision = 18, scale = 2)
    private BigDecimal valorOutrasDespesas;

    @NotNull(message = "{simulacaoEmprestimo.taxaAberturaCredito.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    @Column(name = "taxa_abertura_credito", nullable = false, precision = 8, scale = 4)
    private BigDecimal taxaAberturaCredito;

    @NotNull(message = "{simulacaoEmprestimo.totalParcelas.notnull}")
    @Min(value = 1, message = "{javax.validation.constraints.Min.message}")
    @Column(name = "total_parcelas", nullable = false)
    private Integer totalParcelas;

    @NotNull(message = "{simulacaoEmprestimo.dataPrimeiraParcela.notnull}")
    @Column(name = "data_primeira_parcela", nullable = false)
    private LocalDate dataPrimeiraParcela;

    @NotNull(message = "{simulacaoEmprestimo.diasCarencia.notnull}")
    @Min(value = 0, message = "{javax.validation.constraints.Min.message}")
    @Column(name = "dias_carencia", nullable = false)
    private Integer diasCarencia;

    @NotNull(message = "{simulacaoEmprestimo.parcelasCarencia.notnull}")
    @Min(value = 0, message = "{javax.validation.constraints.Min.message}")
    @Column(name = "parcelas_carencia", nullable = false)
    private Integer parcelasCarencia;

    @NotBlank(message = "{simulacaoEmprestimo.tipoPagtoIOF.notnull}")
    @Size(max = 2)
    @Column(name = "tipo_pagto_iof", nullable = false, length = 2)
    private String tipoPagtoIOF;

    @NotBlank(message = "{simulacaoEmprestimo.tipoPagtoTac.notnull}")
    @Size(max = 2)
    @Column(name = "tipo_pagto_tac", nullable = false, length = 2)
    private String tipoPagtoTac;

    @NotBlank(message = "{simulacaoEmprestimo.tipoContrato.notnull}")
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