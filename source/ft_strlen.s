;  ----------------------------------------------------------------------------------------
;  size_t ft_strlen(char *s);
;  ----------------------------------------------------------------------------------------


			global			_ft_strlen

			section			.text
_ft_strlen:
; rdi = PARAM s
; rax = RET length of the string

			mov				rcx, -1 ; set rcx to unsigned max value
			xor				al, al ; set al to 0 ('\0')
			cld ; clear direction flag (we want to increment our address)
			repnz			scasb ; decrement rcx for every char in the string including '\0'
			not				rcx ; reverse bits so we can have the nb of char in the string
			dec				rcx ; -1 because we don't want to count '\0'
			mov				rax, rcx ; mov result in rax
			ret