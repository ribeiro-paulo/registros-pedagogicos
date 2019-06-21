/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import com.mysql.cj.x.protobuf.MysqlxCrud;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Registro;
import model.dao.GenericDAO;

/**
 *
 * @author Junior
 */
@WebServlet(name = "NovoRegistroServlet", urlPatterns = {"/NovoRegistroServlet"})
public class NovoRegistroServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Registro registro = new Registro();
        GenericDAO<Registro> dao = new GenericDAO<>();

        registro.setMatricula(request.getParameter("matricula"));
        registro.setData(request.getParameter("data"));
        registro.setTipoDeOcorrencia(request.getParameter("tipoDeOcorrencia"));
        registro.setDescricao(request.getParameter("descricao"));

        dao.saveOrUpdate(registro);

        response.sendRedirect("../registros_pedagogicos/jsp/index.jsp");
    }
}
