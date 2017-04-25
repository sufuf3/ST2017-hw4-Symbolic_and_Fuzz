/*
Take 200 as an upper bound
Normal boundary are {1,2,199,200}
Robust values {0,201}
*/
#include <stdio.h>
#include <stdlib.h>
#include "gtest/gtest.h"
#include "triangle.hpp"

// Statement coverage
TEST( TriangleTest, CodeCoverageC0 ) {
	ASSERT_EQ( TYPE_NOTTRIANGLE, triangle_type(1, 2, 3) );
	ASSERT_EQ( TYPE_EQUILATERAL, triangle_type(5, 5, 5) );
	ASSERT_EQ( TYPE_ISOSCELES, triangle_type(2, 2, 3) );
	ASSERT_EQ( TYPE_SCALENE, triangle_type(3, 4, 5) );
}

// DD-path coverage
TEST( TriangleTest, CodeCoverageC1 ) {
	ASSERT_EQ( TYPE_INVALID_INPUT, triangle_type(-1, 1, 1) );
	ASSERT_EQ( TYPE_NOTTRIANGLE, triangle_type(1, 2, 3) );
	ASSERT_EQ( TYPE_EQUILATERAL, triangle_type(5, 5, 5) );
	ASSERT_EQ( TYPE_ISOSCELES, triangle_type(2, 2, 3) );
	ASSERT_EQ( TYPE_SCALENE, triangle_type(3, 4, 5) );
}

// DD-path coverage + Simple loop coverage
TEST( TriangleTest, CodeCoverageC2 ) {
	//same as CodeCoverageC1 because of Triangle Problem doesn't have a Loop
	ASSERT_EQ( TYPE_INVALID_INPUT, triangle_type(-1, 1, 1) );
	ASSERT_EQ( TYPE_NOTTRIANGLE, triangle_type(1, 2, 3) );
	ASSERT_EQ( TYPE_EQUILATERAL, triangle_type(5, 5, 5) );
	ASSERT_EQ( TYPE_ISOSCELES, triangle_type(2, 2, 3) );
	ASSERT_EQ( TYPE_SCALENE, triangle_type(3, 4, 5) );
}

TEST( TriangleTest, CodeCoverageMCDC ) {
	// first branch
	ASSERT_EQ( TYPE_INVALID_INPUT, triangle_type(201, 1, 1) );
	ASSERT_EQ( TYPE_INVALID_INPUT, triangle_type(1, 201, 1) );
	ASSERT_EQ( TYPE_INVALID_INPUT, triangle_type(1, 1, 201) );
	ASSERT_EQ( TYPE_INVALID_INPUT, triangle_type(0, 1, 1) );
	ASSERT_EQ( TYPE_INVALID_INPUT, triangle_type(1, 0, 1) );
	ASSERT_EQ( TYPE_INVALID_INPUT, triangle_type(1, 1, 0) );
	ASSERT_EQ( TYPE_EQUILATERAL, triangle_type(5, 5, 5) );
	// second branch
	ASSERT_EQ( TYPE_NOTTRIANGLE, triangle_type(1, 2, 3) );
	ASSERT_EQ( TYPE_NOTTRIANGLE, triangle_type(3, 2, 1) );
	ASSERT_EQ( TYPE_NOTTRIANGLE, triangle_type(2, 3, 1) );
	// third branch
	ASSERT_EQ( TYPE_ISOSCELES, triangle_type(2, 2, 3) );
	ASSERT_EQ( TYPE_ISOSCELES, triangle_type(2, 3, 2) );
	ASSERT_EQ( TYPE_ISOSCELES, triangle_type(3, 2, 2) );
	ASSERT_EQ( TYPE_SCALENE, triangle_type(3, 4, 5) );
}
int main( int argc, char *argv[] ) {
	::testing::InitGoogleTest(&argc, argv);
	return RUN_ALL_TESTS();
}

