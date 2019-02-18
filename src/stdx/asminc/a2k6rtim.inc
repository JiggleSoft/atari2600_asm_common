;==============================================================================
; Name:         Atari 2600 RIOT Timer utilities include file.
; Filename:     a2k6rtim.inc
; Platform:     Atari 2600
; Language:		6507 Assembly Language (https://www.cc65.org/doc/ca65.html)
; Author:       Justin Lane (atari2600@jigglesoft.co.uk)
; Date:         2019-02-18 21:44
; Vesion:		1.1.1
;------------------------------------------------------------------------------
; Licence:		This file is licensed under the following licence:-
;						Creative Commons Attribution 4.0 International
;						http://creativecommons.org/licenses/by/4.0/
;						with an exception, see /LICENCE.txt file.
;------------------------------------------------------------------------------


;==============================================================================
; Atari 2600 RIOT Timer utilities.
;==============================================================================

				.PUSHSEG

;------------------------------------------------------------------------------
; Common Timer Macros.
;------------------------------------------------------------------------------

; Initialise timer with count value, divide by 64, timer interrupt enabled.

.MACRO		TIM_INIT_CNT		cnt
			LDA					#cnt		; 2 cycles
			STA					WTIM64EI	; 4 cycles
.ENDMACRO



; Initialise timer with line count value, div by 64, timer interrupt enabled.
FIXME
.MACRO		TIM_INIT_LINE		line
			.WARNING .STRING((CPU_HORIZ_CLKS*(line)/64))
			.WARNING .STRING(((CPU_HORIZ_CLKS+1)*(line)/64))
			.IF (CPU_HORIZ_CLKS*(line)/64) != ((CPU_HORIZ_CLKS+8)*(line)/64)
			.WARNING "Line count and time wait for interrupt may trigger on more than one line!"
			.ENDIF
			LDA					#(CPU_HORIZ_CLKS*(line)/64)
			STA					WTIM64EI
.ENDMACRO



; Wait for timer interrupt to occur. Uses Accummulator as temporary storage.

.MACRO		TIM_WAIT_INT
			.LOCAL				loop
loop:		LDA					RINTFLAG	; 4 cycles.
			BPL					loop		; 2 cycles+1 branch+1 cross page.
.ENDMACRO



;------------------------------------------------------------------------------

				.POPSEG

;------------------------------------------------------------------------------

