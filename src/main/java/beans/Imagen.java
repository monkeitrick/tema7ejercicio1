package beans;

import java.awt.Image;
import java.io.File;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;

public class Imagen {
	private String ruta, nombre;
	private int tamanio;
	
	public Imagen() {
		
	}
	
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
	
	public ArrayList<Imagen> imagenesDeCarpeta(String ruta) {
		ArrayList<Imagen> imagenesDeCarpeta= new ArrayList<Imagen>();
		File file= new File(ruta);
		String[] fotos=file.list();
		String[] urlPartida=ruta.split("\\\\");
		String carpeta=urlPartida[urlPartida.length-1];
		for (String foto : fotos) {
			String[] nombrePartido=foto.split("\\.");
			String nombre=nombrePartido[0];
			String rutaImg =carpeta+"\\"+nombre+".jpg";
			File fFoto=new File(ruta+"\\"+foto);
//			System.out.println(ruta+"\\"+foto);
			int tamanio=(int)fFoto.length();
			System.out.println(tamanio);
			Imagen img=new Imagen(rutaImg, nombre, tamanio);
			imagenesDeCarpeta.add(img);
		}
		return imagenesDeCarpeta;
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
