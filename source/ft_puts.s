;  ----------------------------------------------------------------------------------------
;  int ft_puts(const char *s);
;  ----------------------------------------------------------------------------------------


			global			ft_puts

			section			.text
ft_puts:
; rdi = PARAM s
; rax = RET Non-negative value on success, EOF otherwise

; syscall write:
; rax = syscall value
; rdi = output stream
; rsi = string ptr
; rdx = Nb of char to print

			mov				rdx, -1 ; 3rd argument of syscall write: Nb of char to print
strlen:
			inc				rdx
			cmp				BYTE [rdi + rdx], 0
			jne				strlen


			mov				rax, 1 ; syscall for write (DIFFERENT FOR MACOS!!!)
			mov				rsi, rdi ; 2nd argument: string to be print
			mov				rdi, 1 ; 1st argument: standard output
			syscall
			cmp				rax, 0
			jl				error

			mov				rax, 1 ; syscall for write (DIFFERENT FOR MACOS!!!)
			lea				rsi, [EndOfString] ; 2nd argument: string to be print
			mov				rdi, 1 ; 1st argument: standard output
			mov				rdx, 1 ; 3rd argument of syscall write: Nb of char to print
			syscall ; write a \n
			ret

error:
			mov				rax, -1 ; the only value that can be passed if an error occurs is EOF (-1)
			ret
			
			section			.rodata
EndOfString	db				0x0A