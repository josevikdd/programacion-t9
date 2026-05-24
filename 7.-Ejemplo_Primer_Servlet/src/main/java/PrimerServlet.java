import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.ServletException;

@WebServlet("/PrimerServlet")
public class PrimerServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        processRequest(request, response);
    }

    protected void processRequest(HttpServletRequest request,
                                  HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");

        try (PrintWriter out = response.getWriter()) {

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HolaServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Hola desde processRequest()</h1>");
            out.println("<b>Servlet Name: </b> " + this.getServletName());
            out.println("<br>");
            out.println("<b>Protocol: </b> " + request.getProtocol());
            out.println("<br>");
            out.println("<b>Scheme: </b> " + request.getScheme());
            out.println("<br>");
            out.println("<b>Server Port: </b> " + request.getServerPort());
            out.println("<br>");
            out.println("<b>Server Info:: </b> " + getServletContext().getServerInfo());
            out.println("<br>");
            out.println("<b>Remote Addr: </b> " + request.getRemoteAddr());
            out.println("<br>");
            out.println("<b>Remote Host: </b> " + request.getRemoteHost());
            out.println("<br>");
            out.println("<b>Locale: </b> " + request.getLocale());
            out.println("<br>");
            out.println("<b>Default Response Buffer: </b> " + response.getBufferSize());
            out.println("<br>");
            out.println("<b>Request is Secure: </b> " + request.isSecure());
            out.println("<br>");
            out.println("<b>HTTP Method: </b> " + request.getMethod());
            out.println("<br>");
            out.println("<b>Request URI: </b> " + request.getRequestURI());
            out.println("<br>");
            out.println("<b>Context Path: </b> " + request.getContextPath());
            out.println("<br>");
            out.println("<b>Servlet Path: </b> " + request.getServletPath());
            out.println("</body>");
            out.println("</html>");
        }
    }
}