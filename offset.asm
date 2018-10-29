main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     DWORD PTR [rbp-20], 4
        mov     DWORD PTR [rbp-48], 10
        mov     DWORD PTR [rbp-44], 11
        mov     DWORD PTR [rbp-40], 12
        mov     DWORD PTR [rbp-36], 13
        mov     DWORD PTR [rbp-4], 0
.L5:
        cmp     DWORD PTR [rbp-4], 3
        jg      .L2
        mov     DWORD PTR [rbp-8], 0
.L4:
        cmp     DWORD PTR [rbp-8], 3
        jg      .L3
        lea     rax, [rbp-48]
        mov     QWORD PTR [rbp-32], rax
        add     DWORD PTR [rbp-8], 1
        jmp     .L4
.L3:
        add     DWORD PTR [rbp-4], 1
        jmp     .L5
.L2:
        mov     DWORD PTR [rbp-12], 0
.L9:
        cmp     DWORD PTR [rbp-12], 3
        jg      .L6
        mov     DWORD PTR [rbp-16], 0
.L8:
        cmp     DWORD PTR [rbp-16], 3
        jg      .L7
        mov     esi, OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
        mov     edi, OFFSET FLAT:_ZSt4cout
        call    std::basic_ostream<char, std::char_traits<char> >::operator<<(std::basic_ostream<char, std::char_traits<char> >& (*)(std::basic_ostream<char, std::char_traits<char> >&))
        add     DWORD PTR [rbp-16], 1
        jmp     .L8
.L7:
        add     DWORD PTR [rbp-12], 1
        jmp     .L9
.L6:
        mov     eax, 0
        leave
        ret
__static_initialization_and_destruction_0(int, int):
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], edi
        mov     DWORD PTR [rbp-8], esi
        cmp     DWORD PTR [rbp-4], 1
        jne     .L13
        cmp     DWORD PTR [rbp-8], 65535
        jne     .L13
        mov     edi, OFFSET FLAT:_ZStL8__ioinit
        call    std::ios_base::Init::Init() [complete object constructor]
        mov     edx, OFFSET FLAT:__dso_handle
        mov     esi, OFFSET FLAT:_ZStL8__ioinit
        mov     edi, OFFSET FLAT:_ZNSt8ios_base4InitD1Ev
        call    __cxa_atexit
.L13:
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
