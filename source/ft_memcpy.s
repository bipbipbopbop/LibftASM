;  ----------------------------------------------------------------------------------------
;  void *ft_memcpy(void *dest, const void *src, size_t n);
;  ----------------------------------------------------------------------------------------


			global			ft_memcpy

			section			.text
ft_memcpy:
; rdi = PARAM dest
; rsi = PARAM src
; rdx = PARAM n
; rcx = Nb of char to set in s
; rax = RET ptr to dest

			mov				rcx, rdx
			mov				rax, rdi
			rep				movsb ; move bytes from rsi (src) to rdi (dest)
			ret