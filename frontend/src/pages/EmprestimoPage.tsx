import React from "react";
import EmprestimoForm from "@components/EmprestimoForm";
import { useEmprestimoList, useDeleteEmprestimo } from "@hooks/useEmprestimo";
import { Formatters } from "@utils/formatters";

/**
 * Página de Empréstimo
 * Equivalente ao Delphi: UFrmCadEmprestimoBoletoOperacao.pas (fluxo de cadastro/edição de empréstimo)
 * - Lista empréstimos existentes
 * - Permite criar novo empréstimo (formulário)
 * - Permite excluir empréstimos (CRUD)
 * - Integra com backend via React Query + Axios
 */

const EmprestimoPage: React.FC = () => {
  // Busca lista de empréstimos (pode receber filtros/paginação futuramente)
  const { data: emprestimos, isLoading, isError, error, refetch } = useEmprestimoList();

  // Exclusão de empréstimo
  const deleteMutation = useDeleteEmprestimo({
    onSuccess: () => refetch(),
  });

  // Handler para exclusão
  const handleDelete = (id: number) => {
    if (window.confirm("Deseja realmente excluir este empréstimo?")) {
      deleteMutation.mutate(id);
    }
  };

  // Handler para sucesso no cadastro
  const handleFormSuccess = () => {
    refetch();
  };

  return (
    <div className="page-container emprestimo-page">
      <h1>Empréstimo</h1>
      <section className="emprestimo-form-section">
        <h2>Novo Empréstimo</h2>
        <EmprestimoForm onSuccess={handleFormSuccess} />
      </section>
      <section className="emprestimo-list-section">
        <h2>Empréstimos Cadastrados</h2>
        {isLoading && <div className="loading">Carregando empréstimos...</div>}
        {isError && (
          <div className="error" role="alert">
            Erro ao carregar empréstimos: {error?.message}
          </div>
        )}
        {!isLoading && emprestimos && emprestimos.length === 0 && (
          <div className="empty-list">Nenhum empréstimo cadastrado.</div>
        )}
        {!isLoading && emprestimos && emprestimos.length > 0 && (
          <div className="table-responsive">
            <table className="emprestimo-table">
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
                {emprestimos.map((emprestimo) => (
                  <tr key={emprestimo.id}>
                    <td>{emprestimo.id}</td>
                    <td>{emprestimo.numeroContrato}</td>
                    <td>
                      {emprestimo.cedenteNome
                        ? emprestimo.cedenteNome
                        : emprestimo.cedenteId}
                    </td>
                    <td>
                      {emprestimo.produtoNome
                        ? emprestimo.produtoNome
                        : emprestimo.produtoId}
                    </td>
                    <td>{Formatters.date(emprestimo.dataOperacao)}</td>
                    <td>{Formatters.currency(emprestimo.valorReferencia)}</td>
                    <td>{Formatters.currency(emprestimo.valorFinanciado)}</td>
                    <td>{Formatters.currency(emprestimo.valorLiquido)}</td>
                    <td>{Formatters.number(emprestimo.taxaMes, 4)}</td>
                    <td>{Formatters.number(emprestimo.taxaEfetiva, 4)}</td>
                    <td>{emprestimo.status}</td>
                    <td>
                      <button
                        type="button"
                        className="btn-delete"
                        onClick={() => handleDelete(emprestimo.id)}
                        disabled={deleteMutation.isPending}
                        aria-label={`Excluir empréstimo ${emprestimo.numeroContrato}`}
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

export default EmprestimoPage;