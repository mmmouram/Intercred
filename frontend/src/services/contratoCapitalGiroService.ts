import axios, { AxiosResponse } from "axios";

/**
 * Tipos e serviço para Contrato de Capital de Giro (equivalente ao Delphi: UFrmCadEmprestimoBoletoOperacao.pas)
 * - API REST: /api/contrato-capital-giro
 * - CRUD + busca paginada
 * - Tipagem baseada em ContratoCapitalGiroDTO (backend)
 */

export interface ContratoCapitalGiro {
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

export interface ContratoCapitalGiroCreate {
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

export interface ContratoCapitalGiroUpdate {
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
const API_URL = `${API_BASE_URL}/api/contrato-capital-giro`;

/**
 * Lista contratos de capital de giro (pode receber filtros/paginação).
 */
export async function listContratos(params?: Record<string, any>): Promise<ContratoCapitalGiro[]> {
  const resp: AxiosResponse<ContratoCapitalGiro[]> = await axios.get(API_URL, { params });
  return resp.data;
}

/**
 * Busca um contrato de capital de giro por ID.
 */
export async function getContrato(id: string | number): Promise<ContratoCapitalGiro> {
  const resp: AxiosResponse<ContratoCapitalGiro> = await axios.get(`${API_URL}/${id}`);
  return resp.data;
}

/**
 * Cria um novo contrato de capital de giro.
 */
export async function createContrato(data: ContratoCapitalGiroCreate): Promise<ContratoCapitalGiro> {
  const resp: AxiosResponse<ContratoCapitalGiro> = await axios.post(API_URL, data);
  return resp.data;
}

/**
 * Atualiza um contrato de capital de giro existente.
 */
export async function updateContrato(
  id: string | number,
  data: ContratoCapitalGiroUpdate
): Promise<ContratoCapitalGiro> {
  const resp: AxiosResponse<ContratoCapitalGiro> = await axios.put(`${API_URL}/${id}`, data);
  return resp.data;
}

/**
 * Remove um contrato de capital de giro.
 */
export async function deleteContrato(id: string | number): Promise<void> {
  await axios.delete(`${API_URL}/${id}`);
}

export default {
  listContratos,
  getContrato,
  createContrato,
  updateContrato,
  deleteContrato,
};

export type {
  ContratoCapitalGiro,
  ContratoCapitalGiroCreate,
  ContratoCapitalGiroUpdate,
};