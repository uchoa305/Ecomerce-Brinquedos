package br.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.bean.Brinquedo;
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
			String sql = "INSERT INTO tbCategoria(status,nome_categoria, descricao_categoria,faixa_etaria,cod_linha) values(?,?,?,?,?)";
			conn = this.conn; 
			ps= conn.prepareStatement(sql);
			ps.setBoolean(1, true);
			ps.setString(2, categoria.getCategoria());
			ps.setString(3, categoria.getDescricao());
			ps.setString(4, categoria.getFaixa_etaria());
			ps.setInt(5,categoria.getCod_linha());
			ps.executeUpdate(); 
			
		}catch(SQLException sql ) 
		{
			throw new Exception("erro ao cadastrar os dados" +sql );
		}finally 
		{
			ConnectionFactory.closeConnection(conn, ps, rs);
		}
	}
	// metodo de edição  
	public void editar(Categoria categoria, int old_id) throws Exception
	{
		if(categoria == null )  
			throw new Exception("Preencha as informações");
		try
		{
			System.out.println("4.1 - dentro do dao /n"+categoria);
			String sql ="UPDATE tbCategoria set status = ?,nome_categoria= ?, descricao_categoria= ?,faixa_etaria= ?,cod_linha= ? where id = ? ";  
			conn = this.conn; 
			ps = conn.prepareStatement(sql); 
			ps.setBoolean(1, true);
			ps.setString(2, categoria.getCategoria());
			ps.setString(3, categoria.getDescricao());
			ps.setString(4, categoria.getFaixa_etaria());
			ps.setInt(5,categoria.getCod_linha());
			ps.setInt(6,old_id);
			ps.executeUpdate(); 
			
		}catch(SQLException sql) 
		{
			throw new Exception("erro ao cadastrar os dados" +sql );
		}
	}
	public Boolean del(int id) throws Exception
	{
		if(id == 0) 
		{
			throw new Exception("Preencha as informações ");
		}
		try 
		{
			String sql = "DELETE FROM tbCategoria WHERE id = ? ";
			conn = this.conn; 
			ps = conn.prepareStatement(sql); 
			ps.setInt(1, id);
			ps.executeUpdate(); 
			return true; 
			
		}catch(SQLException sql) 
		{
			throw new Exception("Erro ao inserir os dados" + sql);
		}finally 
		{
			ConnectionFactory.closeConnection(conn, ps,rs);
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
			String faixa_etaria = rs.getString(5);
			int cod_linha = rs.getInt(6);
			
			lista.add(new Categoria(id,categoria,descricao,status,faixa_etaria,cod_linha));
		}
		return lista;
	}
	
	public Categoria consultaCategoria(int cod_cat)throws Exception
	{
			if(cod_cat == 0)
			{
				throw new Exception("Preencha todas as informações");
			}
			try 
			{
				String sql = "SELECT * FROM tbCategoria Where id = ?" ; 
				conn = this.conn; 
				ps = conn.prepareStatement(sql); 
				ps.setInt(1, cod_cat);
				rs = ps.executeQuery(); 
				
				if(rs.next()) 
				{
					int id = rs.getInt(1);
					Boolean status = rs.getBoolean(2);
					String nome = rs.getString(3);
					String descricao = rs.getString(4);
					String faixa_etaria = rs.getString(5); 
					int cod_linha = rs.getInt(6); 
					
					categoria = new Categoria(id,nome,descricao,status,faixa_etaria,cod_linha);
				}
				return categoria;
			}catch (SQLException sql) {
				throw new Exception("Erro ao buscar os dados" + sql);
			}
			finally 
			{
				ConnectionFactory.closeConnection(conn, ps, rs);
			}
	} 

}
