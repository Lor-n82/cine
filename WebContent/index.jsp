<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="cargarActor.jsp" method="GET">
		<label for="">Nombre</label>
		<input type="text" name="nombre" id="nombre">
		<label for="">Apellido</label>
		<input type="text" name="apellido" id="apellido">
		<label for="">Edad</label>
		<input type="number" name="edad" id="edad" min=0>
		<label for="">Lugar de nacimiento</label>
		<input type="text" name="nacimiento" id="nacimiento">
		<label for="">Oscars</label>
		<input type="number" name="oscars" id="oscars" min=0>
		<label for="">Peliculas</label>
		<input type="number" name="pelis" id="pelis" min=0>
		
		<input type="submit">
	</form>
</body>
</html>
