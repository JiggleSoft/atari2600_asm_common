;==============================================================================
; Name:         Standard Extra RIOT Timer Include  Demo.
; Filename:     stdx_rtim_demo.asm
; Platform:     Atari 2600
; Language:		6507 Assembly Language (https://www.cc65.org/doc/ca65.html)
; Author:       Justin Lane (atari2600@jigglesoft.co.uk)
; Date:         2019-02-18 21:44
; Vesion:		1.0.1
;------------------------------------------------------------------------------
; Licence:		This file is licensed under the following licence:-
;						Creative Commons Attribution 4.0 International
;						http://creativecommons.org/licenses/by/4.0/
;						with an exception, see /LICENCE.txt file.
;------------------------------------------------------------------------------


;==============================================================================
; Standard Include Demo.
;==============================================================================

				.OUT			"Standard Extra RIOT Timer Include Demo."

;------------------------------------------------------------------------------

				; Atari 2600 Standard Include.
				.INCLUDE		"a2k6std.inc"
				; Atari 2600 Standard Extra RIOT Timer Include.
				.INCLUDE		"a2k6rtim.inc"

;------------------------------------------------------------------------------

				.CODE

startup:
				A2K6_COLD_INIT
init:
				; Initialse application state.
				NOP
run:
				; Run demo.
				JSR				run_demo
main_loop:
				; Main loop.
				NOP
done:
				; Uninitialise state.
				NOP
shutdown:
				; Shutdown and halt.
				A2K6_WARM_INIT
endless:		JMP				endless



;------------------------------------------------------------------------------

stdincdemo:		.INCLUDE		"stdx_rtim_demo.inc"

;------------------------------------------------------------------------------

				.CODE

				CPU_RESET_VEC	startup

;------------------------------------------------------------------------------


