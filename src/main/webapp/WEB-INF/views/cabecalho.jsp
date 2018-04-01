<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>




<header id="layout-header">


	<div class="clearfix container">
		<a href="/" id="logo"> </a>
		<div id="header-content">
			<nav id="main-nav">
				<ul class="clearfix">
					<security:authorize access="hasRole('ROLE_ADMIN')">
						<li><a href="${s:mvcUrl('PC#listar').build() }"
							rel="nofollow">Listagem de Produtos</a></li>

						<li><a href="${s:mvcUrl('PC#form').build() }" rel="nofollow">Cadastro
								de Produtos</a></li>
					</security:authorize>
					<li><a href="${spring:mvcUrl('CCC#itens').build()}"
						rel="nofollow">Seu carrinho (${shoppingCart.quantity}) </a></li>

					<li><a href="/pages/sobre-a-casa-do-codigo" rel="nofollow">Sobre
							nós </a></li>

					<li><a href="/pages/perguntas-frequentes" rel="nofollow">Perguntas
							Frequentes </a></li>

					<li>
					<a href="?locale=pt" rel="nofollow"> <fmt:message
								key="menu.pt" />
							
										</a>
					</li>
					<li>
					<a href="?locale=en_UR" rel="nofollow"> <fmt:message
							key="menu.en"  />
							
					</a>
					</li>

				</ul>
			</nav>
		</div>
	</div>


</header>
<nav class="categories-nav">
	<ul class="container">
		<li class="category"><a href="http://www.casadocodigo.com.br">Home</a>
		<li class="category"><a href="/collections/livros-de-agile">
				<fmt:message key="navigation.category.agile" /> <spring:message
					code="navigation.category.agile" />
		</a>
		<li class="category"><a href="/collections/livros-de-front-end">
				<fmt:message key="navigation.category.front" />
		</a>
		<li class="category"><a href="/collections/livros-de-games">
				<fmt:message key="navigation.category.games" />
		</a>
		<li class="category"><a href="/collections/livros-de-java"> <fmt:message
					key="navigation.category.java" />
		</a>
		<li class="category"><a href="/collections/livros-de-mobile">
				<fmt:message key="navigation.category.mobile" />
		</a>
		<li class="category"><a
			href="/collections/livros-desenvolvimento-web"> <fmt:message
					key="navigation.category.web" />
		</a>
		<li class="category"><a href="/collections/outros"> <fmt:message
					key="navigation.category.others" />
		</a>
	</ul>
</nav>