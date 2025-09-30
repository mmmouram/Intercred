import React from "react";
import ContratoCapitalGiroForm from "@components/ContratoCapitalGiroForm";
import { useContratoCapitalGiroList, useDeleteContratoCapitalGiro } from "@hooks/useContratoCapitalGiro";
import { Formatters } from "@utils/formatters";

/**
 * Página de Contrato de Capital de Giro
 * Equivalente ao Delphi: UFrmCadEmprestimoBoletoOperacao.pas (fluxo de cadastro/edição de contrato capital de giro)
 * - Lista contratos existentes
 * - Permite criar novo contrato (formulário)
 * - Permite excluir contratos (CRUD)
 * - Integra com backend via React Query + Axios
 */

const ContratoCapitalGiroPage: React.FC = () => {
  // Busca lista de contratos (pode receber filtros/paginação futuramente)
  const { data: contratos, isLoading, isError, error, refetch } = useContratoCapitalGiroList();

  // Exclusão de contrato
  const deleteMutation = useDeleteContratoCapitalGiro({
    onSuccess: () => refetch(),
  });

  // Handler para exclusão
  const handleDelete = (id: number) => {
    if (window.confirm("Deseja realmente excluir este contrato?")) {
      deleteMutation.mutate(id);
    }
  };

  // Handler para sucesso no cadastro
  const handleFormSuccess = () => {
    refetch();
  };

  return (
    <div className="page-container contrato-capital-giro-page">
      <h1>Contrato de Capital de Giro</h1>
      <section className="contrato-form-section">
        <h2>Novo Contrato</h2>
        <ContratoCapitalGiroForm onSuccess={handleFormSuccess} />
      </section>
      <section className="contrato-list-section">
        <h2>Contratos Cadastrados</h2>
        {isLoading && <div className="loading">Carregando contratos...</div>}
        {isError && (
          <div className="error" role="alert">
            Erro ao carregar contratos: {error?.message}
          </div>
        )}
        {!isLoading && contratos && contratos.length === 0 && (
          <div className="empty-list">Nenhum contrato cadastrado.</div>
        )}
        {!isLoading && contratos && contratos.length > 0 && (
          <div className="table-responsive">
            <table className="contrato-table">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>Número Contrato</th>
                  <th>Cedente</th>
                  <th>Produto</th>
                  <th>Data Operação</th>
                  <th>Valor Referência</th>
                  <th>Valor Financiado</th>
                  <th>Valor Líquido</th>
                  <th>Taxa Mês (%)</th>
                  <th>Taxa Efetiva (%)</th>
                  <th>Status</th>
                  <th>Ações</th>
                </tr>
              </thead>
              <tbody>
                {contratos.map((contrato) => (
                  <tr key={contrato.id}>
                    <td>{contrato.id}</td>
                    <td>{contrato.numeroContrato}</td>
                    <td>
                      {contrato.cedenteNome
                        ? contrato.cedenteNome
                        : contrato.cedenteId}
                    </td>
                    <td>
                      {contrato.produtoNome
                        ? contrato.produtoNome
                        : contrato.produtoId}
                    </td>
                    <td>{Formatters.date(contrato.dataOperacao)}</td>
                    <td>{Formatters.currency(contrato.valorReferencia)}</td>
                    <td>{Formatters.currency(contrato.valorFinanciado)}</td>
                    <td>{Formatters.currency(contrato.valorLiquido)}</td>
                    <td>{Formatters.number(contrato.taxaMes, 4)}</td>
                    <td>{Formatters.number(contrato.taxaEfetiva, 4)}</td>
                    <td>{contrato.status}</td>
                    <td>
                      <button
                        type="button"
                        className="btn-delete"
                        onClick={() => handleDelete(contrato.id)}
                        disabled={deleteMutation.isPending}
                        aria-label={`Excluir contrato ${contrato.numeroContrato}`}
                      >
                        Excluir
                      </button>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
            {deleteMutation.isError && (
              <div className="error" role="alert">
                Erro ao excluir: {deleteMutation.error?.message}
              </div>
            )}
          </div>
        )}
      </section>
    </div>
  );
};

export default ContratoCapitalGiroPage;