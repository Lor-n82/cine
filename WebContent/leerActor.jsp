<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
                <th>Nombre</th> 
                <th>Apellido</th>
                <th>Edad</th>
                <th>Lugar de nacimiento</th>
                <th>Numero Oscars</th>
                <th>Numero Peliculas</th>
        </tr>
	<%
		String fichero = "archivo.csv";
	    
	    try{
	
	        BufferedReader br = new BufferedReader(new FileReader(fichero));
	        String linea;
	        while ((linea = br.readLine()) != null) {
	
	            String[] separado = linea.split(";");
     %>      
          
            <tr>
                <td><%= separado[0] %></td> 
                <td><%= separado[1] %></td>
                <td><%= separado[2] %></td>
                <td><%= separado[3] %></td>
                <td><%= separado[4] %></td>
                <td><%= separado[5] %></td>
            </tr>
		<%               
		    }
			br.close();
		    }catch(Exception e){
				System.out.println("Error" + e);
		    }
		%>
	</table>
</body>
</html>