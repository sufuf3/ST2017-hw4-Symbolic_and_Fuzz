#include "gtest/gtest.h"
#include "commission.hpp"

TEST( CommissionTest, CodeCoverageC0 ) {
	ASSERT_EQ( INVALID_SALE , count_commission(0, 1, 1) ); 
	ASSERT_EQ( 7700 , count_commission(69, 79, 89) ); 
}

TEST( CommissionTest, CodeCoverageC1 ) {
	ASSERT_EQ( INVALID_SALE , count_commission(0, 1, 1) ); 
	ASSERT_EQ( 1800 , count_commission(20, 20, 12) ); 
	ASSERT_EQ( 7700 , count_commission(69, 79, 89) ); 
}

TEST( CommissionTest, CodeCoverageC2 ) {
	ASSERT_EQ( INVALID_SALE , count_commission(0, 1, 1) ); 
	ASSERT_EQ( 1000 , count_commission(10, 10, 10) ); 
	ASSERT_EQ( 1800 , count_commission(20, 20, 12) ); 
	ASSERT_EQ( 7700 , count_commission(69, 79, 89) ); 
}

TEST( CommissionTest, CodeCoverageMCDC ) {
	ASSERT_EQ( INVALID_SALE , count_commission(0, 1, 1) ); 
	ASSERT_EQ( INVALID_SALE , count_commission(1, 0, 1) ); 
	ASSERT_EQ( INVALID_SALE , count_commission(1, 1, 0) ); 
	ASSERT_EQ( INVALID_SALE , count_commission(71, 1, 1) ); 
	ASSERT_EQ( INVALID_SALE , count_commission(1, 81, 1) ); 
	ASSERT_EQ( INVALID_SALE , count_commission(1, 1, 91) ); 
	ASSERT_EQ( 1800 , count_commission(20, 20, 12) ); 
}

int main( int argc, char *argv[] ) {
	::testing::InitGoogleTest(&argc, argv);
	return RUN_ALL_TESTS();
}
