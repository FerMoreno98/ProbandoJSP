<%@ page import="java.sql.*" %>

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
	try{
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
	}catch(Exception e){
		
		System.out.println("No se ha podido conectar");
		System.exit(1);
		
	}

	String usuario=request.getParameter("usuario");
	
	String contrasena=request.getParameter("contrasena");
	
	String sql="select * from datos where nombreusu=? and contrasena=?";
	
	try(Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/registrousuario","root","");
			PreparedStatement pst=con.prepareStatement(sql,ResultSet.TYPE_SCROLL_INSENSITIVE, 
				    ResultSet.CONCUR_READ_ONLY)){
		
		pst.setString(1, usuario);
		
		pst.setString(2,contrasena);
		
		
		ResultSet rs=pst.executeQuery();
		
		if(rs.absolute(1)){
			
			out.println("Usuario autorizado");
			
		}else{
			
			out.println("No hay usuarios con esos datos");
		}
		
		
		
	}catch(Exception e){
		e.printStackTrace();
		
	}

%>

</body>
</html>