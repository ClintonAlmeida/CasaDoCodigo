<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Livros de java, Android, Iphone, PHP, Ruby e muito mais - Casa do código</title>
</head>
<body>
    <form:form action="/casadocodigo/produtos" method="POST" commandName="produto">
        <div>
            <label>Título</label> <input type="text" name="titulo" />
        	<form:errors path="titulo" />
        </div>
        <div>
            <label>Descrição</label>
            <textarea rows="10" cols="20" name="descricao"></textarea>
        	<form:errors path="descricao" />
        </div>
        
       <div>
            <label>Paginas</label> 
            <input type="text" name="paginas" />
        	<form:errors path="paginas" />
        </div>
        
        
        
        <button type="submit">Cadastrar</button>
    
    </form:form>
</body>
</html>