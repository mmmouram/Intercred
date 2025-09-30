package com.intercred.model;

import lombok.*;
import jakarta.validation.constraints.*;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * DTO para Contrato de Capital de Giro.
 * Equivalente ao contrato de capital de giro do Delphi (FACTBPRO, KG_BOLETOOPERACAO).
 * Usado em: ContratoCapitalGiroController, ContratoCapitalGiroService, ContratoCapitalGiroMapper.
 */
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ContratoCapitalGiroDTO {

    private Long id;

    @NotBlank(message = "{contratoCapitalGiro.numeroContrato.notnull}")
    @Size(max = 30)
    private String numeroContrato;

    @NotNull(message = "{contratoCapitalGiro.cedenteId.notnull}")
    private Long cedenteId;

    private String cedenteNome;

    @NotNull(message = "{contratoCapitalGiro.produtoId.notnull}")
    private Long produtoId;

    private String produtoNome;

    @NotNull(message = "{contratoCapitalGiro.dataOperacao.notnull}")
    private LocalDate dataOperacao;

    @NotNull(message = "{contratoCapitalGiro.valorReferencia.notnull}")
    @DecimalMin(value = "0.01", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorReferencia;

    @NotNull(message = "{contratoCapitalGiro.valorFinanciado.notnull}")
    @DecimalMin(value = "0.01", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorFinanciado;

    @NotNull(message = "{contratoCapitalGiro.valorLiquido.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorLiquido;

    @NotNull(message = "{contratoCapitalGiro.taxaMes.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal taxaMes;

    @NotNull(message = "{contratoCapitalGiro.taxaEfetiva.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal taxaEfetiva;

    @NotNull(message = "{contratoCapitalGiro.taxaIOF.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal taxaIOF;

    @NotNull(message = "{contratoCapitalGiro.taxaIOFComplementar.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal taxaIOFComplementar;

    @NotNull(message = "{contratoCapitalGiro.valorIOF.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorIOF;

    @NotNull(message = "{contratoCapitalGiro.valorIOFComplementar.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorIOFComplementar;

    @NotNull(message = "{contratoCapitalGiro.valorTac.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorTac;

    @NotNull(message = "{contratoCapitalGiro.valorCustoCobranca.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorCustoCobranca;

    @NotNull(message = "{contratoCapitalGiro.valorDoc.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorDoc;

    @NotNull(message = "{contratoCapitalGiro.valorCustoAdministrativo.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorCustoAdministrativo;

    @NotNull(message = "{contratoCapitalGiro.valorOutrasDespesas.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorOutrasDespesas;

    @NotNull(message = "{contratoCapitalGiro.taxaAberturaCredito.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal taxaAberturaCredito;

    @NotNull(message = "{contratoCapitalGiro.totalParcelas.notnull}")
    @Min(value = 1, message = "{javax.validation.constraints.Min.message}")
    private Integer totalParcelas;

    @NotNull(message = "{contratoCapitalGiro.dataPrimeiraParcela.notnull}")
    private LocalDate dataPrimeiraParcela;

    @NotNull(message = "{contratoCapitalGiro.diasCarencia.notnull}")
    @Min(value = 0, message = "{javax.validation.constraints.Min.message}")
    private Integer diasCarencia;

    @NotNull(message = "{contratoCapitalGiro.parcelasCarencia.notnull}")
    @Min(value = 0, message = "{javax.validation.constraints.Min.message}")
    private Integer parcelasCarencia;

    @NotBlank(message = "{contratoCapitalGiro.tipoPagtoIOF.notnull}")
    @Size(max = 2)
    private String tipoPagtoIOF;

    @NotBlank(message = "{contratoCapitalGiro.tipoPagtoTac.notnull}")
    @Size(max = 2)
    private String tipoPagtoTac;

    @NotBlank(message = "{contratoCapitalGiro.tipoContrato.notnull}")
    @Size(max = 2)
    private String tipoContrato;

    @Size(max = 20)
    private String status;

    @Size(max = 50)
    private String usuarioComercial;

    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
}