<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	String ciudadFavorita=request.getParameter("ciudadFavorita");


	//crear la cookie
	
	Cookie lacookie=new Cookie("agencia_viajes.ciudad_favorita", ciudadFavorita);
	
	//vida de la cookie
	
	lacookie.setMaxAge(365*24*60*60); //para que dure un año
	
	response.addCookie(lacookie); //agrega la cookie a la respuesta del servidor



%>

Gracias por enviar tus preferencias

<a href="agenciaViajes.jsp">Ir a la agencia</a>

</body>
</html>