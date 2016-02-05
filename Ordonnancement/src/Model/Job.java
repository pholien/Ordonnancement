package Model;

import java.util.ArrayList;
import java.util.List;

public class Job {

	private int id;
	private int duree;
	private int machine;
	private int debut;
	private int fin;
	private List<Integer> besoinRessources;
	
	public Job(int id, int duree) {
		this.id = id;
		this.duree = duree;
		besoinRessources = new ArrayList<Integer>();
	}
	public Job(Job job){
		
		this.id=job.getId();
		this.duree=job.getDuree();
		this.machine=job.getMachine();
		this.debut=job.getDebut();
		this.fin=job.fin;
		besoinRessources = new ArrayList<Integer>();
		this.besoinRessources.addAll(job.getRessources());
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getDuree() {
		return duree;
	}

	public void setDuree(int duree) {
		this.duree = duree;
	}
	
	public List<Integer> getRessources() {
		return besoinRessources;
	}

	public void addRessources(int i) {
		this.besoinRessources.add(i);
	}

	public int getDebut() {
		return this.debut;
	}

	public void setDebut(int Debut) {
		this.debut = Debut;
	}
	
	public int getMachine() {
		return machine;
	}

	public void setMachine(int machine) {
		this.machine = machine;
	}


	public int getFin() {
		return fin;
	}

	public void setFin(int fin) {
		this.fin = fin;
	}
	

}