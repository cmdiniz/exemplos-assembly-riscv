# Exemplo 8

.data 						# Muda para a seção .data (dados)
a: .float 1.0				# Variável a inicializada com o valor 1.0
b: .float 8.0				# Variável b inicializada com o valor 8.0
c: .float -9.0				# Variável c inicializada com o valor -9.0
delta: .float				# Variável delta não inicializada

.text						# Muda para a seção .text (código)
	flw fa0, a, t0			# Carrega o valor a da memória no registrador fa0, usa registrador t0 para cálculo do endereço
	flw fa1, b, t0			# Carrega o valor b da memória no registrador fa1, usa registrador t0 para cálculo do endereço
	flw fa2, c, t0			# Carrega o valor c da memória no registrador fa2, usa registrador t0 para cálculo do endereço
	fmul.s ft0,fa1,fa1  	# Calcula b^2 (b ao quadrado) multiplicando b por b, resultado no registrador ft0
	li t1, 4				# Carrega a constante 4 no registrador t1
	fcvt.s.w ft1,t1			# Converte a constante 4 (inteira) no registrador t1 para ponto flutuante precisão simples e coloca no registrador ft1
	fmul.s ft2,ft1,fa0  	# Calcula 4*a, resultado no registrador ft2
	fmul.s ft3,ft2,fa2  	# Calcula 4*a*c, resultado no registrador ft3
	fsub.s ft4,ft0,ft3  	# Calcula b^2 - 4*a*c, resultado no registrador ft4
	fsw ft4, delta, t3		# Armazena na memória (variável delta) o valor do registrador ft4, usa registrador t3 para cálculo do endereço

