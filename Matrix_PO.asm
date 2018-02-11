
	mov    (%r10),%rax                                     ! 0x00007ff82fd8e680
	mov    0x8(%r9),%rcx                                   ! 0x00007ff82fd8e683
	cmp    %rcx,%rax                                       ! 0x00007ff82fd8e687
	jne    0x7ff82fd8ee6d  
	cmp    %r8,%rax                                        ! 0x00007ff82fd8e690
	jne    0x7ff82fd8ee6d
	movzwl 0x8(%rdi),%eax                                  ! 0x00007ff82fd8e699
	sub    %rax,0xc0(%rbx)                                 ! 0x00007ff82fd8e69d
	mov    0x138(%rbx),%r14                                ! 0x00007ff82fd8e6a4
	test   %r14,%r14                                       ! 0x00007ff82fd8e6ab
	je     0x7ff82fd8e7cd 
	movzwl 0x8(%rdi),%edx                                  ! 0x00007ff82fd8e6b4
	mov    0x8(%r14),%ecx                                  ! 0x00007ff82fd8e6b8
	cmp    %rcx,%rdx                                       ! 0x00007ff82fd8e6bc
	jae    0x7ff82fd8e882 
	mov    %rdx,%rcx                                       ! 0x00007ff82fd8e6c5
	mov    %rdx,0xe0(%rsp)                                 ! 0x00007ff82fd8e6c8
	mov    %rdx,%r12                                       ! 0x00007ff82fd8e6d0
	mov    %rdx,0x78(%rsp)                                 ! 0x00007ff82fd8e6d3
	mov    %ecx,%r15d                                      ! 0x00007ff82fd8e6d8
	sub    0x18(%r14),%r15d                                ! 0x00007ff82fd8e6db
	cmpl   $0x0,0xc(%r14)                                  ! 0x00007ff82fd8e6df
	jne    0x7ff82fd8ed76 
	mov    %r15d,%eax                                      ! 0x00007ff82fd8e6ea
	lea    0x0(,%rax,8),%rdx                               ! 0x00007ff82fd8e6ed
	mov    %rdx,0x78(%rsp)                                 ! 0x00007ff82fd8e6f5
	mov    0x30(%r14),%r13                                 ! 0x00007ff82fd8e6fa
	add    %rdx,%r13                                       ! 0x00007ff82fd8e6fe
	mov    0x0(%r13),%r11                                  ! 0x00007ff82fd8e701
	decl   0x10(%r14)                                      ! 0x00007ff82fd8e705
	mov    0x8(%r14),%eax                                  ! 0x00007ff82fd8e709
	lea    -0x1(%rax),%edx                                 ! 0x00007ff82fd8e70d
	cmp    %edx,%ecx                                       ! 0x00007ff82fd8e710
	je     0x7ff82fd8e939  
	cmp    %r8,%r11                                        ! 0x00007ff82fd8e718
	jne    0x7ff82fd8e931  
	mov    %eax,0x90(%rsp)                                 ! 0x00007ff82fd8e721
	cmpq   $0x0,(%r14)                                     ! 0x00007ff82fd8e728
	cmove  %edx,%eax                                       ! 0x00007ff82fd8e72c
	mov    %eax,0x90(%rsp)                                 ! 0x00007ff82fd8e72f
	cmp    %eax,%ecx                                       ! 0x00007ff82fd8e736
	jae    0x7ff82fd8e959 
	mov    (%r8),%r13                                      ! 0x00007ff82fd8e73e
	cmp    0x20(%r14),%r13                                 ! 0x00007ff82fd8e741
	je     0x7ff82fd8e79d
	lea    -0x10(%r13),%r8                                 ! 0x00007ff82fd8e747
	mov    0x8(%r8),%eax                                   ! 0x00007ff82fd8e74b
	mov    %eax,0x160(%rsp)                                ! 0x00007ff82fd8e74f
	cmpl   $0x0,0x7c(%rbx)                                 ! 0x00007ff82fd8e756
	je     0x7ff82fd8e784  
	mov    0x88(%rbx),%edx                                 ! 0x00007ff82fd8e75c
	xor    %eax,%edx                                       ! 0x00007ff82fd8e762
	mov    %edx,0x160(%rsp)                                ! 0x00007ff82fd8e764
	mov    %edx,%ecx                                       ! 0x00007ff82fd8e76b
	shr    $0x10,%ecx                                      ! 0x00007ff82fd8e76d
	mov    %edx,%eax                                       ! 0x00007ff82fd8e770
	shr    $0x8,%eax                                       ! 0x00007ff82fd8e772
	xor    %al,%cl                                         ! 0x00007ff82fd8e775
	xor    %dl,%cl                                         ! 0x00007ff82fd8e777
	shr    $0x18,%edx                                      ! 0x00007ff82fd8e779
	cmp    %cl,%dl                                         ! 0x00007ff82fd8e77c
	jne    0x7ff82fd8ed7f 
	movzwl 0x160(%rsp),%eax                                ! 0x00007ff82fd8e784
	sub    %eax,%r12d                                      ! 0x00007ff82fd8e78c
	mov    %r12d,0xc4(%rsp)                                ! 0x00007ff82fd8e78f
	je     0x7ff82fd8e924
	mov    0x30(%r14),%rax                                 ! 0x00007ff82fd8e79d
	mov    0x78(%rsp),%rcx                                 ! 0x00007ff82fd8e7a1
	xor    %r13d,%r13d                                     ! 0x00007ff82fd8e7a6
	mov    %r13,(%rcx,%rax,1)                              ! 0x00007ff82fd8e7a9
	mov    %r15d,%eax                                      ! 0x00007ff82fd8e7ad
	shr    $0x5,%eax                                       ! 0x00007ff82fd8e7b0
	and    $0x1f,%r15d                                     ! 0x00007ff82fd8e7b3
	mov    $0x1,%edx                                       ! 0x00007ff82fd8e7b7
	movzbl %r15b,%ecx                                      ! 0x00007ff82fd8e7bc
	shl    %cl,%edx                                        ! 0x00007ff82fd8e7c0
	mov    %eax,%ecx                                       ! 0x00007ff82fd8e7c2
	mov    0x28(%r14),%rax                                 ! 0x00007ff82fd8e7c4
	not    %edx                                            ! 0x00007ff82fd8e7c8
	and    %edx,(%rax,%rcx,4)                              ! 0x00007ff82fd8e7ca
	mov    %r9,(%r10)                                      ! 0x00007ff82fd8e7cd
	mov    %r10,0x8(%r9)                                   ! 0x00007ff82fd8e7d0
	testb  $0x8,0xa(%rdi)                                  ! 0x00007ff82fd8e7d4
	jne    0x7ff82fd8eaf3
	movzbl 0xa(%rdi),%eax                                  ! 0x00007ff82fd8e7de
	test   $0x4,%al                                        ! 0x00007ff82fd8e7e2
	jne    0x7ff82fd8edc6 
	movb   $0x0,0xa(%rdi)                                  ! 0x00007ff82fd8e7ea
	movb   $0x0,0xf(%rdi)                                  ! 0x00007ff82fd8e7ee
	mov    %rdi,%rsi                                       ! 0x00007ff82fd8e7f2
	mov    %rdi,0xf8(%rsp)                                 ! 0x00007ff82fd8e7f5
	movzwl 0x8(%rdi),%eax                                  ! 0x00007ff82fd8e7fd
	mov    0x58(%rsp),%rcx                                 ! 0x00007ff82fd8e801
	add    %rax,%rcx                                       ! 0x00007ff82fd8e806
	mov    %rcx,0x58(%rsp)                                 ! 0x00007ff82fd8e809
	mov    %cx,0x8(%rdi)                                   ! 0x00007ff82fd8e80e
	mov    0x58(%rsp),%rcx                                 ! 0x00007ff82fd8e812
	mov    %rcx,%rdx                                       ! 0x00007ff82fd8e817
	add    %rdx,%rdx                                       ! 0x00007ff82fd8e81a
	movzwl 0x8c(%rbx),%eax                                 ! 0x00007ff82fd8e81d
	xor    %cx,%ax                                         ! 0x00007ff82fd8e824
	mov    %ax,0xc(%rdi,%rdx,8)                            ! 0x00007ff82fd8e827
	movzbl 0x48(%rsp),%r14d                                ! 0x00007ff82fd8e82c
	mov    0x58(%rsp),%r8                                  ! 0x00007ff82fd8e832
	jmpq   0x7ff82fd8deb5 
	test   %edx,%edx                                       ! 0x00007ff82fd8e83c
	jne    0x7ff82fd8e2ed  
	mov    0x240(%rsp),%rsi                                ! 0x00007ff82fd8e844
	mov    (%r14),%r14                                     ! 0x00007ff82fd8e84c
	mov    0x18(%r14),%r12d                                ! 0x00007ff82fd8e84f
	mov    %r12,0xa0(%rsp)                                 ! 0x00007ff82fd8e853
	xor    %r13d,%r13d                                     ! 0x00007ff82fd8e85b
	jmpq   0x7ff82fd8e19c 
	movzwl 0xc(%rsi),%eax                                  ! 0x00007ff82fd8e863
	cmp    %ax,0x8c(%rbx)                                  ! 0x00007ff82fd8e867
	jne    0x7ff82fd8e13c 
	jmpq   0x7ff82fd8ec37
	mov    0x0(%r13),%rdi                                
	jmpq   0x7ff82fd8e32f  
	mov    (%r14),%rax                                     ! 0x00007ff82fd8e882
	test   %rax,%rax                                       ! 0x00007ff82fd8e885
	je     0x7ff82fd8e942   
	mov    %rax,%r14                                       ! 0x00007ff82fd8e88e
	jmpq   0x7ff82fd8e6b8  
	cmpl   $0x0,0xc(%r14)                                  ! 0x00007ff82fd8e896
	jne    0x7ff82fd8f2de 
	mov    0x30(%r14),%rax                                 ! 0x00007ff82fd8e8a1
	mov    (%rax,%r12,8),%rsi                              ! 0x00007ff82fd8e8a5
	cmp    %rsi,%r13                                       ! 0x00007ff82fd8e8a9
	je     0x7ff82fd8e906  
	lea    -0x10(%rsi),%r8                                 ! 0x00007ff82fd8e8ae
	mov    0x8(%r8),%eax                                   ! 0x00007ff82fd8e8b2
	mov    %eax,0x1a0(%rsp)                                ! 0x00007ff82fd8e8b6
	cmpl   $0x0,0x7c(%rbx)                                 ! 0x00007ff82fd8e8bd
	je     0x7ff82fd8e8eb
	mov    0x88(%rbx),%edx                                 ! 0x00007ff82fd8e8c3
	xor    %eax,%edx                                       ! 0x00007ff82fd8e8c9
	mov    %edx,0x1a0(%rsp)                                ! 0x00007ff82fd8e8cb
	mov    %edx,%ecx                                       ! 0x00007ff82fd8e8d2
	shr    $0x10,%ecx                                      
	mov    %edx,%eax                                      
	shr    $0x8,%eax                                       
	xor    %al,%cl                                         
	xor    %dl,%cl                                       
	shr    $0x18,%edx                                     
	cmp    %cl,%dl                                        
	jne    0x7ff82fd8f2e6  
	movzwl 0x1a0(%rsp),%eax                             
	mov    %r15d,%ecx                               
	sub    %eax,%ecx                                    
	mov    %ecx,0xd8(%rsp)                               
	test   %ecx,%ecx                                     
	jg     0x7ff82fd8e951 
	mov    %rsi,%rdi                                     
	lea    0xed543(%rip),%r10       
	jmpq   0x7ff82fd8e32f 
	mov    %rax,(%r11)                                     
	jmpq   0x7ff82fd8e0ac 
	and    $0xf7,%al                                     
	mov    %al,(%r8)                                     
	jmpq   0x7ff82fd8ddf2
	mov    0x30(%r14),%rax                              
	mov    0x78(%rsp),%rcx                           
	mov    %r13,(%rcx,%rax,1)                         
	xor    %r13d,%r13d                             
	jmpq   0x7ff82fd8e7cd 
	decl   0x14(%r14)                             
	jmpq   0x7ff82fd8e718 
	dec    %ecx                                            
	mov    %rcx,0xe0(%rsp)                               
	jmpq   0x7ff82fd8e6d0
	mov    (%rsi),%rsi                                   
	jmpq   0x7ff82fd8e8a9
	mov    (%r8),%rax                  
	cmp    0x20(%r14),%rax                             
	jne    0x7ff82fd8e9ac 
	movq   $0x0,0x0(%r13)                           
	mov    %r15d,%eax                                      
	shr    $0x5,%eax                                     
	and    $0x1f,%r15d                                     
	mov    $0x1,%edx                                       
	movzbl %r15b,%ecx                                    
	shl    %cl,%edx                                       
	mov    %eax,%ecx                                      

