package quiz2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "InitializingServlet", value = "/newQuizIni")
public class InitializingServlet extends HttpServlet {

    static final String QUESTION_NO = "questionNo";
    static final String QUESTION = "question";
    static final String SCORE = "score";
    static final String ANSWER = "answer";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        String answer = req.getParameter(ANSWER);

        if(answer.equals("yes")) {
            session.setAttribute(SCORE, 0);
            session.setAttribute(QUESTION_NO, 0);
            Question question = QuestionService.getQuestion(0);
            req.setAttribute(QUESTION, question);
            req.getRequestDispatcher("question.jsp").forward(req,resp);
        }else if (answer.equals("no")) {
            PrintWriter writer = resp.getWriter();
            writer.print("<h1> Good bye! <h1>");
        }
    }
}
