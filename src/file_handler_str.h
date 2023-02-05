#ifndef FILE_HANDLER_STR_H
#define FILE_HANDLER_STR_H


void create_str(char *path);
void write_str(char *path, char *contents);
void read_str(char *path);
void delete_str(char *path);
void change_str(char *old, char *new); 

typedef struct
{
	void (*create)(char *path);
	void (*write)(char *path, char *contents);
	void (*read)(char *path);
	void (*delete)(char *path);
	void (*change)(char *old, char *new);
}file_handler_str; 


#endif
