.data
x:     	.asciiz "	Digite o valor de X: "
y:	.asciiz "	Digite o valor de y: "
z:	.asciiz "	O resultado de X/Y (inteiro) é: "
a:	.asciiz "	O resultado de X*Y (inteiro) é: "
c:	.asciiz "	O resultado de X+Y (inteiro) é: "
d:	.asciiz "	O resultado de X-Y (inteiro) é: "
.text
# Fração
li $v0, 4 	# Imprime uma string
la $a0, x	# a0 = x
syscall		# Execute
li $v0, 5 	# Recebe um numero inteiro
syscall		# Execute
move $t1,$v0	# t1 = v0
li $v0, 4 	# imprime uma string
la $a0, y 	# a0 = y
syscall		# Execute
li $v0, 5 	# Recebe um numero inteiro
syscall		# Execute
move $t2,$v0	# t2 = v0
div $t3,$t1,$t2	# t3 = t1/t2
li $v0, 4	# Imprime uma string
la $a0, z	# a0 = z 
syscall		# Execute
li $v0, 1 	# Imprimir um numero inteiro
la $a0,($t3)	# a0 = t3
syscall		# Execute
# -------------------------------------------------------------
# Multiplicação
li $v0, 4 	# Imprime uma string
la $a0, x	# a0 = x
syscall		# Execute
li $v0, 5 	# Recebe um numero inteiro
syscall		# Execute
move $t1,$v0	# t1 = v0
li $v0, 4 	# imprime uma string
la $a0, y 	# a0 = y
syscall		# Execute
li $v0, 5 	# Recebe um numero inteiro
syscall		# Execute
move $t2,$v0	# t2 = v0
mul $t4,$t1,$t2 
li $v0, 4
la $a0, a
syscall
li $v0, 1
la $a0,($t4)
syscall
# -------------------------------------------------------------
# Soma
li $v0, 4 	# Imprime uma string
la $a0, x	# a0 = x
syscall		# Execute
li $v0, 5 	# Recebe um numero inteiro
syscall		# Execute
move $t1,$v0	# t1 = v0
li $v0, 4 	# imprime uma string
la $a0, y 	# a0 = y
syscall		# Execute
li $v0, 5 	# Recebe um numero inteiro
syscall		# Execute
move $t2,$v0	# t2 = v0
add $t5,$t1,$t2
li $v0, 4
la $a0, c
syscall
li $v0, 1
la $a0,($t5)
syscall
# -------------------------------------------------------------
# Subtração
li $v0, 4 	# Imprime uma string
la $a0, x	# a0 = x
syscall		# Execute
li $v0, 5 	# Recebe um numero inteiro
syscall		# Execute
move $t1,$v0	# t1 = v0
li $v0, 4 	# imprime uma string
la $a0, y 	# a0 = y
syscall		# Execute
li $v0, 5 	# Recebe um numero inteiro
syscall		# Execute
move $t2,$v0	# t2 = v0
sub $t6,$t1,$t2
li $v0, 4
la $a0, d
syscall
li $v0, 1
la $a0,($t6)
syscall
# Prepara o programa ser finalizado
li $v0, 10
syscall
