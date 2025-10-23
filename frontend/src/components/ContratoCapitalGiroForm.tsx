import React from "react";
import { useForm } from "react-hook-form";
import { z } from "zod";
import { zodResolver } from "@hookform/resolvers/zod";
import { ContratoCapitalGiroCreate } from "@services/contratoCapitalGiroService";
import { useCreateContratoCapitalGiro } from "@hooks/useContratoCapitalGiro";
import { Formatters } from "@utils/formatters";

// Esquema de validação Zod
const ContratoCapitalGiroSchema = z.object({
  numeroContrato: z.string().min(1, "Número do contrato obrigatório"),
  cedenteId: z.coerce.number().int().positive("Cedente obrigatório"),
  produtoId: z.coerce.number().int().positive("Produto obrigatório"),
  dataOperacao: z.string().min(1, "Data da operação obrigatória"),
  valorReferencia: z.coerce.number().min(0.01, "Valor de referência obrigatório"),
  valorFinanciado: z.coerce.number().min(0.01, "Valor financiado obrigatório"),
  valorLiquido: z.coerce.number().min(0, "Valor líquido obrigatório"),
  taxaMes: z.coerce.number().min(0, "Taxa ao mês obrigatória"),
  taxaEfetiva: z.coerce.number().min(0, "Taxa efetiva obrigatória"),
  taxaIOF: z.coerce.number().min(0, "Taxa IOF obrigatória"),
  taxaIOFComplementar: z.coerce.number().min(0, "Taxa IOF Compl. obrigatória"),
  valorIOF: z.coerce.number().min(0, "Valor IOF obrigatório"),
  valorIOFComplementar: z.coerce.number().min(0, "Valor IOF Compl. obrigatório"),
  valorTac: z.coerce.number().min(0, "Valor TAC obrigatório"),
  valorCustoCobranca: z.coerce.number().min(0, "Custo cobrança obrigatório"),
  valorDoc: z.coerce.number().min(0, "Valor DOC obrigatório"),
  valorCustoAdministrativo: z.coerce.number().min(0, "Custo administrativo obrigatório"),
  valorOutrasDespesas: z.coerce.number().min(0, "Outras despesas obrigatório"),
  taxaAberturaCredito: z.coerce.number().min(0, "Taxa abertura crédito obrigatória"),
  totalParcelas: z.coerce.number().int().min(1, "Total de parcelas obrigatório"),
  dataPrimeiraParcela: z.string().min(1, "Data da 1ª parcela obrigatória"),
  diasCarencia: z.coerce.number().int().min(0, "Dias de carência obrigatório"),
  parcelasCarencia: z.coerce.number().int().min(0, "Parcelas de carência obrigatório"),
  tipoPagtoIOF: z.string().min(1, "Tipo pagamento IOF obrigatório"),
  tipoPagtoTac: z.string().min(1, "Tipo pagamento TAC obrigatório"),
  tipoContrato: z.string().min(1, "Tipo de contrato obrigatório"),
  status: z.string().optional(),
  usuarioComercial: z.string().optional(),
});

type ContratoCapitalGiroFormValues = z.infer<typeof ContratoCapitalGiroSchema>;

interface ContratoCapitalGiroFormProps {
  onSuccess?: (data: any) => void;
  initialValues?: Partial<ContratoCapitalGiroFormValues>;
}

const defaultValues: ContratoCapitalGiroFormValues = {
  numeroContrato: "",
  cedenteId: 0,
  produtoId: 0,
  dataOperacao: "",
  valorReferencia: 0,
  valorFinanciado: 0,
  valorLiquido: 0,
  taxaMes: 0,
  taxaEfetiva: 0,
  taxaIOF: 0,
  taxaIOFComplementar: 0,
  valorIOF: 0,
  valorIOFComplementar: 0,
  valorTac: 0,
  valorCustoCobranca: 0,
  valorDoc: 0,
  valorCustoAdministrativo: 0,
  valorOutrasDespesas: 0,
  taxaAberturaCredito: 0,
  totalParcelas: 1,
  dataPrimeiraParcela: "",
  diasCarencia: 0,
  parcelasCarencia: 0,
  tipoPagtoIOF: "F",
  tipoPagtoTac: "F",
  tipoContrato: "N",
  status: "ABERTO",
  usuarioComercial: "",
};

export const ContratoCapitalGiroForm: React.FC<ContratoCapitalGiroFormProps> = ({
  onSuccess,
  initialValues,
}) => {
  const {
    register,
    handleSubmit,
    formState: { errors, isSubmitting },
    setValue,
    watch,
  } = useForm<ContratoCapitalGiroFormValues>({
    resolver: zodResolver(ContratoCapitalGiroSchema),
    defaultValues: { ...defaultValues, ...initialValues },
    mode: "onBlur",
  });

  const mutation = useCreateContratoCapitalGiro({
    onSuccess: (data) => {
      if (onSuccess) onSuccess(data);
    },
  });

  // Máscaras e helpers
  const handleCurrencyInput = (field: keyof ContratoCapitalGiroFormValues) => (e: React.ChangeEvent<HTMLInputElement>) => {
    const raw = e.target.value.replace(/[^\d,.-]/g, "").replace(",", ".");
    const num = parseFloat(raw);
    setValue(field, isNaN(num) ? 0 : num, { shouldValidate: true });
  };

  // Exemplo: campos assistidos para máscara
  const valorReferencia = watch("valorReferencia");
  const valorFinanciado = watch("valorFinanciado");
  const valorLiquido = watch("valorLiquido");

  return (
    <form
      className="contrato-capital-giro-form"
      onSubmit={handleSubmit((values) => mutation.mutate(values as ContratoCapitalGiroCreate))}
      autoComplete="off"
      noValidate
    >
      <fieldset disabled={isSubmitting || mutation.isPending}>
        <div className="form-row">
          <label>
            Número do Contrato *
            <input
              type="text"
              {...register("numeroContrato")}
              autoFocus
              maxLength={30}
              aria-invalid={!!errors.numeroContrato}
            />
            {errors.numeroContrato && <span className="error">{errors.numeroContrato.message}</span>}
          </label>
          <label>
            Cedente (ID) *
            <input
              type="number"
              {...register("cedenteId", { valueAsNumber: true })}
              min={1}
              aria-invalid={!!errors.cedenteId}
            />
            {errors.cedenteId && <span className="error">{errors.cedenteId.message}</span>}
          </label>
          <label>
            Produto (ID) *
            <input
              type="number"
              {...register("produtoId", { valueAsNumber: true })}
              min={1}
              aria-invalid={!!errors.produtoId}
            />
            {errors.produtoId && <span className="error">{errors.produtoId.message}</span>}
          </label>
        </div>
        <div className="form-row">
          <label>
            Data da Operação *
            <input
              type="date"
              {...register("dataOperacao")}
              aria-invalid={!!errors.dataOperacao}
            />
            {errors.dataOperacao && <span className="error">{errors.dataOperacao.message}</span>}
          </label>
          <label>
            Valor de Referência *
            <input
              type="text"
              inputMode="decimal"
              value={Formatters.currency(valorReferencia)}
              onChange={handleCurrencyInput("valorReferencia")}
              aria-invalid={!!errors.valorReferencia}
            />
            {errors.valorReferencia && <span className="error">{errors.valorReferencia.message}</span>}
          </label>
          <label>
            Valor Financiado *
            <input
              type="text"
              inputMode="decimal"
              value={Formatters.currency(valorFinanciado)}
              onChange={handleCurrencyInput("valorFinanciado")}
              aria-invalid={!!errors.valorFinanciado}
            />
            {errors.valorFinanciado && <span className="error">{errors.valorFinanciado.message}</span>}
          </label>
          <label>
            Valor Líquido *
            <input
              type="text"
              inputMode="decimal"
              value={Formatters.currency(valorLiquido)}
              onChange={handleCurrencyInput("valorLiquido")}
              aria-invalid={!!errors.valorLiquido}
            />
            {errors.valorLiquido && <span className="error">{errors.valorLiquido.message}</span>}
          </label>
        </div>
        <div className="form-row">
          <label>
            Taxa ao Mês (%) *
            <input
              type="number"
              step="0.0001"
              {...register("taxaMes", { valueAsNumber: true })}
              aria-invalid={!!errors.taxaMes}
            />
            {errors.taxaMes && <span className="error">{errors.taxaMes.message}</span>}
          </label>
          <label>
            Taxa Efetiva (%) *
            <input
              type="number"
              step="0.0001"
              {...register("taxaEfetiva", { valueAsNumber: true })}
              aria-invalid={!!errors.taxaEfetiva}
            />
            {errors.taxaEfetiva && <span className="error">{errors.taxaEfetiva.message}</span>}
          </label>
          <label>
            Taxa IOF (%) *
            <input
              type="number"
              step="0.0001"
              {...register("taxaIOF", { valueAsNumber: true })}
              aria-invalid={!!errors.taxaIOF}
            />
            {errors.taxaIOF && <span className="error">{errors.taxaIOF.message}</span>}
          </label>
          <label>
            Taxa IOF Compl. (%) *
            <input
              type="number"
              step="0.0001"
              {...register("taxaIOFComplementar", { valueAsNumber: true })}
              aria-invalid={!!errors.taxaIOFComplementar}
            />
            {errors.taxaIOFComplementar && <span className="error">{errors.taxaIOFComplementar.message}</span>}
          </label>
        </div>
        <div className="form-row">
          <label>
            Valor IOF *
            <input
              type="number"
              step="0.01"
              {...register("valorIOF", { valueAsNumber: true })}
              aria-invalid={!!errors.valorIOF}
            />
            {errors.valorIOF && <span className="error">{errors.valorIOF.message}</span>}
          </label>
          <label>
            Valor IOF Compl. *
            <input
              type="number"
              step="0.01"
              {...register("valorIOFComplementar", { valueAsNumber: true })}
              aria-invalid={!!errors.valorIOFComplementar}
            />
            {errors.valorIOFComplementar && <span className="error">{errors.valorIOFComplementar.message}</span>}
          </label>
          <label>
            Valor TAC *
            <input
              type="number"
              step="0.01"
              {...register("valorTac", { valueAsNumber: true })}
              aria-invalid={!!errors.valorTac}
            />
            {errors.valorTac && <span className="error">{errors.valorTac.message}</span>}
          </label>
          <label>
            Custo Cobrança *
            <input
              type="number"
              step="0.01"
              {...register("valorCustoCobranca", { valueAsNumber: true })}
              aria-invalid={!!errors.valorCustoCobranca}
            />
            {errors.valorCustoCobranca && <span className="error">{errors.valorCustoCobranca.message}</span>}
          </label>
        </div>
        <div className="form-row">
          <label>
            Valor DOC *
            <input
              type="number"
              step="0.01"
              {...register("valorDoc", { valueAsNumber: true })}
              aria-invalid={!!errors.valorDoc}
            />
            {errors.valorDoc && <span className="error">{errors.valorDoc.message}</span>}
          </label>
          <label>
            Custo Administrativo *
            <input
              type="number"
              step="0.01"
              {...register("valorCustoAdministrativo", { valueAsNumber: true })}
              aria-invalid={!!errors.valorCustoAdministrativo}
            />
            {errors.valorCustoAdministrativo && <span className="error">{errors.valorCustoAdministrativo.message}</span>}
          </label>
          <label>
            Outras Despesas *
            <input
              type="number"
              step="0.01"
              {...register("valorOutrasDespesas", { valueAsNumber: true })}
              aria-invalid={!!errors.valorOutrasDespesas}
            />
            {errors.valorOutrasDespesas && <span className="error">{errors.valorOutrasDespesas.message}</span>}
          </label>
          <label>
            Taxa Abertura Crédito *
            <input
              type="number"
              step="0.01"
              {...register("taxaAberturaCredito", { valueAsNumber: true })}
              aria-invalid={!!errors.taxaAberturaCredito}
            />
            {errors.taxaAberturaCredito && <span className="error">{errors.taxaAberturaCredito.message}</span>}
          </label>
        </div>
        <div className="form-row">
          <label>
            Total de Parcelas *
            <input
              type="number"
              min={1}
              {...register("totalParcelas", { valueAsNumber: true })}
              aria-invalid={!!errors.totalParcelas}
            />
            {errors.totalParcelas && <span className="error">{errors.totalParcelas.message}</span>}
          </label>
          <label>
            Data 1ª Parcela *
            <input
              type="date"
              {...register("dataPrimeiraParcela")}
              aria-invalid={!!errors.dataPrimeiraParcela}
            />
            {errors.dataPrimeiraParcela && <span className="error">{errors.dataPrimeiraParcela.message}</span>}
          </label>
          <label>
            Dias de Carência *
            <input
              type="number"
              min={0}
              {...register("diasCarencia", { valueAsNumber: true })}
              aria-invalid={!!errors.diasCarencia}
            />
            {errors.diasCarencia && <span className="error">{errors.diasCarencia.message}</span>}
          </label>
          <label>
            Parcelas de Carência *
            <input
              type="number"
              min={0}
              {...register("parcelasCarencia", { valueAsNumber: true })}
              aria-invalid={!!errors.parcelasCarencia}
            />
            {errors.parcelasCarencia && <span className="error">{errors.parcelasCarencia.message}</span>}
          </label>
        </div>
        <div className="form-row">
          <label>
            Tipo Pagto IOF *
            <select {...register("tipoPagtoIOF")}>
              <option value="F">Financiado</option>
              <option value="V">À Vista</option>
              <option value="I">Isento</option>
            </select>
            {errors.tipoPagtoIOF && <span className="error">{errors.tipoPagtoIOF.message}</span>}
          </label>
          <label>
            Tipo Pagto TAC *
            <select {...register("tipoPagtoTac")}>
              <option value="F">Financiado</option>
              <option value="V">À Vista</option>
            </select>
            {errors.tipoPagtoTac && <span className="error">{errors.tipoPagtoTac.message}</span>}
          </label>
          <label>
            Tipo de Contrato *
            <select {...register("tipoContrato")}>
              <option value="N">Normal</option>
              <option value="E">Especial</option>
            </select>
            {errors.tipoContrato && <span className="error">{errors.tipoContrato.message}</span>}
          </label>
          <label>
            Status
            <input
              type="text"
              {...register("status")}
              maxLength={20}
              aria-invalid={!!errors.status}
            />
            {errors.status && <span className="error">{errors.status.message}</span>}
          </label>
        </div>
        <div className="form-row">
          <label>
            Usuário Comercial
            <input
              type="text"
              {...register("usuarioComercial")}
              maxLength={50}
              aria-invalid={!!errors.usuarioComercial}
            />
            {errors.usuarioComercial && <span className="error">{errors.usuarioComercial.message}</span>}
          </label>
        </div>
        <div className="form-actions">
          <button type="submit" disabled={isSubmitting || mutation.isPending}>
            {mutation.isPending ? "Salvando..." : "Salvar"}
          </button>
          {mutation.isError && (
            <span className="error" role="alert">
              {mutation.error?.message || "Erro ao salvar contrato."}
            </span>
          )}
          {mutation.isSuccess && (
            <span className="success" role="status">
              Contrato salvo com sucesso!
            </span>
          )}
        </div>
      </fieldset>
    </form>
  );
};

export default ContratoCapitalGiroForm;