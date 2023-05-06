
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000003000 <_init>:
    3000:	f3 0f 1e fa          	endbr64 
    3004:	48 83 ec 08          	sub    $0x8,%rsp
    3008:	48 8b 05 d9 6f 00 00 	mov    0x6fd9(%rip),%rax        # 9fe8 <__gmon_start__>
    300f:	48 85 c0             	test   %rax,%rax
    3012:	74 02                	je     3016 <_init+0x16>
    3014:	ff d0                	callq  *%rax
    3016:	48 83 c4 08          	add    $0x8,%rsp
    301a:	c3                   	retq   

Disassembly of section .plt:

0000000000003020 <.plt>:
    3020:	ff 35 aa 6e 00 00    	pushq  0x6eaa(%rip)        # 9ed0 <_GLOBAL_OFFSET_TABLE_+0x8>
    3026:	f2 ff 25 ab 6e 00 00 	bnd jmpq *0x6eab(%rip)        # 9ed8 <_GLOBAL_OFFSET_TABLE_+0x10>
    302d:	0f 1f 00             	nopl   (%rax)
    3030:	f3 0f 1e fa          	endbr64 
    3034:	68 00 00 00 00       	pushq  $0x0
    3039:	f2 e9 e1 ff ff ff    	bnd jmpq 3020 <.plt>
    303f:	90                   	nop
    3040:	f3 0f 1e fa          	endbr64 
    3044:	68 01 00 00 00       	pushq  $0x1
    3049:	f2 e9 d1 ff ff ff    	bnd jmpq 3020 <.plt>
    304f:	90                   	nop
    3050:	f3 0f 1e fa          	endbr64 
    3054:	68 02 00 00 00       	pushq  $0x2
    3059:	f2 e9 c1 ff ff ff    	bnd jmpq 3020 <.plt>
    305f:	90                   	nop
    3060:	f3 0f 1e fa          	endbr64 
    3064:	68 03 00 00 00       	pushq  $0x3
    3069:	f2 e9 b1 ff ff ff    	bnd jmpq 3020 <.plt>
    306f:	90                   	nop
    3070:	f3 0f 1e fa          	endbr64 
    3074:	68 04 00 00 00       	pushq  $0x4
    3079:	f2 e9 a1 ff ff ff    	bnd jmpq 3020 <.plt>
    307f:	90                   	nop
    3080:	f3 0f 1e fa          	endbr64 
    3084:	68 05 00 00 00       	pushq  $0x5
    3089:	f2 e9 91 ff ff ff    	bnd jmpq 3020 <.plt>
    308f:	90                   	nop
    3090:	f3 0f 1e fa          	endbr64 
    3094:	68 06 00 00 00       	pushq  $0x6
    3099:	f2 e9 81 ff ff ff    	bnd jmpq 3020 <.plt>
    309f:	90                   	nop
    30a0:	f3 0f 1e fa          	endbr64 
    30a4:	68 07 00 00 00       	pushq  $0x7
    30a9:	f2 e9 71 ff ff ff    	bnd jmpq 3020 <.plt>
    30af:	90                   	nop
    30b0:	f3 0f 1e fa          	endbr64 
    30b4:	68 08 00 00 00       	pushq  $0x8
    30b9:	f2 e9 61 ff ff ff    	bnd jmpq 3020 <.plt>
    30bf:	90                   	nop
    30c0:	f3 0f 1e fa          	endbr64 
    30c4:	68 09 00 00 00       	pushq  $0x9
    30c9:	f2 e9 51 ff ff ff    	bnd jmpq 3020 <.plt>
    30cf:	90                   	nop
    30d0:	f3 0f 1e fa          	endbr64 
    30d4:	68 0a 00 00 00       	pushq  $0xa
    30d9:	f2 e9 41 ff ff ff    	bnd jmpq 3020 <.plt>
    30df:	90                   	nop
    30e0:	f3 0f 1e fa          	endbr64 
    30e4:	68 0b 00 00 00       	pushq  $0xb
    30e9:	f2 e9 31 ff ff ff    	bnd jmpq 3020 <.plt>
    30ef:	90                   	nop
    30f0:	f3 0f 1e fa          	endbr64 
    30f4:	68 0c 00 00 00       	pushq  $0xc
    30f9:	f2 e9 21 ff ff ff    	bnd jmpq 3020 <.plt>
    30ff:	90                   	nop
    3100:	f3 0f 1e fa          	endbr64 
    3104:	68 0d 00 00 00       	pushq  $0xd
    3109:	f2 e9 11 ff ff ff    	bnd jmpq 3020 <.plt>
    310f:	90                   	nop
    3110:	f3 0f 1e fa          	endbr64 
    3114:	68 0e 00 00 00       	pushq  $0xe
    3119:	f2 e9 01 ff ff ff    	bnd jmpq 3020 <.plt>
    311f:	90                   	nop
    3120:	f3 0f 1e fa          	endbr64 
    3124:	68 0f 00 00 00       	pushq  $0xf
    3129:	f2 e9 f1 fe ff ff    	bnd jmpq 3020 <.plt>
    312f:	90                   	nop
    3130:	f3 0f 1e fa          	endbr64 
    3134:	68 10 00 00 00       	pushq  $0x10
    3139:	f2 e9 e1 fe ff ff    	bnd jmpq 3020 <.plt>
    313f:	90                   	nop
    3140:	f3 0f 1e fa          	endbr64 
    3144:	68 11 00 00 00       	pushq  $0x11
    3149:	f2 e9 d1 fe ff ff    	bnd jmpq 3020 <.plt>
    314f:	90                   	nop
    3150:	f3 0f 1e fa          	endbr64 
    3154:	68 12 00 00 00       	pushq  $0x12
    3159:	f2 e9 c1 fe ff ff    	bnd jmpq 3020 <.plt>
    315f:	90                   	nop
    3160:	f3 0f 1e fa          	endbr64 
    3164:	68 13 00 00 00       	pushq  $0x13
    3169:	f2 e9 b1 fe ff ff    	bnd jmpq 3020 <.plt>
    316f:	90                   	nop
    3170:	f3 0f 1e fa          	endbr64 
    3174:	68 14 00 00 00       	pushq  $0x14
    3179:	f2 e9 a1 fe ff ff    	bnd jmpq 3020 <.plt>
    317f:	90                   	nop
    3180:	f3 0f 1e fa          	endbr64 
    3184:	68 15 00 00 00       	pushq  $0x15
    3189:	f2 e9 91 fe ff ff    	bnd jmpq 3020 <.plt>
    318f:	90                   	nop
    3190:	f3 0f 1e fa          	endbr64 
    3194:	68 16 00 00 00       	pushq  $0x16
    3199:	f2 e9 81 fe ff ff    	bnd jmpq 3020 <.plt>
    319f:	90                   	nop
    31a0:	f3 0f 1e fa          	endbr64 
    31a4:	68 17 00 00 00       	pushq  $0x17
    31a9:	f2 e9 71 fe ff ff    	bnd jmpq 3020 <.plt>
    31af:	90                   	nop
    31b0:	f3 0f 1e fa          	endbr64 
    31b4:	68 18 00 00 00       	pushq  $0x18
    31b9:	f2 e9 61 fe ff ff    	bnd jmpq 3020 <.plt>
    31bf:	90                   	nop
    31c0:	f3 0f 1e fa          	endbr64 
    31c4:	68 19 00 00 00       	pushq  $0x19
    31c9:	f2 e9 51 fe ff ff    	bnd jmpq 3020 <.plt>
    31cf:	90                   	nop
    31d0:	f3 0f 1e fa          	endbr64 
    31d4:	68 1a 00 00 00       	pushq  $0x1a
    31d9:	f2 e9 41 fe ff ff    	bnd jmpq 3020 <.plt>
    31df:	90                   	nop
    31e0:	f3 0f 1e fa          	endbr64 
    31e4:	68 1b 00 00 00       	pushq  $0x1b
    31e9:	f2 e9 31 fe ff ff    	bnd jmpq 3020 <.plt>
    31ef:	90                   	nop
    31f0:	f3 0f 1e fa          	endbr64 
    31f4:	68 1c 00 00 00       	pushq  $0x1c
    31f9:	f2 e9 21 fe ff ff    	bnd jmpq 3020 <.plt>
    31ff:	90                   	nop
    3200:	f3 0f 1e fa          	endbr64 
    3204:	68 1d 00 00 00       	pushq  $0x1d
    3209:	f2 e9 11 fe ff ff    	bnd jmpq 3020 <.plt>
    320f:	90                   	nop
    3210:	f3 0f 1e fa          	endbr64 
    3214:	68 1e 00 00 00       	pushq  $0x1e
    3219:	f2 e9 01 fe ff ff    	bnd jmpq 3020 <.plt>
    321f:	90                   	nop

Disassembly of section .plt.got:

0000000000003220 <__cxa_finalize@plt>:
    3220:	f3 0f 1e fa          	endbr64 
    3224:	f2 ff 25 cd 6d 00 00 	bnd jmpq *0x6dcd(%rip)        # 9ff8 <__cxa_finalize@GLIBC_2.2.5>
    322b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

0000000000003230 <getenv@plt>:
    3230:	f3 0f 1e fa          	endbr64 
    3234:	f2 ff 25 a5 6c 00 00 	bnd jmpq *0x6ca5(%rip)        # 9ee0 <getenv@GLIBC_2.2.5>
    323b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003240 <__snprintf_chk@plt>:
    3240:	f3 0f 1e fa          	endbr64 
    3244:	f2 ff 25 9d 6c 00 00 	bnd jmpq *0x6c9d(%rip)        # 9ee8 <__snprintf_chk@GLIBC_2.3.4>
    324b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003250 <putchar@plt>:
    3250:	f3 0f 1e fa          	endbr64 
    3254:	f2 ff 25 95 6c 00 00 	bnd jmpq *0x6c95(%rip)        # 9ef0 <putchar@GLIBC_2.2.5>
    325b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003260 <strcasecmp@plt>:
    3260:	f3 0f 1e fa          	endbr64 
    3264:	f2 ff 25 8d 6c 00 00 	bnd jmpq *0x6c8d(%rip)        # 9ef8 <strcasecmp@GLIBC_2.2.5>
    326b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003270 <__errno_location@plt>:
    3270:	f3 0f 1e fa          	endbr64 
    3274:	f2 ff 25 85 6c 00 00 	bnd jmpq *0x6c85(%rip)        # 9f00 <__errno_location@GLIBC_2.2.5>
    327b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003280 <strcpy@plt>:
    3280:	f3 0f 1e fa          	endbr64 
    3284:	f2 ff 25 7d 6c 00 00 	bnd jmpq *0x6c7d(%rip)        # 9f08 <strcpy@GLIBC_2.2.5>
    328b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003290 <puts@plt>:
    3290:	f3 0f 1e fa          	endbr64 
    3294:	f2 ff 25 75 6c 00 00 	bnd jmpq *0x6c75(%rip)        # 9f10 <puts@GLIBC_2.2.5>
    329b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000032a0 <write@plt>:
    32a0:	f3 0f 1e fa          	endbr64 
    32a4:	f2 ff 25 6d 6c 00 00 	bnd jmpq *0x6c6d(%rip)        # 9f18 <write@GLIBC_2.2.5>
    32ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000032b0 <__stack_chk_fail@plt>:
    32b0:	f3 0f 1e fa          	endbr64 
    32b4:	f2 ff 25 65 6c 00 00 	bnd jmpq *0x6c65(%rip)        # 9f20 <__stack_chk_fail@GLIBC_2.4>
    32bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000032c0 <alarm@plt>:
    32c0:	f3 0f 1e fa          	endbr64 
    32c4:	f2 ff 25 5d 6c 00 00 	bnd jmpq *0x6c5d(%rip)        # 9f28 <alarm@GLIBC_2.2.5>
    32cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000032d0 <close@plt>:
    32d0:	f3 0f 1e fa          	endbr64 
    32d4:	f2 ff 25 55 6c 00 00 	bnd jmpq *0x6c55(%rip)        # 9f30 <close@GLIBC_2.2.5>
    32db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000032e0 <read@plt>:
    32e0:	f3 0f 1e fa          	endbr64 
    32e4:	f2 ff 25 4d 6c 00 00 	bnd jmpq *0x6c4d(%rip)        # 9f38 <read@GLIBC_2.2.5>
    32eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000032f0 <fgets@plt>:
    32f0:	f3 0f 1e fa          	endbr64 
    32f4:	f2 ff 25 45 6c 00 00 	bnd jmpq *0x6c45(%rip)        # 9f40 <fgets@GLIBC_2.2.5>
    32fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003300 <strcmp@plt>:
    3300:	f3 0f 1e fa          	endbr64 
    3304:	f2 ff 25 3d 6c 00 00 	bnd jmpq *0x6c3d(%rip)        # 9f48 <strcmp@GLIBC_2.2.5>
    330b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003310 <signal@plt>:
    3310:	f3 0f 1e fa          	endbr64 
    3314:	f2 ff 25 35 6c 00 00 	bnd jmpq *0x6c35(%rip)        # 9f50 <signal@GLIBC_2.2.5>
    331b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003320 <gethostbyname@plt>:
    3320:	f3 0f 1e fa          	endbr64 
    3324:	f2 ff 25 2d 6c 00 00 	bnd jmpq *0x6c2d(%rip)        # 9f58 <gethostbyname@GLIBC_2.2.5>
    332b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003330 <__memmove_chk@plt>:
    3330:	f3 0f 1e fa          	endbr64 
    3334:	f2 ff 25 25 6c 00 00 	bnd jmpq *0x6c25(%rip)        # 9f60 <__memmove_chk@GLIBC_2.3.4>
    333b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003340 <strtol@plt>:
    3340:	f3 0f 1e fa          	endbr64 
    3344:	f2 ff 25 1d 6c 00 00 	bnd jmpq *0x6c1d(%rip)        # 9f68 <strtol@GLIBC_2.2.5>
    334b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003350 <malloc@plt>:
    3350:	f3 0f 1e fa          	endbr64 
    3354:	f2 ff 25 15 6c 00 00 	bnd jmpq *0x6c15(%rip)        # 9f70 <malloc@GLIBC_2.2.5>
    335b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003360 <__isoc99_sscanf@plt>:
    3360:	f3 0f 1e fa          	endbr64 
    3364:	f2 ff 25 0d 6c 00 00 	bnd jmpq *0x6c0d(%rip)        # 9f78 <__isoc99_sscanf@GLIBC_2.7>
    336b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003370 <__strcpy_chk@plt>:
    3370:	f3 0f 1e fa          	endbr64 
    3374:	f2 ff 25 05 6c 00 00 	bnd jmpq *0x6c05(%rip)        # 9f80 <__strcpy_chk@GLIBC_2.3.4>
    337b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003380 <__printf_chk@plt>:
    3380:	f3 0f 1e fa          	endbr64 
    3384:	f2 ff 25 fd 6b 00 00 	bnd jmpq *0x6bfd(%rip)        # 9f88 <__printf_chk@GLIBC_2.3.4>
    338b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003390 <fopen@plt>:
    3390:	f3 0f 1e fa          	endbr64 
    3394:	f2 ff 25 f5 6b 00 00 	bnd jmpq *0x6bf5(%rip)        # 9f90 <fopen@GLIBC_2.2.5>
    339b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000033a0 <gethostname@plt>:
    33a0:	f3 0f 1e fa          	endbr64 
    33a4:	f2 ff 25 ed 6b 00 00 	bnd jmpq *0x6bed(%rip)        # 9f98 <gethostname@GLIBC_2.2.5>
    33ab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000033b0 <exit@plt>:
    33b0:	f3 0f 1e fa          	endbr64 
    33b4:	f2 ff 25 e5 6b 00 00 	bnd jmpq *0x6be5(%rip)        # 9fa0 <exit@GLIBC_2.2.5>
    33bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000033c0 <connect@plt>:
    33c0:	f3 0f 1e fa          	endbr64 
    33c4:	f2 ff 25 dd 6b 00 00 	bnd jmpq *0x6bdd(%rip)        # 9fa8 <connect@GLIBC_2.2.5>
    33cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000033d0 <__fprintf_chk@plt>:
    33d0:	f3 0f 1e fa          	endbr64 
    33d4:	f2 ff 25 d5 6b 00 00 	bnd jmpq *0x6bd5(%rip)        # 9fb0 <__fprintf_chk@GLIBC_2.3.4>
    33db:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000033e0 <sleep@plt>:
    33e0:	f3 0f 1e fa          	endbr64 
    33e4:	f2 ff 25 cd 6b 00 00 	bnd jmpq *0x6bcd(%rip)        # 9fb8 <sleep@GLIBC_2.2.5>
    33eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

00000000000033f0 <__ctype_b_loc@plt>:
    33f0:	f3 0f 1e fa          	endbr64 
    33f4:	f2 ff 25 c5 6b 00 00 	bnd jmpq *0x6bc5(%rip)        # 9fc0 <__ctype_b_loc@GLIBC_2.3>
    33fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003400 <__sprintf_chk@plt>:
    3400:	f3 0f 1e fa          	endbr64 
    3404:	f2 ff 25 bd 6b 00 00 	bnd jmpq *0x6bbd(%rip)        # 9fc8 <__sprintf_chk@GLIBC_2.3.4>
    340b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000003410 <socket@plt>:
    3410:	f3 0f 1e fa          	endbr64 
    3414:	f2 ff 25 b5 6b 00 00 	bnd jmpq *0x6bb5(%rip)        # 9fd0 <socket@GLIBC_2.2.5>
    341b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000003420 <_start>:
    3420:	f3 0f 1e fa          	endbr64 
    3424:	31 ed                	xor    %ebp,%ebp
    3426:	49 89 d1             	mov    %rdx,%r9
    3429:	5e                   	pop    %rsi
    342a:	48 89 e2             	mov    %rsp,%rdx
    342d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    3431:	50                   	push   %rax
    3432:	54                   	push   %rsp
    3433:	4c 8d 05 e6 1f 00 00 	lea    0x1fe6(%rip),%r8        # 5420 <__libc_csu_fini>
    343a:	48 8d 0d 6f 1f 00 00 	lea    0x1f6f(%rip),%rcx        # 53b0 <__libc_csu_init>
    3441:	48 8d 3d c1 00 00 00 	lea    0xc1(%rip),%rdi        # 3509 <main>
    3448:	ff 15 92 6b 00 00    	callq  *0x6b92(%rip)        # 9fe0 <__libc_start_main@GLIBC_2.2.5>
    344e:	f4                   	hlt    
    344f:	90                   	nop

0000000000003450 <deregister_tm_clones>:
    3450:	48 8d 3d c9 7d 00 00 	lea    0x7dc9(%rip),%rdi        # b220 <stdin@@GLIBC_2.2.5>
    3457:	48 8d 05 c2 7d 00 00 	lea    0x7dc2(%rip),%rax        # b220 <stdin@@GLIBC_2.2.5>
    345e:	48 39 f8             	cmp    %rdi,%rax
    3461:	74 15                	je     3478 <deregister_tm_clones+0x28>
    3463:	48 8b 05 6e 6b 00 00 	mov    0x6b6e(%rip),%rax        # 9fd8 <_ITM_deregisterTMCloneTable>
    346a:	48 85 c0             	test   %rax,%rax
    346d:	74 09                	je     3478 <deregister_tm_clones+0x28>
    346f:	ff e0                	jmpq   *%rax
    3471:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    3478:	c3                   	retq   
    3479:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000003480 <register_tm_clones>:
    3480:	48 8d 3d 99 7d 00 00 	lea    0x7d99(%rip),%rdi        # b220 <stdin@@GLIBC_2.2.5>
    3487:	48 8d 35 92 7d 00 00 	lea    0x7d92(%rip),%rsi        # b220 <stdin@@GLIBC_2.2.5>
    348e:	48 29 fe             	sub    %rdi,%rsi
    3491:	48 89 f0             	mov    %rsi,%rax
    3494:	48 c1 ee 3f          	shr    $0x3f,%rsi
    3498:	48 c1 f8 03          	sar    $0x3,%rax
    349c:	48 01 c6             	add    %rax,%rsi
    349f:	48 d1 fe             	sar    %rsi
    34a2:	74 14                	je     34b8 <register_tm_clones+0x38>
    34a4:	48 8b 05 45 6b 00 00 	mov    0x6b45(%rip),%rax        # 9ff0 <_ITM_registerTMCloneTable>
    34ab:	48 85 c0             	test   %rax,%rax
    34ae:	74 08                	je     34b8 <register_tm_clones+0x38>
    34b0:	ff e0                	jmpq   *%rax
    34b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    34b8:	c3                   	retq   
    34b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000034c0 <__do_global_dtors_aux>:
    34c0:	f3 0f 1e fa          	endbr64 
    34c4:	80 3d 7d 7d 00 00 00 	cmpb   $0x0,0x7d7d(%rip)        # b248 <completed.8061>
    34cb:	75 2b                	jne    34f8 <__do_global_dtors_aux+0x38>
    34cd:	55                   	push   %rbp
    34ce:	48 83 3d 22 6b 00 00 	cmpq   $0x0,0x6b22(%rip)        # 9ff8 <__cxa_finalize@GLIBC_2.2.5>
    34d5:	00 
    34d6:	48 89 e5             	mov    %rsp,%rbp
    34d9:	74 0c                	je     34e7 <__do_global_dtors_aux+0x27>
    34db:	48 8b 3d 26 6b 00 00 	mov    0x6b26(%rip),%rdi        # a008 <__dso_handle>
    34e2:	e8 39 fd ff ff       	callq  3220 <__cxa_finalize@plt>
    34e7:	e8 64 ff ff ff       	callq  3450 <deregister_tm_clones>
    34ec:	c6 05 55 7d 00 00 01 	movb   $0x1,0x7d55(%rip)        # b248 <completed.8061>
    34f3:	5d                   	pop    %rbp
    34f4:	c3                   	retq   
    34f5:	0f 1f 00             	nopl   (%rax)
    34f8:	c3                   	retq   
    34f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000003500 <frame_dummy>:
    3500:	f3 0f 1e fa          	endbr64 
    3504:	e9 77 ff ff ff       	jmpq   3480 <register_tm_clones>

0000000000003509 <main>:
    3509:	f3 0f 1e fa          	endbr64 
    350d:	53                   	push   %rbx
    350e:	83 ff 01             	cmp    $0x1,%edi
    3511:	0f 84 f8 00 00 00    	je     360f <main+0x106>
    3517:	48 89 f3             	mov    %rsi,%rbx
    351a:	83 ff 02             	cmp    $0x2,%edi
    351d:	0f 85 21 01 00 00    	jne    3644 <main+0x13b>
    3523:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    3527:	48 8d 35 b2 2c 00 00 	lea    0x2cb2(%rip),%rsi        # 61e0 <_IO_stdin_used+0x1e0>
    352e:	e8 5d fe ff ff       	callq  3390 <fopen@plt>
    3533:	48 89 05 16 7d 00 00 	mov    %rax,0x7d16(%rip)        # b250 <infile>
    353a:	48 85 c0             	test   %rax,%rax
    353d:	0f 84 df 00 00 00    	je     3622 <main+0x119>
    3543:	e8 b0 0b 00 00       	callq  40f8 <initialize_bomb>
    3548:	48 8d 3d 39 2b 00 00 	lea    0x2b39(%rip),%rdi        # 6088 <_IO_stdin_used+0x88>
    354f:	e8 3c fd ff ff       	callq  3290 <puts@plt>
    3554:	48 8d 3d 6d 2b 00 00 	lea    0x2b6d(%rip),%rdi        # 60c8 <_IO_stdin_used+0xc8>
    355b:	e8 30 fd ff ff       	callq  3290 <puts@plt>
    3560:	e8 04 0f 00 00       	callq  4469 <read_line>
    3565:	48 89 c7             	mov    %rax,%rdi
    3568:	e8 fa 00 00 00       	callq  3667 <phase_1>
    356d:	e8 5a 10 00 00       	callq  45cc <phase_defused>
    3572:	48 8d 3d 7f 2b 00 00 	lea    0x2b7f(%rip),%rdi        # 60f8 <_IO_stdin_used+0xf8>
    3579:	e8 12 fd ff ff       	callq  3290 <puts@plt>
    357e:	e8 e6 0e 00 00       	callq  4469 <read_line>
    3583:	48 89 c7             	mov    %rax,%rdi
    3586:	e8 00 01 00 00       	callq  368b <phase_2>
    358b:	e8 3c 10 00 00       	callq  45cc <phase_defused>
    3590:	48 8d 3d a4 2a 00 00 	lea    0x2aa4(%rip),%rdi        # 603b <_IO_stdin_used+0x3b>
    3597:	e8 f4 fc ff ff       	callq  3290 <puts@plt>
    359c:	e8 c8 0e 00 00       	callq  4469 <read_line>
    35a1:	48 89 c7             	mov    %rax,%rdi
    35a4:	e8 60 01 00 00       	callq  3709 <phase_3>
    35a9:	e8 1e 10 00 00       	callq  45cc <phase_defused>
    35ae:	48 8d 3d a4 2a 00 00 	lea    0x2aa4(%rip),%rdi        # 6059 <_IO_stdin_used+0x59>
    35b5:	e8 d6 fc ff ff       	callq  3290 <puts@plt>
    35ba:	e8 aa 0e 00 00       	callq  4469 <read_line>
    35bf:	48 89 c7             	mov    %rax,%rdi
    35c2:	e8 7d 03 00 00       	callq  3944 <phase_4>
    35c7:	e8 00 10 00 00       	callq  45cc <phase_defused>
    35cc:	48 8d 3d 55 2b 00 00 	lea    0x2b55(%rip),%rdi        # 6128 <_IO_stdin_used+0x128>
    35d3:	e8 b8 fc ff ff       	callq  3290 <puts@plt>
    35d8:	e8 8c 0e 00 00       	callq  4469 <read_line>
    35dd:	48 89 c7             	mov    %rax,%rdi
    35e0:	e8 07 04 00 00       	callq  39ec <phase_5>
    35e5:	e8 e2 0f 00 00       	callq  45cc <phase_defused>
    35ea:	48 8d 3d 77 2a 00 00 	lea    0x2a77(%rip),%rdi        # 6068 <_IO_stdin_used+0x68>
    35f1:	e8 9a fc ff ff       	callq  3290 <puts@plt>
    35f6:	e8 6e 0e 00 00       	callq  4469 <read_line>
    35fb:	48 89 c7             	mov    %rax,%rdi
    35fe:	e8 05 08 00 00       	callq  3e08 <phase_6>
    3603:	e8 c4 0f 00 00       	callq  45cc <phase_defused>
    3608:	b8 00 00 00 00       	mov    $0x0,%eax
    360d:	5b                   	pop    %rbx
    360e:	c3                   	retq   
    360f:	48 8b 05 0a 7c 00 00 	mov    0x7c0a(%rip),%rax        # b220 <stdin@@GLIBC_2.2.5>
    3616:	48 89 05 33 7c 00 00 	mov    %rax,0x7c33(%rip)        # b250 <infile>
    361d:	e9 21 ff ff ff       	jmpq   3543 <main+0x3a>
    3622:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
    3626:	48 8b 13             	mov    (%rbx),%rdx
    3629:	48 8d 35 d4 29 00 00 	lea    0x29d4(%rip),%rsi        # 6004 <_IO_stdin_used+0x4>
    3630:	bf 01 00 00 00       	mov    $0x1,%edi
    3635:	e8 46 fd ff ff       	callq  3380 <__printf_chk@plt>
    363a:	bf 08 00 00 00       	mov    $0x8,%edi
    363f:	e8 6c fd ff ff       	callq  33b0 <exit@plt>
    3644:	48 8b 16             	mov    (%rsi),%rdx
    3647:	48 8d 35 d3 29 00 00 	lea    0x29d3(%rip),%rsi        # 6021 <_IO_stdin_used+0x21>
    364e:	bf 01 00 00 00       	mov    $0x1,%edi
    3653:	b8 00 00 00 00       	mov    $0x0,%eax
    3658:	e8 23 fd ff ff       	callq  3380 <__printf_chk@plt>
    365d:	bf 08 00 00 00       	mov    $0x8,%edi
    3662:	e8 49 fd ff ff       	callq  33b0 <exit@plt>

0000000000003667 <phase_1>:
    3667:	f3 0f 1e fa          	endbr64 
    366b:	48 83 ec 08          	sub    $0x8,%rsp
    366f:	48 8d 35 da 2a 00 00 	lea    0x2ada(%rip),%rsi        # 6150 <_IO_stdin_used+0x150>
    3676:	e8 1d 0a 00 00       	callq  4098 <strings_not_equal>
    367b:	85 c0                	test   %eax,%eax
    367d:	75 05                	jne    3684 <phase_1+0x1d>
    367f:	48 83 c4 08          	add    $0x8,%rsp
    3683:	c3                   	retq   
    3684:	e8 59 0d 00 00       	callq  43e2 <explode_bomb>
    3689:	eb f4                	jmp    367f <phase_1+0x18>

000000000000368b <phase_2>:
    368b:	f3 0f 1e fa          	endbr64 
    368f:	55                   	push   %rbp
    3690:	53                   	push   %rbx
    3691:	48 83 ec 28          	sub    $0x28,%rsp
    3695:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    369c:	00 00 
    369e:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    36a3:	31 c0                	xor    %eax,%eax
    36a5:	48 89 e6             	mov    %rsp,%rsi
    36a8:	e8 77 0d 00 00       	callq  4424 <read_six_numbers>
    36ad:	83 3c 24 02          	cmpl   $0x2,(%rsp)
    36b1:	75 11                	jne    36c4 <phase_2+0x39>
    36b3:	83 7c 24 04 03       	cmpl   $0x3,0x4(%rsp)
    36b8:	75 11                	jne    36cb <phase_2+0x40>
    36ba:	48 89 e3             	mov    %rsp,%rbx
    36bd:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
    36c2:	eb 1c                	jmp    36e0 <phase_2+0x55>
    36c4:	e8 19 0d 00 00       	callq  43e2 <explode_bomb>
    36c9:	eb e8                	jmp    36b3 <phase_2+0x28>
    36cb:	e8 12 0d 00 00       	callq  43e2 <explode_bomb>
    36d0:	eb e8                	jmp    36ba <phase_2+0x2f>
    36d2:	e8 0b 0d 00 00       	callq  43e2 <explode_bomb>
    36d7:	48 83 c3 04          	add    $0x4,%rbx
    36db:	48 39 eb             	cmp    %rbp,%rbx
    36de:	74 0d                	je     36ed <phase_2+0x62>
    36e0:	8b 43 04             	mov    0x4(%rbx),%eax
    36e3:	0f af 03             	imul   (%rbx),%eax
    36e6:	39 43 08             	cmp    %eax,0x8(%rbx)
    36e9:	74 ec                	je     36d7 <phase_2+0x4c>
    36eb:	eb e5                	jmp    36d2 <phase_2+0x47>
    36ed:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    36f2:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    36f9:	00 00 
    36fb:	75 07                	jne    3704 <phase_2+0x79>
    36fd:	48 83 c4 28          	add    $0x28,%rsp
    3701:	5b                   	pop    %rbx
    3702:	5d                   	pop    %rbp
    3703:	c3                   	retq   
    3704:	e8 a7 fb ff ff       	callq  32b0 <__stack_chk_fail@plt>

0000000000003709 <phase_3>:
    3709:	f3 0f 1e fa          	endbr64 
    370d:	48 83 ec 28          	sub    $0x28,%rsp
    3711:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3718:	00 00 
    371a:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    371f:	31 c0                	xor    %eax,%eax
    3721:	48 8d 4c 24 0f       	lea    0xf(%rsp),%rcx
    3726:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    372b:	4c 8d 44 24 14       	lea    0x14(%rsp),%r8
    3730:	48 8d 35 77 2a 00 00 	lea    0x2a77(%rip),%rsi        # 61ae <_IO_stdin_used+0x1ae>
    3737:	e8 24 fc ff ff       	callq  3360 <__isoc99_sscanf@plt>
    373c:	83 f8 02             	cmp    $0x2,%eax
    373f:	7e 20                	jle    3761 <phase_3+0x58>
    3741:	83 7c 24 10 07       	cmpl   $0x7,0x10(%rsp)
    3746:	0f 87 0d 01 00 00    	ja     3859 <phase_3+0x150>
    374c:	8b 44 24 10          	mov    0x10(%rsp),%eax
    3750:	48 8d 15 c9 2a 00 00 	lea    0x2ac9(%rip),%rdx        # 6220 <_IO_stdin_used+0x220>
    3757:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    375b:	48 01 d0             	add    %rdx,%rax
    375e:	3e ff e0             	notrack jmpq *%rax
    3761:	e8 7c 0c 00 00       	callq  43e2 <explode_bomb>
    3766:	eb d9                	jmp    3741 <phase_3+0x38>
    3768:	b8 62 00 00 00       	mov    $0x62,%eax
    376d:	81 7c 24 14 86 00 00 	cmpl   $0x86,0x14(%rsp)
    3774:	00 
    3775:	0f 84 e8 00 00 00    	je     3863 <phase_3+0x15a>
    377b:	e8 62 0c 00 00       	callq  43e2 <explode_bomb>
    3780:	b8 62 00 00 00       	mov    $0x62,%eax
    3785:	e9 d9 00 00 00       	jmpq   3863 <phase_3+0x15a>
    378a:	b8 6d 00 00 00       	mov    $0x6d,%eax
    378f:	81 7c 24 14 a4 03 00 	cmpl   $0x3a4,0x14(%rsp)
    3796:	00 
    3797:	0f 84 c6 00 00 00    	je     3863 <phase_3+0x15a>
    379d:	e8 40 0c 00 00       	callq  43e2 <explode_bomb>
    37a2:	b8 6d 00 00 00       	mov    $0x6d,%eax
    37a7:	e9 b7 00 00 00       	jmpq   3863 <phase_3+0x15a>
    37ac:	b8 69 00 00 00       	mov    $0x69,%eax
    37b1:	81 7c 24 14 0d 01 00 	cmpl   $0x10d,0x14(%rsp)
    37b8:	00 
    37b9:	0f 84 a4 00 00 00    	je     3863 <phase_3+0x15a>
    37bf:	e8 1e 0c 00 00       	callq  43e2 <explode_bomb>
    37c4:	b8 69 00 00 00       	mov    $0x69,%eax
    37c9:	e9 95 00 00 00       	jmpq   3863 <phase_3+0x15a>
    37ce:	b8 75 00 00 00       	mov    $0x75,%eax
    37d3:	81 7c 24 14 cb 03 00 	cmpl   $0x3cb,0x14(%rsp)
    37da:	00 
    37db:	0f 84 82 00 00 00    	je     3863 <phase_3+0x15a>
    37e1:	e8 fc 0b 00 00       	callq  43e2 <explode_bomb>
    37e6:	b8 75 00 00 00       	mov    $0x75,%eax
    37eb:	eb 76                	jmp    3863 <phase_3+0x15a>
    37ed:	b8 75 00 00 00       	mov    $0x75,%eax
    37f2:	81 7c 24 14 33 03 00 	cmpl   $0x333,0x14(%rsp)
    37f9:	00 
    37fa:	74 67                	je     3863 <phase_3+0x15a>
    37fc:	e8 e1 0b 00 00       	callq  43e2 <explode_bomb>
    3801:	b8 75 00 00 00       	mov    $0x75,%eax
    3806:	eb 5b                	jmp    3863 <phase_3+0x15a>
    3808:	b8 66 00 00 00       	mov    $0x66,%eax
    380d:	81 7c 24 14 9c 01 00 	cmpl   $0x19c,0x14(%rsp)
    3814:	00 
    3815:	74 4c                	je     3863 <phase_3+0x15a>
    3817:	e8 c6 0b 00 00       	callq  43e2 <explode_bomb>
    381c:	b8 66 00 00 00       	mov    $0x66,%eax
    3821:	eb 40                	jmp    3863 <phase_3+0x15a>
    3823:	b8 70 00 00 00       	mov    $0x70,%eax
    3828:	81 7c 24 14 9f 00 00 	cmpl   $0x9f,0x14(%rsp)
    382f:	00 
    3830:	74 31                	je     3863 <phase_3+0x15a>
    3832:	e8 ab 0b 00 00       	callq  43e2 <explode_bomb>
    3837:	b8 70 00 00 00       	mov    $0x70,%eax
    383c:	eb 25                	jmp    3863 <phase_3+0x15a>
    383e:	b8 71 00 00 00       	mov    $0x71,%eax
    3843:	81 7c 24 14 4f 02 00 	cmpl   $0x24f,0x14(%rsp)
    384a:	00 
    384b:	74 16                	je     3863 <phase_3+0x15a>
    384d:	e8 90 0b 00 00       	callq  43e2 <explode_bomb>
    3852:	b8 71 00 00 00       	mov    $0x71,%eax
    3857:	eb 0a                	jmp    3863 <phase_3+0x15a>
    3859:	e8 84 0b 00 00       	callq  43e2 <explode_bomb>
    385e:	b8 76 00 00 00       	mov    $0x76,%eax
    3863:	38 44 24 0f          	cmp    %al,0xf(%rsp)
    3867:	75 15                	jne    387e <phase_3+0x175>
    3869:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    386e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    3875:	00 00 
    3877:	75 0c                	jne    3885 <phase_3+0x17c>
    3879:	48 83 c4 28          	add    $0x28,%rsp
    387d:	c3                   	retq   
    387e:	e8 5f 0b 00 00       	callq  43e2 <explode_bomb>
    3883:	eb e4                	jmp    3869 <phase_3+0x160>
    3885:	e8 26 fa ff ff       	callq  32b0 <__stack_chk_fail@plt>

000000000000388a <func4>:
    388a:	f3 0f 1e fa          	endbr64 
    388e:	55                   	push   %rbp
    388f:	53                   	push   %rbx
    3890:	48 83 ec 08          	sub    $0x8,%rsp
    3894:	89 fb                	mov    %edi,%ebx
    3896:	48 89 f5             	mov    %rsi,%rbp
    3899:	83 ff 09             	cmp    $0x9,%edi
    389c:	77 2d                	ja     38cb <func4+0x41>
    389e:	8b 16                	mov    (%rsi),%edx
    38a0:	48 63 c2             	movslq %edx,%rax
    38a3:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
    38aa:	48 c1 f8 22          	sar    $0x22,%rax
    38ae:	89 d1                	mov    %edx,%ecx
    38b0:	c1 f9 1f             	sar    $0x1f,%ecx
    38b3:	29 c8                	sub    %ecx,%eax
    38b5:	8d 04 80             	lea    (%rax,%rax,4),%eax
    38b8:	01 c0                	add    %eax,%eax
    38ba:	29 c2                	sub    %eax,%edx
    38bc:	39 fa                	cmp    %edi,%edx
    38be:	0f 94 c0             	sete   %al
    38c1:	0f b6 c0             	movzbl %al,%eax
    38c4:	48 83 c4 08          	add    $0x8,%rsp
    38c8:	5b                   	pop    %rbx
    38c9:	5d                   	pop    %rbp
    38ca:	c3                   	retq   
    38cb:	48 63 ff             	movslq %edi,%rdi
    38ce:	48 69 ff 67 66 66 66 	imul   $0x66666667,%rdi,%rdi
    38d5:	48 c1 ff 22          	sar    $0x22,%rdi
    38d9:	89 d8                	mov    %ebx,%eax
    38db:	c1 f8 1f             	sar    $0x1f,%eax
    38de:	29 c7                	sub    %eax,%edi
    38e0:	e8 a5 ff ff ff       	callq  388a <func4>
    38e5:	85 c0                	test   %eax,%eax
    38e7:	74 db                	je     38c4 <func4+0x3a>
    38e9:	8b 55 00             	mov    0x0(%rbp),%edx
    38ec:	48 63 c2             	movslq %edx,%rax
    38ef:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
    38f6:	48 c1 f8 22          	sar    $0x22,%rax
    38fa:	c1 fa 1f             	sar    $0x1f,%edx
    38fd:	29 d0                	sub    %edx,%eax
    38ff:	89 45 00             	mov    %eax,0x0(%rbp)
    3902:	48 63 d3             	movslq %ebx,%rdx
    3905:	48 69 d2 67 66 66 66 	imul   $0x66666667,%rdx,%rdx
    390c:	48 c1 fa 22          	sar    $0x22,%rdx
    3910:	89 d9                	mov    %ebx,%ecx
    3912:	c1 f9 1f             	sar    $0x1f,%ecx
    3915:	29 ca                	sub    %ecx,%edx
    3917:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
    391a:	01 d2                	add    %edx,%edx
    391c:	29 d3                	sub    %edx,%ebx
    391e:	48 63 d0             	movslq %eax,%rdx
    3921:	48 69 d2 67 66 66 66 	imul   $0x66666667,%rdx,%rdx
    3928:	48 c1 fa 22          	sar    $0x22,%rdx
    392c:	89 c1                	mov    %eax,%ecx
    392e:	c1 f9 1f             	sar    $0x1f,%ecx
    3931:	29 ca                	sub    %ecx,%edx
    3933:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
    3936:	01 d2                	add    %edx,%edx
    3938:	29 d0                	sub    %edx,%eax
    393a:	39 c3                	cmp    %eax,%ebx
    393c:	0f 94 c0             	sete   %al
    393f:	0f b6 c0             	movzbl %al,%eax
    3942:	eb 80                	jmp    38c4 <func4+0x3a>

0000000000003944 <phase_4>:
    3944:	f3 0f 1e fa          	endbr64 
    3948:	53                   	push   %rbx
    3949:	48 83 ec 20          	sub    $0x20,%rsp
    394d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3954:	00 00 
    3956:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    395b:	31 c0                	xor    %eax,%eax
    395d:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    3962:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    3967:	48 8d 35 e6 2b 00 00 	lea    0x2be6(%rip),%rsi        # 6554 <array.3484+0x314>
    396e:	e8 ed f9 ff ff       	callq  3360 <__isoc99_sscanf@plt>
    3973:	83 f8 02             	cmp    $0x2,%eax
    3976:	75 1b                	jne    3993 <phase_4+0x4f>
    3978:	8b 44 24 08          	mov    0x8(%rsp),%eax
    397c:	3d d1 04 00 00       	cmp    $0x4d1,%eax
    3981:	7e 10                	jle    3993 <phase_4+0x4f>
    3983:	8b 54 24 0c          	mov    0xc(%rsp),%edx
    3987:	39 d0                	cmp    %edx,%eax
    3989:	74 08                	je     3993 <phase_4+0x4f>
    398b:	81 fa 38 30 00 00    	cmp    $0x3038,%edx
    3991:	7f 05                	jg     3998 <phase_4+0x54>
    3993:	e8 4a 0a 00 00       	callq  43e2 <explode_bomb>
    3998:	8b 7c 24 08          	mov    0x8(%rsp),%edi
    399c:	89 7c 24 10          	mov    %edi,0x10(%rsp)
    39a0:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    39a4:	89 44 24 14          	mov    %eax,0x14(%rsp)
    39a8:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
    39ad:	e8 d8 fe ff ff       	callq  388a <func4>
    39b2:	89 c3                	mov    %eax,%ebx
    39b4:	48 8d 74 24 14       	lea    0x14(%rsp),%rsi
    39b9:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
    39bd:	e8 c8 fe ff ff       	callq  388a <func4>
    39c2:	85 db                	test   %ebx,%ebx
    39c4:	74 1a                	je     39e0 <phase_4+0x9c>
    39c6:	85 c0                	test   %eax,%eax
    39c8:	74 16                	je     39e0 <phase_4+0x9c>
    39ca:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
    39cf:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    39d6:	00 00 
    39d8:	75 0d                	jne    39e7 <phase_4+0xa3>
    39da:	48 83 c4 20          	add    $0x20,%rsp
    39de:	5b                   	pop    %rbx
    39df:	c3                   	retq   
    39e0:	e8 fd 09 00 00       	callq  43e2 <explode_bomb>
    39e5:	eb e3                	jmp    39ca <phase_4+0x86>
    39e7:	e8 c4 f8 ff ff       	callq  32b0 <__stack_chk_fail@plt>

00000000000039ec <phase_5>:
    39ec:	f3 0f 1e fa          	endbr64 
    39f0:	48 83 ec 18          	sub    $0x18,%rsp
    39f4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    39fb:	00 00 
    39fd:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    3a02:	31 c0                	xor    %eax,%eax
    3a04:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
    3a09:	48 89 e2             	mov    %rsp,%rdx
    3a0c:	48 8d 35 41 2b 00 00 	lea    0x2b41(%rip),%rsi        # 6554 <array.3484+0x314>
    3a13:	e8 48 f9 ff ff       	callq  3360 <__isoc99_sscanf@plt>
    3a18:	83 f8 01             	cmp    $0x1,%eax
    3a1b:	7e 5a                	jle    3a77 <phase_5+0x8b>
    3a1d:	8b 04 24             	mov    (%rsp),%eax
    3a20:	83 e0 0f             	and    $0xf,%eax
    3a23:	89 04 24             	mov    %eax,(%rsp)
    3a26:	83 f8 0f             	cmp    $0xf,%eax
    3a29:	74 32                	je     3a5d <phase_5+0x71>
    3a2b:	b9 96 00 00 00       	mov    $0x96,%ecx
    3a30:	ba 00 00 00 00       	mov    $0x0,%edx
    3a35:	48 8d 35 04 28 00 00 	lea    0x2804(%rip),%rsi        # 6240 <array.3484>
    3a3c:	83 c2 01             	add    $0x1,%edx
    3a3f:	48 98                	cltq   
    3a41:	8b 04 86             	mov    (%rsi,%rax,4),%eax
    3a44:	29 c1                	sub    %eax,%ecx
    3a46:	83 f8 0f             	cmp    $0xf,%eax
    3a49:	75 f1                	jne    3a3c <phase_5+0x50>
    3a4b:	c7 04 24 0f 00 00 00 	movl   $0xf,(%rsp)
    3a52:	83 fa 0f             	cmp    $0xf,%edx
    3a55:	75 06                	jne    3a5d <phase_5+0x71>
    3a57:	39 4c 24 04          	cmp    %ecx,0x4(%rsp)
    3a5b:	74 05                	je     3a62 <phase_5+0x76>
    3a5d:	e8 80 09 00 00       	callq  43e2 <explode_bomb>
    3a62:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    3a67:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    3a6e:	00 00 
    3a70:	75 0c                	jne    3a7e <phase_5+0x92>
    3a72:	48 83 c4 18          	add    $0x18,%rsp
    3a76:	c3                   	retq   
    3a77:	e8 66 09 00 00       	callq  43e2 <explode_bomb>
    3a7c:	eb 9f                	jmp    3a1d <phase_5+0x31>
    3a7e:	e8 2d f8 ff ff       	callq  32b0 <__stack_chk_fail@plt>

0000000000003a83 <hashcode>:
    3a83:	f3 0f 1e fa          	endbr64 
    3a87:	48 83 ec 18          	sub    $0x18,%rsp
    3a8b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3a92:	00 00 
    3a94:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    3a99:	31 c0                	xor    %eax,%eax
    3a9b:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    3aa2:	00 
    3aa3:	0f b6 14 07          	movzbl (%rdi,%rax,1),%edx
    3aa7:	84 d2                	test   %dl,%dl
    3aa9:	74 0d                	je     3ab8 <hashcode+0x35>
    3aab:	88 14 04             	mov    %dl,(%rsp,%rax,1)
    3aae:	48 83 c0 01          	add    $0x1,%rax
    3ab2:	48 83 f8 08          	cmp    $0x8,%rax
    3ab6:	75 eb                	jne    3aa3 <hashcode+0x20>
    3ab8:	48 8b 04 24          	mov    (%rsp),%rax
    3abc:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
    3ac1:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    3ac8:	00 00 
    3aca:	75 05                	jne    3ad1 <hashcode+0x4e>
    3acc:	48 83 c4 18          	add    $0x18,%rsp
    3ad0:	c3                   	retq   
    3ad1:	e8 da f7 ff ff       	callq  32b0 <__stack_chk_fail@plt>

0000000000003ad6 <insert>:
    3ad6:	f3 0f 1e fa          	endbr64 
    3ada:	41 57                	push   %r15
    3adc:	41 56                	push   %r14
    3ade:	41 55                	push   %r13
    3ae0:	41 54                	push   %r12
    3ae2:	55                   	push   %rbp
    3ae3:	53                   	push   %rbx
    3ae4:	48 83 ec 28          	sub    $0x28,%rsp
    3ae8:	89 7c 24 1c          	mov    %edi,0x1c(%rsp)
    3aec:	48 89 34 24          	mov    %rsi,(%rsp)
    3af0:	48 89 54 24 08       	mov    %rdx,0x8(%rsp)
    3af5:	85 ff                	test   %edi,%edi
    3af7:	0f 8e 69 01 00 00    	jle    3c66 <insert+0x190>
    3afd:	49 89 ce             	mov    %rcx,%r14
    3b00:	8d 47 ff             	lea    -0x1(%rdi),%eax
    3b03:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    3b08:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    3b0e:	e9 96 00 00 00       	jmpq   3ba9 <insert+0xd3>
    3b13:	45 89 ec             	mov    %r13d,%r12d
    3b16:	41 c1 ec 1f          	shr    $0x1f,%r12d
    3b1a:	45 01 ec             	add    %r13d,%r12d
    3b1d:	41 d1 fc             	sar    %r12d
    3b20:	e9 bc 00 00 00       	jmpq   3be1 <insert+0x10b>
    3b25:	48 89 c3             	mov    %rax,%rbx
    3b28:	48 89 ee             	mov    %rbp,%rsi
    3b2b:	48 89 df             	mov    %rbx,%rdi
    3b2e:	e8 cd f7 ff ff       	callq  3300 <strcmp@plt>
    3b33:	85 c0                	test   %eax,%eax
    3b35:	0f 84 0e 01 00 00    	je     3c49 <insert+0x173>
    3b3b:	48 8b 83 00 01 00 00 	mov    0x100(%rbx),%rax
    3b42:	48 85 c0             	test   %rax,%rax
    3b45:	75 de                	jne    3b25 <insert+0x4f>
    3b47:	bf 08 01 00 00       	mov    $0x108,%edi
    3b4c:	e8 ff f7 ff ff       	callq  3350 <malloc@plt>
    3b51:	49 89 c7             	mov    %rax,%r15
    3b54:	ba 80 00 00 00       	mov    $0x80,%edx
    3b59:	48 89 ee             	mov    %rbp,%rsi
    3b5c:	48 89 c7             	mov    %rax,%rdi
    3b5f:	e8 0c f8 ff ff       	callq  3370 <__strcpy_chk@plt>
    3b64:	4d 63 e4             	movslq %r12d,%r12
    3b67:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    3b6c:	4a 8b 34 e0          	mov    (%rax,%r12,8),%rsi
    3b70:	49 8d bf 80 00 00 00 	lea    0x80(%r15),%rdi
    3b77:	ba 80 00 00 00       	mov    $0x80,%edx
    3b7c:	e8 ef f7 ff ff       	callq  3370 <__strcpy_chk@plt>
    3b81:	49 c7 87 00 01 00 00 	movq   $0x0,0x100(%r15)
    3b88:	00 00 00 00 
    3b8c:	4c 89 bb 00 01 00 00 	mov    %r15,0x100(%rbx)
    3b93:	41 83 06 01          	addl   $0x1,(%r14)
    3b97:	49 8d 45 01          	lea    0x1(%r13),%rax
    3b9b:	4c 39 6c 24 10       	cmp    %r13,0x10(%rsp)
    3ba0:	0f 84 c0 00 00 00    	je     3c66 <insert+0x190>
    3ba6:	49 89 c5             	mov    %rax,%r13
    3ba9:	48 8b 04 24          	mov    (%rsp),%rax
    3bad:	4a 8b 2c e8          	mov    (%rax,%r13,8),%rbp
    3bb1:	48 89 ef             	mov    %rbp,%rdi
    3bb4:	e8 ca fe ff ff       	callq  3a83 <hashcode>
    3bb9:	49 63 4e 04          	movslq 0x4(%r14),%rcx
    3bbd:	48 99                	cqto   
    3bbf:	48 f7 f9             	idiv   %rcx
    3bc2:	41 f6 c5 01          	test   $0x1,%r13b
    3bc6:	0f 84 47 ff ff ff    	je     3b13 <insert+0x3d>
    3bcc:	41 8d 4d 01          	lea    0x1(%r13),%ecx
    3bd0:	89 c8                	mov    %ecx,%eax
    3bd2:	c1 e8 1f             	shr    $0x1f,%eax
    3bd5:	01 c8                	add    %ecx,%eax
    3bd7:	d1 f8                	sar    %eax
    3bd9:	44 8b 64 24 1c       	mov    0x1c(%rsp),%r12d
    3bde:	41 29 c4             	sub    %eax,%r12d
    3be1:	48 63 d2             	movslq %edx,%rdx
    3be4:	49 8b 46 08          	mov    0x8(%r14),%rax
    3be8:	4c 8d 3c d0          	lea    (%rax,%rdx,8),%r15
    3bec:	49 8b 1f             	mov    (%r15),%rbx
    3bef:	48 85 db             	test   %rbx,%rbx
    3bf2:	0f 85 30 ff ff ff    	jne    3b28 <insert+0x52>
    3bf8:	bf 08 01 00 00       	mov    $0x108,%edi
    3bfd:	e8 4e f7 ff ff       	callq  3350 <malloc@plt>
    3c02:	48 89 c3             	mov    %rax,%rbx
    3c05:	ba 80 00 00 00       	mov    $0x80,%edx
    3c0a:	48 89 ee             	mov    %rbp,%rsi
    3c0d:	48 89 c7             	mov    %rax,%rdi
    3c10:	e8 5b f7 ff ff       	callq  3370 <__strcpy_chk@plt>
    3c15:	4d 63 e4             	movslq %r12d,%r12
    3c18:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    3c1d:	4a 8b 34 e0          	mov    (%rax,%r12,8),%rsi
    3c21:	48 8d bb 80 00 00 00 	lea    0x80(%rbx),%rdi
    3c28:	ba 80 00 00 00       	mov    $0x80,%edx
    3c2d:	e8 3e f7 ff ff       	callq  3370 <__strcpy_chk@plt>
    3c32:	48 c7 83 00 01 00 00 	movq   $0x0,0x100(%rbx)
    3c39:	00 00 00 00 
    3c3d:	49 89 1f             	mov    %rbx,(%r15)
    3c40:	41 83 06 01          	addl   $0x1,(%r14)
    3c44:	e9 4e ff ff ff       	jmpq   3b97 <insert+0xc1>
    3c49:	4d 63 e4             	movslq %r12d,%r12
    3c4c:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    3c51:	4a 8b 34 e0          	mov    (%rax,%r12,8),%rsi
    3c55:	48 8d bb 80 00 00 00 	lea    0x80(%rbx),%rdi
    3c5c:	ba 80 00 00 00       	mov    $0x80,%edx
    3c61:	e8 0a f7 ff ff       	callq  3370 <__strcpy_chk@plt>
    3c66:	48 83 c4 28          	add    $0x28,%rsp
    3c6a:	5b                   	pop    %rbx
    3c6b:	5d                   	pop    %rbp
    3c6c:	41 5c                	pop    %r12
    3c6e:	41 5d                	pop    %r13
    3c70:	41 5e                	pop    %r14
    3c72:	41 5f                	pop    %r15
    3c74:	c3                   	retq   

0000000000003c75 <get>:
    3c75:	f3 0f 1e fa          	endbr64 
    3c79:	55                   	push   %rbp
    3c7a:	53                   	push   %rbx
    3c7b:	48 83 ec 08          	sub    $0x8,%rsp
    3c7f:	48 89 fd             	mov    %rdi,%rbp
    3c82:	48 89 f3             	mov    %rsi,%rbx
    3c85:	e8 f9 fd ff ff       	callq  3a83 <hashcode>
    3c8a:	48 63 4b 04          	movslq 0x4(%rbx),%rcx
    3c8e:	48 99                	cqto   
    3c90:	48 f7 f9             	idiv   %rcx
    3c93:	48 63 d2             	movslq %edx,%rdx
    3c96:	48 8b 43 08          	mov    0x8(%rbx),%rax
    3c9a:	48 8b 1c d0          	mov    (%rax,%rdx,8),%rbx
    3c9e:	48 85 db             	test   %rbx,%rbx
    3ca1:	74 21                	je     3cc4 <get+0x4f>
    3ca3:	48 89 ee             	mov    %rbp,%rsi
    3ca6:	48 89 df             	mov    %rbx,%rdi
    3ca9:	e8 52 f6 ff ff       	callq  3300 <strcmp@plt>
    3cae:	85 c0                	test   %eax,%eax
    3cb0:	74 0e                	je     3cc0 <get+0x4b>
    3cb2:	48 8b 9b 00 01 00 00 	mov    0x100(%rbx),%rbx
    3cb9:	48 85 db             	test   %rbx,%rbx
    3cbc:	75 e5                	jne    3ca3 <get+0x2e>
    3cbe:	eb 04                	jmp    3cc4 <get+0x4f>
    3cc0:	48 83 eb 80          	sub    $0xffffffffffffff80,%rbx
    3cc4:	48 89 d8             	mov    %rbx,%rax
    3cc7:	48 83 c4 08          	add    $0x8,%rsp
    3ccb:	5b                   	pop    %rbx
    3ccc:	5d                   	pop    %rbp
    3ccd:	c3                   	retq   

0000000000003cce <prep6>:
    3cce:	f3 0f 1e fa          	endbr64 
    3cd2:	55                   	push   %rbp
    3cd3:	53                   	push   %rbx
    3cd4:	48 81 ec 88 00 00 00 	sub    $0x88,%rsp
    3cdb:	48 89 fb             	mov    %rdi,%rbx
    3cde:	bd 28 00 00 00       	mov    $0x28,%ebp
    3ce3:	64 48 8b 45 00       	mov    %fs:0x0(%rbp),%rax
    3ce8:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
    3ced:	31 c0                	xor    %eax,%eax
    3cef:	c7 07 00 00 00 00    	movl   $0x0,(%rdi)
    3cf5:	c7 47 04 05 00 00 00 	movl   $0x5,0x4(%rdi)
    3cfc:	bf 28 00 00 00       	mov    $0x28,%edi
    3d01:	e8 4a f6 ff ff       	callq  3350 <malloc@plt>
    3d06:	48 89 43 08          	mov    %rax,0x8(%rbx)
    3d0a:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    3d11:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
    3d18:	00 
    3d19:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
    3d20:	00 
    3d21:	48 c7 40 18 00 00 00 	movq   $0x0,0x18(%rax)
    3d28:	00 
    3d29:	48 c7 40 20 00 00 00 	movq   $0x0,0x20(%rax)
    3d30:	00 
    3d31:	48 8d 05 7f 24 00 00 	lea    0x247f(%rip),%rax        # 61b7 <_IO_stdin_used+0x1b7>
    3d38:	48 89 04 24          	mov    %rax,(%rsp)
    3d3c:	48 8d 05 7a 24 00 00 	lea    0x247a(%rip),%rax        # 61bd <_IO_stdin_used+0x1bd>
    3d43:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
    3d48:	48 8d 05 74 24 00 00 	lea    0x2474(%rip),%rax        # 61c3 <_IO_stdin_used+0x1c3>
    3d4f:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
    3d54:	48 8d 05 71 24 00 00 	lea    0x2471(%rip),%rax        # 61cc <_IO_stdin_used+0x1cc>
    3d5b:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    3d60:	48 8d 05 6c 24 00 00 	lea    0x246c(%rip),%rax        # 61d3 <_IO_stdin_used+0x1d3>
    3d67:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
    3d6c:	48 8d 05 64 24 00 00 	lea    0x2464(%rip),%rax        # 61d7 <_IO_stdin_used+0x1d7>
    3d73:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
    3d78:	48 8d 05 5d 24 00 00 	lea    0x245d(%rip),%rax        # 61dc <_IO_stdin_used+0x1dc>
    3d7f:	48 89 44 24 30       	mov    %rax,0x30(%rsp)
    3d84:	48 8d 05 57 24 00 00 	lea    0x2457(%rip),%rax        # 61e2 <_IO_stdin_used+0x1e2>
    3d8b:	48 89 44 24 40       	mov    %rax,0x40(%rsp)
    3d90:	48 8d 05 50 24 00 00 	lea    0x2450(%rip),%rax        # 61e7 <_IO_stdin_used+0x1e7>
    3d97:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    3d9c:	48 8d 05 49 24 00 00 	lea    0x2449(%rip),%rax        # 61ec <_IO_stdin_used+0x1ec>
    3da3:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
    3da8:	48 8d 05 41 24 00 00 	lea    0x2441(%rip),%rax        # 61f0 <_IO_stdin_used+0x1f0>
    3daf:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    3db4:	48 8d 05 3a 24 00 00 	lea    0x243a(%rip),%rax        # 61f5 <_IO_stdin_used+0x1f5>
    3dbb:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
    3dc0:	48 8d 05 34 24 00 00 	lea    0x2434(%rip),%rax        # 61fb <_IO_stdin_used+0x1fb>
    3dc7:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
    3dcc:	48 8d 05 2f 24 00 00 	lea    0x242f(%rip),%rax        # 6202 <_IO_stdin_used+0x202>
    3dd3:	48 89 44 24 70       	mov    %rax,0x70(%rsp)
    3dd8:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    3ddd:	48 89 e6             	mov    %rsp,%rsi
    3de0:	48 89 d9             	mov    %rbx,%rcx
    3de3:	bf 07 00 00 00       	mov    $0x7,%edi
    3de8:	e8 e9 fc ff ff       	callq  3ad6 <insert>
    3ded:	48 8b 44 24 78       	mov    0x78(%rsp),%rax
    3df2:	64 48 33 45 00       	xor    %fs:0x0(%rbp),%rax
    3df7:	75 0a                	jne    3e03 <prep6+0x135>
    3df9:	48 81 c4 88 00 00 00 	add    $0x88,%rsp
    3e00:	5b                   	pop    %rbx
    3e01:	5d                   	pop    %rbp
    3e02:	c3                   	retq   
    3e03:	e8 a8 f4 ff ff       	callq  32b0 <__stack_chk_fail@plt>

0000000000003e08 <phase_6>:
    3e08:	f3 0f 1e fa          	endbr64 
    3e0c:	41 56                	push   %r14
    3e0e:	41 55                	push   %r13
    3e10:	41 54                	push   %r12
    3e12:	55                   	push   %rbp
    3e13:	53                   	push   %rbx
    3e14:	48 81 ec c0 01 00 00 	sub    $0x1c0,%rsp
    3e1b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    3e22:	00 00 
    3e24:	48 89 84 24 b8 01 00 	mov    %rax,0x1b8(%rsp)
    3e2b:	00 
    3e2c:	31 c0                	xor    %eax,%eax
    3e2e:	48 8d 54 24 30       	lea    0x30(%rsp),%rdx
    3e33:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
    3e38:	48 8d 8c 24 b0 00 00 	lea    0xb0(%rsp),%rcx
    3e3f:	00 
    3e40:	48 89 4c 24 18       	mov    %rcx,0x18(%rsp)
    3e45:	4c 8d 84 24 30 01 00 	lea    0x130(%rsp),%r8
    3e4c:	00 
    3e4d:	4c 89 44 24 20       	mov    %r8,0x20(%rsp)
    3e52:	48 8d 35 b0 23 00 00 	lea    0x23b0(%rip),%rsi        # 6209 <_IO_stdin_used+0x209>
    3e59:	e8 02 f5 ff ff       	callq  3360 <__isoc99_sscanf@plt>
    3e5e:	83 f8 03             	cmp    $0x3,%eax
    3e61:	75 59                	jne    3ebc <phase_6+0xb4>
    3e63:	48 8d b4 24 b0 00 00 	lea    0xb0(%rsp),%rsi
    3e6a:	00 
    3e6b:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    3e70:	e8 8b f4 ff ff       	callq  3300 <strcmp@plt>
    3e75:	85 c0                	test   %eax,%eax
    3e77:	79 4a                	jns    3ec3 <phase_6+0xbb>
    3e79:	48 8d b4 24 30 01 00 	lea    0x130(%rsp),%rsi
    3e80:	00 
    3e81:	48 8d bc 24 b0 00 00 	lea    0xb0(%rsp),%rdi
    3e88:	00 
    3e89:	e8 72 f4 ff ff       	callq  3300 <strcmp@plt>
    3e8e:	85 c0                	test   %eax,%eax
    3e90:	79 38                	jns    3eca <phase_6+0xc2>
    3e92:	48 89 e3             	mov    %rsp,%rbx
    3e95:	48 89 df             	mov    %rbx,%rdi
    3e98:	e8 31 fe ff ff       	callq  3cce <prep6>
    3e9d:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
    3ea2:	48 89 de             	mov    %rbx,%rsi
    3ea5:	e8 cb fd ff ff       	callq  3c75 <get>
    3eaa:	48 89 c3             	mov    %rax,%rbx
    3ead:	48 8d 6c 24 10       	lea    0x10(%rsp),%rbp
    3eb2:	4c 8d 74 24 20       	lea    0x20(%rsp),%r14
    3eb7:	49 89 e5             	mov    %rsp,%r13
    3eba:	eb 23                	jmp    3edf <phase_6+0xd7>
    3ebc:	e8 21 05 00 00       	callq  43e2 <explode_bomb>
    3ec1:	eb a0                	jmp    3e63 <phase_6+0x5b>
    3ec3:	e8 1a 05 00 00       	callq  43e2 <explode_bomb>
    3ec8:	eb af                	jmp    3e79 <phase_6+0x71>
    3eca:	e8 13 05 00 00       	callq  43e2 <explode_bomb>
    3ecf:	eb c1                	jmp    3e92 <phase_6+0x8a>
    3ed1:	e8 0c 05 00 00       	callq  43e2 <explode_bomb>
    3ed6:	48 83 c5 08          	add    $0x8,%rbp
    3eda:	49 39 ee             	cmp    %rbp,%r14
    3edd:	74 2d                	je     3f0c <phase_6+0x104>
    3edf:	49 89 dc             	mov    %rbx,%r12
    3ee2:	48 8b 7d 08          	mov    0x8(%rbp),%rdi
    3ee6:	4c 89 ee             	mov    %r13,%rsi
    3ee9:	e8 87 fd ff ff       	callq  3c75 <get>
    3eee:	48 89 c3             	mov    %rax,%rbx
    3ef1:	4d 85 e4             	test   %r12,%r12
    3ef4:	74 db                	je     3ed1 <phase_6+0xc9>
    3ef6:	48 85 c0             	test   %rax,%rax
    3ef9:	74 d6                	je     3ed1 <phase_6+0xc9>
    3efb:	48 89 c6             	mov    %rax,%rsi
    3efe:	4c 89 e7             	mov    %r12,%rdi
    3f01:	e8 fa f3 ff ff       	callq  3300 <strcmp@plt>
    3f06:	85 c0                	test   %eax,%eax
    3f08:	7f cc                	jg     3ed6 <phase_6+0xce>
    3f0a:	eb c5                	jmp    3ed1 <phase_6+0xc9>
    3f0c:	48 8b 84 24 b8 01 00 	mov    0x1b8(%rsp),%rax
    3f13:	00 
    3f14:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    3f1b:	00 00 
    3f1d:	75 10                	jne    3f2f <phase_6+0x127>
    3f1f:	48 81 c4 c0 01 00 00 	add    $0x1c0,%rsp
    3f26:	5b                   	pop    %rbx
    3f27:	5d                   	pop    %rbp
    3f28:	41 5c                	pop    %r12
    3f2a:	41 5d                	pop    %r13
    3f2c:	41 5e                	pop    %r14
    3f2e:	c3                   	retq   
    3f2f:	e8 7c f3 ff ff       	callq  32b0 <__stack_chk_fail@plt>

0000000000003f34 <fun7>:
    3f34:	f3 0f 1e fa          	endbr64 
    3f38:	48 85 ff             	test   %rdi,%rdi
    3f3b:	74 32                	je     3f6f <fun7+0x3b>
    3f3d:	48 83 ec 08          	sub    $0x8,%rsp
    3f41:	8b 17                	mov    (%rdi),%edx
    3f43:	39 f2                	cmp    %esi,%edx
    3f45:	7f 0c                	jg     3f53 <fun7+0x1f>
    3f47:	b8 00 00 00 00       	mov    $0x0,%eax
    3f4c:	75 12                	jne    3f60 <fun7+0x2c>
    3f4e:	48 83 c4 08          	add    $0x8,%rsp
    3f52:	c3                   	retq   
    3f53:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    3f57:	e8 d8 ff ff ff       	callq  3f34 <fun7>
    3f5c:	01 c0                	add    %eax,%eax
    3f5e:	eb ee                	jmp    3f4e <fun7+0x1a>
    3f60:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    3f64:	e8 cb ff ff ff       	callq  3f34 <fun7>
    3f69:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    3f6d:	eb df                	jmp    3f4e <fun7+0x1a>
    3f6f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3f74:	c3                   	retq   

0000000000003f75 <secret_phase>:
    3f75:	f3 0f 1e fa          	endbr64 
    3f79:	53                   	push   %rbx
    3f7a:	e8 ea 04 00 00       	callq  4469 <read_line>
    3f7f:	48 89 c7             	mov    %rax,%rdi
    3f82:	ba 0a 00 00 00       	mov    $0xa,%edx
    3f87:	be 00 00 00 00       	mov    $0x0,%esi
    3f8c:	e8 af f3 ff ff       	callq  3340 <strtol@plt>
    3f91:	48 89 c3             	mov    %rax,%rbx
    3f94:	8d 40 ff             	lea    -0x1(%rax),%eax
    3f97:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    3f9c:	77 26                	ja     3fc4 <secret_phase+0x4f>
    3f9e:	89 de                	mov    %ebx,%esi
    3fa0:	48 8d 3d 99 61 00 00 	lea    0x6199(%rip),%rdi        # a140 <n1>
    3fa7:	e8 88 ff ff ff       	callq  3f34 <fun7>
    3fac:	83 f8 05             	cmp    $0x5,%eax
    3faf:	75 1a                	jne    3fcb <secret_phase+0x56>
    3fb1:	48 8d 3d d0 21 00 00 	lea    0x21d0(%rip),%rdi        # 6188 <_IO_stdin_used+0x188>
    3fb8:	e8 d3 f2 ff ff       	callq  3290 <puts@plt>
    3fbd:	e8 0a 06 00 00       	callq  45cc <phase_defused>
    3fc2:	5b                   	pop    %rbx
    3fc3:	c3                   	retq   
    3fc4:	e8 19 04 00 00       	callq  43e2 <explode_bomb>
    3fc9:	eb d3                	jmp    3f9e <secret_phase+0x29>
    3fcb:	e8 12 04 00 00       	callq  43e2 <explode_bomb>
    3fd0:	eb df                	jmp    3fb1 <secret_phase+0x3c>

0000000000003fd2 <sig_handler>:
    3fd2:	f3 0f 1e fa          	endbr64 
    3fd6:	50                   	push   %rax
    3fd7:	58                   	pop    %rax
    3fd8:	48 83 ec 08          	sub    $0x8,%rsp
    3fdc:	bf 0a 00 00 00       	mov    $0xa,%edi
    3fe1:	e8 6a f2 ff ff       	callq  3250 <putchar@plt>
    3fe6:	48 8d 3d 93 22 00 00 	lea    0x2293(%rip),%rdi        # 6280 <array.3484+0x40>
    3fed:	e8 9e f2 ff ff       	callq  3290 <puts@plt>
    3ff2:	48 8d 3d ab 2e 00 00 	lea    0x2eab(%rip),%rdi        # 6ea4 <array.3484+0xc64>
    3ff9:	e8 92 f2 ff ff       	callq  3290 <puts@plt>
    3ffe:	bf 01 00 00 00       	mov    $0x1,%edi
    4003:	e8 d8 f3 ff ff       	callq  33e0 <sleep@plt>
    4008:	48 8d 3d 86 2e 00 00 	lea    0x2e86(%rip),%rdi        # 6e95 <array.3484+0xc55>
    400f:	e8 7c f2 ff ff       	callq  3290 <puts@plt>
    4014:	bf 01 00 00 00       	mov    $0x1,%edi
    4019:	e8 c2 f3 ff ff       	callq  33e0 <sleep@plt>
    401e:	48 8d 3d 61 2e 00 00 	lea    0x2e61(%rip),%rdi        # 6e86 <array.3484+0xc46>
    4025:	e8 66 f2 ff ff       	callq  3290 <puts@plt>
    402a:	bf 01 00 00 00       	mov    $0x1,%edi
    402f:	e8 ac f3 ff ff       	callq  33e0 <sleep@plt>
    4034:	48 8d 3d 6d 22 00 00 	lea    0x226d(%rip),%rdi        # 62a8 <array.3484+0x68>
    403b:	e8 50 f2 ff ff       	callq  3290 <puts@plt>
    4040:	bf 10 00 00 00       	mov    $0x10,%edi
    4045:	e8 66 f3 ff ff       	callq  33b0 <exit@plt>

000000000000404a <invalid_phase>:
    404a:	f3 0f 1e fa          	endbr64 
    404e:	50                   	push   %rax
    404f:	58                   	pop    %rax
    4050:	48 83 ec 08          	sub    $0x8,%rsp
    4054:	48 89 fa             	mov    %rdi,%rdx
    4057:	48 8d 35 60 24 00 00 	lea    0x2460(%rip),%rsi        # 64be <array.3484+0x27e>
    405e:	bf 01 00 00 00       	mov    $0x1,%edi
    4063:	b8 00 00 00 00       	mov    $0x0,%eax
    4068:	e8 13 f3 ff ff       	callq  3380 <__printf_chk@plt>
    406d:	bf 08 00 00 00       	mov    $0x8,%edi
    4072:	e8 39 f3 ff ff       	callq  33b0 <exit@plt>

0000000000004077 <string_length>:
    4077:	f3 0f 1e fa          	endbr64 
    407b:	80 3f 00             	cmpb   $0x0,(%rdi)
    407e:	74 12                	je     4092 <string_length+0x1b>
    4080:	b8 00 00 00 00       	mov    $0x0,%eax
    4085:	48 83 c7 01          	add    $0x1,%rdi
    4089:	83 c0 01             	add    $0x1,%eax
    408c:	80 3f 00             	cmpb   $0x0,(%rdi)
    408f:	75 f4                	jne    4085 <string_length+0xe>
    4091:	c3                   	retq   
    4092:	b8 00 00 00 00       	mov    $0x0,%eax
    4097:	c3                   	retq   

0000000000004098 <strings_not_equal>:
    4098:	f3 0f 1e fa          	endbr64 
    409c:	41 54                	push   %r12
    409e:	55                   	push   %rbp
    409f:	53                   	push   %rbx
    40a0:	48 89 fb             	mov    %rdi,%rbx
    40a3:	48 89 f5             	mov    %rsi,%rbp
    40a6:	e8 cc ff ff ff       	callq  4077 <string_length>
    40ab:	41 89 c4             	mov    %eax,%r12d
    40ae:	48 89 ef             	mov    %rbp,%rdi
    40b1:	e8 c1 ff ff ff       	callq  4077 <string_length>
    40b6:	89 c2                	mov    %eax,%edx
    40b8:	b8 01 00 00 00       	mov    $0x1,%eax
    40bd:	41 39 d4             	cmp    %edx,%r12d
    40c0:	75 31                	jne    40f3 <strings_not_equal+0x5b>
    40c2:	0f b6 13             	movzbl (%rbx),%edx
    40c5:	84 d2                	test   %dl,%dl
    40c7:	74 1e                	je     40e7 <strings_not_equal+0x4f>
    40c9:	b8 00 00 00 00       	mov    $0x0,%eax
    40ce:	38 54 05 00          	cmp    %dl,0x0(%rbp,%rax,1)
    40d2:	75 1a                	jne    40ee <strings_not_equal+0x56>
    40d4:	48 83 c0 01          	add    $0x1,%rax
    40d8:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    40dc:	84 d2                	test   %dl,%dl
    40de:	75 ee                	jne    40ce <strings_not_equal+0x36>
    40e0:	b8 00 00 00 00       	mov    $0x0,%eax
    40e5:	eb 0c                	jmp    40f3 <strings_not_equal+0x5b>
    40e7:	b8 00 00 00 00       	mov    $0x0,%eax
    40ec:	eb 05                	jmp    40f3 <strings_not_equal+0x5b>
    40ee:	b8 01 00 00 00       	mov    $0x1,%eax
    40f3:	5b                   	pop    %rbx
    40f4:	5d                   	pop    %rbp
    40f5:	41 5c                	pop    %r12
    40f7:	c3                   	retq   

00000000000040f8 <initialize_bomb>:
    40f8:	f3 0f 1e fa          	endbr64 
    40fc:	55                   	push   %rbp
    40fd:	53                   	push   %rbx
    40fe:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    4105:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    410a:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    4111:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    4116:	48 83 ec 58          	sub    $0x58,%rsp
    411a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4121:	00 00 
    4123:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
    412a:	00 
    412b:	31 c0                	xor    %eax,%eax
    412d:	48 8d 35 9e fe ff ff 	lea    -0x162(%rip),%rsi        # 3fd2 <sig_handler>
    4134:	bf 02 00 00 00       	mov    $0x2,%edi
    4139:	e8 d2 f1 ff ff       	callq  3310 <signal@plt>
    413e:	48 89 e7             	mov    %rsp,%rdi
    4141:	be 40 00 00 00       	mov    $0x40,%esi
    4146:	e8 55 f2 ff ff       	callq  33a0 <gethostname@plt>
    414b:	85 c0                	test   %eax,%eax
    414d:	0f 85 9b 00 00 00    	jne    41ee <initialize_bomb+0xf6>
    4153:	48 8b 3d c6 60 00 00 	mov    0x60c6(%rip),%rdi        # a220 <host_table>
    415a:	48 8d 1d c7 60 00 00 	lea    0x60c7(%rip),%rbx        # a228 <host_table+0x8>
    4161:	48 89 e5             	mov    %rsp,%rbp
    4164:	48 85 ff             	test   %rdi,%rdi
    4167:	74 1d                	je     4186 <initialize_bomb+0x8e>
    4169:	48 89 ee             	mov    %rbp,%rsi
    416c:	e8 ef f0 ff ff       	callq  3260 <strcasecmp@plt>
    4171:	85 c0                	test   %eax,%eax
    4173:	0f 84 b0 00 00 00    	je     4229 <initialize_bomb+0x131>
    4179:	48 83 c3 08          	add    $0x8,%rbx
    417d:	48 8b 7b f8          	mov    -0x8(%rbx),%rdi
    4181:	48 85 ff             	test   %rdi,%rdi
    4184:	75 e3                	jne    4169 <initialize_bomb+0x71>
    4186:	48 89 e2             	mov    %rsp,%rdx
    4189:	48 8d 35 80 21 00 00 	lea    0x2180(%rip),%rsi        # 6310 <array.3484+0xd0>
    4190:	bf 01 00 00 00       	mov    $0x1,%edi
    4195:	b8 00 00 00 00       	mov    $0x0,%eax
    419a:	e8 e1 f1 ff ff       	callq  3380 <__printf_chk@plt>
    419f:	48 8d 3d 49 23 00 00 	lea    0x2349(%rip),%rdi        # 64ef <array.3484+0x2af>
    41a6:	e8 e5 f0 ff ff       	callq  3290 <puts@plt>
    41ab:	48 8b 15 6e 60 00 00 	mov    0x606e(%rip),%rdx        # a220 <host_table>
    41b2:	48 8d 1d 6f 60 00 00 	lea    0x606f(%rip),%rbx        # a228 <host_table+0x8>
    41b9:	48 8d 2d 0f 23 00 00 	lea    0x230f(%rip),%rbp        # 64cf <array.3484+0x28f>
    41c0:	48 85 d2             	test   %rdx,%rdx
    41c3:	74 1f                	je     41e4 <initialize_bomb+0xec>
    41c5:	48 89 ee             	mov    %rbp,%rsi
    41c8:	bf 01 00 00 00       	mov    $0x1,%edi
    41cd:	b8 00 00 00 00       	mov    $0x0,%eax
    41d2:	e8 a9 f1 ff ff       	callq  3380 <__printf_chk@plt>
    41d7:	48 83 c3 08          	add    $0x8,%rbx
    41db:	48 8b 53 f8          	mov    -0x8(%rbx),%rdx
    41df:	48 85 d2             	test   %rdx,%rdx
    41e2:	75 e1                	jne    41c5 <initialize_bomb+0xcd>
    41e4:	bf 08 00 00 00       	mov    $0x8,%edi
    41e9:	e8 c2 f1 ff ff       	callq  33b0 <exit@plt>
    41ee:	48 8d 3d e3 20 00 00 	lea    0x20e3(%rip),%rdi        # 62d8 <array.3484+0x98>
    41f5:	e8 96 f0 ff ff       	callq  3290 <puts@plt>
    41fa:	bf 08 00 00 00       	mov    $0x8,%edi
    41ff:	e8 ac f1 ff ff       	callq  33b0 <exit@plt>
    4204:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
    4209:	48 8d 35 c5 22 00 00 	lea    0x22c5(%rip),%rsi        # 64d5 <array.3484+0x295>
    4210:	bf 01 00 00 00       	mov    $0x1,%edi
    4215:	b8 00 00 00 00       	mov    $0x0,%eax
    421a:	e8 61 f1 ff ff       	callq  3380 <__printf_chk@plt>
    421f:	bf 08 00 00 00       	mov    $0x8,%edi
    4224:	e8 87 f1 ff ff       	callq  33b0 <exit@plt>
    4229:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    422e:	e8 05 0f 00 00       	callq  5138 <init_driver>
    4233:	85 c0                	test   %eax,%eax
    4235:	78 cd                	js     4204 <initialize_bomb+0x10c>
    4237:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
    423e:	00 
    423f:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    4246:	00 00 
    4248:	75 0a                	jne    4254 <initialize_bomb+0x15c>
    424a:	48 81 c4 58 20 00 00 	add    $0x2058,%rsp
    4251:	5b                   	pop    %rbx
    4252:	5d                   	pop    %rbp
    4253:	c3                   	retq   
    4254:	e8 57 f0 ff ff       	callq  32b0 <__stack_chk_fail@plt>

0000000000004259 <initialize_bomb_solve>:
    4259:	f3 0f 1e fa          	endbr64 
    425d:	c3                   	retq   

000000000000425e <blank_line>:
    425e:	f3 0f 1e fa          	endbr64 
    4262:	55                   	push   %rbp
    4263:	53                   	push   %rbx
    4264:	48 83 ec 08          	sub    $0x8,%rsp
    4268:	48 89 fd             	mov    %rdi,%rbp
    426b:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    426f:	84 db                	test   %bl,%bl
    4271:	74 1e                	je     4291 <blank_line+0x33>
    4273:	e8 78 f1 ff ff       	callq  33f0 <__ctype_b_loc@plt>
    4278:	48 83 c5 01          	add    $0x1,%rbp
    427c:	48 0f be db          	movsbq %bl,%rbx
    4280:	48 8b 00             	mov    (%rax),%rax
    4283:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    4288:	75 e1                	jne    426b <blank_line+0xd>
    428a:	b8 00 00 00 00       	mov    $0x0,%eax
    428f:	eb 05                	jmp    4296 <blank_line+0x38>
    4291:	b8 01 00 00 00       	mov    $0x1,%eax
    4296:	48 83 c4 08          	add    $0x8,%rsp
    429a:	5b                   	pop    %rbx
    429b:	5d                   	pop    %rbp
    429c:	c3                   	retq   

000000000000429d <skip>:
    429d:	f3 0f 1e fa          	endbr64 
    42a1:	55                   	push   %rbp
    42a2:	53                   	push   %rbx
    42a3:	48 83 ec 08          	sub    $0x8,%rsp
    42a7:	48 8d 2d b2 6f 00 00 	lea    0x6fb2(%rip),%rbp        # b260 <input_strings>
    42ae:	48 63 05 97 6f 00 00 	movslq 0x6f97(%rip),%rax        # b24c <num_input_strings>
    42b5:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    42b9:	48 c1 e7 04          	shl    $0x4,%rdi
    42bd:	48 01 ef             	add    %rbp,%rdi
    42c0:	48 8b 15 89 6f 00 00 	mov    0x6f89(%rip),%rdx        # b250 <infile>
    42c7:	be 50 00 00 00       	mov    $0x50,%esi
    42cc:	e8 1f f0 ff ff       	callq  32f0 <fgets@plt>
    42d1:	48 89 c3             	mov    %rax,%rbx
    42d4:	48 85 c0             	test   %rax,%rax
    42d7:	74 0c                	je     42e5 <skip+0x48>
    42d9:	48 89 c7             	mov    %rax,%rdi
    42dc:	e8 7d ff ff ff       	callq  425e <blank_line>
    42e1:	85 c0                	test   %eax,%eax
    42e3:	75 c9                	jne    42ae <skip+0x11>
    42e5:	48 89 d8             	mov    %rbx,%rax
    42e8:	48 83 c4 08          	add    $0x8,%rsp
    42ec:	5b                   	pop    %rbx
    42ed:	5d                   	pop    %rbp
    42ee:	c3                   	retq   

00000000000042ef <send_msg>:
    42ef:	f3 0f 1e fa          	endbr64 
    42f3:	53                   	push   %rbx
    42f4:	4c 8d 9c 24 00 c0 ff 	lea    -0x4000(%rsp),%r11
    42fb:	ff 
    42fc:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    4303:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    4308:	4c 39 dc             	cmp    %r11,%rsp
    430b:	75 ef                	jne    42fc <send_msg+0xd>
    430d:	48 83 ec 10          	sub    $0x10,%rsp
    4311:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4318:	00 00 
    431a:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
    4321:	00 
    4322:	31 c0                	xor    %eax,%eax
    4324:	8b 15 22 6f 00 00    	mov    0x6f22(%rip),%edx        # b24c <num_input_strings>
    432a:	8d 42 ff             	lea    -0x1(%rdx),%eax
    432d:	48 98                	cltq   
    432f:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    4333:	48 c1 e0 04          	shl    $0x4,%rax
    4337:	48 8d 0d 22 6f 00 00 	lea    0x6f22(%rip),%rcx        # b260 <input_strings>
    433e:	48 01 c8             	add    %rcx,%rax
    4341:	85 ff                	test   %edi,%edi
    4343:	4c 8d 0d c1 21 00 00 	lea    0x21c1(%rip),%r9        # 650b <array.3484+0x2cb>
    434a:	48 8d 0d c2 21 00 00 	lea    0x21c2(%rip),%rcx        # 6513 <array.3484+0x2d3>
    4351:	4c 0f 44 c9          	cmove  %rcx,%r9
    4355:	48 89 e3             	mov    %rsp,%rbx
    4358:	50                   	push   %rax
    4359:	52                   	push   %rdx
    435a:	44 8b 05 d3 5d 00 00 	mov    0x5dd3(%rip),%r8d        # a134 <bomb_id>
    4361:	48 8d 0d b4 21 00 00 	lea    0x21b4(%rip),%rcx        # 651c <array.3484+0x2dc>
    4368:	ba 00 20 00 00       	mov    $0x2000,%edx
    436d:	be 01 00 00 00       	mov    $0x1,%esi
    4372:	48 89 df             	mov    %rbx,%rdi
    4375:	b8 00 00 00 00       	mov    $0x0,%eax
    437a:	e8 81 f0 ff ff       	callq  3400 <__sprintf_chk@plt>
    437f:	4c 8d 84 24 10 20 00 	lea    0x2010(%rsp),%r8
    4386:	00 
    4387:	b9 00 00 00 00       	mov    $0x0,%ecx
    438c:	48 89 da             	mov    %rbx,%rdx
    438f:	48 8d 35 7a 5d 00 00 	lea    0x5d7a(%rip),%rsi        # a110 <user_password>
    4396:	48 8d 3d 8b 5d 00 00 	lea    0x5d8b(%rip),%rdi        # a128 <userid>
    439d:	e8 8b 0f 00 00       	callq  532d <driver_post>
    43a2:	48 83 c4 10          	add    $0x10,%rsp
    43a6:	85 c0                	test   %eax,%eax
    43a8:	78 1c                	js     43c6 <send_msg+0xd7>
    43aa:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
    43b1:	00 
    43b2:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    43b9:	00 00 
    43bb:	75 20                	jne    43dd <send_msg+0xee>
    43bd:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
    43c4:	5b                   	pop    %rbx
    43c5:	c3                   	retq   
    43c6:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
    43cd:	00 
    43ce:	e8 bd ee ff ff       	callq  3290 <puts@plt>
    43d3:	bf 00 00 00 00       	mov    $0x0,%edi
    43d8:	e8 d3 ef ff ff       	callq  33b0 <exit@plt>
    43dd:	e8 ce ee ff ff       	callq  32b0 <__stack_chk_fail@plt>

00000000000043e2 <explode_bomb>:
    43e2:	f3 0f 1e fa          	endbr64 
    43e6:	50                   	push   %rax
    43e7:	58                   	pop    %rax
    43e8:	48 83 ec 08          	sub    $0x8,%rsp
    43ec:	48 8d 3d 35 21 00 00 	lea    0x2135(%rip),%rdi        # 6528 <array.3484+0x2e8>
    43f3:	e8 98 ee ff ff       	callq  3290 <puts@plt>
    43f8:	48 8d 3d 32 21 00 00 	lea    0x2132(%rip),%rdi        # 6531 <array.3484+0x2f1>
    43ff:	e8 8c ee ff ff       	callq  3290 <puts@plt>
    4404:	bf 00 00 00 00       	mov    $0x0,%edi
    4409:	e8 e1 fe ff ff       	callq  42ef <send_msg>
    440e:	48 8d 3d 2b 1f 00 00 	lea    0x1f2b(%rip),%rdi        # 6340 <array.3484+0x100>
    4415:	e8 76 ee ff ff       	callq  3290 <puts@plt>
    441a:	bf 08 00 00 00       	mov    $0x8,%edi
    441f:	e8 8c ef ff ff       	callq  33b0 <exit@plt>

0000000000004424 <read_six_numbers>:
    4424:	f3 0f 1e fa          	endbr64 
    4428:	48 83 ec 08          	sub    $0x8,%rsp
    442c:	48 89 f2             	mov    %rsi,%rdx
    442f:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    4433:	48 8d 46 14          	lea    0x14(%rsi),%rax
    4437:	50                   	push   %rax
    4438:	48 8d 46 10          	lea    0x10(%rsi),%rax
    443c:	50                   	push   %rax
    443d:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    4441:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    4445:	48 8d 35 fc 20 00 00 	lea    0x20fc(%rip),%rsi        # 6548 <array.3484+0x308>
    444c:	b8 00 00 00 00       	mov    $0x0,%eax
    4451:	e8 0a ef ff ff       	callq  3360 <__isoc99_sscanf@plt>
    4456:	48 83 c4 10          	add    $0x10,%rsp
    445a:	83 f8 05             	cmp    $0x5,%eax
    445d:	7e 05                	jle    4464 <read_six_numbers+0x40>
    445f:	48 83 c4 08          	add    $0x8,%rsp
    4463:	c3                   	retq   
    4464:	e8 79 ff ff ff       	callq  43e2 <explode_bomb>

0000000000004469 <read_line>:
    4469:	f3 0f 1e fa          	endbr64 
    446d:	48 83 ec 08          	sub    $0x8,%rsp
    4471:	b8 00 00 00 00       	mov    $0x0,%eax
    4476:	e8 22 fe ff ff       	callq  429d <skip>
    447b:	48 85 c0             	test   %rax,%rax
    447e:	74 76                	je     44f6 <read_line+0x8d>
    4480:	8b 35 c6 6d 00 00    	mov    0x6dc6(%rip),%esi        # b24c <num_input_strings>
    4486:	48 63 c6             	movslq %esi,%rax
    4489:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    448d:	48 c1 e2 04          	shl    $0x4,%rdx
    4491:	48 8d 05 c8 6d 00 00 	lea    0x6dc8(%rip),%rax        # b260 <input_strings>
    4498:	48 01 c2             	add    %rax,%rdx
    449b:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    44a2:	b8 00 00 00 00       	mov    $0x0,%eax
    44a7:	48 89 d7             	mov    %rdx,%rdi
    44aa:	f2 ae                	repnz scas %es:(%rdi),%al
    44ac:	48 f7 d1             	not    %rcx
    44af:	48 83 e9 01          	sub    $0x1,%rcx
    44b3:	83 f9 4e             	cmp    $0x4e,%ecx
    44b6:	0f 8f b2 00 00 00    	jg     456e <read_line+0x105>
    44bc:	83 e9 01             	sub    $0x1,%ecx
    44bf:	4c 63 c1             	movslq %ecx,%r8
    44c2:	48 63 c6             	movslq %esi,%rax
    44c5:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    44c9:	48 c1 e0 04          	shl    $0x4,%rax
    44cd:	48 89 c7             	mov    %rax,%rdi
    44d0:	48 8d 05 89 6d 00 00 	lea    0x6d89(%rip),%rax        # b260 <input_strings>
    44d7:	48 01 f8             	add    %rdi,%rax
    44da:	42 80 3c 00 0a       	cmpb   $0xa,(%rax,%r8,1)
    44df:	0f 84 d3 00 00 00    	je     45b8 <read_line+0x14f>
    44e5:	83 c6 01             	add    $0x1,%esi
    44e8:	89 35 5e 6d 00 00    	mov    %esi,0x6d5e(%rip)        # b24c <num_input_strings>
    44ee:	48 89 d0             	mov    %rdx,%rax
    44f1:	48 83 c4 08          	add    $0x8,%rsp
    44f5:	c3                   	retq   
    44f6:	48 8b 05 23 6d 00 00 	mov    0x6d23(%rip),%rax        # b220 <stdin@@GLIBC_2.2.5>
    44fd:	48 39 05 4c 6d 00 00 	cmp    %rax,0x6d4c(%rip)        # b250 <infile>
    4504:	74 1b                	je     4521 <read_line+0xb8>
    4506:	48 8d 3d 6b 20 00 00 	lea    0x206b(%rip),%rdi        # 6578 <array.3484+0x338>
    450d:	e8 1e ed ff ff       	callq  3230 <getenv@plt>
    4512:	48 85 c0             	test   %rax,%rax
    4515:	74 20                	je     4537 <read_line+0xce>
    4517:	bf 00 00 00 00       	mov    $0x0,%edi
    451c:	e8 8f ee ff ff       	callq  33b0 <exit@plt>
    4521:	48 8d 3d 32 20 00 00 	lea    0x2032(%rip),%rdi        # 655a <array.3484+0x31a>
    4528:	e8 63 ed ff ff       	callq  3290 <puts@plt>
    452d:	bf 08 00 00 00       	mov    $0x8,%edi
    4532:	e8 79 ee ff ff       	callq  33b0 <exit@plt>
    4537:	48 8b 05 e2 6c 00 00 	mov    0x6ce2(%rip),%rax        # b220 <stdin@@GLIBC_2.2.5>
    453e:	48 89 05 0b 6d 00 00 	mov    %rax,0x6d0b(%rip)        # b250 <infile>
    4545:	b8 00 00 00 00       	mov    $0x0,%eax
    454a:	e8 4e fd ff ff       	callq  429d <skip>
    454f:	48 85 c0             	test   %rax,%rax
    4552:	0f 85 28 ff ff ff    	jne    4480 <read_line+0x17>
    4558:	48 8d 3d fb 1f 00 00 	lea    0x1ffb(%rip),%rdi        # 655a <array.3484+0x31a>
    455f:	e8 2c ed ff ff       	callq  3290 <puts@plt>
    4564:	bf 00 00 00 00       	mov    $0x0,%edi
    4569:	e8 42 ee ff ff       	callq  33b0 <exit@plt>
    456e:	48 8d 3d 0e 20 00 00 	lea    0x200e(%rip),%rdi        # 6583 <array.3484+0x343>
    4575:	e8 16 ed ff ff       	callq  3290 <puts@plt>
    457a:	8b 05 cc 6c 00 00    	mov    0x6ccc(%rip),%eax        # b24c <num_input_strings>
    4580:	8d 50 01             	lea    0x1(%rax),%edx
    4583:	89 15 c3 6c 00 00    	mov    %edx,0x6cc3(%rip)        # b24c <num_input_strings>
    4589:	48 98                	cltq   
    458b:	48 6b c0 50          	imul   $0x50,%rax,%rax
    458f:	48 8d 15 ca 6c 00 00 	lea    0x6cca(%rip),%rdx        # b260 <input_strings>
    4596:	48 be 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rsi
    459d:	75 6e 63 
    45a0:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
    45a7:	2a 2a 00 
    45aa:	48 89 34 02          	mov    %rsi,(%rdx,%rax,1)
    45ae:	48 89 7c 02 08       	mov    %rdi,0x8(%rdx,%rax,1)
    45b3:	e8 2a fe ff ff       	callq  43e2 <explode_bomb>
    45b8:	48 8d 05 a1 6c 00 00 	lea    0x6ca1(%rip),%rax        # b260 <input_strings>
    45bf:	48 01 f8             	add    %rdi,%rax
    45c2:	42 c6 04 00 00       	movb   $0x0,(%rax,%r8,1)
    45c7:	e9 19 ff ff ff       	jmpq   44e5 <read_line+0x7c>

00000000000045cc <phase_defused>:
    45cc:	f3 0f 1e fa          	endbr64 
    45d0:	48 81 ec b8 00 00 00 	sub    $0xb8,%rsp
    45d7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    45de:	00 00 
    45e0:	48 89 84 24 a8 00 00 	mov    %rax,0xa8(%rsp)
    45e7:	00 
    45e8:	31 c0                	xor    %eax,%eax
    45ea:	bf 01 00 00 00       	mov    $0x1,%edi
    45ef:	e8 fb fc ff ff       	callq  42ef <send_msg>
    45f4:	83 3d 51 6c 00 00 06 	cmpl   $0x6,0x6c51(%rip)        # b24c <num_input_strings>
    45fb:	74 1f                	je     461c <phase_defused+0x50>
    45fd:	48 8b 84 24 a8 00 00 	mov    0xa8(%rsp),%rax
    4604:	00 
    4605:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    460c:	00 00 
    460e:	0f 85 58 01 00 00    	jne    476c <phase_defused+0x1a0>
    4614:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
    461b:	c3                   	retq   
    461c:	48 8d 4c 24 30       	lea    0x30(%rsp),%rcx
    4621:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
    4626:	4c 8d 44 24 50       	lea    0x50(%rsp),%r8
    462b:	48 8d 35 d7 1b 00 00 	lea    0x1bd7(%rip),%rsi        # 6209 <_IO_stdin_used+0x209>
    4632:	48 8d 3d 67 6d 00 00 	lea    0x6d67(%rip),%rdi        # b3a0 <input_strings+0x140>
    4639:	b8 00 00 00 00       	mov    $0x0,%eax
    463e:	e8 1d ed ff ff       	callq  3360 <__isoc99_sscanf@plt>
    4643:	83 f8 03             	cmp    $0x3,%eax
    4646:	0f 84 e0 00 00 00    	je     472c <phase_defused+0x160>
    464c:	48 8d 3d 7d 1d 00 00 	lea    0x1d7d(%rip),%rdi        # 63d0 <array.3484+0x190>
    4653:	e8 38 ec ff ff       	callq  3290 <puts@plt>
    4658:	48 8d 3d a1 1d 00 00 	lea    0x1da1(%rip),%rdi        # 6400 <array.3484+0x1c0>
    465f:	e8 2c ec ff ff       	callq  3290 <puts@plt>
    4664:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
    4669:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
    466e:	4c 8d 44 24 50       	lea    0x50(%rsp),%r8
    4673:	48 8d 35 2b 1f 00 00 	lea    0x1f2b(%rip),%rsi        # 65a5 <array.3484+0x365>
    467a:	48 8d 3d cf 6c 00 00 	lea    0x6ccf(%rip),%rdi        # b350 <input_strings+0xf0>
    4681:	b8 00 00 00 00       	mov    $0x0,%eax
    4686:	e8 d5 ec ff ff       	callq  3360 <__isoc99_sscanf@plt>
    468b:	83 f8 03             	cmp    $0x3,%eax
    468e:	0f 85 69 ff ff ff    	jne    45fd <phase_defused+0x31>
    4694:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    4699:	48 8d 35 0e 1f 00 00 	lea    0x1f0e(%rip),%rsi        # 65ae <array.3484+0x36e>
    46a0:	e8 f3 f9 ff ff       	callq  4098 <strings_not_equal>
    46a5:	85 c0                	test   %eax,%eax
    46a7:	0f 85 50 ff ff ff    	jne    45fd <phase_defused+0x31>
    46ad:	48 8d 3d 26 1f 00 00 	lea    0x1f26(%rip),%rdi        # 65da <array.3484+0x39a>
    46b4:	e8 d7 eb ff ff       	callq  3290 <puts@plt>
    46b9:	bf 02 00 00 00       	mov    $0x2,%edi
    46be:	e8 1d ed ff ff       	callq  33e0 <sleep@plt>
    46c3:	48 8d 3d eb 1e 00 00 	lea    0x1eeb(%rip),%rdi        # 65b5 <array.3484+0x375>
    46ca:	e8 c1 eb ff ff       	callq  3290 <puts@plt>
    46cf:	bf 03 00 00 00       	mov    $0x3,%edi
    46d4:	e8 07 ed ff ff       	callq  33e0 <sleep@plt>
    46d9:	48 8d 3d e8 1e 00 00 	lea    0x1ee8(%rip),%rdi        # 65c8 <array.3484+0x388>
    46e0:	e8 ab eb ff ff       	callq  3290 <puts@plt>
    46e5:	bf 04 00 00 00       	mov    $0x4,%edi
    46ea:	e8 f1 ec ff ff       	callq  33e0 <sleep@plt>
    46ef:	48 8d 3d e8 1e 00 00 	lea    0x1ee8(%rip),%rdi        # 65de <array.3484+0x39e>
    46f6:	e8 95 eb ff ff       	callq  3290 <puts@plt>
    46fb:	bf 05 00 00 00       	mov    $0x5,%edi
    4700:	e8 db ec ff ff       	callq  33e0 <sleep@plt>
    4705:	48 8d 3d 3c 1d 00 00 	lea    0x1d3c(%rip),%rdi        # 6448 <array.3484+0x208>
    470c:	e8 7f eb ff ff       	callq  3290 <puts@plt>
    4711:	bf 05 00 00 00       	mov    $0x5,%edi
    4716:	e8 c5 ec ff ff       	callq  33e0 <sleep@plt>
    471b:	48 8d 3d 5e 1d 00 00 	lea    0x1d5e(%rip),%rdi        # 6480 <array.3484+0x240>
    4722:	e8 69 eb ff ff       	callq  3290 <puts@plt>
    4727:	e9 d1 fe ff ff       	jmpq   45fd <phase_defused+0x31>
    472c:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    4731:	48 8d 35 66 1e 00 00 	lea    0x1e66(%rip),%rsi        # 659e <array.3484+0x35e>
    4738:	e8 5b f9 ff ff       	callq  4098 <strings_not_equal>
    473d:	85 c0                	test   %eax,%eax
    473f:	0f 85 07 ff ff ff    	jne    464c <phase_defused+0x80>
    4745:	48 8d 3d 1c 1c 00 00 	lea    0x1c1c(%rip),%rdi        # 6368 <array.3484+0x128>
    474c:	e8 3f eb ff ff       	callq  3290 <puts@plt>
    4751:	48 8d 3d 40 1c 00 00 	lea    0x1c40(%rip),%rdi        # 6398 <array.3484+0x158>
    4758:	e8 33 eb ff ff       	callq  3290 <puts@plt>
    475d:	b8 00 00 00 00       	mov    $0x0,%eax
    4762:	e8 0e f8 ff ff       	callq  3f75 <secret_phase>
    4767:	e9 e0 fe ff ff       	jmpq   464c <phase_defused+0x80>
    476c:	e8 3f eb ff ff       	callq  32b0 <__stack_chk_fail@plt>

0000000000004771 <sigalrm_handler>:
    4771:	f3 0f 1e fa          	endbr64 
    4775:	50                   	push   %rax
    4776:	58                   	pop    %rax
    4777:	48 83 ec 08          	sub    $0x8,%rsp
    477b:	b9 00 00 00 00       	mov    $0x0,%ecx
    4780:	48 8d 15 21 31 00 00 	lea    0x3121(%rip),%rdx        # 78a8 <array.3484+0x1668>
    4787:	be 01 00 00 00       	mov    $0x1,%esi
    478c:	48 8b 3d ad 6a 00 00 	mov    0x6aad(%rip),%rdi        # b240 <stderr@@GLIBC_2.2.5>
    4793:	b8 00 00 00 00       	mov    $0x0,%eax
    4798:	e8 33 ec ff ff       	callq  33d0 <__fprintf_chk@plt>
    479d:	bf 01 00 00 00       	mov    $0x1,%edi
    47a2:	e8 09 ec ff ff       	callq  33b0 <exit@plt>

00000000000047a7 <rio_readlineb>:
    47a7:	41 56                	push   %r14
    47a9:	41 55                	push   %r13
    47ab:	41 54                	push   %r12
    47ad:	55                   	push   %rbp
    47ae:	53                   	push   %rbx
    47af:	48 89 f5             	mov    %rsi,%rbp
    47b2:	48 83 fa 01          	cmp    $0x1,%rdx
    47b6:	0f 86 90 00 00 00    	jbe    484c <rio_readlineb+0xa5>
    47bc:	48 89 fb             	mov    %rdi,%rbx
    47bf:	4c 8d 74 16 ff       	lea    -0x1(%rsi,%rdx,1),%r14
    47c4:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    47ca:	4c 8d 67 10          	lea    0x10(%rdi),%r12
    47ce:	eb 54                	jmp    4824 <rio_readlineb+0x7d>
    47d0:	e8 9b ea ff ff       	callq  3270 <__errno_location@plt>
    47d5:	83 38 04             	cmpl   $0x4,(%rax)
    47d8:	75 53                	jne    482d <rio_readlineb+0x86>
    47da:	ba 00 20 00 00       	mov    $0x2000,%edx
    47df:	4c 89 e6             	mov    %r12,%rsi
    47e2:	8b 3b                	mov    (%rbx),%edi
    47e4:	e8 f7 ea ff ff       	callq  32e0 <read@plt>
    47e9:	89 c2                	mov    %eax,%edx
    47eb:	89 43 04             	mov    %eax,0x4(%rbx)
    47ee:	85 c0                	test   %eax,%eax
    47f0:	78 de                	js     47d0 <rio_readlineb+0x29>
    47f2:	85 c0                	test   %eax,%eax
    47f4:	74 40                	je     4836 <rio_readlineb+0x8f>
    47f6:	4c 89 63 08          	mov    %r12,0x8(%rbx)
    47fa:	48 8b 43 08          	mov    0x8(%rbx),%rax
    47fe:	0f b6 08             	movzbl (%rax),%ecx
    4801:	48 83 c0 01          	add    $0x1,%rax
    4805:	48 89 43 08          	mov    %rax,0x8(%rbx)
    4809:	83 ea 01             	sub    $0x1,%edx
    480c:	89 53 04             	mov    %edx,0x4(%rbx)
    480f:	48 83 c5 01          	add    $0x1,%rbp
    4813:	88 4d ff             	mov    %cl,-0x1(%rbp)
    4816:	80 f9 0a             	cmp    $0xa,%cl
    4819:	74 3c                	je     4857 <rio_readlineb+0xb0>
    481b:	41 83 c5 01          	add    $0x1,%r13d
    481f:	4c 39 f5             	cmp    %r14,%rbp
    4822:	74 30                	je     4854 <rio_readlineb+0xad>
    4824:	8b 53 04             	mov    0x4(%rbx),%edx
    4827:	85 d2                	test   %edx,%edx
    4829:	7e af                	jle    47da <rio_readlineb+0x33>
    482b:	eb cd                	jmp    47fa <rio_readlineb+0x53>
    482d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    4834:	eb 05                	jmp    483b <rio_readlineb+0x94>
    4836:	b8 00 00 00 00       	mov    $0x0,%eax
    483b:	85 c0                	test   %eax,%eax
    483d:	75 28                	jne    4867 <rio_readlineb+0xc0>
    483f:	b8 00 00 00 00       	mov    $0x0,%eax
    4844:	41 83 fd 01          	cmp    $0x1,%r13d
    4848:	75 0d                	jne    4857 <rio_readlineb+0xb0>
    484a:	eb 12                	jmp    485e <rio_readlineb+0xb7>
    484c:	41 bd 01 00 00 00    	mov    $0x1,%r13d
    4852:	eb 03                	jmp    4857 <rio_readlineb+0xb0>
    4854:	4c 89 f5             	mov    %r14,%rbp
    4857:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
    485b:	49 63 c5             	movslq %r13d,%rax
    485e:	5b                   	pop    %rbx
    485f:	5d                   	pop    %rbp
    4860:	41 5c                	pop    %r12
    4862:	41 5d                	pop    %r13
    4864:	41 5e                	pop    %r14
    4866:	c3                   	retq   
    4867:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    486e:	eb ee                	jmp    485e <rio_readlineb+0xb7>

0000000000004870 <submitr>:
    4870:	f3 0f 1e fa          	endbr64 
    4874:	41 57                	push   %r15
    4876:	41 56                	push   %r14
    4878:	41 55                	push   %r13
    487a:	41 54                	push   %r12
    487c:	55                   	push   %rbp
    487d:	53                   	push   %rbx
    487e:	4c 8d 9c 24 00 60 ff 	lea    -0xa000(%rsp),%r11
    4885:	ff 
    4886:	48 81 ec 00 10 00 00 	sub    $0x1000,%rsp
    488d:	48 83 0c 24 00       	orq    $0x0,(%rsp)
    4892:	4c 39 dc             	cmp    %r11,%rsp
    4895:	75 ef                	jne    4886 <submitr+0x16>
    4897:	48 83 ec 68          	sub    $0x68,%rsp
    489b:	49 89 fd             	mov    %rdi,%r13
    489e:	89 f5                	mov    %esi,%ebp
    48a0:	48 89 14 24          	mov    %rdx,(%rsp)
    48a4:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
    48a9:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
    48ae:	4c 89 4c 24 10       	mov    %r9,0x10(%rsp)
    48b3:	48 8b 9c 24 a0 a0 00 	mov    0xa0a0(%rsp),%rbx
    48ba:	00 
    48bb:	4c 8b bc 24 a8 a0 00 	mov    0xa0a8(%rsp),%r15
    48c2:	00 
    48c3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    48ca:	00 00 
    48cc:	48 89 84 24 58 a0 00 	mov    %rax,0xa058(%rsp)
    48d3:	00 
    48d4:	31 c0                	xor    %eax,%eax
    48d6:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%rsp)
    48dd:	00 
    48de:	ba 00 00 00 00       	mov    $0x0,%edx
    48e3:	be 01 00 00 00       	mov    $0x1,%esi
    48e8:	bf 02 00 00 00       	mov    $0x2,%edi
    48ed:	e8 1e eb ff ff       	callq  3410 <socket@plt>
    48f2:	85 c0                	test   %eax,%eax
    48f4:	0f 88 17 01 00 00    	js     4a11 <submitr+0x1a1>
    48fa:	41 89 c4             	mov    %eax,%r12d
    48fd:	4c 89 ef             	mov    %r13,%rdi
    4900:	e8 1b ea ff ff       	callq  3320 <gethostbyname@plt>
    4905:	48 85 c0             	test   %rax,%rax
    4908:	0f 84 53 01 00 00    	je     4a61 <submitr+0x1f1>
    490e:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
    4913:	48 c7 44 24 30 00 00 	movq   $0x0,0x30(%rsp)
    491a:	00 00 
    491c:	48 c7 44 24 38 00 00 	movq   $0x0,0x38(%rsp)
    4923:	00 00 
    4925:	66 c7 44 24 30 02 00 	movw   $0x2,0x30(%rsp)
    492c:	48 63 50 14          	movslq 0x14(%rax),%rdx
    4930:	48 8b 40 18          	mov    0x18(%rax),%rax
    4934:	48 8d 7c 24 34       	lea    0x34(%rsp),%rdi
    4939:	b9 0c 00 00 00       	mov    $0xc,%ecx
    493e:	48 8b 30             	mov    (%rax),%rsi
    4941:	e8 ea e9 ff ff       	callq  3330 <__memmove_chk@plt>
    4946:	66 c1 c5 08          	rol    $0x8,%bp
    494a:	66 89 6c 24 32       	mov    %bp,0x32(%rsp)
    494f:	ba 10 00 00 00       	mov    $0x10,%edx
    4954:	4c 89 ee             	mov    %r13,%rsi
    4957:	44 89 e7             	mov    %r12d,%edi
    495a:	e8 61 ea ff ff       	callq  33c0 <connect@plt>
    495f:	85 c0                	test   %eax,%eax
    4961:	0f 88 65 01 00 00    	js     4acc <submitr+0x25c>
    4967:	49 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%r9
    496e:	b8 00 00 00 00       	mov    $0x0,%eax
    4973:	4c 89 c9             	mov    %r9,%rcx
    4976:	48 89 df             	mov    %rbx,%rdi
    4979:	f2 ae                	repnz scas %es:(%rdi),%al
    497b:	48 f7 d1             	not    %rcx
    497e:	48 89 ce             	mov    %rcx,%rsi
    4981:	4c 89 c9             	mov    %r9,%rcx
    4984:	48 8b 3c 24          	mov    (%rsp),%rdi
    4988:	f2 ae                	repnz scas %es:(%rdi),%al
    498a:	49 89 c8             	mov    %rcx,%r8
    498d:	4c 89 c9             	mov    %r9,%rcx
    4990:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
    4995:	f2 ae                	repnz scas %es:(%rdi),%al
    4997:	48 89 ca             	mov    %rcx,%rdx
    499a:	48 f7 d2             	not    %rdx
    499d:	4c 89 c9             	mov    %r9,%rcx
    49a0:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    49a5:	f2 ae                	repnz scas %es:(%rdi),%al
    49a7:	4c 29 c2             	sub    %r8,%rdx
    49aa:	48 29 ca             	sub    %rcx,%rdx
    49ad:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
    49b2:	48 8d 44 02 7b       	lea    0x7b(%rdx,%rax,1),%rax
    49b7:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
    49bd:	0f 87 66 01 00 00    	ja     4b29 <submitr+0x2b9>
    49c3:	48 8d 94 24 50 40 00 	lea    0x4050(%rsp),%rdx
    49ca:	00 
    49cb:	b9 00 04 00 00       	mov    $0x400,%ecx
    49d0:	b8 00 00 00 00       	mov    $0x0,%eax
    49d5:	48 89 d7             	mov    %rdx,%rdi
    49d8:	f3 48 ab             	rep stos %rax,%es:(%rdi)
    49db:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    49e2:	48 89 df             	mov    %rbx,%rdi
    49e5:	f2 ae                	repnz scas %es:(%rdi),%al
    49e7:	48 f7 d1             	not    %rcx
    49ea:	48 8d 41 ff          	lea    -0x1(%rcx),%rax
    49ee:	83 f9 01             	cmp    $0x1,%ecx
    49f1:	0f 84 84 06 00 00    	je     507b <submitr+0x80b>
    49f7:	8d 40 ff             	lea    -0x1(%rax),%eax
    49fa:	4c 8d 74 03 01       	lea    0x1(%rbx,%rax,1),%r14
    49ff:	48 89 d5             	mov    %rdx,%rbp
    4a02:	49 bd d9 ff 00 00 00 	movabs $0x2000000000ffd9,%r13
    4a09:	00 20 00 
    4a0c:	e9 a6 01 00 00       	jmpq   4bb7 <submitr+0x347>
    4a11:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    4a18:	3a 20 43 
    4a1b:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    4a22:	20 75 6e 
    4a25:	49 89 07             	mov    %rax,(%r15)
    4a28:	49 89 57 08          	mov    %rdx,0x8(%r15)
    4a2c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    4a33:	74 6f 20 
    4a36:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    4a3d:	65 20 73 
    4a40:	49 89 47 10          	mov    %rax,0x10(%r15)
    4a44:	49 89 57 18          	mov    %rdx,0x18(%r15)
    4a48:	41 c7 47 20 6f 63 6b 	movl   $0x656b636f,0x20(%r15)
    4a4f:	65 
    4a50:	66 41 c7 47 24 74 00 	movw   $0x74,0x24(%r15)
    4a57:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4a5c:	e9 92 04 00 00       	jmpq   4ef3 <submitr+0x683>
    4a61:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    4a68:	3a 20 44 
    4a6b:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    4a72:	20 75 6e 
    4a75:	49 89 07             	mov    %rax,(%r15)
    4a78:	49 89 57 08          	mov    %rdx,0x8(%r15)
    4a7c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    4a83:	74 6f 20 
    4a86:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    4a8d:	76 65 20 
    4a90:	49 89 47 10          	mov    %rax,0x10(%r15)
    4a94:	49 89 57 18          	mov    %rdx,0x18(%r15)
    4a98:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    4a9f:	72 20 61 
    4aa2:	49 89 47 20          	mov    %rax,0x20(%r15)
    4aa6:	41 c7 47 28 64 64 72 	movl   $0x65726464,0x28(%r15)
    4aad:	65 
    4aae:	66 41 c7 47 2c 73 73 	movw   $0x7373,0x2c(%r15)
    4ab5:	41 c6 47 2e 00       	movb   $0x0,0x2e(%r15)
    4aba:	44 89 e7             	mov    %r12d,%edi
    4abd:	e8 0e e8 ff ff       	callq  32d0 <close@plt>
    4ac2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4ac7:	e9 27 04 00 00       	jmpq   4ef3 <submitr+0x683>
    4acc:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
    4ad3:	3a 20 55 
    4ad6:	48 ba 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rdx
    4add:	20 74 6f 
    4ae0:	49 89 07             	mov    %rax,(%r15)
    4ae3:	49 89 57 08          	mov    %rdx,0x8(%r15)
    4ae7:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
    4aee:	65 63 74 
    4af1:	48 ba 20 74 6f 20 74 	movabs $0x20656874206f7420,%rdx
    4af8:	68 65 20 
    4afb:	49 89 47 10          	mov    %rax,0x10(%r15)
    4aff:	49 89 57 18          	mov    %rdx,0x18(%r15)
    4b03:	41 c7 47 20 73 65 72 	movl   $0x76726573,0x20(%r15)
    4b0a:	76 
    4b0b:	66 41 c7 47 24 65 72 	movw   $0x7265,0x24(%r15)
    4b12:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    4b17:	44 89 e7             	mov    %r12d,%edi
    4b1a:	e8 b1 e7 ff ff       	callq  32d0 <close@plt>
    4b1f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4b24:	e9 ca 03 00 00       	jmpq   4ef3 <submitr+0x683>
    4b29:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    4b30:	3a 20 52 
    4b33:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    4b3a:	20 73 74 
    4b3d:	49 89 07             	mov    %rax,(%r15)
    4b40:	49 89 57 08          	mov    %rdx,0x8(%r15)
    4b44:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
    4b4b:	74 6f 6f 
    4b4e:	48 ba 20 6c 61 72 67 	movabs $0x202e656772616c20,%rdx
    4b55:	65 2e 20 
    4b58:	49 89 47 10          	mov    %rax,0x10(%r15)
    4b5c:	49 89 57 18          	mov    %rdx,0x18(%r15)
    4b60:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
    4b67:	61 73 65 
    4b6a:	48 ba 20 53 55 42 4d 	movabs $0x5254494d42555320,%rdx
    4b71:	49 54 52 
    4b74:	49 89 47 20          	mov    %rax,0x20(%r15)
    4b78:	49 89 57 28          	mov    %rdx,0x28(%r15)
    4b7c:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
    4b83:	55 46 00 
    4b86:	49 89 47 30          	mov    %rax,0x30(%r15)
    4b8a:	44 89 e7             	mov    %r12d,%edi
    4b8d:	e8 3e e7 ff ff       	callq  32d0 <close@plt>
    4b92:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4b97:	e9 57 03 00 00       	jmpq   4ef3 <submitr+0x683>
    4b9c:	49 0f a3 c5          	bt     %rax,%r13
    4ba0:	73 21                	jae    4bc3 <submitr+0x353>
    4ba2:	44 88 45 00          	mov    %r8b,0x0(%rbp)
    4ba6:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    4baa:	48 83 c3 01          	add    $0x1,%rbx
    4bae:	4c 39 f3             	cmp    %r14,%rbx
    4bb1:	0f 84 c4 04 00 00    	je     507b <submitr+0x80b>
    4bb7:	44 0f b6 03          	movzbl (%rbx),%r8d
    4bbb:	41 8d 40 d6          	lea    -0x2a(%r8),%eax
    4bbf:	3c 35                	cmp    $0x35,%al
    4bc1:	76 d9                	jbe    4b9c <submitr+0x32c>
    4bc3:	44 89 c0             	mov    %r8d,%eax
    4bc6:	83 e0 df             	and    $0xffffffdf,%eax
    4bc9:	83 e8 41             	sub    $0x41,%eax
    4bcc:	3c 19                	cmp    $0x19,%al
    4bce:	76 d2                	jbe    4ba2 <submitr+0x332>
    4bd0:	41 80 f8 20          	cmp    $0x20,%r8b
    4bd4:	74 63                	je     4c39 <submitr+0x3c9>
    4bd6:	41 8d 40 e0          	lea    -0x20(%r8),%eax
    4bda:	3c 5f                	cmp    $0x5f,%al
    4bdc:	76 0a                	jbe    4be8 <submitr+0x378>
    4bde:	41 80 f8 09          	cmp    $0x9,%r8b
    4be2:	0f 85 06 04 00 00    	jne    4fee <submitr+0x77e>
    4be8:	48 8d bc 24 50 80 00 	lea    0x8050(%rsp),%rdi
    4bef:	00 
    4bf0:	45 0f b6 c0          	movzbl %r8b,%r8d
    4bf4:	48 8d 0d ab 2d 00 00 	lea    0x2dab(%rip),%rcx        # 79a6 <array.3484+0x1766>
    4bfb:	ba 08 00 00 00       	mov    $0x8,%edx
    4c00:	be 01 00 00 00       	mov    $0x1,%esi
    4c05:	b8 00 00 00 00       	mov    $0x0,%eax
    4c0a:	e8 f1 e7 ff ff       	callq  3400 <__sprintf_chk@plt>
    4c0f:	0f b6 84 24 50 80 00 	movzbl 0x8050(%rsp),%eax
    4c16:	00 
    4c17:	88 45 00             	mov    %al,0x0(%rbp)
    4c1a:	0f b6 84 24 51 80 00 	movzbl 0x8051(%rsp),%eax
    4c21:	00 
    4c22:	88 45 01             	mov    %al,0x1(%rbp)
    4c25:	0f b6 84 24 52 80 00 	movzbl 0x8052(%rsp),%eax
    4c2c:	00 
    4c2d:	88 45 02             	mov    %al,0x2(%rbp)
    4c30:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
    4c34:	e9 71 ff ff ff       	jmpq   4baa <submitr+0x33a>
    4c39:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
    4c3d:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
    4c41:	e9 64 ff ff ff       	jmpq   4baa <submitr+0x33a>
    4c46:	48 b8 45 72 72 6f 72 	movabs $0x47203a726f727245,%rax
    4c4d:	3a 20 47 
    4c50:	48 ba 45 54 20 72 65 	movabs $0x6575716572205445,%rdx
    4c57:	71 75 65 
    4c5a:	49 89 07             	mov    %rax,(%r15)
    4c5d:	49 89 57 08          	mov    %rdx,0x8(%r15)
    4c61:	48 b8 73 74 20 65 78 	movabs $0x6565637865207473,%rax
    4c68:	63 65 65 
    4c6b:	48 ba 64 73 20 62 75 	movabs $0x6566667562207364,%rdx
    4c72:	66 66 65 
    4c75:	49 89 47 10          	mov    %rax,0x10(%r15)
    4c79:	49 89 57 18          	mov    %rdx,0x18(%r15)
    4c7d:	41 c7 47 20 72 20 73 	movl   $0x69732072,0x20(%r15)
    4c84:	69 
    4c85:	66 41 c7 47 24 7a 65 	movw   $0x657a,0x24(%r15)
    4c8c:	41 c6 47 26 00       	movb   $0x0,0x26(%r15)
    4c91:	44 89 e7             	mov    %r12d,%edi
    4c94:	e8 37 e6 ff ff       	callq  32d0 <close@plt>
    4c99:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4c9e:	e9 50 02 00 00       	jmpq   4ef3 <submitr+0x683>
    4ca3:	48 01 c5             	add    %rax,%rbp
    4ca6:	48 29 c3             	sub    %rax,%rbx
    4ca9:	74 26                	je     4cd1 <submitr+0x461>
    4cab:	48 89 da             	mov    %rbx,%rdx
    4cae:	48 89 ee             	mov    %rbp,%rsi
    4cb1:	44 89 e7             	mov    %r12d,%edi
    4cb4:	e8 e7 e5 ff ff       	callq  32a0 <write@plt>
    4cb9:	48 85 c0             	test   %rax,%rax
    4cbc:	7f e5                	jg     4ca3 <submitr+0x433>
    4cbe:	e8 ad e5 ff ff       	callq  3270 <__errno_location@plt>
    4cc3:	83 38 04             	cmpl   $0x4,(%rax)
    4cc6:	0f 85 c3 02 00 00    	jne    4f8f <submitr+0x71f>
    4ccc:	4c 89 e8             	mov    %r13,%rax
    4ccf:	eb d2                	jmp    4ca3 <submitr+0x433>
    4cd1:	44 89 64 24 40       	mov    %r12d,0x40(%rsp)
    4cd6:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%rsp)
    4cdd:	00 
    4cde:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    4ce3:	48 8d 44 24 50       	lea    0x50(%rsp),%rax
    4ce8:	48 89 44 24 48       	mov    %rax,0x48(%rsp)
    4ced:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    4cf4:	00 
    4cf5:	ba 00 20 00 00       	mov    $0x2000,%edx
    4cfa:	e8 a8 fa ff ff       	callq  47a7 <rio_readlineb>
    4cff:	48 85 c0             	test   %rax,%rax
    4d02:	0f 8e ec 00 00 00    	jle    4df4 <submitr+0x584>
    4d08:	48 8d 4c 24 2c       	lea    0x2c(%rsp),%rcx
    4d0d:	48 8d 94 24 50 60 00 	lea    0x6050(%rsp),%rdx
    4d14:	00 
    4d15:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    4d1c:	00 
    4d1d:	4c 8d 84 24 50 80 00 	lea    0x8050(%rsp),%r8
    4d24:	00 
    4d25:	48 8d 35 81 2c 00 00 	lea    0x2c81(%rip),%rsi        # 79ad <array.3484+0x176d>
    4d2c:	b8 00 00 00 00       	mov    $0x0,%eax
    4d31:	e8 2a e6 ff ff       	callq  3360 <__isoc99_sscanf@plt>
    4d36:	44 8b 44 24 2c       	mov    0x2c(%rsp),%r8d
    4d3b:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
    4d42:	0f 85 20 01 00 00    	jne    4e68 <submitr+0x5f8>
    4d48:	48 8d 1d 6f 2c 00 00 	lea    0x2c6f(%rip),%rbx        # 79be <array.3484+0x177e>
    4d4f:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    4d56:	00 
    4d57:	b9 03 00 00 00       	mov    $0x3,%ecx
    4d5c:	48 89 df             	mov    %rbx,%rdi
    4d5f:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    4d61:	0f 97 c0             	seta   %al
    4d64:	1c 00                	sbb    $0x0,%al
    4d66:	84 c0                	test   %al,%al
    4d68:	0f 84 31 01 00 00    	je     4e9f <submitr+0x62f>
    4d6e:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    4d75:	00 
    4d76:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    4d7b:	ba 00 20 00 00       	mov    $0x2000,%edx
    4d80:	e8 22 fa ff ff       	callq  47a7 <rio_readlineb>
    4d85:	48 85 c0             	test   %rax,%rax
    4d88:	7f c5                	jg     4d4f <submitr+0x4df>
    4d8a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    4d91:	3a 20 43 
    4d94:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    4d9b:	20 75 6e 
    4d9e:	49 89 07             	mov    %rax,(%r15)
    4da1:	49 89 57 08          	mov    %rdx,0x8(%r15)
    4da5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    4dac:	74 6f 20 
    4daf:	48 ba 72 65 61 64 20 	movabs $0x6165682064616572,%rdx
    4db6:	68 65 61 
    4db9:	49 89 47 10          	mov    %rax,0x10(%r15)
    4dbd:	49 89 57 18          	mov    %rdx,0x18(%r15)
    4dc1:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
    4dc8:	66 72 6f 
    4dcb:	48 ba 6d 20 73 65 72 	movabs $0x726576726573206d,%rdx
    4dd2:	76 65 72 
    4dd5:	49 89 47 20          	mov    %rax,0x20(%r15)
    4dd9:	49 89 57 28          	mov    %rdx,0x28(%r15)
    4ddd:	41 c6 47 30 00       	movb   $0x0,0x30(%r15)
    4de2:	44 89 e7             	mov    %r12d,%edi
    4de5:	e8 e6 e4 ff ff       	callq  32d0 <close@plt>
    4dea:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4def:	e9 ff 00 00 00       	jmpq   4ef3 <submitr+0x683>
    4df4:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    4dfb:	3a 20 43 
    4dfe:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    4e05:	20 75 6e 
    4e08:	49 89 07             	mov    %rax,(%r15)
    4e0b:	49 89 57 08          	mov    %rdx,0x8(%r15)
    4e0f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    4e16:	74 6f 20 
    4e19:	48 ba 72 65 61 64 20 	movabs $0x7269662064616572,%rdx
    4e20:	66 69 72 
    4e23:	49 89 47 10          	mov    %rax,0x10(%r15)
    4e27:	49 89 57 18          	mov    %rdx,0x18(%r15)
    4e2b:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
    4e32:	61 64 65 
    4e35:	48 ba 72 20 66 72 6f 	movabs $0x73206d6f72662072,%rdx
    4e3c:	6d 20 73 
    4e3f:	49 89 47 20          	mov    %rax,0x20(%r15)
    4e43:	49 89 57 28          	mov    %rdx,0x28(%r15)
    4e47:	41 c7 47 30 65 72 76 	movl   $0x65767265,0x30(%r15)
    4e4e:	65 
    4e4f:	66 41 c7 47 34 72 00 	movw   $0x72,0x34(%r15)
    4e56:	44 89 e7             	mov    %r12d,%edi
    4e59:	e8 72 e4 ff ff       	callq  32d0 <close@plt>
    4e5e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4e63:	e9 8b 00 00 00       	jmpq   4ef3 <submitr+0x683>
    4e68:	4c 8d 8c 24 50 80 00 	lea    0x8050(%rsp),%r9
    4e6f:	00 
    4e70:	48 8d 0d 59 2a 00 00 	lea    0x2a59(%rip),%rcx        # 78d0 <array.3484+0x1690>
    4e77:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    4e7e:	be 01 00 00 00       	mov    $0x1,%esi
    4e83:	4c 89 ff             	mov    %r15,%rdi
    4e86:	b8 00 00 00 00       	mov    $0x0,%eax
    4e8b:	e8 70 e5 ff ff       	callq  3400 <__sprintf_chk@plt>
    4e90:	44 89 e7             	mov    %r12d,%edi
    4e93:	e8 38 e4 ff ff       	callq  32d0 <close@plt>
    4e98:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4e9d:	eb 54                	jmp    4ef3 <submitr+0x683>
    4e9f:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    4ea6:	00 
    4ea7:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
    4eac:	ba 00 20 00 00       	mov    $0x2000,%edx
    4eb1:	e8 f1 f8 ff ff       	callq  47a7 <rio_readlineb>
    4eb6:	48 85 c0             	test   %rax,%rax
    4eb9:	7e 61                	jle    4f1c <submitr+0x6ac>
    4ebb:	48 8d b4 24 50 20 00 	lea    0x2050(%rsp),%rsi
    4ec2:	00 
    4ec3:	4c 89 ff             	mov    %r15,%rdi
    4ec6:	e8 b5 e3 ff ff       	callq  3280 <strcpy@plt>
    4ecb:	44 89 e7             	mov    %r12d,%edi
    4ece:	e8 fd e3 ff ff       	callq  32d0 <close@plt>
    4ed3:	b9 03 00 00 00       	mov    $0x3,%ecx
    4ed8:	48 8d 3d e2 2a 00 00 	lea    0x2ae2(%rip),%rdi        # 79c1 <array.3484+0x1781>
    4edf:	4c 89 fe             	mov    %r15,%rsi
    4ee2:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
    4ee4:	0f 97 c0             	seta   %al
    4ee7:	1c 00                	sbb    $0x0,%al
    4ee9:	84 c0                	test   %al,%al
    4eeb:	0f 95 c0             	setne  %al
    4eee:	0f b6 c0             	movzbl %al,%eax
    4ef1:	f7 d8                	neg    %eax
    4ef3:	48 8b 94 24 58 a0 00 	mov    0xa058(%rsp),%rdx
    4efa:	00 
    4efb:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
    4f02:	00 00 
    4f04:	0f 85 fb 01 00 00    	jne    5105 <submitr+0x895>
    4f0a:	48 81 c4 68 a0 00 00 	add    $0xa068,%rsp
    4f11:	5b                   	pop    %rbx
    4f12:	5d                   	pop    %rbp
    4f13:	41 5c                	pop    %r12
    4f15:	41 5d                	pop    %r13
    4f17:	41 5e                	pop    %r14
    4f19:	41 5f                	pop    %r15
    4f1b:	c3                   	retq   
    4f1c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    4f23:	3a 20 43 
    4f26:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    4f2d:	20 75 6e 
    4f30:	49 89 07             	mov    %rax,(%r15)
    4f33:	49 89 57 08          	mov    %rdx,0x8(%r15)
    4f37:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    4f3e:	74 6f 20 
    4f41:	48 ba 72 65 61 64 20 	movabs $0x6174732064616572,%rdx
    4f48:	73 74 61 
    4f4b:	49 89 47 10          	mov    %rax,0x10(%r15)
    4f4f:	49 89 57 18          	mov    %rdx,0x18(%r15)
    4f53:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
    4f5a:	65 73 73 
    4f5d:	48 ba 61 67 65 20 66 	movabs $0x6d6f726620656761,%rdx
    4f64:	72 6f 6d 
    4f67:	49 89 47 20          	mov    %rax,0x20(%r15)
    4f6b:	49 89 57 28          	mov    %rdx,0x28(%r15)
    4f6f:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
    4f76:	65 72 00 
    4f79:	49 89 47 30          	mov    %rax,0x30(%r15)
    4f7d:	44 89 e7             	mov    %r12d,%edi
    4f80:	e8 4b e3 ff ff       	callq  32d0 <close@plt>
    4f85:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4f8a:	e9 64 ff ff ff       	jmpq   4ef3 <submitr+0x683>
    4f8f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    4f96:	3a 20 43 
    4f99:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    4fa0:	20 75 6e 
    4fa3:	49 89 07             	mov    %rax,(%r15)
    4fa6:	49 89 57 08          	mov    %rdx,0x8(%r15)
    4faa:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    4fb1:	74 6f 20 
    4fb4:	48 ba 77 72 69 74 65 	movabs $0x6f74206574697277,%rdx
    4fbb:	20 74 6f 
    4fbe:	49 89 47 10          	mov    %rax,0x10(%r15)
    4fc2:	49 89 57 18          	mov    %rdx,0x18(%r15)
    4fc6:	48 b8 20 74 68 65 20 	movabs $0x7265732065687420,%rax
    4fcd:	73 65 72 
    4fd0:	49 89 47 20          	mov    %rax,0x20(%r15)
    4fd4:	41 c7 47 28 76 65 72 	movl   $0x726576,0x28(%r15)
    4fdb:	00 
    4fdc:	44 89 e7             	mov    %r12d,%edi
    4fdf:	e8 ec e2 ff ff       	callq  32d0 <close@plt>
    4fe4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    4fe9:	e9 05 ff ff ff       	jmpq   4ef3 <submitr+0x683>
    4fee:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
    4ff5:	3a 20 52 
    4ff8:	48 ba 65 73 75 6c 74 	movabs $0x747320746c757365,%rdx
    4fff:	20 73 74 
    5002:	49 89 07             	mov    %rax,(%r15)
    5005:	49 89 57 08          	mov    %rdx,0x8(%r15)
    5009:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
    5010:	63 6f 6e 
    5013:	48 ba 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rdx
    501a:	20 61 6e 
    501d:	49 89 47 10          	mov    %rax,0x10(%r15)
    5021:	49 89 57 18          	mov    %rdx,0x18(%r15)
    5025:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
    502c:	67 61 6c 
    502f:	48 ba 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rdx
    5036:	6e 70 72 
    5039:	49 89 47 20          	mov    %rax,0x20(%r15)
    503d:	49 89 57 28          	mov    %rdx,0x28(%r15)
    5041:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
    5048:	6c 65 20 
    504b:	48 ba 63 68 61 72 61 	movabs $0x6574636172616863,%rdx
    5052:	63 74 65 
    5055:	49 89 47 30          	mov    %rax,0x30(%r15)
    5059:	49 89 57 38          	mov    %rdx,0x38(%r15)
    505d:	66 41 c7 47 40 72 2e 	movw   $0x2e72,0x40(%r15)
    5064:	41 c6 47 42 00       	movb   $0x0,0x42(%r15)
    5069:	44 89 e7             	mov    %r12d,%edi
    506c:	e8 5f e2 ff ff       	callq  32d0 <close@plt>
    5071:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    5076:	e9 78 fe ff ff       	jmpq   4ef3 <submitr+0x683>
    507b:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    5082:	00 
    5083:	48 8d 84 24 50 40 00 	lea    0x4050(%rsp),%rax
    508a:	00 
    508b:	50                   	push   %rax
    508c:	ff 74 24 18          	pushq  0x18(%rsp)
    5090:	ff 74 24 28          	pushq  0x28(%rsp)
    5094:	ff 74 24 20          	pushq  0x20(%rsp)
    5098:	4c 8b 4c 24 20       	mov    0x20(%rsp),%r9
    509d:	4c 8d 05 5c 28 00 00 	lea    0x285c(%rip),%r8        # 7900 <array.3484+0x16c0>
    50a4:	b9 00 20 00 00       	mov    $0x2000,%ecx
    50a9:	ba 01 00 00 00       	mov    $0x1,%edx
    50ae:	be 00 20 00 00       	mov    $0x2000,%esi
    50b3:	b8 00 00 00 00       	mov    $0x0,%eax
    50b8:	e8 83 e1 ff ff       	callq  3240 <__snprintf_chk@plt>
    50bd:	48 83 c4 20          	add    $0x20,%rsp
    50c1:	3d ff 1f 00 00       	cmp    $0x1fff,%eax
    50c6:	0f 8f 7a fb ff ff    	jg     4c46 <submitr+0x3d6>
    50cc:	48 8d bc 24 50 20 00 	lea    0x2050(%rsp),%rdi
    50d3:	00 
    50d4:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    50db:	b8 00 00 00 00       	mov    $0x0,%eax
    50e0:	f2 ae                	repnz scas %es:(%rdi),%al
    50e2:	48 f7 d1             	not    %rcx
    50e5:	48 89 cb             	mov    %rcx,%rbx
    50e8:	48 83 eb 01          	sub    $0x1,%rbx
    50ec:	0f 84 df fb ff ff    	je     4cd1 <submitr+0x461>
    50f2:	48 8d ac 24 50 20 00 	lea    0x2050(%rsp),%rbp
    50f9:	00 
    50fa:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    5100:	e9 a6 fb ff ff       	jmpq   4cab <submitr+0x43b>
    5105:	e8 a6 e1 ff ff       	callq  32b0 <__stack_chk_fail@plt>

000000000000510a <init_timeout>:
    510a:	f3 0f 1e fa          	endbr64 
    510e:	85 ff                	test   %edi,%edi
    5110:	75 01                	jne    5113 <init_timeout+0x9>
    5112:	c3                   	retq   
    5113:	53                   	push   %rbx
    5114:	89 fb                	mov    %edi,%ebx
    5116:	48 8d 35 54 f6 ff ff 	lea    -0x9ac(%rip),%rsi        # 4771 <sigalrm_handler>
    511d:	bf 0e 00 00 00       	mov    $0xe,%edi
    5122:	e8 e9 e1 ff ff       	callq  3310 <signal@plt>
    5127:	85 db                	test   %ebx,%ebx
    5129:	bf 00 00 00 00       	mov    $0x0,%edi
    512e:	0f 49 fb             	cmovns %ebx,%edi
    5131:	e8 8a e1 ff ff       	callq  32c0 <alarm@plt>
    5136:	5b                   	pop    %rbx
    5137:	c3                   	retq   

0000000000005138 <init_driver>:
    5138:	f3 0f 1e fa          	endbr64 
    513c:	41 54                	push   %r12
    513e:	55                   	push   %rbp
    513f:	53                   	push   %rbx
    5140:	48 83 ec 20          	sub    $0x20,%rsp
    5144:	48 89 fd             	mov    %rdi,%rbp
    5147:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    514e:	00 00 
    5150:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
    5155:	31 c0                	xor    %eax,%eax
    5157:	be 01 00 00 00       	mov    $0x1,%esi
    515c:	bf 0d 00 00 00       	mov    $0xd,%edi
    5161:	e8 aa e1 ff ff       	callq  3310 <signal@plt>
    5166:	be 01 00 00 00       	mov    $0x1,%esi
    516b:	bf 1d 00 00 00       	mov    $0x1d,%edi
    5170:	e8 9b e1 ff ff       	callq  3310 <signal@plt>
    5175:	be 01 00 00 00       	mov    $0x1,%esi
    517a:	bf 1d 00 00 00       	mov    $0x1d,%edi
    517f:	e8 8c e1 ff ff       	callq  3310 <signal@plt>
    5184:	ba 00 00 00 00       	mov    $0x0,%edx
    5189:	be 01 00 00 00       	mov    $0x1,%esi
    518e:	bf 02 00 00 00       	mov    $0x2,%edi
    5193:	e8 78 e2 ff ff       	callq  3410 <socket@plt>
    5198:	85 c0                	test   %eax,%eax
    519a:	0f 88 9c 00 00 00    	js     523c <init_driver+0x104>
    51a0:	89 c3                	mov    %eax,%ebx
    51a2:	48 8d 3d af 27 00 00 	lea    0x27af(%rip),%rdi        # 7958 <array.3484+0x1718>
    51a9:	e8 72 e1 ff ff       	callq  3320 <gethostbyname@plt>
    51ae:	48 85 c0             	test   %rax,%rax
    51b1:	0f 84 d1 00 00 00    	je     5288 <init_driver+0x150>
    51b7:	49 89 e4             	mov    %rsp,%r12
    51ba:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    51c1:	00 
    51c2:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    51c9:	00 00 
    51cb:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    51d1:	48 63 50 14          	movslq 0x14(%rax),%rdx
    51d5:	48 8b 40 18          	mov    0x18(%rax),%rax
    51d9:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
    51de:	b9 0c 00 00 00       	mov    $0xc,%ecx
    51e3:	48 8b 30             	mov    (%rax),%rsi
    51e6:	e8 45 e1 ff ff       	callq  3330 <__memmove_chk@plt>
    51eb:	66 c7 44 24 02 3b 6e 	movw   $0x6e3b,0x2(%rsp)
    51f2:	ba 10 00 00 00       	mov    $0x10,%edx
    51f7:	4c 89 e6             	mov    %r12,%rsi
    51fa:	89 df                	mov    %ebx,%edi
    51fc:	e8 bf e1 ff ff       	callq  33c0 <connect@plt>
    5201:	85 c0                	test   %eax,%eax
    5203:	0f 88 e7 00 00 00    	js     52f0 <init_driver+0x1b8>
    5209:	89 df                	mov    %ebx,%edi
    520b:	e8 c0 e0 ff ff       	callq  32d0 <close@plt>
    5210:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
    5216:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
    521a:	b8 00 00 00 00       	mov    $0x0,%eax
    521f:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
    5224:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
    522b:	00 00 
    522d:	0f 85 f5 00 00 00    	jne    5328 <init_driver+0x1f0>
    5233:	48 83 c4 20          	add    $0x20,%rsp
    5237:	5b                   	pop    %rbx
    5238:	5d                   	pop    %rbp
    5239:	41 5c                	pop    %r12
    523b:	c3                   	retq   
    523c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
    5243:	3a 20 43 
    5246:	48 ba 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rdx
    524d:	20 75 6e 
    5250:	48 89 45 00          	mov    %rax,0x0(%rbp)
    5254:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    5258:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    525f:	74 6f 20 
    5262:	48 ba 63 72 65 61 74 	movabs $0x7320657461657263,%rdx
    5269:	65 20 73 
    526c:	48 89 45 10          	mov    %rax,0x10(%rbp)
    5270:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    5274:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
    527b:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
    5281:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    5286:	eb 97                	jmp    521f <init_driver+0xe7>
    5288:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
    528f:	3a 20 44 
    5292:	48 ba 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rdx
    5299:	20 75 6e 
    529c:	48 89 45 00          	mov    %rax,0x0(%rbp)
    52a0:	48 89 55 08          	mov    %rdx,0x8(%rbp)
    52a4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
    52ab:	74 6f 20 
    52ae:	48 ba 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rdx
    52b5:	76 65 20 
    52b8:	48 89 45 10          	mov    %rax,0x10(%rbp)
    52bc:	48 89 55 18          	mov    %rdx,0x18(%rbp)
    52c0:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
    52c7:	72 20 61 
    52ca:	48 89 45 20          	mov    %rax,0x20(%rbp)
    52ce:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
    52d5:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
    52db:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
    52df:	89 df                	mov    %ebx,%edi
    52e1:	e8 ea df ff ff       	callq  32d0 <close@plt>
    52e6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    52eb:	e9 2f ff ff ff       	jmpq   521f <init_driver+0xe7>
    52f0:	4c 8d 05 61 26 00 00 	lea    0x2661(%rip),%r8        # 7958 <array.3484+0x1718>
    52f7:	48 8d 0d 82 26 00 00 	lea    0x2682(%rip),%rcx        # 7980 <array.3484+0x1740>
    52fe:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
    5305:	be 01 00 00 00       	mov    $0x1,%esi
    530a:	48 89 ef             	mov    %rbp,%rdi
    530d:	b8 00 00 00 00       	mov    $0x0,%eax
    5312:	e8 e9 e0 ff ff       	callq  3400 <__sprintf_chk@plt>
    5317:	89 df                	mov    %ebx,%edi
    5319:	e8 b2 df ff ff       	callq  32d0 <close@plt>
    531e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    5323:	e9 f7 fe ff ff       	jmpq   521f <init_driver+0xe7>
    5328:	e8 83 df ff ff       	callq  32b0 <__stack_chk_fail@plt>

000000000000532d <driver_post>:
    532d:	f3 0f 1e fa          	endbr64 
    5331:	53                   	push   %rbx
    5332:	4c 89 c3             	mov    %r8,%rbx
    5335:	85 c9                	test   %ecx,%ecx
    5337:	75 17                	jne    5350 <driver_post+0x23>
    5339:	48 85 ff             	test   %rdi,%rdi
    533c:	74 05                	je     5343 <driver_post+0x16>
    533e:	80 3f 00             	cmpb   $0x0,(%rdi)
    5341:	75 33                	jne    5376 <driver_post+0x49>
    5343:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    5348:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    534c:	89 c8                	mov    %ecx,%eax
    534e:	5b                   	pop    %rbx
    534f:	c3                   	retq   
    5350:	48 8d 35 6d 26 00 00 	lea    0x266d(%rip),%rsi        # 79c4 <array.3484+0x1784>
    5357:	bf 01 00 00 00       	mov    $0x1,%edi
    535c:	b8 00 00 00 00       	mov    $0x0,%eax
    5361:	e8 1a e0 ff ff       	callq  3380 <__printf_chk@plt>
    5366:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
    536b:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
    536f:	b8 00 00 00 00       	mov    $0x0,%eax
    5374:	eb d8                	jmp    534e <driver_post+0x21>
    5376:	41 50                	push   %r8
    5378:	52                   	push   %rdx
    5379:	4c 8d 0d 5b 26 00 00 	lea    0x265b(%rip),%r9        # 79db <array.3484+0x179b>
    5380:	49 89 f0             	mov    %rsi,%r8
    5383:	48 89 f9             	mov    %rdi,%rcx
    5386:	48 8d 15 52 26 00 00 	lea    0x2652(%rip),%rdx        # 79df <array.3484+0x179f>
    538d:	be 6e 3b 00 00       	mov    $0x3b6e,%esi
    5392:	48 8d 3d bf 25 00 00 	lea    0x25bf(%rip),%rdi        # 7958 <array.3484+0x1718>
    5399:	e8 d2 f4 ff ff       	callq  4870 <submitr>
    539e:	48 83 c4 10          	add    $0x10,%rsp
    53a2:	eb aa                	jmp    534e <driver_post+0x21>
    53a4:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    53ab:	00 00 00 
    53ae:	66 90                	xchg   %ax,%ax

00000000000053b0 <__libc_csu_init>:
    53b0:	f3 0f 1e fa          	endbr64 
    53b4:	41 57                	push   %r15
    53b6:	4c 8d 3d 0b 49 00 00 	lea    0x490b(%rip),%r15        # 9cc8 <__frame_dummy_init_array_entry>
    53bd:	41 56                	push   %r14
    53bf:	49 89 d6             	mov    %rdx,%r14
    53c2:	41 55                	push   %r13
    53c4:	49 89 f5             	mov    %rsi,%r13
    53c7:	41 54                	push   %r12
    53c9:	41 89 fc             	mov    %edi,%r12d
    53cc:	55                   	push   %rbp
    53cd:	48 8d 2d fc 48 00 00 	lea    0x48fc(%rip),%rbp        # 9cd0 <__do_global_dtors_aux_fini_array_entry>
    53d4:	53                   	push   %rbx
    53d5:	4c 29 fd             	sub    %r15,%rbp
    53d8:	48 83 ec 08          	sub    $0x8,%rsp
    53dc:	e8 1f dc ff ff       	callq  3000 <_init>
    53e1:	48 c1 fd 03          	sar    $0x3,%rbp
    53e5:	74 1f                	je     5406 <__libc_csu_init+0x56>
    53e7:	31 db                	xor    %ebx,%ebx
    53e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    53f0:	4c 89 f2             	mov    %r14,%rdx
    53f3:	4c 89 ee             	mov    %r13,%rsi
    53f6:	44 89 e7             	mov    %r12d,%edi
    53f9:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    53fd:	48 83 c3 01          	add    $0x1,%rbx
    5401:	48 39 dd             	cmp    %rbx,%rbp
    5404:	75 ea                	jne    53f0 <__libc_csu_init+0x40>
    5406:	48 83 c4 08          	add    $0x8,%rsp
    540a:	5b                   	pop    %rbx
    540b:	5d                   	pop    %rbp
    540c:	41 5c                	pop    %r12
    540e:	41 5d                	pop    %r13
    5410:	41 5e                	pop    %r14
    5412:	41 5f                	pop    %r15
    5414:	c3                   	retq   
    5415:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    541c:	00 00 00 00 

0000000000005420 <__libc_csu_fini>:
    5420:	f3 0f 1e fa          	endbr64 
    5424:	c3                   	retq   

Disassembly of section .fini:

0000000000005428 <_fini>:
    5428:	f3 0f 1e fa          	endbr64 
    542c:	48 83 ec 08          	sub    $0x8,%rsp
    5430:	48 83 c4 08          	add    $0x8,%rsp
    5434:	c3                   	retq   
