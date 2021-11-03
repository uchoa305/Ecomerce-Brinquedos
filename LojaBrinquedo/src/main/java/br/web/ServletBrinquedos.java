package br.web;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.fasterxml.jackson.databind.ObjectMapper;

import br.bean.Brinquedo;
import br.dao.BrinquedoDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;


@WebServlet("/brinquedo")
@MultipartConfig
public class ServletBrinquedos extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ServletBrinquedos() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// cmd indica o tipo de ação 
		String cmd = request.getParameter("cmd"); 
		
		// objeto CRUD 
		BrinquedoDao dao ; 
		
		// instanciando objeto brinquedo  
		Brinquedo brinquedo = new Brinquedo(); 
		
		// verificando se o cmd nao vem vazio
		if(cmd != null) 
		{
			try 
			{
				String path = request.getServletContext().getRealPath("/img");
				String url = null; 
			
							
				for(Part part: request.getParts()) 
				{
						
					if(part.getName().equals("file"))
					{
						
						part.write(path+File.separator+part.getSubmittedFileName());
						url = path+File.separator+part.getSubmittedFileName();
					}
				}
				
				 brinquedo.setNomeBrinquedo(request.getParameter("txtNomeBrinquedo"));
				 brinquedo.setCodBrinquedo(request.getParameter("txtCodBrinquedo"));
				 brinquedo.setDescricao(request.getParameter("txtDescricao"));
				 brinquedo.setPreco(Double.parseDouble(request.getParameter("txtPrecoBrinquedo")));
				 brinquedo.setCategoria(Integer.parseInt(request.getParameter("slccategoria")));
				 brinquedo.setFoto(url);
				
			}catch(Exception erro) 
			{
				erro.printStackTrace();
				
			}
			
		}
		try 
		{
			// instancia um objeto brinquedoDao
			dao = new BrinquedoDao(); 
			RequestDispatcher rd = null; 
			
			// inlcuir brinquedo
			if(cmd.equalsIgnoreCase("listSlider"))
			{
				ObjectMapper mapper = new ObjectMapper();
				List<Brinquedo> clist = dao.listarBrinquedos();
				response.setStatus(HttpServletResponse.SC_OK);
				response.getWriter().write(mapper.writeValueAsString(clist));
			}
			
		}catch(Exception erro) 
		{
			erro.printStackTrace();
			throw new ServletException(erro);
		}	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException 
	{
					// cmd indica o tipo de ação 
					String cmd = request.getParameter("cmd"); 
					
					// objeto CRUD 
					BrinquedoDao dao ; 
					
					// instanciando objeto brinquedo  
					Brinquedo brinquedo = new Brinquedo(); 
					
					// verificando se o cmd nao vem vazio
					if(cmd != null) 
					{
						try 
						{
							String path = request.getServletContext().getRealPath("/img");
							String url = null; 
						
										
							for(Part part: request.getParts()) 
							{
									
								if(part.getName().equals("file"))
								{
									
									part.write(path+File.separator+part.getSubmittedFileName());
									url = part.getSubmittedFileName();

								}
							}
							
							 brinquedo.setNomeBrinquedo(request.getParameter("txtNomeBrinquedo"));
							 brinquedo.setCodBrinquedo(request.getParameter("txtCodBrinquedo"));
							 brinquedo.setDescricao(request.getParameter("txtDescricao"));
							 brinquedo.setPreco(Double.parseDouble(request.getParameter("txtPrecoBrinquedo")));
							 brinquedo.setCategoria(Integer.parseInt(request.getParameter("slccategoria")));
							 brinquedo.setFoto(url);
							
						}catch(Exception erro) 
						{
							erro.printStackTrace();
							
						}
						
					}
					try 
					{
						// instancia um objeto brinquedoDao
						dao = new BrinquedoDao(); 
						RequestDispatcher rd = null; 
						
						// inlcuir brinquedo
						if(cmd.equalsIgnoreCase("incluir"))
						{
							//chama metodo de salvar na classe brinquedoDAO
							dao.salvar(brinquedo);
							// redireciona para a index
							response.sendRedirect("BrinquedosDestaque.html");  
							//envia junto request e response
							
						}
						
					}catch(Exception erro) 
					{
						erro.printStackTrace();
						throw new ServletException(erro);
					}				
	}

}
