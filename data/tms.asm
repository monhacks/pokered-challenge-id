TechnicalMachines: ; 13773 (4:7773)
; staple damaging
    db TWINEEDLE
    db DRAGONBREATH
    db SPARK
    db ROLLING_KICK
    db FLAME_WHEEL
    db AIR_CUTTER
    db SHADOW_PUNCH
    db MEGA_DRAIN
    db BONE_CLUB
    db AURORA_BEAM
    db STOMP
    db SLUDGE
    db PSYBEAM
    db ROCK_THROW
    db BUBBLEBEAM
; gym leader OP moves
    db ROCK_SLIDE
    db SURF
    db THUNDERBOLT
    db GIGA_DRAIN
    db SLUDGE_BOMB
    db PSYCHIC_M
    db FIRE_BLAST
    db EARTHQUAKE
; status moves
    db SWORDS_DANCE
    db TOXIC
    db COUNTER
    db MIMIC
    db DOUBLE_TEAM
    db REFLECT
    db BIDE
    db METRONOME
    db SOFTBOILED
    db REST
    db THUNDER_WAVE
    db SUBSTITUTE
; 15 unused
    rept 15
    db 0
    endr
; HMs (not usable)
	db CUT
	db FLY
	db SURF
	db STRENGTH
	db FLASH
