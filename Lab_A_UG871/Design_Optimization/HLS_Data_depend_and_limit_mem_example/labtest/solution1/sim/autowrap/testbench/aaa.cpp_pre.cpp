# 1 "C:/Users/Lab611/Desktop/Portal/yuri-project/2022HLS/Labtest/aaa.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:/Users/Lab611/Desktop/Portal/yuri-project/2022HLS/Labtest/aaa.cpp"


void aaa(
      int a[12],int b[12], int r[12]
      )
{


 int i ;
 add :
 for (i =0; i<10 ; i=i+1)
 {

  r[i] = a[i] + b[i]+ a[i+1] +a[i+2]+ b[i+1] +b[i+2];
  r[i+2] = r[i+1]+r[i] +1 ;





 }

}
