The problem statement can be found in the following link: http://puzzlor.com/2017-02_PortInAStorm.html

AMPL has been used for modelling. 
The model file is AnyPortInAStorm.mod
The parameter data file is data.txt

To run this in AMPL, use the following commands in AMPL console:
reset;
option solver cplex; //you are free to choose any other MILP solver as well
model AnyPortInAStorm.mod;  //to load the model file; make sure you are in the correct directory
data data.txt;    //to load the parameter file; make sure you are in the correct directory
solve;

for more info regarding AMPL, please visit: https://ampl.com/BOOK/CHAPTERS/24-refman.pdf

Answer to the given problem: 31