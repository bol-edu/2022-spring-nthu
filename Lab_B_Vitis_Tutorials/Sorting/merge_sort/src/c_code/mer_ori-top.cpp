#include "stdio.h"
#define SIZE 16
extern void mer_ori(int in[SIZE], int out[SIZE]);

int main() {
	int in[SIZE];
	int out[SIZE];
	for(int i = 0; i < SIZE; i++) {
		in[i] = SIZE-i;
		//in[i] = i;
	}

	mer_ori(in, out);

	printf(" input \n");
    for(int i = 0; i < SIZE; i++) {
		printf("%d ", in[i]);
	}

	printf("\n output \n");
    for(int i = 0; i < SIZE; i++) {
		printf("%d ", out[i]);
	}
	printf("\n");
}
