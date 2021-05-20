import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import com.mongodb.client.*;
import org.bson.*;
import com.mongodb.client.model.Filters;

public class AuthServ extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        MongoConnect c = new MongoConnect();
        String email = req.getParameter("email").trim();
        String password = req.getParameter("password").trim();
        PrintWriter out = response.getWriter();
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        if (!MongoConnect.Authenticate(email, password)) {
            out.print("{Auth: \"NOTOK\", Error:\"Invalid username or password!\" }");
        } else {
            HttpSession ses = req.getSession();
            ses.setAttribute("email", email);
            ses.setMaxInactiveInterval(30*60);
            response.sendRedirect("Home");
        }
        out.flush();
    }

}