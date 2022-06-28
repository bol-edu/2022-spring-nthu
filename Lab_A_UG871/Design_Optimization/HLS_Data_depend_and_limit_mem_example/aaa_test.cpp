
#include <iostream>
#include "aaa.h"

using namespace std;

int main(int argc, char **argv)
{
	int a[12] = {1,2,3,4,5,6,7,8,9,10,11,12};
	int b[12] = {1,2,3,4,5,6,7,8,9,10,11,12};
	int hw_result[12] = {0,0,0,0,0,0,0,0,0,0,0,0};
	int sw_result[12] = {0,0,0,0,0,0,0,0,0,0,0,0};
    int err_cnt = 0;

   // Generate the expected result
   // Iterate over the rows of the A matrix
  for(int i = 0; i<11; i++){
         	 // Iterate over the columns of the B matrix
         	 sw_result[i] = 0;
         	 // Do the inner product of a row of A and col of B

            sw_result[i]= a[i]+ b[i] + a[i+1] + a[i+2] + b[i+1] + b[i+2];
            sw_result[i+2]= sw_result[i] +sw_result[i+1] +1;
  }

#ifdef HW_COSIM
   // Run the AutoESL matrix multiply block
   aaa(a, b, hw_result);
#endif

   // Print result matrix
   //cout << setw(6);

      for (int i = 0; i < 10; i++) {
#ifdef HW_COSIM
         // Check HW result against SW
         if (hw_result[i] != sw_result[i]) {
            err_cnt++;
         }
#else
         cout << sw_result[i];
#endif
      }


#ifdef HW_COSIM
   if (err_cnt)
      cout << "ERROR: " << err_cnt << " mismatches detected!" << endl;
   else
      cout << "Test passes." << endl;
#endif
   return err_cnt;
}

