#include <stdio.h>
#include <string.h>

#include "file_handler_str.h"

void create_str(char *path)
{
	FILE *fptr; 
	if(path != NULL && strcmp(path, "") != 0)
		fptr = fopen(path, "w"); 

	fclose(fptr); 
}
void write_str(char *path, char *str)
{
	FILE *fptr; 
	fptr = fopen(path, "w"); 

	for(int i = 0; str[i] != (int)NULL; i++)
		fputc(str[i], fptr); 

	fclose(fptr);
}
void read_str(char *path)
{
	char c; 
	FILE *fptr; 
	fptr = fopen(path, "r"); 

	while((c = getc(fptr)) != EOF)
		printf("%c", c); 

	printf("\n"); 
	fclose(fptr); 
} 
void delete_str(char *path)
{
	if(remove(path) == 0) NULL; 
} 
void change_str(char *old, char *new)
{
	if(rename(old, new) == 0) NULL; 
}   
