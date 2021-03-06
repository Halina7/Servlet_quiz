package quiz1;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "quiz1.Page2Servlet", value = "/quiz2")
public class Page2Servlet extends HttpServlet{

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        int currentScore = (int) session.getAttribute(QuizePageSwitchServlet.SCORE);

        if(req.getParameter("quiz") == null) {
            req.setAttribute("error", "Please chose one answer !!!");
            req.getRequestDispatcher("quiz2.jsp").forward(req, resp);
        }else if (req.getParameter("quiz").equals("Tirana")) {
            session.setAttribute(QuizePageSwitchServlet.SCORE, currentScore + 1);
        }
        req.getRequestDispatcher("quiz3.jsp").forward(req,resp);
   }
}

