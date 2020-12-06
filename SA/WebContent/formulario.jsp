<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CADASTRO</title>
</head>
<body>

		<form action="receber.jsp">
		<label>NOME/RAZÃO SOCIAL:</label>
		<input type="text" name="nome">
		<br>
		<label>CPF/CNPJ:</label>
		<input type="number" name="cpfcnpj">
		<br>
		<label>TELEFONE:</label>
		<input type="number" name="telefone">
		<br>
		<label>ESTADO:</label>
		<input type="text" name="estado">
		<br>
		<label>CIDADE:</label>
		<input type="text" name="cidade">
		<br>
		<label>BAIRRO:</label>
		<input type="text" name="bairro">
		<br>
		<label>RUA:</label>
		<input type="text" name="rua">
		<br>
		<label>NÚMERO:</label>
		<input type="number" name="numero">
		<br>
		<label>E-MAIL:</label>
		<input type="text" name="email">
		<br>
		<input type="submit" value="Enviar Dados"> 
	
	</form>
</body>
</html>