	.file	"main_file_handler.c"
	.intel_syntax noprefix
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "mierda.txt\0"
LC1:
	.ascii "epaaaa\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB29:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	and	esp, -16
	sub	esp, 96
	call	___main
	lea	eax, [esp+56]
	mov	edx, DWORD PTR [esp+56]
	mov	DWORD PTR [esp+4], edx
	mov	edx, DWORD PTR [esp+60]
	mov	DWORD PTR [esp+8], edx
	mov	edx, DWORD PTR [esp+64]
	mov	DWORD PTR [esp+12], edx
	mov	edx, DWORD PTR [esp+68]
	mov	DWORD PTR [esp+16], edx
	mov	edx, DWORD PTR [esp+72]
	mov	DWORD PTR [esp+20], edx
	mov	edx, DWORD PTR [esp+76]
	mov	DWORD PTR [esp+24], edx
	mov	edx, DWORD PTR [esp+80]
	mov	DWORD PTR [esp+28], edx
	mov	edx, DWORD PTR [esp+84]
	mov	DWORD PTR [esp+32], edx
	mov	edx, DWORD PTR [esp+88]
	mov	DWORD PTR [esp+36], edx
	mov	edx, DWORD PTR [esp+92]
	mov	DWORD PTR [esp+40], edx
	mov	DWORD PTR [esp], eax
	call	_builder_file_handler
	mov	eax, DWORD PTR [esp+56]
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	eax
	mov	eax, DWORD PTR [esp+60]
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC1
	mov	DWORD PTR [esp], OFFSET FLAT:LC0
	call	eax
	mov	eax, 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE29:
	.ident	"GCC: (GNU) 10-win32 20220113"
	.def	_builder_file_handler;	.scl	2;	.type	32;	.endef
