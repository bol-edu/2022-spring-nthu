/*******************************************************************************
Vendor: bds
Associated Filename: miller_bfr_tb.c
Purpose:beamformer testbench
Device: All
Revision History: March 2018 - initial release

*******************************************************************************


*******************************************************************************/
//#include "array_arith.h"
#include "miller_bfr.h"

int main () {

  dio_t rx_i[SAMPLES * CHANNELS] = {
		  1,2,3,4,
		  2,3,4,5,
		  3,4,5,6,
		  4,5,6,7,
		  5,6,7,8
  };

  dio_t rx_q[SAMPLES * CHANNELS] = {
		  1,2,3,4,
		  2,3,4,5,
		  3,4,5,6,
		  4,5,6,7,
		  5,6,7,8
  };

  dio_t w_i[BEAMS * CHANNELS] = {
		  1,2,3,4,
		  5,6,7,8
  };

  dio_t w_q[BEAMS * CHANNELS] = {
		  1,2,3,4,
		  5,6,7,8
  };

  dio_t beamso_i[SAMPLES * BEAMS] = {
  };
  dio_t beamso_q[SAMPLES * BEAMS] = {
  };


	int i, j, retval=0;
	FILE        *fp;


	beamformer( rx_i,   rx_q,
			    w_i,      w_q,
				beamso_i,  beamso_q);


	// Save the results to a file
	fp=fopen("result.dat","w");
//	printf(" beamso_i   beamso_q\n");
	for (j=0;j<SAMPLES;j++) {
		printf(" beamso_i   beamso_q\n");
	   for (i=0;i<BEAMS;i++) {
		fprintf(fp, "%d %d \n", beamso_i[j * BEAMS + i], beamso_q[j * BEAMS + i]);
		printf(" %d %d \n",     beamso_i[j * BEAMS + i], beamso_q[j * BEAMS + i]);
	   }
	}
	fclose(fp);

	// Compare the results file with the golden results
	retval = system("diff --brief -w result.dat ../../../result.golden_decimal.dat");
	if (retval != 0) {
		printf("Test failed  !!!\n");
		retval=1;
	} else {
		printf("Test passed !\n");
  }

	// Return 0 if the test passes
  return retval;

}
