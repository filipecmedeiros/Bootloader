
	mov ax, 501h           ; Atualizar os registros de segmentos
  	mov ds, ax
	
comeco:
	mov ah, 00h		;limpando a tela
	mov al, 2
	int 10h
	
	mov ah,06h		;muda cor de fundo e fonte
	mov al,0
	mov bh,70h
	mov ch,0
	mov cl,0
	mov dh,19h
	mov dl,50h
	int 10h	
	
	mov si, string
	call impr

	mov si,string2
	call impr
	
	mov dword [contador],1		;usado na conversão para inteiro
	mov cx,0
	
	call ler			;ler numero e chama função de converter

	mov word [dia],cx		;cx esta com o dia em inteiro
	
	mov si, string1
	call impr

	mov dword [contador],1		;usado na conversão para inteiro
	mov cx,0

	call ler			;ler numero e chama função de converter

	mov word [mes],cx		;cx esta com mes em inteiro
	cmp cx,13
	jae numinvalido

;verifica qual o mes de nascimento
	cmp word [mes],1
	je mes1

	cmp word [mes],2
	je mes2

	cmp word [mes],3
	je mes3
	
	cmp word [mes],4
	je mes4

	cmp word [mes],5
	je mes5

	cmp word [mes],6
	je mes6

	cmp word [mes],7
	je mes7

	cmp word [mes],8
	je mes8

	cmp word [mes],9
	je mes9

	cmp word [mes],10
	je mes10

	cmp word [mes],11
	je mes11

	cmp word [mes],12
	je mes12

;verifica o dia de nascimento e pula para o respectivo signo
mes1:
	cmp word [dia],31
	ja numinvalido
	cmp word [dia],20
	jbe Capricornio
	ja Aquario

mes2:
	cmp word [dia],28
	ja numinvalido
	cmp word [dia],18
	jbe Aquario
	ja Peixes

mes3:
	cmp word [dia],31
	ja numinvalido
	cmp word [dia],19
	jbe Peixes
	ja Aries

mes4:
	cmp word [dia],30
	ja numinvalido
	cmp word [dia],20
	jbe Aries
	ja Touro

mes5:
	cmp word [dia],31
	ja numinvalido
	cmp word [dia],20
	jbe Touro
	ja Gemeos

mes6:
	cmp word [dia],30
	ja numinvalido
	cmp word [dia],20
	jbe Gemeos
	ja Cancer

mes7:
	cmp word [dia],31
	ja numinvalido
	cmp word [dia],21
	jbe Cancer
	ja Leao

mes8:
	cmp word [dia],31
	ja numinvalido
	cmp word [dia],22
	jbe Leao
	ja Virgem

mes9:
	cmp word [dia],30
	ja numinvalido
	cmp word [dia],22
	jbe Virgem
	ja Libra

mes10:
	cmp word [dia],31
	ja numinvalido
	cmp word [dia],22
	jbe Libra
	ja Escorpiao

mes11:
	cmp word [dia],30
	ja numinvalido
	cmp word [dia],21
	jbe Escorpiao
	ja Sargitario

mes12:
	cmp word [dia],31
	ja numinvalido
	cmp word [dia],21
	jbe Sargitario
	ja Capricornio

;muda de tela e imprime as caracteristicas de cada signo
Capricornio:
	mov ah, 00h		;limpando a tela
	mov al, 2
	int 10h

	mov bh,0e4h
	call cor

	mov si,capricornio
	call impr

	mov si,volta
	call impr
	mov si,end
	call impr 
	
	mov ah, 0
	int 16h

	cmp al,13
	je termina
	jmp comeco

Aquario:
	mov ah, 00h		;limpando a tela
	mov al, 2
	int 10h

	mov bh,74h
	call cor

	mov si,aquario
	call impr

	mov si,volta
	call impr
	mov si,end
	call impr 
	
	mov ah, 0
	int 16h

	cmp al,13
	je termina
	jmp comeco

Aries:
	mov ah, 00h		;limpando a tela
	mov al, 2
	int 10h

	mov bh,4eh
	call cor

	mov si,aries
	call impr
	
	mov si,volta
	call impr
	mov si,end
	call impr 
	
	mov ah, 0
	int 16h

	cmp al,13
	je termina
	jmp comeco

Touro:	
	mov ah, 00h		;limpando a tela
	mov al, 2
	int 10h

	mov bh,0f8h
	call cor

	mov si,touro
	call impr
	
	mov si,volta
	call impr
	mov si,end
	call impr 
	
	mov ah, 0
	int 16h

	cmp al,13
	je termina
	jmp comeco

Gemeos:	
	mov ah, 00h		;limpando a tela
	mov al, 2
	int 10h

	mov bh,5bh
	call cor

	mov si,gemeos
	call impr
	
	mov si,volta
	call impr
	mov si,end
	call impr 
	
	mov ah, 0
	int 16h

	cmp al,13
	je termina
	jmp comeco

Cancer:
	mov ah, 00h		;limpando a tela
	mov al, 2
	int 10h

	mov bh,1eh
	call cor

	mov si,cancer
	call impr
	
	mov si,volta
	call impr
	mov si,end
	call impr 
	
	mov ah, 0
	int 16h

	cmp al,13
	je termina
	jmp comeco

Leao:
	mov ah, 00h		;limpando a tela
	mov al, 2
	int 10h

	mov bh,1dh
	call cor

	mov si,leao
	call impr
	
	mov si,volta
	call impr
	mov si,end
	call impr 
	
	mov ah, 0
	int 16h

	cmp al,13
	je termina
	jmp comeco

Virgem:
	mov ah, 00h		;limpando a tela
	mov al, 2
	int 10h

	mov bh,0c1h
	call cor

	mov si,virgem
	call impr
	
	mov si,volta
	call impr
	mov si,end
	call impr 
	
	mov ah, 0
	int 16h

	cmp al,13
	je termina
	jmp comeco

Libra:
	mov ah, 00h		;limpando a tela
	mov al, 2
	int 10h

	mov bh,90h
	call cor

	mov si,libra
	call impr
	
	mov si,volta
	call impr
	mov si,end
	call impr 
	
	mov ah, 0
	int 16h

	cmp al,13
	je termina
	jmp comeco

Escorpiao:
	mov ah, 00h		;limpando a tela
	mov al, 2
	int 10h

	mov bh,40h
	call cor

	mov si,escorpiao
	call impr
	
	mov si,volta
	call impr
	mov si,end
	call impr 
	
	mov ah, 0
	int 16h

	cmp al,13
	je termina
	jmp comeco

Sargitario:
	mov ah, 00h		;limpando a tela
	mov al, 2
	int 10h

	mov bh,0e0h
	call cor

	mov si,sargitario
	call impr
	
	mov si,volta
	call impr
	mov si,end
	call impr 
	
	mov ah, 0
	int 16h

	cmp al,13
	je termina
	jmp comeco

Peixes:
	mov ah, 00h		;limpando a tela
	mov al, 2
	int 10h

	mov bh,6fh
	call cor

	mov si,peixes
	call impr
	
	mov si,volta
	call impr
	mov si,end
	call impr 
	
	mov ah, 0
	int 16h

	cmp al,13
	je termina
	jmp comeco	

;função que ler o nuemro e converte para inteiro
ler: 
	mov ah, 0
	int 16h 

	cmp al,13
	je compa
	cmp al,48
	jb le
	cmp al,57
	ja le

	
compa:	cmp al,13		;verifica se terminou o numero
	je sai

	mov byte [guarda], al

	jmp str_to_int		;chama função que converte

comp: cmp dword [contador],1	;verifica se tem 2 digitos
	je mult
	jb soma

sloop:	dec dword [contador]	
	mov al,[guarda]			;imprime em tempo real o que foi digitado
	mov ah, 0EH
	mov bh,0
	int 10h
		

	jmp ler

mult:   mov dx,10		;se for o primeiro digito multiplica por 10
	mul dx
	mov cx,ax
	jmp sloop

soma:	add cx,ax		;se for o segundo numero soma com o anterior
	jmp sloop

sai: ret

le: 
	mov ah, 00h		;limpando a tela
	mov al, 2
	int 10h

	mov si,string3
	call impr

	mov si,string4
	call impr

	mov ah, 0
	int 16h

	jmp comeco 

numinvalido:
	
	mov ah, 00h		;limpando a tela
	mov al, 2
	int 10h
	
	mov si,string5
	call impr

	mov si,string4
	call impr

	mov ah, 0
	int 16h

	jmp comeco
	
	

;função que imprime
impr:	lodsb	;coloca caractere de si em al e incrementa si

	cmp al, 0
	je sair
	mov ah, 0eh		;imprimir na tela
	mov bh, 0
	int 10h
	jmp impr
	

sair: ret

;função que converte para inteiro
str_to_int:
   mov ah,0
   sub al, 48    ;subtrai caractere de '0'

  jmp comp

cor:
	mov ah,06h
	mov al,0
	mov ch,0
	mov cl,0
	mov dh,19h
	mov dl,50h
	int 10h	

	ret

;imprime 'curti'
termina:
	mov ah, 00h		;limpando a tela
	mov al, 2
	int 10h
	
	mov bh,0f1h
	call cor

	mov si, msg25
	call impr
	
	mov si, msg26
	call impr

	mov si, msg27
	call impr
	
	mov si, msg28
	call impr
	
	mov si, msg29
	call impr
	
	mov si, msg34
	call impr

	mov si, msg35
	call impr
	
	mov si, msg36
	call impr
	
	mov si, msg37
	call impr
	
	mov si, msg38
	call impr

	mov si, msg39
	call impr	
	
	mov si, msg40
	call impr
	
	mov si, msg41
	call impr
	
	mov si, msg42
	call impr

	mov si, msg47
	call impr

	mov si, msg48
	call impr

	mov si, msg49
	call impr	
	
	mov si, msg50
	call impr
	
	mov si, msg51
	call impr
	
	mov si, msg52
	call impr

	mov si, msg53
	call impr
	
	mov si, msg54
	call impr
	
	mov si, msg55
	call impr
	
	mov si, msg56
	call impr

	jmp $

	
string: db '------------------------------Horoscopo OS------------------------------',10,10,10,10,13,0
string1: db 10,10,13, ' Digite o mes < mm > do seu aniversario:',10,13,0
string2: db ' Digite o dia < dd > do seu aniversario:',10,13,0
string3: db 'Digite somente numero',10,10,10,13,0
string4: db 'Para voltar para o inicio, aperte qualquer tecla' ,10,13,0
string5: db 'Data invalida',10,10,13,0

capricornio: db 9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9, 'Signo: Capricornio ',10,10,13,9,9, 'Capricornio nao da ponto sem no, inclusive no amor. Se tem um signo que ',10,13, 'se destaca em materia de paciencia eh o seu.',10,10,13, 'Paraiso astral: Touro',10,13, 'Cavaleiro de ouro: Shura',10,13,0

aquario: db 9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9, 'Signo: Aquarios ',10,10,13,9,9, 'Para quem eh de Aquario, liberdade eh uma conquista diaria. Expressa a sua ',10,13, 'originalidade quando pode escolher entre mil opcoes, especialmente no amor',10,10,13, 'Paraiso astral: Gemeos',10,13, 'Cavaleiro de ouro: Camus',10,13,0 

peixes: db 9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9, 'Signo: Peixes ',10,10,13,9,9, 'Voce reune muitas qualidades e a que mais se destaca eh o seu lado humano.',10,13, 'Peixes tem o dom de despertar o amor.',10,10,13, 'Paraiso astral: Cancer',10,13, 'Cavaleiro de ouro: Afrodite',10,13,0

aries: db 9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9, 'Signo: Aries ',10,10,13,9,9, 'Embora conquistadora, voce eh uma pessoa que esta sempre reclamando',10,13, 'da sorte no amor. Provavelmente isso aconteca por que eh do tipo que,',10,13,'quando ama, se entrega pra valer.',10,10,13, 'Paraiso astral: Leao',10,13, 'Cavaleiro de ouro: Mu',10,13,0

touro: db 9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9, 'Signo: Touro ',10,10,13,9,9, 'Voce conhece bem o significado da palavra determinacao. Quando quer alguem,',10,13, 'nao existe o que abale a sua vontade.',10,10,13, 'Paraiso astral: Virgem',10,13,'Cavaleiro de ouro: Aldebaran',10,13,0

gemeos: db 9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9, 'Signo: Gemeos ',10,10,13,9,9, 'Voce se comunica de forma brilhante com o mundo. Este dom pode e deve',10,13, 'ser usado para conquistar satisfacao em sua vida, seja em que terreno for.',10,10,13, 'Paraiso astral: Libra',10,13, 'Cavaleiro de ouro: Saga',10,13,0

cancer: db 9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9, 'Signo: Cancer ',10,10,13,9,9, 'Seus sentimentos estao sempre em primeiro plano, ditando regras. Voce',10,13, 'eh uma pessoa dedicada, sincera e gosta de receber o mesmo dos outros,',10,13, 'principalmente no amor',10,10,13, 'Paraiso astral: Escorpiao',10,13, 'Cavaleiro de ouro: Mascara da morte',10,13,0

leao: db 9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9, 'Signo: Leao ',10,10,13,9,9, 'Voce tem criatividade e talento para liderar. Por ser uma pessoa muito',10,13,'orgulhosa,busca ser o centro das atencoes.',10,13, 'Paraiso astral: Sargitario',10,10,13, 'Cavaleiro de ouro: Aioria',10,13,0

virgem: db 9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9, 'Signo: Virgem ',10,10,13,9,9, 'Signo super organizado, voce engole seco quando tem de conviver com alguem',10,13, 'que nao acompanha o seu pique. Isso ate quando a sua paciencia aguenta',10,10,13, 'Paraiso astral: Capricornio',10,13, 'Cavaleiro de ouro: Shaka',10,13,0

libra: db 9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9, 'Signo: Libra ',10,10,13,9,9, 'Eh um dos signos mais charmosos do zodiaco. Aparencia eh fundamental para quem',10,13, 'eh deste signo, ainda mais se tem algum interesse amoroso em jogo.',10,10,13, 'Paraiso astral: Aquarios',10,13, 'Cavaleiro de ouro: Dohko',10,13,0

escorpiao: db 9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9, 'Signo: Escorpiao ',10,10,13,9,9, 'Eh muito envolvente, carrega uma aura de misterio em torno de si e',10,13, 'cativa com facilidade. Amores secretos sao um prato cheio para o seu signo.',10,10,13, 'Paraiso astral: Peixes',10,13, 'Cavaleiro de ouro: Miro',10,13,0

sargitario: db 9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9, 'Signo: Sargitario ',10,10,13,9,9, 'Voce adora estar de bem com a vida e com o mundo. O seu otimismo',10,13, 'e sua sinceridade sao marcas registradas.',10,13, 'Paraiso astral: Aries',10,10,13, 'Cavaleiro de ouro: Aioros',10,13,0


msg25: db 10,13, '                                  @@@@@@@@@X        ', 0                                
msg26: db 10,13, '                                 #@@iiSSi@@#        ', 0                                
msg27: db 10,13, '                                2@@      h@A        ', 0                                
msg28: db 10,13, '                               :@@,      A@H        ', 0                                
msg29: db 10,13, '                              .@@r      .@@r        ', 0                                                            
msg34: db 10,13, '                             .@@r       . @@S         ', 0                                
msg35: db 10,13, '                             @@h        . @@i         ', 0                                
msg36 db 10,13, '                             B@@         . @@@@@@@@@@@@B:  ', 0                            
msg37: db 10,13, ':A9999999999999999S       :@@@             :23AAHHHHHA@@@@M, ', 0                          
msg38: db 10,13, '@@@@@@@@@@@@@@@@@@@    .i@@@i                           :@@@ ', 0                          
msg39: db 10,13, '@@H:sssssssssssr2@@i5#@@@@s                              X@M ', 0                          
msg40: db 10,13, '#@G:rrrrrrrrrrr:i@@@@@#r                                 9@H ', 0                          
msg41: db 10,13, 'M@ArSS5S55S5SSSi2@@                                      h@H ', 0                          
msg42: db 10,13, 'M@M29hhhhhhhhh929@@                                      h@H ', 0                                                  
msg47: db 10,13, 'M@HS2XXXXXXXXXX53@@.                                     9@H ', 0                          
msg48: db 10,13, 'M@HS2XXXXXXXXXX53@@                                      G@H ', 0                          
msg49: db 10,13, 'M@HS2XXXXXXXXXX53@@                                      A@H ', 0                          
msg50: db 10,13, 'M@HS2XXXXXXXXXX53@@, .........                        .. &@H ', 0                          
msg51: db 10,13, 'M@HS2XXXXXXXXXX53@@,         ...                    .,.  9@H ', 0                          
msg52: db 10,13, 'M@Hi2XXXXXXXXX2S3@@r.::::::::   ....................,.   A@@ ', 0                          
msg53: db 10,13, 'M@Hi52222222222SX@@@@@@@@@@@@@2   ..................   s@@@: ', 0                          
msg54: db 10,13, '#@M239999999993Xh@@,        s@@@&.                   s@@@:   ', 0                          
msg55: db 10,13, 'M@@@@@@@@@@@@@@@@@@           :@@@@@@@@@@@@@@@@@@@@@@@@r     ', 0                          
msg56: db 10,13, '                                ,&MMMMMMMMMMMMMMMMMBAr       ', 0  


volta: db 10,10,13, 'Para voltar a pagina inicial, aperte qualquer tecla',0
end: db 10,10,13, 'Para finalizar, aperte enter',0
aux: resb 3
contador: resd 1
mes: resw 1
dia: resw 1
dez: dd 10
guarda: resb 1
