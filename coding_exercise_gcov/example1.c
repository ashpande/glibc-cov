/* Program takes the input dimensions A and B, and computes the area.
Incorrect values of A or B that do not result in a square or rectangle are rejected.
Then it is classified as square or rectangle */

#include <stdio.h>

int quadilateral(int a, int b);

int main()
{
char c;
do {
 int a;
 int b;

 printf("enter dimension a \n");
 scanf("%d", &a);
 printf("enter dimension b \n");
 scanf("%d", &b);

 int ar= quadilateral(a,b);

 if(!(a==0||b==0)&&(a==b))
 printf("Square with Area %d \n", ar);

 else if(!(a==0||b==0))
 printf("Rectangle with Area %d \n", ar);

 else
 printf("One of the values was zero \n"); 

 fflush(stdin);
 printf("Continue? (y/n)  \n");
 scanf(" %c", &c);
   }
while(c=='y');
}

int quadilateral(int a,int b)
{
int area = a*b;
if(a==0||b==0)
printf("Incorrect values, try again \n");
else
printf("area %d \n", area);

return area;
}

