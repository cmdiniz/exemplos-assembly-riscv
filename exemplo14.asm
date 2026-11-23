# Programa retirado do livro RISC-V Assembly Programming, de Edson Borin.
# https://riscv-programming.org/book/riscv-book.html

.data                   # Muda para a seção .data (dados)
   y: .word             # Variável y não inicializada

.globl main             # Indica que a função principal é main

.text                   # Muda para a seção .text (código)

main:                   # Programa principal
    la a0, y            # Seta o registrador a0 (primeiro parâmetro da função) com o endereço de y 
    jal inc             # Chamada do procedimento inc
    li a7, 10	       
    ecall	            # Chamada de sistema para terminar programa

inc:                    # Procedimento inc
    lw a1, (a0)         # Carrega no registrador a1 o valor da variável cujo endereço está no registrador a0
    addi a1, a1, 1      # Soma 1 no valor do registrador a1
    sw a1, (a0)         # Armazena o novo valor no mesmo endereço cujo ponteiro está no registrador a0
    ret                 # Retorna do procedimento
