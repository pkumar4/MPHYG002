#include "iostream"
#include "stack"
#include "cstdlib"
using namespace std;

struct Point
{
	int x;
	int y;

};
Point p0;

// method to return the second element from top in the stack
Point getSecondElement(stack<Point> &S)
{
	Point p = S.top();
	S.pop();
	Point res = S.top();
	S.push(p);
	return res;
}

// method to swap two points
void swap(Point &p1, Point &p2)
{
	Point temp = p1;
	p1 = p2;
	p2 = temp;
}



// method to return sqaured distance between two points
int sqrDist(Point p1, Point p2)
{
	return (p1.x -p2.x)*(p1.x- p2.x)+(p1.y-p2.y)*(p1.y-p2.y);
}

//returns 0 if points are collinear
// +1 for a clockwise turn, 2 for the counter-clockwise
int ccw(Point a, Point b, Point c)
{
	int area = (b.y-a.y)*(c.x-b.x) -(b.x-a.x)*(c.y-b.y);
	if(area >0)
		return 1;//clockwise
	else if(area<0)
		return 2; //counter-clockwise
	else 
		return 0; //collinear
}

// method used by qsort()
// sorts array of points with respect to first point
int myComp(const void *vp1, const void *vp2)
{
	Point *p1 = (Point*)vp1;
	Point *p2 = (Point*)vp2;

	//Find orientation
	int o = ccw(p0,*p1,*p2);
	if(o==0)
		return (sqrDist(p0,*p2) >= sqrDist(p0,*p1))?-1:1;

	return (o==2)?-1:1;
}

//Prints convex hull of a set of n points
stack<Point> convexHull(Point points[], int n)
{
	//Find the bottommost point
	int ymin = points[0].y, min = 0;
	for(int i=1; i<n; i++){
		int y = points[i].y;
	
		//Pick the bottom-most or chose the left most point in case of tie
		if((y<ymin) || (ymin ==y &&points[i].x<points[min].x))
			ymin = points[i].y, min =i;
	}

	//Place the bottom-most point at first position
	swap(points[0],points[min]);

	//sort n-1 points with repsect to the first point.A point p1 comes before
	// p2 in sorted output if p2 has larger polar angle(in counter clockwise directon)
	// than p1
	p0 = points[0];
	qsort(&points[1],n-1,sizeof(Point),myComp);

	//Create an empty stack and push first three points to it
	stack<Point> S;
	S.push(points[0]);
	S.push(points[1]);
	S.push(points[2]);
	
	//Process remaining n-3 points
	for(int i=3;i<n;i++){
		//Keep removing top while the angle formed by points nex-to-top,
		//top, and points[i] makes a non-left turn
		while(ccw(getSecondElement(S),S.top(),points[i])!=2)
			S.pop();
		S.push(points[i]);
	}

	//Now stack has the output points, print contents of stack
	while(!S.empty())
	{
		Point p = S.top();
		cout<<"("<<p.x<<","<<p.y<<")"<<endl;
		S.pop();
	}
	return S;
}
//Driver program to test above function
void solve()
{
	Point points[] = {{0,3},{1,1},{2,2},{4,4},{0,0},
			 {1,2},{3,1},{3,3}};
	int n = sizeof(points)/sizeof(points[0]);
	cout<<"\nThe points in convex hull are: \n";
	
	convexHull(points,n);
}
