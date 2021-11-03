package br.bean;

public class Categoria {
	private int id; 
	private String categoria; 
	private boolean status;
	private String descricao;
	
	
	public Categoria(int id,String categoria, boolean status, String descricao) 
	{
		this.id = id; 
		this.categoria =categoria; 
		this.descricao = descricao; 
		this.status = status;	
	}
	
	public Categoria() 
	{
		
		
	}
	
	
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	
	

}
