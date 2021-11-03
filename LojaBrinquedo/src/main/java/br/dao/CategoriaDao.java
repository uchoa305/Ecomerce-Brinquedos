package br.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.bean.Categoria;
import br.util.ConnectionFactory;

public class CategoriaDao 
{
	private Connection conn ; 
	private PreparedStatement ps; 
	private ResultSet rs ;  
	Categoria categoria ; 
	
	
	public CategoriaDao() throws Exception
	{
		try
		{
			this.conn = ConnectionFactory.getConnection();
		}catch (Exception e) 
		{
			throw new Exception(e.getMessage());
		}
	}
	
	// metodo para cadastrar catgoria 
	public void salvar(Categoria categoria) throws Exception
	{
		if(categoria == null) 
		{
			throw new Exception("preencha as informações");
		}
		try 
		{
			//System.out.println(categoria.getCategoria());
			String sql = "INSERT INTO tbCategoria(status,nome_categoria, descricao_categoria) values(?,?,?)";
			conn = this.conn; 
			ps= conn.prepareStatement(sql);
			ps.setBoolean(1, true);
			ps.setString(2, categoria.getCategoria());
			ps.setString(3, categoria.getDescricao());
			ps.executeUpdate(); 
			
		}catch(SQLException sql ) 
		{
			throw new Exception("erro ao cadastrar os dados" +sql );
		}finally 
		{
			ConnectionFactory.closeConnection(conn, ps, rs);
		}
	}
	//metodo listar todas as categorias
	public List listarCategorias() throws Exception
	{
		String sql = "SELECT * FROM tbCategoria"; 
		conn = this.conn; 
		ps = conn.prepareStatement(sql);
		rs = ps.executeQuery();
		
		List<Categoria> lista = new ArrayList<Categoria>();
		
		while(rs.next()) 
		{
			int id = rs.getInt(1);
			boolean status = rs.getBoolean(2);
			String categoria = rs.getString(3);
			String descricao = rs.getString(4);
			
			
			
			lista.add(new Categoria(id,categoria,status,descricao));
		}
		return lista;
	}

}
