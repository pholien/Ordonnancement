package Schedule;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import Model.Job;
import Model.Machine;

public class Instance {

	@SuppressWarnings("rawtypes")
	public static List<List> genererInstance(String filename) {
		List<List> listArche = new ArrayList<List>();
		List<Job> listJob = new ArrayList<Job>();
		List<Machine> listMachine = new ArrayList<Machine>();
		
		int k;
		int nbJob;
		int dureeMin, dureeMax;
		int besoinRessource[][];
		int nbMachine;
		int capaciteRessource[][];
		Random r = new Random();

		try {
			@SuppressWarnings("resource")
			BufferedReader bf = new BufferedReader(new InputStreamReader(new FileInputStream("parametre.txt"), "GBK"));
			
			String[] nbTypeR = bf.readLine().split(" ");
			k = Integer.parseInt(nbTypeR[1]);
			String[] nbJ = bf.readLine().split(" ");
			nbJob = Integer.parseInt(nbJ[1]);
			
			String[] d = bf.readLine().split(" ");
			dureeMin = Integer.parseInt(d[1]);
			dureeMax = Integer.parseInt(d[2]);
			
			besoinRessource = new int[k][2];
			for (int i = 0; i < k; i++) {
				String[] ressources = bf.readLine().split(" ");
				besoinRessource[i][0] = Integer.parseInt(ressources[1]);
				besoinRessource[i][1] = Integer.parseInt(ressources[2]);
			}

			String[] nbM = bf.readLine().split(" ");
			nbMachine = Integer.parseInt(nbM[1]);
			capaciteRessource = new int[k][2];
			for (int i = 0; i < k; i++) {
				String[] ressources = bf.readLine().split(" ");
				capaciteRessource[i][0] = Integer.parseInt(ressources[1]);
				capaciteRessource[i][1] = Integer.parseInt(ressources[2]);
			}
			
			for(int i = 0; i < nbJob; i++){
				int dureeRandom = r.nextInt(dureeMax - dureeMin + 1) + dureeMin;
				Job job = new Job(i, dureeRandom);
				for(int j = 0; j < k; j++){
					job.addRessources(r.nextInt(besoinRessource[j][1] - besoinRessource[j][0] + 1) + besoinRessource[j][0]);
				}
				listJob.add(job);
			}
			
			for(int i = 0; i < nbMachine; i++){
				Machine machine = new Machine(i);
				for(int j = 0; j < k; j++){
					machine.addRessources(r.nextInt(capaciteRessource[j][1] - capaciteRessource[j][0] + 1) + capaciteRessource[j][0]);
				}
				listMachine.add(machine);
			}
			
			listArche.add(listJob);
			listArche.add(listMachine);
			
			File writename = new File(filename); 
            writename.createNewFile();  
            BufferedWriter out = new BufferedWriter(new FileWriter(writename, true));  
            
            out.write("data;\r\n");
            out.write("param nombreJob := " + nbJob + ";\r\n");
            out.write("param nombreRessource := " + k + ";\r\n");
            
            out.write("param duree :=");
            for(int i = 0; i < nbJob; i++){
            	out.write(" " + (i+1) + " " + listJob.get(i).getDuree()); 
            }
            out.write(";\r\n");
            
            out.write("param capaciteRessource :=");
            for(int i = 0; i < k; i++){
            	out.write(" " + (i+1) + " " + listMachine.get(0).getRessources().get(i)); 
            }
            out.write(";\r\n");
            
            out.write("param besoinRessource :");
            for(int i = 0; i < k; i++){
            	out.write(" " + (i+1)); 
            }
            out.write(" :=\r\n");
            
            for(int i = 0; i < nbJob; i++){
            	out.write("    " + "    " + "    " + "    " + "    ");
            	String idJob = Integer.toString(i+1);
            	out.write(idJob);
            	out.write("  ");
            	for(int j = 0; j < k; j++){
                	out.write(" " + listJob.get(i).getRessources().get(j)); 
                }
            	if(i == nbJob - 1)
            		out.write(";");
            	out.write("\r\n");
            }
            
            out.write("end;");
            out.write("\r\n");
            out.write("\r\n");
            out.flush();   
            out.close();   
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listArche;
	}
}
