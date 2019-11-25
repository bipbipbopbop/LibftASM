;  ----------------------------------------------------------------------------------------
;  void *ft_memcpy(void *dest, const void *src, size_t n);
;  ----------------------------------------------------------------------------------------


			global			_ft_memcpy

			section			.text
_ft_memcpy:
; rdi = PARAM dest
; rsi = PARAM src
; rdx = PARAM n
; rcx = Nb of char to set in s
; rax = RET dest
			cmp			rdi, rsi
			jnz			core ; jmp if operand aren't equals
			cmp			rdi, 0
			jnz			core
			ret ; both argument are NULL, somehow the real memcpy doesn't segfault this way
core:
			mov				rcx, rdx
			mov				rax, rdi
			rep				movsb ; move bytes from rsi (src) to rdi (dest)
			ret