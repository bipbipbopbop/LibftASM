;  ----------------------------------------------------------------------------------------
;  void *ft_strdup(const char *s);
;  ----------------------------------------------------------------------------------------


			global			ft_strdup
			extern			ft_strlen
			extern			malloc
			extern			ft_puts

			section			.text
ft_strdup:
; rdi = PARAM s
; rcx = length of s
; rax = RET ptr to new string
; rsi = *s ptr, used for movsb

			push			rdi ; save *s ptr for rsi (later)
			and				rsp, -16 ; 0xFF...F0
			call			ft_strlen
			
			mov				rcx, rax ; Length of s
			inc				rcx ; +1 for the '\0'
			mov				rdi, rcx ; Number of bytes in s
			push			rcx ; save rcx for movsb op (later)
			;and				rsp, -16 ; 0xFF...F0 ; WHHYYYY IT DO NOT WORK

			call			malloc
			mov				rdi, rax ; save new allocated memory ptr in rdi for movsb
			pop				rcx ; restore rcx
			pop				rsi ; now hold the ptr to s

			rep				movsb

			ret