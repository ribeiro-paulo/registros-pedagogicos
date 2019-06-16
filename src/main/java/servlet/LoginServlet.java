/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Pedagoga;
import model.dao.GenericDAO;
import model.dao.PedagogaDAO;

/**
 *
 * @author eddunic
 */
public class LoginServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doPost(request, response);
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();

        if (!"".equals(request.getParameter("usuario")) && !"".equals(request.getParameter("senha"))) {
	    
	    Pedagoga pedagoga = new Pedagoga();

            pedagoga.setUsuario(request.getParameter("usuario"));
            pedagoga.setSenha(request.getParameter("senha"));

	    List<Pedagoga> pedagogas;
            PedagogaDAO dao = new PedagogaDAO();
	    
	    pedagogas = dao.buscarPorLogin(pedagoga);

            if (!pedagogas.isEmpty()) {	
                request.setAttribute("usuario", request.getParameter("usuario"));
                response.sendRedirect("../registros_pedagogicos/jsp/home-relatos.jsp");
            } else {
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Relatos Pedagógicos</title>");
                out.println("</head>");
                out.println("<body>");
                out.println("<script language = 'JavaScript'>");
                out.println("    alert('Cadastro inexistente'); window.location.href='../relatos_pedagogicos/index.jsp';");
                out.println(" </script>");
                out.println("</body>");
                out.println("</html>");
                out.close();
            }
        }
    }

}
