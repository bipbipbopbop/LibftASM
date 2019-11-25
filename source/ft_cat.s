;  ----------------------------------------------------------------------------------------
;  void ft_cat(const int fd);
;  ----------------------------------------------------------------------------------------


			global			_ft_cat
			extern			_ft_puts


%define		BUFFER_SIZE		128

			section			.data
default rel
WRONG_FD	db				"ft_cat: no such file or directory", 0 ; same msg than the CLI command


			section			.text

_ft_cat:
; rdi = PARAM fd
; r12 is used to save the fd during all the execution of the function

			push			rbp
			push			r12
			mov				rbp, rsp
			sub				rsp, BUFFER_SIZE ; reserve a few bytes to store the read op
			mov				r12, rdi ; save rdi in r12

read_file:
; args for sys_read:
;  rdi = unsigned int fd (file descriptor)
;  rsi = char *buf (buffer where we store the read data)
;  rdx = size_t count (how much byte we want to read)
;  rax = syscall value && Nb of bytes read.

			mov				rdi, r12
			mov				rsi, rsp
			mov				rdx, BUFFER_SIZE
			mov				rax, 0x2000003 ; syscall read
			syscall

			cmp				rax, 0
			jle				read_error

;write_file:
; args for sys_write:
;  rdi = unsigned int fd (1 == standard output)
;  rsi = const char *buf (buffer where we store the read data)
;  rdx = size_t count (take the return value from read)
;  rax = syscall value && Nb of bytes writed.

			mov				rdi, 1
			mov				rsi, rsp
			mov				rdx, rax
			mov				rax, 0x2000004 ; syscall write
			syscall

			cmp				rax, 0
			jl				done

			jmp				read_file


read_error:
			cmp				rax, 0
			jz				done ; no error, we just have finish to read the file
			lea				rdi, [WRONG_FD]
			call			_ft_puts


done:
			mov				rsp, rbp ; restore stack ptr
			pop				r12
			pop				rbp
			ret