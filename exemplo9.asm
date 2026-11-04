# Exemplo 9

.text						# Muda para a seção .text (código)
	li a7, 5				# Configura a chamada de sistema para ler um número inteiro da entrada padrão (console)
	ecall					# Instrução para chamada de sistema
	mv a1, a0				# Inteiro lido é movido por padrão para registrador a0, move ele para registrador a1
	li a7, 5				# Configura a chamada de sistema para ler outro número inteiro da entrada padrão (console)
	ecall					# Instrução para chamada de sistema
	add a0, a1,	a0			# Soma os números lidos que estão nos registradores a0 e a1, resultado em a0
	li a7, 1				# Configura a chamada de sistema para imprimir um número inteiro na saída padrão (console)
	ecall					# Instrução para chamada de sistema
