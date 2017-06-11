#include "commission.hpp"
#include "klee/klee.h"

//const double SALE_THRESHOLD[SALE_INPUT] = { 0.0, 1000.0, 1800.0 };
//const double COMMISSION_PERCENT[SALE_INPUT] = { 0.1, 0.15, 0.2 };

double count_commission( int lock, int stock, int barrel ) {
	
	int i, rank = 0;
	double sale = 0.0, commission = 0.0;
	
	// validate the input sale
	if( lock < LOCK_MIN || stock < STOCK_MIN || barrel < BARREL_MIN || lock > LOCK_MAX || stock > STOCK_MAX || barrel > BARREL_MAX ) 
		return INVALID_SALE;
	
	sale = LOCK_PRICE * lock + STOCK_PRICE * stock + BARREL_PRICE * barrel;
	return sale;		
}

int main() {
        int lock, stock, barrel;
        klee_make_symbolic(&lock, sizeof(lock), "lock");
        klee_make_symbolic(&stock, sizeof(stock), "stock");
        klee_make_symbolic(&barrel, sizeof(barrel), "barrel");
        return count_commission(lock, stock, barrel);
}
