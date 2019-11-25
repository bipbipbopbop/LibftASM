;  ----------------------------------------------------------------------------------------
;  void *ft_memset(void *s, int c, size_t n);
;  ----------------------------------------------------------------------------------------


			global			_ft_memset

			section			.text
_ft_memset:
; rdi = PARAM s
; sil = PARAM c
; rdx = PARAM n
; rax = RET s

			mov				rcx, rdx ; rcx hold 'n' value
			mov				al, sil
			cld
			rep				stosb
			sub				rdi, rdx
			mov				rax, rdi
			ret