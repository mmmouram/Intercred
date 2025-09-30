import React from "react";
import { render, screen, fireEvent, waitFor } from "@testing-library/react";
import SimulacaoEmprestimoForm from "@components/SimulacaoEmprestimoForm";
import { QueryClient, QueryClientProvider } from "@tanstack/react-query";

jest.mock("@hooks/useSimulacaoEmprestimo", () => ({
  useCreateSimulacaoEmprestimo: () => ({
    mutate: jest.fn(),
    isPending: false,
    isError: false,
    isSuccess: false,
    error: null,
  }),
}));

function renderWithProviders(ui: React.ReactElement) {
  const queryClient = new QueryClient();
  return render(
    <QueryClientProvider client={queryClient}>{ui}</QueryClientProvider>
  );
}

describe("SimulacaoEmprestimoForm", () => {
  it("renders all required fields", () => {
    renderWithProviders(<SimulacaoEmprestimoForm />);
    expect(screen.getByLabelText(/Número da Simulação/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Cedente \(ID\)/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Produto \(ID\)/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Data da Operação/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Valor de Referência/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Valor Financiado/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Valor Líquido/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Taxa ao Mês/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Taxa Efetiva/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Taxa IOF/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Taxa IOF Compl/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Valor IOF/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Valor IOF Compl/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Valor TAC/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Custo Cobrança/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Valor DOC/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Custo Administrativo/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Outras Despesas/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Taxa Abertura Crédito/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Total de Parcelas/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Data 1ª Parcela/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Dias de Carência/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Parcelas de Carência/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Tipo Pagto IOF/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Tipo Pagto TAC/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Tipo de Contrato/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Status/i)).toBeInTheDocument();
    expect(screen.getByLabelText(/Usuário Comercial/i)).toBeInTheDocument();
  });

  it("shows validation errors when submitting empty form", async () => {
    renderWithProviders(<SimulacaoEmprestimoForm />);
    fireEvent.click(screen.getByRole("button", { name: /salvar/i }));
    await waitFor(() => {
      expect(screen.getByText(/Número da simulação obrigatório/i)).toBeInTheDocument();
      expect(screen.getByText(/Cedente obrigatório/i)).toBeInTheDocument();
      expect(screen.getByText(/Produto obrigatório/i)).toBeInTheDocument();
      expect(screen.getByText(/Data da operação obrigatória/i)).toBeInTheDocument();
      expect(screen.getByText(/Valor de referência obrigatório/i)).toBeInTheDocument();
      expect(screen.getByText(/Valor financiado obrigatório/i)).toBeInTheDocument();
      expect(screen.getByText(/Valor líquido obrigatório/i)).toBeInTheDocument();
      expect(screen.getByText(/Taxa ao mês obrigatória/i)).toBeInTheDocument();
      expect(screen.getByText(/Taxa efetiva obrigatória/i)).toBeInTheDocument();
      expect(screen.getByText(/Taxa IOF obrigatória/i)).toBeInTheDocument();
      expect(screen.getByText(/Taxa IOF Compl. obrigatória/i)).toBeInTheDocument();
      expect(screen.getByText(/Valor IOF obrigatório/i)).toBeInTheDocument();
      expect(screen.getByText(/Valor IOF Compl. obrigatório/i)).toBeInTheDocument();
      expect(screen.getByText(/Valor TAC obrigatório/i)).toBeInTheDocument();
      expect(screen.getByText(/Custo cobrança obrigatório/i)).toBeInTheDocument();
      expect(screen.getByText(/Valor DOC obrigatório/i)).toBeInTheDocument();
      expect(screen.getByText(/Custo administrativo obrigatório/i)).toBeInTheDocument();
      expect(screen.getByText(/Outras despesas obrigatório/i)).toBeInTheDocument();
      expect(screen.getByText(/Taxa abertura crédito obrigatória/i)).toBeInTheDocument();
      expect(screen.getByText(/Total de parcelas obrigatório/i)).toBeInTheDocument();
      expect(screen.getByText(/Data da 1ª parcela obrigatória/i)).toBeInTheDocument();
      expect(screen.getByText(/Dias de carência obrigatório/i)).toBeInTheDocument();
      expect(screen.getByText(/Parcelas de carência obrigatório/i)).toBeInTheDocument();
      expect(screen.getByText(/Tipo pagamento IOF obrigatório/i)).toBeInTheDocument();
      expect(screen.getByText(/Tipo pagamento TAC obrigatório/i)).toBeInTheDocument();
      expect(screen.getByText(/Tipo de contrato obrigatório/i)).toBeInTheDocument();
    });
  });

  it("calls onSuccess after successful submit", async () => {
    const onSuccess = jest.fn();
    const mutateMock = jest.fn((data, opts) => {
      if (opts && typeof opts.onSuccess === "function") {
        opts.onSuccess({ id: 1, ...data });
      }
    });
    jest.spyOn(require("@hooks/useSimulacaoEmprestimo"), "useCreateSimulacaoEmprestimo").mockReturnValue({
      mutate: mutateMock,
      isPending: false,
      isError: false,
      isSuccess: false,
      error: null,
    });

    renderWithProviders(<SimulacaoEmprestimoForm onSuccess={onSuccess} />);
    fireEvent.change(screen.getByLabelText(/Número da Simulação/i), { target: { value: "SIM-001" } });
    fireEvent.change(screen.getByLabelText(/Cedente \(ID\)/i), { target: { value: "10" } });
    fireEvent.change(screen.getByLabelText(/Produto \(ID\)/i), { target: { value: "20" } });
    fireEvent.change(screen.getByLabelText(/Data da Operação/i), { target: { value: "2024-06-01" } });
    fireEvent.change(screen.getByLabelText(/Valor de Referência/i), { target: { value: "1000" } });
    fireEvent.change(screen.getByLabelText(/Valor Financiado/i), { target: { value: "900" } });
    fireEvent.change(screen.getByLabelText(/Valor Líquido/i), { target: { value: "850" } });
    fireEvent.change(screen.getByLabelText(/Taxa ao Mês/i), { target: { value: "2.5" } });
    fireEvent.change(screen.getByLabelText(/Taxa Efetiva/i), { target: { value: "2.7" } });
    fireEvent.change(screen.getByLabelText(/Taxa IOF/i), { target: { value: "0.38" } });
    fireEvent.change(screen.getByLabelText(/Taxa IOF Compl/i), { target: { value: "0.38" } });
    fireEvent.change(screen.getByLabelText(/^Valor IOF \*$/i), { target: { value: "10" } });
    fireEvent.change(screen.getByLabelText(/^Valor IOF Compl. \*$/i), { target: { value: "2" } });
    fireEvent.change(screen.getByLabelText(/Valor TAC/i), { target: { value: "5" } });
    fireEvent.change(screen.getByLabelText(/Custo Cobrança/i), { target: { value: "3" } });
    fireEvent.change(screen.getByLabelText(/Valor DOC/i), { target: { value: "1" } });
    fireEvent.change(screen.getByLabelText(/Custo Administrativo/i), { target: { value: "2" } });
    fireEvent.change(screen.getByLabelText(/Outras Despesas/i), { target: { value: "4" } });
    fireEvent.change(screen.getByLabelText(/Taxa Abertura Crédito/i), { target: { value: "0.5" } });
    fireEvent.change(screen.getByLabelText(/Total de Parcelas/i), { target: { value: "12" } });
    fireEvent.change(screen.getByLabelText(/Data 1ª Parcela/i), { target: { value: "2024-07-01" } });
    fireEvent.change(screen.getByLabelText(/Dias de Carência/i), { target: { value: "0" } });
    fireEvent.change(screen.getByLabelText(/Parcelas de Carência/i), { target: { value: "0" } });
    fireEvent.change(screen.getByLabelText(/Tipo Pagto IOF/i), { target: { value: "F" } });
    fireEvent.change(screen.getByLabelText(/Tipo Pagto TAC/i), { target: { value: "F" } });
    fireEvent.change(screen.getByLabelText(/Tipo de Contrato/i), { target: { value: "N" } });

    fireEvent.click(screen.getByRole("button", { name: /salvar/i }));

    await waitFor(() => {
      expect(mutateMock).toHaveBeenCalled();
      expect(onSuccess).toHaveBeenCalled();
    });
  });

  it("disables submit button while submitting", () => {
    jest.spyOn(require("@hooks/useSimulacaoEmprestimo"), "useCreateSimulacaoEmprestimo").mockReturnValue({
      mutate: jest.fn(),
      isPending: true,
      isError: false,
      isSuccess: false,
      error: null,
    });
    renderWithProviders(<SimulacaoEmprestimoForm />);
    expect(screen.getByRole("button", { name: /salvar/i })).toBeDisabled();
  });
});