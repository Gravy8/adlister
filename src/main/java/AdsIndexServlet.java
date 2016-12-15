import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AdsIndexServlet", urlPatterns = "/ads")
public class AdsIndexServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //get the list of ads from listAdsDao
        // make a variable that holds the result of calling all() method on ListAdsDao
        // snd that data into the view
        // set parameter on the response
        // in the view, iterate across the list and output the ads

        //ListAdsDao listAdsDao = new ListAdsDao();
        //List<Ad> ads = listAdsDao.all();

        //request.setAttribute("ads", ads);

        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        request.getRequestDispatcher("ads/index.jsp").forward(request, response);
    }
}
