import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import com.mongodb.client.*;
import org.bson.*;
import com.mongodb.client.model.Filters;

public class MemberRequestInfoServ extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        MongoConnect c= new MongoConnect();
        String obiId = req.getParameter("id").toString().trim();
        if(obiId == null){
            req.setAttribute("error", "Session expired please login again");
            req.getRequestDispatcher("AdminDashboard.jsp").forward(req, response);    
        }
        //Document doc = MongoConnect.getAdminUser(email);
        String data = MongoConnect.getRequestInfoUnderAdmin(obiId);
        req.setAttribute("MemberData", data);
        req.getRequestDispatcher("MemberInfo.jsp").forward(req, response);
    }
}