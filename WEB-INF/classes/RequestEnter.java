import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;

public class RequestEnter extends HttpServlet{
    public void doPost(HttpServletRequest req, HttpServletResponse response) throws ServletException, IOException{
        MongoConnect c = new MongoConnect();
        Cookie ck[] = req.getCookies();
        String email = null;
        for(int i=0; i<ck.length; i++){
            if(ck[i].getName().equals("user")){
                email = ck[i].getValue();
            }
        }
        PrintWriter out = response.getWriter();
        System.out.println(email);
        String toemail = req.getParameter("toem");
        String subject = req.getParameter("sub");
        String dtfrom = req.getParameter("dtfrom");
        String dtto = req.getParameter("dtto");
        String reason = req.getParameter("reason");
        String type = req.getParameter("type");
        MongoConnect.InsertRequest(email, toemail, subject, reason, dtfrom, dtto, type);
        response.sendRedirect("Home");
    }
}
