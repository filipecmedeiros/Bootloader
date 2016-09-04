org 0x7c00 
jmp 0x0000:start

start:

	; nunca se esqueca de zerar o ds,
	; pois apartir dele que o processador busca os 
	; dados utilizados no programa.
	
	xor ax, ax
	mov ds, ax

	;Início do seu código
	mov [disk], dl
	
; carregar boot 2 na memoria
read:	mov al, 1		;numero de setores
	mov ch, 0		;cilindro
	mov cl, 2		;setor
	mov dh, 0		;cabeça
	mov dl, [disk]		;drive
	mov ah, 02h		;interrupcao

	mov bx, 7e01h		;end on o boot2 sera carregado
	mov es, bx
	mov bx, 0
	int 13h

	jc read

	jmp 7e01h:0		;pula para onde o boot2 foi carregado

	jmp $

disk db 0

times 510-($-$$) db 0		; preenche o resto do setor com zeros 
dw 0xaa55					; coloca a assinatura de boot no final
							; do setor (x86 : little endian)


