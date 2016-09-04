
	mov ax, 7e01h           ; Atualizar os registros de segmentos
  	mov ds, ax
	
	mov [disk], dl

	mov ah, 00h		;limpar tela
	mov al, 3
	int 10h
	
	mov si, msg1		;imprime mensagem
	call impr
	
	call ponto
	
	mov si, msg2		;imprime mensagem
	call impr

	call ponto
	
	mov si, msg3		;imprime mensagem
	call impr
	
	call ponto

	mov si, msg4		;imprime mensagem
	call impr
	
	call ponto
	
;carregar kernel
ler:	mov al, 15		;numero de setores
	mov ch, 0		;cilindro
	mov cl, 3		;setor
	mov dh, 0		;cabeça
	mov dl, [disk]		;drive
	mov ah, 02h		;interrupcao

	mov bx, 501h		;end onde kernel é carregado
	mov es, bx
	mov bx, 0
	int 13h

	jc ler

	jmp 501h:0		;pula para endereço onde o kernel foi carregado

	jmp $



	jmp $

msg1: db 'Carregando arquivos do Sistema Operacional', 0
msg2: db 10, 13,'Configurando Sistema Operacional', 0
msg3: db 10, 13,'Alternando para modo protegido', 0
msg4: db 10, 13,'Iniciando Sistema Operacional', 0
disk db 0

impr:	lodsb	;coloca caractere de si em al e incrementa si

	cmp al, 0
	je sair
	mov ah, 0eh		;imprimir na tela
	mov bh, 0
	int 10h
	jmp impr
	

sair: ret

ponto: 	mov al, '.'
	mov ah, 0eh
	mov bh, 0
	int 10h
	
	mov ah, 86h
	mov cx, 0eh
	mov dx, 0
	int 15h
	
	mov al, '.'
	mov ah, 0eh
	mov bh, 0
	int 10h
	
	mov ah, 86h
	mov cx, 0eh
	mov dx, 0
	int 15h
	
	mov al, '.'
	mov ah, 0eh
	mov bh, 0
	int 10h
	
	mov ah, 86h
	mov cx, 0eh
	mov dx, 0
	int 15h
	
ret
