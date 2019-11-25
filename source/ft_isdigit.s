;  ----------------------------------------------------------------------------------------
;  int ft_isdigit(int c);
;  ----------------------------------------------------------------------------------------


			global			_ft_isdigit

			section			.text
_ft_isdigit:
; rdi = PARAM c
; rax = RET an int (interpreted as a boolean) that tells if the character is a num

			xor				rax, rax
			
			cmp				rdi, '0'
			jl				done
			cmp				rdi, '9'
			jg				done

			inc				rax ; set return value to 1 (true)
done:
			ret