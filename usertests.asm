
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	pushl  -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	51                   	push   %ecx
       e:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "usertests starting\n");
      11:	68 f6 52 00 00       	push   $0x52f6
      16:	6a 01                	push   $0x1
      18:	e8 93 3f 00 00       	call   3fb0 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	59                   	pop    %ecx
      1e:	58                   	pop    %eax
      1f:	6a 00                	push   $0x0
      21:	68 0a 53 00 00       	push   $0x530a
      26:	e8 77 3e 00 00       	call   3ea2 <open>
      2b:	83 c4 10             	add    $0x10,%esp
      2e:	85 c0                	test   %eax,%eax
      30:	78 1a                	js     4c <main+0x4c>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      32:	52                   	push   %edx
      33:	52                   	push   %edx
      34:	68 74 5a 00 00       	push   $0x5a74
      39:	6a 01                	push   $0x1
      3b:	e8 70 3f 00 00       	call   3fb0 <printf>
    exit(1);
      40:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      47:	e8 16 3e 00 00       	call   3e62 <exit>
  }
  close(open("usertests.ran", O_CREATE));
      4c:	50                   	push   %eax
      4d:	50                   	push   %eax
      4e:	68 00 02 00 00       	push   $0x200
      53:	68 0a 53 00 00       	push   $0x530a
      58:	e8 45 3e 00 00       	call   3ea2 <open>
      5d:	89 04 24             	mov    %eax,(%esp)
      60:	e8 25 3e 00 00       	call   3e8a <close>

  argptest();
      65:	e8 16 3b 00 00       	call   3b80 <argptest>
  createdelete();
      6a:	e8 71 13 00 00       	call   13e0 <createdelete>
  linkunlink();
      6f:	e8 1c 1d 00 00       	call   1d90 <linkunlink>
  concreate();
      74:	e8 d7 19 00 00       	call   1a50 <concreate>
  fourfiles();
      79:	e8 22 11 00 00       	call   11a0 <fourfiles>
  sharedfd();
      7e:	e8 3d 0f 00 00       	call   fc0 <sharedfd>

  bigargtest();
      83:	e8 78 37 00 00       	call   3800 <bigargtest>
  bigwrite();
      88:	e8 43 27 00 00       	call   27d0 <bigwrite>
  bigargtest();
      8d:	e8 6e 37 00 00       	call   3800 <bigargtest>
  bsstest();
      92:	e8 e9 36 00 00       	call   3780 <bsstest>
  sbrktest();
      97:	e8 84 31 00 00       	call   3220 <sbrktest>
  validatetest();
      9c:	e8 1f 36 00 00       	call   36c0 <validatetest>

  opentest();
      a1:	e8 da 03 00 00       	call   480 <opentest>
  writetest();
      a6:	e8 75 04 00 00       	call   520 <writetest>
  writetest1();
      ab:	e8 80 06 00 00       	call   730 <writetest1>
  createtest();
      b0:	e8 7b 08 00 00       	call   930 <createtest>

  openiputtest();
      b5:	e8 96 02 00 00       	call   350 <openiputtest>
  exitiputtest();
      ba:	e8 61 01 00 00       	call   220 <exitiputtest>
  iputtest();
      bf:	e8 5c 00 00 00       	call   120 <iputtest>

  mem();
      c4:	e8 17 0e 00 00       	call   ee0 <mem>
  pipe1();
      c9:	e8 62 0a 00 00       	call   b30 <pipe1>
  preempt();
      ce:	e8 1d 0c 00 00       	call   cf0 <preempt>
  exitwait();
      d3:	e8 68 0d 00 00       	call   e40 <exitwait>

  rmdot();
      d8:	e8 43 2b 00 00       	call   2c20 <rmdot>
  fourteen();
      dd:	e8 de 29 00 00       	call   2ac0 <fourteen>
  bigfile();
      e2:	e8 d9 27 00 00       	call   28c0 <bigfile>
  subdir();
      e7:	e8 04 1f 00 00       	call   1ff0 <subdir>
  linktest();
      ec:	e8 0f 17 00 00       	call   1800 <linktest>
  unlinkread();
      f1:	e8 4a 15 00 00       	call   1640 <unlinkread>
  dirfile();
      f6:	e8 d5 2c 00 00       	call   2dd0 <dirfile>
  iref();
      fb:	e8 10 2f 00 00       	call   3010 <iref>
  forktest();
     100:	e8 3b 30 00 00       	call   3140 <forktest>
  bigdir(); // slow
     105:	e8 96 1d 00 00       	call   1ea0 <bigdir>

  uio();
     10a:	e8 e1 39 00 00       	call   3af0 <uio>

  exectest();
     10f:	e8 cc 09 00 00       	call   ae0 <exectest>

  exit(1);
     114:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     11b:	e8 42 3d 00 00       	call   3e62 <exit>

00000120 <iputtest>:
{
     120:	55                   	push   %ebp
     121:	89 e5                	mov    %esp,%ebp
     123:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "iput test\n");
     126:	68 9c 43 00 00       	push   $0x439c
     12b:	ff 35 b8 63 00 00    	pushl  0x63b8
     131:	e8 7a 3e 00 00       	call   3fb0 <printf>
  if(mkdir("iputdir") < 0){
     136:	c7 04 24 2f 43 00 00 	movl   $0x432f,(%esp)
     13d:	e8 88 3d 00 00       	call   3eca <mkdir>
     142:	83 c4 10             	add    $0x10,%esp
     145:	85 c0                	test   %eax,%eax
     147:	78 58                	js     1a1 <iputtest+0x81>
  if(chdir("iputdir") < 0){
     149:	83 ec 0c             	sub    $0xc,%esp
     14c:	68 2f 43 00 00       	push   $0x432f
     151:	e8 7c 3d 00 00       	call   3ed2 <chdir>
     156:	83 c4 10             	add    $0x10,%esp
     159:	85 c0                	test   %eax,%eax
     15b:	0f 88 9a 00 00 00    	js     1fb <iputtest+0xdb>
  if(unlink("../iputdir") < 0){
     161:	83 ec 0c             	sub    $0xc,%esp
     164:	68 2c 43 00 00       	push   $0x432c
     169:	e8 44 3d 00 00       	call   3eb2 <unlink>
     16e:	83 c4 10             	add    $0x10,%esp
     171:	85 c0                	test   %eax,%eax
     173:	78 68                	js     1dd <iputtest+0xbd>
  if(chdir("/") < 0){
     175:	83 ec 0c             	sub    $0xc,%esp
     178:	68 51 43 00 00       	push   $0x4351
     17d:	e8 50 3d 00 00       	call   3ed2 <chdir>
     182:	83 c4 10             	add    $0x10,%esp
     185:	85 c0                	test   %eax,%eax
     187:	78 36                	js     1bf <iputtest+0x9f>
  printf(stdout, "iput test ok\n");
     189:	83 ec 08             	sub    $0x8,%esp
     18c:	68 d4 43 00 00       	push   $0x43d4
     191:	ff 35 b8 63 00 00    	pushl  0x63b8
     197:	e8 14 3e 00 00       	call   3fb0 <printf>
}
     19c:	83 c4 10             	add    $0x10,%esp
     19f:	c9                   	leave  
     1a0:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     1a1:	50                   	push   %eax
     1a2:	50                   	push   %eax
     1a3:	68 08 43 00 00       	push   $0x4308
     1a8:	ff 35 b8 63 00 00    	pushl  0x63b8
     1ae:	e8 fd 3d 00 00       	call   3fb0 <printf>
    exit(1);
     1b3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     1ba:	e8 a3 3c 00 00       	call   3e62 <exit>
    printf(stdout, "chdir / failed\n");
     1bf:	50                   	push   %eax
     1c0:	50                   	push   %eax
     1c1:	68 53 43 00 00       	push   $0x4353
     1c6:	ff 35 b8 63 00 00    	pushl  0x63b8
     1cc:	e8 df 3d 00 00       	call   3fb0 <printf>
    exit(1);
     1d1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     1d8:	e8 85 3c 00 00       	call   3e62 <exit>
    printf(stdout, "unlink ../iputdir failed\n");
     1dd:	52                   	push   %edx
     1de:	52                   	push   %edx
     1df:	68 37 43 00 00       	push   $0x4337
     1e4:	ff 35 b8 63 00 00    	pushl  0x63b8
     1ea:	e8 c1 3d 00 00       	call   3fb0 <printf>
    exit(1);
     1ef:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     1f6:	e8 67 3c 00 00       	call   3e62 <exit>
    printf(stdout, "chdir iputdir failed\n");
     1fb:	51                   	push   %ecx
     1fc:	51                   	push   %ecx
     1fd:	68 16 43 00 00       	push   $0x4316
     202:	ff 35 b8 63 00 00    	pushl  0x63b8
     208:	e8 a3 3d 00 00       	call   3fb0 <printf>
    exit(1);
     20d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     214:	e8 49 3c 00 00       	call   3e62 <exit>
     219:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000220 <exitiputtest>:
{
     220:	55                   	push   %ebp
     221:	89 e5                	mov    %esp,%ebp
     223:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exitiput test\n");
     226:	68 63 43 00 00       	push   $0x4363
     22b:	ff 35 b8 63 00 00    	pushl  0x63b8
     231:	e8 7a 3d 00 00       	call   3fb0 <printf>
  pid = fork();
     236:	e8 1f 3c 00 00       	call   3e5a <fork>
  if(pid < 0){
     23b:	83 c4 10             	add    $0x10,%esp
     23e:	85 c0                	test   %eax,%eax
     240:	0f 88 a1 00 00 00    	js     2e7 <exitiputtest+0xc7>
  if(pid == 0){
     246:	75 58                	jne    2a0 <exitiputtest+0x80>
    if(mkdir("iputdir") < 0){
     248:	83 ec 0c             	sub    $0xc,%esp
     24b:	68 2f 43 00 00       	push   $0x432f
     250:	e8 75 3c 00 00       	call   3eca <mkdir>
     255:	83 c4 10             	add    $0x10,%esp
     258:	85 c0                	test   %eax,%eax
     25a:	0f 88 c3 00 00 00    	js     323 <exitiputtest+0x103>
    if(chdir("iputdir") < 0){
     260:	83 ec 0c             	sub    $0xc,%esp
     263:	68 2f 43 00 00       	push   $0x432f
     268:	e8 65 3c 00 00       	call   3ed2 <chdir>
     26d:	83 c4 10             	add    $0x10,%esp
     270:	85 c0                	test   %eax,%eax
     272:	0f 88 8d 00 00 00    	js     305 <exitiputtest+0xe5>
    if(unlink("../iputdir") < 0){
     278:	83 ec 0c             	sub    $0xc,%esp
     27b:	68 2c 43 00 00       	push   $0x432c
     280:	e8 2d 3c 00 00       	call   3eb2 <unlink>
     285:	83 c4 10             	add    $0x10,%esp
     288:	85 c0                	test   %eax,%eax
     28a:	78 3c                	js     2c8 <exitiputtest+0xa8>
    exit(0);
     28c:	83 ec 0c             	sub    $0xc,%esp
     28f:	6a 00                	push   $0x0
     291:	e8 cc 3b 00 00       	call   3e62 <exit>
     296:	8d 76 00             	lea    0x0(%esi),%esi
     299:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  wait(null);
     2a0:	83 ec 0c             	sub    $0xc,%esp
     2a3:	6a 00                	push   $0x0
     2a5:	e8 c0 3b 00 00       	call   3e6a <wait>
  printf(stdout, "exitiput test ok\n");
     2aa:	58                   	pop    %eax
     2ab:	5a                   	pop    %edx
     2ac:	68 86 43 00 00       	push   $0x4386
     2b1:	ff 35 b8 63 00 00    	pushl  0x63b8
     2b7:	e8 f4 3c 00 00       	call   3fb0 <printf>
}
     2bc:	83 c4 10             	add    $0x10,%esp
     2bf:	c9                   	leave  
     2c0:	c3                   	ret    
     2c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      printf(stdout, "unlink ../iputdir failed\n");
     2c8:	83 ec 08             	sub    $0x8,%esp
     2cb:	68 37 43 00 00       	push   $0x4337
     2d0:	ff 35 b8 63 00 00    	pushl  0x63b8
     2d6:	e8 d5 3c 00 00       	call   3fb0 <printf>
      exit(1);
     2db:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     2e2:	e8 7b 3b 00 00       	call   3e62 <exit>
    printf(stdout, "fork failed\n");
     2e7:	50                   	push   %eax
     2e8:	50                   	push   %eax
     2e9:	68 49 52 00 00       	push   $0x5249
     2ee:	ff 35 b8 63 00 00    	pushl  0x63b8
     2f4:	e8 b7 3c 00 00       	call   3fb0 <printf>
    exit(1);
     2f9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     300:	e8 5d 3b 00 00       	call   3e62 <exit>
      printf(stdout, "child chdir failed\n");
     305:	51                   	push   %ecx
     306:	51                   	push   %ecx
     307:	68 72 43 00 00       	push   $0x4372
     30c:	ff 35 b8 63 00 00    	pushl  0x63b8
     312:	e8 99 3c 00 00       	call   3fb0 <printf>
      exit(1);
     317:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     31e:	e8 3f 3b 00 00       	call   3e62 <exit>
      printf(stdout, "mkdir failed\n");
     323:	50                   	push   %eax
     324:	50                   	push   %eax
     325:	68 08 43 00 00       	push   $0x4308
     32a:	ff 35 b8 63 00 00    	pushl  0x63b8
     330:	e8 7b 3c 00 00       	call   3fb0 <printf>
      exit(1);
     335:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     33c:	e8 21 3b 00 00       	call   3e62 <exit>
     341:	eb 0d                	jmp    350 <openiputtest>
     343:	90                   	nop
     344:	90                   	nop
     345:	90                   	nop
     346:	90                   	nop
     347:	90                   	nop
     348:	90                   	nop
     349:	90                   	nop
     34a:	90                   	nop
     34b:	90                   	nop
     34c:	90                   	nop
     34d:	90                   	nop
     34e:	90                   	nop
     34f:	90                   	nop

00000350 <openiputtest>:
{
     350:	55                   	push   %ebp
     351:	89 e5                	mov    %esp,%ebp
     353:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "openiput test\n");
     356:	68 98 43 00 00       	push   $0x4398
     35b:	ff 35 b8 63 00 00    	pushl  0x63b8
     361:	e8 4a 3c 00 00       	call   3fb0 <printf>
  if(mkdir("oidir") < 0){
     366:	c7 04 24 a7 43 00 00 	movl   $0x43a7,(%esp)
     36d:	e8 58 3b 00 00       	call   3eca <mkdir>
     372:	83 c4 10             	add    $0x10,%esp
     375:	85 c0                	test   %eax,%eax
     377:	0f 88 9d 00 00 00    	js     41a <openiputtest+0xca>
  pid = fork();
     37d:	e8 d8 3a 00 00       	call   3e5a <fork>
  if(pid < 0){
     382:	85 c0                	test   %eax,%eax
     384:	0f 88 ae 00 00 00    	js     438 <openiputtest+0xe8>
  if(pid == 0){
     38a:	75 3c                	jne    3c8 <openiputtest+0x78>
    int fd = open("oidir", O_RDWR);
     38c:	83 ec 08             	sub    $0x8,%esp
     38f:	6a 02                	push   $0x2
     391:	68 a7 43 00 00       	push   $0x43a7
     396:	e8 07 3b 00 00       	call   3ea2 <open>
    if(fd >= 0){
     39b:	83 c4 10             	add    $0x10,%esp
     39e:	85 c0                	test   %eax,%eax
     3a0:	78 6e                	js     410 <openiputtest+0xc0>
      printf(stdout, "open directory for write succeeded\n");
     3a2:	83 ec 08             	sub    $0x8,%esp
     3a5:	68 2c 53 00 00       	push   $0x532c
     3aa:	ff 35 b8 63 00 00    	pushl  0x63b8
     3b0:	e8 fb 3b 00 00       	call   3fb0 <printf>
      exit(0);
     3b5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     3bc:	e8 a1 3a 00 00       	call   3e62 <exit>
     3c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  sleep(1);
     3c8:	83 ec 0c             	sub    $0xc,%esp
     3cb:	6a 01                	push   $0x1
     3cd:	e8 20 3b 00 00       	call   3ef2 <sleep>
  if(unlink("oidir") != 0){
     3d2:	c7 04 24 a7 43 00 00 	movl   $0x43a7,(%esp)
     3d9:	e8 d4 3a 00 00       	call   3eb2 <unlink>
     3de:	83 c4 10             	add    $0x10,%esp
     3e1:	85 c0                	test   %eax,%eax
     3e3:	75 71                	jne    456 <openiputtest+0x106>
  wait(null);
     3e5:	83 ec 0c             	sub    $0xc,%esp
     3e8:	6a 00                	push   $0x0
     3ea:	e8 7b 3a 00 00       	call   3e6a <wait>
  printf(stdout, "openiput test ok\n");
     3ef:	58                   	pop    %eax
     3f0:	5a                   	pop    %edx
     3f1:	68 d0 43 00 00       	push   $0x43d0
     3f6:	ff 35 b8 63 00 00    	pushl  0x63b8
     3fc:	e8 af 3b 00 00       	call   3fb0 <printf>
}
     401:	83 c4 10             	add    $0x10,%esp
     404:	c9                   	leave  
     405:	c3                   	ret    
     406:	8d 76 00             	lea    0x0(%esi),%esi
     409:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    exit(1);
     410:	83 ec 0c             	sub    $0xc,%esp
     413:	6a 01                	push   $0x1
     415:	e8 48 3a 00 00       	call   3e62 <exit>
    printf(stdout, "mkdir oidir failed\n");
     41a:	50                   	push   %eax
     41b:	50                   	push   %eax
     41c:	68 ad 43 00 00       	push   $0x43ad
     421:	ff 35 b8 63 00 00    	pushl  0x63b8
     427:	e8 84 3b 00 00       	call   3fb0 <printf>
    exit(1);
     42c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     433:	e8 2a 3a 00 00       	call   3e62 <exit>
    printf(stdout, "fork failed\n");
     438:	50                   	push   %eax
     439:	50                   	push   %eax
     43a:	68 49 52 00 00       	push   $0x5249
     43f:	ff 35 b8 63 00 00    	pushl  0x63b8
     445:	e8 66 3b 00 00       	call   3fb0 <printf>
    exit(1);
     44a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     451:	e8 0c 3a 00 00       	call   3e62 <exit>
    printf(stdout, "unlink failed\n");
     456:	51                   	push   %ecx
     457:	51                   	push   %ecx
     458:	68 c1 43 00 00       	push   $0x43c1
     45d:	ff 35 b8 63 00 00    	pushl  0x63b8
     463:	e8 48 3b 00 00       	call   3fb0 <printf>
    exit(1);
     468:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     46f:	e8 ee 39 00 00       	call   3e62 <exit>
     474:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     47a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000480 <opentest>:
{
     480:	55                   	push   %ebp
     481:	89 e5                	mov    %esp,%ebp
     483:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "open test\n");
     486:	68 e2 43 00 00       	push   $0x43e2
     48b:	ff 35 b8 63 00 00    	pushl  0x63b8
     491:	e8 1a 3b 00 00       	call   3fb0 <printf>
  fd = open("echo", 0);
     496:	58                   	pop    %eax
     497:	5a                   	pop    %edx
     498:	6a 00                	push   $0x0
     49a:	68 ed 43 00 00       	push   $0x43ed
     49f:	e8 fe 39 00 00       	call   3ea2 <open>
  if(fd < 0){
     4a4:	83 c4 10             	add    $0x10,%esp
     4a7:	85 c0                	test   %eax,%eax
     4a9:	78 36                	js     4e1 <opentest+0x61>
  close(fd);
     4ab:	83 ec 0c             	sub    $0xc,%esp
     4ae:	50                   	push   %eax
     4af:	e8 d6 39 00 00       	call   3e8a <close>
  fd = open("doesnotexist", 0);
     4b4:	5a                   	pop    %edx
     4b5:	59                   	pop    %ecx
     4b6:	6a 00                	push   $0x0
     4b8:	68 05 44 00 00       	push   $0x4405
     4bd:	e8 e0 39 00 00       	call   3ea2 <open>
  if(fd >= 0){
     4c2:	83 c4 10             	add    $0x10,%esp
     4c5:	85 c0                	test   %eax,%eax
     4c7:	79 36                	jns    4ff <opentest+0x7f>
  printf(stdout, "open test ok\n");
     4c9:	83 ec 08             	sub    $0x8,%esp
     4cc:	68 30 44 00 00       	push   $0x4430
     4d1:	ff 35 b8 63 00 00    	pushl  0x63b8
     4d7:	e8 d4 3a 00 00       	call   3fb0 <printf>
}
     4dc:	83 c4 10             	add    $0x10,%esp
     4df:	c9                   	leave  
     4e0:	c3                   	ret    
    printf(stdout, "open echo failed!\n");
     4e1:	50                   	push   %eax
     4e2:	50                   	push   %eax
     4e3:	68 f2 43 00 00       	push   $0x43f2
     4e8:	ff 35 b8 63 00 00    	pushl  0x63b8
     4ee:	e8 bd 3a 00 00       	call   3fb0 <printf>
    exit(1);
     4f3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     4fa:	e8 63 39 00 00       	call   3e62 <exit>
    printf(stdout, "open doesnotexist succeeded!\n");
     4ff:	50                   	push   %eax
     500:	50                   	push   %eax
     501:	68 12 44 00 00       	push   $0x4412
     506:	ff 35 b8 63 00 00    	pushl  0x63b8
     50c:	e8 9f 3a 00 00       	call   3fb0 <printf>
    exit(0);
     511:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     518:	e8 45 39 00 00       	call   3e62 <exit>
     51d:	8d 76 00             	lea    0x0(%esi),%esi

00000520 <writetest>:
{
     520:	55                   	push   %ebp
     521:	89 e5                	mov    %esp,%ebp
     523:	56                   	push   %esi
     524:	53                   	push   %ebx
  printf(stdout, "small file test\n");
     525:	83 ec 08             	sub    $0x8,%esp
     528:	68 3e 44 00 00       	push   $0x443e
     52d:	ff 35 b8 63 00 00    	pushl  0x63b8
     533:	e8 78 3a 00 00       	call   3fb0 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     538:	58                   	pop    %eax
     539:	5a                   	pop    %edx
     53a:	68 02 02 00 00       	push   $0x202
     53f:	68 4f 44 00 00       	push   $0x444f
     544:	e8 59 39 00 00       	call   3ea2 <open>
  if(fd >= 0){
     549:	83 c4 10             	add    $0x10,%esp
     54c:	85 c0                	test   %eax,%eax
     54e:	0f 88 af 01 00 00    	js     703 <writetest+0x1e3>
    printf(stdout, "creat small succeeded; ok\n");
     554:	83 ec 08             	sub    $0x8,%esp
     557:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 100; i++){
     559:	31 db                	xor    %ebx,%ebx
    printf(stdout, "creat small succeeded; ok\n");
     55b:	68 55 44 00 00       	push   $0x4455
     560:	ff 35 b8 63 00 00    	pushl  0x63b8
     566:	e8 45 3a 00 00       	call   3fb0 <printf>
     56b:	83 c4 10             	add    $0x10,%esp
     56e:	66 90                	xchg   %ax,%ax
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     570:	83 ec 04             	sub    $0x4,%esp
     573:	6a 0a                	push   $0xa
     575:	68 8c 44 00 00       	push   $0x448c
     57a:	56                   	push   %esi
     57b:	e8 02 39 00 00       	call   3e82 <write>
     580:	83 c4 10             	add    $0x10,%esp
     583:	83 f8 0a             	cmp    $0xa,%eax
     586:	0f 85 dd 00 00 00    	jne    669 <writetest+0x149>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     58c:	83 ec 04             	sub    $0x4,%esp
     58f:	6a 0a                	push   $0xa
     591:	68 97 44 00 00       	push   $0x4497
     596:	56                   	push   %esi
     597:	e8 e6 38 00 00       	call   3e82 <write>
     59c:	83 c4 10             	add    $0x10,%esp
     59f:	83 f8 0a             	cmp    $0xa,%eax
     5a2:	0f 85 e1 00 00 00    	jne    689 <writetest+0x169>
  for(i = 0; i < 100; i++){
     5a8:	83 c3 01             	add    $0x1,%ebx
     5ab:	83 fb 64             	cmp    $0x64,%ebx
     5ae:	75 c0                	jne    570 <writetest+0x50>
  printf(stdout, "writes ok\n");
     5b0:	83 ec 08             	sub    $0x8,%esp
     5b3:	68 a2 44 00 00       	push   $0x44a2
     5b8:	ff 35 b8 63 00 00    	pushl  0x63b8
     5be:	e8 ed 39 00 00       	call   3fb0 <printf>
  close(fd);
     5c3:	89 34 24             	mov    %esi,(%esp)
     5c6:	e8 bf 38 00 00       	call   3e8a <close>
  fd = open("small", O_RDONLY);
     5cb:	5b                   	pop    %ebx
     5cc:	5e                   	pop    %esi
     5cd:	6a 00                	push   $0x0
     5cf:	68 4f 44 00 00       	push   $0x444f
     5d4:	e8 c9 38 00 00       	call   3ea2 <open>
  if(fd >= 0){
     5d9:	83 c4 10             	add    $0x10,%esp
     5dc:	85 c0                	test   %eax,%eax
  fd = open("small", O_RDONLY);
     5de:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
     5e0:	0f 88 c3 00 00 00    	js     6a9 <writetest+0x189>
    printf(stdout, "open small succeeded ok\n");
     5e6:	83 ec 08             	sub    $0x8,%esp
     5e9:	68 ad 44 00 00       	push   $0x44ad
     5ee:	ff 35 b8 63 00 00    	pushl  0x63b8
     5f4:	e8 b7 39 00 00       	call   3fb0 <printf>
  i = read(fd, buf, 2000);
     5f9:	83 c4 0c             	add    $0xc,%esp
     5fc:	68 d0 07 00 00       	push   $0x7d0
     601:	68 a0 8b 00 00       	push   $0x8ba0
     606:	53                   	push   %ebx
     607:	e8 6e 38 00 00       	call   3e7a <read>
  if(i == 2000){
     60c:	83 c4 10             	add    $0x10,%esp
     60f:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     614:	0f 85 ad 00 00 00    	jne    6c7 <writetest+0x1a7>
    printf(stdout, "read succeeded ok\n");
     61a:	83 ec 08             	sub    $0x8,%esp
     61d:	68 e1 44 00 00       	push   $0x44e1
     622:	ff 35 b8 63 00 00    	pushl  0x63b8
     628:	e8 83 39 00 00       	call   3fb0 <printf>
  close(fd);
     62d:	89 1c 24             	mov    %ebx,(%esp)
     630:	e8 55 38 00 00       	call   3e8a <close>
  if(unlink("small") < 0){
     635:	c7 04 24 4f 44 00 00 	movl   $0x444f,(%esp)
     63c:	e8 71 38 00 00       	call   3eb2 <unlink>
     641:	83 c4 10             	add    $0x10,%esp
     644:	85 c0                	test   %eax,%eax
     646:	0f 88 99 00 00 00    	js     6e5 <writetest+0x1c5>
  printf(stdout, "small file test ok\n");
     64c:	83 ec 08             	sub    $0x8,%esp
     64f:	68 09 45 00 00       	push   $0x4509
     654:	ff 35 b8 63 00 00    	pushl  0x63b8
     65a:	e8 51 39 00 00       	call   3fb0 <printf>
}
     65f:	83 c4 10             	add    $0x10,%esp
     662:	8d 65 f8             	lea    -0x8(%ebp),%esp
     665:	5b                   	pop    %ebx
     666:	5e                   	pop    %esi
     667:	5d                   	pop    %ebp
     668:	c3                   	ret    
      printf(stdout, "error: write aa %d new file failed\n", i);
     669:	83 ec 04             	sub    $0x4,%esp
     66c:	53                   	push   %ebx
     66d:	68 50 53 00 00       	push   $0x5350
     672:	ff 35 b8 63 00 00    	pushl  0x63b8
     678:	e8 33 39 00 00       	call   3fb0 <printf>
      exit(1);
     67d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     684:	e8 d9 37 00 00       	call   3e62 <exit>
      printf(stdout, "error: write bb %d new file failed\n", i);
     689:	83 ec 04             	sub    $0x4,%esp
     68c:	53                   	push   %ebx
     68d:	68 74 53 00 00       	push   $0x5374
     692:	ff 35 b8 63 00 00    	pushl  0x63b8
     698:	e8 13 39 00 00       	call   3fb0 <printf>
      exit(1);
     69d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     6a4:	e8 b9 37 00 00       	call   3e62 <exit>
    printf(stdout, "error: open small failed!\n");
     6a9:	51                   	push   %ecx
     6aa:	51                   	push   %ecx
     6ab:	68 c6 44 00 00       	push   $0x44c6
     6b0:	ff 35 b8 63 00 00    	pushl  0x63b8
     6b6:	e8 f5 38 00 00       	call   3fb0 <printf>
    exit(1);
     6bb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     6c2:	e8 9b 37 00 00       	call   3e62 <exit>
    printf(stdout, "read failed\n");
     6c7:	52                   	push   %edx
     6c8:	52                   	push   %edx
     6c9:	68 0d 48 00 00       	push   $0x480d
     6ce:	ff 35 b8 63 00 00    	pushl  0x63b8
     6d4:	e8 d7 38 00 00       	call   3fb0 <printf>
    exit(1);
     6d9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     6e0:	e8 7d 37 00 00       	call   3e62 <exit>
    printf(stdout, "unlink small failed\n");
     6e5:	50                   	push   %eax
     6e6:	50                   	push   %eax
     6e7:	68 f4 44 00 00       	push   $0x44f4
     6ec:	ff 35 b8 63 00 00    	pushl  0x63b8
     6f2:	e8 b9 38 00 00       	call   3fb0 <printf>
    exit(1);
     6f7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     6fe:	e8 5f 37 00 00       	call   3e62 <exit>
    printf(stdout, "error: creat small failed!\n");
     703:	50                   	push   %eax
     704:	50                   	push   %eax
     705:	68 70 44 00 00       	push   $0x4470
     70a:	ff 35 b8 63 00 00    	pushl  0x63b8
     710:	e8 9b 38 00 00       	call   3fb0 <printf>
    exit(1);
     715:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     71c:	e8 41 37 00 00       	call   3e62 <exit>
     721:	eb 0d                	jmp    730 <writetest1>
     723:	90                   	nop
     724:	90                   	nop
     725:	90                   	nop
     726:	90                   	nop
     727:	90                   	nop
     728:	90                   	nop
     729:	90                   	nop
     72a:	90                   	nop
     72b:	90                   	nop
     72c:	90                   	nop
     72d:	90                   	nop
     72e:	90                   	nop
     72f:	90                   	nop

00000730 <writetest1>:
{
     730:	55                   	push   %ebp
     731:	89 e5                	mov    %esp,%ebp
     733:	56                   	push   %esi
     734:	53                   	push   %ebx
  printf(stdout, "big files test\n");
     735:	83 ec 08             	sub    $0x8,%esp
     738:	68 1d 45 00 00       	push   $0x451d
     73d:	ff 35 b8 63 00 00    	pushl  0x63b8
     743:	e8 68 38 00 00       	call   3fb0 <printf>
  fd = open("big", O_CREATE|O_RDWR);
     748:	58                   	pop    %eax
     749:	5a                   	pop    %edx
     74a:	68 02 02 00 00       	push   $0x202
     74f:	68 97 45 00 00       	push   $0x4597
     754:	e8 49 37 00 00       	call   3ea2 <open>
  if(fd < 0){
     759:	83 c4 10             	add    $0x10,%esp
     75c:	85 c0                	test   %eax,%eax
     75e:	0f 88 88 01 00 00    	js     8ec <writetest1+0x1bc>
     764:	89 c6                	mov    %eax,%esi
  for(i = 0; i < MAXFILE; i++){
     766:	31 db                	xor    %ebx,%ebx
     768:	90                   	nop
     769:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(write(fd, buf, 512) != 512){
     770:	83 ec 04             	sub    $0x4,%esp
    ((int*)buf)[0] = i;
     773:	89 1d a0 8b 00 00    	mov    %ebx,0x8ba0
    if(write(fd, buf, 512) != 512){
     779:	68 00 02 00 00       	push   $0x200
     77e:	68 a0 8b 00 00       	push   $0x8ba0
     783:	56                   	push   %esi
     784:	e8 f9 36 00 00       	call   3e82 <write>
     789:	83 c4 10             	add    $0x10,%esp
     78c:	3d 00 02 00 00       	cmp    $0x200,%eax
     791:	0f 85 b7 00 00 00    	jne    84e <writetest1+0x11e>
  for(i = 0; i < MAXFILE; i++){
     797:	83 c3 01             	add    $0x1,%ebx
     79a:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     7a0:	75 ce                	jne    770 <writetest1+0x40>
  close(fd);
     7a2:	83 ec 0c             	sub    $0xc,%esp
     7a5:	56                   	push   %esi
     7a6:	e8 df 36 00 00       	call   3e8a <close>
  fd = open("big", O_RDONLY);
     7ab:	5b                   	pop    %ebx
     7ac:	5e                   	pop    %esi
     7ad:	6a 00                	push   $0x0
     7af:	68 97 45 00 00       	push   $0x4597
     7b4:	e8 e9 36 00 00       	call   3ea2 <open>
  if(fd < 0){
     7b9:	83 c4 10             	add    $0x10,%esp
     7bc:	85 c0                	test   %eax,%eax
  fd = open("big", O_RDONLY);
     7be:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     7c0:	0f 88 08 01 00 00    	js     8ce <writetest1+0x19e>
  n = 0;
     7c6:	31 db                	xor    %ebx,%ebx
     7c8:	eb 21                	jmp    7eb <writetest1+0xbb>
     7ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(i != 512){
     7d0:	3d 00 02 00 00       	cmp    $0x200,%eax
     7d5:	0f 85 b1 00 00 00    	jne    88c <writetest1+0x15c>
    if(((int*)buf)[0] != n){
     7db:	a1 a0 8b 00 00       	mov    0x8ba0,%eax
     7e0:	39 d8                	cmp    %ebx,%eax
     7e2:	0f 85 86 00 00 00    	jne    86e <writetest1+0x13e>
    n++;
     7e8:	83 c3 01             	add    $0x1,%ebx
    i = read(fd, buf, 512);
     7eb:	83 ec 04             	sub    $0x4,%esp
     7ee:	68 00 02 00 00       	push   $0x200
     7f3:	68 a0 8b 00 00       	push   $0x8ba0
     7f8:	56                   	push   %esi
     7f9:	e8 7c 36 00 00       	call   3e7a <read>
    if(i == 0){
     7fe:	83 c4 10             	add    $0x10,%esp
     801:	85 c0                	test   %eax,%eax
     803:	75 cb                	jne    7d0 <writetest1+0xa0>
      if(n == MAXFILE - 1){
     805:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     80b:	0f 84 9b 00 00 00    	je     8ac <writetest1+0x17c>
  close(fd);
     811:	83 ec 0c             	sub    $0xc,%esp
     814:	56                   	push   %esi
     815:	e8 70 36 00 00       	call   3e8a <close>
  if(unlink("big") < 0){
     81a:	c7 04 24 97 45 00 00 	movl   $0x4597,(%esp)
     821:	e8 8c 36 00 00       	call   3eb2 <unlink>
     826:	83 c4 10             	add    $0x10,%esp
     829:	85 c0                	test   %eax,%eax
     82b:	0f 88 d9 00 00 00    	js     90a <writetest1+0x1da>
  printf(stdout, "big files ok\n");
     831:	83 ec 08             	sub    $0x8,%esp
     834:	68 be 45 00 00       	push   $0x45be
     839:	ff 35 b8 63 00 00    	pushl  0x63b8
     83f:	e8 6c 37 00 00       	call   3fb0 <printf>
}
     844:	83 c4 10             	add    $0x10,%esp
     847:	8d 65 f8             	lea    -0x8(%ebp),%esp
     84a:	5b                   	pop    %ebx
     84b:	5e                   	pop    %esi
     84c:	5d                   	pop    %ebp
     84d:	c3                   	ret    
      printf(stdout, "error: write big file failed\n", i);
     84e:	83 ec 04             	sub    $0x4,%esp
     851:	53                   	push   %ebx
     852:	68 47 45 00 00       	push   $0x4547
     857:	ff 35 b8 63 00 00    	pushl  0x63b8
     85d:	e8 4e 37 00 00       	call   3fb0 <printf>
      exit(1);
     862:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     869:	e8 f4 35 00 00       	call   3e62 <exit>
      printf(stdout, "read content of block %d is %d\n",
     86e:	50                   	push   %eax
     86f:	53                   	push   %ebx
     870:	68 98 53 00 00       	push   $0x5398
     875:	ff 35 b8 63 00 00    	pushl  0x63b8
     87b:	e8 30 37 00 00       	call   3fb0 <printf>
      exit(1);
     880:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     887:	e8 d6 35 00 00       	call   3e62 <exit>
      printf(stdout, "read failed %d\n", i);
     88c:	83 ec 04             	sub    $0x4,%esp
     88f:	50                   	push   %eax
     890:	68 9b 45 00 00       	push   $0x459b
     895:	ff 35 b8 63 00 00    	pushl  0x63b8
     89b:	e8 10 37 00 00       	call   3fb0 <printf>
      exit(1);
     8a0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     8a7:	e8 b6 35 00 00       	call   3e62 <exit>
        printf(stdout, "read only %d blocks from big", n);
     8ac:	52                   	push   %edx
     8ad:	68 8b 00 00 00       	push   $0x8b
     8b2:	68 7e 45 00 00       	push   $0x457e
     8b7:	ff 35 b8 63 00 00    	pushl  0x63b8
     8bd:	e8 ee 36 00 00       	call   3fb0 <printf>
        exit(1);
     8c2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     8c9:	e8 94 35 00 00       	call   3e62 <exit>
    printf(stdout, "error: open big failed!\n");
     8ce:	51                   	push   %ecx
     8cf:	51                   	push   %ecx
     8d0:	68 65 45 00 00       	push   $0x4565
     8d5:	ff 35 b8 63 00 00    	pushl  0x63b8
     8db:	e8 d0 36 00 00       	call   3fb0 <printf>
    exit(1);
     8e0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     8e7:	e8 76 35 00 00       	call   3e62 <exit>
    printf(stdout, "error: creat big failed!\n");
     8ec:	50                   	push   %eax
     8ed:	50                   	push   %eax
     8ee:	68 2d 45 00 00       	push   $0x452d
     8f3:	ff 35 b8 63 00 00    	pushl  0x63b8
     8f9:	e8 b2 36 00 00       	call   3fb0 <printf>
    exit(1);
     8fe:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     905:	e8 58 35 00 00       	call   3e62 <exit>
    printf(stdout, "unlink big failed\n");
     90a:	50                   	push   %eax
     90b:	50                   	push   %eax
     90c:	68 ab 45 00 00       	push   $0x45ab
     911:	ff 35 b8 63 00 00    	pushl  0x63b8
     917:	e8 94 36 00 00       	call   3fb0 <printf>
    exit(1);
     91c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     923:	e8 3a 35 00 00       	call   3e62 <exit>
     928:	90                   	nop
     929:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000930 <createtest>:
{
     930:	55                   	push   %ebp
     931:	89 e5                	mov    %esp,%ebp
     933:	53                   	push   %ebx
  name[2] = '\0';
     934:	bb 30 00 00 00       	mov    $0x30,%ebx
{
     939:	83 ec 0c             	sub    $0xc,%esp
  printf(stdout, "many creates, followed by unlink test\n");
     93c:	68 b8 53 00 00       	push   $0x53b8
     941:	ff 35 b8 63 00 00    	pushl  0x63b8
     947:	e8 64 36 00 00       	call   3fb0 <printf>
  name[0] = 'a';
     94c:	c6 05 a0 ab 00 00 61 	movb   $0x61,0xaba0
  name[2] = '\0';
     953:	c6 05 a2 ab 00 00 00 	movb   $0x0,0xaba2
     95a:	83 c4 10             	add    $0x10,%esp
     95d:	8d 76 00             	lea    0x0(%esi),%esi
    fd = open(name, O_CREATE|O_RDWR);
     960:	83 ec 08             	sub    $0x8,%esp
    name[1] = '0' + i;
     963:	88 1d a1 ab 00 00    	mov    %bl,0xaba1
     969:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     96c:	68 02 02 00 00       	push   $0x202
     971:	68 a0 ab 00 00       	push   $0xaba0
     976:	e8 27 35 00 00       	call   3ea2 <open>
    close(fd);
     97b:	89 04 24             	mov    %eax,(%esp)
     97e:	e8 07 35 00 00       	call   3e8a <close>
  for(i = 0; i < 52; i++){
     983:	83 c4 10             	add    $0x10,%esp
     986:	80 fb 64             	cmp    $0x64,%bl
     989:	75 d5                	jne    960 <createtest+0x30>
  name[0] = 'a';
     98b:	c6 05 a0 ab 00 00 61 	movb   $0x61,0xaba0
  name[2] = '\0';
     992:	c6 05 a2 ab 00 00 00 	movb   $0x0,0xaba2
     999:	bb 30 00 00 00       	mov    $0x30,%ebx
     99e:	66 90                	xchg   %ax,%ax
    unlink(name);
     9a0:	83 ec 0c             	sub    $0xc,%esp
    name[1] = '0' + i;
     9a3:	88 1d a1 ab 00 00    	mov    %bl,0xaba1
     9a9:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     9ac:	68 a0 ab 00 00       	push   $0xaba0
     9b1:	e8 fc 34 00 00       	call   3eb2 <unlink>
  for(i = 0; i < 52; i++){
     9b6:	83 c4 10             	add    $0x10,%esp
     9b9:	80 fb 64             	cmp    $0x64,%bl
     9bc:	75 e2                	jne    9a0 <createtest+0x70>
  printf(stdout, "many creates, followed by unlink; ok\n");
     9be:	83 ec 08             	sub    $0x8,%esp
     9c1:	68 e0 53 00 00       	push   $0x53e0
     9c6:	ff 35 b8 63 00 00    	pushl  0x63b8
     9cc:	e8 df 35 00 00       	call   3fb0 <printf>
}
     9d1:	83 c4 10             	add    $0x10,%esp
     9d4:	8b 5d fc             	mov    -0x4(%ebp),%ebx
     9d7:	c9                   	leave  
     9d8:	c3                   	ret    
     9d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000009e0 <dirtest>:
{
     9e0:	55                   	push   %ebp
     9e1:	89 e5                	mov    %esp,%ebp
     9e3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "mkdir test\n");
     9e6:	68 cc 45 00 00       	push   $0x45cc
     9eb:	ff 35 b8 63 00 00    	pushl  0x63b8
     9f1:	e8 ba 35 00 00       	call   3fb0 <printf>
  if(mkdir("dir0") < 0){
     9f6:	c7 04 24 d8 45 00 00 	movl   $0x45d8,(%esp)
     9fd:	e8 c8 34 00 00       	call   3eca <mkdir>
     a02:	83 c4 10             	add    $0x10,%esp
     a05:	85 c0                	test   %eax,%eax
     a07:	78 58                	js     a61 <dirtest+0x81>
  if(chdir("dir0") < 0){
     a09:	83 ec 0c             	sub    $0xc,%esp
     a0c:	68 d8 45 00 00       	push   $0x45d8
     a11:	e8 bc 34 00 00       	call   3ed2 <chdir>
     a16:	83 c4 10             	add    $0x10,%esp
     a19:	85 c0                	test   %eax,%eax
     a1b:	0f 88 9a 00 00 00    	js     abb <dirtest+0xdb>
  if(chdir("..") < 0){
     a21:	83 ec 0c             	sub    $0xc,%esp
     a24:	68 7d 4b 00 00       	push   $0x4b7d
     a29:	e8 a4 34 00 00       	call   3ed2 <chdir>
     a2e:	83 c4 10             	add    $0x10,%esp
     a31:	85 c0                	test   %eax,%eax
     a33:	78 68                	js     a9d <dirtest+0xbd>
  if(unlink("dir0") < 0){
     a35:	83 ec 0c             	sub    $0xc,%esp
     a38:	68 d8 45 00 00       	push   $0x45d8
     a3d:	e8 70 34 00 00       	call   3eb2 <unlink>
     a42:	83 c4 10             	add    $0x10,%esp
     a45:	85 c0                	test   %eax,%eax
     a47:	78 36                	js     a7f <dirtest+0x9f>
  printf(stdout, "mkdir test ok\n");
     a49:	83 ec 08             	sub    $0x8,%esp
     a4c:	68 15 46 00 00       	push   $0x4615
     a51:	ff 35 b8 63 00 00    	pushl  0x63b8
     a57:	e8 54 35 00 00       	call   3fb0 <printf>
}
     a5c:	83 c4 10             	add    $0x10,%esp
     a5f:	c9                   	leave  
     a60:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     a61:	50                   	push   %eax
     a62:	50                   	push   %eax
     a63:	68 08 43 00 00       	push   $0x4308
     a68:	ff 35 b8 63 00 00    	pushl  0x63b8
     a6e:	e8 3d 35 00 00       	call   3fb0 <printf>
    exit(1);
     a73:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     a7a:	e8 e3 33 00 00       	call   3e62 <exit>
    printf(stdout, "unlink dir0 failed\n");
     a7f:	50                   	push   %eax
     a80:	50                   	push   %eax
     a81:	68 01 46 00 00       	push   $0x4601
     a86:	ff 35 b8 63 00 00    	pushl  0x63b8
     a8c:	e8 1f 35 00 00       	call   3fb0 <printf>
    exit(1);
     a91:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     a98:	e8 c5 33 00 00       	call   3e62 <exit>
    printf(stdout, "chdir .. failed\n");
     a9d:	52                   	push   %edx
     a9e:	52                   	push   %edx
     a9f:	68 f0 45 00 00       	push   $0x45f0
     aa4:	ff 35 b8 63 00 00    	pushl  0x63b8
     aaa:	e8 01 35 00 00       	call   3fb0 <printf>
    exit(1);
     aaf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ab6:	e8 a7 33 00 00       	call   3e62 <exit>
    printf(stdout, "chdir dir0 failed\n");
     abb:	51                   	push   %ecx
     abc:	51                   	push   %ecx
     abd:	68 dd 45 00 00       	push   $0x45dd
     ac2:	ff 35 b8 63 00 00    	pushl  0x63b8
     ac8:	e8 e3 34 00 00       	call   3fb0 <printf>
    exit(1);
     acd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ad4:	e8 89 33 00 00       	call   3e62 <exit>
     ad9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000ae0 <exectest>:
{
     ae0:	55                   	push   %ebp
     ae1:	89 e5                	mov    %esp,%ebp
     ae3:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exec test\n");
     ae6:	68 24 46 00 00       	push   $0x4624
     aeb:	ff 35 b8 63 00 00    	pushl  0x63b8
     af1:	e8 ba 34 00 00       	call   3fb0 <printf>
  if(exec("echo", echoargv) < 0){
     af6:	5a                   	pop    %edx
     af7:	59                   	pop    %ecx
     af8:	68 bc 63 00 00       	push   $0x63bc
     afd:	68 ed 43 00 00       	push   $0x43ed
     b02:	e8 93 33 00 00       	call   3e9a <exec>
     b07:	83 c4 10             	add    $0x10,%esp
     b0a:	85 c0                	test   %eax,%eax
     b0c:	78 02                	js     b10 <exectest+0x30>
}
     b0e:	c9                   	leave  
     b0f:	c3                   	ret    
    printf(stdout, "exec echo failed\n");
     b10:	50                   	push   %eax
     b11:	50                   	push   %eax
     b12:	68 2f 46 00 00       	push   $0x462f
     b17:	ff 35 b8 63 00 00    	pushl  0x63b8
     b1d:	e8 8e 34 00 00       	call   3fb0 <printf>
    exit(1);
     b22:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b29:	e8 34 33 00 00       	call   3e62 <exit>
     b2e:	66 90                	xchg   %ax,%ax

00000b30 <pipe1>:
{
     b30:	55                   	push   %ebp
     b31:	89 e5                	mov    %esp,%ebp
     b33:	57                   	push   %edi
     b34:	56                   	push   %esi
     b35:	53                   	push   %ebx
  if(pipe(fds) != 0){
     b36:	8d 45 e0             	lea    -0x20(%ebp),%eax
{
     b39:	83 ec 38             	sub    $0x38,%esp
  if(pipe(fds) != 0){
     b3c:	50                   	push   %eax
     b3d:	e8 30 33 00 00       	call   3e72 <pipe>
     b42:	83 c4 10             	add    $0x10,%esp
     b45:	85 c0                	test   %eax,%eax
     b47:	0f 85 51 01 00 00    	jne    c9e <pipe1+0x16e>
     b4d:	89 c3                	mov    %eax,%ebx
  pid = fork();
     b4f:	e8 06 33 00 00       	call   3e5a <fork>
  if(pid == 0){
     b54:	83 f8 00             	cmp    $0x0,%eax
     b57:	0f 84 84 00 00 00    	je     be1 <pipe1+0xb1>
  } else if(pid > 0){
     b5d:	0f 8e 55 01 00 00    	jle    cb8 <pipe1+0x188>
    close(fds[1]);
     b63:	83 ec 0c             	sub    $0xc,%esp
     b66:	ff 75 e4             	pushl  -0x1c(%ebp)
    cc = 1;
     b69:	bf 01 00 00 00       	mov    $0x1,%edi
    close(fds[1]);
     b6e:	e8 17 33 00 00       	call   3e8a <close>
    while((n = read(fds[0], buf, cc)) > 0){
     b73:	83 c4 10             	add    $0x10,%esp
    total = 0;
     b76:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    while((n = read(fds[0], buf, cc)) > 0){
     b7d:	83 ec 04             	sub    $0x4,%esp
     b80:	57                   	push   %edi
     b81:	68 a0 8b 00 00       	push   $0x8ba0
     b86:	ff 75 e0             	pushl  -0x20(%ebp)
     b89:	e8 ec 32 00 00       	call   3e7a <read>
     b8e:	83 c4 10             	add    $0x10,%esp
     b91:	85 c0                	test   %eax,%eax
     b93:	0f 8e b0 00 00 00    	jle    c49 <pipe1+0x119>
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     b99:	89 d9                	mov    %ebx,%ecx
     b9b:	8d 34 18             	lea    (%eax,%ebx,1),%esi
     b9e:	f7 d9                	neg    %ecx
     ba0:	38 9c 0b a0 8b 00 00 	cmp    %bl,0x8ba0(%ebx,%ecx,1)
     ba7:	8d 53 01             	lea    0x1(%ebx),%edx
     baa:	75 1b                	jne    bc7 <pipe1+0x97>
      for(i = 0; i < n; i++){
     bac:	39 f2                	cmp    %esi,%edx
     bae:	89 d3                	mov    %edx,%ebx
     bb0:	75 ee                	jne    ba0 <pipe1+0x70>
      cc = cc * 2;
     bb2:	01 ff                	add    %edi,%edi
      total += n;
     bb4:	01 45 d4             	add    %eax,-0x2c(%ebp)
     bb7:	b8 00 20 00 00       	mov    $0x2000,%eax
     bbc:	81 ff 00 20 00 00    	cmp    $0x2000,%edi
     bc2:	0f 4f f8             	cmovg  %eax,%edi
     bc5:	eb b6                	jmp    b7d <pipe1+0x4d>
          printf(1, "pipe1 oops 2\n");
     bc7:	83 ec 08             	sub    $0x8,%esp
     bca:	68 5e 46 00 00       	push   $0x465e
     bcf:	6a 01                	push   $0x1
     bd1:	e8 da 33 00 00       	call   3fb0 <printf>
          return;
     bd6:	83 c4 10             	add    $0x10,%esp
}
     bd9:	8d 65 f4             	lea    -0xc(%ebp),%esp
     bdc:	5b                   	pop    %ebx
     bdd:	5e                   	pop    %esi
     bde:	5f                   	pop    %edi
     bdf:	5d                   	pop    %ebp
     be0:	c3                   	ret    
    close(fds[0]);
     be1:	83 ec 0c             	sub    $0xc,%esp
     be4:	ff 75 e0             	pushl  -0x20(%ebp)
     be7:	31 db                	xor    %ebx,%ebx
     be9:	be 09 04 00 00       	mov    $0x409,%esi
     bee:	e8 97 32 00 00       	call   3e8a <close>
     bf3:	83 c4 10             	add    $0x10,%esp
     bf6:	89 d8                	mov    %ebx,%eax
     bf8:	89 f2                	mov    %esi,%edx
     bfa:	f7 d8                	neg    %eax
     bfc:	29 da                	sub    %ebx,%edx
     bfe:	66 90                	xchg   %ax,%ax
        buf[i] = seq++;
     c00:	88 84 03 a0 8b 00 00 	mov    %al,0x8ba0(%ebx,%eax,1)
     c07:	83 c0 01             	add    $0x1,%eax
      for(i = 0; i < 1033; i++)
     c0a:	39 d0                	cmp    %edx,%eax
     c0c:	75 f2                	jne    c00 <pipe1+0xd0>
      if(write(fds[1], buf, 1033) != 1033){
     c0e:	83 ec 04             	sub    $0x4,%esp
     c11:	68 09 04 00 00       	push   $0x409
     c16:	68 a0 8b 00 00       	push   $0x8ba0
     c1b:	ff 75 e4             	pushl  -0x1c(%ebp)
     c1e:	e8 5f 32 00 00       	call   3e82 <write>
     c23:	83 c4 10             	add    $0x10,%esp
     c26:	3d 09 04 00 00       	cmp    $0x409,%eax
     c2b:	0f 85 a1 00 00 00    	jne    cd2 <pipe1+0x1a2>
     c31:	81 eb 09 04 00 00    	sub    $0x409,%ebx
    for(n = 0; n < 5; n++){
     c37:	81 fb d3 eb ff ff    	cmp    $0xffffebd3,%ebx
     c3d:	75 b7                	jne    bf6 <pipe1+0xc6>
    exit(1);
     c3f:	83 ec 0c             	sub    $0xc,%esp
     c42:	6a 01                	push   $0x1
     c44:	e8 19 32 00 00       	call   3e62 <exit>
    if(total != 5 * 1033){
     c49:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
     c50:	75 30                	jne    c82 <pipe1+0x152>
    close(fds[0]);
     c52:	83 ec 0c             	sub    $0xc,%esp
     c55:	ff 75 e0             	pushl  -0x20(%ebp)
     c58:	e8 2d 32 00 00       	call   3e8a <close>
    wait(null);
     c5d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     c64:	e8 01 32 00 00       	call   3e6a <wait>
  printf(1, "pipe1 ok\n");
     c69:	5a                   	pop    %edx
     c6a:	59                   	pop    %ecx
     c6b:	68 83 46 00 00       	push   $0x4683
     c70:	6a 01                	push   $0x1
     c72:	e8 39 33 00 00       	call   3fb0 <printf>
     c77:	83 c4 10             	add    $0x10,%esp
}
     c7a:	8d 65 f4             	lea    -0xc(%ebp),%esp
     c7d:	5b                   	pop    %ebx
     c7e:	5e                   	pop    %esi
     c7f:	5f                   	pop    %edi
     c80:	5d                   	pop    %ebp
     c81:	c3                   	ret    
      printf(1, "pipe1 oops 3 total %d\n", total);
     c82:	53                   	push   %ebx
     c83:	ff 75 d4             	pushl  -0x2c(%ebp)
     c86:	68 6c 46 00 00       	push   $0x466c
     c8b:	6a 01                	push   $0x1
     c8d:	e8 1e 33 00 00       	call   3fb0 <printf>
      exit(1);
     c92:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     c99:	e8 c4 31 00 00       	call   3e62 <exit>
    printf(1, "pipe() failed\n");
     c9e:	57                   	push   %edi
     c9f:	57                   	push   %edi
     ca0:	68 41 46 00 00       	push   $0x4641
     ca5:	6a 01                	push   $0x1
     ca7:	e8 04 33 00 00       	call   3fb0 <printf>
    exit(1);
     cac:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     cb3:	e8 aa 31 00 00       	call   3e62 <exit>
    printf(1, "fork() failed\n");
     cb8:	50                   	push   %eax
     cb9:	50                   	push   %eax
     cba:	68 8d 46 00 00       	push   $0x468d
     cbf:	6a 01                	push   $0x1
     cc1:	e8 ea 32 00 00       	call   3fb0 <printf>
    exit(1);
     cc6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ccd:	e8 90 31 00 00       	call   3e62 <exit>
        printf(1, "pipe1 oops 1\n");
     cd2:	56                   	push   %esi
     cd3:	56                   	push   %esi
     cd4:	68 50 46 00 00       	push   $0x4650
     cd9:	6a 01                	push   $0x1
     cdb:	e8 d0 32 00 00       	call   3fb0 <printf>
        exit(1);
     ce0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ce7:	e8 76 31 00 00       	call   3e62 <exit>
     cec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000cf0 <preempt>:
{
     cf0:	55                   	push   %ebp
     cf1:	89 e5                	mov    %esp,%ebp
     cf3:	57                   	push   %edi
     cf4:	56                   	push   %esi
     cf5:	53                   	push   %ebx
     cf6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "preempt: ");
     cf9:	68 9c 46 00 00       	push   $0x469c
     cfe:	6a 01                	push   $0x1
     d00:	e8 ab 32 00 00       	call   3fb0 <printf>
  pid1 = fork();
     d05:	e8 50 31 00 00       	call   3e5a <fork>
  if(pid1 == 0)
     d0a:	83 c4 10             	add    $0x10,%esp
     d0d:	85 c0                	test   %eax,%eax
     d0f:	75 02                	jne    d13 <preempt+0x23>
     d11:	eb fe                	jmp    d11 <preempt+0x21>
     d13:	89 c7                	mov    %eax,%edi
  pid2 = fork();
     d15:	e8 40 31 00 00       	call   3e5a <fork>
  if(pid2 == 0)
     d1a:	85 c0                	test   %eax,%eax
  pid2 = fork();
     d1c:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     d1e:	75 02                	jne    d22 <preempt+0x32>
     d20:	eb fe                	jmp    d20 <preempt+0x30>
  pipe(pfds);
     d22:	8d 45 e0             	lea    -0x20(%ebp),%eax
     d25:	83 ec 0c             	sub    $0xc,%esp
     d28:	50                   	push   %eax
     d29:	e8 44 31 00 00       	call   3e72 <pipe>
  pid3 = fork();
     d2e:	e8 27 31 00 00       	call   3e5a <fork>
  if(pid3 == 0){
     d33:	83 c4 10             	add    $0x10,%esp
     d36:	85 c0                	test   %eax,%eax
  pid3 = fork();
     d38:	89 c3                	mov    %eax,%ebx
  if(pid3 == 0){
     d3a:	75 46                	jne    d82 <preempt+0x92>
    close(pfds[0]);
     d3c:	83 ec 0c             	sub    $0xc,%esp
     d3f:	ff 75 e0             	pushl  -0x20(%ebp)
     d42:	e8 43 31 00 00       	call   3e8a <close>
    if(write(pfds[1], "x", 1) != 1)
     d47:	83 c4 0c             	add    $0xc,%esp
     d4a:	6a 01                	push   $0x1
     d4c:	68 61 4c 00 00       	push   $0x4c61
     d51:	ff 75 e4             	pushl  -0x1c(%ebp)
     d54:	e8 29 31 00 00       	call   3e82 <write>
     d59:	83 c4 10             	add    $0x10,%esp
     d5c:	83 e8 01             	sub    $0x1,%eax
     d5f:	74 11                	je     d72 <preempt+0x82>
      printf(1, "preempt write error");
     d61:	50                   	push   %eax
     d62:	50                   	push   %eax
     d63:	68 a6 46 00 00       	push   $0x46a6
     d68:	6a 01                	push   $0x1
     d6a:	e8 41 32 00 00       	call   3fb0 <printf>
     d6f:	83 c4 10             	add    $0x10,%esp
    close(pfds[1]);
     d72:	83 ec 0c             	sub    $0xc,%esp
     d75:	ff 75 e4             	pushl  -0x1c(%ebp)
     d78:	e8 0d 31 00 00       	call   3e8a <close>
     d7d:	83 c4 10             	add    $0x10,%esp
     d80:	eb fe                	jmp    d80 <preempt+0x90>
  close(pfds[1]);
     d82:	83 ec 0c             	sub    $0xc,%esp
     d85:	ff 75 e4             	pushl  -0x1c(%ebp)
     d88:	e8 fd 30 00 00       	call   3e8a <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     d8d:	83 c4 0c             	add    $0xc,%esp
     d90:	68 00 20 00 00       	push   $0x2000
     d95:	68 a0 8b 00 00       	push   $0x8ba0
     d9a:	ff 75 e0             	pushl  -0x20(%ebp)
     d9d:	e8 d8 30 00 00       	call   3e7a <read>
     da2:	83 c4 10             	add    $0x10,%esp
     da5:	83 e8 01             	sub    $0x1,%eax
     da8:	74 19                	je     dc3 <preempt+0xd3>
    printf(1, "preempt read error");
     daa:	50                   	push   %eax
     dab:	50                   	push   %eax
     dac:	68 ba 46 00 00       	push   $0x46ba
     db1:	6a 01                	push   $0x1
     db3:	e8 f8 31 00 00       	call   3fb0 <printf>
    return;
     db8:	83 c4 10             	add    $0x10,%esp
}
     dbb:	8d 65 f4             	lea    -0xc(%ebp),%esp
     dbe:	5b                   	pop    %ebx
     dbf:	5e                   	pop    %esi
     dc0:	5f                   	pop    %edi
     dc1:	5d                   	pop    %ebp
     dc2:	c3                   	ret    
  close(pfds[0]);
     dc3:	83 ec 0c             	sub    $0xc,%esp
     dc6:	ff 75 e0             	pushl  -0x20(%ebp)
     dc9:	e8 bc 30 00 00       	call   3e8a <close>
  printf(1, "kill... ");
     dce:	58                   	pop    %eax
     dcf:	5a                   	pop    %edx
     dd0:	68 cd 46 00 00       	push   $0x46cd
     dd5:	6a 01                	push   $0x1
     dd7:	e8 d4 31 00 00       	call   3fb0 <printf>
  kill(pid1);
     ddc:	89 3c 24             	mov    %edi,(%esp)
     ddf:	e8 ae 30 00 00       	call   3e92 <kill>
  kill(pid2);
     de4:	89 34 24             	mov    %esi,(%esp)
     de7:	e8 a6 30 00 00       	call   3e92 <kill>
  kill(pid3);
     dec:	89 1c 24             	mov    %ebx,(%esp)
     def:	e8 9e 30 00 00       	call   3e92 <kill>
  printf(1, "wait... ");
     df4:	59                   	pop    %ecx
     df5:	5b                   	pop    %ebx
     df6:	68 d6 46 00 00       	push   $0x46d6
     dfb:	6a 01                	push   $0x1
     dfd:	e8 ae 31 00 00       	call   3fb0 <printf>
  wait(null);
     e02:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e09:	e8 5c 30 00 00       	call   3e6a <wait>
  wait(null);
     e0e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e15:	e8 50 30 00 00       	call   3e6a <wait>
  wait(null);
     e1a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     e21:	e8 44 30 00 00       	call   3e6a <wait>
  printf(1, "preempt ok\n");
     e26:	5e                   	pop    %esi
     e27:	5f                   	pop    %edi
     e28:	68 df 46 00 00       	push   $0x46df
     e2d:	6a 01                	push   $0x1
     e2f:	e8 7c 31 00 00       	call   3fb0 <printf>
     e34:	83 c4 10             	add    $0x10,%esp
     e37:	eb 82                	jmp    dbb <preempt+0xcb>
     e39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000e40 <exitwait>:
{
     e40:	55                   	push   %ebp
     e41:	89 e5                	mov    %esp,%ebp
     e43:	56                   	push   %esi
     e44:	be 64 00 00 00       	mov    $0x64,%esi
     e49:	53                   	push   %ebx
     e4a:	eb 1c                	jmp    e68 <exitwait+0x28>
     e4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid){
     e50:	74 77                	je     ec9 <exitwait+0x89>
      if(wait(null) != pid){
     e52:	83 ec 0c             	sub    $0xc,%esp
     e55:	6a 00                	push   $0x0
     e57:	e8 0e 30 00 00       	call   3e6a <wait>
     e5c:	83 c4 10             	add    $0x10,%esp
     e5f:	39 d8                	cmp    %ebx,%eax
     e61:	75 2d                	jne    e90 <exitwait+0x50>
  for(i = 0; i < 100; i++){
     e63:	83 ee 01             	sub    $0x1,%esi
     e66:	74 48                	je     eb0 <exitwait+0x70>
    pid = fork();
     e68:	e8 ed 2f 00 00       	call   3e5a <fork>
    if(pid < 0){
     e6d:	85 c0                	test   %eax,%eax
    pid = fork();
     e6f:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
     e71:	79 dd                	jns    e50 <exitwait+0x10>
      printf(1, "fork failed\n");
     e73:	83 ec 08             	sub    $0x8,%esp
     e76:	68 49 52 00 00       	push   $0x5249
     e7b:	6a 01                	push   $0x1
     e7d:	e8 2e 31 00 00       	call   3fb0 <printf>
      return;
     e82:	83 c4 10             	add    $0x10,%esp
}
     e85:	8d 65 f8             	lea    -0x8(%ebp),%esp
     e88:	5b                   	pop    %ebx
     e89:	5e                   	pop    %esi
     e8a:	5d                   	pop    %ebp
     e8b:	c3                   	ret    
     e8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printf(1, "wait wrong pid\n");
     e90:	83 ec 08             	sub    $0x8,%esp
     e93:	68 eb 46 00 00       	push   $0x46eb
     e98:	6a 01                	push   $0x1
     e9a:	e8 11 31 00 00       	call   3fb0 <printf>
        return;
     e9f:	83 c4 10             	add    $0x10,%esp
}
     ea2:	8d 65 f8             	lea    -0x8(%ebp),%esp
     ea5:	5b                   	pop    %ebx
     ea6:	5e                   	pop    %esi
     ea7:	5d                   	pop    %ebp
     ea8:	c3                   	ret    
     ea9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  printf(1, "exitwait ok\n");
     eb0:	83 ec 08             	sub    $0x8,%esp
     eb3:	68 fb 46 00 00       	push   $0x46fb
     eb8:	6a 01                	push   $0x1
     eba:	e8 f1 30 00 00       	call   3fb0 <printf>
     ebf:	83 c4 10             	add    $0x10,%esp
}
     ec2:	8d 65 f8             	lea    -0x8(%ebp),%esp
     ec5:	5b                   	pop    %ebx
     ec6:	5e                   	pop    %esi
     ec7:	5d                   	pop    %ebp
     ec8:	c3                   	ret    
      exit(1);
     ec9:	83 ec 0c             	sub    $0xc,%esp
     ecc:	6a 01                	push   $0x1
     ece:	e8 8f 2f 00 00       	call   3e62 <exit>
     ed3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     ed9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000ee0 <mem>:
{
     ee0:	55                   	push   %ebp
     ee1:	89 e5                	mov    %esp,%ebp
     ee3:	57                   	push   %edi
     ee4:	56                   	push   %esi
     ee5:	53                   	push   %ebx
     ee6:	31 db                	xor    %ebx,%ebx
     ee8:	83 ec 14             	sub    $0x14,%esp
  printf(1, "mem test\n");
     eeb:	68 08 47 00 00       	push   $0x4708
     ef0:	6a 01                	push   $0x1
     ef2:	e8 b9 30 00 00       	call   3fb0 <printf>
  ppid = getpid();
     ef7:	e8 e6 2f 00 00       	call   3ee2 <getpid>
     efc:	89 c6                	mov    %eax,%esi
  if((pid = fork()) == 0){
     efe:	e8 57 2f 00 00       	call   3e5a <fork>
     f03:	83 c4 10             	add    $0x10,%esp
     f06:	85 c0                	test   %eax,%eax
     f08:	74 0a                	je     f14 <mem+0x34>
     f0a:	e9 99 00 00 00       	jmp    fa8 <mem+0xc8>
     f0f:	90                   	nop
      *(char**)m2 = m1;
     f10:	89 18                	mov    %ebx,(%eax)
     f12:	89 c3                	mov    %eax,%ebx
    while((m2 = malloc(10001)) != 0){
     f14:	83 ec 0c             	sub    $0xc,%esp
     f17:	68 11 27 00 00       	push   $0x2711
     f1c:	e8 ef 32 00 00       	call   4210 <malloc>
     f21:	83 c4 10             	add    $0x10,%esp
     f24:	85 c0                	test   %eax,%eax
     f26:	75 e8                	jne    f10 <mem+0x30>
    while(m1){
     f28:	85 db                	test   %ebx,%ebx
     f2a:	74 18                	je     f44 <mem+0x64>
     f2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      m2 = *(char**)m1;
     f30:	8b 3b                	mov    (%ebx),%edi
      free(m1);
     f32:	83 ec 0c             	sub    $0xc,%esp
     f35:	53                   	push   %ebx
     f36:	89 fb                	mov    %edi,%ebx
     f38:	e8 43 32 00 00       	call   4180 <free>
    while(m1){
     f3d:	83 c4 10             	add    $0x10,%esp
     f40:	85 db                	test   %ebx,%ebx
     f42:	75 ec                	jne    f30 <mem+0x50>
    m1 = malloc(1024*20);
     f44:	83 ec 0c             	sub    $0xc,%esp
     f47:	68 00 50 00 00       	push   $0x5000
     f4c:	e8 bf 32 00 00       	call   4210 <malloc>
    if(m1 == 0){
     f51:	83 c4 10             	add    $0x10,%esp
     f54:	85 c0                	test   %eax,%eax
     f56:	74 28                	je     f80 <mem+0xa0>
    free(m1);
     f58:	83 ec 0c             	sub    $0xc,%esp
     f5b:	50                   	push   %eax
     f5c:	e8 1f 32 00 00       	call   4180 <free>
    printf(1, "mem ok\n");
     f61:	58                   	pop    %eax
     f62:	5a                   	pop    %edx
     f63:	68 2c 47 00 00       	push   $0x472c
     f68:	6a 01                	push   $0x1
     f6a:	e8 41 30 00 00       	call   3fb0 <printf>
    exit(1);
     f6f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     f76:	e8 e7 2e 00 00       	call   3e62 <exit>
     f7b:	90                   	nop
     f7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "couldn't allocate mem?!!\n");
     f80:	83 ec 08             	sub    $0x8,%esp
     f83:	68 12 47 00 00       	push   $0x4712
     f88:	6a 01                	push   $0x1
     f8a:	e8 21 30 00 00       	call   3fb0 <printf>
      kill(ppid);
     f8f:	89 34 24             	mov    %esi,(%esp)
     f92:	e8 fb 2e 00 00       	call   3e92 <kill>
      exit(1);
     f97:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     f9e:	e8 bf 2e 00 00       	call   3e62 <exit>
     fa3:	90                   	nop
     fa4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    wait(null);
     fa8:	83 ec 0c             	sub    $0xc,%esp
     fab:	6a 00                	push   $0x0
     fad:	e8 b8 2e 00 00       	call   3e6a <wait>
}
     fb2:	83 c4 10             	add    $0x10,%esp
     fb5:	8d 65 f4             	lea    -0xc(%ebp),%esp
     fb8:	5b                   	pop    %ebx
     fb9:	5e                   	pop    %esi
     fba:	5f                   	pop    %edi
     fbb:	5d                   	pop    %ebp
     fbc:	c3                   	ret    
     fbd:	8d 76 00             	lea    0x0(%esi),%esi

00000fc0 <sharedfd>:
{
     fc0:	55                   	push   %ebp
     fc1:	89 e5                	mov    %esp,%ebp
     fc3:	57                   	push   %edi
     fc4:	56                   	push   %esi
     fc5:	53                   	push   %ebx
     fc6:	83 ec 34             	sub    $0x34,%esp
  printf(1, "sharedfd test\n");
     fc9:	68 34 47 00 00       	push   $0x4734
     fce:	6a 01                	push   $0x1
     fd0:	e8 db 2f 00 00       	call   3fb0 <printf>
  unlink("sharedfd");
     fd5:	c7 04 24 43 47 00 00 	movl   $0x4743,(%esp)
     fdc:	e8 d1 2e 00 00       	call   3eb2 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
     fe1:	59                   	pop    %ecx
     fe2:	5b                   	pop    %ebx
     fe3:	68 02 02 00 00       	push   $0x202
     fe8:	68 43 47 00 00       	push   $0x4743
     fed:	e8 b0 2e 00 00       	call   3ea2 <open>
  if(fd < 0){
     ff2:	83 c4 10             	add    $0x10,%esp
     ff5:	85 c0                	test   %eax,%eax
     ff7:	0f 88 43 01 00 00    	js     1140 <sharedfd+0x180>
     ffd:	89 c6                	mov    %eax,%esi
  memset(buf, pid==0?'c':'p', sizeof(buf));
     fff:	bb e8 03 00 00       	mov    $0x3e8,%ebx
  pid = fork();
    1004:	e8 51 2e 00 00       	call   3e5a <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
    1009:	83 f8 01             	cmp    $0x1,%eax
  pid = fork();
    100c:	89 c7                	mov    %eax,%edi
  memset(buf, pid==0?'c':'p', sizeof(buf));
    100e:	19 c0                	sbb    %eax,%eax
    1010:	83 ec 04             	sub    $0x4,%esp
    1013:	83 e0 f3             	and    $0xfffffff3,%eax
    1016:	6a 0a                	push   $0xa
    1018:	83 c0 70             	add    $0x70,%eax
    101b:	50                   	push   %eax
    101c:	8d 45 de             	lea    -0x22(%ebp),%eax
    101f:	50                   	push   %eax
    1020:	e8 9b 2c 00 00       	call   3cc0 <memset>
    1025:	83 c4 10             	add    $0x10,%esp
    1028:	eb 0b                	jmp    1035 <sharedfd+0x75>
    102a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(i = 0; i < 1000; i++){
    1030:	83 eb 01             	sub    $0x1,%ebx
    1033:	74 29                	je     105e <sharedfd+0x9e>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
    1035:	8d 45 de             	lea    -0x22(%ebp),%eax
    1038:	83 ec 04             	sub    $0x4,%esp
    103b:	6a 0a                	push   $0xa
    103d:	50                   	push   %eax
    103e:	56                   	push   %esi
    103f:	e8 3e 2e 00 00       	call   3e82 <write>
    1044:	83 c4 10             	add    $0x10,%esp
    1047:	83 f8 0a             	cmp    $0xa,%eax
    104a:	74 e4                	je     1030 <sharedfd+0x70>
      printf(1, "fstests: write sharedfd failed\n");
    104c:	83 ec 08             	sub    $0x8,%esp
    104f:	68 34 54 00 00       	push   $0x5434
    1054:	6a 01                	push   $0x1
    1056:	e8 55 2f 00 00       	call   3fb0 <printf>
      break;
    105b:	83 c4 10             	add    $0x10,%esp
  if(pid == 0)
    105e:	85 ff                	test   %edi,%edi
    1060:	0f 84 0e 01 00 00    	je     1174 <sharedfd+0x1b4>
    wait(null);
    1066:	83 ec 0c             	sub    $0xc,%esp
  nc = np = 0;
    1069:	31 db                	xor    %ebx,%ebx
    106b:	31 ff                	xor    %edi,%edi
    wait(null);
    106d:	6a 00                	push   $0x0
    106f:	e8 f6 2d 00 00       	call   3e6a <wait>
  close(fd);
    1074:	89 34 24             	mov    %esi,(%esp)
    1077:	8d 75 e8             	lea    -0x18(%ebp),%esi
    107a:	e8 0b 2e 00 00       	call   3e8a <close>
  fd = open("sharedfd", 0);
    107f:	58                   	pop    %eax
    1080:	5a                   	pop    %edx
    1081:	6a 00                	push   $0x0
    1083:	68 43 47 00 00       	push   $0x4743
    1088:	e8 15 2e 00 00       	call   3ea2 <open>
  if(fd < 0){
    108d:	83 c4 10             	add    $0x10,%esp
    1090:	85 c0                	test   %eax,%eax
  fd = open("sharedfd", 0);
    1092:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  if(fd < 0){
    1095:	0f 88 bf 00 00 00    	js     115a <sharedfd+0x19a>
    109b:	89 f8                	mov    %edi,%eax
    109d:	89 df                	mov    %ebx,%edi
    109f:	89 c3                	mov    %eax,%ebx
    10a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  while((n = read(fd, buf, sizeof(buf))) > 0){
    10a8:	8d 45 de             	lea    -0x22(%ebp),%eax
    10ab:	83 ec 04             	sub    $0x4,%esp
    10ae:	6a 0a                	push   $0xa
    10b0:	50                   	push   %eax
    10b1:	ff 75 d4             	pushl  -0x2c(%ebp)
    10b4:	e8 c1 2d 00 00       	call   3e7a <read>
    10b9:	83 c4 10             	add    $0x10,%esp
    10bc:	85 c0                	test   %eax,%eax
    10be:	7e 30                	jle    10f0 <sharedfd+0x130>
    10c0:	8d 45 de             	lea    -0x22(%ebp),%eax
    10c3:	eb 15                	jmp    10da <sharedfd+0x11a>
    10c5:	8d 76 00             	lea    0x0(%esi),%esi
        np++;
    10c8:	80 fa 70             	cmp    $0x70,%dl
    10cb:	0f 94 c2             	sete   %dl
    10ce:	0f b6 d2             	movzbl %dl,%edx
    10d1:	01 d7                	add    %edx,%edi
    10d3:	83 c0 01             	add    $0x1,%eax
    for(i = 0; i < sizeof(buf); i++){
    10d6:	39 f0                	cmp    %esi,%eax
    10d8:	74 ce                	je     10a8 <sharedfd+0xe8>
      if(buf[i] == 'c')
    10da:	0f b6 10             	movzbl (%eax),%edx
    10dd:	80 fa 63             	cmp    $0x63,%dl
    10e0:	75 e6                	jne    10c8 <sharedfd+0x108>
        nc++;
    10e2:	83 c3 01             	add    $0x1,%ebx
    10e5:	eb ec                	jmp    10d3 <sharedfd+0x113>
    10e7:	89 f6                	mov    %esi,%esi
    10e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  close(fd);
    10f0:	83 ec 0c             	sub    $0xc,%esp
    10f3:	89 d8                	mov    %ebx,%eax
    10f5:	ff 75 d4             	pushl  -0x2c(%ebp)
    10f8:	89 fb                	mov    %edi,%ebx
    10fa:	89 c7                	mov    %eax,%edi
    10fc:	e8 89 2d 00 00       	call   3e8a <close>
  unlink("sharedfd");
    1101:	c7 04 24 43 47 00 00 	movl   $0x4743,(%esp)
    1108:	e8 a5 2d 00 00       	call   3eb2 <unlink>
  if(nc == 10000 && np == 10000){
    110d:	83 c4 10             	add    $0x10,%esp
    1110:	81 ff 10 27 00 00    	cmp    $0x2710,%edi
    1116:	75 66                	jne    117e <sharedfd+0x1be>
    1118:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    111e:	75 5e                	jne    117e <sharedfd+0x1be>
    printf(1, "sharedfd ok\n");
    1120:	83 ec 08             	sub    $0x8,%esp
    1123:	68 4c 47 00 00       	push   $0x474c
    1128:	6a 01                	push   $0x1
    112a:	e8 81 2e 00 00       	call   3fb0 <printf>
    112f:	83 c4 10             	add    $0x10,%esp
}
    1132:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1135:	5b                   	pop    %ebx
    1136:	5e                   	pop    %esi
    1137:	5f                   	pop    %edi
    1138:	5d                   	pop    %ebp
    1139:	c3                   	ret    
    113a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    printf(1, "fstests: cannot open sharedfd for writing");
    1140:	83 ec 08             	sub    $0x8,%esp
    1143:	68 08 54 00 00       	push   $0x5408
    1148:	6a 01                	push   $0x1
    114a:	e8 61 2e 00 00       	call   3fb0 <printf>
    return;
    114f:	83 c4 10             	add    $0x10,%esp
}
    1152:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1155:	5b                   	pop    %ebx
    1156:	5e                   	pop    %esi
    1157:	5f                   	pop    %edi
    1158:	5d                   	pop    %ebp
    1159:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for reading\n");
    115a:	83 ec 08             	sub    $0x8,%esp
    115d:	68 54 54 00 00       	push   $0x5454
    1162:	6a 01                	push   $0x1
    1164:	e8 47 2e 00 00       	call   3fb0 <printf>
    return;
    1169:	83 c4 10             	add    $0x10,%esp
}
    116c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    116f:	5b                   	pop    %ebx
    1170:	5e                   	pop    %esi
    1171:	5f                   	pop    %edi
    1172:	5d                   	pop    %ebp
    1173:	c3                   	ret    
    exit(1);
    1174:	83 ec 0c             	sub    $0xc,%esp
    1177:	6a 01                	push   $0x1
    1179:	e8 e4 2c 00 00       	call   3e62 <exit>
    printf(1, "sharedfd oops %d %d\n", nc, np);
    117e:	53                   	push   %ebx
    117f:	57                   	push   %edi
    1180:	68 59 47 00 00       	push   $0x4759
    1185:	6a 01                	push   $0x1
    1187:	e8 24 2e 00 00       	call   3fb0 <printf>
    exit(1);
    118c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1193:	e8 ca 2c 00 00       	call   3e62 <exit>
    1198:	90                   	nop
    1199:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000011a0 <fourfiles>:
{
    11a0:	55                   	push   %ebp
    11a1:	89 e5                	mov    %esp,%ebp
    11a3:	57                   	push   %edi
    11a4:	56                   	push   %esi
    11a5:	53                   	push   %ebx
  printf(1, "fourfiles test\n");
    11a6:	be 6e 47 00 00       	mov    $0x476e,%esi
  for(pi = 0; pi < 4; pi++){
    11ab:	31 db                	xor    %ebx,%ebx
{
    11ad:	83 ec 34             	sub    $0x34,%esp
  char *names[] = { "f0", "f1", "f2", "f3" };
    11b0:	c7 45 d8 6e 47 00 00 	movl   $0x476e,-0x28(%ebp)
    11b7:	c7 45 dc b7 48 00 00 	movl   $0x48b7,-0x24(%ebp)
  printf(1, "fourfiles test\n");
    11be:	68 74 47 00 00       	push   $0x4774
    11c3:	6a 01                	push   $0x1
  char *names[] = { "f0", "f1", "f2", "f3" };
    11c5:	c7 45 e0 bb 48 00 00 	movl   $0x48bb,-0x20(%ebp)
    11cc:	c7 45 e4 71 47 00 00 	movl   $0x4771,-0x1c(%ebp)
  printf(1, "fourfiles test\n");
    11d3:	e8 d8 2d 00 00       	call   3fb0 <printf>
    11d8:	83 c4 10             	add    $0x10,%esp
    unlink(fname);
    11db:	83 ec 0c             	sub    $0xc,%esp
    11de:	56                   	push   %esi
    11df:	e8 ce 2c 00 00       	call   3eb2 <unlink>
    pid = fork();
    11e4:	e8 71 2c 00 00       	call   3e5a <fork>
    if(pid < 0){
    11e9:	83 c4 10             	add    $0x10,%esp
    11ec:	85 c0                	test   %eax,%eax
    11ee:	0f 88 9b 01 00 00    	js     138f <fourfiles+0x1ef>
    if(pid == 0){
    11f4:	0f 84 ff 00 00 00    	je     12f9 <fourfiles+0x159>
  for(pi = 0; pi < 4; pi++){
    11fa:	83 c3 01             	add    $0x1,%ebx
    11fd:	83 fb 04             	cmp    $0x4,%ebx
    1200:	74 06                	je     1208 <fourfiles+0x68>
    1202:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    1206:	eb d3                	jmp    11db <fourfiles+0x3b>
    wait(null);
    1208:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 2; i++){
    120b:	31 ff                	xor    %edi,%edi
    wait(null);
    120d:	6a 00                	push   $0x0
    120f:	e8 56 2c 00 00       	call   3e6a <wait>
    1214:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    121b:	e8 4a 2c 00 00       	call   3e6a <wait>
    1220:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1227:	e8 3e 2c 00 00       	call   3e6a <wait>
    122c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1233:	e8 32 2c 00 00       	call   3e6a <wait>
    1238:	83 c4 10             	add    $0x10,%esp
    123b:	c7 45 d0 6e 47 00 00 	movl   $0x476e,-0x30(%ebp)
    fd = open(fname, 0);
    1242:	83 ec 08             	sub    $0x8,%esp
    total = 0;
    1245:	31 db                	xor    %ebx,%ebx
    fd = open(fname, 0);
    1247:	6a 00                	push   $0x0
    1249:	ff 75 d0             	pushl  -0x30(%ebp)
    124c:	e8 51 2c 00 00       	call   3ea2 <open>
    while((n = read(fd, buf, sizeof(buf))) > 0){
    1251:	83 c4 10             	add    $0x10,%esp
    fd = open(fname, 0);
    1254:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    1257:	89 f6                	mov    %esi,%esi
    1259:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    while((n = read(fd, buf, sizeof(buf))) > 0){
    1260:	83 ec 04             	sub    $0x4,%esp
    1263:	68 00 20 00 00       	push   $0x2000
    1268:	68 a0 8b 00 00       	push   $0x8ba0
    126d:	ff 75 d4             	pushl  -0x2c(%ebp)
    1270:	e8 05 2c 00 00       	call   3e7a <read>
    1275:	83 c4 10             	add    $0x10,%esp
    1278:	85 c0                	test   %eax,%eax
    127a:	7e 26                	jle    12a2 <fourfiles+0x102>
      for(j = 0; j < n; j++){
    127c:	31 d2                	xor    %edx,%edx
    127e:	66 90                	xchg   %ax,%ax
        if(buf[j] != '0'+i){
    1280:	0f be b2 a0 8b 00 00 	movsbl 0x8ba0(%edx),%esi
    1287:	83 ff 01             	cmp    $0x1,%edi
    128a:	19 c9                	sbb    %ecx,%ecx
    128c:	83 c1 31             	add    $0x31,%ecx
    128f:	39 ce                	cmp    %ecx,%esi
    1291:	0f 85 c3 00 00 00    	jne    135a <fourfiles+0x1ba>
      for(j = 0; j < n; j++){
    1297:	83 c2 01             	add    $0x1,%edx
    129a:	39 d0                	cmp    %edx,%eax
    129c:	75 e2                	jne    1280 <fourfiles+0xe0>
      total += n;
    129e:	01 c3                	add    %eax,%ebx
    12a0:	eb be                	jmp    1260 <fourfiles+0xc0>
    close(fd);
    12a2:	83 ec 0c             	sub    $0xc,%esp
    12a5:	ff 75 d4             	pushl  -0x2c(%ebp)
    12a8:	e8 dd 2b 00 00       	call   3e8a <close>
    if(total != 12*500){
    12ad:	83 c4 10             	add    $0x10,%esp
    12b0:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    12b6:	0f 85 ed 00 00 00    	jne    13a9 <fourfiles+0x209>
    unlink(fname);
    12bc:	83 ec 0c             	sub    $0xc,%esp
    12bf:	ff 75 d0             	pushl  -0x30(%ebp)
    12c2:	e8 eb 2b 00 00       	call   3eb2 <unlink>
  for(i = 0; i < 2; i++){
    12c7:	83 c4 10             	add    $0x10,%esp
    12ca:	83 ff 01             	cmp    $0x1,%edi
    12cd:	75 1a                	jne    12e9 <fourfiles+0x149>
  printf(1, "fourfiles ok\n");
    12cf:	83 ec 08             	sub    $0x8,%esp
    12d2:	68 b2 47 00 00       	push   $0x47b2
    12d7:	6a 01                	push   $0x1
    12d9:	e8 d2 2c 00 00       	call   3fb0 <printf>
}
    12de:	83 c4 10             	add    $0x10,%esp
    12e1:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12e4:	5b                   	pop    %ebx
    12e5:	5e                   	pop    %esi
    12e6:	5f                   	pop    %edi
    12e7:	5d                   	pop    %ebp
    12e8:	c3                   	ret    
    12e9:	8b 45 dc             	mov    -0x24(%ebp),%eax
    12ec:	bf 01 00 00 00       	mov    $0x1,%edi
    12f1:	89 45 d0             	mov    %eax,-0x30(%ebp)
    12f4:	e9 49 ff ff ff       	jmp    1242 <fourfiles+0xa2>
      fd = open(fname, O_CREATE | O_RDWR);
    12f9:	83 ec 08             	sub    $0x8,%esp
    12fc:	68 02 02 00 00       	push   $0x202
    1301:	56                   	push   %esi
    1302:	e8 9b 2b 00 00       	call   3ea2 <open>
      if(fd < 0){
    1307:	83 c4 10             	add    $0x10,%esp
    130a:	85 c0                	test   %eax,%eax
      fd = open(fname, O_CREATE | O_RDWR);
    130c:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    130e:	78 65                	js     1375 <fourfiles+0x1d5>
      memset(buf, '0'+pi, 512);
    1310:	83 ec 04             	sub    $0x4,%esp
    1313:	83 c3 30             	add    $0x30,%ebx
    1316:	68 00 02 00 00       	push   $0x200
    131b:	53                   	push   %ebx
    131c:	bb 0c 00 00 00       	mov    $0xc,%ebx
    1321:	68 a0 8b 00 00       	push   $0x8ba0
    1326:	e8 95 29 00 00       	call   3cc0 <memset>
    132b:	83 c4 10             	add    $0x10,%esp
        if((n = write(fd, buf, 500)) != 500){
    132e:	83 ec 04             	sub    $0x4,%esp
    1331:	68 f4 01 00 00       	push   $0x1f4
    1336:	68 a0 8b 00 00       	push   $0x8ba0
    133b:	56                   	push   %esi
    133c:	e8 41 2b 00 00       	call   3e82 <write>
    1341:	83 c4 10             	add    $0x10,%esp
    1344:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    1349:	75 78                	jne    13c3 <fourfiles+0x223>
      for(i = 0; i < 12; i++){
    134b:	83 eb 01             	sub    $0x1,%ebx
    134e:	75 de                	jne    132e <fourfiles+0x18e>
      exit(1);
    1350:	83 ec 0c             	sub    $0xc,%esp
    1353:	6a 01                	push   $0x1
    1355:	e8 08 2b 00 00       	call   3e62 <exit>
          printf(1, "wrong char\n");
    135a:	83 ec 08             	sub    $0x8,%esp
    135d:	68 95 47 00 00       	push   $0x4795
    1362:	6a 01                	push   $0x1
    1364:	e8 47 2c 00 00       	call   3fb0 <printf>
          exit(1);
    1369:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1370:	e8 ed 2a 00 00       	call   3e62 <exit>
        printf(1, "create failed\n");
    1375:	51                   	push   %ecx
    1376:	51                   	push   %ecx
    1377:	68 0f 4a 00 00       	push   $0x4a0f
    137c:	6a 01                	push   $0x1
    137e:	e8 2d 2c 00 00       	call   3fb0 <printf>
        exit(1);
    1383:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    138a:	e8 d3 2a 00 00       	call   3e62 <exit>
      printf(1, "fork failed\n");
    138f:	53                   	push   %ebx
    1390:	53                   	push   %ebx
    1391:	68 49 52 00 00       	push   $0x5249
    1396:	6a 01                	push   $0x1
    1398:	e8 13 2c 00 00       	call   3fb0 <printf>
      exit(1);
    139d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    13a4:	e8 b9 2a 00 00       	call   3e62 <exit>
      printf(1, "wrong length %d\n", total);
    13a9:	50                   	push   %eax
    13aa:	53                   	push   %ebx
    13ab:	68 a1 47 00 00       	push   $0x47a1
    13b0:	6a 01                	push   $0x1
    13b2:	e8 f9 2b 00 00       	call   3fb0 <printf>
      exit(1);
    13b7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    13be:	e8 9f 2a 00 00       	call   3e62 <exit>
          printf(1, "write failed %d\n", n);
    13c3:	52                   	push   %edx
    13c4:	50                   	push   %eax
    13c5:	68 84 47 00 00       	push   $0x4784
    13ca:	6a 01                	push   $0x1
    13cc:	e8 df 2b 00 00       	call   3fb0 <printf>
          exit(1);
    13d1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    13d8:	e8 85 2a 00 00       	call   3e62 <exit>
    13dd:	8d 76 00             	lea    0x0(%esi),%esi

000013e0 <createdelete>:
{
    13e0:	55                   	push   %ebp
    13e1:	89 e5                	mov    %esp,%ebp
    13e3:	57                   	push   %edi
    13e4:	56                   	push   %esi
    13e5:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    13e6:	31 db                	xor    %ebx,%ebx
{
    13e8:	83 ec 44             	sub    $0x44,%esp
  printf(1, "createdelete test\n");
    13eb:	68 c0 47 00 00       	push   $0x47c0
    13f0:	6a 01                	push   $0x1
    13f2:	e8 b9 2b 00 00       	call   3fb0 <printf>
    13f7:	83 c4 10             	add    $0x10,%esp
    pid = fork();
    13fa:	e8 5b 2a 00 00       	call   3e5a <fork>
    if(pid < 0){
    13ff:	85 c0                	test   %eax,%eax
    1401:	0f 88 f9 01 00 00    	js     1600 <createdelete+0x220>
    if(pid == 0){
    1407:	0f 84 2b 01 00 00    	je     1538 <createdelete+0x158>
  for(pi = 0; pi < 4; pi++){
    140d:	83 c3 01             	add    $0x1,%ebx
    1410:	83 fb 04             	cmp    $0x4,%ebx
    1413:	75 e5                	jne    13fa <createdelete+0x1a>
    wait(null);
    1415:	83 ec 0c             	sub    $0xc,%esp
    1418:	8d 7d c8             	lea    -0x38(%ebp),%edi
  name[0] = name[1] = name[2] = 0;
    141b:	be ff ff ff ff       	mov    $0xffffffff,%esi
    wait(null);
    1420:	6a 00                	push   $0x0
    1422:	e8 43 2a 00 00       	call   3e6a <wait>
    1427:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    142e:	e8 37 2a 00 00       	call   3e6a <wait>
    1433:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    143a:	e8 2b 2a 00 00       	call   3e6a <wait>
    143f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1446:	e8 1f 2a 00 00       	call   3e6a <wait>
  name[0] = name[1] = name[2] = 0;
    144b:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    144f:	83 c4 10             	add    $0x10,%esp
    1452:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1458:	8d 46 31             	lea    0x31(%esi),%eax
    145b:	88 45 c7             	mov    %al,-0x39(%ebp)
    145e:	8d 46 01             	lea    0x1(%esi),%eax
    1461:	83 f8 09             	cmp    $0x9,%eax
    1464:	89 45 c0             	mov    %eax,-0x40(%ebp)
    1467:	0f 9f c3             	setg   %bl
    146a:	85 c0                	test   %eax,%eax
    146c:	0f 94 c0             	sete   %al
    146f:	09 c3                	or     %eax,%ebx
    1471:	88 5d c6             	mov    %bl,-0x3a(%ebp)
      name[2] = '\0';
    1474:	bb 70 00 00 00       	mov    $0x70,%ebx
      name[1] = '0' + i;
    1479:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      fd = open(name, 0);
    147d:	83 ec 08             	sub    $0x8,%esp
      name[0] = 'p' + pi;
    1480:	88 5d c8             	mov    %bl,-0x38(%ebp)
      fd = open(name, 0);
    1483:	6a 00                	push   $0x0
    1485:	57                   	push   %edi
      name[1] = '0' + i;
    1486:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    1489:	e8 14 2a 00 00       	call   3ea2 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    148e:	83 c4 10             	add    $0x10,%esp
    1491:	80 7d c6 00          	cmpb   $0x0,-0x3a(%ebp)
    1495:	0f 84 85 00 00 00    	je     1520 <createdelete+0x140>
    149b:	85 c0                	test   %eax,%eax
    149d:	0f 88 27 01 00 00    	js     15ca <createdelete+0x1ea>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    14a3:	83 fe 08             	cmp    $0x8,%esi
    14a6:	0f 86 76 01 00 00    	jbe    1622 <createdelete+0x242>
        close(fd);
    14ac:	83 ec 0c             	sub    $0xc,%esp
    14af:	50                   	push   %eax
    14b0:	e8 d5 29 00 00       	call   3e8a <close>
    14b5:	83 c4 10             	add    $0x10,%esp
    14b8:	83 c3 01             	add    $0x1,%ebx
    for(pi = 0; pi < 4; pi++){
    14bb:	80 fb 74             	cmp    $0x74,%bl
    14be:	75 b9                	jne    1479 <createdelete+0x99>
    14c0:	8b 75 c0             	mov    -0x40(%ebp),%esi
  for(i = 0; i < N; i++){
    14c3:	83 fe 13             	cmp    $0x13,%esi
    14c6:	75 90                	jne    1458 <createdelete+0x78>
    14c8:	be 70 00 00 00       	mov    $0x70,%esi
    14cd:	8d 76 00             	lea    0x0(%esi),%esi
    14d0:	8d 46 c0             	lea    -0x40(%esi),%eax
  name[0] = name[1] = name[2] = 0;
    14d3:	bb 04 00 00 00       	mov    $0x4,%ebx
    14d8:	88 45 c7             	mov    %al,-0x39(%ebp)
      name[0] = 'p' + i;
    14db:	89 f0                	mov    %esi,%eax
      unlink(name);
    14dd:	83 ec 0c             	sub    $0xc,%esp
      name[0] = 'p' + i;
    14e0:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    14e3:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      unlink(name);
    14e7:	57                   	push   %edi
      name[1] = '0' + i;
    14e8:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    14eb:	e8 c2 29 00 00       	call   3eb2 <unlink>
    for(pi = 0; pi < 4; pi++){
    14f0:	83 c4 10             	add    $0x10,%esp
    14f3:	83 eb 01             	sub    $0x1,%ebx
    14f6:	75 e3                	jne    14db <createdelete+0xfb>
    14f8:	83 c6 01             	add    $0x1,%esi
  for(i = 0; i < N; i++){
    14fb:	89 f0                	mov    %esi,%eax
    14fd:	3c 84                	cmp    $0x84,%al
    14ff:	75 cf                	jne    14d0 <createdelete+0xf0>
  printf(1, "createdelete ok\n");
    1501:	83 ec 08             	sub    $0x8,%esp
    1504:	68 d3 47 00 00       	push   $0x47d3
    1509:	6a 01                	push   $0x1
    150b:	e8 a0 2a 00 00       	call   3fb0 <printf>
}
    1510:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1513:	5b                   	pop    %ebx
    1514:	5e                   	pop    %esi
    1515:	5f                   	pop    %edi
    1516:	5d                   	pop    %ebp
    1517:	c3                   	ret    
    1518:	90                   	nop
    1519:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1520:	83 fe 08             	cmp    $0x8,%esi
    1523:	0f 86 f1 00 00 00    	jbe    161a <createdelete+0x23a>
      if(fd >= 0)
    1529:	85 c0                	test   %eax,%eax
    152b:	78 8b                	js     14b8 <createdelete+0xd8>
    152d:	e9 7a ff ff ff       	jmp    14ac <createdelete+0xcc>
    1532:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      name[0] = 'p' + pi;
    1538:	83 c3 70             	add    $0x70,%ebx
      name[2] = '\0';
    153b:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    153f:	8d 7d c8             	lea    -0x38(%ebp),%edi
      name[0] = 'p' + pi;
    1542:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[2] = '\0';
    1545:	31 db                	xor    %ebx,%ebx
    1547:	eb 0f                	jmp    1558 <createdelete+0x178>
    1549:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      for(i = 0; i < N; i++){
    1550:	83 fb 13             	cmp    $0x13,%ebx
    1553:	74 6b                	je     15c0 <createdelete+0x1e0>
    1555:	83 c3 01             	add    $0x1,%ebx
        fd = open(name, O_CREATE | O_RDWR);
    1558:	83 ec 08             	sub    $0x8,%esp
        name[1] = '0' + i;
    155b:	8d 43 30             	lea    0x30(%ebx),%eax
        fd = open(name, O_CREATE | O_RDWR);
    155e:	68 02 02 00 00       	push   $0x202
    1563:	57                   	push   %edi
        name[1] = '0' + i;
    1564:	88 45 c9             	mov    %al,-0x37(%ebp)
        fd = open(name, O_CREATE | O_RDWR);
    1567:	e8 36 29 00 00       	call   3ea2 <open>
        if(fd < 0){
    156c:	83 c4 10             	add    $0x10,%esp
    156f:	85 c0                	test   %eax,%eax
    1571:	78 73                	js     15e6 <createdelete+0x206>
        close(fd);
    1573:	83 ec 0c             	sub    $0xc,%esp
    1576:	50                   	push   %eax
    1577:	e8 0e 29 00 00       	call   3e8a <close>
        if(i > 0 && (i % 2 ) == 0){
    157c:	83 c4 10             	add    $0x10,%esp
    157f:	85 db                	test   %ebx,%ebx
    1581:	74 d2                	je     1555 <createdelete+0x175>
    1583:	f6 c3 01             	test   $0x1,%bl
    1586:	75 c8                	jne    1550 <createdelete+0x170>
          if(unlink(name) < 0){
    1588:	83 ec 0c             	sub    $0xc,%esp
          name[1] = '0' + (i / 2);
    158b:	89 d8                	mov    %ebx,%eax
    158d:	d1 f8                	sar    %eax
          if(unlink(name) < 0){
    158f:	57                   	push   %edi
          name[1] = '0' + (i / 2);
    1590:	83 c0 30             	add    $0x30,%eax
    1593:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    1596:	e8 17 29 00 00       	call   3eb2 <unlink>
    159b:	83 c4 10             	add    $0x10,%esp
    159e:	85 c0                	test   %eax,%eax
    15a0:	79 ae                	jns    1550 <createdelete+0x170>
            printf(1, "unlink failed\n");
    15a2:	52                   	push   %edx
    15a3:	52                   	push   %edx
    15a4:	68 c1 43 00 00       	push   $0x43c1
    15a9:	6a 01                	push   $0x1
    15ab:	e8 00 2a 00 00       	call   3fb0 <printf>
            exit(1);
    15b0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    15b7:	e8 a6 28 00 00       	call   3e62 <exit>
    15bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      exit(1);
    15c0:	83 ec 0c             	sub    $0xc,%esp
    15c3:	6a 01                	push   $0x1
    15c5:	e8 98 28 00 00       	call   3e62 <exit>
        printf(1, "oops createdelete %s didn't exist\n", name);
    15ca:	83 ec 04             	sub    $0x4,%esp
    15cd:	57                   	push   %edi
    15ce:	68 80 54 00 00       	push   $0x5480
    15d3:	6a 01                	push   $0x1
    15d5:	e8 d6 29 00 00       	call   3fb0 <printf>
        exit(1);
    15da:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    15e1:	e8 7c 28 00 00       	call   3e62 <exit>
          printf(1, "create failed\n");
    15e6:	51                   	push   %ecx
    15e7:	51                   	push   %ecx
    15e8:	68 0f 4a 00 00       	push   $0x4a0f
    15ed:	6a 01                	push   $0x1
    15ef:	e8 bc 29 00 00       	call   3fb0 <printf>
          exit(1);
    15f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    15fb:	e8 62 28 00 00       	call   3e62 <exit>
      printf(1, "fork failed\n");
    1600:	53                   	push   %ebx
    1601:	53                   	push   %ebx
    1602:	68 49 52 00 00       	push   $0x5249
    1607:	6a 01                	push   $0x1
    1609:	e8 a2 29 00 00       	call   3fb0 <printf>
      exit(1);
    160e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1615:	e8 48 28 00 00       	call   3e62 <exit>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    161a:	85 c0                	test   %eax,%eax
    161c:	0f 88 96 fe ff ff    	js     14b8 <createdelete+0xd8>
        printf(1, "oops createdelete %s did exist\n", name);
    1622:	50                   	push   %eax
    1623:	57                   	push   %edi
    1624:	68 a4 54 00 00       	push   $0x54a4
    1629:	6a 01                	push   $0x1
    162b:	e8 80 29 00 00       	call   3fb0 <printf>
        exit(1);
    1630:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1637:	e8 26 28 00 00       	call   3e62 <exit>
    163c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001640 <unlinkread>:
{
    1640:	55                   	push   %ebp
    1641:	89 e5                	mov    %esp,%ebp
    1643:	56                   	push   %esi
    1644:	53                   	push   %ebx
  printf(1, "unlinkread test\n");
    1645:	83 ec 08             	sub    $0x8,%esp
    1648:	68 e4 47 00 00       	push   $0x47e4
    164d:	6a 01                	push   $0x1
    164f:	e8 5c 29 00 00       	call   3fb0 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    1654:	5b                   	pop    %ebx
    1655:	5e                   	pop    %esi
    1656:	68 02 02 00 00       	push   $0x202
    165b:	68 f5 47 00 00       	push   $0x47f5
    1660:	e8 3d 28 00 00       	call   3ea2 <open>
  if(fd < 0){
    1665:	83 c4 10             	add    $0x10,%esp
    1668:	85 c0                	test   %eax,%eax
    166a:	0f 88 e6 00 00 00    	js     1756 <unlinkread+0x116>
  write(fd, "hello", 5);
    1670:	83 ec 04             	sub    $0x4,%esp
    1673:	89 c3                	mov    %eax,%ebx
    1675:	6a 05                	push   $0x5
    1677:	68 1a 48 00 00       	push   $0x481a
    167c:	50                   	push   %eax
    167d:	e8 00 28 00 00       	call   3e82 <write>
  close(fd);
    1682:	89 1c 24             	mov    %ebx,(%esp)
    1685:	e8 00 28 00 00       	call   3e8a <close>
  fd = open("unlinkread", O_RDWR);
    168a:	58                   	pop    %eax
    168b:	5a                   	pop    %edx
    168c:	6a 02                	push   $0x2
    168e:	68 f5 47 00 00       	push   $0x47f5
    1693:	e8 0a 28 00 00       	call   3ea2 <open>
  if(fd < 0){
    1698:	83 c4 10             	add    $0x10,%esp
    169b:	85 c0                	test   %eax,%eax
  fd = open("unlinkread", O_RDWR);
    169d:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    169f:	0f 88 33 01 00 00    	js     17d8 <unlinkread+0x198>
  if(unlink("unlinkread") != 0){
    16a5:	83 ec 0c             	sub    $0xc,%esp
    16a8:	68 f5 47 00 00       	push   $0x47f5
    16ad:	e8 00 28 00 00       	call   3eb2 <unlink>
    16b2:	83 c4 10             	add    $0x10,%esp
    16b5:	85 c0                	test   %eax,%eax
    16b7:	0f 85 01 01 00 00    	jne    17be <unlinkread+0x17e>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    16bd:	83 ec 08             	sub    $0x8,%esp
    16c0:	68 02 02 00 00       	push   $0x202
    16c5:	68 f5 47 00 00       	push   $0x47f5
    16ca:	e8 d3 27 00 00       	call   3ea2 <open>
  write(fd1, "yyy", 3);
    16cf:	83 c4 0c             	add    $0xc,%esp
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    16d2:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    16d4:	6a 03                	push   $0x3
    16d6:	68 52 48 00 00       	push   $0x4852
    16db:	50                   	push   %eax
    16dc:	e8 a1 27 00 00       	call   3e82 <write>
  close(fd1);
    16e1:	89 34 24             	mov    %esi,(%esp)
    16e4:	e8 a1 27 00 00       	call   3e8a <close>
  if(read(fd, buf, sizeof(buf)) != 5){
    16e9:	83 c4 0c             	add    $0xc,%esp
    16ec:	68 00 20 00 00       	push   $0x2000
    16f1:	68 a0 8b 00 00       	push   $0x8ba0
    16f6:	53                   	push   %ebx
    16f7:	e8 7e 27 00 00       	call   3e7a <read>
    16fc:	83 c4 10             	add    $0x10,%esp
    16ff:	83 f8 05             	cmp    $0x5,%eax
    1702:	0f 85 9c 00 00 00    	jne    17a4 <unlinkread+0x164>
  if(buf[0] != 'h'){
    1708:	80 3d a0 8b 00 00 68 	cmpb   $0x68,0x8ba0
    170f:	75 79                	jne    178a <unlinkread+0x14a>
  if(write(fd, buf, 10) != 10){
    1711:	83 ec 04             	sub    $0x4,%esp
    1714:	6a 0a                	push   $0xa
    1716:	68 a0 8b 00 00       	push   $0x8ba0
    171b:	53                   	push   %ebx
    171c:	e8 61 27 00 00       	call   3e82 <write>
    1721:	83 c4 10             	add    $0x10,%esp
    1724:	83 f8 0a             	cmp    $0xa,%eax
    1727:	75 47                	jne    1770 <unlinkread+0x130>
  close(fd);
    1729:	83 ec 0c             	sub    $0xc,%esp
    172c:	53                   	push   %ebx
    172d:	e8 58 27 00 00       	call   3e8a <close>
  unlink("unlinkread");
    1732:	c7 04 24 f5 47 00 00 	movl   $0x47f5,(%esp)
    1739:	e8 74 27 00 00       	call   3eb2 <unlink>
  printf(1, "unlinkread ok\n");
    173e:	58                   	pop    %eax
    173f:	5a                   	pop    %edx
    1740:	68 9d 48 00 00       	push   $0x489d
    1745:	6a 01                	push   $0x1
    1747:	e8 64 28 00 00       	call   3fb0 <printf>
}
    174c:	83 c4 10             	add    $0x10,%esp
    174f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1752:	5b                   	pop    %ebx
    1753:	5e                   	pop    %esi
    1754:	5d                   	pop    %ebp
    1755:	c3                   	ret    
    printf(1, "create unlinkread failed\n");
    1756:	51                   	push   %ecx
    1757:	51                   	push   %ecx
    1758:	68 00 48 00 00       	push   $0x4800
    175d:	6a 01                	push   $0x1
    175f:	e8 4c 28 00 00       	call   3fb0 <printf>
    exit(1);
    1764:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    176b:	e8 f2 26 00 00       	call   3e62 <exit>
    printf(1, "unlinkread write failed\n");
    1770:	51                   	push   %ecx
    1771:	51                   	push   %ecx
    1772:	68 84 48 00 00       	push   $0x4884
    1777:	6a 01                	push   $0x1
    1779:	e8 32 28 00 00       	call   3fb0 <printf>
    exit(1);
    177e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1785:	e8 d8 26 00 00       	call   3e62 <exit>
    printf(1, "unlinkread wrong data\n");
    178a:	53                   	push   %ebx
    178b:	53                   	push   %ebx
    178c:	68 6d 48 00 00       	push   $0x486d
    1791:	6a 01                	push   $0x1
    1793:	e8 18 28 00 00       	call   3fb0 <printf>
    exit(1);
    1798:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    179f:	e8 be 26 00 00       	call   3e62 <exit>
    printf(1, "unlinkread read failed");
    17a4:	56                   	push   %esi
    17a5:	56                   	push   %esi
    17a6:	68 56 48 00 00       	push   $0x4856
    17ab:	6a 01                	push   $0x1
    17ad:	e8 fe 27 00 00       	call   3fb0 <printf>
    exit(1);
    17b2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    17b9:	e8 a4 26 00 00       	call   3e62 <exit>
    printf(1, "unlink unlinkread failed\n");
    17be:	50                   	push   %eax
    17bf:	50                   	push   %eax
    17c0:	68 38 48 00 00       	push   $0x4838
    17c5:	6a 01                	push   $0x1
    17c7:	e8 e4 27 00 00       	call   3fb0 <printf>
    exit(1);
    17cc:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    17d3:	e8 8a 26 00 00       	call   3e62 <exit>
    printf(1, "open unlinkread failed\n");
    17d8:	50                   	push   %eax
    17d9:	50                   	push   %eax
    17da:	68 20 48 00 00       	push   $0x4820
    17df:	6a 01                	push   $0x1
    17e1:	e8 ca 27 00 00       	call   3fb0 <printf>
    exit(1);
    17e6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    17ed:	e8 70 26 00 00       	call   3e62 <exit>
    17f2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    17f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001800 <linktest>:
{
    1800:	55                   	push   %ebp
    1801:	89 e5                	mov    %esp,%ebp
    1803:	53                   	push   %ebx
    1804:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "linktest\n");
    1807:	68 ac 48 00 00       	push   $0x48ac
    180c:	6a 01                	push   $0x1
    180e:	e8 9d 27 00 00       	call   3fb0 <printf>
  unlink("lf1");
    1813:	c7 04 24 b6 48 00 00 	movl   $0x48b6,(%esp)
    181a:	e8 93 26 00 00       	call   3eb2 <unlink>
  unlink("lf2");
    181f:	c7 04 24 ba 48 00 00 	movl   $0x48ba,(%esp)
    1826:	e8 87 26 00 00       	call   3eb2 <unlink>
  fd = open("lf1", O_CREATE|O_RDWR);
    182b:	58                   	pop    %eax
    182c:	5a                   	pop    %edx
    182d:	68 02 02 00 00       	push   $0x202
    1832:	68 b6 48 00 00       	push   $0x48b6
    1837:	e8 66 26 00 00       	call   3ea2 <open>
  if(fd < 0){
    183c:	83 c4 10             	add    $0x10,%esp
    183f:	85 c0                	test   %eax,%eax
    1841:	0f 88 1e 01 00 00    	js     1965 <linktest+0x165>
  if(write(fd, "hello", 5) != 5){
    1847:	83 ec 04             	sub    $0x4,%esp
    184a:	89 c3                	mov    %eax,%ebx
    184c:	6a 05                	push   $0x5
    184e:	68 1a 48 00 00       	push   $0x481a
    1853:	50                   	push   %eax
    1854:	e8 29 26 00 00       	call   3e82 <write>
    1859:	83 c4 10             	add    $0x10,%esp
    185c:	83 f8 05             	cmp    $0x5,%eax
    185f:	0f 85 d0 01 00 00    	jne    1a35 <linktest+0x235>
  close(fd);
    1865:	83 ec 0c             	sub    $0xc,%esp
    1868:	53                   	push   %ebx
    1869:	e8 1c 26 00 00       	call   3e8a <close>
  if(link("lf1", "lf2") < 0){
    186e:	5b                   	pop    %ebx
    186f:	58                   	pop    %eax
    1870:	68 ba 48 00 00       	push   $0x48ba
    1875:	68 b6 48 00 00       	push   $0x48b6
    187a:	e8 43 26 00 00       	call   3ec2 <link>
    187f:	83 c4 10             	add    $0x10,%esp
    1882:	85 c0                	test   %eax,%eax
    1884:	0f 88 91 01 00 00    	js     1a1b <linktest+0x21b>
  unlink("lf1");
    188a:	83 ec 0c             	sub    $0xc,%esp
    188d:	68 b6 48 00 00       	push   $0x48b6
    1892:	e8 1b 26 00 00       	call   3eb2 <unlink>
  if(open("lf1", 0) >= 0){
    1897:	58                   	pop    %eax
    1898:	5a                   	pop    %edx
    1899:	6a 00                	push   $0x0
    189b:	68 b6 48 00 00       	push   $0x48b6
    18a0:	e8 fd 25 00 00       	call   3ea2 <open>
    18a5:	83 c4 10             	add    $0x10,%esp
    18a8:	85 c0                	test   %eax,%eax
    18aa:	0f 89 51 01 00 00    	jns    1a01 <linktest+0x201>
  fd = open("lf2", 0);
    18b0:	83 ec 08             	sub    $0x8,%esp
    18b3:	6a 00                	push   $0x0
    18b5:	68 ba 48 00 00       	push   $0x48ba
    18ba:	e8 e3 25 00 00       	call   3ea2 <open>
  if(fd < 0){
    18bf:	83 c4 10             	add    $0x10,%esp
    18c2:	85 c0                	test   %eax,%eax
  fd = open("lf2", 0);
    18c4:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    18c6:	0f 88 1b 01 00 00    	js     19e7 <linktest+0x1e7>
  if(read(fd, buf, sizeof(buf)) != 5){
    18cc:	83 ec 04             	sub    $0x4,%esp
    18cf:	68 00 20 00 00       	push   $0x2000
    18d4:	68 a0 8b 00 00       	push   $0x8ba0
    18d9:	50                   	push   %eax
    18da:	e8 9b 25 00 00       	call   3e7a <read>
    18df:	83 c4 10             	add    $0x10,%esp
    18e2:	83 f8 05             	cmp    $0x5,%eax
    18e5:	0f 85 e2 00 00 00    	jne    19cd <linktest+0x1cd>
  close(fd);
    18eb:	83 ec 0c             	sub    $0xc,%esp
    18ee:	53                   	push   %ebx
    18ef:	e8 96 25 00 00       	call   3e8a <close>
  if(link("lf2", "lf2") >= 0){
    18f4:	58                   	pop    %eax
    18f5:	5a                   	pop    %edx
    18f6:	68 ba 48 00 00       	push   $0x48ba
    18fb:	68 ba 48 00 00       	push   $0x48ba
    1900:	e8 bd 25 00 00       	call   3ec2 <link>
    1905:	83 c4 10             	add    $0x10,%esp
    1908:	85 c0                	test   %eax,%eax
    190a:	0f 89 a3 00 00 00    	jns    19b3 <linktest+0x1b3>
  unlink("lf2");
    1910:	83 ec 0c             	sub    $0xc,%esp
    1913:	68 ba 48 00 00       	push   $0x48ba
    1918:	e8 95 25 00 00       	call   3eb2 <unlink>
  if(link("lf2", "lf1") >= 0){
    191d:	59                   	pop    %ecx
    191e:	5b                   	pop    %ebx
    191f:	68 b6 48 00 00       	push   $0x48b6
    1924:	68 ba 48 00 00       	push   $0x48ba
    1929:	e8 94 25 00 00       	call   3ec2 <link>
    192e:	83 c4 10             	add    $0x10,%esp
    1931:	85 c0                	test   %eax,%eax
    1933:	79 64                	jns    1999 <linktest+0x199>
  if(link(".", "lf1") >= 0){
    1935:	83 ec 08             	sub    $0x8,%esp
    1938:	68 b6 48 00 00       	push   $0x48b6
    193d:	68 7e 4b 00 00       	push   $0x4b7e
    1942:	e8 7b 25 00 00       	call   3ec2 <link>
    1947:	83 c4 10             	add    $0x10,%esp
    194a:	85 c0                	test   %eax,%eax
    194c:	79 31                	jns    197f <linktest+0x17f>
  printf(1, "linktest ok\n");
    194e:	83 ec 08             	sub    $0x8,%esp
    1951:	68 54 49 00 00       	push   $0x4954
    1956:	6a 01                	push   $0x1
    1958:	e8 53 26 00 00       	call   3fb0 <printf>
}
    195d:	83 c4 10             	add    $0x10,%esp
    1960:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1963:	c9                   	leave  
    1964:	c3                   	ret    
    printf(1, "create lf1 failed\n");
    1965:	50                   	push   %eax
    1966:	50                   	push   %eax
    1967:	68 be 48 00 00       	push   $0x48be
    196c:	6a 01                	push   $0x1
    196e:	e8 3d 26 00 00       	call   3fb0 <printf>
    exit(1);
    1973:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    197a:	e8 e3 24 00 00       	call   3e62 <exit>
    printf(1, "link . lf1 succeeded! oops\n");
    197f:	50                   	push   %eax
    1980:	50                   	push   %eax
    1981:	68 38 49 00 00       	push   $0x4938
    1986:	6a 01                	push   $0x1
    1988:	e8 23 26 00 00       	call   3fb0 <printf>
    exit(1);
    198d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1994:	e8 c9 24 00 00       	call   3e62 <exit>
    printf(1, "link non-existant succeeded! oops\n");
    1999:	52                   	push   %edx
    199a:	52                   	push   %edx
    199b:	68 ec 54 00 00       	push   $0x54ec
    19a0:	6a 01                	push   $0x1
    19a2:	e8 09 26 00 00       	call   3fb0 <printf>
    exit(1);
    19a7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19ae:	e8 af 24 00 00       	call   3e62 <exit>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    19b3:	50                   	push   %eax
    19b4:	50                   	push   %eax
    19b5:	68 1a 49 00 00       	push   $0x491a
    19ba:	6a 01                	push   $0x1
    19bc:	e8 ef 25 00 00       	call   3fb0 <printf>
    exit(1);
    19c1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19c8:	e8 95 24 00 00       	call   3e62 <exit>
    printf(1, "read lf2 failed\n");
    19cd:	51                   	push   %ecx
    19ce:	51                   	push   %ecx
    19cf:	68 09 49 00 00       	push   $0x4909
    19d4:	6a 01                	push   $0x1
    19d6:	e8 d5 25 00 00       	call   3fb0 <printf>
    exit(1);
    19db:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19e2:	e8 7b 24 00 00       	call   3e62 <exit>
    printf(1, "open lf2 failed\n");
    19e7:	53                   	push   %ebx
    19e8:	53                   	push   %ebx
    19e9:	68 f8 48 00 00       	push   $0x48f8
    19ee:	6a 01                	push   $0x1
    19f0:	e8 bb 25 00 00       	call   3fb0 <printf>
    exit(1);
    19f5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19fc:	e8 61 24 00 00       	call   3e62 <exit>
    printf(1, "unlinked lf1 but it is still there!\n");
    1a01:	50                   	push   %eax
    1a02:	50                   	push   %eax
    1a03:	68 c4 54 00 00       	push   $0x54c4
    1a08:	6a 01                	push   $0x1
    1a0a:	e8 a1 25 00 00       	call   3fb0 <printf>
    exit(1);
    1a0f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a16:	e8 47 24 00 00       	call   3e62 <exit>
    printf(1, "link lf1 lf2 failed\n");
    1a1b:	51                   	push   %ecx
    1a1c:	51                   	push   %ecx
    1a1d:	68 e3 48 00 00       	push   $0x48e3
    1a22:	6a 01                	push   $0x1
    1a24:	e8 87 25 00 00       	call   3fb0 <printf>
    exit(1);
    1a29:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a30:	e8 2d 24 00 00       	call   3e62 <exit>
    printf(1, "write lf1 failed\n");
    1a35:	50                   	push   %eax
    1a36:	50                   	push   %eax
    1a37:	68 d1 48 00 00       	push   $0x48d1
    1a3c:	6a 01                	push   $0x1
    1a3e:	e8 6d 25 00 00       	call   3fb0 <printf>
    exit(1);
    1a43:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a4a:	e8 13 24 00 00       	call   3e62 <exit>
    1a4f:	90                   	nop

00001a50 <concreate>:
{
    1a50:	55                   	push   %ebp
    1a51:	89 e5                	mov    %esp,%ebp
    1a53:	57                   	push   %edi
    1a54:	56                   	push   %esi
    1a55:	53                   	push   %ebx
  for(i = 0; i < 40; i++){
    1a56:	31 f6                	xor    %esi,%esi
    1a58:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    if(pid && (i % 3) == 1){
    1a5b:	bf ab aa aa aa       	mov    $0xaaaaaaab,%edi
{
    1a60:	83 ec 64             	sub    $0x64,%esp
  printf(1, "concreate test\n");
    1a63:	68 61 49 00 00       	push   $0x4961
    1a68:	6a 01                	push   $0x1
    1a6a:	e8 41 25 00 00       	call   3fb0 <printf>
  file[0] = 'C';
    1a6f:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    1a73:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
    1a77:	83 c4 10             	add    $0x10,%esp
    1a7a:	eb 54                	jmp    1ad0 <concreate+0x80>
    1a7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid && (i % 3) == 1){
    1a80:	89 f0                	mov    %esi,%eax
    1a82:	89 f1                	mov    %esi,%ecx
    1a84:	f7 e7                	mul    %edi
    1a86:	d1 ea                	shr    %edx
    1a88:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1a8b:	29 c1                	sub    %eax,%ecx
    1a8d:	83 f9 01             	cmp    $0x1,%ecx
    1a90:	0f 84 ca 00 00 00    	je     1b60 <concreate+0x110>
      fd = open(file, O_CREATE | O_RDWR);
    1a96:	83 ec 08             	sub    $0x8,%esp
    1a99:	68 02 02 00 00       	push   $0x202
    1a9e:	53                   	push   %ebx
    1a9f:	e8 fe 23 00 00       	call   3ea2 <open>
      if(fd < 0){
    1aa4:	83 c4 10             	add    $0x10,%esp
    1aa7:	85 c0                	test   %eax,%eax
    1aa9:	78 6f                	js     1b1a <concreate+0xca>
      close(fd);
    1aab:	83 ec 0c             	sub    $0xc,%esp
    1aae:	50                   	push   %eax
    1aaf:	e8 d6 23 00 00       	call   3e8a <close>
    1ab4:	83 c4 10             	add    $0x10,%esp
      wait(null);
    1ab7:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    1aba:	83 c6 01             	add    $0x1,%esi
      wait(null);
    1abd:	6a 00                	push   $0x0
    1abf:	e8 a6 23 00 00       	call   3e6a <wait>
  for(i = 0; i < 40; i++){
    1ac4:	83 c4 10             	add    $0x10,%esp
    1ac7:	83 fe 28             	cmp    $0x28,%esi
    1aca:	0f 84 b0 00 00 00    	je     1b80 <concreate+0x130>
    unlink(file);
    1ad0:	83 ec 0c             	sub    $0xc,%esp
    file[1] = '0' + i;
    1ad3:	8d 46 30             	lea    0x30(%esi),%eax
    unlink(file);
    1ad6:	53                   	push   %ebx
    file[1] = '0' + i;
    1ad7:	88 45 ae             	mov    %al,-0x52(%ebp)
    unlink(file);
    1ada:	e8 d3 23 00 00       	call   3eb2 <unlink>
    pid = fork();
    1adf:	e8 76 23 00 00       	call   3e5a <fork>
    if(pid && (i % 3) == 1){
    1ae4:	83 c4 10             	add    $0x10,%esp
    1ae7:	85 c0                	test   %eax,%eax
    1ae9:	75 95                	jne    1a80 <concreate+0x30>
    } else if(pid == 0 && (i % 5) == 1){
    1aeb:	89 f0                	mov    %esi,%eax
    1aed:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    1af2:	f7 e2                	mul    %edx
    1af4:	c1 ea 02             	shr    $0x2,%edx
    1af7:	8d 04 92             	lea    (%edx,%edx,4),%eax
    1afa:	29 c6                	sub    %eax,%esi
    1afc:	83 fe 01             	cmp    $0x1,%esi
    1aff:	74 3f                	je     1b40 <concreate+0xf0>
      fd = open(file, O_CREATE | O_RDWR);
    1b01:	83 ec 08             	sub    $0x8,%esp
    1b04:	68 02 02 00 00       	push   $0x202
    1b09:	53                   	push   %ebx
    1b0a:	e8 93 23 00 00       	call   3ea2 <open>
      if(fd < 0){
    1b0f:	83 c4 10             	add    $0x10,%esp
    1b12:	85 c0                	test   %eax,%eax
    1b14:	0f 89 5c 02 00 00    	jns    1d76 <concreate+0x326>
        printf(1, "concreate create %s failed\n", file);
    1b1a:	83 ec 04             	sub    $0x4,%esp
    1b1d:	53                   	push   %ebx
    1b1e:	68 74 49 00 00       	push   $0x4974
    1b23:	6a 01                	push   $0x1
    1b25:	e8 86 24 00 00       	call   3fb0 <printf>
        exit(1);
    1b2a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1b31:	e8 2c 23 00 00       	call   3e62 <exit>
    1b36:	8d 76 00             	lea    0x0(%esi),%esi
    1b39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      link("C0", file);
    1b40:	83 ec 08             	sub    $0x8,%esp
    1b43:	53                   	push   %ebx
    1b44:	68 71 49 00 00       	push   $0x4971
    1b49:	e8 74 23 00 00       	call   3ec2 <link>
    1b4e:	83 c4 10             	add    $0x10,%esp
      exit(1);
    1b51:	83 ec 0c             	sub    $0xc,%esp
    1b54:	6a 01                	push   $0x1
    1b56:	e8 07 23 00 00       	call   3e62 <exit>
    1b5b:	90                   	nop
    1b5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      link("C0", file);
    1b60:	83 ec 08             	sub    $0x8,%esp
    1b63:	53                   	push   %ebx
    1b64:	68 71 49 00 00       	push   $0x4971
    1b69:	e8 54 23 00 00       	call   3ec2 <link>
    1b6e:	83 c4 10             	add    $0x10,%esp
    1b71:	e9 41 ff ff ff       	jmp    1ab7 <concreate+0x67>
    1b76:	8d 76 00             	lea    0x0(%esi),%esi
    1b79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
  memset(fa, 0, sizeof(fa));
    1b80:	8d 45 c0             	lea    -0x40(%ebp),%eax
    1b83:	83 ec 04             	sub    $0x4,%esp
    1b86:	6a 28                	push   $0x28
    1b88:	6a 00                	push   $0x0
    1b8a:	50                   	push   %eax
    1b8b:	e8 30 21 00 00       	call   3cc0 <memset>
  fd = open(".", 0);
    1b90:	5f                   	pop    %edi
    1b91:	58                   	pop    %eax
    1b92:	6a 00                	push   $0x0
    1b94:	68 7e 4b 00 00       	push   $0x4b7e
    1b99:	8d 7d b0             	lea    -0x50(%ebp),%edi
    1b9c:	e8 01 23 00 00       	call   3ea2 <open>
  while(read(fd, &de, sizeof(de)) > 0){
    1ba1:	83 c4 10             	add    $0x10,%esp
  fd = open(".", 0);
    1ba4:	89 c6                	mov    %eax,%esi
  n = 0;
    1ba6:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
    1bad:	8d 76 00             	lea    0x0(%esi),%esi
  while(read(fd, &de, sizeof(de)) > 0){
    1bb0:	83 ec 04             	sub    $0x4,%esp
    1bb3:	6a 10                	push   $0x10
    1bb5:	57                   	push   %edi
    1bb6:	56                   	push   %esi
    1bb7:	e8 be 22 00 00       	call   3e7a <read>
    1bbc:	83 c4 10             	add    $0x10,%esp
    1bbf:	85 c0                	test   %eax,%eax
    1bc1:	7e 3d                	jle    1c00 <concreate+0x1b0>
    if(de.inum == 0)
    1bc3:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1bc8:	74 e6                	je     1bb0 <concreate+0x160>
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    1bca:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    1bce:	75 e0                	jne    1bb0 <concreate+0x160>
    1bd0:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1bd4:	75 da                	jne    1bb0 <concreate+0x160>
      i = de.name[1] - '0';
    1bd6:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    1bda:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    1bdd:	83 f8 27             	cmp    $0x27,%eax
    1be0:	0f 87 73 01 00 00    	ja     1d59 <concreate+0x309>
      if(fa[i]){
    1be6:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    1beb:	0f 85 4b 01 00 00    	jne    1d3c <concreate+0x2ec>
      fa[i] = 1;
    1bf1:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    1bf6:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
    1bfa:	eb b4                	jmp    1bb0 <concreate+0x160>
    1bfc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  close(fd);
    1c00:	83 ec 0c             	sub    $0xc,%esp
    1c03:	56                   	push   %esi
    1c04:	e8 81 22 00 00       	call   3e8a <close>
  if(n != 40){
    1c09:	83 c4 10             	add    $0x10,%esp
    1c0c:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1c10:	0f 85 0c 01 00 00    	jne    1d22 <concreate+0x2d2>
  for(i = 0; i < 40; i++){
    1c16:	31 f6                	xor    %esi,%esi
    1c18:	eb 54                	jmp    1c6e <concreate+0x21e>
    1c1a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
       ((i % 3) == 1 && pid != 0)){
    1c20:	85 ff                	test   %edi,%edi
    1c22:	74 05                	je     1c29 <concreate+0x1d9>
    1c24:	83 fa 01             	cmp    $0x1,%edx
    1c27:	74 70                	je     1c99 <concreate+0x249>
      unlink(file);
    1c29:	83 ec 0c             	sub    $0xc,%esp
    1c2c:	53                   	push   %ebx
    1c2d:	e8 80 22 00 00       	call   3eb2 <unlink>
      unlink(file);
    1c32:	89 1c 24             	mov    %ebx,(%esp)
    1c35:	e8 78 22 00 00       	call   3eb2 <unlink>
      unlink(file);
    1c3a:	89 1c 24             	mov    %ebx,(%esp)
    1c3d:	e8 70 22 00 00       	call   3eb2 <unlink>
      unlink(file);
    1c42:	89 1c 24             	mov    %ebx,(%esp)
    1c45:	e8 68 22 00 00       	call   3eb2 <unlink>
    1c4a:	83 c4 10             	add    $0x10,%esp
    if(pid == 0)
    1c4d:	85 ff                	test   %edi,%edi
    1c4f:	0f 84 fc fe ff ff    	je     1b51 <concreate+0x101>
      wait(null);
    1c55:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    1c58:	83 c6 01             	add    $0x1,%esi
      wait(null);
    1c5b:	6a 00                	push   $0x0
    1c5d:	e8 08 22 00 00       	call   3e6a <wait>
  for(i = 0; i < 40; i++){
    1c62:	83 c4 10             	add    $0x10,%esp
    1c65:	83 fe 28             	cmp    $0x28,%esi
    1c68:	0f 84 82 00 00 00    	je     1cf0 <concreate+0x2a0>
    file[1] = '0' + i;
    1c6e:	8d 46 30             	lea    0x30(%esi),%eax
    1c71:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork();
    1c74:	e8 e1 21 00 00       	call   3e5a <fork>
    if(pid < 0){
    1c79:	85 c0                	test   %eax,%eax
    pid = fork();
    1c7b:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    1c7d:	0f 88 84 00 00 00    	js     1d07 <concreate+0x2b7>
    if(((i % 3) == 0 && pid == 0) ||
    1c83:	b8 ab aa aa aa       	mov    $0xaaaaaaab,%eax
    1c88:	f7 e6                	mul    %esi
    1c8a:	d1 ea                	shr    %edx
    1c8c:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1c8f:	89 f2                	mov    %esi,%edx
    1c91:	29 c2                	sub    %eax,%edx
    1c93:	89 d0                	mov    %edx,%eax
    1c95:	09 f8                	or     %edi,%eax
    1c97:	75 87                	jne    1c20 <concreate+0x1d0>
      close(open(file, 0));
    1c99:	83 ec 08             	sub    $0x8,%esp
    1c9c:	6a 00                	push   $0x0
    1c9e:	53                   	push   %ebx
    1c9f:	e8 fe 21 00 00       	call   3ea2 <open>
    1ca4:	89 04 24             	mov    %eax,(%esp)
    1ca7:	e8 de 21 00 00       	call   3e8a <close>
      close(open(file, 0));
    1cac:	58                   	pop    %eax
    1cad:	5a                   	pop    %edx
    1cae:	6a 00                	push   $0x0
    1cb0:	53                   	push   %ebx
    1cb1:	e8 ec 21 00 00       	call   3ea2 <open>
    1cb6:	89 04 24             	mov    %eax,(%esp)
    1cb9:	e8 cc 21 00 00       	call   3e8a <close>
      close(open(file, 0));
    1cbe:	59                   	pop    %ecx
    1cbf:	58                   	pop    %eax
    1cc0:	6a 00                	push   $0x0
    1cc2:	53                   	push   %ebx
    1cc3:	e8 da 21 00 00       	call   3ea2 <open>
    1cc8:	89 04 24             	mov    %eax,(%esp)
    1ccb:	e8 ba 21 00 00       	call   3e8a <close>
      close(open(file, 0));
    1cd0:	58                   	pop    %eax
    1cd1:	5a                   	pop    %edx
    1cd2:	6a 00                	push   $0x0
    1cd4:	53                   	push   %ebx
    1cd5:	e8 c8 21 00 00       	call   3ea2 <open>
    1cda:	89 04 24             	mov    %eax,(%esp)
    1cdd:	e8 a8 21 00 00       	call   3e8a <close>
    1ce2:	83 c4 10             	add    $0x10,%esp
    1ce5:	e9 63 ff ff ff       	jmp    1c4d <concreate+0x1fd>
    1cea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  printf(1, "concreate ok\n");
    1cf0:	83 ec 08             	sub    $0x8,%esp
    1cf3:	68 c6 49 00 00       	push   $0x49c6
    1cf8:	6a 01                	push   $0x1
    1cfa:	e8 b1 22 00 00       	call   3fb0 <printf>
}
    1cff:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1d02:	5b                   	pop    %ebx
    1d03:	5e                   	pop    %esi
    1d04:	5f                   	pop    %edi
    1d05:	5d                   	pop    %ebp
    1d06:	c3                   	ret    
      printf(1, "fork failed\n");
    1d07:	83 ec 08             	sub    $0x8,%esp
    1d0a:	68 49 52 00 00       	push   $0x5249
    1d0f:	6a 01                	push   $0x1
    1d11:	e8 9a 22 00 00       	call   3fb0 <printf>
      exit(1);
    1d16:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d1d:	e8 40 21 00 00       	call   3e62 <exit>
    printf(1, "concreate not enough files in directory listing\n");
    1d22:	51                   	push   %ecx
    1d23:	51                   	push   %ecx
    1d24:	68 10 55 00 00       	push   $0x5510
    1d29:	6a 01                	push   $0x1
    1d2b:	e8 80 22 00 00       	call   3fb0 <printf>
    exit(1);
    1d30:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d37:	e8 26 21 00 00       	call   3e62 <exit>
        printf(1, "concreate duplicate file %s\n", de.name);
    1d3c:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1d3f:	53                   	push   %ebx
    1d40:	50                   	push   %eax
    1d41:	68 a9 49 00 00       	push   $0x49a9
    1d46:	6a 01                	push   $0x1
    1d48:	e8 63 22 00 00       	call   3fb0 <printf>
        exit(1);
    1d4d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d54:	e8 09 21 00 00       	call   3e62 <exit>
        printf(1, "concreate weird file %s\n", de.name);
    1d59:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1d5c:	56                   	push   %esi
    1d5d:	50                   	push   %eax
    1d5e:	68 90 49 00 00       	push   $0x4990
    1d63:	6a 01                	push   $0x1
    1d65:	e8 46 22 00 00       	call   3fb0 <printf>
        exit(1);
    1d6a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d71:	e8 ec 20 00 00       	call   3e62 <exit>
      close(fd);
    1d76:	83 ec 0c             	sub    $0xc,%esp
    1d79:	50                   	push   %eax
    1d7a:	e8 0b 21 00 00       	call   3e8a <close>
    1d7f:	83 c4 10             	add    $0x10,%esp
    1d82:	e9 ca fd ff ff       	jmp    1b51 <concreate+0x101>
    1d87:	89 f6                	mov    %esi,%esi
    1d89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001d90 <linkunlink>:
{
    1d90:	55                   	push   %ebp
    1d91:	89 e5                	mov    %esp,%ebp
    1d93:	57                   	push   %edi
    1d94:	56                   	push   %esi
    1d95:	53                   	push   %ebx
    1d96:	83 ec 24             	sub    $0x24,%esp
  printf(1, "linkunlink test\n");
    1d99:	68 d4 49 00 00       	push   $0x49d4
    1d9e:	6a 01                	push   $0x1
    1da0:	e8 0b 22 00 00       	call   3fb0 <printf>
  unlink("x");
    1da5:	c7 04 24 61 4c 00 00 	movl   $0x4c61,(%esp)
    1dac:	e8 01 21 00 00       	call   3eb2 <unlink>
  pid = fork();
    1db1:	e8 a4 20 00 00       	call   3e5a <fork>
  if(pid < 0){
    1db6:	83 c4 10             	add    $0x10,%esp
    1db9:	85 c0                	test   %eax,%eax
  pid = fork();
    1dbb:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    1dbe:	0f 88 b6 00 00 00    	js     1e7a <linkunlink+0xea>
  unsigned int x = (pid ? 1 : 97);
    1dc4:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    1dc8:	bb 64 00 00 00       	mov    $0x64,%ebx
    if((x % 3) == 0){
    1dcd:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  unsigned int x = (pid ? 1 : 97);
    1dd2:	19 ff                	sbb    %edi,%edi
    1dd4:	83 e7 60             	and    $0x60,%edi
    1dd7:	83 c7 01             	add    $0x1,%edi
    1dda:	eb 1e                	jmp    1dfa <linkunlink+0x6a>
    1ddc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if((x % 3) == 1){
    1de0:	83 fa 01             	cmp    $0x1,%edx
    1de3:	74 7b                	je     1e60 <linkunlink+0xd0>
      unlink("x");
    1de5:	83 ec 0c             	sub    $0xc,%esp
    1de8:	68 61 4c 00 00       	push   $0x4c61
    1ded:	e8 c0 20 00 00       	call   3eb2 <unlink>
    1df2:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    1df5:	83 eb 01             	sub    $0x1,%ebx
    1df8:	74 3d                	je     1e37 <linkunlink+0xa7>
    x = x * 1103515245 + 12345;
    1dfa:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    1e00:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    1e06:	89 f8                	mov    %edi,%eax
    1e08:	f7 e6                	mul    %esi
    1e0a:	d1 ea                	shr    %edx
    1e0c:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1e0f:	89 fa                	mov    %edi,%edx
    1e11:	29 c2                	sub    %eax,%edx
    1e13:	75 cb                	jne    1de0 <linkunlink+0x50>
      close(open("x", O_RDWR | O_CREATE));
    1e15:	83 ec 08             	sub    $0x8,%esp
    1e18:	68 02 02 00 00       	push   $0x202
    1e1d:	68 61 4c 00 00       	push   $0x4c61
    1e22:	e8 7b 20 00 00       	call   3ea2 <open>
    1e27:	89 04 24             	mov    %eax,(%esp)
    1e2a:	e8 5b 20 00 00       	call   3e8a <close>
    1e2f:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    1e32:	83 eb 01             	sub    $0x1,%ebx
    1e35:	75 c3                	jne    1dfa <linkunlink+0x6a>
  if(pid)
    1e37:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
    1e3a:	85 c9                	test   %ecx,%ecx
    1e3c:	74 56                	je     1e94 <linkunlink+0x104>
    wait(null);
    1e3e:	83 ec 0c             	sub    $0xc,%esp
    1e41:	6a 00                	push   $0x0
    1e43:	e8 22 20 00 00       	call   3e6a <wait>
  printf(1, "linkunlink ok\n");
    1e48:	58                   	pop    %eax
    1e49:	5a                   	pop    %edx
    1e4a:	68 e9 49 00 00       	push   $0x49e9
    1e4f:	6a 01                	push   $0x1
    1e51:	e8 5a 21 00 00       	call   3fb0 <printf>
}
    1e56:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1e59:	5b                   	pop    %ebx
    1e5a:	5e                   	pop    %esi
    1e5b:	5f                   	pop    %edi
    1e5c:	5d                   	pop    %ebp
    1e5d:	c3                   	ret    
    1e5e:	66 90                	xchg   %ax,%ax
      link("cat", "x");
    1e60:	83 ec 08             	sub    $0x8,%esp
    1e63:	68 61 4c 00 00       	push   $0x4c61
    1e68:	68 e5 49 00 00       	push   $0x49e5
    1e6d:	e8 50 20 00 00       	call   3ec2 <link>
    1e72:	83 c4 10             	add    $0x10,%esp
    1e75:	e9 7b ff ff ff       	jmp    1df5 <linkunlink+0x65>
    printf(1, "fork failed\n");
    1e7a:	53                   	push   %ebx
    1e7b:	53                   	push   %ebx
    1e7c:	68 49 52 00 00       	push   $0x5249
    1e81:	6a 01                	push   $0x1
    1e83:	e8 28 21 00 00       	call   3fb0 <printf>
    exit(1);
    1e88:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1e8f:	e8 ce 1f 00 00       	call   3e62 <exit>
    exit(1);
    1e94:	83 ec 0c             	sub    $0xc,%esp
    1e97:	6a 01                	push   $0x1
    1e99:	e8 c4 1f 00 00       	call   3e62 <exit>
    1e9e:	66 90                	xchg   %ax,%ax

00001ea0 <bigdir>:
{
    1ea0:	55                   	push   %ebp
    1ea1:	89 e5                	mov    %esp,%ebp
    1ea3:	57                   	push   %edi
    1ea4:	56                   	push   %esi
    1ea5:	53                   	push   %ebx
    1ea6:	83 ec 24             	sub    $0x24,%esp
  printf(1, "bigdir test\n");
    1ea9:	68 f8 49 00 00       	push   $0x49f8
    1eae:	6a 01                	push   $0x1
    1eb0:	e8 fb 20 00 00       	call   3fb0 <printf>
  unlink("bd");
    1eb5:	c7 04 24 05 4a 00 00 	movl   $0x4a05,(%esp)
    1ebc:	e8 f1 1f 00 00       	call   3eb2 <unlink>
  fd = open("bd", O_CREATE);
    1ec1:	5a                   	pop    %edx
    1ec2:	59                   	pop    %ecx
    1ec3:	68 00 02 00 00       	push   $0x200
    1ec8:	68 05 4a 00 00       	push   $0x4a05
    1ecd:	e8 d0 1f 00 00       	call   3ea2 <open>
  if(fd < 0){
    1ed2:	83 c4 10             	add    $0x10,%esp
    1ed5:	85 c0                	test   %eax,%eax
    1ed7:	0f 88 ec 00 00 00    	js     1fc9 <bigdir+0x129>
  close(fd);
    1edd:	83 ec 0c             	sub    $0xc,%esp
    1ee0:	8d 7d de             	lea    -0x22(%ebp),%edi
  for(i = 0; i < 500; i++){
    1ee3:	31 f6                	xor    %esi,%esi
  close(fd);
    1ee5:	50                   	push   %eax
    1ee6:	e8 9f 1f 00 00       	call   3e8a <close>
    1eeb:	83 c4 10             	add    $0x10,%esp
    1eee:	66 90                	xchg   %ax,%ax
    name[1] = '0' + (i / 64);
    1ef0:	89 f0                	mov    %esi,%eax
    if(link("bd", name) != 0){
    1ef2:	83 ec 08             	sub    $0x8,%esp
    name[0] = 'x';
    1ef5:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    1ef9:	c1 f8 06             	sar    $0x6,%eax
    if(link("bd", name) != 0){
    1efc:	57                   	push   %edi
    1efd:	68 05 4a 00 00       	push   $0x4a05
    name[1] = '0' + (i / 64);
    1f02:	83 c0 30             	add    $0x30,%eax
    name[3] = '\0';
    1f05:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[1] = '0' + (i / 64);
    1f09:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    1f0c:	89 f0                	mov    %esi,%eax
    1f0e:	83 e0 3f             	and    $0x3f,%eax
    1f11:	83 c0 30             	add    $0x30,%eax
    1f14:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(link("bd", name) != 0){
    1f17:	e8 a6 1f 00 00       	call   3ec2 <link>
    1f1c:	83 c4 10             	add    $0x10,%esp
    1f1f:	85 c0                	test   %eax,%eax
    1f21:	89 c3                	mov    %eax,%ebx
    1f23:	75 6e                	jne    1f93 <bigdir+0xf3>
  for(i = 0; i < 500; i++){
    1f25:	83 c6 01             	add    $0x1,%esi
    1f28:	81 fe f4 01 00 00    	cmp    $0x1f4,%esi
    1f2e:	75 c0                	jne    1ef0 <bigdir+0x50>
  unlink("bd");
    1f30:	83 ec 0c             	sub    $0xc,%esp
    1f33:	68 05 4a 00 00       	push   $0x4a05
    1f38:	e8 75 1f 00 00       	call   3eb2 <unlink>
    1f3d:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + (i / 64);
    1f40:	89 d8                	mov    %ebx,%eax
    if(unlink(name) != 0){
    1f42:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'x';
    1f45:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    1f49:	c1 f8 06             	sar    $0x6,%eax
    if(unlink(name) != 0){
    1f4c:	57                   	push   %edi
    name[3] = '\0';
    1f4d:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[1] = '0' + (i / 64);
    1f51:	83 c0 30             	add    $0x30,%eax
    1f54:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    1f57:	89 d8                	mov    %ebx,%eax
    1f59:	83 e0 3f             	and    $0x3f,%eax
    1f5c:	83 c0 30             	add    $0x30,%eax
    1f5f:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(unlink(name) != 0){
    1f62:	e8 4b 1f 00 00       	call   3eb2 <unlink>
    1f67:	83 c4 10             	add    $0x10,%esp
    1f6a:	85 c0                	test   %eax,%eax
    1f6c:	75 40                	jne    1fae <bigdir+0x10e>
  for(i = 0; i < 500; i++){
    1f6e:	83 c3 01             	add    $0x1,%ebx
    1f71:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1f77:	75 c7                	jne    1f40 <bigdir+0xa0>
  printf(1, "bigdir ok\n");
    1f79:	83 ec 08             	sub    $0x8,%esp
    1f7c:	68 47 4a 00 00       	push   $0x4a47
    1f81:	6a 01                	push   $0x1
    1f83:	e8 28 20 00 00       	call   3fb0 <printf>
}
    1f88:	83 c4 10             	add    $0x10,%esp
    1f8b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1f8e:	5b                   	pop    %ebx
    1f8f:	5e                   	pop    %esi
    1f90:	5f                   	pop    %edi
    1f91:	5d                   	pop    %ebp
    1f92:	c3                   	ret    
      printf(1, "bigdir link failed\n");
    1f93:	83 ec 08             	sub    $0x8,%esp
    1f96:	68 1e 4a 00 00       	push   $0x4a1e
    1f9b:	6a 01                	push   $0x1
    1f9d:	e8 0e 20 00 00       	call   3fb0 <printf>
      exit(1);
    1fa2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1fa9:	e8 b4 1e 00 00       	call   3e62 <exit>
      printf(1, "bigdir unlink failed");
    1fae:	83 ec 08             	sub    $0x8,%esp
    1fb1:	68 32 4a 00 00       	push   $0x4a32
    1fb6:	6a 01                	push   $0x1
    1fb8:	e8 f3 1f 00 00       	call   3fb0 <printf>
      exit(1);
    1fbd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1fc4:	e8 99 1e 00 00       	call   3e62 <exit>
    printf(1, "bigdir create failed\n");
    1fc9:	50                   	push   %eax
    1fca:	50                   	push   %eax
    1fcb:	68 08 4a 00 00       	push   $0x4a08
    1fd0:	6a 01                	push   $0x1
    1fd2:	e8 d9 1f 00 00       	call   3fb0 <printf>
    exit(1);
    1fd7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1fde:	e8 7f 1e 00 00       	call   3e62 <exit>
    1fe3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1fe9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001ff0 <subdir>:
{
    1ff0:	55                   	push   %ebp
    1ff1:	89 e5                	mov    %esp,%ebp
    1ff3:	53                   	push   %ebx
    1ff4:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "subdir test\n");
    1ff7:	68 52 4a 00 00       	push   $0x4a52
    1ffc:	6a 01                	push   $0x1
    1ffe:	e8 ad 1f 00 00       	call   3fb0 <printf>
  unlink("ff");
    2003:	c7 04 24 db 4a 00 00 	movl   $0x4adb,(%esp)
    200a:	e8 a3 1e 00 00       	call   3eb2 <unlink>
  if(mkdir("dd") != 0){
    200f:	c7 04 24 78 4b 00 00 	movl   $0x4b78,(%esp)
    2016:	e8 af 1e 00 00       	call   3eca <mkdir>
    201b:	83 c4 10             	add    $0x10,%esp
    201e:	85 c0                	test   %eax,%eax
    2020:	0f 85 4d 06 00 00    	jne    2673 <subdir+0x683>
  fd = open("dd/ff", O_CREATE | O_RDWR);
    2026:	83 ec 08             	sub    $0x8,%esp
    2029:	68 02 02 00 00       	push   $0x202
    202e:	68 b1 4a 00 00       	push   $0x4ab1
    2033:	e8 6a 1e 00 00       	call   3ea2 <open>
  if(fd < 0){
    2038:	83 c4 10             	add    $0x10,%esp
    203b:	85 c0                	test   %eax,%eax
  fd = open("dd/ff", O_CREATE | O_RDWR);
    203d:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    203f:	0f 88 14 06 00 00    	js     2659 <subdir+0x669>
  write(fd, "ff", 2);
    2045:	83 ec 04             	sub    $0x4,%esp
    2048:	6a 02                	push   $0x2
    204a:	68 db 4a 00 00       	push   $0x4adb
    204f:	50                   	push   %eax
    2050:	e8 2d 1e 00 00       	call   3e82 <write>
  close(fd);
    2055:	89 1c 24             	mov    %ebx,(%esp)
    2058:	e8 2d 1e 00 00       	call   3e8a <close>
  if(unlink("dd") >= 0){
    205d:	c7 04 24 78 4b 00 00 	movl   $0x4b78,(%esp)
    2064:	e8 49 1e 00 00       	call   3eb2 <unlink>
    2069:	83 c4 10             	add    $0x10,%esp
    206c:	85 c0                	test   %eax,%eax
    206e:	0f 89 cb 05 00 00    	jns    263f <subdir+0x64f>
  if(mkdir("/dd/dd") != 0){
    2074:	83 ec 0c             	sub    $0xc,%esp
    2077:	68 8c 4a 00 00       	push   $0x4a8c
    207c:	e8 49 1e 00 00       	call   3eca <mkdir>
    2081:	83 c4 10             	add    $0x10,%esp
    2084:	85 c0                	test   %eax,%eax
    2086:	0f 85 99 05 00 00    	jne    2625 <subdir+0x635>
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    208c:	83 ec 08             	sub    $0x8,%esp
    208f:	68 02 02 00 00       	push   $0x202
    2094:	68 ae 4a 00 00       	push   $0x4aae
    2099:	e8 04 1e 00 00       	call   3ea2 <open>
  if(fd < 0){
    209e:	83 c4 10             	add    $0x10,%esp
    20a1:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    20a3:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    20a5:	0f 88 5c 04 00 00    	js     2507 <subdir+0x517>
  write(fd, "FF", 2);
    20ab:	83 ec 04             	sub    $0x4,%esp
    20ae:	6a 02                	push   $0x2
    20b0:	68 cf 4a 00 00       	push   $0x4acf
    20b5:	50                   	push   %eax
    20b6:	e8 c7 1d 00 00       	call   3e82 <write>
  close(fd);
    20bb:	89 1c 24             	mov    %ebx,(%esp)
    20be:	e8 c7 1d 00 00       	call   3e8a <close>
  fd = open("dd/dd/../ff", 0);
    20c3:	58                   	pop    %eax
    20c4:	5a                   	pop    %edx
    20c5:	6a 00                	push   $0x0
    20c7:	68 d2 4a 00 00       	push   $0x4ad2
    20cc:	e8 d1 1d 00 00       	call   3ea2 <open>
  if(fd < 0){
    20d1:	83 c4 10             	add    $0x10,%esp
    20d4:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/../ff", 0);
    20d6:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    20d8:	0f 88 0f 04 00 00    	js     24ed <subdir+0x4fd>
  cc = read(fd, buf, sizeof(buf));
    20de:	83 ec 04             	sub    $0x4,%esp
    20e1:	68 00 20 00 00       	push   $0x2000
    20e6:	68 a0 8b 00 00       	push   $0x8ba0
    20eb:	50                   	push   %eax
    20ec:	e8 89 1d 00 00       	call   3e7a <read>
  if(cc != 2 || buf[0] != 'f'){
    20f1:	83 c4 10             	add    $0x10,%esp
    20f4:	83 f8 02             	cmp    $0x2,%eax
    20f7:	0f 85 3a 03 00 00    	jne    2437 <subdir+0x447>
    20fd:	80 3d a0 8b 00 00 66 	cmpb   $0x66,0x8ba0
    2104:	0f 85 2d 03 00 00    	jne    2437 <subdir+0x447>
  close(fd);
    210a:	83 ec 0c             	sub    $0xc,%esp
    210d:	53                   	push   %ebx
    210e:	e8 77 1d 00 00       	call   3e8a <close>
  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    2113:	5b                   	pop    %ebx
    2114:	58                   	pop    %eax
    2115:	68 12 4b 00 00       	push   $0x4b12
    211a:	68 ae 4a 00 00       	push   $0x4aae
    211f:	e8 9e 1d 00 00       	call   3ec2 <link>
    2124:	83 c4 10             	add    $0x10,%esp
    2127:	85 c0                	test   %eax,%eax
    2129:	0f 85 0c 04 00 00    	jne    253b <subdir+0x54b>
  if(unlink("dd/dd/ff") != 0){
    212f:	83 ec 0c             	sub    $0xc,%esp
    2132:	68 ae 4a 00 00       	push   $0x4aae
    2137:	e8 76 1d 00 00       	call   3eb2 <unlink>
    213c:	83 c4 10             	add    $0x10,%esp
    213f:	85 c0                	test   %eax,%eax
    2141:	0f 85 24 03 00 00    	jne    246b <subdir+0x47b>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2147:	83 ec 08             	sub    $0x8,%esp
    214a:	6a 00                	push   $0x0
    214c:	68 ae 4a 00 00       	push   $0x4aae
    2151:	e8 4c 1d 00 00       	call   3ea2 <open>
    2156:	83 c4 10             	add    $0x10,%esp
    2159:	85 c0                	test   %eax,%eax
    215b:	0f 89 aa 04 00 00    	jns    260b <subdir+0x61b>
  if(chdir("dd") != 0){
    2161:	83 ec 0c             	sub    $0xc,%esp
    2164:	68 78 4b 00 00       	push   $0x4b78
    2169:	e8 64 1d 00 00       	call   3ed2 <chdir>
    216e:	83 c4 10             	add    $0x10,%esp
    2171:	85 c0                	test   %eax,%eax
    2173:	0f 85 78 04 00 00    	jne    25f1 <subdir+0x601>
  if(chdir("dd/../../dd") != 0){
    2179:	83 ec 0c             	sub    $0xc,%esp
    217c:	68 46 4b 00 00       	push   $0x4b46
    2181:	e8 4c 1d 00 00       	call   3ed2 <chdir>
    2186:	83 c4 10             	add    $0x10,%esp
    2189:	85 c0                	test   %eax,%eax
    218b:	0f 85 c0 02 00 00    	jne    2451 <subdir+0x461>
  if(chdir("dd/../../../dd") != 0){
    2191:	83 ec 0c             	sub    $0xc,%esp
    2194:	68 6c 4b 00 00       	push   $0x4b6c
    2199:	e8 34 1d 00 00       	call   3ed2 <chdir>
    219e:	83 c4 10             	add    $0x10,%esp
    21a1:	85 c0                	test   %eax,%eax
    21a3:	0f 85 a8 02 00 00    	jne    2451 <subdir+0x461>
  if(chdir("./..") != 0){
    21a9:	83 ec 0c             	sub    $0xc,%esp
    21ac:	68 7b 4b 00 00       	push   $0x4b7b
    21b1:	e8 1c 1d 00 00       	call   3ed2 <chdir>
    21b6:	83 c4 10             	add    $0x10,%esp
    21b9:	85 c0                	test   %eax,%eax
    21bb:	0f 85 60 03 00 00    	jne    2521 <subdir+0x531>
  fd = open("dd/dd/ffff", 0);
    21c1:	83 ec 08             	sub    $0x8,%esp
    21c4:	6a 00                	push   $0x0
    21c6:	68 12 4b 00 00       	push   $0x4b12
    21cb:	e8 d2 1c 00 00       	call   3ea2 <open>
  if(fd < 0){
    21d0:	83 c4 10             	add    $0x10,%esp
    21d3:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ffff", 0);
    21d5:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    21d7:	0f 88 ce 05 00 00    	js     27ab <subdir+0x7bb>
  if(read(fd, buf, sizeof(buf)) != 2){
    21dd:	83 ec 04             	sub    $0x4,%esp
    21e0:	68 00 20 00 00       	push   $0x2000
    21e5:	68 a0 8b 00 00       	push   $0x8ba0
    21ea:	50                   	push   %eax
    21eb:	e8 8a 1c 00 00       	call   3e7a <read>
    21f0:	83 c4 10             	add    $0x10,%esp
    21f3:	83 f8 02             	cmp    $0x2,%eax
    21f6:	0f 85 95 05 00 00    	jne    2791 <subdir+0x7a1>
  close(fd);
    21fc:	83 ec 0c             	sub    $0xc,%esp
    21ff:	53                   	push   %ebx
    2200:	e8 85 1c 00 00       	call   3e8a <close>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2205:	59                   	pop    %ecx
    2206:	5b                   	pop    %ebx
    2207:	6a 00                	push   $0x0
    2209:	68 ae 4a 00 00       	push   $0x4aae
    220e:	e8 8f 1c 00 00       	call   3ea2 <open>
    2213:	83 c4 10             	add    $0x10,%esp
    2216:	85 c0                	test   %eax,%eax
    2218:	0f 89 81 02 00 00    	jns    249f <subdir+0x4af>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    221e:	83 ec 08             	sub    $0x8,%esp
    2221:	68 02 02 00 00       	push   $0x202
    2226:	68 c6 4b 00 00       	push   $0x4bc6
    222b:	e8 72 1c 00 00       	call   3ea2 <open>
    2230:	83 c4 10             	add    $0x10,%esp
    2233:	85 c0                	test   %eax,%eax
    2235:	0f 89 4a 02 00 00    	jns    2485 <subdir+0x495>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    223b:	83 ec 08             	sub    $0x8,%esp
    223e:	68 02 02 00 00       	push   $0x202
    2243:	68 eb 4b 00 00       	push   $0x4beb
    2248:	e8 55 1c 00 00       	call   3ea2 <open>
    224d:	83 c4 10             	add    $0x10,%esp
    2250:	85 c0                	test   %eax,%eax
    2252:	0f 89 7f 03 00 00    	jns    25d7 <subdir+0x5e7>
  if(open("dd", O_CREATE) >= 0){
    2258:	83 ec 08             	sub    $0x8,%esp
    225b:	68 00 02 00 00       	push   $0x200
    2260:	68 78 4b 00 00       	push   $0x4b78
    2265:	e8 38 1c 00 00       	call   3ea2 <open>
    226a:	83 c4 10             	add    $0x10,%esp
    226d:	85 c0                	test   %eax,%eax
    226f:	0f 89 48 03 00 00    	jns    25bd <subdir+0x5cd>
  if(open("dd", O_RDWR) >= 0){
    2275:	83 ec 08             	sub    $0x8,%esp
    2278:	6a 02                	push   $0x2
    227a:	68 78 4b 00 00       	push   $0x4b78
    227f:	e8 1e 1c 00 00       	call   3ea2 <open>
    2284:	83 c4 10             	add    $0x10,%esp
    2287:	85 c0                	test   %eax,%eax
    2289:	0f 89 14 03 00 00    	jns    25a3 <subdir+0x5b3>
  if(open("dd", O_WRONLY) >= 0){
    228f:	83 ec 08             	sub    $0x8,%esp
    2292:	6a 01                	push   $0x1
    2294:	68 78 4b 00 00       	push   $0x4b78
    2299:	e8 04 1c 00 00       	call   3ea2 <open>
    229e:	83 c4 10             	add    $0x10,%esp
    22a1:	85 c0                	test   %eax,%eax
    22a3:	0f 89 e0 02 00 00    	jns    2589 <subdir+0x599>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    22a9:	83 ec 08             	sub    $0x8,%esp
    22ac:	68 5a 4c 00 00       	push   $0x4c5a
    22b1:	68 c6 4b 00 00       	push   $0x4bc6
    22b6:	e8 07 1c 00 00       	call   3ec2 <link>
    22bb:	83 c4 10             	add    $0x10,%esp
    22be:	85 c0                	test   %eax,%eax
    22c0:	0f 84 a9 02 00 00    	je     256f <subdir+0x57f>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    22c6:	83 ec 08             	sub    $0x8,%esp
    22c9:	68 5a 4c 00 00       	push   $0x4c5a
    22ce:	68 eb 4b 00 00       	push   $0x4beb
    22d3:	e8 ea 1b 00 00       	call   3ec2 <link>
    22d8:	83 c4 10             	add    $0x10,%esp
    22db:	85 c0                	test   %eax,%eax
    22dd:	0f 84 72 02 00 00    	je     2555 <subdir+0x565>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    22e3:	83 ec 08             	sub    $0x8,%esp
    22e6:	68 12 4b 00 00       	push   $0x4b12
    22eb:	68 b1 4a 00 00       	push   $0x4ab1
    22f0:	e8 cd 1b 00 00       	call   3ec2 <link>
    22f5:	83 c4 10             	add    $0x10,%esp
    22f8:	85 c0                	test   %eax,%eax
    22fa:	0f 84 d3 01 00 00    	je     24d3 <subdir+0x4e3>
  if(mkdir("dd/ff/ff") == 0){
    2300:	83 ec 0c             	sub    $0xc,%esp
    2303:	68 c6 4b 00 00       	push   $0x4bc6
    2308:	e8 bd 1b 00 00       	call   3eca <mkdir>
    230d:	83 c4 10             	add    $0x10,%esp
    2310:	85 c0                	test   %eax,%eax
    2312:	0f 84 a1 01 00 00    	je     24b9 <subdir+0x4c9>
  if(mkdir("dd/xx/ff") == 0){
    2318:	83 ec 0c             	sub    $0xc,%esp
    231b:	68 eb 4b 00 00       	push   $0x4beb
    2320:	e8 a5 1b 00 00       	call   3eca <mkdir>
    2325:	83 c4 10             	add    $0x10,%esp
    2328:	85 c0                	test   %eax,%eax
    232a:	0f 84 47 04 00 00    	je     2777 <subdir+0x787>
  if(mkdir("dd/dd/ffff") == 0){
    2330:	83 ec 0c             	sub    $0xc,%esp
    2333:	68 12 4b 00 00       	push   $0x4b12
    2338:	e8 8d 1b 00 00       	call   3eca <mkdir>
    233d:	83 c4 10             	add    $0x10,%esp
    2340:	85 c0                	test   %eax,%eax
    2342:	0f 84 15 04 00 00    	je     275d <subdir+0x76d>
  if(unlink("dd/xx/ff") == 0){
    2348:	83 ec 0c             	sub    $0xc,%esp
    234b:	68 eb 4b 00 00       	push   $0x4beb
    2350:	e8 5d 1b 00 00       	call   3eb2 <unlink>
    2355:	83 c4 10             	add    $0x10,%esp
    2358:	85 c0                	test   %eax,%eax
    235a:	0f 84 e3 03 00 00    	je     2743 <subdir+0x753>
  if(unlink("dd/ff/ff") == 0){
    2360:	83 ec 0c             	sub    $0xc,%esp
    2363:	68 c6 4b 00 00       	push   $0x4bc6
    2368:	e8 45 1b 00 00       	call   3eb2 <unlink>
    236d:	83 c4 10             	add    $0x10,%esp
    2370:	85 c0                	test   %eax,%eax
    2372:	0f 84 b1 03 00 00    	je     2729 <subdir+0x739>
  if(chdir("dd/ff") == 0){
    2378:	83 ec 0c             	sub    $0xc,%esp
    237b:	68 b1 4a 00 00       	push   $0x4ab1
    2380:	e8 4d 1b 00 00       	call   3ed2 <chdir>
    2385:	83 c4 10             	add    $0x10,%esp
    2388:	85 c0                	test   %eax,%eax
    238a:	0f 84 7f 03 00 00    	je     270f <subdir+0x71f>
  if(chdir("dd/xx") == 0){
    2390:	83 ec 0c             	sub    $0xc,%esp
    2393:	68 5d 4c 00 00       	push   $0x4c5d
    2398:	e8 35 1b 00 00       	call   3ed2 <chdir>
    239d:	83 c4 10             	add    $0x10,%esp
    23a0:	85 c0                	test   %eax,%eax
    23a2:	0f 84 4d 03 00 00    	je     26f5 <subdir+0x705>
  if(unlink("dd/dd/ffff") != 0){
    23a8:	83 ec 0c             	sub    $0xc,%esp
    23ab:	68 12 4b 00 00       	push   $0x4b12
    23b0:	e8 fd 1a 00 00       	call   3eb2 <unlink>
    23b5:	83 c4 10             	add    $0x10,%esp
    23b8:	85 c0                	test   %eax,%eax
    23ba:	0f 85 ab 00 00 00    	jne    246b <subdir+0x47b>
  if(unlink("dd/ff") != 0){
    23c0:	83 ec 0c             	sub    $0xc,%esp
    23c3:	68 b1 4a 00 00       	push   $0x4ab1
    23c8:	e8 e5 1a 00 00       	call   3eb2 <unlink>
    23cd:	83 c4 10             	add    $0x10,%esp
    23d0:	85 c0                	test   %eax,%eax
    23d2:	0f 85 03 03 00 00    	jne    26db <subdir+0x6eb>
  if(unlink("dd") == 0){
    23d8:	83 ec 0c             	sub    $0xc,%esp
    23db:	68 78 4b 00 00       	push   $0x4b78
    23e0:	e8 cd 1a 00 00       	call   3eb2 <unlink>
    23e5:	83 c4 10             	add    $0x10,%esp
    23e8:	85 c0                	test   %eax,%eax
    23ea:	0f 84 d1 02 00 00    	je     26c1 <subdir+0x6d1>
  if(unlink("dd/dd") < 0){
    23f0:	83 ec 0c             	sub    $0xc,%esp
    23f3:	68 8d 4a 00 00       	push   $0x4a8d
    23f8:	e8 b5 1a 00 00       	call   3eb2 <unlink>
    23fd:	83 c4 10             	add    $0x10,%esp
    2400:	85 c0                	test   %eax,%eax
    2402:	0f 88 9f 02 00 00    	js     26a7 <subdir+0x6b7>
  if(unlink("dd") < 0){
    2408:	83 ec 0c             	sub    $0xc,%esp
    240b:	68 78 4b 00 00       	push   $0x4b78
    2410:	e8 9d 1a 00 00       	call   3eb2 <unlink>
    2415:	83 c4 10             	add    $0x10,%esp
    2418:	85 c0                	test   %eax,%eax
    241a:	0f 88 6d 02 00 00    	js     268d <subdir+0x69d>
  printf(1, "subdir ok\n");
    2420:	83 ec 08             	sub    $0x8,%esp
    2423:	68 5a 4d 00 00       	push   $0x4d5a
    2428:	6a 01                	push   $0x1
    242a:	e8 81 1b 00 00       	call   3fb0 <printf>
}
    242f:	83 c4 10             	add    $0x10,%esp
    2432:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2435:	c9                   	leave  
    2436:	c3                   	ret    
    printf(1, "dd/dd/../ff wrong content\n");
    2437:	50                   	push   %eax
    2438:	50                   	push   %eax
    2439:	68 f7 4a 00 00       	push   $0x4af7
    243e:	6a 01                	push   $0x1
    2440:	e8 6b 1b 00 00       	call   3fb0 <printf>
    exit(1);
    2445:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    244c:	e8 11 1a 00 00       	call   3e62 <exit>
    printf(1, "chdir dd/../../dd failed\n");
    2451:	50                   	push   %eax
    2452:	50                   	push   %eax
    2453:	68 52 4b 00 00       	push   $0x4b52
    2458:	6a 01                	push   $0x1
    245a:	e8 51 1b 00 00       	call   3fb0 <printf>
    exit(1);
    245f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2466:	e8 f7 19 00 00       	call   3e62 <exit>
    printf(1, "unlink dd/dd/ff failed\n");
    246b:	52                   	push   %edx
    246c:	52                   	push   %edx
    246d:	68 1d 4b 00 00       	push   $0x4b1d
    2472:	6a 01                	push   $0x1
    2474:	e8 37 1b 00 00       	call   3fb0 <printf>
    exit(1);
    2479:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2480:	e8 dd 19 00 00       	call   3e62 <exit>
    printf(1, "create dd/ff/ff succeeded!\n");
    2485:	50                   	push   %eax
    2486:	50                   	push   %eax
    2487:	68 cf 4b 00 00       	push   $0x4bcf
    248c:	6a 01                	push   $0x1
    248e:	e8 1d 1b 00 00       	call   3fb0 <printf>
    exit(0);
    2493:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    249a:	e8 c3 19 00 00       	call   3e62 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    249f:	52                   	push   %edx
    24a0:	52                   	push   %edx
    24a1:	68 b4 55 00 00       	push   $0x55b4
    24a6:	6a 01                	push   $0x1
    24a8:	e8 03 1b 00 00       	call   3fb0 <printf>
    exit(0);
    24ad:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24b4:	e8 a9 19 00 00       	call   3e62 <exit>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    24b9:	52                   	push   %edx
    24ba:	52                   	push   %edx
    24bb:	68 63 4c 00 00       	push   $0x4c63
    24c0:	6a 01                	push   $0x1
    24c2:	e8 e9 1a 00 00       	call   3fb0 <printf>
    exit(0);
    24c7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24ce:	e8 8f 19 00 00       	call   3e62 <exit>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    24d3:	51                   	push   %ecx
    24d4:	51                   	push   %ecx
    24d5:	68 24 56 00 00       	push   $0x5624
    24da:	6a 01                	push   $0x1
    24dc:	e8 cf 1a 00 00       	call   3fb0 <printf>
    exit(0);
    24e1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24e8:	e8 75 19 00 00       	call   3e62 <exit>
    printf(1, "open dd/dd/../ff failed\n");
    24ed:	50                   	push   %eax
    24ee:	50                   	push   %eax
    24ef:	68 de 4a 00 00       	push   $0x4ade
    24f4:	6a 01                	push   $0x1
    24f6:	e8 b5 1a 00 00       	call   3fb0 <printf>
    exit(1);
    24fb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2502:	e8 5b 19 00 00       	call   3e62 <exit>
    printf(1, "create dd/dd/ff failed\n");
    2507:	51                   	push   %ecx
    2508:	51                   	push   %ecx
    2509:	68 b7 4a 00 00       	push   $0x4ab7
    250e:	6a 01                	push   $0x1
    2510:	e8 9b 1a 00 00       	call   3fb0 <printf>
    exit(1);
    2515:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    251c:	e8 41 19 00 00       	call   3e62 <exit>
    printf(1, "chdir ./.. failed\n");
    2521:	50                   	push   %eax
    2522:	50                   	push   %eax
    2523:	68 80 4b 00 00       	push   $0x4b80
    2528:	6a 01                	push   $0x1
    252a:	e8 81 1a 00 00       	call   3fb0 <printf>
    exit(1);
    252f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2536:	e8 27 19 00 00       	call   3e62 <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    253b:	51                   	push   %ecx
    253c:	51                   	push   %ecx
    253d:	68 6c 55 00 00       	push   $0x556c
    2542:	6a 01                	push   $0x1
    2544:	e8 67 1a 00 00       	call   3fb0 <printf>
    exit(1);
    2549:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2550:	e8 0d 19 00 00       	call   3e62 <exit>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    2555:	53                   	push   %ebx
    2556:	53                   	push   %ebx
    2557:	68 00 56 00 00       	push   $0x5600
    255c:	6a 01                	push   $0x1
    255e:	e8 4d 1a 00 00       	call   3fb0 <printf>
    exit(0);
    2563:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    256a:	e8 f3 18 00 00       	call   3e62 <exit>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    256f:	50                   	push   %eax
    2570:	50                   	push   %eax
    2571:	68 dc 55 00 00       	push   $0x55dc
    2576:	6a 01                	push   $0x1
    2578:	e8 33 1a 00 00       	call   3fb0 <printf>
    exit(0);
    257d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2584:	e8 d9 18 00 00       	call   3e62 <exit>
    printf(1, "open dd wronly succeeded!\n");
    2589:	50                   	push   %eax
    258a:	50                   	push   %eax
    258b:	68 3f 4c 00 00       	push   $0x4c3f
    2590:	6a 01                	push   $0x1
    2592:	e8 19 1a 00 00       	call   3fb0 <printf>
    exit(0);
    2597:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    259e:	e8 bf 18 00 00       	call   3e62 <exit>
    printf(1, "open dd rdwr succeeded!\n");
    25a3:	50                   	push   %eax
    25a4:	50                   	push   %eax
    25a5:	68 26 4c 00 00       	push   $0x4c26
    25aa:	6a 01                	push   $0x1
    25ac:	e8 ff 19 00 00       	call   3fb0 <printf>
    exit(0);
    25b1:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25b8:	e8 a5 18 00 00       	call   3e62 <exit>
    printf(1, "create dd succeeded!\n");
    25bd:	50                   	push   %eax
    25be:	50                   	push   %eax
    25bf:	68 10 4c 00 00       	push   $0x4c10
    25c4:	6a 01                	push   $0x1
    25c6:	e8 e5 19 00 00       	call   3fb0 <printf>
    exit(0);
    25cb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25d2:	e8 8b 18 00 00       	call   3e62 <exit>
    printf(1, "create dd/xx/ff succeeded!\n");
    25d7:	50                   	push   %eax
    25d8:	50                   	push   %eax
    25d9:	68 f4 4b 00 00       	push   $0x4bf4
    25de:	6a 01                	push   $0x1
    25e0:	e8 cb 19 00 00       	call   3fb0 <printf>
    exit(0);
    25e5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25ec:	e8 71 18 00 00       	call   3e62 <exit>
    printf(1, "chdir dd failed\n");
    25f1:	50                   	push   %eax
    25f2:	50                   	push   %eax
    25f3:	68 35 4b 00 00       	push   $0x4b35
    25f8:	6a 01                	push   $0x1
    25fa:	e8 b1 19 00 00       	call   3fb0 <printf>
    exit(1);
    25ff:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2606:	e8 57 18 00 00       	call   3e62 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    260b:	50                   	push   %eax
    260c:	50                   	push   %eax
    260d:	68 90 55 00 00       	push   $0x5590
    2612:	6a 01                	push   $0x1
    2614:	e8 97 19 00 00       	call   3fb0 <printf>
    exit(0);
    2619:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2620:	e8 3d 18 00 00       	call   3e62 <exit>
    printf(1, "subdir mkdir dd/dd failed\n");
    2625:	53                   	push   %ebx
    2626:	53                   	push   %ebx
    2627:	68 93 4a 00 00       	push   $0x4a93
    262c:	6a 01                	push   $0x1
    262e:	e8 7d 19 00 00       	call   3fb0 <printf>
    exit(1);
    2633:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    263a:	e8 23 18 00 00       	call   3e62 <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    263f:	50                   	push   %eax
    2640:	50                   	push   %eax
    2641:	68 44 55 00 00       	push   $0x5544
    2646:	6a 01                	push   $0x1
    2648:	e8 63 19 00 00       	call   3fb0 <printf>
    exit(0);
    264d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2654:	e8 09 18 00 00       	call   3e62 <exit>
    printf(1, "create dd/ff failed\n");
    2659:	50                   	push   %eax
    265a:	50                   	push   %eax
    265b:	68 77 4a 00 00       	push   $0x4a77
    2660:	6a 01                	push   $0x1
    2662:	e8 49 19 00 00       	call   3fb0 <printf>
    exit(1);
    2667:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    266e:	e8 ef 17 00 00       	call   3e62 <exit>
    printf(1, "subdir mkdir dd failed\n");
    2673:	50                   	push   %eax
    2674:	50                   	push   %eax
    2675:	68 5f 4a 00 00       	push   $0x4a5f
    267a:	6a 01                	push   $0x1
    267c:	e8 2f 19 00 00       	call   3fb0 <printf>
    exit(1);
    2681:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2688:	e8 d5 17 00 00       	call   3e62 <exit>
    printf(1, "unlink dd failed\n");
    268d:	50                   	push   %eax
    268e:	50                   	push   %eax
    268f:	68 48 4d 00 00       	push   $0x4d48
    2694:	6a 01                	push   $0x1
    2696:	e8 15 19 00 00       	call   3fb0 <printf>
    exit(1);
    269b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26a2:	e8 bb 17 00 00       	call   3e62 <exit>
    printf(1, "unlink dd/dd failed\n");
    26a7:	52                   	push   %edx
    26a8:	52                   	push   %edx
    26a9:	68 33 4d 00 00       	push   $0x4d33
    26ae:	6a 01                	push   $0x1
    26b0:	e8 fb 18 00 00       	call   3fb0 <printf>
    exit(1);
    26b5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26bc:	e8 a1 17 00 00       	call   3e62 <exit>
    printf(1, "unlink non-empty dd succeeded!\n");
    26c1:	51                   	push   %ecx
    26c2:	51                   	push   %ecx
    26c3:	68 48 56 00 00       	push   $0x5648
    26c8:	6a 01                	push   $0x1
    26ca:	e8 e1 18 00 00       	call   3fb0 <printf>
    exit(0);
    26cf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    26d6:	e8 87 17 00 00       	call   3e62 <exit>
    printf(1, "unlink dd/ff failed\n");
    26db:	53                   	push   %ebx
    26dc:	53                   	push   %ebx
    26dd:	68 1e 4d 00 00       	push   $0x4d1e
    26e2:	6a 01                	push   $0x1
    26e4:	e8 c7 18 00 00       	call   3fb0 <printf>
    exit(1);
    26e9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26f0:	e8 6d 17 00 00       	call   3e62 <exit>
    printf(1, "chdir dd/xx succeeded!\n");
    26f5:	50                   	push   %eax
    26f6:	50                   	push   %eax
    26f7:	68 06 4d 00 00       	push   $0x4d06
    26fc:	6a 01                	push   $0x1
    26fe:	e8 ad 18 00 00       	call   3fb0 <printf>
    exit(0);
    2703:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    270a:	e8 53 17 00 00       	call   3e62 <exit>
    printf(1, "chdir dd/ff succeeded!\n");
    270f:	50                   	push   %eax
    2710:	50                   	push   %eax
    2711:	68 ee 4c 00 00       	push   $0x4cee
    2716:	6a 01                	push   $0x1
    2718:	e8 93 18 00 00       	call   3fb0 <printf>
    exit(0);
    271d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2724:	e8 39 17 00 00       	call   3e62 <exit>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    2729:	50                   	push   %eax
    272a:	50                   	push   %eax
    272b:	68 d2 4c 00 00       	push   $0x4cd2
    2730:	6a 01                	push   $0x1
    2732:	e8 79 18 00 00       	call   3fb0 <printf>
    exit(0);
    2737:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    273e:	e8 1f 17 00 00       	call   3e62 <exit>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    2743:	50                   	push   %eax
    2744:	50                   	push   %eax
    2745:	68 b6 4c 00 00       	push   $0x4cb6
    274a:	6a 01                	push   $0x1
    274c:	e8 5f 18 00 00       	call   3fb0 <printf>
    exit(0);
    2751:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2758:	e8 05 17 00 00       	call   3e62 <exit>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    275d:	50                   	push   %eax
    275e:	50                   	push   %eax
    275f:	68 99 4c 00 00       	push   $0x4c99
    2764:	6a 01                	push   $0x1
    2766:	e8 45 18 00 00       	call   3fb0 <printf>
    exit(0);
    276b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2772:	e8 eb 16 00 00       	call   3e62 <exit>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    2777:	50                   	push   %eax
    2778:	50                   	push   %eax
    2779:	68 7e 4c 00 00       	push   $0x4c7e
    277e:	6a 01                	push   $0x1
    2780:	e8 2b 18 00 00       	call   3fb0 <printf>
    exit(0);
    2785:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    278c:	e8 d1 16 00 00       	call   3e62 <exit>
    printf(1, "read dd/dd/ffff wrong len\n");
    2791:	50                   	push   %eax
    2792:	50                   	push   %eax
    2793:	68 ab 4b 00 00       	push   $0x4bab
    2798:	6a 01                	push   $0x1
    279a:	e8 11 18 00 00       	call   3fb0 <printf>
    exit(1);
    279f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27a6:	e8 b7 16 00 00       	call   3e62 <exit>
    printf(1, "open dd/dd/ffff failed\n");
    27ab:	50                   	push   %eax
    27ac:	50                   	push   %eax
    27ad:	68 93 4b 00 00       	push   $0x4b93
    27b2:	6a 01                	push   $0x1
    27b4:	e8 f7 17 00 00       	call   3fb0 <printf>
    exit(1);
    27b9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27c0:	e8 9d 16 00 00       	call   3e62 <exit>
    27c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    27c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000027d0 <bigwrite>:
{
    27d0:	55                   	push   %ebp
    27d1:	89 e5                	mov    %esp,%ebp
    27d3:	56                   	push   %esi
    27d4:	53                   	push   %ebx
  for(sz = 499; sz < 12*512; sz += 471){
    27d5:	bb f3 01 00 00       	mov    $0x1f3,%ebx
  printf(1, "bigwrite test\n");
    27da:	83 ec 08             	sub    $0x8,%esp
    27dd:	68 65 4d 00 00       	push   $0x4d65
    27e2:	6a 01                	push   $0x1
    27e4:	e8 c7 17 00 00       	call   3fb0 <printf>
  unlink("bigwrite");
    27e9:	c7 04 24 74 4d 00 00 	movl   $0x4d74,(%esp)
    27f0:	e8 bd 16 00 00       	call   3eb2 <unlink>
    27f5:	83 c4 10             	add    $0x10,%esp
    27f8:	90                   	nop
    27f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2800:	83 ec 08             	sub    $0x8,%esp
    2803:	68 02 02 00 00       	push   $0x202
    2808:	68 74 4d 00 00       	push   $0x4d74
    280d:	e8 90 16 00 00       	call   3ea2 <open>
    if(fd < 0){
    2812:	83 c4 10             	add    $0x10,%esp
    2815:	85 c0                	test   %eax,%eax
    fd = open("bigwrite", O_CREATE | O_RDWR);
    2817:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    2819:	0f 88 85 00 00 00    	js     28a4 <bigwrite+0xd4>
      int cc = write(fd, buf, sz);
    281f:	83 ec 04             	sub    $0x4,%esp
    2822:	53                   	push   %ebx
    2823:	68 a0 8b 00 00       	push   $0x8ba0
    2828:	50                   	push   %eax
    2829:	e8 54 16 00 00       	call   3e82 <write>
      if(cc != sz){
    282e:	83 c4 10             	add    $0x10,%esp
    2831:	39 d8                	cmp    %ebx,%eax
    2833:	75 55                	jne    288a <bigwrite+0xba>
      int cc = write(fd, buf, sz);
    2835:	83 ec 04             	sub    $0x4,%esp
    2838:	53                   	push   %ebx
    2839:	68 a0 8b 00 00       	push   $0x8ba0
    283e:	56                   	push   %esi
    283f:	e8 3e 16 00 00       	call   3e82 <write>
      if(cc != sz){
    2844:	83 c4 10             	add    $0x10,%esp
    2847:	39 d8                	cmp    %ebx,%eax
    2849:	75 3f                	jne    288a <bigwrite+0xba>
    close(fd);
    284b:	83 ec 0c             	sub    $0xc,%esp
  for(sz = 499; sz < 12*512; sz += 471){
    284e:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    close(fd);
    2854:	56                   	push   %esi
    2855:	e8 30 16 00 00       	call   3e8a <close>
    unlink("bigwrite");
    285a:	c7 04 24 74 4d 00 00 	movl   $0x4d74,(%esp)
    2861:	e8 4c 16 00 00       	call   3eb2 <unlink>
  for(sz = 499; sz < 12*512; sz += 471){
    2866:	83 c4 10             	add    $0x10,%esp
    2869:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    286f:	75 8f                	jne    2800 <bigwrite+0x30>
  printf(1, "bigwrite ok\n");
    2871:	83 ec 08             	sub    $0x8,%esp
    2874:	68 a7 4d 00 00       	push   $0x4da7
    2879:	6a 01                	push   $0x1
    287b:	e8 30 17 00 00       	call   3fb0 <printf>
}
    2880:	83 c4 10             	add    $0x10,%esp
    2883:	8d 65 f8             	lea    -0x8(%ebp),%esp
    2886:	5b                   	pop    %ebx
    2887:	5e                   	pop    %esi
    2888:	5d                   	pop    %ebp
    2889:	c3                   	ret    
        printf(1, "write(%d) ret %d\n", sz, cc);
    288a:	50                   	push   %eax
    288b:	53                   	push   %ebx
    288c:	68 95 4d 00 00       	push   $0x4d95
    2891:	6a 01                	push   $0x1
    2893:	e8 18 17 00 00       	call   3fb0 <printf>
        exit(1);
    2898:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    289f:	e8 be 15 00 00       	call   3e62 <exit>
      printf(1, "cannot create bigwrite\n");
    28a4:	83 ec 08             	sub    $0x8,%esp
    28a7:	68 7d 4d 00 00       	push   $0x4d7d
    28ac:	6a 01                	push   $0x1
    28ae:	e8 fd 16 00 00       	call   3fb0 <printf>
      exit(1);
    28b3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    28ba:	e8 a3 15 00 00       	call   3e62 <exit>
    28bf:	90                   	nop

000028c0 <bigfile>:
{
    28c0:	55                   	push   %ebp
    28c1:	89 e5                	mov    %esp,%ebp
    28c3:	57                   	push   %edi
    28c4:	56                   	push   %esi
    28c5:	53                   	push   %ebx
    28c6:	83 ec 14             	sub    $0x14,%esp
  printf(1, "bigfile test\n");
    28c9:	68 b4 4d 00 00       	push   $0x4db4
    28ce:	6a 01                	push   $0x1
    28d0:	e8 db 16 00 00       	call   3fb0 <printf>
  unlink("bigfile");
    28d5:	c7 04 24 d0 4d 00 00 	movl   $0x4dd0,(%esp)
    28dc:	e8 d1 15 00 00       	call   3eb2 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    28e1:	58                   	pop    %eax
    28e2:	5a                   	pop    %edx
    28e3:	68 02 02 00 00       	push   $0x202
    28e8:	68 d0 4d 00 00       	push   $0x4dd0
    28ed:	e8 b0 15 00 00       	call   3ea2 <open>
  if(fd < 0){
    28f2:	83 c4 10             	add    $0x10,%esp
    28f5:	85 c0                	test   %eax,%eax
    28f7:	0f 88 81 01 00 00    	js     2a7e <bigfile+0x1be>
    28fd:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 20; i++){
    28ff:	31 db                	xor    %ebx,%ebx
    2901:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    memset(buf, i, 600);
    2908:	83 ec 04             	sub    $0x4,%esp
    290b:	68 58 02 00 00       	push   $0x258
    2910:	53                   	push   %ebx
    2911:	68 a0 8b 00 00       	push   $0x8ba0
    2916:	e8 a5 13 00 00       	call   3cc0 <memset>
    if(write(fd, buf, 600) != 600){
    291b:	83 c4 0c             	add    $0xc,%esp
    291e:	68 58 02 00 00       	push   $0x258
    2923:	68 a0 8b 00 00       	push   $0x8ba0
    2928:	56                   	push   %esi
    2929:	e8 54 15 00 00       	call   3e82 <write>
    292e:	83 c4 10             	add    $0x10,%esp
    2931:	3d 58 02 00 00       	cmp    $0x258,%eax
    2936:	0f 85 0d 01 00 00    	jne    2a49 <bigfile+0x189>
  for(i = 0; i < 20; i++){
    293c:	83 c3 01             	add    $0x1,%ebx
    293f:	83 fb 14             	cmp    $0x14,%ebx
    2942:	75 c4                	jne    2908 <bigfile+0x48>
  close(fd);
    2944:	83 ec 0c             	sub    $0xc,%esp
    2947:	56                   	push   %esi
    2948:	e8 3d 15 00 00       	call   3e8a <close>
  fd = open("bigfile", 0);
    294d:	5e                   	pop    %esi
    294e:	5f                   	pop    %edi
    294f:	6a 00                	push   $0x0
    2951:	68 d0 4d 00 00       	push   $0x4dd0
    2956:	e8 47 15 00 00       	call   3ea2 <open>
  if(fd < 0){
    295b:	83 c4 10             	add    $0x10,%esp
    295e:	85 c0                	test   %eax,%eax
  fd = open("bigfile", 0);
    2960:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2962:	0f 88 fc 00 00 00    	js     2a64 <bigfile+0x1a4>
  total = 0;
    2968:	31 db                	xor    %ebx,%ebx
  for(i = 0; ; i++){
    296a:	31 ff                	xor    %edi,%edi
    296c:	eb 30                	jmp    299e <bigfile+0xde>
    296e:	66 90                	xchg   %ax,%ax
    if(cc != 300){
    2970:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2975:	0f 85 98 00 00 00    	jne    2a13 <bigfile+0x153>
    if(buf[0] != i/2 || buf[299] != i/2){
    297b:	0f be 05 a0 8b 00 00 	movsbl 0x8ba0,%eax
    2982:	89 fa                	mov    %edi,%edx
    2984:	d1 fa                	sar    %edx
    2986:	39 d0                	cmp    %edx,%eax
    2988:	75 6e                	jne    29f8 <bigfile+0x138>
    298a:	0f be 15 cb 8c 00 00 	movsbl 0x8ccb,%edx
    2991:	39 d0                	cmp    %edx,%eax
    2993:	75 63                	jne    29f8 <bigfile+0x138>
    total += cc;
    2995:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  for(i = 0; ; i++){
    299b:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    299e:	83 ec 04             	sub    $0x4,%esp
    29a1:	68 2c 01 00 00       	push   $0x12c
    29a6:	68 a0 8b 00 00       	push   $0x8ba0
    29ab:	56                   	push   %esi
    29ac:	e8 c9 14 00 00       	call   3e7a <read>
    if(cc < 0){
    29b1:	83 c4 10             	add    $0x10,%esp
    29b4:	85 c0                	test   %eax,%eax
    29b6:	78 76                	js     2a2e <bigfile+0x16e>
    if(cc == 0)
    29b8:	75 b6                	jne    2970 <bigfile+0xb0>
  close(fd);
    29ba:	83 ec 0c             	sub    $0xc,%esp
    29bd:	56                   	push   %esi
    29be:	e8 c7 14 00 00       	call   3e8a <close>
  if(total != 20*600){
    29c3:	83 c4 10             	add    $0x10,%esp
    29c6:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    29cc:	0f 85 c6 00 00 00    	jne    2a98 <bigfile+0x1d8>
  unlink("bigfile");
    29d2:	83 ec 0c             	sub    $0xc,%esp
    29d5:	68 d0 4d 00 00       	push   $0x4dd0
    29da:	e8 d3 14 00 00       	call   3eb2 <unlink>
  printf(1, "bigfile test ok\n");
    29df:	58                   	pop    %eax
    29e0:	5a                   	pop    %edx
    29e1:	68 5f 4e 00 00       	push   $0x4e5f
    29e6:	6a 01                	push   $0x1
    29e8:	e8 c3 15 00 00       	call   3fb0 <printf>
}
    29ed:	83 c4 10             	add    $0x10,%esp
    29f0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    29f3:	5b                   	pop    %ebx
    29f4:	5e                   	pop    %esi
    29f5:	5f                   	pop    %edi
    29f6:	5d                   	pop    %ebp
    29f7:	c3                   	ret    
      printf(1, "read bigfile wrong data\n");
    29f8:	83 ec 08             	sub    $0x8,%esp
    29fb:	68 2c 4e 00 00       	push   $0x4e2c
    2a00:	6a 01                	push   $0x1
    2a02:	e8 a9 15 00 00       	call   3fb0 <printf>
      exit(1);
    2a07:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2a0e:	e8 4f 14 00 00       	call   3e62 <exit>
      printf(1, "short read bigfile\n");
    2a13:	83 ec 08             	sub    $0x8,%esp
    2a16:	68 18 4e 00 00       	push   $0x4e18
    2a1b:	6a 01                	push   $0x1
    2a1d:	e8 8e 15 00 00       	call   3fb0 <printf>
      exit(1);
    2a22:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2a29:	e8 34 14 00 00       	call   3e62 <exit>
      printf(1, "read bigfile failed\n");
    2a2e:	83 ec 08             	sub    $0x8,%esp
    2a31:	68 03 4e 00 00       	push   $0x4e03
    2a36:	6a 01                	push   $0x1
    2a38:	e8 73 15 00 00       	call   3fb0 <printf>
      exit(1);
    2a3d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2a44:	e8 19 14 00 00       	call   3e62 <exit>
      printf(1, "write bigfile failed\n");
    2a49:	83 ec 08             	sub    $0x8,%esp
    2a4c:	68 d8 4d 00 00       	push   $0x4dd8
    2a51:	6a 01                	push   $0x1
    2a53:	e8 58 15 00 00       	call   3fb0 <printf>
      exit(1);
    2a58:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2a5f:	e8 fe 13 00 00       	call   3e62 <exit>
    printf(1, "cannot open bigfile\n");
    2a64:	53                   	push   %ebx
    2a65:	53                   	push   %ebx
    2a66:	68 ee 4d 00 00       	push   $0x4dee
    2a6b:	6a 01                	push   $0x1
    2a6d:	e8 3e 15 00 00       	call   3fb0 <printf>
    exit(1);
    2a72:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2a79:	e8 e4 13 00 00       	call   3e62 <exit>
    printf(1, "cannot create bigfile");
    2a7e:	50                   	push   %eax
    2a7f:	50                   	push   %eax
    2a80:	68 c2 4d 00 00       	push   $0x4dc2
    2a85:	6a 01                	push   $0x1
    2a87:	e8 24 15 00 00       	call   3fb0 <printf>
    exit(1);
    2a8c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2a93:	e8 ca 13 00 00       	call   3e62 <exit>
    printf(1, "read bigfile wrong total\n");
    2a98:	51                   	push   %ecx
    2a99:	51                   	push   %ecx
    2a9a:	68 45 4e 00 00       	push   $0x4e45
    2a9f:	6a 01                	push   $0x1
    2aa1:	e8 0a 15 00 00       	call   3fb0 <printf>
    exit(1);
    2aa6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2aad:	e8 b0 13 00 00       	call   3e62 <exit>
    2ab2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2ab9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00002ac0 <fourteen>:
{
    2ac0:	55                   	push   %ebp
    2ac1:	89 e5                	mov    %esp,%ebp
    2ac3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "fourteen test\n");
    2ac6:	68 70 4e 00 00       	push   $0x4e70
    2acb:	6a 01                	push   $0x1
    2acd:	e8 de 14 00 00       	call   3fb0 <printf>
  if(mkdir("12345678901234") != 0){
    2ad2:	c7 04 24 ab 4e 00 00 	movl   $0x4eab,(%esp)
    2ad9:	e8 ec 13 00 00       	call   3eca <mkdir>
    2ade:	83 c4 10             	add    $0x10,%esp
    2ae1:	85 c0                	test   %eax,%eax
    2ae3:	0f 85 9b 00 00 00    	jne    2b84 <fourteen+0xc4>
  if(mkdir("12345678901234/123456789012345") != 0){
    2ae9:	83 ec 0c             	sub    $0xc,%esp
    2aec:	68 68 56 00 00       	push   $0x5668
    2af1:	e8 d4 13 00 00       	call   3eca <mkdir>
    2af6:	83 c4 10             	add    $0x10,%esp
    2af9:	85 c0                	test   %eax,%eax
    2afb:	0f 85 05 01 00 00    	jne    2c06 <fourteen+0x146>
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    2b01:	83 ec 08             	sub    $0x8,%esp
    2b04:	68 00 02 00 00       	push   $0x200
    2b09:	68 b8 56 00 00       	push   $0x56b8
    2b0e:	e8 8f 13 00 00       	call   3ea2 <open>
  if(fd < 0){
    2b13:	83 c4 10             	add    $0x10,%esp
    2b16:	85 c0                	test   %eax,%eax
    2b18:	0f 88 ce 00 00 00    	js     2bec <fourteen+0x12c>
  close(fd);
    2b1e:	83 ec 0c             	sub    $0xc,%esp
    2b21:	50                   	push   %eax
    2b22:	e8 63 13 00 00       	call   3e8a <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    2b27:	58                   	pop    %eax
    2b28:	5a                   	pop    %edx
    2b29:	6a 00                	push   $0x0
    2b2b:	68 28 57 00 00       	push   $0x5728
    2b30:	e8 6d 13 00 00       	call   3ea2 <open>
  if(fd < 0){
    2b35:	83 c4 10             	add    $0x10,%esp
    2b38:	85 c0                	test   %eax,%eax
    2b3a:	0f 88 92 00 00 00    	js     2bd2 <fourteen+0x112>
  close(fd);
    2b40:	83 ec 0c             	sub    $0xc,%esp
    2b43:	50                   	push   %eax
    2b44:	e8 41 13 00 00       	call   3e8a <close>
  if(mkdir("12345678901234/12345678901234") == 0){
    2b49:	c7 04 24 9c 4e 00 00 	movl   $0x4e9c,(%esp)
    2b50:	e8 75 13 00 00       	call   3eca <mkdir>
    2b55:	83 c4 10             	add    $0x10,%esp
    2b58:	85 c0                	test   %eax,%eax
    2b5a:	74 5c                	je     2bb8 <fourteen+0xf8>
  if(mkdir("123456789012345/12345678901234") == 0){
    2b5c:	83 ec 0c             	sub    $0xc,%esp
    2b5f:	68 c4 57 00 00       	push   $0x57c4
    2b64:	e8 61 13 00 00       	call   3eca <mkdir>
    2b69:	83 c4 10             	add    $0x10,%esp
    2b6c:	85 c0                	test   %eax,%eax
    2b6e:	74 2e                	je     2b9e <fourteen+0xde>
  printf(1, "fourteen ok\n");
    2b70:	83 ec 08             	sub    $0x8,%esp
    2b73:	68 ba 4e 00 00       	push   $0x4eba
    2b78:	6a 01                	push   $0x1
    2b7a:	e8 31 14 00 00       	call   3fb0 <printf>
}
    2b7f:	83 c4 10             	add    $0x10,%esp
    2b82:	c9                   	leave  
    2b83:	c3                   	ret    
    printf(1, "mkdir 12345678901234 failed\n");
    2b84:	50                   	push   %eax
    2b85:	50                   	push   %eax
    2b86:	68 7f 4e 00 00       	push   $0x4e7f
    2b8b:	6a 01                	push   $0x1
    2b8d:	e8 1e 14 00 00       	call   3fb0 <printf>
    exit(1);
    2b92:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b99:	e8 c4 12 00 00       	call   3e62 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    2b9e:	50                   	push   %eax
    2b9f:	50                   	push   %eax
    2ba0:	68 e4 57 00 00       	push   $0x57e4
    2ba5:	6a 01                	push   $0x1
    2ba7:	e8 04 14 00 00       	call   3fb0 <printf>
    exit(0);
    2bac:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bb3:	e8 aa 12 00 00       	call   3e62 <exit>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    2bb8:	52                   	push   %edx
    2bb9:	52                   	push   %edx
    2bba:	68 94 57 00 00       	push   $0x5794
    2bbf:	6a 01                	push   $0x1
    2bc1:	e8 ea 13 00 00       	call   3fb0 <printf>
    exit(0);
    2bc6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bcd:	e8 90 12 00 00       	call   3e62 <exit>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    2bd2:	51                   	push   %ecx
    2bd3:	51                   	push   %ecx
    2bd4:	68 58 57 00 00       	push   $0x5758
    2bd9:	6a 01                	push   $0x1
    2bdb:	e8 d0 13 00 00       	call   3fb0 <printf>
    exit(1);
    2be0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2be7:	e8 76 12 00 00       	call   3e62 <exit>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    2bec:	51                   	push   %ecx
    2bed:	51                   	push   %ecx
    2bee:	68 e8 56 00 00       	push   $0x56e8
    2bf3:	6a 01                	push   $0x1
    2bf5:	e8 b6 13 00 00       	call   3fb0 <printf>
    exit(1);
    2bfa:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c01:	e8 5c 12 00 00       	call   3e62 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    2c06:	50                   	push   %eax
    2c07:	50                   	push   %eax
    2c08:	68 88 56 00 00       	push   $0x5688
    2c0d:	6a 01                	push   $0x1
    2c0f:	e8 9c 13 00 00       	call   3fb0 <printf>
    exit(1);
    2c14:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c1b:	e8 42 12 00 00       	call   3e62 <exit>

00002c20 <rmdot>:
{
    2c20:	55                   	push   %ebp
    2c21:	89 e5                	mov    %esp,%ebp
    2c23:	83 ec 10             	sub    $0x10,%esp
  printf(1, "rmdot test\n");
    2c26:	68 c7 4e 00 00       	push   $0x4ec7
    2c2b:	6a 01                	push   $0x1
    2c2d:	e8 7e 13 00 00       	call   3fb0 <printf>
  if(mkdir("dots") != 0){
    2c32:	c7 04 24 d3 4e 00 00 	movl   $0x4ed3,(%esp)
    2c39:	e8 8c 12 00 00       	call   3eca <mkdir>
    2c3e:	83 c4 10             	add    $0x10,%esp
    2c41:	85 c0                	test   %eax,%eax
    2c43:	0f 85 b4 00 00 00    	jne    2cfd <rmdot+0xdd>
  if(chdir("dots") != 0){
    2c49:	83 ec 0c             	sub    $0xc,%esp
    2c4c:	68 d3 4e 00 00       	push   $0x4ed3
    2c51:	e8 7c 12 00 00       	call   3ed2 <chdir>
    2c56:	83 c4 10             	add    $0x10,%esp
    2c59:	85 c0                	test   %eax,%eax
    2c5b:	0f 85 52 01 00 00    	jne    2db3 <rmdot+0x193>
  if(unlink(".") == 0){
    2c61:	83 ec 0c             	sub    $0xc,%esp
    2c64:	68 7e 4b 00 00       	push   $0x4b7e
    2c69:	e8 44 12 00 00       	call   3eb2 <unlink>
    2c6e:	83 c4 10             	add    $0x10,%esp
    2c71:	85 c0                	test   %eax,%eax
    2c73:	0f 84 20 01 00 00    	je     2d99 <rmdot+0x179>
  if(unlink("..") == 0){
    2c79:	83 ec 0c             	sub    $0xc,%esp
    2c7c:	68 7d 4b 00 00       	push   $0x4b7d
    2c81:	e8 2c 12 00 00       	call   3eb2 <unlink>
    2c86:	83 c4 10             	add    $0x10,%esp
    2c89:	85 c0                	test   %eax,%eax
    2c8b:	0f 84 ee 00 00 00    	je     2d7f <rmdot+0x15f>
  if(chdir("/") != 0){
    2c91:	83 ec 0c             	sub    $0xc,%esp
    2c94:	68 51 43 00 00       	push   $0x4351
    2c99:	e8 34 12 00 00       	call   3ed2 <chdir>
    2c9e:	83 c4 10             	add    $0x10,%esp
    2ca1:	85 c0                	test   %eax,%eax
    2ca3:	0f 85 bc 00 00 00    	jne    2d65 <rmdot+0x145>
  if(unlink("dots/.") == 0){
    2ca9:	83 ec 0c             	sub    $0xc,%esp
    2cac:	68 1b 4f 00 00       	push   $0x4f1b
    2cb1:	e8 fc 11 00 00       	call   3eb2 <unlink>
    2cb6:	83 c4 10             	add    $0x10,%esp
    2cb9:	85 c0                	test   %eax,%eax
    2cbb:	0f 84 8a 00 00 00    	je     2d4b <rmdot+0x12b>
  if(unlink("dots/..") == 0){
    2cc1:	83 ec 0c             	sub    $0xc,%esp
    2cc4:	68 39 4f 00 00       	push   $0x4f39
    2cc9:	e8 e4 11 00 00       	call   3eb2 <unlink>
    2cce:	83 c4 10             	add    $0x10,%esp
    2cd1:	85 c0                	test   %eax,%eax
    2cd3:	74 5c                	je     2d31 <rmdot+0x111>
  if(unlink("dots") != 0){
    2cd5:	83 ec 0c             	sub    $0xc,%esp
    2cd8:	68 d3 4e 00 00       	push   $0x4ed3
    2cdd:	e8 d0 11 00 00       	call   3eb2 <unlink>
    2ce2:	83 c4 10             	add    $0x10,%esp
    2ce5:	85 c0                	test   %eax,%eax
    2ce7:	75 2e                	jne    2d17 <rmdot+0xf7>
  printf(1, "rmdot ok\n");
    2ce9:	83 ec 08             	sub    $0x8,%esp
    2cec:	68 6e 4f 00 00       	push   $0x4f6e
    2cf1:	6a 01                	push   $0x1
    2cf3:	e8 b8 12 00 00       	call   3fb0 <printf>
}
    2cf8:	83 c4 10             	add    $0x10,%esp
    2cfb:	c9                   	leave  
    2cfc:	c3                   	ret    
    printf(1, "mkdir dots failed\n");
    2cfd:	50                   	push   %eax
    2cfe:	50                   	push   %eax
    2cff:	68 d8 4e 00 00       	push   $0x4ed8
    2d04:	6a 01                	push   $0x1
    2d06:	e8 a5 12 00 00       	call   3fb0 <printf>
    exit(1);
    2d0b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d12:	e8 4b 11 00 00       	call   3e62 <exit>
    printf(1, "unlink dots failed!\n");
    2d17:	50                   	push   %eax
    2d18:	50                   	push   %eax
    2d19:	68 59 4f 00 00       	push   $0x4f59
    2d1e:	6a 01                	push   $0x1
    2d20:	e8 8b 12 00 00       	call   3fb0 <printf>
    exit(1);
    2d25:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d2c:	e8 31 11 00 00       	call   3e62 <exit>
    printf(1, "unlink dots/.. worked!\n");
    2d31:	52                   	push   %edx
    2d32:	52                   	push   %edx
    2d33:	68 41 4f 00 00       	push   $0x4f41
    2d38:	6a 01                	push   $0x1
    2d3a:	e8 71 12 00 00       	call   3fb0 <printf>
    exit(1);
    2d3f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d46:	e8 17 11 00 00       	call   3e62 <exit>
    printf(1, "unlink dots/. worked!\n");
    2d4b:	51                   	push   %ecx
    2d4c:	51                   	push   %ecx
    2d4d:	68 22 4f 00 00       	push   $0x4f22
    2d52:	6a 01                	push   $0x1
    2d54:	e8 57 12 00 00       	call   3fb0 <printf>
    exit(1);
    2d59:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d60:	e8 fd 10 00 00       	call   3e62 <exit>
    printf(1, "chdir / failed\n");
    2d65:	50                   	push   %eax
    2d66:	50                   	push   %eax
    2d67:	68 53 43 00 00       	push   $0x4353
    2d6c:	6a 01                	push   $0x1
    2d6e:	e8 3d 12 00 00       	call   3fb0 <printf>
    exit(1);
    2d73:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d7a:	e8 e3 10 00 00       	call   3e62 <exit>
    printf(1, "rm .. worked!\n");
    2d7f:	50                   	push   %eax
    2d80:	50                   	push   %eax
    2d81:	68 0c 4f 00 00       	push   $0x4f0c
    2d86:	6a 01                	push   $0x1
    2d88:	e8 23 12 00 00       	call   3fb0 <printf>
    exit(1);
    2d8d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d94:	e8 c9 10 00 00       	call   3e62 <exit>
    printf(1, "rm . worked!\n");
    2d99:	50                   	push   %eax
    2d9a:	50                   	push   %eax
    2d9b:	68 fe 4e 00 00       	push   $0x4efe
    2da0:	6a 01                	push   $0x1
    2da2:	e8 09 12 00 00       	call   3fb0 <printf>
    exit(1);
    2da7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2dae:	e8 af 10 00 00       	call   3e62 <exit>
    printf(1, "chdir dots failed\n");
    2db3:	50                   	push   %eax
    2db4:	50                   	push   %eax
    2db5:	68 eb 4e 00 00       	push   $0x4eeb
    2dba:	6a 01                	push   $0x1
    2dbc:	e8 ef 11 00 00       	call   3fb0 <printf>
    exit(1);
    2dc1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2dc8:	e8 95 10 00 00       	call   3e62 <exit>
    2dcd:	8d 76 00             	lea    0x0(%esi),%esi

00002dd0 <dirfile>:
{
    2dd0:	55                   	push   %ebp
    2dd1:	89 e5                	mov    %esp,%ebp
    2dd3:	53                   	push   %ebx
    2dd4:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "dir vs file\n");
    2dd7:	68 78 4f 00 00       	push   $0x4f78
    2ddc:	6a 01                	push   $0x1
    2dde:	e8 cd 11 00 00       	call   3fb0 <printf>
  fd = open("dirfile", O_CREATE);
    2de3:	59                   	pop    %ecx
    2de4:	5b                   	pop    %ebx
    2de5:	68 00 02 00 00       	push   $0x200
    2dea:	68 85 4f 00 00       	push   $0x4f85
    2def:	e8 ae 10 00 00       	call   3ea2 <open>
  if(fd < 0){
    2df4:	83 c4 10             	add    $0x10,%esp
    2df7:	85 c0                	test   %eax,%eax
    2df9:	0f 88 51 01 00 00    	js     2f50 <dirfile+0x180>
  close(fd);
    2dff:	83 ec 0c             	sub    $0xc,%esp
    2e02:	50                   	push   %eax
    2e03:	e8 82 10 00 00       	call   3e8a <close>
  if(chdir("dirfile") == 0){
    2e08:	c7 04 24 85 4f 00 00 	movl   $0x4f85,(%esp)
    2e0f:	e8 be 10 00 00       	call   3ed2 <chdir>
    2e14:	83 c4 10             	add    $0x10,%esp
    2e17:	85 c0                	test   %eax,%eax
    2e19:	0f 84 17 01 00 00    	je     2f36 <dirfile+0x166>
  fd = open("dirfile/xx", 0);
    2e1f:	83 ec 08             	sub    $0x8,%esp
    2e22:	6a 00                	push   $0x0
    2e24:	68 be 4f 00 00       	push   $0x4fbe
    2e29:	e8 74 10 00 00       	call   3ea2 <open>
  if(fd >= 0){
    2e2e:	83 c4 10             	add    $0x10,%esp
    2e31:	85 c0                	test   %eax,%eax
    2e33:	0f 89 e3 00 00 00    	jns    2f1c <dirfile+0x14c>
  fd = open("dirfile/xx", O_CREATE);
    2e39:	83 ec 08             	sub    $0x8,%esp
    2e3c:	68 00 02 00 00       	push   $0x200
    2e41:	68 be 4f 00 00       	push   $0x4fbe
    2e46:	e8 57 10 00 00       	call   3ea2 <open>
  if(fd >= 0){
    2e4b:	83 c4 10             	add    $0x10,%esp
    2e4e:	85 c0                	test   %eax,%eax
    2e50:	0f 89 c6 00 00 00    	jns    2f1c <dirfile+0x14c>
  if(mkdir("dirfile/xx") == 0){
    2e56:	83 ec 0c             	sub    $0xc,%esp
    2e59:	68 be 4f 00 00       	push   $0x4fbe
    2e5e:	e8 67 10 00 00       	call   3eca <mkdir>
    2e63:	83 c4 10             	add    $0x10,%esp
    2e66:	85 c0                	test   %eax,%eax
    2e68:	0f 84 7e 01 00 00    	je     2fec <dirfile+0x21c>
  if(unlink("dirfile/xx") == 0){
    2e6e:	83 ec 0c             	sub    $0xc,%esp
    2e71:	68 be 4f 00 00       	push   $0x4fbe
    2e76:	e8 37 10 00 00       	call   3eb2 <unlink>
    2e7b:	83 c4 10             	add    $0x10,%esp
    2e7e:	85 c0                	test   %eax,%eax
    2e80:	0f 84 4c 01 00 00    	je     2fd2 <dirfile+0x202>
  if(link("README", "dirfile/xx") == 0){
    2e86:	83 ec 08             	sub    $0x8,%esp
    2e89:	68 be 4f 00 00       	push   $0x4fbe
    2e8e:	68 22 50 00 00       	push   $0x5022
    2e93:	e8 2a 10 00 00       	call   3ec2 <link>
    2e98:	83 c4 10             	add    $0x10,%esp
    2e9b:	85 c0                	test   %eax,%eax
    2e9d:	0f 84 15 01 00 00    	je     2fb8 <dirfile+0x1e8>
  if(unlink("dirfile") != 0){
    2ea3:	83 ec 0c             	sub    $0xc,%esp
    2ea6:	68 85 4f 00 00       	push   $0x4f85
    2eab:	e8 02 10 00 00       	call   3eb2 <unlink>
    2eb0:	83 c4 10             	add    $0x10,%esp
    2eb3:	85 c0                	test   %eax,%eax
    2eb5:	0f 85 e3 00 00 00    	jne    2f9e <dirfile+0x1ce>
  fd = open(".", O_RDWR);
    2ebb:	83 ec 08             	sub    $0x8,%esp
    2ebe:	6a 02                	push   $0x2
    2ec0:	68 7e 4b 00 00       	push   $0x4b7e
    2ec5:	e8 d8 0f 00 00       	call   3ea2 <open>
  if(fd >= 0){
    2eca:	83 c4 10             	add    $0x10,%esp
    2ecd:	85 c0                	test   %eax,%eax
    2ecf:	0f 89 af 00 00 00    	jns    2f84 <dirfile+0x1b4>
  fd = open(".", 0);
    2ed5:	83 ec 08             	sub    $0x8,%esp
    2ed8:	6a 00                	push   $0x0
    2eda:	68 7e 4b 00 00       	push   $0x4b7e
    2edf:	e8 be 0f 00 00       	call   3ea2 <open>
  if(write(fd, "x", 1) > 0){
    2ee4:	83 c4 0c             	add    $0xc,%esp
  fd = open(".", 0);
    2ee7:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    2ee9:	6a 01                	push   $0x1
    2eeb:	68 61 4c 00 00       	push   $0x4c61
    2ef0:	50                   	push   %eax
    2ef1:	e8 8c 0f 00 00       	call   3e82 <write>
    2ef6:	83 c4 10             	add    $0x10,%esp
    2ef9:	85 c0                	test   %eax,%eax
    2efb:	7f 6d                	jg     2f6a <dirfile+0x19a>
  close(fd);
    2efd:	83 ec 0c             	sub    $0xc,%esp
    2f00:	53                   	push   %ebx
    2f01:	e8 84 0f 00 00       	call   3e8a <close>
  printf(1, "dir vs file OK\n");
    2f06:	58                   	pop    %eax
    2f07:	5a                   	pop    %edx
    2f08:	68 55 50 00 00       	push   $0x5055
    2f0d:	6a 01                	push   $0x1
    2f0f:	e8 9c 10 00 00       	call   3fb0 <printf>
}
    2f14:	83 c4 10             	add    $0x10,%esp
    2f17:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2f1a:	c9                   	leave  
    2f1b:	c3                   	ret    
    printf(1, "create dirfile/xx succeeded!\n");
    2f1c:	50                   	push   %eax
    2f1d:	50                   	push   %eax
    2f1e:	68 c9 4f 00 00       	push   $0x4fc9
    2f23:	6a 01                	push   $0x1
    2f25:	e8 86 10 00 00       	call   3fb0 <printf>
    exit(0);
    2f2a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f31:	e8 2c 0f 00 00       	call   3e62 <exit>
    printf(1, "chdir dirfile succeeded!\n");
    2f36:	50                   	push   %eax
    2f37:	50                   	push   %eax
    2f38:	68 a4 4f 00 00       	push   $0x4fa4
    2f3d:	6a 01                	push   $0x1
    2f3f:	e8 6c 10 00 00       	call   3fb0 <printf>
    exit(0);
    2f44:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f4b:	e8 12 0f 00 00       	call   3e62 <exit>
    printf(1, "create dirfile failed\n");
    2f50:	52                   	push   %edx
    2f51:	52                   	push   %edx
    2f52:	68 8d 4f 00 00       	push   $0x4f8d
    2f57:	6a 01                	push   $0x1
    2f59:	e8 52 10 00 00       	call   3fb0 <printf>
    exit(1);
    2f5e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f65:	e8 f8 0e 00 00       	call   3e62 <exit>
    printf(1, "write . succeeded!\n");
    2f6a:	51                   	push   %ecx
    2f6b:	51                   	push   %ecx
    2f6c:	68 41 50 00 00       	push   $0x5041
    2f71:	6a 01                	push   $0x1
    2f73:	e8 38 10 00 00       	call   3fb0 <printf>
    exit(0);
    2f78:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f7f:	e8 de 0e 00 00       	call   3e62 <exit>
    printf(1, "open . for writing succeeded!\n");
    2f84:	53                   	push   %ebx
    2f85:	53                   	push   %ebx
    2f86:	68 38 58 00 00       	push   $0x5838
    2f8b:	6a 01                	push   $0x1
    2f8d:	e8 1e 10 00 00       	call   3fb0 <printf>
    exit(0);
    2f92:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f99:	e8 c4 0e 00 00       	call   3e62 <exit>
    printf(1, "unlink dirfile failed!\n");
    2f9e:	50                   	push   %eax
    2f9f:	50                   	push   %eax
    2fa0:	68 29 50 00 00       	push   $0x5029
    2fa5:	6a 01                	push   $0x1
    2fa7:	e8 04 10 00 00       	call   3fb0 <printf>
    exit(1);
    2fac:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2fb3:	e8 aa 0e 00 00       	call   3e62 <exit>
    printf(1, "link to dirfile/xx succeeded!\n");
    2fb8:	50                   	push   %eax
    2fb9:	50                   	push   %eax
    2fba:	68 18 58 00 00       	push   $0x5818
    2fbf:	6a 01                	push   $0x1
    2fc1:	e8 ea 0f 00 00       	call   3fb0 <printf>
    exit(0);
    2fc6:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2fcd:	e8 90 0e 00 00       	call   3e62 <exit>
    printf(1, "unlink dirfile/xx succeeded!\n");
    2fd2:	50                   	push   %eax
    2fd3:	50                   	push   %eax
    2fd4:	68 04 50 00 00       	push   $0x5004
    2fd9:	6a 01                	push   $0x1
    2fdb:	e8 d0 0f 00 00       	call   3fb0 <printf>
    exit(0);
    2fe0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2fe7:	e8 76 0e 00 00       	call   3e62 <exit>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    2fec:	50                   	push   %eax
    2fed:	50                   	push   %eax
    2fee:	68 e7 4f 00 00       	push   $0x4fe7
    2ff3:	6a 01                	push   $0x1
    2ff5:	e8 b6 0f 00 00       	call   3fb0 <printf>
    exit(0);
    2ffa:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3001:	e8 5c 0e 00 00       	call   3e62 <exit>
    3006:	8d 76 00             	lea    0x0(%esi),%esi
    3009:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003010 <iref>:
{
    3010:	55                   	push   %ebp
    3011:	89 e5                	mov    %esp,%ebp
    3013:	53                   	push   %ebx
  printf(1, "empty file name\n");
    3014:	bb 33 00 00 00       	mov    $0x33,%ebx
{
    3019:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "empty file name\n");
    301c:	68 65 50 00 00       	push   $0x5065
    3021:	6a 01                	push   $0x1
    3023:	e8 88 0f 00 00       	call   3fb0 <printf>
    3028:	83 c4 10             	add    $0x10,%esp
    302b:	90                   	nop
    302c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(mkdir("irefd") != 0){
    3030:	83 ec 0c             	sub    $0xc,%esp
    3033:	68 76 50 00 00       	push   $0x5076
    3038:	e8 8d 0e 00 00       	call   3eca <mkdir>
    303d:	83 c4 10             	add    $0x10,%esp
    3040:	85 c0                	test   %eax,%eax
    3042:	0f 85 bb 00 00 00    	jne    3103 <iref+0xf3>
    if(chdir("irefd") != 0){
    3048:	83 ec 0c             	sub    $0xc,%esp
    304b:	68 76 50 00 00       	push   $0x5076
    3050:	e8 7d 0e 00 00       	call   3ed2 <chdir>
    3055:	83 c4 10             	add    $0x10,%esp
    3058:	85 c0                	test   %eax,%eax
    305a:	0f 85 be 00 00 00    	jne    311e <iref+0x10e>
    mkdir("");
    3060:	83 ec 0c             	sub    $0xc,%esp
    3063:	68 2b 47 00 00       	push   $0x472b
    3068:	e8 5d 0e 00 00       	call   3eca <mkdir>
    link("README", "");
    306d:	59                   	pop    %ecx
    306e:	58                   	pop    %eax
    306f:	68 2b 47 00 00       	push   $0x472b
    3074:	68 22 50 00 00       	push   $0x5022
    3079:	e8 44 0e 00 00       	call   3ec2 <link>
    fd = open("", O_CREATE);
    307e:	58                   	pop    %eax
    307f:	5a                   	pop    %edx
    3080:	68 00 02 00 00       	push   $0x200
    3085:	68 2b 47 00 00       	push   $0x472b
    308a:	e8 13 0e 00 00       	call   3ea2 <open>
    if(fd >= 0)
    308f:	83 c4 10             	add    $0x10,%esp
    3092:	85 c0                	test   %eax,%eax
    3094:	78 0c                	js     30a2 <iref+0x92>
      close(fd);
    3096:	83 ec 0c             	sub    $0xc,%esp
    3099:	50                   	push   %eax
    309a:	e8 eb 0d 00 00       	call   3e8a <close>
    309f:	83 c4 10             	add    $0x10,%esp
    fd = open("xx", O_CREATE);
    30a2:	83 ec 08             	sub    $0x8,%esp
    30a5:	68 00 02 00 00       	push   $0x200
    30aa:	68 60 4c 00 00       	push   $0x4c60
    30af:	e8 ee 0d 00 00       	call   3ea2 <open>
    if(fd >= 0)
    30b4:	83 c4 10             	add    $0x10,%esp
    30b7:	85 c0                	test   %eax,%eax
    30b9:	78 0c                	js     30c7 <iref+0xb7>
      close(fd);
    30bb:	83 ec 0c             	sub    $0xc,%esp
    30be:	50                   	push   %eax
    30bf:	e8 c6 0d 00 00       	call   3e8a <close>
    30c4:	83 c4 10             	add    $0x10,%esp
    unlink("xx");
    30c7:	83 ec 0c             	sub    $0xc,%esp
    30ca:	68 60 4c 00 00       	push   $0x4c60
    30cf:	e8 de 0d 00 00       	call   3eb2 <unlink>
  for(i = 0; i < 50 + 1; i++){
    30d4:	83 c4 10             	add    $0x10,%esp
    30d7:	83 eb 01             	sub    $0x1,%ebx
    30da:	0f 85 50 ff ff ff    	jne    3030 <iref+0x20>
  chdir("/");
    30e0:	83 ec 0c             	sub    $0xc,%esp
    30e3:	68 51 43 00 00       	push   $0x4351
    30e8:	e8 e5 0d 00 00       	call   3ed2 <chdir>
  printf(1, "empty file name OK\n");
    30ed:	58                   	pop    %eax
    30ee:	5a                   	pop    %edx
    30ef:	68 a4 50 00 00       	push   $0x50a4
    30f4:	6a 01                	push   $0x1
    30f6:	e8 b5 0e 00 00       	call   3fb0 <printf>
}
    30fb:	83 c4 10             	add    $0x10,%esp
    30fe:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3101:	c9                   	leave  
    3102:	c3                   	ret    
      printf(1, "mkdir irefd failed\n");
    3103:	83 ec 08             	sub    $0x8,%esp
    3106:	68 7c 50 00 00       	push   $0x507c
    310b:	6a 01                	push   $0x1
    310d:	e8 9e 0e 00 00       	call   3fb0 <printf>
      exit(1);
    3112:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3119:	e8 44 0d 00 00       	call   3e62 <exit>
      printf(1, "chdir irefd failed\n");
    311e:	83 ec 08             	sub    $0x8,%esp
    3121:	68 90 50 00 00       	push   $0x5090
    3126:	6a 01                	push   $0x1
    3128:	e8 83 0e 00 00       	call   3fb0 <printf>
      exit(1);
    312d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3134:	e8 29 0d 00 00       	call   3e62 <exit>
    3139:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003140 <forktest>:
{
    3140:	55                   	push   %ebp
    3141:	89 e5                	mov    %esp,%ebp
    3143:	53                   	push   %ebx
  for(n=0; n<1000; n++){
    3144:	31 db                	xor    %ebx,%ebx
{
    3146:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "fork test\n");
    3149:	68 b8 50 00 00       	push   $0x50b8
    314e:	6a 01                	push   $0x1
    3150:	e8 5b 0e 00 00       	call   3fb0 <printf>
    3155:	83 c4 10             	add    $0x10,%esp
    3158:	eb 13                	jmp    316d <forktest+0x2d>
    315a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(pid == 0)
    3160:	74 79                	je     31db <forktest+0x9b>
  for(n=0; n<1000; n++){
    3162:	83 c3 01             	add    $0x1,%ebx
    3165:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    316b:	74 53                	je     31c0 <forktest+0x80>
    pid = fork();
    316d:	e8 e8 0c 00 00       	call   3e5a <fork>
    if(pid < 0)
    3172:	85 c0                	test   %eax,%eax
    3174:	79 ea                	jns    3160 <forktest+0x20>
  for(; n > 0; n--){
    3176:	85 db                	test   %ebx,%ebx
    3178:	74 1c                	je     3196 <forktest+0x56>
    317a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(wait(null) < 0){
    3180:	83 ec 0c             	sub    $0xc,%esp
    3183:	6a 00                	push   $0x0
    3185:	e8 e0 0c 00 00       	call   3e6a <wait>
    318a:	83 c4 10             	add    $0x10,%esp
    318d:	85 c0                	test   %eax,%eax
    318f:	78 54                	js     31e5 <forktest+0xa5>
  for(; n > 0; n--){
    3191:	83 eb 01             	sub    $0x1,%ebx
    3194:	75 ea                	jne    3180 <forktest+0x40>
  if(wait(null) != -1){
    3196:	83 ec 0c             	sub    $0xc,%esp
    3199:	6a 00                	push   $0x0
    319b:	e8 ca 0c 00 00       	call   3e6a <wait>
    31a0:	83 c4 10             	add    $0x10,%esp
    31a3:	83 f8 ff             	cmp    $0xffffffff,%eax
    31a6:	75 58                	jne    3200 <forktest+0xc0>
  printf(1, "fork test OK\n");
    31a8:	83 ec 08             	sub    $0x8,%esp
    31ab:	68 ea 50 00 00       	push   $0x50ea
    31b0:	6a 01                	push   $0x1
    31b2:	e8 f9 0d 00 00       	call   3fb0 <printf>
}
    31b7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    31ba:	c9                   	leave  
    31bb:	c3                   	ret    
    31bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    printf(1, "fork claimed to work 1000 times!\n");
    31c0:	83 ec 08             	sub    $0x8,%esp
    31c3:	68 58 58 00 00       	push   $0x5858
    31c8:	6a 01                	push   $0x1
    31ca:	e8 e1 0d 00 00       	call   3fb0 <printf>
    exit(1);
    31cf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    31d6:	e8 87 0c 00 00       	call   3e62 <exit>
      exit(1);
    31db:	83 ec 0c             	sub    $0xc,%esp
    31de:	6a 01                	push   $0x1
    31e0:	e8 7d 0c 00 00       	call   3e62 <exit>
      printf(1, "wait stopped early\n");
    31e5:	83 ec 08             	sub    $0x8,%esp
    31e8:	68 c3 50 00 00       	push   $0x50c3
    31ed:	6a 01                	push   $0x1
    31ef:	e8 bc 0d 00 00       	call   3fb0 <printf>
      exit(1);
    31f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    31fb:	e8 62 0c 00 00       	call   3e62 <exit>
    printf(1, "wait got too many\n");
    3200:	50                   	push   %eax
    3201:	50                   	push   %eax
    3202:	68 d7 50 00 00       	push   $0x50d7
    3207:	6a 01                	push   $0x1
    3209:	e8 a2 0d 00 00       	call   3fb0 <printf>
    exit(1);
    320e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3215:	e8 48 0c 00 00       	call   3e62 <exit>
    321a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003220 <sbrktest>:
{
    3220:	55                   	push   %ebp
    3221:	89 e5                	mov    %esp,%ebp
    3223:	57                   	push   %edi
    3224:	56                   	push   %esi
    3225:	53                   	push   %ebx
  for(i = 0; i < 5000; i++){
    3226:	31 ff                	xor    %edi,%edi
{
    3228:	83 ec 64             	sub    $0x64,%esp
  printf(stdout, "sbrk test\n");
    322b:	68 f8 50 00 00       	push   $0x50f8
    3230:	ff 35 b8 63 00 00    	pushl  0x63b8
    3236:	e8 75 0d 00 00       	call   3fb0 <printf>
  oldbrk = sbrk(0);
    323b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3242:	e8 a3 0c 00 00       	call   3eea <sbrk>
  a = sbrk(0);
    3247:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  oldbrk = sbrk(0);
    324e:	89 c3                	mov    %eax,%ebx
  a = sbrk(0);
    3250:	e8 95 0c 00 00       	call   3eea <sbrk>
    3255:	83 c4 10             	add    $0x10,%esp
    3258:	89 c6                	mov    %eax,%esi
    325a:	eb 06                	jmp    3262 <sbrktest+0x42>
    325c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    a = b + 1;
    3260:	89 c6                	mov    %eax,%esi
    b = sbrk(1);
    3262:	83 ec 0c             	sub    $0xc,%esp
    3265:	6a 01                	push   $0x1
    3267:	e8 7e 0c 00 00       	call   3eea <sbrk>
    if(b != a){
    326c:	83 c4 10             	add    $0x10,%esp
    326f:	39 f0                	cmp    %esi,%eax
    3271:	0f 85 79 02 00 00    	jne    34f0 <sbrktest+0x2d0>
  for(i = 0; i < 5000; i++){
    3277:	83 c7 01             	add    $0x1,%edi
    *b = 1;
    327a:	c6 06 01             	movb   $0x1,(%esi)
    a = b + 1;
    327d:	8d 46 01             	lea    0x1(%esi),%eax
  for(i = 0; i < 5000; i++){
    3280:	81 ff 88 13 00 00    	cmp    $0x1388,%edi
    3286:	75 d8                	jne    3260 <sbrktest+0x40>
  pid = fork();
    3288:	e8 cd 0b 00 00       	call   3e5a <fork>
  if(pid < 0){
    328d:	85 c0                	test   %eax,%eax
  pid = fork();
    328f:	89 c7                	mov    %eax,%edi
  if(pid < 0){
    3291:	0f 88 ed 03 00 00    	js     3684 <sbrktest+0x464>
  c = sbrk(1);
    3297:	83 ec 0c             	sub    $0xc,%esp
  if(c != a + 1){
    329a:	83 c6 02             	add    $0x2,%esi
  c = sbrk(1);
    329d:	6a 01                	push   $0x1
    329f:	e8 46 0c 00 00       	call   3eea <sbrk>
  c = sbrk(1);
    32a4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    32ab:	e8 3a 0c 00 00       	call   3eea <sbrk>
  if(c != a + 1){
    32b0:	83 c4 10             	add    $0x10,%esp
    32b3:	39 f0                	cmp    %esi,%eax
    32b5:	0f 85 ab 03 00 00    	jne    3666 <sbrktest+0x446>
  if(pid == 0)
    32bb:	85 ff                	test   %edi,%edi
    32bd:	0f 84 99 03 00 00    	je     365c <sbrktest+0x43c>
  wait(null);
    32c3:	83 ec 0c             	sub    $0xc,%esp
    32c6:	6a 00                	push   $0x0
    32c8:	e8 9d 0b 00 00       	call   3e6a <wait>
  a = sbrk(0);
    32cd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    32d4:	e8 11 0c 00 00       	call   3eea <sbrk>
    32d9:	89 c6                	mov    %eax,%esi
  amt = (BIG) - (uint)a;
    32db:	b8 00 00 40 06       	mov    $0x6400000,%eax
    32e0:	29 f0                	sub    %esi,%eax
  p = sbrk(amt);
    32e2:	89 04 24             	mov    %eax,(%esp)
    32e5:	e8 00 0c 00 00       	call   3eea <sbrk>
  if (p != a) {
    32ea:	83 c4 10             	add    $0x10,%esp
    32ed:	39 c6                	cmp    %eax,%esi
    32ef:	0f 85 49 03 00 00    	jne    363e <sbrktest+0x41e>
  a = sbrk(0);
    32f5:	83 ec 0c             	sub    $0xc,%esp
  *lastaddr = 99;
    32f8:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
  a = sbrk(0);
    32ff:	6a 00                	push   $0x0
    3301:	e8 e4 0b 00 00       	call   3eea <sbrk>
  c = sbrk(-4096);
    3306:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  a = sbrk(0);
    330d:	89 c6                	mov    %eax,%esi
  c = sbrk(-4096);
    330f:	e8 d6 0b 00 00       	call   3eea <sbrk>
  if(c == (char*)0xffffffff){
    3314:	83 c4 10             	add    $0x10,%esp
    3317:	83 f8 ff             	cmp    $0xffffffff,%eax
    331a:	0f 84 00 03 00 00    	je     3620 <sbrktest+0x400>
  c = sbrk(0);
    3320:	83 ec 0c             	sub    $0xc,%esp
    3323:	6a 00                	push   $0x0
    3325:	e8 c0 0b 00 00       	call   3eea <sbrk>
  if(c != a - 4096){
    332a:	8d 96 00 f0 ff ff    	lea    -0x1000(%esi),%edx
    3330:	83 c4 10             	add    $0x10,%esp
    3333:	39 d0                	cmp    %edx,%eax
    3335:	0f 85 c7 02 00 00    	jne    3602 <sbrktest+0x3e2>
  a = sbrk(0);
    333b:	83 ec 0c             	sub    $0xc,%esp
    333e:	6a 00                	push   $0x0
    3340:	e8 a5 0b 00 00       	call   3eea <sbrk>
    3345:	89 c6                	mov    %eax,%esi
  c = sbrk(4096);
    3347:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    334e:	e8 97 0b 00 00       	call   3eea <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    3353:	83 c4 10             	add    $0x10,%esp
    3356:	39 c6                	cmp    %eax,%esi
  c = sbrk(4096);
    3358:	89 c7                	mov    %eax,%edi
  if(c != a || sbrk(0) != a + 4096){
    335a:	0f 85 84 02 00 00    	jne    35e4 <sbrktest+0x3c4>
    3360:	83 ec 0c             	sub    $0xc,%esp
    3363:	6a 00                	push   $0x0
    3365:	e8 80 0b 00 00       	call   3eea <sbrk>
    336a:	8d 96 00 10 00 00    	lea    0x1000(%esi),%edx
    3370:	83 c4 10             	add    $0x10,%esp
    3373:	39 d0                	cmp    %edx,%eax
    3375:	0f 85 69 02 00 00    	jne    35e4 <sbrktest+0x3c4>
  if(*lastaddr == 99){
    337b:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    3382:	0f 84 3e 02 00 00    	je     35c6 <sbrktest+0x3a6>
  a = sbrk(0);
    3388:	83 ec 0c             	sub    $0xc,%esp
    338b:	6a 00                	push   $0x0
    338d:	e8 58 0b 00 00       	call   3eea <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    3392:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a = sbrk(0);
    3399:	89 c6                	mov    %eax,%esi
  c = sbrk(-(sbrk(0) - oldbrk));
    339b:	e8 4a 0b 00 00       	call   3eea <sbrk>
    33a0:	89 d9                	mov    %ebx,%ecx
    33a2:	29 c1                	sub    %eax,%ecx
    33a4:	89 0c 24             	mov    %ecx,(%esp)
    33a7:	e8 3e 0b 00 00       	call   3eea <sbrk>
  if(c != a){
    33ac:	83 c4 10             	add    $0x10,%esp
    33af:	39 c6                	cmp    %eax,%esi
    33b1:	0f 85 f1 01 00 00    	jne    35a8 <sbrktest+0x388>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    33b7:	be 00 00 00 80       	mov    $0x80000000,%esi
    ppid = getpid();
    33bc:	e8 21 0b 00 00       	call   3ee2 <getpid>
    33c1:	89 c7                	mov    %eax,%edi
    pid = fork();
    33c3:	e8 92 0a 00 00       	call   3e5a <fork>
    if(pid < 0){
    33c8:	85 c0                	test   %eax,%eax
    33ca:	0f 88 ba 01 00 00    	js     358a <sbrktest+0x36a>
    if(pid == 0){
    33d0:	0f 84 8b 01 00 00    	je     3561 <sbrktest+0x341>
    wait(null);
    33d6:	83 ec 0c             	sub    $0xc,%esp
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    33d9:	81 c6 50 c3 00 00    	add    $0xc350,%esi
    wait(null);
    33df:	6a 00                	push   $0x0
    33e1:	e8 84 0a 00 00       	call   3e6a <wait>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    33e6:	83 c4 10             	add    $0x10,%esp
    33e9:	81 fe 80 84 1e 80    	cmp    $0x801e8480,%esi
    33ef:	75 cb                	jne    33bc <sbrktest+0x19c>
  if(pipe(fds) != 0){
    33f1:	8d 45 b8             	lea    -0x48(%ebp),%eax
    33f4:	83 ec 0c             	sub    $0xc,%esp
    33f7:	50                   	push   %eax
    33f8:	e8 75 0a 00 00       	call   3e72 <pipe>
    33fd:	83 c4 10             	add    $0x10,%esp
    3400:	85 c0                	test   %eax,%eax
    3402:	0f 85 3f 01 00 00    	jne    3547 <sbrktest+0x327>
    3408:	8d 7d c0             	lea    -0x40(%ebp),%edi
    340b:	89 fe                	mov    %edi,%esi
    340d:	eb 23                	jmp    3432 <sbrktest+0x212>
    if(pids[i] != -1)
    340f:	83 f8 ff             	cmp    $0xffffffff,%eax
    3412:	74 14                	je     3428 <sbrktest+0x208>
      read(fds[0], &scratch, 1);
    3414:	8d 45 b7             	lea    -0x49(%ebp),%eax
    3417:	83 ec 04             	sub    $0x4,%esp
    341a:	6a 01                	push   $0x1
    341c:	50                   	push   %eax
    341d:	ff 75 b8             	pushl  -0x48(%ebp)
    3420:	e8 55 0a 00 00       	call   3e7a <read>
    3425:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    3428:	8d 45 e8             	lea    -0x18(%ebp),%eax
    342b:	83 c6 04             	add    $0x4,%esi
    342e:	39 c6                	cmp    %eax,%esi
    3430:	74 50                	je     3482 <sbrktest+0x262>
    if((pids[i] = fork()) == 0){
    3432:	e8 23 0a 00 00       	call   3e5a <fork>
    3437:	85 c0                	test   %eax,%eax
    3439:	89 06                	mov    %eax,(%esi)
    343b:	75 d2                	jne    340f <sbrktest+0x1ef>
      sbrk(BIG - (uint)sbrk(0));
    343d:	83 ec 0c             	sub    $0xc,%esp
    3440:	6a 00                	push   $0x0
    3442:	e8 a3 0a 00 00       	call   3eea <sbrk>
    3447:	ba 00 00 40 06       	mov    $0x6400000,%edx
    344c:	29 c2                	sub    %eax,%edx
    344e:	89 14 24             	mov    %edx,(%esp)
    3451:	e8 94 0a 00 00       	call   3eea <sbrk>
      write(fds[1], "x", 1);
    3456:	83 c4 0c             	add    $0xc,%esp
    3459:	6a 01                	push   $0x1
    345b:	68 61 4c 00 00       	push   $0x4c61
    3460:	ff 75 bc             	pushl  -0x44(%ebp)
    3463:	e8 1a 0a 00 00       	call   3e82 <write>
    3468:	83 c4 10             	add    $0x10,%esp
    346b:	90                   	nop
    346c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      for(;;) sleep(1000);
    3470:	83 ec 0c             	sub    $0xc,%esp
    3473:	68 e8 03 00 00       	push   $0x3e8
    3478:	e8 75 0a 00 00       	call   3ef2 <sleep>
    347d:	83 c4 10             	add    $0x10,%esp
    3480:	eb ee                	jmp    3470 <sbrktest+0x250>
  c = sbrk(4096);
    3482:	83 ec 0c             	sub    $0xc,%esp
    3485:	68 00 10 00 00       	push   $0x1000
    348a:	e8 5b 0a 00 00       	call   3eea <sbrk>
    348f:	83 c4 10             	add    $0x10,%esp
    3492:	89 45 a4             	mov    %eax,-0x5c(%ebp)
    if(pids[i] == -1)
    3495:	8b 07                	mov    (%edi),%eax
    3497:	83 f8 ff             	cmp    $0xffffffff,%eax
    349a:	74 18                	je     34b4 <sbrktest+0x294>
    kill(pids[i]);
    349c:	83 ec 0c             	sub    $0xc,%esp
    349f:	50                   	push   %eax
    34a0:	e8 ed 09 00 00       	call   3e92 <kill>
    wait(null);
    34a5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    34ac:	e8 b9 09 00 00       	call   3e6a <wait>
    34b1:	83 c4 10             	add    $0x10,%esp
    34b4:	83 c7 04             	add    $0x4,%edi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    34b7:	39 fe                	cmp    %edi,%esi
    34b9:	75 da                	jne    3495 <sbrktest+0x275>
  if(c == (char*)0xffffffff){
    34bb:	83 7d a4 ff          	cmpl   $0xffffffff,-0x5c(%ebp)
    34bf:	74 68                	je     3529 <sbrktest+0x309>
  if(sbrk(0) > oldbrk)
    34c1:	83 ec 0c             	sub    $0xc,%esp
    34c4:	6a 00                	push   $0x0
    34c6:	e8 1f 0a 00 00       	call   3eea <sbrk>
    34cb:	83 c4 10             	add    $0x10,%esp
    34ce:	39 d8                	cmp    %ebx,%eax
    34d0:	77 3e                	ja     3510 <sbrktest+0x2f0>
  printf(stdout, "sbrk test OK\n");
    34d2:	83 ec 08             	sub    $0x8,%esp
    34d5:	68 a0 51 00 00       	push   $0x51a0
    34da:	ff 35 b8 63 00 00    	pushl  0x63b8
    34e0:	e8 cb 0a 00 00       	call   3fb0 <printf>
}
    34e5:	83 c4 10             	add    $0x10,%esp
    34e8:	8d 65 f4             	lea    -0xc(%ebp),%esp
    34eb:	5b                   	pop    %ebx
    34ec:	5e                   	pop    %esi
    34ed:	5f                   	pop    %edi
    34ee:	5d                   	pop    %ebp
    34ef:	c3                   	ret    
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    34f0:	83 ec 0c             	sub    $0xc,%esp
    34f3:	50                   	push   %eax
    34f4:	56                   	push   %esi
    34f5:	57                   	push   %edi
    34f6:	68 03 51 00 00       	push   $0x5103
    34fb:	ff 35 b8 63 00 00    	pushl  0x63b8
    3501:	e8 aa 0a 00 00       	call   3fb0 <printf>
      exit(1);
    3506:	83 c4 14             	add    $0x14,%esp
    3509:	6a 01                	push   $0x1
    350b:	e8 52 09 00 00       	call   3e62 <exit>
    sbrk(-(sbrk(0) - oldbrk));
    3510:	83 ec 0c             	sub    $0xc,%esp
    3513:	6a 00                	push   $0x0
    3515:	e8 d0 09 00 00       	call   3eea <sbrk>
    351a:	29 c3                	sub    %eax,%ebx
    351c:	89 1c 24             	mov    %ebx,(%esp)
    351f:	e8 c6 09 00 00       	call   3eea <sbrk>
    3524:	83 c4 10             	add    $0x10,%esp
    3527:	eb a9                	jmp    34d2 <sbrktest+0x2b2>
    printf(stdout, "failed sbrk leaked memory\n");
    3529:	50                   	push   %eax
    352a:	50                   	push   %eax
    352b:	68 85 51 00 00       	push   $0x5185
    3530:	ff 35 b8 63 00 00    	pushl  0x63b8
    3536:	e8 75 0a 00 00       	call   3fb0 <printf>
    exit(1);
    353b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3542:	e8 1b 09 00 00       	call   3e62 <exit>
    printf(1, "pipe() failed\n");
    3547:	52                   	push   %edx
    3548:	52                   	push   %edx
    3549:	68 41 46 00 00       	push   $0x4641
    354e:	6a 01                	push   $0x1
    3550:	e8 5b 0a 00 00       	call   3fb0 <printf>
    exit(1);
    3555:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    355c:	e8 01 09 00 00       	call   3e62 <exit>
      printf(stdout, "oops could read %x = %x\n", a, *a);
    3561:	0f be 06             	movsbl (%esi),%eax
    3564:	50                   	push   %eax
    3565:	56                   	push   %esi
    3566:	68 6c 51 00 00       	push   $0x516c
    356b:	ff 35 b8 63 00 00    	pushl  0x63b8
    3571:	e8 3a 0a 00 00       	call   3fb0 <printf>
      kill(ppid);
    3576:	89 3c 24             	mov    %edi,(%esp)
    3579:	e8 14 09 00 00       	call   3e92 <kill>
      exit(1);
    357e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3585:	e8 d8 08 00 00       	call   3e62 <exit>
      printf(stdout, "fork failed\n");
    358a:	51                   	push   %ecx
    358b:	51                   	push   %ecx
    358c:	68 49 52 00 00       	push   $0x5249
    3591:	ff 35 b8 63 00 00    	pushl  0x63b8
    3597:	e8 14 0a 00 00       	call   3fb0 <printf>
      exit(1);
    359c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    35a3:	e8 ba 08 00 00       	call   3e62 <exit>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    35a8:	50                   	push   %eax
    35a9:	56                   	push   %esi
    35aa:	68 4c 59 00 00       	push   $0x594c
    35af:	ff 35 b8 63 00 00    	pushl  0x63b8
    35b5:	e8 f6 09 00 00       	call   3fb0 <printf>
    exit(1);
    35ba:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    35c1:	e8 9c 08 00 00       	call   3e62 <exit>
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    35c6:	53                   	push   %ebx
    35c7:	53                   	push   %ebx
    35c8:	68 1c 59 00 00       	push   $0x591c
    35cd:	ff 35 b8 63 00 00    	pushl  0x63b8
    35d3:	e8 d8 09 00 00       	call   3fb0 <printf>
    exit(1);
    35d8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    35df:	e8 7e 08 00 00       	call   3e62 <exit>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    35e4:	57                   	push   %edi
    35e5:	56                   	push   %esi
    35e6:	68 f4 58 00 00       	push   $0x58f4
    35eb:	ff 35 b8 63 00 00    	pushl  0x63b8
    35f1:	e8 ba 09 00 00       	call   3fb0 <printf>
    exit(1);
    35f6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    35fd:	e8 60 08 00 00       	call   3e62 <exit>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    3602:	50                   	push   %eax
    3603:	56                   	push   %esi
    3604:	68 bc 58 00 00       	push   $0x58bc
    3609:	ff 35 b8 63 00 00    	pushl  0x63b8
    360f:	e8 9c 09 00 00       	call   3fb0 <printf>
    exit(1);
    3614:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    361b:	e8 42 08 00 00       	call   3e62 <exit>
    printf(stdout, "sbrk could not deallocate\n");
    3620:	56                   	push   %esi
    3621:	56                   	push   %esi
    3622:	68 51 51 00 00       	push   $0x5151
    3627:	ff 35 b8 63 00 00    	pushl  0x63b8
    362d:	e8 7e 09 00 00       	call   3fb0 <printf>
    exit(1);
    3632:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3639:	e8 24 08 00 00       	call   3e62 <exit>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    363e:	57                   	push   %edi
    363f:	57                   	push   %edi
    3640:	68 7c 58 00 00       	push   $0x587c
    3645:	ff 35 b8 63 00 00    	pushl  0x63b8
    364b:	e8 60 09 00 00       	call   3fb0 <printf>
    exit(1);
    3650:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3657:	e8 06 08 00 00       	call   3e62 <exit>
    exit(1);
    365c:	83 ec 0c             	sub    $0xc,%esp
    365f:	6a 01                	push   $0x1
    3661:	e8 fc 07 00 00       	call   3e62 <exit>
    printf(stdout, "sbrk test failed post-fork\n");
    3666:	50                   	push   %eax
    3667:	50                   	push   %eax
    3668:	68 35 51 00 00       	push   $0x5135
    366d:	ff 35 b8 63 00 00    	pushl  0x63b8
    3673:	e8 38 09 00 00       	call   3fb0 <printf>
    exit(1);
    3678:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    367f:	e8 de 07 00 00       	call   3e62 <exit>
    printf(stdout, "sbrk test fork failed\n");
    3684:	50                   	push   %eax
    3685:	50                   	push   %eax
    3686:	68 1e 51 00 00       	push   $0x511e
    368b:	ff 35 b8 63 00 00    	pushl  0x63b8
    3691:	e8 1a 09 00 00       	call   3fb0 <printf>
    exit(1);
    3696:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    369d:	e8 c0 07 00 00       	call   3e62 <exit>
    36a2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    36a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000036b0 <validateint>:
{
    36b0:	55                   	push   %ebp
    36b1:	89 e5                	mov    %esp,%ebp
}
    36b3:	5d                   	pop    %ebp
    36b4:	c3                   	ret    
    36b5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    36b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000036c0 <validatetest>:
{
    36c0:	55                   	push   %ebp
    36c1:	89 e5                	mov    %esp,%ebp
    36c3:	56                   	push   %esi
    36c4:	53                   	push   %ebx
  for(p = 0; p <= (uint)hi; p += 4096){
    36c5:	31 db                	xor    %ebx,%ebx
  printf(stdout, "validate test\n");
    36c7:	83 ec 08             	sub    $0x8,%esp
    36ca:	68 ae 51 00 00       	push   $0x51ae
    36cf:	ff 35 b8 63 00 00    	pushl  0x63b8
    36d5:	e8 d6 08 00 00       	call   3fb0 <printf>
    36da:	83 c4 10             	add    $0x10,%esp
    36dd:	8d 76 00             	lea    0x0(%esi),%esi
    if((pid = fork()) == 0){
    36e0:	e8 75 07 00 00       	call   3e5a <fork>
    36e5:	85 c0                	test   %eax,%eax
    36e7:	89 c6                	mov    %eax,%esi
    36e9:	74 6a                	je     3755 <validatetest+0x95>
    sleep(0);
    36eb:	83 ec 0c             	sub    $0xc,%esp
    36ee:	6a 00                	push   $0x0
    36f0:	e8 fd 07 00 00       	call   3ef2 <sleep>
    sleep(0);
    36f5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    36fc:	e8 f1 07 00 00       	call   3ef2 <sleep>
    kill(pid);
    3701:	89 34 24             	mov    %esi,(%esp)
    3704:	e8 89 07 00 00       	call   3e92 <kill>
    wait(null);
    3709:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3710:	e8 55 07 00 00       	call   3e6a <wait>
    if(link("nosuchfile", (char*)p) != -1){
    3715:	58                   	pop    %eax
    3716:	5a                   	pop    %edx
    3717:	53                   	push   %ebx
    3718:	68 bd 51 00 00       	push   $0x51bd
    371d:	e8 a0 07 00 00       	call   3ec2 <link>
    3722:	83 c4 10             	add    $0x10,%esp
    3725:	83 f8 ff             	cmp    $0xffffffff,%eax
    3728:	75 35                	jne    375f <validatetest+0x9f>
  for(p = 0; p <= (uint)hi; p += 4096){
    372a:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    3730:	81 fb 00 40 11 00    	cmp    $0x114000,%ebx
    3736:	75 a8                	jne    36e0 <validatetest+0x20>
  printf(stdout, "validate ok\n");
    3738:	83 ec 08             	sub    $0x8,%esp
    373b:	68 e1 51 00 00       	push   $0x51e1
    3740:	ff 35 b8 63 00 00    	pushl  0x63b8
    3746:	e8 65 08 00 00       	call   3fb0 <printf>
}
    374b:	83 c4 10             	add    $0x10,%esp
    374e:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3751:	5b                   	pop    %ebx
    3752:	5e                   	pop    %esi
    3753:	5d                   	pop    %ebp
    3754:	c3                   	ret    
      exit(1);
    3755:	83 ec 0c             	sub    $0xc,%esp
    3758:	6a 01                	push   $0x1
    375a:	e8 03 07 00 00       	call   3e62 <exit>
      printf(stdout, "link should not succeed\n");
    375f:	83 ec 08             	sub    $0x8,%esp
    3762:	68 c8 51 00 00       	push   $0x51c8
    3767:	ff 35 b8 63 00 00    	pushl  0x63b8
    376d:	e8 3e 08 00 00       	call   3fb0 <printf>
      exit(1);
    3772:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3779:	e8 e4 06 00 00       	call   3e62 <exit>
    377e:	66 90                	xchg   %ax,%ax

00003780 <bsstest>:
{
    3780:	55                   	push   %ebp
    3781:	89 e5                	mov    %esp,%ebp
    3783:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "bss test\n");
    3786:	68 ee 51 00 00       	push   $0x51ee
    378b:	ff 35 b8 63 00 00    	pushl  0x63b8
    3791:	e8 1a 08 00 00       	call   3fb0 <printf>
    if(uninit[i] != '\0'){
    3796:	83 c4 10             	add    $0x10,%esp
    3799:	80 3d 80 64 00 00 00 	cmpb   $0x0,0x6480
    37a0:	75 39                	jne    37db <bsstest+0x5b>
  for(i = 0; i < sizeof(uninit); i++){
    37a2:	b8 01 00 00 00       	mov    $0x1,%eax
    37a7:	89 f6                	mov    %esi,%esi
    37a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    if(uninit[i] != '\0'){
    37b0:	80 b8 80 64 00 00 00 	cmpb   $0x0,0x6480(%eax)
    37b7:	75 22                	jne    37db <bsstest+0x5b>
  for(i = 0; i < sizeof(uninit); i++){
    37b9:	83 c0 01             	add    $0x1,%eax
    37bc:	3d 10 27 00 00       	cmp    $0x2710,%eax
    37c1:	75 ed                	jne    37b0 <bsstest+0x30>
  printf(stdout, "bss test ok\n");
    37c3:	83 ec 08             	sub    $0x8,%esp
    37c6:	68 09 52 00 00       	push   $0x5209
    37cb:	ff 35 b8 63 00 00    	pushl  0x63b8
    37d1:	e8 da 07 00 00       	call   3fb0 <printf>
}
    37d6:	83 c4 10             	add    $0x10,%esp
    37d9:	c9                   	leave  
    37da:	c3                   	ret    
      printf(stdout, "bss test failed\n");
    37db:	83 ec 08             	sub    $0x8,%esp
    37de:	68 f8 51 00 00       	push   $0x51f8
    37e3:	ff 35 b8 63 00 00    	pushl  0x63b8
    37e9:	e8 c2 07 00 00       	call   3fb0 <printf>
      exit(1);
    37ee:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    37f5:	e8 68 06 00 00       	call   3e62 <exit>
    37fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003800 <bigargtest>:
{
    3800:	55                   	push   %ebp
    3801:	89 e5                	mov    %esp,%ebp
    3803:	83 ec 14             	sub    $0x14,%esp
  unlink("bigarg-ok");
    3806:	68 16 52 00 00       	push   $0x5216
    380b:	e8 a2 06 00 00       	call   3eb2 <unlink>
  pid = fork();
    3810:	e8 45 06 00 00       	call   3e5a <fork>
  if(pid == 0){
    3815:	83 c4 10             	add    $0x10,%esp
    3818:	85 c0                	test   %eax,%eax
    381a:	74 43                	je     385f <bigargtest+0x5f>
  } else if(pid < 0){
    381c:	0f 88 d8 00 00 00    	js     38fa <bigargtest+0xfa>
  wait(null);
    3822:	83 ec 0c             	sub    $0xc,%esp
    3825:	6a 00                	push   $0x0
    3827:	e8 3e 06 00 00       	call   3e6a <wait>
  fd = open("bigarg-ok", 0);
    382c:	5a                   	pop    %edx
    382d:	59                   	pop    %ecx
    382e:	6a 00                	push   $0x0
    3830:	68 16 52 00 00       	push   $0x5216
    3835:	e8 68 06 00 00       	call   3ea2 <open>
  if(fd < 0){
    383a:	83 c4 10             	add    $0x10,%esp
    383d:	85 c0                	test   %eax,%eax
    383f:	0f 88 97 00 00 00    	js     38dc <bigargtest+0xdc>
  close(fd);
    3845:	83 ec 0c             	sub    $0xc,%esp
    3848:	50                   	push   %eax
    3849:	e8 3c 06 00 00       	call   3e8a <close>
  unlink("bigarg-ok");
    384e:	c7 04 24 16 52 00 00 	movl   $0x5216,(%esp)
    3855:	e8 58 06 00 00       	call   3eb2 <unlink>
}
    385a:	83 c4 10             	add    $0x10,%esp
    385d:	c9                   	leave  
    385e:	c3                   	ret    
    385f:	b8 e0 63 00 00       	mov    $0x63e0,%eax
    3864:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    3868:	c7 00 70 59 00 00    	movl   $0x5970,(%eax)
    386e:	83 c0 04             	add    $0x4,%eax
    for(i = 0; i < MAXARG-1; i++)
    3871:	3d 5c 64 00 00       	cmp    $0x645c,%eax
    3876:	75 f0                	jne    3868 <bigargtest+0x68>
    printf(stdout, "bigarg test\n");
    3878:	50                   	push   %eax
    3879:	50                   	push   %eax
    387a:	68 20 52 00 00       	push   $0x5220
    387f:	ff 35 b8 63 00 00    	pushl  0x63b8
    args[MAXARG-1] = 0;
    3885:	c7 05 5c 64 00 00 00 	movl   $0x0,0x645c
    388c:	00 00 00 
    printf(stdout, "bigarg test\n");
    388f:	e8 1c 07 00 00       	call   3fb0 <printf>
    exec("echo", args);
    3894:	58                   	pop    %eax
    3895:	5a                   	pop    %edx
    3896:	68 e0 63 00 00       	push   $0x63e0
    389b:	68 ed 43 00 00       	push   $0x43ed
    38a0:	e8 f5 05 00 00       	call   3e9a <exec>
    printf(stdout, "bigarg test ok\n");
    38a5:	59                   	pop    %ecx
    38a6:	58                   	pop    %eax
    38a7:	68 2d 52 00 00       	push   $0x522d
    38ac:	ff 35 b8 63 00 00    	pushl  0x63b8
    38b2:	e8 f9 06 00 00       	call   3fb0 <printf>
    fd = open("bigarg-ok", O_CREATE);
    38b7:	58                   	pop    %eax
    38b8:	5a                   	pop    %edx
    38b9:	68 00 02 00 00       	push   $0x200
    38be:	68 16 52 00 00       	push   $0x5216
    38c3:	e8 da 05 00 00       	call   3ea2 <open>
    close(fd);
    38c8:	89 04 24             	mov    %eax,(%esp)
    38cb:	e8 ba 05 00 00       	call   3e8a <close>
    exit(1);
    38d0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    38d7:	e8 86 05 00 00       	call   3e62 <exit>
    printf(stdout, "bigarg test failed!\n");
    38dc:	50                   	push   %eax
    38dd:	50                   	push   %eax
    38de:	68 56 52 00 00       	push   $0x5256
    38e3:	ff 35 b8 63 00 00    	pushl  0x63b8
    38e9:	e8 c2 06 00 00       	call   3fb0 <printf>
    exit(1);
    38ee:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    38f5:	e8 68 05 00 00       	call   3e62 <exit>
    printf(stdout, "bigargtest: fork failed\n");
    38fa:	50                   	push   %eax
    38fb:	50                   	push   %eax
    38fc:	68 3d 52 00 00       	push   $0x523d
    3901:	ff 35 b8 63 00 00    	pushl  0x63b8
    3907:	e8 a4 06 00 00       	call   3fb0 <printf>
    exit(1);
    390c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3913:	e8 4a 05 00 00       	call   3e62 <exit>
    3918:	90                   	nop
    3919:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003920 <fsfull>:
{
    3920:	55                   	push   %ebp
    3921:	89 e5                	mov    %esp,%ebp
    3923:	57                   	push   %edi
    3924:	56                   	push   %esi
    3925:	53                   	push   %ebx
  for(nfiles = 0; ; nfiles++){
    3926:	31 db                	xor    %ebx,%ebx
{
    3928:	83 ec 54             	sub    $0x54,%esp
  printf(1, "fsfull test\n");
    392b:	68 6b 52 00 00       	push   $0x526b
    3930:	6a 01                	push   $0x1
    3932:	e8 79 06 00 00       	call   3fb0 <printf>
    3937:	83 c4 10             	add    $0x10,%esp
    393a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    name[1] = '0' + nfiles / 1000;
    3940:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3945:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    printf(1, "writing %s\n", name);
    394a:	83 ec 04             	sub    $0x4,%esp
    name[1] = '0' + nfiles / 1000;
    394d:	f7 e3                	mul    %ebx
    name[0] = 'f';
    394f:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    3953:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    3957:	c1 ea 06             	shr    $0x6,%edx
    395a:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    395d:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    3963:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3966:	89 d8                	mov    %ebx,%eax
    3968:	29 d0                	sub    %edx,%eax
    396a:	89 c2                	mov    %eax,%edx
    396c:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    3971:	f7 e2                	mul    %edx
    name[3] = '0' + (nfiles % 100) / 10;
    3973:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3978:	c1 ea 05             	shr    $0x5,%edx
    397b:	83 c2 30             	add    $0x30,%edx
    397e:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3981:	f7 e3                	mul    %ebx
    3983:	89 d8                	mov    %ebx,%eax
    3985:	c1 ea 05             	shr    $0x5,%edx
    3988:	6b d2 64             	imul   $0x64,%edx,%edx
    398b:	29 d0                	sub    %edx,%eax
    398d:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    398f:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3991:	c1 ea 03             	shr    $0x3,%edx
    3994:	83 c2 30             	add    $0x30,%edx
    3997:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    399a:	f7 e1                	mul    %ecx
    399c:	89 d9                	mov    %ebx,%ecx
    399e:	c1 ea 03             	shr    $0x3,%edx
    39a1:	8d 04 92             	lea    (%edx,%edx,4),%eax
    39a4:	01 c0                	add    %eax,%eax
    39a6:	29 c1                	sub    %eax,%ecx
    39a8:	89 c8                	mov    %ecx,%eax
    39aa:	83 c0 30             	add    $0x30,%eax
    39ad:	88 45 ac             	mov    %al,-0x54(%ebp)
    printf(1, "writing %s\n", name);
    39b0:	8d 45 a8             	lea    -0x58(%ebp),%eax
    39b3:	50                   	push   %eax
    39b4:	68 78 52 00 00       	push   $0x5278
    39b9:	6a 01                	push   $0x1
    39bb:	e8 f0 05 00 00       	call   3fb0 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    39c0:	58                   	pop    %eax
    39c1:	8d 45 a8             	lea    -0x58(%ebp),%eax
    39c4:	5a                   	pop    %edx
    39c5:	68 02 02 00 00       	push   $0x202
    39ca:	50                   	push   %eax
    39cb:	e8 d2 04 00 00       	call   3ea2 <open>
    if(fd < 0){
    39d0:	83 c4 10             	add    $0x10,%esp
    39d3:	85 c0                	test   %eax,%eax
    int fd = open(name, O_CREATE|O_RDWR);
    39d5:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    39d7:	78 57                	js     3a30 <fsfull+0x110>
    int total = 0;
    39d9:	31 f6                	xor    %esi,%esi
    39db:	eb 05                	jmp    39e2 <fsfull+0xc2>
    39dd:	8d 76 00             	lea    0x0(%esi),%esi
      total += cc;
    39e0:	01 c6                	add    %eax,%esi
      int cc = write(fd, buf, 512);
    39e2:	83 ec 04             	sub    $0x4,%esp
    39e5:	68 00 02 00 00       	push   $0x200
    39ea:	68 a0 8b 00 00       	push   $0x8ba0
    39ef:	57                   	push   %edi
    39f0:	e8 8d 04 00 00       	call   3e82 <write>
      if(cc < 512)
    39f5:	83 c4 10             	add    $0x10,%esp
    39f8:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    39fd:	7f e1                	jg     39e0 <fsfull+0xc0>
    printf(1, "wrote %d bytes\n", total);
    39ff:	83 ec 04             	sub    $0x4,%esp
    3a02:	56                   	push   %esi
    3a03:	68 94 52 00 00       	push   $0x5294
    3a08:	6a 01                	push   $0x1
    3a0a:	e8 a1 05 00 00       	call   3fb0 <printf>
    close(fd);
    3a0f:	89 3c 24             	mov    %edi,(%esp)
    3a12:	e8 73 04 00 00       	call   3e8a <close>
    if(total == 0)
    3a17:	83 c4 10             	add    $0x10,%esp
    3a1a:	85 f6                	test   %esi,%esi
    3a1c:	74 28                	je     3a46 <fsfull+0x126>
  for(nfiles = 0; ; nfiles++){
    3a1e:	83 c3 01             	add    $0x1,%ebx
    3a21:	e9 1a ff ff ff       	jmp    3940 <fsfull+0x20>
    3a26:	8d 76 00             	lea    0x0(%esi),%esi
    3a29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
      printf(1, "open %s failed\n", name);
    3a30:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3a33:	83 ec 04             	sub    $0x4,%esp
    3a36:	50                   	push   %eax
    3a37:	68 84 52 00 00       	push   $0x5284
    3a3c:	6a 01                	push   $0x1
    3a3e:	e8 6d 05 00 00       	call   3fb0 <printf>
      break;
    3a43:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + nfiles / 1000;
    3a46:	bf d3 4d 62 10       	mov    $0x10624dd3,%edi
    name[2] = '0' + (nfiles % 1000) / 100;
    3a4b:	be 1f 85 eb 51       	mov    $0x51eb851f,%esi
    name[1] = '0' + nfiles / 1000;
    3a50:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3a52:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    unlink(name);
    3a57:	83 ec 0c             	sub    $0xc,%esp
    name[1] = '0' + nfiles / 1000;
    3a5a:	f7 e7                	mul    %edi
    name[0] = 'f';
    3a5c:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    3a60:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    3a64:	c1 ea 06             	shr    $0x6,%edx
    3a67:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3a6a:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    3a70:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3a73:	89 d8                	mov    %ebx,%eax
    3a75:	29 d0                	sub    %edx,%eax
    3a77:	f7 e6                	mul    %esi
    name[3] = '0' + (nfiles % 100) / 10;
    3a79:	89 d8                	mov    %ebx,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3a7b:	c1 ea 05             	shr    $0x5,%edx
    3a7e:	83 c2 30             	add    $0x30,%edx
    3a81:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3a84:	f7 e6                	mul    %esi
    3a86:	89 d8                	mov    %ebx,%eax
    3a88:	c1 ea 05             	shr    $0x5,%edx
    3a8b:	6b d2 64             	imul   $0x64,%edx,%edx
    3a8e:	29 d0                	sub    %edx,%eax
    3a90:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    3a92:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3a94:	c1 ea 03             	shr    $0x3,%edx
    3a97:	83 c2 30             	add    $0x30,%edx
    3a9a:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    3a9d:	f7 e1                	mul    %ecx
    3a9f:	89 d9                	mov    %ebx,%ecx
    nfiles--;
    3aa1:	83 eb 01             	sub    $0x1,%ebx
    name[4] = '0' + (nfiles % 10);
    3aa4:	c1 ea 03             	shr    $0x3,%edx
    3aa7:	8d 04 92             	lea    (%edx,%edx,4),%eax
    3aaa:	01 c0                	add    %eax,%eax
    3aac:	29 c1                	sub    %eax,%ecx
    3aae:	89 c8                	mov    %ecx,%eax
    3ab0:	83 c0 30             	add    $0x30,%eax
    3ab3:	88 45 ac             	mov    %al,-0x54(%ebp)
    unlink(name);
    3ab6:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3ab9:	50                   	push   %eax
    3aba:	e8 f3 03 00 00       	call   3eb2 <unlink>
  while(nfiles >= 0){
    3abf:	83 c4 10             	add    $0x10,%esp
    3ac2:	83 fb ff             	cmp    $0xffffffff,%ebx
    3ac5:	75 89                	jne    3a50 <fsfull+0x130>
  printf(1, "fsfull test finished\n");
    3ac7:	83 ec 08             	sub    $0x8,%esp
    3aca:	68 a4 52 00 00       	push   $0x52a4
    3acf:	6a 01                	push   $0x1
    3ad1:	e8 da 04 00 00       	call   3fb0 <printf>
}
    3ad6:	83 c4 10             	add    $0x10,%esp
    3ad9:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3adc:	5b                   	pop    %ebx
    3add:	5e                   	pop    %esi
    3ade:	5f                   	pop    %edi
    3adf:	5d                   	pop    %ebp
    3ae0:	c3                   	ret    
    3ae1:	eb 0d                	jmp    3af0 <uio>
    3ae3:	90                   	nop
    3ae4:	90                   	nop
    3ae5:	90                   	nop
    3ae6:	90                   	nop
    3ae7:	90                   	nop
    3ae8:	90                   	nop
    3ae9:	90                   	nop
    3aea:	90                   	nop
    3aeb:	90                   	nop
    3aec:	90                   	nop
    3aed:	90                   	nop
    3aee:	90                   	nop
    3aef:	90                   	nop

00003af0 <uio>:
{
    3af0:	55                   	push   %ebp
    3af1:	89 e5                	mov    %esp,%ebp
    3af3:	83 ec 10             	sub    $0x10,%esp
  printf(1, "uio test\n");
    3af6:	68 ba 52 00 00       	push   $0x52ba
    3afb:	6a 01                	push   $0x1
    3afd:	e8 ae 04 00 00       	call   3fb0 <printf>
  pid = fork();
    3b02:	e8 53 03 00 00       	call   3e5a <fork>
  if(pid == 0){
    3b07:	83 c4 10             	add    $0x10,%esp
    3b0a:	85 c0                	test   %eax,%eax
    3b0c:	74 1f                	je     3b2d <uio+0x3d>
  } else if(pid < 0){
    3b0e:	78 48                	js     3b58 <uio+0x68>
  wait(null);
    3b10:	83 ec 0c             	sub    $0xc,%esp
    3b13:	6a 00                	push   $0x0
    3b15:	e8 50 03 00 00       	call   3e6a <wait>
  printf(1, "uio test done\n");
    3b1a:	58                   	pop    %eax
    3b1b:	5a                   	pop    %edx
    3b1c:	68 c4 52 00 00       	push   $0x52c4
    3b21:	6a 01                	push   $0x1
    3b23:	e8 88 04 00 00       	call   3fb0 <printf>
}
    3b28:	83 c4 10             	add    $0x10,%esp
    3b2b:	c9                   	leave  
    3b2c:	c3                   	ret    
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    3b2d:	b8 09 00 00 00       	mov    $0x9,%eax
    3b32:	ba 70 00 00 00       	mov    $0x70,%edx
    3b37:	ee                   	out    %al,(%dx)
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    3b38:	ba 71 00 00 00       	mov    $0x71,%edx
    3b3d:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    3b3e:	50                   	push   %eax
    3b3f:	50                   	push   %eax
    3b40:	68 50 5a 00 00       	push   $0x5a50
    3b45:	6a 01                	push   $0x1
    3b47:	e8 64 04 00 00       	call   3fb0 <printf>
    exit(1);
    3b4c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3b53:	e8 0a 03 00 00       	call   3e62 <exit>
    printf (1, "fork failed\n");
    3b58:	51                   	push   %ecx
    3b59:	51                   	push   %ecx
    3b5a:	68 49 52 00 00       	push   $0x5249
    3b5f:	6a 01                	push   $0x1
    3b61:	e8 4a 04 00 00       	call   3fb0 <printf>
    exit(1);
    3b66:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3b6d:	e8 f0 02 00 00       	call   3e62 <exit>
    3b72:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3b79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003b80 <argptest>:
{
    3b80:	55                   	push   %ebp
    3b81:	89 e5                	mov    %esp,%ebp
    3b83:	53                   	push   %ebx
    3b84:	83 ec 0c             	sub    $0xc,%esp
  fd = open("init", O_RDONLY);
    3b87:	6a 00                	push   $0x0
    3b89:	68 d3 52 00 00       	push   $0x52d3
    3b8e:	e8 0f 03 00 00       	call   3ea2 <open>
  if (fd < 0) {
    3b93:	83 c4 10             	add    $0x10,%esp
    3b96:	85 c0                	test   %eax,%eax
    3b98:	78 39                	js     3bd3 <argptest+0x53>
  read(fd, sbrk(0) - 1, -1);
    3b9a:	83 ec 0c             	sub    $0xc,%esp
    3b9d:	89 c3                	mov    %eax,%ebx
    3b9f:	6a 00                	push   $0x0
    3ba1:	e8 44 03 00 00       	call   3eea <sbrk>
    3ba6:	83 c4 0c             	add    $0xc,%esp
    3ba9:	83 e8 01             	sub    $0x1,%eax
    3bac:	6a ff                	push   $0xffffffff
    3bae:	50                   	push   %eax
    3baf:	53                   	push   %ebx
    3bb0:	e8 c5 02 00 00       	call   3e7a <read>
  close(fd);
    3bb5:	89 1c 24             	mov    %ebx,(%esp)
    3bb8:	e8 cd 02 00 00       	call   3e8a <close>
  printf(1, "arg test passed\n");
    3bbd:	58                   	pop    %eax
    3bbe:	5a                   	pop    %edx
    3bbf:	68 e5 52 00 00       	push   $0x52e5
    3bc4:	6a 01                	push   $0x1
    3bc6:	e8 e5 03 00 00       	call   3fb0 <printf>
}
    3bcb:	83 c4 10             	add    $0x10,%esp
    3bce:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3bd1:	c9                   	leave  
    3bd2:	c3                   	ret    
    printf(2, "open failed\n");
    3bd3:	51                   	push   %ecx
    3bd4:	51                   	push   %ecx
    3bd5:	68 d8 52 00 00       	push   $0x52d8
    3bda:	6a 02                	push   $0x2
    3bdc:	e8 cf 03 00 00       	call   3fb0 <printf>
    exit(1);
    3be1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3be8:	e8 75 02 00 00       	call   3e62 <exit>
    3bed:	8d 76 00             	lea    0x0(%esi),%esi

00003bf0 <rand>:
  randstate = randstate * 1664525 + 1013904223;
    3bf0:	69 05 b4 63 00 00 0d 	imul   $0x19660d,0x63b4,%eax
    3bf7:	66 19 00 
{
    3bfa:	55                   	push   %ebp
    3bfb:	89 e5                	mov    %esp,%ebp
}
    3bfd:	5d                   	pop    %ebp
  randstate = randstate * 1664525 + 1013904223;
    3bfe:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    3c03:	a3 b4 63 00 00       	mov    %eax,0x63b4
}
    3c08:	c3                   	ret    
    3c09:	66 90                	xchg   %ax,%ax
    3c0b:	66 90                	xchg   %ax,%ax
    3c0d:	66 90                	xchg   %ax,%ax
    3c0f:	90                   	nop

00003c10 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    3c10:	55                   	push   %ebp
    3c11:	89 e5                	mov    %esp,%ebp
    3c13:	53                   	push   %ebx
    3c14:	8b 45 08             	mov    0x8(%ebp),%eax
    3c17:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    3c1a:	89 c2                	mov    %eax,%edx
    3c1c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3c20:	83 c1 01             	add    $0x1,%ecx
    3c23:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    3c27:	83 c2 01             	add    $0x1,%edx
    3c2a:	84 db                	test   %bl,%bl
    3c2c:	88 5a ff             	mov    %bl,-0x1(%edx)
    3c2f:	75 ef                	jne    3c20 <strcpy+0x10>
    ;
  return os;
}
    3c31:	5b                   	pop    %ebx
    3c32:	5d                   	pop    %ebp
    3c33:	c3                   	ret    
    3c34:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3c3a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00003c40 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    3c40:	55                   	push   %ebp
    3c41:	89 e5                	mov    %esp,%ebp
    3c43:	53                   	push   %ebx
    3c44:	8b 55 08             	mov    0x8(%ebp),%edx
    3c47:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    3c4a:	0f b6 02             	movzbl (%edx),%eax
    3c4d:	0f b6 19             	movzbl (%ecx),%ebx
    3c50:	84 c0                	test   %al,%al
    3c52:	75 1c                	jne    3c70 <strcmp+0x30>
    3c54:	eb 2a                	jmp    3c80 <strcmp+0x40>
    3c56:	8d 76 00             	lea    0x0(%esi),%esi
    3c59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
    3c60:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    3c63:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    3c66:	83 c1 01             	add    $0x1,%ecx
    3c69:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
    3c6c:	84 c0                	test   %al,%al
    3c6e:	74 10                	je     3c80 <strcmp+0x40>
    3c70:	38 d8                	cmp    %bl,%al
    3c72:	74 ec                	je     3c60 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    3c74:	29 d8                	sub    %ebx,%eax
}
    3c76:	5b                   	pop    %ebx
    3c77:	5d                   	pop    %ebp
    3c78:	c3                   	ret    
    3c79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3c80:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    3c82:	29 d8                	sub    %ebx,%eax
}
    3c84:	5b                   	pop    %ebx
    3c85:	5d                   	pop    %ebp
    3c86:	c3                   	ret    
    3c87:	89 f6                	mov    %esi,%esi
    3c89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003c90 <strlen>:

uint
strlen(const char *s)
{
    3c90:	55                   	push   %ebp
    3c91:	89 e5                	mov    %esp,%ebp
    3c93:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    3c96:	80 39 00             	cmpb   $0x0,(%ecx)
    3c99:	74 15                	je     3cb0 <strlen+0x20>
    3c9b:	31 d2                	xor    %edx,%edx
    3c9d:	8d 76 00             	lea    0x0(%esi),%esi
    3ca0:	83 c2 01             	add    $0x1,%edx
    3ca3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    3ca7:	89 d0                	mov    %edx,%eax
    3ca9:	75 f5                	jne    3ca0 <strlen+0x10>
    ;
  return n;
}
    3cab:	5d                   	pop    %ebp
    3cac:	c3                   	ret    
    3cad:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
    3cb0:	31 c0                	xor    %eax,%eax
}
    3cb2:	5d                   	pop    %ebp
    3cb3:	c3                   	ret    
    3cb4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3cba:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00003cc0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3cc0:	55                   	push   %ebp
    3cc1:	89 e5                	mov    %esp,%ebp
    3cc3:	57                   	push   %edi
    3cc4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3cc7:	8b 4d 10             	mov    0x10(%ebp),%ecx
    3cca:	8b 45 0c             	mov    0xc(%ebp),%eax
    3ccd:	89 d7                	mov    %edx,%edi
    3ccf:	fc                   	cld    
    3cd0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3cd2:	89 d0                	mov    %edx,%eax
    3cd4:	5f                   	pop    %edi
    3cd5:	5d                   	pop    %ebp
    3cd6:	c3                   	ret    
    3cd7:	89 f6                	mov    %esi,%esi
    3cd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003ce0 <strchr>:

char*
strchr(const char *s, char c)
{
    3ce0:	55                   	push   %ebp
    3ce1:	89 e5                	mov    %esp,%ebp
    3ce3:	53                   	push   %ebx
    3ce4:	8b 45 08             	mov    0x8(%ebp),%eax
    3ce7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    3cea:	0f b6 10             	movzbl (%eax),%edx
    3ced:	84 d2                	test   %dl,%dl
    3cef:	74 1d                	je     3d0e <strchr+0x2e>
    if(*s == c)
    3cf1:	38 d3                	cmp    %dl,%bl
    3cf3:	89 d9                	mov    %ebx,%ecx
    3cf5:	75 0d                	jne    3d04 <strchr+0x24>
    3cf7:	eb 17                	jmp    3d10 <strchr+0x30>
    3cf9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3d00:	38 ca                	cmp    %cl,%dl
    3d02:	74 0c                	je     3d10 <strchr+0x30>
  for(; *s; s++)
    3d04:	83 c0 01             	add    $0x1,%eax
    3d07:	0f b6 10             	movzbl (%eax),%edx
    3d0a:	84 d2                	test   %dl,%dl
    3d0c:	75 f2                	jne    3d00 <strchr+0x20>
      return (char*)s;
  return 0;
    3d0e:	31 c0                	xor    %eax,%eax
}
    3d10:	5b                   	pop    %ebx
    3d11:	5d                   	pop    %ebp
    3d12:	c3                   	ret    
    3d13:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3d19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003d20 <gets>:

char*
gets(char *buf, int max)
{
    3d20:	55                   	push   %ebp
    3d21:	89 e5                	mov    %esp,%ebp
    3d23:	57                   	push   %edi
    3d24:	56                   	push   %esi
    3d25:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3d26:	31 f6                	xor    %esi,%esi
    3d28:	89 f3                	mov    %esi,%ebx
{
    3d2a:	83 ec 1c             	sub    $0x1c,%esp
    3d2d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    3d30:	eb 2f                	jmp    3d61 <gets+0x41>
    3d32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    3d38:	8d 45 e7             	lea    -0x19(%ebp),%eax
    3d3b:	83 ec 04             	sub    $0x4,%esp
    3d3e:	6a 01                	push   $0x1
    3d40:	50                   	push   %eax
    3d41:	6a 00                	push   $0x0
    3d43:	e8 32 01 00 00       	call   3e7a <read>
    if(cc < 1)
    3d48:	83 c4 10             	add    $0x10,%esp
    3d4b:	85 c0                	test   %eax,%eax
    3d4d:	7e 1c                	jle    3d6b <gets+0x4b>
      break;
    buf[i++] = c;
    3d4f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    3d53:	83 c7 01             	add    $0x1,%edi
    3d56:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    3d59:	3c 0a                	cmp    $0xa,%al
    3d5b:	74 23                	je     3d80 <gets+0x60>
    3d5d:	3c 0d                	cmp    $0xd,%al
    3d5f:	74 1f                	je     3d80 <gets+0x60>
  for(i=0; i+1 < max; ){
    3d61:	83 c3 01             	add    $0x1,%ebx
    3d64:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    3d67:	89 fe                	mov    %edi,%esi
    3d69:	7c cd                	jl     3d38 <gets+0x18>
    3d6b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    3d6d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    3d70:	c6 03 00             	movb   $0x0,(%ebx)
}
    3d73:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3d76:	5b                   	pop    %ebx
    3d77:	5e                   	pop    %esi
    3d78:	5f                   	pop    %edi
    3d79:	5d                   	pop    %ebp
    3d7a:	c3                   	ret    
    3d7b:	90                   	nop
    3d7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3d80:	8b 75 08             	mov    0x8(%ebp),%esi
    3d83:	8b 45 08             	mov    0x8(%ebp),%eax
    3d86:	01 de                	add    %ebx,%esi
    3d88:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    3d8a:	c6 03 00             	movb   $0x0,(%ebx)
}
    3d8d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3d90:	5b                   	pop    %ebx
    3d91:	5e                   	pop    %esi
    3d92:	5f                   	pop    %edi
    3d93:	5d                   	pop    %ebp
    3d94:	c3                   	ret    
    3d95:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3d99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003da0 <stat>:

int
stat(const char *n, struct stat *st)
{
    3da0:	55                   	push   %ebp
    3da1:	89 e5                	mov    %esp,%ebp
    3da3:	56                   	push   %esi
    3da4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3da5:	83 ec 08             	sub    $0x8,%esp
    3da8:	6a 00                	push   $0x0
    3daa:	ff 75 08             	pushl  0x8(%ebp)
    3dad:	e8 f0 00 00 00       	call   3ea2 <open>
  if(fd < 0)
    3db2:	83 c4 10             	add    $0x10,%esp
    3db5:	85 c0                	test   %eax,%eax
    3db7:	78 27                	js     3de0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    3db9:	83 ec 08             	sub    $0x8,%esp
    3dbc:	ff 75 0c             	pushl  0xc(%ebp)
    3dbf:	89 c3                	mov    %eax,%ebx
    3dc1:	50                   	push   %eax
    3dc2:	e8 f3 00 00 00       	call   3eba <fstat>
  close(fd);
    3dc7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    3dca:	89 c6                	mov    %eax,%esi
  close(fd);
    3dcc:	e8 b9 00 00 00       	call   3e8a <close>
  return r;
    3dd1:	83 c4 10             	add    $0x10,%esp
}
    3dd4:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3dd7:	89 f0                	mov    %esi,%eax
    3dd9:	5b                   	pop    %ebx
    3dda:	5e                   	pop    %esi
    3ddb:	5d                   	pop    %ebp
    3ddc:	c3                   	ret    
    3ddd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    3de0:	be ff ff ff ff       	mov    $0xffffffff,%esi
    3de5:	eb ed                	jmp    3dd4 <stat+0x34>
    3de7:	89 f6                	mov    %esi,%esi
    3de9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003df0 <atoi>:

int
atoi(const char *s)
{
    3df0:	55                   	push   %ebp
    3df1:	89 e5                	mov    %esp,%ebp
    3df3:	53                   	push   %ebx
    3df4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3df7:	0f be 11             	movsbl (%ecx),%edx
    3dfa:	8d 42 d0             	lea    -0x30(%edx),%eax
    3dfd:	3c 09                	cmp    $0x9,%al
  n = 0;
    3dff:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    3e04:	77 1f                	ja     3e25 <atoi+0x35>
    3e06:	8d 76 00             	lea    0x0(%esi),%esi
    3e09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    3e10:	8d 04 80             	lea    (%eax,%eax,4),%eax
    3e13:	83 c1 01             	add    $0x1,%ecx
    3e16:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    3e1a:	0f be 11             	movsbl (%ecx),%edx
    3e1d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    3e20:	80 fb 09             	cmp    $0x9,%bl
    3e23:	76 eb                	jbe    3e10 <atoi+0x20>
  return n;
}
    3e25:	5b                   	pop    %ebx
    3e26:	5d                   	pop    %ebp
    3e27:	c3                   	ret    
    3e28:	90                   	nop
    3e29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003e30 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    3e30:	55                   	push   %ebp
    3e31:	89 e5                	mov    %esp,%ebp
    3e33:	56                   	push   %esi
    3e34:	53                   	push   %ebx
    3e35:	8b 5d 10             	mov    0x10(%ebp),%ebx
    3e38:	8b 45 08             	mov    0x8(%ebp),%eax
    3e3b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    3e3e:	85 db                	test   %ebx,%ebx
    3e40:	7e 14                	jle    3e56 <memmove+0x26>
    3e42:	31 d2                	xor    %edx,%edx
    3e44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    3e48:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    3e4c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    3e4f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    3e52:	39 d3                	cmp    %edx,%ebx
    3e54:	75 f2                	jne    3e48 <memmove+0x18>
  return vdst;
}
    3e56:	5b                   	pop    %ebx
    3e57:	5e                   	pop    %esi
    3e58:	5d                   	pop    %ebp
    3e59:	c3                   	ret    

00003e5a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    3e5a:	b8 01 00 00 00       	mov    $0x1,%eax
    3e5f:	cd 40                	int    $0x40
    3e61:	c3                   	ret    

00003e62 <exit>:
SYSCALL(exit)
    3e62:	b8 02 00 00 00       	mov    $0x2,%eax
    3e67:	cd 40                	int    $0x40
    3e69:	c3                   	ret    

00003e6a <wait>:
SYSCALL(wait)
    3e6a:	b8 03 00 00 00       	mov    $0x3,%eax
    3e6f:	cd 40                	int    $0x40
    3e71:	c3                   	ret    

00003e72 <pipe>:
SYSCALL(pipe)
    3e72:	b8 04 00 00 00       	mov    $0x4,%eax
    3e77:	cd 40                	int    $0x40
    3e79:	c3                   	ret    

00003e7a <read>:
SYSCALL(read)
    3e7a:	b8 05 00 00 00       	mov    $0x5,%eax
    3e7f:	cd 40                	int    $0x40
    3e81:	c3                   	ret    

00003e82 <write>:
SYSCALL(write)
    3e82:	b8 10 00 00 00       	mov    $0x10,%eax
    3e87:	cd 40                	int    $0x40
    3e89:	c3                   	ret    

00003e8a <close>:
SYSCALL(close)
    3e8a:	b8 15 00 00 00       	mov    $0x15,%eax
    3e8f:	cd 40                	int    $0x40
    3e91:	c3                   	ret    

00003e92 <kill>:
SYSCALL(kill)
    3e92:	b8 06 00 00 00       	mov    $0x6,%eax
    3e97:	cd 40                	int    $0x40
    3e99:	c3                   	ret    

00003e9a <exec>:
SYSCALL(exec)
    3e9a:	b8 07 00 00 00       	mov    $0x7,%eax
    3e9f:	cd 40                	int    $0x40
    3ea1:	c3                   	ret    

00003ea2 <open>:
SYSCALL(open)
    3ea2:	b8 0f 00 00 00       	mov    $0xf,%eax
    3ea7:	cd 40                	int    $0x40
    3ea9:	c3                   	ret    

00003eaa <mknod>:
SYSCALL(mknod)
    3eaa:	b8 11 00 00 00       	mov    $0x11,%eax
    3eaf:	cd 40                	int    $0x40
    3eb1:	c3                   	ret    

00003eb2 <unlink>:
SYSCALL(unlink)
    3eb2:	b8 12 00 00 00       	mov    $0x12,%eax
    3eb7:	cd 40                	int    $0x40
    3eb9:	c3                   	ret    

00003eba <fstat>:
SYSCALL(fstat)
    3eba:	b8 08 00 00 00       	mov    $0x8,%eax
    3ebf:	cd 40                	int    $0x40
    3ec1:	c3                   	ret    

00003ec2 <link>:
SYSCALL(link)
    3ec2:	b8 13 00 00 00       	mov    $0x13,%eax
    3ec7:	cd 40                	int    $0x40
    3ec9:	c3                   	ret    

00003eca <mkdir>:
SYSCALL(mkdir)
    3eca:	b8 14 00 00 00       	mov    $0x14,%eax
    3ecf:	cd 40                	int    $0x40
    3ed1:	c3                   	ret    

00003ed2 <chdir>:
SYSCALL(chdir)
    3ed2:	b8 09 00 00 00       	mov    $0x9,%eax
    3ed7:	cd 40                	int    $0x40
    3ed9:	c3                   	ret    

00003eda <dup>:
SYSCALL(dup)
    3eda:	b8 0a 00 00 00       	mov    $0xa,%eax
    3edf:	cd 40                	int    $0x40
    3ee1:	c3                   	ret    

00003ee2 <getpid>:
SYSCALL(getpid)
    3ee2:	b8 0b 00 00 00       	mov    $0xb,%eax
    3ee7:	cd 40                	int    $0x40
    3ee9:	c3                   	ret    

00003eea <sbrk>:
SYSCALL(sbrk)
    3eea:	b8 0c 00 00 00       	mov    $0xc,%eax
    3eef:	cd 40                	int    $0x40
    3ef1:	c3                   	ret    

00003ef2 <sleep>:
SYSCALL(sleep)
    3ef2:	b8 0d 00 00 00       	mov    $0xd,%eax
    3ef7:	cd 40                	int    $0x40
    3ef9:	c3                   	ret    

00003efa <uptime>:
SYSCALL(uptime)
    3efa:	b8 0e 00 00 00       	mov    $0xe,%eax
    3eff:	cd 40                	int    $0x40
    3f01:	c3                   	ret    

00003f02 <memsize>:
SYSCALL(memsize)
    3f02:	b8 16 00 00 00       	mov    $0x16,%eax
    3f07:	cd 40                	int    $0x40
    3f09:	c3                   	ret    
    3f0a:	66 90                	xchg   %ax,%ax
    3f0c:	66 90                	xchg   %ax,%ax
    3f0e:	66 90                	xchg   %ax,%ax

00003f10 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    3f10:	55                   	push   %ebp
    3f11:	89 e5                	mov    %esp,%ebp
    3f13:	57                   	push   %edi
    3f14:	56                   	push   %esi
    3f15:	53                   	push   %ebx
    3f16:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    3f19:	85 d2                	test   %edx,%edx
{
    3f1b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
    3f1e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
    3f20:	79 76                	jns    3f98 <printint+0x88>
    3f22:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    3f26:	74 70                	je     3f98 <printint+0x88>
    x = -xx;
    3f28:	f7 d8                	neg    %eax
    neg = 1;
    3f2a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    3f31:	31 f6                	xor    %esi,%esi
    3f33:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    3f36:	eb 0a                	jmp    3f42 <printint+0x32>
    3f38:	90                   	nop
    3f39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
    3f40:	89 fe                	mov    %edi,%esi
    3f42:	31 d2                	xor    %edx,%edx
    3f44:	8d 7e 01             	lea    0x1(%esi),%edi
    3f47:	f7 f1                	div    %ecx
    3f49:	0f b6 92 a8 5a 00 00 	movzbl 0x5aa8(%edx),%edx
  }while((x /= base) != 0);
    3f50:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    3f52:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
    3f55:	75 e9                	jne    3f40 <printint+0x30>
  if(neg)
    3f57:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    3f5a:	85 c0                	test   %eax,%eax
    3f5c:	74 08                	je     3f66 <printint+0x56>
    buf[i++] = '-';
    3f5e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
    3f63:	8d 7e 02             	lea    0x2(%esi),%edi
    3f66:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
    3f6a:	8b 7d c0             	mov    -0x40(%ebp),%edi
    3f6d:	8d 76 00             	lea    0x0(%esi),%esi
    3f70:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
    3f73:	83 ec 04             	sub    $0x4,%esp
    3f76:	83 ee 01             	sub    $0x1,%esi
    3f79:	6a 01                	push   $0x1
    3f7b:	53                   	push   %ebx
    3f7c:	57                   	push   %edi
    3f7d:	88 45 d7             	mov    %al,-0x29(%ebp)
    3f80:	e8 fd fe ff ff       	call   3e82 <write>

  while(--i >= 0)
    3f85:	83 c4 10             	add    $0x10,%esp
    3f88:	39 de                	cmp    %ebx,%esi
    3f8a:	75 e4                	jne    3f70 <printint+0x60>
    putc(fd, buf[i]);
}
    3f8c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    3f8f:	5b                   	pop    %ebx
    3f90:	5e                   	pop    %esi
    3f91:	5f                   	pop    %edi
    3f92:	5d                   	pop    %ebp
    3f93:	c3                   	ret    
    3f94:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    3f98:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    3f9f:	eb 90                	jmp    3f31 <printint+0x21>
    3fa1:	eb 0d                	jmp    3fb0 <printf>
    3fa3:	90                   	nop
    3fa4:	90                   	nop
    3fa5:	90                   	nop
    3fa6:	90                   	nop
    3fa7:	90                   	nop
    3fa8:	90                   	nop
    3fa9:	90                   	nop
    3faa:	90                   	nop
    3fab:	90                   	nop
    3fac:	90                   	nop
    3fad:	90                   	nop
    3fae:	90                   	nop
    3faf:	90                   	nop

00003fb0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    3fb0:	55                   	push   %ebp
    3fb1:	89 e5                	mov    %esp,%ebp
    3fb3:	57                   	push   %edi
    3fb4:	56                   	push   %esi
    3fb5:	53                   	push   %ebx
    3fb6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    3fb9:	8b 75 0c             	mov    0xc(%ebp),%esi
    3fbc:	0f b6 1e             	movzbl (%esi),%ebx
    3fbf:	84 db                	test   %bl,%bl
    3fc1:	0f 84 b3 00 00 00    	je     407a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
    3fc7:	8d 45 10             	lea    0x10(%ebp),%eax
    3fca:	83 c6 01             	add    $0x1,%esi
  state = 0;
    3fcd:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
    3fcf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    3fd2:	eb 2f                	jmp    4003 <printf+0x53>
    3fd4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    3fd8:	83 f8 25             	cmp    $0x25,%eax
    3fdb:	0f 84 a7 00 00 00    	je     4088 <printf+0xd8>
  write(fd, &c, 1);
    3fe1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    3fe4:	83 ec 04             	sub    $0x4,%esp
    3fe7:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    3fea:	6a 01                	push   $0x1
    3fec:	50                   	push   %eax
    3fed:	ff 75 08             	pushl  0x8(%ebp)
    3ff0:	e8 8d fe ff ff       	call   3e82 <write>
    3ff5:	83 c4 10             	add    $0x10,%esp
    3ff8:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    3ffb:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    3fff:	84 db                	test   %bl,%bl
    4001:	74 77                	je     407a <printf+0xca>
    if(state == 0){
    4003:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    4005:	0f be cb             	movsbl %bl,%ecx
    4008:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    400b:	74 cb                	je     3fd8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    400d:	83 ff 25             	cmp    $0x25,%edi
    4010:	75 e6                	jne    3ff8 <printf+0x48>
      if(c == 'd'){
    4012:	83 f8 64             	cmp    $0x64,%eax
    4015:	0f 84 05 01 00 00    	je     4120 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    401b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    4021:	83 f9 70             	cmp    $0x70,%ecx
    4024:	74 72                	je     4098 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    4026:	83 f8 73             	cmp    $0x73,%eax
    4029:	0f 84 99 00 00 00    	je     40c8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    402f:	83 f8 63             	cmp    $0x63,%eax
    4032:	0f 84 08 01 00 00    	je     4140 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    4038:	83 f8 25             	cmp    $0x25,%eax
    403b:	0f 84 ef 00 00 00    	je     4130 <printf+0x180>
  write(fd, &c, 1);
    4041:	8d 45 e7             	lea    -0x19(%ebp),%eax
    4044:	83 ec 04             	sub    $0x4,%esp
    4047:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    404b:	6a 01                	push   $0x1
    404d:	50                   	push   %eax
    404e:	ff 75 08             	pushl  0x8(%ebp)
    4051:	e8 2c fe ff ff       	call   3e82 <write>
    4056:	83 c4 0c             	add    $0xc,%esp
    4059:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    405c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    405f:	6a 01                	push   $0x1
    4061:	50                   	push   %eax
    4062:	ff 75 08             	pushl  0x8(%ebp)
    4065:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    4068:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    406a:	e8 13 fe ff ff       	call   3e82 <write>
  for(i = 0; fmt[i]; i++){
    406f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    4073:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    4076:	84 db                	test   %bl,%bl
    4078:	75 89                	jne    4003 <printf+0x53>
    }
  }
}
    407a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    407d:	5b                   	pop    %ebx
    407e:	5e                   	pop    %esi
    407f:	5f                   	pop    %edi
    4080:	5d                   	pop    %ebp
    4081:	c3                   	ret    
    4082:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
    4088:	bf 25 00 00 00       	mov    $0x25,%edi
    408d:	e9 66 ff ff ff       	jmp    3ff8 <printf+0x48>
    4092:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    4098:	83 ec 0c             	sub    $0xc,%esp
    409b:	b9 10 00 00 00       	mov    $0x10,%ecx
    40a0:	6a 00                	push   $0x0
    40a2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    40a5:	8b 45 08             	mov    0x8(%ebp),%eax
    40a8:	8b 17                	mov    (%edi),%edx
    40aa:	e8 61 fe ff ff       	call   3f10 <printint>
        ap++;
    40af:	89 f8                	mov    %edi,%eax
    40b1:	83 c4 10             	add    $0x10,%esp
      state = 0;
    40b4:	31 ff                	xor    %edi,%edi
        ap++;
    40b6:	83 c0 04             	add    $0x4,%eax
    40b9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    40bc:	e9 37 ff ff ff       	jmp    3ff8 <printf+0x48>
    40c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    40c8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    40cb:	8b 08                	mov    (%eax),%ecx
        ap++;
    40cd:	83 c0 04             	add    $0x4,%eax
    40d0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
    40d3:	85 c9                	test   %ecx,%ecx
    40d5:	0f 84 8e 00 00 00    	je     4169 <printf+0x1b9>
        while(*s != 0){
    40db:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
    40de:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
    40e0:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
    40e2:	84 c0                	test   %al,%al
    40e4:	0f 84 0e ff ff ff    	je     3ff8 <printf+0x48>
    40ea:	89 75 d0             	mov    %esi,-0x30(%ebp)
    40ed:	89 de                	mov    %ebx,%esi
    40ef:	8b 5d 08             	mov    0x8(%ebp),%ebx
    40f2:	8d 7d e3             	lea    -0x1d(%ebp),%edi
    40f5:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    40f8:	83 ec 04             	sub    $0x4,%esp
          s++;
    40fb:	83 c6 01             	add    $0x1,%esi
    40fe:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    4101:	6a 01                	push   $0x1
    4103:	57                   	push   %edi
    4104:	53                   	push   %ebx
    4105:	e8 78 fd ff ff       	call   3e82 <write>
        while(*s != 0){
    410a:	0f b6 06             	movzbl (%esi),%eax
    410d:	83 c4 10             	add    $0x10,%esp
    4110:	84 c0                	test   %al,%al
    4112:	75 e4                	jne    40f8 <printf+0x148>
    4114:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
    4117:	31 ff                	xor    %edi,%edi
    4119:	e9 da fe ff ff       	jmp    3ff8 <printf+0x48>
    411e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
    4120:	83 ec 0c             	sub    $0xc,%esp
    4123:	b9 0a 00 00 00       	mov    $0xa,%ecx
    4128:	6a 01                	push   $0x1
    412a:	e9 73 ff ff ff       	jmp    40a2 <printf+0xf2>
    412f:	90                   	nop
  write(fd, &c, 1);
    4130:	83 ec 04             	sub    $0x4,%esp
    4133:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    4136:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    4139:	6a 01                	push   $0x1
    413b:	e9 21 ff ff ff       	jmp    4061 <printf+0xb1>
        putc(fd, *ap);
    4140:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
    4143:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    4146:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    4148:	6a 01                	push   $0x1
        ap++;
    414a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    414d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    4150:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    4153:	50                   	push   %eax
    4154:	ff 75 08             	pushl  0x8(%ebp)
    4157:	e8 26 fd ff ff       	call   3e82 <write>
        ap++;
    415c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    415f:	83 c4 10             	add    $0x10,%esp
      state = 0;
    4162:	31 ff                	xor    %edi,%edi
    4164:	e9 8f fe ff ff       	jmp    3ff8 <printf+0x48>
          s = "(null)";
    4169:	bb a0 5a 00 00       	mov    $0x5aa0,%ebx
        while(*s != 0){
    416e:	b8 28 00 00 00       	mov    $0x28,%eax
    4173:	e9 72 ff ff ff       	jmp    40ea <printf+0x13a>
    4178:	66 90                	xchg   %ax,%ax
    417a:	66 90                	xchg   %ax,%ax
    417c:	66 90                	xchg   %ax,%ax
    417e:	66 90                	xchg   %ax,%ax

00004180 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    4180:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4181:	a1 60 64 00 00       	mov    0x6460,%eax
{
    4186:	89 e5                	mov    %esp,%ebp
    4188:	57                   	push   %edi
    4189:	56                   	push   %esi
    418a:	53                   	push   %ebx
    418b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    418e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    4191:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4198:	39 c8                	cmp    %ecx,%eax
    419a:	8b 10                	mov    (%eax),%edx
    419c:	73 32                	jae    41d0 <free+0x50>
    419e:	39 d1                	cmp    %edx,%ecx
    41a0:	72 04                	jb     41a6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    41a2:	39 d0                	cmp    %edx,%eax
    41a4:	72 32                	jb     41d8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    41a6:	8b 73 fc             	mov    -0x4(%ebx),%esi
    41a9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    41ac:	39 fa                	cmp    %edi,%edx
    41ae:	74 30                	je     41e0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    41b0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    41b3:	8b 50 04             	mov    0x4(%eax),%edx
    41b6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    41b9:	39 f1                	cmp    %esi,%ecx
    41bb:	74 3a                	je     41f7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    41bd:	89 08                	mov    %ecx,(%eax)
  freep = p;
    41bf:	a3 60 64 00 00       	mov    %eax,0x6460
}
    41c4:	5b                   	pop    %ebx
    41c5:	5e                   	pop    %esi
    41c6:	5f                   	pop    %edi
    41c7:	5d                   	pop    %ebp
    41c8:	c3                   	ret    
    41c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    41d0:	39 d0                	cmp    %edx,%eax
    41d2:	72 04                	jb     41d8 <free+0x58>
    41d4:	39 d1                	cmp    %edx,%ecx
    41d6:	72 ce                	jb     41a6 <free+0x26>
{
    41d8:	89 d0                	mov    %edx,%eax
    41da:	eb bc                	jmp    4198 <free+0x18>
    41dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    41e0:	03 72 04             	add    0x4(%edx),%esi
    41e3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    41e6:	8b 10                	mov    (%eax),%edx
    41e8:	8b 12                	mov    (%edx),%edx
    41ea:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    41ed:	8b 50 04             	mov    0x4(%eax),%edx
    41f0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    41f3:	39 f1                	cmp    %esi,%ecx
    41f5:	75 c6                	jne    41bd <free+0x3d>
    p->s.size += bp->s.size;
    41f7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    41fa:	a3 60 64 00 00       	mov    %eax,0x6460
    p->s.size += bp->s.size;
    41ff:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    4202:	8b 53 f8             	mov    -0x8(%ebx),%edx
    4205:	89 10                	mov    %edx,(%eax)
}
    4207:	5b                   	pop    %ebx
    4208:	5e                   	pop    %esi
    4209:	5f                   	pop    %edi
    420a:	5d                   	pop    %ebp
    420b:	c3                   	ret    
    420c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00004210 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    4210:	55                   	push   %ebp
    4211:	89 e5                	mov    %esp,%ebp
    4213:	57                   	push   %edi
    4214:	56                   	push   %esi
    4215:	53                   	push   %ebx
    4216:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4219:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    421c:	8b 15 60 64 00 00    	mov    0x6460,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4222:	8d 78 07             	lea    0x7(%eax),%edi
    4225:	c1 ef 03             	shr    $0x3,%edi
    4228:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    422b:	85 d2                	test   %edx,%edx
    422d:	0f 84 9d 00 00 00    	je     42d0 <malloc+0xc0>
    4233:	8b 02                	mov    (%edx),%eax
    4235:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    4238:	39 cf                	cmp    %ecx,%edi
    423a:	76 6c                	jbe    42a8 <malloc+0x98>
    423c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    4242:	bb 00 10 00 00       	mov    $0x1000,%ebx
    4247:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    424a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    4251:	eb 0e                	jmp    4261 <malloc+0x51>
    4253:	90                   	nop
    4254:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    4258:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    425a:	8b 48 04             	mov    0x4(%eax),%ecx
    425d:	39 f9                	cmp    %edi,%ecx
    425f:	73 47                	jae    42a8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    4261:	39 05 60 64 00 00    	cmp    %eax,0x6460
    4267:	89 c2                	mov    %eax,%edx
    4269:	75 ed                	jne    4258 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    426b:	83 ec 0c             	sub    $0xc,%esp
    426e:	56                   	push   %esi
    426f:	e8 76 fc ff ff       	call   3eea <sbrk>
  if(p == (char*)-1)
    4274:	83 c4 10             	add    $0x10,%esp
    4277:	83 f8 ff             	cmp    $0xffffffff,%eax
    427a:	74 1c                	je     4298 <malloc+0x88>
  hp->s.size = nu;
    427c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    427f:	83 ec 0c             	sub    $0xc,%esp
    4282:	83 c0 08             	add    $0x8,%eax
    4285:	50                   	push   %eax
    4286:	e8 f5 fe ff ff       	call   4180 <free>
  return freep;
    428b:	8b 15 60 64 00 00    	mov    0x6460,%edx
      if((p = morecore(nunits)) == 0)
    4291:	83 c4 10             	add    $0x10,%esp
    4294:	85 d2                	test   %edx,%edx
    4296:	75 c0                	jne    4258 <malloc+0x48>
        return 0;
  }
}
    4298:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    429b:	31 c0                	xor    %eax,%eax
}
    429d:	5b                   	pop    %ebx
    429e:	5e                   	pop    %esi
    429f:	5f                   	pop    %edi
    42a0:	5d                   	pop    %ebp
    42a1:	c3                   	ret    
    42a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    42a8:	39 cf                	cmp    %ecx,%edi
    42aa:	74 54                	je     4300 <malloc+0xf0>
        p->s.size -= nunits;
    42ac:	29 f9                	sub    %edi,%ecx
    42ae:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    42b1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    42b4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    42b7:	89 15 60 64 00 00    	mov    %edx,0x6460
}
    42bd:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    42c0:	83 c0 08             	add    $0x8,%eax
}
    42c3:	5b                   	pop    %ebx
    42c4:	5e                   	pop    %esi
    42c5:	5f                   	pop    %edi
    42c6:	5d                   	pop    %ebp
    42c7:	c3                   	ret    
    42c8:	90                   	nop
    42c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    42d0:	c7 05 60 64 00 00 64 	movl   $0x6464,0x6460
    42d7:	64 00 00 
    42da:	c7 05 64 64 00 00 64 	movl   $0x6464,0x6464
    42e1:	64 00 00 
    base.s.size = 0;
    42e4:	b8 64 64 00 00       	mov    $0x6464,%eax
    42e9:	c7 05 68 64 00 00 00 	movl   $0x0,0x6468
    42f0:	00 00 00 
    42f3:	e9 44 ff ff ff       	jmp    423c <malloc+0x2c>
    42f8:	90                   	nop
    42f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    4300:	8b 08                	mov    (%eax),%ecx
    4302:	89 0a                	mov    %ecx,(%edx)
    4304:	eb b1                	jmp    42b7 <malloc+0xa7>
