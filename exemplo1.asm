# Exemplo 1

li a0, 1        # Carrega o valor constante 1 no registrador a0
li a1, 2        # Carrega o valor constante 2 no registrador a1
add a2, a1, a0  # Soma o conteúdo dos registradores a0 e a1, coloca o resultado no registrador a2
slli a3, a2, 1  # Desloca para esquerda em 1 bit o conteúdo do registrador a2, coloca o resultado no registrador a3
