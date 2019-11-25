;  ----------------------------------------------------------------------------------------
;  int ft_tolower(int c);
;  ----------------------------------------------------------------------------------------


			global			_ft_tolower

			section			.text
_ft_tolower:
; rdi = PARAM c
; rax = RET an int (interpreted as a char) that represents:
;  - a lowercase letter if it is a letter,
;  - the ascii char passed by argument otherwise.

ft_isupper:
			mov				rax, rdi

			cmp				rdi, 'A'
			jl				false
			cmp				rdi, 'Z'
			jg				false

true:
			xor				rax,  0x20 ; tolower with XOR op
false:
			ret