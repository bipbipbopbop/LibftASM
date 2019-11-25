;  ----------------------------------------------------------------------------------------
;  void *ft_strdup(const char *s);
;  ----------------------------------------------------------------------------------------


			global			_ft_strdup
			extern			_ft_strlen
			extern			_malloc

			section			.text
_ft_strdup:
; rdi = PARAM s
; rcx = length of s
; rax = RET ptr to new string
; rsi = *s ptr, used for movsb

			sub				rsp, 8 ; 16 byte alignment
			push			rdi ; save *s ptr for rsi (later)
			call			_ft_strlen
			
			mov				rcx, rax ; Length of s
			inc				rcx ; +1 for the '\0'
			mov				rdi, rcx ; Number of bytes in s
			push			rcx ; save rcx for movsb op (later)

			call			_malloc
			mov				rdi, rax ; save new allocated memory ptr in rdi for movsb
			pop				rcx ; restore rcx
			pop				rsi ; now hold the ptr to s

			rep				movsb

			add				rsp, 8 ; restore rsp
			ret