<%@page import="java.io.IOException"%>
<%@page import="java.io.FileWriter"%>
<%@page import="java.io.File"%>
<%@page import="clases.Actor"%>

<%
	
	Actor a1 = new Actor();

	a1.setNombre(request.getParameter("nombre") != null ? request.getParameter("nombre"):"");
	a1.setApellido(request.getParameter("apellido") != null ? request.getParameter("apellido"):"");
	a1.setEdad(request.getParameter("edad") != null ? Integer.parseInt(request.getParameter("edad")) : 0);
	a1.setLugarNacimiento(request.getParameter("nacimiento") != null ? request.getParameter("nacimiento"):"");
	a1.setNumOscars(request.getParameter("oscars") != null ? Integer.parseInt(request.getParameter("edad")) : 0);
	a1.setNumPeliculas(request.getParameter("pelis") != null ? Integer.parseInt(request.getParameter("edad"))  : 0);
	
	try{
        File file = new File("archivo.csv");
        System.out.println(file.getAbsolutePath());
        file.createNewFile();
        FileWriter fw=new FileWriter(file, true);
        
        fw.write(a1.getNombre() + ";" +
        		a1.getApellido() + ";" +
        		a1.getEdad() + ";" +
        		a1.getLugarNacimiento() + ";" +
        		a1.getNumOscars() + ";" +
        		a1.getNumPeliculas());
        
        fw.write("\n");
        
        fw.flush();
        fw.close(); 
    }catch(IOException e){
        System.out.println("Error E/S: "+e);
    }
	
	response.sendRedirect("leerActor.jsp");

%>