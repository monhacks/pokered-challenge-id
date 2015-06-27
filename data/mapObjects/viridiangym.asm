ViridianGymObject: ; 0x74bde (size=105)
	db $3 ; border block

	db $2 ; warps
	db $11, $10, $4, $ff
	db $11, $11, $4, $ff

	db $0 ; signs

	db $4 ; people
	db SPRITE_GIOVANNI, $1 + 4, $2 + 4, $ff, $d0, TRAINER | $1, GIOVANNI + $C8, $3
	db SPRITE_BLACK_HAIR_BOY_1, $5 + 4, $d + 4, $ff, $d3, TRAINER | $6, COOLTRAINER_M + $C8, $a
	db SPRITE_GYM_HELPER, $f + 4, $10 + 4, $ff, $d0, $a ; person
	db SPRITE_BALL, $9 + 4, $10 + 4, $ff, $ff, ITEM | $b, REVIVE

	; warp-to
	EVENT_DISP VIRIDIAN_GYM_WIDTH, $11, $10
	EVENT_DISP VIRIDIAN_GYM_WIDTH, $11, $11
