; AssemblerAtmega328P-Blink.asm
; Created: 13.10.2020 09:10:00
; Author : Stefan Schulze
; (Not a professional Programmer, only Beginner)

.equ LED = 5            ;Pin 19 at Amega
.def delay_0 = r17
.def delay_1 = r18
.def delay_2 = r19

ldi r16,0b00100000
out DDRB,r16
out PortB,r16

Start:

loop:
ldi delay_0, 200
ldi delay_1, 200
ldi delay_2, 100
sbi PINB, LED
rcall delay
rjmp Start

delay:
dec delay_0
brne delay
dec delay_1
brne delay
dec delay_2
brne delay
ret
