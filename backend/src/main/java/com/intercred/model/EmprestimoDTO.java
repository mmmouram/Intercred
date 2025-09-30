package com.intercred.model;

import lombok.*;
import jakarta.validation.constraints.*;
import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.LocalDateTime;

/**
 * DTO para Empréstimo.
 * Equivalente ao empréstimo do Delphi (FACTBPRO, KG_BOLETOOPERACAO).
 * Usado em: EmprestimoController, EmprestimoService, EmprestimoMapper.
 */
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class EmprestimoDTO {

    private Long id;

    @NotBlank(message = "{emprestimo.numeroContrato.notnull}")
    @Size(max = 30)
    private String numeroContrato;

    @NotNull(message = "{emprestimo.cedenteId.notnull}")
    private Long cedenteId;

    private String cedenteNome;

    @NotNull(message = "{emprestimo.produtoId.notnull}")
    private Long produtoId;

    private String produtoNome;

    @NotNull(message = "{emprestimo.dataOperacao.notnull}")
    private LocalDate dataOperacao;

    @NotNull(message = "{emprestimo.valorReferencia.notnull}")
    @DecimalMin(value = "0.01", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorReferencia;

    @NotNull(message = "{emprestimo.valorFinanciado.notnull}")
    @DecimalMin(value = "0.01", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorFinanciado;

    @NotNull(message = "{emprestimo.valorLiquido.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorLiquido;

    @NotNull(message = "{emprestimo.taxaMes.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal taxaMes;

    @NotNull(message = "{emprestimo.taxaEfetiva.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal taxaEfetiva;

    @NotNull(message = "{emprestimo.taxaIOF.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal taxaIOF;

    @NotNull(message = "{emprestimo.taxaIOFComplementar.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal taxaIOFComplementar;

    @NotNull(message = "{emprestimo.valorIOF.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorIOF;

    @NotNull(message = "{emprestimo.valorIOFComplementar.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorIOFComplementar;

    @NotNull(message = "{emprestimo.valorTac.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorTac;

    @NotNull(message = "{emprestimo.valorCustoCobranca.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorCustoCobranca;

    @NotNull(message = "{emprestimo.valorDoc.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorDoc;

    @NotNull(message = "{emprestimo.valorCustoAdministrativo.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorCustoAdministrativo;

    @NotNull(message = "{emprestimo.valorOutrasDespesas.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal valorOutrasDespesas;

    @NotNull(message = "{emprestimo.taxaAberturaCredito.notnull}")
    @DecimalMin(value = "0", message = "{javax.validation.constraints.DecimalMin.message}")
    private BigDecimal taxaAberturaCredito;

    @NotNull(message = "{emprestimo.totalParcelas.notnull}")
    @Min(value = 1, message = "{javax.validation.constraints.Min.message}")
    private Integer totalParcelas;

    @NotNull(message = "{emprestimo.dataPrimeiraParcela.notnull}")
    private LocalDate dataPrimeiraParcela;

    @NotNull(message = "{emprestimo.diasCarencia.notnull}")
    @Min(value = 0, message = "{javax.validation.constraints.Min.message}")
    private Integer diasCarencia;

    @NotNull(message = "{emprestimo.parcelasCarencia.notnull}")
    @Min(value = 0, message = "{javax.validation.constraints.Min.message}")
    private Integer parcelasCarencia;

    @NotBlank(message = "{emprestimo.tipoPagtoIOF.notnull}")
    @Size(max = 2)
    private String tipoPagtoIOF;

    @NotBlank(message = "{emprestimo.tipoPagtoTac.notnull}")
    @Size(max = 2)
    private String tipoPagtoTac;

    @NotBlank(message = "{emprestimo.tipoContrato.notnull}")
    @Size(max = 2)
    private String tipoContrato;

    @Size(max = 20)
    private String status;

    @Size(max = 50)
    private String usuarioComercial;

    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;
}