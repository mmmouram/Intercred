import { useQuery, useMutation, useQueryClient, UseQueryOptions, UseMutationOptions } from "@tanstack/react-query";
import {
  Emprestimo,
  EmprestimoCreate,
  EmprestimoUpdate,
  listEmprestimos,
  getEmprestimo,
  createEmprestimo,
  updateEmprestimo,
  deleteEmprestimo,
} from "@services/emprestimoService";

/**
 * Hook para buscar lista de empréstimos.
 * @param params Filtros opcionais (ex: search, paginação)
 * @param options Opções do React Query
 */
export function useEmprestimoList(
  params?: Record<string, any>,
  options?: UseQueryOptions<Emprestimo[], Error>
) {
  return useQuery<Emprestimo[], Error>({
    queryKey: ["emprestimo", params],
    queryFn: () => listEmprestimos(params),
    ...options,
  });
}

/**
 * Hook para buscar um empréstimo por ID.
 * @param id ID do empréstimo
 * @param options Opções do React Query
 */
export function useEmprestimo(
  id: string | number,
  options?: UseQueryOptions<Emprestimo, Error>
) {
  return useQuery<Emprestimo, Error>({
    queryKey: ["emprestimo", id],
    queryFn: () => getEmprestimo(id),
    enabled: !!id,
    ...options,
  });
}

/**
 * Hook para criar um novo empréstimo.
 * Invalida a lista ao sucesso.
 */
export function useCreateEmprestimo(
  options?: UseMutationOptions<Emprestimo, Error, EmprestimoCreate>
) {
  const queryClient = useQueryClient();
  return useMutation<Emprestimo, Error, EmprestimoCreate>({
    mutationFn: (data) => createEmprestimo(data),
    onSuccess: (...args) => {
      queryClient.invalidateQueries({ queryKey: ["emprestimo"] });
      options?.onSuccess?.(...args);
    },
    ...options,
  });
}

/**
 * Hook para atualizar um empréstimo.
 * Invalida a lista e o detalhe ao sucesso.
 */
export function useUpdateEmprestimo(
  options?: UseMutationOptions<Emprestimo, Error, { id: string | number; data: EmprestimoUpdate }>
) {
  const queryClient = useQueryClient();
  return useMutation<Emprestimo, Error, { id: string | number; data: EmprestimoUpdate }>({
    mutationFn: ({ id, data }) => updateEmprestimo(id, data),
    onSuccess: (data, variables, context) => {
      queryClient.invalidateQueries({ queryKey: ["emprestimo"] });
      queryClient.invalidateQueries({ queryKey: ["emprestimo", variables.id] });
      options?.onSuccess?.(data, variables, context);
    },
    ...options,
  });
}

/**
 * Hook para deletar um empréstimo.
 * Invalida a lista ao sucesso.
 */
export function useDeleteEmprestimo(
  options?: UseMutationOptions<void, Error, string | number>
) {
  const queryClient = useQueryClient();
  return useMutation<void, Error, string | number>({
    mutationFn: (id) => deleteEmprestimo(id),
    onSuccess: (data, id, context) => {
      queryClient.invalidateQueries({ queryKey: ["emprestimo"] });
      options?.onSuccess?.(data, id, context);
    },
    ...options,
  });
}

export default {
  useEmprestimoList,
  useEmprestimo,
  useCreateEmprestimo,
  useUpdateEmprestimo,
  useDeleteEmprestimo,
};