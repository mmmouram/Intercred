package com.intercred.app;

import com.intercred.domain.Cedente;
import com.intercred.domain.Emprestimo;
import com.intercred.domain.Produto;
import com.intercred.exception.BusinessException;
import com.intercred.model.EmprestimoDTO;
import com.intercred.repository.EmprestimoRepository;
import com.intercred.util.EmprestimoMapper;
import com.intercred.service.EmprestimoService;
import org.junit.jupiter.api.*;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mapstruct.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.context.annotation.Import;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;

import static org.assertj.core.api.Assertions.*;

/**
 * Testes de integração para EmprestimoService.
 * <p>
 * - CRUD completo (listar, buscar, criar, atualizar, excluir)
 * - Validação de regras de negócio e persistência
 * - Cobertura mínima para equivalência Delphi → Java
 */
@ExtendWith(SpringExtension.class)
@DataJpaTest
@Import({EmprestimoService.class, TestEmprestimoMapperConfig.class})
@Transactional
class EmprestimoServiceTest {

    @Autowired
    private EmprestimoRepository repository;

    @Autowired
    private EmprestimoService service;

    @Autowired
    private EmprestimoMapper mapper;

    private Cedente cedente;
    private Produto produto;

    @BeforeEach
    void setup() {
        // Cria cedente e produto de teste (mock simples, pois @DataJpaTest não carrega dados do Flyway)
        cedente = Cedente.builder()
                .nome("Empresa Teste")
                .documento("12345678000199")
                .tipo("PJ")
                .email("teste@empresa.com")
                .telefone("31999990000")
                .build();
        produto = Produto.builder()
                .nome("Empréstimo")
                .codigo("EMPREST")
                .tipo("Empréstimo")
                .status("ATIVO")
                .build();

        // Persistir dependências
        repository.getEntityManager().persist(cedente);
        repository.getEntityManager().persist(produto);
        repository.getEntityManager().flush();
    }

    @Test
    void testCreateEmprestimo() {
        EmprestimoDTO dto = buildDTO();
        EmprestimoDTO created = service.create(dto);

        assertThat(created.getId()).isNotNull();
        assertThat(created.getNumeroContrato()).isEqualTo(dto.getNumeroContrato());
        assertThat(created.getCedenteId()).isEqualTo(cedente.getId());
        assertThat(created.getProdutoId()).isEqualTo(produto.getId());
        assertThat(created.getStatus()).isEqualTo("ABERTO");
    }

    @Test
    void testFindAllAndFindById() {
        EmprestimoDTO dto = buildDTO();
        EmprestimoDTO created = service.create(dto);

        List<EmprestimoDTO> all = service.findAll();
        assertThat(all).isNotEmpty();
        assertThat(all.stream().anyMatch(e -> e.getId().equals(created.getId()))).isTrue();

        EmprestimoDTO found = service.findById(created.getId());
        assertThat(found.getNumeroContrato()).isEqualTo(dto.getNumeroContrato());
    }

    @Test
    void testUpdateEmprestimo() {
        EmprestimoDTO dto = buildDTO();
        EmprestimoDTO created = service.create(dto);

        EmprestimoDTO updateDto = EmprestimoDTO.builder()
                .numeroContrato("EMP-999")
                .cedenteId(cedente.getId())
                .produtoId(produto.getId())
                .dataOperacao(LocalDate.now())
                .valorReferencia(BigDecimal.valueOf(2000))
                .valorFinanciado(BigDecimal.valueOf(1800))
                .valorLiquido(BigDecimal.valueOf(1700))
                .taxaMes(BigDecimal.valueOf(2.5))
                .taxaEfetiva(BigDecimal.valueOf(2.7))
                .taxaIOF(BigDecimal.valueOf(0.38))
                .taxaIOFComplementar(BigDecimal.valueOf(0.38))
                .valorIOF(BigDecimal.valueOf(10))
                .valorIOFComplementar(BigDecimal.valueOf(2))
                .valorTac(BigDecimal.valueOf(5))
                .valorCustoCobranca(BigDecimal.valueOf(3))
                .valorDoc(BigDecimal.valueOf(1))
                .valorCustoAdministrativo(BigDecimal.valueOf(2))
                .valorOutrasDespesas(BigDecimal.valueOf(4))
                .taxaAberturaCredito(BigDecimal.valueOf(0.5))
                .totalParcelas(24)
                .dataPrimeiraParcela(LocalDate.now().plusMonths(1))
                .diasCarencia(10)
                .parcelasCarencia(2)
                .tipoPagtoIOF("V")
                .tipoPagtoTac("V")
                .tipoContrato("E")
                .status("ALTERADO")
                .usuarioComercial("user2")
                .build();

        EmprestimoDTO updated = service.update(created.getId(), updateDto);

        assertThat(updated.getNumeroContrato()).isEqualTo("EMP-999");
        assertThat(updated.getTotalParcelas()).isEqualTo(24);
        assertThat(updated.getStatus()).isEqualTo("ALTERADO");
    }

    @Test
    void testDeleteEmprestimo() {
        EmprestimoDTO dto = buildDTO();
        EmprestimoDTO created = service.create(dto);

        service.delete(created.getId());

        assertThatThrownBy(() -> service.findById(created.getId()))
                .isInstanceOf(BusinessException.class)
                .hasMessageContaining("não encontrado");
    }

    @Test
    void testDeleteEmprestimoNotFound() {
        Long nonExistentId = 999999L;
        assertThatThrownBy(() -> service.delete(nonExistentId))
                .isInstanceOf(BusinessException.class)
                .hasMessageContaining("não encontrado");
    }

    @Test
    void testFindByIdNotFound() {
        Long nonExistentId = 888888L;
        assertThatThrownBy(() -> service.findById(nonExistentId))
                .isInstanceOf(BusinessException.class)
                .hasMessageContaining("não encontrado");
    }

    private EmprestimoDTO buildDTO() {
        return EmprestimoDTO.builder()
                .numeroContrato("EMP-001")
                .cedenteId(cedente.getId())
                .produtoId(produto.getId())
                .dataOperacao(LocalDate.now())
                .valorReferencia(BigDecimal.valueOf(1000))
                .valorFinanciado(BigDecimal.valueOf(900))
                .valorLiquido(BigDecimal.valueOf(850))
                .taxaMes(BigDecimal.valueOf(2.5))
                .taxaEfetiva(BigDecimal.valueOf(2.7))
                .taxaIOF(BigDecimal.valueOf(0.38))
                .taxaIOFComplementar(BigDecimal.valueOf(0.38))
                .valorIOF(BigDecimal.valueOf(10))
                .valorIOFComplementar(BigDecimal.valueOf(2))
                .valorTac(BigDecimal.valueOf(5))
                .valorCustoCobranca(BigDecimal.valueOf(3))
                .valorDoc(BigDecimal.valueOf(1))
                .valorCustoAdministrativo(BigDecimal.valueOf(2))
                .valorOutrasDespesas(BigDecimal.valueOf(4))
                .taxaAberturaCredito(BigDecimal.valueOf(0.5))
                .totalParcelas(12)
                .dataPrimeiraParcela(LocalDate.now().plusMonths(1))
                .diasCarencia(0)
                .parcelasCarencia(0)
                .tipoPagtoIOF("F")
                .tipoPagtoTac("F")
                .tipoContrato("N")
                .status("ABERTO")
                .usuarioComercial("user1")
                .build();
    }
}

// Configuração MapStruct para testes (sem Spring Boot completo)
@Mapper(componentModel = "spring")
interface TestEmprestimoMapperConfig extends EmprestimoMapper {}