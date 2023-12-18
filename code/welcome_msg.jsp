import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

@WebServlet("/MyServlet")
public class MyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MyServlet() {
        super();
          }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.print("<html><head>My First Servlet</head><body>");
		out.print("<center><h2>");
		out.print("Welcome to HTTP Servlets</h2></center>");
		out.print("<p>doGet() Method is executing....</p>");
		out.print("</body></html>");
	}
}

