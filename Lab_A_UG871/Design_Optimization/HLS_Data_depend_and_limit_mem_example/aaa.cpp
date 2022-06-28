

void aaa(
      int a[12],int b[12], int r[12]
      )
{

//int temp = 0;
	int i ;
	add :
	for (i =0; i<10 ; i=i+1)
	{

		r[i] = a[i] + b[i]+ a[i+1] +a[i+2]+ b[i+1] +b[i+2];
		r[i+2] = r[i+1]+r[i] +1 ;

		//r[i] = a[i] + b[i]+ a[i+1] +a[i+2]+ b[i+1] +b[i+2];
		//temp = r[i];
		//r[i+2] = r[i+1] +temp +1 ;

	}

}

