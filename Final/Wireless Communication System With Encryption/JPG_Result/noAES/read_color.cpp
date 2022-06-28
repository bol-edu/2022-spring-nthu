#include <iostream>
#include <fstream>

#include <cstdlib>




#include <stdio.h>
#include <stdlib.h>
using namespace std;

int main(void)
{
    int number;
    int *R = static_cast<int *>(malloc(sizeof(int)*(360000)));
    int *G = static_cast<int *>(malloc(sizeof(int)*(360000)));
    int *B = static_cast<int *>(malloc(sizeof(int)*(360000)));
    //*************************************************

    std::ifstream input_file("pic0_SNR6.txt");
    int i=0,j=0;
    while (input_file >> number) {

         if(i==360000)  {
                i=0; j++;
         }

        if(j==0){
            R[i] = number;
            if(i%1000==0)cout << "R["<< i << "]: " << R[i] << endl;
        }
        else if(j==1){
            G[i] = number;
            if(i%1000==0)cout << "G["<< i << "]: " << G[i] << endl;

        }
        else {
            B[i] = number;
            if(i%1000==0)cout << "B["<< i << "]: " << B[i] << endl;

        }

        i++;

    }
    cout << endl;
    input_file.close();


//************************ convert to ppm ***************************

  const int dimx = 600, dimy = 600;
//  int i, j;
  FILE *fp = fopen("pic0_SNR6.ppm", "wb"); //* b - binary mode
  (void) fprintf(fp, "P6\n%d %d\n255\n", dimx, dimy);

int im_idx = 0;

  for (j = 0; j < dimy; j++)
  {
    for (i = 0; i < dimx; i++)
    {
im_idx = j*dimx + i;

      static unsigned char color[3];
      color[0] = (R[im_idx]*16)%256;//R[im_idx]%256;  //* red
      color[1] = (G[im_idx]*16)%256;  //* green
      color[2] = (B[im_idx]*16)%256;  //* blue


      (void) fwrite(color, 1, 3, fp);
    }
  }
  (void) fclose(fp);

    cout << "ppm convert done"<<endl;


    return 0;

}
