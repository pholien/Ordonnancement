package Schedule_multiMachine;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import Model.Job;
import Model.Machine;
import Schedule.AlgoHeuristique;

public class test {

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static void main(String[] args) throws IOException {
		
		int CmaxSPT = 0;
		
		String fileResultat = "Zresultat.txt";
		File AlgoHeuristique_ = new File(fileResultat); 
		AlgoHeuristique_.createNewFile();  
		BufferedWriter out = new BufferedWriter(new FileWriter(AlgoHeuristique_, true)); 
		String fileInstance = "Zinstance.txt";
		
		List<List> listArche = Instance_MultiMachine.genererInstance(fileInstance);
		List<Job> listJob = listArche.get(0);
		List<Machine> listMachine = listArche.get(1);
		
		List<Job> listSPT = new ArrayList<Job>();
		listSPT.addAll(AlgoHeuristique.spt(listJob));
		
		Scheduler_MultiMachine.distribuerJobs(listSPT, listMachine);
		CmaxSPT = Scheduler_MultiMachine.calculeCmax_MultiMachine(listMachine);
		out.write("SPT Cmax: " + CmaxSPT + "\r\n");
        for(Job j : listSPT){
        	int id = j.getId() + 1;
        	int m = j.getMachine() + 1;
        	out.write("Job" + id + " Machine " + m + " Duree " + j.getDuree() + " Debut " + j.getDebut() + " Fin " + j.getFin() + "\r\n");
        }
        out.write("\r\n");
        
        
        Affectation affectationSPT = Scheduler_MultiMachine.methodeVoisinage(listSPT, listMachine);
        out.write("SPT Cmax methodeVoisinage : " + affectationSPT.getCmax() + "\r\n");
        for(Job j : affectationSPT.getListJob()){
        	int id = j.getId() + 1;
        	int m = j.getMachine() + 1;
        	out.write("Job" + id + " Machine " + m + " Duree " + j.getDuree() + " Debut " + j.getDebut() + " Fin " + j.getFin() + "\r\n");
        }
        out.write("\r\n");
        
        Scheduler_MultiMachine.MachinesInitial(listMachine);
        
        out.flush();   
        out.close();
	}

}
