package com.intercred.util;

import com.intercred.domain.SimulacaoEmprestimo;
import com.intercred.domain.Cedente;
import com.intercred.domain.Produto;
import com.intercred.model.SimulacaoEmprestimoDTO;
import org.mapstruct.*;
import org.springframework.stereotype.Component;

/**
 * Mapper utilitário para SimulacaoEmprestimo <-> SimulacaoEmprestimoDTO.
 * <p>
 * - Utiliza MapStruct para mapeamento bidirecional entre entidade e DTO.
 * - Adapta campos aninhados (cedente, produto) para IDs e nomes.
 * - Usado em: SimulacaoEmprestimoService, SimulacaoEmprestimoController.
 * <p>
 * Regras:
 * - Entidade → DTO: extrai IDs e nomes de cedente/produto.
 * - DTO → Entidade: requer instância de Cedente/Produto (apenas id) para persistência.
 * - Atualização: ignora campos nulos no updateFromDto.
 */
@Mapper(componentModel = "spring")
@Component
public interface SimulacaoEmprestimoMapper {

    @Mapping(target = "cedenteId", source = "cedente.id")
    @Mapping(target = "cedenteNome", source = "cedente.nome")
    @Mapping(target = "produtoId", source = "produto.id")
    @Mapping(target = "produtoNome", source = "produto.nome")
    SimulacaoEmprestimoDTO toDto(SimulacaoEmprestimo entity);

    @Mapping(target = "cedente", source = "cedenteId", qualifiedByName = "cedenteFromId")
    @Mapping(target = "produto", source = "produtoId", qualifiedByName = "produtoFromId")
    @Mapping(target = "id", source = "id")
    SimulacaoEmprestimo toEntity(SimulacaoEmprestimoDTO dto);

    @BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
    @Mapping(target = "cedente", source = "cedenteId", qualifiedByName = "cedenteFromId")
    @Mapping(target = "produto", source = "produtoId", qualifiedByName = "produtoFromId")
    void updateFromDto(SimulacaoEmprestimoDTO dto, @MappingTarget SimulacaoEmprestimo entity);

    @Named("cedenteFromId")
    default Cedente cedenteFromId(Long id) {
        if (id == null) return null;
        Cedente c = new Cedente();
        c.setId(id);
        return c;
    }

    @Named("produtoFromId")
    default Produto produtoFromId(Long id) {
        if (id == null) return null;
        Produto p = new Produto();
        p.setId(id);
        return p;
    }
}