package br.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import br.bean.Brinquedo;
import br.util.ConnectionFactory; 

public class BrinquedoDao {
	private Connection conn ; 
	private PreparedStatement ps; 
	private ResultSet rs ;  
	private Brinquedo brinquedo; 
	
	// metodo construtor
	
	public BrinquedoDao() throws Exception
	{
		try 
		{
			this.conn = ConnectionFactory.getConnection();
		}catch(Exception e )
		{
			throw new Exception(e.getMessage()); 
		}
	}
	// metodo salvar  
	
	public void salvar(Brinquedo brinquedo) throws Exception
	{
		
		if(brinquedo == null ) 
		{
			throw new Exception("Preencha as informa��es");
		}
		try 
		{
			
			String sql = "INSERT INTO tbBrinquedo(status,nome_brinquedo,preco_brinquedo,descricao_brinquedo,foto_brinquedo,id_categoria,cod_brinquedo) values(?,?,?,?,?,?,?)";
			conn = this.conn; 
			ps= conn.prepareStatement(sql); 
			ps.setBoolean(1,true);
			ps.setString(2,brinquedo.getNomeBrinquedo());
			ps.setDouble(3, brinquedo.getPreco());
			ps.setString(4, brinquedo.getDescricao());
			ps.setString(5, brinquedo.getFoto()); 
			ps.setInt(6,brinquedo.getCategoria());
			ps.setString(7, brinquedo.getCodBrinquedo());
			ps.executeUpdate(); 
			
		}catch(SQLException sql ) 
		{
			throw new Exception("erro ao cadastrar os dados" +sql );
		}finally 
		{
			ConnectionFactory.closeConnection(conn, ps, rs);
		}
	}
	public List listarBrinquedos() throws Exception
	{
		try 
		{
			String sql = "SELECT * FROM tbBrinquedo";
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			List<Brinquedo> lista = new ArrayList<Brinquedo>();
			
			while(rs.next()) 
			{
				String nome = rs.getString(3);
				Double preco = rs.getDouble(4);
				String descricao = rs.getString(5);
				String urlFoto = rs.getString(6);
				int categoria = rs.getInt(7);
				String cod = rs.getString(8); 
				
				lista.add(new Brinquedo(cod,nome,categoria,preco,descricao,urlFoto));
			}
			return lista; 
			
		}catch(SQLException sql) 
		{
			throw new Exception("erro ao carregar a lista" +sql );
		}
	}
	public void editar(Brinquedo brinquedo, String cod_antigo) throws Exception
	{
		
		if(brinquedo == null ) 
		{
			throw new Exception("Preencha as informa��es");
		}
		try 
		{
			
			String sql = "UPDATE tbBrinquedo set   status=?, nome_brinquedo=?,preco_brinquedo=?,descricao_brinquedo=?,foto_brinquedo=?,id_categoria=?,cod_brinquedo=? Where cod_brinquedo = ? "; 
			conn = this.conn; 
			ps= conn.prepareStatement(sql); 
			ps.setBoolean(1,true);
			ps.setString(2,brinquedo.getNomeBrinquedo());
			ps.setDouble(3, brinquedo.getPreco());
			ps.setString(4, brinquedo.getDescricao());
			ps.setString(5, brinquedo.getFoto()); 
			ps.setInt(6,brinquedo.getCategoria());
			ps.setString(7, brinquedo.getCodBrinquedo());
			ps.setString(8, cod_antigo);
			ps.executeUpdate(); 
			
		}catch(SQLException sql ) 
		{
			throw new Exception("erro ao cadastrar os dados" +sql );
		}finally 
		{
			ConnectionFactory.closeConnection(conn, ps, rs);
		}
	}
	public Boolean del(String cod) throws Exception 
	{
		if(cod == null) 
		{
			throw new Exception("Preencha as informa��es ");
		}
		try 
		{
			String sql = "DELETE FROM tbBrinquedo WHERE cod_brinquedo = ? ";
			conn = this.conn; 
			ps = conn.prepareStatement(sql); 
			ps.setString(1, cod);
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
	public Brinquedo consultaBrinquedo(String cod_briquedo)throws Exception
	{
			if(cod_briquedo == null)
			{
				throw new Exception("Preencha todas as informa��es");
			}
			try 
			{
				String sql = "SELECT * FROM tbBrinquedo Where cod_brinquedo = ?" ; 
				conn = this.conn; 
				ps = conn.prepareStatement(sql); 
				ps.setString(1, cod_briquedo);
				rs = ps.executeQuery(); 
				
				if(rs.next()) 
				{
					String nome = rs.getString(3);
					Double preco = rs.getDouble(4);
					String descricao = rs.getString(5);
					String urlFoto = rs.getString(6);
					int categoria = rs.getInt(7);
					String cod = rs.getString(8); 
					
					brinquedo = new Brinquedo(cod,nome,categoria,preco,descricao,urlFoto);
				}
				return brinquedo;
			}catch (SQLException sql) {
				throw new Exception("Erro ao buscar os dados" + sql);
			}
			finally 
			{
				ConnectionFactory.closeConnection(conn, ps, rs);
			}
	}
	

}
