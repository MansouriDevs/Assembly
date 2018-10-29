main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     DWORD PTR [rbp-12], 5
        mov     DWORD PTR [rbp-32], 0
        mov     DWORD PTR [rbp-28], 1
        mov     DWORD PTR [rbp-24], 2
        mov     DWORD PTR [rbp-20], 3
        mov     DWORD PTR [rbp-16], 4
        mov     DWORD PTR [rbp-4], 0
.L3:
        cmp     DWORD PTR [rbp-4], 4
        jg      .L2
        lea     rax, [rbp-32]
        mov     esi, 5
        mov     rdi, rax
        call    ModifyArray(int*, int)
        add     DWORD PTR [rbp-4], 1
        jmp     .L3
.L2:
        mov     DWORD PTR [rbp-8], 0
.L5:
        cmp     DWORD PTR [rbp-8], 4
        jg      .L4
        mov     eax, DWORD PTR [rbp-20]
        mov     edi, eax
        call    ModifyElement(int)
        add     DWORD PTR [rbp-8], 1
        jmp     .L5
.L4:
        mov     edi, OFFSET FLAT:_ZSt3cin
        call    std::basic_istream<char, std::char_traits<char> >::get()
        mov     eax, 0
        leave
        ret
ModifyArray(int*, int):
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-24], rdi
        mov     DWORD PTR [rbp-28], esi
        mov     DWORD PTR [rbp-4], 0
.L9:
        mov     eax, DWORD PTR [rbp-4]
        cmp     eax, DWORD PTR [rbp-28]
        jge     .L10
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rdx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rdx
        mov     edx, DWORD PTR [rax]
        mov     eax, DWORD PTR [rbp-4]
        cdqe
        lea     rcx, [0+rax*4]
        mov     rax, QWORD PTR [rbp-24]
        add     rax, rcx
        add     edx, edx
        mov     DWORD PTR [rax], edx
        add     DWORD PTR [rbp-4], 1
        jmp     .L9
.L10:
        nop
        pop     rbp
        ret
ModifyElement(int):
        push    rbp
        mov     rbp, rsp
        mov     DWORD PTR [rbp-4], edi
        nop
        pop     rbp
        ret
__static_initialization_and_destruction_0(int, int):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], edi
        mov     DWORD PTR [rbp-8], esi
        cmp     DWORD PTR [rbp-4], 1
        jne     .L14
        cmp     DWORD PTR [rbp-8], 65535
        jne     .L14
        mov     edi, OFFSET FLAT:_ZStL8__ioinit
        call    std::ios_base::Init::Init() [complete object constructor]
        mov     edx, OFFSET FLAT:__dso_handle
        mov     esi, OFFSET FLAT:_ZStL8__ioinit
        mov     edi, OFFSET FLAT:_ZNSt8ios_base4InitD1Ev
        call    __cxa_atexit
.L14:
        nop
        leave
        ret
_GLOBAL__sub_I_main:
        push    rbp
        mov     rbp, rsp
        mov     esi, 65535
        mov     edi, 1
        call    __static_initialization_and_destruction_0(int, int)
        pop     rbp
        ret
