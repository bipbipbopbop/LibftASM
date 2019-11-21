;  ----------------------------------------------------------------------------------------
;  int ft_toupper(int c);
;  ----------------------------------------------------------------------------------------


			global			ft_toupper

			section			.text
ft_toupper:
; rdi = PARAM c
; rax = RET an int (interpreted as a char) that represents:
;  - a uppercase letter if it is a letter,
;  - the ascii char passed by argument otherwise.

ft_islower:
			mov				rax, rdi

			cmp				rdi, 'a'
			jl				false
			cmp				rdi, 'z'
			jg				false

true:
			xor				rax,  0x20 ; toupper with XOR op
false:
			ret