package br.bean;

public class Brinquedo {
	
	private String codBrinquedo;
	private String nomeBrinquedo;
	private int categoria;
	private double preco; 
	private String descricao; 
	private String foto; 
	
	public Brinquedo(String codBrinquedo,String nomeBrinquedo,
			int categoria,double preco,String descricao, String foto  ) 
	{
		this.codBrinquedo = codBrinquedo; 
		this.nomeBrinquedo = nomeBrinquedo; 
		this.categoria = categoria; 
		this.preco = preco; 
		this.descricao = descricao; 
		this.foto = foto; 	
	}
	public Brinquedo() 
	{
		
	}

	public String getCodBrinquedo() {
		return codBrinquedo;
	}

	public void setCodBrinquedo(String codBrinquedo) {
		this.codBrinquedo = codBrinquedo;
	}

	public String getNomeBrinquedo() {
		return nomeBrinquedo;
	}

	public void setNomeBrinquedo(String nomeBrinquedo) {
		this.nomeBrinquedo = nomeBrinquedo;
	}

	public int getCategoria() {
		return categoria;
	}

	public void setCategoria(int categoria) {
		this.categoria = categoria;
	}

	public double getPreco() {
		return preco;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}
	
	
}
