#include <stdio.h>
#include "file_handler.h"

int main(void)
{
	file_handler_t file; 
	file = builder_file_handler(file); 
	
	file.str.create("mierda.txt");
	file.str.write("mierda.txt","epaaaa");
	
	/*
	unsigned char path[] ={0x74, 0x65, 0x78, 0x74, 0x6F, 0x5F, 0x61, 0x71, 0x75, 
	0x69, 0x2E, 0x74, 0x78, 0x74};
	file.uchar.create(path);
	*/
	return 0; 
}
