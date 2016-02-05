package Schedule;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import Model.Job;
import Model.Machine;

public class Simuler {

	@SuppressWarnings({ "resource", "unchecked" })
	public static void main(String[] args) throws IOException {
		int CmaxMoyen[][] = new int[20][3];
		
		BufferedReader bf = new BufferedReader(new InputStreamReader(new FileInputStream("parametre.txt"), "GBK"));
		bf.readLine();
		String[] nbJ = bf.readLine().split(" ");
		int nbJob = Integer.parseInt(nbJ[1]);
		
		String fileOutput = "./plne/source/algo_resultat/AlgoHeuristique_" + Integer.toString(nbJob) + "job.txt";
		File AlgoHeuristique_ = new File(fileOutput); 
		AlgoHeuristique_.createNewFile();  
		BufferedWriter out = new BufferedWriter(new FileWriter(AlgoHeuristique_, true)); 
		
		for(int i = 0; i < 20; i++){

			String filename = "./plne/data/" + Integer.toString(nbJob) + "job_" + Integer.toString(i+1) + ".dat";
			
			@SuppressWarnings("rawtypes")
			List<List> listArche = Instance.genererInstance(filename);
			List<Job> listJob = listArche.get(0);
			List<Machine> listMachine = listArche.get(1);
			
			List<Job> listSPT = new ArrayList<Job>();
			listSPT.addAll(AlgoHeuristique.spt(listJob));
			CmaxMoyen[i][0] = Scheduler.calculeCmax(listSPT, listMachine);
			out.write("SPT Cmax: " + CmaxMoyen[i][0] + "\r\n");
            for(Job j : listSPT){
            	int id = j.getId() + 1;
            	out.write("Job" + id + " Duree " + j.getDuree() + " Debut " + j.getDebut() + " Fin " + j.getFin() + "\r\n");
            }
            out.write("\r\n");
            
			List<Job> listLPT = new ArrayList<Job>();
			listLPT.addAll(AlgoHeuristique.lpt(listJob));
			CmaxMoyen[i][1] = Scheduler.calculeCmax(listLPT, listMachine);
            out.write("LPT Cmax: " + CmaxMoyen[i][1] + "\r\n");
            for(Job j : listLPT){
            	int id = j.getId() + 1;
            	out.write("Job" + id +  " Duree " + j.getDuree() + " Debut " + j.getDebut() + " Fin " + j.getFin() + "\r\n");
            }
            out.write("\r\n");			
			
			List<Job> listGRWC = new ArrayList<Job>();
			listGRWC.addAll(AlgoHeuristique.grwc(listArche));
			CmaxMoyen[i][2] = Scheduler.calculeCmax(listGRWC, listMachine);
            out.write("GRWC Cmax: " + CmaxMoyen[i][2] + "\r\n");
            for(Job j : listGRWC){
            	int id = j.getId() + 1;
            	out.write("Job" + id +  " Duree " + j.getDuree() + " Debut " + j.getDebut() + " Fin " + j.getFin() + "\r\n");
            }
            out.write("---------------------------------------------\r\n");
      
		}
		out.flush();   
        out.close(); 
        
		int CmaxSPT = 0; 
		int CmaxLPT = 0; 
		int CmaxGRWC = 0; 
		for(int i = 0; i < 20; i++){
			CmaxSPT += CmaxMoyen[i][0]; 
			CmaxLPT += CmaxMoyen[i][1]; 
			CmaxGRWC += CmaxMoyen[i][2]; 
		}
		
		System.out.println("**************************");
		System.out.println("SPT Cmax Average : " + (double)CmaxSPT/20.0);
		System.out.println("LPT Cmax Average : " + (double)CmaxLPT/20.0);
		System.out.println("GRWC Cmax Average: " + (double)CmaxGRWC/20.0);
		System.out.println("**************************");
		
//		GLPK.glpk();
//		GLPK.readFileSol();
	}

}
