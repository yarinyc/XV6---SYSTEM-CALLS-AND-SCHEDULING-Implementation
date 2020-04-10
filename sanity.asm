
_sanity:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
   return fib(n-1) + fib(n-2); 
} 

int
main(int argc, char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 20             	sub    $0x20,%esp
    printf(1,"PID\t\tPS_PRIORITY\tSTIME\t\tRETIME\t\tRTIME\n");
  14:	68 58 09 00 00       	push   $0x958
  19:	6a 01                	push   $0x1
  1b:	e8 e0 05 00 00       	call   600 <printf>
    if(fork()==0){
  20:	e8 65 04 00 00       	call   48a <fork>
  25:	83 c4 10             	add    $0x10,%esp
  28:	85 c0                	test   %eax,%eax
  2a:	0f 85 af 00 00 00    	jne    df <main+0xdf>
      set_cfs_priority(1);
  30:	83 ec 0c             	sub    $0xc,%esp
  33:	6a 01                	push   $0x1
  35:	e8 10 05 00 00       	call   54a <set_cfs_priority>
      set_ps_priority(1);
  3a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  41:	e8 f4 04 00 00       	call   53a <set_ps_priority>
  46:	83 c4 10             	add    $0x10,%esp
  49:	b9 40 42 0f 00       	mov    $0xf4240,%ecx
  4e:	66 90                	xchg   %ax,%ax
   return fib(n-1) + fib(n-2); 
  50:	83 ec 0c             	sub    $0xc,%esp
  53:	6a 07                	push   $0x7
  55:	e8 96 01 00 00       	call   1f0 <fib>
  5a:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
  61:	e8 8a 01 00 00       	call   1f0 <fib>
  66:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
  6d:	e8 7e 01 00 00       	call   1f0 <fib>
  72:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  79:	e8 72 01 00 00       	call   1f0 <fib>
  7e:	83 c4 10             	add    $0x10,%esp
      int i = 1000000;
      int dummy = 0;
      while(i--){
  81:	83 e9 01             	sub    $0x1,%ecx
  84:	75 ca                	jne    50 <main+0x50>
      int dummy = 0;
      while(i--){
        dummy+=i;
        fib(8);
      }
      struct perf *performance = malloc(sizeof(struct perf));
  86:	83 ec 0c             	sub    $0xc,%esp
  89:	6a 10                	push   $0x10
  8b:	e8 d0 07 00 00       	call   860 <malloc>
  90:	89 c3                	mov    %eax,%ebx
      proc_info(performance);
  92:	89 04 24             	mov    %eax,(%esp)
  95:	e8 b8 04 00 00       	call   552 <proc_info>
      printf(1,"%d\t\t%d\t\t%d\t\t%d\t\t%d\n",getpid(),performance->ps_priority,performance->stime,
  9a:	8b 4b 0c             	mov    0xc(%ebx),%ecx
  9d:	89 4d e0             	mov    %ecx,-0x20(%ebp)
  a0:	8b 53 08             	mov    0x8(%ebx),%edx
  a3:	89 55 e4             	mov    %edx,-0x1c(%ebp)
  a6:	8b 7b 04             	mov    0x4(%ebx),%edi
  a9:	8b 33                	mov    (%ebx),%esi
  ab:	e8 62 04 00 00       	call   512 <getpid>
  b0:	8b 4d e0             	mov    -0x20(%ebp),%ecx
  b3:	8b 55 e4             	mov    -0x1c(%ebp),%edx
  b6:	83 c4 0c             	add    $0xc,%esp
  b9:	51                   	push   %ecx
  ba:	52                   	push   %edx
  bb:	57                   	push   %edi
  bc:	56                   	push   %esi
  bd:	50                   	push   %eax
  be:	68 80 09 00 00       	push   $0x980
  c3:	6a 01                	push   $0x1
  c5:	e8 36 05 00 00       	call   600 <printf>
              performance->retime, performance->rtime);
      free(performance);
  ca:	83 c4 14             	add    $0x14,%esp
  cd:	53                   	push   %ebx
  ce:	e8 fd 06 00 00       	call   7d0 <free>
      exit(0);
  d3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  da:	e8 b3 03 00 00       	call   492 <exit>
    if(fork()==0){
  df:	e8 a6 03 00 00       	call   48a <fork>
  e4:	85 c0                	test   %eax,%eax
  e6:	75 63                	jne    14b <main+0x14b>
      set_cfs_priority(2);
  e8:	83 ec 0c             	sub    $0xc,%esp
  eb:	6a 02                	push   $0x2
  ed:	e8 58 04 00 00       	call   54a <set_cfs_priority>
      set_ps_priority(5);
  f2:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
  f9:	e8 3c 04 00 00       	call   53a <set_ps_priority>
  fe:	83 c4 10             	add    $0x10,%esp
 101:	b9 40 42 0f 00       	mov    $0xf4240,%ecx
 106:	8d 76 00             	lea    0x0(%esi),%esi
 109:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
   return fib(n-1) + fib(n-2); 
 110:	83 ec 0c             	sub    $0xc,%esp
 113:	6a 07                	push   $0x7
 115:	e8 d6 00 00 00       	call   1f0 <fib>
 11a:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
 121:	e8 ca 00 00 00       	call   1f0 <fib>
 126:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 12d:	e8 be 00 00 00       	call   1f0 <fib>
 132:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 139:	e8 b2 00 00 00       	call   1f0 <fib>
 13e:	83 c4 10             	add    $0x10,%esp
      while(i--){
 141:	83 e9 01             	sub    $0x1,%ecx
 144:	75 ca                	jne    110 <main+0x110>
 146:	e9 3b ff ff ff       	jmp    86 <main+0x86>
    if(fork()==0){
 14b:	e8 3a 03 00 00       	call   48a <fork>
 150:	85 c0                	test   %eax,%eax
 152:	75 5f                	jne    1b3 <main+0x1b3>
      set_cfs_priority(3);
 154:	83 ec 0c             	sub    $0xc,%esp
 157:	6a 03                	push   $0x3
 159:	e8 ec 03 00 00       	call   54a <set_cfs_priority>
      set_ps_priority(10);
 15e:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 165:	e8 d0 03 00 00       	call   53a <set_ps_priority>
 16a:	83 c4 10             	add    $0x10,%esp
 16d:	b9 40 42 0f 00       	mov    $0xf4240,%ecx
 172:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
   return fib(n-1) + fib(n-2); 
 178:	83 ec 0c             	sub    $0xc,%esp
 17b:	6a 07                	push   $0x7
 17d:	e8 6e 00 00 00       	call   1f0 <fib>
 182:	c7 04 24 05 00 00 00 	movl   $0x5,(%esp)
 189:	e8 62 00 00 00       	call   1f0 <fib>
 18e:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 195:	e8 56 00 00 00       	call   1f0 <fib>
 19a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 1a1:	e8 4a 00 00 00       	call   1f0 <fib>
 1a6:	83 c4 10             	add    $0x10,%esp
      while(i--){
 1a9:	83 e9 01             	sub    $0x1,%ecx
 1ac:	75 ca                	jne    178 <main+0x178>
 1ae:	e9 d3 fe ff ff       	jmp    86 <main+0x86>
    }
    wait(null);
 1b3:	83 ec 0c             	sub    $0xc,%esp
 1b6:	6a 00                	push   $0x0
 1b8:	e8 dd 02 00 00       	call   49a <wait>
    wait(null);
 1bd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 1c4:	e8 d1 02 00 00       	call   49a <wait>
    wait(null);
 1c9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 1d0:	e8 c5 02 00 00       	call   49a <wait>
    exit(0);
 1d5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 1dc:	e8 b1 02 00 00       	call   492 <exit>
 1e1:	66 90                	xchg   %ax,%ax
 1e3:	66 90                	xchg   %ax,%ax
 1e5:	66 90                	xchg   %ax,%ax
 1e7:	66 90                	xchg   %ax,%ax
 1e9:	66 90                	xchg   %ax,%ax
 1eb:	66 90                	xchg   %ax,%ax
 1ed:	66 90                	xchg   %ax,%ax
 1ef:	90                   	nop

000001f0 <fib>:
{ 
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	57                   	push   %edi
 1f4:	56                   	push   %esi
 1f5:	53                   	push   %ebx
   if (n <= 1) 
 1f6:	31 f6                	xor    %esi,%esi
{ 
 1f8:	83 ec 1c             	sub    $0x1c,%esp
 1fb:	8b 45 08             	mov    0x8(%ebp),%eax
   if (n <= 1) 
 1fe:	83 f8 01             	cmp    $0x1,%eax
 201:	7e 2e                	jle    231 <fib+0x41>
 203:	8d 50 fe             	lea    -0x2(%eax),%edx
 206:	8d 78 fd             	lea    -0x3(%eax),%edi
 209:	8d 58 ff             	lea    -0x1(%eax),%ebx
 20c:	89 d0                	mov    %edx,%eax
 20e:	89 55 e4             	mov    %edx,-0x1c(%ebp)
 211:	83 e0 fe             	and    $0xfffffffe,%eax
 214:	29 c7                	sub    %eax,%edi
   return fib(n-1) + fib(n-2); 
 216:	83 ec 0c             	sub    $0xc,%esp
 219:	53                   	push   %ebx
 21a:	83 eb 02             	sub    $0x2,%ebx
 21d:	e8 ce ff ff ff       	call   1f0 <fib>
 222:	83 c4 10             	add    $0x10,%esp
 225:	01 c6                	add    %eax,%esi
   if (n <= 1) 
 227:	39 fb                	cmp    %edi,%ebx
 229:	75 eb                	jne    216 <fib+0x26>
 22b:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 22e:	83 e0 01             	and    $0x1,%eax
} 
 231:	8d 65 f4             	lea    -0xc(%ebp),%esp
 234:	01 f0                	add    %esi,%eax
 236:	5b                   	pop    %ebx
 237:	5e                   	pop    %esi
 238:	5f                   	pop    %edi
 239:	5d                   	pop    %ebp
 23a:	c3                   	ret    
 23b:	66 90                	xchg   %ax,%ax
 23d:	66 90                	xchg   %ax,%ax
 23f:	90                   	nop

00000240 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	53                   	push   %ebx
 244:	8b 45 08             	mov    0x8(%ebp),%eax
 247:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 24a:	89 c2                	mov    %eax,%edx
 24c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 250:	83 c1 01             	add    $0x1,%ecx
 253:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 257:	83 c2 01             	add    $0x1,%edx
 25a:	84 db                	test   %bl,%bl
 25c:	88 5a ff             	mov    %bl,-0x1(%edx)
 25f:	75 ef                	jne    250 <strcpy+0x10>
    ;
  return os;
}
 261:	5b                   	pop    %ebx
 262:	5d                   	pop    %ebp
 263:	c3                   	ret    
 264:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 26a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000270 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 270:	55                   	push   %ebp
 271:	89 e5                	mov    %esp,%ebp
 273:	53                   	push   %ebx
 274:	8b 55 08             	mov    0x8(%ebp),%edx
 277:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 27a:	0f b6 02             	movzbl (%edx),%eax
 27d:	0f b6 19             	movzbl (%ecx),%ebx
 280:	84 c0                	test   %al,%al
 282:	75 1c                	jne    2a0 <strcmp+0x30>
 284:	eb 2a                	jmp    2b0 <strcmp+0x40>
 286:	8d 76 00             	lea    0x0(%esi),%esi
 289:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 290:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 293:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 296:	83 c1 01             	add    $0x1,%ecx
 299:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 29c:	84 c0                	test   %al,%al
 29e:	74 10                	je     2b0 <strcmp+0x40>
 2a0:	38 d8                	cmp    %bl,%al
 2a2:	74 ec                	je     290 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 2a4:	29 d8                	sub    %ebx,%eax
}
 2a6:	5b                   	pop    %ebx
 2a7:	5d                   	pop    %ebp
 2a8:	c3                   	ret    
 2a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 2b0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 2b2:	29 d8                	sub    %ebx,%eax
}
 2b4:	5b                   	pop    %ebx
 2b5:	5d                   	pop    %ebp
 2b6:	c3                   	ret    
 2b7:	89 f6                	mov    %esi,%esi
 2b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002c0 <strlen>:

uint
strlen(const char *s)
{
 2c0:	55                   	push   %ebp
 2c1:	89 e5                	mov    %esp,%ebp
 2c3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 2c6:	80 39 00             	cmpb   $0x0,(%ecx)
 2c9:	74 15                	je     2e0 <strlen+0x20>
 2cb:	31 d2                	xor    %edx,%edx
 2cd:	8d 76 00             	lea    0x0(%esi),%esi
 2d0:	83 c2 01             	add    $0x1,%edx
 2d3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 2d7:	89 d0                	mov    %edx,%eax
 2d9:	75 f5                	jne    2d0 <strlen+0x10>
    ;
  return n;
}
 2db:	5d                   	pop    %ebp
 2dc:	c3                   	ret    
 2dd:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 2e0:	31 c0                	xor    %eax,%eax
}
 2e2:	5d                   	pop    %ebp
 2e3:	c3                   	ret    
 2e4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 2ea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000002f0 <memset>:

void*
memset(void *dst, int c, uint n)
{
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	57                   	push   %edi
 2f4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 2f7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 2fa:	8b 45 0c             	mov    0xc(%ebp),%eax
 2fd:	89 d7                	mov    %edx,%edi
 2ff:	fc                   	cld    
 300:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 302:	89 d0                	mov    %edx,%eax
 304:	5f                   	pop    %edi
 305:	5d                   	pop    %ebp
 306:	c3                   	ret    
 307:	89 f6                	mov    %esi,%esi
 309:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000310 <strchr>:

char*
strchr(const char *s, char c)
{
 310:	55                   	push   %ebp
 311:	89 e5                	mov    %esp,%ebp
 313:	53                   	push   %ebx
 314:	8b 45 08             	mov    0x8(%ebp),%eax
 317:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 31a:	0f b6 10             	movzbl (%eax),%edx
 31d:	84 d2                	test   %dl,%dl
 31f:	74 1d                	je     33e <strchr+0x2e>
    if(*s == c)
 321:	38 d3                	cmp    %dl,%bl
 323:	89 d9                	mov    %ebx,%ecx
 325:	75 0d                	jne    334 <strchr+0x24>
 327:	eb 17                	jmp    340 <strchr+0x30>
 329:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 330:	38 ca                	cmp    %cl,%dl
 332:	74 0c                	je     340 <strchr+0x30>
  for(; *s; s++)
 334:	83 c0 01             	add    $0x1,%eax
 337:	0f b6 10             	movzbl (%eax),%edx
 33a:	84 d2                	test   %dl,%dl
 33c:	75 f2                	jne    330 <strchr+0x20>
      return (char*)s;
  return 0;
 33e:	31 c0                	xor    %eax,%eax
}
 340:	5b                   	pop    %ebx
 341:	5d                   	pop    %ebp
 342:	c3                   	ret    
 343:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 349:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000350 <gets>:

char*
gets(char *buf, int max)
{
 350:	55                   	push   %ebp
 351:	89 e5                	mov    %esp,%ebp
 353:	57                   	push   %edi
 354:	56                   	push   %esi
 355:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 356:	31 f6                	xor    %esi,%esi
 358:	89 f3                	mov    %esi,%ebx
{
 35a:	83 ec 1c             	sub    $0x1c,%esp
 35d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 360:	eb 2f                	jmp    391 <gets+0x41>
 362:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 368:	8d 45 e7             	lea    -0x19(%ebp),%eax
 36b:	83 ec 04             	sub    $0x4,%esp
 36e:	6a 01                	push   $0x1
 370:	50                   	push   %eax
 371:	6a 00                	push   $0x0
 373:	e8 32 01 00 00       	call   4aa <read>
    if(cc < 1)
 378:	83 c4 10             	add    $0x10,%esp
 37b:	85 c0                	test   %eax,%eax
 37d:	7e 1c                	jle    39b <gets+0x4b>
      break;
    buf[i++] = c;
 37f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 383:	83 c7 01             	add    $0x1,%edi
 386:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 389:	3c 0a                	cmp    $0xa,%al
 38b:	74 23                	je     3b0 <gets+0x60>
 38d:	3c 0d                	cmp    $0xd,%al
 38f:	74 1f                	je     3b0 <gets+0x60>
  for(i=0; i+1 < max; ){
 391:	83 c3 01             	add    $0x1,%ebx
 394:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 397:	89 fe                	mov    %edi,%esi
 399:	7c cd                	jl     368 <gets+0x18>
 39b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 39d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 3a0:	c6 03 00             	movb   $0x0,(%ebx)
}
 3a3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3a6:	5b                   	pop    %ebx
 3a7:	5e                   	pop    %esi
 3a8:	5f                   	pop    %edi
 3a9:	5d                   	pop    %ebp
 3aa:	c3                   	ret    
 3ab:	90                   	nop
 3ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3b0:	8b 75 08             	mov    0x8(%ebp),%esi
 3b3:	8b 45 08             	mov    0x8(%ebp),%eax
 3b6:	01 de                	add    %ebx,%esi
 3b8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 3ba:	c6 03 00             	movb   $0x0,(%ebx)
}
 3bd:	8d 65 f4             	lea    -0xc(%ebp),%esp
 3c0:	5b                   	pop    %ebx
 3c1:	5e                   	pop    %esi
 3c2:	5f                   	pop    %edi
 3c3:	5d                   	pop    %ebp
 3c4:	c3                   	ret    
 3c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 3c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003d0 <stat>:

int
stat(const char *n, struct stat *st)
{
 3d0:	55                   	push   %ebp
 3d1:	89 e5                	mov    %esp,%ebp
 3d3:	56                   	push   %esi
 3d4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 3d5:	83 ec 08             	sub    $0x8,%esp
 3d8:	6a 00                	push   $0x0
 3da:	ff 75 08             	pushl  0x8(%ebp)
 3dd:	e8 f0 00 00 00       	call   4d2 <open>
  if(fd < 0)
 3e2:	83 c4 10             	add    $0x10,%esp
 3e5:	85 c0                	test   %eax,%eax
 3e7:	78 27                	js     410 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 3e9:	83 ec 08             	sub    $0x8,%esp
 3ec:	ff 75 0c             	pushl  0xc(%ebp)
 3ef:	89 c3                	mov    %eax,%ebx
 3f1:	50                   	push   %eax
 3f2:	e8 f3 00 00 00       	call   4ea <fstat>
  close(fd);
 3f7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 3fa:	89 c6                	mov    %eax,%esi
  close(fd);
 3fc:	e8 b9 00 00 00       	call   4ba <close>
  return r;
 401:	83 c4 10             	add    $0x10,%esp
}
 404:	8d 65 f8             	lea    -0x8(%ebp),%esp
 407:	89 f0                	mov    %esi,%eax
 409:	5b                   	pop    %ebx
 40a:	5e                   	pop    %esi
 40b:	5d                   	pop    %ebp
 40c:	c3                   	ret    
 40d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 410:	be ff ff ff ff       	mov    $0xffffffff,%esi
 415:	eb ed                	jmp    404 <stat+0x34>
 417:	89 f6                	mov    %esi,%esi
 419:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000420 <atoi>:

int
atoi(const char *s)
{
 420:	55                   	push   %ebp
 421:	89 e5                	mov    %esp,%ebp
 423:	53                   	push   %ebx
 424:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 427:	0f be 11             	movsbl (%ecx),%edx
 42a:	8d 42 d0             	lea    -0x30(%edx),%eax
 42d:	3c 09                	cmp    $0x9,%al
  n = 0;
 42f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 434:	77 1f                	ja     455 <atoi+0x35>
 436:	8d 76 00             	lea    0x0(%esi),%esi
 439:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 440:	8d 04 80             	lea    (%eax,%eax,4),%eax
 443:	83 c1 01             	add    $0x1,%ecx
 446:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 44a:	0f be 11             	movsbl (%ecx),%edx
 44d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 450:	80 fb 09             	cmp    $0x9,%bl
 453:	76 eb                	jbe    440 <atoi+0x20>
  return n;
}
 455:	5b                   	pop    %ebx
 456:	5d                   	pop    %ebp
 457:	c3                   	ret    
 458:	90                   	nop
 459:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000460 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 460:	55                   	push   %ebp
 461:	89 e5                	mov    %esp,%ebp
 463:	56                   	push   %esi
 464:	53                   	push   %ebx
 465:	8b 5d 10             	mov    0x10(%ebp),%ebx
 468:	8b 45 08             	mov    0x8(%ebp),%eax
 46b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 46e:	85 db                	test   %ebx,%ebx
 470:	7e 14                	jle    486 <memmove+0x26>
 472:	31 d2                	xor    %edx,%edx
 474:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 478:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 47c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 47f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 482:	39 d3                	cmp    %edx,%ebx
 484:	75 f2                	jne    478 <memmove+0x18>
  return vdst;
}
 486:	5b                   	pop    %ebx
 487:	5e                   	pop    %esi
 488:	5d                   	pop    %ebp
 489:	c3                   	ret    

0000048a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 48a:	b8 01 00 00 00       	mov    $0x1,%eax
 48f:	cd 40                	int    $0x40
 491:	c3                   	ret    

00000492 <exit>:
SYSCALL(exit)
 492:	b8 02 00 00 00       	mov    $0x2,%eax
 497:	cd 40                	int    $0x40
 499:	c3                   	ret    

0000049a <wait>:
SYSCALL(wait)
 49a:	b8 03 00 00 00       	mov    $0x3,%eax
 49f:	cd 40                	int    $0x40
 4a1:	c3                   	ret    

000004a2 <pipe>:
SYSCALL(pipe)
 4a2:	b8 04 00 00 00       	mov    $0x4,%eax
 4a7:	cd 40                	int    $0x40
 4a9:	c3                   	ret    

000004aa <read>:
SYSCALL(read)
 4aa:	b8 05 00 00 00       	mov    $0x5,%eax
 4af:	cd 40                	int    $0x40
 4b1:	c3                   	ret    

000004b2 <write>:
SYSCALL(write)
 4b2:	b8 10 00 00 00       	mov    $0x10,%eax
 4b7:	cd 40                	int    $0x40
 4b9:	c3                   	ret    

000004ba <close>:
SYSCALL(close)
 4ba:	b8 15 00 00 00       	mov    $0x15,%eax
 4bf:	cd 40                	int    $0x40
 4c1:	c3                   	ret    

000004c2 <kill>:
SYSCALL(kill)
 4c2:	b8 06 00 00 00       	mov    $0x6,%eax
 4c7:	cd 40                	int    $0x40
 4c9:	c3                   	ret    

000004ca <exec>:
SYSCALL(exec)
 4ca:	b8 07 00 00 00       	mov    $0x7,%eax
 4cf:	cd 40                	int    $0x40
 4d1:	c3                   	ret    

000004d2 <open>:
SYSCALL(open)
 4d2:	b8 0f 00 00 00       	mov    $0xf,%eax
 4d7:	cd 40                	int    $0x40
 4d9:	c3                   	ret    

000004da <mknod>:
SYSCALL(mknod)
 4da:	b8 11 00 00 00       	mov    $0x11,%eax
 4df:	cd 40                	int    $0x40
 4e1:	c3                   	ret    

000004e2 <unlink>:
SYSCALL(unlink)
 4e2:	b8 12 00 00 00       	mov    $0x12,%eax
 4e7:	cd 40                	int    $0x40
 4e9:	c3                   	ret    

000004ea <fstat>:
SYSCALL(fstat)
 4ea:	b8 08 00 00 00       	mov    $0x8,%eax
 4ef:	cd 40                	int    $0x40
 4f1:	c3                   	ret    

000004f2 <link>:
SYSCALL(link)
 4f2:	b8 13 00 00 00       	mov    $0x13,%eax
 4f7:	cd 40                	int    $0x40
 4f9:	c3                   	ret    

000004fa <mkdir>:
SYSCALL(mkdir)
 4fa:	b8 14 00 00 00       	mov    $0x14,%eax
 4ff:	cd 40                	int    $0x40
 501:	c3                   	ret    

00000502 <chdir>:
SYSCALL(chdir)
 502:	b8 09 00 00 00       	mov    $0x9,%eax
 507:	cd 40                	int    $0x40
 509:	c3                   	ret    

0000050a <dup>:
SYSCALL(dup)
 50a:	b8 0a 00 00 00       	mov    $0xa,%eax
 50f:	cd 40                	int    $0x40
 511:	c3                   	ret    

00000512 <getpid>:
SYSCALL(getpid)
 512:	b8 0b 00 00 00       	mov    $0xb,%eax
 517:	cd 40                	int    $0x40
 519:	c3                   	ret    

0000051a <sbrk>:
SYSCALL(sbrk)
 51a:	b8 0c 00 00 00       	mov    $0xc,%eax
 51f:	cd 40                	int    $0x40
 521:	c3                   	ret    

00000522 <sleep>:
SYSCALL(sleep)
 522:	b8 0d 00 00 00       	mov    $0xd,%eax
 527:	cd 40                	int    $0x40
 529:	c3                   	ret    

0000052a <uptime>:
SYSCALL(uptime)
 52a:	b8 0e 00 00 00       	mov    $0xe,%eax
 52f:	cd 40                	int    $0x40
 531:	c3                   	ret    

00000532 <memsize>:
SYSCALL(memsize)
 532:	b8 16 00 00 00       	mov    $0x16,%eax
 537:	cd 40                	int    $0x40
 539:	c3                   	ret    

0000053a <set_ps_priority>:
SYSCALL(set_ps_priority)
 53a:	b8 17 00 00 00       	mov    $0x17,%eax
 53f:	cd 40                	int    $0x40
 541:	c3                   	ret    

00000542 <policy>:
SYSCALL(policy)
 542:	b8 18 00 00 00       	mov    $0x18,%eax
 547:	cd 40                	int    $0x40
 549:	c3                   	ret    

0000054a <set_cfs_priority>:
SYSCALL(set_cfs_priority)
 54a:	b8 19 00 00 00       	mov    $0x19,%eax
 54f:	cd 40                	int    $0x40
 551:	c3                   	ret    

00000552 <proc_info>:
SYSCALL(proc_info)
 552:	b8 1a 00 00 00       	mov    $0x1a,%eax
 557:	cd 40                	int    $0x40
 559:	c3                   	ret    
 55a:	66 90                	xchg   %ax,%ax
 55c:	66 90                	xchg   %ax,%ax
 55e:	66 90                	xchg   %ax,%ax

00000560 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 560:	55                   	push   %ebp
 561:	89 e5                	mov    %esp,%ebp
 563:	57                   	push   %edi
 564:	56                   	push   %esi
 565:	53                   	push   %ebx
 566:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 569:	85 d2                	test   %edx,%edx
{
 56b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 56e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 570:	79 76                	jns    5e8 <printint+0x88>
 572:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 576:	74 70                	je     5e8 <printint+0x88>
    x = -xx;
 578:	f7 d8                	neg    %eax
    neg = 1;
 57a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 581:	31 f6                	xor    %esi,%esi
 583:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 586:	eb 0a                	jmp    592 <printint+0x32>
 588:	90                   	nop
 589:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 590:	89 fe                	mov    %edi,%esi
 592:	31 d2                	xor    %edx,%edx
 594:	8d 7e 01             	lea    0x1(%esi),%edi
 597:	f7 f1                	div    %ecx
 599:	0f b6 92 9c 09 00 00 	movzbl 0x99c(%edx),%edx
  }while((x /= base) != 0);
 5a0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 5a2:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 5a5:	75 e9                	jne    590 <printint+0x30>
  if(neg)
 5a7:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 5aa:	85 c0                	test   %eax,%eax
 5ac:	74 08                	je     5b6 <printint+0x56>
    buf[i++] = '-';
 5ae:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 5b3:	8d 7e 02             	lea    0x2(%esi),%edi
 5b6:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 5ba:	8b 7d c0             	mov    -0x40(%ebp),%edi
 5bd:	8d 76 00             	lea    0x0(%esi),%esi
 5c0:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 5c3:	83 ec 04             	sub    $0x4,%esp
 5c6:	83 ee 01             	sub    $0x1,%esi
 5c9:	6a 01                	push   $0x1
 5cb:	53                   	push   %ebx
 5cc:	57                   	push   %edi
 5cd:	88 45 d7             	mov    %al,-0x29(%ebp)
 5d0:	e8 dd fe ff ff       	call   4b2 <write>

  while(--i >= 0)
 5d5:	83 c4 10             	add    $0x10,%esp
 5d8:	39 de                	cmp    %ebx,%esi
 5da:	75 e4                	jne    5c0 <printint+0x60>
    putc(fd, buf[i]);
}
 5dc:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5df:	5b                   	pop    %ebx
 5e0:	5e                   	pop    %esi
 5e1:	5f                   	pop    %edi
 5e2:	5d                   	pop    %ebp
 5e3:	c3                   	ret    
 5e4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 5e8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 5ef:	eb 90                	jmp    581 <printint+0x21>
 5f1:	eb 0d                	jmp    600 <printf>
 5f3:	90                   	nop
 5f4:	90                   	nop
 5f5:	90                   	nop
 5f6:	90                   	nop
 5f7:	90                   	nop
 5f8:	90                   	nop
 5f9:	90                   	nop
 5fa:	90                   	nop
 5fb:	90                   	nop
 5fc:	90                   	nop
 5fd:	90                   	nop
 5fe:	90                   	nop
 5ff:	90                   	nop

00000600 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 600:	55                   	push   %ebp
 601:	89 e5                	mov    %esp,%ebp
 603:	57                   	push   %edi
 604:	56                   	push   %esi
 605:	53                   	push   %ebx
 606:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 609:	8b 75 0c             	mov    0xc(%ebp),%esi
 60c:	0f b6 1e             	movzbl (%esi),%ebx
 60f:	84 db                	test   %bl,%bl
 611:	0f 84 b3 00 00 00    	je     6ca <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 617:	8d 45 10             	lea    0x10(%ebp),%eax
 61a:	83 c6 01             	add    $0x1,%esi
  state = 0;
 61d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 61f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 622:	eb 2f                	jmp    653 <printf+0x53>
 624:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 628:	83 f8 25             	cmp    $0x25,%eax
 62b:	0f 84 a7 00 00 00    	je     6d8 <printf+0xd8>
  write(fd, &c, 1);
 631:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 634:	83 ec 04             	sub    $0x4,%esp
 637:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 63a:	6a 01                	push   $0x1
 63c:	50                   	push   %eax
 63d:	ff 75 08             	pushl  0x8(%ebp)
 640:	e8 6d fe ff ff       	call   4b2 <write>
 645:	83 c4 10             	add    $0x10,%esp
 648:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 64b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 64f:	84 db                	test   %bl,%bl
 651:	74 77                	je     6ca <printf+0xca>
    if(state == 0){
 653:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 655:	0f be cb             	movsbl %bl,%ecx
 658:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 65b:	74 cb                	je     628 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 65d:	83 ff 25             	cmp    $0x25,%edi
 660:	75 e6                	jne    648 <printf+0x48>
      if(c == 'd'){
 662:	83 f8 64             	cmp    $0x64,%eax
 665:	0f 84 05 01 00 00    	je     770 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 66b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 671:	83 f9 70             	cmp    $0x70,%ecx
 674:	74 72                	je     6e8 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 676:	83 f8 73             	cmp    $0x73,%eax
 679:	0f 84 99 00 00 00    	je     718 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 67f:	83 f8 63             	cmp    $0x63,%eax
 682:	0f 84 08 01 00 00    	je     790 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 688:	83 f8 25             	cmp    $0x25,%eax
 68b:	0f 84 ef 00 00 00    	je     780 <printf+0x180>
  write(fd, &c, 1);
 691:	8d 45 e7             	lea    -0x19(%ebp),%eax
 694:	83 ec 04             	sub    $0x4,%esp
 697:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 69b:	6a 01                	push   $0x1
 69d:	50                   	push   %eax
 69e:	ff 75 08             	pushl  0x8(%ebp)
 6a1:	e8 0c fe ff ff       	call   4b2 <write>
 6a6:	83 c4 0c             	add    $0xc,%esp
 6a9:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 6ac:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 6af:	6a 01                	push   $0x1
 6b1:	50                   	push   %eax
 6b2:	ff 75 08             	pushl  0x8(%ebp)
 6b5:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 6b8:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 6ba:	e8 f3 fd ff ff       	call   4b2 <write>
  for(i = 0; fmt[i]; i++){
 6bf:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 6c3:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 6c6:	84 db                	test   %bl,%bl
 6c8:	75 89                	jne    653 <printf+0x53>
    }
  }
}
 6ca:	8d 65 f4             	lea    -0xc(%ebp),%esp
 6cd:	5b                   	pop    %ebx
 6ce:	5e                   	pop    %esi
 6cf:	5f                   	pop    %edi
 6d0:	5d                   	pop    %ebp
 6d1:	c3                   	ret    
 6d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 6d8:	bf 25 00 00 00       	mov    $0x25,%edi
 6dd:	e9 66 ff ff ff       	jmp    648 <printf+0x48>
 6e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 6e8:	83 ec 0c             	sub    $0xc,%esp
 6eb:	b9 10 00 00 00       	mov    $0x10,%ecx
 6f0:	6a 00                	push   $0x0
 6f2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 6f5:	8b 45 08             	mov    0x8(%ebp),%eax
 6f8:	8b 17                	mov    (%edi),%edx
 6fa:	e8 61 fe ff ff       	call   560 <printint>
        ap++;
 6ff:	89 f8                	mov    %edi,%eax
 701:	83 c4 10             	add    $0x10,%esp
      state = 0;
 704:	31 ff                	xor    %edi,%edi
        ap++;
 706:	83 c0 04             	add    $0x4,%eax
 709:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 70c:	e9 37 ff ff ff       	jmp    648 <printf+0x48>
 711:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 718:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 71b:	8b 08                	mov    (%eax),%ecx
        ap++;
 71d:	83 c0 04             	add    $0x4,%eax
 720:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 723:	85 c9                	test   %ecx,%ecx
 725:	0f 84 8e 00 00 00    	je     7b9 <printf+0x1b9>
        while(*s != 0){
 72b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 72e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 730:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 732:	84 c0                	test   %al,%al
 734:	0f 84 0e ff ff ff    	je     648 <printf+0x48>
 73a:	89 75 d0             	mov    %esi,-0x30(%ebp)
 73d:	89 de                	mov    %ebx,%esi
 73f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 742:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 745:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 748:	83 ec 04             	sub    $0x4,%esp
          s++;
 74b:	83 c6 01             	add    $0x1,%esi
 74e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 751:	6a 01                	push   $0x1
 753:	57                   	push   %edi
 754:	53                   	push   %ebx
 755:	e8 58 fd ff ff       	call   4b2 <write>
        while(*s != 0){
 75a:	0f b6 06             	movzbl (%esi),%eax
 75d:	83 c4 10             	add    $0x10,%esp
 760:	84 c0                	test   %al,%al
 762:	75 e4                	jne    748 <printf+0x148>
 764:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 767:	31 ff                	xor    %edi,%edi
 769:	e9 da fe ff ff       	jmp    648 <printf+0x48>
 76e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 770:	83 ec 0c             	sub    $0xc,%esp
 773:	b9 0a 00 00 00       	mov    $0xa,%ecx
 778:	6a 01                	push   $0x1
 77a:	e9 73 ff ff ff       	jmp    6f2 <printf+0xf2>
 77f:	90                   	nop
  write(fd, &c, 1);
 780:	83 ec 04             	sub    $0x4,%esp
 783:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 786:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 789:	6a 01                	push   $0x1
 78b:	e9 21 ff ff ff       	jmp    6b1 <printf+0xb1>
        putc(fd, *ap);
 790:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 793:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 796:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 798:	6a 01                	push   $0x1
        ap++;
 79a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 79d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 7a0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 7a3:	50                   	push   %eax
 7a4:	ff 75 08             	pushl  0x8(%ebp)
 7a7:	e8 06 fd ff ff       	call   4b2 <write>
        ap++;
 7ac:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 7af:	83 c4 10             	add    $0x10,%esp
      state = 0;
 7b2:	31 ff                	xor    %edi,%edi
 7b4:	e9 8f fe ff ff       	jmp    648 <printf+0x48>
          s = "(null)";
 7b9:	bb 94 09 00 00       	mov    $0x994,%ebx
        while(*s != 0){
 7be:	b8 28 00 00 00       	mov    $0x28,%eax
 7c3:	e9 72 ff ff ff       	jmp    73a <printf+0x13a>
 7c8:	66 90                	xchg   %ax,%ax
 7ca:	66 90                	xchg   %ax,%ax
 7cc:	66 90                	xchg   %ax,%ax
 7ce:	66 90                	xchg   %ax,%ax

000007d0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 7d0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 7d1:	a1 78 0c 00 00       	mov    0xc78,%eax
{
 7d6:	89 e5                	mov    %esp,%ebp
 7d8:	57                   	push   %edi
 7d9:	56                   	push   %esi
 7da:	53                   	push   %ebx
 7db:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 7de:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 7e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 7e8:	39 c8                	cmp    %ecx,%eax
 7ea:	8b 10                	mov    (%eax),%edx
 7ec:	73 32                	jae    820 <free+0x50>
 7ee:	39 d1                	cmp    %edx,%ecx
 7f0:	72 04                	jb     7f6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 7f2:	39 d0                	cmp    %edx,%eax
 7f4:	72 32                	jb     828 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 7f6:	8b 73 fc             	mov    -0x4(%ebx),%esi
 7f9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 7fc:	39 fa                	cmp    %edi,%edx
 7fe:	74 30                	je     830 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 800:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 803:	8b 50 04             	mov    0x4(%eax),%edx
 806:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 809:	39 f1                	cmp    %esi,%ecx
 80b:	74 3a                	je     847 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 80d:	89 08                	mov    %ecx,(%eax)
  freep = p;
 80f:	a3 78 0c 00 00       	mov    %eax,0xc78
}
 814:	5b                   	pop    %ebx
 815:	5e                   	pop    %esi
 816:	5f                   	pop    %edi
 817:	5d                   	pop    %ebp
 818:	c3                   	ret    
 819:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 820:	39 d0                	cmp    %edx,%eax
 822:	72 04                	jb     828 <free+0x58>
 824:	39 d1                	cmp    %edx,%ecx
 826:	72 ce                	jb     7f6 <free+0x26>
{
 828:	89 d0                	mov    %edx,%eax
 82a:	eb bc                	jmp    7e8 <free+0x18>
 82c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 830:	03 72 04             	add    0x4(%edx),%esi
 833:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 836:	8b 10                	mov    (%eax),%edx
 838:	8b 12                	mov    (%edx),%edx
 83a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 83d:	8b 50 04             	mov    0x4(%eax),%edx
 840:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 843:	39 f1                	cmp    %esi,%ecx
 845:	75 c6                	jne    80d <free+0x3d>
    p->s.size += bp->s.size;
 847:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 84a:	a3 78 0c 00 00       	mov    %eax,0xc78
    p->s.size += bp->s.size;
 84f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 852:	8b 53 f8             	mov    -0x8(%ebx),%edx
 855:	89 10                	mov    %edx,(%eax)
}
 857:	5b                   	pop    %ebx
 858:	5e                   	pop    %esi
 859:	5f                   	pop    %edi
 85a:	5d                   	pop    %ebp
 85b:	c3                   	ret    
 85c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000860 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 860:	55                   	push   %ebp
 861:	89 e5                	mov    %esp,%ebp
 863:	57                   	push   %edi
 864:	56                   	push   %esi
 865:	53                   	push   %ebx
 866:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 869:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 86c:	8b 15 78 0c 00 00    	mov    0xc78,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 872:	8d 78 07             	lea    0x7(%eax),%edi
 875:	c1 ef 03             	shr    $0x3,%edi
 878:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 87b:	85 d2                	test   %edx,%edx
 87d:	0f 84 9d 00 00 00    	je     920 <malloc+0xc0>
 883:	8b 02                	mov    (%edx),%eax
 885:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 888:	39 cf                	cmp    %ecx,%edi
 88a:	76 6c                	jbe    8f8 <malloc+0x98>
 88c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 892:	bb 00 10 00 00       	mov    $0x1000,%ebx
 897:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 89a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 8a1:	eb 0e                	jmp    8b1 <malloc+0x51>
 8a3:	90                   	nop
 8a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 8a8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 8aa:	8b 48 04             	mov    0x4(%eax),%ecx
 8ad:	39 f9                	cmp    %edi,%ecx
 8af:	73 47                	jae    8f8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 8b1:	39 05 78 0c 00 00    	cmp    %eax,0xc78
 8b7:	89 c2                	mov    %eax,%edx
 8b9:	75 ed                	jne    8a8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 8bb:	83 ec 0c             	sub    $0xc,%esp
 8be:	56                   	push   %esi
 8bf:	e8 56 fc ff ff       	call   51a <sbrk>
  if(p == (char*)-1)
 8c4:	83 c4 10             	add    $0x10,%esp
 8c7:	83 f8 ff             	cmp    $0xffffffff,%eax
 8ca:	74 1c                	je     8e8 <malloc+0x88>
  hp->s.size = nu;
 8cc:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 8cf:	83 ec 0c             	sub    $0xc,%esp
 8d2:	83 c0 08             	add    $0x8,%eax
 8d5:	50                   	push   %eax
 8d6:	e8 f5 fe ff ff       	call   7d0 <free>
  return freep;
 8db:	8b 15 78 0c 00 00    	mov    0xc78,%edx
      if((p = morecore(nunits)) == 0)
 8e1:	83 c4 10             	add    $0x10,%esp
 8e4:	85 d2                	test   %edx,%edx
 8e6:	75 c0                	jne    8a8 <malloc+0x48>
        return 0;
  }
}
 8e8:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 8eb:	31 c0                	xor    %eax,%eax
}
 8ed:	5b                   	pop    %ebx
 8ee:	5e                   	pop    %esi
 8ef:	5f                   	pop    %edi
 8f0:	5d                   	pop    %ebp
 8f1:	c3                   	ret    
 8f2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 8f8:	39 cf                	cmp    %ecx,%edi
 8fa:	74 54                	je     950 <malloc+0xf0>
        p->s.size -= nunits;
 8fc:	29 f9                	sub    %edi,%ecx
 8fe:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 901:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 904:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 907:	89 15 78 0c 00 00    	mov    %edx,0xc78
}
 90d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 910:	83 c0 08             	add    $0x8,%eax
}
 913:	5b                   	pop    %ebx
 914:	5e                   	pop    %esi
 915:	5f                   	pop    %edi
 916:	5d                   	pop    %ebp
 917:	c3                   	ret    
 918:	90                   	nop
 919:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 920:	c7 05 78 0c 00 00 7c 	movl   $0xc7c,0xc78
 927:	0c 00 00 
 92a:	c7 05 7c 0c 00 00 7c 	movl   $0xc7c,0xc7c
 931:	0c 00 00 
    base.s.size = 0;
 934:	b8 7c 0c 00 00       	mov    $0xc7c,%eax
 939:	c7 05 80 0c 00 00 00 	movl   $0x0,0xc80
 940:	00 00 00 
 943:	e9 44 ff ff ff       	jmp    88c <malloc+0x2c>
 948:	90                   	nop
 949:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 950:	8b 08                	mov    (%eax),%ecx
 952:	89 0a                	mov    %ecx,(%edx)
 954:	eb b1                	jmp    907 <malloc+0xa7>
