# Programa retirado do livro RISC-V Assembly Programming, de Edson Borin.
# https://riscv-programming.org/book/riscv-book.html

.globl main             # Indica que a função principal é main

.text                   # Muda para a seção .text (código)

# sum(10, 20, 30, 40, 50, 60, 70, 80, 90, 100)
main:                   # Programa principal          
    li a0, 10           # Coloca o valor constante 10 no registrador a0, primeiro parâmetro da função
    li a1, 20           # Coloca o valor constante 20 no registrador a1, segundo parâmetro da função
    li a2, 30           # Coloca o valor constante 30 no registrador a2, terceiro parâmetro da função
    li a3, 40           # Coloca o valor constante 40 no registrador a3, quarto parâmetro da função
    li a4, 50           # Coloca o valor constante 50 no registrador a4, quinto parâmetro da função
    li a5, 60           # Coloca o valor constante 60 no registrador a5, sexto parâmetro da função
    li a6, 70           # Coloca o valor constante 70 no registrador a6, sétimo parâmetro da função
    li a7, 80           # Coloca o valor constante 80 no registrador a7, oitavo parâmetro da função
    addi sp, sp, -8     # Ajusta a pilha para ter espaço para 2 palavras (8 bytes) 
    li t1, 100          # Coloca o valor constante 100 no registrador t1, nono parâmetro da função
    sw t1, 4(sp)        # Coloca o valor de t1 na pilha
    li t1, 90           # Coloca o valor constante 90 no registrador t1, décimo parâmetro da função
    sw t1, 0(sp)        # Coloca o valor de t1 na pilha
    jal sum10           # Chamada da função sum10
    addi sp, sp, 8      # Ajusta o topo da pilha para deleter as 2 palavras (8 bytes) 
    li a7, 10	       
    ecall	            # Chamada de sistema para terminar programa

sum10:                  # Função sum10
    lw t1, 0(sp)        # Carrega o valor do topo da pilha no registrador t1
    lw t2, 4(sp)        # Carrega o valor da pilha no registrador t2
    add a0, a0, a1      # Soma os dois primeiros parâmetros passados para a função (em a0 e a1), resultado em a0
    add a0, a0, a2      # Soma o a0 com o terceiro parâmetro passado para a função (em a2), resultado em a0
    add a0, a0, a3      # Soma o a0 com o quarto parâmetro passado para a função (em a3), resultado em a0
    add a0, a0, a4      # Soma o a0 com o quinto parâmetro passado para a função (em a4), resultado em a0
    add a0, a0, a5      # Soma o a0 com o sexto parâmetro passado para a função (em a5), resultado em a0
    add a0, a0, a6      # Soma o a0 com o sétimo parâmetro passado para a função (em a6), resultado em a0
    add a0, a0, a7      # Soma o a0 com o oitavo parâmetro passado para a função (em a7), resultado em a0
    add a0, a0, t1      # Soma o a0 com o nono parâmetro passado para a função (em t1), resultado em a0
    add a0, a0, t2      # Soma o a0 com o décimo parâmetro passado para a função (em t2), resultado em a0
    ret                 # Retorna da função
