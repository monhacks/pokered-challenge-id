Predef::
; Call predefined function a.
; To preserve other registers, have the
; destination call GetPredefRegisters.

	; Save the predef id for GetPredefPointer.
	ld [wPredefID], a

	; A hack for LoadDestinationWarpPosition.
	; See LoadTilesetHeader (predef $19).
	ld a, [H_LOADEDROMBANK]
	ld [wPredefParentBank], a

	push af
	ld a, BANK(GetPredefPointer)
	ld [H_LOADEDROMBANK], a
	ld [$2000], a

	call GetPredefPointer

	ld a, [wPredefBank]
	ld [H_LOADEDROMBANK], a
	ld [$2000], a
	
	call .goToPredef

	pop af
	ld [H_LOADEDROMBANK], a
	ld [$2000], a
	ret
	
.goToPredef
	push hl
	ld hl,wPredefRegisters
	ld a,[hli] ; get saved hl value
	ld l,[hl]
	ld h,a
GetPredefRegisters::
; Restore the contents of register pairs
; when GetPredefPointer was called.
	ret ; return to hl

