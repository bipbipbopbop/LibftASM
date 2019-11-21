;  ----------------------------------------------------------------------------------------
;  int ft_isalpha(int c);
;  ----------------------------------------------------------------------------------------


			global			ft_isalpha

			section			.text
ft_isalpha:
; rdi = PARAM c
; rax = RET an int (interpreted as a boolean) that tell if the character is a letter

			xor				rax, rax
			
			cmp				rdi, 'A'
			jl				false
			cmp				rdi, 'Z'
			jle				true
			cmp				rdi, 'a'
			jl				false
			cmp				rdi, 'z'
			jg				false

true:
			inc				rax ; set return value to 1 (true)
false:
			ret