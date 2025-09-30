import { useQuery, useMutation, useQueryClient, UseQueryOptions, UseMutationOptions } from "@tanstack/react-query";
import {
  SimulacaoEmprestimo,
  SimulacaoEmprestimoCreate,
  SimulacaoEmprestimoUpdate,
  listSimulacoesEmprestimo,
  getSimulacaoEmprestimo,
  createSimulacaoEmprestimo,
  updateSimulacaoEmprestimo,
  deleteSimulacaoEmprestimo,
} from "@services/simulacaoEmprestimoService";

/**
 * Hook para buscar lista de simulações de empréstimo.
 * @param params Filtros opcionais (ex: search, paginação)
 * @param options Opções do React Query
 */
export function useSimulacaoEmprestimoList(
  params?: Record<string, any>,
  options?: UseQueryOptions<SimulacaoEmprestimo[], Error>
) {
  return useQuery<SimulacaoEmprestimo[], Error>({
    queryKey: ["simulacaoEmprestimo", params],
    queryFn: () => listSimulacoesEmprestimo(params),
    ...options,
  });
}

/**
 * Hook para buscar uma simulação de empréstimo por ID.
 * @param id ID da simulação
 * @param options Opções do React Query
 */
export function useSimulacaoEmprestimo(
  id: string | number,
  options?: UseQueryOptions<SimulacaoEmprestimo, Error>
) {
  return useQuery<SimulacaoEmprestimo, Error>({
    queryKey: ["simulacaoEmprestimo", id],
    queryFn: () => getSimulacaoEmprestimo(id),
    enabled: !!id,
    ...options,
  });
}

/**
 * Hook para criar uma nova simulação de empréstimo.
 * Invalida a lista ao sucesso.
 */
export function useCreateSimulacaoEmprestimo(
  options?: UseMutationOptions<SimulacaoEmprestimo, Error, SimulacaoEmprestimoCreate>
) {
  const queryClient = useQueryClient();
  return useMutation<SimulacaoEmprestimo, Error, SimulacaoEmprestimoCreate>({
    mutationFn: (data) => createSimulacaoEmprestimo(data),
    onSuccess: (...args) => {
      queryClient.invalidateQueries({ queryKey: ["simulacaoEmprestimo"] });
      options?.onSuccess?.(...args);
    },
    ...options,
  });
}

/**
 * Hook para atualizar uma simulação de empréstimo.
 * Invalida a lista e o detalhe ao sucesso.
 */
export function useUpdateSimulacaoEmprestimo(
  options?: UseMutationOptions<SimulacaoEmprestimo, Error, { id: string | number; data: SimulacaoEmprestimoUpdate }>
) {
  const queryClient = useQueryClient();
  return useMutation<SimulacaoEmprestimo, Error, { id: string | number; data: SimulacaoEmprestimoUpdate }>({
    mutationFn: ({ id, data }) => updateSimulacaoEmprestimo(id, data),
    onSuccess: (data, variables, context) => {
      queryClient.invalidateQueries({ queryKey: ["simulacaoEmprestimo"] });
      queryClient.invalidateQueries({ queryKey: ["simulacaoEmprestimo", variables.id] });
      options?.onSuccess?.(data, variables, context);
    },
    ...options,
  });
}

/**
 * Hook para deletar uma simulação de empréstimo.
 * Invalida a lista ao sucesso.
 */
export function useDeleteSimulacaoEmprestimo(
  options?: UseMutationOptions<void, Error, string | number>
) {
  const queryClient = useQueryClient();
  return useMutation<void, Error, string | number>({
    mutationFn: (id) => deleteSimulacaoEmprestimo(id),
    onSuccess: (data, id, context) => {
      queryClient.invalidateQueries({ queryKey: ["simulacaoEmprestimo"] });
      options?.onSuccess?.(data, id, context);
    },
    ...options,
  });
}

export default {
  useSimulacaoEmprestimoList,
  useSimulacaoEmprestimo,
  useCreateSimulacaoEmprestimo,
  useUpdateSimulacaoEmprestimo,
  useDeleteSimulacaoEmprestimo,
};