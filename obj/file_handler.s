	.file	"file_handler.c"
	.intel_syntax noprefix
	.text
	.globl	_builder_file_handler
	.def	_builder_file_handler;	.scl	2;	.type	32;	.endef
_builder_file_handler:
LFB0:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	mov	DWORD PTR [ebp+12], OFFSET FLAT:_create_str
	mov	DWORD PTR [ebp+16], OFFSET FLAT:_write_str
	mov	DWORD PTR [ebp+20], OFFSET FLAT:_read_str
	mov	DWORD PTR [ebp+24], OFFSET FLAT:_delete_str
	mov	DWORD PTR [ebp+28], OFFSET FLAT:_change_str
	mov	eax, DWORD PTR [ebp+8]
	mov	edx, DWORD PTR [ebp+12]
	mov	DWORD PTR [eax], edx
	mov	edx, DWORD PTR [ebp+16]
	mov	DWORD PTR [eax+4], edx
	mov	edx, DWORD PTR [ebp+20]
	mov	DWORD PTR [eax+8], edx
	mov	edx, DWORD PTR [ebp+24]
	mov	DWORD PTR [eax+12], edx
	mov	edx, DWORD PTR [ebp+28]
	mov	DWORD PTR [eax+16], edx
	mov	edx, DWORD PTR [ebp+32]
	mov	DWORD PTR [eax+20], edx
	mov	edx, DWORD PTR [ebp+36]
	mov	DWORD PTR [eax+24], edx
	mov	edx, DWORD PTR [ebp+40]
	mov	DWORD PTR [eax+28], edx
	mov	edx, DWORD PTR [ebp+44]
	mov	DWORD PTR [eax+32], edx
	mov	edx, DWORD PTR [ebp+48]
	mov	DWORD PTR [eax+36], edx
	mov	eax, DWORD PTR [ebp+8]
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE0:
	.ident	"GCC: (GNU) 10-win32 20220113"
	.def	_create_str;	.scl	2;	.type	32;	.endef
	.def	_write_str;	.scl	2;	.type	32;	.endef
	.def	_read_str;	.scl	2;	.type	32;	.endef
	.def	_delete_str;	.scl	2;	.type	32;	.endef
	.def	_change_str;	.scl	2;	.type	32;	.endef
