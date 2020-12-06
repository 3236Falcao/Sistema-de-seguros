<%@ page language="java" contentType="text/html; 
charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="conexao.Conexao"%>
<%@page import="java.sql.PreparedStatement" %>
<!DOCTYPE html>
<html>
<head>
<meta  charset="ISO-8859-1">
<title>GET e POST</title>
</head>
<body>

	<%
			String nomerazaosocial = request.getParameter("nomerazaosocial");
			
			int cpfcnpj = Integer.parseInt(request.getParameter("cpfcnpj"));
			
			int telefone = Integer.parseInt(request.getParameter("telefone"));
			
			String estado = request.getParameter("estado");
			
			String cidade = request.getParameter("cidade");
			
			String bairro = request.getParameter("bairro");
			
			String rua = request.getParameter("rua");
			
			int numero = Integer.parseInt(request.getParameter("cpfcnpj"));
			
			String email  = request.getParameter("email");
			
			out.print("O nomerazaosocial informado �" +nomerazaosocial);
			out.print("<hr> ");
			out.print("O cpfcnpj informado �" +cpfcnpj);
			out.print("<hr> ");
			out.print("O telefone informado �" +telefone);
			out.print("<hr> ");
			out.print("O estado informado �" +estado);
			out.print("<hr> ");
			out.print("A cidade informada �" +cidade);
			out.print("<hr> ");
			out.print("O bairro informado �" +bairro);
			out.print("<hr> ");
			out.print("A rua informada �" +rua);
			out.print("<hr> ");
			out.print("O numero informado �" +numero);
			out.print("<hr> ");
			out.print("O email informado �" +email);
			out.print("<hr> ");
			
		
			try {
				Conexao conexao = new Conexao();
				String sql = "insert into clientes (nomerazaosocial, cpfcnpj, telefone, estado, cidade, bairro, rua, numero, email) values(?,?,?,?,?,?,?,?,?)";
				PreparedStatement pstmt = conexao.conectar().prepareStatement(sql);
				pstmt.setString(1, nomerazaosocial); 
				pstmt.setInt(2, cpfcnpj); 
				pstmt.setInt(3, telefone);
				pstmt.setString(4, estado); 
				pstmt.setString(5, cidade);
				pstmt.setString(6, bairro);
				pstmt.setString(7, rua);
				pstmt.setInt(8, numero);
				pstmt.setString(9, email);
				pstmt.execute();
				out.print("Cliente "+nomerazaosocial+ " salvo no banco de dados!");
			} catch (Exception e) {
				e.printStackTrace();
			}
	 %>
	
	
	
</body>
</html>