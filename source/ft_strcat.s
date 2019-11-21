;  ----------------------------------------------------------------------------------------
;  void ft_strcat(char *dest, const char *src);
;  ----------------------------------------------------------------------------------------


			global			ft_strcat

			section			.text
ft_strcat:
; rdi = PARAM dest
; rsi = PARAM src
; rcx = Length of dest before concatenation
; r8b = tmp value

			mov				rcx, -1 ; pre-incrementation for optimization
strlen:
			inc				rcx
			cmp				BYTE [rdi + rcx], 0
			jne				strlen


			add				rdi, rcx
cat_loop:
			mov				BYTE r8b, [rsi]
			mov				BYTE [rdi], r8b
			inc				rsi ; Post-incrementation for the glory
			inc				rdi
			cmp				r8b, 0
			jne				cat_loop

			ret