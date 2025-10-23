import axios, { AxiosResponse } from "axios";

/**
 * Tipos e serviço para Empréstimo (equivalente ao Delphi: UFrmCadEmprestimoBoletoOperacao.pas)
 * - API REST: /api/emprestimos
 * - CRUD + busca paginada
 * - Tipagem baseada em EmprestimoDTO (backend)
 */

export interface Emprestimo {
  id: number;
  numeroContrato: string;
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

export interface EmprestimoCreate {
  numeroContrato: string;
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

export interface EmprestimoUpdate {
  numeroContrato?: string;
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
const API_URL = `${API_BASE_URL}/api/emprestimos`;

/**
 * Lista empréstimos (pode receber filtros/paginação).
 */
export async function listEmprestimos(params?: Record<string, any>): Promise<Emprestimo[]> {
  const resp: AxiosResponse<Emprestimo[]> = await axios.get(API_URL, { params });
  return resp.data;
}

/**
 * Busca um empréstimo por ID.
 */
export async function getEmprestimo(id: string | number): Promise<Emprestimo> {
  const resp: AxiosResponse<Emprestimo> = await axios.get(`${API_URL}/${id}`);
  return resp.data;
}

/**
 * Cria um novo empréstimo.
 */
export async function createEmprestimo(data: EmprestimoCreate): Promise<Emprestimo> {
  const resp: AxiosResponse<Emprestimo> = await axios.post(API_URL, data);
  return resp.data;
}

/**
 * Atualiza um empréstimo existente.
 */
export async function updateEmprestimo(
  id: string | number,
  data: EmprestimoUpdate
): Promise<Emprestimo> {
  const resp: AxiosResponse<Emprestimo> = await axios.put(`${API_URL}/${id}`, data);
  return resp.data;
}

/**
 * Remove um empréstimo.
 */
export async function deleteEmprestimo(id: string | number): Promise<void> {
  await axios.delete(`${API_URL}/${id}`);
}

export default {
  listEmprestimos,
  getEmprestimo,
  createEmprestimo,
  updateEmprestimo,
  deleteEmprestimo,
};

export type {
  Emprestimo,
  EmprestimoCreate,
  EmprestimoUpdate,
};