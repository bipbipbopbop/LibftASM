;  ----------------------------------------------------------------------------------------
;  void *ft_memset(void *s, int c, size_t n);
;  ----------------------------------------------------------------------------------------


			global			_ft_memset

			section			.text
_ft_memset:
; rdi = PARAM s
; rsi, sil = PARAM c
; rdx = PARAM n
; rcx = Nb of char to set in s
; rax = RET s

			mov				rcx, rdx
			mov				al, sil
			cld
			rep				stosb
			sub				rdi, rdx
			mov				rax, rdi
			ret