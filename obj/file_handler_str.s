	.file	"file_handler_str.c"
	.intel_syntax noprefix
	.text
	.def	_printf;	.scl	3;	.type	32;	.endef
_printf:
LFB8:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	push	ebx
	sub	esp, 36
	.cfi_offset 3, -12
	lea	eax, [ebp+12]
	mov	DWORD PTR [ebp-16], eax
	mov	ebx, DWORD PTR [ebp-16]
	mov	DWORD PTR [esp], 1
	mov	eax, DWORD PTR __imp____acrt_iob_func
	call	eax
	mov	DWORD PTR [esp+8], ebx
	mov	edx, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	___mingw_vfprintf
	mov	DWORD PTR [ebp-12], eax
	mov	eax, DWORD PTR [ebp-12]
	mov	ebx, DWORD PTR [ebp-4]
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE8:
	.section .rdata,"dr"
LC0:
	.ascii "w\0"
	.text
	.globl	_create_str
	.def	_create_str;	.scl	2;	.type	32;	.endef
_create_str:
LFB30:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 40
	cmp	DWORD PTR [ebp+8], 0
	je	L4
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	movzx	eax, al
	test	eax, eax
	je	L4
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC0
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_fopen
	mov	DWORD PTR [ebp-12], eax
L4:
	mov	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR [esp], eax
	call	_fclose
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE30:
	.globl	_write_str
	.def	_write_str;	.scl	2;	.type	32;	.endef
_write_str:
LFB31:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 40
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC0
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_fopen
	mov	DWORD PTR [ebp-16], eax
	mov	DWORD PTR [ebp-12], 0
	jmp	L6
L7:
	mov	edx, DWORD PTR [ebp-12]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	movsx	eax, al
	mov	edx, DWORD PTR [ebp-16]
	mov	DWORD PTR [esp+4], edx
	mov	DWORD PTR [esp], eax
	call	_fputc
	add	DWORD PTR [ebp-12], 1
L6:
	mov	edx, DWORD PTR [ebp-12]
	mov	eax, DWORD PTR [ebp+12]
	add	eax, edx
	movzx	eax, BYTE PTR [eax]
	test	al, al
	jne	L7
	mov	eax, DWORD PTR [ebp-16]
	mov	DWORD PTR [esp], eax
	call	_fclose
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE31:
	.section .rdata,"dr"
LC1:
	.ascii "r\0"
LC2:
	.ascii "%c\0"
LC3:
	.ascii "\12\0"
	.text
	.globl	_read_str
	.def	_read_str;	.scl	2;	.type	32;	.endef
_read_str:
LFB32:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 40
	mov	DWORD PTR [esp+4], OFFSET FLAT:LC1
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_fopen
	mov	DWORD PTR [ebp-12], eax
	jmp	L9
L10:
	movsx	eax, BYTE PTR [ebp-13]
	mov	DWORD PTR [esp+4], eax
	mov	DWORD PTR [esp], OFFSET FLAT:LC2
	call	_printf
L9:
	mov	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR [esp], eax
	call	_getc
	mov	BYTE PTR [ebp-13], al
	cmp	BYTE PTR [ebp-13], -1
	jne	L10
	mov	DWORD PTR [esp], OFFSET FLAT:LC3
	call	_printf
	mov	eax, DWORD PTR [ebp-12]
	mov	DWORD PTR [esp], eax
	call	_fclose
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE32:
	.globl	_delete_str
	.def	_delete_str;	.scl	2;	.type	32;	.endef
_delete_str:
LFB33:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_remove
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE33:
	.globl	_change_str
	.def	_change_str;	.scl	2;	.type	32;	.endef
_change_str:
LFB34:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 24
	mov	eax, DWORD PTR [ebp+12]
	mov	DWORD PTR [esp+4], eax
	mov	eax, DWORD PTR [ebp+8]
	mov	DWORD PTR [esp], eax
	call	_rename
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE34:
	.ident	"GCC: (GNU) 10-win32 20220113"
	.def	___mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_fopen;	.scl	2;	.type	32;	.endef
	.def	_fclose;	.scl	2;	.type	32;	.endef
	.def	_fputc;	.scl	2;	.type	32;	.endef
	.def	_getc;	.scl	2;	.type	32;	.endef
	.def	_remove;	.scl	2;	.type	32;	.endef
	.def	_rename;	.scl	2;	.type	32;	.endef
