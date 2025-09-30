import { useQuery, useMutation, useQueryClient, UseQueryOptions, UseMutationOptions } from "@tanstack/react-query";
import { ContratoCapitalGiro, ContratoCapitalGiroCreate, ContratoCapitalGiroUpdate } from "@services/contratoCapitalGiroService";
import * as contratoCapitalGiroService from "@services/contratoCapitalGiroService";

/**
 * Hook para buscar lista de contratos de capital de giro.
 * @param params Filtros opcionais (ex: search, paginação)
 * @param options Opções do React Query
 */
export function useContratoCapitalGiroList(
  params?: Record<string, any>,
  options?: UseQueryOptions<ContratoCapitalGiro[], Error>
) {
  return useQuery<ContratoCapitalGiro[], Error>({
    queryKey: ["contratoCapitalGiro", params],
    queryFn: () => contratoCapitalGiroService.listContratos(params),
    ...options,
  });
}

/**
 * Hook para buscar um contrato de capital de giro por ID.
 * @param id ID do contrato
 * @param options Opções do React Query
 */
export function useContratoCapitalGiro(id: string | number, options?: UseQueryOptions<ContratoCapitalGiro, Error>) {
  return useQuery<ContratoCapitalGiro, Error>({
    queryKey: ["contratoCapitalGiro", id],
    queryFn: () => contratoCapitalGiroService.getContrato(id),
    enabled: !!id,
    ...options,
  });
}

/**
 * Hook para criar um novo contrato de capital de giro.
 * Invalida a lista ao sucesso.
 */
export function useCreateContratoCapitalGiro(
  options?: UseMutationOptions<ContratoCapitalGiro, Error, ContratoCapitalGiroCreate>
) {
  const queryClient = useQueryClient();
  return useMutation<ContratoCapitalGiro, Error, ContratoCapitalGiroCreate>({
    mutationFn: (data) => contratoCapitalGiroService.createContrato(data),
    onSuccess: (...args) => {
      queryClient.invalidateQueries({ queryKey: ["contratoCapitalGiro"] });
      options?.onSuccess?.(...args);
    },
    ...options,
  });
}

/**
 * Hook para atualizar um contrato de capital de giro.
 * Invalida a lista e o detalhe ao sucesso.
 */
export function useUpdateContratoCapitalGiro(
  options?: UseMutationOptions<ContratoCapitalGiro, Error, { id: string | number; data: ContratoCapitalGiroUpdate }>
) {
  const queryClient = useQueryClient();
  return useMutation<ContratoCapitalGiro, Error, { id: string | number; data: ContratoCapitalGiroUpdate }>({
    mutationFn: ({ id, data }) => contratoCapitalGiroService.updateContrato(id, data),
    onSuccess: (data, variables, context) => {
      queryClient.invalidateQueries({ queryKey: ["contratoCapitalGiro"] });
      queryClient.invalidateQueries({ queryKey: ["contratoCapitalGiro", variables.id] });
      options?.onSuccess?.(data, variables, context);
    },
    ...options,
  });
}

/**
 * Hook para deletar um contrato de capital de giro.
 * Invalida a lista ao sucesso.
 */
export function useDeleteContratoCapitalGiro(
  options?: UseMutationOptions<void, Error, string | number>
) {
  const queryClient = useQueryClient();
  return useMutation<void, Error, string | number>({
    mutationFn: (id) => contratoCapitalGiroService.deleteContrato(id),
    onSuccess: (data, id, context) => {
      queryClient.invalidateQueries({ queryKey: ["contratoCapitalGiro"] });
      options?.onSuccess?.(data, id, context);
    },
    ...options,
  });
}

export default {
  useContratoCapitalGiroList,
  useContratoCapitalGiro,
  useCreateContratoCapitalGiro,
  useUpdateContratoCapitalGiro,
  useDeleteContratoCapitalGiro,
};