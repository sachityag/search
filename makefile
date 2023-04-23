a.out: bubblemain.o bubblesort.o swap.o compare.o
	gcc -o a.out bubblemain.o bubblesort.o swap.o compare.o

bubblemain.o: bubblemain.c bubblesort.h swap.h compare.h
	gcc bubblemain.c -o bubblemain.o -c

b.out: csmain.o swap.o compare.o
	gcc -o b.out csmain.o swap.o compare.o

csmain.o: csmain.c swap.h compare.h
	gcc csmain.c -o csmain.o -c

bubblesort.o: bubblesort.c bubblesort.h swap.h compare.h
	gcc bubblesort.c -o bubblesort.o -c

swap.o: swap.c swap.h
	gcc swap.c -o swap.o -c

compare.o: compare.c compare.h
	gcc compare.c -o compare.o -c

clean: 
	rm *.o a.out b.out
