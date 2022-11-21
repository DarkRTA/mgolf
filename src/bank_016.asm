; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $016", ROMX[$4000], BANK[$16]

    db $04, $40, $58, $40

    ld hl, $4010
    ld de, $c400
    ld c, $01
    call Call_000_03eb
    ret


    db $06, $00, $05, $03, $00, $00, $04, $00, $00, $06, $00, $00, $00, $00, $06, $0f

Call_016_4020:
    ld d, $c4
    ld c, $04

jr_016_4024:
    ld e, [hl]
    ld a, [de]
    ld [hl+], a
    ld e, [hl]
    ld a, [de]
    ld [hl+], a
    ld e, [hl]
    ld a, [de]
    ld [hl+], a
    ld e, [hl]
    ld a, [de]
    ld [hl+], a
    ld e, [hl]
    ld a, [de]
    ld [hl+], a
    ld e, [hl]
    ld a, [de]
    ld [hl+], a
    ld e, [hl]
    ld a, [de]
    ld [hl+], a
    ld e, [hl]
    ld a, [de]
    ld [hl+], a
    ld e, [hl]
    ld a, [de]
    ld [hl+], a
    ld e, [hl]
    ld a, [de]
    ld [hl+], a
    ld e, [hl]
    ld a, [de]
    ld [hl+], a
    ld e, [hl]
    ld a, [de]
    ld [hl+], a
    ld e, [hl]
    ld a, [de]
    ld [hl+], a
    ld e, [hl]
    ld a, [de]
    ld [hl+], a
    ld e, [hl]
    ld a, [de]
    ld [hl+], a
    ld e, [hl]
    ld a, [de]
    ld [hl+], a
    dec c
    jr nz, jr_016_4024

    ret


    ld a, $ff
    ld [$c47e], a
    ld a, $00
    ld de, $cf80
    ld bc, $deff
    call Call_016_41a9
    ld a, $00
    ld [$c47e], a
    ld a, $01
    ld de, $d000
    ld bc, $df00
    call Call_016_41ad
    ld a, $01
    ld [$c47e], a
    ld a, $02
    ld de, $d080
    ld bc, $df01
    call Call_016_41ad
    ld a, $02
    ld [$c47e], a
    ld a, $03
    ld de, $d100
    ld bc, $df02
    call Call_016_41ad
    ld a, $03
    ld [$c47e], a
    ld a, $04
    ld de, $d180
    ld bc, $df03
    call Call_016_41ad
    ld a, $04
    ld [$c47e], a
    ld a, $05
    ld de, $d200
    ld bc, $df04
    call Call_016_41ad
    ld a, $05
    ld [$c47e], a
    ld a, $06
    ld de, $d280
    ld bc, $df05
    call Call_016_41ad
    ld a, $06
    ld [$c47e], a
    ld a, $07
    ld de, $d300
    ld bc, $df06
    call Call_016_41ad
    ld a, $07
    ld [$c47e], a
    ld a, $08
    ld de, $d380
    ld bc, $df07
    call Call_016_41ad
    ld a, $08
    ld [$c47e], a
    ld a, $09
    ld de, $d400
    ld bc, $df08
    call Call_016_41ad
    ld a, $09
    ld [$c47e], a
    ld a, $0a
    ld de, $d480
    ld bc, $df09
    call Call_016_41ad
    ld a, $0a
    ld [$c47e], a
    ld a, $0b
    ld de, $d500
    ld bc, $df0a
    call Call_016_41ad
    ld a, $0b
    ld [$c47e], a
    ld a, $0c
    ld de, $d580
    ld bc, $df0b
    call Call_016_41ad
    ld a, $0c
    ld [$c47e], a
    ld a, $0d
    ld de, $d600
    ld bc, $df0c
    call Call_016_41ad
    ld a, $0d
    ld [$c47e], a
    ld a, $0e
    ld de, $d680
    ld bc, $df0d
    call Call_016_41ad
    ld a, $0e
    ld [$c47e], a
    ld a, $0f
    ld de, $d700
    ld bc, $df0e
    call Call_016_41ad
    ld a, $0f
    ld [$c47e], a
    ld a, $10
    ld de, $d780
    ld bc, $df0f
    call Call_016_41ad
    ld a, $10
    ld [$c47e], a
    ld a, $11
    ld de, $d800
    ld bc, $df10
    call Call_016_41ad
    ld a, $11
    ld [$c47e], a
    ld a, $12
    ld de, $d880
    ld bc, $df11
    call Call_016_41ad
    ld a, $12
    ld [$c47e], a
    ld a, $13
    ld de, $d900
    ld bc, $df12
    call Call_016_41ad
    ld a, $13
    ld [$c47e], a
    ld a, $14
    ld de, $d980
    ld bc, $df13
    call Call_016_41b7
    ret


Call_016_41a9:
    call Call_016_41d2
    ret


Call_016_41ad:
    call Call_016_41be
    call Call_016_41d2
    call Call_016_41e3
    ret


Call_016_41b7:
    call Call_016_41be
    call Call_016_41e3
    ret


Call_016_41be:
    push af
    push bc
    push de
    push hl
    ld hl, $db80
    ld de, $db40
    ld c, $08
    call Call_000_03eb
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_016_41d2:
    push bc
    push de
    ld hl, $dbc0
    call Call_016_7b01
    ld hl, $dbc0
    call Call_016_4020
    pop de
    pop bc
    ret


Call_016_41e3:
    push de
    push bc
    ld de, $db80
    ld hl, $dc00
    call Call_016_5967
    pop bc
    ld hl, $dc00
    call Call_016_432a
    ld [$c470], a
    call Call_016_432a
    ld [$c471], a
    call Call_016_432a
    ld [$c472], a
    call Call_016_432a
    ld [$c473], a
    call Call_016_432a
    ld [$c474], a
    call Call_016_432a
    ld [$c475], a
    call Call_016_432a
    ld [$c476], a
    call Call_016_432a
    ld [$c477], a
    pop de
    ld hl, $dc00
    ld a, l
    ld [$c486], a
    ld a, h
    ld [$c487], a
    ld a, [$c470]
    ld b, $00
    call Call_016_435f
    ld a, [$c471]
    ld b, $08
    call Call_016_435f
    ld a, [$c472]
    ld b, $10
    call Call_016_435f
    ld a, [$c473]
    ld b, $18
    call Call_016_435f
    ld a, [$c474]
    ld b, $20
    call Call_016_435f
    ld a, [$c475]
    ld b, $28
    call Call_016_435f
    ld a, [$c476]
    ld b, $30
    call Call_016_435f
    ld a, [$c477]
    ld b, $38
    call Call_016_435f
    ret


    ld c, $40

jr_016_4271:
    ld a, [de]
    inc de
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec c
    jr nz, jr_016_4271

    ret


Call_016_427b:
    ld bc, $428a
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    push bc
    ld b, $80
    ld c, b
    ld d, b
    ld e, b
    ld a, [hl+]
    add a
    jr nc, jr_016_42b9

    sub $06
    ret c

    jr z, jr_016_42af

    rrca
    sub $03
    jr z, jr_016_42b4

    inc a
    jr z, jr_016_42a6

    inc a
    ret nz

    inc c
    inc e
    inc c
    inc e
    inc c
    inc e
    inc c
    inc e
    ret


jr_016_42a6:
    inc c
    inc d
    inc c
    inc d
    inc c
    inc d
    inc c
    inc d
    ret


jr_016_42af:
    inc b
    inc b
    inc b
    inc b
    ret


jr_016_42b4:
    dec c
    dec c
    dec c
    dec c
    ret


jr_016_42b9:
    rrca
    sub $03
    jr c, jr_016_42d6

    jr z, jr_016_42d2

    sub $03
    jr z, jr_016_42d5

    inc a
    jr z, jr_016_42ce

    inc a
    jr nz, jr_016_42d6

    inc c
    inc e
    jr jr_016_42d6

jr_016_42ce:
    inc c
    inc d
    jr jr_016_42d6

jr_016_42d2:
    inc b
    jr jr_016_42d6

jr_016_42d5:
    dec c

jr_016_42d6:
    ld a, [hl+]
    sub $03
    jr c, jr_016_42f3

    jr z, jr_016_42ef

    sub $03
    jr z, jr_016_42f2

    inc a
    jr z, jr_016_42eb

    inc a
    jr nz, jr_016_42f3

    inc c
    inc e
    jr jr_016_42f3

jr_016_42eb:
    inc c
    inc d
    jr jr_016_42f3

jr_016_42ef:
    inc b
    jr jr_016_42f3

jr_016_42f2:
    dec c

jr_016_42f3:
    ld a, [hl+]
    sub $03
    jr c, jr_016_4310

    jr z, jr_016_430c

    sub $03
    jr z, jr_016_430f

    inc a
    jr z, jr_016_4308

    inc a
    jr nz, jr_016_4310

    inc c
    inc e
    jr jr_016_4310

jr_016_4308:
    inc c
    inc d
    jr jr_016_4310

jr_016_430c:
    inc b
    jr jr_016_4310

jr_016_430f:
    dec c

jr_016_4310:
    ld a, [hl+]
    sub $03
    ret c

    jr z, jr_016_4325

    sub $03
    jr z, jr_016_4327

    inc a
    jr z, jr_016_4322

    inc a
    ret nz

    inc c
    inc e
    ret


jr_016_4322:
    inc c
    inc d
    ret


jr_016_4325:
    inc b
    ret


jr_016_4327:
    dec c
    ret


    ret


Call_016_432a:
    push bc
    call Call_016_427b
    ld a, c
    ld c, $04
    cp d
    jr nc, jr_016_4336

    ld a, d
    inc c

jr_016_4336:
    cp e
    jr nc, jr_016_433c

    ld a, e
    ld c, $06

jr_016_433c:
    cp b
    jr nc, jr_016_4342

    ld a, b
    ld c, $03

jr_016_4342:
    ld d, c
    pop bc
    ld a, d
    add $08
    ld [bc], a
    ld a, $20
    add c
    ld c, a
    jr nc, jr_016_434f

    inc b

jr_016_434f:
    ld a, d
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    db $06

    db $04, $05, $05, $06, $06, $04

Call_016_435f:
    add a
    ld c, a
    ld [$c47d], a
    ld a, [$c47e]
    and $03
    rrca
    rrca
    add b
    ld [$c47c], a
    ld hl, $4351
    ld b, $00
    add hl, bc
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $4382
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    push hl
    ld hl, $c486
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    add a
    jr nc, jr_016_43ff

    rrca
    cp c
    jr z, jr_016_439f

    cp b
    jr z, jr_016_43b6

    cp $0f
    jr nz, jr_016_43cd

    ld a, $ff
    ld [de], a
    inc e
    ld [de], a
    inc de
    jr jr_016_43f3

jr_016_439f:
    ld hl, $c47c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, hl
    ld a, $67
    add l
    ld l, a
    ld a, h
    adc $3d
    ld h, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc de
    jr jr_016_43f3

jr_016_43b6:
    ld hl, $c47c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, hl
    ld a, $67
    add l
    ld l, a
    ld a, h
    adc $3f
    ld h, a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc de
    jr jr_016_43f3

jr_016_43cd:
    ld a, [$c47c]
    ld l, a
    ld h, $00
    add hl, hl
    ld a, [$c836]
    cp $03
    jr z, jr_016_43e5

    ld a, $67
    add l
    ld l, a
    ld a, h
    adc $45
    ld h, a
    jr jr_016_43ed

jr_016_43e5:
    ld a, $67
    add l
    ld l, a
    ld a, h
    adc $47
    ld h, a

jr_016_43ed:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc de

jr_016_43f3:
    ld hl, $c47c
    inc [hl]
    ld hl, $c486
    inc [hl]
    ret nz

    inc l
    inc [hl]
    ret


jr_016_43ff:
    push de
    push bc
    ld de, $c480
    ld hl, $c47c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, hl
    push hl
    ld bc, $3d67
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    pop hl
    ld bc, $3f67
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [$c47c]
    ld l, a
    inc a
    ld [$c47c], a
    ld h, $00
    add hl, hl
    ld a, [$c836]
    cp $03
    jr z, jr_016_4438

    ld bc, $4567
    jr jr_016_443b

jr_016_4438:
    ld bc, $4767

jr_016_443b:
    add hl, bc
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    pop bc
    ld de, $0000
    ld hl, $c486
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    cp c
    jr z, jr_016_4460

    cp b
    jr z, jr_016_4470

    cp $0f
    jr nz, jr_016_4480

    ld a, $c0
    or d
    ld d, a
    ld a, $c0
    or e
    ld e, a
    jr jr_016_448e

jr_016_4460:
    ld a, [$c480]
    and $c0
    or d
    ld d, a
    ld a, [$c481]
    and $c0
    or e
    ld e, a
    jr jr_016_448e

jr_016_4470:
    ld a, [$c482]
    and $c0
    or d
    ld d, a
    ld a, [$c483]
    and $c0
    or e
    ld e, a
    jr jr_016_448e

jr_016_4480:
    ld a, [$c484]
    and $c0
    or d
    ld d, a
    ld a, [$c485]
    and $c0
    or e
    ld e, a

jr_016_448e:
    ld a, [hl+]
    cp c
    jr z, jr_016_44a3

    cp b
    jr z, jr_016_44b3

    cp $0f
    jr nz, jr_016_44c3

    ld a, $30
    or d
    ld d, a
    ld a, $30
    or e
    ld e, a
    jr jr_016_44d1

jr_016_44a3:
    ld a, [$c480]
    and $30
    or d
    ld d, a
    ld a, [$c481]
    and $30
    or e
    ld e, a
    jr jr_016_44d1

jr_016_44b3:
    ld a, [$c482]
    and $30
    or d
    ld d, a
    ld a, [$c483]
    and $30
    or e
    ld e, a
    jr jr_016_44d1

jr_016_44c3:
    ld a, [$c484]
    and $30
    or d
    ld d, a
    ld a, [$c485]
    and $30
    or e
    ld e, a

jr_016_44d1:
    ld a, [hl+]
    cp c
    jr z, jr_016_44e6

    cp b
    jr z, jr_016_44f6

    cp $0f
    jr nz, jr_016_4506

    ld a, $0c
    or d
    ld d, a
    ld a, $0c
    or e
    ld e, a
    jr jr_016_4514

jr_016_44e6:
    ld a, [$c480]
    and $0c
    or d
    ld d, a
    ld a, [$c481]
    and $0c
    or e
    ld e, a
    jr jr_016_4514

jr_016_44f6:
    ld a, [$c482]
    and $0c
    or d
    ld d, a
    ld a, [$c483]
    and $0c
    or e
    ld e, a
    jr jr_016_4514

jr_016_4506:
    ld a, [$c484]
    and $0c
    or d
    ld d, a
    ld a, [$c485]
    and $0c
    or e
    ld e, a

jr_016_4514:
    ld a, [hl+]
    cp c
    jr z, jr_016_4529

    cp b
    jr z, jr_016_4539

    cp $0f
    jr nz, jr_016_4549

    ld a, $03
    or d
    ld d, a
    ld a, $03
    or e
    ld e, a
    jr jr_016_4557

jr_016_4529:
    ld a, [$c480]
    and $03
    or d
    ld d, a
    ld a, [$c481]
    and $03
    or e
    ld e, a
    jr jr_016_4557

jr_016_4539:
    ld a, [$c482]
    and $03
    or d
    ld d, a
    ld a, [$c483]
    and $03
    or e
    ld e, a
    jr jr_016_4557

jr_016_4549:
    ld a, [$c484]
    and $03
    or d
    ld d, a
    ld a, [$c485]
    and $03
    or e
    ld e, a

jr_016_4557:
    ld a, l
    ld [$c486], a
    ld a, h
    ld [$c487], a
    pop hl
    ld a, d
    ld [hl+], a
    ld a, e
    ld [hl+], a
    ld e, l
    ld d, h
    ret


    db $00, $00, $00, $00, $00, $00, $20, $20, $01, $01, $08, $08, $00, $00, $40, $40
    db $12, $12, $08, $08, $20, $20, $84, $84, $40, $40, $12, $12, $80, $80, $28, $28
    db $04, $04, $88, $88, $42, $42, $90, $90, $44, $44, $12, $12, $48, $48, $15, $15
    db $44, $44, $a9, $a9, $a5, $a5, $4a, $4a, $90, $90, $54, $54, $69, $69, $9a, $9a
    db $64, $64, $ad, $ad, $d2, $d2, $6a, $6a, $ad, $ad, $d2, $d2, $35, $35, $4d, $4d
    db $ea, $ea, $37, $37, $52, $52, $ec, $ec, $db, $db, $6f, $6f, $d2, $d2, $77, $77
    db $ba, $ba, $ee, $ee, $7b, $7b, $5d, $5d, $95, $95, $f7, $f7, $ad, $ad, $77, $77
    db $a6, $a6, $ba, $ba, $d6, $d6, $7b, $7b, $aa, $aa, $4d, $4d, $94, $94, $a2, $a2
    db $00, $00, $00, $00, $00, $00, $20, $20, $01, $01, $08, $08, $00, $00, $40, $40
    db $12, $12, $08, $08, $20, $20, $84, $84, $40, $40, $12, $12, $82, $82, $08, $08
    db $a0, $a0, $48, $48, $02, $02, $90, $90, $a4, $a4, $12, $12, $4a, $4a, $51, $51
    db $84, $84, $2a, $2a, $45, $45, $6b, $6b, $92, $92, $54, $54, $4d, $4d, $9a, $9a
    db $64, $64, $ad, $ad, $93, $93, $6a, $6a, $ad, $ad, $d2, $d2, $75, $75, $aa, $aa
    db $6d, $6d, $35, $35, $d2, $d2, $ed, $ed, $bb, $bb, $6b, $6b, $de, $de, $77, $77
    db $aa, $aa, $f6, $f6, $7b, $7b, $5d, $5d, $f5, $f5, $b7, $b7, $ab, $ab, $5d, $5d
    db $d5, $d5, $76, $76, $ad, $ad, $56, $56, $52, $52, $2b, $2b, $ac, $ac, $12, $12
    db $00, $00, $00, $00, $00, $00, $04, $04, $00, $00, $21, $21, $00, $00, $88, $88
    db $12, $12, $08, $08, $20, $20, $84, $84, $40, $40, $12, $12, $80, $80, $28, $28
    db $a4, $a4, $09, $09, $41, $41, $54, $54, $84, $84, $12, $12, $48, $48, $51, $51
    db $84, $84, $22, $22, $55, $55, $12, $12, $aa, $aa, $8d, $8d, $55, $55, $da, $da
    db $a5, $a5, $29, $29, $d6, $d6, $6a, $6a, $ad, $ad, $d3, $d3, $35, $35, $aa, $aa
    db $ee, $ee, $75, $75, $db, $db, $65, $65, $b6, $b6, $6b, $6b, $da, $da, $77, $77
    db $bb, $bb, $ee, $ee, $5d, $5d, $55, $55, $bb, $bb, $ea, $ea, $ad, $ad, $7e, $7e
    db $d5, $d5, $dd, $dd, $aa, $aa, $ab, $ab, $55, $55, $61, $61, $94, $94, $22, $22
    db $00, $00, $00, $00, $00, $00, $20, $20, $01, $01, $08, $08, $00, $00, $40, $40
    db $12, $12, $08, $08, $20, $20, $84, $84, $40, $40, $12, $12, $80, $80, $29, $29
    db $80, $80, $28, $28, $0a, $0a, $40, $40, $94, $94, $51, $51, $49, $49, $14, $14
    db $85, $85, $28, $28, $56, $56, $42, $42, $a9, $a9, $64, $64, $59, $59, $ea, $ea
    db $56, $56, $b5, $b5, $ca, $ca, $6e, $6e, $95, $95, $4a, $4a, $75, $75, $cb, $cb
    db $6c, $6c, $95, $95, $b3, $b3, $6d, $6d, $bb, $bb, $ef, $ef, $d2, $d2, $77, $77
    db $2a, $2a, $f6, $f6, $ab, $ab, $5d, $5d, $57, $57, $ee, $ee, $ab, $ab, $dd, $dd
    db $af, $af, $aa, $aa, $d6, $d6, $73, $73, $5d, $5d, $4a, $4a, $b4, $b4, $92, $92

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    jr nz, jr_016_4793

    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    adc b
    nop
    nop
    ld [$4008], sp
    ld b, b
    jr nz, jr_016_47a3

    inc b
    inc b
    ld de, $0811
    ld [$8080], sp
    ld bc, $0001
    nop
    ld de, $0011
    nop

jr_016_4793:
    jr nz, @+$22

    adc c
    adc c
    ld [bc], a
    ld [bc], a
    ld de, $0011
    nop
    adc b
    adc b
    ld bc, $0401
    inc b

jr_016_47a3:
    and b
    and b
    inc h
    inc h
    ld [$2008], sp
    jr nz, jr_016_47b6

    ld a, [bc]
    jr jr_016_47c7

    ld b, c
    ld b, c
    ld [bc], a
    ld [bc], a
    ld hl, $4821

jr_016_47b6:
    ld c, b
    ld [bc], a
    ld [bc], a
    inc d
    inc d
    ld c, d
    ld c, d
    jr nz, jr_016_47df

    add l
    add l
    inc sp
    inc sp
    ld b, b
    ld b, b
    ld a, [hl+]
    ld a, [hl+]

jr_016_47c7:
    sbc b
    sbc b
    ld b, d
    ld b, d
    sbc b
    sbc b
    ld b, l
    ld b, l
    db $10
    db $10
    ld c, c
    ld c, c
    xor d
    xor d
    ld e, b
    ld e, b
    ld bc, $a401
    and h
    ld h, d
    ld h, d
    ld b, $06

jr_016_47df:
    sub b
    sub b
    ld c, d
    ld c, d
    inc d
    inc d
    adc [hl]
    adc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    add c
    db $10
    db $10
    jr nz, jr_016_4817

    nop
    nop
    ld bc, $2001
    jr nz, @-$7e

    add b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    add b
    add b
    jr nz, jr_016_4827

    nop
    nop
    ld b, b
    ld b, b
    inc h
    inc h
    ld h, b
    ld h, b
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [$0408], sp
    inc b

jr_016_4817:
    adc h
    adc h
    add b
    add b
    ld [hl+], a
    ld [hl+], a
    inc b
    inc b
    db $10
    db $10
    ld bc, $2001
    jr nz, @-$79

    add l

jr_016_4827:
    ret nz

    ret nz

    ld [de], a
    ld [de], a
    ld b, b
    ld b, b
    inc b
    inc b
    add hl, bc
    add hl, bc
    ret nz

    ret nz

    sub d
    sub d
    dec b
    dec b
    inc de
    inc de
    ld e, b
    ld e, b
    and c
    and c
    ld l, c
    ld l, c
    inc b
    inc b
    db $10
    db $10
    dec [hl]
    dec [hl]
    ld c, h
    ld c, h
    ld [hl+], a
    ld [hl+], a
    db $e4
    db $e4
    ld d, d
    ld d, d
    ld h, $26
    adc b
    adc b
    and c
    and c
    inc b
    inc b
    sub d
    sub d
    ld b, [hl]
    ld b, [hl]
    ret nc

    ret nc

    dec b
    dec b
    sub e
    sub e
    jr z, jr_016_4889

    ld a, [de]
    ld a, [de]
    add h
    add h
    db $10
    stop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld bc, $0001
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    db $10
    stop
    nop
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [$0008], sp
    nop
    add b
    add b
    ld bc, $5001
    ld d, b

jr_016_4889:
    ld [bc], a
    ld [bc], a
    add b
    add b
    db $10
    stop
    nop
    ld hl, $0021
    nop
    ld [bc], a
    ld [bc], a
    jr nz, @+$22

    inc d
    inc d
    jr nc, jr_016_48cd

    nop
    nop
    ld [hl+], a
    ld [hl+], a
    dec b
    dec b
    sub e
    sub e
    add b
    add b
    ld b, h
    ld b, h
    add b
    add b
    add hl, bc
    add hl, bc
    jr nz, jr_016_48cf

    ld a, [bc]
    ld a, [bc]
    ld e, b
    ld e, b
    ld [bc], a
    ld [bc], a
    ld c, b
    ld c, b
    ld de, $3211
    ld [hl-], a
    ld bc, $8801
    adc b
    inc d
    inc d
    adc l
    adc l
    jr nz, jr_016_48e5

    sub c
    sub c
    adc d
    adc d
    ld d, c
    ld d, c
    ld a, [de]
    ld a, [de]

jr_016_48cd:
    add h
    add h

jr_016_48cf:
    ld d, b
    ld d, b
    push bc
    push bc
    sbc b
    sbc b
    ld c, b
    ld c, b
    dec d
    dec d
    sub [hl]
    sub [hl]
    ld c, [hl]
    ld c, [hl]
    sub h
    sub h
    ld b, b
    ld b, b
    adc c
    adc c
    inc h
    inc h

jr_016_48e5:
    ld b, c
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $4001
    ld b, b
    nop
    nop
    inc b
    inc b
    nop
    nop
    db $10
    db $10
    ld bc, $0201
    ld [bc], a
    nop
    nop
    nop
    nop
    jr nz, jr_016_4927

    nop
    nop
    ld a, [bc]
    ld a, [bc]
    ld b, h
    ld b, h
    nop
    nop
    add b
    add b
    ld b, l
    ld b, l
    ldh [$e0], a
    inc b
    inc b
    ld b, b
    ld b, b
    ld [$4108], sp
    ld b, c
    ld h, d
    ld h, d
    ld bc, $0401
    inc b
    jr nz, jr_016_4945

    nop
    nop

jr_016_4927:
    add hl, bc
    add hl, bc
    sub b
    sub b
    add b
    add b
    dec b
    dec b
    ld d, d
    ld d, d
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld b, l
    ld b, l
    inc bc
    inc bc
    sub b
    sub b
    ld hl, $1421
    inc d
    adc b
    adc b
    ld d, c
    ld d, c
    inc b
    inc b

jr_016_4945:
    ld d, [hl]
    ld d, [hl]
    or b
    or b
    add h
    add h
    ld d, c
    ld d, c
    ld h, h
    ld h, h
    adc d
    adc d
    sub b
    sub b
    ld a, [hl+]
    ld a, [hl+]
    sbc b
    sbc b
    ld [bc], a
    ld [bc], a
    ld c, d
    ld c, d
    xor b
    xor b
    ld h, d
    ld h, d
    dec b
    dec b
    daa
    daa
    pop bc
    pop bc
    ld a, [hl+]
    ld a, [hl+]
    and h
    nop
    jp c, $6500

    nop
    sub [hl]
    nop
    db $db
    nop
    or l
    nop
    ld e, a
    nop
    db $eb
    nop
    ld d, l
    nop
    cp [hl]
    nop
    db $eb
    nop
    ld d, a
    nop
    ld a, [$b500]
    nop
    ld e, a
    nop
    ei
    nop
    push de
    nop
    xor $00
    ld a, l
    nop
    or [hl]
    nop
    rst $28
    nop
    cp l
    nop
    ld e, a
    nop
    ei
    nop
    push af
    nop
    rst $38
    nop
    rst $28
    nop
    sub $00
    rst $38
    nop
    cp l
    nop
    ld e, a
    nop
    ei
    nop
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    rst $10
    nop
    rst $38
    nop
    cp l
    nop
    ld a, a
    nop
    ei
    nop
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    ld_long a, $ff00
    nop
    cp a
    nop
    ld e, a
    nop
    ei
    nop
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    or $00
    sbc a
    nop
    ld l, a
    nop
    rst $38
    nop
    rst $38
    nop
    jp hl


    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    and h
    nop
    jp c, $6500

    nop
    sub [hl]
    nop
    db $db
    nop
    or l
    nop
    ld e, a
    nop
    db $eb
    nop
    ld d, l
    nop
    cp [hl]
    nop
    db $eb
    nop
    ld d, a
    nop
    ld a, [$b500]
    nop
    ld e, a
    nop
    ei
    nop
    push de
    nop
    xor $00
    ld a, l
    nop
    or [hl]
    nop
    rst $28
    nop
    cp l
    nop
    ld e, a
    nop
    ei
    nop
    push af
    nop
    rst $38
    nop
    rst $28
    nop
    sub $00
    rst $38
    nop
    cp l
    nop
    ld e, a
    nop
    ei
    nop
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    rst $10
    nop
    rst $38
    nop
    cp l
    nop
    ld a, a
    nop
    ei
    nop
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    ld_long a, $ff00
    nop
    cp a
    nop
    ld e, a
    nop
    ei
    nop
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    or $00
    sbc a
    nop
    ld l, a
    nop
    rst $38
    nop
    rst $38
    nop
    jp hl


    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    and h
    nop
    jp c, $6500

    nop
    sub [hl]
    nop
    db $db
    nop
    or l
    nop
    ld e, a
    nop
    db $eb
    nop
    ld d, l
    nop
    cp [hl]
    nop
    db $eb
    nop
    ld d, a
    nop
    ld a, [$b500]
    nop
    ld e, a
    nop
    ei
    nop
    push de
    nop
    xor $00
    ld a, l
    nop
    or [hl]
    nop
    rst $28
    nop
    cp l
    nop
    ld e, a
    nop
    ei
    nop
    push af
    nop
    rst $38
    nop
    rst $28
    nop
    sub $00
    rst $38
    nop
    cp l
    nop
    ld e, a
    nop
    ei
    nop
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    rst $10
    nop
    rst $38
    nop
    cp l
    nop
    ld a, a
    nop
    ei
    nop
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    ld_long a, $ff00
    nop
    cp a
    nop
    ld e, a
    nop
    ei
    nop
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    or $00
    sbc a
    nop
    ld l, a
    nop
    rst $38
    nop
    rst $38
    nop
    jp hl


    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    and h
    nop
    jp c, $6500

    nop
    sub [hl]
    nop
    db $db
    nop
    or l
    nop
    ld e, a
    nop
    db $eb
    nop
    ld d, l
    nop
    cp [hl]
    nop
    db $eb
    nop
    ld d, a
    nop
    ld a, [$b500]
    nop
    ld e, a
    nop
    ei
    nop
    push de
    nop
    xor $00
    ld a, l
    nop
    or [hl]
    nop
    rst $28
    nop
    cp l
    nop
    ld e, a
    nop
    ei
    nop
    push af
    nop
    rst $38
    nop
    rst $28
    nop
    sub $00
    rst $38
    nop
    cp l
    nop
    ld e, a
    nop
    ei
    nop
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    rst $10
    nop
    rst $38
    nop
    cp l
    nop
    ld a, a
    nop
    ei
    nop
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    ld_long a, $ff00
    nop
    cp a
    nop
    ld e, a
    nop
    ei
    nop
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    or $00
    sbc a
    nop
    ld l, a
    nop
    rst $38
    nop
    rst $38
    nop
    jp hl


    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $28
    nop
    ei
    nop
    rst $38
    nop
    rst $28
    nop
    cp [hl]
    nop
    rst $38
    nop
    rst $10
    nop
    rst $18
    nop
    ld a, [$bb00]
    nop
    xor $00
    db $eb
    nop
    ld a, a
    nop
    ld e, a
    nop
    push af
    nop
    rst $30
    nop
    cp a
    nop
    jp c, Jump_016_6e00

    nop
    db $db
    nop
    ld e, a
    nop
    db $ed
    nop
    sub a
    nop
    or l
    nop
    rst $18
    nop
    ld e, d
    nop
    ld l, l
    nop
    or l
    nop
    ld e, e
    nop
    call $ba00
    nop
    push de
    nop
    ld h, l
    nop
    ld e, e
    nop
    xor d
    nop
    db $e4
    nop
    inc sp
    nop
    ld d, [hl]
    nop
    jp z, Jump_000_3500

    nop
    and h
    nop
    sub d
    nop
    ld c, e
    nop
    inc [hl]
    nop
    ld l, c
    nop
    adc d
    nop
    ld hl, $4500
    nop
    ld a, [hl+]
    nop
    add d
    nop
    dec d
    nop
    ld c, b
    nop
    dec b
    nop
    ld d, d
    nop
    ld [$aa00], sp
    nop
    add b
    nop
    ld e, c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ei
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $18
    nop
    db $fd
    nop
    cp a
    nop
    rst $38
    nop
    ei
    nop
    rst $28
    nop
    rst $38
    nop
    ld [hl], a
    nop
    rst $18
    nop
    db $fd
    nop
    rst $30
    nop
    cp [hl]
    nop
    ei
    nop
    rst $28
    nop
    db $fd
    nop
    ld [hl], a
    nop
    db $dd
    nop
    cp $00
    or a
    nop
    xor $00
    ld a, e
    nop
    xor a
    nop
    db $fd
    nop
    or a
    nop
    ld [hl], a
    nop
    db $dd
    nop
    ld a, e
    nop
    sbc $00
    jp c, Jump_016_6b00

    nop
    push de
    nop
    ld c, l
    nop
    xor d
    nop
    ld e, e
    nop
    and l
    nop
    ld c, d
    nop
    or d
    nop
    ld d, h
    nop
    ld c, c
    nop
    dec [hl]
    nop
    ld d, d
    nop
    xor c
    nop
    ld [hl+], a
    nop
    sub h
    nop
    xor l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $28
    nop
    ei
    nop
    rst $38
    nop
    rst $28
    nop
    cp [hl]
    nop
    rst $38
    nop
    rst $30
    nop
    cp [hl]
    nop
    ei
    nop
    ei
    nop
    ld l, [hl]
    nop
    db $eb
    nop
    ld a, a
    nop
    ld e, a
    nop
    push af
    nop
    or a
    nop
    cp a
    nop
    jp c, Jump_016_6e00

    nop
    db $db
    nop
    ld e, a
    nop
    db $ed
    nop
    sub a
    nop
    or h
    nop
    sbc $00
    ld e, e
    nop
    ld l, l
    nop
    or l
    nop
    ld e, e
    nop
    call $ba00
    nop
    push de
    nop
    ld h, l
    nop
    ld e, e
    nop
    xor d
    nop
    call nc, $2300
    nop
    ld d, [hl]
    nop
    jp z, Jump_000_3500

    nop
    and h
    nop
    sub d
    nop
    ld c, e
    nop
    inc h
    nop
    ld c, l
    nop
    sub d
    nop
    ld hl, $4a00
    nop
    jr z, jr_016_4cd6

jr_016_4cd6:
    add [hl]
    nop
    dec d
    nop
    ld d, b
    nop
    dec b
    nop
    ld d, d
    nop
    ld [$a000], sp
    nop
    adc d
    nop
    ld e, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ei
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $18
    nop
    db $fd
    nop
    cp a
    nop
    rst $38
    nop
    ei
    nop
    rst $28
    nop
    rst $38
    nop
    ld [hl], a
    nop
    rst $18
    nop
    db $fd
    nop
    rst $30
    nop
    cp [hl]
    nop
    ei
    nop
    rst $28
    nop
    db $fd
    nop
    ld [hl], a
    nop
    db $dd
    nop
    cp $00
    or a
    nop
    xor $00
    ld a, e
    nop
    xor a
    nop
    db $fd
    nop
    or a
    nop
    ld [hl], a
    nop
    db $dd
    nop
    ld a, e
    nop
    xor [hl]
    nop
    jp c, $4b00

    nop
    or l
    nop
    ld h, l
    nop
    or d
    nop
    sub a
    nop
    dec l
    nop
    jp z, $b200

    nop
    ld d, l
    nop
    ld c, h
    nop
    dec [hl]
    nop
    ld d, d
    nop
    adc b
    nop
    ld [hl+], a
    nop
    sub h
    nop
    and l
    rst $38
    nop
    rst $38
    nop
    halt
    rst $38
    nop
    db $d3
    nop
    rst $38
    nop
    ld e, d
    nop
    rst $38
    nop
    jp z, $ff00

    nop
    ld d, [hl]
    nop
    rst $38
    nop
    add hl, hl
    nop
    rst $38
    nop

    db $ac, $00, $ff, $00

    xor b
    nop
    ld [hl], a
    nop
    and h
    nop
    ei
    nop
    ld d, d
    nop
    cp a
    nop
    ld b, l
    nop
    db $db
    nop
    xor b
    nop
    ld [hl], a
    nop
    and d
    nop
    db $fd
    nop
    ld d, d
    nop
    cp l
    nop
    ld b, l
    nop
    or $00

    db $a8, $00, $7b, $00, $a4, $00, $b9, $00, $52, $00, $2e, $00, $65, $00, $da, $00
    db $a8, $00, $77, $00, $a4, $00, $1b, $00, $52, $00, $b1, $00, $45, $00, $5a, $00

    adc b
    nop
    ld h, c
    nop
    inc l
    nop
    add b
    nop
    ld [de], a
    nop
    and l
    nop
    ld b, c
    nop
    jp nc, $a800

    nop
    ld h, $00
    add h
    nop
    ld l, b
    nop
    ld b, h
    nop
    and b
    nop
    db $01
    nop

    db $84, $00

    rst $38
    nop
    rst $38
    nop
    halt
    rst $38
    nop
    db $d3
    nop
    rst $38
    nop
    ld e, d
    nop
    rst $38
    nop
    jp z, $ff00

    nop
    ld d, [hl]
    nop
    rst $38
    nop
    add hl, hl
    nop
    rst $38
    nop

    db $ac, $00, $ff, $00

    xor b
    nop
    ld [hl], a
    nop
    and h
    nop
    ei
    nop
    ld d, d
    nop
    cp a
    nop
    ld b, l
    nop
    db $db
    nop
    xor b
    nop
    ld [hl], a
    nop
    and d
    nop
    db $fd
    nop
    ld d, d
    nop
    cp l
    nop
    ld b, l
    nop
    or $00

    db $a8, $00, $7b, $00, $a4, $00, $b9, $00, $52, $00, $2e, $00, $65, $00, $da, $00
    db $a8, $00, $77, $00, $a4, $00, $1b, $00, $52, $00, $b1, $00, $45, $00, $5a, $00
    db $88, $00, $61, $00

    inc l
    nop
    add b
    nop
    ld [de], a
    nop
    and l
    nop
    ld b, c
    nop
    jp nc, $a800

    nop
    ld h, $00
    add h
    nop
    ld l, b
    nop
    ld b, h
    nop
    and b
    nop
    ld bc, $8400
    nop
    rst $38
    nop
    rst $38
    nop
    halt
    rst $38
    nop
    db $d3
    nop
    rst $38
    nop
    ld e, d
    nop

    db $ff, $00

    jp z, $ff00

    nop
    ld d, [hl]
    nop
    rst $38
    nop
    add hl, hl
    nop
    rst $38
    nop

    db $ac, $00, $ff, $00

    xor b
    nop
    ld [hl], a
    nop
    and h
    nop
    ei
    nop
    ld d, d
    nop
    cp a
    nop
    ld b, l
    nop
    db $db
    nop
    xor b
    nop
    ld [hl], a
    nop
    and d
    nop
    db $fd
    nop
    ld d, d
    nop
    cp l
    nop
    ld b, l
    nop
    or $00

    db $a8, $00, $7b, $00, $a4, $00, $b9, $00, $52, $00, $2e, $00, $65, $00, $da, $00
    db $a8, $00, $77, $00, $a4, $00, $1b, $00, $52, $00, $b1, $00, $45, $00, $5a, $00

    adc b
    nop
    ld h, c
    nop
    inc l
    nop
    add b
    nop
    ld [de], a
    nop
    and l
    nop
    ld b, c
    nop

    db $d2, $00

    xor b
    nop
    ld h, $00
    add h
    nop
    ld l, b
    nop
    ld b, h
    nop
    and b
    nop
    ld bc, $8400
    nop
    rst $38
    nop
    rst $38
    nop
    halt
    rst $38
    nop
    db $d3
    nop
    rst $38
    nop
    ld e, d
    nop
    rst $38
    nop
    jp z, $ff00

    nop
    ld d, [hl]
    nop
    rst $38
    nop
    add hl, hl
    nop
    rst $38
    nop

    db $ac, $00, $ff, $00

    xor b
    nop
    ld [hl], a
    nop
    and h
    nop
    ei
    nop
    ld d, d
    nop
    cp a
    nop
    ld b, l
    nop
    db $db
    nop
    xor b
    nop

    db $77, $00, $a2, $00, $fd, $00, $52, $00, $bd, $00, $45, $00, $f6, $00, $a8, $00
    db $7b, $00, $a4, $00, $b9, $00, $52, $00, $2e, $00, $65, $00, $da, $00, $a8, $00
    db $77, $00, $a4, $00, $1b, $00, $52, $00, $b1, $00, $45, $00, $5a, $00

    adc b
    nop
    ld h, c
    nop
    inc l
    nop
    add b
    nop
    ld [de], a
    nop
    and l
    nop
    ld b, c
    nop
    jp nc, $a800

    nop
    ld h, $00
    add h
    nop
    ld l, b
    nop
    ld b, h
    nop
    and b
    nop
    ld bc, $8400
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38

    db $00, $df, $00, $ff

    nop
    rst $38
    nop
    cp a
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    db $dd
    nop
    rst $38
    nop
    rst $30
    nop
    cp $00
    rst $38
    nop
    cp a
    nop
    or $00
    rst $18
    nop
    db $fd

    db $00, $ff, $00, $b7, $00, $fe, $00, $eb, $00, $bb, $00, $fe, $00, $d7, $00, $7d
    db $00, $6f, $00, $d6, $00, $df, $00, $ea, $00, $af, $00, $77, $00, $5a, $00, $d7
    db $00, $65, $00, $da, $00, $6a, $00, $a5, $00, $9a, $00, $26, $00, $51, $00, $8a
    db $00, $52, $00, $85, $00, $90, $00, $4d, $00, $29, $00, $a6, $00, $59, $00, $aa

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38

    db $00, $df

    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    db $dd
    nop
    rst $38
    nop
    rst $30
    nop
    cp $00
    rst $38
    nop
    cp a
    nop
    or $00
    rst $18
    nop
    db $fd

    db $00, $ff, $00, $b7, $00, $fe, $00, $eb, $00, $bb, $00, $fe, $00, $d7, $00, $7d
    db $00, $6f, $00, $d6, $00, $df, $00, $ea, $00, $af, $00, $77, $00, $5a, $00, $d7
    db $00, $65, $00, $da, $00, $6a, $00, $a5, $00, $9a, $00, $26, $00, $51, $00, $8a
    db $00, $4a, $00, $b5, $00, $90, $00, $45, $00, $2a, $00, $c6, $00, $59, $00, $aa

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38

    db $00, $ff

    nop
    rst $18
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38

    db $00, $df

    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    db $dd
    nop
    rst $38
    nop
    rst $30
    nop
    cp $00
    rst $38
    nop
    cp a
    nop
    or $00
    rst $18
    nop
    db $fd

    db $00, $ff, $00, $b7, $00, $fe, $00, $eb, $00, $bb, $00, $fe, $00, $d7, $00, $7d
    db $00, $6f, $00, $d6, $00, $df, $00, $ea, $00, $af, $00, $77, $00, $5a, $00, $d7
    db $00, $65, $00, $da, $00, $6a, $00, $a5, $00, $9a, $00, $26, $00, $51, $00, $aa
    db $00, $58, $00, $05, $00, $90, $00, $4b, $00, $29, $00, $96, $00, $59, $00, $aa

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $18

    db $00, $ff

    nop
    rst $38
    nop
    cp a
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    db $dd
    nop
    rst $38

    db $00, $f7, $00, $fe

    nop
    rst $38
    nop
    cp a
    nop
    or $00
    rst $18
    nop
    db $fd

    db $00, $ff, $00, $b7, $00, $fe, $00, $eb, $00, $bb, $00, $fe, $00, $d7, $00, $7d
    db $00, $6f, $00, $d6, $00, $df, $00, $ea, $00, $af, $00, $77, $00, $5a, $00, $d7
    db $00, $65, $00, $da, $00, $6a, $00, $a5, $00, $9a, $00, $26, $00, $51, $00, $8a
    db $00, $5a, $00, $85, $00, $90, $00, $45, $00, $2a, $00, $a2, $00, $55, $00, $8a
    db $ff, $00, $ff, $00, $ff, $00, $fd, $00, $ff, $00, $ef, $00

    rst $38
    nop

    db $ff, $00, $df, $00, $ff, $00, $fb, $00, $ff, $00, $7f, $00, $ff, $00, $df, $00
    db $ff, $00, $ff, $00, $bf, $00, $fb, $00, $ff, $00, $ff, $00, $f7, $00

    rst $38
    nop
    db $dd
    nop

    db $ff, $00, $f7, $00, $fe, $00, $ff, $00

    cp a
    nop

    db $f6, $00, $df, $00, $fd, $00, $ff, $00, $b7, $00, $fe, $00, $eb, $00, $bb, $00
    db $fe, $00, $d7, $00, $7d, $00, $6f, $00, $d6, $00, $df, $00, $ea, $00, $af, $00
    db $77, $00, $5a, $00, $d7, $00, $65, $00, $da, $00, $6a, $00, $a5, $00, $9a, $00
    db $26, $00, $51, $00, $8a, $00, $52, $00, $85, $00, $90, $00, $4d, $00, $29, $00
    db $a6, $00, $59, $00, $aa, $00, $ff, $00, $ff, $00, $ff, $00

    db $fd
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop

    db $df, $00, $ff, $00, $fb, $00, $ff, $00, $7f, $00, $ff, $00, $df, $00, $ff, $00
    db $ff, $00, $bf, $00, $fb, $00, $ff, $00, $ff, $00

    rst $30
    nop
    rst $38
    nop
    db $dd
    nop
    rst $38
    nop

    db $f7, $00

    cp $00
    rst $38
    nop

    db $bf, $00, $f6, $00

    rst $18
    nop
    db $fd
    nop

    db $ff, $00, $b7, $00, $fe, $00, $eb, $00, $bb, $00, $fe, $00, $d7, $00, $7d, $00
    db $6f, $00

    sub $00

    db $df, $00, $ea, $00

    xor a
    nop
    ld [hl], a
    nop

    db $5a, $00, $d7, $00, $65, $00, $da, $00, $6a, $00, $a5, $00, $9a, $00, $26, $00
    db $51, $00, $8a, $00, $4a, $00, $b5, $00, $90, $00, $45, $00

    ld a, [hl+]
    nop

    db $c6, $00, $59, $00, $aa, $00, $ff, $00, $ff, $00, $ff, $00, $fd, $00, $ff, $00
    db $ef, $00, $ff, $00, $ff, $00, $df, $00, $ff, $00, $fb, $00, $ff, $00, $7f, $00
    db $ff, $00, $df, $00, $ff, $00, $ff, $00, $bf, $00, $fb, $00

    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    db $dd
    nop

    db $ff, $00, $f7, $00

    cp $00
    rst $38
    nop
    cp a
    nop

    db $f6, $00, $df, $00, $fd, $00, $ff, $00, $b7, $00, $fe, $00, $eb, $00, $bb, $00
    db $fe, $00, $d7, $00, $7d, $00, $6f, $00, $d6, $00, $df, $00, $ea, $00, $af, $00
    db $77, $00, $5a, $00, $d7, $00, $65, $00, $da, $00, $6a, $00, $a5, $00, $9a, $00
    db $26, $00, $51, $00

    xor d
    nop

    db $58, $00, $05, $00, $90, $00

    ld c, e
    nop
    add hl, hl
    nop
    sub [hl]
    nop
    ld e, c
    nop

    db $aa, $00, $ff, $00, $ff, $00, $ff, $00, $fd, $00, $ff, $00, $ef, $00, $ff, $00
    db $ff, $00, $df, $00, $ff, $00, $fb, $00, $ff, $00, $7f, $00, $ff, $00, $df, $00
    db $ff, $00, $ff, $00, $bf, $00, $fb, $00

    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    db $dd
    nop
    rst $38
    nop

    db $f7, $00

    cp $00
    rst $38
    nop
    cp a
    nop

    db $f6, $00, $df, $00, $fd, $00, $ff, $00, $b7, $00, $fe, $00, $eb, $00, $bb, $00
    db $fe, $00, $d7, $00, $7d, $00, $6f, $00, $d6, $00, $df, $00, $ea, $00, $af, $00
    db $77, $00, $5a, $00, $d7, $00, $65, $00, $da, $00

    ld l, d
    nop

    db $a5, $00

    sbc d
    nop
    ld h, $00
    ld d, c
    nop
    adc d
    nop

    db $5a, $00, $85, $00, $90, $00, $45, $00, $2a, $00, $a2, $00, $55, $00, $8a, $00
    db $00, $ff, $00, $ff, $00, $f7, $00, $ff, $00, $fe, $00, $ff, $00, $ef, $00, $fb
    db $00, $ff, $00, $ef, $00, $be, $00, $ff, $00, $d7, $00, $df, $00, $fa, $00, $bb
    db $00, $ee, $00, $eb, $00, $7f, $00, $5f, $00, $f5, $00, $f7, $00, $bf, $00, $da
    db $00, $6e, $00, $db, $00, $5f, $00, $ed, $00, $97, $00, $b5, $00, $df, $00, $5a
    db $00, $6d, $00, $b5, $00, $5b, $00, $cd, $00, $ba, $00, $d5, $00, $65, $00, $5b
    db $00, $aa, $00, $e4, $00, $33, $00, $56, $00, $ca, $00, $35, $00, $a4, $00, $92
    db $00, $4b, $00, $34, $00, $69, $00, $8a, $00, $21, $00, $45, $00, $2a, $00, $82
    db $00, $15, $00, $48, $00, $05, $00, $52, $00, $08, $00, $aa, $00, $80, $00, $59
    db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $bf, $00, $ff, $00, $fb
    db $00, $ff, $00, $ff, $00, $fe, $00, $ff, $00, $ff, $00, $bf, $00, $fb, $00, $ff
    db $00, $ef, $00, $ff, $00, $7f, $00, $df, $00, $fd, $00, $bf, $00, $ff, $00, $fb
    db $00, $ef, $00, $ff, $00, $77, $00, $df, $00, $fd, $00, $f7, $00, $be, $00, $fb
    db $00, $ef, $00, $fd, $00, $77, $00, $dd, $00, $fe, $00, $b7, $00, $ee, $00, $7b
    db $00, $af, $00, $fd, $00, $b7, $00, $77, $00, $dd, $00, $7b, $00, $de, $00, $da
    db $00, $6b, $00, $d5, $00, $4d, $00, $aa, $00, $5b, $00, $a5, $00, $4a, $00, $b2
    db $00, $54, $00, $49, $00, $35, $00, $52, $00, $a9, $00, $22, $00, $94, $00, $ad
    db $00, $ff, $00, $ff, $00, $f7, $00, $ff, $00, $fe, $00, $ff, $00, $ef, $00, $fb
    db $00, $ff, $00, $ef, $00, $be, $00, $ff, $00, $f7, $00, $be, $00, $fb, $00, $fb
    db $00, $6e, $00, $eb, $00, $7f, $00, $5f, $00, $f5, $00, $b7, $00, $bf, $00, $da
    db $00, $6e, $00, $db, $00, $5f, $00, $ed, $00, $97, $00, $b4, $00, $de, $00, $5b
    db $00, $6d, $00, $b5, $00, $5b, $00, $cd, $00, $ba, $00, $d5, $00, $65, $00, $5b
    db $00, $aa, $00, $d4, $00, $23, $00, $56, $00, $ca, $00, $35, $00, $a4, $00, $92
    db $00, $4b, $00, $24, $00, $4d, $00, $92, $00, $21, $00, $4a, $00, $28, $00, $86
    db $00, $15, $00, $50, $00, $05, $00, $52, $00, $08, $00, $a0, $00, $8a, $00, $58
    db $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $bf, $00, $ff, $00, $ff
    db $00, $ff, $00, $ef, $00, $fe, $00, $ff, $00, $ff, $00, $bf, $00, $fb, $00, $ff
    db $00, $ef, $00, $ff, $00, $7f, $00, $df, $00, $fd, $00, $bf, $00, $ff, $00, $fb
    db $00, $ef, $00, $ff, $00, $77, $00, $df, $00, $fd, $00, $f7, $00, $be, $00, $fb
    db $00, $ef, $00, $fd, $00, $77, $00, $dd, $00, $fe, $00, $b7, $00, $ee, $00, $7b
    db $00, $af, $00, $fd, $00, $b7, $00, $77, $00, $dd, $00, $7b, $00, $ae, $00, $da
    db $00, $4b, $00, $b5, $00, $65, $00, $b2, $00, $97, $00, $2d, $00, $ca, $00, $b2
    db $00, $55, $00, $4c, $00, $35, $00, $52, $00, $88, $00, $22, $00, $94, $00, $a5

    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop

    db $fe, $00, $ff, $00, $ef, $00, $fb, $00

    rst $38
    nop
    rst $28
    nop

    db $be, $00, $ff, $00, $d7, $00, $df, $00, $fa, $00, $bb, $00

    xor $00
    db $eb
    nop

    db $7f, $00, $5f, $00, $f5, $00, $f7, $00, $bf, $00, $da, $00

    ld l, [hl]
    nop

    db $db, $00, $5f, $00, $ed, $00, $97, $00, $b5, $00

    rst $18
    nop
    ld e, d
    nop

    db $6d, $00, $b5, $00, $5b, $00

    db $cd
    nop

    db $ba, $00, $d5, $00, $65, $00, $5b, $00

    xor d
    nop
    db $e4
    nop
    inc sp
    nop

    db $56, $00, $ca, $00, $35, $00, $a4, $00, $92, $00

    ld c, e
    nop

    db $34, $00, $69, $00, $8a, $00, $21, $00, $45, $00, $2a, $00, $82, $00

    dec d
    nop
    ld c, b
    nop
    dec b
    nop
    ld d, d
    nop
    ld [$aa00], sp
    nop
    add b
    nop
    ld e, c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

    db $ff, $00, $ff, $00, $bf, $00, $ff, $00, $fb, $00

    rst $38
    nop
    rst $38
    nop

    db $fe, $00, $ff, $00, $ff, $00, $bf, $00, $fb, $00, $ff, $00

    rst $28
    nop
    rst $38
    nop

    db $7f, $00, $df, $00, $fd, $00, $bf, $00, $ff, $00, $fb, $00

    rst $28
    nop

    db $ff, $00, $77, $00, $df, $00, $fd, $00, $f7, $00, $be, $00, $fb, $00, $ef, $00
    db $fd, $00

    ld [hl], a
    nop
    db $dd
    nop
    cp $00
    or a
    nop
    xor $00

    db $7b, $00

    xor a
    nop
    db $fd
    nop
    or a
    nop
    ld [hl], a
    nop

    db $dd, $00, $7b, $00, $de, $00, $da, $00

    ld l, e
    nop
    push de
    nop
    ld c, l
    nop

    db $aa, $00, $5b, $00, $a5, $00, $4a, $00, $b2, $00

    ld d, h
    nop
    ld c, c
    nop
    dec [hl]
    nop
    ld d, d
    nop
    xor c
    nop
    ld [hl+], a
    nop
    sub h
    nop
    xor l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop

    db $ff, $00

    cp $00
    rst $38
    nop

    db $ef, $00, $fb, $00

    rst $38
    nop
    rst $28
    nop
    cp [hl]
    nop
    rst $38
    nop

    db $f7, $00, $be, $00, $fb, $00, $fb, $00, $6e, $00, $eb, $00, $7f, $00, $5f, $00
    db $f5, $00, $b7, $00, $bf, $00, $da, $00

    ld l, [hl]
    nop

    db $db, $00, $5f, $00, $ed, $00, $97, $00, $b4, $00, $de, $00

    ld e, e
    nop

    db $6d, $00

    or l
    nop
    ld e, e
    nop
    call $ba00
    nop
    push de
    nop
    ld h, l
    nop
    ld e, e
    nop

    db $aa, $00, $d4, $00, $23, $00, $56, $00, $ca, $00, $35, $00, $a4, $00, $92, $00

    ld c, e
    nop
    inc h
    nop
    ld c, l
    nop

    db $92, $00, $21, $00, $4a, $00, $28, $00, $86, $00

    dec d
    nop
    ld d, b
    nop
    dec b
    nop
    ld d, d
    nop
    ld [$a000], sp
    nop
    adc d
    nop
    ld e, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

    db $ff, $00

    rst $38
    nop

    db $bf, $00, $ff, $00, $ff, $00

    rst $38
    nop
    rst $28
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop

    db $bf, $00, $fb, $00, $ff, $00, $ef, $00, $ff, $00, $7f, $00, $df, $00, $fd, $00
    db $bf, $00, $ff, $00, $fb, $00

    rst $28
    nop

    db $ff, $00, $77, $00, $df, $00, $fd, $00, $f7, $00, $be, $00, $fb, $00, $ef, $00
    db $fd, $00, $77, $00, $dd, $00, $fe, $00, $b7, $00, $ee, $00, $7b, $00, $af, $00
    db $fd, $00, $b7, $00, $77, $00, $dd, $00, $7b, $00, $ae, $00, $da, $00, $4b, $00
    db $b5, $00, $65, $00, $b2, $00, $97, $00, $2d, $00, $ca, $00, $b2, $00

    ld d, l
    nop
    ld c, h
    nop
    dec [hl]
    nop
    ld d, d
    nop
    adc b
    nop
    ld [hl+], a
    nop
    sub h
    nop
    and l
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    halt
    rst $38

    db $00, $d3, $00, $ff, $00, $5a

    nop
    rst $38
    nop
    jp z, $ff00

    db $00, $56

    nop
    rst $38
    nop
    add hl, hl
    nop
    rst $38

    db $00, $ac, $00, $ff, $00, $a8, $00, $77, $00, $a4, $00, $fb

    nop
    ld d, d
    nop
    cp a
    nop
    ld b, l

    db $00, $db

    nop
    xor b

    db $00, $77, $00, $a2, $00, $fd, $00, $52, $00, $bd, $00, $45, $00, $f6, $00, $a8
    db $00, $7b, $00, $a4, $00, $b9, $00, $52, $00, $2e, $00, $65, $00, $da, $00, $a8
    db $00, $77, $00, $a4, $00, $1b, $00, $52, $00, $b1, $00, $45

    nop
    ld e, d

    db $00, $88, $00, $61, $00, $2c, $00, $80, $00, $12

    nop
    and l
    nop
    ld b, c
    nop
    jp nc, $a800

    nop
    ld h, $00
    add h
    nop
    ld l, b
    nop
    ld b, h
    nop
    and b
    nop
    ld bc, $8400
    nop
    rst $38
    nop
    rst $38
    nop
    db $76

    db $00, $ff, $00, $d3, $00, $ff, $00, $5a

    nop
    rst $38
    nop
    jp z, $ff00

    db $00, $56, $00, $ff, $00, $29

    nop
    rst $38

    db $00, $ac, $00, $ff, $00, $a8, $00, $77, $00, $a4, $00, $fb, $00, $52, $00, $bf
    db $00, $45

    nop
    db $db
    nop
    xor b

    db $00, $77, $00, $a2, $00, $fd, $00, $52, $00, $bd, $00, $45, $00, $f6, $00, $a8
    db $00, $7b, $00, $a4, $00, $b9, $00, $52, $00, $2e, $00, $65, $00, $da, $00, $a8
    db $00, $77, $00, $a4, $00, $1b, $00, $52, $00, $b1, $00, $45

    nop
    ld e, d

    db $00, $88, $00, $61, $00, $2c, $00, $80, $00, $12

    nop
    and l
    nop
    ld b, c
    nop
    jp nc, $a800

    nop
    ld h, $00
    add h
    nop
    ld l, b
    nop
    ld b, h
    nop
    and b
    nop
    ld bc, $8400
    nop
    rst $38
    nop
    rst $38
    nop
    db $76

    db $00, $ff, $00, $d3, $00, $ff, $00, $5a

    nop
    rst $38
    nop
    jp z, $ff00

    db $00, $56, $00, $ff, $00, $29

    nop
    rst $38

    db $00, $ac, $00, $ff, $00, $a8, $00, $77, $00, $a4, $00, $fb, $00, $52

    nop
    cp a
    nop
    ld b, l
    nop
    db $db
    nop
    xor b

    db $00, $77, $00, $a2, $00, $fd, $00, $52, $00, $bd, $00, $45, $00, $f6, $00, $a8
    db $00, $7b, $00, $a4, $00, $b9, $00, $52, $00, $2e, $00, $65, $00, $da, $00, $a8
    db $00, $77, $00, $a4, $00, $1b, $00, $52, $00, $b1, $00, $45, $00, $5a, $00, $88
    db $00, $61, $00, $2c, $00, $80, $00, $12

    nop
    and l
    nop
    ld b, c
    nop
    jp nc, $a800

    nop
    ld h, $00
    add h
    nop
    ld l, b
    nop
    ld b, h
    nop
    and b
    nop
    ld bc, $8400
    nop
    rst $38
    nop
    rst $38
    nop
    db $76

    db $00, $ff, $00, $d3, $00, $ff, $00, $5a, $00, $ff

    nop
    jp z, $ff00

    db $00, $56, $00, $ff, $00, $29

    nop
    rst $38

    db $00, $ac, $00, $ff, $00, $a8, $00, $77, $00, $a4, $00, $fb

    nop
    ld d, d
    nop
    cp a
    nop
    ld b, l
    nop
    db $db
    nop
    xor b
    nop
    ld [hl], a

    db $00, $a2, $00, $fd, $00, $52, $00, $bd, $00, $45, $00, $f6

    nop
    xor b

    db $00, $7b, $00, $a4, $00, $b9, $00, $52

    nop
    ld l, $00
    ld h, l
    nop
    db $da

    db $00, $a8, $00, $77, $00, $a4, $00, $1b, $00, $52, $00, $b1, $00, $45, $00, $5a
    db $00, $88, $00, $61, $00, $2c, $00, $80, $00, $12

    nop
    and l
    nop
    ld b, c
    nop
    jp nc, $a800

    nop
    ld h, $00
    add h
    nop
    ld l, b
    nop
    ld b, h
    nop
    and b
    nop
    ld bc, $8400

Call_016_5967:
    ld c, $40

Jump_016_5969:
    push bc
    push hl
    ld b, $00
    ld l, e
    ld h, d
    ld a, [hl-]
    ld c, a
    ld a, [hl+]
    ld [$c473], a
    cp c
    jr nz, jr_016_597b

    inc b
    set 7, b

jr_016_597b:
    inc hl
    ld a, [hl]
    ld [$c471], a
    cp c
    jr nz, jr_016_5986

    inc b
    set 5, b

jr_016_5986:
    ld hl, $ffc0
    add hl, de
    ld a, [hl]
    ld [$c472], a
    cp c
    jr nz, jr_016_599a

    ld a, b
    cp $a2
    jp z, Jump_016_5a59

    inc b
    set 6, b

jr_016_599a:
    ld hl, $0040
    add hl, de
    ld a, [hl]
    ld [$c470], a
    cp c
    jr nz, jr_016_59a8

    inc b
    set 4, b

jr_016_59a8:
    ld a, b
    and $0f
    cp $03
    jp nc, Jump_016_5a59

    ld c, a
    ld a, b
    swap a
    and $0f
    ld b, a
    ld a, c
    add a
    add $c4
    ld l, a
    adc $59
    sub l
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


    db $0b, $5a, $1e, $5a, $ce, $59

    ld e, c
    ld e, d
    ld e, c
    ld e, d

    pop hl
    ld a, b
    cp $03
    jr z, jr_016_59e3

    cp $06
    jr z, jr_016_59ed

    cp $0c
    jr z, jr_016_59f7

    cp $09
    jr z, jr_016_5a01

    jp Jump_016_5a5a


jr_016_59e3:
    ld a, [$c473]
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_016_5a5e

jr_016_59ed:
    ld a, [de]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [$c473]
    ld [hl+], a
    jr jr_016_5a5e

jr_016_59f7:
    ld a, [de]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [$c471]
    ld [hl+], a
    jr jr_016_5a5e

jr_016_5a01:
    ld a, [$c471]
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_016_5a5e

    pop hl
    ld a, [$c472]
    ld [hl+], a
    ld a, [$c473]
    ld [hl+], a
    ld a, [$c471]
    ld [hl+], a
    ld a, [$c470]
    ld [hl+], a
    jr jr_016_5a5e

    pop hl
    ld a, b
    cp $01
    jr z, jr_016_5a32

    cp $02
    jr z, jr_016_5a4c

    cp $04
    jr z, jr_016_5a3f

    cp $08
    jr z, jr_016_5a4c

    jr jr_016_5a5a

jr_016_5a32:
    ld a, [$c471]
    ld [hl+], a
    ld a, [$c473]
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    ld [hl+], a
    jr jr_016_5a5e

jr_016_5a3f:
    ld a, [de]
    ld [hl+], a
    ld [hl+], a
    ld a, [$c473]
    ld [hl+], a
    ld a, [$c471]
    ld [hl+], a
    jr jr_016_5a5e

jr_016_5a4c:
    ld a, [$c472]
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    ld [hl+], a
    ld a, [$c470]
    ld [hl+], a
    jr jr_016_5a5e

Jump_016_5a59:
    pop hl

Jump_016_5a5a:
jr_016_5a5a:
    ld a, [de]
    or $80
    ld [hl+], a

jr_016_5a5e:
    inc de
    pop bc
    dec c
    jp nz, Jump_016_5969

    ret


    db $14

    nop
    inc de
    nop
    inc de
    nop
    inc de
    ld bc, $0113
    inc de
    ld [bc], a
    inc de
    ld [bc], a
    inc de
    inc bc
    inc de
    inc bc
    inc de
    inc b
    inc de
    inc b
    inc de
    dec b
    inc de
    dec b
    ld [de], a
    ld b, $12
    ld b, $12
    rlca
    ld [de], a
    rlca
    ld [de], a
    ld [$0812], sp
    ld de, $1108
    add hl, bc
    ld de, $1109
    ld a, [bc]
    db $10
    ld a, [bc]
    db $10
    dec bc
    db $10
    dec bc
    db $10
    dec bc

    db $0f, $0c, $0f, $0c, $0f, $0d, $0e, $0d, $0e, $0d, $0e, $0e, $0d, $0e, $0d, $0e
    db $0d, $0f, $0c, $0f, $0c, $0f, $0b, $10, $0b, $10, $0b, $10, $0a, $10, $0a, $11
    db $09, $11, $09, $11, $08, $11, $08, $12, $08, $12, $07, $12, $07, $12, $06, $12
    db $06, $12, $05, $13, $05, $13, $04, $13, $04, $13, $03, $13, $03, $13, $02, $13
    db $02, $13, $01, $13, $01, $13, $00, $13, $00, $13, $14

    nop
    inc d
    nop
    inc d
    nop
    inc d
    ld bc, $0114
    inc d
    ld [bc], a
    inc d
    ld [bc], a
    inc d
    inc bc
    inc de
    inc bc
    inc de
    inc b
    inc de
    inc b
    inc de
    dec b
    inc de
    dec b
    inc de
    ld b, $13
    ld b, $12
    rlca
    ld [de], a
    rlca
    ld [de], a
    ld [$0812], sp
    ld [de], a
    add hl, bc
    ld de, $1109
    ld a, [bc]
    ld de, $110a
    ld a, [bc]
    db $10
    dec bc
    db $10
    dec bc
    db $10
    inc c

    db $10, $0c, $0f, $0c, $0f, $0d, $0f, $0d, $0e, $0e, $0e, $0e, $0e, $0e, $0d, $0f
    db $0d, $0f, $0c, $0f, $0c, $10, $0c, $10, $0b, $10, $0b, $10, $0a, $11, $0a, $11
    db $0a, $11, $09, $11, $09, $12, $08, $12, $08, $12, $07, $12, $07, $12, $06, $13
    db $06, $13, $05, $13, $05, $13, $04, $13, $04, $13, $03, $13, $03, $14, $02, $14
    db $02, $14, $01, $14, $01, $14, $00, $14, $00, $14, $14

    nop
    inc d
    nop
    inc d
    ld bc, $0114
    inc d
    ld [bc], a
    inc d
    ld [bc], a
    inc d
    inc bc
    inc d
    inc bc
    inc d
    inc b
    inc d
    inc b
    inc d
    dec b
    inc de
    dec b
    inc de
    dec b
    inc de
    ld b, $13
    ld b, $13
    rlca
    inc de
    rlca
    ld [de], a
    ld [$0812], sp
    ld [de], a
    add hl, bc
    ld [de], a
    add hl, bc
    ld de, $110a
    ld a, [bc]
    ld de, $110b
    dec bc
    db $10
    dec bc
    db $10
    inc c

    db $10, $0c, $0f, $0d, $0f, $0d, $0f, $0d, $0e, $0e, $0e, $0e, $0e, $0e, $0d, $0f
    db $0d, $0f, $0d, $0f, $0c, $10, $0c, $10, $0b, $10, $0b, $11, $0b, $11, $0a, $11
    db $0a, $11, $09, $12, $09, $12, $08, $12, $08, $12, $07, $13, $07, $13, $06, $13
    db $06, $13, $05, $13, $05, $13, $05, $14, $04, $14, $04, $14, $03, $14, $03, $14
    db $02, $14, $02, $14, $01, $14, $01, $14, $00, $14, $14

    nop
    inc d
    nop
    inc d
    ld bc, $0114
    inc d
    ld [bc], a
    inc d
    ld [bc], a
    inc d
    inc bc
    inc d
    inc bc
    inc d
    inc b
    inc d
    inc b
    inc d
    dec b
    inc d
    dec b
    inc d
    ld b, $13
    ld b, $13
    rlca
    inc de
    rlca
    inc de
    ld [$0813], sp
    ld [de], a
    ld [$0912], sp
    ld [de], a
    add hl, bc
    ld [de], a
    ld a, [bc]
    ld de, $110a
    dec bc
    ld de, $110b
    inc c
    db $10
    inc c

    db $10, $0c, $10, $0d, $0f, $0d, $0f, $0e, $0f, $0e, $0e, $0e, $0e, $0f, $0e, $0f
    db $0d, $0f, $0d, $10, $0c, $10, $0c, $10, $0c, $11, $0b, $11, $0b, $11, $0a, $11
    db $0a, $12, $09, $12, $09, $12, $08, $12, $08, $13, $08, $13, $07, $13, $07, $13
    db $06, $13, $06, $14, $05, $14, $05, $14, $04, $14, $04, $14, $03, $14, $03, $14
    db $02, $14, $02, $14, $01, $14, $01, $14, $00, $14, $15

    nop
    dec d
    nop
    dec d
    ld bc, $0115
    dec d
    ld [bc], a
    dec d
    ld [bc], a
    dec d
    inc bc
    dec d
    inc bc
    inc d
    inc b
    inc d
    inc b
    inc d
    dec b
    inc d
    dec b
    inc d
    ld b, $14
    ld b, $14
    rlca
    inc de
    rlca
    inc de
    ld [$0813], sp
    inc de
    add hl, bc
    inc de
    add hl, bc
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    dec bc
    ld de, $110b
    inc c
    db $11
    inc c

    db $10, $0d, $10, $0d, $10, $0d, $0f, $0e, $0f, $0e, $0f, $0f, $0e, $0f, $0e, $0f
    db $0d, $10, $0d, $10, $0d, $10, $0c, $11, $0c, $11, $0b, $11, $0b, $12, $0a, $12
    db $0a, $12, $0a, $12, $09, $13, $09, $13, $08, $13, $08, $13, $07, $13, $07, $14
    db $06, $14, $06, $14, $05, $14, $05, $14, $04, $14, $04, $14, $03, $15, $03, $15
    db $02, $15, $02, $15, $01, $15, $01, $15, $00, $15, $15

    nop
    dec d
    nop
    dec d
    ld bc, $0115
    dec d
    ld [bc], a
    dec d
    ld [bc], a
    dec d
    inc bc
    dec d
    inc bc
    dec d
    inc b
    dec d
    inc b
    dec d
    dec b
    inc d
    dec b
    inc d
    ld b, $14
    ld b, $14
    rlca
    inc d
    rlca
    inc d
    ld [$0813], sp
    inc de
    add hl, bc
    inc de
    add hl, bc
    inc de
    ld a, [bc]
    ld [de], a
    ld a, [bc]
    ld [de], a
    dec bc
    ld [de], a
    dec bc
    ld [de], a
    inc c
    ld de, $110c
    inc c

    db $11, $0d, $10, $0d, $10, $0e, $10, $0e, $0f, $0e, $0f, $0f, $0e, $0f, $0e, $10
    db $0e, $10, $0d, $10, $0d, $11, $0c, $11, $0c, $11, $0c, $12, $0b, $12, $0b, $12
    db $0a, $12, $0a, $13, $09, $13, $09, $13, $08, $13, $08, $14, $07, $14, $07, $14
    db $06, $14, $06, $14, $05, $14, $05, $15, $04, $15, $04, $15, $03, $15, $03, $15
    db $02, $15, $02, $15, $01, $15, $01, $15, $00, $15, $16

    nop
    ld d, $00
    ld d, $01
    ld d, $01
    dec d
    ld [bc], a
    dec d
    ld [bc], a
    dec d
    inc bc
    dec d
    inc bc
    dec d
    inc b
    dec d
    inc b
    dec d
    dec b
    dec d
    dec b
    dec d
    ld b, $14
    ld b, $14
    rlca
    inc d
    rlca
    inc d
    ld [$0814], sp
    inc de
    add hl, bc
    inc de
    add hl, bc
    inc de
    ld a, [bc]
    inc de
    ld a, [bc]
    ld [de], a
    dec bc
    ld [de], a
    dec bc
    ld [de], a
    inc c
    ld [de], a
    inc c
    db $11
    dec c

    db $11, $0d, $11, $0e, $10, $0e, $10, $0e, $0f, $0f, $0f, $0f, $0f, $0f, $0e, $10
    db $0e, $10, $0e, $11, $0d, $11, $0d, $11, $0c, $12, $0c, $12, $0b, $12, $0b, $12
    db $0a, $13, $0a, $13, $09, $13, $09, $13, $08, $14, $08, $14, $07, $14, $07, $14
    db $06, $14, $06, $15, $05, $15, $05, $15, $04, $15, $04, $15, $03, $15, $03, $15
    db $02, $15, $02, $15, $01, $16, $01, $16, $00, $16, $16

    nop
    ld d, $00
    ld d, $01
    ld d, $01
    ld d, $02
    ld d, $02
    ld d, $03
    ld d, $03
    ld d, $04
    dec d
    inc b
    dec d
    dec b
    dec d
    dec b
    dec d
    ld b, $15
    rlca
    dec d
    rlca
    inc d
    ld [$0814], sp
    inc d
    add hl, bc
    inc d
    add hl, bc
    inc d
    ld a, [bc]
    inc de
    ld a, [bc]
    inc de
    dec bc
    inc de
    dec bc
    ld [de], a
    inc c
    ld [de], a
    inc c
    ld [de], a
    inc c
    ld [de], a
    dec c

    db $11, $0d, $11, $0e, $11, $0e, $10, $0f, $10, $0f, $0f, $0f, $0f, $10, $0f, $10
    db $0e, $11, $0e, $11, $0d, $11, $0d, $12, $0c, $12, $0c, $12, $0c, $12, $0b, $13
    db $0b, $13, $0a, $13, $0a, $14, $09, $14, $09, $14, $08, $14, $08, $14, $07, $15
    db $07, $15, $06, $15, $05, $15, $05, $15, $04, $15, $04, $16, $03, $16, $03, $16
    db $02, $16, $02, $16, $01, $16, $01, $16, $00, $16, $16

    nop
    ld d, $00
    ld d, $01
    ld d, $01
    ld d, $02
    ld d, $02
    ld d, $03
    ld d, $03
    ld d, $04
    ld d, $05
    ld d, $05
    ld d, $06
    dec d
    ld b, $15
    rlca
    dec d
    rlca
    dec d
    ld [$0815], sp
    inc d
    add hl, bc
    inc d
    add hl, bc
    inc d
    ld a, [bc]
    inc d
    ld a, [bc]
    inc de
    dec bc
    inc de
    dec bc
    inc de
    inc c
    inc de
    inc c
    ld [de], a
    dec c
    ld [de], a
    dec c

    db $12, $0e, $11, $0e, $11, $0e, $10, $0f, $10, $0f, $10, $10, $0f, $10, $0f, $10
    db $0e, $11, $0e, $11, $0e, $12, $0d, $12, $0d, $12, $0c, $13, $0c, $13, $0b, $13
    db $0b, $13, $0a, $14, $0a, $14, $09, $14, $09, $14, $08, $15, $08, $15, $07, $15
    db $07, $15, $06, $15, $06, $16, $05, $16, $05, $16, $04, $16, $03, $16, $03, $16
    db $02, $16, $02, $16, $01, $16, $01, $16, $00, $16, $17

    nop
    rla
    nop
    rla
    ld bc, $0117
    rla
    ld [bc], a
    rla
    ld [bc], a
    rla
    inc bc
    ld d, $03
    ld d, $04
    ld d, $05
    ld d, $05
    ld d, $06
    ld d, $06
    ld d, $07
    dec d
    rlca
    dec d
    ld [$0815], sp
    dec d
    add hl, bc
    dec d
    add hl, bc
    inc d
    ld a, [bc]
    inc d
    ld a, [bc]
    inc d
    dec bc
    inc de
    dec bc
    inc de
    inc c
    inc de
    inc c
    inc de
    dec c
    ld [de], a
    dec c

    db $12, $0e, $11, $0e, $11, $0f, $11, $0f, $10, $10, $10, $10, $10, $10, $0f, $11
    db $0f, $11, $0e, $11, $0e, $12, $0d, $12, $0d, $13, $0c, $13, $0c, $13, $0b, $13
    db $0b, $14, $0a, $14, $0a, $14, $09, $15, $09, $15, $08, $15, $08, $15, $07, $15
    db $07, $16, $06, $16, $06, $16, $05, $16, $05, $16, $04, $16, $03, $16, $03, $17
    db $02, $17, $02, $17, $01, $17, $01, $17, $00, $17, $17

    nop
    rla
    nop
    rla
    ld bc, $0117
    rla
    ld [bc], a
    rla
    ld [bc], a
    rla
    inc bc
    rla
    inc b
    rla
    inc b
    rla
    dec b
    ld d, $05
    ld d, $06
    ld d, $06
    ld d, $07
    ld d, $07
    ld d, $08
    dec d
    add hl, bc
    dec d
    add hl, bc
    dec d
    ld a, [bc]
    dec d
    ld a, [bc]
    inc d
    dec bc
    inc d
    dec bc
    inc d
    inc c
    inc d
    inc c
    inc de
    dec c
    inc de
    dec c
    inc de
    db $0e

    db $12, $0e, $12, $0f, $11, $0f, $11, $0f, $11, $10, $10, $10, $10, $11, $0f, $11
    db $0f, $11, $0f, $12, $0e, $12, $0e, $13, $0d, $13, $0d, $13, $0c, $14, $0c, $14
    db $0b, $14, $0b, $14, $0a, $15, $0a, $15, $09, $15, $09, $15, $08, $16, $07, $16
    db $07, $16, $06, $16, $06, $16, $05, $16, $05, $17, $04, $17, $04, $17, $03, $17
    db $02, $17, $02, $17, $01, $17, $01, $17, $00, $17, $18

    nop
    jr jr_016_5fe9

jr_016_5fe9:
    jr @+$03

    jr @+$03

    jr jr_016_5ff1

    rla
    ld [bc], a

jr_016_5ff1:
    rla
    inc bc
    rla
    inc b
    rla
    inc b
    rla
    dec b
    rla
    dec b
    rla
    ld b, $17
    rlca
    ld d, $07
    ld d, $08
    ld d, $08
    ld d, $09
    ld d, $09
    dec d
    ld a, [bc]
    dec d
    ld a, [bc]
    dec d
    dec bc
    dec d
    dec bc
    inc d
    inc c
    inc d
    inc c
    inc d
    dec c
    inc de
    dec c
    inc de
    db $0e

    db $13, $0e, $12, $0f, $12, $0f, $11, $10, $11, $10, $11, $11, $10, $11, $10, $11
    db $0f, $12, $0f, $12, $0e, $13, $0e, $13, $0d, $13, $0d, $14, $0c, $14, $0c, $14
    db $0b, $15, $0b, $15, $0a, $15, $0a, $15, $09, $16, $09, $16, $08, $16, $08, $16
    db $07, $16, $07, $17, $06, $17, $05, $17, $05, $17, $04, $17, $04, $17, $03, $17
    db $02, $17, $02, $18, $01, $18, $01, $18, $00, $18, $18

    nop
    jr jr_016_6069

jr_016_6069:
    jr @+$03

    jr @+$03

    jr jr_016_6071

    jr @+$05

jr_016_6071:
    jr @+$05

    jr jr_016_6079

    jr jr_016_607b

    jr jr_016_607e

jr_016_6079:
    rla
    dec b

jr_016_607b:
    rla
    ld b, $17

jr_016_607e:
    rlca
    rla
    rlca
    rla
    ld [$0816], sp
    ld d, $09
    ld d, $09
    ld d, $0a
    dec d
    dec bc
    dec d
    dec bc
    dec d
    inc c
    dec d
    inc c
    inc d
    dec c
    inc d
    dec c
    inc d
    ld c, $13
    db $0e

    db $13, $0f, $13, $0f, $12, $10, $12, $10, $11, $10, $11, $11, $10, $11, $10, $12
    db $10, $12, $0f, $13, $0f, $13, $0e, $13, $0e, $14, $0d, $14, $0d, $14, $0c, $15
    db $0c, $15, $0b, $15, $0b, $15, $0a, $16, $09, $16, $09, $16, $08, $16, $08, $17
    db $07, $17, $07, $17, $06, $17, $05, $17, $05, $18, $04, $18, $04, $18, $03, $18
    db $03, $18, $02, $18, $01, $18, $01, $18, $00, $18, $19

    nop
    add hl, de
    nop
    add hl, de
    ld bc, $0119
    jr jr_016_60f1

    jr @+$05

jr_016_60f1:
    jr @+$05

    jr jr_016_60f9

    jr jr_016_60fb

    jr @+$07

jr_016_60f9:
    jr jr_016_6101

jr_016_60fb:
    jr @+$08

    jr jr_016_6106

    rla
    rlca

jr_016_6101:
    rla
    ld [$0917], sp
    rla

jr_016_6106:
    add hl, bc
    ld d, $0a
    ld d, $0a
    ld d, $0b
    ld d, $0b
    dec d
    inc c
    dec d
    inc c
    dec d
    dec c
    inc d
    dec c
    inc d
    ld c, $14
    db $0e

    db $13, $0f, $13, $0f, $13, $10, $12, $10, $12, $11, $11, $11, $11, $12, $10, $12
    db $10, $13, $0f, $13, $0f, $13, $0e, $14, $0e, $14, $0d, $14, $0d, $15, $0c, $15
    db $0c, $15, $0b, $16, $0b, $16, $0a, $16, $0a, $16, $09, $17, $09, $17, $08, $17
    db $07, $17, $07, $18, $06, $18, $06, $18, $05, $18, $04, $18, $04, $18, $03, $18
    db $03, $18, $02, $18, $01, $19, $01, $19, $00, $19, $19

    nop
    add hl, de
    nop
    add hl, de
    ld bc, $0119
    add hl, de
    ld [bc], a
    add hl, de
    inc bc
    add hl, de
    inc bc
    add hl, de
    inc b
    add hl, de
    inc b
    jr @+$07

    jr jr_016_6181

    jr jr_016_6183

    jr jr_016_6186

    jr jr_016_6189

jr_016_6181:
    jr jr_016_618b

jr_016_6183:
    rla
    add hl, bc
    rla

jr_016_6186:
    add hl, bc
    rla
    ld a, [bc]

jr_016_6189:
    rla
    ld a, [bc]

jr_016_618b:
    ld d, $0b
    ld d, $0c
    ld d, $0c
    dec d
    dec c
    dec d
    dec c
    dec d
    ld c, $14
    ld c, $14
    rrca

    db $14, $0f, $13, $10, $13, $10, $12, $11, $12, $11, $12, $12, $11, $12, $11, $12
    db $10, $13, $10, $13, $0f, $14, $0f, $14, $0e, $14, $0e, $15, $0d, $15, $0d, $15
    db $0c, $16, $0c, $16, $0b, $16, $0a, $17, $0a, $17, $09, $17, $09, $17, $08, $18
    db $08, $18, $07, $18, $06, $18, $06, $18, $05, $18, $04, $19, $04, $19, $03, $19
    db $03, $19, $02, $19, $01, $19, $01, $19, $00, $19, $1a

    nop
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $011a
    add hl, de
    ld [bc], a
    add hl, de
    inc bc
    add hl, de
    inc bc
    add hl, de
    inc b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    ld b, $19
    ld b, $18
    rlca
    jr jr_016_6209

    jr jr_016_620b

    jr jr_016_620e

    jr @+$0b

    rla
    ld a, [bc]

jr_016_6209:
    rla
    dec bc

jr_016_620b:
    rla
    dec bc
    rla

jr_016_620e:
    inc c
    ld d, $0c
    ld d, $0d
    ld d, $0d
    dec d
    ld c, $15
    rrca
    inc d
    rrca

    db $14, $10, $14, $10, $13, $11, $13, $11, $12, $12, $12, $12, $12, $12, $11, $13
    db $11, $13, $10, $14, $10, $14, $0f, $14, $0f, $15, $0e, $15, $0d, $16, $0d, $16
    db $0c, $16, $0c, $17, $0b, $17, $0b, $17, $0a, $17, $09, $18, $09, $18, $08, $18
    db $08, $18, $07, $18, $06, $19, $06, $19, $05, $19, $05, $19, $04, $19, $03, $19
    db $03, $19, $02, $19, $01, $1a, $01, $1a, $00, $1a, $1a

    nop
    ld a, [de]
    nop
    ld a, [de]
    ld bc, $011a
    ld a, [de]
    ld [bc], a
    ld a, [de]
    inc bc
    ld a, [de]
    inc bc
    ld a, [de]
    inc b
    ld a, [de]
    dec b
    ld a, [de]
    dec b
    add hl, de
    ld b, $19
    rlca
    add hl, de
    rlca
    add hl, de
    ld [$0819], sp
    jr jr_016_628e

    jr jr_016_6291

    jr jr_016_6293

    jr @+$0d

    rla
    dec bc
    rla

jr_016_628e:
    inc c
    rla
    dec c

jr_016_6291:
    ld d, $0d

jr_016_6293:
    ld d, $0e
    ld d, $0e
    dec d
    rrca
    dec d
    rrca

    db $15, $10, $14, $10, $14, $11, $13, $11, $13, $12, $12, $12, $12, $13, $11, $13
    db $11, $14, $10, $14, $10, $15, $0f, $15, $0f, $15, $0e, $16, $0e, $16, $0d, $16
    db $0d, $17, $0c, $17, $0b, $17, $0b, $18, $0a, $18, $0a, $18, $09, $18, $08, $19
    db $08, $19, $07, $19, $07, $19, $06, $19, $05, $1a, $05, $1a, $04, $1a, $03, $1a
    db $03, $1a, $02, $1a, $01, $1a, $01, $1a, $00, $1a, $1b

    nop
    dec de
    nop
    dec de
    ld bc, $021b
    dec de
    ld [bc], a
    dec de
    inc bc
    ld a, [de]
    inc bc
    ld a, [de]
    inc b
    ld a, [de]
    dec b
    ld a, [de]
    dec b
    ld a, [de]
    ld b, $1a
    rlca
    ld a, [de]
    rlca
    add hl, de
    ld [$0919], sp
    add hl, de
    add hl, bc
    add hl, de
    ld a, [bc]
    jr jr_016_6314

    jr jr_016_6316

    jr jr_016_6319

    jr @+$0e

    rla
    dec c
    rla
    ld c, $17

jr_016_6314:
    ld c, $16

jr_016_6316:
    rrca
    ld d, $0f

jr_016_6319:
    dec d
    db $10

    db $15, $10, $15, $11, $14, $11, $14, $12, $13, $12, $13, $13, $12, $13, $12, $14
    db $11, $14, $11, $15, $10, $15, $10, $15, $0f, $16, $0f, $16, $0e, $17, $0e, $17
    db $0d, $17, $0c, $18, $0c, $18, $0b, $18, $0b, $18, $0a, $19, $09, $19, $09, $19
    db $08, $19, $07, $1a, $07, $1a, $06, $1a, $05, $1a, $05, $1a, $04, $1a, $03, $1a
    db $03, $1b, $02, $1b, $02, $1b, $01, $1b, $00, $1b, $1b

    nop
    dec de
    nop
    dec de
    ld bc, $021b
    dec de
    ld [bc], a
    dec de
    inc bc
    dec de
    inc b
    dec de
    inc b
    dec de
    dec b
    dec de
    ld b, $1a
    ld b, $1a
    rlca
    ld a, [de]
    ld [$081a], sp
    ld a, [de]
    add hl, bc
    add hl, de
    ld a, [bc]
    add hl, de
    ld a, [bc]
    add hl, de
    dec bc
    add hl, de
    dec bc
    jr jr_016_6399

    jr @+$0f

    jr @+$0f

    rla
    ld c, $17
    ld c, $17
    rrca
    ld d, $10

jr_016_6399:
    ld d, $10

    db $15, $11, $15, $11, $15, $12, $14, $12, $14, $13, $13, $13, $13, $14, $12, $14
    db $12, $15, $11, $15, $11, $15, $10, $16, $10, $16, $0f, $17, $0e, $17, $0e, $17
    db $0d, $18, $0d, $18, $0c, $18, $0b, $19, $0b, $19, $0a, $19, $0a, $19, $09, $1a
    db $08, $1a, $08, $1a, $07, $1a, $06, $1a, $06, $1b, $05, $1b, $04, $1b, $04, $1b
    db $03, $1b, $02, $1b, $02, $1b, $01, $1b, $00, $1b, $1c

    nop
    inc e
    nop
    inc e
    ld bc, $021c
    inc e
    ld [bc], a
    inc e
    inc bc
    inc e
    inc b
    inc e
    inc b
    dec de
    dec b
    dec de
    ld b, $1b
    ld b, $1b
    rlca
    dec de
    ld [$081b], sp
    ld a, [de]
    add hl, bc
    ld a, [de]
    ld a, [bc]
    ld a, [de]
    ld a, [bc]
    ld a, [de]
    dec bc
    add hl, de
    inc c
    add hl, de
    inc c
    add hl, de
    dec c
    jr @+$10

    jr @+$10

    jr @+$11

    rla
    rrca
    rla
    db $10
    ld d, $10

    db $16, $11, $15, $12, $15, $12, $15, $13, $14, $13, $14, $14, $13, $14, $13, $15
    db $12, $15, $12, $15, $11, $16, $10, $16, $10, $17, $0f, $17, $0f, $18, $0e, $18
    db $0e, $18, $0d, $19, $0c, $19, $0c, $19, $0b, $1a, $0a, $1a, $0a, $1a, $09, $1a
    db $08, $1b, $08, $1b, $07, $1b, $06, $1b, $06, $1b, $05, $1b, $04, $1c, $04, $1c
    db $03, $1c, $02, $1c, $02, $1c, $01, $1c, $00, $1c, $1d

    nop
    dec e
    nop
    dec e
    ld bc, $021d
    inc e
    ld [bc], a
    inc e
    inc bc
    inc e
    inc b
    inc e
    inc b
    inc e
    dec b
    inc e
    ld b, $1c
    rlca
    inc e
    rlca
    dec de
    ld [$091b], sp
    dec de
    add hl, bc
    dec de
    ld a, [bc]
    ld a, [de]
    dec bc
    ld a, [de]
    dec bc
    ld a, [de]
    inc c
    add hl, de
    dec c
    add hl, de
    dec c
    add hl, de
    ld c, $18
    ld c, $18
    rrca
    jr @+$12

    rla
    db $10
    rla
    db $11

    db $16, $11, $16, $12, $16, $13, $15, $13, $15, $14, $14, $14, $14, $15, $13, $15
    db $13, $16, $12, $16, $11, $16, $11, $17, $10, $17, $10, $18, $0f, $18, $0e, $18
    db $0e, $19, $0d, $19, $0d, $19, $0c, $1a, $0b, $1a, $0b, $1a, $0a, $1b, $09, $1b
    db $09, $1b, $08, $1b, $07, $1c, $07, $1c, $06, $1c, $05, $1c, $04, $1c, $04, $1c
    db $03, $1c, $02, $1c, $02, $1d, $01, $1d, $00, $1d, $1d

    nop
    dec e
    nop
    dec e
    ld bc, $021d
    dec e
    ld [bc], a
    dec e
    inc bc
    dec e
    inc b
    dec e
    dec b
    dec e
    dec b
    dec e
    ld b, $1c
    rlca
    inc e
    rlca
    inc e
    ld [$091c], sp
    inc e
    ld a, [bc]
    dec de
    ld a, [bc]
    dec de
    dec bc
    dec de
    inc c
    ld a, [de]
    inc c
    ld a, [de]
    dec c
    ld a, [de]
    ld c, $19
    ld c, $19
    rrca
    add hl, de
    rrca
    jr @+$12

    jr @+$13

    rla
    db $11

    db $17, $12, $17, $12, $16, $13, $16, $13, $15, $14, $15, $15, $14, $15, $13, $16
    db $13, $16, $12, $17, $12, $17, $11, $17, $11, $18, $10, $18, $0f, $19, $0f, $19
    db $0e, $19, $0e, $1a, $0d, $1a, $0c, $1a, $0c, $1b, $0b, $1b, $0a, $1b, $0a, $1c
    db $09, $1c, $08, $1c, $07, $1c, $07, $1c, $06, $1d, $05, $1d, $05, $1d, $04, $1d
    db $03, $1d, $02, $1d, $02, $1d, $01, $1d, $00, $1d, $1e

    nop
    ld e, $00
    ld e, $01
    ld e, $02
    ld e, $02
    ld e, $03
    ld e, $04
    ld e, $05
    dec e
    dec b
    dec e
    ld b, $1d
    rlca
    dec e
    ld [$081d], sp
    inc e
    add hl, bc
    inc e
    ld a, [bc]
    inc e
    ld a, [bc]
    inc e
    dec bc
    dec de
    inc c
    dec de
    dec c
    dec de
    dec c
    ld a, [de]
    ld c, $1a
    rrca
    ld a, [de]
    rrca
    add hl, de
    db $10
    add hl, de
    db $10
    jr @+$13

    jr @+$14

    db $18, $12, $17, $13, $17, $13, $16, $14, $16, $15, $15, $15, $15, $16, $14, $16
    db $13, $17, $13, $17, $12, $18, $12, $18, $11, $18, $10, $19, $10, $19, $0f, $1a
    db $0f, $1a, $0e, $1a, $0d, $1b, $0d, $1b, $0c, $1b, $0b, $1c, $0a, $1c, $0a, $1c
    db $09, $1c, $08, $1d, $08, $1d, $07, $1d, $06, $1d, $05, $1d, $05, $1e, $04, $1e
    db $03, $1e, $02, $1e, $02, $1e, $01, $1e, $00, $1e, $1f

    nop
    rra
    nop
    rra
    ld bc, $021f
    rra
    inc bc
    ld e, $03
    ld e, $04
    ld e, $05
    ld e, $06
    ld e, $06
    ld e, $07
    ld e, $08
    dec e
    add hl, bc
    dec e
    add hl, bc
    dec e
    ld a, [bc]
    dec e
    dec bc
    inc e
    dec bc
    inc e
    inc c
    inc e
    dec c
    dec de
    ld c, $1b
    ld c, $1b
    rrca
    ld a, [de]
    db $10
    ld a, [de]
    db $10
    add hl, de
    ld de, $1119
    add hl, de
    ld [de], a

    db $18, $13, $18, $13, $17, $14, $17, $14, $16, $15, $16, $16, $15, $16, $14, $17
    db $14, $17, $13, $18, $13, $18, $12, $19, $11, $19, $11, $19, $10, $1a, $10, $1a
    db $0f, $1b, $0e, $1b, $0e, $1b, $0d, $1c, $0c, $1c, $0b, $1c, $0b, $1d, $0a, $1d
    db $09, $1d, $09, $1d, $08, $1e, $07, $1e, $06, $1e, $06, $1e, $05, $1e, $04, $1e
    db $03, $1e, $03, $1f, $02, $1f, $01, $1f, $00, $1f, $20

    nop
    rra
    nop
    rra
    ld bc, $021f
    rra
    inc bc
    rra
    inc bc
    rra
    inc b
    rra
    dec b
    rra
    ld b, $1f
    rlca
    rra
    rlca
    ld e, $08
    ld e, $09
    ld e, $0a
    ld e, $0a
    dec e
    dec bc
    dec e
    inc c
    dec e
    inc c
    inc e
    dec c
    inc e
    ld c, $1c
    rrca
    dec de
    rrca
    dec de
    db $10
    dec de
    ld de, $111a
    ld a, [de]
    ld [de], a
    add hl, de
    inc de

    db $19, $13, $18, $14, $18, $14, $17, $15, $17, $16, $16, $16, $16, $17, $15, $17
    db $14, $18, $14, $18, $13, $19, $13, $19, $12, $1a, $11, $1a, $11, $1b, $10, $1b
    db $0f, $1b, $0f, $1c, $0e, $1c, $0d, $1c, $0c, $1d, $0c, $1d, $0b, $1d, $0a, $1e
    db $0a, $1e, $09, $1e, $08, $1e, $07, $1f, $07, $1f, $06, $1f, $05, $1f, $04, $1f
    db $03, $1f, $03, $1f, $02, $1f, $01, $1f, $00, $1f, $20

    nop
    jr nz, jr_016_66e9

jr_016_66e9:
    jr nz, @+$03

    jr nz, jr_016_66ef

    jr nz, @+$05

jr_016_66ef:
    jr nz, jr_016_66f5

    jr nz, jr_016_66f7

    jr nz, jr_016_66fa

jr_016_66f5:
    jr nz, @+$08

jr_016_66f7:
    jr nz, jr_016_6700

    rra

jr_016_66fa:
    rlca
    rra
    ld [$091f], sp
    rra

jr_016_6700:
    ld a, [bc]
    ld e, $0b
    ld e, $0b
    ld e, $0c
    ld e, $0d
    dec e
    ld c, $1d
    ld c, $1c
    rrca
    inc e
    db $10
    inc e
    db $10
    dec de
    ld de, $121b
    ld a, [de]
    ld [de], a
    ld a, [de]
    inc de

    db $19, $14, $19, $14, $18, $15, $18, $16, $17, $16, $17, $17, $16, $17, $16, $18
    db $15, $18, $14, $19, $14, $19, $13, $1a, $12, $1a, $12, $1b, $11, $1b, $10, $1c
    db $10, $1c, $0f, $1c, $0e, $1d, $0e, $1d, $0d, $1e, $0c, $1e, $0b, $1e, $0b, $1e
    db $0a, $1f, $09, $1f, $08, $1f, $07, $1f, $07, $20, $06, $20, $05, $20, $04, $20
    db $04, $20, $03, $20, $02, $20, $01, $20, $00, $20, $21

    nop
    ld hl, $2100
    ld bc, $0221
    ld hl, $2103
    inc b
    ld hl, $2104
    dec b
    ld hl, $2006
    rlca
    jr nz, jr_016_6783

    jr nz, jr_016_6785

    jr nz, @+$0b

    rra
    ld a, [bc]
    rra
    dec bc

jr_016_6783:
    rra
    inc c

jr_016_6785:
    rra
    inc c
    ld e, $0d
    ld e, $0e
    ld e, $0f
    dec e
    rrca
    dec e
    db $10
    inc e
    ld de, $121c
    inc e
    ld [de], a
    dec de
    inc de
    dec de
    inc d

    db $1a, $14, $1a, $15, $19, $16, $18, $16, $18, $17, $17, $17, $17, $18, $16, $18
    db $16, $19, $15, $1a, $14, $1a, $14, $1b, $13, $1b, $12, $1c, $12, $1c, $11, $1c
    db $10, $1d, $0f, $1d, $0f, $1e, $0e, $1e, $0d, $1e, $0c, $1f, $0c, $1f, $0b, $1f
    db $0a, $1f, $09, $20, $08, $20, $08, $20, $07, $20, $06, $21, $05, $21, $04, $21
    db $04, $21, $03, $21, $02, $21, $01, $21, $00, $21, $22

    nop
    ld [hl+], a
    nop
    ld [hl+], a
    ld bc, $0222
    ld [hl+], a
    inc bc
    ld [hl+], a
    inc b
    ld [hl+], a
    dec b
    ld [hl+], a
    dec b
    ld hl, $2106
    rlca
    ld hl, $2108
    add hl, bc
    ld hl, $200a
    ld a, [bc]
    jr nz, @+$0d

    jr nz, jr_016_6811

    rra
    dec c
    rra
    ld c, $1f
    ld c, $1e
    rrca
    ld e, $10
    ld e, $11

jr_016_6811:
    dec e
    ld de, $121d
    inc e
    inc de
    inc e
    inc de
    dec de
    inc d

    db $1b, $15, $1a, $15, $1a, $16, $19, $17, $19, $17, $18, $18, $17, $19, $17, $19
    db $16, $1a, $15, $1a, $15, $1b, $14, $1b, $13, $1c, $13, $1c, $12, $1d, $11, $1d
    db $11, $1e, $10, $1e, $0f, $1e, $0e, $1f, $0e, $1f, $0d, $1f, $0c, $20, $0b, $20
    db $0a, $20, $0a, $21, $09, $21, $08, $21, $07, $21, $06, $21, $05, $22, $05, $22
    db $04, $22, $03, $22, $02, $22, $01, $22, $00, $22, $23

    nop
    inc hl
    nop
    inc hl
    ld bc, $0223
    inc hl
    inc bc
    inc hl
    inc b
    inc hl
    dec b
    inc hl
    ld b, $22
    ld b, $22
    rlca
    ld [hl+], a
    ld [$0922], sp
    ld [hl+], a
    ld a, [bc]
    ld hl, $210b
    dec bc
    ld hl, $200c
    dec c
    jr nz, jr_016_6897

    jr nz, jr_016_689a

    rra
    rrca
    rra
    db $10
    ld e, $11
    ld e, $12
    ld e, $13
    dec e
    inc de

jr_016_6897:
    dec e
    inc d
    inc e

jr_016_689a:
    dec d

    db $1c, $15, $1b, $16, $1a, $17, $1a, $17, $19, $18, $19, $19, $18, $19, $17, $1a
    db $17, $1a, $16, $1b, $15, $1c, $15, $1c, $14, $1d, $13, $1d, $13, $1e, $12, $1e
    db $11, $1e, $10, $1f, $0f, $1f, $0f, $20, $0e, $20, $0d, $20, $0c, $21, $0b, $21
    db $0b, $21, $0a, $22, $09, $22, $08, $22, $07, $22, $06, $22, $06, $23, $05, $23
    db $04, $23, $03, $23, $02, $23, $01, $23, $00, $23, $24

    nop
    inc h
    nop
    inc h
    ld bc, $0224
    inc h
    inc bc
    inc h
    inc b
    inc h
    dec b
    inc h
    ld b, $23
    rlca
    inc hl
    ld [$0823], sp
    inc hl
    add hl, bc
    ld [hl+], a
    ld a, [bc]
    ld [hl+], a
    dec bc
    ld [hl+], a
    inc c
    ld [hl+], a
    dec c
    ld hl, $210d
    ld c, $21
    rrca
    jr nz, @+$12

    jr nz, @+$13

    rra
    ld [de], a
    rra
    ld [de], a
    ld e, $13
    ld e, $14
    dec e
    dec d
    dec e
    dec d

    db $1c, $16, $1c, $17, $1b, $17, $1b, $18, $1a, $19, $19, $19, $19, $1a, $18, $1b
    db $17, $1b, $17, $1c, $16, $1c, $15, $1d, $15, $1d, $14, $1e, $13, $1e, $12, $1f
    db $12, $1f, $11, $20, $10, $20, $0f, $21, $0e, $21, $0d, $21, $0d, $22, $0c, $22
    db $0b, $22, $0a, $22, $09, $23, $08, $23, $08, $23, $07, $23, $06, $24, $05, $24
    db $04, $24, $03, $24, $02, $24, $01, $24, $00, $24, $25

    nop
    dec h
    nop
    dec h
    ld bc, $0225
    dec h
    inc bc
    dec h
    inc b
    dec h
    dec b
    dec h
    ld b, $24
    rlca
    inc h
    ld [$0924], sp
    inc h
    ld a, [bc]
    inc h
    ld a, [bc]
    inc hl
    dec bc
    inc hl
    inc c
    inc hl
    dec c
    ld [hl+], a
    ld c, $22
    rrca
    ld [hl+], a
    db $10
    ld hl, $2110
    ld de, $1220
    jr nz, @+$15

    rra
    inc d
    rra
    inc d
    ld e, $15
    ld e, $16

    db $1d, $17, $1d, $17, $1c, $18, $1b, $19, $1b, $19, $1a, $1a, $19, $1b, $19, $1b
    db $18, $1c, $17, $1d, $17, $1d, $16, $1e, $15, $1e, $14, $1f, $14, $1f, $13, $20
    db $12, $20, $11, $21, $10, $21, $10, $22, $0f, $22, $0e, $22, $0d, $23, $0c, $23
    db $0b, $23, $0a, $24, $0a, $24, $09, $24, $08, $24, $07, $24, $06, $25, $05, $25
    db $04, $25, $03, $25, $02, $25, $01, $25, $00, $25, $26

    nop
    ld h, $00
    ld h, $01
    ld h, $02
    ld h, $03
    ld h, $04
    ld h, $05
    ld h, $06
    ld h, $07
    dec h
    ld [$0925], sp
    dec h
    ld a, [bc]
    dec h
    dec bc
    inc h
    inc c
    inc h
    dec c
    inc h
    dec c
    inc hl
    ld c, $23
    rrca
    inc hl
    db $10
    ld [hl+], a
    ld de, $1222
    ld hl, $2113
    inc de
    jr nz, @+$16

    jr nz, @+$17

    rra
    ld d, $1f
    rla

    db $1e, $17, $1d, $18, $1d, $19, $1c, $1a, $1c, $1a, $1b, $1b, $1a, $1c, $1a, $1c
    db $19, $1d, $18, $1d, $17, $1e, $17, $1f, $16, $1f, $15, $20, $14, $20, $13, $21
    db $13, $21, $12, $22, $11, $22, $10, $23, $0f, $23, $0e, $23, $0d, $24, $0d, $24
    db $0c, $24, $0b, $25, $0a, $25, $09, $25, $08, $25, $07, $26, $06, $26, $05, $26
    db $04, $26, $03, $26, $02, $26, $01, $26, $00, $26, $28

    nop
    daa
    nop
    daa
    ld bc, $0227
    daa
    inc bc
    daa
    inc b
    daa
    dec b
    daa
    ld b, $27
    rlca
    daa
    ld [$0926], sp
    ld h, $0a
    ld h, $0b
    dec h
    inc c
    dec h
    dec c
    dec h
    ld c, $24
    rrca
    inc h
    db $10
    inc h
    ld de, $1123
    inc hl
    ld [de], a
    ld [hl+], a
    inc de
    ld [hl+], a
    inc d
    ld hl, $2115
    ld d, $20
    rla
    jr nz, @+$19

    db $1f, $18, $1e, $19, $1e, $1a, $1d, $1a, $1c, $1b, $1c, $1c, $1b, $1c, $1a, $1d
    db $1a, $1e, $19, $1e, $18, $1f, $17, $20, $17, $20, $16, $21, $15, $21, $14, $22
    db $13, $22, $12, $23, $11, $23, $11, $24, $10, $24, $0f, $24, $0e, $25, $0d, $25
    db $0c, $25, $0b, $26, $0a, $26, $09, $26, $08, $27, $07, $27, $06, $27, $05, $27
    db $04, $27, $03, $27, $02, $27, $01, $27, $00, $27, $29

    nop
    add hl, hl
    ld bc, $0229
    add hl, hl
    inc bc
    add hl, hl
    inc b
    jr z, @+$07

    jr z, jr_016_6af9

    jr z, jr_016_6afc

    jr z, jr_016_6aff

    jr z, @+$0b

jr_016_6af9:
    jr z, jr_016_6b05

    daa

jr_016_6afc:
    dec bc
    daa
    dec bc

jr_016_6aff:
    daa

Jump_016_6b00:
    inc c
    ld h, $0d
    ld h, $0e

jr_016_6b05:
    ld h, $0f
    dec h
    db $10
    dec h
    ld de, $1224
    inc h
    inc de
    inc hl
    inc d
    inc hl
    dec d
    ld [hl+], a
    ld d, $22
    ld d, $21
    rla
    db $21
    db $18

    db $20, $19, $1f, $1a, $1f, $1a, $1e, $1b, $1d, $1c, $1d, $1d, $1c, $1d, $1b, $1e
    db $1a, $1f, $1a, $1f, $19, $20, $18, $21, $17, $21, $16, $22, $16, $22, $15, $23
    db $14, $23, $13, $24, $12, $24, $11, $25, $10, $25, $0f, $26, $0e, $26, $0d, $26
    db $0c, $27, $0b, $27, $0b, $27, $0a, $28, $09, $28, $08, $28, $07, $28, $06, $28
    db $05, $28, $04, $29, $03, $29, $02, $29, $01, $29, $2a

    nop
    ld a, [hl+]
    ld bc, $022a
    ld a, [hl+]
    inc bc
    ld a, [hl+]
    inc b
    ld a, [hl+]
    dec b
    ld a, [hl+]
    ld b, $2a
    rlca
    add hl, hl
    ld [$0929], sp
    add hl, hl
    ld a, [bc]
    add hl, hl
    dec bc
    jr z, jr_016_6b8b

    jr z, jr_016_6b8e

    jr z, jr_016_6b91

    daa
    rrca
    daa
    db $10
    daa
    ld de, $1226

jr_016_6b8b:
    ld h, $13
    dec h

jr_016_6b8e:
    inc d
    dec h
    dec d

jr_016_6b91:
    inc h
    dec d
    inc h
    ld d, $23
    rla
    ld [hl+], a
    jr @+$24

    add hl, de

    db $21, $1a, $20, $1b, $20, $1b, $1f, $1c, $1e, $1d, $1e, $1e, $1d, $1e, $1c, $1f
    db $1b, $20, $1b, $20, $1a, $21, $19, $22, $18, $22, $17, $23, $16, $24, $15, $24
    db $15, $25, $14, $25, $13, $26, $12, $26, $11, $27, $10, $27, $0f, $27, $0e, $28
    db $0d, $28, $0c, $28, $0b, $29, $0a, $29, $09, $29, $08, $29, $07, $2a, $06, $2a
    db $05, $2a, $04, $2a, $03, $2a, $02, $2a, $01, $2a, $2c

    nop
    inc l
    ld bc, $022c
    inc l
    inc bc
    dec hl
    inc b
    dec hl
    dec b
    dec hl
    ld b, $2b
    rlca
    dec hl
    ld [$092b], sp
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    dec bc
    ld a, [hl+]
    inc c
    add hl, hl
    dec c
    add hl, hl
    ld c, $29
    rrca
    jr z, @+$12

    jr z, jr_016_6c1a

    daa
    ld [de], a
    daa
    inc de
    ld h, $14
    ld h, $15
    dec h
    ld d, $25
    rla
    inc h
    jr @+$26

    add hl, de
    inc hl

jr_016_6c1a:
    ld a, [de]

    db $22, $1b, $22, $1c, $21, $1c, $20, $1d, $1f, $1e, $1f, $1f, $1e, $1f, $1d, $20
    db $1c, $21, $1c, $22, $1b, $22, $1a, $23, $19, $24, $18, $24, $17, $25, $16, $25
    db $15, $26, $14, $26, $13, $27, $12, $27, $11, $28, $10, $28, $0f, $29, $0e, $29
    db $0d, $29, $0c, $2a, $0b, $2a, $0a, $2a, $09, $2b, $08, $2b, $07, $2b, $06, $2b
    db $05, $2b, $04, $2b, $03, $2c, $02, $2c, $01, $2c, $2d

    nop
    dec l
    ld bc, $022d
    dec l
    inc bc
    dec l
    inc b
    dec l
    dec b
    dec l
    ld b, $2d
    rlca
    inc l
    ld [$0a2c], sp
    inc l
    dec bc
    inc l
    inc c
    dec hl
    dec c
    dec hl
    ld c, $2b
    rrca
    ld a, [hl+]
    db $10
    ld a, [hl+]
    ld de, $1229
    add hl, hl
    inc de
    jr z, @+$16

    jr z, @+$17

    daa
    ld d, $27
    rla
    ld h, $18
    ld h, $19
    dec h
    ld a, [de]
    inc h
    dec de

    db $24, $1c, $23, $1d, $22, $1d, $21, $1e, $21, $1f, $20, $20, $1f, $21, $1e, $21
    db $1d, $22, $1d, $23, $1c, $24, $1b, $24, $1a, $25, $19, $26, $18, $26, $17, $27
    db $16, $27, $15, $28, $14, $28, $13, $29, $12, $29, $11, $2a, $10, $2a, $0f, $2b
    db $0e, $2b, $0d, $2b, $0c, $2c, $0b, $2c, $0a, $2c, $08, $2c, $07, $2d, $06, $2d
    db $05, $2d, $04, $2d, $03, $2d, $02, $2d, $01, $2d, $2f

    nop
    cpl
    ld bc, $022f
    cpl
    inc bc
    cpl
    inc b
    cpl
    dec b
    ld l, $06
    ld l, $08
    ld l, $09
    ld l, $0a
    dec l
    dec bc
    dec l
    inc c
    dec l
    dec c
    dec l
    ld c, $2c
    rrca
    inc l
    ld de, $122b
    dec hl
    inc de
    ld a, [hl+]
    inc d
    ld a, [hl+]
    dec d
    add hl, hl
    ld d, $29
    rla
    jr z, @+$1a

    jr z, @+$1b

    daa
    ld a, [de]
    ld h, $1b
    ld h, $1c

    db $25, $1d, $24, $1e, $23, $1e, $23, $1f, $22, $20, $21, $21, $20, $22, $1f, $23
    db $1e, $23, $1e, $24, $1d, $25, $1c, $26, $1b, $26, $1a, $27, $19, $28, $18, $28
    db $17, $29, $16, $29, $15, $2a, $14, $2a, $13, $2b, $12, $2b, $11, $2c, $0f, $2c
    db $0e, $2d, $0d, $2d, $0c, $2d, $0b, $2d, $0a, $2e, $09, $2e, $08, $2e, $06, $2e
    db $05, $2f, $04, $2f, $03, $2f, $02, $2f, $01, $2f, $31

    nop
    ld sp, $3101
    ld [bc], a
    ld sp, $3003
    inc b
    jr nc, jr_016_6d77

    jr nc, jr_016_6d7a

    jr nc, jr_016_6d7d

    jr nc, jr_016_6d80

jr_016_6d77:
    jr nc, jr_016_6d83

    cpl

jr_016_6d7a:
    dec bc
    cpl
    dec c

jr_016_6d7d:
    cpl
    ld c, $2e

jr_016_6d80:
    rrca
    ld l, $10

jr_016_6d83:
    dec l
    ld de, $122d
    dec l
    inc de
    inc l
    dec d
    dec hl
    ld d, $2b
    rla
    ld a, [hl+]
    jr @+$2c

    add hl, de
    add hl, hl
    ld a, [de]
    jr z, @+$1d

    jr z, @+$1e

    daa
    dec e

    db $26, $1e, $26, $1f, $25, $20, $24, $21, $23, $21, $22, $22, $21, $23, $21, $24
    db $20, $25, $1f, $26, $1e, $26, $1d, $27, $1c, $28, $1b, $28, $1a, $29, $19, $2a
    db $18, $2a, $17, $2b, $16, $2b, $15, $2c, $13, $2d, $12, $2d, $11, $2d, $10, $2e
    db $0f, $2e, $0e, $2f, $0d, $2f, $0b, $2f, $0a, $30, $09, $30, $08, $30, $07, $30
    db $06, $30, $04, $30, $03, $31, $02, $31, $01, $31, $33

    nop
    inc sp
    ld bc, $0233
    inc sp
    inc bc
    ld [hl-], a
    dec b
    ld [hl-], a
    ld b, $32
    rlca
    ld [hl-], a
    ld [$0932], sp
    ld sp, $310b
    inc c
    ld sp, $300d
    ld c, $30

Jump_016_6e00:
    db $10
    jr nc, jr_016_6e14

    cpl
    ld [de], a
    cpl
    inc de
    ld l, $14
    ld l, $15
    dec l
    rla
    dec l
    jr @+$2e

    add hl, de
    dec hl
    ld a, [de]
    dec hl

jr_016_6e14:
    dec de
    ld a, [hl+]
    inc e
    add hl, hl
    dec e
    add hl, hl
    db $1e

    db $28, $1f, $27, $20, $26, $21, $25, $22, $25, $23, $24, $24, $23, $25, $22, $25
    db $21, $26, $20, $27, $1f, $28, $1e, $29, $1d, $29, $1c, $2a, $1b, $2b, $1a, $2b
    db $19, $2c, $18, $2d, $17, $2d, $15, $2e, $14, $2e, $13, $2f, $12, $2f, $11, $30
    db $10, $30, $0e, $30, $0d, $31, $0c, $31, $0b, $31, $09, $32, $08, $32, $07, $32
    db $06, $32, $05, $32, $03, $33, $02, $33, $01, $33, $35

    nop
    dec [hl]
    ld bc, $0235
    dec [hl]
    inc bc
    dec [hl]
    dec b
    inc [hl]
    ld b, $34
    rlca
    inc [hl]
    add hl, bc
    inc [hl]
    ld a, [bc]
    inc [hl]
    dec bc
    inc sp
    inc c
    inc sp
    ld c, $33
    rrca
    ld [hl-], a
    db $10
    ld [hl-], a
    ld de, $1331
    ld sp, $3014
    dec d
    jr nc, @+$18

    cpl
    rla
    cpl
    add hl, de
    ld l, $1a
    dec l
    dec de
    dec l
    inc e
    inc l
    dec e
    dec hl
    ld e, $2a
    rra

    db $2a, $20, $29, $21, $28, $22, $27, $23, $26, $24, $25, $25, $24, $26, $23, $27
    db $22, $28, $21, $29, $20, $2a, $1f, $2a, $1e, $2b, $1d, $2c, $1c, $2d, $1b, $2d
    db $1a, $2e, $19, $2f, $17, $2f, $16, $30, $15, $30, $14, $31, $13, $31, $11, $32
    db $10, $32, $0f, $33, $0e, $33, $0c, $33, $0b, $34, $0a, $34, $09, $34, $07, $34
    db $06, $34, $05, $35, $03, $35, $02, $35, $01, $35, $37

    nop
    scf
    ld bc, $0237
    scf
    inc b
    scf
    dec b
    scf
    ld b, $37
    ld [$0936], sp
    ld [hl], $0a
    ld [hl], $0c
    dec [hl]
    dec c
    dec [hl]
    ld c, $35
    db $10
    inc [hl]
    ld de, $1234
    inc sp
    inc d
    inc sp
    dec d
    ld [hl-], a
    ld d, $32
    rla
    ld sp, $3119
    ld a, [de]
    jr nc, @+$1d

    cpl
    inc e
    cpl
    dec e
    ld l, $1e
    dec l
    jr nz, @+$2e

    db $21

    db $2b, $22, $2b, $23, $2a, $24, $29, $25, $28, $26, $27, $27, $26, $28, $25, $29
    db $24, $2a, $23, $2b, $22, $2b, $21, $2c, $20, $2d, $1e, $2e, $1d, $2f, $1c, $2f
    db $1b, $30, $1a, $31, $19, $31, $17, $32, $16, $32, $15, $33, $14, $33, $12, $34
    db $11, $34, $10, $35, $0e, $35, $0d, $35, $0c, $36, $0a, $36, $09, $36, $08, $37
    db $06, $37, $05, $37, $04, $37, $02, $37, $01, $37, $3a

    nop
    ld a, [hl-]
    ld bc, $023a
    ld a, [hl-]
    inc b
    add hl, sp
    dec b
    add hl, sp
    rlca
    add hl, sp
    ld [$0939], sp
    add hl, sp
    dec bc
    jr c, jr_016_6f85

    jr c, jr_016_6f89

    jr c, jr_016_6f8c

    scf
    db $10
    scf
    ld [de], a
    ld [hl], $13
    ld [hl], $14

jr_016_6f85:
    dec [hl]
    ld d, $35
    rla

jr_016_6f89:
    inc [hl]
    jr @+$35

jr_016_6f8c:
    ld a, [de]
    inc sp
    dec de
    ld [hl-], a
    inc e
    ld sp, $311d
    rra
    jr nc, @+$22

    cpl
    ld hl, $222e

    db $2d, $23, $2c, $24, $2c, $26, $2b, $27, $2a, $28, $29, $29, $28, $2a, $27, $2b
    db $26, $2c, $24, $2c, $23, $2d, $22, $2e, $21, $2f, $20, $30, $1f, $31, $1d, $31
    db $1c, $32, $1b, $33, $1a, $33, $18, $34, $17, $35, $16, $35, $14, $36, $13, $36
    db $12, $37, $10, $37, $0f, $38, $0e, $38, $0c, $38, $0b, $39, $09, $39, $08, $39
    db $07, $39, $05, $39, $04, $3a, $02, $3a, $01, $3a, $3c

    nop
    inc a
    ld bc, $023c
    inc a
    inc b
    inc a
    dec b
    inc a
    rlca
    inc a
    ld [$0a3c], sp
    dec sp
    dec bc
    dec sp
    dec c
    dec sp
    ld c, $3a
    db $10
    ld a, [hl-]
    ld de, $1339
    add hl, sp
    inc d
    jr c, @+$17

    jr c, @+$19

    scf
    jr @+$39

    ld a, [de]
    ld [hl], $1b
    dec [hl]
    inc e
    dec [hl]
    ld e, $34
    rra
    inc sp
    jr nz, @+$34

    ld hl, $2331
    jr nc, @+$26

    db $30, $25, $2f, $26, $2e, $27, $2d, $28, $2c, $2a, $2b, $2b, $2a, $2c, $28, $2d
    db $27, $2e, $26, $2f, $25, $30, $24, $30, $23, $31, $21, $32, $20, $33, $1f, $34
    db $1e, $35, $1c, $35, $1b, $36, $1a, $37, $18, $37, $17, $38, $15, $38, $14, $39
    db $13, $39, $11, $3a, $10, $3a, $0e, $3b, $0d, $3b, $0b, $3b, $0a, $3c, $08, $3c
    db $07, $3c, $05, $3c, $04, $3c, $02, $3c, $01, $3c, $40

    nop
    ccf
    ld bc, $033f
    ccf
    inc b
    ccf
    ld b, $3f
    rlca
    ccf
    add hl, bc
    ccf
    ld a, [bc]
    ld a, $0c
    ld a, $0e
    ld a, $0f
    dec a
    ld de, $123d
    inc a
    inc d
    inc a
    dec d
    dec sp
    rla
    dec sp
    jr @+$3c

    add hl, de
    add hl, sp
    dec de
    add hl, sp
    inc e
    jr c, @+$20

    scf
    rra
    ld [hl], $20
    ld [hl], $22
    dec [hl]
    inc hl
    inc [hl]
    inc h
    inc sp
    db $26

    db $32, $27, $31, $28, $30, $29, $2f, $2a, $2e, $2c, $2d, $2d, $2c, $2e, $2a, $2f
    db $29, $30, $28, $31, $27, $32, $26, $33, $24, $34, $23, $35, $22, $36, $20, $36
    db $1f, $37, $1e, $38, $1c, $39, $1b, $39, $19, $3a, $18, $3b, $17, $3b, $15, $3c
    db $14, $3c, $12, $3d, $11, $3d, $0f, $3e, $0e, $3e, $0c, $3e, $0a, $3f, $09, $3f
    db $07, $3f, $06, $3f, $04, $3f, $03, $3f, $01, $3f, $43

    nop
    ld b, e
    ld bc, $0343
    ld b, e
    inc b
    ld b, e
    ld b, $42
    ld [$0942], sp
    ld b, d
    dec bc
    ld b, d
    dec c
    ld b, c
    ld c, $41
    db $10
    ld b, b
    ld de, $1340
    ccf
    dec d
    ccf
    ld d, $3e
    jr @+$40

    add hl, de
    dec a
    dec de
    inc a
    inc e
    inc a
    ld e, $3b
    rra
    ld a, [hl-]
    ld hl, $2239
    jr c, @+$26

    jr c, @+$27

    scf
    ld h, $36
    db $28

    db $35, $29, $34, $2a, $33, $2c, $31, $2d, $30, $2e, $2f, $2f, $2e, $30, $2d, $31
    db $2c, $33, $2a, $34, $29, $35, $28, $36, $26, $37, $25, $38, $24, $38, $22, $39
    db $21, $3a, $1f, $3b, $1e, $3c, $1c, $3c, $1b, $3d, $19, $3e, $18, $3e, $16, $3f
    db $15, $3f, $13, $40, $11, $40, $10, $41, $0e, $41, $0d, $42, $0b, $42, $09, $42
    db $08, $42, $06, $43, $04, $43, $03, $43, $01, $43, $47

    nop
    ld b, a
    ld bc, $0347
    ld b, [hl]
    dec b
    ld b, [hl]
    ld b, $46
    ld [$0a46], sp
    ld b, [hl]
    inc c
    ld b, l
    dec c
    ld b, l
    rrca
    ld b, h
    ld de, $1244
    ld b, h
    inc d
    ld b, e
    ld d, $42
    rla
    ld b, d
    add hl, de
    ld b, c
    dec de
    ld b, c
    inc e
    ld b, b
    ld e, $3f
    rra
    ld a, $21
    dec a
    inc hl
    inc a
    inc h
    inc a
    ld h, $3b
    daa
    ld a, [hl-]
    jr z, @+$3b

    ld a, [hl+]

    db $38, $2b, $36, $2d, $35, $2e, $34, $2f, $33, $31, $32, $32, $31, $33, $2f, $34
    db $2e, $35, $2d, $36, $2b, $38, $2a, $39, $28, $3a, $27, $3b, $26, $3c, $24, $3c
    db $23, $3d, $21, $3e, $1f, $3f, $1e, $40, $1c, $41, $1b, $41, $19, $42, $17, $42
    db $16, $43, $14, $44, $12, $44, $11, $44, $0f, $45, $0d, $45, $0c, $46, $0a, $46
    db $08, $46, $06, $46, $05, $46, $03, $47, $01, $47, $4b

    nop
    ld c, e
    ld bc, $034b
    ld c, e
    dec b
    ld c, d
    rlca
    ld c, d
    add hl, bc
    ld c, d
    dec bc
    ld c, d
    inc c
    ld c, c
    ld c, $49
    db $10
    ld c, c
    ld [de], a
    ld c, b
    inc d
    ld c, b
    dec d
    ld b, a
    rla
    ld b, [hl]
    add hl, de
    ld b, [hl]
    dec de
    ld b, l
    inc e
    ld b, h
    ld e, $44
    jr nz, @+$45

    ld hl, $2342
    ld b, c
    dec h
    ld b, b
    ld h, $3f
    jr z, @+$40

    add hl, hl
    dec a
    dec hl
    inc a
    inc l

    db $3b, $2e, $3a, $2f, $39, $31, $37, $32, $36, $33, $35, $35, $33, $36, $32, $37
    db $31, $39, $2f, $3a, $2e, $3b, $2c, $3c, $2b, $3d, $29, $3e, $28, $3f, $26, $40
    db $25, $41, $23, $42, $21, $43, $20, $44, $1e, $44, $1c, $45, $1b, $46, $19, $46
    db $17, $47, $15, $48, $14, $48, $12, $49, $10, $49, $0e, $49, $0c, $4a, $0b, $4a
    db $09, $4a, $07, $4a, $05, $4b, $03, $4b, $01, $4b, $50

    nop
    ld c, a
    ld bc, $034f
    ld c, a
    dec b
    ld c, a
    rlca
    ld c, a
    add hl, bc
    ld c, a
    dec bc
    ld c, [hl]
    dec c
    ld c, [hl]
    rrca
    ld c, [hl]
    ld de, $134d
    ld c, l
    dec d
    ld c, h
    rla
    ld c, e
    add hl, de
    ld c, e
    ld a, [de]
    ld c, d
    inc e
    ld c, c
    ld e, $49
    jr nz, @+$4a

    ld [hl+], a
    ld b, a
    inc hl
    ld b, [hl]
    dec h
    ld b, l
    daa
    ld b, h
    add hl, hl
    ld b, e
    ld a, [hl+]
    ld b, d
    inc l
    ld b, c
    ld l, $40
    cpl

    db $3f, $31, $3d, $32, $3c, $34, $3b, $35, $39, $37, $38, $38, $37, $39, $35, $3b
    db $34, $3c, $32, $3d, $31, $3f, $2f, $40, $2e, $41, $2c, $42, $2a, $43, $29, $44
    db $27, $45, $25, $46, $23, $47, $22, $48, $20, $49, $1e, $49, $1c, $4a, $1a, $4b
    db $19, $4b, $17, $4c, $15, $4d, $13, $4d, $11, $4e, $0f, $4e, $0d, $4e, $0b, $4f
    db $09, $4f, $07, $4f, $05, $4f, $03, $4f, $01, $4f, $55

    nop
    ld d, l
    ld [bc], a
    ld d, l
    inc b
    ld d, l
    ld b, $54
    ld [$0a54], sp
    ld d, h
    inc c
    ld d, h
    ld c, $53
    db $10
    ld d, e
    ld [de], a
    ld d, d
    inc d
    ld d, d
    ld d, $51
    jr @+$53

    ld a, [de]
    ld d, b
    inc e
    ld c, a
    ld e, $4e
    jr nz, @+$50

    ld [hl+], a
    ld c, l
    inc h
    ld c, h
    ld h, $4b
    jr z, @+$4c

    ld a, [hl+]
    ld c, c
    dec hl
    ld c, b
    dec l
    ld b, [hl]
    cpl
    ld b, l
    ld sp, $3244

    db $43, $34, $41, $36, $40, $37, $3f, $39, $3d, $3a, $3c, $3c, $3a, $3d, $39, $3f
    db $37, $40, $36, $41, $34, $43, $32, $44, $31, $45, $2f, $46, $2d, $48, $2b, $49
    db $2a, $4a, $28, $4b, $26, $4c, $24, $4d, $22, $4e, $20, $4e, $1e, $4f, $1c, $50
    db $1a, $51, $18, $51, $16, $52, $14, $52, $12, $53, $10, $53, $0e, $54, $0c, $54
    db $0a, $54, $08, $54, $06, $55, $04, $55, $02, $55, $5b

    nop
    ld e, e
    ld [bc], a
    ld e, e
    inc b
    ld e, e
    ld b, $5a
    ld [$0b5a], sp
    ld e, d
    dec c
    ld e, d
    rrca
    ld e, c
    ld de, $1459
    ld e, b
    ld d, $58
    jr @+$59

    ld a, [de]
    ld d, [hl]
    inc e
    ld d, [hl]
    ld e, $55
    jr nz, @+$56

    ld [hl+], a
    ld d, e
    dec h
    ld d, d
    daa
    ld d, c
    add hl, hl
    ld d, b
    dec hl
    ld c, a
    dec l
    ld c, [hl]
    cpl
    ld c, l
    jr nc, @+$4e

    ld [hl-], a
    ld c, d
    inc [hl]
    ld c, c
    db $36

    db $48, $38, $46, $3a, $45, $3b, $43, $3d, $42, $3f, $40, $40, $3f, $42, $3d, $43
    db $3b, $45, $3a, $46, $38, $48, $36, $49, $34, $4a, $32, $4c, $30, $4d, $2f, $4e
    db $2d, $4f, $2b, $50, $29, $51, $27, $52, $25, $53, $22, $54, $20, $55, $1e, $56
    db $1c, $56, $1a, $57, $18, $58, $16, $58, $14, $59, $11, $59, $0f, $5a, $0d, $5a
    db $0b, $5a, $08, $5a, $06, $5b, $04, $5b, $02, $5b, $62

    nop
    ld h, d
    ld [bc], a
    ld h, d
    inc b
    ld h, d
    rlca
    ld h, c
    add hl, bc
    ld h, c
    inc c
    ld h, c
    ld c, $61
    db $10
    ld h, b
    inc de
    ld h, b
    dec d
    ld e, a
    rla
    ld e, [hl]
    ld a, [de]
    ld e, [hl]
    inc e
    ld e, l
    ld e, $5c
    ld hl, $235b
    ld e, d
    dec h
    ld e, d
    daa
    ld e, c
    ld a, [hl+]
    ld d, a
    inc l
    ld d, [hl]
    ld l, $55
    jr nc, jr_016_7466

    ld [hl-], a
    ld d, e
    inc [hl]
    ld d, c
    ld [hl], $50
    jr c, jr_016_7469

    ld a, [hl-]

    db $4d, $3c, $4c, $3e, $4a, $40, $48, $42, $47, $43, $45, $45, $43, $47, $42, $48
    db $40, $4a, $3e, $4c, $3c, $4d, $3a, $4f, $38, $50, $36, $51, $34, $53, $32, $54
    db $30, $55, $2e, $56, $2c, $57, $2a, $59, $27, $5a, $25, $5a, $23, $5b, $21, $5c
    db $1e, $5d, $1c, $5e, $1a, $5e, $17, $5f, $15, $60, $13, $60, $10, $61, $0e, $61
    db $0c, $61, $09, $61, $07, $62, $04, $62, $02, $62, $6a

jr_016_7466:
    nop
    ld l, d
    ld [bc], a

jr_016_7469:
    ld l, d
    dec b
    ld l, d
    rlca
    ld l, d
    ld a, [bc]
    ld l, c
    dec c
    ld l, c
    rrca
    ld l, c
    ld [de], a
    ld l, b
    inc d
    ld l, b
    rla
    ld h, a
    add hl, de
    ld h, [hl]
    inc e
    ld h, [hl]
    ld e, $65
    ld hl, $2364
    ld h, e
    ld h, $62
    jr z, jr_016_74e9

    dec hl
    ld h, b
    dec l
    ld e, a
    cpl
    ld e, [hl]
    ld [hl-], a
    ld e, h
    inc [hl]
    ld e, e
    ld [hl], $5a
    add hl, sp
    ld e, b
    dec sp
    ld d, a
    dec a
    ld d, l
    ccf

    db $54, $41, $52, $43, $50, $45, $4f, $47, $4d, $49, $4b, $4b, $49, $4d, $47, $4f
    db $45, $50, $43, $52, $41, $54, $3f, $55, $3d, $57, $3b, $58, $39, $5a, $36, $5b
    db $34, $5c, $32, $5e, $2f, $5f, $2d, $60, $2b, $61, $28, $62, $26, $63, $23, $64
    db $21, $65, $1e, $66, $1c, $66, $19, $67, $17, $68, $14, $68, $12, $69, $0f, $69
    db $0d, $69, $0a, $6a, $07, $6a, $05, $6a, $02, $6a, $74

    nop
    ld [hl], h
    ld [bc], a

jr_016_74e9:
    ld [hl], h
    dec b
    ld [hl], h
    ld [$0b73], sp
    ld [hl], e
    ld c, $73
    ld de, $1372
    ld [hl], d
    ld d, $71
    add hl, de
    ld [hl], b
    inc e
    ld [hl], b
    rra
    ld l, a
    ld hl, $246e
    ld l, l
    daa
    ld l, h
    add hl, hl
    ld l, e
    inc l
    ld l, d
    cpl
    ld l, c
    ld sp, $3467
    ld h, [hl]
    ld [hl], $65
    add hl, sp
    ld h, e
    dec sp
    ld h, d
    ld a, $60
    ld b, b
    ld e, a
    ld b, e
    ld e, l
    ld b, l

    db $5b, $47, $59, $49, $58, $4c, $56, $4e, $54, $50, $52, $52, $50, $54, $4e, $56
    db $4c, $58, $49, $59, $47, $5b, $45, $5d, $43, $5f, $40, $60, $3e, $62, $3b, $63
    db $39, $65, $36, $66, $34, $67, $31, $69, $2f, $6a, $2c, $6b, $29, $6c, $27, $6d
    db $24, $6e, $21, $6f, $1f, $70, $1c, $70, $19, $71, $16, $72, $13, $72, $11, $73
    db $0e, $73, $0b, $73, $08, $74, $05, $74, $02, $74, $80

    nop
    ld a, a
    inc bc
    ld a, a
    ld b, $7f
    add hl, bc
    ld a, a
    inc c
    ld a, a
    rrca
    ld a, [hl]
    ld [de], a
    ld a, [hl]
    dec d
    ld a, l
    jr jr_016_75f4

    inc e
    ld a, h
    rra
    ld a, e
    ld [hl+], a
    ld a, d
    dec h
    ld a, c

jr_016_7580:
    jr z, jr_016_75fa

    dec hl
    ld [hl], a
    ld l, $76
    jr nc, jr_016_75fd

    inc sp
    ld [hl], e
    ld [hl], $72
    add hl, sp
    ld [hl], b
    inc a
    ld l, a
    ccf
    ld l, l
    ld b, c
    ld l, h
    ld b, h
    ld l, d
    ld b, a
    ld l, b
    ld c, c
    ld h, [hl]
    ld c, h

    db $64, $4e, $62, $51, $60, $53, $5e, $55, $5c, $58, $5a, $5a, $58, $5c, $55, $5e
    db $53, $60, $51, $62, $4e, $64, $4c, $66, $49, $68, $47, $6a, $44, $6c, $41, $6d
    db $3f, $6f, $3c, $70, $39, $72, $36, $73, $33, $75, $30, $76, $2e, $77, $2b, $78
    db $28, $79, $25, $7a, $22, $7b, $1f, $7c, $1c, $7c, $18, $7d, $15, $7e, $12, $7e
    db $0f, $7f, $0c, $7f, $09, $7f, $06, $7f, $03, $7f, $8c

    nop
    adc h
    inc bc
    adc h
    ld b, $8c
    ld a, [bc]
    adc h
    dec c
    adc e
    ld de, $148b
    adc d

jr_016_75f4:
    jr jr_016_7580

    dec de
    adc c
    ld e, $88

jr_016_75fa:
    ld [hl+], a
    add a
    dec h

jr_016_75fd:
    add [hl]
    jr z, @-$79

    inc l
    add h
    cpl
    add e
    ld [hl-], a
    add d
    dec [hl]
    add b
    add hl, sp
    ld a, a
    inc a
    ld a, l
    ccf
    ld a, h
    ld b, d
    ld a, d

jr_016_7610:
    ld b, l
    ld a, b

jr_016_7612:
    ld c, b
    db $76
    ld c, e
    ld [hl], l
    ld c, [hl]
    ld [hl], e
    ld d, c
    ld [hl], c
    ld d, e

    db $6e, $56, $6c, $59, $6a, $5b, $68, $5e, $65, $61, $63, $63, $61, $65, $5e, $68
    db $5b, $6a, $59, $6c, $56, $6e, $53, $71, $51, $73, $4e, $75, $4b, $76, $48, $78
    db $45, $7a, $42, $7c, $3f, $7d, $3c, $7f, $39, $80, $35, $82, $32, $83, $2f, $84
    db $2c, $85, $28, $86, $25, $87, $22, $88, $1e, $89, $1b, $8a, $18, $8a, $14, $8b
    db $11, $8b, $0d, $8c, $0a, $8c, $06, $8c, $03, $8c, $99

    nop
    sbc c
    inc bc
    sbc c
    rlca
    sbc c
    dec bc
    sbc b
    rrca
    sbc b
    ld [de], a
    sub a
    ld d, $97
    ld a, [de]
    sub [hl]
    dec e
    sub l
    ld hl, $2594
    sub h
    jr z, jr_016_7610

    inc l
    sub c
    jr nc, jr_016_7612

    inc sp
    adc a
    scf
    adc l
    ld a, [hl-]
    adc h
    ld a, $8a
    ld b, c
    adc c
    ld b, l
    add a
    ld c, b
    add l
    ld c, e
    add e
    ld c, [hl]
    add c
    ld d, d
    ld a, a
    ld d, l

jr_016_7697:
    ld a, l
    ld e, b
    ld a, e

jr_016_769a:
    ld e, e

    db $79, $5e, $76, $61, $74, $64, $71, $67, $6f, $69, $6c, $6c, $69, $6f, $67, $71
    db $64, $74, $61, $76, $5e, $79, $5b, $7b, $58, $7d, $55, $7f, $52, $81, $4e, $83
    db $4b, $85, $48, $87, $45, $89, $41, $8a, $3e, $8c, $3a, $8d, $37, $8f, $33, $90
    db $30, $91, $2c, $92, $28, $94, $25, $94, $21, $95, $1d, $96, $1a, $97, $16, $97
    db $12, $98, $0f, $98, $0b, $99, $07, $99, $03, $99, $a6

    nop
    and [hl]
    inc b
    and [hl]
    ld [$0ca5], sp
    and l
    db $10
    and l
    inc d
    and h
    jr jr_016_7697

    inc e
    and e
    jr nz, jr_016_769a

    inc h
    and c
    jr z, @-$5e

    inc l
    sbc a
    jr nc, @-$60

    inc [hl]
    sbc h
    jr c, @-$63

    dec sp
    sbc c
    ccf
    sbc b
    ld b, e
    sub [hl]
    ld b, a
    sub h
    ld c, d
    sub d
    ld c, [hl]
    sub b
    ld d, d
    adc [hl]
    ld d, l
    adc h
    ld e, c
    adc d
    ld e, h
    adc b
    ld e, a
    add l
    ld h, e

    db $83, $66, $80, $69, $7d, $6c, $7b, $6f, $78, $72, $75, $75, $72, $78, $6f, $7b
    db $6c, $7d, $69, $80, $66, $83, $63, $85, $5f, $88, $5c, $8a, $59, $8c, $55, $8e
    db $52, $90, $4e, $92, $4a, $94, $47, $96, $43, $98, $3f, $99, $3b, $9b, $38, $9c
    db $34, $9e, $30, $9f, $2c, $a0, $28, $a1, $24, $a2, $20, $a3, $1c, $a3, $18, $a4
    db $14, $a5, $10, $a5, $0c, $a5, $08, $a6, $04, $a6, $b3

    nop
    or e
    inc b
    or d
    ld [$0db2], sp
    or d
    ld de, $15b1
    or c
    ld a, [de]
    or b
    ld e, $af
    ld [hl+], a
    xor [hl]
    daa
    xor l
    dec hl
    xor h
    cpl
    xor e
    inc [hl]
    xor d
    jr c, @-$56

    inc a
    and a
    ld b, b
    and l
    ld b, h
    and e
    ld c, b
    and c
    ld c, h
    and b
    ld d, b
    sbc [hl]
    ld d, h
    sbc e
    ld e, b
    sbc c
    ld e, h
    sub a
    ld e, a
    sub h
    ld h, e
    sub d
    ld h, a
    adc a
    ld l, d

    db $8d, $6e, $8a, $71, $87, $75, $84, $78, $81, $7b, $7e, $7e, $7b, $81, $78, $84
    db $75, $87, $71, $8a, $6e, $8d, $6a, $8f, $67, $92, $63, $94, $5f, $97, $5c, $99
    db $58, $9b, $54, $9e, $50, $a0, $4c, $a1, $48, $a3, $44, $a5, $40, $a7, $3c, $a8
    db $38, $aa, $34, $ab, $2f, $ac, $2b, $ad, $27, $ae, $22, $af, $1e, $b0, $1a, $b1
    db $15, $b1, $11, $b2, $0d, $b2, $08, $b2, $04, $b3, $c0

    nop
    cp a
    inc b
    cp a
    add hl, bc
    cp a
    ld c, $bf
    ld [de], a
    cp [hl]
    rla
    cp l
    inc e
    cp l
    jr nz, @-$42

    dec h
    cp e
    ld a, [hl+]
    cp d
    ld l, $b9
    inc sp
    or a
    scf
    or [hl]
    inc a
    or h
    ld b, b
    or e
    ld b, l
    or c
    ld c, c
    xor a
    ld c, l
    xor l
    ld d, d
    xor e
    ld d, [hl]
    xor c
    ld e, d
    and a
    ld e, [hl]
    and h
    ld h, d
    and d
    ld h, [hl]
    sbc a
    ld l, d
    sbc h
    ld l, [hl]
    sbc d
    ld [hl], d

    db $97, $76, $94, $79, $91, $7d, $8e, $80, $8b, $84, $87, $87, $84, $8b, $80, $8e
    db $7d, $91, $79, $94, $76, $97, $72, $9a, $6e, $9c, $6a, $9f, $66, $a2, $62, $a4
    db $5e, $a7, $5a, $a9, $56, $ab, $52, $ad, $4d, $af, $49, $b1, $45, $b3, $40, $b4
    db $3c, $b6, $37, $b7, $33, $b9, $2e, $ba, $2a, $bb, $25, $bc, $20, $bd, $1c, $bd
    db $17, $be, $12, $bf, $0e, $bf, $09, $bf, $04, $bf, $cc

    nop
    call z, $cc05
    ld a, [bc]
    call z, $cb0f
    inc d
    rr c
    jp z, $c91e

    inc hl
    ret z

    daa
    rst $00
    inc l
    add $31
    push bc
    ld [hl], $c3
    dec sp
    jp nz, $c040

    ld b, h
    cp a
    ld c, c
    cp l
    ld c, [hl]
    cp e
    ld d, d
    cp c
    ld d, a
    or [hl]
    ld e, h
    or h
    ld h, b
    or d
    ld h, h
    xor a
    ld l, c
    xor l
    ld l, l
    xor d
    ld [hl], c
    and a
    ld [hl], l
    and h
    ld a, c

    db $a1, $7d, $9e, $81, $9b, $85, $97, $89, $94, $8d, $90, $90, $8d, $94, $89, $97
    db $85, $9b, $81, $9e, $7d, $a1, $79, $a4, $75, $a7, $71, $aa, $6d, $ad, $69, $af
    db $64, $b2, $60, $b4, $5c, $b6, $57, $b9, $52, $bb, $4e, $bd, $49, $bf, $44, $c0
    db $40, $c2, $3b, $c3, $36, $c5, $31, $c6, $2c, $c7, $27, $c8, $23, $c9, $1e, $ca
    db $19, $cb, $14, $cb, $0f, $cc, $0a, $cc, $05, $cc, $d9

    nop
    reti


    dec b
    reti


    ld a, [bc]
    reti


    db $10
    ret c

    dec d
    rst $10
    ld a, [de]
    rst $10
    rra
    sub $25
    push de
    ld a, [hl+]
    call nc, $d32f
    inc [hl]
    pop de
    ld a, [hl-]
    ret nc

    ccf
    adc $44
    call z, $cb49
    ld c, [hl]
    ret


    ld d, e
    add $58
    call nz, $c25d
    ld h, c
    cp a
    ld h, [hl]
    cp l
    ld l, e
    cp d
    ld l, a
    or a
    ld [hl], h
    or h
    ld a, b
    or c
    ld a, l
    xor [hl]
    add c

    db $ab, $85, $a8, $8a, $a4, $8e, $a1, $92, $9d, $96, $99, $99, $96, $9d, $92, $a1
    db $8e, $a4, $8a, $a8, $85, $ab, $81, $ae, $7d, $b1, $78, $b4, $74, $b7, $6f, $ba
    db $6b, $bd, $66, $bf, $61, $c2, $5d, $c4, $58, $c6, $53, $c9, $4e, $cb, $49, $cc
    db $44, $ce, $3f, $d0, $3a, $d1, $34, $d3, $2f, $d4, $2a, $d5, $25, $d6, $1f, $d7
    db $1a, $d7, $15, $d8, $10, $d9, $0a, $d9, $05, $d9, $e6

    nop
    and $05
    and $0b
    push hl
    db $10
    push hl
    ld d, $e4
    inc e
    db $e3
    ld hl, $27e3
    pop hl
    inc l
    ldh [$32], a
    rst $18
    scf
    sbc $3d
    call c, $da42
    ld c, b
    ret c

    ld c, l
    sub $52
    call nc, $d258
    ld e, l
    ret nc

    ld h, d
    call $cb67
    ld l, h
    ret z

    ld [hl], c
    push bc
    db $76
    jp nz, $bf7b

    add b
    cp h
    add h
    cp c
    adc c

    db $b5, $8d, $b2, $92, $ae, $96, $aa, $9a, $a6, $9e, $a2, $a2, $9e, $a6, $9a, $aa
    db $96, $ae, $92, $b2, $8d, $b5, $89, $b9, $84, $bc, $80, $bf, $7b, $c2, $76, $c5
    db $71, $c8, $6c, $cb, $67, $cd, $62, $d0, $5d, $d2, $58, $d4, $52, $d6, $4d, $d8
    db $48, $da, $42, $dc, $3d, $de, $37, $df, $32, $e0, $2c, $e1, $27, $e3, $21, $e3
    db $1c, $e4, $16, $e5, $10, $e5, $0b, $e6, $05, $e6, $f3

    nop
    di
    dec b
    ld a, [c]
    dec bc
    ld a, [c]
    ld de, $17f2
    pop af
    dec e
    ldh a, [rNR44]
    rst $28
    add hl, hl
    xor $2f
    db $ed
    dec [hl]
    db $eb
    dec sp
    ld [$e840], a
    ld b, [hl]
    and $4c
    db $e4
    ld d, c
    ld [c], a
    ld d, a
    ldh [$5d], a
    sbc $62
    db $db
    ld h, a
    reti


    ld l, l
    sub $72
    db $d3
    ld [hl], a
    ret nc

    ld a, l
    call $ca82
    add a
    add $8c
    db $c3
    sub b

    db $bf, $95, $bb, $9a, $b8, $9e, $b4, $a3, $b0, $a7, $ab, $ab, $a7, $b0, $a3, $b4
    db $9e, $b8, $9a, $bb, $95, $bf, $90, $c3, $8c, $c6, $87, $ca, $82, $cd, $7d, $d0
    db $77, $d3, $72, $d6, $6d, $d9, $67, $db, $62, $de, $5d, $e0, $57, $e2, $51, $e4
    db $4c, $e6, $46, $e8, $40, $ea, $3b, $eb, $35, $ed, $2f, $ee, $29, $ef, $23, $f0
    db $1d, $f1, $17, $f2, $11, $f2, $0b, $f2, $05, $f3

Jump_016_7a65:
    ld a, e
    add a
    jr c, jr_016_7a7b

    add a
    jr c, jr_016_7ab7

    srl d
    rra
    ld e, a
    ld hl, $5a65
    add hl, de
    ld a, [hl+]
    ld c, a
    ld b, $00
    ld e, [hl]
    ld d, b
    ret


jr_016_7a7b:
    add a
    jr nc, jr_016_7aa2

    jr z, jr_016_7a92

    cpl
    srl d
    rra
    ld e, a
    ld hl, $5a66
    add hl, de
    ld a, [hl+]
    ld c, a
    xor a
    ld b, a
    sub [hl]
    ld e, a
    sbc a
    ld d, a
    ret


jr_016_7a92:
    srl d
    rra
    ld e, a
    ld hl, $5a65
    add hl, de
    xor a
    ld b, a
    ld c, a
    sub [hl]
    ld e, a
    sbc a
    ld d, a
    ret


jr_016_7aa2:
    srl d
    rra
    ld e, a
    ld hl, $5a65
    add hl, de
    ld a, [hl+]
    ld c, a
    xor a
    sub c
    ld c, a
    sbc a
    ld b, a
    xor a
    sub [hl]
    ld e, a
    sbc a
    ld d, a
    ret


jr_016_7ab7:
    jr z, jr_016_7acb

    cpl
    srl d
    rra
    ld e, a
    ld hl, $5a67
    add hl, de
    ld a, [hl-]
    ld e, a
    xor a
    ld d, a
    sub [hl]
    ld c, a
    sbc a
    ld b, a
    ret


jr_016_7acb:
    srl d
    rra
    ld e, a
    ld hl, $5a65
    add hl, de
    ld bc, $0000
    ld d, b
    ld e, [hl]
    ret


    db $80, $f6, $79, $f7, $73, $f8, $70, $f9, $6f, $fa, $70, $fb, $72, $fc, $75, $fd
    db $7a, $fe, $7e, $ff, $82, $00, $86, $01, $8b, $02, $8e, $03, $90, $04, $91, $05
    db $90, $06, $8d, $07, $87, $08, $80, $09

Call_016_7b01:
    ld c, l
    ld b, h
    add a
    ld hl, $7ad9
    add l
    ld l, a
    jr nc, jr_016_7b0c

    inc h

jr_016_7b0c:
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c3b0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld e, h
    ld d, $40
    ld hl, $c3a6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, $c3a4
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld hl, $7b36
    push hl
    ld l, c
    ld h, b

jr_016_7b2d:
    push de
    push hl
    dec d
    di
    add sp, $04
    jp Jump_016_7a65


    pop hl
    add hl, bc
    sra h
    jr nz, jr_016_7ba5

    rr l
    ld c, l
    pop hl
    add hl, de
    add sp, -$0a
    ei
    sra h
    jr nz, jr_016_7ba8

    rr l
    ld e, l
    ld a, e
    and $fc
    swap a
    ld l, a
    and $0f
    ld h, a
    xor l
    ld l, a
    ld d, c
    srl c
    srl c
    ld b, $d0
    add hl, bc
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, d
    bit 5, [hl]
    jr z, jr_016_7b6a

    cpl

jr_016_7b6a:
    ld c, a
    rrca
    rrca
    ld a, e
    bit 6, [hl]
    jr z, jr_016_7b73

    cpl

jr_016_7b73:
    rla
    and $07
    ld e, a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld l, [hl]
    xor a
    ld h, a
    ld d, $d8
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld b, [hl]
    bit 0, c
    jr nz, jr_016_7b93

    swap b

jr_016_7b93:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    and $0f

jr_016_7b9c:
    pop hl
    ld [hl+], a
    pop de
    dec d
    jr nz, jr_016_7b2d

    add sp, $06
    ret


jr_016_7ba5:
    add sp, -$08
    ei

jr_016_7ba8:
    ld a, $07
    jr jr_016_7b9c

    ld hl, $d404
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d443]
    or a
    jr z, jr_016_7be1

    cp $04
    jp z, Jump_016_7be1

    ld a, [$d442]
    ld b, a
    ld a, d
    sub b
    ld d, a
    ld a, [$d441]
    ld b, a
    ld a, h
    sub b

jr_016_7bd0:
    ld h, a
    sla l
    rl h
    sla l
    rl h
    sla e
    rl d
    sla e
    rl d

Jump_016_7be1:
jr_016_7be1:
    push hl
    push de
    call Call_016_7bf2
    pop de
    pop hl
    push bc
    call Call_016_7c57
    pop bc
    ret


    xor a
    ld b, a
    ld c, a
    ret


Call_016_7bf2:
    ldh a, [$96]
    push af
    ld e, h
    ld l, d
    ld h, $00
    ld d, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $d000
    add hl, de
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    rrca
    rrca
    and $18
    ld b, a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld l, [hl]
    ld h, $d7
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    ld c, a
    and $07
    add b
    ld hl, $7c37
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld b, [hl]
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    ret


    nop
    jr nz, jr_016_7c7a

    ld h, b
    add b
    and b
    ret nz

    ldh [$80], a
    ld h, b
    ld b, b
    jr nz, jr_016_7c44

jr_016_7c44:
    ldh [$c0], a
    and b
    nop
    ldh [$c0], a
    and b
    add b
    ld h, b
    ld b, b
    jr nz, jr_016_7bd0

    and b
    ret nz

    ldh [rP1], a
    jr nz, jr_016_7c96

    ld h, b

Call_016_7c57:
    ldh a, [$96]
    push af
    push hl
    push de
    ld e, h
    ld l, d
    ld h, $00
    ld d, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $d000
    add hl, de
    pop de
    pop bc
    xor a
    sla c
    rla
    sla c
    rla
    ld c, a
    xor a
    sla e

jr_016_7c7a:
    rla
    sla e
    rla
    ld d, $00
    ld e, a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    bit 5, [hl]
    jr z, jr_016_7c8f

    ld a, $03
    sub c
    ld c, a

jr_016_7c8f:
    bit 6, [hl]
    jr z, jr_016_7c97

    ld a, $03
    sub e

jr_016_7c96:
    ld e, a

jr_016_7c97:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld l, [hl]
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    add hl, de
    ld de, $d800
    add hl, de
    bit 1, c
    jr z, jr_016_7cae

    inc hl

jr_016_7cae:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    bit 0, c
    jr nz, jr_016_7cbb

    swap a

jr_016_7cbb:
    and $0f
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ret


    ld a, e
    and $fc
    swap a
    ld l, a
    and $0f
    ld h, a
    xor l
    ld l, a
    ld c, d
    srl c
    srl c
    ld b, $d0
    add hl, bc
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, d
    bit 5, [hl]
    jr z, jr_016_7ce4

    cpl

jr_016_7ce4:
    ld c, a
    rrca
    rrca
    ld a, e
    bit 6, [hl]
    jr z, jr_016_7ced

    cpl

jr_016_7ced:
    rla
    and $07
    ld e, a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld l, [hl]
    xor a
    ld h, a
    ld d, $d8
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    bit 0, c
    jr nz, jr_016_7d0d

    swap a

jr_016_7d0d:
    and $0f
    ret


    ld a, [$d329]
    add a
    ld hl, $7d2f
    add l
    ld l, a
    jr nc, jr_016_7d1c

    inc h

jr_016_7d1c:
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    call Call_016_7d93
    add a
    ld h, $00
    ld l, a
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    ld c, e
    ld a, l
    ld h, e
    ld a, l
    ld h, e
    ld a, l
    ld a, e
    ld a, l
    ld a, e
    ld a, l
    ld a, e
    ld a, l
    ld a, e
    ld a, l
    ld a, e
    ld a, l
    ld a, e
    ld a, l
    ld a, e
    ld a, l
    ld a, e
    ld a, l
    ld a, e
    ld a, l
    ld a, e
    ld a, l
    ld a, e
    ld a, l
    ld h, d
    ld h, h
    ld e, l
    ld e, a
    ld [hl-], a
    inc a
    inc d
    ld [hl-], a
    jr z, jr_016_7d8c

    inc d
    jr z, @+$0c

    ld e, $63
    ld h, h
    inc a
    ld b, h
    ld d, a
    ld e, e
    ld d, e
    ld d, a
    jr z, jr_016_7d9a

    ld h, d
    ld h, h
    ld h, d
    ld h, h
    ld [hl-], a
    inc a
    inc d
    ld [hl-], a
    jr z, jr_016_7da4

    inc d
    jr z, @+$0c

    ld e, $63
    ld h, h
    ld e, d
    ld h, d
    ld e, [hl]
    ld h, d
    ld e, d
    ld e, [hl]
    jr z, jr_016_7db2

    ld h, d
    ld h, h
    ld h, d
    ld h, h
    ld d, b
    ld e, d
    ld [hl-], a
    ld d, b
    ld b, [hl]
    ld d, l
    ld [hl-], a
    ld b, [hl]
    jr z, @+$3e

    ld h, e
    ld h, h
    ld e, d

jr_016_7d8c:
    ld h, d
    ld e, [hl]
    ld h, d
    ld e, d
    ld e, [hl]
    ld b, [hl]
    ld d, l

Call_016_7d93:
    ld a, [$d445]
    or a
    jr z, jr_016_7d9b

    xor a

jr_016_7d9a:
    ret


jr_016_7d9b:
    ld a, [$d4cd]
    cp $0d
    jr z, jr_016_7da6

    cp $02

jr_016_7da4:
    jr nz, jr_016_7db6

jr_016_7da6:
    ld a, [$d446]
    or a
    jr z, jr_016_7ddb

    cp $01
    jr nz, jr_016_7db3

    ld a, $05

jr_016_7db2:
    ret


jr_016_7db3:
    ld a, $06
    ret


jr_016_7db6:
    cp $00
    jr z, jr_016_7dbe

    cp $0e
    jr nz, jr_016_7dce

jr_016_7dbe:
    ld a, [$d446]
    or a
    jr z, jr_016_7ddb

    cp $01
    jr nz, jr_016_7dcb

    ld a, $09
    ret


jr_016_7dcb:
    ld a, $0a
    ret


jr_016_7dce:
    cp $01
    jr nz, jr_016_7ddb

    ld a, [$d446]
    or a
    jr z, jr_016_7ddb

    ld a, $0b
    ret


jr_016_7ddb:
    push hl
    push de
    ld a, [$d4cd]
    ld hl, $7dec
    add l
    ld l, a
    jr nc, jr_016_7de8

    inc h

jr_016_7de8:
    ld a, [hl]
    pop de
    pop hl
    ret


    ld bc, $0402
    ld [bc], a
    ld [bc], a
    inc bc
    rlca
    ld [bc], a
    ld [bc], a
    ld [$0b07], sp
    inc bc
    inc b
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
