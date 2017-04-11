
#define  CATCH_CONFIG_MAIN	// This tells catch to provide main() - included only in one cpp
				// file
#include "catch.hpp"
#include "stack"
#include "grahamscan.h"
#include "jarvismarch.h"


TEST_CASE("Graham Scan Test","[gscan]"){
	//test getSecondElement(stack<Point> &S)
	Point points[] = {{0,0},{1,1},{3,2}};
	stack<Point> test_stack ;
	test_stack.push(points[0]);
	test_stack.push(points[1]);
	test_stack.push(points[2]);
	
	// points[1] is the second element having coordinates (1,1)
	REQUIRE(1==getSecondElement(test_stack).x);
	REQUIRE(1==getSecondElement(test_stack).y);

	//test the squared distance between 2 points( (3,2) and (1,1))
	REQUIRE(5==sqrDist(points[2],points[1]));
	
	//test if ccw() for checking if orientation is clockwise,
	// counter-clockwise or  collinear
	// as area >0 in this case, method must return 1
	REQUIRE(1==ccw(points[0],points[1],points[2]));
	
	Point test_points[]={{0,3},{1,1},{2,2},{4,4},{0,0},{1,2},{3,1},{3,3}};
	int n = sizeof(test_points)/sizeof(test_points[0]);
	Point result_point[] = {{0,3},{4,4},{3,1},{0,0}};
	stack<Point> pstack ;
	pstack.push(result_point[0]);
	pstack.push(result_point[1]);
	pstack.push(result_point[2]);
	pstack.push(result_point[3]);

	//CHECK_THAT(pstack,Equals(convexHull(test_points,n)));
}
TEST_CASE("JarvisMarch Test","[jv]"){
	Point points[] = {{0,3},{2,2},{1,1}};
	REQUIRE(1==findOrientation(points[0],points[1],points[2]));
	Point test_points[]={{0,3},{1,1},{2,2},{4,4},{0,0},{1,2},{3,1},{3,3}};
	int n = sizeof(test_points)/sizeof(test_points[0]);
	//solve_ConvexHull(points,n);
	
}
