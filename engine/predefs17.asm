; this function temporarily makes the starters (and Ivysaur) seen
; so that the full Pokedex information gets displayed in Oak's lab
StarterDex: ; 5c0dc (17:40dc)
	ld a, $FF ; set starter flags
	ld [wPokedexOwned + (DEX_MEW-1)/8], a ; wPokedexOwned
    ld a, [wd11e]
    push af
    ld a, MEW
    ld [wd11e], a
	predef ShowPokedexData
    pop af
    ld [wd11e], a
    ld [wcf91], a
	xor a ; unset starter flags
	ld [wPokedexOwned + (DEX_MEW-1)/8], a ; wPokedexOwned
	ret
