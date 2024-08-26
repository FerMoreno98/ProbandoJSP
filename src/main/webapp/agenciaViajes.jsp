<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Agencia de viajes</h1>

<%
	String ciudadFav="Madrid"; //ciudad por defecto si no ve la cookie
	
	Cookie [] miscookies=request.getCookies(); //leemos la cookie y la almacenamos en el array
	
	//buscar las preferencias
	
	if(miscookies!=null){
		
		for(Cookie temp:miscookies){
			
			if("agencia_viajes.ciudad_favorita".equals(temp.getName())){
				
				ciudadFav=temp.getValue();
				break;
				
			}
			
		}
	}


%>

<h3>Vuelos a <%= ciudadFav %></h3>

<p>Texto de ejemplo</p>
<p>Texto de ejemplo</p>
<p>Texto de ejemplo</p>

<h3>Hoteles en <%= ciudadFav %></h3>

<p>Texto de ejemplo</p>
<p>Texto de ejemplo</p>
<p>Texto de ejemplo</p>

<h3>Descuentos en <%= ciudadFav %></h3>

<p>Texto de ejemplo</p>
<p>Texto de ejemplo</p>
<p>Texto de ejemplo</p>

</body>
</html>