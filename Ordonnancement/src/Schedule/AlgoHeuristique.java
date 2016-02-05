package Schedule;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import Model.Job;
import Model.Machine;

public class AlgoHeuristique {


	public static List<Job> spt(List<Job> list) {
		List<Job> listJob = new ArrayList<Job>();
		for(int i=0;i<list.size();i++){
			Job job=new Job(list.get(i));
			listJob.add(job);
		}
		
		Collections.sort(listJob, new Comparator<Job>() {
			public int compare(Job j1, Job j2) {
				return j1.getDuree() - j2.getDuree();
			}
		});

		return listJob;
	}
	
	public static List<Job> lpt(List<Job> list) {
		List<Job> listJob = new ArrayList<Job>();
		for(int i=0;i<list.size();i++){
			Job job=new Job(list.get(i));
			listJob.add(job);
		}
		
		Collections.sort(listJob, new Comparator<Job>() {
			public int compare(Job j1, Job j2) {
				return j2.getDuree() - j1.getDuree();
			}
		});
		
		return listJob;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public static List<Job> grwc(List<List> listArche) {
//		List<Job> listJob = new ArrayList<Job>();
//		listJob.addAll(listArche.get(0));
//		List<Machine> listMachine = listArche.get(1);
		
		List<Job> list = listArche.get(0);
		List<Machine> listMachine = listArche.get(1);
		
		List<Job> listJob = new ArrayList<Job>();
		for(int i=0;i<list.size();i++){
			Job job=new Job(list.get(i));
			listJob.add(job);
		}
		
		int k = listJob.get(0).getRessources().size();
		int somme[][] = new int[2][k];
		for(int i = 0; i < 2; i++){
			for(int j = 0; j < k; j++){
				somme[i][j] = 0;
			}
		}
		for(int i = 0; i < k; i++){
			for(int j = 0; j < listJob.size(); j++){
				somme[0][i] += listJob.get(j).getRessources().get(i);
			}
			for(int j = 0; j < listMachine.size(); j++){
				somme[1][i] += listMachine.get(j).getRessources().get(i);
			}
		}
		double poid[] = new double[k];
		double total = 0;
		for(int i = 0; i < k; i++){
			total += (double)somme[0][i] / (double)somme[1][i];
		}
		for(int i = 0; i < k; i++){
			poid[i] = ((double)somme[0][i] / (double)somme[1][i]) / total;
		}
		
		Collections.sort(listJob, new Comparator<Job>() {
			public int compare(Job j1, Job j2) {
				double rwc1 = 0;
				double rwc2 = 0;
				for(int i = 0; i < k; i++){
					rwc1 += j1.getRessources().get(i) * poid[i] * j1.getDuree();
					rwc2 += j2.getRessources().get(i) * poid[i] * j2.getDuree();
				}
				if (rwc2 > rwc1)
					return 1;
				else if (rwc2 < rwc1)
					return -1;
				else
					return 0;
			}
		});
		
		return listJob;
	}

}
