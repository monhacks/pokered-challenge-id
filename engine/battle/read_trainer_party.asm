ReadTrainer: ; 39c53 (e:5c53)

; don't change any moves in a link battle
	ld a,[wLinkState]
	and a
	ret nz

; set [wEnemyPartyCount] to 0, [wEnemyPartyMons] to FF
; XXX first is total enemy pokemon?
; XXX second is species of first pokemon?
	ld hl,wEnemyPartyCount
	xor a
	ld [hli],a
	dec a
	ld [hl],a

; get the pointer to trainer data for this class
	ld a,[W_CUROPPONENT]
	sub $C9 ; convert value from pokemon to trainer
	add a,a
	ld hl,TrainerDataPointers
	ld c,a
	ld b,0
	add hl,bc ; hl points to trainer class
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld a,[W_TRAINERNO]
	ld b,a
; At this point b contains the trainer number,
; and hl points to the trainer class.
; Our next task is to iterate through the trainers,
; decrementing b each time, until we get to the right one.
.outer
	dec b
	jr z,.IterateTrainer
.inner
	ld a,[hli]
	and a
	jr nz,.inner
	jr .outer

; if the first byte of trainer data is FF,
; - each pokemon has a specific level
;      (as opposed to the whole team being of the same level)
; - if [W_LONEATTACKNO] != 0, one pokemon on the team has a special move
; else the first byte is the level of every pokemon on the team
.IterateTrainer
	ld a,[hli]
	cp $FF ; is the trainer special?
	jr z,.SpecialTrainer ; if so, check for special moves
    cp $FE ; is the trainer extended?
    jr z,.ExtendedTrainer ; if so, drop in custom levels and movesets
	ld [W_CURENEMYLVL],a
.LoopTrainerData
	ld a,[hli]
	and a ; have we reached the end of the trainer data?
	jr z,.FinishUp
	ld [wcf91],a ; write species somewhere (XXX why?)
	ld a,1
	ld [wcc49],a
	push hl
	call AddPartyMon
	pop hl
	jr .LoopTrainerData
.SpecialTrainer
; if this code is being run:
; - each pokemon has a specific level
;      (as opposed to the whole team being of the same level)
	ld a,[hli]
	and a ; have we reached the end of the trainer data?
	jr z,.FinishUp
	ld [W_CURENEMYLVL],a
	ld a,[hli]
	ld [wcf91],a
	ld a,1
	ld [wcc49],a
	push hl
	call AddPartyMon
	pop hl
	jr .SpecialTrainer
.ExtendedTrainer
; level, species, m1-m4
    xor a
    ld [W_EXTENDEDTRAINERMONCOUNT], a
.ExtendedTrainerLoop
    ld a,[hli]
    and a
    jr z, .FinishUp
    ld [W_CURENEMYLVL],a
    ld a,[hli]
    ld [wcf91],a
	ld a,1
	ld [wcc49],a
	push hl
	call AddPartyMon
	pop hl
; moves
    push hl
    ld hl, wEnemyMon1Moves
    ld bc, wEnemyMon2 - wEnemyMon1
    ld a, [W_EXTENDEDTRAINERMONCOUNT]
    call AddNTimes
    ld d, h
    ld e, l
    pop hl
    ld b, 4
.moveloop
    ld a,[hli]
    cp $FF
    jr nz,.writemove
    ld a,0
.writemove
    push hl
    ld h, d
    ld l, e
    ld [hli], a
    ld d, h
    ld e, l
    pop hl
    dec b
    jr nz, .moveloop
.extmondone
    ; increase mon count
    ld a, [W_EXTENDEDTRAINERMONCOUNT]
    inc a
    ld [W_EXTENDEDTRAINERMONCOUNT], a
    jr .ExtendedTrainerLoop
.FinishUp
; clear wAmountMoneyWon addresses
	xor a       
	ld de,wAmountMoneyWon
	ld [de],a
	inc de
	ld [de],a
	inc de
	ld [de],a
	ld a,[W_CURENEMYLVL]
	ld b,a
.LastLoop
; update wAmountMoneyWon addresses (money to win) based on enemy's level
	ld hl,wd047
	ld c,2 ; wAmountMoneyWon is a 3-byte number
	push bc
	predef AddBCDPredef
	pop bc
	inc de
	inc de
	dec b
	jr nz,.LastLoop ; repeat W_CURENEMYLVL times
	ret
