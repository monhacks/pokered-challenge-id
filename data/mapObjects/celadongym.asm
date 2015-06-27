CeladonGymObject: ; 0x48b30 (size=84)
	db $3 ; border block

	db $2 ; warps
	db $11, $4, $6, $ff
	db $11, $5, $6, $ff

	db $0 ; signs

	db $2 ; people
	db SPRITE_ERIKA, $3 + 4, $4 + 4, $ff, $d0, TRAINER | $1, ERIKA + $C8, $1
	db SPRITE_LASS, $3 + 4, $5 + 4, $ff, $d0, TRAINER | $8, COOLTRAINER_F + $C8, $1

	; warp-to
	EVENT_DISP CELADON_GYM_WIDTH, $11, $4
	EVENT_DISP CELADON_GYM_WIDTH, $11, $5
