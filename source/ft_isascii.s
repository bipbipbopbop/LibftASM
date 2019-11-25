;  ----------------------------------------------------------------------------------------
;  int ft_isascii(int c);
;  ----------------------------------------------------------------------------------------


			global			_ft_isascii

			section			.text
_ft_isascii:
; rdi = PARAM c
; rax = RET an int (interpreted as a boolean) that tells if the character is an ascii value

			xor				rax, rax

			; we create a binary mask to check if the value is in the ascii range (0 - 0x7F)
			mov				r8, 0x7F 
			not				r8

			and				r8, rdi
			jnz				done

			inc				rax ; set return value to 1 (true)
done:
			ret