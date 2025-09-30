import React from "react";
import SimulacaoEmprestimoForm from "@components/SimulacaoEmprestimoForm";
import { useSimulacaoEmprestimoList, useDeleteSimulacaoEmprestimo } from "@hooks/useSimulacaoEmprestimo";
import { Formatters } from "@utils/formatters";

/**
 * Página de Simulação de Empréstimo
 * Equivalente ao Delphi: UFrmCadEmprestimoSimulacao.pas (fluxo de simulação de empréstimo)
 * - Lista simulações existentes
 * - Permite criar nova simulação (formulário)
 * - Permite excluir simulações (CRUD)
 * - Integra com backend via React Query + Axios
 */

const SimulacaoEmprestimoPage: React.FC = () => {
  // Busca lista de simulações (pode receber filtros/paginação futuramente)
  const { data: simulacoes, isLoading, isError, error, refetch } = useSimulacaoEmprestimoList();

  // Exclusão de simulação
  const deleteMutation = useDeleteSimulacaoEmprestimo({
    onSuccess: () => refetch(),
  });

  // Handler para exclusão
  const handleDelete = (id: number) => {
    if (window.confirm("Deseja realmente excluir esta simulação?")) {
      deleteMutation.mutate(id);
    }
  };

  // Handler para sucesso no cadastro
  const handleFormSuccess = () => {
    refetch();
  };

  return (
    <div className="page-container simulacao-emprestimo-page">
      <h1>Simulação de Empréstimo</h1>
      <section className="simulacao-form-section">
        <h2>Nova Simulação</h2>
        <SimulacaoEmprestimoForm onSuccess={handleFormSuccess} />
      </section>
      <section className="simulacao-list-section">
        <h2>Simulações Cadastradas</h2>
        {isLoading && <div className="loading">Carregando simulações...</div>}
        {isError && (
          <div className="error" role="alert">
            Erro ao carregar simulações: {error?.message}
          </div>
        )}
        {!isLoading && simulacoes && simulacoes.length === 0 && (
          <div className="empty-list">Nenhuma simulação cadastrada.</div>
        )}
        {!isLoading && simulacoes && simulacoes.length > 0 && (
          <div className="table-responsive">
            <table className="simulacao-table">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>Número Simulação</th>
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
                {simulacoes.map((simulacao) => (
                  <tr key={simulacao.id}>
                    <td>{simulacao.id}</td>
                    <td>{simulacao.numeroSimulacao}</td>
                    <td>
                      {simulacao.cedenteNome
                        ? simulacao.cedenteNome
                        : simulacao.cedenteId}
                    </td>
                    <td>
                      {simulacao.produtoNome
                        ? simulacao.produtoNome
                        : simulacao.produtoId}
                    </td>
                    <td>{Formatters.date(simulacao.dataOperacao)}</td>
                    <td>{Formatters.currency(simulacao.valorReferencia)}</td>
                    <td>{Formatters.currency(simulacao.valorFinanciado)}</td>
                    <td>{Formatters.currency(simulacao.valorLiquido)}</td>
                    <td>{Formatters.number(simulacao.taxaMes, 4)}</td>
                    <td>{Formatters.number(simulacao.taxaEfetiva, 4)}</td>
                    <td>{simulacao.status}</td>
                    <td>
                      <button
                        type="button"
                        className="btn-delete"
                        onClick={() => handleDelete(simulacao.id)}
                        disabled={deleteMutation.isPending}
                        aria-label={`Excluir simulação ${simulacao.numeroSimulacao}`}
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

export default SimulacaoEmprestimoPage;