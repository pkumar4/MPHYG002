#include <iostream>

#define INF 1000

using namespace std;
struct Point
{
	int x;
	int y;

};

//To find orientation of ordered triplet(p,q,r)

int findOrientation(Point a, Point b, Point c)
{

	int area = (b.y-a.y)*(c.x-b.x) -(b.x-a.x)*(c.y-b.y);
	if(area ==0)
		return 0;//collinear
	if(area >0)
		return 1;//clockwise
	return 2;//counter-clockwise

}

void solve_convexHull(Point points[],int n)
{
	//There must be atleast 3 points
	if(n<3)
		return;
	//Initialise Result
	int next[n];
	for(int i=0;i<n;i++){
		next[i] =-1;
	}

	//Find the leftmost point
	int l = 0;
	for(int i=1;i<n;i++)
		if(points[i].x<points[l].x)
			l=i;
	//Start from leftmost point, keepp moving counterclockwise 
	//until reach the startpoint again
	int p=l,q;
	do{
		//Search for a point 'q' such that orientation(p,i,q) is 
		//counterclockwise for all points 'i'
		q = (p+1)%n;
		for(int i=0;i<n;i++)
			if(findOrientation(points[p],points[i],points[q])==2)
				q=i;
		next[p] =q;//Add q to result as a next point of p
		p=q;//Set p as q for next iteration

	}while(p!=l);
	
	//Print Result
	for(int i=0;i<n;i++)
	{
		if(next[i]!=-1)
			cout<<"("<<points[i].x<<","<<points[i].y<<")\n";
	}
}

void solveJarvisMarch()
{
	Point points[] ={{0,3},{2,2},{1,1},{2,1},{3,0},{0,0},{3,3}};
	cout<<"\nThe points in the convex hull are:\n";
	int n = sizeof(points)/sizeof(points[0]);
	solve_convexHull(points,n);
}
