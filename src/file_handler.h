#ifndef FILE_HANDLER_H
#define FILE_HANDLER_H

#include "file_handler_str.h"
#include "file_handler_uchar.h"

typedef struct
{
	file_handler_str str; 
	file_handler_uchar uchar; 
}file_handler_t; 

file_handler_t builder_file_handler(file_handler_t obj); 
#endif