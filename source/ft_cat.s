;  ----------------------------------------------------------------------------------------
;  void ft_cat(const int fd);
;  ----------------------------------------------------------------------------------------


			global			_ft_cat
			extern			_ft_puts

			section			.text
_ft_cat:
; rdi = PARAM fd
; r10 is used to save the fd during all the execution of the function

			push			rbp
			mov				rbp, rsp
			sub				rsp, [rel BUFFER_SIZE] ; reserve a few bytes to store the read op
			mov				r10, rdi ; save rdi in r10

read_file:
; args for sys_read:
;  rdi = unsigned int fd (file descriptor)
;  rsi = char *buf (buffer to store the read data)
;  rdx = size_t count (how much byte we want to read)
;  rax = 0 (not 0 on macOS) && Nb of bytes read.

			mov				rsi, rsp
			mov				rdi, r10
			mov				rdx, [rel BUFFER_SIZE]
			mov				rax, 0x2000003 ; syscall read
			syscall

			cmp				rax, 0
			jle				read_error


write_file:
; args for sys_write:
;  rdi = unsigned int fd (1 == standard output)
;  rsi = const char *buf (our stack pointer)
;  rdx = size_t count (take the return value from read)
;  rax = 1 (not 1 on macOS) && Nb of bytes writed.

			mov				rsi, rsp
			mov				rdi, 1 
			mov				rdx, rax
			mov				rax, 0x2000004 ; syscall write
			syscall

			cmp				rax, 0
			jl				done

			jmp				read_file


read_error:
			cmp				rax, 0
			jz				done ; no error, we just have finish to read the file
			mov				rdi, WRONG_FD
			call			_ft_puts


done:
			mov				rsp, rbp ; restore stack ptr
			pop				rbp
			;leave
			ret

			section			.data
BUFFER_SIZE	dw				128 ; size of the red zone
WRONG_FD	db				"ft_cat: no such file or directory", 0 ; same msg than the CLI command
