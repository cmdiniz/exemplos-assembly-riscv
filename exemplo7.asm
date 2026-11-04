# Exemplo 7

.data                   # Muda para a seção .data (dados)
x: .float 8.75          # Variável x inicializada com o valor 8.75
y: .float 1.5           # Variável y inicializada com o valor 1.75
z: .float               # Variável z não inicializada


.text                   # Muda para a seção .text (código)
 flw fa0, x, t0         # Carrega o valor x da memória no registrador fa0
 flw fa1, y, t0         # Carrega o valor y da memória no registrador fa1
 fadd.s fa2, fa0, fa1   # Soma os valores dos registradores fa0 e fa1, resultado no registrador fa2
 fsw fa2, z, t0         # Armazena na memória (variável z) o valor do registrador fa2, usa registrador t0 para cálculo do endereço

