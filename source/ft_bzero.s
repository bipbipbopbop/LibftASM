;  ----------------------------------------------------------------------------------------
;  void ft_bzero(void *s, size_t n);
;  ----------------------------------------------------------------------------------------


			global			_ft_bzero

			section			.text
_ft_bzero:
; rdi = PARAM s
; rsi = PARAM n

; if n == 0, we will not do anything
			test			rsi, rsi
			jz				done

loop:
			mov				BYTE [rdi + rsi - 1], 0
			dec				rsi
			jnz				loop

done:
			ret