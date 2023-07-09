#include <matio.h>
#include <stdlib.h>
#include <stdio.h>



int main()
{
mat_t *matfp;
matvar_t *matvar;

matfp = Mat_Open("train.mat", MAT_ACC_RDONLY);
printf("abcv\n");

/*
while((matvar = Mat_VarReadNextInfo(matfp)) != NULL){
  printf("abcv\n");
  printf("%s\n", matvar->name);
  Mat_VarFree(matvar);
  matvar = NULL;
}
*/

matvar = Mat_VarRead(matfp, "testdata");
Mat_VarPrint(matvar, 1);
Mat_VarFree(matvar);


Mat_Close(matfp);


}




