;  ----------------------------------------------------------------------------------------
;  void ft_strcat(char *dest, const char *src);
;  ----------------------------------------------------------------------------------------


			global			_ft_strcat

			section			.text
_ft_strcat:
; rdi = PARAM dest
; rsi = PARAM src

			mov				rcx, -1 ; prepare rcx to hold strlen result
strlen:
			inc				rcx
			cmp				BYTE [rdi + rcx], 0
			jne				strlen


			add				rdi, rcx
cat_loop:
			mov				BYTE r8b, [rsi]
			mov				BYTE [rdi], r8b
			inc				rsi
			inc				rdi
			cmp				r8b, 0
			jne				cat_loop

			ret