/*
Stratgegy Pattern implementation to enable switching between 
two different algorithm implementations: GrahamScan and Jarvis-March

*/

#include <iostream>

#include "grahamscan.h"
#include "jarvismarch.h"

using namespace std;

//------------------ConvexHullSolver interface--------------------
class ConvexHullSolver
{
	public:
		virtual void findConvexHull()=0;

};

class GrahamScan:public ConvexHullSolver
{
	public:
		void findConvexHull(){
			cout<<"Solving by GrahamScan";
			solve();
		}

};

class JarvisMarch : public ConvexHullSolver
{
	public:
		void findConvexHull()
		{
			cout<<"Solving by Jarvis March algo";
			solveJarvisMarch();
		}


};
//------------------End of ConvexHullSolver Interface---------------------

//-----------------Solver Class-------------------------------------------

class Solver
{
	public:
		ConvexHullSolver *convexhull_solver;
		void run_solver()
		{
			cout<<"Inside run solver";
			convexhull_solver->findConvexHull();
		}
		void setConvexHullSolver(ConvexHullSolver *cs)
		{
			cout<<"Switching solver\n";
			convexhull_solver = cs;
		}

};
//-----------------------End of Solver Class-------------------------------

//------------------------Main()-------------------------------------------

int main(int argc , char **argv)
{
	Solver *solver = new Solver();
	solver->setConvexHullSolver(new GrahamScan);
	solver->run_solver();
	solver->setConvexHullSolver(new JarvisMarch);
	solver->run_solver();
	
	return 0;

}
