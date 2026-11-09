# Exemplo 10

.data 					# Muda para a seção .data (dados)
x: .word 5				# Variável x inicializada com o valor 5
y: .word				# Variável y não inicializada

.text					# Muda para a seção .text (código)
	lw t2, x			# Carrega o valor x da memória no registrador t2
	slti s0, t2, 10		# Coloca 1 no registrador s0 caso o conteúdo de t2 seja menor que 10
	sw s0, y, t0		# Armazena na memória (variável y) o valor do registrador s0, usa registrador t0 para cálculo do endereço
