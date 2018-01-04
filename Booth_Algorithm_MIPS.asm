main:
	li $v0, 4
	la $a0, msg
	syscall
	
	# Enter input1
	li $v0, 8
	la $a0, input1
	li $a1, 10
	syscall
	#  Find strlen(input1)
	jal strlen
	move $t2, $t0		# Store strlen(input1) in $t2
	
	li $v0, 4
	la $a0, msg1
	syscall
	# Enter input2
	li $v0, 8
	la $a0, input2
	li $a1, 10
	syscall
	#  Find strlen(input2)
	jal strlen
	move $t3, $t0		# Store strlen(input2) in $t3
 
   #------------------------ END TAKING INPUTS & SIZES -------------------------#
    # Formatting inputs
    la $a0, input1
    lb $t6, 0($a0) 
    la $a1, input1+8
    add $a0, $a0, $t2
    move  $t4, $t2
    jal reform

    la $a0, input2
    lb $t6, 0($a0) 
    la $a1, input2+8
    add $a0, $a0, $t3
    move  $t4, $t3
    jal reform
   #------------------------  END FORMATTING -------------------------#
li $s0, '0'
jal strcpy #PUT INPUT1 in Q

la $a0, tab
li $v0, 4
syscall

la $a0, nlin
li $v0, 4
syscall

la $a0, tab
li $v0, 4
syscall

li $t9, 9
LoopA:

la $a0, A
li $v0, 4
syscall

la $a0, newlin
li $v0, 4
syscall

la $a0, Q
li $v0, 4
syscall

la $a0, newlin
li $v0, 4
syscall

move $a0,$s0
li $v0, 11
syscall
la $a0, tab
li $v0, 4
syscall

	la $a0, Q+8
	lb $t0, 0($a0)
	bne $t0, '0', ELSE
	bne $s0, '1', ELSE
	j addr
	
	ELSE:
	bne $t0, '1', ELSE2
	bne $s0, '0', ELSE2
	j subr
	
	ELSE2:	
	jal shift
	
       subi $t9, $t9, 1
       beq $t9, -1, end
j LoopA

end:
li $v0, 10
syscall

#------------------------------------------------------#
strlen:
	li $t0, -1 
	loop:
	lbu $t1, 0($a0) 
	beqz $t1, exit1 
	beq $t1, '\n', exit1
	addi $a0, $a0, 1
	addi $t0, $t0, 1 
	j loop
exit1: jr $ra 
#-------------------------------------------------------#
reform:

	li $t7, 8
	loop2:
	beq $t4, -1, step2
	lb $t1, 0($a0)
	sb $t1, 0($a1)
	subi $t4, $t4, 1
	subi $t7, $t7, 1
	subi $a0, $a0, 1
	subi $a1, $a1, 1
	j loop2

	# Replace first digits with the sign
	step2: 
	sb $t6, 0($a1)
	subi $a1, $a1, 1
	subi $t7, $t7, 1
	beq $t7,-1, exit2
	j step2

	
exit2: jr $ra
#-------------------------------------------------------#
addr:
    li $v0, '0'
    
    la $t2, input1+8
    la $t3, A+8
    loop3:
    lb $t4, 0($t2)
    lb $t6, 0($t3)
    
    bne $t4, $t6, vbar
    beq $t4, $t6, vsar
    
    continue:
    subi $t3, $t3, 1
    subi $t2, $t2, 1
    subi $t0, $t0, 1
    beq $t0, -1, exit3
    j loop3
    
     vbar: #COPYRIGHTS: YOUNES MANSOURI
     li $t4, '1'
     sub $t6, $t4, $v0
     addi $t6, $t6, '0'
     sb $t6, 0($t3)
     j continue
     
     vsar:
     sb $v0, 0($t3)
     move $v0, $t4
     j continue
     	
exit3: j ELSE2
#-------------------------------------------------------#
subr:
    li $t0, 9
    
    li $v0, '0'
    
    la $t2, input1+8
    la $t3, A+8
    
    loop4:
    lb $t4, 0($t2)
    lb $t6, 0($t3)
    
    bne $t4, $t6, vbar1
    beq $t4, $t6, vsar1
    
    continue1:
    subi $t3, $t3, 1
    subi $t2, $t2, 1
    subi $t0, $t0, 1
    beq $t0, -1, exit4
    j loop4
    
     vbar1:
     li $t4, '1'
     sub $t6, $t4, $v0
     addi $t6, $t6, '0'
     sb $t6, 0($t3)
     move $v0, $t4
     j continue1
     
     vsar1:
     sb $v0, 0($t3)

     j continue1
      	
exit4: j ELSE2
#------------------------------------------------#
shift:
	li $t0, 8
	la $s1, Q+8
	la $s2, A+8
	li $s3, 1
	lb $s0, 0($s1) #s0 is the Q-1
	loopdec:
	sub $s1, $s1, $s3
	lb $t1, 0($s1)
	addi $s1, $s1, 1
	sb $t1, 0($s1)
	subi $t0, $t0, 1
	li $s3, 2
	beq $t0, 0, start_next
	j loopdec
   start_next:
   li $t0, 8
   la $s3, A
   lb $t4, 0($s3) #get first value ( will  be needed later to shift)
   		subi $s1, $s1, 1
   		lb $t1, 0($s2)
   		sb $t1, 0($s1)
   		li $s4, 1
   		#j loopdec1
   	loopdec1:	
	sub $s2, $s2,$s4
	lb $t1, 0($s2)
	addi $s2, $s2, 1
	sb $t1, 0($s2)
	subi $t0, $t0, 1
	li $s4,2
	beq $t0,0, last
	j loopdec1
   last :
    subi $s2, $s2, 1
    sb $t4, 0($s2)
jr $ra

#-------------------------------------------------------#
strcpy:
la $a0, input2+8
la $a1, Q+8

li $s4, 8
   loops:
   lb $t3, 0($a0)
   sb $t3, 0($a1)
   subi $a0, $a0, 1
   subi $a1, $a1, 1  
   subi $s4, $s4, 1
   beq $s4, -1, exit5
   j loops
exit5: jr $ra
#----------------------------------------------------------#
.data
input1: .space 10
input2: .space 10
A: .asciiz "000000000"
Q: .asciiz "000000000"
newlin: .asciiz " |I| "
nlin: .asciiz "    A	     Q	 L"
tab: .asciiz "\n--------------------------------\n"
msg: .asciiz "1) Taper M  : "
msg1: .asciiz "2) Taper Q  : "
.text
