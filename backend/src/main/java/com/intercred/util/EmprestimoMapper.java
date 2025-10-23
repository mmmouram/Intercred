package com.intercred.util;

import com.intercred.domain.Emprestimo;
import com.intercred.domain.Cedente;
import com.intercred.domain.Produto;
import com.intercred.model.EmprestimoDTO;
import org.mapstruct.*;
import org.springframework.stereotype.Component;

/**
 * Mapper utilitário para Emprestimo <-> EmprestimoDTO.
 * <p>
 * - Utiliza MapStruct para mapeamento bidirecional entre entidade e DTO.
 * - Adapta campos aninhados (cedente, produto) para IDs e nomes.
 * - Usado em: EmprestimoService, EmprestimoController.
 * <p>
 * Regras:
 * - Entidade → DTO: extrai IDs e nomes de cedente/produto.
 * - DTO → Entidade: requer instância de Cedente/Produto (apenas id) para persistência.
 * - Atualização: ignora campos nulos no updateFromDto.
 */
@Mapper(componentModel = "spring")
@Component
public interface EmprestimoMapper {

    @Mapping(target = "cedenteId", source = "cedente.id")
    @Mapping(target = "cedenteNome", source = "cedente.nome")
    @Mapping(target = "produtoId", source = "produto.id")
    @Mapping(target = "produtoNome", source = "produto.nome")
    EmprestimoDTO toDto(Emprestimo entity);

    @Mapping(target = "cedente", source = "cedenteId", qualifiedByName = "cedenteFromId")
    @Mapping(target = "produto", source = "produtoId", qualifiedByName = "produtoFromId")
    @Mapping(target = "id", source = "id")
    Emprestimo toEntity(EmprestimoDTO dto);

    @BeanMapping(nullValuePropertyMappingStrategy = NullValuePropertyMappingStrategy.IGNORE)
    @Mapping(target = "cedente", source = "cedenteId", qualifiedByName = "cedenteFromId")
    @Mapping(target = "produto", source = "produtoId", qualifiedByName = "produtoFromId")
    void updateFromDto(EmprestimoDTO dto, @MappingTarget Emprestimo entity);

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