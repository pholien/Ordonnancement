package Schedule_multiMachine;

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
import Schedule.AlgoHeuristique;


public class Simuler_MultiMachine {

	@SuppressWarnings("unchecked")
	public static void main(String[] args) throws IOException  {
		int CmaxMoyen[][] = new int[20][3];
		int CmaxMoyen2[][] = new int[20][3];
		
		BufferedReader bf = new BufferedReader(new InputStreamReader(new FileInputStream("parametre.txt"), "GBK"));
		String[] nbTypeR = bf.readLine().split(" ");
		int nbTypeRessource = Integer.parseInt(nbTypeR[1]);
		String[] nbJ = bf.readLine().split(" ");
		int nbJob = Integer.parseInt(nbJ[1]);
		for(int i = 0; i < nbTypeRessource + 1; i++)
			bf.readLine();
		String[] nbM = bf.readLine().split(" ");
		int nbMachine = Integer.parseInt(nbM[1]);
		bf.close();
		
		String fileOutput = "./plne/source/algo_resultat/methodeVoisinage/MultiMachine_AlgoHeuristique_" + Integer.toString(nbJob) + "job" + Integer.toString(nbMachine) + "machine.txt";
		File AlgoHeuristique_ = new File(fileOutput); 
		AlgoHeuristique_.createNewFile();  
		BufferedWriter out = new BufferedWriter(new FileWriter(AlgoHeuristique_, true)); 
		
		for(int i = 0; i < 20; i++){
			String filename = "./plne/data/" + Integer.toString(nbJob) + "job" + Integer.toString(nbMachine) + "machine_" + Integer.toString(i+1) + ".txt";
			@SuppressWarnings("rawtypes")
			List<List> listArche = Instance_MultiMachine.genererInstance(filename);
			List<Job> listJob = listArche.get(0);
			List<Machine> listMachine = listArche.get(1);
			
			/************************************************************SPT**********************************************************/
			List<Job> listSPT = new ArrayList<Job>();
			listSPT.addAll(AlgoHeuristique.spt(listJob));
			Scheduler_MultiMachine.distribuerJobs(listSPT, listMachine);
			CmaxMoyen[i][0] = Scheduler_MultiMachine.calculeCmax_MultiMachine(listMachine);
			
			out.write("SPT Cmax: " + CmaxMoyen[i][0] + "\r\n");
            for(Job j : listSPT){
            	int id = j.getId() + 1;
            	int m = j.getMachine() + 1;
            	out.write("Job" + id + " Machine " + m + " Duree " + j.getDuree() + " Debut " + j.getDebut() + " Fin " + j.getFin() + "\r\n");
            }
            out.write("\r\n");
            
            Affectation affectationSPT = Scheduler_MultiMachine.methodeVoisinage(listSPT, listMachine);
            CmaxMoyen2[i][0] = affectationSPT.getCmax();
            out.write("SPT Cmax methodeVoisinage : " + affectationSPT.getCmax() + "\r\n");
            for(Job j : affectationSPT.getListJob()){
            	int id = j.getId() + 1;
            	int m = j.getMachine() + 1;
            	out.write("Job" + id + " Machine " + m + " Duree " + j.getDuree() + " Debut " + j.getDebut() + " Fin " + j.getFin() + "\r\n");
            }
            out.write("\r\n");
            
            Scheduler_MultiMachine.MachinesInitial(listMachine);
            
            /************************************************************LPT**********************************************************/
            
            List<Job> listLPT = new ArrayList<Job>();
			listLPT.addAll(AlgoHeuristique.lpt(listJob));
			Scheduler_MultiMachine.distribuerJobs(listLPT, listMachine);
			CmaxMoyen[i][1] = Scheduler_MultiMachine.calculeCmax_MultiMachine(listMachine);
			
            out.write("LPT Cmax: " + CmaxMoyen[i][1] + "\r\n");
            for(Job j : listLPT){
            	int id = j.getId() + 1;
            	int m = j.getMachine() + 1;
            	out.write("Job" + id + " Machine " + m + " Duree " + j.getDuree() + " Debut " + j.getDebut() + " Fin " + j.getFin() + "\r\n");
            }
            out.write("\r\n");
            
            Affectation affectationLPT = Scheduler_MultiMachine.methodeVoisinage(listLPT, listMachine);
            CmaxMoyen2[i][1] = affectationLPT.getCmax();
            out.write("LPT Cmax methodeVoisinage : " + affectationLPT.getCmax() + "\r\n");
            for(Job j : affectationLPT.getListJob()){
            	int id = j.getId() + 1;
            	int m = j.getMachine() + 1;
            	out.write("Job" + id + " Machine " + m + " Duree " + j.getDuree() + " Debut " + j.getDebut() + " Fin " + j.getFin() + "\r\n");
            }
            out.write("\r\n");
            
            Scheduler_MultiMachine.MachinesInitial(listMachine);
            
            /************************************************************GRWC**********************************************************/
            
            List<Job> listGRWC = new ArrayList<Job>();
            listGRWC.addAll(AlgoHeuristique.grwc(listArche));
			Scheduler_MultiMachine.distribuerJobs(listGRWC, listMachine);
			CmaxMoyen[i][2] = Scheduler_MultiMachine.calculeCmax_MultiMachine(listMachine);
            
            out.write("GRWC Cmax: " + CmaxMoyen[i][2] + "\r\n");
            for(Job j : listGRWC){
            	int id = j.getId() + 1;
            	int m = j.getMachine() + 1;
            	out.write("Job" + id + " Machine " + m + " Duree " + j.getDuree() + " Debut " + j.getDebut() + " Fin " + j.getFin() + "\r\n");
            }
            out.write("\r\n");
            
            Affectation affectationGRWC = Scheduler_MultiMachine.methodeVoisinage(listGRWC, listMachine);
            CmaxMoyen2[i][2] = affectationGRWC.getCmax();
            out.write("GRWC Cmax methodeVoisinage : " + affectationGRWC.getCmax() + "\r\n");
            for(Job j : affectationGRWC.getListJob()){
            	int id = j.getId() + 1;
            	int m = j.getMachine() + 1;
            	out.write("Job" + id + " Machine " + m + " Duree " + j.getDuree() + " Debut " + j.getDebut() + " Fin " + j.getFin() + "\r\n");
            }
            out.write("\r\n");
            
            Scheduler_MultiMachine.MachinesInitial(listMachine);
            
            out.write("--------------------------------------------------------------------------------------------------\r\n");
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
		
		System.out.println("***************************************************");
		System.out.println("SPT Cmax Average : " + (double)CmaxSPT/20.0);
		System.out.println("LPT Cmax Average : " + (double)CmaxLPT/20.0);
		System.out.println("GRWC Cmax Average: " + (double)CmaxGRWC/20.0);
		System.out.println("***************************************************");
		
		int CmaxSPT2 = 0; 
		int CmaxLPT2 = 0; 
		int CmaxGRWC2 = 0; 
		for(int i = 0; i < 20; i++){
			CmaxSPT2 += CmaxMoyen2[i][0]; 
			CmaxLPT2 += CmaxMoyen2[i][1]; 
			CmaxGRWC2 += CmaxMoyen2[i][2]; 
		}
		
		System.out.println("***************************************************");
		System.out.println("SPT Cmax methodeVoisinage Average : " + (double)CmaxSPT2/20.0);
		System.out.println("LPT Cmax methodeVoisinage Average : " + (double)CmaxLPT2/20.0);
		System.out.println("GRWC Cmax methodeVoisinage Average: " + (double)CmaxGRWC2/20.0);
		System.out.println("***************************************************");
		
	}

}
