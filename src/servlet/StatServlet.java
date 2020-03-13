package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import infectEmpl.InfectMap;

/**
 * Servlet implementation class StatServlet
 */
@WebServlet("/statServlet")
public class StatServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StatServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			
		
		String flag = request.getParameter("flag");
		String selected = request.getParameter("selected");
		String province = request.getParameter("province");
		String abpath = getServletContext().getRealPath("/log/");		
		if(selected == null)
		{
			InfectMap infect = new InfectMap();	
			infect.path = abpath;
			selected = infect.latestDate();
		}
		else
		{
			InfectMap infect = new InfectMap();	
			infect.path = abpath;
			selected = infect.judgeDate(selected);
		}
		request.setAttribute("date", selected);
		if(flag != null && flag.equals("mapStat"))
		{		
			InfectMap infect = new InfectMap();	
			infect.path = abpath;
			ArrayList<String> increase = infect.compare("全国", selected);
			request.setAttribute("increase", increase);
			Map<String, String> stat = infect.allStatistic(selected);
			request.setAttribute("stat", stat);
			request.getRequestDispatcher("中国地图.jsp").forward(request, response);
		}		
						
		else if(flag != null && flag.equals("increase"))
		{
			InfectMap infect = new InfectMap();	
			infect.path = abpath;
			Map<String, String> stat = infect.allStatistic(selected);
			request.setAttribute("stat", stat);
			ArrayList<String> increase = infect.compare(province, selected);
			request.setAttribute("increase", increase);
			request.setAttribute("province", province);
			ArrayList<String> allDate = infect.getDate();
			request.setAttribute("allDate", allDate);
			ArrayList<ArrayList<String>> allIncrease = new ArrayList<ArrayList<String>>();
			for(int i = 0 ; i < allDate.size() ; i++)
			{
				ArrayList<String> dateIncrease = infect.compare(province, allDate.get(i));
				allIncrease.add(dateIncrease);
			}
			request.setAttribute("allIncrease", allIncrease);
			request.getRequestDispatcher("湖北详情页.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
