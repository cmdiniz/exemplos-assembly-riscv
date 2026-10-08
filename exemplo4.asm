# Exemplo 4

.data 					# Muda para a seção .data (dados)
x: .word 20 			# Variável x inicializada com o valor 20
y: .word				# Variável y não inicializada

.text
	li t1, 10			# Carrega o valor constante 10 no registrador t1
	lw a1, x			# Carrega o valor x da memória no registrador a1
	blt a1, t1, else 	# Desvia para o rótulo else se a1<t1
	addi a2, a1, 1		# Soma a constante 1 no conteúdo do registrador a1, resultado no registrador a2
	sw a2, y, t0		# Armazena na memória (variável y) o valor do registrador a2, usa registrador t0 para cálculo do endereço
	j cont				# Desvia para o rótulo cont 
else:					# Rótulo else
	sw a1, y, t0		# Armazena na memória (variável y) o valor do registrador a1, usa registrador t0 para cálculo do endereço
cont:					# Rótulo cont
