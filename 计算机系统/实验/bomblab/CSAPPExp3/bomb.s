
bomb：     文件格式 elf32-i386


Disassembly of section .interp:

08048154 <.interp>:
 8048154:	2f                   	das    
 8048155:	6c                   	insb   (%dx),%es:(%edi)
 8048156:	69 62 2f 6c 64 2d 6c 	imul   $0x6c2d646c,0x2f(%edx),%esp
 804815d:	69 6e 75 78 2e 73 6f 	imul   $0x6f732e78,0x75(%esi),%ebp
 8048164:	2e 32 00             	xor    %cs:(%eax),%al

Disassembly of section .note.ABI-tag:

08048168 <.note.ABI-tag>:
 8048168:	04 00                	add    $0x0,%al
 804816a:	00 00                	add    %al,(%eax)
 804816c:	10 00                	adc    %al,(%eax)
 804816e:	00 00                	add    %al,(%eax)
 8048170:	01 00                	add    %eax,(%eax)
 8048172:	00 00                	add    %al,(%eax)
 8048174:	47                   	inc    %edi
 8048175:	4e                   	dec    %esi
 8048176:	55                   	push   %ebp
 8048177:	00 00                	add    %al,(%eax)
 8048179:	00 00                	add    %al,(%eax)
 804817b:	00 02                	add    %al,(%edx)
 804817d:	00 00                	add    %al,(%eax)
 804817f:	00 06                	add    %al,(%esi)
 8048181:	00 00                	add    %al,(%eax)
 8048183:	00 18                	add    %bl,(%eax)
 8048185:	00 00                	add    %al,(%eax)
	...

Disassembly of section .note.gnu.build-id:

08048188 <.note.gnu.build-id>:
 8048188:	04 00                	add    $0x0,%al
 804818a:	00 00                	add    %al,(%eax)
 804818c:	14 00                	adc    $0x0,%al
 804818e:	00 00                	add    %al,(%eax)
 8048190:	03 00                	add    (%eax),%eax
 8048192:	00 00                	add    %al,(%eax)
 8048194:	47                   	inc    %edi
 8048195:	4e                   	dec    %esi
 8048196:	55                   	push   %ebp
 8048197:	00 a6 9b 1c 84 e8    	add    %ah,-0x177be365(%esi)
 804819d:	00 98 d3 42 67 cb    	add    %bl,-0x3498bd2d(%eax)
 80481a3:	40                   	inc    %eax
 80481a4:	72 20                	jb     80481c6 <_init-0x55e>
 80481a6:	30 fb                	xor    %bh,%bl
 80481a8:	5d                   	pop    %ebp
 80481a9:	1b 68 12             	sbb    0x12(%eax),%ebp

Disassembly of section .gnu.hash:

080481ac <.gnu.hash>:
 80481ac:	03 00                	add    (%eax),%eax
 80481ae:	00 00                	add    %al,(%eax)
 80481b0:	1d 00 00 00 01       	sbb    $0x1000000,%eax
 80481b5:	00 00                	add    %al,(%eax)
 80481b7:	00 05 00 00 00 80    	add    %al,0x80000000
 80481bd:	2b 02                	sub    (%edx),%eax
 80481bf:	22 1d 00 00 00 1e    	and    0x1e000000,%bl
 80481c5:	00 00                	add    %al,(%eax)
 80481c7:	00 00                	add    %al,(%eax)
 80481c9:	00 00                	add    %al,(%eax)
 80481cb:	00 29                	add    %ch,(%ecx)
 80481cd:	1d 8c 1c 38 f2       	sbb    $0xf2381c8c,%eax
 80481d2:	8b 1c ac             	mov    (%esp,%ebp,4),%ebx
 80481d5:	4b                   	dec    %ebx
 80481d6:	e3 c0                	jecxz  8048198 <_init-0x58c>
 80481d8:	67 55                	addr16 push %ebp
 80481da:	61                   	popa   
 80481db:	10                   	.byte 0x10

Disassembly of section .dynsym:

080481dc <.dynsym>:
	...
 80481ec:	af                   	scas   %es:(%edi),%eax
	...
 80481f5:	00 00                	add    %al,(%eax)
 80481f7:	00 12                	add    %dl,(%edx)
 80481f9:	00 00                	add    %al,(%eax)
 80481fb:	00 30                	add    %dh,(%eax)
	...
 8048205:	00 00                	add    %al,(%eax)
 8048207:	00 12                	add    %dl,(%edx)
 8048209:	00 00                	add    %al,(%eax)
 804820b:	00 98 00 00 00 00    	add    %bl,0x0(%eax)
 8048211:	00 00                	add    %al,(%eax)
 8048213:	00 00                	add    %al,(%eax)
 8048215:	00 00                	add    %al,(%eax)
 8048217:	00 12                	add    %dl,(%edx)
 8048219:	00 00                	add    %al,(%eax)
 804821b:	00 6e 00             	add    %ch,0x0(%esi)
	...
 8048226:	00 00                	add    %al,(%eax)
 8048228:	12 00                	adc    (%eax),%al
 804822a:	00 00                	add    %al,(%eax)
 804822c:	1a 01                	sbb    (%ecx),%al
	...
 8048236:	00 00                	add    %al,(%eax)
 8048238:	12 00                	adc    (%eax),%al
 804823a:	00 00                	add    %al,(%eax)
 804823c:	f3 00 00             	repz add %al,(%eax)
	...
 8048247:	00 12                	add    %dl,(%edx)
 8048249:	00 00                	add    %al,(%eax)
 804824b:	00 7a 00             	add    %bh,0x0(%edx)
	...
 8048256:	00 00                	add    %al,(%eax)
 8048258:	12 00                	adc    (%eax),%al
 804825a:	00 00                	add    %al,(%eax)
 804825c:	37                   	aaa    
	...
 8048265:	00 00                	add    %al,(%eax)
 8048267:	00 12                	add    %dl,(%edx)
 8048269:	00 00                	add    %al,(%eax)
 804826b:	00 e5                	add    %ah,%ch
	...
 8048275:	00 00                	add    %al,(%eax)
 8048277:	00 12                	add    %dl,(%edx)
 8048279:	00 00                	add    %al,(%eax)
 804827b:	00 75 00             	add    %dh,0x0(%ebp)
	...
 8048286:	00 00                	add    %al,(%eax)
 8048288:	12 00                	adc    (%eax),%al
 804828a:	00 00                	add    %al,(%eax)
 804828c:	c9                   	leave  
	...
 8048295:	00 00                	add    %al,(%eax)
 8048297:	00 12                	add    %dl,(%edx)
 8048299:	00 00                	add    %al,(%eax)
 804829b:	00 07                	add    %al,(%edi)
 804829d:	01 00                	add    %eax,(%eax)
	...
 80482a7:	00 12                	add    %dl,(%edx)
 80482a9:	00 00                	add    %al,(%eax)
 80482ab:	00 01                	add    %al,(%ecx)
	...
 80482b5:	00 00                	add    %al,(%eax)
 80482b7:	00 20                	add    %ah,(%eax)
 80482b9:	00 00                	add    %al,(%eax)
 80482bb:	00 4b 00             	add    %cl,0x0(%ebx)
	...
 80482c6:	00 00                	add    %al,(%eax)
 80482c8:	12 00                	adc    (%eax),%al
 80482ca:	00 00                	add    %al,(%eax)
 80482cc:	2e 01 00             	add    %eax,%cs:(%eax)
	...
 80482d7:	00 12                	add    %dl,(%edx)
 80482d9:	00 00                	add    %al,(%eax)
 80482db:	00 40 01             	add    %al,0x1(%eax)
	...
 80482e6:	00 00                	add    %al,(%eax)
 80482e8:	12 00                	adc    (%eax),%al
 80482ea:	00 00                	add    %al,(%eax)
 80482ec:	56                   	push   %esi
	...
 80482f5:	00 00                	add    %al,(%eax)
 80482f7:	00 12                	add    %dl,(%edx)
 80482f9:	00 00                	add    %al,(%eax)
 80482fb:	00 50 00             	add    %dl,0x0(%eax)
	...
 8048306:	00 00                	add    %al,(%eax)
 8048308:	12 00                	adc    (%eax),%al
 804830a:	00 00                	add    %al,(%eax)
 804830c:	9e                   	sahf   
	...
 8048315:	00 00                	add    %al,(%eax)
 8048317:	00 12                	add    %dl,(%edx)
 8048319:	00 00                	add    %al,(%eax)
 804831b:	00 3e                	add    %bh,(%esi)
	...
 8048325:	00 00                	add    %al,(%eax)
 8048327:	00 12                	add    %dl,(%edx)
 8048329:	00 00                	add    %al,(%eax)
 804832b:	00 29                	add    %ch,(%ecx)
	...
 8048335:	00 00                	add    %al,(%eax)
 8048337:	00 12                	add    %dl,(%edx)
 8048339:	00 00                	add    %al,(%eax)
 804833b:	00 b4 00 00 00 00 00 	add    %dh,0x0(%eax,%eax,1)
 8048342:	00 00                	add    %al,(%eax)
 8048344:	00 00                	add    %al,(%eax)
 8048346:	00 00                	add    %al,(%eax)
 8048348:	12 00                	adc    (%eax),%al
 804834a:	00 00                	add    %al,(%eax)
 804834c:	f9                   	stc    
	...
 8048355:	00 00                	add    %al,(%eax)
 8048357:	00 12                	add    %dl,(%edx)
 8048359:	00 00                	add    %al,(%eax)
 804835b:	00 91 00 00 00 00    	add    %dl,0x0(%ecx)
 8048361:	00 00                	add    %al,(%eax)
 8048363:	00 00                	add    %al,(%eax)
 8048365:	00 00                	add    %al,(%eax)
 8048367:	00 12                	add    %dl,(%edx)
 8048369:	00 00                	add    %al,(%eax)
 804836b:	00 66 00             	add    %ah,0x0(%esi)
	...
 8048376:	00 00                	add    %al,(%eax)
 8048378:	12 00                	adc    (%eax),%al
 804837a:	00 00                	add    %al,(%eax)
 804837c:	14 01                	adc    $0x1,%al
	...
 8048386:	00 00                	add    %al,(%eax)
 8048388:	12 00                	adc    (%eax),%al
 804838a:	00 00                	add    %al,(%eax)
 804838c:	d7                   	xlat   %ds:(%ebx)
	...
 8048395:	00 00                	add    %al,(%eax)
 8048397:	00 12                	add    %dl,(%edx)
 8048399:	00 00                	add    %al,(%eax)
 804839b:	00 20                	add    %ah,(%eax)
 804839d:	01 00                	add    %eax,(%eax)
	...
 80483a7:	00 12                	add    %dl,(%edx)
 80483a9:	00 00                	add    %al,(%eax)
 80483ab:	00 c2                	add    %al,%dl
 80483ad:	00 00                	add    %al,(%eax)
 80483af:	00 c0                	add    %al,%al
 80483b1:	c3                   	ret    
 80483b2:	04 08                	add    $0x8,%al
 80483b4:	04 00                	add    $0x0,%al
 80483b6:	00 00                	add    %al,(%eax)
 80483b8:	11 00                	adc    %eax,(%eax)
 80483ba:	19 00                	sbb    %eax,(%eax)
 80483bc:	ec                   	in     (%dx),%al
 80483bd:	00 00                	add    %al,(%eax)
 80483bf:	00 a0 c3 04 08 04    	add    %ah,0x40804c3(%eax)
 80483c5:	00 00                	add    %al,(%eax)
 80483c7:	00 11                	add    %dl,(%ecx)
 80483c9:	00 19                	add    %bl,(%ecx)
 80483cb:	00 1a                	add    %bl,(%edx)
 80483cd:	00 00                	add    %al,(%eax)
 80483cf:	00 9c a0 04 08 04 00 	add    %bl,0x40804(%eax,%eiz,4)
 80483d6:	00 00                	add    %al,(%eax)
 80483d8:	11 00                	adc    %eax,(%eax)
 80483da:	0f 00 8b 00 00 00 a4 	str    -0x5c000000(%ebx)
 80483e1:	c3                   	ret    
 80483e2:	04 08                	add    $0x8,%al
 80483e4:	04 00                	add    $0x0,%al
 80483e6:	00 00                	add    %al,(%eax)
 80483e8:	11 00                	adc    %eax,(%eax)
 80483ea:	19 00                	sbb    %eax,(%eax)

Disassembly of section .dynstr:

080483ec <.dynstr>:
 80483ec:	00 5f 5f             	add    %bl,0x5f(%edi)
 80483ef:	67 6d                	insl   (%dx),%es:(%di)
 80483f1:	6f                   	outsl  %ds:(%esi),(%dx)
 80483f2:	6e                   	outsb  %ds:(%esi),(%dx)
 80483f3:	5f                   	pop    %edi
 80483f4:	73 74                	jae    804846a <_init-0x2ba>
 80483f6:	61                   	popa   
 80483f7:	72 74                	jb     804846d <_init-0x2b7>
 80483f9:	5f                   	pop    %edi
 80483fa:	5f                   	pop    %edi
 80483fb:	00 6c 69 62          	add    %ch,0x62(%ecx,%ebp,2)
 80483ff:	63 2e                	arpl   %bp,(%esi)
 8048401:	73 6f                	jae    8048472 <_init-0x2b2>
 8048403:	2e 36 00 5f 49       	cs add %bl,%ss:0x49(%edi)
 8048408:	4f                   	dec    %edi
 8048409:	5f                   	pop    %edi
 804840a:	73 74                	jae    8048480 <_init-0x2a4>
 804840c:	64 69 6e 5f 75 73 65 	imul   $0x64657375,%fs:0x5f(%esi),%ebp
 8048413:	64 
 8048414:	00 73 6f             	add    %dh,0x6f(%ebx)
 8048417:	63 6b 65             	arpl   %bp,0x65(%ebx)
 804841a:	74 00                	je     804841c <_init-0x308>
 804841c:	66 66 6c             	data16 data16 insb (%dx),%es:(%edi)
 804841f:	75 73                	jne    8048494 <_init-0x290>
 8048421:	68 00 73 74 72       	push   $0x72747300
 8048426:	63 70 79             	arpl   %si,0x79(%eax)
 8048429:	00 5f 5f             	add    %bl,0x5f(%edi)
 804842c:	70 72                	jo     80484a0 <_init-0x284>
 804842e:	69 6e 74 66 5f 63 68 	imul   $0x68635f66,0x74(%esi),%ebp
 8048435:	6b 00 65             	imul   $0x65,(%eax),%eax
 8048438:	78 69                	js     80484a3 <_init-0x281>
 804843a:	74 00                	je     804843c <_init-0x2e8>
 804843c:	66 6f                	outsw  %ds:(%esi),(%dx)
 804843e:	70 65                	jo     80484a5 <_init-0x27f>
 8048440:	6e                   	outsb  %ds:(%esi),(%dx)
 8048441:	00 5f 5f             	add    %bl,0x5f(%edi)
 8048444:	69 73 6f 63 39 39 5f 	imul   $0x5f393963,0x6f(%ebx),%esi
 804844b:	73 73                	jae    80484c0 <_init-0x264>
 804844d:	63 61 6e             	arpl   %sp,0x6e(%ecx)
 8048450:	66 00 63 6f          	data16 add %ah,0x6f(%ebx)
 8048454:	6e                   	outsb  %ds:(%esi),(%dx)
 8048455:	6e                   	outsb  %ds:(%esi),(%dx)
 8048456:	65 63 74 00 73       	arpl   %si,%gs:0x73(%eax,%eax,1)
 804845b:	69 67 6e 61 6c 00 70 	imul   $0x70006c61,0x6e(%edi),%esp
 8048462:	75 74                	jne    80484d8 <_init-0x24c>
 8048464:	73 00                	jae    8048466 <_init-0x2be>
 8048466:	5f                   	pop    %edi
 8048467:	5f                   	pop    %edi
 8048468:	73 74                	jae    80484de <_init-0x246>
 804846a:	61                   	popa   
 804846b:	63 6b 5f             	arpl   %bp,0x5f(%ebx)
 804846e:	63 68 6b             	arpl   %bp,0x6b(%eax)
 8048471:	5f                   	pop    %edi
 8048472:	66 61                	popaw  
 8048474:	69 6c 00 73 74 64 69 	imul   $0x6e696474,0x73(%eax,%eax,1),%ebp
 804847b:	6e 
 804847c:	00 73 74             	add    %dh,0x74(%ebx)
 804847f:	72 74                	jb     80484f5 <_init-0x22f>
 8048481:	6f                   	outsl  %ds:(%esi),(%dx)
 8048482:	6c                   	insb   (%dx),%es:(%edi)
 8048483:	00 66 67             	add    %ah,0x67(%esi)
 8048486:	65 74 73             	gs je  80484fc <_init-0x228>
 8048489:	00 5f 5f             	add    %bl,0x5f(%edi)
 804848c:	65 72 72             	gs jb  8048501 <_init-0x223>
 804848f:	6e                   	outsb  %ds:(%esi),(%dx)
 8048490:	6f                   	outsl  %ds:(%esi),(%dx)
 8048491:	5f                   	pop    %edi
 8048492:	6c                   	insb   (%dx),%es:(%edi)
 8048493:	6f                   	outsl  %ds:(%esi),(%dx)
 8048494:	63 61 74             	arpl   %sp,0x74(%ecx)
 8048497:	69 6f 6e 00 72 65 61 	imul   $0x61657200,0x6e(%edi),%ebp
 804849e:	64 00 5f 5f          	add    %bl,%fs:0x5f(%edi)
 80484a2:	66 70 72             	data16 jo 8048517 <_init-0x20d>
 80484a5:	69 6e 74 66 5f 63 68 	imul   $0x68635f66,0x74(%esi),%ebp
 80484ac:	6b 00 73             	imul   $0x73,(%eax),%eax
 80484af:	74 64                	je     8048515 <_init-0x20f>
 80484b1:	6f                   	outsl  %ds:(%esi),(%dx)
 80484b2:	75 74                	jne    8048528 <_init-0x1fc>
 80484b4:	00 5f 5f             	add    %bl,0x5f(%edi)
 80484b7:	6d                   	insl   (%dx),%es:(%edi)
 80484b8:	65 6d                	gs insl (%dx),%es:(%edi)
 80484ba:	6d                   	insl   (%dx),%es:(%edi)
 80484bb:	6f                   	outsl  %ds:(%esi),(%dx)
 80484bc:	76 65                	jbe    8048523 <_init-0x201>
 80484be:	5f                   	pop    %edi
 80484bf:	63 68 6b             	arpl   %bp,0x6b(%eax)
 80484c2:	00 5f 5f             	add    %bl,0x5f(%edi)
 80484c5:	63 74 79 70          	arpl   %si,0x70(%ecx,%edi,2)
 80484c9:	65 5f                	gs pop %edi
 80484cb:	62 5f 6c             	bound  %ebx,0x6c(%edi)
 80484ce:	6f                   	outsl  %ds:(%esi),(%dx)
 80484cf:	63 00                	arpl   %ax,(%eax)
 80484d1:	67 65 74 65          	addr16 gs je 804853a <_init-0x1ea>
 80484d5:	6e                   	outsb  %ds:(%esi),(%dx)
 80484d6:	76 00                	jbe    80484d8 <_init-0x24c>
 80484d8:	73 74                	jae    804854e <_init-0x1d6>
 80484da:	64 65 72 72          	fs gs jb 8048550 <_init-0x1d4>
 80484de:	00 61 6c             	add    %ah,0x6c(%ecx)
 80484e1:	61                   	popa   
 80484e2:	72 6d                	jb     8048551 <_init-0x1d3>
 80484e4:	00 67 65             	add    %ah,0x65(%edi)
 80484e7:	74 68                	je     8048551 <_init-0x1d3>
 80484e9:	6f                   	outsl  %ds:(%esi),(%dx)
 80484ea:	73 74                	jae    8048560 <_init-0x1c4>
 80484ec:	62 79 6e             	bound  %edi,0x6e(%ecx)
 80484ef:	61                   	popa   
 80484f0:	6d                   	insl   (%dx),%es:(%edi)
 80484f1:	65 00 5f 5f          	add    %bl,%gs:0x5f(%edi)
 80484f5:	6d                   	insl   (%dx),%es:(%edi)
 80484f6:	65 6d                	gs insl (%dx),%es:(%edi)
 80484f8:	63 70 79             	arpl   %si,0x79(%eax)
 80484fb:	5f                   	pop    %edi
 80484fc:	63 68 6b             	arpl   %bp,0x6b(%eax)
 80484ff:	00 63 6c             	add    %ah,0x6c(%ebx)
 8048502:	6f                   	outsl  %ds:(%esi),(%dx)
 8048503:	73 65                	jae    804856a <_init-0x1ba>
 8048505:	00 73 6c             	add    %dh,0x6c(%ebx)
 8048508:	65 65 70 00          	gs gs jo 804850c <_init-0x218>
 804850c:	5f                   	pop    %edi
 804850d:	5f                   	pop    %edi
 804850e:	73 70                	jae    8048580 <_init-0x1a4>
 8048510:	72 69                	jb     804857b <_init-0x1a9>
 8048512:	6e                   	outsb  %ds:(%esi),(%dx)
 8048513:	74 66                	je     804857b <_init-0x1a9>
 8048515:	5f                   	pop    %edi
 8048516:	63 68 6b             	arpl   %bp,0x6b(%eax)
 8048519:	00 5f 5f             	add    %bl,0x5f(%edi)
 804851c:	6c                   	insb   (%dx),%es:(%edi)
 804851d:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%edx),%esp
 8048524:	72 74                	jb     804859a <_init-0x18a>
 8048526:	5f                   	pop    %edi
 8048527:	6d                   	insl   (%dx),%es:(%edi)
 8048528:	61                   	popa   
 8048529:	69 6e 00 77 72 69 74 	imul   $0x74697277,0x0(%esi),%ebp
 8048530:	65 00 47 4c          	add    %al,%gs:0x4c(%edi)
 8048534:	49                   	dec    %ecx
 8048535:	42                   	inc    %edx
 8048536:	43                   	inc    %ebx
 8048537:	5f                   	pop    %edi
 8048538:	32 2e                	xor    (%esi),%ch
 804853a:	33 00                	xor    (%eax),%eax
 804853c:	47                   	inc    %edi
 804853d:	4c                   	dec    %esp
 804853e:	49                   	dec    %ecx
 804853f:	42                   	inc    %edx
 8048540:	43                   	inc    %ebx
 8048541:	5f                   	pop    %edi
 8048542:	32 2e                	xor    (%esi),%ch
 8048544:	31 00                	xor    %eax,(%eax)
 8048546:	47                   	inc    %edi
 8048547:	4c                   	dec    %esp
 8048548:	49                   	dec    %ecx
 8048549:	42                   	inc    %edx
 804854a:	43                   	inc    %ebx
 804854b:	5f                   	pop    %edi
 804854c:	32 2e                	xor    (%esi),%ch
 804854e:	37                   	aaa    
 804854f:	00 47 4c             	add    %al,0x4c(%edi)
 8048552:	49                   	dec    %ecx
 8048553:	42                   	inc    %edx
 8048554:	43                   	inc    %ebx
 8048555:	5f                   	pop    %edi
 8048556:	32 2e                	xor    (%esi),%ch
 8048558:	33 2e                	xor    (%esi),%ebp
 804855a:	34 00                	xor    $0x0,%al
 804855c:	47                   	inc    %edi
 804855d:	4c                   	dec    %esp
 804855e:	49                   	dec    %ecx
 804855f:	42                   	inc    %edx
 8048560:	43                   	inc    %ebx
 8048561:	5f                   	pop    %edi
 8048562:	32 2e                	xor    (%esi),%ch
 8048564:	34 00                	xor    $0x0,%al
 8048566:	47                   	inc    %edi
 8048567:	4c                   	dec    %esp
 8048568:	49                   	dec    %ecx
 8048569:	42                   	inc    %edx
 804856a:	43                   	inc    %ebx
 804856b:	5f                   	pop    %edi
 804856c:	32 2e                	xor    (%esi),%ch
 804856e:	30 00                	xor    %al,(%eax)

Disassembly of section .gnu.version:

08048570 <.gnu.version>:
 8048570:	00 00                	add    %al,(%eax)
 8048572:	02 00                	add    (%eax),%al
 8048574:	02 00                	add    (%eax),%al
 8048576:	02 00                	add    (%eax),%al
 8048578:	02 00                	add    (%eax),%al
 804857a:	02 00                	add    (%eax),%al
 804857c:	02 00                	add    (%eax),%al
 804857e:	03 00                	add    (%eax),%eax
 8048580:	02 00                	add    (%eax),%al
 8048582:	02 00                	add    (%eax),%al
 8048584:	02 00                	add    (%eax),%al
 8048586:	04 00                	add    $0x0,%al
 8048588:	04 00                	add    $0x0,%al
 804858a:	00 00                	add    %al,(%eax)
 804858c:	02 00                	add    (%eax),%al
 804858e:	02 00                	add    (%eax),%al
 8048590:	02 00                	add    (%eax),%al
 8048592:	05 00 06 00 02       	add    $0x2000600,%eax
 8048597:	00 04 00             	add    %al,(%eax,%eax,1)
 804859a:	02 00                	add    (%eax),%al
 804859c:	04 00                	add    $0x0,%al
 804859e:	02 00                	add    (%eax),%al
 80485a0:	02 00                	add    (%eax),%al
 80485a2:	02 00                	add    (%eax),%al
 80485a4:	02 00                	add    (%eax),%al
 80485a6:	07                   	pop    %es
 80485a7:	00 04 00             	add    %al,(%eax,%eax,1)
 80485aa:	02 00                	add    (%eax),%al
 80485ac:	02 00                	add    (%eax),%al
 80485ae:	01 00                	add    %eax,(%eax)
 80485b0:	02 00                	add    (%eax),%al

Disassembly of section .gnu.version_r:

080485b4 <.gnu.version_r>:
 80485b4:	01 00                	add    %eax,(%eax)
 80485b6:	06                   	push   %es
 80485b7:	00 10                	add    %dl,(%eax)
 80485b9:	00 00                	add    %al,(%eax)
 80485bb:	00 10                	add    %dl,(%eax)
 80485bd:	00 00                	add    %al,(%eax)
 80485bf:	00 00                	add    %al,(%eax)
 80485c1:	00 00                	add    %al,(%eax)
 80485c3:	00 13                	add    %dl,(%ebx)
 80485c5:	69 69 0d 00 00 07 00 	imul   $0x70000,0xd(%ecx),%ebp
 80485cc:	46                   	inc    %esi
 80485cd:	01 00                	add    %eax,(%eax)
 80485cf:	00 10                	add    %dl,(%eax)
 80485d1:	00 00                	add    %al,(%eax)
 80485d3:	00 11                	add    %dl,(%ecx)
 80485d5:	69 69 0d 00 00 06 00 	imul   $0x60000,0xd(%ecx),%ebp
 80485dc:	50                   	push   %eax
 80485dd:	01 00                	add    %eax,(%eax)
 80485df:	00 10                	add    %dl,(%eax)
 80485e1:	00 00                	add    %al,(%eax)
 80485e3:	00 17                	add    %dl,(%edi)
 80485e5:	69 69 0d 00 00 05 00 	imul   $0x50000,0xd(%ecx),%ebp
 80485ec:	5a                   	pop    %edx
 80485ed:	01 00                	add    %eax,(%eax)
 80485ef:	00 10                	add    %dl,(%eax)
 80485f1:	00 00                	add    %al,(%eax)
 80485f3:	00 74 19 69          	add    %dh,0x69(%ecx,%ebx,1)
 80485f7:	09 00                	or     %eax,(%eax)
 80485f9:	00 04 00             	add    %al,(%eax,%eax,1)
 80485fc:	64 01 00             	add    %eax,%fs:(%eax)
 80485ff:	00 10                	add    %dl,(%eax)
 8048601:	00 00                	add    %al,(%eax)
 8048603:	00 14 69             	add    %dl,(%ecx,%ebp,2)
 8048606:	69 0d 00 00 03 00 70 	imul   $0x170,0x30000,%ecx
 804860d:	01 00 00 
 8048610:	10 00                	adc    %al,(%eax)
 8048612:	00 00                	add    %al,(%eax)
 8048614:	10 69 69             	adc    %ch,0x69(%ecx)
 8048617:	0d 00 00 02 00       	or     $0x20000,%eax
 804861c:	7a 01                	jp     804861f <_init-0x105>
 804861e:	00 00                	add    %al,(%eax)
 8048620:	00 00                	add    %al,(%eax)
	...

Disassembly of section .rel.dyn:

08048624 <.rel.dyn>:
 8048624:	f0 bf 04 08 06 0d    	lock mov $0xd060804,%edi
 804862a:	00 00                	add    %al,(%eax)
 804862c:	a0 c3 04 08 05       	mov    0x50804c3,%al
 8048631:	1e                   	push   %ds
 8048632:	00 00                	add    %al,(%eax)
 8048634:	a4                   	movsb  %ds:(%esi),%es:(%edi)
 8048635:	c3                   	ret    
 8048636:	04 08                	add    $0x8,%al
 8048638:	05 20 00 00 c0       	add    $0xc0000020,%eax
 804863d:	c3                   	ret    
 804863e:	04 08                	add    $0x8,%al
 8048640:	05                   	.byte 0x5
 8048641:	1d                   	.byte 0x1d
	...

Disassembly of section .rel.plt:

08048644 <.rel.plt>:
 8048644:	00 c0                	add    %al,%al
 8048646:	04 08                	add    $0x8,%al
 8048648:	07                   	pop    %es
 8048649:	01 00                	add    %eax,(%eax)
 804864b:	00 04 c0             	add    %al,(%eax,%eax,8)
 804864e:	04 08                	add    $0x8,%al
 8048650:	07                   	pop    %es
 8048651:	02 00                	add    (%eax),%al
 8048653:	00 08                	add    %cl,(%eax)
 8048655:	c0 04 08 07          	rolb   $0x7,(%eax,%ecx,1)
 8048659:	03 00                	add    (%eax),%eax
 804865b:	00 0c c0             	add    %cl,(%eax,%eax,8)
 804865e:	04 08                	add    $0x8,%al
 8048660:	07                   	pop    %es
 8048661:	04 00                	add    $0x0,%al
 8048663:	00 10                	add    %dl,(%eax)
 8048665:	c0 04 08 07          	rolb   $0x7,(%eax,%ecx,1)
 8048669:	05 00 00 14 c0       	add    $0xc0140000,%eax
 804866e:	04 08                	add    $0x8,%al
 8048670:	07                   	pop    %es
 8048671:	06                   	push   %es
 8048672:	00 00                	add    %al,(%eax)
 8048674:	18 c0                	sbb    %al,%al
 8048676:	04 08                	add    $0x8,%al
 8048678:	07                   	pop    %es
 8048679:	07                   	pop    %es
 804867a:	00 00                	add    %al,(%eax)
 804867c:	1c c0                	sbb    $0xc0,%al
 804867e:	04 08                	add    $0x8,%al
 8048680:	07                   	pop    %es
 8048681:	08 00                	or     %al,(%eax)
 8048683:	00 20                	add    %ah,(%eax)
 8048685:	c0 04 08 07          	rolb   $0x7,(%eax,%ecx,1)
 8048689:	09 00                	or     %eax,(%eax)
 804868b:	00 24 c0             	add    %ah,(%eax,%eax,8)
 804868e:	04 08                	add    $0x8,%al
 8048690:	07                   	pop    %es
 8048691:	0a 00                	or     (%eax),%al
 8048693:	00 28                	add    %ch,(%eax)
 8048695:	c0 04 08 07          	rolb   $0x7,(%eax,%ecx,1)
 8048699:	0b 00                	or     (%eax),%eax
 804869b:	00 2c c0             	add    %ch,(%eax,%eax,8)
 804869e:	04 08                	add    $0x8,%al
 80486a0:	07                   	pop    %es
 80486a1:	0c 00                	or     $0x0,%al
 80486a3:	00 30                	add    %dh,(%eax)
 80486a5:	c0 04 08 07          	rolb   $0x7,(%eax,%ecx,1)
 80486a9:	0d 00 00 34 c0       	or     $0xc0340000,%eax
 80486ae:	04 08                	add    $0x8,%al
 80486b0:	07                   	pop    %es
 80486b1:	0e                   	push   %cs
 80486b2:	00 00                	add    %al,(%eax)
 80486b4:	38 c0                	cmp    %al,%al
 80486b6:	04 08                	add    $0x8,%al
 80486b8:	07                   	pop    %es
 80486b9:	0f 00 00             	sldt   (%eax)
 80486bc:	3c c0                	cmp    $0xc0,%al
 80486be:	04 08                	add    $0x8,%al
 80486c0:	07                   	pop    %es
 80486c1:	10 00                	adc    %al,(%eax)
 80486c3:	00 40 c0             	add    %al,-0x40(%eax)
 80486c6:	04 08                	add    $0x8,%al
 80486c8:	07                   	pop    %es
 80486c9:	11 00                	adc    %eax,(%eax)
 80486cb:	00 44 c0 04          	add    %al,0x4(%eax,%eax,8)
 80486cf:	08 07                	or     %al,(%edi)
 80486d1:	12 00                	adc    (%eax),%al
 80486d3:	00 48 c0             	add    %cl,-0x40(%eax)
 80486d6:	04 08                	add    $0x8,%al
 80486d8:	07                   	pop    %es
 80486d9:	13 00                	adc    (%eax),%eax
 80486db:	00 4c c0 04          	add    %cl,0x4(%eax,%eax,8)
 80486df:	08 07                	or     %al,(%edi)
 80486e1:	14 00                	adc    $0x0,%al
 80486e3:	00 50 c0             	add    %dl,-0x40(%eax)
 80486e6:	04 08                	add    $0x8,%al
 80486e8:	07                   	pop    %es
 80486e9:	15 00 00 54 c0       	adc    $0xc0540000,%eax
 80486ee:	04 08                	add    $0x8,%al
 80486f0:	07                   	pop    %es
 80486f1:	16                   	push   %ss
 80486f2:	00 00                	add    %al,(%eax)
 80486f4:	58                   	pop    %eax
 80486f5:	c0 04 08 07          	rolb   $0x7,(%eax,%ecx,1)
 80486f9:	17                   	pop    %ss
 80486fa:	00 00                	add    %al,(%eax)
 80486fc:	5c                   	pop    %esp
 80486fd:	c0 04 08 07          	rolb   $0x7,(%eax,%ecx,1)
 8048701:	18 00                	sbb    %al,(%eax)
 8048703:	00 60 c0             	add    %ah,-0x40(%eax)
 8048706:	04 08                	add    $0x8,%al
 8048708:	07                   	pop    %es
 8048709:	19 00                	sbb    %eax,(%eax)
 804870b:	00 64 c0 04          	add    %ah,0x4(%eax,%eax,8)
 804870f:	08 07                	or     %al,(%edi)
 8048711:	1a 00                	sbb    (%eax),%al
 8048713:	00 68 c0             	add    %ch,-0x40(%eax)
 8048716:	04 08                	add    $0x8,%al
 8048718:	07                   	pop    %es
 8048719:	1b 00                	sbb    (%eax),%eax
 804871b:	00 6c c0 04          	add    %ch,0x4(%eax,%eax,8)
 804871f:	08 07                	or     %al,(%edi)
 8048721:	1c 00                	sbb    $0x0,%al
	...

Disassembly of section .init:

08048724 <_init>:
 8048724:	53                   	push   %ebx
 8048725:	83 ec 08             	sub    $0x8,%esp
 8048728:	e8 00 00 00 00       	call   804872d <_init+0x9>
 804872d:	5b                   	pop    %ebx
 804872e:	81 c3 c7 38 00 00    	add    $0x38c7,%ebx
 8048734:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 804873a:	85 c0                	test   %eax,%eax
 804873c:	74 05                	je     8048743 <_init+0x1f>
 804873e:	e8 ed 00 00 00       	call   8048830 <__gmon_start__@plt>
 8048743:	e8 78 02 00 00       	call   80489c0 <frame_dummy>
 8048748:	e8 03 19 00 00       	call   804a050 <__do_global_ctors_aux>
 804874d:	83 c4 08             	add    $0x8,%esp
 8048750:	5b                   	pop    %ebx
 8048751:	c3                   	ret    

Disassembly of section .plt:

08048760 <read@plt-0x10>:
 8048760:	ff 35 f8 bf 04 08    	pushl  0x804bff8
 8048766:	ff 25 fc bf 04 08    	jmp    *0x804bffc
 804876c:	00 00                	add    %al,(%eax)
	...

08048770 <read@plt>:
 8048770:	ff 25 00 c0 04 08    	jmp    *0x804c000
 8048776:	68 00 00 00 00       	push   $0x0
 804877b:	e9 e0 ff ff ff       	jmp    8048760 <_init+0x3c>

08048780 <fflush@plt>:
 8048780:	ff 25 04 c0 04 08    	jmp    *0x804c004
 8048786:	68 08 00 00 00       	push   $0x8
 804878b:	e9 d0 ff ff ff       	jmp    8048760 <_init+0x3c>

08048790 <fgets@plt>:
 8048790:	ff 25 08 c0 04 08    	jmp    *0x804c008
 8048796:	68 10 00 00 00       	push   $0x10
 804879b:	e9 c0 ff ff ff       	jmp    8048760 <_init+0x3c>

080487a0 <signal@plt>:
 80487a0:	ff 25 0c c0 04 08    	jmp    *0x804c00c
 80487a6:	68 18 00 00 00       	push   $0x18
 80487ab:	e9 b0 ff ff ff       	jmp    8048760 <_init+0x3c>

080487b0 <sleep@plt>:
 80487b0:	ff 25 10 c0 04 08    	jmp    *0x804c010
 80487b6:	68 20 00 00 00       	push   $0x20
 80487bb:	e9 a0 ff ff ff       	jmp    8048760 <_init+0x3c>

080487c0 <alarm@plt>:
 80487c0:	ff 25 14 c0 04 08    	jmp    *0x804c014
 80487c6:	68 28 00 00 00       	push   $0x28
 80487cb:	e9 90 ff ff ff       	jmp    8048760 <_init+0x3c>

080487d0 <__stack_chk_fail@plt>:
 80487d0:	ff 25 18 c0 04 08    	jmp    *0x804c018
 80487d6:	68 30 00 00 00       	push   $0x30
 80487db:	e9 80 ff ff ff       	jmp    8048760 <_init+0x3c>

080487e0 <strcpy@plt>:
 80487e0:	ff 25 1c c0 04 08    	jmp    *0x804c01c
 80487e6:	68 38 00 00 00       	push   $0x38
 80487eb:	e9 70 ff ff ff       	jmp    8048760 <_init+0x3c>

080487f0 <getenv@plt>:
 80487f0:	ff 25 20 c0 04 08    	jmp    *0x804c020
 80487f6:	68 40 00 00 00       	push   $0x40
 80487fb:	e9 60 ff ff ff       	jmp    8048760 <_init+0x3c>

08048800 <puts@plt>:
 8048800:	ff 25 24 c0 04 08    	jmp    *0x804c024
 8048806:	68 48 00 00 00       	push   $0x48
 804880b:	e9 50 ff ff ff       	jmp    8048760 <_init+0x3c>

08048810 <__memmove_chk@plt>:
 8048810:	ff 25 28 c0 04 08    	jmp    *0x804c028
 8048816:	68 50 00 00 00       	push   $0x50
 804881b:	e9 40 ff ff ff       	jmp    8048760 <_init+0x3c>

08048820 <__memcpy_chk@plt>:
 8048820:	ff 25 2c c0 04 08    	jmp    *0x804c02c
 8048826:	68 58 00 00 00       	push   $0x58
 804882b:	e9 30 ff ff ff       	jmp    8048760 <_init+0x3c>

08048830 <__gmon_start__@plt>:
 8048830:	ff 25 30 c0 04 08    	jmp    *0x804c030
 8048836:	68 60 00 00 00       	push   $0x60
 804883b:	e9 20 ff ff ff       	jmp    8048760 <_init+0x3c>

08048840 <exit@plt>:
 8048840:	ff 25 34 c0 04 08    	jmp    *0x804c034
 8048846:	68 68 00 00 00       	push   $0x68
 804884b:	e9 10 ff ff ff       	jmp    8048760 <_init+0x3c>

08048850 <__libc_start_main@plt>:
 8048850:	ff 25 38 c0 04 08    	jmp    *0x804c038
 8048856:	68 70 00 00 00       	push   $0x70
 804885b:	e9 00 ff ff ff       	jmp    8048760 <_init+0x3c>

08048860 <write@plt>:
 8048860:	ff 25 3c c0 04 08    	jmp    *0x804c03c
 8048866:	68 78 00 00 00       	push   $0x78
 804886b:	e9 f0 fe ff ff       	jmp    8048760 <_init+0x3c>

08048870 <__isoc99_sscanf@plt>:
 8048870:	ff 25 40 c0 04 08    	jmp    *0x804c040
 8048876:	68 80 00 00 00       	push   $0x80
 804887b:	e9 e0 fe ff ff       	jmp    8048760 <_init+0x3c>

08048880 <fopen@plt>:
 8048880:	ff 25 44 c0 04 08    	jmp    *0x804c044
 8048886:	68 88 00 00 00       	push   $0x88
 804888b:	e9 d0 fe ff ff       	jmp    8048760 <_init+0x3c>

08048890 <__errno_location@plt>:
 8048890:	ff 25 48 c0 04 08    	jmp    *0x804c048
 8048896:	68 90 00 00 00       	push   $0x90
 804889b:	e9 c0 fe ff ff       	jmp    8048760 <_init+0x3c>

080488a0 <__printf_chk@plt>:
 80488a0:	ff 25 4c c0 04 08    	jmp    *0x804c04c
 80488a6:	68 98 00 00 00       	push   $0x98
 80488ab:	e9 b0 fe ff ff       	jmp    8048760 <_init+0x3c>

080488b0 <socket@plt>:
 80488b0:	ff 25 50 c0 04 08    	jmp    *0x804c050
 80488b6:	68 a0 00 00 00       	push   $0xa0
 80488bb:	e9 a0 fe ff ff       	jmp    8048760 <_init+0x3c>

080488c0 <__fprintf_chk@plt>:
 80488c0:	ff 25 54 c0 04 08    	jmp    *0x804c054
 80488c6:	68 a8 00 00 00       	push   $0xa8
 80488cb:	e9 90 fe ff ff       	jmp    8048760 <_init+0x3c>

080488d0 <gethostbyname@plt>:
 80488d0:	ff 25 58 c0 04 08    	jmp    *0x804c058
 80488d6:	68 b0 00 00 00       	push   $0xb0
 80488db:	e9 80 fe ff ff       	jmp    8048760 <_init+0x3c>

080488e0 <strtol@plt>:
 80488e0:	ff 25 5c c0 04 08    	jmp    *0x804c05c
 80488e6:	68 b8 00 00 00       	push   $0xb8
 80488eb:	e9 70 fe ff ff       	jmp    8048760 <_init+0x3c>

080488f0 <connect@plt>:
 80488f0:	ff 25 60 c0 04 08    	jmp    *0x804c060
 80488f6:	68 c0 00 00 00       	push   $0xc0
 80488fb:	e9 60 fe ff ff       	jmp    8048760 <_init+0x3c>

08048900 <close@plt>:
 8048900:	ff 25 64 c0 04 08    	jmp    *0x804c064
 8048906:	68 c8 00 00 00       	push   $0xc8
 804890b:	e9 50 fe ff ff       	jmp    8048760 <_init+0x3c>

08048910 <__ctype_b_loc@plt>:
 8048910:	ff 25 68 c0 04 08    	jmp    *0x804c068
 8048916:	68 d0 00 00 00       	push   $0xd0
 804891b:	e9 40 fe ff ff       	jmp    8048760 <_init+0x3c>

08048920 <__sprintf_chk@plt>:
 8048920:	ff 25 6c c0 04 08    	jmp    *0x804c06c
 8048926:	68 d8 00 00 00       	push   $0xd8
 804892b:	e9 30 fe ff ff       	jmp    8048760 <_init+0x3c>

Disassembly of section .text:

08048930 <_start>:
 8048930:	31 ed                	xor    %ebp,%ebp
 8048932:	5e                   	pop    %esi
 8048933:	89 e1                	mov    %esp,%ecx
 8048935:	83 e4 f0             	and    $0xfffffff0,%esp
 8048938:	50                   	push   %eax
 8048939:	54                   	push   %esp
 804893a:	52                   	push   %edx
 804893b:	68 40 a0 04 08       	push   $0x804a040
 8048940:	68 d0 9f 04 08       	push   $0x8049fd0
 8048945:	51                   	push   %ecx
 8048946:	56                   	push   %esi
 8048947:	68 e4 89 04 08       	push   $0x80489e4
 804894c:	e8 ff fe ff ff       	call   8048850 <__libc_start_main@plt>
 8048951:	f4                   	hlt    
 8048952:	90                   	nop
 8048953:	90                   	nop
 8048954:	90                   	nop
 8048955:	90                   	nop
 8048956:	90                   	nop
 8048957:	90                   	nop
 8048958:	90                   	nop
 8048959:	90                   	nop
 804895a:	90                   	nop
 804895b:	90                   	nop
 804895c:	90                   	nop
 804895d:	90                   	nop
 804895e:	90                   	nop
 804895f:	90                   	nop

08048960 <__do_global_dtors_aux>:
 8048960:	55                   	push   %ebp
 8048961:	89 e5                	mov    %esp,%ebp
 8048963:	53                   	push   %ebx
 8048964:	83 ec 04             	sub    $0x4,%esp
 8048967:	80 3d c4 c3 04 08 00 	cmpb   $0x0,0x804c3c4
 804896e:	75 3f                	jne    80489af <__do_global_dtors_aux+0x4f>
 8048970:	a1 c8 c3 04 08       	mov    0x804c3c8,%eax
 8048975:	bb 20 bf 04 08       	mov    $0x804bf20,%ebx
 804897a:	81 eb 1c bf 04 08    	sub    $0x804bf1c,%ebx
 8048980:	c1 fb 02             	sar    $0x2,%ebx
 8048983:	83 eb 01             	sub    $0x1,%ebx
 8048986:	39 d8                	cmp    %ebx,%eax
 8048988:	73 1e                	jae    80489a8 <__do_global_dtors_aux+0x48>
 804898a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048990:	83 c0 01             	add    $0x1,%eax
 8048993:	a3 c8 c3 04 08       	mov    %eax,0x804c3c8
 8048998:	ff 14 85 1c bf 04 08 	call   *0x804bf1c(,%eax,4)
 804899f:	a1 c8 c3 04 08       	mov    0x804c3c8,%eax
 80489a4:	39 d8                	cmp    %ebx,%eax
 80489a6:	72 e8                	jb     8048990 <__do_global_dtors_aux+0x30>
 80489a8:	c6 05 c4 c3 04 08 01 	movb   $0x1,0x804c3c4
 80489af:	83 c4 04             	add    $0x4,%esp
 80489b2:	5b                   	pop    %ebx
 80489b3:	5d                   	pop    %ebp
 80489b4:	c3                   	ret    
 80489b5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80489b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

080489c0 <frame_dummy>:
 80489c0:	55                   	push   %ebp
 80489c1:	89 e5                	mov    %esp,%ebp
 80489c3:	83 ec 18             	sub    $0x18,%esp
 80489c6:	a1 24 bf 04 08       	mov    0x804bf24,%eax
 80489cb:	85 c0                	test   %eax,%eax
 80489cd:	74 12                	je     80489e1 <frame_dummy+0x21>
 80489cf:	b8 00 00 00 00       	mov    $0x0,%eax
 80489d4:	85 c0                	test   %eax,%eax
 80489d6:	74 09                	je     80489e1 <frame_dummy+0x21>
 80489d8:	c7 04 24 24 bf 04 08 	movl   $0x804bf24,(%esp)
 80489df:	ff d0                	call   *%eax
 80489e1:	c9                   	leave  
 80489e2:	c3                   	ret    
 80489e3:	90                   	nop

080489e4 <main>:
 80489e4:	55                   	push   %ebp
 80489e5:	89 e5                	mov    %esp,%ebp
 80489e7:	53                   	push   %ebx
 80489e8:	83 e4 f0             	and    $0xfffffff0,%esp
 80489eb:	83 ec 10             	sub    $0x10,%esp
 80489ee:	8b 45 08             	mov    0x8(%ebp),%eax
 80489f1:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 80489f4:	83 f8 01             	cmp    $0x1,%eax
 80489f7:	75 0c                	jne    8048a05 <main+0x21>
 80489f9:	a1 a4 c3 04 08       	mov    0x804c3a4,%eax
 80489fe:	a3 d0 c3 04 08       	mov    %eax,0x804c3d0
 8048a03:	eb 74                	jmp    8048a79 <main+0x95>
 8048a05:	83 f8 02             	cmp    $0x2,%eax
 8048a08:	75 49                	jne    8048a53 <main+0x6f>
 8048a0a:	c7 44 24 04 a0 a0 04 	movl   $0x804a0a0,0x4(%esp)
 8048a11:	08 
 8048a12:	8b 43 04             	mov    0x4(%ebx),%eax
 8048a15:	89 04 24             	mov    %eax,(%esp)
 8048a18:	e8 63 fe ff ff       	call   8048880 <fopen@plt>
 8048a1d:	a3 d0 c3 04 08       	mov    %eax,0x804c3d0
 8048a22:	85 c0                	test   %eax,%eax
 8048a24:	75 53                	jne    8048a79 <main+0x95>
 8048a26:	8b 43 04             	mov    0x4(%ebx),%eax
 8048a29:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048a2d:	8b 03                	mov    (%ebx),%eax
 8048a2f:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048a33:	c7 44 24 04 a2 a0 04 	movl   $0x804a0a2,0x4(%esp)
 8048a3a:	08 
 8048a3b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048a42:	e8 59 fe ff ff       	call   80488a0 <__printf_chk@plt>
 8048a47:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048a4e:	e8 ed fd ff ff       	call   8048840 <exit@plt>
 8048a53:	8b 03                	mov    (%ebx),%eax
 8048a55:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048a59:	c7 44 24 04 bf a0 04 	movl   $0x804a0bf,0x4(%esp)
 8048a60:	08 
 8048a61:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048a68:	e8 33 fe ff ff       	call   80488a0 <__printf_chk@plt>
 8048a6d:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048a74:	e8 c7 fd ff ff       	call   8048840 <exit@plt>
 8048a79:	e8 0d 06 00 00       	call   804908b <initialize_bomb>
 8048a7e:	c7 04 24 24 a1 04 08 	movl   $0x804a124,(%esp)
 8048a85:	e8 76 fd ff ff       	call   8048800 <puts@plt>
 8048a8a:	c7 04 24 60 a1 04 08 	movl   $0x804a160,(%esp)
 8048a91:	e8 6a fd ff ff       	call   8048800 <puts@plt>
 8048a96:	e8 b2 06 00 00       	call   804914d <read_line>
 8048a9b:	89 04 24             	mov    %eax,(%esp)
 8048a9e:	e8 ad 00 00 00       	call   8048b50 <phase_1>
 8048aa3:	e8 03 08 00 00       	call   80492ab <phase_defused>
 8048aa8:	c7 04 24 8c a1 04 08 	movl   $0x804a18c,(%esp)
 8048aaf:	e8 4c fd ff ff       	call   8048800 <puts@plt>
 8048ab4:	e8 94 06 00 00       	call   804914d <read_line>
 8048ab9:	89 04 24             	mov    %eax,(%esp)
 8048abc:	e8 b3 00 00 00       	call   8048b74 <phase_2>
 8048ac1:	e8 e5 07 00 00       	call   80492ab <phase_defused>
 8048ac6:	c7 04 24 d9 a0 04 08 	movl   $0x804a0d9,(%esp)
 8048acd:	e8 2e fd ff ff       	call   8048800 <puts@plt>
 8048ad2:	e8 76 06 00 00       	call   804914d <read_line>
 8048ad7:	89 04 24             	mov    %eax,(%esp)
 8048ada:	e8 e5 00 00 00       	call   8048bc4 <phase_3>
 8048adf:	e8 c7 07 00 00       	call   80492ab <phase_defused>
 8048ae4:	c7 04 24 f7 a0 04 08 	movl   $0x804a0f7,(%esp)
 8048aeb:	e8 10 fd ff ff       	call   8048800 <puts@plt>
 8048af0:	e8 58 06 00 00       	call   804914d <read_line>
 8048af5:	89 04 24             	mov    %eax,(%esp)
 8048af8:	e8 ee 01 00 00       	call   8048ceb <phase_4>
 8048afd:	e8 a9 07 00 00       	call   80492ab <phase_defused>
 8048b02:	c7 04 24 b8 a1 04 08 	movl   $0x804a1b8,(%esp)
 8048b09:	e8 f2 fc ff ff       	call   8048800 <puts@plt>
 8048b0e:	e8 3a 06 00 00       	call   804914d <read_line>
 8048b13:	89 04 24             	mov    %eax,(%esp)
 8048b16:	e8 3f 02 00 00       	call   8048d5a <phase_5>
 8048b1b:	e8 8b 07 00 00       	call   80492ab <phase_defused>
 8048b20:	c7 04 24 06 a1 04 08 	movl   $0x804a106,(%esp)
 8048b27:	e8 d4 fc ff ff       	call   8048800 <puts@plt>
 8048b2c:	e8 1c 06 00 00       	call   804914d <read_line>
 8048b31:	89 04 24             	mov    %eax,(%esp)
 8048b34:	e8 a3 02 00 00       	call   8048ddc <phase_6>
 8048b39:	e8 6d 07 00 00       	call   80492ab <phase_defused>
 8048b3e:	b8 00 00 00 00       	mov    $0x0,%eax
 8048b43:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8048b46:	c9                   	leave  
 8048b47:	c3                   	ret    
 8048b48:	90                   	nop
 8048b49:	90                   	nop
 8048b4a:	90                   	nop
 8048b4b:	90                   	nop
 8048b4c:	90                   	nop
 8048b4d:	90                   	nop
 8048b4e:	90                   	nop
 8048b4f:	90                   	nop

08048b50 <phase_1>:
 8048b50:	83 ec 1c             	sub    $0x1c,%esp
 8048b53:	c7 44 24 04 dc a1 04 	movl   $0x804a1dc,0x4(%esp)
 8048b5a:	08 
 8048b5b:	8b 44 24 20          	mov    0x20(%esp),%eax
 8048b5f:	89 04 24             	mov    %eax,(%esp)
 8048b62:	e8 ad 04 00 00       	call   8049014 <strings_not_equal>
 8048b67:	85 c0                	test   %eax,%eax
 8048b69:	74 05                	je     8048b70 <phase_1+0x20>
 8048b6b:	e8 b6 05 00 00       	call   8049126 <explode_bomb>
 8048b70:	83 c4 1c             	add    $0x1c,%esp
 8048b73:	c3                   	ret    

08048b74 <phase_2>:
 8048b74:	56                   	push   %esi
 8048b75:	53                   	push   %ebx
 8048b76:	83 ec 34             	sub    $0x34,%esp
 8048b79:	8d 44 24 18          	lea    0x18(%esp),%eax
 8048b7d:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048b81:	8b 44 24 40          	mov    0x40(%esp),%eax
 8048b85:	89 04 24             	mov    %eax,(%esp)
 8048b88:	e8 ce 06 00 00       	call   804925b <read_six_numbers>
 8048b8d:	83 7c 24 18 00       	cmpl   $0x0,0x18(%esp)
 8048b92:	75 07                	jne    8048b9b <phase_2+0x27>
 8048b94:	83 7c 24 1c 01       	cmpl   $0x1,0x1c(%esp)
 8048b99:	74 05                	je     8048ba0 <phase_2+0x2c>
 8048b9b:	e8 86 05 00 00       	call   8049126 <explode_bomb>
 8048ba0:	8d 5c 24 20          	lea    0x20(%esp),%ebx
 8048ba4:	8d 74 24 30          	lea    0x30(%esp),%esi
 8048ba8:	8b 43 f8             	mov    -0x8(%ebx),%eax
 8048bab:	03 43 fc             	add    -0x4(%ebx),%eax
 8048bae:	39 03                	cmp    %eax,(%ebx)
 8048bb0:	74 05                	je     8048bb7 <phase_2+0x43>
 8048bb2:	e8 6f 05 00 00       	call   8049126 <explode_bomb>
 8048bb7:	83 c3 04             	add    $0x4,%ebx
 8048bba:	39 f3                	cmp    %esi,%ebx
 8048bbc:	75 ea                	jne    8048ba8 <phase_2+0x34>
 8048bbe:	83 c4 34             	add    $0x34,%esp
 8048bc1:	5b                   	pop    %ebx
 8048bc2:	5e                   	pop    %esi
 8048bc3:	c3                   	ret    

08048bc4 <phase_3>:
 8048bc4:	83 ec 2c             	sub    $0x2c,%esp
 8048bc7:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 8048bcb:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048bcf:	8d 44 24 18          	lea    0x18(%esp),%eax
 8048bd3:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048bd7:	c7 44 24 04 cb a3 04 	movl   $0x804a3cb,0x4(%esp)
 8048bde:	08 
 8048bdf:	8b 44 24 30          	mov    0x30(%esp),%eax
 8048be3:	89 04 24             	mov    %eax,(%esp)
 8048be6:	e8 85 fc ff ff       	call   8048870 <__isoc99_sscanf@plt>
 8048beb:	83 f8 01             	cmp    $0x1,%eax
 8048bee:	7f 05                	jg     8048bf5 <phase_3+0x31>
 8048bf0:	e8 31 05 00 00       	call   8049126 <explode_bomb>
 8048bf5:	83 7c 24 18 07       	cmpl   $0x7,0x18(%esp)
 8048bfa:	77 66                	ja     8048c62 <phase_3+0x9e>
 8048bfc:	8b 44 24 18          	mov    0x18(%esp),%eax
 8048c00:	ff 24 85 38 a2 04 08 	jmp    *0x804a238(,%eax,4)
 8048c07:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c0c:	eb 05                	jmp    8048c13 <phase_3+0x4f>
 8048c0e:	b8 49 02 00 00       	mov    $0x249,%eax
 8048c13:	2d bb 02 00 00       	sub    $0x2bb,%eax
 8048c18:	eb 05                	jmp    8048c1f <phase_3+0x5b>
 8048c1a:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c1f:	05 f9 02 00 00       	add    $0x2f9,%eax
 8048c24:	eb 05                	jmp    8048c2b <phase_3+0x67>
 8048c26:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c2b:	2d 31 01 00 00       	sub    $0x131,%eax
 8048c30:	eb 05                	jmp    8048c37 <phase_3+0x73>
 8048c32:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c37:	05 31 01 00 00       	add    $0x131,%eax
 8048c3c:	eb 05                	jmp    8048c43 <phase_3+0x7f>
 8048c3e:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c43:	2d 31 01 00 00       	sub    $0x131,%eax
 8048c48:	eb 05                	jmp    8048c4f <phase_3+0x8b>
 8048c4a:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c4f:	05 31 01 00 00       	add    $0x131,%eax
 8048c54:	eb 05                	jmp    8048c5b <phase_3+0x97>
 8048c56:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c5b:	2d 31 01 00 00       	sub    $0x131,%eax
 8048c60:	eb 0a                	jmp    8048c6c <phase_3+0xa8>
 8048c62:	e8 bf 04 00 00       	call   8049126 <explode_bomb>
 8048c67:	b8 00 00 00 00       	mov    $0x0,%eax
 8048c6c:	83 7c 24 18 05       	cmpl   $0x5,0x18(%esp)
 8048c71:	7f 06                	jg     8048c79 <phase_3+0xb5>
 8048c73:	3b 44 24 1c          	cmp    0x1c(%esp),%eax
 8048c77:	74 05                	je     8048c7e <phase_3+0xba>
 8048c79:	e8 a8 04 00 00       	call   8049126 <explode_bomb>
 8048c7e:	83 c4 2c             	add    $0x2c,%esp
 8048c81:	c3                   	ret    

08048c82 <func4>:
 8048c82:	83 ec 1c             	sub    $0x1c,%esp
 8048c85:	89 5c 24 14          	mov    %ebx,0x14(%esp)
 8048c89:	89 74 24 18          	mov    %esi,0x18(%esp)
 8048c8d:	8b 44 24 20          	mov    0x20(%esp),%eax //c
 8048c91:	8b 54 24 24          	mov    0x24(%esp),%edx //b
 8048c95:	8b 74 24 28          	mov    0x28(%esp),%esi //a
 8048c99:	89 f1                	mov    %esi,%ecx
 8048c9b:	29 d1                	sub    %edx,%ecx //ecx=a-b
 8048c9d:	89 cb                	mov    %ecx,%ebx //ebx=a-b
 8048c9f:	c1 eb 1f             	shr    $0x1f,%ebx 
 8048ca2:	01 d9                	add    %ebx,%ecx
 8048ca4:	d1 f9                	sar    %ecx
 8048ca6:	8d 1c 11             	lea    (%ecx,%edx,1),%ebx
 8048ca9:	39 c3                	cmp    %eax,%ebx
 8048cab:	7e 17                	jle    8048cc4 <func4+0x42> 
 8048cad:	8d 4b ff             	lea    -0x1(%ebx),%ecx
 8048cb0:	89 4c 24 08          	mov    %ecx,0x8(%esp)
 8048cb4:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048cb8:	89 04 24             	mov    %eax,(%esp)
 8048cbb:	e8 c2 ff ff ff       	call   8048c82 <func4>
 8048cc0:	01 c3                	add    %eax,%ebx
 8048cc2:	eb 19                	jmp    8048cdd <func4+0x5b>
 8048cc4:	39 c3                	cmp    %eax,%ebx
 8048cc6:	7d 15                	jge    8048cdd <func4+0x5b>
 8048cc8:	89 74 24 08          	mov    %esi,0x8(%esp)
 8048ccc:	8d 53 01             	lea    0x1(%ebx),%edx
 8048ccf:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048cd3:	89 04 24             	mov    %eax,(%esp)
 8048cd6:	e8 a7 ff ff ff       	call   8048c82 <func4>
 8048cdb:	01 c3                	add    %eax,%ebx
 8048cdd:	89 d8                	mov    %ebx,%eax
 8048cdf:	8b 5c 24 14          	mov    0x14(%esp),%ebx
 8048ce3:	8b 74 24 18          	mov    0x18(%esp),%esi
 8048ce7:	83 c4 1c             	add    $0x1c,%esp
 8048cea:	c3                   	ret    

08048ceb <phase_4>:
 8048ceb:	83 ec 2c             	sub    $0x2c,%esp
 8048cee:	8d 44 24 1c          	lea    0x1c(%esp),%eax
 8048cf2:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8048cf6:	8d 44 24 18          	lea    0x18(%esp),%eax
 8048cfa:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048cfe:	c7 44 24 04 cb a3 04 	movl   $0x804a3cb,0x4(%esp)
 8048d05:	08 
 8048d06:	8b 44 24 30          	mov    0x30(%esp),%eax
 8048d0a:	89 04 24             	mov    %eax,(%esp)
 8048d0d:	e8 5e fb ff ff       	call   8048870 <__isoc99_sscanf@plt>
 8048d12:	83 f8 02             	cmp    $0x2,%eax
 8048d15:	75 0d                	jne    8048d24 <phase_4+0x39>
 8048d17:	8b 44 24 18          	mov    0x18(%esp),%eax
 8048d1b:	85 c0                	test   %eax,%eax
 8048d1d:	78 05                	js     8048d24 <phase_4+0x39>
 8048d1f:	83 f8 0e             	cmp    $0xe,%eax
 8048d22:	7e 05                	jle    8048d29 <phase_4+0x3e>
 8048d24:	e8 fd 03 00 00       	call   8049126 <explode_bomb>
 8048d29:	c7 44 24 08 0e 00 00 	movl   $0xe,0x8(%esp)
 8048d30:	00 
 8048d31:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048d38:	00 
 8048d39:	8b 44 24 18          	mov    0x18(%esp),%eax
 8048d3d:	89 04 24             	mov    %eax,(%esp)
 8048d40:	e8 3d ff ff ff       	call   8048c82 <func4>
 8048d45:	83 f8 0a             	cmp    $0xa,%eax
 8048d48:	75 07                	jne    8048d51 <phase_4+0x66>
 8048d4a:	83 7c 24 1c 0a       	cmpl   $0xa,0x1c(%esp)
 8048d4f:	74 05                	je     8048d56 <phase_4+0x6b>
 8048d51:	e8 d0 03 00 00       	call   8049126 <explode_bomb>
 8048d56:	83 c4 2c             	add    $0x2c,%esp
 8048d59:	c3                   	ret    

08048d5a <phase_5>:
 8048d5a:	53                   	push   %ebx
 8048d5b:	83 ec 28             	sub    $0x28,%esp
 8048d5e:	8b 5c 24 30          	mov    0x30(%esp),%ebx
 8048d62:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8048d68:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8048d6c:	31 c0                	xor    %eax,%eax //清零
 8048d6e:	89 1c 24             	mov    %ebx,(%esp)
 8048d71:	e8 85 02 00 00       	call   8048ffb <string_length>
 8048d76:	83 f8 06             	cmp    $0x6,%eax
 8048d79:	74 05                	je     8048d80 <phase_5+0x26>
 8048d7b:	e8 a6 03 00 00       	call   8049126 <explode_bomb>
 8048d80:	b8 00 00 00 00       	mov    $0x0,%eax
 8048d85:	0f be 14 03          	movsbl (%ebx,%eax,1),%edx //edx=ebx+n*eax
 8048d89:	83 e2 0f             	and    $0xf,%edx
 8048d8c:	0f b6 92 58 a2 04 08 	movzbl 0x804a258(%edx),%edx
 8048d93:	88 54 04 15          	mov    %dl,0x15(%esp,%eax,1)
 8048d97:	83 c0 01             	add    $0x1,%eax
 8048d9a:	83 f8 06             	cmp    $0x6,%eax
 8048d9d:	75 e6                	jne    8048d85 <phase_5+0x2b>
 8048d9f:	c6 44 24 1b 00       	movb   $0x0,0x1b(%esp)
 8048da4:	c7 44 24 04 2e a2 04 	movl   $0x804a22e,0x4(%esp)
 8048dab:	08 
 8048dac:	8d 44 24 15          	lea    0x15(%esp),%eax
 8048db0:	89 04 24             	mov    %eax,(%esp)
 8048db3:	e8 5c 02 00 00       	call   8049014 <strings_not_equal>
 8048db8:	85 c0                	test   %eax,%eax
 8048dba:	74 05                	je     8048dc1 <phase_5+0x67>
 8048dbc:	e8 65 03 00 00       	call   8049126 <explode_bomb>
 8048dc1:	8b 44 24 1c          	mov    0x1c(%esp),%eax
 8048dc5:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8048dcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048dd0:	74 05                	je     8048dd7 <phase_5+0x7d>
 8048dd2:	e8 f9 f9 ff ff       	call   80487d0 <__stack_chk_fail@plt>
 8048dd7:	83 c4 28             	add    $0x28,%esp
 8048dda:	5b                   	pop    %ebx
 8048ddb:	c3                   	ret    

08048ddc <phase_6>:
 8048ddc:	56                   	push   %esi
 8048ddd:	53                   	push   %ebx
 8048dde:	83 ec 44             	sub    $0x44,%esp
 8048de1:	8d 44 24 10          	lea    0x10(%esp),%eax
 8048de5:	89 44 24 04          	mov    %eax,0x4(%esp)
 8048de9:	8b 44 24 50          	mov    0x50(%esp),%eax
 8048ded:	89 04 24             	mov    %eax,(%esp)
 8048df0:	e8 66 04 00 00       	call   804925b <read_six_numbers>
 8048df5:	be 00 00 00 00       	mov    $0x0,%esi
 8048dfa:	8b 44 b4 10          	mov    0x10(%esp,%esi,4),%eax
 8048dfe:	83 e8 01             	sub    $0x1,%eax
 8048e01:	83 f8 05             	cmp    $0x5,%eax
 8048e04:	76 05                	jbe    8048e0b <phase_6+0x2f>
 8048e06:	e8 1b 03 00 00       	call   8049126 <explode_bomb>
 8048e0b:	83 c6 01             	add    $0x1,%esi
 8048e0e:	83 fe 06             	cmp    $0x6,%esi
 8048e11:	74 33                	je     8048e46 <phase_6+0x6a>
 8048e13:	89 f3                	mov    %esi,%ebx
 8048e15:	8b 44 9c 10          	mov    0x10(%esp,%ebx,4),%eax
 8048e19:	39 44 b4 0c          	cmp    %eax,0xc(%esp,%esi,4)
 8048e1d:	75 05                	jne    8048e24 <phase_6+0x48>
 8048e1f:	e8 02 03 00 00       	call   8049126 <explode_bomb>
 8048e24:	83 c3 01             	add    $0x1,%ebx
 8048e27:	83 fb 05             	cmp    $0x5,%ebx
 8048e2a:	7e e9                	jle    8048e15 <phase_6+0x39>
 8048e2c:	eb cc                	jmp    8048dfa <phase_6+0x1e>
 8048e2e:	8b 52 08             	mov    0x8(%edx),%edx
 8048e31:	83 c0 01             	add    $0x1,%eax
 8048e34:	39 c8                	cmp    %ecx,%eax
 8048e36:	75 f6                	jne    8048e2e <phase_6+0x52>
 8048e38:	89 54 b4 28          	mov    %edx,0x28(%esp,%esi,4)
 8048e3c:	83 c3 01             	add    $0x1,%ebx
 8048e3f:	83 fb 06             	cmp    $0x6,%ebx
 8048e42:	75 07                	jne    8048e4b <phase_6+0x6f>
 8048e44:	eb 1c                	jmp    8048e62 <phase_6+0x86>
 8048e46:	bb 00 00 00 00       	mov    $0x0,%ebx
 8048e4b:	89 de                	mov    %ebx,%esi
 8048e4d:	8b 4c 9c 10          	mov    0x10(%esp,%ebx,4),%ecx
 8048e51:	b8 01 00 00 00       	mov    $0x1,%eax
 8048e56:	ba 3c c1 04 08       	mov    $0x804c13c,%edx
 8048e5b:	83 f9 01             	cmp    $0x1,%ecx
 8048e5e:	7f ce                	jg     8048e2e <phase_6+0x52>
 8048e60:	eb d6                	jmp    8048e38 <phase_6+0x5c>
 8048e62:	8b 5c 24 28          	mov    0x28(%esp),%ebx
 8048e66:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8048e6a:	89 43 08             	mov    %eax,0x8(%ebx)
 8048e6d:	8b 54 24 30          	mov    0x30(%esp),%edx
 8048e71:	89 50 08             	mov    %edx,0x8(%eax)
 8048e74:	8b 44 24 34          	mov    0x34(%esp),%eax
 8048e78:	89 42 08             	mov    %eax,0x8(%edx)
 8048e7b:	8b 54 24 38          	mov    0x38(%esp),%edx
 8048e7f:	89 50 08             	mov    %edx,0x8(%eax)
 8048e82:	8b 44 24 3c          	mov    0x3c(%esp),%eax
 8048e86:	89 42 08             	mov    %eax,0x8(%edx)
 8048e89:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 8048e90:	be 05 00 00 00       	mov    $0x5,%esi
 8048e95:	8b 43 08             	mov    0x8(%ebx),%eax
 8048e98:	8b 10                	mov    (%eax),%edx
 8048e9a:	39 13                	cmp    %edx,(%ebx)
 8048e9c:	7d 05                	jge    8048ea3 <phase_6+0xc7>
 8048e9e:	e8 83 02 00 00       	call   8049126 <explode_bomb>
 8048ea3:	8b 5b 08             	mov    0x8(%ebx),%ebx
 8048ea6:	83 ee 01             	sub    $0x1,%esi
 8048ea9:	75 ea                	jne    8048e95 <phase_6+0xb9>
 8048eab:	83 c4 44             	add    $0x44,%esp
 8048eae:	5b                   	pop    %ebx
 8048eaf:	5e                   	pop    %esi
 8048eb0:	c3                   	ret    

08048eb1 <fun7>:
 8048eb1:	53                   	push   %ebx
 8048eb2:	83 ec 18             	sub    $0x18,%esp
 8048eb5:	8b 54 24 20          	mov    0x20(%esp),%edx
 8048eb9:	8b 4c 24 24          	mov    0x24(%esp),%ecx
 8048ebd:	85 d2                	test   %edx,%edx
 8048ebf:	74 37                	je     8048ef8 <fun7+0x47>
 8048ec1:	8b 1a                	mov    (%edx),%ebx
 8048ec3:	39 cb                	cmp    %ecx,%ebx
 8048ec5:	7e 13                	jle    8048eda <fun7+0x29>
 8048ec7:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8048ecb:	8b 42 04             	mov    0x4(%edx),%eax
 8048ece:	89 04 24             	mov    %eax,(%esp)
 8048ed1:	e8 db ff ff ff       	call   8048eb1 <fun7>
 8048ed6:	01 c0                	add    %eax,%eax
 8048ed8:	eb 23                	jmp    8048efd <fun7+0x4c>
 8048eda:	b8 00 00 00 00       	mov    $0x0,%eax
 8048edf:	39 cb                	cmp    %ecx,%ebx
 8048ee1:	74 1a                	je     8048efd <fun7+0x4c>
 8048ee3:	89 4c 24 04          	mov    %ecx,0x4(%esp)
 8048ee7:	8b 42 08             	mov    0x8(%edx),%eax
 8048eea:	89 04 24             	mov    %eax,(%esp)
 8048eed:	e8 bf ff ff ff       	call   8048eb1 <fun7>
 8048ef2:	8d 44 00 01          	lea    0x1(%eax,%eax,1),%eax
 8048ef6:	eb 05                	jmp    8048efd <fun7+0x4c>
 8048ef8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8048efd:	83 c4 18             	add    $0x18,%esp
 8048f00:	5b                   	pop    %ebx
 8048f01:	c3                   	ret    

08048f02 <secret_phase>:
 8048f02:	53                   	push   %ebx
 8048f03:	83 ec 18             	sub    $0x18,%esp
 8048f06:	e8 42 02 00 00       	call   804914d <read_line>
 8048f0b:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
 8048f12:	00 
 8048f13:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
 8048f1a:	00 
 8048f1b:	89 04 24             	mov    %eax,(%esp)
 8048f1e:	e8 bd f9 ff ff       	call   80488e0 <strtol@plt>
 8048f23:	89 c3                	mov    %eax,%ebx
 8048f25:	8d 40 ff             	lea    -0x1(%eax),%eax
 8048f28:	3d e8 03 00 00       	cmp    $0x3e8,%eax
 8048f2d:	76 05                	jbe    8048f34 <secret_phase+0x32>
 8048f2f:	e8 f2 01 00 00       	call   8049126 <explode_bomb>
 8048f34:	89 5c 24 04          	mov    %ebx,0x4(%esp) 
 8048f38:	c7 04 24 88 c0 04 08 	movl   $0x804c088,(%esp) //36
 8048f3f:	e8 6d ff ff ff       	call   8048eb1 <fun7>
 8048f44:	83 f8 04             	cmp    $0x4,%eax
 8048f47:	74 05                	je     8048f4e <secret_phase+0x4c>
 8048f49:	e8 d8 01 00 00       	call   8049126 <explode_bomb>
 8048f4e:	c7 04 24 08 a2 04 08 	movl   $0x804a208,(%esp) //win
 8048f55:	e8 a6 f8 ff ff       	call   8048800 <puts@plt>
 8048f5a:	e8 4c 03 00 00       	call   80492ab <phase_defused>
 8048f5f:	83 c4 18             	add    $0x18,%esp
 8048f62:	5b                   	pop    %ebx
 8048f63:	c3                   	ret    
 8048f64:	90                   	nop
 8048f65:	90                   	nop
 8048f66:	90                   	nop
 8048f67:	90                   	nop
 8048f68:	90                   	nop
 8048f69:	90                   	nop
 8048f6a:	90                   	nop
 8048f6b:	90                   	nop
 8048f6c:	90                   	nop
 8048f6d:	90                   	nop
 8048f6e:	90                   	nop
 8048f6f:	90                   	nop

08048f70 <sig_handler>:
 8048f70:	83 ec 1c             	sub    $0x1c,%esp
 8048f73:	c7 04 24 68 a2 04 08 	movl   $0x804a268,(%esp)
 8048f7a:	e8 81 f8 ff ff       	call   8048800 <puts@plt>
 8048f7f:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
 8048f86:	e8 25 f8 ff ff       	call   80487b0 <sleep@plt>
 8048f8b:	c7 44 24 04 2a a3 04 	movl   $0x804a32a,0x4(%esp)
 8048f92:	08 
 8048f93:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048f9a:	e8 01 f9 ff ff       	call   80488a0 <__printf_chk@plt>
 8048f9f:	a1 c0 c3 04 08       	mov    0x804c3c0,%eax
 8048fa4:	89 04 24             	mov    %eax,(%esp)
 8048fa7:	e8 d4 f7 ff ff       	call   8048780 <fflush@plt>
 8048fac:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048fb3:	e8 f8 f7 ff ff       	call   80487b0 <sleep@plt>
 8048fb8:	c7 04 24 32 a3 04 08 	movl   $0x804a332,(%esp)
 8048fbf:	e8 3c f8 ff ff       	call   8048800 <puts@plt>
 8048fc4:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
 8048fcb:	e8 70 f8 ff ff       	call   8048840 <exit@plt>

08048fd0 <invalid_phase>:
 8048fd0:	83 ec 1c             	sub    $0x1c,%esp
 8048fd3:	8b 44 24 20          	mov    0x20(%esp),%eax
 8048fd7:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048fdb:	c7 44 24 04 3a a3 04 	movl   $0x804a33a,0x4(%esp)
 8048fe2:	08 
 8048fe3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8048fea:	e8 b1 f8 ff ff       	call   80488a0 <__printf_chk@plt>
 8048fef:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8048ff6:	e8 45 f8 ff ff       	call   8048840 <exit@plt>

08048ffb <string_length>:
 8048ffb:	8b 54 24 04          	mov    0x4(%esp),%edx
 8048fff:	b8 00 00 00 00       	mov    $0x0,%eax
 8049004:	80 3a 00             	cmpb   $0x0,(%edx)
 8049007:	74 09                	je     8049012 <string_length+0x17>
 8049009:	83 c0 01             	add    $0x1,%eax
 804900c:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
 8049010:	75 f7                	jne    8049009 <string_length+0xe>
 8049012:	f3 c3                	repz ret 

08049014 <strings_not_equal>:
 8049014:	83 ec 10             	sub    $0x10,%esp
 8049017:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804901b:	89 74 24 08          	mov    %esi,0x8(%esp)
 804901f:	89 7c 24 0c          	mov    %edi,0xc(%esp)
 8049023:	8b 5c 24 14          	mov    0x14(%esp),%ebx
 8049027:	8b 74 24 18          	mov    0x18(%esp),%esi
 804902b:	89 1c 24             	mov    %ebx,(%esp)
 804902e:	e8 c8 ff ff ff       	call   8048ffb <string_length>
 8049033:	89 c7                	mov    %eax,%edi
 8049035:	89 34 24             	mov    %esi,(%esp)
 8049038:	e8 be ff ff ff       	call   8048ffb <string_length>
 804903d:	ba 01 00 00 00       	mov    $0x1,%edx
 8049042:	39 c7                	cmp    %eax,%edi
 8049044:	75 33                	jne    8049079 <strings_not_equal+0x65>
 8049046:	0f b6 03             	movzbl (%ebx),%eax
 8049049:	b2 00                	mov    $0x0,%dl
 804904b:	84 c0                	test   %al,%al
 804904d:	74 2a                	je     8049079 <strings_not_equal+0x65>
 804904f:	b2 01                	mov    $0x1,%dl
 8049051:	3a 06                	cmp    (%esi),%al
 8049053:	75 24                	jne    8049079 <strings_not_equal+0x65>
 8049055:	b8 00 00 00 00       	mov    $0x0,%eax
 804905a:	eb 08                	jmp    8049064 <strings_not_equal+0x50>
 804905c:	83 c0 01             	add    $0x1,%eax
 804905f:	3a 14 06             	cmp    (%esi,%eax,1),%dl
 8049062:	75 10                	jne    8049074 <strings_not_equal+0x60>
 8049064:	0f b6 54 03 01       	movzbl 0x1(%ebx,%eax,1),%edx
 8049069:	84 d2                	test   %dl,%dl
 804906b:	75 ef                	jne    804905c <strings_not_equal+0x48>
 804906d:	ba 00 00 00 00       	mov    $0x0,%edx
 8049072:	eb 05                	jmp    8049079 <strings_not_equal+0x65>
 8049074:	ba 01 00 00 00       	mov    $0x1,%edx
 8049079:	89 d0                	mov    %edx,%eax
 804907b:	8b 5c 24 04          	mov    0x4(%esp),%ebx
 804907f:	8b 74 24 08          	mov    0x8(%esp),%esi
 8049083:	8b 7c 24 0c          	mov    0xc(%esp),%edi
 8049087:	83 c4 10             	add    $0x10,%esp
 804908a:	c3                   	ret    

0804908b <initialize_bomb>:
 804908b:	83 ec 1c             	sub    $0x1c,%esp
 804908e:	c7 44 24 04 70 8f 04 	movl   $0x8048f70,0x4(%esp)
 8049095:	08 
 8049096:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 804909d:	e8 fe f6 ff ff       	call   80487a0 <signal@plt>
 80490a2:	83 c4 1c             	add    $0x1c,%esp
 80490a5:	c3                   	ret    

080490a6 <initialize_bomb_solve>:
 80490a6:	f3 c3                	repz ret 

080490a8 <blank_line>:
 80490a8:	56                   	push   %esi
 80490a9:	53                   	push   %ebx
 80490aa:	83 ec 04             	sub    $0x4,%esp
 80490ad:	8b 74 24 10          	mov    0x10(%esp),%esi
 80490b1:	eb 14                	jmp    80490c7 <blank_line+0x1f>
 80490b3:	e8 58 f8 ff ff       	call   8048910 <__ctype_b_loc@plt>
 80490b8:	83 c6 01             	add    $0x1,%esi
 80490bb:	0f be db             	movsbl %bl,%ebx
 80490be:	8b 00                	mov    (%eax),%eax
 80490c0:	f6 44 58 01 20       	testb  $0x20,0x1(%eax,%ebx,2)
 80490c5:	74 0e                	je     80490d5 <blank_line+0x2d>
 80490c7:	0f b6 1e             	movzbl (%esi),%ebx
 80490ca:	84 db                	test   %bl,%bl
 80490cc:	75 e5                	jne    80490b3 <blank_line+0xb>
 80490ce:	b8 01 00 00 00       	mov    $0x1,%eax
 80490d3:	eb 05                	jmp    80490da <blank_line+0x32>
 80490d5:	b8 00 00 00 00       	mov    $0x0,%eax
 80490da:	83 c4 04             	add    $0x4,%esp
 80490dd:	5b                   	pop    %ebx
 80490de:	5e                   	pop    %esi
 80490df:	c3                   	ret    

080490e0 <skip>:
 80490e0:	53                   	push   %ebx
 80490e1:	83 ec 18             	sub    $0x18,%esp
 80490e4:	a1 d0 c3 04 08       	mov    0x804c3d0,%eax
 80490e9:	89 44 24 08          	mov    %eax,0x8(%esp)
 80490ed:	c7 44 24 04 50 00 00 	movl   $0x50,0x4(%esp)
 80490f4:	00 
 80490f5:	a1 cc c3 04 08       	mov    0x804c3cc,%eax
 80490fa:	8d 04 80             	lea    (%eax,%eax,4),%eax
 80490fd:	c1 e0 04             	shl    $0x4,%eax
 8049100:	05 e0 c3 04 08       	add    $0x804c3e0,%eax
 8049105:	89 04 24             	mov    %eax,(%esp)
 8049108:	e8 83 f6 ff ff       	call   8048790 <fgets@plt>
 804910d:	89 c3                	mov    %eax,%ebx
 804910f:	85 c0                	test   %eax,%eax
 8049111:	74 0c                	je     804911f <skip+0x3f>
 8049113:	89 04 24             	mov    %eax,(%esp)
 8049116:	e8 8d ff ff ff       	call   80490a8 <blank_line>
 804911b:	85 c0                	test   %eax,%eax
 804911d:	75 c5                	jne    80490e4 <skip+0x4>
 804911f:	89 d8                	mov    %ebx,%eax
 8049121:	83 c4 18             	add    $0x18,%esp
 8049124:	5b                   	pop    %ebx
 8049125:	c3                   	ret    

08049126 <explode_bomb>:
 8049126:	83 ec 1c             	sub    $0x1c,%esp
 8049129:	c7 04 24 4b a3 04 08 	movl   $0x804a34b,(%esp)
 8049130:	e8 cb f6 ff ff       	call   8048800 <puts@plt>
 8049135:	c7 04 24 54 a3 04 08 	movl   $0x804a354,(%esp)
 804913c:	e8 bf f6 ff ff       	call   8048800 <puts@plt>
 8049141:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049148:	e8 f3 f6 ff ff       	call   8048840 <exit@plt>

0804914d <read_line>:
 804914d:	83 ec 2c             	sub    $0x2c,%esp
 8049150:	89 5c 24 20          	mov    %ebx,0x20(%esp)
 8049154:	89 74 24 24          	mov    %esi,0x24(%esp)
 8049158:	89 7c 24 28          	mov    %edi,0x28(%esp)
 804915c:	e8 7f ff ff ff       	call   80490e0 <skip>
 8049161:	85 c0                	test   %eax,%eax
 8049163:	75 6c                	jne    80491d1 <read_line+0x84>
 8049165:	a1 a4 c3 04 08       	mov    0x804c3a4,%eax
 804916a:	39 05 d0 c3 04 08    	cmp    %eax,0x804c3d0
 8049170:	75 18                	jne    804918a <read_line+0x3d>
 8049172:	c7 04 24 6b a3 04 08 	movl   $0x804a36b,(%esp)
 8049179:	e8 82 f6 ff ff       	call   8048800 <puts@plt>
 804917e:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
 8049185:	e8 b6 f6 ff ff       	call   8048840 <exit@plt>
 804918a:	c7 04 24 89 a3 04 08 	movl   $0x804a389,(%esp)
 8049191:	e8 5a f6 ff ff       	call   80487f0 <getenv@plt>
 8049196:	85 c0                	test   %eax,%eax
 8049198:	74 0c                	je     80491a6 <read_line+0x59>
 804919a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80491a1:	e8 9a f6 ff ff       	call   8048840 <exit@plt>
 80491a6:	a1 a4 c3 04 08       	mov    0x804c3a4,%eax
 80491ab:	a3 d0 c3 04 08       	mov    %eax,0x804c3d0
 80491b0:	e8 2b ff ff ff       	call   80490e0 <skip>
 80491b5:	85 c0                	test   %eax,%eax
 80491b7:	75 18                	jne    80491d1 <read_line+0x84>
 80491b9:	c7 04 24 6b a3 04 08 	movl   $0x804a36b,(%esp)
 80491c0:	e8 3b f6 ff ff       	call   8048800 <puts@plt>
 80491c5:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
 80491cc:	e8 6f f6 ff ff       	call   8048840 <exit@plt>
 80491d1:	8b 15 cc c3 04 08    	mov    0x804c3cc,%edx
 80491d7:	8d 1c 92             	lea    (%edx,%edx,4),%ebx
 80491da:	c1 e3 04             	shl    $0x4,%ebx
 80491dd:	81 c3 e0 c3 04 08    	add    $0x804c3e0,%ebx
 80491e3:	89 df                	mov    %ebx,%edi
 80491e5:	b8 00 00 00 00       	mov    $0x0,%eax
 80491ea:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 80491ef:	f2 ae                	repnz scas %es:(%edi),%al
 80491f1:	f7 d1                	not    %ecx
 80491f3:	83 e9 01             	sub    $0x1,%ecx
 80491f6:	83 f9 4e             	cmp    $0x4e,%ecx
 80491f9:	7e 37                	jle    8049232 <read_line+0xe5>
 80491fb:	c7 04 24 94 a3 04 08 	movl   $0x804a394,(%esp)
 8049202:	e8 f9 f5 ff ff       	call   8048800 <puts@plt>
 8049207:	a1 cc c3 04 08       	mov    0x804c3cc,%eax
 804920c:	8d 50 01             	lea    0x1(%eax),%edx
 804920f:	89 15 cc c3 04 08    	mov    %edx,0x804c3cc
 8049215:	6b c0 50             	imul   $0x50,%eax,%eax
 8049218:	05 e0 c3 04 08       	add    $0x804c3e0,%eax
 804921d:	ba af a3 04 08       	mov    $0x804a3af,%edx
 8049222:	b9 04 00 00 00       	mov    $0x4,%ecx
 8049227:	89 c7                	mov    %eax,%edi
 8049229:	89 d6                	mov    %edx,%esi
 804922b:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 804922d:	e8 f4 fe ff ff       	call   8049126 <explode_bomb>
 8049232:	8d 04 92             	lea    (%edx,%edx,4),%eax
 8049235:	c1 e0 04             	shl    $0x4,%eax
 8049238:	c6 84 01 df c3 04 08 	movb   $0x0,0x804c3df(%ecx,%eax,1)
 804923f:	00 
 8049240:	83 c2 01             	add    $0x1,%edx
 8049243:	89 15 cc c3 04 08    	mov    %edx,0x804c3cc
 8049249:	89 d8                	mov    %ebx,%eax
 804924b:	8b 5c 24 20          	mov    0x20(%esp),%ebx
 804924f:	8b 74 24 24          	mov    0x24(%esp),%esi
 8049253:	8b 7c 24 28          	mov    0x28(%esp),%edi
 8049257:	83 c4 2c             	add    $0x2c,%esp
 804925a:	c3                   	ret    

0804925b <read_six_numbers>:
 804925b:	83 ec 2c             	sub    $0x2c,%esp
 804925e:	8b 44 24 34          	mov    0x34(%esp),%eax
 8049262:	8d 50 14             	lea    0x14(%eax),%edx
 8049265:	89 54 24 1c          	mov    %edx,0x1c(%esp)
 8049269:	8d 50 10             	lea    0x10(%eax),%edx
 804926c:	89 54 24 18          	mov    %edx,0x18(%esp)
 8049270:	8d 50 0c             	lea    0xc(%eax),%edx
 8049273:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049277:	8d 50 08             	lea    0x8(%eax),%edx
 804927a:	89 54 24 10          	mov    %edx,0x10(%esp)
 804927e:	8d 50 04             	lea    0x4(%eax),%edx
 8049281:	89 54 24 0c          	mov    %edx,0xc(%esp)
 8049285:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049289:	c7 44 24 04 bf a3 04 	movl   $0x804a3bf,0x4(%esp)
 8049290:	08 
 8049291:	8b 44 24 30          	mov    0x30(%esp),%eax
 8049295:	89 04 24             	mov    %eax,(%esp)
 8049298:	e8 d3 f5 ff ff       	call   8048870 <__isoc99_sscanf@plt>
 804929d:	83 f8 05             	cmp    $0x5,%eax
 80492a0:	7f 05                	jg     80492a7 <read_six_numbers+0x4c>
 80492a2:	e8 7f fe ff ff       	call   8049126 <explode_bomb>
 80492a7:	83 c4 2c             	add    $0x2c,%esp
 80492aa:	c3                   	ret    

080492ab <phase_defused>:
 80492ab:	81 ec 8c 00 00 00    	sub    $0x8c,%esp
 80492b1:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 80492b7:	89 44 24 7c          	mov    %eax,0x7c(%esp)
 80492bb:	31 c0                	xor    %eax,%eax
 80492bd:	83 3d cc c3 04 08 06 	cmpl   $0x6,0x804c3cc
 80492c4:	75 72                	jne    8049338 <phase_defused+0x8d>
 80492c6:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 80492ca:	89 44 24 10          	mov    %eax,0x10(%esp)
 80492ce:	8d 44 24 28          	lea    0x28(%esp),%eax
 80492d2:	89 44 24 0c          	mov    %eax,0xc(%esp)
 80492d6:	8d 44 24 24          	lea    0x24(%esp),%eax
 80492da:	89 44 24 08          	mov    %eax,0x8(%esp)
 80492de:	c7 44 24 04 d1 a3 04 	movl   $0x804a3d1,0x4(%esp)
 80492e5:	08 
 80492e6:	c7 04 24 d0 c4 04 08 	movl   $0x804c4d0,(%esp)
 80492ed:	e8 7e f5 ff ff       	call   8048870 <__isoc99_sscanf@plt>
 80492f2:	83 f8 03             	cmp    $0x3,%eax
 80492f5:	75 35                	jne    804932c <phase_defused+0x81>
 80492f7:	c7 44 24 04 da a3 04 	movl   $0x804a3da,0x4(%esp)
 80492fe:	08 
 80492ff:	8d 44 24 2c          	lea    0x2c(%esp),%eax
 8049303:	89 04 24             	mov    %eax,(%esp)
 8049306:	e8 09 fd ff ff       	call   8049014 <strings_not_equal>
 804930b:	85 c0                	test   %eax,%eax
 804930d:	75 1d                	jne    804932c <phase_defused+0x81>
 804930f:	c7 04 24 a0 a2 04 08 	movl   $0x804a2a0,(%esp)
 8049316:	e8 e5 f4 ff ff       	call   8048800 <puts@plt>
 804931b:	c7 04 24 c8 a2 04 08 	movl   $0x804a2c8,(%esp)
 8049322:	e8 d9 f4 ff ff       	call   8048800 <puts@plt>
 8049327:	e8 d6 fb ff ff       	call   8048f02 <secret_phase>
 804932c:	c7 04 24 00 a3 04 08 	movl   $0x804a300,(%esp)
 8049333:	e8 c8 f4 ff ff       	call   8048800 <puts@plt>
 8049338:	8b 44 24 7c          	mov    0x7c(%esp),%eax
 804933c:	65 33 05 14 00 00 00 	xor    %gs:0x14,%eax
 8049343:	74 05                	je     804934a <phase_defused+0x9f>
 8049345:	e8 86 f4 ff ff       	call   80487d0 <__stack_chk_fail@plt>
 804934a:	81 c4 8c 00 00 00    	add    $0x8c,%esp
 8049350:	c3                   	ret    
 8049351:	90                   	nop
 8049352:	90                   	nop
 8049353:	90                   	nop
 8049354:	90                   	nop
 8049355:	90                   	nop
 8049356:	90                   	nop
 8049357:	90                   	nop
 8049358:	90                   	nop
 8049359:	90                   	nop
 804935a:	90                   	nop
 804935b:	90                   	nop
 804935c:	90                   	nop
 804935d:	90                   	nop
 804935e:	90                   	nop
 804935f:	90                   	nop

08049360 <rio_readlineb>:
 8049360:	55                   	push   %ebp
 8049361:	57                   	push   %edi
 8049362:	56                   	push   %esi
 8049363:	53                   	push   %ebx
 8049364:	83 ec 3c             	sub    $0x3c,%esp
 8049367:	89 c3                	mov    %eax,%ebx
 8049369:	83 f9 01             	cmp    $0x1,%ecx
 804936c:	0f 86 bb 00 00 00    	jbe    804942d <rio_readlineb+0xcd>
 8049372:	89 4c 24 1c          	mov    %ecx,0x1c(%esp)
 8049376:	89 54 24 18          	mov    %edx,0x18(%esp)
 804937a:	bd 01 00 00 00       	mov    $0x1,%ebp
 804937f:	8d 78 0c             	lea    0xc(%eax),%edi
 8049382:	eb 3c                	jmp    80493c0 <rio_readlineb+0x60>
 8049384:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
 804938b:	00 
 804938c:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8049390:	8b 03                	mov    (%ebx),%eax
 8049392:	89 04 24             	mov    %eax,(%esp)
 8049395:	e8 d6 f3 ff ff       	call   8048770 <read@plt>
 804939a:	89 43 04             	mov    %eax,0x4(%ebx)
 804939d:	85 c0                	test   %eax,%eax
 804939f:	79 14                	jns    80493b5 <rio_readlineb+0x55>
 80493a1:	e8 ea f4 ff ff       	call   8048890 <__errno_location@plt>
 80493a6:	83 38 04             	cmpl   $0x4,(%eax)
 80493a9:	74 15                	je     80493c0 <rio_readlineb+0x60>
 80493ab:	90                   	nop
 80493ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80493b0:	e9 a0 00 00 00       	jmp    8049455 <rio_readlineb+0xf5>
 80493b5:	85 c0                	test   %eax,%eax
 80493b7:	0f 84 9f 00 00 00    	je     804945c <rio_readlineb+0xfc>
 80493bd:	89 7b 08             	mov    %edi,0x8(%ebx)
 80493c0:	8b 73 04             	mov    0x4(%ebx),%esi
 80493c3:	85 f6                	test   %esi,%esi
 80493c5:	7e bd                	jle    8049384 <rio_readlineb+0x24>
 80493c7:	85 f6                	test   %esi,%esi
 80493c9:	0f 85 96 00 00 00    	jne    8049465 <rio_readlineb+0x105>
 80493cf:	c7 44 24 0c 01 00 00 	movl   $0x1,0xc(%esp)
 80493d6:	00 
 80493d7:	89 74 24 08          	mov    %esi,0x8(%esp)
 80493db:	8b 43 08             	mov    0x8(%ebx),%eax
 80493de:	89 44 24 04          	mov    %eax,0x4(%esp)
 80493e2:	8d 44 24 2f          	lea    0x2f(%esp),%eax
 80493e6:	89 04 24             	mov    %eax,(%esp)
 80493e9:	e8 32 f4 ff ff       	call   8048820 <__memcpy_chk@plt>
 80493ee:	01 73 08             	add    %esi,0x8(%ebx)
 80493f1:	29 73 04             	sub    %esi,0x4(%ebx)
 80493f4:	83 fe 01             	cmp    $0x1,%esi
 80493f7:	75 18                	jne    8049411 <rio_readlineb+0xb1>
 80493f9:	0f b6 44 24 2f       	movzbl 0x2f(%esp),%eax
 80493fe:	8b 54 24 18          	mov    0x18(%esp),%edx
 8049402:	88 02                	mov    %al,(%edx)
 8049404:	83 c2 01             	add    $0x1,%edx
 8049407:	89 54 24 18          	mov    %edx,0x18(%esp)
 804940b:	3c 0a                	cmp    $0xa,%al
 804940d:	75 13                	jne    8049422 <rio_readlineb+0xc2>
 804940f:	eb 25                	jmp    8049436 <rio_readlineb+0xd6>
 8049411:	89 e8                	mov    %ebp,%eax
 8049413:	85 f6                	test   %esi,%esi
 8049415:	75 28                	jne    804943f <rio_readlineb+0xdf>
 8049417:	83 f8 01             	cmp    $0x1,%eax
 804941a:	75 1a                	jne    8049436 <rio_readlineb+0xd6>
 804941c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8049420:	eb 24                	jmp    8049446 <rio_readlineb+0xe6>
 8049422:	83 c5 01             	add    $0x1,%ebp
 8049425:	3b 6c 24 1c          	cmp    0x1c(%esp),%ebp
 8049429:	75 95                	jne    80493c0 <rio_readlineb+0x60>
 804942b:	eb 09                	jmp    8049436 <rio_readlineb+0xd6>
 804942d:	89 54 24 18          	mov    %edx,0x18(%esp)
 8049431:	bd 01 00 00 00       	mov    $0x1,%ebp
 8049436:	8b 44 24 18          	mov    0x18(%esp),%eax
 804943a:	c6 00 00             	movb   $0x0,(%eax)
 804943d:	eb 0c                	jmp    804944b <rio_readlineb+0xeb>
 804943f:	bd ff ff ff ff       	mov    $0xffffffff,%ebp
 8049444:	eb 05                	jmp    804944b <rio_readlineb+0xeb>
 8049446:	bd 00 00 00 00       	mov    $0x0,%ebp
 804944b:	89 e8                	mov    %ebp,%eax
 804944d:	83 c4 3c             	add    $0x3c,%esp
 8049450:	5b                   	pop    %ebx
 8049451:	5e                   	pop    %esi
 8049452:	5f                   	pop    %edi
 8049453:	5d                   	pop    %ebp
 8049454:	c3                   	ret    
 8049455:	be ff ff ff ff       	mov    $0xffffffff,%esi
 804945a:	eb 05                	jmp    8049461 <rio_readlineb+0x101>
 804945c:	be 00 00 00 00       	mov    $0x0,%esi
 8049461:	89 e8                	mov    %ebp,%eax
 8049463:	eb ae                	jmp    8049413 <rio_readlineb+0xb3>
 8049465:	8b 43 08             	mov    0x8(%ebx),%eax
 8049468:	0f b6 00             	movzbl (%eax),%eax
 804946b:	88 44 24 2f          	mov    %al,0x2f(%esp)
 804946f:	83 43 08 01          	addl   $0x1,0x8(%ebx)
 8049473:	83 6b 04 01          	subl   $0x1,0x4(%ebx)
 8049477:	eb 80                	jmp    80493f9 <rio_readlineb+0x99>

08049479 <sigalrm_handler>:
 8049479:	83 ec 1c             	sub    $0x1c,%esp
 804947c:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
 8049483:	00 
 8049484:	c7 44 24 08 e8 a3 04 	movl   $0x804a3e8,0x8(%esp)
 804948b:	08 
 804948c:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049493:	00 
 8049494:	a1 a0 c3 04 08       	mov    0x804c3a0,%eax
 8049499:	89 04 24             	mov    %eax,(%esp)
 804949c:	e8 1f f4 ff ff       	call   80488c0 <__fprintf_chk@plt>
 80494a1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 80494a8:	e8 93 f3 ff ff       	call   8048840 <exit@plt>

080494ad <submitr>:
 80494ad:	55                   	push   %ebp
 80494ae:	57                   	push   %edi
 80494af:	56                   	push   %esi
 80494b0:	53                   	push   %ebx
 80494b1:	81 ec 7c a0 00 00    	sub    $0xa07c,%esp
 80494b7:	8b 9c 24 90 a0 00 00 	mov    0xa090(%esp),%ebx
 80494be:	8b 84 24 98 a0 00 00 	mov    0xa098(%esp),%eax
 80494c5:	89 44 24 30          	mov    %eax,0x30(%esp)
 80494c9:	8b 94 24 9c a0 00 00 	mov    0xa09c(%esp),%edx
 80494d0:	89 54 24 34          	mov    %edx,0x34(%esp)
 80494d4:	8b 8c 24 a0 a0 00 00 	mov    0xa0a0(%esp),%ecx
 80494db:	89 4c 24 38          	mov    %ecx,0x38(%esp)
 80494df:	8b ac 24 a4 a0 00 00 	mov    0xa0a4(%esp),%ebp
 80494e6:	8b 84 24 a8 a0 00 00 	mov    0xa0a8(%esp),%eax
 80494ed:	89 44 24 28          	mov    %eax,0x28(%esp)
 80494f1:	65 8b 15 14 00 00 00 	mov    %gs:0x14,%edx
 80494f8:	89 94 24 6c a0 00 00 	mov    %edx,0xa06c(%esp)
 80494ff:	31 d2                	xor    %edx,%edx
 8049501:	c7 44 24 44 00 00 00 	movl   $0x0,0x44(%esp)
 8049508:	00 
 8049509:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8049510:	00 
 8049511:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049518:	00 
 8049519:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 8049520:	e8 8b f3 ff ff       	call   80488b0 <socket@plt>
 8049525:	89 44 24 2c          	mov    %eax,0x2c(%esp)
 8049529:	85 c0                	test   %eax,%eax
 804952b:	79 52                	jns    804957f <submitr+0xd2>
 804952d:	8b 4c 24 28          	mov    0x28(%esp),%ecx
 8049531:	c7 01 45 72 72 6f    	movl   $0x6f727245,(%ecx)
 8049537:	c7 41 04 72 3a 20 43 	movl   $0x43203a72,0x4(%ecx)
 804953e:	c7 41 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%ecx)
 8049545:	c7 41 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%ecx)
 804954c:	c7 41 10 61 62 6c 65 	movl   $0x656c6261,0x10(%ecx)
 8049553:	c7 41 14 20 74 6f 20 	movl   $0x206f7420,0x14(%ecx)
 804955a:	c7 41 18 63 72 65 61 	movl   $0x61657263,0x18(%ecx)
 8049561:	c7 41 1c 74 65 20 73 	movl   $0x73206574,0x1c(%ecx)
 8049568:	c7 41 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%ecx)
 804956f:	66 c7 41 24 74 00    	movw   $0x74,0x24(%ecx)
 8049575:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804957a:	e9 e8 06 00 00       	jmp    8049c67 <submitr+0x7ba>
 804957f:	89 1c 24             	mov    %ebx,(%esp)
 8049582:	e8 49 f3 ff ff       	call   80488d0 <gethostbyname@plt>
 8049587:	85 c0                	test   %eax,%eax
 8049589:	75 70                	jne    80495fb <submitr+0x14e>
 804958b:	8b 44 24 28          	mov    0x28(%esp),%eax
 804958f:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049595:	c7 40 04 72 3a 20 44 	movl   $0x44203a72,0x4(%eax)
 804959c:	c7 40 08 4e 53 20 69 	movl   $0x6920534e,0x8(%eax)
 80495a3:	c7 40 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%eax)
 80495aa:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
 80495b1:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
 80495b8:	c7 40 18 72 65 73 6f 	movl   $0x6f736572,0x18(%eax)
 80495bf:	c7 40 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%eax)
 80495c6:	c7 40 20 73 65 72 76 	movl   $0x76726573,0x20(%eax)
 80495cd:	c7 40 24 65 72 20 61 	movl   $0x61207265,0x24(%eax)
 80495d4:	c7 40 28 64 64 72 65 	movl   $0x65726464,0x28(%eax)
 80495db:	66 c7 40 2c 73 73    	movw   $0x7373,0x2c(%eax)
 80495e1:	c6 40 2e 00          	movb   $0x0,0x2e(%eax)
 80495e5:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 80495e9:	89 04 24             	mov    %eax,(%esp)
 80495ec:	e8 0f f3 ff ff       	call   8048900 <close@plt>
 80495f1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80495f6:	e9 6c 06 00 00       	jmp    8049c67 <submitr+0x7ba>
 80495fb:	8d 9c 24 54 a0 00 00 	lea    0xa054(%esp),%ebx
 8049602:	c7 84 24 54 a0 00 00 	movl   $0x0,0xa054(%esp)
 8049609:	00 00 00 00 
 804960d:	c7 84 24 58 a0 00 00 	movl   $0x0,0xa058(%esp)
 8049614:	00 00 00 00 
 8049618:	c7 84 24 5c a0 00 00 	movl   $0x0,0xa05c(%esp)
 804961f:	00 00 00 00 
 8049623:	c7 84 24 60 a0 00 00 	movl   $0x0,0xa060(%esp)
 804962a:	00 00 00 00 
 804962e:	66 c7 84 24 54 a0 00 	movw   $0x2,0xa054(%esp)
 8049635:	00 02 00 
 8049638:	c7 44 24 0c 0c 00 00 	movl   $0xc,0xc(%esp)
 804963f:	00 
 8049640:	8b 50 0c             	mov    0xc(%eax),%edx
 8049643:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049647:	8b 40 10             	mov    0x10(%eax),%eax
 804964a:	8b 00                	mov    (%eax),%eax
 804964c:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049650:	8d 84 24 58 a0 00 00 	lea    0xa058(%esp),%eax
 8049657:	89 04 24             	mov    %eax,(%esp)
 804965a:	e8 b1 f1 ff ff       	call   8048810 <__memmove_chk@plt>
 804965f:	0f b7 84 24 94 a0 00 	movzwl 0xa094(%esp),%eax
 8049666:	00 
 8049667:	66 c1 c8 08          	ror    $0x8,%ax
 804966b:	66 89 84 24 56 a0 00 	mov    %ax,0xa056(%esp)
 8049672:	00 
 8049673:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 804967a:	00 
 804967b:	89 5c 24 04          	mov    %ebx,0x4(%esp)
 804967f:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049683:	89 04 24             	mov    %eax,(%esp)
 8049686:	e8 65 f2 ff ff       	call   80488f0 <connect@plt>
 804968b:	85 c0                	test   %eax,%eax
 804968d:	79 62                	jns    80496f1 <submitr+0x244>
 804968f:	8b 54 24 28          	mov    0x28(%esp),%edx
 8049693:	c7 02 45 72 72 6f    	movl   $0x6f727245,(%edx)
 8049699:	c7 42 04 72 3a 20 55 	movl   $0x55203a72,0x4(%edx)
 80496a0:	c7 42 08 6e 61 62 6c 	movl   $0x6c62616e,0x8(%edx)
 80496a7:	c7 42 0c 65 20 74 6f 	movl   $0x6f742065,0xc(%edx)
 80496ae:	c7 42 10 20 63 6f 6e 	movl   $0x6e6f6320,0x10(%edx)
 80496b5:	c7 42 14 6e 65 63 74 	movl   $0x7463656e,0x14(%edx)
 80496bc:	c7 42 18 20 74 6f 20 	movl   $0x206f7420,0x18(%edx)
 80496c3:	c7 42 1c 74 68 65 20 	movl   $0x20656874,0x1c(%edx)
 80496ca:	c7 42 20 73 65 72 76 	movl   $0x76726573,0x20(%edx)
 80496d1:	66 c7 42 24 65 72    	movw   $0x7265,0x24(%edx)
 80496d7:	c6 42 26 00          	movb   $0x0,0x26(%edx)
 80496db:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 80496df:	89 04 24             	mov    %eax,(%esp)
 80496e2:	e8 19 f2 ff ff       	call   8048900 <close@plt>
 80496e7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80496ec:	e9 76 05 00 00       	jmp    8049c67 <submitr+0x7ba>
 80496f1:	ba ff ff ff ff       	mov    $0xffffffff,%edx
 80496f6:	89 ef                	mov    %ebp,%edi
 80496f8:	b8 00 00 00 00       	mov    $0x0,%eax
 80496fd:	89 d1                	mov    %edx,%ecx
 80496ff:	f2 ae                	repnz scas %es:(%edi),%al
 8049701:	89 cb                	mov    %ecx,%ebx
 8049703:	f7 d3                	not    %ebx
 8049705:	8b 7c 24 30          	mov    0x30(%esp),%edi
 8049709:	89 d1                	mov    %edx,%ecx
 804970b:	f2 ae                	repnz scas %es:(%edi),%al
 804970d:	89 4c 24 3c          	mov    %ecx,0x3c(%esp)
 8049711:	8b 7c 24 34          	mov    0x34(%esp),%edi
 8049715:	89 d1                	mov    %edx,%ecx
 8049717:	f2 ae                	repnz scas %es:(%edi),%al
 8049719:	89 ce                	mov    %ecx,%esi
 804971b:	f7 d6                	not    %esi
 804971d:	8b 7c 24 38          	mov    0x38(%esp),%edi
 8049721:	89 d1                	mov    %edx,%ecx
 8049723:	f2 ae                	repnz scas %es:(%edi),%al
 8049725:	2b 74 24 3c          	sub    0x3c(%esp),%esi
 8049729:	29 ce                	sub    %ecx,%esi
 804972b:	8d 44 5b fd          	lea    -0x3(%ebx,%ebx,2),%eax
 804972f:	8d 44 06 7b          	lea    0x7b(%esi,%eax,1),%eax
 8049733:	3d 00 20 00 00       	cmp    $0x2000,%eax
 8049738:	76 7b                	jbe    80497b5 <submitr+0x308>
 804973a:	8b 44 24 28          	mov    0x28(%esp),%eax
 804973e:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
 8049744:	c7 40 04 72 3a 20 52 	movl   $0x52203a72,0x4(%eax)
 804974b:	c7 40 08 65 73 75 6c 	movl   $0x6c757365,0x8(%eax)
 8049752:	c7 40 0c 74 20 73 74 	movl   $0x74732074,0xc(%eax)
 8049759:	c7 40 10 72 69 6e 67 	movl   $0x676e6972,0x10(%eax)
 8049760:	c7 40 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%eax)
 8049767:	c7 40 18 20 6c 61 72 	movl   $0x72616c20,0x18(%eax)
 804976e:	c7 40 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%eax)
 8049775:	c7 40 20 49 6e 63 72 	movl   $0x72636e49,0x20(%eax)
 804977c:	c7 40 24 65 61 73 65 	movl   $0x65736165,0x24(%eax)
 8049783:	c7 40 28 20 53 55 42 	movl   $0x42555320,0x28(%eax)
 804978a:	c7 40 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%eax)
 8049791:	c7 40 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%eax)
 8049798:	c7 40 34 42 55 46 00 	movl   $0x465542,0x34(%eax)
 804979f:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 80497a3:	89 04 24             	mov    %eax,(%esp)
 80497a6:	e8 55 f1 ff ff       	call   8048900 <close@plt>
 80497ab:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80497b0:	e9 b2 04 00 00       	jmp    8049c67 <submitr+0x7ba>
 80497b5:	8d 94 24 54 40 00 00 	lea    0x4054(%esp),%edx
 80497bc:	b9 00 08 00 00       	mov    $0x800,%ecx
 80497c1:	b8 00 00 00 00       	mov    $0x0,%eax
 80497c6:	89 d7                	mov    %edx,%edi
 80497c8:	f3 ab                	rep stos %eax,%es:(%edi)
 80497ca:	89 ef                	mov    %ebp,%edi
 80497cc:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 80497d1:	f2 ae                	repnz scas %es:(%edi),%al
 80497d3:	f7 d1                	not    %ecx
 80497d5:	89 ce                	mov    %ecx,%esi
 80497d7:	83 ee 01             	sub    $0x1,%esi
 80497da:	0f 84 99 04 00 00    	je     8049c79 <submitr+0x7cc>
 80497e0:	89 d3                	mov    %edx,%ebx
 80497e2:	0f b6 45 00          	movzbl 0x0(%ebp),%eax
 80497e6:	3c 2a                	cmp    $0x2a,%al
 80497e8:	74 24                	je     804980e <submitr+0x361>
 80497ea:	3c 2d                	cmp    $0x2d,%al
 80497ec:	74 20                	je     804980e <submitr+0x361>
 80497ee:	3c 2e                	cmp    $0x2e,%al
 80497f0:	74 1c                	je     804980e <submitr+0x361>
 80497f2:	3c 5f                	cmp    $0x5f,%al
 80497f4:	74 18                	je     804980e <submitr+0x361>
 80497f6:	8d 50 d0             	lea    -0x30(%eax),%edx
 80497f9:	80 fa 09             	cmp    $0x9,%dl
 80497fc:	76 10                	jbe    804980e <submitr+0x361>
 80497fe:	8d 50 bf             	lea    -0x41(%eax),%edx
 8049801:	80 fa 19             	cmp    $0x19,%dl
 8049804:	76 08                	jbe    804980e <submitr+0x361>
 8049806:	8d 50 9f             	lea    -0x61(%eax),%edx
 8049809:	80 fa 19             	cmp    $0x19,%dl
 804980c:	77 07                	ja     8049815 <submitr+0x368>
 804980e:	88 03                	mov    %al,(%ebx)
 8049810:	83 c3 01             	add    $0x1,%ebx
 8049813:	eb 69                	jmp    804987e <submitr+0x3d1>
 8049815:	3c 20                	cmp    $0x20,%al
 8049817:	75 08                	jne    8049821 <submitr+0x374>
 8049819:	c6 03 2b             	movb   $0x2b,(%ebx)
 804981c:	83 c3 01             	add    $0x1,%ebx
 804981f:	eb 5d                	jmp    804987e <submitr+0x3d1>
 8049821:	8d 50 e0             	lea    -0x20(%eax),%edx
 8049824:	80 fa 5f             	cmp    $0x5f,%dl
 8049827:	76 04                	jbe    804982d <submitr+0x380>
 8049829:	3c 09                	cmp    $0x9,%al
 804982b:	75 62                	jne    804988f <submitr+0x3e2>
 804982d:	0f b6 c0             	movzbl %al,%eax
 8049830:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049834:	c7 44 24 0c f4 a4 04 	movl   $0x804a4f4,0xc(%esp)
 804983b:	08 
 804983c:	c7 44 24 08 08 00 00 	movl   $0x8,0x8(%esp)
 8049843:	00 
 8049844:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 804984b:	00 
 804984c:	8d 94 24 64 a0 00 00 	lea    0xa064(%esp),%edx
 8049853:	89 14 24             	mov    %edx,(%esp)
 8049856:	e8 c5 f0 ff ff       	call   8048920 <__sprintf_chk@plt>
 804985b:	0f b6 84 24 64 a0 00 	movzbl 0xa064(%esp),%eax
 8049862:	00 
 8049863:	88 03                	mov    %al,(%ebx)
 8049865:	0f b6 84 24 65 a0 00 	movzbl 0xa065(%esp),%eax
 804986c:	00 
 804986d:	88 43 01             	mov    %al,0x1(%ebx)
 8049870:	0f b6 84 24 66 a0 00 	movzbl 0xa066(%esp),%eax
 8049877:	00 
 8049878:	88 43 02             	mov    %al,0x2(%ebx)
 804987b:	83 c3 03             	add    $0x3,%ebx
 804987e:	83 c5 01             	add    $0x1,%ebp
 8049881:	83 ee 01             	sub    $0x1,%esi
 8049884:	0f 85 58 ff ff ff    	jne    80497e2 <submitr+0x335>
 804988a:	e9 ea 03 00 00       	jmp    8049c79 <submitr+0x7cc>
 804988f:	8b 7c 24 28          	mov    0x28(%esp),%edi
 8049893:	be 0c a4 04 08       	mov    $0x804a40c,%esi
 8049898:	b8 43 00 00 00       	mov    $0x43,%eax
 804989d:	f7 c7 01 00 00 00    	test   $0x1,%edi
 80498a3:	74 1a                	je     80498bf <submitr+0x412>
 80498a5:	0f b6 05 0c a4 04 08 	movzbl 0x804a40c,%eax
 80498ac:	88 07                	mov    %al,(%edi)
 80498ae:	8b 7c 24 28          	mov    0x28(%esp),%edi
 80498b2:	83 c7 01             	add    $0x1,%edi
 80498b5:	be 0d a4 04 08       	mov    $0x804a40d,%esi
 80498ba:	b8 42 00 00 00       	mov    $0x42,%eax
 80498bf:	f7 c7 02 00 00 00    	test   $0x2,%edi
 80498c5:	74 0f                	je     80498d6 <submitr+0x429>
 80498c7:	0f b7 16             	movzwl (%esi),%edx
 80498ca:	66 89 17             	mov    %dx,(%edi)
 80498cd:	83 c7 02             	add    $0x2,%edi
 80498d0:	83 c6 02             	add    $0x2,%esi
 80498d3:	83 e8 02             	sub    $0x2,%eax
 80498d6:	89 c1                	mov    %eax,%ecx
 80498d8:	c1 e9 02             	shr    $0x2,%ecx
 80498db:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 80498dd:	ba 00 00 00 00       	mov    $0x0,%edx
 80498e2:	a8 02                	test   $0x2,%al
 80498e4:	74 0b                	je     80498f1 <submitr+0x444>
 80498e6:	0f b7 16             	movzwl (%esi),%edx
 80498e9:	66 89 17             	mov    %dx,(%edi)
 80498ec:	ba 02 00 00 00       	mov    $0x2,%edx
 80498f1:	a8 01                	test   $0x1,%al
 80498f3:	74 07                	je     80498fc <submitr+0x44f>
 80498f5:	0f b6 04 16          	movzbl (%esi,%edx,1),%eax
 80498f9:	88 04 17             	mov    %al,(%edi,%edx,1)
 80498fc:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049900:	89 04 24             	mov    %eax,(%esp)
 8049903:	e8 f8 ef ff ff       	call   8048900 <close@plt>
 8049908:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 804990d:	e9 55 03 00 00       	jmp    8049c67 <submitr+0x7ba>
 8049912:	89 fd                	mov    %edi,%ebp
 8049914:	8b 7c 24 2c          	mov    0x2c(%esp),%edi
 8049918:	89 5c 24 08          	mov    %ebx,0x8(%esp)
 804991c:	89 74 24 04          	mov    %esi,0x4(%esp)
 8049920:	89 3c 24             	mov    %edi,(%esp)
 8049923:	e8 38 ef ff ff       	call   8048860 <write@plt>
 8049928:	85 c0                	test   %eax,%eax
 804992a:	7f 0f                	jg     804993b <submitr+0x48e>
 804992c:	e8 5f ef ff ff       	call   8048890 <__errno_location@plt>
 8049931:	83 38 04             	cmpl   $0x4,(%eax)
 8049934:	75 0f                	jne    8049945 <submitr+0x498>
 8049936:	b8 00 00 00 00       	mov    $0x0,%eax
 804993b:	01 c6                	add    %eax,%esi
 804993d:	29 c3                	sub    %eax,%ebx
 804993f:	75 d7                	jne    8049918 <submitr+0x46b>
 8049941:	85 ed                	test   %ebp,%ebp
 8049943:	79 66                	jns    80499ab <submitr+0x4fe>
 8049945:	8b 54 24 28          	mov    0x28(%esp),%edx
 8049949:	c7 02 45 72 72 6f    	movl   $0x6f727245,(%edx)
 804994f:	c7 42 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edx)
 8049956:	c7 42 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edx)
 804995d:	c7 42 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edx)
 8049964:	c7 42 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edx)
 804996b:	c7 42 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edx)
 8049972:	c7 42 18 77 72 69 74 	movl   $0x74697277,0x18(%edx)
 8049979:	c7 42 1c 65 20 74 6f 	movl   $0x6f742065,0x1c(%edx)
 8049980:	c7 42 20 20 74 68 65 	movl   $0x65687420,0x20(%edx)
 8049987:	c7 42 24 20 73 65 72 	movl   $0x72657320,0x24(%edx)
 804998e:	c7 42 28 76 65 72 00 	movl   $0x726576,0x28(%edx)
 8049995:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049999:	89 04 24             	mov    %eax,(%esp)
 804999c:	e8 5f ef ff ff       	call   8048900 <close@plt>
 80499a1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80499a6:	e9 bc 02 00 00       	jmp    8049c67 <submitr+0x7ba>
 80499ab:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 80499af:	89 44 24 48          	mov    %eax,0x48(%esp)
 80499b3:	c7 44 24 4c 00 00 00 	movl   $0x0,0x4c(%esp)
 80499ba:	00 
 80499bb:	8d 44 24 54          	lea    0x54(%esp),%eax
 80499bf:	89 44 24 50          	mov    %eax,0x50(%esp)
 80499c3:	b9 00 20 00 00       	mov    $0x2000,%ecx
 80499c8:	8d 94 24 54 20 00 00 	lea    0x2054(%esp),%edx
 80499cf:	8d 44 24 48          	lea    0x48(%esp),%eax
 80499d3:	e8 88 f9 ff ff       	call   8049360 <rio_readlineb>
 80499d8:	85 c0                	test   %eax,%eax
 80499da:	7f 7a                	jg     8049a56 <submitr+0x5a9>
 80499dc:	8b 54 24 28          	mov    0x28(%esp),%edx
 80499e0:	c7 02 45 72 72 6f    	movl   $0x6f727245,(%edx)
 80499e6:	c7 42 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edx)
 80499ed:	c7 42 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edx)
 80499f4:	c7 42 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edx)
 80499fb:	c7 42 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edx)
 8049a02:	c7 42 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edx)
 8049a09:	c7 42 18 72 65 61 64 	movl   $0x64616572,0x18(%edx)
 8049a10:	c7 42 1c 20 66 69 72 	movl   $0x72696620,0x1c(%edx)
 8049a17:	c7 42 20 73 74 20 68 	movl   $0x68207473,0x20(%edx)
 8049a1e:	c7 42 24 65 61 64 65 	movl   $0x65646165,0x24(%edx)
 8049a25:	c7 42 28 72 20 66 72 	movl   $0x72662072,0x28(%edx)
 8049a2c:	c7 42 2c 6f 6d 20 73 	movl   $0x73206d6f,0x2c(%edx)
 8049a33:	c7 42 30 65 72 76 65 	movl   $0x65767265,0x30(%edx)
 8049a3a:	66 c7 42 34 72 00    	movw   $0x72,0x34(%edx)
 8049a40:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049a44:	89 04 24             	mov    %eax,(%esp)
 8049a47:	e8 b4 ee ff ff       	call   8048900 <close@plt>
 8049a4c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049a51:	e9 11 02 00 00       	jmp    8049c67 <submitr+0x7ba>
 8049a56:	8d 84 24 54 80 00 00 	lea    0x8054(%esp),%eax
 8049a5d:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049a61:	8d 44 24 44          	lea    0x44(%esp),%eax
 8049a65:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049a69:	8d 84 24 54 60 00 00 	lea    0x6054(%esp),%eax
 8049a70:	89 44 24 08          	mov    %eax,0x8(%esp)
 8049a74:	c7 44 24 04 fb a4 04 	movl   $0x804a4fb,0x4(%esp)
 8049a7b:	08 
 8049a7c:	8d 84 24 54 20 00 00 	lea    0x2054(%esp),%eax
 8049a83:	89 04 24             	mov    %eax,(%esp)
 8049a86:	e8 e5 ed ff ff       	call   8048870 <__isoc99_sscanf@plt>
 8049a8b:	8b 44 24 44          	mov    0x44(%esp),%eax
 8049a8f:	3d c8 00 00 00       	cmp    $0xc8,%eax
 8049a94:	0f 84 d3 00 00 00    	je     8049b6d <submitr+0x6c0>
 8049a9a:	8d 94 24 54 80 00 00 	lea    0x8054(%esp),%edx
 8049aa1:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049aa5:	89 44 24 10          	mov    %eax,0x10(%esp)
 8049aa9:	c7 44 24 0c 50 a4 04 	movl   $0x804a450,0xc(%esp)
 8049ab0:	08 
 8049ab1:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
 8049ab8:	ff 
 8049ab9:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049ac0:	00 
 8049ac1:	8b 54 24 28          	mov    0x28(%esp),%edx
 8049ac5:	89 14 24             	mov    %edx,(%esp)
 8049ac8:	e8 53 ee ff ff       	call   8048920 <__sprintf_chk@plt>
 8049acd:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049ad1:	89 04 24             	mov    %eax,(%esp)
 8049ad4:	e8 27 ee ff ff       	call   8048900 <close@plt>
 8049ad9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049ade:	e9 84 01 00 00       	jmp    8049c67 <submitr+0x7ba>
 8049ae3:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049ae8:	8d 94 24 54 20 00 00 	lea    0x2054(%esp),%edx
 8049aef:	8d 44 24 48          	lea    0x48(%esp),%eax
 8049af3:	e8 68 f8 ff ff       	call   8049360 <rio_readlineb>
 8049af8:	85 c0                	test   %eax,%eax
 8049afa:	7f 71                	jg     8049b6d <submitr+0x6c0>
 8049afc:	8b 54 24 28          	mov    0x28(%esp),%edx
 8049b00:	c7 02 45 72 72 6f    	movl   $0x6f727245,(%edx)
 8049b06:	c7 42 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edx)
 8049b0d:	c7 42 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edx)
 8049b14:	c7 42 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edx)
 8049b1b:	c7 42 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edx)
 8049b22:	c7 42 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edx)
 8049b29:	c7 42 18 72 65 61 64 	movl   $0x64616572,0x18(%edx)
 8049b30:	c7 42 1c 20 68 65 61 	movl   $0x61656820,0x1c(%edx)
 8049b37:	c7 42 20 64 65 72 73 	movl   $0x73726564,0x20(%edx)
 8049b3e:	c7 42 24 20 66 72 6f 	movl   $0x6f726620,0x24(%edx)
 8049b45:	c7 42 28 6d 20 73 65 	movl   $0x6573206d,0x28(%edx)
 8049b4c:	c7 42 2c 72 76 65 72 	movl   $0x72657672,0x2c(%edx)
 8049b53:	c6 42 30 00          	movb   $0x0,0x30(%edx)
 8049b57:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049b5b:	89 04 24             	mov    %eax,(%esp)
 8049b5e:	e8 9d ed ff ff       	call   8048900 <close@plt>
 8049b63:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049b68:	e9 fa 00 00 00       	jmp    8049c67 <submitr+0x7ba>
 8049b6d:	80 bc 24 54 20 00 00 	cmpb   $0xd,0x2054(%esp)
 8049b74:	0d 
 8049b75:	0f 85 68 ff ff ff    	jne    8049ae3 <submitr+0x636>
 8049b7b:	80 bc 24 55 20 00 00 	cmpb   $0xa,0x2055(%esp)
 8049b82:	0a 
 8049b83:	0f 85 5a ff ff ff    	jne    8049ae3 <submitr+0x636>
 8049b89:	80 bc 24 56 20 00 00 	cmpb   $0x0,0x2056(%esp)
 8049b90:	00 
 8049b91:	0f 85 4c ff ff ff    	jne    8049ae3 <submitr+0x636>
 8049b97:	b9 00 20 00 00       	mov    $0x2000,%ecx
 8049b9c:	8d 94 24 54 20 00 00 	lea    0x2054(%esp),%edx
 8049ba3:	8d 44 24 48          	lea    0x48(%esp),%eax
 8049ba7:	e8 b4 f7 ff ff       	call   8049360 <rio_readlineb>
 8049bac:	85 c0                	test   %eax,%eax
 8049bae:	7f 78                	jg     8049c28 <submitr+0x77b>
 8049bb0:	8b 54 24 28          	mov    0x28(%esp),%edx
 8049bb4:	c7 02 45 72 72 6f    	movl   $0x6f727245,(%edx)
 8049bba:	c7 42 04 72 3a 20 43 	movl   $0x43203a72,0x4(%edx)
 8049bc1:	c7 42 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%edx)
 8049bc8:	c7 42 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%edx)
 8049bcf:	c7 42 10 61 62 6c 65 	movl   $0x656c6261,0x10(%edx)
 8049bd6:	c7 42 14 20 74 6f 20 	movl   $0x206f7420,0x14(%edx)
 8049bdd:	c7 42 18 72 65 61 64 	movl   $0x64616572,0x18(%edx)
 8049be4:	c7 42 1c 20 73 74 61 	movl   $0x61747320,0x1c(%edx)
 8049beb:	c7 42 20 74 75 73 20 	movl   $0x20737574,0x20(%edx)
 8049bf2:	c7 42 24 6d 65 73 73 	movl   $0x7373656d,0x24(%edx)
 8049bf9:	c7 42 28 61 67 65 20 	movl   $0x20656761,0x28(%edx)
 8049c00:	c7 42 2c 66 72 6f 6d 	movl   $0x6d6f7266,0x2c(%edx)
 8049c07:	c7 42 30 20 73 65 72 	movl   $0x72657320,0x30(%edx)
 8049c0e:	c7 42 34 76 65 72 00 	movl   $0x726576,0x34(%edx)
 8049c15:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049c19:	89 04 24             	mov    %eax,(%esp)
 8049c1c:	e8 df ec ff ff       	call   8048900 <close@plt>
 8049c21:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049c26:	eb 3f                	jmp    8049c67 <submitr+0x7ba>
 8049c28:	8d 84 24 54 20 00 00 	lea    0x2054(%esp),%eax
 8049c2f:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049c33:	8b 54 24 28          	mov    0x28(%esp),%edx
 8049c37:	89 14 24             	mov    %edx,(%esp)
 8049c3a:	e8 a1 eb ff ff       	call   80487e0 <strcpy@plt>
 8049c3f:	8b 44 24 2c          	mov    0x2c(%esp),%eax
 8049c43:	89 04 24             	mov    %eax,(%esp)
 8049c46:	e8 b5 ec ff ff       	call   8048900 <close@plt>
 8049c4b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049c50:	8b 54 24 28          	mov    0x28(%esp),%edx
 8049c54:	80 3a 4f             	cmpb   $0x4f,(%edx)
 8049c57:	75 0e                	jne    8049c67 <submitr+0x7ba>
 8049c59:	80 7a 01 4b          	cmpb   $0x4b,0x1(%edx)
 8049c5d:	75 08                	jne    8049c67 <submitr+0x7ba>
 8049c5f:	80 7a 02 01          	cmpb   $0x1,0x2(%edx)
 8049c63:	19 c0                	sbb    %eax,%eax
 8049c65:	f7 d0                	not    %eax
 8049c67:	8b 8c 24 6c a0 00 00 	mov    0xa06c(%esp),%ecx
 8049c6e:	65 33 0d 14 00 00 00 	xor    %gs:0x14,%ecx
 8049c75:	74 78                	je     8049cef <submitr+0x842>
 8049c77:	eb 71                	jmp    8049cea <submitr+0x83d>
 8049c79:	8d 84 24 54 40 00 00 	lea    0x4054(%esp),%eax
 8049c80:	89 44 24 1c          	mov    %eax,0x1c(%esp)
 8049c84:	8b 44 24 38          	mov    0x38(%esp),%eax
 8049c88:	89 44 24 18          	mov    %eax,0x18(%esp)
 8049c8c:	8b 54 24 34          	mov    0x34(%esp),%edx
 8049c90:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049c94:	8b 4c 24 30          	mov    0x30(%esp),%ecx
 8049c98:	89 4c 24 10          	mov    %ecx,0x10(%esp)
 8049c9c:	c7 44 24 0c 80 a4 04 	movl   $0x804a480,0xc(%esp)
 8049ca3:	08 
 8049ca4:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
 8049cab:	00 
 8049cac:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049cb3:	00 
 8049cb4:	8d bc 24 54 20 00 00 	lea    0x2054(%esp),%edi
 8049cbb:	89 3c 24             	mov    %edi,(%esp)
 8049cbe:	e8 5d ec ff ff       	call   8048920 <__sprintf_chk@plt>
 8049cc3:	b8 00 00 00 00       	mov    $0x0,%eax
 8049cc8:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
 8049ccd:	f2 ae                	repnz scas %es:(%edi),%al
 8049ccf:	f7 d1                	not    %ecx
 8049cd1:	8d 79 ff             	lea    -0x1(%ecx),%edi
 8049cd4:	89 fb                	mov    %edi,%ebx
 8049cd6:	8d b4 24 54 20 00 00 	lea    0x2054(%esp),%esi
 8049cdd:	85 ff                	test   %edi,%edi
 8049cdf:	0f 85 2d fc ff ff    	jne    8049912 <submitr+0x465>
 8049ce5:	e9 c1 fc ff ff       	jmp    80499ab <submitr+0x4fe>
 8049cea:	e8 e1 ea ff ff       	call   80487d0 <__stack_chk_fail@plt>
 8049cef:	81 c4 7c a0 00 00    	add    $0xa07c,%esp
 8049cf5:	5b                   	pop    %ebx
 8049cf6:	5e                   	pop    %esi
 8049cf7:	5f                   	pop    %edi
 8049cf8:	5d                   	pop    %ebp
 8049cf9:	c3                   	ret    

08049cfa <init_timeout>:
 8049cfa:	53                   	push   %ebx
 8049cfb:	83 ec 18             	sub    $0x18,%esp
 8049cfe:	8b 5c 24 20          	mov    0x20(%esp),%ebx
 8049d02:	85 db                	test   %ebx,%ebx
 8049d04:	74 26                	je     8049d2c <init_timeout+0x32>
 8049d06:	c7 44 24 04 79 94 04 	movl   $0x8049479,0x4(%esp)
 8049d0d:	08 
 8049d0e:	c7 04 24 0e 00 00 00 	movl   $0xe,(%esp)
 8049d15:	e8 86 ea ff ff       	call   80487a0 <signal@plt>
 8049d1a:	85 db                	test   %ebx,%ebx
 8049d1c:	b8 00 00 00 00       	mov    $0x0,%eax
 8049d21:	0f 48 d8             	cmovs  %eax,%ebx
 8049d24:	89 1c 24             	mov    %ebx,(%esp)
 8049d27:	e8 94 ea ff ff       	call   80487c0 <alarm@plt>
 8049d2c:	83 c4 18             	add    $0x18,%esp
 8049d2f:	5b                   	pop    %ebx
 8049d30:	c3                   	ret    

08049d31 <init_driver>:
 8049d31:	57                   	push   %edi
 8049d32:	56                   	push   %esi
 8049d33:	53                   	push   %ebx
 8049d34:	83 ec 40             	sub    $0x40,%esp
 8049d37:	8b 74 24 50          	mov    0x50(%esp),%esi
 8049d3b:	65 a1 14 00 00 00    	mov    %gs:0x14,%eax
 8049d41:	89 44 24 3c          	mov    %eax,0x3c(%esp)
 8049d45:	31 c0                	xor    %eax,%eax
 8049d47:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049d4e:	00 
 8049d4f:	c7 04 24 0d 00 00 00 	movl   $0xd,(%esp)
 8049d56:	e8 45 ea ff ff       	call   80487a0 <signal@plt>
 8049d5b:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049d62:	00 
 8049d63:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 8049d6a:	e8 31 ea ff ff       	call   80487a0 <signal@plt>
 8049d6f:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049d76:	00 
 8049d77:	c7 04 24 1d 00 00 00 	movl   $0x1d,(%esp)
 8049d7e:	e8 1d ea ff ff       	call   80487a0 <signal@plt>
 8049d83:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
 8049d8a:	00 
 8049d8b:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049d92:	00 
 8049d93:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
 8049d9a:	e8 11 eb ff ff       	call   80488b0 <socket@plt>
 8049d9f:	89 c3                	mov    %eax,%ebx
 8049da1:	85 c0                	test   %eax,%eax
 8049da3:	79 4e                	jns    8049df3 <init_driver+0xc2>
 8049da5:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 8049dab:	c7 46 04 72 3a 20 43 	movl   $0x43203a72,0x4(%esi)
 8049db2:	c7 46 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%esi)
 8049db9:	c7 46 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%esi)
 8049dc0:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 8049dc7:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 8049dce:	c7 46 18 63 72 65 61 	movl   $0x61657263,0x18(%esi)
 8049dd5:	c7 46 1c 74 65 20 73 	movl   $0x73206574,0x1c(%esi)
 8049ddc:	c7 46 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%esi)
 8049de3:	66 c7 46 24 74 00    	movw   $0x74,0x24(%esi)
 8049de9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049dee:	e9 33 01 00 00       	jmp    8049f26 <init_driver+0x1f5>
 8049df3:	c7 04 24 0c a5 04 08 	movl   $0x804a50c,(%esp)
 8049dfa:	e8 d1 ea ff ff       	call   80488d0 <gethostbyname@plt>
 8049dff:	85 c0                	test   %eax,%eax
 8049e01:	75 68                	jne    8049e6b <init_driver+0x13a>
 8049e03:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
 8049e09:	c7 46 04 72 3a 20 44 	movl   $0x44203a72,0x4(%esi)
 8049e10:	c7 46 08 4e 53 20 69 	movl   $0x6920534e,0x8(%esi)
 8049e17:	c7 46 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%esi)
 8049e1e:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
 8049e25:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
 8049e2c:	c7 46 18 72 65 73 6f 	movl   $0x6f736572,0x18(%esi)
 8049e33:	c7 46 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%esi)
 8049e3a:	c7 46 20 73 65 72 76 	movl   $0x76726573,0x20(%esi)
 8049e41:	c7 46 24 65 72 20 61 	movl   $0x61207265,0x24(%esi)
 8049e48:	c7 46 28 64 64 72 65 	movl   $0x65726464,0x28(%esi)
 8049e4f:	66 c7 46 2c 73 73    	movw   $0x7373,0x2c(%esi)
 8049e55:	c6 46 2e 00          	movb   $0x0,0x2e(%esi)
 8049e59:	89 1c 24             	mov    %ebx,(%esp)
 8049e5c:	e8 9f ea ff ff       	call   8048900 <close@plt>
 8049e61:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049e66:	e9 bb 00 00 00       	jmp    8049f26 <init_driver+0x1f5>
 8049e6b:	8d 7c 24 2c          	lea    0x2c(%esp),%edi
 8049e6f:	c7 44 24 2c 00 00 00 	movl   $0x0,0x2c(%esp)
 8049e76:	00 
 8049e77:	c7 44 24 30 00 00 00 	movl   $0x0,0x30(%esp)
 8049e7e:	00 
 8049e7f:	c7 44 24 34 00 00 00 	movl   $0x0,0x34(%esp)
 8049e86:	00 
 8049e87:	c7 44 24 38 00 00 00 	movl   $0x0,0x38(%esp)
 8049e8e:	00 
 8049e8f:	66 c7 44 24 2c 02 00 	movw   $0x2,0x2c(%esp)
 8049e96:	c7 44 24 0c 0c 00 00 	movl   $0xc,0xc(%esp)
 8049e9d:	00 
 8049e9e:	8b 50 0c             	mov    0xc(%eax),%edx
 8049ea1:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049ea5:	8b 40 10             	mov    0x10(%eax),%eax
 8049ea8:	8b 00                	mov    (%eax),%eax
 8049eaa:	89 44 24 04          	mov    %eax,0x4(%esp)
 8049eae:	8d 44 24 30          	lea    0x30(%esp),%eax
 8049eb2:	89 04 24             	mov    %eax,(%esp)
 8049eb5:	e8 56 e9 ff ff       	call   8048810 <__memmove_chk@plt>
 8049eba:	66 c7 44 24 2e 3b 6e 	movw   $0x6e3b,0x2e(%esp)
 8049ec1:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
 8049ec8:	00 
 8049ec9:	89 7c 24 04          	mov    %edi,0x4(%esp)
 8049ecd:	89 1c 24             	mov    %ebx,(%esp)
 8049ed0:	e8 1b ea ff ff       	call   80488f0 <connect@plt>
 8049ed5:	85 c0                	test   %eax,%eax
 8049ed7:	79 37                	jns    8049f10 <init_driver+0x1df>
 8049ed9:	c7 44 24 10 0c a5 04 	movl   $0x804a50c,0x10(%esp)
 8049ee0:	08 
 8049ee1:	c7 44 24 0c cc a4 04 	movl   $0x804a4cc,0xc(%esp)
 8049ee8:	08 
 8049ee9:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
 8049ef0:	ff 
 8049ef1:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
 8049ef8:	00 
 8049ef9:	89 34 24             	mov    %esi,(%esp)
 8049efc:	e8 1f ea ff ff       	call   8048920 <__sprintf_chk@plt>
 8049f01:	89 1c 24             	mov    %ebx,(%esp)
 8049f04:	e8 f7 e9 ff ff       	call   8048900 <close@plt>
 8049f09:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049f0e:	eb 16                	jmp    8049f26 <init_driver+0x1f5>
 8049f10:	89 1c 24             	mov    %ebx,(%esp)
 8049f13:	e8 e8 e9 ff ff       	call   8048900 <close@plt>
 8049f18:	66 c7 06 4f 4b       	movw   $0x4b4f,(%esi)
 8049f1d:	c6 46 02 00          	movb   $0x0,0x2(%esi)
 8049f21:	b8 00 00 00 00       	mov    $0x0,%eax
 8049f26:	8b 54 24 3c          	mov    0x3c(%esp),%edx
 8049f2a:	65 33 15 14 00 00 00 	xor    %gs:0x14,%edx
 8049f31:	74 05                	je     8049f38 <init_driver+0x207>
 8049f33:	e8 98 e8 ff ff       	call   80487d0 <__stack_chk_fail@plt>
 8049f38:	83 c4 40             	add    $0x40,%esp
 8049f3b:	5b                   	pop    %ebx
 8049f3c:	5e                   	pop    %esi
 8049f3d:	5f                   	pop    %edi
 8049f3e:	c3                   	ret    

08049f3f <driver_post>:
 8049f3f:	53                   	push   %ebx
 8049f40:	83 ec 28             	sub    $0x28,%esp
 8049f43:	8b 44 24 30          	mov    0x30(%esp),%eax
 8049f47:	8b 54 24 34          	mov    0x34(%esp),%edx
 8049f4b:	8b 5c 24 3c          	mov    0x3c(%esp),%ebx
 8049f4f:	83 7c 24 38 00       	cmpl   $0x0,0x38(%esp)
 8049f54:	74 28                	je     8049f7e <driver_post+0x3f>
 8049f56:	89 54 24 08          	mov    %edx,0x8(%esp)
 8049f5a:	c7 44 24 04 1f a5 04 	movl   $0x804a51f,0x4(%esp)
 8049f61:	08 
 8049f62:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
 8049f69:	e8 32 e9 ff ff       	call   80488a0 <__printf_chk@plt>
 8049f6e:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049f73:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049f77:	b8 00 00 00 00       	mov    $0x0,%eax
 8049f7c:	eb 49                	jmp    8049fc7 <driver_post+0x88>
 8049f7e:	85 c0                	test   %eax,%eax
 8049f80:	74 37                	je     8049fb9 <driver_post+0x7a>
 8049f82:	80 38 00             	cmpb   $0x0,(%eax)
 8049f85:	74 32                	je     8049fb9 <driver_post+0x7a>
 8049f87:	89 5c 24 18          	mov    %ebx,0x18(%esp)
 8049f8b:	89 54 24 14          	mov    %edx,0x14(%esp)
 8049f8f:	c7 44 24 10 36 a5 04 	movl   $0x804a536,0x10(%esp)
 8049f96:	08 
 8049f97:	89 44 24 0c          	mov    %eax,0xc(%esp)
 8049f9b:	c7 44 24 08 3a a5 04 	movl   $0x804a53a,0x8(%esp)
 8049fa2:	08 
 8049fa3:	c7 44 24 04 6e 3b 00 	movl   $0x3b6e,0x4(%esp)
 8049faa:	00 
 8049fab:	c7 04 24 0c a5 04 08 	movl   $0x804a50c,(%esp)
 8049fb2:	e8 f6 f4 ff ff       	call   80494ad <submitr>
 8049fb7:	eb 0e                	jmp    8049fc7 <driver_post+0x88>
 8049fb9:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
 8049fbe:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
 8049fc2:	b8 00 00 00 00       	mov    $0x0,%eax
 8049fc7:	83 c4 28             	add    $0x28,%esp
 8049fca:	5b                   	pop    %ebx
 8049fcb:	c3                   	ret    
 8049fcc:	90                   	nop
 8049fcd:	90                   	nop
 8049fce:	90                   	nop
 8049fcf:	90                   	nop

08049fd0 <__libc_csu_init>:
 8049fd0:	55                   	push   %ebp
 8049fd1:	57                   	push   %edi
 8049fd2:	56                   	push   %esi
 8049fd3:	53                   	push   %ebx
 8049fd4:	e8 69 00 00 00       	call   804a042 <__i686.get_pc_thunk.bx>
 8049fd9:	81 c3 1b 20 00 00    	add    $0x201b,%ebx
 8049fdf:	83 ec 1c             	sub    $0x1c,%esp
 8049fe2:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 8049fe6:	8d bb 20 ff ff ff    	lea    -0xe0(%ebx),%edi
 8049fec:	e8 33 e7 ff ff       	call   8048724 <_init>
 8049ff1:	8d 83 20 ff ff ff    	lea    -0xe0(%ebx),%eax
 8049ff7:	29 c7                	sub    %eax,%edi
 8049ff9:	c1 ff 02             	sar    $0x2,%edi
 8049ffc:	85 ff                	test   %edi,%edi
 8049ffe:	74 29                	je     804a029 <__libc_csu_init+0x59>
 804a000:	31 f6                	xor    %esi,%esi
 804a002:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 804a008:	8b 44 24 38          	mov    0x38(%esp),%eax
 804a00c:	89 2c 24             	mov    %ebp,(%esp)
 804a00f:	89 44 24 08          	mov    %eax,0x8(%esp)
 804a013:	8b 44 24 34          	mov    0x34(%esp),%eax
 804a017:	89 44 24 04          	mov    %eax,0x4(%esp)
 804a01b:	ff 94 b3 20 ff ff ff 	call   *-0xe0(%ebx,%esi,4)
 804a022:	83 c6 01             	add    $0x1,%esi
 804a025:	39 fe                	cmp    %edi,%esi
 804a027:	75 df                	jne    804a008 <__libc_csu_init+0x38>
 804a029:	83 c4 1c             	add    $0x1c,%esp
 804a02c:	5b                   	pop    %ebx
 804a02d:	5e                   	pop    %esi
 804a02e:	5f                   	pop    %edi
 804a02f:	5d                   	pop    %ebp
 804a030:	c3                   	ret    
 804a031:	eb 0d                	jmp    804a040 <__libc_csu_fini>
 804a033:	90                   	nop
 804a034:	90                   	nop
 804a035:	90                   	nop
 804a036:	90                   	nop
 804a037:	90                   	nop
 804a038:	90                   	nop
 804a039:	90                   	nop
 804a03a:	90                   	nop
 804a03b:	90                   	nop
 804a03c:	90                   	nop
 804a03d:	90                   	nop
 804a03e:	90                   	nop
 804a03f:	90                   	nop

0804a040 <__libc_csu_fini>:
 804a040:	f3 c3                	repz ret 

0804a042 <__i686.get_pc_thunk.bx>:
 804a042:	8b 1c 24             	mov    (%esp),%ebx
 804a045:	c3                   	ret    
 804a046:	90                   	nop
 804a047:	90                   	nop
 804a048:	90                   	nop
 804a049:	90                   	nop
 804a04a:	90                   	nop
 804a04b:	90                   	nop
 804a04c:	90                   	nop
 804a04d:	90                   	nop
 804a04e:	90                   	nop
 804a04f:	90                   	nop

0804a050 <__do_global_ctors_aux>:
 804a050:	55                   	push   %ebp
 804a051:	89 e5                	mov    %esp,%ebp
 804a053:	53                   	push   %ebx
 804a054:	83 ec 04             	sub    $0x4,%esp
 804a057:	a1 14 bf 04 08       	mov    0x804bf14,%eax
 804a05c:	83 f8 ff             	cmp    $0xffffffff,%eax
 804a05f:	74 13                	je     804a074 <__do_global_ctors_aux+0x24>
 804a061:	bb 14 bf 04 08       	mov    $0x804bf14,%ebx
 804a066:	66 90                	xchg   %ax,%ax
 804a068:	83 eb 04             	sub    $0x4,%ebx
 804a06b:	ff d0                	call   *%eax
 804a06d:	8b 03                	mov    (%ebx),%eax
 804a06f:	83 f8 ff             	cmp    $0xffffffff,%eax
 804a072:	75 f4                	jne    804a068 <__do_global_ctors_aux+0x18>
 804a074:	83 c4 04             	add    $0x4,%esp
 804a077:	5b                   	pop    %ebx
 804a078:	5d                   	pop    %ebp
 804a079:	c3                   	ret    
 804a07a:	90                   	nop
 804a07b:	90                   	nop

Disassembly of section .fini:

0804a07c <_fini>:
 804a07c:	53                   	push   %ebx
 804a07d:	83 ec 08             	sub    $0x8,%esp
 804a080:	e8 00 00 00 00       	call   804a085 <_fini+0x9>
 804a085:	5b                   	pop    %ebx
 804a086:	81 c3 6f 1f 00 00    	add    $0x1f6f,%ebx
 804a08c:	e8 cf e8 ff ff       	call   8048960 <__do_global_dtors_aux>
 804a091:	83 c4 08             	add    $0x8,%esp
 804a094:	5b                   	pop    %ebx
 804a095:	c3                   	ret    

Disassembly of section .rodata:

0804a098 <_fp_hw>:
 804a098:	03 00                	add    (%eax),%eax
	...

0804a09c <_IO_stdin_used>:
 804a09c:	01 00                	add    %eax,(%eax)
 804a09e:	02 00                	add    (%eax),%al
 804a0a0:	72 00                	jb     804a0a2 <_IO_stdin_used+0x6>
 804a0a2:	25 73 3a 20 45       	and    $0x45203a73,%eax
 804a0a7:	72 72                	jb     804a11b <_IO_stdin_used+0x7f>
 804a0a9:	6f                   	outsl  %ds:(%esi),(%dx)
 804a0aa:	72 3a                	jb     804a0e6 <_IO_stdin_used+0x4a>
 804a0ac:	20 43 6f             	and    %al,0x6f(%ebx)
 804a0af:	75 6c                	jne    804a11d <_IO_stdin_used+0x81>
 804a0b1:	64 6e                	outsb  %fs:(%esi),(%dx)
 804a0b3:	27                   	daa    
 804a0b4:	74 20                	je     804a0d6 <_IO_stdin_used+0x3a>
 804a0b6:	6f                   	outsl  %ds:(%esi),(%dx)
 804a0b7:	70 65                	jo     804a11e <_IO_stdin_used+0x82>
 804a0b9:	6e                   	outsb  %ds:(%esi),(%dx)
 804a0ba:	20 25 73 0a 00 55    	and    %ah,0x55000a73
 804a0c0:	73 61                	jae    804a123 <_IO_stdin_used+0x87>
 804a0c2:	67 65 3a 20          	cmp    %gs:(%bx,%si),%ah
 804a0c6:	25 73 20 5b 3c       	and    $0x3c5b2073,%eax
 804a0cb:	69 6e 70 75 74 5f 66 	imul   $0x665f7475,0x70(%esi),%ebp
 804a0d2:	69 6c 65 3e 5d 0a 00 	imul   $0x54000a5d,0x3e(%ebp,%eiz,2),%ebp
 804a0d9:	54 
 804a0da:	68 61 74 27 73       	push   $0x73277461
 804a0df:	20 6e 75             	and    %ch,0x75(%esi)
 804a0e2:	6d                   	insl   (%dx),%es:(%edi)
 804a0e3:	62 65 72             	bound  %esp,0x72(%ebp)
 804a0e6:	20 32                	and    %dh,(%edx)
 804a0e8:	2e 20 20             	and    %ah,%cs:(%eax)
 804a0eb:	4b                   	dec    %ebx
 804a0ec:	65 65 70 20          	gs gs jo 804a110 <_IO_stdin_used+0x74>
 804a0f0:	67 6f                	outsl  %ds:(%si),(%dx)
 804a0f2:	69 6e 67 21 00 48 61 	imul   $0x61480021,0x67(%esi),%ebp
 804a0f9:	6c                   	insb   (%dx),%es:(%edi)
 804a0fa:	66 77 61             	data16 ja 804a15e <_IO_stdin_used+0xc2>
 804a0fd:	79 20                	jns    804a11f <_IO_stdin_used+0x83>
 804a0ff:	74 68                	je     804a169 <_IO_stdin_used+0xcd>
 804a101:	65 72 65             	gs jb  804a169 <_IO_stdin_used+0xcd>
 804a104:	21 00                	and    %eax,(%eax)
 804a106:	47                   	inc    %edi
 804a107:	6f                   	outsl  %ds:(%esi),(%dx)
 804a108:	6f                   	outsl  %ds:(%esi),(%dx)
 804a109:	64 20 77 6f          	and    %dh,%fs:0x6f(%edi)
 804a10d:	72 6b                	jb     804a17a <_IO_stdin_used+0xde>
 804a10f:	21 20                	and    %esp,(%eax)
 804a111:	20 4f 6e             	and    %cl,0x6e(%edi)
 804a114:	20 74 6f 20          	and    %dh,0x20(%edi,%ebp,2)
 804a118:	74 68                	je     804a182 <_IO_stdin_used+0xe6>
 804a11a:	65 20 6e 65          	and    %ch,%gs:0x65(%esi)
 804a11e:	78 74                	js     804a194 <_IO_stdin_used+0xf8>
 804a120:	2e 2e 2e 00 57 65    	cs cs add %dl,%cs:0x65(%edi)
 804a126:	6c                   	insb   (%dx),%es:(%edi)
 804a127:	63 6f 6d             	arpl   %bp,0x6d(%edi)
 804a12a:	65 20 74 6f 20       	and    %dh,%gs:0x20(%edi,%ebp,2)
 804a12f:	6d                   	insl   (%dx),%es:(%edi)
 804a130:	79 20                	jns    804a152 <_IO_stdin_used+0xb6>
 804a132:	66 69 65 6e 64 69    	imul   $0x6964,0x6e(%ebp),%sp
 804a138:	73 68                	jae    804a1a2 <_IO_stdin_used+0x106>
 804a13a:	20 6c 69 74          	and    %ch,0x74(%ecx,%ebp,2)
 804a13e:	74 6c                	je     804a1ac <_IO_stdin_used+0x110>
 804a140:	65 20 62 6f          	and    %ah,%gs:0x6f(%edx)
 804a144:	6d                   	insl   (%dx),%es:(%edi)
 804a145:	62 2e                	bound  %ebp,(%esi)
 804a147:	20 59 6f             	and    %bl,0x6f(%ecx)
 804a14a:	75 20                	jne    804a16c <_IO_stdin_used+0xd0>
 804a14c:	68 61 76 65 20       	push   $0x20657661
 804a151:	36 20 70 68          	and    %dh,%ss:0x68(%eax)
 804a155:	61                   	popa   
 804a156:	73 65                	jae    804a1bd <_IO_stdin_used+0x121>
 804a158:	73 20                	jae    804a17a <_IO_stdin_used+0xde>
 804a15a:	77 69                	ja     804a1c5 <_IO_stdin_used+0x129>
 804a15c:	74 68                	je     804a1c6 <_IO_stdin_used+0x12a>
 804a15e:	00 00                	add    %al,(%eax)
 804a160:	77 68                	ja     804a1ca <_IO_stdin_used+0x12e>
 804a162:	69 63 68 20 74 6f 20 	imul   $0x206f7420,0x68(%ebx),%esp
 804a169:	62 6c 6f 77          	bound  %ebp,0x77(%edi,%ebp,2)
 804a16d:	20 79 6f             	and    %bh,0x6f(%ecx)
 804a170:	75 72                	jne    804a1e4 <_IO_stdin_used+0x148>
 804a172:	73 65                	jae    804a1d9 <_IO_stdin_used+0x13d>
 804a174:	6c                   	insb   (%dx),%es:(%edi)
 804a175:	66 20 75 70          	data16 and %dh,0x70(%ebp)
 804a179:	2e 20 48 61          	and    %cl,%cs:0x61(%eax)
 804a17d:	76 65                	jbe    804a1e4 <_IO_stdin_used+0x148>
 804a17f:	20 61 20             	and    %ah,0x20(%ecx)
 804a182:	6e                   	outsb  %ds:(%esi),(%dx)
 804a183:	69 63 65 20 64 61 79 	imul   $0x79616420,0x65(%ebx),%esp
 804a18a:	21 00                	and    %eax,(%eax)
 804a18c:	50                   	push   %eax
 804a18d:	68 61 73 65 20       	push   $0x20657361
 804a192:	31 20                	xor    %esp,(%eax)
 804a194:	64 65 66 75 73       	fs gs data16 jne 804a20c <_IO_stdin_used+0x170>
 804a199:	65 64 2e 20 48 6f    	gs fs and %cl,%cs:0x6f(%eax)
 804a19f:	77 20                	ja     804a1c1 <_IO_stdin_used+0x125>
 804a1a1:	61                   	popa   
 804a1a2:	62 6f 75             	bound  %ebp,0x75(%edi)
 804a1a5:	74 20                	je     804a1c7 <_IO_stdin_used+0x12b>
 804a1a7:	74 68                	je     804a211 <_IO_stdin_used+0x175>
 804a1a9:	65 20 6e 65          	and    %ch,%gs:0x65(%esi)
 804a1ad:	78 74                	js     804a223 <_IO_stdin_used+0x187>
 804a1af:	20 6f 6e             	and    %ch,0x6e(%edi)
 804a1b2:	65 3f                	gs aas 
 804a1b4:	00 00                	add    %al,(%eax)
 804a1b6:	00 00                	add    %al,(%eax)
 804a1b8:	53                   	push   %ebx
 804a1b9:	6f                   	outsl  %ds:(%esi),(%dx)
 804a1ba:	20 79 6f             	and    %bh,0x6f(%ecx)
 804a1bd:	75 20                	jne    804a1df <_IO_stdin_used+0x143>
 804a1bf:	67 6f                	outsl  %ds:(%si),(%dx)
 804a1c1:	74 20                	je     804a1e3 <_IO_stdin_used+0x147>
 804a1c3:	74 68                	je     804a22d <_IO_stdin_used+0x191>
 804a1c5:	61                   	popa   
 804a1c6:	74 20                	je     804a1e8 <_IO_stdin_used+0x14c>
 804a1c8:	6f                   	outsl  %ds:(%esi),(%dx)
 804a1c9:	6e                   	outsb  %ds:(%esi),(%dx)
 804a1ca:	65 2e 20 20          	gs and %ah,%cs:(%eax)
 804a1ce:	54                   	push   %esp
 804a1cf:	72 79                	jb     804a24a <_IO_stdin_used+0x1ae>
 804a1d1:	20 74 68 69          	and    %dh,0x69(%eax,%ebp,2)
 804a1d5:	73 20                	jae    804a1f7 <_IO_stdin_used+0x15b>
 804a1d7:	6f                   	outsl  %ds:(%esi),(%dx)
 804a1d8:	6e                   	outsb  %ds:(%esi),(%dx)
 804a1d9:	65 2e 00 46 6f       	gs add %al,%cs:0x6f(%esi)
 804a1de:	72 20                	jb     804a200 <_IO_stdin_used+0x164>
 804a1e0:	4e                   	dec    %esi
 804a1e1:	41                   	inc    %ecx
 804a1e2:	53                   	push   %ebx
 804a1e3:	41                   	inc    %ecx
 804a1e4:	2c 20                	sub    $0x20,%al
 804a1e6:	73 70                	jae    804a258 <array.2956>
 804a1e8:	61                   	popa   
 804a1e9:	63 65 20             	arpl   %sp,0x20(%ebp)
 804a1ec:	69 73 20 73 74 69 6c 	imul   $0x6c697473,0x20(%ebx),%esi
 804a1f3:	6c                   	insb   (%dx),%es:(%edi)
 804a1f4:	20 61 20             	and    %ah,0x20(%ecx)
 804a1f7:	68 69 67 68 20       	push   $0x20686769
 804a1fc:	70 72                	jo     804a270 <array.2956+0x18>
 804a1fe:	69 6f 72 69 74 79 2e 	imul   $0x2e797469,0x72(%edi),%ebp
 804a205:	00 00                	add    %al,(%eax)
 804a207:	00 57 6f             	add    %dl,0x6f(%edi)
 804a20a:	77 21                	ja     804a22d <_IO_stdin_used+0x191>
 804a20c:	20 59 6f             	and    %bl,0x6f(%ecx)
 804a20f:	75 27                	jne    804a238 <_IO_stdin_used+0x19c>
 804a211:	76 65                	jbe    804a278 <array.2956+0x20>
 804a213:	20 64 65 66          	and    %ah,0x66(%ebp,%eiz,2)
 804a217:	75 73                	jne    804a28c <array.2956+0x34>
 804a219:	65 64 20 74 68 65    	gs and %dh,%fs:0x65(%eax,%ebp,2)
 804a21f:	20 73 65             	and    %dh,0x65(%ebx)
 804a222:	63 72 65             	arpl   %si,0x65(%edx)
 804a225:	74 20                	je     804a247 <_IO_stdin_used+0x1ab>
 804a227:	73 74                	jae    804a29d <array.2956+0x45>
 804a229:	61                   	popa   
 804a22a:	67 65 21 00          	and    %eax,%gs:(%bx,%si)
 804a22e:	66 6c                	data16 insb (%dx),%es:(%edi)
 804a230:	79 65                	jns    804a297 <array.2956+0x3f>
 804a232:	72 73                	jb     804a2a7 <array.2956+0x4f>
 804a234:	00 00                	add    %al,(%eax)
 804a236:	00 00                	add    %al,(%eax)
 804a238:	0e                   	push   %cs
 804a239:	8c 04 08             	mov    %es,(%eax,%ecx,1)
 804a23c:	07                   	pop    %es
 804a23d:	8c 04 08             	mov    %es,(%eax,%ecx,1)
 804a240:	1a 8c 04 08 26 8c 04 	sbb    0x48c2608(%esp,%eax,1),%cl
 804a247:	08 32                	or     %dh,(%edx)
 804a249:	8c 04 08             	mov    %es,(%eax,%ecx,1)
 804a24c:	3e 8c 04 08          	mov    %es,%ds:(%eax,%ecx,1)
 804a250:	4a                   	dec    %edx
 804a251:	8c 04 08             	mov    %es,(%eax,%ecx,1)
 804a254:	56                   	push   %esi
 804a255:	8c 04 08             	mov    %es,(%eax,%ecx,1)

0804a258 <array.2956>:
 804a258:	6d                   	insl   (%dx),%es:(%edi)
 804a259:	61                   	popa   
 804a25a:	64 75 69             	fs jne 804a2c6 <array.2956+0x6e>
 804a25d:	65 72 73             	gs jb  804a2d3 <array.2956+0x7b>
 804a260:	6e                   	outsb  %ds:(%esi),(%dx)
 804a261:	66 6f                	outsw  %ds:(%esi),(%dx)
 804a263:	74 76                	je     804a2db <array.2956+0x83>
 804a265:	62 79 6c             	bound  %edi,0x6c(%ecx)
 804a268:	53                   	push   %ebx
 804a269:	6f                   	outsl  %ds:(%esi),(%dx)
 804a26a:	20 79 6f             	and    %bh,0x6f(%ecx)
 804a26d:	75 20                	jne    804a28f <array.2956+0x37>
 804a26f:	74 68                	je     804a2d9 <array.2956+0x81>
 804a271:	69 6e 6b 20 79 6f 75 	imul   $0x756f7920,0x6b(%esi),%ebp
 804a278:	20 63 61             	and    %ah,0x61(%ebx)
 804a27b:	6e                   	outsb  %ds:(%esi),(%dx)
 804a27c:	20 73 74             	and    %dh,0x74(%ebx)
 804a27f:	6f                   	outsl  %ds:(%esi),(%dx)
 804a280:	70 20                	jo     804a2a2 <array.2956+0x4a>
 804a282:	74 68                	je     804a2ec <array.2956+0x94>
 804a284:	65 20 62 6f          	and    %ah,%gs:0x6f(%edx)
 804a288:	6d                   	insl   (%dx),%es:(%edi)
 804a289:	62 20                	bound  %esp,(%eax)
 804a28b:	77 69                	ja     804a2f6 <array.2956+0x9e>
 804a28d:	74 68                	je     804a2f7 <array.2956+0x9f>
 804a28f:	20 63 74             	and    %ah,0x74(%ebx)
 804a292:	72 6c                	jb     804a300 <array.2956+0xa8>
 804a294:	2d 63 2c 20 64       	sub    $0x64202c63,%eax
 804a299:	6f                   	outsl  %ds:(%esi),(%dx)
 804a29a:	20 79 6f             	and    %bh,0x6f(%ecx)
 804a29d:	75 3f                	jne    804a2de <array.2956+0x86>
 804a29f:	00 43 75             	add    %al,0x75(%ebx)
 804a2a2:	72 73                	jb     804a317 <array.2956+0xbf>
 804a2a4:	65 73 2c             	gs jae 804a2d3 <array.2956+0x7b>
 804a2a7:	20 79 6f             	and    %bh,0x6f(%ecx)
 804a2aa:	75 27                	jne    804a2d3 <array.2956+0x7b>
 804a2ac:	76 65                	jbe    804a313 <array.2956+0xbb>
 804a2ae:	20 66 6f             	and    %ah,0x6f(%esi)
 804a2b1:	75 6e                	jne    804a321 <array.2956+0xc9>
 804a2b3:	64 20 74 68 65       	and    %dh,%fs:0x65(%eax,%ebp,2)
 804a2b8:	20 73 65             	and    %dh,0x65(%ebx)
 804a2bb:	63 72 65             	arpl   %si,0x65(%edx)
 804a2be:	74 20                	je     804a2e0 <array.2956+0x88>
 804a2c0:	70 68                	jo     804a32a <array.2956+0xd2>
 804a2c2:	61                   	popa   
 804a2c3:	73 65                	jae    804a32a <array.2956+0xd2>
 804a2c5:	21 00                	and    %eax,(%eax)
 804a2c7:	00 42 75             	add    %al,0x75(%edx)
 804a2ca:	74 20                	je     804a2ec <array.2956+0x94>
 804a2cc:	66 69 6e 64 69 6e    	imul   $0x6e69,0x64(%esi),%bp
 804a2d2:	67 20 69 74          	and    %ch,0x74(%bx,%di)
 804a2d6:	20 61 6e             	and    %ah,0x6e(%ecx)
 804a2d9:	64 20 73 6f          	and    %dh,%fs:0x6f(%ebx)
 804a2dd:	6c                   	insb   (%dx),%es:(%edi)
 804a2de:	76 69                	jbe    804a349 <array.2956+0xf1>
 804a2e0:	6e                   	outsb  %ds:(%esi),(%dx)
 804a2e1:	67 20 69 74          	and    %ch,0x74(%bx,%di)
 804a2e5:	20 61 72             	and    %ah,0x72(%ecx)
 804a2e8:	65 20 71 75          	and    %dh,%gs:0x75(%ecx)
 804a2ec:	69 74 65 20 64 69 66 	imul   $0x66666964,0x20(%ebp,%eiz,2),%esi
 804a2f3:	66 
 804a2f4:	65 72 65             	gs jb  804a35c <array.2956+0x104>
 804a2f7:	6e                   	outsb  %ds:(%esi),(%dx)
 804a2f8:	74 2e                	je     804a328 <array.2956+0xd0>
 804a2fa:	2e 2e 00 00          	cs add %al,%cs:(%eax)
 804a2fe:	00 00                	add    %al,(%eax)
 804a300:	43                   	inc    %ebx
 804a301:	6f                   	outsl  %ds:(%esi),(%dx)
 804a302:	6e                   	outsb  %ds:(%esi),(%dx)
 804a303:	67 72 61             	addr16 jb 804a367 <array.2956+0x10f>
 804a306:	74 75                	je     804a37d <array.2956+0x125>
 804a308:	6c                   	insb   (%dx),%es:(%edi)
 804a309:	61                   	popa   
 804a30a:	74 69                	je     804a375 <array.2956+0x11d>
 804a30c:	6f                   	outsl  %ds:(%esi),(%dx)
 804a30d:	6e                   	outsb  %ds:(%esi),(%dx)
 804a30e:	73 21                	jae    804a331 <array.2956+0xd9>
 804a310:	20 59 6f             	and    %bl,0x6f(%ecx)
 804a313:	75 27                	jne    804a33c <array.2956+0xe4>
 804a315:	76 65                	jbe    804a37c <array.2956+0x124>
 804a317:	20 64 65 66          	and    %ah,0x66(%ebp,%eiz,2)
 804a31b:	75 73                	jne    804a390 <array.2956+0x138>
 804a31d:	65 64 20 74 68 65    	gs and %dh,%fs:0x65(%eax,%ebp,2)
 804a323:	20 62 6f             	and    %ah,0x6f(%edx)
 804a326:	6d                   	insl   (%dx),%es:(%edi)
 804a327:	62 21                	bound  %esp,(%ecx)
 804a329:	00 57 65             	add    %dl,0x65(%edi)
 804a32c:	6c                   	insb   (%dx),%es:(%edi)
 804a32d:	6c                   	insb   (%dx),%es:(%edi)
 804a32e:	2e 2e 2e 00 4f 4b    	cs cs add %cl,%cs:0x4b(%edi)
 804a334:	2e 20 3a             	and    %bh,%cs:(%edx)
 804a337:	2d 29 00 49 6e       	sub    $0x6e490029,%eax
 804a33c:	76 61                	jbe    804a39f <array.2956+0x147>
 804a33e:	6c                   	insb   (%dx),%es:(%edi)
 804a33f:	69 64 20 70 68 61 73 	imul   $0x65736168,0x70(%eax,%eiz,1),%esp
 804a346:	65 
 804a347:	25 73 0a 00 0a       	and    $0xa000a73,%eax
 804a34c:	42                   	inc    %edx
 804a34d:	4f                   	dec    %edi
 804a34e:	4f                   	dec    %edi
 804a34f:	4d                   	dec    %ebp
 804a350:	21 21                	and    %esp,(%ecx)
 804a352:	21 00                	and    %eax,(%eax)
 804a354:	54                   	push   %esp
 804a355:	68 65 20 62 6f       	push   $0x6f622065
 804a35a:	6d                   	insl   (%dx),%es:(%edi)
 804a35b:	62 20                	bound  %esp,(%eax)
 804a35d:	68 61 73 20 62       	push   $0x62207361
 804a362:	6c                   	insb   (%dx),%es:(%edi)
 804a363:	6f                   	outsl  %ds:(%esi),(%dx)
 804a364:	77 6e                	ja     804a3d4 <array.2956+0x17c>
 804a366:	20 75 70             	and    %dh,0x70(%ebp)
 804a369:	2e 00 45 72          	add    %al,%cs:0x72(%ebp)
 804a36d:	72 6f                	jb     804a3de <array.2956+0x186>
 804a36f:	72 3a                	jb     804a3ab <array.2956+0x153>
 804a371:	20 50 72             	and    %dl,0x72(%eax)
 804a374:	65 6d                	gs insl (%dx),%es:(%edi)
 804a376:	61                   	popa   
 804a377:	74 75                	je     804a3ee <array.2956+0x196>
 804a379:	72 65                	jb     804a3e0 <array.2956+0x188>
 804a37b:	20 45 4f             	and    %al,0x4f(%ebp)
 804a37e:	46                   	inc    %esi
 804a37f:	20 6f 6e             	and    %ch,0x6e(%edi)
 804a382:	20 73 74             	and    %dh,0x74(%ebx)
 804a385:	64 69 6e 00 47 52 41 	imul   $0x44415247,%fs:0x0(%esi),%ebp
 804a38c:	44 
 804a38d:	45                   	inc    %ebp
 804a38e:	5f                   	pop    %edi
 804a38f:	42                   	inc    %edx
 804a390:	4f                   	dec    %edi
 804a391:	4d                   	dec    %ebp
 804a392:	42                   	inc    %edx
 804a393:	00 45 72             	add    %al,0x72(%ebp)
 804a396:	72 6f                	jb     804a407 <array.2956+0x1af>
 804a398:	72 3a                	jb     804a3d4 <array.2956+0x17c>
 804a39a:	20 49 6e             	and    %cl,0x6e(%ecx)
 804a39d:	70 75                	jo     804a414 <array.2956+0x1bc>
 804a39f:	74 20                	je     804a3c1 <array.2956+0x169>
 804a3a1:	6c                   	insb   (%dx),%es:(%edi)
 804a3a2:	69 6e 65 20 74 6f 6f 	imul   $0x6f6f7420,0x65(%esi),%ebp
 804a3a9:	20 6c 6f 6e          	and    %ch,0x6e(%edi,%ebp,2)
 804a3ad:	67 00 2a             	add    %ch,(%bp,%si)
 804a3b0:	2a 2a                	sub    (%edx),%ch
 804a3b2:	74 72                	je     804a426 <array.2956+0x1ce>
 804a3b4:	75 6e                	jne    804a424 <array.2956+0x1cc>
 804a3b6:	63 61 74             	arpl   %sp,0x74(%ecx)
 804a3b9:	65 64 2a 2a          	gs sub %fs:(%edx),%ch
 804a3bd:	2a 00                	sub    (%eax),%al
 804a3bf:	25 64 20 25 64       	and    $0x64252064,%eax
 804a3c4:	20 25 64 20 25 64    	and    %ah,0x64252064
 804a3ca:	20 25 64 20 25 64    	and    %ah,0x64252064
 804a3d0:	00 25 64 20 25 64    	add    %ah,0x64252064
 804a3d6:	20 25 73 00 44 72    	and    %ah,0x72440073
 804a3dc:	45                   	inc    %ebp
 804a3dd:	76 69                	jbe    804a448 <array.2956+0x1f0>
 804a3df:	6c                   	insb   (%dx),%es:(%edi)
 804a3e0:	00 75 62             	add    %dh,0x62(%ebp)
 804a3e3:	75 6e                	jne    804a453 <array.2956+0x1fb>
 804a3e5:	74 75                	je     804a45c <array.2956+0x204>
 804a3e7:	00 50 72             	add    %dl,0x72(%eax)
 804a3ea:	6f                   	outsl  %ds:(%esi),(%dx)
 804a3eb:	67 72 61             	addr16 jb 804a44f <array.2956+0x1f7>
 804a3ee:	6d                   	insl   (%dx),%es:(%edi)
 804a3ef:	20 74 69 6d          	and    %dh,0x6d(%ecx,%ebp,2)
 804a3f3:	65 64 20 6f 75       	gs and %ch,%fs:0x75(%edi)
 804a3f8:	74 20                	je     804a41a <array.2956+0x1c2>
 804a3fa:	61                   	popa   
 804a3fb:	66 74 65             	data16 je 804a463 <array.2956+0x20b>
 804a3fe:	72 20                	jb     804a420 <array.2956+0x1c8>
 804a400:	25 64 20 73 65       	and    $0x65732064,%eax
 804a405:	63 6f 6e             	arpl   %bp,0x6e(%edi)
 804a408:	64 73 0a             	fs jae 804a415 <array.2956+0x1bd>
 804a40b:	00 45 72             	add    %al,0x72(%ebp)
 804a40e:	72 6f                	jb     804a47f <array.2956+0x227>
 804a410:	72 3a                	jb     804a44c <array.2956+0x1f4>
 804a412:	20 52 65             	and    %dl,0x65(%edx)
 804a415:	73 75                	jae    804a48c <array.2956+0x234>
 804a417:	6c                   	insb   (%dx),%es:(%edi)
 804a418:	74 20                	je     804a43a <array.2956+0x1e2>
 804a41a:	73 74                	jae    804a490 <array.2956+0x238>
 804a41c:	72 69                	jb     804a487 <array.2956+0x22f>
 804a41e:	6e                   	outsb  %ds:(%esi),(%dx)
 804a41f:	67 20 63 6f          	and    %ah,0x6f(%bp,%di)
 804a423:	6e                   	outsb  %ds:(%esi),(%dx)
 804a424:	74 61                	je     804a487 <array.2956+0x22f>
 804a426:	69 6e 73 20 61 6e 20 	imul   $0x206e6120,0x73(%esi),%ebp
 804a42d:	69 6c 6c 65 67 61 6c 	imul   $0x206c6167,0x65(%esp,%ebp,2),%ebp
 804a434:	20 
 804a435:	6f                   	outsl  %ds:(%esi),(%dx)
 804a436:	72 20                	jb     804a458 <array.2956+0x200>
 804a438:	75 6e                	jne    804a4a8 <array.2956+0x250>
 804a43a:	70 72                	jo     804a4ae <array.2956+0x256>
 804a43c:	69 6e 74 61 62 6c 65 	imul   $0x656c6261,0x74(%esi),%ebp
 804a443:	20 63 68             	and    %ah,0x68(%ebx)
 804a446:	61                   	popa   
 804a447:	72 61                	jb     804a4aa <array.2956+0x252>
 804a449:	63 74 65 72          	arpl   %si,0x72(%ebp,%eiz,2)
 804a44d:	2e 00 00             	add    %al,%cs:(%eax)
 804a450:	45                   	inc    %ebp
 804a451:	72 72                	jb     804a4c5 <array.2956+0x26d>
 804a453:	6f                   	outsl  %ds:(%esi),(%dx)
 804a454:	72 3a                	jb     804a490 <array.2956+0x238>
 804a456:	20 48 54             	and    %cl,0x54(%eax)
 804a459:	54                   	push   %esp
 804a45a:	50                   	push   %eax
 804a45b:	20 72 65             	and    %dh,0x65(%edx)
 804a45e:	71 75                	jno    804a4d5 <array.2956+0x27d>
 804a460:	65 73 74             	gs jae 804a4d7 <array.2956+0x27f>
 804a463:	20 66 61             	and    %ah,0x61(%esi)
 804a466:	69 6c 65 64 20 77 69 	imul   $0x74697720,0x64(%ebp,%eiz,2),%ebp
 804a46d:	74 
 804a46e:	68 20 65 72 72       	push   $0x72726520
 804a473:	6f                   	outsl  %ds:(%esi),(%dx)
 804a474:	72 20                	jb     804a496 <array.2956+0x23e>
 804a476:	25 64 3a 20 25       	and    $0x25203a64,%eax
 804a47b:	73 00                	jae    804a47d <array.2956+0x225>
 804a47d:	00 00                	add    %al,(%eax)
 804a47f:	00 47 45             	add    %al,0x45(%edi)
 804a482:	54                   	push   %esp
 804a483:	20 2f                	and    %ch,(%edi)
 804a485:	25 73 2f 73 75       	and    $0x75732f73,%eax
 804a48a:	62 6d 69             	bound  %ebp,0x69(%ebp)
 804a48d:	74 72                	je     804a501 <array.2956+0x2a9>
 804a48f:	2e 70 6c             	jo,pn  804a4fe <array.2956+0x2a6>
 804a492:	2f                   	das    
 804a493:	3f                   	aas    
 804a494:	75 73                	jne    804a509 <array.2956+0x2b1>
 804a496:	65 72 69             	gs jb  804a502 <array.2956+0x2aa>
 804a499:	64 3d 25 73 26 6c    	fs cmp $0x6c267325,%eax
 804a49f:	61                   	popa   
 804a4a0:	62 3d 25 73 26 72    	bound  %edi,0x72267325
 804a4a6:	65 73 75             	gs jae 804a51e <array.2956+0x2c6>
 804a4a9:	6c                   	insb   (%dx),%es:(%edi)
 804a4aa:	74 3d                	je     804a4e9 <array.2956+0x291>
 804a4ac:	25 73 26 73 75       	and    $0x75732673,%eax
 804a4b1:	62 6d 69             	bound  %ebp,0x69(%ebp)
 804a4b4:	74 3d                	je     804a4f3 <array.2956+0x29b>
 804a4b6:	73 75                	jae    804a52d <array.2956+0x2d5>
 804a4b8:	62 6d 69             	bound  %ebp,0x69(%ebp)
 804a4bb:	74 20                	je     804a4dd <array.2956+0x285>
 804a4bd:	48                   	dec    %eax
 804a4be:	54                   	push   %esp
 804a4bf:	54                   	push   %esp
 804a4c0:	50                   	push   %eax
 804a4c1:	2f                   	das    
 804a4c2:	31 2e                	xor    %ebp,(%esi)
 804a4c4:	30 0d 0a 0d 0a 00    	xor    %cl,0xa0d0a
 804a4ca:	00 00                	add    %al,(%eax)
 804a4cc:	45                   	inc    %ebp
 804a4cd:	72 72                	jb     804a541 <array.2956+0x2e9>
 804a4cf:	6f                   	outsl  %ds:(%esi),(%dx)
 804a4d0:	72 3a                	jb     804a50c <array.2956+0x2b4>
 804a4d2:	20 55 6e             	and    %dl,0x6e(%ebp)
 804a4d5:	61                   	popa   
 804a4d6:	62 6c 65 20          	bound  %ebp,0x20(%ebp,%eiz,2)
 804a4da:	74 6f                	je     804a54b <array.2956+0x2f3>
 804a4dc:	20 63 6f             	and    %ah,0x6f(%ebx)
 804a4df:	6e                   	outsb  %ds:(%esi),(%dx)
 804a4e0:	6e                   	outsb  %ds:(%esi),(%dx)
 804a4e1:	65 63 74 20 74       	arpl   %si,%gs:0x74(%eax,%eiz,1)
 804a4e6:	6f                   	outsl  %ds:(%esi),(%dx)
 804a4e7:	20 73 65             	and    %dh,0x65(%ebx)
 804a4ea:	72 76                	jb     804a562 <array.2956+0x30a>
 804a4ec:	65 72 20             	gs jb  804a50f <array.2956+0x2b7>
 804a4ef:	25 73 00 00 00       	and    $0x73,%eax
 804a4f4:	25 25 25 30 32       	and    $0x32302525,%eax
 804a4f9:	58                   	pop    %eax
 804a4fa:	00 25 73 20 25 64    	add    %ah,0x64252073
 804a500:	20 25 5b 61 2d 7a    	and    %ah,0x7a2d615b
 804a506:	41                   	inc    %ecx
 804a507:	2d 7a 20 5d 00       	sub    $0x5d207a,%eax
 804a50c:	62 6f 6d             	bound  %ebp,0x6d(%edi)
 804a50f:	62 6c 61 62          	bound  %ebp,0x62(%ecx,%eiz,2)
 804a513:	2e 68 6e 75 2e 65    	cs push $0x652e756e
 804a519:	64 75 2e             	fs jne 804a54a <array.2956+0x2f2>
 804a51c:	63 6e 00             	arpl   %bp,0x0(%esi)
 804a51f:	0a 41 55             	or     0x55(%ecx),%al
 804a522:	54                   	push   %esp
 804a523:	4f                   	dec    %edi
 804a524:	52                   	push   %edx
 804a525:	45                   	inc    %ebp
 804a526:	53                   	push   %ebx
 804a527:	55                   	push   %ebp
 804a528:	4c                   	dec    %esp
 804a529:	54                   	push   %esp
 804a52a:	5f                   	pop    %edi
 804a52b:	53                   	push   %ebx
 804a52c:	54                   	push   %esp
 804a52d:	52                   	push   %edx
 804a52e:	49                   	dec    %ecx
 804a52f:	4e                   	dec    %esi
 804a530:	47                   	inc    %edi
 804a531:	3d 25 73 0a 00       	cmp    $0xa7325,%eax
 804a536:	66 31 32             	xor    %si,(%edx)
 804a539:	00 63 73             	add    %ah,0x73(%ebx)
 804a53c:	61                   	popa   
 804a53d:	70 70                	jo     804a5af <array.2956+0x357>
	...

Disassembly of section .eh_frame_hdr:

0804a540 <.eh_frame_hdr>:
 804a540:	01 1b                	add    %ebx,(%ebx)
 804a542:	03 3b                	add    (%ebx),%edi
 804a544:	08 01                	or     %al,(%ecx)
 804a546:	00 00                	add    %al,(%eax)
 804a548:	20 00                	and    %al,(%eax)
 804a54a:	00 00                	add    %al,(%eax)
 804a54c:	20 e2                	and    %ah,%dl
 804a54e:	ff                   	(bad)  
 804a54f:	ff 24 01             	jmp    *(%ecx,%eax,1)
 804a552:	00 00                	add    %al,(%eax)
 804a554:	a4                   	movsb  %ds:(%esi),%es:(%edi)
 804a555:	e4 ff                	in     $0xff,%al
 804a557:	ff 48 01             	decl   0x1(%eax)
 804a55a:	00 00                	add    %al,(%eax)
 804a55c:	10 e6                	adc    %ah,%dh
 804a55e:	ff                   	(bad)  
 804a55f:	ff 6c 01 00          	ljmp   *0x0(%ecx,%eax,1)
 804a563:	00 34 e6             	add    %dh,(%esi,%eiz,8)
 804a566:	ff                   	(bad)  
 804a567:	ff 84 01 00 00 84 e6 	incl   -0x197c0000(%ecx,%eax,1)
 804a56e:	ff                   	(bad)  
 804a56f:	ff b0 01 00 00 42    	pushl  0x42000001(%eax)
 804a575:	e7 ff                	out    %eax,$0xff
 804a577:	ff c8                	dec    %eax
 804a579:	01 00                	add    %eax,(%eax)
 804a57b:	00 ab e7 ff ff e8    	add    %ch,-0x17000019(%ebx)
 804a581:	01 00                	add    %eax,(%eax)
 804a583:	00 1a                	add    %bl,(%edx)
 804a585:	e8 ff ff 00 02       	call   a05a589 <_end+0x200db19>
 804a58a:	00 00                	add    %al,(%eax)
 804a58c:	9c                   	pushf  
 804a58d:	e8 ff ff 24 02       	call   a29a591 <_end+0x224db21>
 804a592:	00 00                	add    %al,(%eax)
 804a594:	71 e9                	jno    804a57f <array.2956+0x327>
 804a596:	ff                   	(bad)  
 804a597:	ff 50 02             	call   *0x2(%eax)
 804a59a:	00 00                	add    %al,(%eax)
 804a59c:	c2 e9 ff             	ret    $0xffe9
 804a59f:	ff 74 02 00          	pushl  0x0(%edx,%eax,1)
 804a5a3:	00 30                	add    %dh,(%eax)
 804a5a5:	ea ff ff 98 02 00 00 	ljmp   $0x0,$0x298ffff
 804a5ac:	90                   	nop
 804a5ad:	ea ff ff ac 02 00 00 	ljmp   $0x0,$0x2acffff
 804a5b4:	bb ea ff ff c0       	mov    $0xc0ffffea,%ebx
 804a5b9:	02 00                	add    (%eax),%al
 804a5bb:	00 d4                	add    %dl,%ah
 804a5bd:	ea ff ff d4 02 00 00 	ljmp   $0x0,$0x2d4ffff
 804a5c4:	4b                   	dec    %ebx
 804a5c5:	eb ff                	jmp    804a5c6 <array.2956+0x36e>
 804a5c7:	ff                   	(bad)  
 804a5c8:	f8                   	clc    
 804a5c9:	02 00                	add    (%eax),%al
 804a5cb:	00 66 eb             	add    %ah,-0x15(%esi)
 804a5ce:	ff                   	(bad)  
 804a5cf:	ff 10                	call   *(%eax)
 804a5d1:	03 00                	add    (%eax),%eax
 804a5d3:	00 68 eb             	add    %ch,-0x15(%eax)
 804a5d6:	ff                   	(bad)  
 804a5d7:	ff 24 03             	jmp    *(%ebx,%eax,1)
 804a5da:	00 00                	add    %al,(%eax)
 804a5dc:	a0 eb ff ff 50       	mov    0x50ffffeb,%al
 804a5e1:	03 00                	add    (%eax),%eax
 804a5e3:	00 e6                	add    %ah,%dh
 804a5e5:	eb ff                	jmp    804a5e6 <array.2956+0x38e>
 804a5e7:	ff 74 03 00          	pushl  0x0(%ebx,%eax,1)
 804a5eb:	00 0d ec ff ff 88    	add    %cl,0x88ffffec
 804a5f1:	03 00                	add    (%eax),%eax
 804a5f3:	00 1b                	add    %bl,(%ebx)
 804a5f5:	ed                   	in     (%dx),%eax
 804a5f6:	ff                   	(bad)  
 804a5f7:	ff ac 03 00 00 6b ed 	ljmp   *-0x12950000(%ebx,%eax,1)
 804a5fe:	ff                   	(bad)  
 804a5ff:	ff c4                	inc    %esp
 804a601:	03 00                	add    (%eax),%eax
 804a603:	00 20                	add    %ah,(%eax)
 804a605:	ee                   	out    %al,(%dx)
 804a606:	ff                   	(bad)  
 804a607:	ff e0                	jmp    *%eax
 804a609:	03 00                	add    (%eax),%eax
 804a60b:	00 39                	add    %bh,(%ecx)
 804a60d:	ef                   	out    %eax,(%dx)
 804a60e:	ff                   	(bad)  
 804a60f:	ff 20                	jmp    *(%eax)
 804a611:	04 00                	add    $0x0,%al
 804a613:	00 6d ef             	add    %ch,-0x11(%ebp)
 804a616:	ff                   	(bad)  
 804a617:	ff 34 04             	pushl  (%esp,%eax,1)
 804a61a:	00 00                	add    %al,(%eax)
 804a61c:	ba f7 ff ff 74       	mov    $0x74fffff7,%edx
 804a621:	04 00                	add    $0x0,%al
 804a623:	00 f1                	add    %dh,%cl
 804a625:	f7 ff                	idiv   %edi
 804a627:	ff 94 04 00 00 ff f9 	call   *-0x6010000(%esp,%eax,1)
 804a62e:	ff                   	(bad)  
 804a62f:	ff c8                	dec    %eax
 804a631:	04 00                	add    $0x0,%al
 804a633:	00 90 fa ff ff ec    	add    %dl,-0x13000006(%eax)
 804a639:	04 00                	add    $0x0,%al
 804a63b:	00 00                	add    %al,(%eax)
 804a63d:	fb                   	sti    
 804a63e:	ff                   	(bad)  
 804a63f:	ff 28                	ljmp   *(%eax)
 804a641:	05 00 00 02 fb       	add    $0xfb020000,%eax
 804a646:	ff                   	(bad)  
 804a647:	ff                   	(bad)  
 804a648:	3c 05                	cmp    $0x5,%al
	...

Disassembly of section .eh_frame:

0804a64c <__FRAME_END__-0x444>:
 804a64c:	14 00                	adc    $0x0,%al
 804a64e:	00 00                	add    %al,(%eax)
 804a650:	00 00                	add    %al,(%eax)
 804a652:	00 00                	add    %al,(%eax)
 804a654:	01 7a 52             	add    %edi,0x52(%edx)
 804a657:	00 01                	add    %al,(%ecx)
 804a659:	7c 08                	jl     804a663 <array.2956+0x40b>
 804a65b:	01 1b                	add    %ebx,(%ebx)
 804a65d:	0c 04                	or     $0x4,%al
 804a65f:	04 88                	add    $0x88,%al
 804a661:	01 00                	add    %eax,(%eax)
 804a663:	00 20                	add    %ah,(%eax)
 804a665:	00 00                	add    %al,(%eax)
 804a667:	00 1c 00             	add    %bl,(%eax,%eax,1)
 804a66a:	00 00                	add    %al,(%eax)
 804a66c:	f4                   	hlt    
 804a66d:	e0 ff                	loopne 804a66e <array.2956+0x416>
 804a66f:	ff d0                	call   *%eax
 804a671:	01 00                	add    %eax,(%eax)
 804a673:	00 00                	add    %al,(%eax)
 804a675:	0e                   	push   %cs
 804a676:	08 46 0e             	or     %al,0xe(%esi)
 804a679:	0c 4a                	or     $0x4a,%al
 804a67b:	0f 0b                	ud2    
 804a67d:	74 04                	je     804a683 <array.2956+0x42b>
 804a67f:	78 00                	js     804a681 <array.2956+0x429>
 804a681:	3f                   	aas    
 804a682:	1a 3b                	sbb    (%ebx),%bh
 804a684:	2a 32                	sub    (%edx),%dh
 804a686:	24 22                	and    $0x22,%al
 804a688:	20 00                	and    %al,(%eax)
 804a68a:	00 00                	add    %al,(%eax)
 804a68c:	40                   	inc    %eax
 804a68d:	00 00                	add    %al,(%eax)
 804a68f:	00 54 e3 ff          	add    %dl,-0x1(%ebx,%eiz,8)
 804a693:	ff 64 01 00          	jmp    *0x0(%ecx,%eax,1)
 804a697:	00 00                	add    %al,(%eax)
 804a699:	41                   	inc    %ecx
 804a69a:	0e                   	push   %cs
 804a69b:	08 85 02 42 0d 05    	or     %al,0x50d4202(%ebp)
 804a6a1:	4d                   	dec    %ebp
 804a6a2:	83 03 03             	addl   $0x3,(%ebx)
 804a6a5:	53                   	push   %ebx
 804a6a6:	01 c5                	add    %eax,%ebp
 804a6a8:	0c 04                	or     $0x4,%al
 804a6aa:	04 c3                	add    $0xc3,%al
 804a6ac:	14 00                	adc    $0x0,%al
 804a6ae:	00 00                	add    %al,(%eax)
 804a6b0:	64 00 00             	add    %al,%fs:(%eax)
 804a6b3:	00 9c e4 ff ff 24 00 	add    %bl,0x24ffff(%esp,%eiz,8)
 804a6ba:	00 00                	add    %al,(%eax)
 804a6bc:	00 43 0e             	add    %al,0xe(%ebx)
 804a6bf:	20 60 0e             	and    %ah,0xe(%eax)
 804a6c2:	04 00                	add    $0x0,%al
 804a6c4:	28 00                	sub    %al,(%eax)
 804a6c6:	00 00                	add    %al,(%eax)
 804a6c8:	7c 00                	jl     804a6ca <array.2956+0x472>
 804a6ca:	00 00                	add    %al,(%eax)
 804a6cc:	a8 e4                	test   $0xe4,%al
 804a6ce:	ff                   	(bad)  
 804a6cf:	ff 50 00             	call   *0x0(%eax)
 804a6d2:	00 00                	add    %al,(%eax)
 804a6d4:	00 41 0e             	add    %al,0xe(%ecx)
 804a6d7:	08 86 02 41 0e 0c    	or     %al,0xc0e4102(%esi)
 804a6dd:	83 03 43             	addl   $0x43,(%ebx)
 804a6e0:	0e                   	push   %cs
 804a6e1:	40                   	inc    %eax
 804a6e2:	02 48 0e             	add    0xe(%eax),%cl
 804a6e5:	0c 41                	or     $0x41,%al
 804a6e7:	0e                   	push   %cs
 804a6e8:	08 c3                	or     %al,%bl
 804a6ea:	41                   	inc    %ecx
 804a6eb:	0e                   	push   %cs
 804a6ec:	04 c6                	add    $0xc6,%al
 804a6ee:	00 00                	add    %al,(%eax)
 804a6f0:	14 00                	adc    $0x0,%al
 804a6f2:	00 00                	add    %al,(%eax)
 804a6f4:	a8 00                	test   $0x0,%al
 804a6f6:	00 00                	add    %al,(%eax)
 804a6f8:	cc                   	int3   
 804a6f9:	e4 ff                	in     $0xff,%al
 804a6fb:	ff                   	(bad)  
 804a6fc:	be 00 00 00 00       	mov    $0x0,%esi
 804a701:	43                   	inc    %ebx
 804a702:	0e                   	push   %cs
 804a703:	30 02                	xor    %al,(%edx)
 804a705:	ba 0e 04 1c 00       	mov    $0x1c040e,%edx
 804a70a:	00 00                	add    %al,(%eax)
 804a70c:	c0 00 00             	rolb   $0x0,(%eax)
 804a70f:	00 72 e5             	add    %dh,-0x1b(%edx)
 804a712:	ff                   	(bad)  
 804a713:	ff 69 00             	ljmp   *0x0(%ecx)
 804a716:	00 00                	add    %al,(%eax)
 804a718:	00 43 0e             	add    %al,0xe(%ebx)
 804a71b:	20 54 86 02          	and    %dl,0x2(%esi,%eax,4)
 804a71f:	83 03 02             	addl   $0x2,(%ebx)
 804a722:	51                   	push   %ecx
 804a723:	0e                   	push   %cs
 804a724:	04 c6                	add    $0xc6,%al
 804a726:	c3                   	ret    
 804a727:	00 14 00             	add    %dl,(%eax,%eax,1)
 804a72a:	00 00                	add    %al,(%eax)
 804a72c:	e0 00                	loopne 804a72e <array.2956+0x4d6>
 804a72e:	00 00                	add    %al,(%eax)
 804a730:	bb e5 ff ff 6f       	mov    $0x6fffffe5,%ebx
 804a735:	00 00                	add    %al,(%eax)
 804a737:	00 00                	add    %al,(%eax)
 804a739:	43                   	inc    %ebx
 804a73a:	0e                   	push   %cs
 804a73b:	30 02                	xor    %al,(%edx)
 804a73d:	6b 0e 04             	imul   $0x4,(%esi),%ecx
 804a740:	20 00                	and    %al,(%eax)
 804a742:	00 00                	add    %al,(%eax)
 804a744:	f8                   	clc    
 804a745:	00 00                	add    %al,(%eax)
 804a747:	00 12                	add    %dl,(%edx)
 804a749:	e6 ff                	out    %al,$0xff
 804a74b:	ff 82 00 00 00 00    	incl   0x0(%edx)
 804a751:	41                   	inc    %ecx
 804a752:	0e                   	push   %cs
 804a753:	08 83 02 43 0e 30    	or     %al,0x300e4302(%ebx)
 804a759:	02 7c 0e 08          	add    0x8(%esi,%ecx,1),%bh
 804a75d:	41                   	inc    %ecx
 804a75e:	0e                   	push   %cs
 804a75f:	04 c3                	add    $0xc3,%al
 804a761:	00 00                	add    %al,(%eax)
 804a763:	00 28                	add    %ch,(%eax)
 804a765:	00 00                	add    %al,(%eax)
 804a767:	00 1c 01             	add    %bl,(%ecx,%eax,1)
 804a76a:	00 00                	add    %al,(%eax)
 804a76c:	70 e6                	jo     804a754 <array.2956+0x4fc>
 804a76e:	ff                   	(bad)  
 804a76f:	ff d5                	call   *%ebp
 804a771:	00 00                	add    %al,(%eax)
 804a773:	00 00                	add    %al,(%eax)
 804a775:	41                   	inc    %ecx
 804a776:	0e                   	push   %cs
 804a777:	08 86 02 41 0e 0c    	or     %al,0xc0e4102(%esi)
 804a77d:	83 03 43             	addl   $0x43,(%ebx)
 804a780:	0e                   	push   %cs
 804a781:	50                   	push   %eax
 804a782:	02 cd                	add    %ch,%cl
 804a784:	0e                   	push   %cs
 804a785:	0c 41                	or     $0x41,%al
 804a787:	0e                   	push   %cs
 804a788:	08 c3                	or     %al,%bl
 804a78a:	41                   	inc    %ecx
 804a78b:	0e                   	push   %cs
 804a78c:	04 c6                	add    $0xc6,%al
 804a78e:	00 00                	add    %al,(%eax)
 804a790:	20 00                	and    %al,(%eax)
 804a792:	00 00                	add    %al,(%eax)
 804a794:	48                   	dec    %eax
 804a795:	01 00                	add    %eax,(%eax)
 804a797:	00 19                	add    %bl,(%ecx)
 804a799:	e7 ff                	out    %eax,$0xff
 804a79b:	ff 51 00             	call   *0x0(%ecx)
 804a79e:	00 00                	add    %al,(%eax)
 804a7a0:	00 41 0e             	add    %al,0xe(%ecx)
 804a7a3:	08 83 02 43 0e 20    	or     %al,0x200e4302(%ebx)
 804a7a9:	02 4b 0e             	add    0xe(%ebx),%cl
 804a7ac:	08 41 0e             	or     %al,0xe(%ecx)
 804a7af:	04 c3                	add    $0xc3,%al
 804a7b1:	00 00                	add    %al,(%eax)
 804a7b3:	00 20                	add    %ah,(%eax)
 804a7b5:	00 00                	add    %al,(%eax)
 804a7b7:	00 6c 01 00          	add    %ch,0x0(%ecx,%eax,1)
 804a7bb:	00 46 e7             	add    %al,-0x19(%esi)
 804a7be:	ff                   	(bad)  
 804a7bf:	ff 62 00             	jmp    *0x0(%edx)
 804a7c2:	00 00                	add    %al,(%eax)
 804a7c4:	00 41 0e             	add    %al,0xe(%ecx)
 804a7c7:	08 83 02 43 0e 20    	or     %al,0x200e4302(%ebx)
 804a7cd:	02 5c 0e 08          	add    0x8(%esi,%ecx,1),%bl
 804a7d1:	41                   	inc    %ecx
 804a7d2:	0e                   	push   %cs
 804a7d3:	04 c3                	add    $0xc3,%al
 804a7d5:	00 00                	add    %al,(%eax)
 804a7d7:	00 10                	add    %dl,(%eax)
 804a7d9:	00 00                	add    %al,(%eax)
 804a7db:	00 90 01 00 00 90    	add    %dl,-0x6fffffff(%eax)
 804a7e1:	e7 ff                	out    %eax,$0xff
 804a7e3:	ff 60 00             	jmp    *0x0(%eax)
 804a7e6:	00 00                	add    %al,(%eax)
 804a7e8:	00 43 0e             	add    %al,0xe(%ebx)
 804a7eb:	20 10                	and    %dl,(%eax)
 804a7ed:	00 00                	add    %al,(%eax)
 804a7ef:	00 a4 01 00 00 dc e7 	add    %ah,-0x18240000(%ecx,%eax,1)
 804a7f6:	ff                   	(bad)  
 804a7f7:	ff 2b                	ljmp   *(%ebx)
 804a7f9:	00 00                	add    %al,(%eax)
 804a7fb:	00 00                	add    %al,(%eax)
 804a7fd:	43                   	inc    %ebx
 804a7fe:	0e                   	push   %cs
 804a7ff:	20 10                	and    %dl,(%eax)
 804a801:	00 00                	add    %al,(%eax)
 804a803:	00 b8 01 00 00 f3    	add    %bh,-0xcffffff(%eax)
 804a809:	e7 ff                	out    %eax,$0xff
 804a80b:	ff 19                	lcall  *(%ecx)
 804a80d:	00 00                	add    %al,(%eax)
 804a80f:	00 00                	add    %al,(%eax)
 804a811:	00 00                	add    %al,(%eax)
 804a813:	00 20                	add    %ah,(%eax)
 804a815:	00 00                	add    %al,(%eax)
 804a817:	00 cc                	add    %cl,%ah
 804a819:	01 00                	add    %eax,(%eax)
 804a81b:	00 f8                	add    %bh,%al
 804a81d:	e7 ff                	out    %eax,$0xff
 804a81f:	ff 77 00             	pushl  0x0(%edi)
 804a822:	00 00                	add    %al,(%eax)
 804a824:	00 43 0e             	add    %al,0xe(%ebx)
 804a827:	14 50                	adc    $0x50,%al
 804a829:	87 02                	xchg   %eax,(%edx)
 804a82b:	86 03                	xchg   %al,(%ebx)
 804a82d:	83 04 02 63          	addl   $0x63,(%edx,%eax,1)
 804a831:	0e                   	push   %cs
 804a832:	04 c7                	add    $0xc7,%al
 804a834:	c6 c3 00             	mov    $0x0,%bl
 804a837:	00 14 00             	add    %dl,(%eax,%eax,1)
 804a83a:	00 00                	add    %al,(%eax)
 804a83c:	f0 01 00             	lock add %eax,(%eax)
 804a83f:	00 4b e8             	add    %cl,-0x18(%ebx)
 804a842:	ff                   	(bad)  
 804a843:	ff 1b                	lcall  *(%ebx)
 804a845:	00 00                	add    %al,(%eax)
 804a847:	00 00                	add    %al,(%eax)
 804a849:	43                   	inc    %ebx
 804a84a:	0e                   	push   %cs
 804a84b:	20 57 0e             	and    %dl,0xe(%edi)
 804a84e:	04 00                	add    $0x0,%al
 804a850:	10 00                	adc    %al,(%eax)
 804a852:	00 00                	add    %al,(%eax)
 804a854:	08 02                	or     %al,(%edx)
 804a856:	00 00                	add    %al,(%eax)
 804a858:	4e                   	dec    %esi
 804a859:	e8 ff ff 02 00       	call   807a85d <_end+0x2dded>
 804a85e:	00 00                	add    %al,(%eax)
 804a860:	00 00                	add    %al,(%eax)
 804a862:	00 00                	add    %al,(%eax)
 804a864:	28 00                	sub    %al,(%eax)
 804a866:	00 00                	add    %al,(%eax)
 804a868:	1c 02                	sbb    $0x2,%al
 804a86a:	00 00                	add    %al,(%eax)
 804a86c:	3c e8                	cmp    $0xe8,%al
 804a86e:	ff                   	(bad)  
 804a86f:	ff                   	(bad)  
 804a870:	38 00                	cmp    %al,(%eax)
 804a872:	00 00                	add    %al,(%eax)
 804a874:	00 41 0e             	add    %al,0xe(%ecx)
 804a877:	08 86 02 41 0e 0c    	or     %al,0xc0e4102(%esi)
 804a87d:	83 03 43             	addl   $0x43,(%ebx)
 804a880:	0e                   	push   %cs
 804a881:	10 70 0e             	adc    %dh,0xe(%eax)
 804a884:	0c 41                	or     $0x41,%al
 804a886:	0e                   	push   %cs
 804a887:	08 c3                	or     %al,%bl
 804a889:	41                   	inc    %ecx
 804a88a:	0e                   	push   %cs
 804a88b:	04 c6                	add    $0xc6,%al
 804a88d:	00 00                	add    %al,(%eax)
 804a88f:	00 20                	add    %ah,(%eax)
 804a891:	00 00                	add    %al,(%eax)
 804a893:	00 48 02             	add    %cl,0x2(%eax)
 804a896:	00 00                	add    %al,(%eax)
 804a898:	48                   	dec    %eax
 804a899:	e8 ff ff 46 00       	call   84ba89d <_end+0x46de2d>
 804a89e:	00 00                	add    %al,(%eax)
 804a8a0:	00 41 0e             	add    %al,0xe(%ecx)
 804a8a3:	08 83 02 43 0e 20    	or     %al,0x200e4302(%ebx)
 804a8a9:	02 40 0e             	add    0xe(%eax),%al
 804a8ac:	08 41 0e             	or     %al,0xe(%ecx)
 804a8af:	04 c3                	add    $0xc3,%al
 804a8b1:	00 00                	add    %al,(%eax)
 804a8b3:	00 10                	add    %dl,(%eax)
 804a8b5:	00 00                	add    %al,(%eax)
 804a8b7:	00 6c 02 00          	add    %ch,0x0(%edx,%eax,1)
 804a8bb:	00 6a e8             	add    %ch,-0x18(%edx)
 804a8be:	ff                   	(bad)  
 804a8bf:	ff 27                	jmp    *(%edi)
 804a8c1:	00 00                	add    %al,(%eax)
 804a8c3:	00 00                	add    %al,(%eax)
 804a8c5:	43                   	inc    %ebx
 804a8c6:	0e                   	push   %cs
 804a8c7:	20 20                	and    %ah,(%eax)
 804a8c9:	00 00                	add    %al,(%eax)
 804a8cb:	00 80 02 00 00 7d    	add    %al,0x7d000002(%eax)
 804a8d1:	e8 ff ff 0e 01       	call   913a8d5 <_end+0x10ede65>
 804a8d6:	00 00                	add    %al,(%eax)
 804a8d8:	00 43 0e             	add    %al,0xe(%ebx)
 804a8db:	30 4c 87 02          	xor    %cl,0x2(%edi,%eax,4)
 804a8df:	86 03                	xchg   %al,(%ebx)
 804a8e1:	83 04 02 fe          	addl   $0xfffffffe,(%edx,%eax,1)
 804a8e5:	0e                   	push   %cs
 804a8e6:	04 c7                	add    $0xc7,%al
 804a8e8:	c6 c3 00             	mov    $0x0,%bl
 804a8eb:	00 14 00             	add    %dl,(%eax,%eax,1)
 804a8ee:	00 00                	add    %al,(%eax)
 804a8f0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
 804a8f1:	02 00                	add    (%eax),%al
 804a8f3:	00 67 e9             	add    %ah,-0x17(%edi)
 804a8f6:	ff                   	(bad)  
 804a8f7:	ff 50 00             	call   *0x0(%eax)
 804a8fa:	00 00                	add    %al,(%eax)
 804a8fc:	00 43 0e             	add    %al,0xe(%ebx)
 804a8ff:	30 02                	xor    %al,(%edx)
 804a901:	4c                   	dec    %esp
 804a902:	0e                   	push   %cs
 804a903:	04 18                	add    $0x18,%al
 804a905:	00 00                	add    %al,(%eax)
 804a907:	00 bc 02 00 00 9f e9 	add    %bh,-0x16610000(%edx,%eax,1)
 804a90e:	ff                   	(bad)  
 804a90f:	ff a6 00 00 00 00    	jmp    *0x0(%esi)
 804a915:	46                   	inc    %esi
 804a916:	0e                   	push   %cs
 804a917:	90                   	nop
 804a918:	01 02                	add    %eax,(%edx)
 804a91a:	9f                   	lahf   
 804a91b:	0e                   	push   %cs
 804a91c:	04 00                	add    $0x0,%al
 804a91e:	00 00                	add    %al,(%eax)
 804a920:	3c 00                	cmp    $0x0,%al
 804a922:	00 00                	add    %al,(%eax)
 804a924:	d8 02                	fadds  (%edx)
 804a926:	00 00                	add    %al,(%eax)
 804a928:	38 ea                	cmp    %ch,%dl
 804a92a:	ff                   	(bad)  
 804a92b:	ff 19                	lcall  *(%ecx)
 804a92d:	01 00                	add    %eax,(%eax)
 804a92f:	00 00                	add    %al,(%eax)
 804a931:	41                   	inc    %ecx
 804a932:	0e                   	push   %cs
 804a933:	08 85 02 41 0e 0c    	or     %al,0xc0e4102(%ebp)
 804a939:	87 03                	xchg   %eax,(%ebx)
 804a93b:	41                   	inc    %ecx
 804a93c:	0e                   	push   %cs
 804a93d:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
 804a943:	83 05 43 0e 50 02 e9 	addl   $0xffffffe9,0x2500e43
 804a94a:	0a 0e                	or     (%esi),%cl
 804a94c:	14 41                	adc    $0x41,%al
 804a94e:	0e                   	push   %cs
 804a94f:	10 c3                	adc    %al,%bl
 804a951:	41                   	inc    %ecx
 804a952:	0e                   	push   %cs
 804a953:	0c c6                	or     $0xc6,%al
 804a955:	41                   	inc    %ecx
 804a956:	0e                   	push   %cs
 804a957:	08 c7                	or     %al,%bh
 804a959:	41                   	inc    %ecx
 804a95a:	0e                   	push   %cs
 804a95b:	04 c5                	add    $0xc5,%al
 804a95d:	41                   	inc    %ecx
 804a95e:	0b 00                	or     (%eax),%eax
 804a960:	10 00                	adc    %al,(%eax)
 804a962:	00 00                	add    %al,(%eax)
 804a964:	18 03                	sbb    %al,(%ebx)
 804a966:	00 00                	add    %al,(%eax)
 804a968:	11 eb                	adc    %ebp,%ebx
 804a96a:	ff                   	(bad)  
 804a96b:	ff 34 00             	pushl  (%eax,%eax,1)
 804a96e:	00 00                	add    %al,(%eax)
 804a970:	00 43 0e             	add    %al,0xe(%ebx)
 804a973:	20 3c 00             	and    %bh,(%eax,%eax,1)
 804a976:	00 00                	add    %al,(%eax)
 804a978:	2c 03                	sub    $0x3,%al
 804a97a:	00 00                	add    %al,(%eax)
 804a97c:	31 eb                	xor    %ebp,%ebx
 804a97e:	ff                   	(bad)  
 804a97f:	ff 4d 08             	decl   0x8(%ebp)
 804a982:	00 00                	add    %al,(%eax)
 804a984:	00 41 0e             	add    %al,0xe(%ecx)
 804a987:	08 85 02 41 0e 0c    	or     %al,0xc0e4102(%ebp)
 804a98d:	87 03                	xchg   %eax,(%ebx)
 804a98f:	41                   	inc    %ecx
 804a990:	0e                   	push   %cs
 804a991:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
 804a997:	83 05 46 0e 90 c1 02 	addl   $0x2,0xc1900e46
 804a99e:	03 3e                	add    (%esi),%edi
 804a9a0:	08 0e                	or     %cl,(%esi)
 804a9a2:	14 41                	adc    $0x41,%al
 804a9a4:	0e                   	push   %cs
 804a9a5:	10 c3                	adc    %al,%bl
 804a9a7:	41                   	inc    %ecx
 804a9a8:	0e                   	push   %cs
 804a9a9:	0c c6                	or     $0xc6,%al
 804a9ab:	41                   	inc    %ecx
 804a9ac:	0e                   	push   %cs
 804a9ad:	08 c7                	or     %al,%bh
 804a9af:	41                   	inc    %ecx
 804a9b0:	0e                   	push   %cs
 804a9b1:	04 c5                	add    $0xc5,%al
 804a9b3:	00 1c 00             	add    %bl,(%eax,%eax,1)
 804a9b6:	00 00                	add    %al,(%eax)
 804a9b8:	6c                   	insb   (%dx),%es:(%edi)
 804a9b9:	03 00                	add    (%eax),%eax
 804a9bb:	00 3e                	add    %bh,(%esi)
 804a9bd:	f3 ff                	repz (bad) 
 804a9bf:	ff 37                	pushl  (%edi)
 804a9c1:	00 00                	add    %al,(%eax)
 804a9c3:	00 00                	add    %al,(%eax)
 804a9c5:	41                   	inc    %ecx
 804a9c6:	0e                   	push   %cs
 804a9c7:	08 83 02 43 0e 20    	or     %al,0x200e4302(%ebx)
 804a9cd:	71 0e                	jno    804a9dd <array.2956+0x785>
 804a9cf:	08 41 0e             	or     %al,0xe(%ecx)
 804a9d2:	04 c3                	add    $0xc3,%al
 804a9d4:	30 00                	xor    %al,(%eax)
 804a9d6:	00 00                	add    %al,(%eax)
 804a9d8:	8c 03                	mov    %es,(%ebx)
 804a9da:	00 00                	add    %al,(%eax)
 804a9dc:	55                   	push   %ebp
 804a9dd:	f3 ff                	repz (bad) 
 804a9df:	ff 0e                	decl   (%esi)
 804a9e1:	02 00                	add    (%eax),%al
 804a9e3:	00 00                	add    %al,(%eax)
 804a9e5:	41                   	inc    %ecx
 804a9e6:	0e                   	push   %cs
 804a9e7:	08 87 02 41 0e 0c    	or     %al,0xc0e4102(%edi)
 804a9ed:	86 03                	xchg   %al,(%ebx)
 804a9ef:	41                   	inc    %ecx
 804a9f0:	0e                   	push   %cs
 804a9f1:	10 83 04 43 0e 50    	adc    %al,0x500e4304(%ebx)
 804a9f7:	03 04 02             	add    (%edx,%eax,1),%eax
 804a9fa:	0e                   	push   %cs
 804a9fb:	10 41 0e             	adc    %al,0xe(%ecx)
 804a9fe:	0c c3                	or     $0xc3,%al
 804aa00:	41                   	inc    %ecx
 804aa01:	0e                   	push   %cs
 804aa02:	08 c6                	or     %al,%dh
 804aa04:	41                   	inc    %ecx
 804aa05:	0e                   	push   %cs
 804aa06:	04 c7                	add    $0xc7,%al
 804aa08:	20 00                	and    %al,(%eax)
 804aa0a:	00 00                	add    %al,(%eax)
 804aa0c:	c0 03 00             	rolb   $0x0,(%ebx)
 804aa0f:	00 2f                	add    %ch,(%edi)
 804aa11:	f5                   	cmc    
 804aa12:	ff                   	(bad)  
 804aa13:	ff 8d 00 00 00 00    	decl   0x0(%ebp)
 804aa19:	41                   	inc    %ecx
 804aa1a:	0e                   	push   %cs
 804aa1b:	08 83 02 43 0e 30    	or     %al,0x300e4302(%ebx)
 804aa21:	02 87 0e 08 41 0e    	add    0xe41080e(%edi),%al
 804aa27:	04 c3                	add    $0xc3,%al
 804aa29:	00 00                	add    %al,(%eax)
 804aa2b:	00 38                	add    %bh,(%eax)
 804aa2d:	00 00                	add    %al,(%eax)
 804aa2f:	00 e4                	add    %ah,%ah
 804aa31:	03 00                	add    (%eax),%eax
 804aa33:	00 9c f5 ff ff 61 00 	add    %bl,0x61ffff(%ebp,%esi,8)
 804aa3a:	00 00                	add    %al,(%eax)
 804aa3c:	00 41 0e             	add    %al,0xe(%ecx)
 804aa3f:	08 85 02 41 0e 0c    	or     %al,0xc0e4102(%ebp)
 804aa45:	87 03                	xchg   %eax,(%ebx)
 804aa47:	41                   	inc    %ecx
 804aa48:	0e                   	push   %cs
 804aa49:	10 86 04 41 0e 14    	adc    %al,0x140e4104(%esi)
 804aa4f:	83 05 4e 0e 30 02 4a 	addl   $0x4a,0x2300e4e
 804aa56:	0e                   	push   %cs
 804aa57:	14 41                	adc    $0x41,%al
 804aa59:	0e                   	push   %cs
 804aa5a:	10 c3                	adc    %al,%bl
 804aa5c:	41                   	inc    %ecx
 804aa5d:	0e                   	push   %cs
 804aa5e:	0c c6                	or     $0xc6,%al
 804aa60:	41                   	inc    %ecx
 804aa61:	0e                   	push   %cs
 804aa62:	08 c7                	or     %al,%bh
 804aa64:	41                   	inc    %ecx
 804aa65:	0e                   	push   %cs
 804aa66:	04 c5                	add    $0xc5,%al
 804aa68:	10 00                	adc    %al,(%eax)
 804aa6a:	00 00                	add    %al,(%eax)
 804aa6c:	20 04 00             	and    %al,(%eax,%eax,1)
 804aa6f:	00 d0                	add    %dl,%al
 804aa71:	f5                   	cmc    
 804aa72:	ff                   	(bad)  
 804aa73:	ff 02                	incl   (%edx)
 804aa75:	00 00                	add    %al,(%eax)
 804aa77:	00 00                	add    %al,(%eax)
 804aa79:	00 00                	add    %al,(%eax)
 804aa7b:	00 10                	add    %dl,(%eax)
 804aa7d:	00 00                	add    %al,(%eax)
 804aa7f:	00 34 04             	add    %dh,(%esp,%eax,1)
 804aa82:	00 00                	add    %al,(%eax)
 804aa84:	be f5 ff ff 04       	mov    $0x4fffff5,%esi
 804aa89:	00 00                	add    %al,(%eax)
 804aa8b:	00 00                	add    %al,(%eax)
 804aa8d:	00 00                	add    %al,(%eax)
	...

0804aa90 <__FRAME_END__>:
 804aa90:	00 00                	add    %al,(%eax)
	...

Disassembly of section .ctors:

0804bf14 <__CTOR_LIST__>:
 804bf14:	ff                   	(bad)  
 804bf15:	ff                   	(bad)  
 804bf16:	ff                   	(bad)  
 804bf17:	ff 00                	incl   (%eax)

0804bf18 <__CTOR_END__>:
 804bf18:	00 00                	add    %al,(%eax)
	...

Disassembly of section .dtors:

0804bf1c <__DTOR_LIST__>:
 804bf1c:	ff                   	(bad)  
 804bf1d:	ff                   	(bad)  
 804bf1e:	ff                   	(bad)  
 804bf1f:	ff 00                	incl   (%eax)

0804bf20 <__DTOR_END__>:
 804bf20:	00 00                	add    %al,(%eax)
	...

Disassembly of section .jcr:

0804bf24 <__JCR_END__>:
 804bf24:	00 00                	add    %al,(%eax)
	...

Disassembly of section .dynamic:

0804bf28 <_DYNAMIC>:
 804bf28:	01 00                	add    %eax,(%eax)
 804bf2a:	00 00                	add    %al,(%eax)
 804bf2c:	10 00                	adc    %al,(%eax)
 804bf2e:	00 00                	add    %al,(%eax)
 804bf30:	0c 00                	or     $0x0,%al
 804bf32:	00 00                	add    %al,(%eax)
 804bf34:	24 87                	and    $0x87,%al
 804bf36:	04 08                	add    $0x8,%al
 804bf38:	0d 00 00 00 7c       	or     $0x7c000000,%eax
 804bf3d:	a0 04 08 f5 fe       	mov    0xfef50804,%al
 804bf42:	ff 6f ac             	ljmp   *-0x54(%edi)
 804bf45:	81 04 08 05 00 00 00 	addl   $0x5,(%eax,%ecx,1)
 804bf4c:	ec                   	in     (%dx),%al
 804bf4d:	83 04 08 06          	addl   $0x6,(%eax,%ecx,1)
 804bf51:	00 00                	add    %al,(%eax)
 804bf53:	00 dc                	add    %bl,%ah
 804bf55:	81 04 08 0a 00 00 00 	addl   $0xa,(%eax,%ecx,1)
 804bf5c:	84 01                	test   %al,(%ecx)
 804bf5e:	00 00                	add    %al,(%eax)
 804bf60:	0b 00                	or     (%eax),%eax
 804bf62:	00 00                	add    %al,(%eax)
 804bf64:	10 00                	adc    %al,(%eax)
 804bf66:	00 00                	add    %al,(%eax)
 804bf68:	15 00 00 00 00       	adc    $0x0,%eax
 804bf6d:	00 00                	add    %al,(%eax)
 804bf6f:	00 03                	add    %al,(%ebx)
 804bf71:	00 00                	add    %al,(%eax)
 804bf73:	00 f4                	add    %dh,%ah
 804bf75:	bf 04 08 02 00       	mov    $0x20804,%edi
 804bf7a:	00 00                	add    %al,(%eax)
 804bf7c:	e0 00                	loopne 804bf7e <_DYNAMIC+0x56>
 804bf7e:	00 00                	add    %al,(%eax)
 804bf80:	14 00                	adc    $0x0,%al
 804bf82:	00 00                	add    %al,(%eax)
 804bf84:	11 00                	adc    %eax,(%eax)
 804bf86:	00 00                	add    %al,(%eax)
 804bf88:	17                   	pop    %ss
 804bf89:	00 00                	add    %al,(%eax)
 804bf8b:	00 44 86 04          	add    %al,0x4(%esi,%eax,4)
 804bf8f:	08 11                	or     %dl,(%ecx)
 804bf91:	00 00                	add    %al,(%eax)
 804bf93:	00 24 86             	add    %ah,(%esi,%eax,4)
 804bf96:	04 08                	add    $0x8,%al
 804bf98:	12 00                	adc    (%eax),%al
 804bf9a:	00 00                	add    %al,(%eax)
 804bf9c:	20 00                	and    %al,(%eax)
 804bf9e:	00 00                	add    %al,(%eax)
 804bfa0:	13 00                	adc    (%eax),%eax
 804bfa2:	00 00                	add    %al,(%eax)
 804bfa4:	08 00                	or     %al,(%eax)
 804bfa6:	00 00                	add    %al,(%eax)
 804bfa8:	fe                   	(bad)  
 804bfa9:	ff                   	(bad)  
 804bfaa:	ff 6f b4             	ljmp   *-0x4c(%edi)
 804bfad:	85 04 08             	test   %eax,(%eax,%ecx,1)
 804bfb0:	ff                   	(bad)  
 804bfb1:	ff                   	(bad)  
 804bfb2:	ff 6f 01             	ljmp   *0x1(%edi)
 804bfb5:	00 00                	add    %al,(%eax)
 804bfb7:	00 f0                	add    %dh,%al
 804bfb9:	ff                   	(bad)  
 804bfba:	ff 6f 70             	ljmp   *0x70(%edi)
 804bfbd:	85 04 08             	test   %eax,(%eax,%ecx,1)
	...

Disassembly of section .got:

0804bff0 <.got>:
 804bff0:	00 00                	add    %al,(%eax)
	...

Disassembly of section .got.plt:

0804bff4 <_GLOBAL_OFFSET_TABLE_>:
 804bff4:	28 bf 04 08 00 00    	sub    %bh,0x804(%edi)
 804bffa:	00 00                	add    %al,(%eax)
 804bffc:	00 00                	add    %al,(%eax)
 804bffe:	00 00                	add    %al,(%eax)
 804c000:	76 87                	jbe    804bf89 <_DYNAMIC+0x61>
 804c002:	04 08                	add    $0x8,%al
 804c004:	86 87 04 08 96 87    	xchg   %al,-0x7869f7fc(%edi)
 804c00a:	04 08                	add    $0x8,%al
 804c00c:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
 804c00d:	87 04 08             	xchg   %eax,(%eax,%ecx,1)
 804c010:	b6 87                	mov    $0x87,%dh
 804c012:	04 08                	add    $0x8,%al
 804c014:	c6 87 04 08 d6 87 04 	movb   $0x4,-0x7829f7fc(%edi)
 804c01b:	08 e6                	or     %ah,%dh
 804c01d:	87 04 08             	xchg   %eax,(%eax,%ecx,1)
 804c020:	f6 87 04 08 06 88 04 	testb  $0x4,-0x77f9f7fc(%edi)
 804c027:	08 16                	or     %dl,(%esi)
 804c029:	88 04 08             	mov    %al,(%eax,%ecx,1)
 804c02c:	26 88 04 08          	mov    %al,%es:(%eax,%ecx,1)
 804c030:	36 88 04 08          	mov    %al,%ss:(%eax,%ecx,1)
 804c034:	46                   	inc    %esi
 804c035:	88 04 08             	mov    %al,(%eax,%ecx,1)
 804c038:	56                   	push   %esi
 804c039:	88 04 08             	mov    %al,(%eax,%ecx,1)
 804c03c:	66 88 04 08          	data16 mov %al,(%eax,%ecx,1)
 804c040:	76 88                	jbe    804bfca <_DYNAMIC+0xa2>
 804c042:	04 08                	add    $0x8,%al
 804c044:	86 88 04 08 96 88    	xchg   %cl,-0x7769f7fc(%eax)
 804c04a:	04 08                	add    $0x8,%al
 804c04c:	a6                   	cmpsb  %es:(%edi),%ds:(%esi)
 804c04d:	88 04 08             	mov    %al,(%eax,%ecx,1)
 804c050:	b6 88                	mov    $0x88,%dh
 804c052:	04 08                	add    $0x8,%al
 804c054:	c6                   	(bad)  
 804c055:	88 04 08             	mov    %al,(%eax,%ecx,1)
 804c058:	d6                   	(bad)  
 804c059:	88 04 08             	mov    %al,(%eax,%ecx,1)
 804c05c:	e6 88                	out    %al,$0x88
 804c05e:	04 08                	add    $0x8,%al
 804c060:	f6                   	(bad)  
 804c061:	88 04 08             	mov    %al,(%eax,%ecx,1)
 804c064:	06                   	push   %es
 804c065:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 804c068:	16                   	push   %ss
 804c069:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 804c06c:	26 89 04 08          	mov    %eax,%es:(%eax,%ecx,1)

Disassembly of section .data:

0804c080 <__data_start>:
 804c080:	00 00                	add    %al,(%eax)
	...

0804c084 <__dso_handle>:
 804c084:	00 00                	add    %al,(%eax)
	...

0804c088 <n1>:
 804c088:	24 00                	and    $0x0,%al
 804c08a:	00 00                	add    %al,(%eax)
 804c08c:	94                   	xchg   %eax,%esp
 804c08d:	c0 04 08 a0          	rolb   $0xa0,(%eax,%ecx,1)
 804c091:	c0 04 08 08          	rolb   $0x8,(%eax,%ecx,1)

0804c094 <n21>:
 804c094:	08 00                	or     %al,(%eax)
 804c096:	00 00                	add    %al,(%eax)
 804c098:	c4                   	(bad)  
 804c099:	c0 04 08 ac          	rolb   $0xac,(%eax,%ecx,1)
 804c09d:	c0 04 08 32          	rolb   $0x32,(%eax,%ecx,1)

0804c0a0 <n22>:
 804c0a0:	32 00                	xor    (%eax),%al
 804c0a2:	00 00                	add    %al,(%eax)
 804c0a4:	b8 c0 04 08 d0       	mov    $0xd00804c0,%eax
 804c0a9:	c0 04 08 16          	rolb   $0x16,(%eax,%ecx,1)

0804c0ac <n32>:
 804c0ac:	16                   	push   %ss
 804c0ad:	00 00                	add    %al,(%eax)
 804c0af:	00 18                	add    %bl,(%eax)
 804c0b1:	c1 04 08 00          	roll   $0x0,(%eax,%ecx,1)
 804c0b5:	c1 04 08 2d          	roll   $0x2d,(%eax,%ecx,1)

0804c0b8 <n33>:
 804c0b8:	2d 00 00 00 dc       	sub    $0xdc000000,%eax
 804c0bd:	c0 04 08 24          	rolb   $0x24,(%eax,%ecx,1)
 804c0c1:	c1 04 08 06          	roll   $0x6,(%eax,%ecx,1)

0804c0c4 <n31>:
 804c0c4:	06                   	push   %es
 804c0c5:	00 00                	add    %al,(%eax)
 804c0c7:	00 e8                	add    %ch,%al
 804c0c9:	c0 04 08 0c          	rolb   $0xc,(%eax,%ecx,1)
 804c0cd:	c1 04 08 6b          	roll   $0x6b,(%eax,%ecx,1)

0804c0d0 <n34>:
 804c0d0:	6b 00 00             	imul   $0x0,(%eax),%eax
 804c0d3:	00 f4                	add    %dh,%ah
 804c0d5:	c0 04 08 30          	rolb   $0x30,(%eax,%ecx,1)
 804c0d9:	c1 04 08 28          	roll   $0x28,(%eax,%ecx,1)

0804c0dc <n45>:
 804c0dc:	28 00                	sub    %al,(%eax)
	...

0804c0e8 <n41>:
 804c0e8:	01 00                	add    %eax,(%eax)
	...

0804c0f4 <n47>:
 804c0f4:	63 00                	arpl   %ax,(%eax)
	...

0804c100 <n44>:
 804c100:	23 00                	and    (%eax),%eax
	...

0804c10c <n42>:
 804c10c:	07                   	pop    %es
	...

0804c118 <n43>:
 804c118:	14 00                	adc    $0x0,%al
	...

0804c124 <n46>:
 804c124:	2f                   	das    
	...

0804c130 <n48>:
 804c130:	e9 03 00 00 00       	jmp    804c138 <n48+0x8>
 804c135:	00 00                	add    %al,(%eax)
 804c137:	00 00                	add    %al,(%eax)
 804c139:	00 00                	add    %al,(%eax)
	...

0804c13c <node1>:
 804c13c:	85 03                	test   %eax,(%ebx)
 804c13e:	00 00                	add    %al,(%eax)
 804c140:	01 00                	add    %eax,(%eax)
 804c142:	00 00                	add    %al,(%eax)
 804c144:	48                   	dec    %eax
 804c145:	c1 04 08 0f          	roll   $0xf,(%eax,%ecx,1)

0804c148 <node2>:
 804c148:	0f 02 00             	lar    (%eax),%eax
 804c14b:	00 02                	add    %al,(%edx)
 804c14d:	00 00                	add    %al,(%eax)
 804c14f:	00 54 c1 04          	add    %dl,0x4(%ecx,%eax,8)
 804c153:	08 c0                	or     %al,%al

0804c154 <node3>:
 804c154:	c0 00 00             	rolb   $0x0,(%eax)
 804c157:	00 03                	add    %al,(%ebx)
 804c159:	00 00                	add    %al,(%eax)
 804c15b:	00 60 c1             	add    %ah,-0x3f(%eax)
 804c15e:	04 08                	add    $0x8,%al

0804c160 <node4>:
 804c160:	00 02                	add    %al,(%edx)
 804c162:	00 00                	add    %al,(%eax)
 804c164:	04 00                	add    $0x0,%al
 804c166:	00 00                	add    %al,(%eax)
 804c168:	6c                   	insb   (%dx),%es:(%edi)
 804c169:	c1 04 08 fd          	roll   $0xfd,(%eax,%ecx,1)

0804c16c <node5>:
 804c16c:	fd                   	std    
 804c16d:	00 00                	add    %al,(%eax)
 804c16f:	00 05 00 00 00 78    	add    %al,0x78000000
 804c175:	c1 04 08 c3          	roll   $0xc3,(%eax,%ecx,1)

0804c178 <node6>:
 804c178:	c3                   	ret    
 804c179:	00 00                	add    %al,(%eax)
 804c17b:	00 06                	add    %al,(%esi)
 804c17d:	00 00                	add    %al,(%eax)
 804c17f:	00 00                	add    %al,(%eax)
 804c181:	00 00                	add    %al,(%eax)
	...

0804c184 <bomb_id>:
 804c184:	12 00                	adc    (%eax),%al
	...

0804c1a0 <host_table>:
 804c1a0:	e1 a3                	loope  804c145 <node1+0x9>
 804c1a2:	04 08                	add    $0x8,%al
	...

Disassembly of section .bss:

0804c3a0 <stderr@@GLIBC_2.0>:
 804c3a0:	00 00                	add    %al,(%eax)
	...

0804c3a4 <stdin@@GLIBC_2.0>:
	...

0804c3c0 <stdout@@GLIBC_2.0>:
 804c3c0:	00 00                	add    %al,(%eax)
	...

0804c3c4 <completed.6159>:
 804c3c4:	00 00                	add    %al,(%eax)
	...

0804c3c8 <dtor_idx.6161>:
 804c3c8:	00 00                	add    %al,(%eax)
	...

0804c3cc <num_input_strings>:
 804c3cc:	00 00                	add    %al,(%eax)
	...

0804c3d0 <infile>:
	...

0804c3e0 <input_strings>:
	...

0804ca20 <scratch>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	47                   	inc    %edi
   1:	43                   	inc    %ebx
   2:	43                   	inc    %ebx
   3:	3a 20                	cmp    (%eax),%ah
   5:	28 55 62             	sub    %dl,0x62(%ebp)
   8:	75 6e                	jne    78 <_init-0x80486ac>
   a:	74 75                	je     81 <_init-0x80486a3>
   c:	2f                   	das    
   d:	4c                   	dec    %esp
   e:	69 6e 61 72 6f 20 34 	imul   $0x34206f72,0x61(%esi),%ebp
  15:	2e 36 2e 33 2d 31 75 	cs ss xor %cs:0x75627531,%ebp
  1c:	62 75 
  1e:	6e                   	outsb  %ds:(%esi),(%dx)
  1f:	74 75                	je     96 <_init-0x804868e>
  21:	35 29 20 34 2e       	xor    $0x2e342029,%eax
  26:	36 2e 33 00          	ss xor %cs:(%eax),%eax

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	1c 00                	sbb    $0x0,%al
   2:	00 00                	add    %al,(%eax)
   4:	02 00                	add    (%eax),%al
   6:	00 00                	add    %al,(%eax)
   8:	00 00                	add    %al,(%eax)
   a:	04 00                	add    $0x0,%al
   c:	00 00                	add    %al,(%eax)
   e:	00 00                	add    %al,(%eax)
  10:	e4 89                	in     $0x89,%al
  12:	04 08                	add    $0x8,%al
  14:	64 01 00             	add    %eax,%fs:(%eax)
	...

Disassembly of section .debug_info:

00000000 <.debug_info>:
   0:	c1 03 00             	roll   $0x0,(%ebx)
   3:	00 02                	add    %al,(%edx)
   5:	00 00                	add    %al,(%eax)
   7:	00 00                	add    %al,(%eax)
   9:	00 04 01             	add    %al,(%ecx,%eax,1)
   c:	ca 00 00             	lret   $0x0
   f:	00 01                	add    %al,(%ecx)
  11:	8b 00                	mov    (%eax),%eax
  13:	00 00                	add    %al,(%eax)
  15:	cb                   	lret   
  16:	01 00                	add    %eax,(%eax)
  18:	00 e4                	add    %ah,%ah
  1a:	89 04 08             	mov    %eax,(%eax,%ecx,1)
  1d:	48                   	dec    %eax
  1e:	8b 04 08             	mov    (%eax,%ecx,1),%eax
  21:	00 00                	add    %al,(%eax)
  23:	00 00                	add    %al,(%eax)
  25:	02 17                	add    (%edi),%dl
  27:	00 00                	add    %al,(%eax)
  29:	00 03                	add    %al,(%ebx)
  2b:	d4 30                	aam    $0x30
  2d:	00 00                	add    %al,(%eax)
  2f:	00 03                	add    %al,(%ebx)
  31:	04 07                	add    $0x7,%al
  33:	33 01                	xor    (%ecx),%eax
  35:	00 00                	add    %al,(%eax)
  37:	03 01                	add    (%ecx),%eax
  39:	08 7d 00             	or     %bh,0x0(%ebp)
  3c:	00 00                	add    %al,(%eax)
  3e:	03 02                	add    (%edx),%eax
  40:	07                   	pop    %es
  41:	99                   	cltd   
  42:	00 00                	add    %al,(%eax)
  44:	00 03                	add    %al,(%ebx)
  46:	04 07                	add    $0x7,%al
  48:	2e 01 00             	add    %eax,%cs:(%eax)
  4b:	00 03                	add    %al,(%ebx)
  4d:	01 06                	add    %eax,(%esi)
  4f:	7f 00                	jg     51 <_init-0x80486d3>
  51:	00 00                	add    %al,(%eax)
  53:	03 02                	add    (%edx),%eax
  55:	05 aa 01 00 00       	add    $0x1aa,%eax
  5a:	04 04                	add    $0x4,%al
  5c:	05 69 6e 74 00       	add    $0x746e69,%eax
  61:	03 08                	add    (%eax),%ecx
  63:	05 80 01 00 00       	add    $0x180,%eax
  68:	03 08                	add    (%eax),%ecx
  6a:	07                   	pop    %es
  6b:	29 01                	sub    %eax,(%ecx)
  6d:	00 00                	add    %al,(%eax)
  6f:	02 f7                	add    %bh,%dh
  71:	00 00                	add    %al,(%eax)
  73:	00 04 38             	add    %al,(%eax,%edi,1)
  76:	61                   	popa   
  77:	00 00                	add    %al,(%eax)
  79:	00 02                	add    %al,(%edx)
  7b:	6f                   	outsl  %ds:(%esi),(%dx)
  7c:	01 00                	add    %eax,(%eax)
  7e:	00 04 8d 85 00 00 00 	add    %al,0x85(,%ecx,4)
  85:	03 04 05 85 01 00 00 	add    0x185(,%eax,1),%eax
  8c:	02 00                	add    (%eax),%al
  8e:	00 00                	add    %al,(%eax)
  90:	00 04 8e             	add    %al,(%esi,%ecx,4)
  93:	6f                   	outsl  %ds:(%esi),(%dx)
  94:	00 00                	add    %al,(%eax)
  96:	00 05 04 06 04 9f    	add    %al,0x9f040604
  9c:	00 00                	add    %al,(%eax)
  9e:	00 03                	add    %al,(%ebx)
  a0:	01 06                	add    %eax,(%esi)
  a2:	86 00                	xchg   %al,(%eax)
  a4:	00 00                	add    %al,(%eax)
  a6:	02 22                	add    (%edx),%ah
  a8:	00 00                	add    %al,(%eax)
  aa:	00 05 31 b1 00 00    	add    %al,0xb131
  b0:	00 07                	add    %al,(%edi)
  b2:	1e                   	push   %ds
  b3:	00 00                	add    %al,(%eax)
  b5:	00 94 06 11 01 72 02 	add    %dl,0x2720111(%esi,%eax,1)
  bc:	00 00                	add    %al,(%eax)
  be:	08 c4                	or     %al,%ah
  c0:	01 00                	add    %eax,(%eax)
  c2:	00 06                	add    %al,(%esi)
  c4:	12 01                	adc    (%ecx),%al
  c6:	5a                   	pop    %edx
  c7:	00 00                	add    %al,(%eax)
  c9:	00 02                	add    %al,(%edx)
  cb:	23 00                	and    (%eax),%eax
  cd:	08 50 00             	or     %dl,0x0(%eax)
  d0:	00 00                	add    %al,(%eax)
  d2:	06                   	push   %es
  d3:	17                   	pop    %ss
  d4:	01 99 00 00 00 02    	add    %ebx,0x2000000(%ecx)
  da:	23 04 08             	and    (%eax,%ecx,1),%eax
  dd:	0a 00                	or     (%eax),%al
  df:	00 00                	add    %al,(%eax)
  e1:	06                   	push   %es
  e2:	18 01                	sbb    %al,(%ecx)
  e4:	99                   	cltd   
  e5:	00 00                	add    %al,(%eax)
  e7:	00 02                	add    %al,(%edx)
  e9:	23 08                	and    (%eax),%ecx
  eb:	08 11                	or     %dl,(%ecx)
  ed:	02 00                	add    (%eax),%al
  ef:	00 06                	add    %al,(%esi)
  f1:	19 01                	sbb    %eax,(%ecx)
  f3:	99                   	cltd   
  f4:	00 00                	add    %al,(%eax)
  f6:	00 02                	add    %al,(%edx)
  f8:	23 0c 08             	and    (%eax,%ecx,1),%ecx
  fb:	27                   	daa    
  fc:	00 00                	add    %al,(%eax)
  fe:	00 06                	add    %al,(%esi)
 100:	1a 01                	sbb    (%ecx),%al
 102:	99                   	cltd   
 103:	00 00                	add    %al,(%eax)
 105:	00 02                	add    %al,(%edx)
 107:	23 10                	and    (%eax),%edx
 109:	08 f0                	or     %dh,%al
 10b:	01 00                	add    %eax,(%eax)
 10d:	00 06                	add    %al,(%esi)
 10f:	1b 01                	sbb    (%ecx),%eax
 111:	99                   	cltd   
 112:	00 00                	add    %al,(%eax)
 114:	00 02                	add    %al,(%edx)
 116:	23 14 08             	and    (%eax,%ecx,1),%edx
 119:	9c                   	pushf  
 11a:	01 00                	add    %eax,(%eax)
 11c:	00 06                	add    %al,(%esi)
 11e:	1c 01                	sbb    $0x1,%al
 120:	99                   	cltd   
 121:	00 00                	add    %al,(%eax)
 123:	00 02                	add    %al,(%edx)
 125:	23 18                	and    (%eax),%ebx
 127:	08 48 01             	or     %cl,0x1(%eax)
 12a:	00 00                	add    %al,(%eax)
 12c:	06                   	push   %es
 12d:	1d 01 99 00 00       	sbb    $0x9901,%eax
 132:	00 02                	add    %al,(%edx)
 134:	23 1c 08             	and    (%eax,%ecx,1),%ebx
 137:	36 00 00             	add    %al,%ss:(%eax)
 13a:	00 06                	add    %al,(%esi)
 13c:	1e                   	push   %ds
 13d:	01 99 00 00 00 02    	add    %ebx,0x2000000(%ecx)
 143:	23 20                	and    (%eax),%esp
 145:	08 6f 00             	or     %ch,0x0(%edi)
 148:	00 00                	add    %al,(%eax)
 14a:	06                   	push   %es
 14b:	20 01                	and    %al,(%ecx)
 14d:	99                   	cltd   
 14e:	00 00                	add    %al,(%eax)
 150:	00 02                	add    %al,(%edx)
 152:	23 24 08             	and    (%eax,%ecx,1),%esp
 155:	b4 01                	mov    $0x1,%ah
 157:	00 00                	add    %al,(%eax)
 159:	06                   	push   %es
 15a:	21 01                	and    %eax,(%ecx)
 15c:	99                   	cltd   
 15d:	00 00                	add    %al,(%eax)
 15f:	00 02                	add    %al,(%edx)
 161:	23 28                	and    (%eax),%ebp
 163:	08 b2 00 00 00 06    	or     %dh,0x6000000(%edx)
 169:	22 01                	and    (%ecx),%al
 16b:	99                   	cltd   
 16c:	00 00                	add    %al,(%eax)
 16e:	00 02                	add    %al,(%edx)
 170:	23 2c 08             	and    (%eax,%ecx,1),%ebp
 173:	d6                   	(bad)  
 174:	00 00                	add    %al,(%eax)
 176:	00 06                	add    %al,(%esi)
 178:	24 01                	and    $0x1,%al
 17a:	b0 02                	mov    $0x2,%al
 17c:	00 00                	add    %al,(%eax)
 17e:	02 23                	add    (%ebx),%ah
 180:	30 08                	xor    %cl,(%eax)
 182:	68 00 00 00 06       	push   $0x6000000
 187:	26 01 b6 02 00 00 02 	add    %esi,%es:0x2000002(%esi)
 18e:	23 34 08             	and    (%eax,%ecx,1),%esi
 191:	40                   	inc    %eax
 192:	01 00                	add    %eax,(%eax)
 194:	00 06                	add    %al,(%esi)
 196:	28 01                	sub    %al,(%ecx)
 198:	5a                   	pop    %edx
 199:	00 00                	add    %al,(%eax)
 19b:	00 02                	add    %al,(%edx)
 19d:	23 38                	and    (%eax),%edi
 19f:	08 e9                	or     %ch,%cl
 1a1:	00 00                	add    %al,(%eax)
 1a3:	00 06                	add    %al,(%esi)
 1a5:	2c 01                	sub    $0x1,%al
 1a7:	5a                   	pop    %edx
 1a8:	00 00                	add    %al,(%eax)
 1aa:	00 02                	add    %al,(%edx)
 1ac:	23 3c 08             	and    (%eax,%ecx,1),%edi
 1af:	00 01                	add    %al,(%ecx)
 1b1:	00 00                	add    %al,(%eax)
 1b3:	06                   	push   %es
 1b4:	2e 01 7a 00          	add    %edi,%cs:0x0(%edx)
 1b8:	00 00                	add    %al,(%eax)
 1ba:	02 23                	add    (%ebx),%ah
 1bc:	40                   	inc    %eax
 1bd:	08 1d 01 00 00 06    	or     %bl,0x6000001
 1c3:	32 01                	xor    (%ecx),%al
 1c5:	3e 00 00             	add    %al,%ds:(%eax)
 1c8:	00 02                	add    %al,(%edx)
 1ca:	23 44 08 5b          	and    0x5b(%eax,%ecx,1),%eax
 1ce:	01 00                	add    %eax,(%eax)
 1d0:	00 06                	add    %al,(%esi)
 1d2:	33 01                	xor    (%ecx),%eax
 1d4:	4c                   	dec    %esp
 1d5:	00 00                	add    %al,(%eax)
 1d7:	00 02                	add    %al,(%edx)
 1d9:	23 46 08             	and    0x8(%esi),%eax
 1dc:	26 02 00             	add    %es:(%eax),%al
 1df:	00 06                	add    %al,(%esi)
 1e1:	34 01                	xor    $0x1,%al
 1e3:	bc 02 00 00 02       	mov    $0x2000002,%esp
 1e8:	23 47 08             	and    0x8(%edi),%eax
 1eb:	0c 01                	or     $0x1,%al
 1ed:	00 00                	add    %al,(%eax)
 1ef:	06                   	push   %es
 1f0:	38 01                	cmp    %al,(%ecx)
 1f2:	cc                   	int3   
 1f3:	02 00                	add    (%eax),%al
 1f5:	00 02                	add    %al,(%edx)
 1f7:	23 48 08             	and    0x8(%eax),%ecx
 1fa:	04 01                	add    $0x1,%al
 1fc:	00 00                	add    %al,(%eax)
 1fe:	06                   	push   %es
 1ff:	41                   	inc    %ecx
 200:	01 8c 00 00 00 02 23 	add    %ecx,0x23020000(%eax,%eax,1)
 207:	4c                   	dec    %esp
 208:	08 e9                	or     %ch,%cl
 20a:	01 00                	add    %eax,(%eax)
 20c:	00 06                	add    %al,(%esi)
 20e:	4a                   	dec    %edx
 20f:	01 97 00 00 00 02    	add    %edx,0x2000000(%edi)
 215:	23 54 08 42          	and    0x42(%eax,%ecx,1),%edx
 219:	00 00                	add    %al,(%eax)
 21b:	00 06                	add    %al,(%esi)
 21d:	4b                   	dec    %ebx
 21e:	01 97 00 00 00 02    	add    %edx,0x2000000(%edi)
 224:	23 58 08             	and    0x8(%eax),%ebx
 227:	49                   	dec    %ecx
 228:	00 00                	add    %al,(%eax)
 22a:	00 06                	add    %al,(%esi)
 22c:	4c                   	dec    %esp
 22d:	01 97 00 00 00 02    	add    %edx,0x2000000(%edi)
 233:	23 5c 08 92          	and    -0x6e(%eax,%ecx,1),%ebx
 237:	00 00                	add    %al,(%eax)
 239:	00 06                	add    %al,(%esi)
 23b:	4d                   	dec    %ebp
 23c:	01 97 00 00 00 02    	add    %edx,0x2000000(%edi)
 242:	23 60 08             	and    0x8(%eax),%esp
 245:	04 02                	add    $0x2,%al
 247:	00 00                	add    %al,(%eax)
 249:	06                   	push   %es
 24a:	4e                   	dec    %esi
 24b:	01 25 00 00 00 02    	add    %esp,0x2000000
 251:	23 64 08 62          	and    0x62(%eax,%ecx,1),%esp
 255:	00 00                	add    %al,(%eax)
 257:	00 06                	add    %al,(%esi)
 259:	50                   	push   %eax
 25a:	01 5a 00             	add    %ebx,0x0(%edx)
 25d:	00 00                	add    %al,(%eax)
 25f:	02 23                	add    (%ebx),%ah
 261:	68 08 77 01 00       	push   $0x17708
 266:	00 06                	add    %al,(%esi)
 268:	52                   	push   %edx
 269:	01 d2                	add    %edx,%edx
 26b:	02 00                	add    (%eax),%al
 26d:	00 02                	add    %al,(%edx)
 26f:	23 6c 00 09          	and    0x9(%eax,%eax,1),%ebp
 273:	bf 00 00 00 06       	mov    $0x6000000,%edi
 278:	b6 0a                	mov    $0xa,%dh
 27a:	12 01                	adc    (%ecx),%al
 27c:	00 00                	add    %al,(%eax)
 27e:	0c 06                	or     $0x6,%al
 280:	bc b0 02 00 00       	mov    $0x2b0,%esp
 285:	0b 55 01             	or     0x1(%ebp),%edx
 288:	00 00                	add    %al,(%eax)
 28a:	06                   	push   %es
 28b:	bd b0 02 00 00       	mov    $0x2b0,%ebp
 290:	02 23                	add    (%ebx),%ah
 292:	00 0b                	add    %cl,(%ebx)
 294:	f1                   	icebp  
 295:	00 00                	add    %al,(%eax)
 297:	00 06                	add    %al,(%esi)
 299:	be b6 02 00 00       	mov    $0x2b6,%esi
 29e:	02 23                	add    (%ebx),%ah
 2a0:	04 0b                	add    $0xb,%al
 2a2:	df 00                	fild   (%eax)
 2a4:	00 00                	add    %al,(%eax)
 2a6:	06                   	push   %es
 2a7:	c2 5a 00             	ret    $0x5a
 2aa:	00 00                	add    %al,(%eax)
 2ac:	02 23                	add    (%ebx),%ah
 2ae:	08 00                	or     %al,(%eax)
 2b0:	06                   	push   %es
 2b1:	04 79                	add    $0x79,%al
 2b3:	02 00                	add    (%eax),%al
 2b5:	00 06                	add    %al,(%esi)
 2b7:	04 b1                	add    $0xb1,%al
 2b9:	00 00                	add    %al,(%eax)
 2bb:	00 0c 9f             	add    %cl,(%edi,%ebx,4)
 2be:	00 00                	add    %al,(%eax)
 2c0:	00 cc                	add    %cl,%ah
 2c2:	02 00                	add    (%eax),%al
 2c4:	00 0d 30 00 00 00    	add    %cl,0x30
 2ca:	00 00                	add    %al,(%eax)
 2cc:	06                   	push   %es
 2cd:	04 72                	add    $0x72,%al
 2cf:	02 00                	add    (%eax),%al
 2d1:	00 0c 9f             	add    %cl,(%edi,%ebx,4)
 2d4:	00 00                	add    %al,(%eax)
 2d6:	00 e2                	add    %ah,%dl
 2d8:	02 00                	add    (%eax),%al
 2da:	00 0d 30 00 00 00    	add    %cl,0x30
 2e0:	27                   	daa    
 2e1:	00 06                	add    %al,(%esi)
 2e3:	04 e8                	add    $0xe8,%al
 2e5:	02 00                	add    (%eax),%al
 2e7:	00 0e                	add    %cl,(%esi)
 2e9:	9f                   	lahf   
 2ea:	00 00                	add    %al,(%eax)
 2ec:	00 0f                	add    %cl,(%edi)
 2ee:	01 95 01 00 00 02    	add    %edx,0x2000001(%ebp)
 2f4:	67 01 5a 00          	add    %ebx,0x0(%bp,%si)
 2f8:	00 00                	add    %al,(%eax)
 2fa:	03 01                	add    (%ecx),%eax
 2fc:	0d 03 00 00 10       	or     $0x10000003,%eax
 301:	0b 02                	or     (%edx),%eax
 303:	00 00                	add    %al,(%eax)
 305:	02 67 e2             	add    -0x1e(%edi),%ah
 308:	02 00                	add    (%eax),%al
 30a:	00 11                	add    %dl,(%ecx)
 30c:	00 12                	add    %dl,(%edx)
 30e:	01 e4                	add    %esp,%esp
 310:	00 00                	add    %al,(%eax)
 312:	00 01                	add    %al,(%ecx)
 314:	24 01                	and    $0x1,%al
 316:	5a                   	pop    %edx
 317:	00 00                	add    %al,(%eax)
 319:	00 e4                	add    %ah,%ah
 31b:	89 04 08             	mov    %eax,(%eax,%ecx,1)
 31e:	48                   	dec    %eax
 31f:	8b 04 08             	mov    (%eax,%ecx,1),%eax
 322:	00 00                	add    %al,(%eax)
 324:	00 00                	add    %al,(%eax)
 326:	8c 03                	mov    %es,(%ebx)
 328:	00 00                	add    %al,(%eax)
 32a:	13 6a 01             	adc    0x1(%edx),%ebp
 32d:	00 00                	add    %al,(%eax)
 32f:	01 24 5a             	add    %esp,(%edx,%ebx,2)
 332:	00 00                	add    %al,(%eax)
 334:	00 02                	add    %al,(%edx)
 336:	91                   	xchg   %eax,%ecx
 337:	00 13                	add    %dl,(%ebx)
 339:	5d                   	pop    %ebp
 33a:	00 00                	add    %al,(%eax)
 33c:	00 01                	add    %al,(%ecx)
 33e:	24 8c                	and    $0x8c,%al
 340:	03 00                	add    (%eax),%eax
 342:	00 02                	add    %al,(%edx)
 344:	91                   	xchg   %eax,%ecx
 345:	04 14                	add    $0x14,%al
 347:	fe 01                	incb   (%ecx)
 349:	00 00                	add    %al,(%eax)
 34b:	01 26                	add    %esp,(%esi)
 34d:	99                   	cltd   
 34e:	00 00                	add    %al,(%eax)
 350:	00 38                	add    %bh,(%eax)
 352:	00 00                	add    %al,(%eax)
 354:	00 15 ed 02 00 00    	add    %dl,0x2ed
 35a:	26 8a 04 08          	mov    %es:(%eax,%ecx,1),%al
 35e:	47                   	inc    %edi
 35f:	8a 04 08             	mov    (%eax,%ecx,1),%al
 362:	01 37                	add    %esi,(%edi)
 364:	72 03                	jb     369 <_init-0x80483bb>
 366:	00 00                	add    %al,(%eax)
 368:	16                   	push   %ss
 369:	00 03                	add    %al,(%ebx)
 36b:	00 00                	add    %al,(%eax)
 36d:	82                   	(bad)  
 36e:	00 00                	add    %al,(%eax)
 370:	00 00                	add    %al,(%eax)
 372:	17                   	pop    %ss
 373:	ed                   	in     (%dx),%eax
 374:	02 00                	add    (%eax),%al
 376:	00 53 8a             	add    %dl,-0x76(%ebx)
 379:	04 08                	add    $0x8,%al
 37b:	6d                   	insl   (%dx),%es:(%edi)
 37c:	8a 04 08             	mov    (%eax,%ecx,1),%al
 37f:	01 3e                	add    %edi,(%esi)
 381:	16                   	push   %ss
 382:	00 03                	add    %al,(%ebx)
 384:	00 00                	add    %al,(%eax)
 386:	9a 00 00 00 00 00 06 	lcall  $0x600,$0x0
 38d:	04 99                	add    $0x99,%al
 38f:	00 00                	add    %al,(%eax)
 391:	00 18                	add    %bl,(%eax)
 393:	ac                   	lods   %ds:(%esi),%al
 394:	00 00                	add    %al,(%eax)
 396:	00 05 a9 b6 02 00    	add    %al,0x2b6a9
 39c:	00 01                	add    %al,(%ecx)
 39e:	01 18                	add    %ebx,(%eax)
 3a0:	8e 01                	mov    (%ecx),%es
 3a2:	00 00                	add    %al,(%eax)
 3a4:	05 aa b6 02 00       	add    $0x2b6aa,%eax
 3a9:	00 01                	add    %al,(%ecx)
 3ab:	01 19                	add    %ebx,(%ecx)
 3ad:	1f                   	pop    %ds
 3ae:	02 00                	add    (%eax),%al
 3b0:	00 01                	add    %al,(%ecx)
 3b2:	22 be 03 00 00 01    	and    0x1000003(%esi),%bh
 3b8:	05 03 d0 c3 04       	add    $0x4c3d003,%eax
 3bd:	08 06                	or     %al,(%esi)
 3bf:	04 a6                	add    $0xa6,%al
 3c1:	00 00                	add    %al,(%eax)
	...

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%ecx)
   2:	01 25 0e 13 0b 03    	add    %esp,0x30b130e
   8:	0e                   	push   %cs
   9:	1b 0e                	sbb    (%esi),%ecx
   b:	11 01                	adc    %eax,(%ecx)
   d:	12 01                	adc    (%ecx),%al
   f:	10 06                	adc    %al,(%esi)
  11:	00 00                	add    %al,(%eax)
  13:	02 16                	add    (%esi),%dl
  15:	00 03                	add    %al,(%ebx)
  17:	0e                   	push   %cs
  18:	3a 0b                	cmp    (%ebx),%cl
  1a:	3b 0b                	cmp    (%ebx),%ecx
  1c:	49                   	dec    %ecx
  1d:	13 00                	adc    (%eax),%eax
  1f:	00 03                	add    %al,(%ebx)
  21:	24 00                	and    $0x0,%al
  23:	0b 0b                	or     (%ebx),%ecx
  25:	3e 0b 03             	or     %ds:(%ebx),%eax
  28:	0e                   	push   %cs
  29:	00 00                	add    %al,(%eax)
  2b:	04 24                	add    $0x24,%al
  2d:	00 0b                	add    %cl,(%ebx)
  2f:	0b 3e                	or     (%esi),%edi
  31:	0b 03                	or     (%ebx),%eax
  33:	08 00                	or     %al,(%eax)
  35:	00 05 0f 00 0b 0b    	add    %al,0xb0b000f
  3b:	00 00                	add    %al,(%eax)
  3d:	06                   	push   %es
  3e:	0f 00 0b             	str    (%ebx)
  41:	0b 49 13             	or     0x13(%ecx),%ecx
  44:	00 00                	add    %al,(%eax)
  46:	07                   	pop    %es
  47:	13 01                	adc    (%ecx),%eax
  49:	03 0e                	add    (%esi),%ecx
  4b:	0b 0b                	or     (%ebx),%ecx
  4d:	3a 0b                	cmp    (%ebx),%cl
  4f:	3b 05 01 13 00 00    	cmp    0x1301,%eax
  55:	08 0d 00 03 0e 3a    	or     %cl,0x3a0e0300
  5b:	0b 3b                	or     (%ebx),%edi
  5d:	05 49 13 38 0a       	add    $0xa381349,%eax
  62:	00 00                	add    %al,(%eax)
  64:	09 16                	or     %edx,(%esi)
  66:	00 03                	add    %al,(%ebx)
  68:	0e                   	push   %cs
  69:	3a 0b                	cmp    (%ebx),%cl
  6b:	3b 0b                	cmp    (%ebx),%ecx
  6d:	00 00                	add    %al,(%eax)
  6f:	0a 13                	or     (%ebx),%dl
  71:	01 03                	add    %eax,(%ebx)
  73:	0e                   	push   %cs
  74:	0b 0b                	or     (%ebx),%ecx
  76:	3a 0b                	cmp    (%ebx),%cl
  78:	3b 0b                	cmp    (%ebx),%ecx
  7a:	01 13                	add    %edx,(%ebx)
  7c:	00 00                	add    %al,(%eax)
  7e:	0b 0d 00 03 0e 3a    	or     0x3a0e0300,%ecx
  84:	0b 3b                	or     (%ebx),%edi
  86:	0b 49 13             	or     0x13(%ecx),%ecx
  89:	38 0a                	cmp    %cl,(%edx)
  8b:	00 00                	add    %al,(%eax)
  8d:	0c 01                	or     $0x1,%al
  8f:	01 49 13             	add    %ecx,0x13(%ecx)
  92:	01 13                	add    %edx,(%ebx)
  94:	00 00                	add    %al,(%eax)
  96:	0d 21 00 49 13       	or     $0x13490021,%eax
  9b:	2f                   	das    
  9c:	0b 00                	or     (%eax),%eax
  9e:	00 0e                	add    %cl,(%esi)
  a0:	26 00 49 13          	add    %cl,%es:0x13(%ecx)
  a4:	00 00                	add    %al,(%eax)
  a6:	0f 2e 01             	ucomiss (%ecx),%xmm0
  a9:	3f                   	aas    
  aa:	0c 03                	or     $0x3,%al
  ac:	0e                   	push   %cs
  ad:	3a 0b                	cmp    (%ebx),%cl
  af:	3b 0b                	cmp    (%ebx),%ecx
  b1:	27                   	daa    
  b2:	0c 49                	or     $0x49,%al
  b4:	13 20                	adc    (%eax),%esp
  b6:	0b 34 0c             	or     (%esp,%ecx,1),%esi
  b9:	01 13                	add    %edx,(%ebx)
  bb:	00 00                	add    %al,(%eax)
  bd:	10 05 00 03 0e 3a    	adc    %al,0x3a0e0300
  c3:	0b 3b                	or     (%ebx),%edi
  c5:	0b 49 13             	or     0x13(%ecx),%ecx
  c8:	00 00                	add    %al,(%eax)
  ca:	11 18                	adc    %ebx,(%eax)
  cc:	00 00                	add    %al,(%eax)
  ce:	00 12                	add    %dl,(%edx)
  d0:	2e 01 3f             	add    %edi,%cs:(%edi)
  d3:	0c 03                	or     $0x3,%al
  d5:	0e                   	push   %cs
  d6:	3a 0b                	cmp    (%ebx),%cl
  d8:	3b 0b                	cmp    (%ebx),%ecx
  da:	27                   	daa    
  db:	0c 49                	or     $0x49,%al
  dd:	13 11                	adc    (%ecx),%edx
  df:	01 12                	add    %edx,(%edx)
  e1:	01 40 06             	add    %eax,0x6(%eax)
  e4:	01 13                	add    %edx,(%ebx)
  e6:	00 00                	add    %al,(%eax)
  e8:	13 05 00 03 0e 3a    	adc    0x3a0e0300,%eax
  ee:	0b 3b                	or     (%ebx),%edi
  f0:	0b 49 13             	or     0x13(%ecx),%ecx
  f3:	02 0a                	add    (%edx),%cl
  f5:	00 00                	add    %al,(%eax)
  f7:	14 34                	adc    $0x34,%al
  f9:	00 03                	add    %al,(%ebx)
  fb:	0e                   	push   %cs
  fc:	3a 0b                	cmp    (%ebx),%cl
  fe:	3b 0b                	cmp    (%ebx),%ecx
 100:	49                   	dec    %ecx
 101:	13 02                	adc    (%edx),%eax
 103:	06                   	push   %es
 104:	00 00                	add    %al,(%eax)
 106:	15 1d 01 31 13       	adc    $0x1331011d,%eax
 10b:	11 01                	adc    %eax,(%ecx)
 10d:	12 01                	adc    (%ecx),%al
 10f:	58                   	pop    %eax
 110:	0b 59 0b             	or     0xb(%ecx),%ebx
 113:	01 13                	add    %edx,(%ebx)
 115:	00 00                	add    %al,(%eax)
 117:	16                   	push   %ss
 118:	05 00 31 13 02       	add    $0x2133100,%eax
 11d:	06                   	push   %es
 11e:	00 00                	add    %al,(%eax)
 120:	17                   	pop    %ss
 121:	1d 01 31 13 11       	sbb    $0x11133101,%eax
 126:	01 12                	add    %edx,(%edx)
 128:	01 58 0b             	add    %ebx,0xb(%eax)
 12b:	59                   	pop    %ecx
 12c:	0b 00                	or     (%eax),%eax
 12e:	00 18                	add    %bl,(%eax)
 130:	34 00                	xor    $0x0,%al
 132:	03 0e                	add    (%esi),%ecx
 134:	3a 0b                	cmp    (%ebx),%cl
 136:	3b 0b                	cmp    (%ebx),%ecx
 138:	49                   	dec    %ecx
 139:	13 3f                	adc    (%edi),%edi
 13b:	0c 3c                	or     $0x3c,%al
 13d:	0c 00                	or     $0x0,%al
 13f:	00 19                	add    %bl,(%ecx)
 141:	34 00                	xor    $0x0,%al
 143:	03 0e                	add    (%esi),%ecx
 145:	3a 0b                	cmp    (%ebx),%cl
 147:	3b 0b                	cmp    (%ebx),%ecx
 149:	49                   	dec    %ecx
 14a:	13 3f                	adc    (%edi),%edi
 14c:	0c 02                	or     $0x2,%al
 14e:	0a 00                	or     (%eax),%al
	...

Disassembly of section .debug_line:

00000000 <.debug_line>:
   0:	21 01                	and    %eax,(%ecx)
   2:	00 00                	add    %al,(%eax)
   4:	02 00                	add    (%eax),%al
   6:	ac                   	lods   %ds:(%esi),%al
   7:	00 00                	add    %al,(%eax)
   9:	00 01                	add    %al,(%ecx)
   b:	01 fb                	add    %edi,%ebx
   d:	0e                   	push   %cs
   e:	0d 00 01 01 01       	or     $0x1010100,%eax
  13:	01 00                	add    %eax,(%eax)
  15:	00 00                	add    %al,(%eax)
  17:	01 00                	add    %eax,(%eax)
  19:	00 01                	add    %al,(%ecx)
  1b:	2f                   	das    
  1c:	75 73                	jne    91 <_init-0x8048693>
  1e:	72 2f                	jb     4f <_init-0x80486d5>
  20:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
  27:	2f                   	das    
  28:	69 33 38 36 2d 6c    	imul   $0x6c2d3638,(%ebx),%esi
  2e:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%esi),%ebp
  35:	75 2f                	jne    66 <_init-0x80486be>
  37:	62 69 74             	bound  %ebp,0x74(%ecx)
  3a:	73 00                	jae    3c <_init-0x80486e8>
  3c:	2f                   	das    
  3d:	75 73                	jne    b2 <_init-0x8048672>
  3f:	72 2f                	jb     70 <_init-0x80486b4>
  41:	6c                   	insb   (%dx),%es:(%edi)
  42:	69 62 2f 67 63 63 2f 	imul   $0x2f636367,0x2f(%edx),%esp
  49:	69 36 38 36 2d 6c    	imul   $0x6c2d3638,(%esi),%esi
  4f:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%esi),%ebp
  56:	75 2f                	jne    87 <_init-0x804869d>
  58:	34 2e                	xor    $0x2e,%al
  5a:	36 2f                	ss das 
  5c:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
  63:	00 2f                	add    %ch,(%edi)
  65:	75 73                	jne    da <_init-0x804864a>
  67:	72 2f                	jb     98 <_init-0x804868c>
  69:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%esi),%ebp
  70:	00 00                	add    %al,(%eax)
  72:	62 6f 6d             	bound  %ebp,0x6d(%edi)
  75:	62 2e                	bound  %ebp,(%esi)
  77:	63 00                	arpl   %ax,(%eax)
  79:	00 00                	add    %al,(%eax)
  7b:	00 73 74             	add    %dh,0x74(%ebx)
  7e:	64 69 6f 32 2e 68 00 	imul   $0x100682e,%fs:0x32(%edi),%ebp
  85:	01 
  86:	00 00                	add    %al,(%eax)
  88:	73 74                	jae    fe <_init-0x8048626>
  8a:	64 64 65 66 2e 68 00 	fs fs gs cs pushw $0x200
  91:	02 
  92:	00 00                	add    %al,(%eax)
  94:	74 79                	je     10f <_init-0x8048615>
  96:	70 65                	jo     fd <_init-0x8048627>
  98:	73 2e                	jae    c8 <_init-0x804865c>
  9a:	68 00 01 00 00       	push   $0x100
  9f:	73 74                	jae    115 <_init-0x804860f>
  a1:	64 69 6f 2e 68 00 03 	imul   $0x30068,%fs:0x2e(%edi),%ebp
  a8:	00 
  a9:	00 6c 69 62          	add    %ch,0x62(%ecx,%ebp,2)
  ad:	69 6f 2e 68 00 03 00 	imul   $0x30068,0x2e(%edi),%ebp
  b4:	00 00                	add    %al,(%eax)
  b6:	00 05 02 e4 89 04    	add    %al,0x489e402
  bc:	08 03                	or     %al,(%ebx)
  be:	24 01                	and    $0x1,%al
  c0:	fa                   	cli    
  c1:	59                   	pop    %ecx
  c2:	c1 59 04 02          	rcrl   $0x2,0x4(%ecx)
  c6:	03 33                	add    (%ebx),%esi
  c8:	08 ac 04 01 03 4f 08 	or     %ch,0x84f0301(%esp,%eax,1)
  cf:	f2 04 02             	repnz add $0x2,%al
  d2:	03 31                	add    (%ecx),%esi
  d4:	ba 04 01 03 56       	mov    $0x56030104,%edx
  d9:	08 90 be 04 02 03    	or     %dl,0x30204be(%eax)
  df:	26 58                	es pop %eax
  e1:	04 01                	add    $0x1,%al
  e3:	03 60 08             	add    0x8(%eax),%esp
  e6:	74 59                	je     141 <_init-0x80485e3>
  e8:	83 04 02 03          	addl   $0x3,(%edx,%eax,1)
  ec:	1e                   	push   %ds
  ed:	58                   	pop    %eax
  ee:	04 01                	add    $0x1,%al
  f0:	03 68 ba             	add    -0x46(%eax),%ebp
  f3:	59                   	pop    %ecx
  f4:	83 04 02 03          	addl   $0x3,(%edx,%eax,1)
  f8:	16                   	push   %ss
  f9:	58                   	pop    %eax
  fa:	04 01                	add    $0x1,%al
  fc:	03 6f ba             	add    -0x46(%edi),%ebp
  ff:	59                   	pop    %ecx
 100:	83 04 02 03          	addl   $0x3,(%edx,%eax,1)
 104:	0f 58 04 01          	addps  (%ecx,%eax,1),%xmm0
 108:	03 75 ba             	add    -0x46(%ebp),%esi
 10b:	59                   	pop    %ecx
 10c:	83 04 02 03          	addl   $0x3,(%edx,%eax,1)
 110:	09 58 04             	or     %ebx,0x4(%eax)
 113:	01 b5 59 83 04 02    	add    %esi,0x2048359(%ebp)
 119:	5b                   	pop    %ebx
 11a:	04 01                	add    $0x1,%al
 11c:	bc 59 83 5e 02       	mov    $0x25e8359,%esp
 121:	0a 00                	or     (%eax),%al
 123:	01 01                	add    %eax,(%ecx)

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	5f                   	pop    %edi
   1:	5f                   	pop    %edi
   2:	6f                   	outsl  %ds:(%esi),(%dx)
   3:	66 66 36 34 5f       	data16 data16 ss xor $0x5f,%al
   8:	74 00                	je     a <_init-0x804871a>
   a:	5f                   	pop    %edi
   b:	49                   	dec    %ecx
   c:	4f                   	dec    %edi
   d:	5f                   	pop    %edi
   e:	72 65                	jb     75 <_init-0x80486af>
  10:	61                   	popa   
  11:	64 5f                	fs pop %edi
  13:	65 6e                	outsb  %gs:(%esi),(%dx)
  15:	64 00 73 69          	add    %dh,%fs:0x69(%ebx)
  19:	7a 65                	jp     80 <_init-0x80486a4>
  1b:	5f                   	pop    %edi
  1c:	74 00                	je     1e <_init-0x8048706>
  1e:	5f                   	pop    %edi
  1f:	49                   	dec    %ecx
  20:	4f                   	dec    %edi
  21:	5f                   	pop    %edi
  22:	46                   	inc    %esi
  23:	49                   	dec    %ecx
  24:	4c                   	dec    %esp
  25:	45                   	inc    %ebp
  26:	00 5f 49             	add    %bl,0x49(%edi)
  29:	4f                   	dec    %edi
  2a:	5f                   	pop    %edi
  2b:	77 72                	ja     9f <_init-0x8048685>
  2d:	69 74 65 5f 62 61 73 	imul   $0x65736162,0x5f(%ebp,%eiz,2),%esi
  34:	65 
  35:	00 5f 49             	add    %bl,0x49(%edi)
  38:	4f                   	dec    %edi
  39:	5f                   	pop    %edi
  3a:	62 75 66             	bound  %esi,0x66(%ebp)
  3d:	5f                   	pop    %edi
  3e:	65 6e                	outsb  %gs:(%esi),(%dx)
  40:	64 00 5f 5f          	add    %bl,%fs:0x5f(%edi)
  44:	70 61                	jo     a7 <_init-0x804867d>
  46:	64 32 00             	xor    %fs:(%eax),%al
  49:	5f                   	pop    %edi
  4a:	5f                   	pop    %edi
  4b:	70 61                	jo     ae <_init-0x8048676>
  4d:	64 33 00             	xor    %fs:(%eax),%eax
  50:	5f                   	pop    %edi
  51:	49                   	dec    %ecx
  52:	4f                   	dec    %edi
  53:	5f                   	pop    %edi
  54:	72 65                	jb     bb <_init-0x8048669>
  56:	61                   	popa   
  57:	64 5f                	fs pop %edi
  59:	70 74                	jo     cf <_init-0x8048655>
  5b:	72 00                	jb     5d <_init-0x80486c7>
  5d:	61                   	popa   
  5e:	72 67                	jb     c7 <_init-0x804865d>
  60:	76 00                	jbe    62 <_init-0x80486c2>
  62:	5f                   	pop    %edi
  63:	6d                   	insl   (%dx),%es:(%edi)
  64:	6f                   	outsl  %ds:(%esi),(%dx)
  65:	64 65 00 5f 63       	fs add %bl,%gs:0x63(%edi)
  6a:	68 61 69 6e 00       	push   $0x6e6961
  6f:	5f                   	pop    %edi
  70:	49                   	dec    %ecx
  71:	4f                   	dec    %edi
  72:	5f                   	pop    %edi
  73:	73 61                	jae    d6 <_init-0x804864e>
  75:	76 65                	jbe    dc <_init-0x8048648>
  77:	5f                   	pop    %edi
  78:	62 61 73             	bound  %esp,0x73(%ecx)
  7b:	65 00 75 6e          	add    %dh,%gs:0x6e(%ebp)
  7f:	73 69                	jae    ea <_init-0x804863a>
  81:	67 6e                	outsb  %ds:(%si),(%dx)
  83:	65 64 20 63 68       	gs and %ah,%fs:0x68(%ebx)
  88:	61                   	popa   
  89:	72 00                	jb     8b <_init-0x8048699>
  8b:	62 6f 6d             	bound  %ebp,0x6d(%edi)
  8e:	62 2e                	bound  %ebp,(%esi)
  90:	63 00                	arpl   %ax,(%eax)
  92:	5f                   	pop    %edi
  93:	5f                   	pop    %edi
  94:	70 61                	jo     f7 <_init-0x804862d>
  96:	64 34 00             	fs xor $0x0,%al
  99:	73 68                	jae    103 <_init-0x8048621>
  9b:	6f                   	outsl  %ds:(%esi),(%dx)
  9c:	72 74                	jb     112 <_init-0x8048612>
  9e:	20 75 6e             	and    %dh,0x6e(%ebp)
  a1:	73 69                	jae    10c <_init-0x8048618>
  a3:	67 6e                	outsb  %ds:(%si),(%dx)
  a5:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%ecx)
  aa:	74 00                	je     ac <_init-0x8048678>
  ac:	73 74                	jae    122 <_init-0x8048602>
  ae:	64 69 6e 00 5f 49 4f 	imul   $0x5f4f495f,%fs:0x0(%esi),%ebp
  b5:	5f 
  b6:	73 61                	jae    119 <_init-0x804860b>
  b8:	76 65                	jbe    11f <_init-0x8048605>
  ba:	5f                   	pop    %edi
  bb:	65 6e                	outsb  %gs:(%esi),(%dx)
  bd:	64 00 5f 49          	add    %bl,%fs:0x49(%edi)
  c1:	4f                   	dec    %edi
  c2:	5f                   	pop    %edi
  c3:	6c                   	insb   (%dx),%es:(%edi)
  c4:	6f                   	outsl  %ds:(%esi),(%dx)
  c5:	63 6b 5f             	arpl   %bp,0x5f(%ebx)
  c8:	74 00                	je     ca <_init-0x804865a>
  ca:	47                   	inc    %edi
  cb:	4e                   	dec    %esi
  cc:	55                   	push   %ebp
  cd:	20 43 20             	and    %al,0x20(%ebx)
  d0:	34 2e                	xor    $0x2e,%al
  d2:	36 2e 33 00          	ss xor %cs:(%eax),%eax
  d6:	5f                   	pop    %edi
  d7:	6d                   	insl   (%dx),%es:(%edi)
  d8:	61                   	popa   
  d9:	72 6b                	jb     146 <_init-0x80485de>
  db:	65 72 73             	gs jb  151 <_init-0x80485d3>
  de:	00 5f 70             	add    %bl,0x70(%edi)
  e1:	6f                   	outsl  %ds:(%esi),(%dx)
  e2:	73 00                	jae    e4 <_init-0x8048640>
  e4:	6d                   	insl   (%dx),%es:(%edi)
  e5:	61                   	popa   
  e6:	69 6e 00 5f 66 6c 61 	imul   $0x616c665f,0x0(%esi),%ebp
  ed:	67 73 32             	addr16 jae 122 <_init-0x8048602>
  f0:	00 5f 73             	add    %bl,0x73(%edi)
  f3:	62 75 66             	bound  %esi,0x66(%ebp)
  f6:	00 5f 5f             	add    %bl,0x5f(%edi)
  f9:	71 75                	jno    170 <_init-0x80485b4>
  fb:	61                   	popa   
  fc:	64 5f                	fs pop %edi
  fe:	74 00                	je     100 <_init-0x8048624>
 100:	5f                   	pop    %edi
 101:	6f                   	outsl  %ds:(%esi),(%dx)
 102:	6c                   	insb   (%dx),%es:(%edi)
 103:	64 5f                	fs pop %edi
 105:	6f                   	outsl  %ds:(%esi),(%dx)
 106:	66 66 73 65          	data16 data16 jae 16f <_init-0x80485b5>
 10a:	74 00                	je     10c <_init-0x8048618>
 10c:	5f                   	pop    %edi
 10d:	6c                   	insb   (%dx),%es:(%edi)
 10e:	6f                   	outsl  %ds:(%esi),(%dx)
 10f:	63 6b 00             	arpl   %bp,0x0(%ebx)
 112:	5f                   	pop    %edi
 113:	49                   	dec    %ecx
 114:	4f                   	dec    %edi
 115:	5f                   	pop    %edi
 116:	6d                   	insl   (%dx),%es:(%edi)
 117:	61                   	popa   
 118:	72 6b                	jb     185 <_init-0x804859f>
 11a:	65 72 00             	gs jb  11d <_init-0x8048607>
 11d:	5f                   	pop    %edi
 11e:	63 75 72             	arpl   %si,0x72(%ebp)
 121:	5f                   	pop    %edi
 122:	63 6f 6c             	arpl   %bp,0x6c(%edi)
 125:	75 6d                	jne    194 <_init-0x8048590>
 127:	6e                   	outsb  %ds:(%esi),(%dx)
 128:	00 6c 6f 6e          	add    %ch,0x6e(%edi,%ebp,2)
 12c:	67 20 6c 6f          	and    %ch,0x6f(%si)
 130:	6e                   	outsb  %ds:(%esi),(%dx)
 131:	67 20 75 6e          	and    %dh,0x6e(%di)
 135:	73 69                	jae    1a0 <_init-0x8048584>
 137:	67 6e                	outsb  %ds:(%si),(%dx)
 139:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%ecx)
 13e:	74 00                	je     140 <_init-0x80485e4>
 140:	5f                   	pop    %edi
 141:	66 69 6c 65 6e 6f 00 	imul   $0x6f,0x6e(%ebp,%eiz,2),%bp
 148:	5f                   	pop    %edi
 149:	49                   	dec    %ecx
 14a:	4f                   	dec    %edi
 14b:	5f                   	pop    %edi
 14c:	62 75 66             	bound  %esi,0x66(%ebp)
 14f:	5f                   	pop    %edi
 150:	62 61 73             	bound  %esp,0x73(%ecx)
 153:	65 00 5f 6e          	add    %bl,%gs:0x6e(%edi)
 157:	65 78 74             	gs js  1ce <_init-0x8048556>
 15a:	00 5f 76             	add    %bl,0x76(%edi)
 15d:	74 61                	je     1c0 <_init-0x8048564>
 15f:	62 6c 65 5f          	bound  %ebp,0x5f(%ebp,%eiz,2)
 163:	6f                   	outsl  %ds:(%esi),(%dx)
 164:	66 66 73 65          	data16 data16 jae 1cd <_init-0x8048557>
 168:	74 00                	je     16a <_init-0x80485ba>
 16a:	61                   	popa   
 16b:	72 67                	jb     1d4 <_init-0x8048550>
 16d:	63 00                	arpl   %ax,(%eax)
 16f:	5f                   	pop    %edi
 170:	5f                   	pop    %edi
 171:	6f                   	outsl  %ds:(%esi),(%dx)
 172:	66 66 5f             	data16 pop %di
 175:	74 00                	je     177 <_init-0x80485ad>
 177:	5f                   	pop    %edi
 178:	75 6e                	jne    1e8 <_init-0x804853c>
 17a:	75 73                	jne    1ef <_init-0x8048535>
 17c:	65 64 32 00          	gs xor %fs:(%eax),%al
 180:	6c                   	insb   (%dx),%es:(%edi)
 181:	6f                   	outsl  %ds:(%esi),(%dx)
 182:	6e                   	outsb  %ds:(%esi),(%dx)
 183:	67 20 6c 6f          	and    %ch,0x6f(%si)
 187:	6e                   	outsb  %ds:(%esi),(%dx)
 188:	67 20 69 6e          	and    %ch,0x6e(%bx,%di)
 18c:	74 00                	je     18e <_init-0x8048596>
 18e:	73 74                	jae    204 <_init-0x8048520>
 190:	64 6f                	outsl  %fs:(%esi),(%dx)
 192:	75 74                	jne    208 <_init-0x804851c>
 194:	00 70 72             	add    %dh,0x72(%eax)
 197:	69 6e 74 66 00 5f 49 	imul   $0x495f0066,0x74(%esi),%ebp
 19e:	4f                   	dec    %edi
 19f:	5f                   	pop    %edi
 1a0:	77 72                	ja     214 <_init-0x8048510>
 1a2:	69 74 65 5f 65 6e 64 	imul   $0x646e65,0x5f(%ebp,%eiz,2),%esi
 1a9:	00 
 1aa:	73 68                	jae    214 <_init-0x8048510>
 1ac:	6f                   	outsl  %ds:(%esi),(%dx)
 1ad:	72 74                	jb     223 <_init-0x8048501>
 1af:	20 69 6e             	and    %ch,0x6e(%ecx)
 1b2:	74 00                	je     1b4 <_init-0x8048570>
 1b4:	5f                   	pop    %edi
 1b5:	49                   	dec    %ecx
 1b6:	4f                   	dec    %edi
 1b7:	5f                   	pop    %edi
 1b8:	62 61 63             	bound  %esp,0x63(%ecx)
 1bb:	6b 75 70 5f          	imul   $0x5f,0x70(%ebp),%esi
 1bf:	62 61 73             	bound  %esp,0x73(%ecx)
 1c2:	65 00 5f 66          	add    %bl,%gs:0x66(%edi)
 1c6:	6c                   	insb   (%dx),%es:(%edi)
 1c7:	61                   	popa   
 1c8:	67 73 00             	addr16 jae 1cb <_init-0x8048559>
 1cb:	2f                   	das    
 1cc:	68 6f 6d 65 2f       	push   $0x2f656d6f
 1d1:	6c                   	insb   (%dx),%es:(%edi)
 1d2:	76 6a                	jbe    23e <_init-0x80484e6>
 1d4:	75 61                	jne    237 <_init-0x80484ed>
 1d6:	6e                   	outsb  %ds:(%esi),(%dx)
 1d7:	2f                   	das    
 1d8:	74 65                	je     23f <_init-0x80484e5>
 1da:	73 74                	jae    250 <_init-0x80484d4>
 1dc:	2f                   	das    
 1dd:	62 6f 6d             	bound  %ebp,0x6d(%edi)
 1e0:	62 6c 61 62          	bound  %ebp,0x62(%ecx,%eiz,2)
 1e4:	2f                   	das    
 1e5:	73 72                	jae    259 <_init-0x80484cb>
 1e7:	63 00                	arpl   %ax,(%eax)
 1e9:	5f                   	pop    %edi
 1ea:	5f                   	pop    %edi
 1eb:	70 61                	jo     24e <_init-0x80484d6>
 1ed:	64 31 00             	xor    %eax,%fs:(%eax)
 1f0:	5f                   	pop    %edi
 1f1:	49                   	dec    %ecx
 1f2:	4f                   	dec    %edi
 1f3:	5f                   	pop    %edi
 1f4:	77 72                	ja     268 <_init-0x80484bc>
 1f6:	69 74 65 5f 70 74 72 	imul   $0x727470,0x5f(%ebp,%eiz,2),%esi
 1fd:	00 
 1fe:	69 6e 70 75 74 00 5f 	imul   $0x5f007475,0x70(%esi),%ebp
 205:	5f                   	pop    %edi
 206:	70 61                	jo     269 <_init-0x80484bb>
 208:	64 35 00 5f 5f 66    	fs xor $0x665f5f00,%eax
 20e:	6d                   	insl   (%dx),%es:(%edi)
 20f:	74 00                	je     211 <_init-0x8048513>
 211:	5f                   	pop    %edi
 212:	49                   	dec    %ecx
 213:	4f                   	dec    %edi
 214:	5f                   	pop    %edi
 215:	72 65                	jb     27c <_init-0x80484a8>
 217:	61                   	popa   
 218:	64 5f                	fs pop %edi
 21a:	62 61 73             	bound  %esp,0x73(%ecx)
 21d:	65 00 69 6e          	add    %ch,%gs:0x6e(%ecx)
 221:	66 69 6c 65 00 5f 73 	imul   $0x735f,0x0(%ebp,%eiz,2),%bp
 228:	68 6f 72 74 62       	push   $0x6274726f
 22d:	75 66                	jne    295 <_init-0x804848f>
	...

Disassembly of section .debug_loc:

00000000 <.debug_loc>:
   0:	00 00                	add    %al,(%eax)
   2:	00 00                	add    %al,(%eax)
   4:	01 00                	add    %eax,(%eax)
   6:	00 00                	add    %al,(%eax)
   8:	02 00                	add    (%eax),%al
   a:	74 04                	je     10 <_init-0x8048714>
   c:	01 00                	add    %eax,(%eax)
   e:	00 00                	add    %al,(%eax)
  10:	03 00                	add    (%eax),%eax
  12:	00 00                	add    %al,(%eax)
  14:	02 00                	add    (%eax),%al
  16:	74 08                	je     20 <_init-0x8048704>
  18:	03 00                	add    (%eax),%eax
  1a:	00 00                	add    %al,(%eax)
  1c:	63 01                	arpl   %ax,(%ecx)
  1e:	00 00                	add    %al,(%eax)
  20:	02 00                	add    (%eax),%al
  22:	75 08                	jne    2c <_init-0x80486f8>
  24:	63 01                	arpl   %ax,(%ecx)
  26:	00 00                	add    %al,(%eax)
  28:	64 01 00             	add    %eax,%fs:(%eax)
  2b:	00 02                	add    %al,(%edx)
  2d:	00 74 04 00          	add    %dh,0x0(%esp,%eax,1)
  31:	00 00                	add    %al,(%eax)
  33:	00 00                	add    %al,(%eax)
  35:	00 00                	add    %al,(%eax)
  37:	00 b7 00 00 00 be    	add    %dh,-0x42000000(%edi)
  3d:	00 00                	add    %al,(%eax)
  3f:	00 01                	add    %al,(%ecx)
  41:	00 50 d5             	add    %dl,-0x2b(%eax)
  44:	00 00                	add    %al,(%eax)
  46:	00 dc                	add    %bl,%ah
  48:	00 00                	add    %al,(%eax)
  4a:	00 01                	add    %al,(%ecx)
  4c:	00 50 f3             	add    %dl,-0xd(%eax)
  4f:	00 00                	add    %al,(%eax)
  51:	00 fa                	add    %bh,%dl
  53:	00 00                	add    %al,(%eax)
  55:	00 01                	add    %al,(%ecx)
  57:	00 50 11             	add    %dl,0x11(%eax)
  5a:	01 00                	add    %eax,(%eax)
  5c:	00 18                	add    %bl,(%eax)
  5e:	01 00                	add    %eax,(%eax)
  60:	00 01                	add    %al,(%ecx)
  62:	00 50 2f             	add    %dl,0x2f(%eax)
  65:	01 00                	add    %eax,(%eax)
  67:	00 36                	add    %dh,(%esi)
  69:	01 00                	add    %eax,(%eax)
  6b:	00 01                	add    %al,(%ecx)
  6d:	00 50 4d             	add    %dl,0x4d(%eax)
  70:	01 00                	add    %eax,(%eax)
  72:	00 54 01 00          	add    %dl,0x0(%ecx,%eax,1)
  76:	00 01                	add    %al,(%ecx)
  78:	00 50 00             	add    %dl,0x0(%eax)
  7b:	00 00                	add    %al,(%eax)
  7d:	00 00                	add    %al,(%eax)
  7f:	00 00                	add    %al,(%eax)
  81:	00 42 00             	add    %al,0x0(%edx)
  84:	00 00                	add    %al,(%eax)
  86:	6f                   	outsl  %ds:(%esi),(%dx)
  87:	00 00                	add    %al,(%eax)
  89:	00 06                	add    %al,(%esi)
  8b:	00 03                	add    %al,(%ebx)
  8d:	a2 a0 04 08 9f       	mov    %al,0x9f0804a0
	...
  9a:	6f                   	outsl  %ds:(%esi),(%dx)
  9b:	00 00                	add    %al,(%eax)
  9d:	00 95 00 00 00 06    	add    %dl,0x6000000(%ebp)
  a3:	00 03                	add    %al,(%ebx)
  a5:	bf a0 04 08 9f       	mov    $0x9f0804a0,%edi
	...
