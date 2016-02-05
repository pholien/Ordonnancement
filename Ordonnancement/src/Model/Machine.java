package Model;

import java.util.ArrayList;
import java.util.List;

public class Machine {
	
	private int id;
	private List<Integer> capaciteRessources;
	private List<List<Integer>> ressourceRestant;
	
	private List<Job> List_Job;
	private int cmax;
	
	public Machine(int id) {
		super();
		this.setId(id);
		this.capaciteRessources = new ArrayList<Integer>();
		this.ressourceRestant = new ArrayList<List<Integer>>();
		this.List_Job = new ArrayList<Job>();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Integer> getRessources() {
		return capaciteRessources;
	}

	public void addRessources(int i) {
		this.capaciteRessources.add(i);
	}

	public List<List<Integer>> getRessourceRestant() {
		return ressourceRestant;
	}
	
	public void setRessourceRestant(int k, int r) {
		this.ressourceRestant.get(k).add(r);
	}

	public void viderRessourceRestant() {
		if(!this.ressourceRestant.isEmpty()){
			for(int i = 0; i < this.ressourceRestant.size(); i++){
				this.ressourceRestant.get(i).clear();
			}
			this.ressourceRestant.clear();
		}
	}

	public List<Job> getList_Job() {
		return List_Job;
	}

	public void setList_Job(List<Job> list_Job) {
		List_Job = list_Job;
	}
	
	public void add_Job(Job job) {
		this.List_Job.add(job);
	}
	
	public void viderList_Job() {
		this.List_Job.clear();
	}

	public int getCmax() {
		return cmax;
	}

	public void setCmax(int cmax) {
		this.cmax = cmax;
	}
	
}