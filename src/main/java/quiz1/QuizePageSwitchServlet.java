package quiz1;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "QuizePageSwitchServlet", value = "/quiz")
public class QuizePageSwitchServlet extends HttpServlet {
    public static final String SCORE = "score";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        if(req.getParameter("quiz").equals("yes")){
            HttpSession session = req.getSession();
            session.setAttribute(SCORE, 0);
            req.getRequestDispatcher("quiz1.jsp").forward(req,resp);
        }else{
            PrintWriter writer = resp.getWriter();
            writer.print("<h1> Good bye! <h1>");
        }
    }
}

