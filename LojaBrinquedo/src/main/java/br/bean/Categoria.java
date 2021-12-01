package br.bean;

public class Categoria {
	private int id; 
	private String categoria; 
	private boolean status;
	private String descricao;
	private String faixa_etaria;
	private int cod_linha; 
	
	public Categoria(int id,String categoria, String descricao, boolean status, String faixa_etaria, int cod_linha) 
	{
		this.id = id; 
		this.categoria =categoria; 
		this.descricao = descricao; 
		this.status = status;	
		this.faixa_etaria = faixa_etaria; 
		this.cod_linha = cod_linha;
	}
	
	public String getFaixa_etaria() {
		return faixa_etaria;
	}

	public void setFaixa_etaria(String faixa_etaria) {
		this.faixa_etaria = faixa_etaria;
	}

	public int getCod_linha() {
		return cod_linha;
	}

	public void setCod_linha(int cod_linha) {
		this.cod_linha = cod_linha;
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
