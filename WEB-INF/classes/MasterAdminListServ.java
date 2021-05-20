import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import com.mongodb.client.*;
import org.bson.*;
import com.mongodb.client.model.Filters;

public class MasterAdminListServ extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException {
        /*MongoConnect c= new MongoConnect();
        String email = req.getParameter("email").toString().trim();
        if(email == null){
            req.setAttribute("error", "Session expired please login again");
            req.getRequestDispatcher("AdminIndex.jsp").forward(req, response);    
        }*/
        String data = MongoConnect.getMembersUnderAdmin("masteradmin@lmsSys2104.com");
        req.setAttribute("arrMasterAdmin", data);
        req.getRequestDispatcher("MasterAdmin.jsp").forward(req, response);
    }
}