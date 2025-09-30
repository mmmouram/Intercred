import axios, { AxiosResponse } from "axios";

/**
 * Tipos e serviço para Simulação de Empréstimo (equivalente ao Delphi: UFrmCadEmprestimoSimulacao.pas)
 * - API REST: /api/simulacao-emprestimo
 * - CRUD + busca paginada
 * - Tipagem baseada em SimulacaoEmprestimoDTO (backend)
 */

export interface SimulacaoEmprestimo {
  id: number;
  numeroSimulacao: string;
  cedenteId: number;
  cedenteNome: string;
  produtoId: number;
  produtoNome: string;
  dataOperacao: string; // ISO date
  valorReferencia: number;
  valorFinanciado: number;
  valorLiquido: number;
  taxaMes: number;
  taxaEfetiva: number;
  taxaIOF: number;
  taxaIOFComplementar: number;
  valorIOF: number;
  valorIOFComplementar: number;
  valorTac: number;
  valorCustoCobranca: number;
  valorDoc: number;
  valorCustoAdministrativo: number;
  valorOutrasDespesas: number;
  taxaAberturaCredito: number;
  totalParcelas: number;
  dataPrimeiraParcela: string; // ISO date
  diasCarencia: number;
  parcelasCarencia: number;
  tipoPagtoIOF: string;
  tipoPagtoTac: string;
  tipoContrato: string;
  status: string;
  usuarioComercial: string;
  createdAt?: string;
  updatedAt?: string;
  // ... outros campos conforme DTO/backend
}

export interface SimulacaoEmprestimoCreate {
  numeroSimulacao: string;
  cedenteId: number;
  produtoId: number;
  dataOperacao: string;
  valorReferencia: number;
  valorFinanciado: number;
  valorLiquido: number;
  taxaMes: number;
  taxaEfetiva: number;
  taxaIOF: number;
  taxaIOFComplementar: number;
  valorIOF: number;
  valorIOFComplementar: number;
  valorTac: number;
  valorCustoCobranca: number;
  valorDoc: number;
  valorCustoAdministrativo: number;
  valorOutrasDespesas: number;
  taxaAberturaCredito: number;
  totalParcelas: number;
  dataPrimeiraParcela: string;
  diasCarencia: number;
  parcelasCarencia: number;
  tipoPagtoIOF: string;
  tipoPagtoTac: string;
  tipoContrato: string;
  status?: string;
  usuarioComercial?: string;
  // ... outros campos obrigatórios para criação
}

export interface SimulacaoEmprestimoUpdate {
  numeroSimulacao?: string;
  cedenteId?: number;
  produtoId?: number;
  dataOperacao?: string;
  valorReferencia?: number;
  valorFinanciado?: number;
  valorLiquido?: number;
  taxaMes?: number;
  taxaEfetiva?: number;
  taxaIOF?: number;
  taxaIOFComplementar?: number;
  valorIOF?: number;
  valorIOFComplementar?: number;
  valorTac?: number;
  valorCustoCobranca?: number;
  valorDoc?: number;
  valorCustoAdministrativo?: number;
  valorOutrasDespesas?: number;
  taxaAberturaCredito?: number;
  totalParcelas?: number;
  dataPrimeiraParcela?: string;
  diasCarencia?: number;
  parcelasCarencia?: number;
  tipoPagtoIOF?: string;
  tipoPagtoTac?: string;
  tipoContrato?: string;
  status?: string;
  usuarioComercial?: string;
  // ... outros campos editáveis
}

const API_BASE_URL = import.meta.env.VITE_API_BASE_URL || "http://localhost:8080";
const API_URL = `${API_BASE_URL}/api/simulacao-emprestimo`;

/**
 * Lista simulações de empréstimo (pode receber filtros/paginação).
 */
export async function listSimulacoesEmprestimo(params?: Record<string, any>): Promise<SimulacaoEmprestimo[]> {
  const resp: AxiosResponse<SimulacaoEmprestimo[]> = await axios.get(API_URL, { params });
  return resp.data;
}

/**
 * Busca uma simulação de empréstimo por ID.
 */
export async function getSimulacaoEmprestimo(id: string | number): Promise<SimulacaoEmprestimo> {
  const resp: AxiosResponse<SimulacaoEmprestimo> = await axios.get(`${API_URL}/${id}`);
  return resp.data;
}

/**
 * Cria uma nova simulação de empréstimo.
 */
export async function createSimulacaoEmprestimo(data: SimulacaoEmprestimoCreate): Promise<SimulacaoEmprestimo> {
  const resp: AxiosResponse<SimulacaoEmprestimo> = await axios.post(API_URL, data);
  return resp.data;
}

/**
 * Atualiza uma simulação de empréstimo existente.
 */
export async function updateSimulacaoEmprestimo(
  id: string | number,
  data: SimulacaoEmprestimoUpdate
): Promise<SimulacaoEmprestimo> {
  const resp: AxiosResponse<SimulacaoEmprestimo> = await axios.put(`${API_URL}/${id}`, data);
  return resp.data;
}

/**
 * Remove uma simulação de empréstimo.
 */
export async function deleteSimulacaoEmprestimo(id: string | number): Promise<void> {
  await axios.delete(`${API_URL}/${id}`);
}

export default {
  listSimulacoesEmprestimo,
  getSimulacaoEmprestimo,
  createSimulacaoEmprestimo,
  updateSimulacaoEmprestimo,
  deleteSimulacaoEmprestimo,
};

export type {
  SimulacaoEmprestimo,
  SimulacaoEmprestimoCreate,
  SimulacaoEmprestimoUpdate,
};