MagikarpBaseStats: ; 391de (e:51de)
db DEX_MAGIKARP ; pokedex id
db 20 ; base hp
db 10 ; base attack
db 55 ; base defense
db 80 ; base speed
db 20 ; base special
db WATER ; species type 1
db WATER ; species type 2
db 255 ; catch rate
db 20 ; base exp yield
INCBIN "pic/bmon/magikarp.pic",0,1 ; 66, sprite dimensions
dw MagikarpPicFront
dw MagikarpPicBack
; attacks known at lvl 0
db BITE
db DRAGON_RAGE
db LEER
db BUBBLEBEAM
db 5 ; growth rate
; learnset
db %00000000
db %00000000
db %00000000
db %00000000
db %00000000
db %00000000
db %00000000
db 0 ; padding
