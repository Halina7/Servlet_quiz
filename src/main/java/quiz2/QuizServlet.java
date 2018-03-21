package quiz2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static quiz2.InitializingServlet.ANSWER;
import static quiz2.InitializingServlet.QUESTION;
import static quiz2.InitializingServlet.QUESTION_NO;

@WebServlet(name = "QuizServlet", value = "/newQuizPage")
public class QuizServlet extends HttpServlet {

    public static final String ERROR = "error";

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        String answer = req.getParameter(ANSWER);
        int questionNo = (int) session.getAttribute(QUESTION_NO);

        if (answer != null) {

            boolean isCorrect = QuestionService.isAnswerCorrect(questionNo, answer);
            if (isCorrect) {
                increaseScore(session);
            }
            if (questionNo > 3) {
                req.getRequestDispatcher("result.jsp").forward(req, resp);
            }
            questionNo++;
            session.setAttribute(QUESTION_NO, questionNo);
            Question question = QuestionService.getQuestion(questionNo);
            req.setAttribute(QUESTION, question);
            req.getRequestDispatcher("question.jsp").forward(req, resp);

        } else {
            req.setAttribute(ERROR, "Please chose one answer !!!");
            Question question = QuestionService.getQuestion(questionNo);
            req.setAttribute(QUESTION,question);
            req.getRequestDispatcher("question.jsp").forward(req, resp);
        }
    }

    private void increaseScore(HttpSession session) {

        int currentScore = (int) session.getAttribute("score");
        session.setAttribute("score",currentScore + 1);
    }
}
