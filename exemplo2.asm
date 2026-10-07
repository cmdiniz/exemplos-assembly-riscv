# Exemplo 2

.data # Muda para a seção .data (dados)

x: .word 10     # Variável inicializada com o valor 10 (4 bytes)
y: .word 10     # Variável inicializada com o valor 10 (4 bytes)
z: .word        # Variável não inicializada

.text # Muda para a seção .text (código)
 lw a0, x           # Carrega o valor x da memória no registrador a0
 lw a1, y           # Carrega o valor y da memória no registrador a1
 add a0, a0, a1     # Soma o conteúdo dos registradores a0 e a1, coloca o resultado no registrador a0
 sw a0, z, a1       # Armazena na memória (variável z) o valor do registrador a0, usa registrador a1 para cálculo do endereço

