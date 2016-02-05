package Schedule_multiMachine;

import java.util.ArrayList;
import java.util.List;

import Model.Job;

public class Affectation {

	private List<Job> listJob;
	private int cmax;
	
	public Affectation() {
		this.listJob = new ArrayList<Job>();
	}
	
	public List<Job> getListJob() {
		return listJob;
	}
	public void setListJob(List<Job> listJob) {
		this.listJob.clear();
		
		for(int i=0;i<listJob.size();i++){
			Job job=new Job(listJob.get(i));
			this.listJob.add(job);
		}
	}
	public int getCmax() {
		return cmax;
	}
	public void setCmax(int cmax) {
		this.cmax = cmax;
	}
	
	
}
