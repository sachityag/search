#include <stdio.h>
#include "compare.h"
int main(int argc, char *argv[])
{
	int a[11] = {7, 6, 4, 3, 8, 9, 1, 2, 10, 11};
	int searchterm = 3;
	int i=3, ret;
	ret = compare(a, i, searchterm);
	if(ret == -1) {
		printf("Not Equal");
	}
	else {
		printf("matches at index %d", i);
	}
	return 0;
}
