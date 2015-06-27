; try to initiate a wild pokemon encounter
; returns success in Z
TryDoWildEncounter: ; 13870 (4:7870)
	ld a, [wNPCMovementScriptPointerTableNum]
	and a
	ret nz
	ld a, [wd736]
	and a
	ret nz
	callab IsPlayerStandingOnDoorTileOrWarpTile
	jr nc, .notStandingOnDoorOrWarpTile
.CantEncounter
	ld a, $1
	and a
	ret
.notStandingOnDoorOrWarpTile
	callab IsPlayerJustOutsideMap
	jr z, .CantEncounter
	ld a, [wRepelRemainingSteps]
	and a
	jr z, .asm_1389e
	dec a
	jr z, .lastRepelStep
	ld [wRepelRemainingSteps], a
.asm_1389e
; determine if wild pokemon can appear in the half-block we're standing in	
; is the bottom right tile (9,9) of the half-block we're standing in a grass/water tile?
	hlCoord 9, 9
	ld c, [hl]
	ld a, [W_GRASSTILE]
	cp c
	ld a, [W_GRASSRATE]
	jr z, .CanEncounter
	ld a, $14 ; in all tilesets with a water tile, this is its id
	cp c
	ld a, [W_WATERRATE]
	jr z, .CanEncounter
; even if not in grass/water, standing anywhere we can encounter pokemon
; so long as the map is "indoor" and has wild pokemon defined.
; ...as long as it's not Viridian Forest or Safari Zone.
	ld a, [W_CURMAP]
	cp REDS_HOUSE_1F ; is this an indoor map?
	jr c, .CantEncounter2
	ld a, [W_CURMAPTILESET]
	cp FOREST ; Viridian Forest/Safari Zone
	jr z, .CantEncounter2
	ld a, [W_GRASSRATE]
.CanEncounter
; compare encounter chance with a random number to determine if there will be an encounter
	ld b, a
	ld a, [hRandomAdd]
	cp b
	jr nc, .CantEncounter2	
.gotWildEncounterType
    callba GenerateEncounter
	ld a, [W_EVOLVEMONLEVEL]
	ld [W_CURENEMYLVL], a
	ld a, [W_EVOLVEMONSPECIES]
	ld [wcf91], a
	ld [wEnemyMonSpecies2], a
	ld a, [wRepelRemainingSteps]
	and a
	jr z, .willEncounter
	ld a, [wPartyMon1Level]
	ld b, a
	ld a, [W_CURENEMYLVL]
	cp b
	jr c, .CantEncounter2 ; repel prevents encounters if the leading party mon's level is higher than the wild mon
	jr .willEncounter
.lastRepelStep
	ld [wRepelRemainingSteps], a
	ld a, $d2
	ld [H_DOWNARROWBLINKCNT2], a
	call EnableAutoTextBoxDrawing
	call DisplayTextID
.CantEncounter2
	ld a, $1
	and a
	ret
.willEncounter
	xor a
	ret
