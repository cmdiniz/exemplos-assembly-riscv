# Exemplo 3

.data 					# Muda para a seção .data (dados)

x: .word 20 			# Variável inicializada com o valor 20
y: .word    			# Variável não inicializada

.text
	li t1, 10			# Carrega o valor constante 10 no registrador t1
	lw t2, x			# Carrega o valor x da memória no registrador t2
	blt t2, t1, pula 	# Desvia para o rótulo pula se t2<t1
	sw t2, y, t0		# Armazena na memória (variável y) o valor do registrador t2, usa registrador t0 para cálculo do endereço
pula:
