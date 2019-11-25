;  ----------------------------------------------------------------------------------------
;  int ft_isprint(int c);
;  ----------------------------------------------------------------------------------------

			global			_ft_isprint

			section			.text
_ft_isprint:
; rdi = PARAM c
; rax = RET an int (interpreted as a boolean) that tells if the character is printable

			xor				rax, rax
			
			cmp				rdi, ' ' ; 32
			jl				done
			cmp				rdi, '~' ; 126
			jg				done

			inc				rax ; set return value to 1 (true)
done:
			ret