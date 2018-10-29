.LC0:
        .string "10"
.LC1:
        .string "21"
.LC2:
        .string "32"
.LC3:
        .string "43"
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     QWORD PTR [rbp-48], OFFSET FLAT:.LC0
        mov     QWORD PTR [rbp-40], OFFSET FLAT:.LC1
        mov     QWORD PTR [rbp-32], OFFSET FLAT:.LC2
        mov     QWORD PTR [rbp-24], OFFSET FLAT:.LC3
        mov     DWORD PTR [rbp-4], 0
.L3:
        cmp     DWORD PTR [rbp-4], 3
        jg      .L2
        lea     rax, [rbp-48]
        mov     esi, 1
        mov     rdi, rax
        call    PrintOutOf(char**, int)
        add     DWORD PTR [rbp-4], 1
        jmp     .L3
.L2:
        lea     rax, [rbp-48]
        mov     esi, 2
        mov     rdi, rax
        call    PrintOutOf2(char**, int)
        mov     eax, 0
        leave
        ret
PrintOutOf(char**, int):
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-8], rdi
        mov     DWORD PTR [rbp-12], esi
        nop
        pop     rbp
        ret
PrintOutOf2(char**, int):
        push    rbp
        mov     rbp, rsp
        mov     QWORD PTR [rbp-8], rdi
        mov     DWORD PTR [rbp-12], esi
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
        jne     .L9
        cmp     DWORD PTR [rbp-8], 65535
        jne     .L9
        mov     edi, OFFSET FLAT:_ZStL8__ioinit
        call    std::ios_base::Init::Init() [complete object constructor]
        mov     edx, OFFSET FLAT:__dso_handle
        mov     esi, OFFSET FLAT:_ZStL8__ioinit
        mov     edi, OFFSET FLAT:_ZNSt8ios_base4InitD1Ev
        call    __cxa_atexit
.L9:
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
