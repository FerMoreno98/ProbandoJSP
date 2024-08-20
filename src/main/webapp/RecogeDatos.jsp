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

try {
	 Class.forName("com.mysql.cj.jdbc.Driver");
}catch(Exception e) {
	 System.out.println("El driver no se ha cargado");
	System.exit(1);
}

	String nombre=request.getParameter("nombre");

	String apellido=request.getParameter("apellido");

	String usuario=request.getParameter("nombreusu");

	String contrasena=request.getParameter("contrasena");

	String pais=request.getParameter("pais");

	String tecnologia=request.getParameter("lenguaje");
	
	String sql="INSERT INTO datos(nombre, apellido, nombreusu, contrasena, pais, lenguaje) VALUES(?, ?, ?, ?, ?, ?)";
	
	try(java.sql.Connection con=java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/registrousuario","root","");
			java.sql.PreparedStatement ps=con.prepareStatement(sql)){
		
		ps.setString(1,nombre);
		
		ps.setString(2,apellido);
		
		ps.setString(3,usuario);
		
		ps.setString(4,contrasena);
		
		ps.setString(5,pais);
		
		ps.setString(6,tecnologia);
		
		ps.executeUpdate();
		
		
		
	}catch(java.lang.Exception e){
		e.printStackTrace();
	}


%>

</body>
</html>