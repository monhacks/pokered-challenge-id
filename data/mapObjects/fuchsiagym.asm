FuchsiaGymObject: ; 0x75658 (size=82)
	db $3 ; border block

	db $2 ; warps
	db $11, $4, $5, $ff
	db $11, $5, $5, $ff

	db $0 ; signs

	db $3 ; people
	db SPRITE_BLACKBELT, $a + 4, $4 + 4, $ff, $d0, TRAINER | $1, KOGA + $C8, $1
	db SPRITE_ROCKER, $8 + 4, $7 + 4, $ff, $d3, TRAINER | $3, JUGGLER + $C8, $3
	db SPRITE_GYM_HELPER, $f + 4, $7 + 4, $ff, $d0, $8 ; person

	; warp-to
	EVENT_DISP FUCHSIA_GYM_WIDTH, $11, $4
	EVENT_DISP FUCHSIA_GYM_WIDTH, $11, $5
