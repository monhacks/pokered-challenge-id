GetMachinePrice: ; 7bf86 (1e:7f86)
; make every tm cost $10000
	ld a, $1
	ld [H_DOWNARROWBLINKCNT1], a ; $ff8b
    xor a
    ld [$ff8c], a
	ld [$ff8d], a
	ret
