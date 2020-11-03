package clases;

public class Actor {
	
		private String nombre;
		private String apellido;
		private int edad;
		private String lugarNacimiento;
		private int numeroOscars;
		private int numeroPeliculas;
		
		
		public Actor() {
			this.nombre = "";
			this.apellido = "";
			this.edad = 18;
			this.lugarNacimiento = "";
			this.numeroOscars = 0;
			this.numeroPeliculas = 0;
		}
	
		public Actor(String nombre, String apellido, int edad, String lugarNacimiento, int numeroOscars,
				int numeroPeliculas) {
			this.nombre = nombre;
			this.apellido = apellido;
			this.edad = edad;
			this.lugarNacimiento = lugarNacimiento;
			this.numeroOscars = numeroOscars;
			this.numeroPeliculas = numeroPeliculas;
		}
		
		public String getNombre() {
			return nombre;
		}
		public void setNombre(String nombre) {
			this.nombre = nombre;
		}
		public String getApellido() {
			return apellido;
		}
		public void setApellido(String apellido) {
			this.apellido = apellido;
		}
		public int getEdad() {
			return edad;
		}
		public void setEdad(int edad) {
			this.edad = edad;
		}
		public String getLugarNacimiento() {
			return lugarNacimiento;
		}
		public void setLugarNacimiento(String lugarNacimiento) {
			this.lugarNacimiento = lugarNacimiento;
		}
		public int getNumeroOscars() {
			return numeroOscars;
		}
		public void setNumeroOscars(int numeroOscars) {
			this.numeroOscars = numeroOscars;
		}
		public int getNumeroPeliculas() {
			return numeroPeliculas;
		}
		public void setNumeroPeliculas(int numeroPeliculas) {
			this.numeroPeliculas = numeroPeliculas;
		}
		
}

