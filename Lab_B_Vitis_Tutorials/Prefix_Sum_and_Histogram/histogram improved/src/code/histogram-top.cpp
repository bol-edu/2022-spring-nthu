#include <stdio.h>
#include "histogram.h"

void histogram_golden(int in[INPUT_SIZE], int hist[VALUE_SIZE]) {
  int val;
  for(int i = 0; i < INPUT_SIZE; i++) {
    val = in[i];
    hist[val] = hist[val] + 1;
  }
}

int main() {
	int fail = 0;
	int values[] = {3,1,3,2,2,4,4,0,3,5};
	int y_sw[VALUE_SIZE] = {};
    int y[VALUE_SIZE] = {};

	histogram_golden(values, y_sw);
    histogram(values, y);

	for(int i = 0; i < INPUT_SIZE; i++){
		if(y_sw[i] != y[i]) {
            printf("i=%d y_sw=%d y=%d\n", i, y_sw[i], y[i]);
			fail = 1;
        }
        printf("i=%d y_sw=%d y=%d\n", i, y_sw[i], y[i]);
	}
	if(fail == 1)
		printf("FAILED\n");
	else
		printf("PASS\n");

	return fail;
}
