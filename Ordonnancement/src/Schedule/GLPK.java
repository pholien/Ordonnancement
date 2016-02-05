package Schedule;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;

public class GLPK {

	public static void glpk(){
		try  
        {  
			String path = "plne/data";
			File file = new File(path);
			File[] tempList = file.listFiles();
			System.out.println("Nombre de fichier" + tempList.length);
			for (int i = 0; i < tempList.length; i++) {
				StringBuffer data = new StringBuffer(tempList[i].toString().substring(10, tempList[i].toString().length()));
				StringBuffer result = new StringBuffer(tempList[i].toString().substring(10, tempList[i].toString().length()));
				int l = result.length();
				result.replace(l-3, l, "sol");
				
				String cmd = "glpsol -m plne/glpsolRcpsp.mod -d plne/data/" + data.toString() + " -o plne/result/" + result.toString();
				System.out.println(cmd);
				
				Process process = Runtime.getRuntime().exec(cmd);  
	            StringBuffer resStr = new StringBuffer();  
	            InputStream in = process.getInputStream();  
	            Reader reader = new InputStreamReader(in);  
	            BufferedReader bReader = new BufferedReader(reader);  
	            for (String res = ""; (res = bReader.readLine()) != null;)  
	            {  
	                resStr.append(res + "\n");  
	            }  
	            bReader.close();  
	            reader.close();  
	            System.out.println(resStr.toString());
			}
            
        } catch (IOException e)  
        {  
            e.printStackTrace();  
        }  
	}
	
	public static void readFileSol(){
		try {
			String path = "plne/result";
			File file = new File(path);
			File[] tempList = file.listFiles();
			System.out.println("Nombre de fichier" + tempList.length);
			
			int sum = 0;
			for (int i = 0; i < tempList.length; i++) {
				
				@SuppressWarnings("resource")
				BufferedReader bf = new BufferedReader(new InputStreamReader(new FileInputStream(tempList[i].toString()), "GBK"));
				for(int l = 0; l < 5; l++){
					bf.readLine();
				}
				String[] line = bf.readLine().split(" ");
				int Cmax = Integer.parseInt(line[4]);
				sum += Cmax;
				System.out.println(Cmax);
			}
			System.out.println((double)sum/(double)tempList.length);
		} catch (IOException e) {
			e.printStackTrace();
		} 
	}
	
	public static void moveFile() {
		try  
        {  
			String path = "plne/data";
			File file = new File(path);
			File[] tempList = file.listFiles();
			System.out.println("Nombre de fichier" + tempList.length);
			for (int i = 0; i < tempList.length; i++) {
				String data = new String(tempList[i].toString().substring(10, tempList[i].toString().length()));
				String cmd = "move plne/data/" + data + " plne/source/petit_instance/" + data;
				System.out.println(cmd);
				
				Process process = Runtime.getRuntime().exec(cmd);  
	            StringBuffer resStr = new StringBuffer();  
	            InputStream in = process.getInputStream();  
	            Reader reader = new InputStreamReader(in);  
	            BufferedReader bReader = new BufferedReader(reader);  
	            for (String res = ""; (res = bReader.readLine()) != null;)  
	            {  
	                resStr.append(res + "\n");  
	            }  
	            bReader.close();  
	            reader.close();  
	            System.out.println(resStr.toString());
			}
			
			String path2 = "plne/result";
			File file2 = new File(path2);
			File[] tempList2 = file2.listFiles();
			System.out.println("Nombre de fichier" + tempList.length);
			for (int i = 0; i < tempList2.length; i++) {
				String data = new String(tempList2[i].toString().substring(10, tempList2[i].toString().length()));
				String cmd = "move plne/result/" + data + " plne/source/glpk_resultat/" + data;
				System.out.println(cmd);
				
				Process process = Runtime.getRuntime().exec(cmd);  
	            StringBuffer resStr = new StringBuffer();  
	            InputStream in = process.getInputStream();  
	            Reader reader = new InputStreamReader(in);  
	            BufferedReader bReader = new BufferedReader(reader);  
	            for (String res = ""; (res = bReader.readLine()) != null;)  
	            {  
	                resStr.append(res + "\n");  
	            }  
	            bReader.close();  
	            reader.close();  
	            System.out.println(resStr.toString());
			}
            
        } catch (IOException e)  
        {  
            e.printStackTrace();  
        }  
	}
}
