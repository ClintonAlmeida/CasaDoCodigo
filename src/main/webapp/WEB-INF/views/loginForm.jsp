<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>

<!DOCTYPE html>
<html>
<head>

<c:url value="/resources/css" var="cssPath"></c:url>

<link rel="stylesheet" href="${cssPath }/bootstrap.min.css">
<link rel="stylesheet" href="${cssPath }/bootstrap-theme.min.css">
<script src="${cssPath }/js/bootstrap.min.js"></script>

<style type="text/css">
body {
	padding: 0px 0px;
}
</style>



<meta charset="UTF-8">
<title>Livros de java, Android, Iphone, PHP, Ruby e muito mais -
	Casa do código</title>
</head>
<body >
	
	<div class="container">

	<h1>Login da Casa do Codigo</h1>
	
	<form:form servletRelativeAction="/login" method="post">
		<div class="form-group">
			<label>Usuario: </label>
			<input type="text" name="username" Class="form-control" />
		
		</div>
		<div class="form-group">
			<label>Senha</label>
			<input type="password" name="password" Class="form-control" />
			
		</div>
		<button type="submit" class="btn btn-primary">Logar</button>
	</form:form>
	</div>
</body>
</html>