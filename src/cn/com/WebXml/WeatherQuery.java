package cn.com.WebXml;

import java.rmi.RemoteException;
import java.util.ArrayList;
import java.util.List;

public class WeatherQuery {

	public static List<String> query(String city) {
		List<String> list = new ArrayList();
		try {
			String str[] = new WeatherWebServiceSoapProxy().getWeatherbyCityName(city);
			for(String s: str){
				System.out.println(s+" =");
				list.add(s);
			}
		} catch (RemoteException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	public static void main(String[] args) {
		System.out.println(WeatherQuery.query("上海"));
	}
}
