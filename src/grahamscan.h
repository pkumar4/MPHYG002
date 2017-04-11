#include "stack"
using namespace std;
struct Point{
	int x;int y;
};

void solve();
Point getSecondElement(stack<Point> &s);
int sqrDist(Point a, Point b);
int ccw(Point a, Point b, Point c);
stack<Point> convexHull(Point points[], int n);

