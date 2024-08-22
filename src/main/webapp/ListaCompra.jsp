<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.util.*"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de la compra</title>
</head>
<body>

<h2>Compras</h2>

<form action="ListaCompra.jsp" method="post">

<label for="pescado">
<input type="checkbox" name="articulo" value="pescado"> pescado
</label>
<br>

<label for="carne">
<input type="checkbox" name="articulo" value="carne"> carne
</label>
<br>

<label for="manzana">
<input type="checkbox" name="articulo" value="manzana">manzana
</label>
<br>

<label for="fresa">
<input type="checkbox" name="articulo" value="fresa"> fresa
</label>
<br>

<label for="pan">
<input type="checkbox" name="articulo" value="pan"> pan
</label>
<br>

<label for="agua">
<input type="checkbox" name="articulo" value="agua"> agua
</label>
<br>

<label for="vino">
<input type="checkbox" name="articulo" value="vino"> vino
</label>
<br>

<label for="pasta">
<input type="checkbox" name="articulo" value="pasta"> pasta
</label>
<br>
<br>
<input type="submit" name="boton" value="enviar">

</form>

<h2>Carrito de la compra</h2>

<ul>

<%
	//esto daria null al principio
	List<String> elements=(List<String>)session.getAttribute("misElementos");
		
		
		if(elements==null){
			elements=new ArrayList<String>();
			
			session.setAttribute("misElementos", elements);
		}

	String [] elementos=request.getParameterValues("articulo");
		
		if(elementos!=null){
		
		for(String elemento:elementos){
			

			elements.add(elemento);
			
		}
		}
		
		for(String elemento:elements){
			
			out.print("<li>"+elemento+"</li>");
		}


%>

</ul>
</body>
</html>