package quiz2;

import java.util.ArrayList;
import java.util.List;

public class QuestionService {
    private static List<Question> questionList;

    static {
        questionList = new ArrayList<>();
        Question question1 = new Question("Która grupa krwi sprawia, że dana osoba jest uniwersalnym dawcą krwi, tzn. jego grupę krwi można przetoczyć każdemu?","0","A","B","AB", "A");
        Question question2 = new Question("Która rzeka świata jest najdłuższa:","Wołga", "Nil","Amazonka","Jangcy","C");
        Question question3 = new Question("Która planeta Układu Słonecznego jest najmniejsza?","Mars", "Neptun", "Merkury", "Wenus","C");
        Question question4 = new Question("Do jakiego lekarza pójdziesz z chorobami watroby?","hematologa", "nefrologa", "endokrynologa", "hepatologa", "D");
        Question question5 = new Question("Z jakim krajem Polska posiada najdłuższą granicę?", "ze Słowacją","z Czechami", "z Niemcami", "z Ukrainą", "B");

        questionList.add(question1);
        questionList.add(question2);
        questionList.add(question3);
        questionList.add(question4);
        questionList.add(question5);
    }

    public static Question getQuestion(int questionNumber) {
        return questionList.get(questionNumber);
    }

    public static boolean isAnswerCorrect(int questionNumber, String answer) {
        return (questionList.get(questionNumber).getCorrectAnswer().equals(answer));
    }
}
