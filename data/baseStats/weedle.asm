WeedleBaseStats: ; 3852e (e:452e)
db DEX_WEEDLE ; pokedex id
db 40 ; base hp
db 35 ; base attack
db 30 ; base defense
db 50 ; base speed
db 20 ; base special
db BUG ; species type 1
db POISON ; species type 2
db 255 ; catch rate
db 52 ; base exp yield
INCBIN "pic/bmon/weedle.pic",0,1 ; 55, sprite dimensions
dw WeedlePicFront
dw WeedlePicBack
; attacks known at lvl 0
db TWINEEDLE
db SLUDGE
db MEGA_DRAIN
db FURY_ATTACK
db 0 ; growth rate
; learnset
db %00000000
db %00000000
db %00000000
db %00000000
db %00000000
db %00000000
db %00000000
db 0 ; padding
