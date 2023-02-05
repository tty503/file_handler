#include "file_handler.h"

file_handler_t builder_file_handler(file_handler_t obj)
{	
	obj.str.create = &create_str; 
	obj.str.write  = &write_str;
	obj.str.read   = &read_str; 
	obj.str.delete = &delete_str;  
	obj.str.change = &change_str; 
	
	/*
	obj.uchar.create = &create_uchar;
	obj.uchar.write  = &write_uchar;
	obj.uchar.read   = &read_uchar;
	obj.uchar.delete = &delete_uchar;
	obj.uchar.change = &change_uchar; 
	*/
	return obj; 
}
