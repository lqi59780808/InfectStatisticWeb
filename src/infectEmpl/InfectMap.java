package infectEmpl;
import java.util.*;
import java.io.*;
import java.text.Collator;

public class InfectMap extends InfectStatistic {
	
	public static File filename;
	public static String path; 
	
	public static String judgeDate(String date)
	/*
	 * 判断日期是否超出或早于统计日期
	 */
	{
		reading();
		if(date != null && fileArray[fileArray.length - 1] .getName().compareTo(date + ".log.txt") < 0) //如果超出比较范围
		{
			date = latestDate();
			return date;
		}
		
		else if(date != null && fileArray[0] .getName().compareTo(date + ".log.txt") > 0) //如果比最早一天还早的日期，直接结束调用，并进入输出方法即可
		{
			return date;
		}
		else
		for (int i = 0 ;i < fileArray.length - 1 ;i++) //检查用户指定日期是否在两个日志文件之间 比如 日志文件只有2020-01-22，2020-01-24，用户却指定2020-01-22
		{
			if(fileArray[i] .getName().compareTo(date + ".log.txt") < 0 && fileArray[i + 1] .getName().compareTo(dateTime + ".log.txt") > 0)
				date = fileArray[i] .getName().substring(0 , 10);
			return date;
		}
		return date;
	}

	
	public static ArrayList<String> getDate()
	/*
	 * 获取最新的七天日期
	 */
	{
		reading();
		ArrayList<String> array = new ArrayList<String> ();	
		for(int i = fileArray.length - 7 ; i < fileArray.length; i++)
		{
			if(i<0) continue;
			else array.add(fileArray[i].getName().substring(0,10));
		}
		return array;
	}
	
	public static String latestDate()
	/*
	 * 获取最新统计的日期
	 */
	{
		reading();
		return fileArray[fileArray.length - 1].getName().substring(0,10);
	}
	
	public static void reading()
	/*
	 * 读取并统计文件
	 */
	{
		InfectMap a = new InfectMap();
		String shuru = path;
		String shuchu = "D:/output.txt";
		String[] str = {"list","-log", shuru , "-out", shuchu};
		readList(str);
		readDirect();
	}
	
	public static Map<String, String> allStatistic (String date)
	/*
	 * 统计出所有省份的数据
	 */
	{
		dateTime = date;
		reading();
		String allProvin[] = {"北京","天津","河北","辽宁","吉林","黑龙江","山东","江苏","上海","浙江","安徽","福建",
						"江西","广东","广西","海南","河南","湖南","湖北","山西","内蒙古","宁夏","青海","陕西","甘肃",
						"新疆","四川","贵州","云南","重庆","西藏","香港","澳门","台湾"};
		for(int i = 0 ; i < allProvin.length ; i++)
		{
			if(!statistic.containsKey(allProvin[i] + "疑似患者"))  //检查哈希表中是否已经存在该省份的数据了
			{
				initStatistic(allProvin[i]);
			}
		}
		sortMap = sortHashkey();
		countryStatic();
		Map<String, String> sta = statistic;
		return sta;
		
	}
	
	public static ArrayList<String> compare(String province,String date) throws FileNotFoundException
	/*
	 * 统计每个省份某个日期的变化趋势
	 */
	{
		judgeDate= false;
		dateTime = date;
		reading();
		ArrayList<String> array = new ArrayList<String> ();
		for(int i = 0 ; i < 4 ; i ++)
		{
			array.add("0");
		}
		if(judgeDate) //true说明比统计文件的最早日期还早
			return array;
		
		if(date == null)
			filename = fileArray[fileArray.length - 1];
		else
		for(int i = 0 ; i < fileArray.length ; i++)
		{
			if(fileArray[i] .getName().equals(date + ".log.txt" ))
			{
				filename = fileArray[i];
				break;
			}				
		}
		
		Scanner sc  = new Scanner(filename,"UTF-8");
		fileContent = new ArrayList<String>();
		while(sc.hasNext())
		{
			String str = sc.next();
			if (str.equals("//"))
				break;
			
			else fileContent.add(str);
		}					      
		sc.close();
		
		for(int i = 0; i < fileContent.size() - 2; i++)
		{
			if(fileContent.get(i + 1).equals("新增") &&  fileContent.get(i).equals(province))  //判别新增
			{
				String str = fileContent.get(i + 3);
				str = str.substring(0 , str.length() - 1); //截取人数
				if(fileContent.get(i + 2).equals("感染患者"))
				{
					int num = Integer.parseInt(array.get(0)) + Integer.parseInt(str);
					array.set(0, String.valueOf(num));
				}
				
				else if(fileContent.get(i + 2).equals("疑似患者"))
				{
					array.set(1, str);
				}
			}
			
			else if(fileContent.get(i + 2).equals("确诊感染") &&  fileContent.get(i).equals(province)) //判别为确诊感染或排除的情况
			{
				String str = fileContent.get(i + 3);
				str = str.substring(0 , str.length() - 1); //截取人数
				int num = Integer.parseInt(array.get(0)) + Integer.parseInt(str);
				array.set(0, String.valueOf(num));
			}
			
			
			else if(fileContent.get(i + 1).equals("死亡")) //判别为死亡的情况
			{
				if(fileContent.get(i).equals(province))
				{
					String str = fileContent.get(i + 2);
					str = str.substring(0 , str.length() - 1); //截取人数
					array.set(3, str);
				}
			}
			
			else if(fileContent.get(i + 1).equals("治愈")) //判别为治愈的情况
			{
				if(fileContent.get(i).equals(province))
				{
					String str = fileContent.get(i + 2);
					str = str.substring(0 , str.length() - 1); //截取人数
					array.set(2, str);
				}
			}
		}
		
		return array;
	}
	
	public static void main(String args[]) throws FileNotFoundException
	{
		return;
	}
}
