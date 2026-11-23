.data                       # Muda para a seção .data (dados)
g: .word 20                 # Variável g inicializada com o valor 20
h: .word 10                 # Variável h inicializada com o valor 10
i: .word 30                 # Variável i inicializada com o valor 30
j: .word 5                  # Variável j inicializada com o valor 5
f: .word                    # Variável f não inicializada

.globl main                 # Indica que a função principal é main

.text                       # Muda para a seção .text (código)

main:                       # Programa principal
    li t0, 45               # Carrega um valor qualquer em t0 para ver ele ser salvo na pilha e recuperado depois
    li t1, 54               # Carrega um valor qualquer em t1 para ver ele ser salvo na pilha e recuperado depois
    li s0, 34               # Carrega um valor qualquer em s0 para ver ele ser salvo na pilha e recuperado depois
    lw a0, g                # Carrega o primeiro argumento da função (variável g) no registrador a0
    lw a1, h                # Carrega o segundo argumento da função (variável h) no registrador a1
    lw a2, i                # Carrega o terceiro argumento da função (variável i) no registrador a2
    lw a3, j                # Carrega o quarto argumento da função (variável j) no registrador a3
    jal ra, leaf_example    # Chamada do procedimento leaf_example
    sw a0, f, t2            # Salva o valor que retornou do procedimento na variável f
    li a7, 10	                
    ecall	                # Chamada de sistema para terminar programa

leaf_example:

    addi sp, sp, -12        # Ajusta a pilha para ter espaço para 3 palavras (12 bytes)
    sw t0, 8(sp)            # Salva o registrador t0 na pilha para uso dele internamente na função
    sw t1, 4(sp)            # Salva o registrador t1 na pilha para uso dele internamente na função
    sw s0, 0(sp)            # Salva o registrador s0 na pilha para uso dele internamente na função
    add t0, a0, a1          # Calcula g+h, resultado em t0
    add t1, a2, a3          # Calcula i+j, resultado em t1
    sub s0, t0, t1          # Calcula (g+h) - (i+j), resultado em s0
    mv a0, s0               # Move o s0 para o valor padrão de retorno, registrador a0
    lw s0, 0(sp)            # Retira do topo da pilha o valor anterior de s0
    lw t1, 4(sp)            # Retira do topo da pilha o valor anterior de t1
    lw t0, 8(sp)            # Retira do topo da pilha o valor anterior de t0
    addi sp, sp, 12         # Ajusta o topo da pilha para deleter as 3 palavras (12 bytes)
    ret                     # Retorna da subrotina

