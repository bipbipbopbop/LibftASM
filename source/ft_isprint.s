;  ----------------------------------------------------------------------------------------
;  int ft_isprint(int c);
;  ----------------------------------------------------------------------------------------

; TO BE TESTED
			global			ft_isprint
			extern			ft_isalpha
			extern			ft_isdigit

			section			.text
ft_isprint:
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