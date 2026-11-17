.data                   # Muda para a seção .data (dados)
a: .word 10             # Variável a inicializada com o valor 10
b: .word 25             # Variável n inicializada com o valor 25
maior: .word            # Variável maior não inicializada

.globl main             # Indica que a função principal é main

.text                   # Muda para a seção .text (código)

main:                   # Programa principal
    lw a0, a            # Primeiro argumento da subrotina
    lw a1, b            # Segundo argumento da subrotina
    jal ra, max         # ra = PC + 4, pula para 'max'
    sw a0, maior, t0    # Armazena resultado na variável maior
    li a7, 10	       
    ecall	            # Chamada de sistema para terminar programa

max:                    # Sub-rotina (função) int max(int a, int b)
    
    bge a0, a1, a_maior # se a>=b, salta para a_maior
    mv a0, a1           # b maior, move para a0
    ret                 # retorna da sub-rotina

a_maior:
    ret			        # retorna da sub-rotina
