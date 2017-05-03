/*
C1: 1 ≤ month ≤ 12 
C2: 1 ≤ day ≤ 31
C3: 1812 ≤ year ≤ 2012.
*/

#include <stdio.h>
#include "gtest/gtest.h"
#include "nextdate.hpp"

TEST( NextDateTest, CodeCoverageC0 ) {
	ASSERT_EQ( INVALID_DATE, nextdate(1811, 13, 30) );
	ASSERT_EQ( 20010101, nextdate(2000, 12, 31) );
}

TEST( NextDateTest, CodeCoverageC1 ) {
	ASSERT_EQ( INVALID_DATE, nextdate(1811, 13, 30) );
	ASSERT_EQ( 20001130, nextdate(2000, 11, 29) );
	ASSERT_EQ( 20001201, nextdate(2000, 11, 30) );
	ASSERT_EQ( 20010101, nextdate(2000, 12, 31) );
}

TEST( NextDateTest, CodeCoverageC2 ) {
	ASSERT_EQ( INVALID_DATE, nextdate(1811, 13, 30) );
	ASSERT_EQ( 20001130, nextdate(2000, 11, 29) );
	ASSERT_EQ( 20001201, nextdate(2000, 11, 30) );
	ASSERT_EQ( 20010101, nextdate(2000, 12, 31) );
}

TEST( NextDateTest, CodeCoverageMCDC ) {
	ASSERT_EQ( INVALID_DATE, nextdate(1811, 1, 1) );
	ASSERT_EQ( INVALID_DATE, nextdate(2000, 0, 1) );
	ASSERT_EQ( INVALID_DATE, nextdate(1811, 1, 0) );
	ASSERT_EQ( INVALID_DATE, nextdate(2013, 1, 1) );
	ASSERT_EQ( INVALID_DATE, nextdate(2000, 13, 1) );
	ASSERT_EQ( INVALID_DATE, nextdate(2000, 2, 30) );
}

int main( int argc, char *argv[] ) {
        ::testing::InitGoogleTest(&argc, argv);
        return RUN_ALL_TESTS();
}

