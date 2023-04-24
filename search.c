#include "search.h"
#include "compare.h"

int search(int a[], int len, int term)
{
	int i;
	//for
	for(i=0;i<len;i++) {
		if(compare(a, i, term) != -1) {
			return i;
		}
	}
	return -1;
}

