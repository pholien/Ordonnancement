#
# RCPSP's problem
#
# This finds the optimal solution for minimizing RSPCP
#

/* parameters */
param nombreJob, integer, > 0;  /*numbre de jobs*/
param nombreRessource, integer, > 0;  /*numbre de ressources*/

set J := 1..nombreJob;  /*emsemble de jobs*/
set R := 1..nombreRessource;  /*emsemble de ressources*/

param duree{i in J}, >= 0;  /*la duree de chaque job*/
param capaciteRessource{i in R}, >= 0;  /*la capacite de chaque type de ressource*/
param besoinRessource{i in J, j in R}, >= 0;  /*le besoin de job i en ressource de type j*/

param t := sum{i in J} duree[i];  /*temps total maximum*/
set T := 1..t;  /*emsemble de temps*/

/* decision variables */ 
var x {i in J, j in T}, binary;  /* x[i,j] = 1 si job i est execute a la moment j, sinon x[i,j] = 0 */ 

var z;  /* Cmax */

/* Constraints */
s.t. periode{i in J}: sum{j in T} x[i,j] = duree[i];

s.t. complet{i in J, j in 1..(t-2)}: duree[i]*(x[i,j]-x[i,j+1]) + sum{a in (j+2)..t} x[i,a] <= duree[i]; 

s.t. cmax{i in J, j in T}: z >= j * x[i,j]; 

s.t. ressource{i in R, j in T}: sum{l in J} x[l,j] * besoinRessource[l,i] <= capaciteRessource[i];
	  
/* objective function */
minimize obj: z;

end;