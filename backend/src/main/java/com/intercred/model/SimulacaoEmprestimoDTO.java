package com.intercred.model;

import lombok.*;
import jakarta.validation.constraints.*;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * DTO para Simulação de Empréstimo.
 * Equivalente à simulação de empréstimo do Delphi (KG_SimulacaoProposta, KG_SimulacaoProposta_Item).
 * Usado em: SimulacaoEmprestimoController, SimulacaoEmprestimoService, SimulacaoEmprestimoMapper.
 */
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class SimulacaoEmprestimoDTO {

    private Long id;

    @NotBlank(message = "{simulacaoEmprestimo.numeroSimulacao.notnull}")
    @Size(max = 30)
    private String numeroSimulacao;

    @NotNull(message = "{simulacaoEmprestimo.cedenteId.notnull}")
    private Long cedenteId;

    private String cedenteNome;

    @NotNull(message = "{simulacaoEmprestimo.produtoId.notnull}")
    private Long produtoId;

    private String produtoNome;

    @NotNull(message = "{simulacaoEmprestimo.dataOperacao.notnull}")
    private LocalDate dataOperacao;

    @NotNull(message = "{simulacaoEmprestimo.valorReferencia.notnull}")
    @DecimalMin(value = "0.01", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorReferencia;

    @NotNull(message = "{simulacaoEmprestimo.valorFinanciado.notnull}")
    @DecimalMin(value = "0.01", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorFinanciado;

    @NotNull(message = "{simulacaoEmprestimo.valorLiquido.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorLiquido;

    @NotNull(message = "{simulacaoEmprestimo.taxaMes.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal taxaMes;

    @NotNull(message = "{simulacaoEmprestimo.taxaEfetiva.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal taxaEfetiva;

    @NotNull(message = "{simulacaoEmprestimo.taxaIOF.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal taxaIOF;

    @NotNull(message = "{simulacaoEmprestimo.taxaIOFComplementar.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal taxaIOFComplementar;

    @NotNull(message = "{simulacaoEmprestimo.valorIOF.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorIOF;

    @NotNull(message = "{simulacaoEmprestimo.valorIOFComplementar.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorIOFComplementar;

    @NotNull(message = "{simulacaoEmprestimo.valorTac.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorTac;

    @NotNull(message = "{simulacaoEmprestimo.valorCustoCobranca.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorCustoCobranca;

    @NotNull(message = "{simulacaoEmprestimo.valorDoc.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorDoc;

    @NotNull(message = "{simulacaoEmprestimo.valorCustoAdministrativo.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorCustoAdministrativo;

    @NotNull(message = "{simulacaoEmprestimo.valorOutrasDespesas.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorOutrasDespesas;

    @NotNull(message = "{simulacaoEmprestimo.taxaAberturaCredito.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal taxaAberturaCredito;

    @NotNull(message = "{simulacaoEmprestimo.totalParcelas.notnull}")
    @Min(value = 1, message = "{javax.validation.constraints.Min.message}")
    private Integer totalParcelas;

    @NotNull(message = "{simulacaoEmprestimo.dataPrimeiraParcela.notnull}")
    private LocalDate dataPrimeiraParcela;

    @NotNull(message = "{simulacaoEmprestimo.diasCarencia.notnull}")
    @Min(value = 0, message = "{javax.validation.constraints.Min.message}")
    private Integer diasCarencia;

    @NotNull(message = "{simulacaoEmprestimo.parcelasCarencia.notnull}")
    @Min(value = 0, message = "{javax.validation.constraints.Min.message}")
    private Integer parcelasCarencia;

    @NotBlank(message = "{simulacaoEmprestimo.tipoPagtoIOF.notnull}")
    @Size(max = 2)
    private String tipoPagtoIOF;

    @NotBlank(message = "{simulacaoEmprestimo.tipoPagtoTac.notnull}")
    @Size(max = 2)
    private String tipoPagtoTac;

    @NotBlank(message = "{simulacaoEmprestimo.tipoContrato.notnull}")
    @Size(max = 2)
    private String tipoContrato;

    @Size(max = 20)
    private String status;

    @Size(max = 50)
    private String usuarioComercial;

    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
}