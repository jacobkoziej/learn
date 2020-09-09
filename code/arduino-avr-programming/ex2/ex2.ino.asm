
ex2.ino.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__ctors_end>
   4:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
   8:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
   c:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
  10:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
  14:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
  18:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
  1c:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
  20:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
  24:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
  28:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
  2c:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
  30:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
  34:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
  38:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
  3c:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
  40:	0c 94 c3 00 	jmp	0x186	; 0x186 <__vector_16>
  44:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
  48:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
  4c:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
  50:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
  54:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
  58:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
  5c:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
  60:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>
  64:	0c 94 73 00 	jmp	0xe6	; 0xe6 <__bad_interrupt>

00000068 <port_to_mode_PGM>:
  68:	00 00 00 00 24 00 27 00 2a 00                       ....$.'.*.

00000072 <port_to_input_PGM>:
  72:	00 00 00 00 23 00 26 00 29 00                       ....#.&.).

0000007c <port_to_output_PGM>:
  7c:	00 00 00 00 25 00 28 00 2b 00                       ....%.(.+.

00000086 <digital_pin_to_port_PGM>:
  86:	04 04 04 04 04 04 04 04 02 02 02 02 02 02 03 03     ................
  96:	03 03 03 03                                         ....

0000009a <digital_pin_to_bit_mask_PGM>:
  9a:	01 02 04 08 10 20 40 80 01 02 04 08 10 20 01 02     ..... @...... ..
  aa:	04 08 10 20                                         ... 

000000ae <digital_pin_to_timer_PGM>:
  ae:	00 00 00 08 00 02 01 00 00 03 04 07 00 00 00 00     ................
  be:	00 00 00 00                                         ....

000000c2 <__ctors_end>:
  c2:	11 24       	eor	r1, r1
  c4:	1f be       	out	0x3f, r1	; 63
  c6:	cf ef       	ldi	r28, 0xFF	; 255
  c8:	d8 e0       	ldi	r29, 0x08	; 8
  ca:	de bf       	out	0x3e, r29	; 62
  cc:	cd bf       	out	0x3d, r28	; 61

000000ce <__do_clear_bss>:
  ce:	21 e0       	ldi	r18, 0x01	; 1
  d0:	a0 e0       	ldi	r26, 0x00	; 0
  d2:	b1 e0       	ldi	r27, 0x01	; 1
  d4:	01 c0       	rjmp	.+2      	; 0xd8 <.do_clear_bss_start>

000000d6 <.do_clear_bss_loop>:
  d6:	1d 92       	st	X+, r1

000000d8 <.do_clear_bss_start>:
  d8:	a9 30       	cpi	r26, 0x09	; 9
  da:	b2 07       	cpc	r27, r18
  dc:	e1 f7       	brne	.-8      	; 0xd6 <.do_clear_bss_loop>
  de:	0e 94 0d 01 	call	0x21a	; 0x21a <main>
  e2:	0c 94 de 01 	jmp	0x3bc	; 0x3bc <_exit>

000000e6 <__bad_interrupt>:
  e6:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000ea <turnOffPWM>:
//
//static inline void turnOffPWM(uint8_t timer) __attribute__ ((always_inline));
//static inline void turnOffPWM(uint8_t timer)
static void turnOffPWM(uint8_t timer)
{
	switch (timer)
  ea:	83 30       	cpi	r24, 0x03	; 3
  ec:	81 f0       	breq	.+32     	; 0x10e <turnOffPWM+0x24>
  ee:	28 f4       	brcc	.+10     	; 0xfa <turnOffPWM+0x10>
  f0:	81 30       	cpi	r24, 0x01	; 1
  f2:	99 f0       	breq	.+38     	; 0x11a <turnOffPWM+0x30>
  f4:	82 30       	cpi	r24, 0x02	; 2
  f6:	a9 f0       	breq	.+42     	; 0x122 <turnOffPWM+0x38>
  f8:	08 95       	ret
  fa:	87 30       	cpi	r24, 0x07	; 7
  fc:	a9 f0       	breq	.+42     	; 0x128 <turnOffPWM+0x3e>
  fe:	88 30       	cpi	r24, 0x08	; 8
 100:	c9 f0       	breq	.+50     	; 0x134 <turnOffPWM+0x4a>
 102:	84 30       	cpi	r24, 0x04	; 4
 104:	b1 f4       	brne	.+44     	; 0x132 <turnOffPWM+0x48>
	{
		#if defined(TCCR1A) && defined(COM1A1)
		case TIMER1A:   cbi(TCCR1A, COM1A1);    break;
		#endif
		#if defined(TCCR1A) && defined(COM1B1)
		case TIMER1B:   cbi(TCCR1A, COM1B1);    break;
 106:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
 10a:	8f 7d       	andi	r24, 0xDF	; 223
 10c:	03 c0       	rjmp	.+6      	; 0x114 <turnOffPWM+0x2a>
		case TIMER1A:   cbi(TCCR1A, COM1A1);    break;
 10e:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
 112:	8f 77       	andi	r24, 0x7F	; 127
		case TIMER1B:   cbi(TCCR1A, COM1B1);    break;
 114:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
 118:	08 95       	ret
		#if defined(TCCR2) && defined(COM21)
		case  TIMER2:   cbi(TCCR2, COM21);      break;
		#endif
		
		#if defined(TCCR0A) && defined(COM0A1)
		case  TIMER0A:  cbi(TCCR0A, COM0A1);    break;
 11a:	84 b5       	in	r24, 0x24	; 36
 11c:	8f 77       	andi	r24, 0x7F	; 127
		#endif
		
		#if defined(TCCR0A) && defined(COM0B1)
		case  TIMER0B:  cbi(TCCR0A, COM0B1);    break;
 11e:	84 bd       	out	0x24, r24	; 36
 120:	08 95       	ret
 122:	84 b5       	in	r24, 0x24	; 36
 124:	8f 7d       	andi	r24, 0xDF	; 223
 126:	fb cf       	rjmp	.-10     	; 0x11e <turnOffPWM+0x34>
		#endif
		#if defined(TCCR2A) && defined(COM2A1)
		case  TIMER2A:  cbi(TCCR2A, COM2A1);    break;
 128:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
 12c:	8f 77       	andi	r24, 0x7F	; 127
		#endif
		#if defined(TCCR2A) && defined(COM2B1)
		case  TIMER2B:  cbi(TCCR2A, COM2B1);    break;
 12e:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
		case  TIMER5A:  cbi(TCCR5A, COM5A1);    break;
		case  TIMER5B:  cbi(TCCR5A, COM5B1);    break;
		case  TIMER5C:  cbi(TCCR5A, COM5C1);    break;
		#endif
	}
}
 132:	08 95       	ret
		case  TIMER2B:  cbi(TCCR2A, COM2B1);    break;
 134:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
 138:	8f 7d       	andi	r24, 0xDF	; 223
 13a:	f9 cf       	rjmp	.-14     	; 0x12e <turnOffPWM+0x44>

0000013c <micros>:
	return m;
}

unsigned long micros() {
	unsigned long m;
	uint8_t oldSREG = SREG, t;
 13c:	3f b7       	in	r19, 0x3f	; 63
	
	cli();
 13e:	f8 94       	cli
	m = timer0_overflow_count;
 140:	80 91 05 01 	lds	r24, 0x0105	; 0x800105 <timer0_overflow_count>
 144:	90 91 06 01 	lds	r25, 0x0106	; 0x800106 <timer0_overflow_count+0x1>
 148:	a0 91 07 01 	lds	r26, 0x0107	; 0x800107 <timer0_overflow_count+0x2>
 14c:	b0 91 08 01 	lds	r27, 0x0108	; 0x800108 <timer0_overflow_count+0x3>
#if defined(TCNT0)
	t = TCNT0;
 150:	26 b5       	in	r18, 0x26	; 38
#else
	#error TIMER 0 not defined
#endif

#ifdef TIFR0
	if ((TIFR0 & _BV(TOV0)) && (t < 255))
 152:	a8 9b       	sbis	0x15, 0	; 21
 154:	05 c0       	rjmp	.+10     	; 0x160 <micros+0x24>
 156:	2f 3f       	cpi	r18, 0xFF	; 255
 158:	19 f0       	breq	.+6      	; 0x160 <micros+0x24>
		m++;
 15a:	01 96       	adiw	r24, 0x01	; 1
 15c:	a1 1d       	adc	r26, r1
 15e:	b1 1d       	adc	r27, r1
#else
	if ((TIFR & _BV(TOV0)) && (t < 255))
		m++;
#endif

	SREG = oldSREG;
 160:	3f bf       	out	0x3f, r19	; 63
	
	return ((m << 8) + t) * (64 / clockCyclesPerMicrosecond());
 162:	ba 2f       	mov	r27, r26
 164:	a9 2f       	mov	r26, r25
 166:	98 2f       	mov	r25, r24
 168:	88 27       	eor	r24, r24
 16a:	bc 01       	movw	r22, r24
 16c:	cd 01       	movw	r24, r26
 16e:	62 0f       	add	r22, r18
 170:	71 1d       	adc	r23, r1
 172:	81 1d       	adc	r24, r1
 174:	91 1d       	adc	r25, r1
 176:	42 e0       	ldi	r20, 0x02	; 2
 178:	66 0f       	add	r22, r22
 17a:	77 1f       	adc	r23, r23
 17c:	88 1f       	adc	r24, r24
 17e:	99 1f       	adc	r25, r25
 180:	4a 95       	dec	r20
 182:	d1 f7       	brne	.-12     	; 0x178 <micros+0x3c>
}
 184:	08 95       	ret

00000186 <__vector_16>:
{
 186:	1f 92       	push	r1
 188:	0f 92       	push	r0
 18a:	0f b6       	in	r0, 0x3f	; 63
 18c:	0f 92       	push	r0
 18e:	11 24       	eor	r1, r1
 190:	2f 93       	push	r18
 192:	3f 93       	push	r19
 194:	8f 93       	push	r24
 196:	9f 93       	push	r25
 198:	af 93       	push	r26
 19a:	bf 93       	push	r27
	unsigned long m = timer0_millis;
 19c:	80 91 01 01 	lds	r24, 0x0101	; 0x800101 <timer0_millis>
 1a0:	90 91 02 01 	lds	r25, 0x0102	; 0x800102 <timer0_millis+0x1>
 1a4:	a0 91 03 01 	lds	r26, 0x0103	; 0x800103 <timer0_millis+0x2>
 1a8:	b0 91 04 01 	lds	r27, 0x0104	; 0x800104 <timer0_millis+0x3>
	unsigned char f = timer0_fract;
 1ac:	30 91 00 01 	lds	r19, 0x0100	; 0x800100 <timer0_fract>
	f += FRACT_INC;
 1b0:	23 e0       	ldi	r18, 0x03	; 3
 1b2:	23 0f       	add	r18, r19
	if (f >= FRACT_MAX) {
 1b4:	2d 37       	cpi	r18, 0x7D	; 125
 1b6:	58 f5       	brcc	.+86     	; 0x20e <__vector_16+0x88>
	m += MILLIS_INC;
 1b8:	01 96       	adiw	r24, 0x01	; 1
 1ba:	a1 1d       	adc	r26, r1
 1bc:	b1 1d       	adc	r27, r1
	timer0_fract = f;
 1be:	20 93 00 01 	sts	0x0100, r18	; 0x800100 <timer0_fract>
	timer0_millis = m;
 1c2:	80 93 01 01 	sts	0x0101, r24	; 0x800101 <timer0_millis>
 1c6:	90 93 02 01 	sts	0x0102, r25	; 0x800102 <timer0_millis+0x1>
 1ca:	a0 93 03 01 	sts	0x0103, r26	; 0x800103 <timer0_millis+0x2>
 1ce:	b0 93 04 01 	sts	0x0104, r27	; 0x800104 <timer0_millis+0x3>
	timer0_overflow_count++;
 1d2:	80 91 05 01 	lds	r24, 0x0105	; 0x800105 <timer0_overflow_count>
 1d6:	90 91 06 01 	lds	r25, 0x0106	; 0x800106 <timer0_overflow_count+0x1>
 1da:	a0 91 07 01 	lds	r26, 0x0107	; 0x800107 <timer0_overflow_count+0x2>
 1de:	b0 91 08 01 	lds	r27, 0x0108	; 0x800108 <timer0_overflow_count+0x3>
 1e2:	01 96       	adiw	r24, 0x01	; 1
 1e4:	a1 1d       	adc	r26, r1
 1e6:	b1 1d       	adc	r27, r1
 1e8:	80 93 05 01 	sts	0x0105, r24	; 0x800105 <timer0_overflow_count>
 1ec:	90 93 06 01 	sts	0x0106, r25	; 0x800106 <timer0_overflow_count+0x1>
 1f0:	a0 93 07 01 	sts	0x0107, r26	; 0x800107 <timer0_overflow_count+0x2>
 1f4:	b0 93 08 01 	sts	0x0108, r27	; 0x800108 <timer0_overflow_count+0x3>
}
 1f8:	bf 91       	pop	r27
 1fa:	af 91       	pop	r26
 1fc:	9f 91       	pop	r25
 1fe:	8f 91       	pop	r24
 200:	3f 91       	pop	r19
 202:	2f 91       	pop	r18
 204:	0f 90       	pop	r0
 206:	0f be       	out	0x3f, r0	; 63
 208:	0f 90       	pop	r0
 20a:	1f 90       	pop	r1
 20c:	18 95       	reti
		f -= FRACT_MAX;
 20e:	26 e8       	ldi	r18, 0x86	; 134
 210:	23 0f       	add	r18, r19
		m += 1;
 212:	02 96       	adiw	r24, 0x02	; 2
 214:	a1 1d       	adc	r26, r1
 216:	b1 1d       	adc	r27, r1
 218:	d2 cf       	rjmp	.-92     	; 0x1be <__vector_16+0x38>

0000021a <main>:

void init()
{
	// this needs to be called before setup() or some functions won't
	// work there
	sei();
 21a:	78 94       	sei
	
	// on the ATmega168, timer 0 is also used for fast hardware pwm
	// (using phase-correct PWM would mean that timer 0 overflowed half as often
	// resulting in different millis() behavior on the ATmega8 and ATmega168)
#if defined(TCCR0A) && defined(WGM01)
	sbi(TCCR0A, WGM01);
 21c:	84 b5       	in	r24, 0x24	; 36
 21e:	82 60       	ori	r24, 0x02	; 2
 220:	84 bd       	out	0x24, r24	; 36
	sbi(TCCR0A, WGM00);
 222:	84 b5       	in	r24, 0x24	; 36
 224:	81 60       	ori	r24, 0x01	; 1
 226:	84 bd       	out	0x24, r24	; 36
	// this combination is for the standard atmega8
	sbi(TCCR0, CS01);
	sbi(TCCR0, CS00);
#elif defined(TCCR0B) && defined(CS01) && defined(CS00)
	// this combination is for the standard 168/328/1280/2560
	sbi(TCCR0B, CS01);
 228:	85 b5       	in	r24, 0x25	; 37
 22a:	82 60       	ori	r24, 0x02	; 2
 22c:	85 bd       	out	0x25, r24	; 37
	sbi(TCCR0B, CS00);
 22e:	85 b5       	in	r24, 0x25	; 37
 230:	81 60       	ori	r24, 0x01	; 1
 232:	85 bd       	out	0x25, r24	; 37

	// enable timer 0 overflow interrupt
#if defined(TIMSK) && defined(TOIE0)
	sbi(TIMSK, TOIE0);
#elif defined(TIMSK0) && defined(TOIE0)
	sbi(TIMSK0, TOIE0);
 234:	80 91 6e 00 	lds	r24, 0x006E	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
 238:	81 60       	ori	r24, 0x01	; 1
 23a:	80 93 6e 00 	sts	0x006E, r24	; 0x80006e <__DATA_REGION_ORIGIN__+0xe>
	// this is better for motors as it ensures an even waveform
	// note, however, that fast pwm mode can achieve a frequency of up
	// 8 MHz (with a 16 MHz clock) at 50% duty cycle

#if defined(TCCR1B) && defined(CS11) && defined(CS10)
	TCCR1B = 0;
 23e:	10 92 81 00 	sts	0x0081, r1	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>

	// set timer 1 prescale factor to 64
	sbi(TCCR1B, CS11);
 242:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
 246:	82 60       	ori	r24, 0x02	; 2
 248:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
#if F_CPU >= 8000000L
	sbi(TCCR1B, CS10);
 24c:	80 91 81 00 	lds	r24, 0x0081	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
 250:	81 60       	ori	r24, 0x01	; 1
 252:	80 93 81 00 	sts	0x0081, r24	; 0x800081 <__DATA_REGION_ORIGIN__+0x21>
	sbi(TCCR1, CS10);
#endif
#endif
	// put timer 1 in 8-bit phase correct pwm mode
#if defined(TCCR1A) && defined(WGM10)
	sbi(TCCR1A, WGM10);
 256:	80 91 80 00 	lds	r24, 0x0080	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>
 25a:	81 60       	ori	r24, 0x01	; 1
 25c:	80 93 80 00 	sts	0x0080, r24	; 0x800080 <__DATA_REGION_ORIGIN__+0x20>

	// set timer 2 prescale factor to 64
#if defined(TCCR2) && defined(CS22)
	sbi(TCCR2, CS22);
#elif defined(TCCR2B) && defined(CS22)
	sbi(TCCR2B, CS22);
 260:	80 91 b1 00 	lds	r24, 0x00B1	; 0x8000b1 <__DATA_REGION_ORIGIN__+0x51>
 264:	84 60       	ori	r24, 0x04	; 4
 266:	80 93 b1 00 	sts	0x00B1, r24	; 0x8000b1 <__DATA_REGION_ORIGIN__+0x51>

	// configure timer 2 for phase correct pwm (8-bit)
#if defined(TCCR2) && defined(WGM20)
	sbi(TCCR2, WGM20);
#elif defined(TCCR2A) && defined(WGM20)
	sbi(TCCR2A, WGM20);
 26a:	80 91 b0 00 	lds	r24, 0x00B0	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
 26e:	81 60       	ori	r24, 0x01	; 1
 270:	80 93 b0 00 	sts	0x00B0, r24	; 0x8000b0 <__DATA_REGION_ORIGIN__+0x50>
#endif

#if defined(ADCSRA)
	// set a2d prescaler so we are inside the desired 50-200 KHz range.
	#if F_CPU >= 16000000 // 16 MHz / 128 = 125 KHz
		sbi(ADCSRA, ADPS2);
 274:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
 278:	84 60       	ori	r24, 0x04	; 4
 27a:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		sbi(ADCSRA, ADPS1);
 27e:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
 282:	82 60       	ori	r24, 0x02	; 2
 284:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		sbi(ADCSRA, ADPS0);
 288:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
 28c:	81 60       	ori	r24, 0x01	; 1
 28e:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
		cbi(ADCSRA, ADPS2);
		cbi(ADCSRA, ADPS1);
		sbi(ADCSRA, ADPS0);
	#endif
	// enable a2d conversions
	sbi(ADCSRA, ADEN);
 292:	80 91 7a 00 	lds	r24, 0x007A	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
 296:	80 68       	ori	r24, 0x80	; 128
 298:	80 93 7a 00 	sts	0x007A, r24	; 0x80007a <__DATA_REGION_ORIGIN__+0x1a>
	// here so they can be used as normal digital i/o; they will be
	// reconnected in Serial.begin()
#if defined(UCSRB)
	UCSRB = 0;
#elif defined(UCSR0B)
	UCSR0B = 0;
 29c:	10 92 c1 00 	sts	0x00C1, r1	; 0x8000c1 <__DATA_REGION_ORIGIN__+0x61>
	uint8_t bit = digitalPinToBitMask(pin);
 2a0:	c7 ea       	ldi	r28, 0xA7	; 167
 2a2:	d0 e0       	ldi	r29, 0x00	; 0
 2a4:	fe 01       	movw	r30, r28
 2a6:	24 91       	lpm	r18, Z
	uint8_t port = digitalPinToPort(pin);
 2a8:	03 e9       	ldi	r16, 0x93	; 147
 2aa:	10 e0       	ldi	r17, 0x00	; 0
 2ac:	f8 01       	movw	r30, r16
 2ae:	84 91       	lpm	r24, Z
	if (port == NOT_A_PIN) return;
 2b0:	88 23       	and	r24, r24
 2b2:	99 f0       	breq	.+38     	; 0x2da <main+0xc0>
	reg = portModeRegister(port);
 2b4:	90 e0       	ldi	r25, 0x00	; 0
 2b6:	88 0f       	add	r24, r24
 2b8:	99 1f       	adc	r25, r25
 2ba:	fc 01       	movw	r30, r24
 2bc:	e8 59       	subi	r30, 0x98	; 152
 2be:	ff 4f       	sbci	r31, 0xFF	; 255
 2c0:	a5 91       	lpm	r26, Z+
 2c2:	b4 91       	lpm	r27, Z
	out = portOutputRegister(port);
 2c4:	fc 01       	movw	r30, r24
 2c6:	e4 58       	subi	r30, 0x84	; 132
 2c8:	ff 4f       	sbci	r31, 0xFF	; 255
 2ca:	85 91       	lpm	r24, Z+
 2cc:	94 91       	lpm	r25, Z
		uint8_t oldSREG = SREG;
 2ce:	8f b7       	in	r24, 0x3f	; 63
                cli();
 2d0:	f8 94       	cli
		*reg |= bit;
 2d2:	9c 91       	ld	r25, X
 2d4:	29 2b       	or	r18, r25
 2d6:	2c 93       	st	X, r18
		SREG = oldSREG;
 2d8:	8f bf       	out	0x3f, r24	; 63
	SREG = oldSREG;
}

int digitalRead(uint8_t pin)
{
	uint8_t timer = digitalPinToTimer(pin);
 2da:	3b eb       	ldi	r19, 0xBB	; 187
 2dc:	83 2e       	mov	r8, r19
 2de:	30 e0       	ldi	r19, 0x00	; 0
 2e0:	93 2e       	mov	r9, r19
	
	setup();
    
	for (;;) {
		loop();
		if (serialEventRun) serialEventRun();
 2e2:	40 e0       	ldi	r20, 0x00	; 0
 2e4:	a4 2e       	mov	r10, r20
 2e6:	40 e0       	ldi	r20, 0x00	; 0
 2e8:	b4 2e       	mov	r11, r20
 2ea:	f4 01       	movw	r30, r8
 2ec:	84 91       	lpm	r24, Z
	uint8_t bit = digitalPinToBitMask(pin);
 2ee:	fe 01       	movw	r30, r28
 2f0:	e4 90       	lpm	r14, Z
	uint8_t port = digitalPinToPort(pin);
 2f2:	f8 01       	movw	r30, r16
 2f4:	f4 90       	lpm	r15, Z

	if (port == NOT_A_PIN) return LOW;
 2f6:	ff 20       	and	r15, r15
 2f8:	09 f4       	brne	.+2      	; 0x2fc <main+0xe2>
 2fa:	5b c0       	rjmp	.+182    	; 0x3b2 <main+0x198>

	// If the pin that support PWM output, we need to turn it off
	// before getting a digital reading.
	if (timer != NOT_ON_TIMER) turnOffPWM(timer);
 2fc:	81 11       	cpse	r24, r1
 2fe:	0e 94 75 00 	call	0xea	; 0xea <turnOffPWM>

	if (*portInputRegister(port) & bit) return HIGH;
 302:	ef 2d       	mov	r30, r15
 304:	f0 e0       	ldi	r31, 0x00	; 0
 306:	ee 0f       	add	r30, r30
 308:	ff 1f       	adc	r31, r31
 30a:	ee 58       	subi	r30, 0x8E	; 142
 30c:	ff 4f       	sbci	r31, 0xFF	; 255
 30e:	a5 91       	lpm	r26, Z+
 310:	b4 91       	lpm	r27, Z
 312:	8c 91       	ld	r24, X
 314:	e8 22       	and	r14, r24
 316:	91 e0       	ldi	r25, 0x01	; 1
 318:	80 e0       	ldi	r24, 0x00	; 0
 31a:	09 f4       	brne	.+2      	; 0x31e <main+0x104>
 31c:	90 e0       	ldi	r25, 0x00	; 0
	if (port == NOT_A_PIN) return LOW;
 31e:	e9 2e       	mov	r14, r25
 320:	f8 2e       	mov	r15, r24
	uint8_t timer = digitalPinToTimer(pin);
 322:	f4 01       	movw	r30, r8
 324:	84 91       	lpm	r24, Z
	uint8_t bit = digitalPinToBitMask(pin);
 326:	fe 01       	movw	r30, r28
 328:	d4 90       	lpm	r13, Z
	uint8_t port = digitalPinToPort(pin);
 32a:	f8 01       	movw	r30, r16
 32c:	c4 90       	lpm	r12, Z
	if (port == NOT_A_PIN) return;
 32e:	cc 20       	and	r12, r12
 330:	a1 f0       	breq	.+40     	; 0x35a <main+0x140>
	if (timer != NOT_ON_TIMER) turnOffPWM(timer);
 332:	81 11       	cpse	r24, r1
 334:	0e 94 75 00 	call	0xea	; 0xea <turnOffPWM>
	out = portOutputRegister(port);
 338:	ec 2d       	mov	r30, r12
 33a:	f0 e0       	ldi	r31, 0x00	; 0
 33c:	ee 0f       	add	r30, r30
 33e:	ff 1f       	adc	r31, r31
 340:	e4 58       	subi	r30, 0x84	; 132
 342:	ff 4f       	sbci	r31, 0xFF	; 255
 344:	a5 91       	lpm	r26, Z+
 346:	b4 91       	lpm	r27, Z
	uint8_t oldSREG = SREG;
 348:	8f b7       	in	r24, 0x3f	; 63
	cli();
 34a:	f8 94       	cli
		*out &= ~bit;
 34c:	9c 91       	ld	r25, X
	if (val == LOW) {
 34e:	ef 28       	or	r14, r15
 350:	99 f1       	breq	.+102    	; 0x3b8 <main+0x19e>
		*out &= ~bit;
 352:	d0 94       	com	r13
 354:	d9 22       	and	r13, r25
		*out |= bit;
 356:	dc 92       	st	X, r13
	SREG = oldSREG;
 358:	8f bf       	out	0x3f, r24	; 63
	uint32_t start = micros();
 35a:	0e 94 9e 00 	call	0x13c	; 0x13c <micros>
 35e:	2b 01       	movw	r4, r22
 360:	3c 01       	movw	r6, r24
 362:	88 ee       	ldi	r24, 0xE8	; 232
 364:	c8 2e       	mov	r12, r24
 366:	83 e0       	ldi	r24, 0x03	; 3
 368:	d8 2e       	mov	r13, r24
 36a:	e1 2c       	mov	r14, r1
 36c:	f1 2c       	mov	r15, r1
		while ( ms > 0 && (micros() - start) >= 1000) {
 36e:	0e 94 9e 00 	call	0x13c	; 0x13c <micros>
 372:	64 19       	sub	r22, r4
 374:	75 09       	sbc	r23, r5
 376:	86 09       	sbc	r24, r6
 378:	97 09       	sbc	r25, r7
 37a:	68 3e       	cpi	r22, 0xE8	; 232
 37c:	73 40       	sbci	r23, 0x03	; 3
 37e:	81 05       	cpc	r24, r1
 380:	91 05       	cpc	r25, r1
 382:	a8 f3       	brcs	.-22     	; 0x36e <main+0x154>
			ms--;
 384:	f1 e0       	ldi	r31, 0x01	; 1
 386:	cf 1a       	sub	r12, r31
 388:	d1 08       	sbc	r13, r1
 38a:	e1 08       	sbc	r14, r1
 38c:	f1 08       	sbc	r15, r1
			start += 1000;
 38e:	28 ee       	ldi	r18, 0xE8	; 232
 390:	42 0e       	add	r4, r18
 392:	23 e0       	ldi	r18, 0x03	; 3
 394:	52 1e       	adc	r5, r18
 396:	61 1c       	adc	r6, r1
 398:	71 1c       	adc	r7, r1
		while ( ms > 0 && (micros() - start) >= 1000) {
 39a:	c1 14       	cp	r12, r1
 39c:	d1 04       	cpc	r13, r1
 39e:	e1 04       	cpc	r14, r1
 3a0:	f1 04       	cpc	r15, r1
 3a2:	29 f7       	brne	.-54     	; 0x36e <main+0x154>
 3a4:	a1 14       	cp	r10, r1
 3a6:	b1 04       	cpc	r11, r1
 3a8:	09 f4       	brne	.+2      	; 0x3ac <main+0x192>
 3aa:	9f cf       	rjmp	.-194    	; 0x2ea <main+0xd0>
 3ac:	0e 94 00 00 	call	0	; 0x0 <__vectors>
 3b0:	9c cf       	rjmp	.-200    	; 0x2ea <main+0xd0>
	if (port == NOT_A_PIN) return LOW;
 3b2:	f1 2c       	mov	r15, r1
 3b4:	e1 2c       	mov	r14, r1
 3b6:	b5 cf       	rjmp	.-150    	; 0x322 <main+0x108>
		*out |= bit;
 3b8:	d9 2a       	or	r13, r25
 3ba:	cd cf       	rjmp	.-102    	; 0x356 <main+0x13c>

000003bc <_exit>:
 3bc:	f8 94       	cli

000003be <__stop_program>:
 3be:	ff cf       	rjmp	.-2      	; 0x3be <__stop_program>
