#ifndef FILE_HANDLER_UCHAR_H
#define FILE_HANDLER_UCHAR_H

//void create_uchar(unsigned char path[]);
typedef struct
{
	void (*create)(unsigned char path[]);
	void (*write)(unsigned char path[], unsigned char contents[]); 
	void (*read)(unsigned char path[]);
	void (*delete)(unsigned char path[]); 
	void (*change)(unsigned char old[], unsigned char new[]);
}file_handler_uchar; 
#endif
