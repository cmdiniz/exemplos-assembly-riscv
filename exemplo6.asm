# Exemplo 6

.data 						# Muda para a seção .data (dados)
a: .word 1					# Variável a inicializada com o valor 1
b: .word 8					# Variável b inicializada com o valor 8
c: .word -9					# Variável c inicializada com o valor 8
delta: .word				# Variável delta não inicializada

.text						# Muda para a seção .text (código)
	lw a0, a				# Carrega o valor a da memória no registrador a0
	lw a1, b				# Carrega o valor b da memória no registrador a1
	lw a2, c				# Carrega o valor c da memória no registrador a2
	mul t0,a1,a1  			# Calcula b^2 (b ao quadrado) multiplicando b por b, resultado no registrador t0
	slli t1,a0,2   			# Desloca a em 2 bits para esquerda (4*a), resultado no registrador t1
	mul t2,t1,a2  			# Multiplica por c (4*a por c), resultado no registrador t2
	sub a3,t0,t2  			# Calcula b^2 - 4*a*c, resultado no registrador a3
	sw a3, delta, t3		# Armazena na memória (variável delta) o valor do registrador a3, usa registrador t3 para cálculo do endereço
