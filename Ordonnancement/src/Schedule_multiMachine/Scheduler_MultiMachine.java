package Schedule_multiMachine;

import java.util.ArrayList;
import java.util.List;

import Model.Job;
import Model.Machine;
import Schedule.Scheduler;

public class Scheduler_MultiMachine {

	public static int earliestStartTime(Job job, Machine machine){
		int tempsDepart = 0;
		int nbTypeRessource = machine.getRessources().size();
		int ressourceTaille[] = new int[nbTypeRessource];
		int latestStartTime = 0;
		
		for(int i = 0; i < nbTypeRessource; i++){
			if(machine.getRessourceRestant().isEmpty())
				ressourceTaille[i] = 0;
			else
				ressourceTaille[i] = machine.getRessourceRestant().get(i).size();
			
			if(ressourceTaille[i] > latestStartTime)
				latestStartTime = ressourceTaille[i]; 
		}
		
		boolean depart;
		for(int start = 0; start <= latestStartTime; start++){
			depart = true;
			
			//chercher le temps depart le plus tot
			for(int r = 0; r < nbTypeRessource; r++){
				for(int duree = start; duree < start + job.getDuree(); duree++){
					int dispo;
					if(machine.getRessourceRestant().isEmpty())
						dispo = machine.getRessources().get(r);
					else{
						if(duree < machine.getRessourceRestant().get(r).size())
							dispo = machine.getRessources().get(r) - machine.getRessourceRestant().get(r).get(duree);
						else
							dispo = machine.getRessources().get(r);
					}
					
					if(dispo >= job.getRessources().get(r))
						continue;
					else{
						depart = false;
						break;
					}
				}
				if(depart == true)
					continue;
				else
					break;
			}
			
			if(depart == true){
				tempsDepart = start;
				break;
			}
			else
				continue;
		}
		
		return tempsDepart;
	}
	
	public static void updateRessource(Job job, Machine machine, int start){
		int nbTypeRessource = machine.getRessources().size();
		
		job.setDebut(start);
		job.setFin(job.getDebut() + job.getDuree() - 1);
		
		if(machine.getRessourceRestant().isEmpty()){
			for(int r = 0; r < nbTypeRessource; r++){
				List<Integer> ressource = new ArrayList<Integer>(); 
				for(int duree = 0; duree < job.getDuree(); duree++){
					ressource.add(job.getRessources().get(r));
				}
				machine.getRessourceRestant().add(ressource);
			}
		}
		else{
			for(int r = 0; r < nbTypeRessource; r++){
				for(int p = start; p < start + job.getDuree(); p++){
					if(p < machine.getRessourceRestant().get(r).size()){
						int temp = machine.getRessourceRestant().get(r).get(p);
						machine.getRessourceRestant().get(r).set(p, job.getRessources().get(r) + temp);
					}
					else
						machine.getRessourceRestant().get(r).add(job.getRessources().get(r));
				}
			}
		}
	}
	
	public static void distribuerJobs(List<Job> listJob, List<Machine> listMachine){
		int depart;
		int idMachine = 0;
		
		for(Machine machine : listMachine)
			machine.viderList_Job();
		
		for(Job job : listJob){
			depart = earliestStartTime(job, listMachine.get(0));
			for(Machine machine : listMachine){
				if(earliestStartTime(job, machine) <= depart){
					idMachine = machine.getId();
					depart = earliestStartTime(job, machine);
				}
			}
			for(Machine machine : listMachine){
				if(machine.getId() == idMachine){
					updateRessource(job, machine, depart);
					machine.add_Job(job);
					job.setMachine(idMachine);
				}
			}
		}
	}
	
	public static int calculeCmax_MultiMachine(List<Machine> listMachine){
		int CmaxTotal = 0;
		int nbMachine = listMachine.size();
		int cmax[] = new int[nbMachine];
		
		for(int i = 0; i < nbMachine; i++){
			cmax[i] = 0;
			for(Job job : listMachine.get(i).getList_Job()){
				if(job.getFin() > cmax[i])
					cmax[i] = job.getFin();
			}
			listMachine.get(i).setCmax(cmax[i]);
		}
		for(int i = 0; i < nbMachine; i++){
			if(cmax[i] > CmaxTotal)
				CmaxTotal = cmax[i];
		}
		
		for(Machine machine : listMachine)
			machine.viderRessourceRestant();
		
		return CmaxTotal;
	}
	
/**************************************************methodeVoisinage******************************************************/
	
	public static int ordonnance_UneMachine(Machine machine){
		int Cmax = 0;
		machine.viderRessourceRestant();
		
		for(int i = 0; i < machine.getList_Job().size(); i++){
			Scheduler.earliestStartTime(machine.getList_Job().get(i), machine);
		}
		
		for(Job j : machine.getList_Job()){
			if(j.getFin() > Cmax)
				Cmax = j.getFin();
		}
		machine.setCmax(Cmax);
		machine.viderRessourceRestant();
		
		return Cmax;
	}
	
	public static void swap(Job j1, Job j2, List<Machine> listMachine){
		for(int i = 0; i < listMachine.size(); i++){
			if(listMachine.get(i).getId() == j1.getMachine()){
				
				listMachine.get(i).getList_Job().remove(j1);
				//System.out.println(listMachine.get(i).getList_Job().size());
				listMachine.get(i).getList_Job().add(j2);
				listMachine.get(i).setCmax(ordonnance_UneMachine(listMachine.get(i)));
			}
			if(listMachine.get(i).getId() == j2.getMachine()){
				listMachine.get(i).getList_Job().remove(j2);
				listMachine.get(i).getList_Job().add(j1);
				listMachine.get(i).setCmax(ordonnance_UneMachine(listMachine.get(i)));
			}
		}
		
		int temp = j1.getMachine();
		j1.setMachine(j2.getMachine());
		j2.setMachine(temp);
		
	}
	
	public static int calculeCmax(List<Machine> listMachine){
		int Cmax = 0;
		for(int i = 0; i < listMachine.size(); i++){
			if(listMachine.get(i).getCmax() >= Cmax){
				Cmax = listMachine.get(i).getCmax();
			}
		}
		return Cmax;
	}
	
	public static Affectation methodeVoisinage(List<Job> listJob, List<Machine> listMachine){
		Affectation affectation = new Affectation();
		affectation.setListJob(listJob);
		affectation.setCmax(calculeCmax(listMachine));
		int l = listJob.size();

		for(int i = 0; i < l; i++){
			for(int j = i+1; j < l; j++){
				if(listJob.get(i).getMachine() != listJob.get(j).getMachine()){
					List<Job> templistJob =  new ArrayList<Job>();
					for(int k=0;k<l;k++){
						templistJob.add(listJob.get(k));
					}
					List<Machine> templistMachine =  new ArrayList<Machine>();
					for(int k=0;k<listMachine.size();k++){
						templistMachine.add(listMachine.get(k));

					}
					
					swap(templistJob.get(i), templistJob.get(j), templistMachine);
					int newCmax = calculeCmax(templistMachine);
//					System.out.println("new cmax:" + newCmax);
//					for(Job job : templistJob){
//						System.out.println("job" + (job.getId()+1) + " Machine " + (job.getMachine()+1) 
//								+ " Duree " + job.getDuree() + " Debut " + job.getDebut() + " Fin " + job.getFin());
//					}
					if(newCmax < affectation.getCmax()){
						affectation.setListJob(templistJob);
						affectation.setCmax(newCmax);
						
					}
				}
			}
		}
		
		return affectation;
	}
	
	public static void MachinesInitial(List<Machine> listMachine){
		for(int i = 0; i < listMachine.size(); i++){
			listMachine.get(i).viderList_Job();
		}
		
	}
}















