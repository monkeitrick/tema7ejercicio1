package beans;

import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;

public class Imagen {
	private String ruta, nombre;
	private int tamanio;
	
	public Imagen(String ruta, String nombre, int tamanio) {
		this.ruta = ruta;
		this.nombre = nombre;
		this.tamanio = tamanio;
	}
	
	public String tamanioDesglosado(int tamanio) {
		String respuesta;
		int mb, kb, b=tamanio;
		kb=b/1024;
		b=b%1024;
		mb=kb/1024;
		kb=kb%1024;
		return mb+"Mb"+kb+"Kb"+b+"bytes";
	}
	
	public ArrayList<Imagen> imagenesCarpeta(String ruta) {
		File file= new File(ruta);
		
		
		return null;
	}
	public String getRuta() {
		return ruta;
	}

	public void setRuta(String ruta) {
		this.ruta = ruta;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getTamanio() {
		return tamanio;
	}

	public void setTamanio(int tamanio) {
		this.tamanio = tamanio;
	}
	
}
