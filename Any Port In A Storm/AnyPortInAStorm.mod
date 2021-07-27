param S;  #parameter for declaring the number of ships [in this problem, it's 20]
param D;  #parameter for declaring the number of docks [in this problem, it's 3]
set NS:=1..S;
set ND:=1..D;

param DOCKCAP{ND};  #parameter for the capacity of each of the docks

param DISTANCE{NS,ND};  #distance matrix parameter for representing distances b/w each ship and and each dock 

var alloc{NS,ND}>=0, <=1, integer;   #defining binary variables, alloc[i,j] will take the value 1 in case ship i goes to dock j; 0, otherwise

minimize cost: sum{i in NS, j in ND}(DISTANCE[i,j]*alloc[i,j]);

s.t. con1{i in NS}: sum{j in ND} alloc[i,j]=1;    #assignment constraint - each of the ship should go to any of the docks
s.t. con2{j in ND}: sum{i in NS} alloc[i,j]<=DOCKCAP[j];   #capacity constraint for modelling capacity of each of the docks