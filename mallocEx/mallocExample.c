#include <stdio.h>
#include <stdlib.h>

int main()
{
char cont;

do {

// This pointer will hold the  base address of the block created
int* ptr;
int n, i;

// Get the number of elements for the array
printf("Enter number of elements:\n");
scanf("%d", &n);

// Dynamically allocate memory using malloc()
ptr = (int*)malloc(n * sizeof(int));

// Check if the memory has been successfully
// allocated by malloc or not
if (ptr == NULL) {
    printf("Memory not allocated.\n");
}
else {

    // Memory has been successfully allocated
    printf("Memory successfully allocated using malloc.\n");

    // Get the elements of the array
    for (i = 0; i < n; ++i) {
        ptr[i] = i + 1;
    }

    // Print the elements of the array
    printf("The elements of the array are: \n ");
    for (i = 0; i < n; ++i) {
        printf("%d, ", ptr[i]);
    }
     }
fflush(stdin);
printf("\n continue? (y/n) \n");
scanf(" %c", &cont);
}
while(cont=='y');
    return 0;
}
