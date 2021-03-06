#include <stdio.h>
#include "nextdate.hpp"
//#include "klee/klee.h"
const int D_MAX[M_MAX + 1] = { 0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 };

int nextdate( int yy, int mm, int dd ) {
	if( yy < Y_MIN || yy > Y_MAX || mm < M_MIN || mm > M_MAX)
		return INVALID_DATE;
	//31days
	if( mm == 1 || mm == 3 || mm == 5 || mm == 7 || mm == 8 || mm == 10 || mm == 12 ){
		if(dd >= 1 && dd<31)
			dd++;
		else if(dd==31){
			dd=1;
			mm++;
			if(mm==13){
				mm=1;
				yy++;
			}
		}
		else
			return INVALID_DATE;
	}
	else if(mm == 4 || mm == 6 || mm == 9 || mm == 11){
		if(dd >= 1 && dd<30)
			dd++;
		else if(dd==30){
			dd=1;
			mm++;
		}	
		else
			return INVALID_DATE;
	}
	else if(mm == 2){
		if(dd >= 1 && dd<28)
			dd++;
		else if( dd == 28 ){
			if( (yy % 4 == 0 && yy % 100 != 0 ) || yy % 400 == 0 ){
				dd++;
			}
			else{
				dd = 1;
				mm = 3;
			}
		}
		else if( dd == 29 ){
			if( (yy % 4 == 0 && yy % 100 != 0 ) || yy % 400 == 0 ){
				dd = 1;
				mm = 3;
			}
			else{
				return INVALID_DATE;
			}
		}
		else{
			return INVALID_DATE;
		}
	}
	return (yy * 10000) + (mm * 100) + (dd);
}

int main() {
        int yy, mm, dd;
        //klee_make_symbolic(&yy, sizeof(yy), "yy");
        //klee_make_symbolic(&mm, sizeof(mm), "mm");
        //klee_make_symbolic(&dd, sizeof(dd), "dd");
        return nextdate(yy, mm, dd);
}
