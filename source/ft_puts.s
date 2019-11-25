;  ----------------------------------------------------------------------------------------
;  int ft_puts(const char *s);
;  ----------------------------------------------------------------------------------------


			global			_ft_puts

			section			.text
_ft_puts:
; rdi = PARAM s
; rax = RET Non-negative ('\n') value on success, EOF otherwise

			mov				rdx, -1 ; prepare rdx to hold strlen result
			cmp				rdi, 0
			jne				strlen

			; rsi == 0, th pointer is NULL
			lea				rdi, [rel NullStr]
			mov				rdx, 6
			jmp				core

strlen:
			inc				rdx
			cmp				BYTE [rdi + rdx], 0
			jne				strlen

core:
; syscall write:
; rax = syscall value
; rdi = output stream
; rsi = string ptr
; rdx = Nb of char to print

			mov				rax, 0x2000004 ; syscall write
			mov				rsi, rdi ; 2nd argument: string to be print
			mov				rdi, 1 ; 1st argument: standard output
			syscall
			cmp				rax, 0
			jl				error

			mov				rax, 0x2000004 ; syscall write
			lea				rsi, [rel EndOfString] ; 2nd argument: string to be print
			mov				rdi, 1 ; 1st argument: standard output
			mov				rdx, 1 ; 3rd argument of syscall write: Nb of char to print
			syscall ; write a \n
			mov				rax, 10 ; return value
			ret

error:
			mov				rax, -1 ; the only value that can be passed if an error occurs is EOF (-1)
			ret
			
			section			.rodata
EndOfString	db				0x0A
NullStr		db				"(null)", 0