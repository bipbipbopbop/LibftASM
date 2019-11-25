;  ----------------------------------------------------------------------------------------
;  int ft_isalnum(int c);
;  ----------------------------------------------------------------------------------------


			global			_ft_isalnum
			extern			_ft_isalpha
			extern			_ft_isdigit
			extern			putchar

			section			.text
_ft_isalnum:
; rdi = PARAM c
; rax = RET an int (interpreted as a boolean) that tells if the character is a num or a letter
; NB: if you want to be rigorous, you should push any registers you want to save before call, and pop them after
; but i know they won't be modified with those functions

			call			_ft_isalpha

			cmp				rax, 1
			je				done

			call			_ft_isdigit
done:
			ret