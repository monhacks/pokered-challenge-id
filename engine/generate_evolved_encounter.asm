NUM_FULLY_EVOLVED EQU 76

GenerateEncounter::
; generate a random pokemon encounter
; also supports custom levels for possible scaling later
.generate
    call Random
    ld a, [hRandomAdd]
    cp NUM_FULLY_EVOLVED
    jr nc, .generate
.pickmon
    push hl
    push bc
    ld hl, FullyEvolvedMons
    ld b, 0
    ld c, a
    add hl, bc
; only species for now
    ld a, [hl]
    ld [W_EVOLVEMONSPECIES], a
    ld a, 50
    ld [W_EVOLVEMONLEVEL], a
; done
    pop bc
    pop hl
    ret
    
FullyEvolvedMons:
    db VENUSAUR
    db CHARIZARD
    db BLASTOISE
    db BUTTERFREE
    db BEEDRILL
    db PIDGEOT
    db RATICATE
    db FEAROW
    db ARBOK
    db RAICHU
    db SANDSLASH
    db NIDOQUEEN
    db NIDOKING
    db CLEFABLE
    db NINETALES
    db WIGGLYTUFF
    db GOLBAT
    db VILEPLUME
    db PARASECT
    db VENOMOTH
    db DUGTRIO
    db PERSIAN
    db GOLDUCK
    db PRIMEAPE
    db ARCANINE
    db POLIWRATH
    db ALAKAZAM
    db MACHAMP
    db VICTREEBEL
    db TENTACRUEL
    db GOLEM
    db RAPIDASH
    db SLOWBRO
    db MAGNETON
    db FARFETCH_D
    db DODRIO
    db DEWGONG
    db MUK
    db CLOYSTER
    db GENGAR
    db ONIX
    db HYPNO
    db KINGLER
    db ELECTRODE
    db EXEGGUTOR
    db MAROWAK
    db HITMONLEE
    db HITMONCHAN
    db LICKITUNG
    db WEEZING
    db RHYDON
    db CHANSEY
    db TANGELA
    db KANGASKHAN
    db SEADRA
    db SEAKING
    db STARMIE
    db MR_MIME
    db SCYTHER
    db JYNX
    db ELECTABUZZ
    db MAGMAR
    db PINSIR
    db TAUROS
    db GYARADOS
    db LAPRAS
    db DITTO
    db VAPOREON
    db JOLTEON
    db FLAREON
    db PORYGON
    db OMASTAR
    db KABUTOPS
    db AERODACTYL
    db SNORLAX
    db DRAGONITE

