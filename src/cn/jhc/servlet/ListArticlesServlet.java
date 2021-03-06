package cn.jhc.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.json.Json;
import javax.json.JsonArray;
import javax.json.JsonArrayBuilder;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.dbutils.QueryRunner;

import cn.jhc.Global;
import cn.jhc.bean.Article;
import cn.jhc.db.ArticleDao;

/**
 * Servlet implementation class ListArticlesServlet
 */
@WebServlet("/admin/list.do")
public class ListArticlesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * list.jsp闇�瑕佺煡閬撶殑鏁版嵁锛�
	 * total -- 鎬婚〉鏁�
	 * current -- 褰撳墠椤电爜
	 * articles -- 褰撳墠椤电殑鏂囩珷鍒楄〃
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type");
		if(type == null) {
			type = "html";
		}
		String pageParam = request.getParameter("page");
		int current = 0;
		if(pageParam != null) {
			try {
				current = Integer.valueOf(pageParam);
			} catch (NumberFormatException e) {
				e.printStackTrace();
			}
		}

		long total = 0L;
		QueryRunner runner = (QueryRunner) request.getServletContext().getAttribute(Global.KEY_RUNNER);
		List<Article> articles = null;
		try {
			articles = ArticleDao.list(runner, current);
			total = ArticleDao.total(runner);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(type.equals("html")) {
			//session + redirect
	//		request.getSession().setAttribute("articles", articles);
	//		response.sendRedirect("./list.jsp");
			//request + forward
			request.setAttribute("articles", articles);
			request.setAttribute("current", current);
			request.setAttribute("total", total/Global.PAGE_SIZE);
			request.getRequestDispatcher("./list.jsp").forward(request, response);
		} else if(type.equals("json")) {
			response.setContentType("application/json; charset=utf8");
			JsonArrayBuilder builder = Json.createArrayBuilder();
			for(Article article : articles) {
				builder.add(article.toJson());
			}
			PrintWriter out = response.getWriter();
			out.print(builder.build().toString());
		}
	}

}
