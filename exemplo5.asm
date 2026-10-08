# Exemplo 5

.text						# Muda para a seção .text (código)
	li a1, 0				# Carrega o valor constante 0 no registrador a1
	li a2, 0				# Carrega o valor constante 0 no registrador a2
	li t1, 20				# Carrega o valor constante 20 no registrador t1
while:						# Rótulo while
	bge a1, t1, skip		# Desvia para o rótulo skip se a1<t1
	addi a2, a2, 3			# Soma a constante 3 no conteúdo do registrador a2, resultado no registrador a2
	addi a1, a1, 1			# Soma a constante 1 no conteúdo do registrador a1, resultado no registrador a1
	j while					# Desvia para o rótulo while
skip:						# Rótulo skip
