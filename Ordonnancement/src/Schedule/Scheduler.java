package Schedule;

import java.util.ArrayList;
import java.util.List;

import Model.Job;
import Model.Machine;

public class Scheduler {

	public Scheduler() {
		super();
	}

	public static void earliestStartTime(Job job, Machine machine){
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
			
			//mise a jour les ressources restant sur cette machine
			if(depart == true){
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
				break;
			}
			else
				continue;
		}
		
//		for(int i = 0; i < nbTypeRessource; i++){
//			for(int j = 0; j < machine.getRessourceRestant().get(i).size(); j++){
//				System.out.print(machine.getRessourceRestant().get(i).get(j) + " ");
//			}
//			System.out.println();
//		}
	}
	
	
	public static int calculeCmax(List<Job> listJob, List<Machine> listMachine){
		int Cmax = 0;
		Machine machine = listMachine.get(0);
		
		for(Job j : listJob){
			Scheduler.earliestStartTime(j, machine);
		}
		
		for(Job j : listJob){
			if(j.getFin() > Cmax)
				Cmax = j.getFin();
		}
		
		machine.viderRessourceRestant();
		
		return Cmax;
	}
	

}