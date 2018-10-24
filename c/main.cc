#include <stdio.h> 
#include <stdlib.h> 

int main()
{
   printf("Hello World!");
   	
   	FILE *file;
   	char buffer; 

   	// Open file 
    file = fopen("resources/hello.json", "r"); 
    if (file == NULL) 
    { 
        printf("Cannot open file \n"); 
        exit(0); 
    } 
  
    // Read contents from file 
    buffer = fgetc(file); 
    while (buffer != EOF) 
    { 
        printf ("%c", buffer); 
        buffer = fgetc(file); 
    } 
  
    fclose(file); 
   return 0;
}