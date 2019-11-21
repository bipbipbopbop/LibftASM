;  ----------------------------------------------------------------------------------------
;  int ft_isalnum(int c);
;  ----------------------------------------------------------------------------------------


			global			ft_isalnum
			extern			ft_isalpha
			extern			ft_isdigit
			extern			putchar

			section			.text
ft_isalnum:
; rdi = PARAM c (it is unused here but passed as an argument for ft_isalpha & ft_isdigit)
; rax = RET an int (interpreted as a boolean) that tells if the character is a num or a letter

; if you want to be rigorous, you should push any registers you want to save before call, and pop them after
; but i know they won't be modified with those functions

			call			ft_isalpha

			cmp				rax, 1
			je				done

			call			ft_isdigit
done:
			ret