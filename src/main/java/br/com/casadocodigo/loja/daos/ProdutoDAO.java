package br.com.casadocodigo.loja.daos;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import br.com.casadocodigo.loja.models.Produto;
import br.com.casadocodigo.loja.models.TipoPreco;

@Repository
@Transactional
public class ProdutoDAO {

	@PersistenceContext
	private EntityManager entityManager;

	public void gravar(Produto produto) {

		entityManager.persist(produto);
	}

	public EntityManager getEntityManager() {
		return entityManager;
	}

	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

	public List<Produto> listar() {

		return entityManager.createQuery("select p from Produto p", Produto.class).getResultList();
	}

	public Produto find(Integer id) {
		// TODO Auto-generated method stub
		return entityManager.createQuery("select distinct(p) from Produto p join fetch p.precos precos where p.id = :id ", Produto.class).setParameter("id", id).getSingleResult();
		
		
	}

	public BigDecimal somaProdutoPorTipoPreco(TipoPreco tipoPreco) {
		
		TypedQuery<BigDecimal> query = entityManager.createQuery("select sum(preco.valor) from Produto p join p.precos preco where preco.tipo = :tipoPreco", BigDecimal.class);
		query.setParameter("tipoPreco", tipoPreco);
		
		return query.getSingleResult();
		
	}
}
