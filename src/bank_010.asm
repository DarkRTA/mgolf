; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $010", ROMX[$4000], BANK[$10]

    dec d
    ld b, h

    db $b1, $68, $ad, $62

    ld e, h
    ld b, b

    db $fa, $61

    ld b, $64
    ld b, c
    ld h, e

    db $b4, $68, $3b, $42, $51, $44, $14, $4b

    ld a, h
    ld b, a
    ld [hl], d
    ld h, h
    rst $00
    ld c, e

    db $28, $4b

    push hl
    ld c, e
    inc b
    ld c, h
    ld h, $4c
    ld a, [de]
    ld c, h
    ld [hl], $4c
    ld c, h
    ld c, h

    db $6e, $4c

    cp c
    ld c, h
    xor l
    ld c, h

    db $94, $4b, $07, $69, $8b, $64, $01, $41, $76, $62, $26, $42

    ld e, [hl]
    ld b, e

    db $3c, $54, $55, $53, $b9, $5e

    rst $28
    ld e, [hl]
    ld h, d
    ld c, h
    xor h
    ld b, b
    sub h
    ld e, a
    ld b, l
    ld c, l
    ld [hl], a
    ld [hl], b
    ld b, [hl]
    ld b, d

    db $0b, $55, $18, $55, $c3, $4c, $0e, $42, $3c, $5a

Call_010_405c:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$c8e0], a
    ld [$c8a1], a
    ld [$c8e1], a
    ld [$c8aa], a
    ld [$c8ea], a
    ld [$c8ab], a
    ld [$c8eb], a
    ld [$c895], a
    ld [$c8d5], a
    ld a, [$d4ef]
    ld [$c8a0], a
    ld a, [$d4e3]
    and $01
    ld [$c8a9], a
    ld a, [$d4e3]
    swap a
    and $03
    ld [$c8bf], a
    xor a
    ld [$c8e9], a
    ld [$c8ff], a
    ld a, [$c8d0]
    cp $ff
    ret nz

    ld a, $01
    ld [$c8ea], a
    ld [$c8eb], a
    ret


Call_010_40ac:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $d439
    ld hl, $c8a2
    ld [hl], $00
    inc hl
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld [hl], $00
    inc hl
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ld de, $d439
    ld hl, $c8e2
    ld [hl], $00
    inc hl
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld [hl], $00
    inc hl
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ld de, $d439
    ld hl, $d400
    ld [hl], $00
    inc hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld [hl], $00
    inc hl
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    ld [hl], a
    ret


Call_010_40f8:
    ld a, l
    ld [$c815], a
    ld a, h
    ld [$c816], a
    ret


Call_010_4101:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $20
    call Call_010_4b14
    ld a, [hl+]
    push af
    ld b, [hl]
    swap b
    or b
    ld b, a
    ld a, $2c
    call Call_010_4b14
    ld a, [$c837]
    dec a
    cp $12
    jr nc, jr_010_4126

    add l
    ld l, a
    jr nc, jr_010_4125

    inc h

jr_010_4125:
    ld [hl], b

jr_010_4126:
    ld a, [$d325]
    ld b, a
    ld a, $3e
    call Call_010_4b14
    pop af
    add [hl]
    sub b
    ld [hl], a
    ret


Call_010_4134:
    cp $80
    ret z

    push af
    push hl
    push de
    ld a, [$c834]
    or a
    jr z, jr_010_4154

    cp $04
    jr z, jr_010_4154

    ld a, [$d325]
    ld d, a
    add a
    add d
    ld d, a
    ld a, $20
    call Call_010_4b14
    ld a, [hl]
    cp d
    jr nc, jr_010_4158

jr_010_4154:
    pop de
    pop hl
    pop af
    ret


jr_010_4158:
    ld [hl], d
    call Call_010_4786
    ld hl, $d485
    res 4, [hl]
    ld hl, $d48e
    set 7, [hl]
    push bc
    rst $18
    ld [de], a
    dec sp
    pop bc
    pop de
    pop hl
    pop af
    ld a, $81
    ret


    ld a, [$d402]
    ld b, a
    ld a, [$c329]
    cp b
    jr z, jr_010_417d

    jr nc, jr_010_41da

jr_010_417d:
    ld a, [$c32b]
    cp b
    jr z, jr_010_41da

    jr c, jr_010_41da

    ld a, [$d405]
    ld b, a
    ld a, [$c32a]
    cp b
    jr z, jr_010_4191

    jr nc, jr_010_41da

jr_010_4191:
    ld a, [$c32c]
    dec a
    dec a
    cp b
    jp z, Jump_010_41da

    jp c, Jump_010_41da

    ld hl, $d4cf
    ld de, $d401
    ld a, [de]
    cp [hl]
    jr nz, jr_010_41c4

    inc hl
    inc de
    ld a, [de]
    cp [hl]
    jr nz, jr_010_41c4

    inc hl
    inc de
    inc de
    ld a, [de]
    cp [hl]
    jr nz, jr_010_41c4

    inc hl
    inc de
    ld a, [de]
    cp [hl]
    jr nz, jr_010_41c4

    inc hl
    inc [hl]
    ld a, [hl]
    cp $28
    jr nc, jr_010_41da

    jp Jump_010_41d8


jr_010_41c4:
    ld hl, $d4cf
    ld de, $d401
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld [hl], $00

Jump_010_41d8:
    xor a
    ret


Jump_010_41da:
jr_010_41da:
    ld a, $ff
    or a
    ret


    ld d, $00

jr_010_41e0:
    push de
    ld a, d
    ld de, $0802
    call Call_000_22e9
    pop de
    call Call_000_2e3b
    ldh a, [$91]
    bit 5, a
    jr z, jr_010_41fb

    dec d
    ld a, d
    cp $fb
    jr nz, jr_010_41e0

    inc d
    jr jr_010_41e0

jr_010_41fb:
    bit 4, a
    jr z, jr_010_4208

    inc d
    ld a, d
    cp $05
    jr nz, jr_010_41e0

    dec d
    jr jr_010_41e0

jr_010_4208:
    bit 0, a
    jr z, jr_010_41e0

    ld a, d
    ret


Call_010_420e:
    call Call_000_23b6
    call Call_000_2683
    rst $18

    db $00, $12

    rst $18

    db $00, $04

    rst $18

    db $04, $11

    rst $18

    db $56, $04

    ld a, $ff
    ld [$d443], a
    ret


Call_010_4226:
    call Call_010_420e
    call Call_010_5632
    xor a
    ld [$d328], a
    ld c, $7f
    call Call_000_258d
    ld a, $04
    rst $18

    db $56, $10

    ret


    ld [$c838], a
    ld a, h
    ld [$c836], a
    ld a, l
    ld [$c837], a

Call_010_4246:
    push hl
    ld a, [$c836]
    add a
    ld hl, $4265
    add l
    ld l, a
    jr nc, jr_010_4253

    inc h

jr_010_4253:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c837]
    dec a
    add l
    ld l, a
    jr nc, jr_010_425f

    inc h

jr_010_425f:
    ld a, [hl]
    ld [$d320], a
    pop hl
    ret


    ld a, l
    ld b, d

    db $87, $42

    sbc c
    ld b, d
    xor e
    ld b, d
    cp l
    ld b, d
    rst $08
    ld b, d
    pop hl
    ld b, d
    di
    ld b, d
    dec b
    ld b, e
    rla
    ld b, e
    add hl, hl
    ld b, e
    ld a, l
    ld b, d
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    db $08
    add hl, bc

    db $0a, $0b

    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_010_42b0

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_010_42c0

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_010_42d0

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_010_42e0

    ld [hl-], a

jr_010_42b0:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_010_42f0

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_010_42c0:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d

jr_010_42d0:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_010_42e0:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d

jr_010_42f0:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l

Call_010_433b:
    ld a, [$d32a]
    cp $01
    ret nz

    ld a, [$d329]
    cp $0d
    ret z

    ld a, [$d44f]
    or a
    jr nz, jr_010_4353

    ld a, [$d450]
    cp $3c
    ret z

jr_010_4353:
    ld a, $28
    call Call_010_4b14
    dec [hl]
    ld a, [hl]
    rst $18

    db $38, $12

    ret


    push af
    push bc
    push de
    push hl
    call Call_010_4b28
    ld a, $08
    ld [$c834], a
    pop hl
    pop de
    pop bc
    pop af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $04
    add b
    ld b, a
    ld hl, $d000
    rst $18
    ld b, $02
    or a
    jr z, jr_010_4382

    ret


jr_010_4382:
    ld h, $00
    ld l, c
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $d000
    add hl, de
    ld de, $c600
    ld c, $08
    call Call_000_03eb
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld bc, $8100
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $c620
    ld a, [hl+]
    ld [$c836], a
    ld a, [hl+]
    ld [$c837], a
    ld a, [hl+]
    ld [$c815], a
    ld a, [hl+]
    ld [$c816], a
    ld a, [hl+]
    ld [$c838], a
    ld c, [hl]
    push bc
    ld hl, $c640
    ld de, $d680
    ld c, $04
    call Call_000_03eb
    ld a, $08
    ld [$c834], a
    ld a, $01
    ld [$c96d], a
    rst $18
    db $10
    ld [$5ccd], sp
    ld b, b
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ld [$d438], a
    call Call_010_4246
    rst $18
    ld [$cd13], sp
    ld e, h
    ld b, b
    call Call_010_40ac
    call Call_010_4226
    pop bc

jr_010_43f9:
    push bc
    call Call_010_46d9
    call Call_010_5632
    call Call_010_4798
    rst $18
    ld a, $12
    pop bc
    dec c
    jr nz, jr_010_43f9

    rst $18
    inc b
    ld c, d
    call Call_000_2e3b
    xor a
    ld [$c96d], a
    ret


    rst $18
    inc d
    ld [bc], a
    rst $18
    ld [bc], a
    ld [bc], a
    ld hl, $c800
    ld b, $00
    rst $18
    ld b, $02
    call Call_010_4b28
    ld a, $03
    ld [$c834], a
    ld a, $0f
    ld [$c2a5], a
    ld hl, $c893
    ld [hl], $00
    ld hl, $c8d3
    ld [hl], $00

jr_010_443a:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0101
    xor a
    rst $18
    db $10
    db $10
    call Call_010_7bac
    ld a, $12
    call Call_010_4451
    jr jr_010_443a

Call_010_4451:
    call Call_000_2b7a
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ld [$d4f0], a
    cp $ff
    jr z, jr_010_4489

    ld [$c839], a
    ld [$c833], a
    ld a, $01
    ld [$c96d], a
    xor a
    ld [$c814], a
    rst $18

    db $00, $08

    rst $18

    db $58, $02

    ld hl, $c890
    ld a, [hl]
    ld hl, $c8d0
    cp [hl]
    jr nz, jr_010_4487

    ld hl, $c8d9
    set 4, [hl]

jr_010_4487:
    jr jr_010_44a7

jr_010_4489:
    ld a, [$c896]
    ld [$c8a8], a
    ld a, [$c8d6]
    ld [$c8e8], a
    ld a, [$c874]
    ld [$c873], a
    ld a, [$c876]
    ld [$c8be], a
    ld a, [$c877]
    ld [$c8fe], a

jr_010_44a7:
    rst $18

    db $00, $05

    call Call_010_405c
    xor a
    ld [$c835], a
    ld [$c2a6], a

Jump_010_44b4:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ld [$d485], a
    xor a
    ld hl, $d4f1
    ld [hl+], a
    ld [hl], a
    ld a, [$c8a8]
    ld [$c896], a
    ld a, [$c8e8]
    ld [$c8d6], a
    ld a, [$c873]
    ld [$c874], a
    ld a, [$c8be]
    ld [$c876], a
    ld a, [$c8fe]
    ld [$c877], a
    ld a, [$c893]
    cp $03
    jr nz, jr_010_4516

    call Call_000_2e3b
    ld a, $24
    ldh [$c1], a

jr_010_44f1:
    ldh a, [$c0]
    cp $23
    jr z, jr_010_44fc

    call Call_000_2e3b
    jr jr_010_44f1

jr_010_44fc:
    ld hl, $cb40
    ld a, [hl+]
    ld [$c836], a
    ld a, [hl+]
    ld [$c837], a
    ld a, [hl+]
    ld [$c838], a
    ld a, [hl+]
    ld [$c815], a
    ld a, [hl+]
    ld [$c816], a
    jp Jump_010_45a2


jr_010_4516:
    ld hl, $d4f0
    ld a, [hl]
    ld [hl], $00
    cp $ff
    jr z, jr_010_4560

    call Call_000_0a61
    ld a, h
    and $03
    ld [$c838], a
    ld a, [$d4ed]
    or a
    jr z, jr_010_4535

    ld a, [$d4ee]
    ld [$c838], a

jr_010_4535:
    call Call_000_0a61
    ld a, $14
    call Call_000_0bec
    ld d, h
    call Call_000_0a61
    ld a, h
    and $f0
    ld h, a
    ld l, d
    ld a, [$c836]
    or a
    jr nz, jr_010_454f

    ld hl, $4000

jr_010_454f:
    ld a, [$d4e4]
    or a
    jr z, jr_010_455d

    ld hl, $d4e5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    sla l

jr_010_455d:
    call Call_010_40f8

jr_010_4560:
    ld a, [$c8d3]
    cp $03
    jr nz, jr_010_45a2

jr_010_4567:
    ldh a, [$c0]
    cp $24
    jr z, jr_010_4572

    call Call_000_2e3b
    jr jr_010_4567

jr_010_4572:
    xor a
    ld [$cb47], a
    ld hl, $cb00
    ld a, [$c836]
    ld [hl+], a
    ld a, [$c837]
    ld [hl+], a
    ld a, [$c838]
    ld [hl+], a
    ld a, [$c815]
    ld [hl+], a
    ld a, [$c816]
    ld [hl+], a
    ld a, $10
    ld [$cb07], a
    ld a, $23
    ldh [$c9], a
    ld a, $08
    call Call_000_3081
    call Call_000_30eb
    call Call_000_2ed5
    ld [bc], a

Jump_010_45a2:
jr_010_45a2:
    rst $18

    db $10, $08

    call Call_010_4246
    rst $18

    db $08, $13

    call Call_010_405c
    call Call_010_40ac
    call Call_010_46d9
    xor a
    ld [$d329], a
    ld [$d32a], a
    ld [$d32b], a
    inc a
    ld [$d445], a
    ld a, [$6907]
    ld [$d321], a
    rst $18

    db $0c, $08

    ld a, $03
    call Call_010_4cc3
    rst $18

    db $24, $08

    rst $18

    db $44, $12

    rst $18

    db $02, $08

Jump_010_45d9:
    call Call_010_4674
    ld a, $01
    ld [$d438], a
    call Call_010_5632
    call Call_010_4798
    ld hl, $d438
    ld [hl], $00
    call Call_010_4134
    bit 7, a
    jp z, Jump_010_460c

    ld a, $2a
    call Call_010_4b14
    ld a, $01
    ld [hl+], a
    ld [hl], a
    ld a, $22
    call Call_010_4b14
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_010_4101

Jump_010_460c:
    rst $18

    db $06, $08

    ld a, $01
    call Call_010_4cc3
    rst $18

    db $04, $4a

    call Call_000_2e3b
    ld a, [$d4dd]
    or a
    jr z, jr_010_4627

    bit 7, a
    jr nz, jr_010_464a

    rst $18
    ld h, $08

jr_010_4627:
    rst $18

    db $3e, $12

    ld a, [$c8aa]
    ld b, a
    ld a, [$c8ea]
    and b
    jp z, Jump_010_45d9

    rst $18

    db $08, $08

    ld hl, $c837
    inc [hl]
    ld a, [hl]
    cp $13
    jr c, jr_010_4643

    ld [hl], $01

jr_010_4643:
    ld hl, $c839
    dec [hl]
    jp nz, Jump_010_44b4

jr_010_464a:
    ld a, $01
    ld [$d328], a
    xor a
    ld [$c96d], a
    ld a, [$c33f]
    or a
    jr z, jr_010_466d

    ld a, $2e
    ldh [$c1], a

jr_010_465d:
    call Call_000_2e3b
    ldh a, [$c0]
    cp $2e
    jr nz, jr_010_465d

    call Call_000_2ed5
    ld [bc], a
    call Call_000_30fd

jr_010_466d:
    rst $18

    db $0a, $08

    call Call_000_2b6c
    ret


Call_010_4674:
    ld a, [$c8ea]
    or a
    jr nz, jr_010_46d9

    ld a, [$c8aa]
    or a
    jr nz, jr_010_46ee

    ld a, [$c835]
    push af
    call Call_010_46d9
    call Call_010_62ad
    call Call_010_46b5
    call Call_010_46c7
    push hl
    call Call_010_46ee
    call Call_010_62ad
    call Call_010_46b5
    call Call_010_46c7
    pop de
    call Call_000_08ac
    pop bc
    ld a, h
    or l
    jr nz, jr_010_46ad

    ld a, b
    xor $01
    jr z, jr_010_46b1

    jr jr_010_46b4

jr_010_46ad:
    bit 7, h
    jr z, jr_010_46b4

jr_010_46b1:
    call Call_010_46d9

jr_010_46b4:
    ret


Call_010_46b5:
    push de
    push hl
    ld a, $2b
    call Call_010_4b14
    ld a, [hl]
    pop hl
    or a
    jr nz, jr_010_46c5

    ld de, $0c80
    add hl, de

jr_010_46c5:
    pop de
    ret


Call_010_46c7:
    push de
    push hl
    ld a, $29
    call Call_010_4b14
    ld a, [hl]
    pop hl
    or a
    jr nz, jr_010_46d7

    ld de, $3200
    add hl, de

jr_010_46d7:
    pop de
    ret


Call_010_46d9:
jr_010_46d9:
    ld bc, $c880
    ld hl, $c8a2
    ld de, $c8e3
    ld a, [$c8e9]
    or a
    jr nz, jr_010_46eb

    ld de, $4771

jr_010_46eb:
    xor a
    jr jr_010_4702

Call_010_46ee:
jr_010_46ee:
    ld bc, $c8c0
    ld hl, $c8e2
    ld de, $c8a3
    ld a, [$c8a9]
    or a
    jr nz, jr_010_4700

    ld de, $4771

jr_010_4700:
    ld a, $01

jr_010_4702:
    push bc
    push de
    ld [$c835], a
    ld de, $d400
    ld bc, $0006
    call Call_000_03d3
    ld hl, $d406
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    pop hl
    ld de, $d41e
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    inc hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld hl, $d409
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    pop bc
    ld hl, $001a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$d4c6], a
    ld a, h
    ld [$d4c7], a
    ld hl, $001d
    add hl, bc
    ld a, [hl]
    ld [$d4ca], a
    ld hl, $001c
    add hl, bc
    ld a, [hl]
    ld [$d4c8], a
    ld hl, $001e
    add hl, bc
    ld a, [hl]
    ld [$d4c9], a
    ld hl, $001f
    add hl, bc
    ld a, [hl]
    ld [$d4cb], a
    ld hl, $0019
    add hl, bc
    ld a, [hl]
    ld [$d4cc], a
    ld hl, $0013
    add hl, bc
    ld a, [hl]
    ld [$d4d7], a
    ret


    db $00, $00

    nop

    db $00, $df

    db $10
    ld [de], a
    rst $18
    ld [de], a
    ld [de], a
    ret


Call_010_477c:
    ld a, $20
    call Call_010_4b14
    ld a, [hl]
    cp $14
    ret nc

    inc [hl]

Call_010_4786:
    ld a, [$c835]
    or a
    jr nz, jr_010_4791

    rst $18

    db $10, $12

    jr jr_010_4794

jr_010_4791:
    rst $18

    db $12, $12

jr_010_4794:
    call Call_000_2e3b
    ret


Call_010_4798:
    ld hl, $c0f4
    ld a, [hl]
    or a
    jr z, jr_010_47a1

    ld [hl], $01

jr_010_47a1:
    ld a, $20
    ldh [$c1], a
    xor a
    ld [$d48e], a
    xor a
    ld [$d445], a
    ld a, $29
    call Call_010_4b14
    ld a, [hl]
    or a
    jr nz, jr_010_47bb

    ld a, $01
    ld [$d445], a

jr_010_47bb:
    ld a, $3f
    call Call_010_4b14
    ld a, [hl]
    ld [$d446], a
    ld [hl], $00
    rst $18

    db $1e, $12

    call Call_010_648b
    ld [$d4cd], a
    ld hl, $d4d5
    ld [hl], $00
    cp $06
    jr nz, jr_010_47da

    ld [hl], $01

jr_010_47da:
    ld a, $10
    call Call_010_4b14
    ld a, [hl]
    ld [$d332], a
    ld a, $11
    call Call_010_4b14
    ld a, [hl]
    ld [$d333], a
    call Call_010_6341
    call Call_010_5eef
    ld a, $25
    ld [$d485], a
    rst $18

    db $56, $04

    call Call_010_61fa
    ld a, c
    ld [$d418], a
    ld a, b
    ld [$d419], a
    ld a, [$d443]
    cp $02
    jr nz, jr_010_4817

    rst $18
    ld b, $13
    ld a, $01
    ld [$d443], a
    call Call_000_2e3b

jr_010_4817:
    rst $18

    db $02, $13

    ld a, $01
    ld [$d438], a
    call Call_010_6145
    call Call_000_2e3b
    rst $18

    db $06, $12

    call Call_000_2e3b
    rst $18

    db $0e, $12

    call Call_000_2e3b
    call Call_000_2e3b
    call Call_010_55ff
    call Call_000_2e3b
    ld a, $2d
    ld [$d485], a
    rst $18

    db $62, $02

    ld a, $28
    call Call_010_4b14
    ld a, [hl]
    ld [$d51c], a
    xor a
    call Call_010_4cc3
    rst $18

    db $04, $08

    ld c, $1e

jr_010_4854:
    call Call_000_2e3b
    ldh a, [$94]
    or a
    jr nz, jr_010_485f

    dec c
    jr nz, jr_010_4854

jr_010_485f:
    ld a, $3f
    ld [$d485], a
    call Call_010_550b
    xor a

Jump_010_4868:
    call Call_010_5ba6
    cp $8f
    ret z

    cp $82
    jr z, jr_010_4877

    cp $80
    jp nz, Jump_010_488b

jr_010_4877:
    xor a
    ld [$c834], a
    ld a, $01
    ld [$c839], a
    ld a, $01
    ld [$c8aa], a
    ld [$c8ea], a
    ld a, $81
    ret


Jump_010_488b:
    cp $81
    jp nz, Jump_010_489d

    ld a, $20
    call Call_010_4b14
    ld a, [$d325]
    ld b, a
    add a
    add b
    ld [hl], a
    ret


Jump_010_489d:
    cp $ff
    jr nz, jr_010_48b2

    rst $18

    db $08, $13

    call Call_010_4226
    call Call_000_2e3b
    call Call_010_5632
    ld a, $01
    jp Jump_010_4868


jr_010_48b2:
    ld a, [$d332]
    cp $0b
    jr nc, jr_010_48e5

    ld a, [$d329]
    cp $0d
    jr z, jr_010_48e5

    ld a, $13
    call Call_010_4b14
    ld a, [hl]
    cp $03
    jr z, jr_010_48e5

    ld a, [$c818]
    bit 1, a
    jr nz, jr_010_48e5

    rst $18

    db $04, $3b

    rst $18

    db $58, $04

    rst $18

    db $02, $11

    xor a
    ld [$d438], a
    ld a, $04
    rst $18

    db $00, $13

    jr jr_010_48ed

jr_010_48e5:
    ld a, $01
    ld [$d438], a
    rst $18

    db $02, $13

jr_010_48ed:
    ld a, $01
    ld [$d438], a
    ld a, [$d443]
    cp $04
    jr z, jr_010_48fc

    call Call_010_5632

jr_010_48fc:
    call Call_010_56b0
    or a
    jr z, jr_010_4921

    ld a, [$d443]
    cp $04
    jr nz, jr_010_4918

    rst $18

    db $02, $15

    rst $18

    db $56, $04

    rst $18

    db $00, $04

    call Call_010_5632
    rst $18

    db $0c, $12

jr_010_4918:
    call Call_000_2ed5

    db $05

    ld a, $01
    jp Jump_010_4868


jr_010_4921:
    ld hl, $d485
    res 4, [hl]
    rst $18

    db $26, $02

    rst $18

    db $30, $02

    ld a, $2d
    ld [$d485], a
    ld a, [$d443]
    cp $04
    jr nz, jr_010_493d

    rst $18

    db $10, $11

    jr jr_010_4940

jr_010_493d:
    call Call_010_4aef

jr_010_4940:
    ld a, [$c8a0]
    ld [$d35a], a
    ld a, [$c8a1]
    ld [$d35b], a
    ld a, [$d32a]
    ld [$d35d], a
    ld a, [$d32b]
    ld [$d35e], a
    ld a, $2b
    call Call_010_4b14
    ld a, [hl]
    ld [$d35c], a
    ld hl, $d418
    ld de, $d369
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld a, $29
    call Call_010_4b14
    ld a, [hl]
    ld [$d359], a
    ld a, [$d446]
    ld [$d447], a
    call Call_010_477c
    ld hl, $c0f4
    ld a, [hl]
    or a
    jr z, jr_010_4987

    ld [hl], $02

jr_010_4987:
    xor a
    ld [$d35f], a

Jump_010_498b:
    xor a
    ld [$d360], a
    ld a, [$d405]
    ld [$d519], a
    ld a, [$d402]
    ld [$d516], a
    ld hl, $d485
    set 2, [hl]
    call Call_010_5f94
    call Call_010_706c
    xor a
    ld [$d446], a
    rst $18

    db $3c, $12

    call Call_010_433b
    ld a, $11
    ld [$d438], a
    ld a, $01
    ld hl, $4d45
    call Call_000_23e8
    ld a, [$d443]
    cp $04
    jr nz, jr_010_4a0e

    ld hl, $d331
    ld [hl], $00
    ld a, [$c33f]
    or a
    jr z, jr_010_49d8

    ld a, [$d417]
    cp $08
    jr nc, jr_010_49d8

    ld [hl], $01

jr_010_49d8:
    ld c, $5a

jr_010_49da:
    call Call_000_2e3b
    push hl
    push de
    push bc
    call Call_010_5617
    ld a, c
    pop bc
    pop de
    pop hl
    or a
    jr nz, jr_010_49f1

    ld a, [hl]
    or a
    jr nz, jr_010_49f1

    dec c
    jr nz, jr_010_49da

jr_010_49f1:
    call Call_000_30eb
    rst $18

    db $02, $15

    rst $18

    db $56, $04

    rst $18

    db $5c, $04

    rst $18

    db $00, $04

    call Call_010_5617
    ld a, c
    rst $18

    db $00, $13

    rst $18

    db $0c, $12

    call Call_000_2ed5

    db $01

jr_010_4a0e:
    ld a, [$d48e]
    bit 4, a
    jr nz, jr_010_4a1e

    bit 3, a
    jr z, jr_010_4a1e

    ld a, $08
    rst $18

    db $00, $3b

jr_010_4a1e:
    call Call_000_2ed5

    db $01

    call Call_010_6e99
    push af
    ld hl, $4d45
    call Call_000_2449
    pop af
    ld hl, $ff90
    bit 1, [hl]
    jr nz, jr_010_4a38

    bit 1, [hl]
    jr z, jr_010_4a82

jr_010_4a38:
    ld hl, $d35f
    bit 0, [hl]
    jr nz, jr_010_4a62

    ld [hl], $01
    ld [$d367], a
    ld hl, $d400
    ld de, $d361
    ld bc, $0006
    call Call_000_03d3
    ld hl, $d51d
    ld de, $d36d
    ld bc, $0006
    call Call_000_03d3
    ld a, [$d446]
    ld [$d368], a

jr_010_4a62:
    xor a
    ld [$d444], a
    rst $18

    db $40, $02

    ld a, $28
    call Call_010_4b14
    ld a, [$d51c]
    ld [hl], a
    ld a, [$d447]
    ld [$d446], a
    call Call_010_5617
    ld a, c
    rst $18

    db $00, $13

    jp Jump_010_498b


jr_010_4a82:
    push af
    rst $18

    db $0e, $12

    call Call_000_2e3b
    ld a, $21
    call Call_010_4b14
    ld a, [$d4cd]
    cp $06
    jr nz, jr_010_4a98

    inc [hl]
    jr jr_010_4a98

jr_010_4a98:
    ld hl, $d438
    ld a, [hl]
    and $0f
    ld [hl], a
    pop af
    push af
    ld [$d4dc], a
    push hl
    push af
    ld a, $14
    call Call_010_4b14
    pop af
    ld [hl], a
    pop hl
    push af
    call Call_010_55ff
    pop af
    rst $18

    db $06, $3b

    push af
    ldh a, [$9e]
    or a
    jr z, jr_010_4ac9

    ldh a, [$90]
    bit 2, a
    jr z, jr_010_4ac9

    ld a, $13
    call Call_010_4b14
    ld [hl], $01

jr_010_4ac9:
    pop af
    or a
    jr nz, jr_010_4aed

    ld a, $29
    call Call_010_4b14
    ld [hl], $01
    ld a, $22
    call Call_010_4b14
    ld de, $d400
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a

jr_010_4aed:
    pop af
    ret


Call_010_4aef:
    ld a, [$d329]
    cp $0d
    jr nz, jr_010_4afb

    ld bc, $0430
    jr jr_010_4b0a

jr_010_4afb:
    ld a, [$d32a]
    cp $02
    jr c, jr_010_4b07

    ld bc, $0824
    jr jr_010_4b0a

jr_010_4b07:
    ld bc, $0332

jr_010_4b0a:
    ld a, b
    push bc
    rst $18

    db $5a, $04

    pop bc
    call Call_000_2ef0
    ret


Call_010_4b14:
    push de
    ld hl, $c880
    ld d, $00
    ld e, a
    ld a, [$c835]
    or a
    jr z, jr_010_4b25

    ld a, $40
    add e
    ld e, a

jr_010_4b25:
    add hl, de
    pop de
    ret


Call_010_4b28:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld c, $70
    call Call_000_03a7
    xor a
    ld [$d4de], a
    ld [$d4e3], a
    ld [$d4e4], a
    ld [$d4e7], a
    ld [$d4ed], a
    ld [$d4ef], a
    ld [$c2a6], a
    ld [$c0f4], a
    ld [$c832], a
    ld [$c82c], a
    ld [$c96c], a
    ld hl, $c878
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $caad
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld h, a
    ld l, a
    call Call_010_4bc7
    ld bc, $8000
    rst $18

    db $1e, $02

    ld bc, $ff01
    rst $18

    db $1e, $02

    ld a, $00
    ld [$c834], a
    rst $18

    db $2a, $02

    ld bc, $ffff
    rst $18

    db $4e, $0a

    call Call_000_0a61
    ld a, l
    ld [$c9fe], a
    ld a, h
    ld [$c9ff], a
    ret


    ld c, $08
    call Call_000_25a1
    call Call_000_2625
    rst $18

    db $0a, $01

    xor a
    ld [$c0f4], a
    ld a, $90
    ldh [rWY], a
    call Call_000_2683
    ld a, $09
    ld [$c834], a
    ld a, [$c2a6]
    or a
    jr z, jr_010_4bc3

    ld [$c46a], a
    ld a, $00
    ld [$c450], a
    ld a, $fa
    ld [$c441], a
    ret


jr_010_4bc3:
    rst $18

    db $50, $0a

    ret


Call_010_4bc7:
    push bc
    ld b, a
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ld [$c870], a
    ld a, l
    ld [$c871], a
    ld a, h
    ld [$c872], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop bc
    ret


    bit 7, a
    jr nz, jr_010_4bf9

    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d4ed
    ld [hl], $01
    inc hl
    pop af
    ld [hl], a
    ret


jr_010_4bf9:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d4ed], a
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld b, h
    ld c, l
    ld hl, $d4de
    ld [hl], $01
    inc hl
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d4e3
    ld [hl], $01
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d4e4
    ld [hl], $01
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d4e7
    ld [hl], $01
    inc hl
    ld [hl], e
    inc hl
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    xor a
    ld [hl+], a
    ld [hl], a
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d4e7
    ld [hl], $01
    inc hl
    ld [hl], e
    inc hl
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], d
    inc hl
    ld [hl], d
    ret


    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ld [$d4ef], a
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d443]
    cp $02
    jr nz, jr_010_4c8b

    rst $18
    ld b, $13
    ld a, $01
    ld [$d443], a
    call Call_000_2e3b
    rst $18
    ld [de], a
    inc de
    jr jr_010_4c97

jr_010_4c8b:
    cp $ff
    jr nz, jr_010_4c97

    rst $18
    inc b
    ld c, d
    ld a, $01
    rst $18
    nop
    inc de

jr_010_4c97:
    xor a
    ld [$d4dd], a
    rst $18

    db $04, $01

    rst $18

    db $0c, $11

    rst $18

    db $00, $05

    ld a, [$c82d]
    and $7f
    ld [$c82d], a
    ret


    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ld [$d4dd], a
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    call Call_000_2e3b
    ret


Call_010_4cc3:
    ld b, a
    ld a, [$c870]
    or a
    ret z

    ldh a, [$96]
    push af
    ld hl, $c871
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c870]
    call Call_000_0184
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_010_4cde:
    ld hl, $d409
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d40b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push de
    call Call_000_1a03
    ld a, b
    ld [$d414], a
    pop de
    ld h, d
    ld l, e
    call Call_000_0c8e
    pop de
    push hl
    ld h, d
    ld l, e
    call Call_000_0c8e
    pop de
    add hl, de
    call Call_000_0f04
    ld [$d413], a
    ret


Call_010_4d09:
    ld hl, $d407
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    or l
    ret nz

    ld hl, $d40d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    bit 7, h
    jr z, jr_010_4d23

    ld a, l
    cpl
    ld l, a
    ld a, h
    cpl
    ld h, a
    inc hl

jr_010_4d23:
    ld a, h
    or a
    ret nz

    ld a, l
    cp $20
    ret nc

    xor a
    ld [$d415], a
    ld hl, $d406
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $d40d
    ld [hl+], a
    ld [hl], a
    ld hl, $d489
    ld a, [hl]
    or a
    jr z, jr_010_4d44

    ld [hl], $00
    rst $08
    ld b, b

jr_010_4d44:
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d415]
    or a
    jr nz, jr_010_4d56

    call Call_010_4d86
    jr jr_010_4d5c

jr_010_4d56:
    call Call_010_4ee0
    call Call_010_4d09

jr_010_4d5c:
    call Call_010_527c
    rst $18

    db $1c, $08

    ldh a, [$94]
    and $02
    jr z, jr_010_4d6b

    ld [$d360], a

jr_010_4d6b:
    call Call_010_7077
    ld hl, $d407
    ld de, $caab
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld hl, $d407
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d4c1
    ld [hl], e
    inc hl
    ld [hl], d
    ret


Call_010_4d86:
    call Call_010_4cde
    ld hl, $d40f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d413]
    call Call_000_0bce
    ld a, $40
    call Call_000_0bce
    ld a, [$d414]
    add $40
    ld b, a
    ld c, $00
    call Call_000_11ac
    push hl
    ld hl, $d40b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$d40b], a
    ld a, h
    ld [$d40c], a
    pop de
    ld hl, $d409
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$d409], a
    ld a, h
    ld [$d40a], a
    ld hl, $d40f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $fc
    call Call_000_0bce
    ld a, l
    ld [$d40f], a
    ld a, h
    ld [$d410], a
    ld hl, $d411
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d413]
    call Call_000_0bec
    ld a, $40
    call Call_000_0bce
    ld a, [$d414]
    ld b, a
    ld c, $00
    call Call_000_11ba
    push hl
    ld hl, $d40b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$d40b], a
    ld a, h
    ld [$d40c], a
    pop de
    ld hl, $d409
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$d409], a
    ld a, h
    ld [$d40a], a
    ld hl, $d411
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $fc
    call Call_000_0bce
    ld a, l
    ld [$d411], a
    ld a, h
    ld [$d412], a
    call Call_010_66db
    or a
    jr nz, jr_010_4e32

    xor a
    ld h, a
    ld l, a
    ld d, a
    ld e, a
    jr jr_010_4e35

jr_010_4e32:
    call Call_000_11ba

jr_010_4e35:
    push hl
    push de
    call Call_010_67e4
    inc hl
    ld c, [hl]
    pop de
    pop hl
    ld a, b
    cp $03
    jr nz, jr_010_4e5a

    rst $08
    ld d, c
    ld hl, $d404
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    rst $18
    inc [hl]
    ld [de], a
    rst $18
    ld [hl-], a
    ld [de], a
    jp $521c


jr_010_4e5a:
    cp $06
    jr nz, jr_010_4e61

    call Call_010_4e98

jr_010_4e61:
    push de
    push hl
    ld hl, $d409
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    add hl, de
    ld a, c
    call Call_000_0bce
    ld d, h
    ld e, l
    ld hl, $d409
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $d400
    call Call_010_52da
    ld hl, $d40b
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    add hl, de
    ld a, c
    call Call_000_0bce
    ld d, h
    ld e, l
    ld hl, $d40b
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $d403
    call Call_010_52da
    ret


Call_010_4e98:
    push hl
    push de
    ld hl, $d40b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    bit 7, h
    jr z, jr_010_4ea7

    call Call_000_0c60

jr_010_4ea7:
    ld a, h
    or a
    jr nz, jr_010_4edd

    ld d, h
    ld e, l
    ld hl, $d409
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    bit 7, h
    jr z, jr_010_4eba

    call Call_000_0c60

jr_010_4eba:
    ld a, h
    or a
    jr nz, jr_010_4edd

    ld a, l
    call Call_000_08b9
    push hl
    ld h, d
    ld l, e
    ld a, l
    call Call_000_08b9
    pop de
    add hl, de
    call Call_000_0f04
    ld b, a
    pop hl
    call Call_000_0bce
    pop de
    push hl
    ld h, d
    ld l, e
    ld a, b
    call Call_000_0bce
    pop de
    ret


jr_010_4edd:
    pop de
    pop hl
    ret


Call_010_4ee0:
    call Call_010_4cde
    ld hl, $d40f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d413]
    call Call_000_0bce
    ld a, $1c
    call Call_000_0bce
    ld a, [$d414]
    add $40
    ld b, a
    ld c, $00
    call Call_000_11ac
    push hl
    ld hl, $d40b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$d40b], a
    ld a, h
    ld [$d40c], a
    pop de
    ld hl, $d409
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$d409], a
    ld a, h
    ld [$d40a], a
    call Call_010_52ee
    ld a, [$d414]
    sub b
    add $80
    ld b, a
    ld c, $00
    call Call_000_11ba
    ld a, [$d413]
    ld d, a
    ld e, $00
    add hl, de
    push hl
    ld hl, $d411
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    call Call_000_0c8e
    ld a, $1c
    call Call_000_0bce
    ld a, [$d40d]
    ld e, a
    ld a, [$d40e]
    ld d, a
    add hl, de
    ld de, $ffe0
    add hl, de
    ld a, l
    ld [$d40d], a
    ld a, h
    ld [$d40e], a
    ld hl, $d411
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    xor a
    sub l
    ld c, a
    sbc a
    sub h
    ld b, a
    add a
    sbc a
    sla c
    jr nz, jr_010_4f73

    rl b
    rla
    ld c, b
    ld b, a
    jr jr_010_4f7b

jr_010_4f73:
    rl b
    rla
    ld c, b
    ld b, a
    jr c, jr_010_4f7b

    inc bc

jr_010_4f7b:
    add hl, bc
    ld a, l
    ld [$d411], a
    ld a, h
    ld [$d412], a
    call Call_010_52ee
    call Call_000_11ba
    push de
    push hl
    ld hl, $d409
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    push de
    call Call_000_08ac
    call Call_010_5268
    pop hl
    add hl, de
    ld a, l
    ld [$d409], a
    ld a, h
    ld [$d40a], a
    ld d, h
    ld e, l
    ld hl, $d400
    call Call_010_52da
    ld hl, $d40b
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    push de
    call Call_000_08ac
    call Call_010_5268
    pop hl
    add hl, de
    ld a, l
    ld [$d40b], a
    ld a, h
    ld [$d40c], a
    ld d, h
    ld e, l
    ld hl, $d403
    call Call_010_52da
    ld hl, $d40d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_010_5268
    pop hl
    call Call_000_08ac
    ld a, l
    ld [$d40d], a
    ld a, h
    ld [$d40e], a
    ld d, h
    ld e, l
    ld hl, $d406
    call Call_010_52da
    ld a, [$d408]
    bit 7, a
    jp z, Jump_010_5213

    ld hl, $d489
    ld a, [hl]
    or a
    jr z, jr_010_500d

    ld [hl], $00
    ld hl, $d401
    ld de, $d48a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    inc hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a

jr_010_500d:
    ld a, $01
    ld [$d331], a
    call Call_010_67e4
    ld a, [hl+]
    ld [$d448], a
    inc hl
    ld a, [hl]
    ld [$d449], a
    ld a, b
    rst $08

    db $49

    cp $03
    jr nz, jr_010_5068

    rst $08
    ld d, c
    ld hl, $d404
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    rst $18
    inc [hl]
    ld [de], a
    rst $18
    ld [hl-], a
    ld [de], a
    ld a, [$d413]
    cp $05
    jp c, Jump_010_5060

    push af
    ld hl, $d40d
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    call Call_000_0c67
    pop af
    ld h, a
    ld l, $00
    call Call_000_1a03
    ld a, b
    cp $28
    jp c, Jump_010_5060

    ld hl, $d48e
    set 0, [hl]
    jp Jump_010_50a5


Jump_010_5060:
    ld hl, $d48e
    res 0, [hl]
    jp $521c


jr_010_5068:
    cp $02
    jr z, jr_010_5070

    cp $0d
    jr nz, jr_010_50a5

jr_010_5070:
    ld a, $15
    call Call_010_4b14
    set 0, [hl]
    ld hl, $d40d
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    call Call_000_0c67
    ld a, [$d413]
    ld h, a
    ld l, $00
    call Call_000_1a03
    ld a, $3f
    call Call_010_4b14
    ld a, b
    cp $14
    jr nc, jr_010_50a5

    ld d, $01
    cp $0e
    jp nc, Jump_010_509b

    inc d

Jump_010_509b:
    ld a, d
    ld [hl], a
    ld [$d446], a
    rst $08
    ld c, e
    jp $521c


Jump_010_50a5:
jr_010_50a5:
    ld hl, $d406
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d448]
    call Call_000_0bce
    ld a, l
    cpl
    add $01
    ld e, a
    ld a, h
    sbc $00
    cpl
    ld d, a
    ld hl, $d406
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ld [hl], $00
    ld hl, $d40d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d448]
    call Call_000_0bce
    ld a, l
    cpl
    add $01
    ld e, a
    ld a, h
    sbc $00
    cpl
    ld d, a
    ld hl, $d40d
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $d409
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d40b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push de
    call Call_000_1a03
    ld a, b
    ld [$d414], a
    pop de
    ld h, d
    ld l, e
    call Call_000_0c8e
    pop de
    push hl
    ld h, d
    ld l, e
    call Call_000_0c8e
    pop de
    add hl, de
    call Call_000_0f04
    ld [$d413], a
    ld a, [$d443]
    or a
    jp nz, Jump_010_5179

    call Call_010_66db
    or a
    jp z, Jump_010_5179

    ld a, b
    and $f0
    ld [$d44a], a
    ld hl, $ffe0
    call Call_000_0b31
    push de
    push hl
    ld hl, $d40d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $80
    call Call_000_0bce
    ld a, l
    ld [$d40d], a
    ld a, h
    ld [$d40e], a
    pop hl
    ld a, $dd
    call Call_000_0bce
    ld a, [$d44a]
    ld b, a
    ld c, $00
    call Call_000_11ba
    push de
    push hl
    ld hl, $d40b
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d409
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop bc
    add hl, bc
    pop bc
    ld a, e
    add c
    ld e, a
    ld a, d
    adc b
    ld d, a
    pop bc
    add hl, bc
    pop bc
    ld a, e
    add c
    ld e, a
    ld a, d
    adc b
    ld d, a
    ld a, l
    ld [$d409], a
    ld a, h
    ld [$d40a], a
    ld a, e
    ld [$d40b], a
    ld a, d
    ld [$d40c], a

Jump_010_5179:
    ld hl, $d409
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d40b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push de
    ld hl, $d40f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d413]
    call Call_000_0bce
    ld a, $40
    call Call_000_0bce
    ld a, [$d414]
    add $40
    ld b, a
    ld c, $00
    call Call_000_11ac
    push de
    push hl
    ld hl, $d411
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $40
    call Call_000_0bec
    ld a, [$d414]
    add $80
    ld b, a
    ld c, $00
    call Call_000_11ba
    pop bc
    add hl, bc
    pop bc
    ld a, e
    add c
    ld e, a
    ld a, d
    adc b
    ld d, a
    pop bc
    add hl, bc
    pop bc
    ld a, e
    add c
    ld e, a
    ld a, d
    adc b
    ld d, a
    push de
    ld a, [$d449]
    call Call_000_0bce
    ld a, l
    ld [$d409], a
    ld a, h
    ld [$d40a], a
    pop hl
    ld a, [$d449]
    call Call_000_0bce
    ld a, l
    ld [$d40b], a
    ld a, h
    ld [$d40c], a
    ld hl, $d411
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d448]
    call Call_000_0bce
    ld a, l
    ld [$d411], a
    ld a, h
    ld [$d412], a
    ld hl, $d40f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d448]
    call Call_000_0bce
    ld a, l
    ld [$d40f], a
    ld a, h
    ld [$d410], a

Jump_010_5213:
    ret


    dec d
    ld c, $00
    ld a, [c]
    db $eb
    ld a, [c]
    nop
    ld c, $af
    ld hl, $d409
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $d406
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $01
    ld [$d331], a
    ld de, $d401
    ld hl, $d4cf
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld [hl], $c8
    ret


    bit 7, h
    jr z, jr_010_5259

    push hl
    ld a, c
    call Call_000_0bce
    ld d, h
    ld e, l
    pop hl
    ld a, d
    or e
    ret nz

    ld de, $ffff
    ret


jr_010_5259:
    push hl
    ld a, c
    call Call_000_0bec
    ld d, h
    ld e, l
    pop hl
    ld a, d
    or e
    ret nz

    ld de, $0001
    ret


Call_010_5268:
    bit 7, h
    jr z, jr_010_5278

    ld de, $00ff
    add hl, de
    ld d, $00
    ld e, h
    ld a, h
    or a
    ret z

    dec d
    ret


jr_010_5278:
    ld d, $00
    ld e, h
    ret


Call_010_527c:
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
    jr z, jr_010_52b9

    cp $04
    jp z, Jump_010_52b9

    ld a, [$d442]
    ld b, a
    ld a, d
    sub b
    ld d, a
    ld a, [$d441]
    ld b, a
    ld a, h
    sub b
    ld h, a
    ld a, h
    cp $05
    ret nc

    ld a, d
    cp $04
    ret nc

    sla l
    rl h
    sla l
    rl h
    sla e
    rl d
    sla e
    rl d

Jump_010_52b9:
jr_010_52b9:
    call Call_010_6536
    cp $03
    ret z

    cp $07
    ret z

Call_010_52c2:
    ld hl, $d400
    ld de, $d51d
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ret


Call_010_52da:
    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl+], a
    bit 7, d
    jr nz, jr_010_52e9

    ld a, [hl]
    adc $00
    ld [hl], a
    ret


jr_010_52e9:
    ld a, [hl]
    adc $ff
    ld [hl], a
    ret


Call_010_52ee:
    ld hl, $d406
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    jr nz, jr_010_52fe

    ld hl, $0000
    ld bc, $0000
    ret


jr_010_52fe:
    ld a, [$c815]
    and $1f
    add a
    ld d, $00
    ld e, a
    ld hl, $5315
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c816]
    ld b, a
    ld c, $00
    ret


    nop
    nop
    ld b, e
    nop
    add [hl]
    nop
    ret z

    nop
    dec bc
    db $01

    db $4e, $01

    sub c
    ld bc, $01d3
    ld d, $02
    ld e, c
    ld [bc], a
    sbc h
    ld [bc], a

    db $de, $02

    ld hl, $6403
    inc bc
    and a
    inc bc
    jp hl


    inc bc
    inc l
    inc b
    ld l, a
    inc b
    or d
    inc b
    push af
    inc b
    push af
    inc b
    push af
    inc b
    push af
    inc b
    push af
    inc b
    push af
    inc b
    push af
    inc b
    push af
    inc b
    push af
    inc b
    push af
    inc b
    push af
    inc b
    push af
    inc b
    push af
    inc b

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    call Call_010_4cde
    ld hl, $d40f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d413]
    call Call_000_0bce
    ld a, $1c
    call Call_000_0bce
    ld a, [$d414]
    add $40
    ld b, a
    ld c, $00
    call Call_000_11ac
    push hl
    ld hl, $d37e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$d37e], a
    ld a, h
    ld [$d37f], a
    pop de
    ld hl, $d37c
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$d37c], a
    ld a, h
    ld [$d37d], a
    call Call_010_52ee
    ld a, [$d414]
    sub b
    add $80
    ld b, a
    ld c, $00
    call Call_000_11ba
    ld a, [$d413]
    ld d, a
    ld e, $00
    add hl, de
    push hl
    ld hl, $d411
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    call Call_000_0c8e
    ld a, $1c
    call Call_000_0bce
    ld a, [$d380]
    ld e, a
    ld a, [$d381]
    ld d, a
    add hl, de
    ld de, $ffe0
    add hl, de
    ld a, l
    ld [$d380], a
    ld a, h
    ld [$d381], a
    call Call_010_52ee
    call Call_000_11ba
    push de
    push hl
    ld hl, $d37c
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    push de
    call Call_000_08ac
    call Call_010_5268
    pop hl
    add hl, de
    ld a, l
    ld [$d37c], a
    ld a, h
    ld [$d37d], a
    ld d, h
    ld e, l
    ld hl, $d373
    call Call_010_52da
    ld hl, $d37e
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    push de
    call Call_000_08ac
    call Call_010_5268
    pop hl
    add hl, de
    ld a, l
    ld [$d37e], a
    ld a, h
    ld [$d37f], a
    ld d, h
    ld e, l
    ld hl, $d376
    call Call_010_52da
    ld hl, $d380
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    call Call_010_5268
    pop hl
    call Call_000_08ac
    ld a, l
    ld [$d380], a
    ld a, h
    ld [$d381], a
    ld d, h
    ld e, l
    ld hl, $d379
    call Call_010_52da
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    call Call_010_5518
    ld hl, $d418
    ld de, $d51a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    call Call_010_5eef
    ld hl, $d41c
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d418
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$d418], a
    ld a, h
    ld [$d419], a
    ld hl, $d450
    ld a, [hl]
    ld [hl], $3c
    push af
    ld hl, $d44f
    ld a, [hl]
    ld [hl], $00
    push af
    call Call_010_6cdb
    xor a
    ld [$d48e], a
    pop af
    ld [$d44f], a
    pop af
    ld [$d450], a
    push hl
    ld hl, $d416
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    call Call_010_6134
    ld a, l
    ld [$d416], a
    ld a, h
    ld [$d417], a
    ld hl, $d411
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d44c]
    ld d, $00
    ld e, a
    bit 7, a
    jr nz, jr_010_54a9

    inc d

jr_010_54a9:
    call Call_010_6134
    ld hl, $d40f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, [$d44b]
    cpl
    inc a
    ld h, $00
    ld l, a
    bit 7, a
    jr z, jr_010_54bf

    dec h

jr_010_54bf:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld a, l
    ld [$d40f], a
    ld a, h
    ld [$d410], a
    ld hl, $d41a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $d416
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_11ba
    ld a, e
    ld [$d380], a
    ld a, d
    ld [$d381], a
    ld a, [$d418]
    ld c, a
    ld a, [$d419]
    ld b, a
    call Call_000_11ba
    ld a, l
    ld [$d37c], a
    ld a, h
    ld [$d37d], a
    ld a, e
    ld [$d37e], a
    ld a, d
    ld [$d37f], a
    ld hl, $d51a
    ld de, $d418
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ret


Call_010_550b:
    ld hl, $d400
    ld de, $d514
    ld bc, $0006
    call Call_000_03d3
    ret


Call_010_5518:
    ld hl, $d514
    ld de, $d373
    ld bc, $0006
    call Call_000_03d3
    xor a
    ld h, d
    ld l, e
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $d37c
    ld bc, $0006
    call Call_000_039f
    ret


Call_010_5534:
    ld a, [$d329]
    cp $0d
    ret z

    call Call_010_6b1f
    bit 7, a
    jr z, jr_010_5543

    cpl
    inc a

jr_010_5543:
    cp $09
    ret nz

    rst $08
    ld e, a
    ret


Call_010_5549:
    ldh a, [$9e]
    cp $02
    ret c

    ld hl, $d426
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld de, $0004
    call Call_000_22bc
    ld hl, $d428
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld de, $0005
    call Call_000_22bc
    call Call_010_621e
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    ld de, $0006
    call Call_000_22bc
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ldh a, [$90]
    ld [$d44d], a

Call_010_55b7:
    rrca
    rrca
    rrca
    and $1e
    ld hl, $55ce
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld [$d44b], a
    ld a, [hl+]
    ld [$d44c], a
    ret


    db $00, $00

    stop
    ldh a, [rP1]
    nop
    nop
    nop
    ldh [$0c], a
    ld [$eaf4], a
    nop
    ldh [rP1], a
    jr nz, @+$0e

    ld d, $f4
    ld d, $00
    jr nz, jr_010_55e7

jr_010_55e7:
    nop
    stop
    ldh a, [rP1]

    db $00, $00

    ld a, [$d44e]
    cp $3c
    jr c, jr_010_55fb

    push bc
    ld b, a
    ld a, $78
    sub b
    pop bc

jr_010_55fb:
    ld [$d44f], a
    ret


Call_010_55ff:
    xor a
    ld [$d44e], a
    ld [$d44f], a
    ld [$d451], a
    ld [$d452], a
    ld a, $80
    ld [$d450], a
    ld a, $f0
    ld [$d44d], a
    ret


Call_010_5617:
    ld c, $00
    ld a, [$d442]
    ld b, a
    ld a, [$d405]
    sub b
    cp $04
    ret nc

    ld a, [$d441]
    ld b, a
    ld a, [$d402]
    sub b
    cp $05
    ret nc

    ld c, $01
    ret


Call_010_5632:
    call Call_010_5617
    ld a, [$d443]
    cp c
    jr z, jr_010_563f

    ld a, c
    rst $18

    db $00, $13

jr_010_563f:
    call Call_010_6145
    ret


Jump_010_5643:
    xor a
    ld [$d44d], a
    ld a, $01
    rst $18

    db $0e, $11

    rst $08

    db $90

    ld hl, $d44e
    ld c, $3c

jr_010_5653:
    inc [hl]
    ld a, [hl]
    ld [$d44f], a
    call Call_000_2e3b
    ld a, [$d4d8]
    cp [hl]
    jr nz, jr_010_566d

    rst $08

    db $90

    ld [$d450], a
    ld a, [$d329]
    cp $0d
    jr z, jr_010_56a9

jr_010_566d:
    dec c
    jr nz, jr_010_5653

    ld a, [$d450]
    cp $3c
    jr nz, jr_010_567e

    ld a, $01
    ld [$d452], a
    rst $08

    db $5e

jr_010_567e:
    ld a, [$d4da]
    ld [$d44d], a
    push hl
    call Call_010_55b7
    pop hl

jr_010_5689:
    dec [hl]
    ld a, [hl]
    ld [$d44f], a
    call Call_000_2e3b
    ld a, [$d4d9]
    cp [hl]
    jr nz, jr_010_5689

    rst $08

    db $90

    ld a, [$d44f]
    or a
    jr nz, jr_010_56a6

    ld a, $01
    ld [$d451], a
    rst $08

    db $5e

jr_010_56a6:
    call Call_010_5534

jr_010_56a9:
    ld a, $02
    rst $18

    db $0e, $11

    xor a
    ret


Call_010_56b0:
    xor a
    ld hl, $d460
    ld [hl+], a
    ld [hl], a

Jump_010_56b6:
    call Call_010_55ff
    call Call_000_2e3b
    ld a, [$d4d7]
    or a
    jp nz, Jump_010_5643

    xor a
    ld [$d453], a
    ld a, $01
    ld [$d451], a

Jump_010_56cc:
    call Call_010_6907
    ld [$d321], a
    rst $18

    db $18, $12

    rst $18

    db $08, $12

    call Call_000_2e3b
    rst $18

    db $36, $12

    call Call_000_2e3b
    rst $18

    db $06, $12

    call Call_010_5eef

Jump_010_56e7:
    xor a
    ld [$d480], a
    inc a
    ld [$d382], a
    call Call_010_5ee2
    push hl
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    push hl
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    ld c, l
    ld b, h
    ld hl, $d426
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d

Jump_010_5710:
    call Call_000_2e3b
    ld a, [$c0f4]
    or a
    jr z, jr_010_5723

    ld hl, $c0f6
    ld a, [hl+]
    or [hl]
    jr nz, jr_010_5723

    jp Jump_010_58ae


jr_010_5723:
    ldh a, [$94]
    bit 0, a
    jp nz, Jump_010_57c0

    bit 1, a
    jp nz, Jump_010_58ae

    ld a, [$d443]
    cp $04
    jp nz, Jump_010_5710

    ldh a, [$91]
    bit 6, a
    jr z, jr_010_5755

    ld a, [$d4cd]
    cp $06
    jp z, Jump_010_5710

    ld a, [$d329]
    or a
    jp z, Jump_010_5710

    dec a
    ld [$d329], a
    rst $08
    adc h
    jp Jump_010_56cc


jr_010_5755:
    bit 7, a
    jr z, jr_010_5772

    ld a, [$d4cd]
    cp $06
    jp z, Jump_010_5710

    ld a, [$d329]
    cp $0c
    jp z, Jump_010_5710

    inc a
    ld [$d329], a
    rst $08
    adc h
    jp Jump_010_56cc


jr_010_5772:
    ldh a, [$90]
    bit 5, a
    jr z, jr_010_5789

    ld bc, $0000
    ld a, [$d461]
    sub $f8
    bit 7, a
    jr nz, jr_010_579c

    ld bc, $ff80
    jr jr_010_579c

jr_010_5789:
    bit 4, a
    jr z, jr_010_57bd

    ld bc, $0000
    ld a, [$d461]
    sub $08
    bit 7, a
    jr z, jr_010_579c

    ld bc, $0080

jr_010_579c:
    ld hl, $d418
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld [$d418], a
    ld a, h
    ld [$d419], a
    ld hl, $d460
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld [$d460], a
    ld a, h
    ld [$d461], a
    jp Jump_010_56e7


jr_010_57bd:
    jp Jump_010_5710


Jump_010_57c0:
    rst $08

    db $90

    xor a
    ld [$d44d], a
    ld [$d451], a
    ld a, [$d329]
    cp $0d
    jr z, jr_010_57d8

    ld a, $01
    ld hl, $55ac
    call Call_000_23e8

jr_010_57d8:
    ld a, $01
    rst $18

    db $0e, $11

    ld bc, $0000

jr_010_57e0:
    call Call_000_2e3b
    ld a, [$d44e]
    cp $3c
    jr c, jr_010_57f0

    push bc
    ld b, a
    ld a, $78
    sub b
    pop bc

jr_010_57f0:
    ld [$d44f], a
    ld a, [$d44e]
    cp $78
    jr c, jr_010_57fe

    ld a, b
    or a
    jr z, jr_010_5861

jr_010_57fe:
    ld a, [$d44e]
    and $01
    jr nz, jr_010_580f

    ldh a, [$94]
    ld c, a
    ld a, [$d453]
    or c
    ld c, a
    jr jr_010_5816

jr_010_580f:
    ldh a, [$94]
    ld [$d453], a
    ld c, $00

jr_010_5816:
    bit 1, c
    jr z, jr_010_581e

    ld a, b
    or a
    jr z, jr_010_5861

jr_010_581e:
    bit 0, c
    jr z, jr_010_5852

    rst $08

    db $90

    ld c, $00
    ld a, b
    or a
    jr nz, jr_010_587a

    ld a, [$d44f]
    ld [$d450], a
    inc b
    ld a, [$d329]
    cp $0d
    jr nz, jr_010_5844

    ld a, [$d32b]
    ld [$d32a], a
    xor a
    ld a, [$d44f]
    jr jr_010_588d

jr_010_5844:
    ld a, [$d450]
    cp $3c
    jr nz, jr_010_5852

    ld a, $01
    ld [$d452], a
    rst $08

    db $5e

jr_010_5852:
    ld a, [$d44e]
    inc a
    ld [$d44e], a
    cp $8a
    jr nz, jr_010_57e0

    ld a, b
    or a
    jr nz, jr_010_587a

jr_010_5861:
    rst $08

    db $5f

    ld a, $f0
    ld [$d44d], a
    ld hl, $55ac
    call Call_000_2449
    ld a, $03
    rst $18

    db $0e, $11

    call Call_000_2ed5

    db $14

    jp Jump_010_56b6


jr_010_587a:
    ld a, $02
    rst $18

    db $0e, $11

    ld a, [$d44f]
    cp $00
    jr nz, jr_010_588d

    ld a, $01
    ld [$d451], a
    rst $08

    db $5e

jr_010_588d:
    ld hl, $55ac
    call Call_000_2449
    call Call_010_5534
    ldh a, [$9e]
    or a
    jr z, jr_010_58ab

    ldh a, [$90]
    bit 2, a
    jr z, jr_010_58ab

    ld a, $3c
    ld [$d450], a
    ld a, $00
    ld [$d44f], a

jr_010_58ab:
    ld a, $00
    ret


Jump_010_58ae:
    ld a, $f0
    ld [$d44d], a
    xor a
    ld [$d451], a
    ld hl, $55ac
    call Call_000_2449
    ld a, $ff
    ret


    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld b, $06
    ld [$0a08], sp
    ld a, [bc]
    inc c
    inc c
    ld c, $0e
    db $10
    db $10
    ld [de], a
    ld [de], a
    inc d
    inc d
    ld d, $16
    jr jr_010_58f1

    ld a, [de]
    ld a, [de]
    inc e
    inc e
    ld e, $1e
    jr nz, jr_010_5901

    ld [hl+], a
    ld [hl+], a
    inc h
    inc h
    ld h, $26
    jr z, jr_010_5911

    ld a, [hl+]
    ld a, [hl+]
    inc l
    inc l
    ld l, $2e
    jr nc, jr_010_5921

jr_010_58f1:
    ld [hl-], a
    ld [hl-], a
    inc [hl]
    inc [hl]
    ld [hl], $36
    jr c, @+$3a

    ld a, [hl-]
    ld a, [hl-]
    inc a
    inc a
    ld a, [hl-]
    ld a, [hl-]
    jr c, jr_010_5939

jr_010_5901:
    ld [hl], $36
    inc [hl]
    inc [hl]
    ld [hl-], a
    ld [hl-], a
    jr nc, jr_010_5939

    ld l, $2e
    inc l
    inc l
    ld a, [hl+]
    ld a, [hl+]
    jr z, jr_010_5939

jr_010_5911:
    ld h, $26
    inc h
    inc h
    ld [hl+], a
    ld [hl+], a
    jr nz, jr_010_5939

    ld e, $1e
    inc e
    inc e
    ld a, [de]
    ld a, [de]
    jr jr_010_5939

jr_010_5921:
    ld d, $16
    inc d
    inc d
    ld [de], a
    ld [de], a
    db $10
    db $10
    ld c, $0e
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld [$0608], sp
    ld b, $04
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop

jr_010_5939:
    cp $fe
    db $fc
    db $fc
    ld a, [$f8fa]
    ld hl, sp-$0a
    or $3e
    dec l
    ld [$d485], a
    rst $18
    db $10
    dec sp
    rst $18
    ld l, $02
    rst $18
    ld c, $3b
    ld a, [$d4db]
    or a
    ret nz

    call Call_010_6907
    ld [$d321], a
    rst $18
    jr jr_010_5971

    rst $18
    ld [$df12], sp
    ld d, b
    ld [de], a
    call Call_000_2e3b
    rst $18
    ld c, $12
    rst $18
    ld b, $12
    call Call_010_5eef

jr_010_5971:
    xor a
    ret


Jump_010_5973:
    rst $18
    jr z, jr_010_5978

    jr jr_010_5999

Jump_010_5978:
jr_010_5978:
    rst $18

    db $00, $3c

    ld [$d329], a
    ld a, d
    ld [$d32a], a
    ld [$d32b], a
    ld a, c
    ld [$d418], a
    ld a, b
    ld [$d419], a
    ld a, l
    ld [$d4d9], a
    ld a, h
    ld [$d4d8], a
    ld a, e
    ld [$d4da], a

jr_010_5999:
    ld a, $f0
    ld [$d44d], a
    ld a, $02
    ld [$d438], a
    call Call_000_2e3b
    call Call_010_6907
    ld [$d321], a
    call Call_010_5eef
    ld hl, $d426
    ld de, $d42a
    ld bc, $0004
    call Call_000_03d3
    call Call_010_5ee2
    ld bc, $0103

Jump_010_59c1:
    push de
    push hl
    push hl
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    push hl
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    push de
    ld a, [$d42a]
    ld e, a
    ld a, [$d42b]
    ld d, a
    push de
    call Call_000_08ac
    ld a, b
    call Call_000_0bb5
    sra h
    rr l
    sra h
    rr l
    pop de
    add hl, de
    ld a, l
    ld [$d426], a
    ld a, h
    ld [$d427], a
    pop hl
    ld a, [$d42c]
    ld e, a
    ld a, [$d42d]
    ld d, a
    push de
    call Call_000_08ac
    ld a, b
    call Call_000_0bb5
    sra h
    rr l
    sra h
    rr l
    pop de
    add hl, de
    ld a, l
    ld [$d428], a
    ld a, h
    ld [$d429], a
    call Call_010_5b81
    call Call_000_2e3b
    pop hl
    pop de
    inc b
    dec c
    jp nz, Jump_010_59c1

    call Call_010_6145
    rst $18

    db $06, $40

    ld a, l
    ld [$d428], a
    ld a, h
    ld [$d429], a
    call Call_000_2ed5

    db $3c

    xor a
    ret


    xor a
    ld [$d36b], a
    call Call_010_5ee2
    push hl
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    push hl
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, [$d443]
    cp $01
    jp z, Jump_010_5aef

    cp $02
    jp z, Jump_010_5aef

    push hl
    ld a, [$c329]
    ld h, a
    ld l, $00
    ld de, $0080
    add hl, de
    ld b, h
    ld c, l
    pop de
    push de
    call Call_000_08ac
    bit 7, h
    pop hl
    jr nz, jr_010_5a81

    ld hl, $d36b
    set 1, [hl]
    ld h, b
    ld l, c
    jr jr_010_5a9f

jr_010_5a81:
    push hl
    ld a, [$c32b]
    ld h, a
    ld l, $00
    ld de, $ff80
    add hl, de
    ld b, h
    ld c, l
    pop de
    push de
    call Call_000_08ac
    bit 7, h
    pop hl
    jr z, jr_010_5a9f

    ld hl, $d36b
    set 0, [hl]
    ld h, b
    ld l, c

jr_010_5a9f:
    ld a, l
    ld [$d426], a
    ld a, h
    ld [$d427], a
    pop hl
    push hl
    ld a, [$c32a]
    ld h, a
    ld l, $00
    ld de, $0080
    add hl, de
    ld b, h
    ld c, l
    pop de
    push de
    call Call_000_08ac
    bit 7, h
    pop hl
    jr nz, jr_010_5ac8

    ld hl, $d36b
    set 3, [hl]
    ld h, b
    ld l, c
    jr jr_010_5ae6

jr_010_5ac8:
    push hl
    ld a, [$c32c]
    ld h, a
    ld l, $00
    ld de, $fd80
    add hl, de
    ld b, h
    ld c, l
    pop de
    push de
    call Call_000_08ac
    bit 7, h
    pop hl
    jr z, jr_010_5ae6

    ld hl, $d36b
    set 2, [hl]
    ld h, b
    ld l, c

jr_010_5ae6:
    ld a, l
    ld [$d428], a
    ld a, h
    ld [$d429], a
    ret


Jump_010_5aef:
    push hl
    ld a, [$d441]
    ld h, a
    ld l, $00
    ld de, $0020
    add hl, de
    ld b, h
    ld c, l
    pop de
    push de
    call Call_000_08ac
    bit 7, h
    pop hl
    jr nz, jr_010_5b0f

    ld hl, $d36b
    set 1, [hl]
    ld h, b
    ld l, c
    jr jr_010_5b2f

jr_010_5b0f:
    push hl
    ld a, [$d441]
    add $05
    ld h, a
    ld l, $00
    ld de, $ffe0
    add hl, de
    ld b, h
    ld c, l
    pop de
    push de
    call Call_000_08ac
    bit 7, h
    pop hl
    jr z, jr_010_5b2f

    ld hl, $d36b
    set 0, [hl]
    ld h, b
    ld l, c

jr_010_5b2f:
    ld a, l
    ld [$d426], a
    ld a, h
    ld [$d427], a
    pop hl
    push hl
    ld a, [$d442]
    ld h, a
    ld l, $00
    ld de, $0020
    add hl, de
    ld b, h
    ld c, l
    pop de
    push de
    call Call_000_08ac
    bit 7, h
    pop hl
    jr nz, jr_010_5b58

    ld hl, $d36b
    set 3, [hl]
    ld h, b
    ld l, c
    jr jr_010_5b78

jr_010_5b58:
    push hl
    ld a, [$d442]
    add $04
    ld h, a
    ld l, $00
    ld de, $ffe0
    add hl, de
    ld b, h
    ld c, l
    pop de
    push de
    call Call_000_08ac
    bit 7, h
    pop hl
    jr z, jr_010_5b78

    ld hl, $d36b
    set 2, [hl]
    ld h, b
    ld l, c

jr_010_5b78:
    ld a, l
    ld [$d428], a
    ld a, h
    ld [$d429], a
    ret


Call_010_5b81:
    push af
    push bc
    push de
    push hl
    ld a, c
    cp $01
    jr nz, jr_010_5b95

    rst $18

    db $18, $12

    rst $18

    db $08, $12

    rst $18

    db $50, $12

    jr jr_010_5ba1

jr_010_5b95:
    cp $02
    jr nz, jr_010_5b9e

    rst $18

    db $36, $12

    jr jr_010_5ba1

jr_010_5b9e:
    rst $18

    db $06, $12

jr_010_5ba1:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_010_5ba6:
    or a
    jr nz, jr_010_5c1f

    ld hl, $d401
    ld de, $d426
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    inc hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    xor a
    ld [$d36c], a
    ld a, [$d4e7]
    or a
    jr nz, jr_010_5bf9

    call Call_010_6406
    ld a, c
    ld [$d418], a
    ld a, b
    ld [$d419], a
    xor a
    ld hl, $d32a
    ld [hl+], a
    ld [hl], a
    call Call_010_62ad
    push hl
    ld de, $fbd5
    add hl, de
    bit 7, h
    pop hl
    jr nz, jr_010_5be7

    ld a, $02
    jr jr_010_5bf4

jr_010_5be7:
    ld de, $fec0
    add hl, de
    bit 7, h
    jr nz, jr_010_5bf3

    ld a, $01
    jr jr_010_5bf4

jr_010_5bf3:
    xor a

jr_010_5bf4:
    ld [$d32b], a
    jr jr_010_5c1d

jr_010_5bf9:
    ld a, [$d4e8]
    ld [$d329], a
    ld hl, $d4e9
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld a, c
    ld [$d418], a
    ld a, b
    ld [$d419], a
    ld a, [$d4eb]
    ld [$d32a], a
    ld a, [$d4ec]
    ld [$d32b], a
    xor a
    ld [$d4e7], a

jr_010_5c1d:
    rst $08

    db $60

jr_010_5c1f:
    ld a, [$d329]
    cp $0d
    jr nz, jr_010_5c2a

    xor a
    ld [$d32a], a

jr_010_5c2a:
    xor a
    ld [$d480], a
    ld [$d382], a
    ld a, $28
    call Call_010_4b14
    ld a, [hl]
    rst $18

    db $38, $12

    call Call_000_2e3b
    rst $18

    db $18, $12

    call Call_000_2e3b
    rst $18

    db $08, $12

    rst $18

    db $50, $12

    call Call_000_2e3b
    rst $18

    db $0e, $12

    call Call_000_2e3b
    xor a
    ld [$d513], a
    ld a, [$d4d7]
    cp $01
    jp z, Jump_010_5978

    cp $02
    jp z, Jump_010_5973

    cp $03
    jp z, $5943

    rst $18

    db $5e, $02

    ld a, $f0
    ld [$d44d], a
    ld hl, $d438
    ld a, [$d443]
    or a
    jr z, jr_010_5c7d

    ld [hl], $04
    jr jr_010_5c7f

jr_010_5c7d:
    ld [hl], $02

jr_010_5c7f:
    ld a, $01
    ld [$d4d4], a
    call Call_000_2e3b

Jump_010_5c87:
    call Call_010_6907
    ld [$d321], a
    call Call_010_5eef
    xor a
    ld [$d480], a
    ld hl, $d426
    ld de, $d42a
    ld bc, $0004
    call Call_000_03d3
    call Call_010_5ee2
    ld bc, $0103

Jump_010_5ca6:
    push de
    push hl
    push hl
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    push hl
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    push de
    ld a, [$d42a]
    ld e, a
    ld a, [$d42b]
    ld d, a
    push de
    call Call_000_08ac
    ld a, b
    call Call_000_0bb5
    sra h
    rr l
    sra h
    rr l
    pop de
    add hl, de
    ld a, l
    ld [$d426], a
    ld a, h
    ld [$d427], a
    pop hl
    ld a, [$d42c]
    ld e, a
    ld a, [$d42d]
    ld d, a
    push de
    call Call_000_08ac
    ld a, b
    call Call_000_0bb5
    sra h
    rr l
    sra h
    rr l
    pop de
    add hl, de
    ld a, l
    ld [$d428], a
    ld a, h
    ld [$d429], a
    call Call_010_5b81
    call Call_000_2e3b
    pop hl
    pop de
    inc b
    dec c
    jp nz, Jump_010_5ca6

Jump_010_5d0d:
    call Call_010_6145
    rst $18

    db $06, $40

    call Call_010_5549

Jump_010_5d16:
    call Call_000_2e3b
    rst $18

    db $5c, $02

    ld a, [$c0f4]
    or a
    jr z, jr_010_5d32

    ld hl, $c0f6
    ld a, [hl+]
    or [hl]
    jr nz, jr_010_5d32

    call Call_000_2ed5
    inc a
    ld a, $8f
    jp Jump_010_5eaf


jr_010_5d32:
    ld a, [$d438]
    cp $01
    jr nz, jr_010_5d46

    ldh a, [$90]
    bit 2, a
    jr nz, jr_010_5d46

    ld a, $02
    ld [$d438], a
    rst $08
    ld h, b

jr_010_5d46:
    ldh a, [$94]
    bit 0, a
    jp nz, Jump_010_5eaf

    bit 2, a
    jr z, jr_010_5d99

    ld a, [$d438]
    cp $02
    jr nz, jr_010_5d7f

    rst $08
    ld h, b
    ld a, $04
    ld [$d438], a
    call Call_000_2e3b
    ldh a, [$94]
    or a
    jr nz, jr_010_5d76

    rst $18
    ld a, [bc]
    ld de, $28b7
    ld a, [c]

jr_010_5d6d:
    call Call_000_2e3b
    ldh a, [$90]
    bit 2, a
    jr nz, jr_010_5d6d

jr_010_5d76:
    ld a, $01
    rst $18
    nop
    inc de
    rst $08
    ld h, c
    jr jr_010_5d8e

jr_010_5d7f:
    cp $04
    jr nz, jr_010_5d8e

    ld a, $01
    ld [$d438], a
    xor a
    rst $18
    nop
    inc de
    rst $08
    ld h, c

jr_010_5d8e:
    jp Jump_010_5d0d


    nop
    ld [bc], a
    inc b
    inc bc
    ld bc, $0000
    nop

jr_010_5d99:
    bit 3, a
    jr z, jr_010_5db7

    rst $18

    db $0e, $08

    bit 7, a
    jp z, Jump_010_5d16

    push af
    cp $81
    jr nz, jr_010_5db3

    rst $18
    ld [hl-], a
    ld [bc], a
    xor a
    ld [$d4d4], a
    pop af
    ret


jr_010_5db3:
    pop af
    jp Jump_010_5eaf


jr_010_5db7:
    bit 1, a
    jr z, jr_010_5e26

    ld a, [$d329]
    cp $0d
    jr z, jr_010_5e0e

    call Call_010_62ad
    ld de, $f860
    add hl, de
    bit 7, h
    jr nz, jr_010_5df6

    ld a, [$d32a]
    or a
    jr z, jr_010_5ddc

    xor a
    ld [$d32a], a
    rst $08

    db $8d

    jp Jump_010_5c87


jr_010_5ddc:
    ld a, $28
    call Call_010_4b14
    ld a, [hl]
    or a
    jr nz, jr_010_5dea

    rst $08
    ld d, h
    jp Jump_010_5c87


jr_010_5dea:
    ld hl, $d32a
    ld a, [hl]
    xor $01
    ld [hl], a
    rst $08

    db $8d

    jp Jump_010_5c87


jr_010_5df6:
    ld a, [$d32a]
    ld hl, $5e0a
    add l
    ld l, a
    jr nc, jr_010_5e01

    inc h

jr_010_5e01:
    ld a, [hl]
    ld [$d32a], a
    rst $08

    db $8d

    jp Jump_010_5c87


    db $03

    nop
    nop
    ld [bc], a

jr_010_5e0e:
    ld hl, $5e22
    ld a, [$d32b]
    add l
    ld l, a
    jr nc, jr_010_5e19

    inc h

jr_010_5e19:
    ld a, [hl]
    ld [$d32b], a
    rst $08

    db $8d

    jp Jump_010_5c87


    db $01

    ld [bc], a

    db $00

    nop

jr_010_5e26:
    ldh a, [$91]
    bit 6, a
    jr z, jr_010_5e44

    ld a, [$d4cd]
    cp $06
    jp z, Jump_010_5d16

    ld a, [$d329]
    or a
    jp z, Jump_010_5d16

    dec a
    ld [$d329], a
    rst $08

    db $8c

    jp Jump_010_5c87


jr_010_5e44:
    bit 7, a
    jr z, jr_010_5e61

    ld a, [$d4cd]
    cp $06
    jp z, Jump_010_5d16

    ld a, [$d329]
    cp $0d
    jp z, Jump_010_5d16

    inc a
    ld [$d329], a
    rst $08

    db $8c

    jp Jump_010_5c87


jr_010_5e61:
    ldh a, [$90]
    bit 5, a
    jr z, jr_010_5e89

    call Call_010_68b1
    rst $18

    db $20, $08

    call Call_010_5eb9
    dec bc
    ld a, c
    cpl
    ld c, a
    ld a, b
    cpl
    ld b, a
    ld hl, $d418
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld [$d418], a
    ld a, h
    ld [$d419], a
    jp Jump_010_5d0d


jr_010_5e89:
    bit 4, a
    jr z, jr_010_5ea8

    call Call_010_68b1
    rst $18

    db $20, $08

    call Call_010_5eb9
    ld hl, $d418
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld a, l
    ld [$d418], a
    ld a, h
    ld [$d419], a
    jp Jump_010_5d0d


jr_010_5ea8:
    xor a
    ld [$d486], a
    jp Jump_010_5d16


Jump_010_5eaf:
    push af
    rst $18

    db $60, $02

    xor a
    ld [$d4d4], a
    pop af
    ret


Call_010_5eb9:
    push hl
    push af
    ld h, b
    ld l, c
    ld a, [$d486]
    cp $40
    jr c, jr_010_5ec8

    add hl, bc
    add hl, bc
    jr jr_010_5ecf

jr_010_5ec8:
    add a
    add a
    call Call_000_0bec
    add hl, hl
    add hl, bc

jr_010_5ecf:
    srl h
    rr l
    ld b, h
    ld c, l
    ld hl, $d486
    ld a, [hl]
    cp $40
    jp nc, Jump_010_5edf

    inc [hl]

Jump_010_5edf:
    pop af
    pop hl
    ret


Call_010_5ee2:
    ld hl, $d418
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    call Call_010_68b1
    call Call_000_11ba
    ret


Call_010_5eef:
    ld a, [$d329]
    add a
    ld hl, $61a6
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld [$d411], a
    ld a, [hl+]
    ld [$d412], a
    ld a, [hl+]
    ld [$d416], a
    ld a, [hl+]
    ld [$d417], a
    ld a, [$d329]
    cp $0d
    jp z, Jump_010_5f63

    ld a, [$d4c8]
    ld l, a
    ld a, [$d329]
    rst $18

    db $12, $02

    ld a, l
    ld [$d41a], a
    ld a, h
    ld [$d41b], a
    ld hl, $d4c6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d4cc]
    ld b, a
    ld a, [$d329]
    rst $18

    db $10, $02

    call Call_010_6b03
    rst $18

    db $1e, $08

    ld a, c
    ld [$d41c], a
    ld a, b
    ld [$d41d], a
    call Call_010_6b03
    add $08
    and $0f
    add a
    ld h, $00
    ld l, a
    ld de, $5f74
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, hl
    ld a, l
    ld [$d40f], a
    ld a, h
    ld [$d410], a
    ret


Jump_010_5f63:
    xor a
    ld hl, $d41c
    ld [hl+], a
    ld [hl], a
    ld hl, $d41a
    ld [hl+], a
    ld [hl], a
    ld hl, $d40f
    ld [hl+], a
    ld [hl], a
    ret


    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a

    db $00, $01, $80, $00

    nop
    nop

    db $80, $ff

    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd

Call_010_5f94:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    call Call_010_52c2
    call Call_010_5eef
    ld hl, $d41c
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d418
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$d418], a
    ld a, h
    ld [$d419], a
    ld a, [$d4bf]
    or a
    jr z, jr_010_5fd7

    ld hl, $d4c6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d4d9]
    ld [$d44f], a
    ld a, [$d4d8]
    ld [$d450], a
    ld a, $00
    ld [$d44b], a
    ld [$d44c], a
    jr jr_010_5fda

jr_010_5fd7:
    call Call_010_6cdb

jr_010_5fda:
    push hl
    ld hl, $d416
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    call Call_010_6134
    ld a, [$d44c]
    or a
    jr z, jr_010_5ffe

    bit 7, a
    jr nz, jr_010_5ff6

    ld a, $f9
    call Call_000_0bec
    jr jr_010_5ffe

jr_010_5ff6:
    push hl
    ld a, $07
    call Call_000_0bec
    pop de
    add hl, de

jr_010_5ffe:
    ld a, l
    ld [$d416], a
    ld a, h
    ld [$d417], a
    ld a, [$d329]
    cp $0d
    jp z, Jump_010_6093

    call Call_010_6b1f
    ld b, a
    call Call_010_6c18
    ld hl, $d41a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, h
    cp $40
    jr c, jr_010_6024

    ld hl, $3f00

jr_010_6024:
    ld a, l
    ld [$d41a], a
    ld a, h
    ld [$d41b], a
    call Call_010_6c54
    ld hl, $d418
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$d418], a
    ld a, h
    ld [$d419], a
    call Call_010_6c9f
    ld hl, $d40f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$d40f], a
    ld a, h
    ld [$d410], a
    ld hl, $d411
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d44c]
    ld d, $00
    ld e, a
    bit 7, a
    jr nz, jr_010_6061

    inc d

jr_010_6061:
    call Call_010_6134
    ld a, [$d450]
    call Call_010_6865
    ld a, l
    ld [$d411], a
    ld a, h
    ld [$d412], a
    ld hl, $d40f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, [$d44b]
    cpl
    inc a
    ld h, $00
    ld l, a
    bit 7, a
    jr z, jr_010_6085

    dec h

jr_010_6085:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld a, l
    ld [$d40f], a
    ld a, h
    ld [$d410], a

Jump_010_6093:
    ld hl, $d41a
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $d416
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_11ba
    ld a, e
    ld [$d40d], a
    ld a, d
    ld [$d40e], a
    ld a, [$d418]
    ld c, a
    ld a, [$d419]
    ld b, a
    call Call_000_11ba
    ld a, l
    ld [$d409], a
    ld a, h
    ld [$d40a], a
    ld a, e
    ld [$d40b], a
    ld a, d
    ld [$d40c], a
    ld a, [$d329]
    cp $0d
    jr z, jr_010_60d0

    ld a, $01
    jr jr_010_60d1

jr_010_60d0:
    xor a

jr_010_60d1:
    ld [$d415], a
    ld [$d489], a
    ld hl, $d401
    ld de, $d48a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    inc hl
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld a, [$d329]
    cp $0d
    jr nz, jr_010_60f3

    rst $08

    db $48

    ret


jr_010_60f3:
    cp $07
    jr c, jr_010_6113

    ld a, [$d4cd]
    cp $02
    jr z, jr_010_610d

    cp $0d
    jr z, jr_010_610d

    cp $01
    jr z, jr_010_6110

    cp $0c
    jr z, jr_010_6110

    rst $08

    db $45

    ret


jr_010_610d:
    rst $08
    ld b, a
    ret


jr_010_6110:
    rst $08

    db $46

    ret


jr_010_6113:
    or a
    jr nz, jr_010_6131

    ld a, [$d32a]
    cp $01
    jr nz, jr_010_612e

    ld a, [$d44f]
    cp $00
    jr nz, jr_010_612e

    ld a, [$d450]
    cp $3c
    jr nz, jr_010_612e

    rst $08

    db $42

    ret


jr_010_612e:
    rst $08

    db $41

    ret


jr_010_6131:
    rst $08

    db $43

    ret


Call_010_6134:
    ld a, d
    or a
    jr nz, jr_010_613d

    ld a, e
    call Call_000_0bec
    ret


jr_010_613d:
    push hl
    ld a, e
    call Call_000_0bec
    pop de
    add hl, de
    ret


Call_010_6145:
    ld b, $c0
    ld hl, $d333
    bit 0, [hl]
    jr z, jr_010_6150

    ld b, $40

jr_010_6150:
    ld hl, $d418
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    add b
    ld b, a
    ld c, l
    ld a, [$d333]
    or a
    jr nz, jr_010_6165

    ld a, $80
    add b
    jr jr_010_6168

jr_010_6165:
    ld a, $00
    sub b

jr_010_6168:
    push af
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ld [$d010], a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0020
    ld a, [$d443]
    or a
    jr nz, jr_010_6184

    add hl, hl
    add hl, hl

jr_010_6184:
    call Call_000_11ba
    push hl
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    push hl
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    ld c, l
    ld b, h
    ld hl, $d481
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], e
    inc hl
    ld [hl], d
    ret


    db $c2, $61, $c6, $61, $ca, $61, $ce, $61

    jp nc, $d661

    ld h, c
    jp c, $de61

    ld h, c
    ld [c], a
    ld h, c
    and $61
    db $ea
    ld h, c

    db $ee, $61, $f2, $61, $f6, $61, $b8, $0b, $1d, $27, $a0, $0f, $dc, $22, $94, $11
    db $30, $20, $d0, $07, $9d, $22

    cp b
    dec bc
    inc h
    rra
    and b
    rrca
    ld c, b
    inc e
    sub h
    ld de, $1a56
    adc b
    inc de
    ret nc

    jr jr_010_625f

    dec d
    ld [hl-], a
    rla
    ld [hl], b
    rla
    sbc [hl]
    dec d
    ld h, h
    add hl, de
    ld a, h
    inc d

    db $58, $1b, $a9, $12, $4c, $1d, $49, $10, $00, $00, $85, $11

Call_010_61fa:
    ld hl, $d401
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d43d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    push hl
    ld hl, $d404
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d43f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    pop de
    call Call_000_1a03
    ret


Call_010_621e:
    push af
    push bc
    push de
    ld hl, $d426
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d43d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    push hl
    ld hl, $d428
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d43f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    pop de
    ld bc, $0000
    jp Jump_010_62da


    push af
    push bc
    push de
    ld hl, $d48a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d5f8
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    push hl

jr_010_625f:
    ld hl, $d48c
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d5fb
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    pop de
    jr jr_010_62da

    push af
    push bc
    push de
    ld a, [$d5f8]
    ld hl, $d400
    sub [hl]
    ld c, a
    inc hl
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d5f9
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sbc e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    push hl
    ld a, [$d5fb]
    ld hl, $d403
    sub [hl]
    ld b, a
    inc hl
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d5fc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sbc e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    pop de
    jr jr_010_62da

Call_010_62ad:
    push af
    push bc
    push de
    ld hl, $d43d
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d400
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    push hl
    ld hl, $d43f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d403
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    pop de

Jump_010_62da:
jr_010_62da:
    bit 7, h
    jr z, jr_010_62ea

    xor a
    sub b
    ld b, a
    sbc a
    jr nc, jr_010_62e5

    inc h

jr_010_62e5:
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a

jr_010_62ea:
    bit 7, d
    jr z, jr_010_62fa

    xor a
    sub c
    ld c, a
    sbc a
    jr nc, jr_010_62f5

    inc d

jr_010_62f5:
    sub e
    ld e, a
    sbc a
    sub d
    ld d, a

jr_010_62fa:
    ld a, h
    or d
    scf
    adc a
    push af
    jr c, jr_010_6312

    jr jr_010_630f

jr_010_6303:
    sla b
    rl l
    rl h
    sla c
    rl e
    rl d

jr_010_630f:
    add a
    jr nc, jr_010_6303

jr_010_6312:
    push de
    ld e, l
    ld d, h
    call Call_000_0cb5
    ldh a, [$a9]
    ld b, a
    pop de
    push hl
    ld l, e
    ld h, d
    call Call_000_0cb5
    pop de
    add hl, de
    ldh a, [$a9]
    add b
    jr nc, jr_010_632a

    inc hl

jr_010_632a:
    call Call_000_1d6a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    pop af
    jr c, jr_010_633d

    jr jr_010_633a

jr_010_6336:
    srl h
    rr l

jr_010_633a:
    add a
    jr nc, jr_010_6336

jr_010_633d:
    pop de
    pop bc
    pop af
    ret


Call_010_6341:
    ld a, $0c
    ldh [$b0], a
    xor a
    ld [$d32a], a
    ld a, [$d4cd]
    cp $06
    jr z, jr_010_6394

    cp $0a
    jr z, jr_010_6394

    call Call_010_62ad
    push hl
    call Call_010_6672
    and $0f
    ld hl, $639a
    add l
    ld l, a
    jr nc, jr_010_6365

    inc h

jr_010_6365:
    ld c, [hl]
    pop hl
    ld b, $0c

jr_010_6369:
    ld a, b
    ld [$d329], a
    push bc
    push hl
    call Call_010_6907
    pop hl
    pop bc
    or a
    jr z, jr_010_638a

    ld a, b
    ldh [$b0], a
    push hl
    call Call_010_68b1
    ld d, h
    ld e, l
    pop hl
    push hl
    call Call_000_08ac
    bit 7, h
    pop hl
    jr nz, jr_010_638e

jr_010_638a:
    dec b
    dec c
    jr nz, jr_010_6369

jr_010_638e:
    ldh a, [$b0]
    ld [$d329], a
    ret


jr_010_6394:
    ld a, $0d
    ld [$d329], a
    ret


    db $0d, $0c, $0a

    ld a, [bc]

    db $0a

    ld a, [bc]
    ld a, [bc]
    dec c

    db $0c, $0c

    inc c

jr_010_63a5:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

Call_010_63aa:
    push hl
    ld hl, $63be
    ld a, d
    add a
    add l
    ld l, a
    jr nc, jr_010_63b5

    inc h

jr_010_63b5:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    ld b, h
    ld c, l
    inc d
    pop hl
    ret


    adc [hl]
    inc bc
    db $e4
    ld hl, sp-$56
    ld a, [bc]
    ret z

    pop af
    add $11
    xor h
    ld [$18e2], a
    sub b
    db $e3
    cp $1f
    ld [hl], h
    call c, Call_000_271a
    ld e, b
    push de
    ld [hl], $2e
    inc a
    adc $52
    dec [hl]
    jr nz, jr_010_63a5

    ld l, [hl]
    inc a
    inc b
    ret nz

    adc d
    ld b, e
    add sp, -$48
    and [hl]
    ld c, d
    call z, $c2b1
    ld d, c
    or b
    xor d
    sbc $58
    sub h
    and e
    ld a, [$785f]
    sbc h
    ld d, $67
    ld e, h
    sub l
    ld [hl-], a
    ld l, [hl]
    ld b, b
    adc [hl]
    ld c, [hl]
    ld [hl], l
    inc h
    add a
    ld l, d
    ld a, h
    db $08
    add b

Call_010_6406:
    call Call_010_68b1
    push hl
    call Call_010_62ad
    pop de
    call Call_000_08ac
    bit 7, h
    jp nz, Jump_010_646e

Jump_010_6416:
    call Call_010_61fa
    ld de, $0024

Jump_010_641c:
    push bc
    push de
    rst $18

    db $02, $10

    call Call_000_11ba
    push hl
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    push hl
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    pop de
    ld a, h
    and $c0
    jr nz, jr_010_6459

    ld a, d
    and $c0
    jr nz, jr_010_6459

    call Call_010_6536
    pop de
    pop bc
    cp $00
    jr z, jr_010_6458

    cp $06
    jr z, jr_010_6458

    cp $0a
    jr z, jr_010_6458

    cp $0e
    jr z, jr_010_6458

    jp Jump_010_645b


jr_010_6458:
    ret


jr_010_6459:
    pop de
    pop bc

Jump_010_645b:
    call Call_010_63aa
    dec e
    jp nz, Jump_010_641c

    ld hl, $d329
    ld a, [hl]
    cp $0c
    jr nc, jr_010_646e

    inc [hl]
    jp Jump_010_6416


Jump_010_646e:
jr_010_646e:
    call Call_010_61fa
    ret


    ld de, $d400
    ld hl, $d51d
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    xor a
    ret


Call_010_648b:
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
    jr z, jr_010_64c0

    cp $04
    jp z, Jump_010_64c0

    ld a, [$d442]
    ld b, a
    ld a, d
    sub b
    ld d, a
    ld a, [$d441]
    ld b, a
    ld a, h
    sub b

jr_010_64af:
    ld h, a
    sla l
    rl h
    sla l
    rl h
    sla e
    rl d
    sla e
    rl d

Jump_010_64c0:
jr_010_64c0:
    push hl
    push de
    call Call_010_64d1
    pop de
    pop hl
    push bc
    call Call_010_6536
    pop bc
    ret


    xor a
    ld b, a
    ld c, a
    ret


Call_010_64d1:
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
    ld hl, $6516
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


    db $00

    jr nz, jr_010_6559

    ld h, b
    add b
    and b
    ret nz

    db $e0

    db $80

    ld h, b
    ld b, b
    jr nz, jr_010_6523

jr_010_6523:
    ldh [$c0], a

    db $a0, $00

    ldh [$c0], a
    and b
    add b
    ld h, b
    ld b, b
    db $20

    db $80

    and b
    ret nz

    ldh [rP1], a
    jr nz, jr_010_6575

    ld h, b

Call_010_6536:
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

jr_010_6559:
    rla
    sla e
    rla
    ld d, $00
    ld e, a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    bit 5, [hl]
    jr z, jr_010_656e

    ld a, $03
    sub c
    ld c, a

jr_010_656e:
    bit 6, [hl]
    jr z, jr_010_6576

    ld a, $03
    sub e

jr_010_6575:
    ld e, a

jr_010_6576:
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
    jr z, jr_010_658d

    inc hl

jr_010_658d:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    bit 0, c
    jr nz, jr_010_659a

    swap a

jr_010_659a:
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
    jr z, jr_010_65c3

    cpl

jr_010_65c3:
    ld c, a
    rrca
    rrca
    ld a, e
    bit 6, [hl]
    jr z, jr_010_65cc

    cpl

jr_010_65cc:
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
    jr nz, jr_010_65ec

    swap a

jr_010_65ec:
    and $0f
    ret


Call_010_65ef:
    ld a, [$d329]
    add a
    ld hl, $660e
    add l
    ld l, a
    jr nc, jr_010_65fb

    inc h

jr_010_65fb:
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    call Call_010_6672
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


    db $2a, $66, $42, $66, $42, $66, $5a, $66

    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld e, d
    ld h, [hl]

    db $5a, $66, $5a, $66

    ld e, d
    ld h, [hl]

    db $62, $64, $5d, $5f

    ld [hl-], a
    inc a
    inc d
    ld [hl-], a
    jr z, @+$39

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
    jr z, jr_010_6679

    db $62, $64, $62, $64

    ld [hl-], a
    inc a
    inc d
    ld [hl-], a
    jr z, jr_010_6683

    inc d
    jr z, @+$0c

    ld e, $63
    ld h, h
    ld e, d
    ld h, d

    db $5e, $62, $5a, $5e

    jr z, jr_010_6691

    ld h, d
    ld h, h

    db $62, $64, $50, $5a, $32, $50, $46, $55, $32, $46

    jr z, @+$3e

    ld h, e
    ld h, h

    db $5a, $62, $5e, $62, $5a, $5e

    ld b, [hl]
    ld d, l

Call_010_6672:
    ld a, [$d445]
    or a
    jr z, jr_010_667a

    xor a

jr_010_6679:
    ret


jr_010_667a:
    ld a, [$d4cd]
    cp $0d
    jr z, jr_010_6685

    cp $02

jr_010_6683:
    jr nz, jr_010_6695

jr_010_6685:
    ld a, [$d446]
    or a
    jr z, jr_010_66ba

    cp $01
    jr nz, jr_010_6692

    ld a, $05

jr_010_6691:
    ret


jr_010_6692:
    ld a, $06
    ret


jr_010_6695:
    cp $00
    jr z, jr_010_669d

    cp $0e
    jr nz, jr_010_66ad

jr_010_669d:
    ld a, [$d446]
    or a
    jr z, jr_010_66ba

    cp $01
    jr nz, jr_010_66aa

    ld a, $09
    ret


jr_010_66aa:
    ld a, $0a
    ret


jr_010_66ad:
    cp $01
    jr nz, jr_010_66ba

    ld a, [$d446]
    or a
    jr z, jr_010_66ba

    ld a, $0b
    ret


jr_010_66ba:
    push hl
    push de
    ld a, [$d4cd]
    ld hl, $66cb
    add l
    ld l, a
    jr nc, jr_010_66c7

    inc h

jr_010_66c7:
    ld a, [hl]
    pop de
    pop hl
    ret


    db $01, $02, $04

    ld [bc], a
    ld [bc], a
    inc bc

    db $07

    ld [bc], a
    ld [bc], a

    db $08

    rlca
    dec bc
    inc bc
    inc b
    db $01
    db $01

Call_010_66db:
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
    jr z, jr_010_674e

    cp $04
    jr z, jr_010_674e

    ld a, [$d442]
    ld c, a
    ld a, d
    sub c
    ld d, a
    ld a, [$d441]
    ld c, a
    ld a, h
    sub c
    ld h, a
    sla l
    rl h
    sla l
    rl h
    sla e
    rl d
    sla e
    rl d
    push hl
    push de
    call Call_010_64d1
    pop de
    pop hl
    swap a
    and $03
    jr z, jr_010_6748

    ld c, a
    push bc
    call Call_010_6536
    cp $06
    pop bc
    jr nz, jr_010_6740

    ld a, c
    add a
    ld hl, $6738
    add l
    ld l, a
    jr nc, jr_010_6730

    inc h

jr_010_6730:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $00
    ld a, $ff
    ret


    nop
    nop

    db $02, $00, $04, $00

    ld b, $00

jr_010_6740:
    ld hl, $0020
    ld c, $00
    ld a, $ff
    ret


jr_010_6748:
    xor a
    ld h, a
    ld l, a
    ld c, a
    ld b, a
    ret


jr_010_674e:
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
    rla
    sla e
    rla
    ld d, $00
    ld e, a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld b, [hl]
    bit 5, b
    jr z, jr_010_6787

    ld a, $03
    sub c
    ld c, a

jr_010_6787:
    bit 6, b
    jr z, jr_010_678f

    ld a, $03
    sub e
    ld e, a

jr_010_678f:
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
    jr z, jr_010_67a6

    inc hl

jr_010_67a6:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    bit 0, c
    jr nz, jr_010_67b3

    swap a

jr_010_67b3:
    bit 3, a
    jr nz, jr_010_67c4

    ld bc, $0000
    ld hl, $0000
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ret


jr_010_67c4:
    and $07
    ld c, a
    ld a, b
    rrca
    rrca
    and $18
    add c
    ld hl, $6516
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld b, [hl]
    ld c, $00
    ld hl, $0020
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $ff
    ret


Call_010_67e4:
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
    jr z, jr_010_6818

    cp $04
    jr nc, jr_010_6818

    ld a, [$d442]
    ld b, a
    ld a, d
    sub b
    ld d, a
    ld a, [$d441]
    ld b, a
    ld a, h
    sub b
    ld h, a
    sla l
    rl h
    sla l
    rl h
    sla e
    rl d
    sla e
    rl d

jr_010_6818:
    call Call_010_6536
    add a
    add a
    ld h, $00
    ld l, a
    ld de, $6825
    add hl, de
    ret


    db $40, $f8, $b0

    nop

    db $20, $e0, $60

    nop

    db $08, $f0, $80

    nop
    ld h, b
    ld bc, $00a0
    add b
    cp $f8
    nop
    db $10
    ret nz

    ld b, b
    nop

    db $40, $fc, $b0

    nop
    nop
    add b

jr_010_6843:
    ld b, b
    nop
    add b
    db $fc
    ld hl, sp+$00

    db $28, $e0, $a0

    nop
    jr c, @-$04

    ret nc

    nop
    jr nc, jr_010_6843

    add b
    nop
    db $10
    ret nc

    ld b, b
    nop
    ld [$80f0], sp
    nop
    ld h, b
    cp $c0
    nop
    ld bc, $e0f0
    nop

Call_010_6865:
    cp $3c
    ret nc

    push hl
    ld h, $00
    ld l, a
    ld de, $6875
    add hl, de
    ld a, [hl]
    pop hl
    jp Jump_000_0bec


    nop
    inc b
    add hl, bc
    dec c
    ld de, $1a15
    ld e, $22
    ld h, $2b
    cpl
    inc sp
    scf
    inc a
    ld b, b
    ld b, h
    ld c, c
    ld c, l
    ld d, c
    ld d, l
    ld e, d
    ld e, [hl]
    ld h, d
    ld h, [hl]
    ld l, e
    ld l, a
    ld [hl], e
    ld [hl], a
    ld a, h
    add b
    add h
    adc c
    adc l
    sub c
    sub l
    sbc d
    sbc [hl]

    db $a2

    and [hl]
    xor e
    xor a
    or e
    or a

    db $bc

    ret nz

    call nz, $cdc9
    pop de
    push de
    jp c, $e2de

    and $eb
    rst $28
    di

    db $f7

    db $fc

Call_010_68b1:
    ld a, [$d329]
    ld d, a
    cp $0d
    jp z, Jump_010_68f1

    ld a, [$d32a]
    cp $02
    jr nz, jr_010_68c5

    ld hl, $0780
    ret


jr_010_68c5:
    cp $03
    jr nz, jr_010_68cd

    ld hl, $03c0
    ret


jr_010_68cd:
    push bc
    ld a, [$d4cc]
    ld b, a
    ld hl, $d4c6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, d
    rst $18

    db $10, $02

    pop bc
    ld a, $20
    call Call_000_08b9
    ld a, [$d32a]
    or a
    ret z

    push hl
    ld de, $199a
    call Call_000_0cb5
    pop de
    add hl, de
    ret


Jump_010_68f1:
    ld a, [$d32b]
    or a
    jr nz, jr_010_68fb

    ld hl, $0140
    ret


jr_010_68fb:
    cp $01
    jr nz, jr_010_6903

    ld hl, $042a
    ret


jr_010_6903:
    ld hl, $0855
    ret


Call_010_6907:
    push de
    ld a, [$d329]
    ld d, a
    call Call_010_6672
    and $0f
    swap a
    or d
    ld d, $00
    ld e, a
    ld hl, $6983
    ld a, [$d32a]
    cp $02
    jr c, jr_010_6924

    ld hl, $6a43

jr_010_6924:
    add hl, de
    ld l, [hl]
    ld a, [$d4c9]
    add $04
    add a
    add a
    add a
    add l
    ld hl, $693b
    add l
    ld l, a
    jr nc, jr_010_6937

    inc h

jr_010_6937:
    ld a, [hl]
    dec a
    pop de
    ret


    ld bc, $0101
    ld bc, $0201
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc bc
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    ld bc, $0201
    ld [bc], a
    inc bc
    inc b
    dec b
    dec b
    ld bc, $0201
    inc bc
    inc b
    dec b
    dec b
    dec b
    ld bc, $0201

    db $03, $05, $05

    dec b
    dec b
    ld bc, $0201

    db $04, $05, $05

    dec b
    dec b
    ld bc, $0301
    inc b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0302
    dec b
    dec b
    dec b
    dec b
    dec b

    db $03, $04, $04, $04, $04, $04, $04, $05, $05, $05, $05, $05, $05

    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc bc

    db $04, $04, $04, $04, $04, $04, $05, $05, $05, $05

    dec b
    dec b
    dec b
    ld bc, $0202
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    dec b

    db $05

    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b

    db $05, $05

    dec b
    dec b
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b

    db $05

    dec b
    dec b
    ld bc, $0202
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b

    db $05

    dec b
    dec b
    dec b
    ld [bc], a
    inc bc

    db $03, $03, $03, $04, $04, $04, $04, $04, $04, $05, $05

    dec b
    dec b
    dec b
    ld bc, $0202
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b

    db $05

    dec b
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b

    db $05

    dec b
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b

Call_010_6b03:
    push de
    ld a, [$d4cc]
    ld e, a
    ld a, [$d329]
    ld d, a
    ld a, [$d4ca]
    rst $18

    db $74, $02

    pop de
    push hl
    ld hl, $d333
    bit 0, [hl]
    jr z, jr_010_6b1d

    cpl
    inc a

jr_010_6b1d:
    pop hl
    ret


Call_010_6b1f:
    ld a, [$d44f]
    ld hl, $d333
    bit 0, [hl]
    jr z, jr_010_6b2b

    cpl
    inc a

jr_010_6b2b:
    bit 7, a
    jr z, jr_010_6b38

    cp $f2
    jr nc, jr_010_6b3e

    ld a, $f2
    jp Jump_010_6b3e


jr_010_6b38:
    cp $0e
    jr c, jr_010_6b3e

    ld a, $0e

Jump_010_6b3e:
jr_010_6b3e:
    push af
    ld a, [$d321]
    and $07
    add a
    add $5b
    ld l, a
    adc $6b
    sub l
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    add $0e
    srl a
    add l
    ld l, a
    jr nc, jr_010_6b59

    inc h

jr_010_6b59:
    ld a, [hl]
    ret


    ld l, l
    ld l, e
    ld a, h
    ld l, e

    db $8b, $6b, $9a, $6b, $a9, $6b, $b8, $6b

    cp b
    ld l, e
    cp b
    ld l, e
    cp b
    ld l, e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [bc], a
    nop
    cp $f7
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc b

    db $02, $00, $fe

    db $fc
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc b
    ld [bc], a

    db $01, $00

    rst $38
    cp $fc
    rst $30
    rst $30
    rst $30
    rst $30
    add hl, bc
    add hl, bc
    add hl, bc
    inc b
    inc bc
    ld [bc], a
    db $01

    db $00

    rst $38
    cp $fd
    db $fc
    rst $30
    rst $30
    rst $30
    add hl, bc
    add hl, bc
    dec b
    inc b
    inc bc
    ld [bc], a
    db $01

    db $00

    rst $38
    cp $fd
    db $fc
    ei
    rst $30
    rst $30

Call_010_6bc7:
    push hl
    push de
    call Call_010_6b1f
    ld [$c9fd], a
    add $09
    add $dc
    ld l, a
    adc $6b
    sub l
    ld h, a
    ld a, [hl]
    pop de
    pop hl
    ret


    inc sp
    ld h, [hl]
    add b
    sbc c
    or e
    db $cc
    db $e6

    db $f3

    db $fa

    db $00, $fa, $f3

    and $cc
    or e
    sbc c
    add b
    ld h, [hl]
    inc sp

Call_010_6bef:
    push hl
    ld a, [$d4cb]
    add $04
    and $0f
    add $08
    ld l, a
    adc $6c
    sub l
    ld h, a
    ld a, [hl]
    pop hl
    or a
    jr z, jr_010_6c06

    call Call_000_0bce

jr_010_6c06:
    add hl, hl
    ret


    nop
    ldh [$c0], a
    and b
    add b

    db $60, $40

    jr nz, @+$0f

    ld a, [bc]
    ld [$0406], sp
    ld [bc], a
    db $01
    db $01

Call_010_6c18:
    push hl
    ld a, b
    add $09
    add a
    add $2e
    ld l, a
    adc $6c
    sub l
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_010_6bef
    ld d, h
    ld e, l
    pop hl
    ret


    add $11
    adc [hl]
    inc bc
    adc [hl]
    inc bc
    adc [hl]
    inc bc
    adc [hl]
    inc bc
    ld l, h
    ld bc, $00b6

    db $5b, $00

    inc h
    nop

    db $00, $00, $a5, $ff, $dc, $ff

    ld c, d
    rst $38
    ld [hl], d
    db $fc
    ld [hl], d
    db $fc
    ld [hl], d
    db $fc
    ld [hl], d
    db $fc
    ld [hl], d
    db $fc
    db $e4
    db $f8

Call_010_6c54:
    push hl
    ld a, b
    add $09
    add a
    add $79
    ld l, a
    adc $6c
    sub l
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_010_6bef
    ld a, [$d4cd]
    cp $0c
    jr nz, jr_010_6c75

    push hl
    ld a, $80
    call Call_000_0bce
    pop de
    add hl, de

jr_010_6c75:
    ld d, h
    ld e, l
    pop hl
    ret


    nop
    nop
    adc [hl]
    inc bc
    adc [hl]
    inc bc
    adc [hl]
    inc bc
    adc [hl]
    inc bc
    ld de, $b601
    nop

    db $5b, $00

    nop
    nop

    db $00, $00, $00, $00, $a5, $ff

    ld c, d
    rst $38
    rst $28
    cp $72
    db $fc
    ld [hl], d
    db $fc
    ld [hl], d
    db $fc
    ld [hl], d
    db $fc
    nop
    nop

Call_010_6c9f:
    push hl
    ld a, b
    add $09
    add a
    add $b5
    ld l, a
    adc $6c
    sub l
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_010_6bef
    ld d, h
    ld e, l
    pop hl
    ret


    nop
    nop
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    nop
    ld [bc], a
    add b
    db $01

    db $00, $01

    add b
    nop

    db $00, $00, $80, $ff, $00, $ff

    add b
    cp $00
    cp $80
    db $fd
    add b
    db $fd
    add b
    db $fd
    add b
    db $fd
    nop
    nop

Call_010_6cdb:
    ld a, [$d329]
    cp $0d
    jp z, Jump_010_6dae

    call Call_010_68b1
    push hl
    call Call_010_65ef
    ld a, d
    add e
    push af
    cp $a0
    jr c, jr_010_6d0c

    ld a, [$d32a]
    cp $02
    jr nc, jr_010_6d0c

    ld a, [$d450]
    cp $3c
    jr nz, jr_010_6d0c

    ld a, [$d44f]
    or a
    jr nz, jr_010_6d0c

    push hl
    ld hl, $d48e
    set 3, [hl]
    pop hl

jr_010_6d0c:
    pop af
    pop hl
    cp $c6
    jr z, jr_010_6d22

    push hl
    ld hl, HeaderROMSize
    call Call_000_08b9
    ld de, $0080
    add hl, de
    ld a, h
    pop hl
    call Call_000_0bec

jr_010_6d22:
    call Call_010_6bc7
    or a
    jr z, jr_010_6d2b

    call Call_000_0bec

jr_010_6d2b:
    ld a, [$d450]
    call Call_010_6865
    ld de, $0010
    add hl, de
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    srl h
    rr l
    call Call_010_6b03
    rst $18

    db $22, $08

    ld a, [$d329]
    ld c, a
    ld d, h
    ld e, l
    push de
    ld a, [$d4c8]
    add $08
    and $0f
    add a
    ld h, $00
    ld l, a
    ld de, $6d6a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    jp hl


    adc d

jr_010_6d6b:
    ld l, l
    adc d
    ld l, l
    adc d
    ld l, l
    adc d
    ld l, l
    adc d
    ld l, l
    adc [hl]
    ld l, l

    db $92, $6d

    sub [hl]
    ld l, l

    db $9a, $6d

    sbc [hl]
    ld l, l

    db $a2, $6d

    and [hl]
    ld l, l
    xor d
    ld l, l
    xor d
    ld l, l
    xor d
    ld l, l
    xor d
    ld l, l
    rst $18
    inc b
    add hl, sp
    ret


    rst $18
    ld [bc], a
    add hl, sp
    ret


    rst $18

    db $00, $39

    ret


    rst $18
    ld [bc], a
    jr c, @-$35

    rst $18

    db $00, $38

    ret


    rst $18
    inc b
    jr c, jr_010_6d6b

    rst $18

    db $00, $3a

    ret


    rst $18
    ld [bc], a
    ld a, [hl-]
    ret


    rst $18
    inc b
    ld a, [hl-]
    ret


Jump_010_6dae:
    ld a, [$d32b]
    and $03
    add a
    ld hl, $6dcd
    add l
    ld l, a
    jr nc, jr_010_6dbc

    inc h

jr_010_6dbc:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d450]
    and $fe
    add l
    ld l, a
    jr nc, jr_010_6dc9

    inc h

jr_010_6dc9:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


    db $d5, $6d, $13, $6e, $51, $6e

    ld d, c
    ld l, [hl]
    nop
    nop
    dec b
    nop
    ld [$0b00], sp
    nop
    ld c, $00
    ld de, $1400
    nop
    ld d, $00

    db $19, $00

    inc e
    nop
    ld e, $00
    ld hl, $2300
    nop
    ld h, $00
    add hl, hl
    nop
    dec hl
    nop
    ld l, $00

    db $30, $00

    inc sp
    nop
    dec [hl]
    nop
    jr c, jr_010_6dff

jr_010_6dff:
    dec sp
    nop
    dec a
    nop
    ld b, b
    nop
    ld b, d
    nop
    ld b, l
    nop
    ld b, a
    nop
    ld c, d
    nop
    ld c, h
    nop
    ld c, a
    nop

    db $52, $00

    nop
    nop
    inc c
    nop
    dec d
    nop
    ld e, $00
    daa
    nop
    cpl
    nop
    jr c, jr_010_6e21

jr_010_6e21:
    ld b, b
    nop
    ld c, c
    nop
    ld d, d
    nop
    ld e, d
    nop
    ld h, d
    nop
    ld l, e
    nop
    ld [hl], e
    nop
    ld a, h
    nop
    add h
    nop
    adc h
    nop
    sub h
    nop
    sbc l
    nop
    and l
    nop
    xor [hl]
    nop
    or [hl]
    nop
    cp [hl]
    nop
    rst $00
    nop
    rst $08
    nop
    rst $10
    nop
    rst $18
    nop
    add sp, $00
    ldh a, [rP1]
    ld hl, sp+$00

    db $00, $01

    nop
    nop
    dec d
    nop
    daa
    nop
    jr c, jr_010_6e59

jr_010_6e59:
    ld c, c
    nop
    ld e, d
    nop
    ld l, e
    nop
    ld a, h
    nop
    adc h
    nop
    sbc l
    nop
    xor [hl]
    nop
    cp [hl]
    nop
    rst $08
    nop
    rst $18
    nop
    ldh a, [rP1]
    nop
    ld bc, $0111
    ld [hl+], a
    ld bc, $0132
    ld b, e
    ld bc, $0154
    ld h, h
    ld bc, $0175
    add l
    ld bc, $0196
    and a
    ld bc, $01b7
    ret z

    ld bc, $01d8
    jp hl


    db $01

    db $f9, $01

    ret


Jump_010_6e90:
jr_010_6e90:
    rst $08
    ld b, b
    ld a, $07
    call Call_000_2ed5
    ld e, $c9

Call_010_6e99:
    xor a
    ld hl, $d4bb
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [$d4b9], a
    ld [$d444], a

Jump_010_6ea7:
    call Call_000_2e3b
    ld a, [$d402]
    ld b, a
    ld a, [$c329]
    cp b
    jr z, jr_010_6eb6

    jr nc, jr_010_6e90

jr_010_6eb6:
    ld a, [$c32b]
    cp b
    jr z, jr_010_6e90

    jr c, jr_010_6e90

    ld a, [$d405]
    ld b, a
    ld a, [$c32a]
    cp b
    jr z, jr_010_6eca

    jr nc, jr_010_6e90

jr_010_6eca:
    ld a, [$c32c]
    dec a
    dec a
    cp b
    jp z, Jump_010_6e90

    jp c, Jump_010_6e90

    ld a, [$d443]
    cp $01
    jr nz, jr_010_6efd

    call Call_010_7122
    or a
    jr z, jr_010_6f28

    call Call_010_72e7
    ld a, [$d408]
    or a
    jr nz, jr_010_6f28

    ld a, [$d407]
    cp $20
    jr nc, jr_010_6f28

    rst $18

    db $04, $13

    ld a, $02
    ld [$d443], a
    jr jr_010_6f43

jr_010_6efd:
    ld a, [$d443]
    cp $02
    jr nz, jr_010_6f28

    call Call_010_72e7
    ld a, [$d408]
    bit 7, a
    jr nz, jr_010_6f18

    or a
    jr nz, jr_010_6f1e

    ld a, [$d407]
    cp $20
    jr nc, jr_010_6f1e

jr_010_6f18:
    call Call_010_7122
    or a
    jr nz, jr_010_6f43

jr_010_6f1e:
    rst $18
    ld b, $13
    ld a, $01
    ld [$d443], a
    jr jr_010_6f43

jr_010_6f28:
    call Call_010_5617
    ld a, [$d443]
    cp c
    jr z, jr_010_6f43

    push af
    push bc
    push de
    push hl
    rst $18

    db $04, $3b

    pop hl
    pop de
    pop bc
    pop af
    ld a, c
    ld [$d443], a
    rst $18

    db $00, $13

jr_010_6f43:
    ld a, [$d443]
    cp $02
    jp nz, Jump_010_6f9e

    call Call_010_7263
    or a
    jp nz, Jump_010_7052

    ld hl, $d407
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $fffc
    add hl, de
    bit 7, h
    jp z, Jump_010_6ea7

    ld hl, $d43f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    push hl
    ld hl, $d43d
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    pop de
    ld h, l
    ld l, $00
    ld d, e
    ld e, $00
    push de
    ld d, h
    ld e, l
    call Call_000_0c8e
    pop de
    push hl
    ld h, d
    ld l, e
    call Call_000_0c8e
    pop de
    add hl, de
    call Call_000_0f04
    cp $06
    jp c, Jump_010_7048

Jump_010_6f9e:
    call Call_010_7cab
    or a
    jp nz, Jump_010_6ea7

    ld hl, $d4d3
    ld a, [hl]
    cp $28
    jp nc, Jump_010_7029

    ld a, [$d35f]
    or a
    jp z, Jump_010_6ea7

    ld a, [$d367]
    bit 7, a
    jp nz, Jump_010_6ea7

    ldh a, [$94]
    bit 1, a
    jp nz, Jump_010_7029

    bit 0, a
    jp z, Jump_010_6ea7

    ld hl, $d361
    ld de, $d400
    ld bc, $0006
    call Call_000_03d3
    ld hl, $d36d
    ld de, $d51d
    ld bc, $0006
    call Call_000_03d3
    ld a, $3f
    call Call_010_4b14
    ld a, [$d368]
    ld [hl], a
    ld [$d446], a
    xor a
    ld hl, $d406
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld hl, $d409
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld [$d415], a
    rst $08

    db $40

    call Call_010_5617
    ld a, c
    or a
    jr nz, jr_010_701a

    ld a, [$d443]
    or a
    jr z, jr_010_7015

    xor a
    rst $18
    nop
    inc de
    jr jr_010_7021

jr_010_7015:
    rst $18

    db $02, $13

    jr jr_010_7021

jr_010_701a:
    ld a, $01
    rst $18
    nop
    inc de
    jr jr_010_7021

jr_010_7021:
    xor a
    ld [$d360], a
    ld a, [$d367]
    ret


Jump_010_7029:
    xor a
    ld hl, $d40d
    ld [hl+], a
    ld [hl], a
    ld hl, $d406
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    call Call_010_648b
    cp $00
    jp z, Jump_010_70b4

    cp $0e
    jp z, Jump_010_70b4

    cp $01
    jp z, Jump_010_70eb

    ret


Jump_010_7048:
    call Call_010_716b
    ld a, [$d4b1]
    or a
    jp z, Jump_010_6ea7

Jump_010_7052:
    ld a, $01
    ld [$d444], a
    call Call_010_79af
    cp $02
    jp z, Jump_010_6ea7

    rst $08

    db $5a

    call Call_010_7888
    ld hl, $d485
    res 2, [hl]
    ld a, $80
    ret


Call_010_706c:
    xor a
    ld hl, $d4cf
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ret


Call_010_7077:
    ld hl, $d4cf
    ld de, $d401
    ld a, [de]
    cp [hl]
    jr nz, jr_010_709f

    inc hl
    inc de
    ld a, [de]
    cp [hl]
    jr nz, jr_010_709f

    inc hl
    inc de
    inc de
    ld a, [de]
    cp [hl]
    jr nz, jr_010_709f

    inc hl
    inc de
    ld a, [de]
    cp [hl]
    jr nz, jr_010_709f

    inc hl
    inc de
    inc de
    ld a, [de]
    inc a
    cp $02
    jr nc, jr_010_709f

    inc [hl]
    ret


jr_010_709f:
    ld hl, $d4cf
    ld de, $d401
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld [hl], $00
    ret


Jump_010_70b4:
    push af
    push hl
    ld a, [$d403]
    swap a
    ld h, a
    ld a, [$d400]
    swap a
    add h
    and $0f
    ld hl, $70db
    add l
    ld l, a
    jr nc, jr_010_70cc

    inc h

jr_010_70cc:
    ld a, [hl]
    push af
    ld a, $3f
    call Call_010_4b14
    pop af
    ld [hl], a
    ld [$d446], a
    pop hl
    pop af
    ret


    nop
    nop

    db $00

    nop
    nop
    nop

    db $00

    nop
    db $01

    db $01

    ld bc, $0101
    db $01
    ld [bc], a

    db $02

Jump_010_70eb:
    push af
    push hl
    ld a, [$d403]
    swap a
    ld h, a
    ld a, [$d400]
    swap a
    add h
    and $0f
    ld hl, $7112
    add l
    ld l, a
    jr nc, jr_010_7103

    inc h

jr_010_7103:
    ld a, [hl]
    push af
    ld a, $3f
    call Call_010_4b14
    pop af
    ld [hl], a
    ld [$d446], a
    pop hl
    pop af
    ret


    nop
    nop
    nop

    db $00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    db $01

Call_010_7122:
    ld hl, $d43f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    bit 7, h
    jr z, jr_010_713c

    ld a, h
    cpl
    ld h, a
    ld a, l
    cpl
    ld l, a
    inc hl

jr_010_713c:
    ld de, $ffe0
    add hl, de
    bit 7, h
    jr z, jr_010_7169

    ld hl, $d43d
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    bit 7, h
    jr z, jr_010_715e

    ld a, h
    cpl
    ld h, a
    ld a, l
    cpl
    ld l, a
    inc hl

jr_010_715e:
    ld de, $ffe0
    add hl, de
    bit 7, h
    jr z, jr_010_7169

    ld a, $01
    ret


jr_010_7169:
    xor a
    ret


Call_010_716b:
    push af
    push bc
    push de
    push hl
    ld hl, $d499
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $d4bb
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $d49b
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $d4bd
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $d43d
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    push hl
    bit 7, h
    call nz, Call_000_0c60
    ld h, l
    ld a, [$d400]
    ld l, a
    pop de
    bit 7, d
    call nz, Call_000_0c60
    ld a, l
    ld [$d499], a
    ld a, h
    ld [$d49a], a
    ld hl, $d43f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    push hl
    bit 7, h
    call nz, Call_000_0c60
    ld h, l
    ld a, [$d403]
    ld l, a
    pop de
    bit 7, d
    call nz, Call_000_0c60
    ld a, l
    ld [$d49b], a
    ld a, h
    ld [$d49c], a
    ld a, [$d4d5]
    or a
    jr nz, jr_010_71e7

    call Call_010_73ca
    ld a, h
    cp $02
    ld a, $01
    jr c, jr_010_725b

jr_010_71e7:
    call Call_010_74a1
    ld hl, $d49d
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d499
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    bit 7, h
    call nz, Call_000_0c60
    push hl
    ld hl, $d49f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d49b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    bit 7, h
    call nz, Call_000_0c60
    pop de
    push de
    call Call_000_1a03
    ld hl, $0040
    call Call_000_11ba
    ld d, h
    ld e, l
    pop hl
    ld a, h
    ld h, l
    ld l, $00
    sra a
    rr h
    rr l
    sra a
    rr h
    rr l
    call Call_000_0ddb
    or a
    jr z, jr_010_723a

    ld hl, $3fff

jr_010_723a:
    add hl, hl
    push hl
    ld hl, $d40b
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d409
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_010_7372
    ld b, h
    ld c, l
    add hl, hl
    add hl, bc
    pop de
    call Call_000_08ac
    ld a, $00
    bit 7, h
    jr z, jr_010_725b

    ld a, $01

jr_010_725b:
    ld [$d4b1], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_010_7263:
    push bc
    push de
    push hl
    ld a, [$d415]
    or a
    ld a, $00
    jr z, jr_010_72e3

    ld hl, $d40d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    bit 7, h
    ld a, $00
    jr z, jr_010_72e3

    ld de, $ffc8
    add hl, de
    ld b, h
    ld c, l
    ld hl, $d406
    ld de, $d4b3
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl]
    ld [de], a
    ld hl, $d4b3
    ld d, b
    ld e, c
    call Call_010_52da
    ld a, [$d4b5]
    bit 7, a
    ld a, $00
    jr z, jr_010_72e3

    ld hl, $d43f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    push hl
    ld hl, $d43d
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    pop de
    ld h, l
    ld l, $00
    ld d, e
    ld e, $00
    push de
    ld d, h
    ld e, l
    call Call_000_0c8e
    pop de
    push hl
    ld h, d
    ld l, e
    call Call_000_0c8e
    pop de
    add hl, de
    call Call_000_0f04
    cp $06
    ld a, $00
    jr nc, jr_010_72e3

    xor a
    ld [$d415], a
    ld a, $01

jr_010_72e3:
    pop hl
    pop de
    pop bc
    ret


Call_010_72e7:
    push af
    push bc
    push de
    push hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d4d5]
    or a
    jp nz, Jump_010_7355

    ld a, [$d4b9]
    bit 0, a
    jp nz, Jump_010_7355

    ld a, [$d408]
    or a
    jp nz, Jump_010_7355

    ld b, $00
    ld a, [$d407]
    cp $e8
    jp nc, Jump_010_7355

    cp $c0
    jr c, jr_010_7317

    ld b, $01

jr_010_7317:
    ld hl, $0002
    call Call_010_735a
    or a
    jp nz, Jump_010_7355

    ld hl, $d4b9
    set 0, [hl]
    ld a, b
    or a
    jr z, jr_010_734c

    ld hl, $d48e
    set 2, [hl]
    rst $08
    ld e, c
    ld hl, $d4b9
    set 1, [hl]
    xor a
    ld [$d409], a
    ld [$d40a], a
    ld [$d40b], a
    ld [$d40c], a
    ld [$d40d], a
    ld [$d40e], a
    jp Jump_010_7355


jr_010_734c:
    call Call_010_74a1
    call Call_010_750b
    call Call_010_765f

Jump_010_7355:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_010_735a:
    push bc
    push de
    push hl
    push hl
    rst $18
    inc b
    db $10
    ld d, h
    ld e, l
    pop hl
    call Call_000_08ac
    bit 7, h
    ld a, $01
    jr nz, jr_010_736e

    xor a

jr_010_736e:
    pop hl
    pop de
    pop bc
    ret


Call_010_7372:
    push de
    bit 7, h
    call nz, Call_000_0c60
    ld d, h
    ld e, l
    call Call_000_0cb5
    pop hl
    ldh a, [$ab]
    or a
    jr z, jr_010_7388

    ld de, $ffff
    jr jr_010_738e

jr_010_7388:
    ldh a, [$a9]
    ld e, a
    ldh a, [$aa]
    ld d, a

jr_010_738e:
    push de
    bit 7, h
    call nz, Call_000_0c60
    ld d, h
    ld e, l
    call Call_000_0cb5
    ldh a, [$ab]
    or a
    jr z, jr_010_73a3

    ld hl, $ffff
    jr jr_010_73a9

jr_010_73a3:
    ldh a, [$a9]
    ld l, a
    ldh a, [$aa]
    ld h, a

jr_010_73a9:
    pop de
    add hl, de
    jr nc, jr_010_73b2

    ld hl, $0fff
    jr jr_010_73c9

jr_010_73b2:
    call Call_000_0f04
    ld b, a
    ld h, $00
    ld l, a
    sla l
    rl h
    sla l
    rl h
    sla l
    rl h
    sla l
    rl h

jr_010_73c9:
    ret


Call_010_73ca:
    ld hl, $d43f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    ld a, [$d403]
    ld h, l
    ld l, a
    ld d, h
    ld e, l
    ld a, l
    ld [$d49b], a
    ld a, h
    ld [$d49c], a
    push de
    ld hl, $d43d
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    ld a, [$d400]
    ld h, l
    ld l, a
    ld a, l
    ld [$d499], a
    ld a, h
    ld [$d49a], a
    pop de
    call Call_010_7372
    ld a, l
    ld [$d4a5], a
    ld a, h
    ld [$d4a6], a
    ret


    ld a, h
    cp $06
    jr nc, jr_010_741a

    xor a
    jr jr_010_741c

jr_010_741a:
    ld a, $01

jr_010_741c:
    ret


Call_010_741d:
    ld hl, $d40b
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    push de
    bit 7, d
    call nz, Call_000_0c67
    sra d
    rr e
    sra d
    rr e
    sra d
    rr e
    sra d
    rr e
    ld hl, $d499
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    bit 7, h
    call nz, Call_000_0c60
    call Call_000_0cb5
    ld hl, $d409
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    push de
    bit 7, d
    call nz, Call_000_0c67
    sra d
    rr e
    sra d
    rr e
    sra d
    rr e
    sra d
    rr e
    ldh a, [$ab]
    or a
    jr z, jr_010_746f

    ld a, $ff
    ld h, a
    ld l, a
    jr jr_010_7477

jr_010_746f:
    ldh a, [$a8]
    ld l, a
    ldh a, [$a9]
    ld h, a
    ldh a, [$aa]

jr_010_7477:
    call Call_000_0ddb
    or a
    jr z, jr_010_7480

    ld hl, $3fff

jr_010_7480:
    xor a
    pop bc
    sla b
    adc $00
    pop bc
    sla b
    adc $00
    pop bc
    sla b
    adc $00
    bit 0, a
    call nz, Call_000_0c60
    ld d, h
    ld e, l
    ld hl, $d49b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    ret


Call_010_74a1:
    call Call_010_741d
    push hl
    bit 7, h
    call nz, Call_000_0c60
    push hl
    ld hl, $d409
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    bit 7, h
    call nz, Call_000_0c60
    push hl
    ld hl, $d40b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    bit 7, h
    call nz, Call_000_0c60
    pop de
    call Call_000_1a03
    pop hl
    push bc
    call Call_000_11ba
    pop de
    push hl
    ld hl, $4000
    call Call_000_08ac
    ld b, h
    ld c, l
    pop hl
    call Call_000_11ba
    ld a, [$d40a]
    ld b, a
    ld a, [$d40c]
    ld c, a
    xor a
    rl b
    adc $00
    rl c
    adc $00
    bit 0, a
    call z, Call_000_0c60
    pop bc
    bit 7, b
    call nz, Call_000_0c60
    ld a, l
    ld [$d49d], a
    ld a, h
    ld [$d49e], a
    bit 7, b
    call nz, Call_000_0c67
    ld a, e
    ld [$d49f], a
    ld a, d
    ld [$d4a0], a
    ret


Call_010_750b:
    ld hl, $d40b
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d409
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_010_7372
    ld a, l
    ld [$d4a7], a
    ld a, h
    ld [$d4a8], a
    ld hl, $d49f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d49d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_010_7372
    ld de, $0040
    call Call_000_0cb5
    ldh a, [$ab]
    or a
    jr z, jr_010_7542

    ld a, $ff
    ld h, a
    ld l, a
    jr jr_010_754a

jr_010_7542:
    ldh a, [$a8]
    ld l, a
    ldh a, [$a9]
    ld h, a
    ldh a, [$aa]

jr_010_754a:
    ld e, a
    ld d, $06
    ld a, [$d4b8]
    bit 1, a
    jr z, jr_010_755c

    ld a, [$d4d5]
    or a
    jr nz, jr_010_755c

    ld d, $02

jr_010_755c:
    ld a, e
    ld e, $00
    call Call_000_0ddb
    or a
    jr z, jr_010_7568

    ld hl, $3fff

jr_010_7568:
    ld b, l
    ld c, $00
    ld hl, $d4a5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_11ba
    bit 7, h
    call nz, Call_000_0c60
    push hl
    ld d, h
    ld e, l
    ld hl, $d409
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    bit 7, h
    call nz, Call_000_0c60
    call Call_000_0cb5
    ld hl, $d4a7
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ldh a, [$ab]
    or a
    jr z, jr_010_759c

    ld a, $ff
    ld h, a
    ld l, a
    jr jr_010_75a4

jr_010_759c:
    ldh a, [$a8]
    ld l, a
    ldh a, [$a9]
    ld h, a
    ldh a, [$aa]

jr_010_75a4:
    call Call_000_0ddb
    or a
    jr z, jr_010_75ad

    ld hl, $3fff

jr_010_75ad:
    pop bc
    bit 7, b
    call nz, Call_000_0c60
    push hl
    ld hl, $d49d
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    add hl, de
    ld a, l
    ld [$d4a1], a
    ld a, h
    ld [$d4a2], a
    pop de
    ld hl, $d40b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    bit 7, h
    call nz, Call_000_0c60
    call Call_000_0cb5
    ld hl, $d4a7
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ldh a, [$ab]
    or a
    jr z, jr_010_75e5

    ld a, $ff
    ld h, a
    ld l, a
    jr jr_010_75ed

jr_010_75e5:
    ldh a, [$a8]
    ld l, a
    ldh a, [$a9]
    ld h, a
    ldh a, [$aa]

jr_010_75ed:
    call Call_000_0ddb
    or a
    jr z, jr_010_75f6

    ld hl, $3fff

jr_010_75f6:
    pop bc
    bit 7, b
    call nz, Call_000_0c60
    push hl
    ld hl, $d49f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    add hl, de
    ld a, l
    ld [$d4a3], a
    ld a, h
    ld [$d4a4], a
    ret


Call_010_760e:
    call Call_010_771e
    ld hl, $d406
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    bit 7, h
    call nz, Call_000_0c60
    ld de, $0400
    call Call_000_08ac
    bit 7, h
    jr z, jr_010_7629

    call Call_010_7a63

jr_010_7629:
    ld hl, $d4ad
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d4a9
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$d409], a
    ld a, h
    ld [$d40a], a
    ld hl, $d4af
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d4ab
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$d40b], a
    ld a, h
    ld [$d40c], a
    ld d, h
    ld e, l
    ld hl, $d409
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_010_7372
    ret


Call_010_765f:
    ld hl, $d48e
    set 1, [hl]
    rst $08
    ld e, b
    call Call_010_771e
    ld hl, $d4ad
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d4a9
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_0c60
    add hl, de
    push hl
    bit 7, h
    call nz, Call_000_0c60
    sra h
    rr l
    pop bc
    bit 7, b
    call nz, Call_000_0c60
    ld a, l
    ld [$d409], a
    ld a, h
    ld [$d40a], a
    ld hl, $d4af
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d4ab
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_0c60
    add hl, de
    push hl
    bit 7, h
    call nz, Call_000_0c60
    sra h
    rr l
    pop bc
    bit 7, b
    call nz, Call_000_0c60
    ld a, l
    ld [$d40b], a
    ld a, h
    ld [$d40c], a
    ret


Call_010_76ba:
    ld hl, $d4a3
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    push de
    bit 7, d
    call nz, Call_000_0c67
    ld hl, $d409
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    bit 7, h
    call nz, Call_000_0c60
    call Call_000_0cb5
    ld hl, $d4a1
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    push de
    bit 7, d
    call nz, Call_000_0c67
    ldh a, [$ab]
    or a
    jr z, jr_010_76ec

    ld a, $ff
    ld h, a
    ld l, a
    jr jr_010_76f4

jr_010_76ec:
    ldh a, [$a8]
    ld l, a
    ldh a, [$a9]
    ld h, a
    ldh a, [$aa]

jr_010_76f4:
    call Call_000_0ddb
    or a
    jr z, jr_010_76fd

    ld hl, $3fff

jr_010_76fd:
    xor a
    pop bc
    sla b
    adc $00
    pop bc
    sla b
    adc $00
    pop bc
    sla b
    adc $00
    bit 0, a
    call nz, Call_000_0c60
    ld d, h
    ld e, l
    ld hl, $d40b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    ret


Call_010_771e:
    call Call_010_76ba
    push hl
    ld a, [$d4a2]
    cpl
    ld b, a
    ld a, [$d4a4]
    ld c, a
    xor a
    rl b
    rl a
    rl c
    rl a
    ld b, a
    ld d, a
    ld e, h
    xor a
    rr d
    rr d
    adc $00
    rl e
    adc $00
    bit 0, a
    ld a, b
    jr z, jr_010_7749

    xor $03

jr_010_7749:
    ld [$d4ba], a
    pop hl
    bit 7, h
    call nz, Call_000_0c60
    push hl
    ld hl, $d4a1
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    bit 7, h
    call nz, Call_000_0c60
    push hl
    ld hl, $d4a3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    bit 7, h
    call nz, Call_000_0c60
    pop de
    call Call_000_1a03
    pop hl
    push bc
    call Call_000_11ba
    pop de
    push hl
    ld hl, $4000
    call Call_000_08ac
    ld b, h
    ld c, l
    pop hl
    call Call_000_11ba
    ld a, [$d4ba]
    bit 0, a
    call nz, Call_000_0c60
    ld a, l
    ld [$d4a9], a
    ld a, h
    ld [$d4aa], a
    ld a, [$d4ba]
    bit 1, a
    call nz, Call_000_0c67
    ld a, e
    ld [$d4ab], a
    ld a, d
    ld [$d4ac], a
    push de
    ld hl, $d40b
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    call Call_000_08ac
    ld a, l
    ld [$d4af], a
    ld a, h
    ld [$d4b0], a
    ld hl, $d409
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d4a9
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    ld a, l
    ld [$d4ad], a
    ld a, h
    ld [$d4ae], a
    ret


    ld hl, $d409
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d4a9
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    push hl
    ld hl, $d40b
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d4ab
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    pop de
    call Call_010_7372
    push hl
    ld hl, $d4a1
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    call Call_000_0c67
    ld hl, $d409
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_0cb5
    ldh a, [$ab]
    or a
    jr z, jr_010_780d

    ld a, $ff
    ld h, a
    ld l, a
    jr jr_010_7815

jr_010_780d:
    ldh a, [$a8]
    ld l, a
    ldh a, [$a9]
    ld h, a
    ldh a, [$aa]

jr_010_7815:
    pop de
    push de
    call Call_000_0ddb
    or a
    jr z, jr_010_7820

    ld hl, $3fff

jr_010_7820:
    ld a, l
    ld [$d4a9], a
    ld a, h
    ld [$d4aa], a
    ld hl, $d4a3
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    call Call_000_0c67
    ld hl, $d40b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_0cb5
    ldh a, [$ab]
    or a
    jr z, jr_010_7845

    ld a, $ff
    ld h, a
    ld l, a
    jr jr_010_784d

jr_010_7845:
    ldh a, [$a8]
    ld l, a
    ldh a, [$a9]
    ld h, a
    ldh a, [$aa]

jr_010_784d:
    pop de
    call Call_000_0ddb
    or a
    jr z, jr_010_7857

    ld hl, $3fff

jr_010_7857:
    ld a, l
    ld [$d4ab], a
    ld a, h
    ld [$d4ac], a
    ret


Call_010_7860:
    ld hl, $d40d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $ffc8
    add hl, de
    ld a, l
    ld [$d40d], a
    ld a, h
    ld [$d40e], a
    ld a, [$d407]
    sub $ec
    bit 7, a
    ld a, $01
    jr nz, jr_010_7887

    ld d, h
    ld e, l
    ld hl, $d406
    call Call_010_52da
    ld a, $00

jr_010_7887:
    ret


Call_010_7888:
    xor a
    ld hl, $d409
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $d43d
    ld de, $d400
    xor a
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    xor a
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    call Call_000_2ed5

    db $1e

    ret


Call_010_78ad:
    ld hl, $d499
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $d4bb
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld hl, $d49b
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld hl, $d4bd
    ld a, c
    ld [hl+], a
    ld [hl], b
    xor a
    ld [$d4b8], a
    call Call_010_73ca
    ld a, h
    cp $02
    jr nc, jr_010_78d9

    ld a, [$d4b8]
    or $02
    ld [$d4b8], a

jr_010_78d9:
    ld a, h
    cp $06
    jp c, Jump_010_79ae

    ld a, [$d4b8]
    or $01
    ld [$d4b8], a
    push hl
    ld hl, $d499
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, h
    bit 7, h
    call nz, Call_000_0c60
    ld d, $06
    ld e, $00
    call Call_000_0cb5
    ldh a, [$ab]
    or a
    jr z, jr_010_7906

    ld a, $ff
    ld h, a
    ld l, a
    jr jr_010_790e

jr_010_7906:
    ldh a, [$a8]
    ld l, a
    ldh a, [$a9]
    ld h, a
    ldh a, [$aa]

jr_010_790e:
    pop de
    push de
    call Call_000_0ddb
    or a
    jr z, jr_010_7919

    ld hl, $3fff

jr_010_7919:
    ld d, h
    ld e, l
    bit 7, b
    call nz, Call_000_0c67
    ld a, e
    ld [$d499], a
    ld a, d
    ld [$d49a], a
    ld hl, $d43d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    xor a
    ld [$d400], a
    ld a, l
    ld [$d401], a
    ld a, h
    ld [$d402], a
    ld hl, $d400
    call Call_010_52da
    ld hl, $d49b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, h
    bit 7, h
    call nz, Call_000_0c60
    ld d, $06
    ld e, $00
    call Call_000_0cb5
    ldh a, [$ab]
    or a
    jr z, jr_010_795e

    ld a, $ff
    ld h, a
    ld l, a
    jr jr_010_7966

jr_010_795e:
    ldh a, [$a8]
    ld l, a
    ldh a, [$a9]
    ld h, a
    ldh a, [$aa]

jr_010_7966:
    pop de
    call Call_000_0ddb
    or a
    jr z, jr_010_7970

    ld hl, $3fff

jr_010_7970:
    ld d, h
    ld e, l
    bit 7, b
    call nz, Call_000_0c67
    ld a, e
    ld [$d49b], a
    ld a, d
    ld [$d49c], a
    ld hl, $d43f
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    xor a
    ld [$d403], a
    ld a, l
    ld [$d404], a
    ld a, h
    ld [$d405], a
    ld hl, $d403
    call Call_010_52da
    ld hl, $d49b
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d499
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_010_7372
    ld a, l
    ld [$d4a5], a
    ld a, h
    ld [$d4a6], a

Jump_010_79ae:
    ret


Call_010_79af:
    push bc
    push de
    push hl
    ld hl, $d43f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d43d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    xor a
    ld [$d415], a
    ld [$d4b8], a
    ld hl, $4d45
    call Call_000_2449

Jump_010_79cb:
    ld a, [$d4b8]
    or a
    jp z, Jump_010_7a0e

    ld a, [$d408]
    bit 7, a
    jr nz, jr_010_79e7

    xor a
    ld [$d444], a
    ld a, $01
    ld [$d415], a
    ld a, $02
    jp Jump_010_7a33


jr_010_79e7:
    call Call_010_74a1
    call Call_010_750b
    ld a, [$d4b8]
    bit 1, a
    jr nz, jr_010_79fd

    bit 0, a
    jr z, jr_010_7a0e

    call Call_010_760e
    jr jr_010_7a0e

jr_010_79fd:
    ld a, [$d4d5]
    or a
    jr nz, jr_010_7a0e

    ld a, [$d4b9]
    or a
    jr nz, jr_010_7a0e

    or $01
    ld [$d4b9], a

Jump_010_7a0e:
jr_010_7a0e:
    ld hl, $d409
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d400
    call Call_010_52da
    ld hl, $d40b
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d403
    call Call_010_52da
    call Call_010_78ad
    call Call_010_7860
    call Call_000_2e3b
    or a
    jp z, Jump_010_79cb

Jump_010_7a33:
    push af
    ld a, $01
    ld hl, $4d45
    call Call_000_23e8
    pop af
    pop hl
    pop de
    pop bc
    ret


    sra d
    rr e
    sra d
    rr e
    sra d
    rr e
    sra d
    rr e
    sra d
    rr e
    ld a, h
    ld h, l
    ld l, $00
    call Call_000_0ddb
    or a
    jr z, jr_010_7a62

    ld hl, $3fff

jr_010_7a62:
    ret


Call_010_7a63:
    xor a
    ld [$d4ba], a
    ld hl, $d4af
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d4ad
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_010_7372
    ld a, l
    ld [$d4b3], a
    ld a, h
    ld [$d4b4], a
    ld hl, $d406
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    bit 7, h
    call nz, Call_000_0c60
    ld de, $0080
    call Call_000_0cb5
    ldh a, [$ab]
    or a
    jr z, jr_010_7a9a

    ld a, $ff
    ld h, a
    ld l, a
    jr jr_010_7aa2

jr_010_7a9a:
    ldh a, [$a8]
    ld l, a
    ldh a, [$a9]
    ld h, a
    ldh a, [$aa]

jr_010_7aa2:
    ld de, $0400
    call Call_000_0ddb
    or a
    jr z, jr_010_7aae

    ld hl, $3fff

jr_010_7aae:
    ld b, l
    ld c, $00
    ld a, [$d4b3]
    ld l, a
    ld a, [$d4b4]
    ld h, a
    call Call_000_11ba
    push hl
    ld hl, $d40d
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    sla e
    rl d
    add hl, de
    ld a, l
    ld [$d40d], a
    ld a, h
    ld [$d40e], a
    pop de
    ld a, [$d4ba]
    ld b, d
    rl b
    rl a
    ld [$d4ba], a
    bit 7, d
    call nz, Call_000_0c67
    push de
    ld hl, $d4ad
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d4ba]
    ld b, h
    rl b
    rl a
    ld [$d4ba], a
    bit 7, h
    call nz, Call_000_0c60
    call Call_000_0cb5
    ldh a, [$ab]
    or a
    jr z, jr_010_7b06

    ld a, $ff
    ld h, a
    ld l, a
    jr jr_010_7b0e

jr_010_7b06:
    ldh a, [$a8]
    ld l, a
    ldh a, [$a9]
    ld h, a
    ldh a, [$aa]

jr_010_7b0e:
    push af
    ld a, [$d4b3]
    ld e, a
    ld a, [$d4b4]
    ld d, a
    or d
    jr nz, jr_010_7b21

    ld a, e
    or a
    jr nz, jr_010_7b21

    ld de, $0001

jr_010_7b21:
    pop af
    call Call_000_0ddb
    or a
    jr z, jr_010_7b2b

    ld hl, $3fff

jr_010_7b2b:
    ld a, [$d4ba]
    ld b, a
    xor a
    rr b
    adc $00
    rr b
    adc $00
    bit 0, a
    call z, Call_000_0c60
    ld a, l
    ld [$d4ad], a
    ld a, h
    ld [$d4ae], a
    pop de
    ld hl, $d4af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d4ba]
    rr a
    ld b, h
    rl b
    rl a
    ld [$d4ba], a
    bit 7, h
    call nz, Call_000_0c60
    call Call_000_0cb5
    ldh a, [$ab]
    or a
    jr z, jr_010_7b6c

    ld a, $ff
    ld h, a
    ld l, a
    jr jr_010_7b74

jr_010_7b6c:
    ldh a, [$a8]
    ld l, a
    ldh a, [$a9]
    ld h, a
    ldh a, [$aa]

jr_010_7b74:
    push af
    ld a, [$d4b3]
    ld e, a
    ld a, [$d4b4]
    ld d, a
    or d
    jr nz, jr_010_7b87

    ld a, e
    or a
    jr nz, jr_010_7b87

    ld de, $0001

jr_010_7b87:
    pop af
    call Call_000_0ddb
    or a
    jr z, jr_010_7b91

    ld hl, $3fff

jr_010_7b91:
    ld a, [$d4ba]
    ld b, a
    xor a
    rr b
    adc $00
    rr b
    adc $00
    bit 0, a
    call z, Call_000_0c60
    ld a, l
    ld [$d4af], a
    ld a, h
    ld [$d4b0], a
    ret


Call_010_7bac:
    rst $20
    ld h, b
    add hl, bc
    push af
    push bc
    push de
    push hl
    ld a, [$c836]
    ld d, a
    ld a, [$c837]
    ld e, a
    ld b, $00
    ldh a, [$9e]
    push af
    ld a, $03
    ldh [$9e], a
    push hl
    push de
    ld hl, $7c9b
    ld de, $0d09
    call Call_000_20b1
    pop de
    pop hl
    push hl
    push de
    ld hl, $7ca2
    ld de, $0d0b
    call Call_000_20b1
    pop de
    pop hl

Jump_010_7bde:
    call Call_000_2e3b
    ldh a, [$91]
    and $c0
    jr z, jr_010_7beb

    ld a, b
    xor $01
    ld b, a

jr_010_7beb:
    ld a, b
    or a
    jr nz, jr_010_7c10

    ldh a, [$91]
    bit 4, a
    jr z, jr_010_7bf8

    inc d
    jr jr_010_7bfd

jr_010_7bf8:
    bit 5, a
    jr z, jr_010_7c2f

    dec d

jr_010_7bfd:
    bit 7, d
    jr z, jr_010_7c05

    ld d, $0a
    jr jr_010_7c2f

jr_010_7c05:
    ld a, d
    cp $0a
    jr c, jr_010_7c2f

    jr z, jr_010_7c2f

    ld d, $00
    jr jr_010_7c2f

jr_010_7c10:
    ldh a, [$91]
    bit 4, a
    jr z, jr_010_7c19

    inc e
    jr jr_010_7c1e

jr_010_7c19:
    bit 5, a
    jr z, jr_010_7c2f

    dec e

jr_010_7c1e:
    ld a, e
    or a
    jr nz, jr_010_7c26

    ld e, $12
    jr jr_010_7c2f

jr_010_7c26:
    ld a, e
    cp $12
    jr c, jr_010_7c2f

    jr z, jr_010_7c2f

    ld e, $01

jr_010_7c2f:
    ld a, b
    or a
    jr nz, jr_010_7c4f

    push hl
    push de
    ld hl, $7ca7
    ld de, $0c09
    call Call_000_20b1
    pop de
    pop hl
    push hl
    push de
    ld hl, $7ca9
    ld de, $0c0b
    call Call_000_20b1
    pop de
    pop hl
    jr jr_010_7c69

jr_010_7c4f:
    push hl
    push de
    ld hl, $7ca7
    ld de, $0c0b
    call Call_000_20b1
    pop de
    pop hl
    push hl
    push de
    ld hl, $7ca9
    ld de, $0c09
    call Call_000_20b1
    pop de
    pop hl

jr_010_7c69:
    push de
    push af
    ld a, d
    ld de, $0e0a
    call Call_000_22d2
    pop af
    pop de
    push de
    push af
    ld a, e
    ld de, $0e0c
    call Call_000_22d2
    pop af
    pop de
    ldh a, [$91]
    bit 0, a
    jr nz, jr_010_7c8b

    call Call_000_0a61
    jp Jump_010_7bde


jr_010_7c8b:
    pop af
    ldh [$9e], a
    ld a, d
    ld [$c836], a
    ld a, e
    ld [$c837], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    ld b, e
    ld c, a
    ld d, l
    ld d, d
    ld d, e
    ld b, l
    nop
    ld c, b
    ld c, a
    ld c, h
    ld b, l
    nop
    ld a, $00
    jr nz, jr_010_7cab

Call_010_7cab:
jr_010_7cab:
    ld hl, $d4b9
    bit 1, [hl]
    jr z, jr_010_7cb4

    xor a
    ret


jr_010_7cb4:
    ld hl, $d40b
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d409
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_010_7372
    ld a, h
    cp $03
    ld a, $00
    jp nc, Jump_010_7e67

    ld hl, $d43d
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    push hl
    ld hl, $d43f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    pop de
    call Call_010_7372
    ld a, h
    or l
    ld a, $00
    jp nz, Jump_010_7e67

    ld hl, $d43d
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld d, e
    ld e, $00
    ld hl, $d400
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    bit 7, h
    call nz, Call_000_0c60
    push hl
    ld d, h
    ld a, l
    ld hl, $d4b3
    ld [hl+], a
    ld [hl], d
    pop hl
    ld d, $0b
    ld e, $00
    call Call_000_08ac
    bit 7, h
    ld a, $00
    jp z, Jump_010_7e67

    ld hl, $d43f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld d, e
    ld e, $00
    ld hl, $d403
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    bit 7, h
    call nz, Call_000_0c60
    ld b, h
    ld c, l
    ld d, $0d
    ld e, $00
    call Call_000_08ac
    bit 7, h
    ld a, $00
    jp z, Jump_010_7e67

    ld hl, $d4b3
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, b
    ld e, c
    call Call_010_7372
    ld d, $10
    ld e, $00
    call Call_000_08ac
    bit 7, h
    call nz, Call_000_0c60
    sra h
    rr l
    sra h
    rr l
    ld a, h
    ld [$d4a5], a
    ld a, $00
    ld [$d4a6], a
    ld hl, $d43d
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    push de
    bit 7, d
    call nz, Call_000_0c67
    ld d, e
    ld e, $00
    pop hl
    bit 7, h
    call nz, Call_000_0c67
    push de
    ld hl, $d400
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    call Call_000_08ac
    push hl
    ld hl, $d43f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    push de
    bit 7, d
    call nz, Call_000_0c67
    ld d, e
    ld e, $00
    pop hl
    bit 7, h
    call nz, Call_000_0c67
    push de
    ld hl, $d403
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    call Call_000_08ac
    pop de
    ld a, e
    ld [$d499], a
    ld a, d
    ld [$d49a], a
    ld a, l
    ld [$d49b], a
    ld a, h
    ld [$d49c], a
    call Call_010_7372
    push hl
    ld hl, $d499
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d4a5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0004
    add hl, bc
    bit 7, d
    call nz, Call_000_0c67
    call Call_000_0cb5
    ldh a, [$ab]
    or a
    jr z, jr_010_7deb

    ld a, $ff
    ld h, a
    ld l, a
    jr jr_010_7df3

jr_010_7deb:
    ldh a, [$a8]
    ld l, a
    ldh a, [$a9]
    ld h, a
    ldh a, [$aa]

jr_010_7df3:
    pop de
    push de
    call Call_000_0ddb
    or a
    jr z, jr_010_7dfe

    ld hl, $3fff

jr_010_7dfe:
    ld a, [$d49a]
    bit 7, a
    call nz, Call_000_0c60
    ld d, h
    ld e, l
    ld hl, $d409
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$d409], a
    ld a, h
    ld [$d40a], a
    ld hl, $d49b
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d4a5
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld bc, $0004
    add hl, bc
    bit 7, d
    call nz, Call_000_0c67
    call Call_000_0cb5
    ldh a, [$ab]
    or a
    jr z, jr_010_7e3a

    ld a, $ff
    ld h, a
    ld l, a
    jr jr_010_7e42

jr_010_7e3a:
    ldh a, [$a8]
    ld l, a
    ldh a, [$a9]
    ld h, a
    ldh a, [$aa]

jr_010_7e42:
    pop de
    call Call_000_0ddb
    or a
    jr z, jr_010_7e4c

    ld hl, $3fff

jr_010_7e4c:
    ld a, [$d49c]
    bit 7, a
    call nz, Call_000_0c60
    ld d, h
    ld e, l
    ld hl, $d40b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, l
    ld [$d40b], a
    ld a, h
    ld [$d40c], a
    ld a, $01

Jump_010_7e67:
    ret


    push af
    push bc
    push de
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    push hl
    ld hl, $d43d
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d401
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    push hl
    ld hl, $d43f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d404
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    pop de
    call Call_010_7372
    ld d, h
    ld e, l
    pop hl
    call Call_000_08ac
    bit 7, h
    ld a, $01
    jr nz, jr_010_7ea5

    xor a

jr_010_7ea5:
    pop de
    pop bc
    pop af
    ret


    push bc
    push de
    push hl
    ld hl, $d4bb
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d499
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, d
    or e
    jr nz, jr_010_7ebe

    ld d, h
    ld e, l

jr_010_7ebe:
    ld b, $01
    xor a
    sla d
    adc $00
    sla h
    adc $00
    bit 0, a
    jr nz, jr_010_7ecf

    ld b, $00

jr_010_7ecf:
    ld hl, $d4bd
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d49b
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, d
    or e
    jr nz, jr_010_7ee1

    ld d, h
    ld e, l

jr_010_7ee1:
    ld c, $01
    xor a
    sla d
    adc $00
    sla h
    adc $00
    bit 0, a
    jr nz, jr_010_7ef2

    ld c, $00

jr_010_7ef2:
    ld a, b
    add c
    sra a
    or a
    jr z, jr_010_7f21

    ld hl, $d43d
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d401
    ld a, e
    ld [hl+], a
    ld [hl], d
    inc hl
    xor a
    ld [hl], a
    ld hl, $d43f
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d404
    ld a, e
    ld [hl+], a
    ld [hl], d
    inc hl
    xor a
    ld [hl], a
    ld a, [$d4b8]
    or $02
    ld [$d4b8], a
    ld a, $01

jr_010_7f21:
    pop hl
    pop de
    pop bc
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
