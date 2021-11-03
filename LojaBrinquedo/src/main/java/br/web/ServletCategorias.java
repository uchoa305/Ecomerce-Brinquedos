package br.web;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import br.bean.Brinquedo;
import br.bean.Categoria;
import br.dao.BrinquedoDao;
import br.dao.CategoriaDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import com.fasterxml.jackson.databind.ObjectMapper;

/**
 * Servlet implementation class ServletCategoria
 */

@WebServlet("/categorias")
public class ServletCategorias extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ServletCategorias() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// cmd indica o tipo de ação 
				String cmd = request.getParameter("cmd"); 
				CategoriaDao dao; 
				// objeto CRUD ~
				Categoria categoria = new Categoria(); 
				
				// verificando se o cmd nao vem vazio
				if(cmd != null) 
				{
					try 
					{
						categoria.setCategoria(request.getParameter("txtNomeCategoria"));
						categoria.setDescricao(request.getParameter("txtDescricao"));
						categoria.setStatus(Boolean.parseBoolean(request.getParameter("slcStatus")));
					}catch (Exception e) {
						e.printStackTrace();
						
					}
					
				}
				try
				{
					
					dao = new CategoriaDao(); 
					RequestDispatcher rd = null; 
					
					if(cmd.equalsIgnoreCase("listar")) 
					{
						
						try {
							ObjectMapper mapper = new ObjectMapper();
							List<Categoria> clist = dao.listarCategorias();
							response.setStatus(HttpServletResponse.SC_OK);
							response.getWriter().write(mapper.writeValueAsString(clist)); 
						}catch(Exception e) 
						{
							e.printStackTrace();
						}			
						
					}
					
				}catch (Exception e) {
					e.printStackTrace();
					throw new ServletException(e);
				}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String cmd  = request.getParameter("cmd");
		
		CategoriaDao dao; 
		
		Categoria categoria = new Categoria(); 
		
		if(cmd!=null) 
		{
			try 
			{
				categoria.setCategoria(request.getParameter("txtNomeCategoria"));
				categoria.setDescricao(request.getParameter("txtDescricaoCategoria"));
				categoria.setId(0);
				categoria.setStatus(true); 
			}catch(Exception e )
			{
				e.printStackTrace();
			}
		}
		try 
		{
			dao = new CategoriaDao(); 
			RequestDispatcher rd = null;
			
			//incluir categoria 
			if(cmd.equalsIgnoreCase("incluir")) 
			{
					dao.salvar(categoria);
					ObjectMapper mapper = new ObjectMapper();
					response.setStatus(HttpServletResponse.SC_OK);
					response.getWriter().write(mapper.writeValueAsString(categoria)); 
					/*
					 * rd = request.getRequestDispatcher("FormCadastraBrinquedo.jsp");
					 * 
					 * rd.forward(request, response);
					 */
			}
		}catch(Exception erro) 
		{
			erro.printStackTrace();
			throw new ServletException(erro);
		}
	}

}
