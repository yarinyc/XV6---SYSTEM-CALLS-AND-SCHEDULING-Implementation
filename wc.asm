
_wc:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  printf(1, "%d %d %d %s\n", l, w, c, name);
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
  11:	be 01 00 00 00       	mov    $0x1,%esi
  16:	83 ec 18             	sub    $0x18,%esp
  19:	8b 01                	mov    (%ecx),%eax
  1b:	8b 59 04             	mov    0x4(%ecx),%ebx
  1e:	83 c3 04             	add    $0x4,%ebx
  int fd, i;

  if(argc <= 1){
  21:	83 f8 01             	cmp    $0x1,%eax
{
  24:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(argc <= 1){
  27:	7e 62                	jle    8b <main+0x8b>
  29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    wc(0, "");
    exit(0);
  }

  for(i = 1; i < argc; i++){
    if((fd = open(argv[i], 0)) < 0){
  30:	83 ec 08             	sub    $0x8,%esp
  33:	6a 00                	push   $0x0
  35:	ff 33                	pushl  (%ebx)
  37:	e8 e6 03 00 00       	call   422 <open>
  3c:	83 c4 10             	add    $0x10,%esp
  3f:	85 c0                	test   %eax,%eax
  41:	89 c7                	mov    %eax,%edi
  43:	78 2b                	js     70 <main+0x70>
      printf(1, "wc: cannot open %s\n", argv[i]);
      exit(1);
    }
    wc(fd, argv[i]);
  45:	83 ec 08             	sub    $0x8,%esp
  48:	ff 33                	pushl  (%ebx)
  for(i = 1; i < argc; i++){
  4a:	83 c6 01             	add    $0x1,%esi
    wc(fd, argv[i]);
  4d:	50                   	push   %eax
  4e:	83 c3 04             	add    $0x4,%ebx
  51:	e8 5a 00 00 00       	call   b0 <wc>
    close(fd);
  56:	89 3c 24             	mov    %edi,(%esp)
  59:	e8 ac 03 00 00       	call   40a <close>
  for(i = 1; i < argc; i++){
  5e:	83 c4 10             	add    $0x10,%esp
  61:	39 75 e4             	cmp    %esi,-0x1c(%ebp)
  64:	75 ca                	jne    30 <main+0x30>
  }
  exit(0);
  66:	83 ec 0c             	sub    $0xc,%esp
  69:	6a 00                	push   $0x0
  6b:	e8 72 03 00 00       	call   3e2 <exit>
      printf(1, "wc: cannot open %s\n", argv[i]);
  70:	50                   	push   %eax
  71:	ff 33                	pushl  (%ebx)
  73:	68 ab 08 00 00       	push   $0x8ab
  78:	6a 01                	push   $0x1
  7a:	e8 b1 04 00 00       	call   530 <printf>
      exit(1);
  7f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  86:	e8 57 03 00 00       	call   3e2 <exit>
    wc(0, "");
  8b:	52                   	push   %edx
  8c:	52                   	push   %edx
  8d:	68 9d 08 00 00       	push   $0x89d
  92:	6a 00                	push   $0x0
  94:	e8 17 00 00 00       	call   b0 <wc>
    exit(0);
  99:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a0:	e8 3d 03 00 00       	call   3e2 <exit>
  a5:	66 90                	xchg   %ax,%ax
  a7:	66 90                	xchg   %ax,%ax
  a9:	66 90                	xchg   %ax,%ax
  ab:	66 90                	xchg   %ax,%ax
  ad:	66 90                	xchg   %ax,%ax
  af:	90                   	nop

000000b0 <wc>:
{
  b0:	55                   	push   %ebp
  b1:	89 e5                	mov    %esp,%ebp
  b3:	57                   	push   %edi
  b4:	56                   	push   %esi
  b5:	53                   	push   %ebx
  l = w = c = 0;
  b6:	31 db                	xor    %ebx,%ebx
{
  b8:	83 ec 1c             	sub    $0x1c,%esp
  inword = 0;
  bb:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  l = w = c = 0;
  c2:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
  c9:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
  while((n = read(fd, buf, sizeof(buf))) > 0){
  d0:	83 ec 04             	sub    $0x4,%esp
  d3:	68 00 02 00 00       	push   $0x200
  d8:	68 e0 0b 00 00       	push   $0xbe0
  dd:	ff 75 08             	pushl  0x8(%ebp)
  e0:	e8 15 03 00 00       	call   3fa <read>
  e5:	83 c4 10             	add    $0x10,%esp
  e8:	83 f8 00             	cmp    $0x0,%eax
  eb:	89 c6                	mov    %eax,%esi
  ed:	7e 61                	jle    150 <wc+0xa0>
    for(i=0; i<n; i++){
  ef:	31 ff                	xor    %edi,%edi
  f1:	eb 13                	jmp    106 <wc+0x56>
  f3:	90                   	nop
  f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        inword = 0;
  f8:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    for(i=0; i<n; i++){
  ff:	83 c7 01             	add    $0x1,%edi
 102:	39 fe                	cmp    %edi,%esi
 104:	74 42                	je     148 <wc+0x98>
      if(buf[i] == '\n')
 106:	0f be 87 e0 0b 00 00 	movsbl 0xbe0(%edi),%eax
        l++;
 10d:	31 c9                	xor    %ecx,%ecx
 10f:	3c 0a                	cmp    $0xa,%al
 111:	0f 94 c1             	sete   %cl
      if(strchr(" \r\t\n\v", buf[i]))
 114:	83 ec 08             	sub    $0x8,%esp
 117:	50                   	push   %eax
 118:	68 88 08 00 00       	push   $0x888
        l++;
 11d:	01 cb                	add    %ecx,%ebx
      if(strchr(" \r\t\n\v", buf[i]))
 11f:	e8 3c 01 00 00       	call   260 <strchr>
 124:	83 c4 10             	add    $0x10,%esp
 127:	85 c0                	test   %eax,%eax
 129:	75 cd                	jne    f8 <wc+0x48>
      else if(!inword){
 12b:	8b 55 e4             	mov    -0x1c(%ebp),%edx
 12e:	85 d2                	test   %edx,%edx
 130:	75 cd                	jne    ff <wc+0x4f>
    for(i=0; i<n; i++){
 132:	83 c7 01             	add    $0x1,%edi
        w++;
 135:	83 45 dc 01          	addl   $0x1,-0x24(%ebp)
        inword = 1;
 139:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
    for(i=0; i<n; i++){
 140:	39 fe                	cmp    %edi,%esi
 142:	75 c2                	jne    106 <wc+0x56>
 144:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 148:	01 75 e0             	add    %esi,-0x20(%ebp)
 14b:	eb 83                	jmp    d0 <wc+0x20>
 14d:	8d 76 00             	lea    0x0(%esi),%esi
  if(n < 0){
 150:	75 24                	jne    176 <wc+0xc6>
  printf(1, "%d %d %d %s\n", l, w, c, name);
 152:	83 ec 08             	sub    $0x8,%esp
 155:	ff 75 0c             	pushl  0xc(%ebp)
 158:	ff 75 e0             	pushl  -0x20(%ebp)
 15b:	ff 75 dc             	pushl  -0x24(%ebp)
 15e:	53                   	push   %ebx
 15f:	68 9e 08 00 00       	push   $0x89e
 164:	6a 01                	push   $0x1
 166:	e8 c5 03 00 00       	call   530 <printf>
}
 16b:	83 c4 20             	add    $0x20,%esp
 16e:	8d 65 f4             	lea    -0xc(%ebp),%esp
 171:	5b                   	pop    %ebx
 172:	5e                   	pop    %esi
 173:	5f                   	pop    %edi
 174:	5d                   	pop    %ebp
 175:	c3                   	ret    
    printf(1, "wc: read error\n");
 176:	50                   	push   %eax
 177:	50                   	push   %eax
 178:	68 8e 08 00 00       	push   $0x88e
 17d:	6a 01                	push   $0x1
 17f:	e8 ac 03 00 00       	call   530 <printf>
    exit(1);
 184:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 18b:	e8 52 02 00 00       	call   3e2 <exit>

00000190 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
 190:	55                   	push   %ebp
 191:	89 e5                	mov    %esp,%ebp
 193:	53                   	push   %ebx
 194:	8b 45 08             	mov    0x8(%ebp),%eax
 197:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
 19a:	89 c2                	mov    %eax,%edx
 19c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 1a0:	83 c1 01             	add    $0x1,%ecx
 1a3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 1a7:	83 c2 01             	add    $0x1,%edx
 1aa:	84 db                	test   %bl,%bl
 1ac:	88 5a ff             	mov    %bl,-0x1(%edx)
 1af:	75 ef                	jne    1a0 <strcpy+0x10>
    ;
  return os;
}
 1b1:	5b                   	pop    %ebx
 1b2:	5d                   	pop    %ebp
 1b3:	c3                   	ret    
 1b4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 1ba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000001c0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
 1c0:	55                   	push   %ebp
 1c1:	89 e5                	mov    %esp,%ebp
 1c3:	53                   	push   %ebx
 1c4:	8b 55 08             	mov    0x8(%ebp),%edx
 1c7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
 1ca:	0f b6 02             	movzbl (%edx),%eax
 1cd:	0f b6 19             	movzbl (%ecx),%ebx
 1d0:	84 c0                	test   %al,%al
 1d2:	75 1c                	jne    1f0 <strcmp+0x30>
 1d4:	eb 2a                	jmp    200 <strcmp+0x40>
 1d6:	8d 76 00             	lea    0x0(%esi),%esi
 1d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
 1e0:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
 1e3:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
 1e6:	83 c1 01             	add    $0x1,%ecx
 1e9:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
 1ec:	84 c0                	test   %al,%al
 1ee:	74 10                	je     200 <strcmp+0x40>
 1f0:	38 d8                	cmp    %bl,%al
 1f2:	74 ec                	je     1e0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
 1f4:	29 d8                	sub    %ebx,%eax
}
 1f6:	5b                   	pop    %ebx
 1f7:	5d                   	pop    %ebp
 1f8:	c3                   	ret    
 1f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 200:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
 202:	29 d8                	sub    %ebx,%eax
}
 204:	5b                   	pop    %ebx
 205:	5d                   	pop    %ebp
 206:	c3                   	ret    
 207:	89 f6                	mov    %esi,%esi
 209:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000210 <strlen>:

uint
strlen(const char *s)
{
 210:	55                   	push   %ebp
 211:	89 e5                	mov    %esp,%ebp
 213:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
 216:	80 39 00             	cmpb   $0x0,(%ecx)
 219:	74 15                	je     230 <strlen+0x20>
 21b:	31 d2                	xor    %edx,%edx
 21d:	8d 76 00             	lea    0x0(%esi),%esi
 220:	83 c2 01             	add    $0x1,%edx
 223:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 227:	89 d0                	mov    %edx,%eax
 229:	75 f5                	jne    220 <strlen+0x10>
    ;
  return n;
}
 22b:	5d                   	pop    %ebp
 22c:	c3                   	ret    
 22d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
 230:	31 c0                	xor    %eax,%eax
}
 232:	5d                   	pop    %ebp
 233:	c3                   	ret    
 234:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 23a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000240 <memset>:

void*
memset(void *dst, int c, uint n)
{
 240:	55                   	push   %ebp
 241:	89 e5                	mov    %esp,%ebp
 243:	57                   	push   %edi
 244:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
 247:	8b 4d 10             	mov    0x10(%ebp),%ecx
 24a:	8b 45 0c             	mov    0xc(%ebp),%eax
 24d:	89 d7                	mov    %edx,%edi
 24f:	fc                   	cld    
 250:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
 252:	89 d0                	mov    %edx,%eax
 254:	5f                   	pop    %edi
 255:	5d                   	pop    %ebp
 256:	c3                   	ret    
 257:	89 f6                	mov    %esi,%esi
 259:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000260 <strchr>:

char*
strchr(const char *s, char c)
{
 260:	55                   	push   %ebp
 261:	89 e5                	mov    %esp,%ebp
 263:	53                   	push   %ebx
 264:	8b 45 08             	mov    0x8(%ebp),%eax
 267:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
 26a:	0f b6 10             	movzbl (%eax),%edx
 26d:	84 d2                	test   %dl,%dl
 26f:	74 1d                	je     28e <strchr+0x2e>
    if(*s == c)
 271:	38 d3                	cmp    %dl,%bl
 273:	89 d9                	mov    %ebx,%ecx
 275:	75 0d                	jne    284 <strchr+0x24>
 277:	eb 17                	jmp    290 <strchr+0x30>
 279:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 280:	38 ca                	cmp    %cl,%dl
 282:	74 0c                	je     290 <strchr+0x30>
  for(; *s; s++)
 284:	83 c0 01             	add    $0x1,%eax
 287:	0f b6 10             	movzbl (%eax),%edx
 28a:	84 d2                	test   %dl,%dl
 28c:	75 f2                	jne    280 <strchr+0x20>
      return (char*)s;
  return 0;
 28e:	31 c0                	xor    %eax,%eax
}
 290:	5b                   	pop    %ebx
 291:	5d                   	pop    %ebp
 292:	c3                   	ret    
 293:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 299:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002a0 <gets>:

char*
gets(char *buf, int max)
{
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	57                   	push   %edi
 2a4:	56                   	push   %esi
 2a5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
 2a6:	31 f6                	xor    %esi,%esi
 2a8:	89 f3                	mov    %esi,%ebx
{
 2aa:	83 ec 1c             	sub    $0x1c,%esp
 2ad:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
 2b0:	eb 2f                	jmp    2e1 <gets+0x41>
 2b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
 2b8:	8d 45 e7             	lea    -0x19(%ebp),%eax
 2bb:	83 ec 04             	sub    $0x4,%esp
 2be:	6a 01                	push   $0x1
 2c0:	50                   	push   %eax
 2c1:	6a 00                	push   $0x0
 2c3:	e8 32 01 00 00       	call   3fa <read>
    if(cc < 1)
 2c8:	83 c4 10             	add    $0x10,%esp
 2cb:	85 c0                	test   %eax,%eax
 2cd:	7e 1c                	jle    2eb <gets+0x4b>
      break;
    buf[i++] = c;
 2cf:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 2d3:	83 c7 01             	add    $0x1,%edi
 2d6:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
 2d9:	3c 0a                	cmp    $0xa,%al
 2db:	74 23                	je     300 <gets+0x60>
 2dd:	3c 0d                	cmp    $0xd,%al
 2df:	74 1f                	je     300 <gets+0x60>
  for(i=0; i+1 < max; ){
 2e1:	83 c3 01             	add    $0x1,%ebx
 2e4:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 2e7:	89 fe                	mov    %edi,%esi
 2e9:	7c cd                	jl     2b8 <gets+0x18>
 2eb:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
 2ed:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
 2f0:	c6 03 00             	movb   $0x0,(%ebx)
}
 2f3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 2f6:	5b                   	pop    %ebx
 2f7:	5e                   	pop    %esi
 2f8:	5f                   	pop    %edi
 2f9:	5d                   	pop    %ebp
 2fa:	c3                   	ret    
 2fb:	90                   	nop
 2fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 300:	8b 75 08             	mov    0x8(%ebp),%esi
 303:	8b 45 08             	mov    0x8(%ebp),%eax
 306:	01 de                	add    %ebx,%esi
 308:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
 30a:	c6 03 00             	movb   $0x0,(%ebx)
}
 30d:	8d 65 f4             	lea    -0xc(%ebp),%esp
 310:	5b                   	pop    %ebx
 311:	5e                   	pop    %esi
 312:	5f                   	pop    %edi
 313:	5d                   	pop    %ebp
 314:	c3                   	ret    
 315:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 319:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000320 <stat>:

int
stat(const char *n, struct stat *st)
{
 320:	55                   	push   %ebp
 321:	89 e5                	mov    %esp,%ebp
 323:	56                   	push   %esi
 324:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
 325:	83 ec 08             	sub    $0x8,%esp
 328:	6a 00                	push   $0x0
 32a:	ff 75 08             	pushl  0x8(%ebp)
 32d:	e8 f0 00 00 00       	call   422 <open>
  if(fd < 0)
 332:	83 c4 10             	add    $0x10,%esp
 335:	85 c0                	test   %eax,%eax
 337:	78 27                	js     360 <stat+0x40>
    return -1;
  r = fstat(fd, st);
 339:	83 ec 08             	sub    $0x8,%esp
 33c:	ff 75 0c             	pushl  0xc(%ebp)
 33f:	89 c3                	mov    %eax,%ebx
 341:	50                   	push   %eax
 342:	e8 f3 00 00 00       	call   43a <fstat>
  close(fd);
 347:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
 34a:	89 c6                	mov    %eax,%esi
  close(fd);
 34c:	e8 b9 00 00 00       	call   40a <close>
  return r;
 351:	83 c4 10             	add    $0x10,%esp
}
 354:	8d 65 f8             	lea    -0x8(%ebp),%esp
 357:	89 f0                	mov    %esi,%eax
 359:	5b                   	pop    %ebx
 35a:	5e                   	pop    %esi
 35b:	5d                   	pop    %ebp
 35c:	c3                   	ret    
 35d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
 360:	be ff ff ff ff       	mov    $0xffffffff,%esi
 365:	eb ed                	jmp    354 <stat+0x34>
 367:	89 f6                	mov    %esi,%esi
 369:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000370 <atoi>:

int
atoi(const char *s)
{
 370:	55                   	push   %ebp
 371:	89 e5                	mov    %esp,%ebp
 373:	53                   	push   %ebx
 374:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
 377:	0f be 11             	movsbl (%ecx),%edx
 37a:	8d 42 d0             	lea    -0x30(%edx),%eax
 37d:	3c 09                	cmp    $0x9,%al
  n = 0;
 37f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
 384:	77 1f                	ja     3a5 <atoi+0x35>
 386:	8d 76 00             	lea    0x0(%esi),%esi
 389:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
 390:	8d 04 80             	lea    (%eax,%eax,4),%eax
 393:	83 c1 01             	add    $0x1,%ecx
 396:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
 39a:	0f be 11             	movsbl (%ecx),%edx
 39d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 3a0:	80 fb 09             	cmp    $0x9,%bl
 3a3:	76 eb                	jbe    390 <atoi+0x20>
  return n;
}
 3a5:	5b                   	pop    %ebx
 3a6:	5d                   	pop    %ebp
 3a7:	c3                   	ret    
 3a8:	90                   	nop
 3a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003b0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
 3b0:	55                   	push   %ebp
 3b1:	89 e5                	mov    %esp,%ebp
 3b3:	56                   	push   %esi
 3b4:	53                   	push   %ebx
 3b5:	8b 5d 10             	mov    0x10(%ebp),%ebx
 3b8:	8b 45 08             	mov    0x8(%ebp),%eax
 3bb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
 3be:	85 db                	test   %ebx,%ebx
 3c0:	7e 14                	jle    3d6 <memmove+0x26>
 3c2:	31 d2                	xor    %edx,%edx
 3c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
 3c8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 3cc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 3cf:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
 3d2:	39 d3                	cmp    %edx,%ebx
 3d4:	75 f2                	jne    3c8 <memmove+0x18>
  return vdst;
}
 3d6:	5b                   	pop    %ebx
 3d7:	5e                   	pop    %esi
 3d8:	5d                   	pop    %ebp
 3d9:	c3                   	ret    

000003da <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 3da:	b8 01 00 00 00       	mov    $0x1,%eax
 3df:	cd 40                	int    $0x40
 3e1:	c3                   	ret    

000003e2 <exit>:
SYSCALL(exit)
 3e2:	b8 02 00 00 00       	mov    $0x2,%eax
 3e7:	cd 40                	int    $0x40
 3e9:	c3                   	ret    

000003ea <wait>:
SYSCALL(wait)
 3ea:	b8 03 00 00 00       	mov    $0x3,%eax
 3ef:	cd 40                	int    $0x40
 3f1:	c3                   	ret    

000003f2 <pipe>:
SYSCALL(pipe)
 3f2:	b8 04 00 00 00       	mov    $0x4,%eax
 3f7:	cd 40                	int    $0x40
 3f9:	c3                   	ret    

000003fa <read>:
SYSCALL(read)
 3fa:	b8 05 00 00 00       	mov    $0x5,%eax
 3ff:	cd 40                	int    $0x40
 401:	c3                   	ret    

00000402 <write>:
SYSCALL(write)
 402:	b8 10 00 00 00       	mov    $0x10,%eax
 407:	cd 40                	int    $0x40
 409:	c3                   	ret    

0000040a <close>:
SYSCALL(close)
 40a:	b8 15 00 00 00       	mov    $0x15,%eax
 40f:	cd 40                	int    $0x40
 411:	c3                   	ret    

00000412 <kill>:
SYSCALL(kill)
 412:	b8 06 00 00 00       	mov    $0x6,%eax
 417:	cd 40                	int    $0x40
 419:	c3                   	ret    

0000041a <exec>:
SYSCALL(exec)
 41a:	b8 07 00 00 00       	mov    $0x7,%eax
 41f:	cd 40                	int    $0x40
 421:	c3                   	ret    

00000422 <open>:
SYSCALL(open)
 422:	b8 0f 00 00 00       	mov    $0xf,%eax
 427:	cd 40                	int    $0x40
 429:	c3                   	ret    

0000042a <mknod>:
SYSCALL(mknod)
 42a:	b8 11 00 00 00       	mov    $0x11,%eax
 42f:	cd 40                	int    $0x40
 431:	c3                   	ret    

00000432 <unlink>:
SYSCALL(unlink)
 432:	b8 12 00 00 00       	mov    $0x12,%eax
 437:	cd 40                	int    $0x40
 439:	c3                   	ret    

0000043a <fstat>:
SYSCALL(fstat)
 43a:	b8 08 00 00 00       	mov    $0x8,%eax
 43f:	cd 40                	int    $0x40
 441:	c3                   	ret    

00000442 <link>:
SYSCALL(link)
 442:	b8 13 00 00 00       	mov    $0x13,%eax
 447:	cd 40                	int    $0x40
 449:	c3                   	ret    

0000044a <mkdir>:
SYSCALL(mkdir)
 44a:	b8 14 00 00 00       	mov    $0x14,%eax
 44f:	cd 40                	int    $0x40
 451:	c3                   	ret    

00000452 <chdir>:
SYSCALL(chdir)
 452:	b8 09 00 00 00       	mov    $0x9,%eax
 457:	cd 40                	int    $0x40
 459:	c3                   	ret    

0000045a <dup>:
SYSCALL(dup)
 45a:	b8 0a 00 00 00       	mov    $0xa,%eax
 45f:	cd 40                	int    $0x40
 461:	c3                   	ret    

00000462 <getpid>:
SYSCALL(getpid)
 462:	b8 0b 00 00 00       	mov    $0xb,%eax
 467:	cd 40                	int    $0x40
 469:	c3                   	ret    

0000046a <sbrk>:
SYSCALL(sbrk)
 46a:	b8 0c 00 00 00       	mov    $0xc,%eax
 46f:	cd 40                	int    $0x40
 471:	c3                   	ret    

00000472 <sleep>:
SYSCALL(sleep)
 472:	b8 0d 00 00 00       	mov    $0xd,%eax
 477:	cd 40                	int    $0x40
 479:	c3                   	ret    

0000047a <uptime>:
SYSCALL(uptime)
 47a:	b8 0e 00 00 00       	mov    $0xe,%eax
 47f:	cd 40                	int    $0x40
 481:	c3                   	ret    

00000482 <memsize>:
SYSCALL(memsize)
 482:	b8 16 00 00 00       	mov    $0x16,%eax
 487:	cd 40                	int    $0x40
 489:	c3                   	ret    
 48a:	66 90                	xchg   %ax,%ax
 48c:	66 90                	xchg   %ax,%ax
 48e:	66 90                	xchg   %ax,%ax

00000490 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 490:	55                   	push   %ebp
 491:	89 e5                	mov    %esp,%ebp
 493:	57                   	push   %edi
 494:	56                   	push   %esi
 495:	53                   	push   %ebx
 496:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 499:	85 d2                	test   %edx,%edx
{
 49b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
 49e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
 4a0:	79 76                	jns    518 <printint+0x88>
 4a2:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
 4a6:	74 70                	je     518 <printint+0x88>
    x = -xx;
 4a8:	f7 d8                	neg    %eax
    neg = 1;
 4aa:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 4b1:	31 f6                	xor    %esi,%esi
 4b3:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 4b6:	eb 0a                	jmp    4c2 <printint+0x32>
 4b8:	90                   	nop
 4b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
 4c0:	89 fe                	mov    %edi,%esi
 4c2:	31 d2                	xor    %edx,%edx
 4c4:	8d 7e 01             	lea    0x1(%esi),%edi
 4c7:	f7 f1                	div    %ecx
 4c9:	0f b6 92 c8 08 00 00 	movzbl 0x8c8(%edx),%edx
  }while((x /= base) != 0);
 4d0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
 4d2:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
 4d5:	75 e9                	jne    4c0 <printint+0x30>
  if(neg)
 4d7:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 4da:	85 c0                	test   %eax,%eax
 4dc:	74 08                	je     4e6 <printint+0x56>
    buf[i++] = '-';
 4de:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
 4e3:	8d 7e 02             	lea    0x2(%esi),%edi
 4e6:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
 4ea:	8b 7d c0             	mov    -0x40(%ebp),%edi
 4ed:	8d 76 00             	lea    0x0(%esi),%esi
 4f0:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
 4f3:	83 ec 04             	sub    $0x4,%esp
 4f6:	83 ee 01             	sub    $0x1,%esi
 4f9:	6a 01                	push   $0x1
 4fb:	53                   	push   %ebx
 4fc:	57                   	push   %edi
 4fd:	88 45 d7             	mov    %al,-0x29(%ebp)
 500:	e8 fd fe ff ff       	call   402 <write>

  while(--i >= 0)
 505:	83 c4 10             	add    $0x10,%esp
 508:	39 de                	cmp    %ebx,%esi
 50a:	75 e4                	jne    4f0 <printint+0x60>
    putc(fd, buf[i]);
}
 50c:	8d 65 f4             	lea    -0xc(%ebp),%esp
 50f:	5b                   	pop    %ebx
 510:	5e                   	pop    %esi
 511:	5f                   	pop    %edi
 512:	5d                   	pop    %ebp
 513:	c3                   	ret    
 514:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
 518:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 51f:	eb 90                	jmp    4b1 <printint+0x21>
 521:	eb 0d                	jmp    530 <printf>
 523:	90                   	nop
 524:	90                   	nop
 525:	90                   	nop
 526:	90                   	nop
 527:	90                   	nop
 528:	90                   	nop
 529:	90                   	nop
 52a:	90                   	nop
 52b:	90                   	nop
 52c:	90                   	nop
 52d:	90                   	nop
 52e:	90                   	nop
 52f:	90                   	nop

00000530 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
 530:	55                   	push   %ebp
 531:	89 e5                	mov    %esp,%ebp
 533:	57                   	push   %edi
 534:	56                   	push   %esi
 535:	53                   	push   %ebx
 536:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 539:	8b 75 0c             	mov    0xc(%ebp),%esi
 53c:	0f b6 1e             	movzbl (%esi),%ebx
 53f:	84 db                	test   %bl,%bl
 541:	0f 84 b3 00 00 00    	je     5fa <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
 547:	8d 45 10             	lea    0x10(%ebp),%eax
 54a:	83 c6 01             	add    $0x1,%esi
  state = 0;
 54d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
 54f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 552:	eb 2f                	jmp    583 <printf+0x53>
 554:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 558:	83 f8 25             	cmp    $0x25,%eax
 55b:	0f 84 a7 00 00 00    	je     608 <printf+0xd8>
  write(fd, &c, 1);
 561:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 564:	83 ec 04             	sub    $0x4,%esp
 567:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 56a:	6a 01                	push   $0x1
 56c:	50                   	push   %eax
 56d:	ff 75 08             	pushl  0x8(%ebp)
 570:	e8 8d fe ff ff       	call   402 <write>
 575:	83 c4 10             	add    $0x10,%esp
 578:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
 57b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 57f:	84 db                	test   %bl,%bl
 581:	74 77                	je     5fa <printf+0xca>
    if(state == 0){
 583:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
 585:	0f be cb             	movsbl %bl,%ecx
 588:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 58b:	74 cb                	je     558 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 58d:	83 ff 25             	cmp    $0x25,%edi
 590:	75 e6                	jne    578 <printf+0x48>
      if(c == 'd'){
 592:	83 f8 64             	cmp    $0x64,%eax
 595:	0f 84 05 01 00 00    	je     6a0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 59b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 5a1:	83 f9 70             	cmp    $0x70,%ecx
 5a4:	74 72                	je     618 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 5a6:	83 f8 73             	cmp    $0x73,%eax
 5a9:	0f 84 99 00 00 00    	je     648 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 5af:	83 f8 63             	cmp    $0x63,%eax
 5b2:	0f 84 08 01 00 00    	je     6c0 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 5b8:	83 f8 25             	cmp    $0x25,%eax
 5bb:	0f 84 ef 00 00 00    	je     6b0 <printf+0x180>
  write(fd, &c, 1);
 5c1:	8d 45 e7             	lea    -0x19(%ebp),%eax
 5c4:	83 ec 04             	sub    $0x4,%esp
 5c7:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 5cb:	6a 01                	push   $0x1
 5cd:	50                   	push   %eax
 5ce:	ff 75 08             	pushl  0x8(%ebp)
 5d1:	e8 2c fe ff ff       	call   402 <write>
 5d6:	83 c4 0c             	add    $0xc,%esp
 5d9:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 5dc:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 5df:	6a 01                	push   $0x1
 5e1:	50                   	push   %eax
 5e2:	ff 75 08             	pushl  0x8(%ebp)
 5e5:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 5e8:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
 5ea:	e8 13 fe ff ff       	call   402 <write>
  for(i = 0; fmt[i]; i++){
 5ef:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
 5f3:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
 5f6:	84 db                	test   %bl,%bl
 5f8:	75 89                	jne    583 <printf+0x53>
    }
  }
}
 5fa:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5fd:	5b                   	pop    %ebx
 5fe:	5e                   	pop    %esi
 5ff:	5f                   	pop    %edi
 600:	5d                   	pop    %ebp
 601:	c3                   	ret    
 602:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
 608:	bf 25 00 00 00       	mov    $0x25,%edi
 60d:	e9 66 ff ff ff       	jmp    578 <printf+0x48>
 612:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
 618:	83 ec 0c             	sub    $0xc,%esp
 61b:	b9 10 00 00 00       	mov    $0x10,%ecx
 620:	6a 00                	push   $0x0
 622:	8b 7d d4             	mov    -0x2c(%ebp),%edi
 625:	8b 45 08             	mov    0x8(%ebp),%eax
 628:	8b 17                	mov    (%edi),%edx
 62a:	e8 61 fe ff ff       	call   490 <printint>
        ap++;
 62f:	89 f8                	mov    %edi,%eax
 631:	83 c4 10             	add    $0x10,%esp
      state = 0;
 634:	31 ff                	xor    %edi,%edi
        ap++;
 636:	83 c0 04             	add    $0x4,%eax
 639:	89 45 d4             	mov    %eax,-0x2c(%ebp)
 63c:	e9 37 ff ff ff       	jmp    578 <printf+0x48>
 641:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
 648:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 64b:	8b 08                	mov    (%eax),%ecx
        ap++;
 64d:	83 c0 04             	add    $0x4,%eax
 650:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
 653:	85 c9                	test   %ecx,%ecx
 655:	0f 84 8e 00 00 00    	je     6e9 <printf+0x1b9>
        while(*s != 0){
 65b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
 65e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
 660:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
 662:	84 c0                	test   %al,%al
 664:	0f 84 0e ff ff ff    	je     578 <printf+0x48>
 66a:	89 75 d0             	mov    %esi,-0x30(%ebp)
 66d:	89 de                	mov    %ebx,%esi
 66f:	8b 5d 08             	mov    0x8(%ebp),%ebx
 672:	8d 7d e3             	lea    -0x1d(%ebp),%edi
 675:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
 678:	83 ec 04             	sub    $0x4,%esp
          s++;
 67b:	83 c6 01             	add    $0x1,%esi
 67e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
 681:	6a 01                	push   $0x1
 683:	57                   	push   %edi
 684:	53                   	push   %ebx
 685:	e8 78 fd ff ff       	call   402 <write>
        while(*s != 0){
 68a:	0f b6 06             	movzbl (%esi),%eax
 68d:	83 c4 10             	add    $0x10,%esp
 690:	84 c0                	test   %al,%al
 692:	75 e4                	jne    678 <printf+0x148>
 694:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
 697:	31 ff                	xor    %edi,%edi
 699:	e9 da fe ff ff       	jmp    578 <printf+0x48>
 69e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
 6a0:	83 ec 0c             	sub    $0xc,%esp
 6a3:	b9 0a 00 00 00       	mov    $0xa,%ecx
 6a8:	6a 01                	push   $0x1
 6aa:	e9 73 ff ff ff       	jmp    622 <printf+0xf2>
 6af:	90                   	nop
  write(fd, &c, 1);
 6b0:	83 ec 04             	sub    $0x4,%esp
 6b3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 6b6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 6b9:	6a 01                	push   $0x1
 6bb:	e9 21 ff ff ff       	jmp    5e1 <printf+0xb1>
        putc(fd, *ap);
 6c0:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
 6c3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
 6c6:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
 6c8:	6a 01                	push   $0x1
        ap++;
 6ca:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
 6cd:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
 6d0:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 6d3:	50                   	push   %eax
 6d4:	ff 75 08             	pushl  0x8(%ebp)
 6d7:	e8 26 fd ff ff       	call   402 <write>
        ap++;
 6dc:	89 7d d4             	mov    %edi,-0x2c(%ebp)
 6df:	83 c4 10             	add    $0x10,%esp
      state = 0;
 6e2:	31 ff                	xor    %edi,%edi
 6e4:	e9 8f fe ff ff       	jmp    578 <printf+0x48>
          s = "(null)";
 6e9:	bb bf 08 00 00       	mov    $0x8bf,%ebx
        while(*s != 0){
 6ee:	b8 28 00 00 00       	mov    $0x28,%eax
 6f3:	e9 72 ff ff ff       	jmp    66a <printf+0x13a>
 6f8:	66 90                	xchg   %ax,%ax
 6fa:	66 90                	xchg   %ax,%ax
 6fc:	66 90                	xchg   %ax,%ax
 6fe:	66 90                	xchg   %ax,%ax

00000700 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 700:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 701:	a1 c0 0b 00 00       	mov    0xbc0,%eax
{
 706:	89 e5                	mov    %esp,%ebp
 708:	57                   	push   %edi
 709:	56                   	push   %esi
 70a:	53                   	push   %ebx
 70b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
 70e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
 711:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 718:	39 c8                	cmp    %ecx,%eax
 71a:	8b 10                	mov    (%eax),%edx
 71c:	73 32                	jae    750 <free+0x50>
 71e:	39 d1                	cmp    %edx,%ecx
 720:	72 04                	jb     726 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 722:	39 d0                	cmp    %edx,%eax
 724:	72 32                	jb     758 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
 726:	8b 73 fc             	mov    -0x4(%ebx),%esi
 729:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 72c:	39 fa                	cmp    %edi,%edx
 72e:	74 30                	je     760 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 730:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 733:	8b 50 04             	mov    0x4(%eax),%edx
 736:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 739:	39 f1                	cmp    %esi,%ecx
 73b:	74 3a                	je     777 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 73d:	89 08                	mov    %ecx,(%eax)
  freep = p;
 73f:	a3 c0 0b 00 00       	mov    %eax,0xbc0
}
 744:	5b                   	pop    %ebx
 745:	5e                   	pop    %esi
 746:	5f                   	pop    %edi
 747:	5d                   	pop    %ebp
 748:	c3                   	ret    
 749:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 750:	39 d0                	cmp    %edx,%eax
 752:	72 04                	jb     758 <free+0x58>
 754:	39 d1                	cmp    %edx,%ecx
 756:	72 ce                	jb     726 <free+0x26>
{
 758:	89 d0                	mov    %edx,%eax
 75a:	eb bc                	jmp    718 <free+0x18>
 75c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
 760:	03 72 04             	add    0x4(%edx),%esi
 763:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 766:	8b 10                	mov    (%eax),%edx
 768:	8b 12                	mov    (%edx),%edx
 76a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 76d:	8b 50 04             	mov    0x4(%eax),%edx
 770:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 773:	39 f1                	cmp    %esi,%ecx
 775:	75 c6                	jne    73d <free+0x3d>
    p->s.size += bp->s.size;
 777:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
 77a:	a3 c0 0b 00 00       	mov    %eax,0xbc0
    p->s.size += bp->s.size;
 77f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 782:	8b 53 f8             	mov    -0x8(%ebx),%edx
 785:	89 10                	mov    %edx,(%eax)
}
 787:	5b                   	pop    %ebx
 788:	5e                   	pop    %esi
 789:	5f                   	pop    %edi
 78a:	5d                   	pop    %ebp
 78b:	c3                   	ret    
 78c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000790 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 790:	55                   	push   %ebp
 791:	89 e5                	mov    %esp,%ebp
 793:	57                   	push   %edi
 794:	56                   	push   %esi
 795:	53                   	push   %ebx
 796:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 799:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 79c:	8b 15 c0 0b 00 00    	mov    0xbc0,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 7a2:	8d 78 07             	lea    0x7(%eax),%edi
 7a5:	c1 ef 03             	shr    $0x3,%edi
 7a8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 7ab:	85 d2                	test   %edx,%edx
 7ad:	0f 84 9d 00 00 00    	je     850 <malloc+0xc0>
 7b3:	8b 02                	mov    (%edx),%eax
 7b5:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 7b8:	39 cf                	cmp    %ecx,%edi
 7ba:	76 6c                	jbe    828 <malloc+0x98>
 7bc:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 7c2:	bb 00 10 00 00       	mov    $0x1000,%ebx
 7c7:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
 7ca:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
 7d1:	eb 0e                	jmp    7e1 <malloc+0x51>
 7d3:	90                   	nop
 7d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 7d8:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 7da:	8b 48 04             	mov    0x4(%eax),%ecx
 7dd:	39 f9                	cmp    %edi,%ecx
 7df:	73 47                	jae    828 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 7e1:	39 05 c0 0b 00 00    	cmp    %eax,0xbc0
 7e7:	89 c2                	mov    %eax,%edx
 7e9:	75 ed                	jne    7d8 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
 7eb:	83 ec 0c             	sub    $0xc,%esp
 7ee:	56                   	push   %esi
 7ef:	e8 76 fc ff ff       	call   46a <sbrk>
  if(p == (char*)-1)
 7f4:	83 c4 10             	add    $0x10,%esp
 7f7:	83 f8 ff             	cmp    $0xffffffff,%eax
 7fa:	74 1c                	je     818 <malloc+0x88>
  hp->s.size = nu;
 7fc:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
 7ff:	83 ec 0c             	sub    $0xc,%esp
 802:	83 c0 08             	add    $0x8,%eax
 805:	50                   	push   %eax
 806:	e8 f5 fe ff ff       	call   700 <free>
  return freep;
 80b:	8b 15 c0 0b 00 00    	mov    0xbc0,%edx
      if((p = morecore(nunits)) == 0)
 811:	83 c4 10             	add    $0x10,%esp
 814:	85 d2                	test   %edx,%edx
 816:	75 c0                	jne    7d8 <malloc+0x48>
        return 0;
  }
}
 818:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
 81b:	31 c0                	xor    %eax,%eax
}
 81d:	5b                   	pop    %ebx
 81e:	5e                   	pop    %esi
 81f:	5f                   	pop    %edi
 820:	5d                   	pop    %ebp
 821:	c3                   	ret    
 822:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
 828:	39 cf                	cmp    %ecx,%edi
 82a:	74 54                	je     880 <malloc+0xf0>
        p->s.size -= nunits;
 82c:	29 f9                	sub    %edi,%ecx
 82e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 831:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 834:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
 837:	89 15 c0 0b 00 00    	mov    %edx,0xbc0
}
 83d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
 840:	83 c0 08             	add    $0x8,%eax
}
 843:	5b                   	pop    %ebx
 844:	5e                   	pop    %esi
 845:	5f                   	pop    %edi
 846:	5d                   	pop    %ebp
 847:	c3                   	ret    
 848:	90                   	nop
 849:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
 850:	c7 05 c0 0b 00 00 c4 	movl   $0xbc4,0xbc0
 857:	0b 00 00 
 85a:	c7 05 c4 0b 00 00 c4 	movl   $0xbc4,0xbc4
 861:	0b 00 00 
    base.s.size = 0;
 864:	b8 c4 0b 00 00       	mov    $0xbc4,%eax
 869:	c7 05 c8 0b 00 00 00 	movl   $0x0,0xbc8
 870:	00 00 00 
 873:	e9 44 ff ff ff       	jmp    7bc <malloc+0x2c>
 878:	90                   	nop
 879:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
 880:	8b 08                	mov    (%eax),%ecx
 882:	89 0a                	mov    %ecx,(%edx)
 884:	eb b1                	jmp    837 <malloc+0xa7>
