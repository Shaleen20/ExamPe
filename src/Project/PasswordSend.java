package Project;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

public class PasswordSend {

	
	public static String  sendPassword(String number,String msg) {
		try {
			
			String num1="Your Password is : "+msg;
			
			// Construct data
			String apiKey = "apikey=" + "kKnLOUMsWhw-UllRPE9VTLuOifOo9li6cQj5okqhhr";
			String message = "&message=" +URLEncoder.encode(num1,"UTF-8");
			String sender = "&sender=" + "TXTLCL";
			String numbers = "&numbers=" + "91"+number;
			
			String apiURL="https://api.textlocal.in/send/?"+apiKey+message+numbers;
			URL url=new URL(apiURL);
			URLConnection connection=url.openConnection();
			connection.setDoOutput(true);
			
			BufferedReader reader=new BufferedReader(new InputStreamReader(connection.getInputStream()));
			String line="";
			StringBuilder sb=new StringBuilder();
			
			while((line=reader.readLine())!=null){
				sb.append(line).append("\n");
			}
			
			System.out.println(sb.toString());
				
			return num1;
			
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
			
		}
	}
}
