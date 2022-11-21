INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03e", ROMX[$4000], BANK[$3e]

    db $3f, $40

    ld h, c
    ld h, e

    db $5c, $67

    rlca
    rlca
    ld sp, hl
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop

    db $09, $07, $f0, $f1, $f2, $f3, $f4, $f5, $f6, $f7, $f8, $00, $02, $08, $ca, $cb
    db $cc, $cd, $00, $02, $08, $ce, $cf, $00

    add hl, bc
    ld b, $ca
    set 1, h
    call Call_000_0900
    ld b, $ce
    rst $08
    nop
    ld [hl-], a
    add hl, bc
    ld b, d
    add hl, bc
    ld sp, $4109
    add hl, bc

    db $07, $08, $05

Call_03e_403f:
    push bc
    push de
    push hl
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    rst $18

    db $00, $05

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18

    db $06, $01

    rst $18

    db $1a, $03

    call Call_000_0341
    call Call_000_23b6
    call Call_000_2683
    ld a, $90
    ldh [rWY], a
    xor a
    ldh [$8a], a
    ldh [$8b], a
    ldh a, [$96]
    push af
    call Call_03e_4102
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d592], a
    ld a, [$c83a]
    or a
    jr nz, jr_03e_408c

    call Call_03e_4164
    jr jr_03e_408f

jr_03e_408c:
    call Call_03e_4377

jr_03e_408f:
    call Call_03e_43f7
    call Call_03e_4842
    xor a
    call Call_03e_4450
    call Call_03e_4505
    ld bc, $0506
    call Call_03e_60ca
    call Call_03e_456a
    ld a, $01
    call Call_03e_4450
    call Call_03e_4505
    ld bc, $050b
    call Call_03e_60ca
    call Call_03e_456a
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $b800
    ld c, $24
    call Call_000_0468
    ld hl, $d400
    ld de, $9800
    ld c, $24
    call Call_000_04db
    call Call_000_0804
    rst $18

    db $24, $03

    call Call_03e_489e
    call Call_03e_45b0
    call Call_03e_4605
    ld a, $0f
    ld hl, $465a
    call Call_000_23e8
    call Call_000_0371
    ld c, $10
    call Call_000_25af
    call Call_000_2625
    call Call_03e_6098
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    pop hl
    pop de
    pop bc
    ret


Call_03e_4102:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4e90
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $b000
    ld c, $80
    call Call_000_0468
    ld hl, $d800
    ld de, $a800
    ld c, $80
    call Call_000_04db
    ld hl, $5d50
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $a000
    ld c, $0a
    call Call_000_04db
    ld hl, $5882
    ld de, $0008
    call Call_000_0595
    ld hl, $6048
    ld de, $0801
    call Call_000_0595
    ld hl, $58d0
    ld de, $d000
    ld c, $24
    call Call_000_03eb
    ld hl, $5b10
    ld de, $d400
    ld c, $24
    call Call_000_03eb
    ret


Call_03e_4164:
    push af
    push bc
    push de
    push hl
    ld hl, $d553
    ld a, $14
    ld [hl], a
    xor a
    ld hl, $d557
    ld [hl], a
    ld hl, $d555
    ld [hl], a
    ld hl, $d556
    ld [hl], a
    ld hl, $d559
    ld [hl], a
    ld hl, $d55a
    ld [hl], a
    ld hl, $d55b
    ld [hl], a
    ld hl, $d55c
    ld [hl], a
    ld hl, $d526
    ld [hl], a
    ld hl, $d527
    ld [hl], a
    ld hl, $d528
    ld [hl], a
    ld hl, $d529
    ld [hl], a
    ld hl, $d558
    ld [hl], a

Jump_03e_419f:
    ld a, [$c837]
    ld b, a
    ld a, [$c4bd]
    cp $00
    jr nz, jr_03e_41b1

    dec b
    ld a, b
    cp $00
    jp z, Jump_03e_425b

jr_03e_41b1:
    ld hl, $d558
    ld a, [hl]
    cp b
    jp z, Jump_03e_425b

    ld d, $00
    ld e, a
    ld hl, $c96e
    add hl, de
    ld a, [hl]
    cp $01
    jr z, jr_03e_4202

    cp $02
    jr z, jr_03e_422b

    ld hl, $d553
    ld a, [hl]
    dec a
    ld [hl], a
    ld hl, $d557
    ld a, [hl]
    inc a
    ld [hl], a
    ld hl, $d559
    ld a, [hl]
    inc a
    ld [hl], a
    ld hl, $d55a
    ld a, [hl]
    inc a
    ld [hl], a
    ld a, [$c4bd]
    cp $00
    jr z, jr_03e_41f4

    ld a, [$c837]
    ld b, a
    dec b
    ld hl, $d558
    ld a, [hl]
    cp b
    jr z, jr_03e_4252

jr_03e_41f4:
    ld hl, $d55b
    ld a, [hl]
    inc a
    ld [hl], a
    ld hl, $d55c
    ld a, [hl]
    inc a
    ld [hl], a
    jr jr_03e_4252

jr_03e_4202:
    ld hl, $d555
    ld a, [hl]
    inc a
    ld [hl], a
    ld hl, $d559
    ld a, [hl]
    inc a
    inc a
    ld [hl], a
    ld a, [$c4bd]
    cp $00
    jr z, jr_03e_4222

    ld a, [$c837]
    ld b, a
    dec b
    ld hl, $d558
    ld a, [hl]
    cp b
    jr z, jr_03e_4252

jr_03e_4222:
    ld hl, $d55b
    ld a, [hl]
    inc a
    inc a
    ld [hl], a
    jr jr_03e_4252

jr_03e_422b:
    ld hl, $d556
    ld a, [hl]
    inc a
    ld [hl], a
    ld hl, $d55a
    ld a, [hl]
    inc a
    inc a
    ld [hl], a
    ld a, [$c4bd]
    cp $00
    jr z, jr_03e_424b

    ld a, [$c837]
    ld b, a
    dec b
    ld hl, $d558
    ld a, [hl]
    cp b
    jr z, jr_03e_4252

jr_03e_424b:
    ld hl, $d55c
    ld a, [hl]
    inc a
    inc a
    ld [hl], a

jr_03e_4252:
    ld hl, $d558
    ld a, [hl]
    inc a
    ld [hl], a
    jp Jump_03e_419f


Jump_03e_425b:
    ld hl, $d553
    ld a, [hl]
    ld hl, $d554
    ld [hl], a
    sra a
    ld hl, $d553
    ld [hl], a
    ld b, a
    ld hl, $d554
    ld a, [hl]
    dec a
    sra a
    cp b
    jr z, jr_03e_427a

    ld hl, $d552
    ld a, $01
    ld [hl], a

jr_03e_427a:
    bit 7, b
    jr z, jr_03e_4284

    ld a, $01
    ld hl, $d553
    ld [hl], a

jr_03e_4284:
    ld a, [$c83a]
    cp $00
    jr nz, jr_03e_428f

    ld a, $11
    jr jr_03e_4291

jr_03e_428f:
    ld a, $01

jr_03e_4291:
    ld b, a
    ld hl, $d559
    ld a, [hl]
    sub b
    bit 7, a
    jr nz, jr_03e_42a1

    cp $00
    jr z, jr_03e_42a1

    jr jr_03e_42bc

jr_03e_42a1:
    ld a, [$c83a]
    cp $00
    jr nz, jr_03e_42ac

    ld a, $11
    jr jr_03e_42ae

jr_03e_42ac:
    ld a, $01

jr_03e_42ae:
    ld b, a
    ld hl, $d55a
    ld a, [hl]
    sub b
    bit 7, a
    jr nz, jr_03e_42c4

    cp $00
    jr z, jr_03e_42c4

jr_03e_42bc:
    ld hl, $d525
    ld a, $01
    ld [hl], a
    jr jr_03e_42c9

jr_03e_42c4:
    ld hl, $d525
    xor a
    ld [hl], a

jr_03e_42c9:
    ld a, [$c83a]
    cp $00
    jr nz, jr_03e_42d4

    ld a, $11
    jr jr_03e_42d6

jr_03e_42d4:
    ld a, $01

jr_03e_42d6:
    ld b, a
    ld hl, $d55b
    ld a, [hl]
    sub b
    cp $01
    jr nz, jr_03e_42e2

    jr jr_03e_42f9

jr_03e_42e2:
    ld a, [$c83a]
    cp $00
    jr nz, jr_03e_42ed

    ld a, $11
    jr jr_03e_42ef

jr_03e_42ed:
    ld a, $01

jr_03e_42ef:
    ld b, a
    ld hl, $d55c
    ld a, [hl]
    sub b
    cp $01
    jr nz, jr_03e_4301

jr_03e_42f9:
    ld hl, $d52a
    ld a, $01
    ld [hl], a
    jr jr_03e_4306

jr_03e_4301:
    ld hl, $d52a
    xor a
    ld [hl], a

jr_03e_4306:
    ld hl, $d525
    ld a, [hl]
    cp $00
    jr z, jr_03e_4356

    ld hl, $d555
    ld a, [hl]
    ld b, a
    ld hl, $d553
    ld a, [hl]
    sub b
    cp $01
    jr nz, jr_03e_4332

    ld hl, $d556
    ld a, [hl]
    ld b, a
    ld hl, $d553
    ld a, [hl]
    sub b
    sub $02
    bit 7, a
    jr nz, jr_03e_4332

    ld hl, $d526
    ld a, $01
    ld [hl], a

jr_03e_4332:
    ld hl, $d556
    ld a, [hl]
    ld b, a
    ld hl, $d553
    ld a, [hl]
    sub b
    cp $01
    jr nz, jr_03e_4356

    ld hl, $d555
    ld a, [hl]
    ld b, a
    ld hl, $d553
    ld a, [hl]
    sub b
    sub $02
    bit 7, a
    jr nz, jr_03e_4356

    ld hl, $d527
    ld a, $01
    ld [hl], a

jr_03e_4356:
    ld hl, $d555
    ld a, [hl]
    ld b, a
    ld hl, $d553
    ld a, [hl]
    sub b
    ld hl, $d528
    ld [hl], a
    ld hl, $d556
    ld a, [hl]
    ld b, a
    ld hl, $d553
    ld a, [hl]
    sub b
    ld hl, $d529
    ld [hl], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03e_4377:
    push af
    push bc
    push de
    push hl
    ld hl, $d553
    ld a, $02
    ld [hl], a
    xor a
    ld hl, $d557
    ld [hl], a
    ld hl, $d555
    ld [hl], a
    ld hl, $d556
    ld [hl], a
    ld hl, $d559
    ld [hl], a
    ld hl, $d55a
    ld [hl], a
    ld hl, $d526
    ld [hl], a
    ld hl, $d527
    ld [hl], a
    ld hl, $d528
    ld [hl], a
    ld hl, $d529
    ld [hl], a
    ld hl, $d55b
    ld [hl], a
    ld hl, $d55c
    ld [hl], a
    ld hl, $d558
    ld [hl], a
    ld a, [$c4bd]
    cp $00
    jr z, jr_03e_43f4

    ld a, [$c96c]
    cp $01
    jr z, jr_03e_43d8

    cp $02
    jr z, jr_03e_43e7

    ld hl, $d557
    ld a, [hl]
    inc a
    ld [hl], a
    ld hl, $d559
    ld a, [hl]
    inc a
    ld [hl], a
    ld hl, $d55a
    ld a, [hl]
    inc a
    ld [hl], a
    jr jr_03e_43f4

jr_03e_43d8:
    ld hl, $d555
    ld a, [hl]
    inc a
    ld [hl], a
    ld hl, $d559
    ld a, [hl]
    inc a
    inc a
    ld [hl], a
    jr jr_03e_43f4

jr_03e_43e7:
    ld hl, $d556
    ld a, [hl]
    inc a
    ld [hl], a
    ld hl, $d55a
    ld a, [hl]
    inc a
    inc a
    ld [hl], a

jr_03e_43f4:
    jp Jump_03e_425b


Call_03e_43f7:
    push af
    push bc
    push de
    push hl
    ld a, [$c837]
    ld d, a
    sub $0a
    bit 7, a
    jr nz, jr_03e_441d

    ld b, $07
    ld c, $04
    ld a, $c0
    call Call_03e_6209
    ld b, $07
    ld c, $05
    ld a, $d0
    call Call_03e_6209
    ld a, [$c837]
    sub $0a
    ld d, a

jr_03e_441d:
    ld a, d
    cp $00
    jr z, jr_03e_4439

    dec a
    push af
    add $c0
    ld b, $08
    ld c, $04
    call Call_03e_6209
    pop af
    add $d0
    ld b, $08
    ld c, $05
    call Call_03e_6209
    jr jr_03e_444b

jr_03e_4439:
    ld a, $af
    ld b, $08
    ld c, $04
    call Call_03e_6209
    ld a, $bf
    ld b, $08
    ld c, $05
    call Call_03e_6209

jr_03e_444b:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03e_4450:
    push af
    push bc
    push de
    push hl
    ld h, a
    ldh a, [$96]
    push af
    ld a, h
    cp $01
    jp z, Jump_03e_44ae

    ld a, [$d528]
    cp $00
    jp z, Jump_03e_44fb

    ld a, [$d529]
    cp $00
    jp z, Jump_03e_44fb

    ld hl, $d526
    ld a, [hl]
    cp $01
    jp nz, Jump_03e_4482

    ld hl, $4006
    ld d, $00
    call Call_03e_6293
    jp Jump_03e_44fb


Jump_03e_4482:
    ld hl, $d528
    ld a, [hl]
    ld h, $00
    ld l, a
    rst $18

    db $56, $05

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $14be
    ld de, $d4e7
    rst $18

    db $22, $05

    ld hl, $d0e7
    ld a, $00
    ld [hl], a
    inc hl
    ld [hl], a
    ld hl, $4010
    ld d, $00
    call Call_03e_6293
    jp Jump_03e_44fb


Jump_03e_44ae:
    ld a, [$d528]
    cp $00
    jp z, Jump_03e_44fb

    ld a, [$d529]
    cp $00
    jp z, Jump_03e_44fb

    ld hl, $d527
    ld a, [hl]
    cp $01
    jp nz, Jump_03e_44d2

    ld hl, $4006
    ld d, $05
    call Call_03e_6293
    jp Jump_03e_44fb


Jump_03e_44d2:
    ld hl, $d529
    ld a, [hl]
    ld h, $00
    ld l, a
    rst $18

    db $56, $05

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $14be
    ld de, $d587
    rst $18

    db $22, $05

    ld hl, $d187
    ld a, $00
    ld [hl], a
    inc hl
    ld [hl], a
    ld hl, $4010
    ld d, $05
    call Call_03e_6293

Jump_03e_44fb:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03e_4505:
    push af
    push bc
    push de
    push hl
    ld h, a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, h
    cp $01
    jp z, Jump_03e_453b

    ld a, [$403c]
    ld b, a
    ld a, [$403d]
    ld c, a
    ld hl, $d555
    ld a, [hl]

jr_03e_4522:
    cp $00
    jr z, jr_03e_4565

    push af
    ld a, [$4038]
    call Call_03e_6209
    push bc
    inc c
    ld a, [$403a]
    call Call_03e_6209
    pop bc
    pop af
    inc b
    dec a
    jr jr_03e_4522

Jump_03e_453b:
    ld a, [$403e]
    ld c, a
    ld a, [$403c]
    ld b, a
    ld a, [$403d]
    add c
    ld c, a
    ld hl, $d556
    ld a, [hl]

jr_03e_454c:
    cp $00
    jr z, jr_03e_4565

    push af
    ld a, [$4038]
    call Call_03e_6209
    push bc
    inc c
    ld a, [$403a]
    call Call_03e_6209
    pop bc
    pop af
    inc b
    dec a
    jr jr_03e_454c

jr_03e_4565:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03e_456a:
    push af
    push bc
    push de
    push hl
    cp $01
    jr z, jr_03e_457d

    ld hl, $c890
    ld a, [hl]
    ld hl, $c893
    ld d, $00
    jr jr_03e_4586

jr_03e_457d:
    ld hl, $c8d0
    ld a, [hl]
    ld hl, $c8d3
    ld d, $05

jr_03e_4586:
    cp $0b
    jr z, jr_03e_459d

    ld a, [hl]
    cp $00
    jr z, jr_03e_459d

    cp $01
    jr z, jr_03e_45a5

    cp $02
    jr z, jr_03e_459d

    cp $03
    jr z, jr_03e_45a5

    jr jr_03e_45ab

jr_03e_459d:
    ld hl, $4023
    call Call_03e_6293
    jr jr_03e_45ab

jr_03e_45a5:
    ld hl, $401c
    call Call_03e_6293

jr_03e_45ab:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03e_45b0:
    push af
    push bc
    push de
    push hl
    ld a, [$c890]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $4990
    add hl, de
    ld de, $a5c0
    ld c, $04
    call Call_000_04db
    pop hl
    ld de, $4d90
    add hl, de
    ld a, [$c899]
    bit 4, a
    jr z, jr_03e_45dd

    ld de, $0080
    add hl, de

jr_03e_45dd:
    ld de, $0c01
    call Call_000_056c
    jr jr_03e_4600

    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $4d90
    add hl, de
    ld de, $0c01
    call Call_000_056c
    ld hl, $4950
    ld de, $a5c0
    ld c, $04
    call Call_000_04db

jr_03e_4600:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03e_4605:
    push af
    push bc
    push de
    push hl
    ld a, [$c8d0]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $4990
    add hl, de
    ld de, $a6c0
    ld c, $04
    call Call_000_04db
    pop hl
    ld de, $4d90
    add hl, de
    ld a, [$c8d9]
    bit 4, a
    jr z, jr_03e_4632

    ld de, $0080
    add hl, de

jr_03e_4632:
    ld de, $0d01
    call Call_000_056c
    jr jr_03e_4655

    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $4d90
    add hl, de
    ld de, $0d01
    call Call_000_056c
    ld hl, $4950
    ld de, $a6c0
    ld c, $04
    call Call_000_04db

jr_03e_4655:
    pop hl
    pop de
    pop bc
    pop af
    ret


    ldh a, [$96]
    push af
    push af
    push bc
    push de
    push hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0201
    ld de, $1030
    ld bc, $0c5c
    call Call_000_2756
    ld hl, $0201
    ld de, $1058
    ld bc, $0d6c
    call Call_000_2756
    ldh a, [$8c]
    and $3f
    ld hl, $47b3
    add l
    ld l, a
    jr nc, jr_03e_468b

    inc h

jr_03e_468b:
    ld e, $00
    ld d, [hl]
    ld hl, $4930
    ld bc, $0800
    call Call_000_26ea
    ld a, [$d61d]
    or a
    jr z, jr_03e_46be

    ld a, [$d61d]
    cp $02
    jr z, jr_03e_46b2

    ld hl, $4800
    ld bc, $0b30
    ld de, $0000
    call Call_000_26ea
    jr jr_03e_46be

jr_03e_46b2:
    ld hl, $4820
    ld bc, $0b30
    ld de, $0000
    call Call_000_26ea

jr_03e_46be:
    ld a, [$c4bd]
    cp $00
    jp z, Jump_03e_47a9

    ld a, [$c83a]
    cp $00
    jr z, jr_03e_46d2

    ld a, [$c96c]
    jr jr_03e_46de

jr_03e_46d2:
    ld hl, $c96e
    ld a, [$c837]
    dec a
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl]

jr_03e_46de:
    cp $01
    jr z, jr_03e_46e9

    cp $02
    jr z, jr_03e_4748

    jp Jump_03e_47a9


jr_03e_46e9:
    ld hl, $d555
    ld a, [hl]
    dec a
    ld b, a
    ld a, [$403c]
    add b
    ld b, a
    ld a, [$403d]
    ld c, a
    ld a, [$d592]
    inc a
    and $1f
    ld [$d592], a
    bit 4, a
    jr nz, jr_03e_4727

    push bc
    call Call_03e_61cd
    push hl
    pop de
    ld hl, $4034
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_04b4
    pop bc
    inc c
    call Call_03e_61cd
    push hl
    pop de
    ld hl, $4036
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_04b4
    jp Jump_03e_47a9


jr_03e_4727:
    push bc
    call Call_03e_61cd
    push hl
    pop de
    ld hl, $4038
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_04b4
    pop bc
    inc c
    call Call_03e_61cd
    push hl
    pop de
    ld hl, $403a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_04b4
    jr jr_03e_47a9

jr_03e_4748:
    ld hl, $d556
    ld a, [hl]
    dec a
    ld b, a
    ld a, [$403e]
    ld c, a
    ld a, [$403c]
    add b
    ld b, a
    ld a, [$403d]
    add c
    ld c, a
    ld a, [$d592]
    inc a
    and $1f
    ld [$d592], a
    bit 4, a
    jr nz, jr_03e_478a

    push bc
    call Call_03e_61cd
    push hl
    pop de
    ld hl, $4034
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_04b4
    pop bc
    inc c
    call Call_03e_61cd
    push hl
    pop de
    ld hl, $4036
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_04b4
    jr jr_03e_47a9

jr_03e_478a:
    push bc
    call Call_03e_61cd
    push hl
    pop de
    ld hl, $4038
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_04b4
    pop bc
    inc c
    call Call_03e_61cd
    push hl
    pop de
    ld hl, $403a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_04b4

Jump_03e_47a9:
jr_03e_47a9:
    pop hl

jr_03e_47aa:
    pop de
    pop bc
    pop af
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    db $00, $00

    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc

jr_03e_47c6:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop

jr_03e_47d2:
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fd

    db $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fe, $fe
    db $fe, $ff, $ff, $ff, $00, $00

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
    nop
    nop
    nop
    jr nc, jr_03e_4862

    nop
    nop
    jr nc, jr_03e_486e

    ld [bc], a
    nop
    jr nc, @+$72

    inc b
    nop
    jr nc, jr_03e_4886

    ld b, $00
    jr nc, @-$7e

    ld [$3000], sp
    adc b
    ld a, [bc]
    nop
    jr nc, jr_03e_47aa

    inc c
    nop
    add b
    nop
    nop
    nop
    jr nc, jr_03e_487e

    nop
    nop
    jr nc, @+$66

    ld [bc], a
    nop
    jr nc, jr_03e_4896

    inc b
    nop
    jr nc, jr_03e_48a2

    ld b, $00
    jr nc, @+$7e

    ld [$3000], sp
    add h
    ld a, [bc]
    nop
    jr nc, jr_03e_47c6

    inc c
    nop
    jr nc, jr_03e_47d2

    ld c, $00
    add b
    nop

Call_03e_4842:
    push af
    push bc
    push de
    push hl
    ld bc, $1008
    ld a, [$c83a]
    cp $00
    jr z, jr_03e_4854

    ld a, $09
    jr jr_03e_485b

jr_03e_4854:
    ld a, [$d553]
    ld d, a
    ld a, $0a
    sub d

jr_03e_485b:
    cp $00
    jr z, jr_03e_4872

    push af
    ld a, $c9

jr_03e_4862:
    call Call_03e_6209
    push bc
    inc c
    ld a, $c9
    call Call_03e_6209
    pop bc
    pop af

jr_03e_486e:
    dec b
    dec a
    jr jr_03e_485b

jr_03e_4872:
    ld bc, $100d
    jr z, jr_03e_487b

    ld a, $09
    jr jr_03e_4882

jr_03e_487b:
    ld a, [$d553]

jr_03e_487e:
    ld d, a
    ld a, $0a
    sub d

jr_03e_4882:
    cp $00
    jr z, jr_03e_4899

jr_03e_4886:
    push af
    ld a, $c9
    call Call_03e_6209
    push bc
    inc c
    ld a, $c9
    call Call_03e_6209
    pop bc
    pop af
    dec b

jr_03e_4896:
    dec a
    jr jr_03e_4882

jr_03e_4899:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03e_489e:
    push af
    push bc
    push de
    push hl

jr_03e_48a2:
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d61d], a
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$c83a]
    or a
    jr z, jr_03e_48e5

    ld hl, $5e88
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $a300
    ld c, $10
    call Call_000_04db
    ld hl, $6078
    ld de, $0b01
    call Call_000_0595
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $02
    ld [$d61d], a
    jr jr_03e_4920

jr_03e_48e5:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d52a]
    cp $01
    jr nz, jr_03e_4920

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $5f94
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $a300
    ld c, $0e
    call Call_000_04db
    ld hl, $6088
    ld de, $0b01
    call Call_000_0595
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ld [$d61d], a

jr_03e_4920:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    nop
    nop
    nop
    nop
    nop
    nop

    db $10, $70, $00, $00, $10, $78, $02, $00, $10, $80, $04, $00, $10, $88, $06, $00
    db $10, $90, $08, $00, $80

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
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    rra
    rra
    inc e
    rra
    inc l
    ccf

jr_03e_4998:
    ld b, b
    ld a, a
    ld a, a
    ld a, a
    ld [hl], e
    ld a, a
    ld d, d
    ld l, l
    ld [hl], e
    ld e, [hl]
    ld [hl], e
    ld e, [hl]
    adc b
    rst $38
    add b
    rst $38
    ld c, h
    ld a, a
    jr nz, jr_03e_49eb

    add hl, de
    rra
    ld b, $06
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_03e_4998

    db $10
    ldh a, [rNR10]
    ldh a, [$c8]
    ld hl, sp+$68
    ld hl, sp+$34
    db $fc
    inc a
    db $fc
    ld c, h
    db $fc
    inc l
    db $fc
    inc e
    db $fc
    ld a, b
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    jr nc, jr_03e_4a02

    ld c, a
    ld a, a
    sub h
    rst $38
    cp a
    rst $38
    ld a, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld [hl], e
    ld a, a
    ld d, d
    ld l, l
    ld d, d
    rst $38
    adc b
    rst $38
    add b
    ld a, a
    ld b, [hl]
    ccf
    jr nz, jr_03e_4a0a

jr_03e_49eb:
    add hl, de
    ld b, $06
    nop
    nop
    ld [$9608], sp
    sbc [hl]
    ld h, d
    cp $a1
    rst $38
    and c
    rst $38
    sbc $7e
    ret z

    ld a, b
    ld hl, sp-$48
    db $fc
    and h

jr_03e_4a02:
    db $fc
    inc d
    ld hl, sp+$08
    ldh a, [$30]
    ret nz

    ld b, b

jr_03e_4a0a:
    add b
    add b
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$1f0f], sp
    rra
    ccf
    jr nz, jr_03e_4a58

    jr nz, jr_03e_4a5a

    ccf
    ld a, a
    ld b, b
    rst $38
    cp a
    rst $38
    pop af
    xor [hl]
    pop af
    cp a
    add sp, -$41
    ldh [$5f], a
    ld [hl], h
    ccf
    jr c, @+$09

    rlca
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$90], a
    ldh a, [$c8]
    ld a, b
    add sp, $38
    ld hl, sp-$48
    db $fd
    ld h, l
    ei
    ccf
    pop af
    rst $38
    reti


    cpl
    ld a, [$f20e]
    ld a, $cc
    ld a, h
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    inc c
    inc c
    inc de
    rra
    jr nz, jr_03e_4a95

    inc sp
    ccf

jr_03e_4a58:
    ccf
    inc l

jr_03e_4a5a:
    ld a, a
    ld b, b
    ld e, c
    ld h, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld h, [hl]
    ld a, a
    ld d, b
    ld a, a
    ld b, b
    ccf
    inc l
    ccf
    jr nz, jr_03e_4a8c

    ld de, $0e0e
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_03e_4a58

    sub b
    ldh a, [$90]
    ldh a, [$d0]
    ld [hl], b
    ret nc

    ldh a, [$f0]
    ld [hl], b
    ld hl, sp+$48
    ld hl, sp+$28
    ld hl, sp+$18
    db $f4
    ld a, h
    db $e4
    db $fc

jr_03e_4a8c:
    inc e
    inc e
    nop
    nop
    rra
    rra
    ld h, b
    ld a, a
    add b

jr_03e_4a95:
    rst $38
    add a
    rst $38
    ld h, a
    ld a, h
    ld a, a
    ld e, b
    ld a, a
    ld a, [hl]
    rst $38
    push de
    rst $38
    xor c
    ld a, a
    ld c, [hl]
    ld a, a
    ld c, b
    ccf
    jr nc, @+$41

    inc l
    rra
    db $10
    rrca
    add hl, bc
    ld b, $06
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$70
    ldh a, [$d0]
    ld [hl], b
    ldh a, [$f0]
    ld hl, sp+$48
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh [$60], a
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    rlca
    rlca
    jr @+$21

    jr nz, jr_03e_4b15

    ld b, b
    ld a, a
    ld d, b
    ld a, a
    sbc b
    rst $38
    cp h
    rst $20
    ld a, [hl]
    ld [hl], e
    ld a, [hl]
    ld d, e
    cpl
    ld sp, $293f
    ccf
    jr nz, @+$21

    inc d
    rrca
    add hl, bc
    ld b, $06
    nop
    nop
    ret nz

    ret nz

    jr nc, @-$0e

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $02
    cp $0a
    cp $1c
    db $f4
    inc e
    db $f4
    cp b
    add sp, -$4c
    db $fc
    ret z

    ret z

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rlca

jr_03e_4b15:
    rlca
    jr jr_03e_4b37

    jr nz, jr_03e_4b59

    ld [hl], $3f
    db $76
    ld c, c
    db $76
    ld e, l
    sub b
    rst $38
    xor b
    rst $38
    sub b
    rst $38
    add c
    rst $38
    and $ff
    sbc b
    rst $38
    ld b, c
    ld a, a
    ld a, $3e
    jr @+$1a

    inc e
    inc e
    db $fc
    db $ec
    ld [hl], b

jr_03e_4b37:
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$38
    ld hl, sp+$48
    ld hl, sp+$28
    ld hl, sp+$08
    ld hl, sp+$70
    ldh a, [$80]
    add b
    nop
    nop
    rlca
    rlca
    jr jr_03e_4b73

    jr nz, @+$41

    jr nz, jr_03e_4b97

    ld [hl], b

jr_03e_4b59:
    ld a, a
    cp a
    rst $28
    cp a
    ldh a, [$8f]
    rst $38
    ld b, b
    ld a, a
    ccf
    ccf
    ccf
    jr nc, jr_03e_4b86

    inc d
    rra
    db $10
    rrca
    dec bc
    rlca
    inc b
    inc bc
    inc bc
    ldh [$e0], a
    db $10

jr_03e_4b73:
    ldh a, [$08]
    ld hl, sp+$1e
    cp $f9
    rst $28
    pop af
    rra
    ld [c], a
    cp $1c
    db $fc
    db $fc
    db $f4
    cp h
    call nc, $847c

jr_03e_4b86:
    ld hl, sp+$18
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    rlca
    rlca
    ld c, $0b
    ld a, $3f
    ld b, e

jr_03e_4b97:
    ld a, a
    ld a, h
    ld a, a
    ccf
    inc hl
    ccf
    dec [hl]
    ld a, a
    ld [hl], h
    rst $38
    add b
    rst $38
    add a
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, h
    ccf
    jr nz, jr_03e_4bca

    add hl, de
    ld b, $06
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$90], a
    ldh a, [$88]
    ld hl, sp+$44
    db $fc
    call nz, $f4fc
    inc a
    ld hl, sp+$78
    db $fc
    db $e4
    db $fc
    ld d, h
    db $fc
    inc b
    ld hl, sp+$08
    ld hl, sp+$78

jr_03e_4bca:
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    rrca
    rrca
    inc e
    rla
    ld a, $3f
    ld b, c
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld [hl+], a
    ccf
    inc [hl]
    ccf
    inc [hl]
    ld a, a
    ld b, b
    rst $38
    add d
    rst $38
    adc [hl]
    ld a, a
    ld a, [hl]
    ccf
    inc a
    rra
    db $10
    rrca
    ld [$0707], sp
    add b
    add b
    ld h, b
    ldh [$90], a
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$18
    ld a, b
    ld hl, sp+$78
    ld hl, sp-$38
    ld hl, sp-$58
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$60], a
    ret nz

    ld b, b
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    rra
    rra
    inc h
    dec sp
    ld c, [hl]
    ld [hl], c
    ld e, a
    ld a, a
    ld h, b
    ld a, a
    sbc a
    rst $38
    rst $38
    di
    ld a, a
    ld e, [hl]
    ld [hl], e
    ld e, [hl]
    jp hl


    rst $30
    ld [hl], e
    ld a, a
    rst $38
    cp a
    rst $38
    or e
    ld a, a
    ld b, b
    ccf
    inc h

jr_03e_4c2e:
    ccf
    ccf
    add b
    add b
    ld b, b
    ret nz

    jr c, jr_03e_4c2e

    inc d
    db $fc
    rst $00
    rst $38
    rst $20
    db $fd
    rst $38
    cp c
    rst $28
    cp l
    rst $38
    ld de, $7afe
    cp $f2
    db $fc
    call z, $88f8
    ldh a, [rNR10]
    ldh [$60], a
    add b
    add b
    rlca
    rlca
    jr jr_03e_4c73

    jr nz, @+$41

    ld c, b
    ld a, a
    sub e
    rst $38
    and a
    db $fc
    xor a
    ld hl, sp-$41
    di
    cp a
    ld a, [c]
    ld l, l
    ld d, d
    ld a, a
    ld c, b
    ld a, a
    ld b, b
    ccf
    inc h
    rra
    ld de, $0e0e
    nop
    nop
    sbc h
    sbc h
    ld h, d

jr_03e_4c73:
    cp $12
    cp $91
    rst $38
    add hl, bc
    rst $38
    adc c
    rst $38
    ret


    ld a, a
    reti


    ld a, a
    db $fd
    and a
    db $dd
    scf
    cp $06
    ld a, [$cc3e]
    ld c, h
    adc h
    adc h
    ld [$0008], sp
    nop
    rrca
    rrca
    db $10
    rra
    jr nz, jr_03e_4cd5

    ld d, e
    ld a, a
    ld a, a
    ld l, h
    ld a, a
    ld h, b
    ld a, a
    ld e, c
    ld a, a
    ld l, c
    db $76
    ld c, c
    ld a, a
    ld b, b

jr_03e_4ca4:
    ld a, a
    ld b, h
    ccf
    jr nz, jr_03e_4ce8

    ld h, $1f
    db $10
    rrca
    ld [$0707], sp
    ret nz

    ret nz

    jr nc, jr_03e_4ca4

    ld [$c4f8], sp
    db $fc
    db $e4
    inc a
    db $e4
    inc a
    db $f4
    sbc h
    db $fc
    ld e, h
    cp $12
    cp $0a
    cp $02
    db $fc
    inc e
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    rrca
    rrca
    jr nc, @+$41

    ld b, b

jr_03e_4cd5:
    ld a, a
    add b
    rst $38
    add a
    rst $38
    xor a
    ld hl, sp+$7f
    ld [hl], e
    ld a, a
    ld d, d
    ld l, l
    ld d, d
    rst $38
    adc b
    rst $38
    add b
    ld a, l
    ld b, [hl]

jr_03e_4ce8:
    ccf
    jr nz, jr_03e_4d0a

    add hl, de
    ld b, $06
    nop
    nop
    or b
    or b
    ld a, h
    db $ec
    sub d
    cp $92
    cp $c9
    rst $38
    ret


    ld a, a
    ld sp, hl
    ccf
    db $fd
    and a
    db $dd
    or a
    db $fd
    rlca
    ld sp, hl
    rra
    ld a, [$ca3e]
    ld c, [hl]

jr_03e_4d0a:
    add [hl]
    add [hl]
    nop
    nop
    nop
    nop
    rrca
    rrca
    jr nc, jr_03e_4d53

    ld b, b
    ld a, a
    add b
    rst $38
    add a
    rst $38
    xor a
    ld hl, sp+$7f
    ld [hl], e
    ld a, a
    ld d, d
    ld l, l
    ld d, d
    rst $38
    adc b
    rst $38
    add b
    ld a, l
    ld b, [hl]
    ccf
    jr nz, jr_03e_4d4a

    add hl, de
    ld b, $06
    nop
    nop
    or b
    or b
    ld a, h
    db $ec
    sub d
    cp $92
    cp $c9
    rst $38
    ret


    ld a, a
    ld sp, hl
    ccf
    db $fd
    and a
    db $dd
    or a
    db $fd
    rlca
    ld sp, hl
    rra
    ld a, [$ca3e]
    ld c, [hl]

jr_03e_4d4a:
    add [hl]
    add [hl]
    nop
    nop
    nop
    nop
    rrca
    rrca
    db $10

jr_03e_4d53:
    rra
    jr nz, jr_03e_4d95

    ld d, e
    ld a, a
    ld a, a
    ld l, h
    ld a, a
    ld h, b
    ld a, a
    ld e, c
    ld a, a
    ld l, c
    db $76
    ld c, c
    ld a, a
    ld b, b

jr_03e_4d64:
    ld a, a
    ld b, h
    ccf
    jr nz, @+$41

    ld h, $1f
    db $10
    rrca
    ld [$0707], sp
    ret nz

    ret nz

    jr nc, jr_03e_4d64

    ld [$c4f8], sp
    db $fc
    db $e4
    inc a
    db $e4
    inc a
    db $f4
    sbc h
    db $fc
    ld e, h
    cp $12
    cp $0a
    cp $02
    db $fc
    inc e
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    ccf
    ld c, d
    rst $38
    ld l, e
    rst $18

jr_03e_4d95:
    jr jr_03e_4d97

jr_03e_4d97:
    nop
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000

    db $7f, $32, $ff, $6b, $1f, $02, $00, $00

    ld a, a
    ld [hl-], a
    rst $38
    ld l, e
    rra
    ld [bc], a
    nop
    nop
    ccf
    ld c, d
    rst $38
    ld l, e
    rst $18
    jr jr_03e_4dbf

jr_03e_4dbf:
    nop
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    ld e, $5e
    rst $38
    ld l, e
    ret c

    ld a, h
    nop
    nop
    ccf
    ld c, d
    rst $38
    ld l, e
    rst $18
    jr jr_03e_4dd7

jr_03e_4dd7:
    nop

    db $78, $3a, $df, $6b, $80, $12, $00, $00

    rst $38
    ld bc, $6bdf
    ld e, a
    inc bc
    nop
    nop
    ld a, b
    ld a, [hl-]
    rst $18
    ld l, e
    add b
    ld [de], a
    nop
    nop
    ld a, a
    ld [hl-], a
    rst $38
    ld l, e
    rra
    ld [bc], a
    nop
    nop
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    ld a, a
    ld [hl-], a
    rst $38
    ld l, e
    rra
    ld [bc], a
    nop
    nop
    rra
    ld c, d
    rst $38
    ld l, e
    sbc a
    ld d, c
    nop
    nop
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    sbc a
    jr nz, jr_03e_4e1f

jr_03e_4e1f:
    nop
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    sbc a
    jr nz, jr_03e_4e27

jr_03e_4e27:
    nop
    ld a, a
    ld [hl-], a
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    ld a, a
    ld [hl-], a
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    rra
    ld c, d
    rst $38
    ld l, e
    sbc a
    ld d, c
    nop
    nop
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    sbc a
    jr nz, jr_03e_4e47

jr_03e_4e47:
    nop
    ld e, $5e
    rst $38
    ld l, e
    sbc a
    ld bc, $0000
    rra
    ld c, d
    rst $38
    ld l, e
    sbc a
    ld d, c
    nop
    nop
    ld a, b
    ld a, [hl-]
    rst $38
    ld l, e
    inc b
    ld a, a
    nop
    nop
    rst $38
    ld bc, $6bff
    nop
    ld a, d
    nop
    nop
    ld a, b
    ld a, [hl-]
    rst $38
    ld l, e
    inc b
    ld a, a
    nop
    nop
    ld a, a
    ld [hl-], a
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    sbc a
    jr nz, jr_03e_4e7f

jr_03e_4e7f:
    nop
    sbc [hl]
    ld [hl+], a
    rst $38
    ld l, e
    sbc a
    jr nz, jr_03e_4e87

jr_03e_4e87:
    nop
    ld a, a
    ld [hl-], a
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop

    db $ff, $ff, $00, $ff, $00, $cc, $33, $f7, $08, $ff, $f0, $0f, $df, $20, $e1, $1e
    db $80, $7f, $fe, $f0, $e1, $70, $8f, $cf, $30, $78, $87, $8f, $df, $70, $f3, $0c
    db $00, $ff, $e0, $e1, $7f, $80, $ff, $80, $7f, $7f, $80, $c0, $3f, $3f, $c0, $fe
    db $f0, $e3, $1f, $e0, $f0, $0f, $8f, $70, $70, $b7, $8f, $df, $20, $e0, $e3, $c7
    db $38, $d2, $e1, $f0, $f7, $0f, $1f, $e0, $d0, $e3, $8f, $70, $78, $87, $bf, $87
    db $78, $f8, $07, $07, $f8, $c0, $e3, $cc, $37, $33, $37, $c8, $e2, $e1, $e1, $1e
    db $b0, $e3, $a0, $ff, $fe, $a0, $f7, $fe, $01, $fc, $03, $8c, $73, $78, $7f, $87
    db $84, $7b, $f8, $07, $04, $fb, $c0, $e1, $ff, $56, $a9, $e8, $17, $6c, $93, $b0
    db $4f, $ff, $dc, $23, $60, $9f, $9c, $63, $fe, $01, $fb, $54, $ab, $f0, $e9, $ff
    db $fe, $3e, $00, $c4, $ff, $00, $f8, $00, $0c, $00, $f4, $00, $18, $bb, $00, $00
    db $8f, $e0, $3c, $00, $c7, $f0, $e0, $0f, $fb, $00, $f7, $f0, $e3, $00, $fc, $03
    db $c7, $38, $ff, $f9, $06, $ce, $31, $f6, $09, $d9, $26, $ff, $e7, $18, $ff, $00
    db $df, $20, $67, $98, $ff, $b8, $47, $cf, $30, $f6, $09, $39, $c6, $ff, $cf, $30
    db $ff, $00, $f0, $0f, $cf, $30, $ff, $31, $ce, $fe, $01, $03, $fc, $fc, $03, $ff
    db $8f, $70, $ff, $00, $9f, $60, $76, $89, $ff, $cd, $32, $3b, $c4, $f6, $09, $19
    db $e6, $ff, $f7, $08, $ff, $00, $c3, $3c, $fc, $03, $ff, $9b, $64, $6c, $93, $c7
    db $38, $f8, $07, $ff, $0f, $f0, $ff, $00, $9e, $61, $71, $8e, $fe, $fe, $c1, $c7
    db $38, $3c, $c3, $e3, $1c, $ff, $37, $00, $3c, $c3, $a0, $e1, $0e, $f1, $d0, $e1
    db $a0, $ff, $ef, $ff, $00, $9a, $65, $a0, $f9, $fe, $01, $9c, $f7, $63, $70, $8f
    db $fe, $c1, $c4, $3b, $3c, $c3, $bf, $e0, $1f, $ec, $13, $30, $cf, $06, $e1, $bc
    db $5f, $43, $c4, $3b, $78, $87, $b0, $c1, $fb, $20, $e2, $9d, $cf, $0c, $e0, $c7
    db $00, $fc, $22, $c0, $10, $e1, $78, $ff, $00, $8f, $00, $f3, $00, $1c, $00, $e7
    db $fc, $fe, $c0, $fd, $eb, $de, $21, $f3, $0c, $cf, $30, $ff, $f8, $07, $c7, $38
    db $fc, $03, $c3, $3c, $ff, $80, $7f, $32, $cd, $fd, $02, $03, $fc, $ff, $fe, $01
    db $01, $fe, $ff, $00, $80, $7f, $ff, $00, $ff, $79, $86, $c6, $39, $bf, $40, $ef
    db $60, $9f, $9f, $60, $4a, $c1, $00, $ff, $cc, $67, $33, $3b, $c4, $10, $c3, $20
    db $c3, $f3, $0c, $20, $e1, $fe, $32, $c3, $1c, $e3, $00, $ff, $1e, $e1, $e1, $ff
    db $1e, $9f, $60, $60, $9f, $df, $20, $b0, $f7, $4f, $7f, $80, $f0, $e1, $f3, $0c
    db $0f, $f0, $ff, $f8, $07, $87, $78, $7c, $83, $c3, $3c, $f3, $00, $ff, $a0, $ff
    db $a0, $fb, $1c, $e3, $e0, $1f, $ff, $9c, $63, $60, $9f, $dc, $23, $b0, $4f, $c3
    db $7c, $83, $a0, $a5, $40, $a7, $e0, $ad, $0f, $ed, $ff, $f8, $7f, $ff, $e0, $fc
    db $c3, $f7, $88, $f0, $42, $a0, $fe, $10, $a5, $e7, $1c, $c3, $32, $83, $63, $81
    db $f9, $41, $fe, $e1, $f0, $81, $e3, $04, $dd, $1e, $bc, $7f, $3d, $b6, $37, $96
    db $17, $96, $17, $20, $c0, $ff, $04, $b9, $3a, $bc, $3d, $7a, $7b, $3a, $f5, $3b
    db $fe, $e1, $ff, $ff, $e0, $fc, $ff, $e3, $fc, $ff, $cf, $e0, $83, $c0, $80, $c0
    db $0e, $80, $fe, $f0, $e1, $0f, $ff, $97, $0f, $bb, $07, $33, $9f, $07, $03, $77
    db $27, $df, $e0, $e1, $fc, $e7, $07, $f0, $f1, $eb, $f2, $f1, $80, $80, $fc, $f1
    db $b9, $7f, $46, $c6, $ef, $84, $84, $9d, $9d, $e0, $e5, $99, $ff, $66, $df, $66
    db $44, $44, $d5, $d5, $d0, $e5, $ae, $df, $3f, $51, $71, $31, $31, $a6, $a7, $c1
    db $ee, $10, $ed, $fe, $4f, $e1, $e7, $f3, $8f, $c7, $3f, $cf, $3f, $ff, $80, $60
    db $8f, $7f, $ff, $1f, $ff, $07, $9f, $8f, $73, $79, $87, $85, $c0, $84, $0a, $e3
    db $83, $ef, $63, $c7, $26, $ef, $54, $a0, $ff, $00, $96, $ff, $17, $b6, $37, $b6
    db $37, $ac, $2d, $d9, $e7, $1a, $e3, $04, $e4, $61, $0a, $e1, $7a, $7b, $76, $fd
    db $77, $ee, $e5, $1c, $83, $1c, $83, $1b, $84, $ff, $08, $87, $42, $8d, $64, $8b
    db $20, $c7, $ff, $81, $ff, $a6, $5f, $8d, $7e, $60, $9e, $ff, $de, $21, $fb, $04
    db $7d, $82, $65, $9a, $ff, $b8, $c7, $9b, $07, $9d, $03, $0d, $03, $ff, $00, $31
    db $30, $c9, $78, $85, $68, $97, $bf, $31, $cf, $c0, $3f, $f7, $08, $02, $c1, $fe
    db $f7, $01, $c1, $3e, $20, $81, $87, $78, $fd, $02, $cf, $3f, $c0, $e4, $1b, $10
    db $89, $fc, $c9, $49, $c9, $ff, $68, $e8, $88, $88, $94, $9c, $6b, $f7, $fe, $e6
    db $c3, $95, $95, $84, $84, $85, $85, $cd, $fb, $cd, $32, $d6, $c4, $23, $22, $6d
    db $6e, $23, $0f, $22, $23, $22, $dd, $c0, $a0, $c4, $c5, $c0, $6a, $fe, $fd, $f6
    db $00, $e0, $8c, $70, $00, $e7, $ff, $00, $e0, $1f, $f3, $df, $20, $1c, $81, $fe
    db $41, $f1, $0e, $ff, $00, $fb, $39, $c6, $30, $67, $e1, $1e, $ff, $00, $38, $ad
    db $c7, $30, $67, $fc, $03, $a0, $80, $04, $30, $67, $3e, $df, $c1, $ff, $00, $bf
    db $40, $30, $67, $6e, $91, $6f, $ff, $00, $c1, $3e, $30, $67, $e0, $1f, $c0, $ff
    db $fc, $a0, $ff, $a0, $e9, $fe, $01, $f0, $0f, $7c, $83, $3f, $80, $7f, $7c, $83
    db $c0, $3f, $00, $81, $2f, $85, $7f, $82, $00, $12, $00, $36, $00, $66, $20, $82
    db $ff, $04, $00, $08, $00, $19, $00, $13, $00, $87, $33, $00, $37, $ff, $a4, $91
    db $b1, $e5, $80, $03, $40, $ef, $ff, $10, $da, $25, $f6, $09, $cd, $32, $fb, $bd
    db $04, $00, $61, $80, $7f, $3e, $c1, $30, $69, $00, $f7, $ff, $61, $9e, $30, $69
    db $00, $ff, $c3, $3c, $7e, $30, $69, $00, $ff, $b3, $4c, $dc, $23, $d0, $47, $f3
    db $00, $ff, $38, $83, $d0, $45, $00, $ff, $ee, $11, $c6, $30, $69, $00, $ff, $a0
    db $ff, $a0, $fb, $02, $61, $cc, $33, $d3, $30, $cf, $a4, $e1, $a0, $e1, $6e, $c0
    db $8c, $77, $00, $f9, $7f, $fe, $e0, $2a, $21, $f7, $08, $f3, $0c, $f9, $e1, $06
    db $95, $8b, $91, $83, $06, $e3, $fe, $c3, $ff, $ff, $c3, $ce, $da, $40, $9b, $00
    db $6c, $ea, $22, $e0, $21, $9e, $00, $d5, $71, $d2, $40, $78, $da, $20, $3c, $d0
    db $26, $f9, $00, $e7, $0e, $00, $f6, $ac, $c0, $c0, $21, $dc, $00, $67, $bb, $00
    db $b8, $a0, $40, $f6, $00, $39, $b0, $22, $70, $3e, $94, $40, $31, $00, $fe, $00
    db $03, $92, $40, $a0, $21, $7f, $9a, $00, $76, $00, $cd, $00, $3b, $d0, $e6, $fe
    db $a0, $eb, $fe, $80, $e0, $80, $fc, $80, $80, $ce, $fc, $e0, $c0, $80, $bc, $f4
    db $e0, $30, $21, $c6, $39, $7b, $f8, $07, $80, $21, $d8, $27, $e6, $19, $c0, $68
    db $df, $fc, $0d, $02, $f3, $8c, $40, $85, $a7, $5f, $fc, $40, $83, $3f, $4d, $df
    db $20, $cf, $30, $67, $98, $ff, $67, $98, $23, $dc, $23, $dc, $01, $fe, $ff, $01
    db $fe, $f8, $07, $fc, $03, $9c, $63, $ff, $cc, $33, $66, $99, $66, $99, $22, $dd
    db $83, $02, $fd, $08, $e5, $02, $eb, $d7, $62, $f3, $c4, $e8, $21, $e6, $ea, $50
    db $e0, $cc, $d0, $64, $8c, $d6, $20, $1e, $00, $e1, $ec, $b8, $c0, $c0, $63, $e3
    db $00, $ee, $c1, $cf, $00, $32, $e6, $b0, $65, $00, $01, $12, $e6, $b0, $01, $33
    db $00, $dc, $4f, $00, $63, $00, $be, $aa, $00, $90, $63, $99, $00, $e0, $e7, $cf
    db $00, $38, $94, $24, $a0, $ed, $9c, $80, $f0, $af, $80, $cc, $80, $b0, $fc, $c2
    db $f0, $f8, $c0, $de, $ff, $21, $f2, $0d, $ce, $31, $f8, $07, $c6, $df, $39, $fc
    db $03, $c2, $3d, $80, $a1, $88, $77, $7b, $fe, $01, $d0, $67, $0f, $f0, $1f, $e0
    db $b8, $81, $38, $d0, $65, $3f, $2e, $bf, $46, $01, $ff, $03, $90, $40, $b1, $41
    db $ff, $10, $ff, $60, $ff, $c0, $ff, $80, $ff, $83, $88, $ff, $91, $00, $9d, $46
    db $04, $c5, $d5, $49, $c2, $21, $d9, $b7, $26, $f6, $09, $fe, $01, $e7, $18, $70
    db $21, $ff, $fd, $00, $38, $21, $e6, $19, $3b, $c4, $cc, $33, $1e, $da, $83, $8c
    db $73, $f3, $0c, $2a, $21, $32, $21, $c6, $c1, $7b, $e3, $1c, $4e, $a1, $cf, $30
    db $32, $cd, $b0, $e5, $f3, $01, $fe, $12, $a5, $a6, $c1, $33, $cc, $dc, $23, $bf
    db $63, $9c, $be, $41, $c7, $38, $9a, $83, $99, $ff, $66, $76, $89, $cf, $30, $38
    db $c7, $e7, $f1, $18, $8a, $83, $a0, $ff, $a0, $f9, $fe, $01, $30, $cf, $ff, $d8
    db $27, $60, $9f, $b8, $47, $c0, $3f, $ee, $c5, $21, $0f, $ff, $9e, $fe, $e0, $be
    db $ff, $bc, $fb, $ff, $7d, $fe, $e0, $ff, $ff, $30, $ff, $70, $ff, $ff, $71, $ff
    db $e3, $ff, $e7, $ff, $ef, $fe, $75, $24, $e1, $00, $9f, $00, $60, $00, $df, $f3
    db $00, $b0, $e8, $80, $9f, $80, $fe, $f2, $00, $0c, $fe, $16, $a0, $84, $00, $7c
    db $00, $c0, $00, $3e, $fa, $b1, $c1, $7f, $f7, $e0, $80, $06, $8f, $0d, $89, $f8
    db $fe, $e1, $ae, $c2, $28, $c0, $1c, $3e, $2a, $22, $3a, $f7, $62, $5a, $c6, $f0
    db $e5, $3f, $7f, $5e, $c0, $ef, $a0, $81, $ff, $9f, $e0, $e5, $00, $81, $81, $df
    db $83, $82, $82, $03, $86, $d0, $e5, $e3, $f7, $bf, $54, $1c, $eb, $08, $6d, $48
    db $c0, $e5, $0c, $7f, $9f, $93, $f3, $6a, $62, $5b, $42, $e0, $e7, $f5, $57, $e0
    db $e1, $49, $fd, $81, $01, $02, $01, $00, $ff, $81, $c0, $41, $60, $a1, $20, $a1
    db $20, $ff, $32, $cd, $fd, $02, $03, $fc, $fe, $01, $f9, $01, $30, $40, $80, $c1
    db $79, $86, $c6, $39, $00, $df, $ff, $3d, $c3, $7e, $82, $fe, $e3, $cc, $33, $ef
    db $3b, $c4, $00, $ff, $02, $21, $64, $64, $04, $f6, $ff, $e0, $f3, $0c, $da, $61
    db $e6, $ff, $19, $19, $e7, $09, $09, $c9, $ff, $e0, $c6, $c1, $00, $ff, $de, $ff
    db $3f, $e1, $21, $e1, $21, $ee, $2f, $23, $1f, $e2, $1e, $e1, $f3, $0c, $aa, $29
    db $a0, $e1, $ea, $81, $ff, $fd, $02, $fd, $02, $fc, $03, $fc, $03, $fe, $e0, $e3
    db $dd, $3e, $a3, $62, $c3, $42, $db, $ff, $5a, $db, $5a, $0f, $89, $0e, $88, $0f
    db $ff, $88, $0b, $88, $04, $8c, $03, $87, $00, $ff, $c0, $7f, $00, $b4, $86, $74
    db $0c, $e8, $7f, $1d, $91, $39, $21, $71, $c0, $e1, $df, $41, $ff, $ba, $83, $7d
    db $f1, $ed, $e1, $f9, $03, $ef, $02, $87, $fc, $fe, $cf, $41, $05, $04, $07, $ff
    db $0c, $0a, $08, $4f, $e8, $e8, $a8, $47, $fd, $ef, $bf, $41, $d7, $12, $bf, $32
    db $df, $90, $df, $d6, $31, $29, $79, $c6, $f0, $e2, $7b, $d2, $ff, $bb, $82, $fb
    db $82, $db, $92, $92, $b6, $fd, $6d, $9f, $42, $ef, $1b, $df, $1b, $6f, $1a, $9f
    db $6f, $48, $48, $d9, $b7, $8f, $42, $0c, $e0, $60, $ff, $41, $60, $41, $c0, $81
    db $c0, $01, $80, $fd, $03, $ca, $60, $ff, $00, $7e, $81, $c1, $3e, $ff, $3e, $c1
    db $e3, $1c, $9c, $63, $67, $98, $fb, $00, $ff, $08, $e3, $3d, $c3, $80, $7f, $df
    db $ff, $20, $61, $9e, $00, $ff, $04, $04, $64, $ef, $64, $66, $66, $99, $65, $00
    db $26, $d9, $df, $ff, $20, $00, $ff, $c9, $c9, $08, $08, $18, $7b, $18, $e7, $55
    db $00, $7d, $82, $86, $79, $a0, $40, $eb, $ef, $21, $ff, $e0, $de, $45, $00, $c3
    db $3c, $7e, $fd, $81, $b0, $07, $00, $ff, $df, $20, $30, $cf, $fb, $00, $ff, $08
    db $e3, $f9, $06, $03, $fc, $fd, $fd, $02, $d0, $e1, $db, $5a, $c3, $42, $c5, $46
    db $f3, $bb, $7c, $e0, $e5, $d0, $c3, $db, $3c, $a7, $64, $bf, $c7, $44, $e7, $64
    db $a7, $64, $c0, $c3, $bd, $ff, $7e, $43, $c2, $93, $92, $73, $f2, $25, $bd, $e6
    db $b0, $c3, $bb, $7c, $45, $c6, $f0, $e1, $c7, $fd, $46, $a0, $c3, $ed, $1e, $b3
    db $72, $d3, $52, $ef, $d3, $52, $c3, $42, $90, $c3, $7b, $fc, $85, $7f, $86, $9b
    db $9c, $85, $86, $73, $f2, $d0, $e7, $f6, $f0, $e1, $93, $92, $70, $c3, $7d, $fe
    db $83, $82, $f3, $83, $82, $ae, $e1, $b0, $e9, $93, $92, $45, $c6, $e6, $f0, $eb
    db $43, $c2, $32, $4b, $22, $00, $f0, $8f, $f8, $ff, $bb, $cd, $fb, $f4, $97, $f8
    db $bf, $c8, $ff, $bb, $cc, $bb, $44, $ff, $80, $bf, $40, $ff, $ff, $91, $b7, $d9
    db $bf, $ca, $ba, $cf, $ef, $be, $c5, $bd, $42, $02, $42, $38, $67, $9c, $ff, $7d
    db $be, $e5, $5e, $ff, $3a, $e2, $1d, $ef, $ff, $c0, $df, $60, $fe, $e8, $20, $ff
    db $82, $ff, $fe, $c7, $de, $e7, $be, $eb, $aa, $ff, $bf, $ba, $d7, $b6, $cb, $be
    db $41, $d2, $22, $70, $ff, $cf, $b8, $fb, $f4, $87, $f8, $ff, $70, $6f, $c7, $38
    db $e7, $24, $fe, $e1, $db, $3c, $d0, $c5, $cb, $4d, $ce, $56, $e1, $7d, $67, $c0
    db $c0, $c3, $73, $f2, $6f, $b3, $b2, $45, $c6, $d0, $c7, $c3, $42, $06, $e0, $d3
    db $32, $ed, $8c, $a0, $a0, $c3, $53, $e0, $e0, $85, $86, $7b, $7b, $fc, $90, $c5
    db $93, $92, $83, $82, $d0, $e9, $63, $e5, $26, $a0, $eb, $0a, $e3, $80, $c7, $b3
    db $72, $70, $cb, $90, $00, $ee, $fe, $ff, $fe, $ff, $f8, $f8, $61, $22, $42, $10
    db $27, $c3, $64, $0a, $20, $10, $29, $b3, $22, $40, $10, $29, $9f, $00, $10, $2b
    db $0b, $ee, $00, $10, $2b, $3e, $9c, $60, $b0, $09, $a0, $ed, $10, $a0, $3b, $00
    db $c1, $88, $60, $e3, $00, $9c, $b8, $00, $77, $01, $5f, $56, $00, $e9, $00, $6f
    db $62, $60, $df, $74, $e0, $ee, $67, $01, $ee, $00, $a9, $ec, $e0, $d1, $00, $26
    db $7c, $4c, $60, $57, $01, $7f, $00, $c4, $00, $3f, $46, $60, $ab, $7d, $00, $93
    db $63, $c7, $a4, $22, $3c, $34, $60, $7e, $ba, $01, $42, $9e, $3c, $e0, $df, $00
    db $20, $1e, $60, $30, $ba, $d0, $e4, $84, $98, $80, $c3, $00, $fd, $d0, $e2, $1f
    db $ff, $e0, $c4, $3b, $f3, $0c, $f9, $06, $fd, $f5, $02, $10, $e4, $9e, $42, $41
    db $8f, $70, $78, $87, $f3, $c7, $38, $b6, $61, $f2, $c2, $0b, $ff, $0d, $f9, $d7
    db $0f, $fb, $0d, $fe, $e0, $04, $e2, $c2, $47, $fc, $ff, $ab, $2b, $fc, $6b, $bc
    db $6f, $b7, $6c, $fd, $93, $d2, $c2, $2c, $f9, $b7, $a7, $f9, $af, $df, $f1, $af
    db $70, $6f, $90, $c2, $c2, $e0, $9f, $ff, $70, $f7, $e8, $0f, $f0, $ff, $e0, $8f
    db $ff, $70, $ff, $00, $df, $60, $ff, $e3, $ce, $7f, $75, $dd, $66, $dd, $66, $ff
    db $33, $40, $00, $be, $a0, $c1, $81, $7f, $c1, $df, $61, $fe, $e0, $a0, $fb, $3f
    db $c0, $92, $c2, $05, $7d, $a6, $6d, $b6, $bf, $6d, $b6, $fd, $da, $93, $6c, $40
    db $a2, $96, $bf, $bd, $db, $b3, $dd, $b7, $d9, $fe, $e0, $48, $f6, $72, $c5, $7f
    db $80, $fe, $e3, $ff, $f8, $a3, $7c, $af, $ef, $31, $ef, $30, $fe, $e4, $10, $10
    db $a2, $8e, $ff, $b9, $d7, $bf, $de, $b0, $df, $bf, $ce, $ff, $b8, $47, $ff, $08
    db $fb, $0c, $ff, $1c, $ef, $f9, $0e, $7b, $8c, $f8, $e0, $06, $fc, $03, $7c, $30
    db $a5, $e4, $80, $cc, $fb, $74, $c7, $38, $22, $c2, $ff, $41, $df, $69, $db, $6d
    db $db, $6d, $ff, $df, $36, $e4, $1b, $ff, $20, $bc, $e0, $65, $6f, $b7, $b6, $6c
    db $b7, $7e, $e1, $ed, $12, $02, $c2, $80, $1d, $7f, $da, $83, $6c, $d9, $26, $00
    db $00

    nop

    db $ff, $7f, $1f, $12, $70, $00, $ff, $7f, $f6, $00, $1f, $12, $6d, $00, $ff, $27
    db $f8, $03, $44, $03, $00, $02, $40, $01, $e0, $1f, $1f, $12, $f6, $00, $00, $00
    db $9f, $00, $9f, $bb, $ae, $00, $80, $7d, $de, $7b, $8e, $7f, $80, $7e, $80, $7d
    db $1f, $12, $ff, $13, $f6, $00, $00, $00, $80, $7e, $1f, $12, $f6, $00, $80, $7d

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
    nop
    nop
    nop
    nop

    db $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
    db $0d, $0d, $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $2b
    db $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
    db $0d, $0d, $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0d, $0f, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0f, $0d, $0d, $0c, $0c, $0c
    db $0d, $0d, $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0d, $0b, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0b, $0d, $0d, $0c, $0c, $0c
    db $0f, $0f, $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0f, $0f, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0d, $0b, $09, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $09, $09, $09, $09, $09, $09
    db $0b, $0b, $0b, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $2b
    db $0d, $0b, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $0b, $0b, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $2b
    db $0d, $0b, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $09, $09, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $2b
    db $0d, $0b, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $09, $09, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0d, $0b, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $09, $09, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0d, $0b, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $09, $0b, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $08, $0b, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $0b, $0b, $08, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0a, $0b, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $09, $09, $0a, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0a, $0b, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $09, $09, $0a, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0a, $0b, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $09, $09, $0a, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0a, $0b, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09, $09
    db $09, $09, $0b, $0a, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a
    db $0a, $0a, $0a, $0a, $4b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a, $0a
    db $0a, $0a, $0a, $0a, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e
    db $4e, $4e, $4e, $4e, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $00
    db $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e, $4e
    db $4e, $4e, $4e, $4e, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c
    db $4e, $2f, $a0, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $3f, $4e, $4e, $33, $34, $35
    db $4e, $4e, $4e, $4e, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c
    db $6e, $10, $b0, $b1, $b2, $b3, $b4, $b5, $b6, $b7, $5b, $6e, $6e, $43, $44, $45
    db $79, $7a, $6e, $6e, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $00, $00, $4c, $4c
    db $7e, $20, $21, $a9, $aa, $ab, $ac, $ad, $ad, $ae, $24, $07, $05, $05, $46, $47
    db $89, $8a, $4f, $7e, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $00, $00, $4c, $4c
    db $8e, $50, $ea, $b9, $ba, $bb, $bc, $bd, $bd, $be, $e7, $e8, $e9, $ea, $eb, $ec
    db $09, $15, $1b, $8e, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $00, $00, $00, $00
    db $3c, $88, $c9, $c9, $c9, $c9, $c9, $c9, $c9, $c9, $c9, $c9, $c9, $c9, $c9, $c9
    db $c9, $ee, $2b, $3c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $00, $00, $00, $00
    db $5f, $78, $c9, $c9, $38, $38, $38, $c9, $c9, $c9, $c9, $c9, $c9, $c9, $38, $38
    db $38, $38, $77, $5f, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $00, $00, $00, $00
    db $6f, $88, $c9, $c9, $c9, $c9, $c9, $30, $30, $30, $30, $30, $30, $30, $30, $30
    db $30, $38, $87, $6f, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $00, $00, $00, $00
    db $7f, $78, $c9, $c9, $c9, $c9, $c9, $40, $40, $40, $40, $40, $40, $40, $40, $40
    db $40, $38, $77, $7f, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $00, $00, $00, $00
    db $8f, $60, $70, $71, $72, $73, $74, $75, $76, $70, $71, $72, $73, $74, $75, $76
    db $73, $74, $6b, $8f, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $00, $00, $00, $00
    db $3d, $78, $c9, $c9, $c9, $c9, $c9, $38, $38, $38, $38, $c9, $38, $38, $38, $c9
    db $38, $ee, $5b, $3d, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c
    db $5c, $88, $c9, $c9, $38, $38, $38, $c9, $c9, $c9, $c9, $c9, $38, $c9, $c9, $c9
    db $c9, $38, $87, $5d, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c
    db $6c, $78, $c9, $c9, $c9, $c9, $c9, $30, $30, $30, $30, $30, $30, $30, $30, $30
    db $30, $38, $77, $6d, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c
    db $7c, $88, $c9, $c9, $c9, $c9, $c9, $40, $40, $40, $40, $40, $40, $40, $40, $40
    db $40, $38, $87, $7d, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c
    db $8c, $90, $80, $81, $82, $83, $84, $85, $86, $80, $81, $82, $83, $84, $85, $86
    db $81, $82, $9b, $8d, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $00, $00, $00, $00
    db $9c, $9d, $9c, $9d, $9c, $9d, $9c, $9d, $9c, $9d, $9c, $9d, $9c, $9d, $9c, $9d
    db $9c, $9d, $9c, $9d, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d, $4d
    db $4d, $4d, $4d, $4d, $00, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $4c, $00, $00, $00
    db $fd, $00, $ff, $e2, $7f, $7f, $99, $e6, $bf, $d9, $ff, $ff, $a3, $ff, $b2, $bf
    db $da, $ff, $ba, $7f, $fb, $b5, $b1, $ce, $00, $7f, $3f, $e5, $e3, $fe, $df, $e2
    db $ff, $ff, $93, $6c, $ff, $93, $ff, $ff, $ba, $ff, $2b, $7f, $ab, $ff, $3a, $ff
    db $e7, $92, $92, $6d, $ed, $e0, $e0, $ea, $b3, $4c, $ff, $ff, $b3, $ff, $b7, $ff
    db $a4, $fe, $35, $ff, $5f, $a4, $ff, $b3, $b7, $48, $e0, $e7, $01, $ff, $e0, $ff
    db $fe, $ff, $37, $c8, $ff, $37, $ff, $75, $ff, $ff, $57, $ff, $76, $ff, $55, $ff
    db $55, $ff, $55, $aa, $00, $ff, $fe, $01, $00, $01, $fe, $82, $e1, $80, $80, $00
    db $c0, $00, $e0, $60, $ff, $90, $f0, $68, $f8, $74, $f8, $56, $f9, $ff, $56, $fb
    db $74, $f6, $68, $6c, $90, $18, $7f, $e0, $30, $c0, $60, $80, $c0, $00, $00, $00

    nop
    rst $38
    nop
    nop
    nop
    ld e, $1e
    ld hl, $4f3e
    rst $38
    ld a, $5f
    ld c, $7f
    ld c, $17
    inc c
    rla
    rst $38
    inc e
    daa
    inc e
    cpl
    inc e
    cpl
    jr c, jr_03e_5e4b

    rst $38
    jr c, jr_03e_5e5d

    jr c, @+$60

    nop
    ld a, $00
    inc e
    db $e4
    ldh [$e0], a
    db $fd
    db $e3
    add b
    cp $e4
    jp nc, Jump_000_30e0

    ld c, [hl]
    inc a
    ld a, a
    ld b, d
    ld e, $21
    ld c, $31
    inc a
    ld b, d
    sbc $e0
    cp $ff
    db $ed
    db $fc
    db $fc
    ld [bc], a
    jr nc, @-$32

    jr nc, jr_03e_5e6e

    ld b, $fe
    db $e3
    nop
    jr nc, jr_03e_5e2c

jr_03e_5e2c:
    nop
    nop
    rst $38
    nop
    rra
    rra
    jr nz, jr_03e_5e73

    ld c, a
    ld a, a
    sbc a
    rst $38
    ld [hl], e
    cp a
    ld h, c
    cp a
    ld bc, $037a
    dec [hl]
    rst $38
    rlca
    dec de
    ld e, $27
    inc a
    ld c, a
    ld a, a
    sbc h
    rst $38
    ld a, a

jr_03e_5e4b:
    cp a
    ld a, a
    cp a
    nop
    ld a, a
    nop
    ccf
    cp a
    nop
    add b
    add b
    ld b, b
    ret nz

    ldh [$fe], a
    ldh [$f0], a
    rst $38

jr_03e_5e5d:
    ret nz

    ldh a, [$80]
    ldh a, [$80]
    ldh [rP1], a
    di
    rst $38
    inc sp
    call z, $c43b
    cp a
    ld b, b
    or a
    ret z

jr_03e_5e6e:
    ld a, a
    inc sp
    call z, $cc33

jr_03e_5e73:
    nop
    or e
    nop
    rst $38
    db $ed
    rst $18
    ld a, b
    ld a, b
    add h
    ld l, h
    sub d
    cp $e3
    ld a, b
    add h
    inc bc
    nop
    ld a, b
    nop
    nop
    nop
    rst $38
    nop
    nop
    inc c
    inc c
    ld e, $12
    ld [hl], $2a
    rst $38
    ld h, [hl]
    ld e, d
    rst $08
    or a
    rst $00
    cp e
    ld h, e
    ld e, l
    rst $38
    inc sp
    dec l
    dec de
    dec d
    inc sp
    dec l
    ld h, a
    ld e, e
    rst $38
    adc a
    rst $30
    db $fc
    adc h
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    db $fd
    nop
    rst $38
    and $c0
    ret nz

    ld a, c
    cp c
    ld l, a
    or [hl]
    rst $38
    ld l, [hl]
    or l
    ld l, l
    or [hl]
    dec l
    sub $8e
    ld [hl], l
    rst $38
    rst $08
    or [hl]
    rst $38
    rst $00
    ld a, l
    ld a, l
    jr c, jr_03e_5f00

    rst $38
    nop
    nop
    ld hl, $7321
    ld d, d
    rst $30
    sub h
    rst $38
    or l
    sub $b5
    sub $bd
    ld e, d
    add hl, sp
    sub $ff
    ld sp, $adef
    ld [hl], e
    xor l
    rst $30
    ld sp, $ffef
    add hl, sp
    rst $30
    rst $38
    jr @+$01

    rst $38
    rst $20
    rst $20
    ld a, [$e1c0]
    add b
    rst $38
    ld [c], a
    or b
    or b
    rst $38
    rst $08
    call nz, $bfff
    or h
    ld a, a
    inc l
    rst $10
    dec e
    cp $9d

jr_03e_5f00:
    rst $38
    ld l, [hl]
    call $ffb6
    call nz, $ffff
    dec sp
    rst $38
    dec sp
    nop
    nop
    ld e, $1e
    inc sp
    dec l
    ld hl, $3eff
    jr nc, jr_03e_5f45

    jr nc, jr_03e_5f57

    sub $d9
    ld [hl], a
    rst $38
    cp d
    scf
    db $db
    or [hl]
    ld e, e
    or b
    rst $18
    or b
    rst $38
    rst $18
    or e
    call c, $93ff
    rst $38
    rst $38
    ld l, h
    db $fd
    ld l, h
    add b
    db $e3
    add b
    add b
    ret nz

    ld b, b
    call z, $ff4c
    ld a, a
    or e
    ld [hl], e
    xor l
    ld l, l
    rst $18
    ld c, e
    push af
    rst $38
    ld b, a
    rst $38
    rst $20
    ld e, e

jr_03e_5f45:
    di
    db $ed
    cp a
    or c
    rst $28
    rra
    rra
    ld c, $0e
    ld h, b
    db $e3
    ld bc, $3201
    rst $38
    inc sp
    ld a, d
    ld c, e

jr_03e_5f57:
    call z, $8eb7
    ld [hl], a
    ld l, [hl]
    rst $38
    sub a
    ld l, [hl]
    or a
    ld c, $f7
    add [hl]
    ld a, e
    rst $30
    rst $38
    sbc d
    rst $30
    ei
    ld a, a
    ld a, a
    inc c
    inc c
    nop
    rst $38
    nop
    jr jr_03e_5f8a

    inc l
    inc [hl]
    xor h
    or h
    db $ec
    rst $38
    ld [hl], h
    db $ec
    ld [hl], h
    ld h, [hl]
    cp d
    db $e3
    ld a, l
    jp hl


    rst $38
    ld [hl], a
    db $ed
    ld [hl], e
    db $ed
    ld [hl], a
    db $ed
    ld [hl], a
    ld a, l
    ld a, a

jr_03e_5f8a:
    and a
    rst $38
    dec a
    rst $20
    rst $20
    jp nz, Jump_000_00c2

    nop
    nop
    rst $38
    nop
    nop
    ld a, b
    ld a, b
    adc $b6
    add e
    db $fd
    rst $38
    pop bc
    cp [hl]
    ret nz

    rst $38
    ld c, h
    ld [hl], e
    ld c, [hl]
    ld [hl], l
    rst $38
    ld c, [hl]
    ld [hl], a
    ld c, h
    ld [hl], a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    rst $38
    ld b, e
    ld a, h
    ld a, a
    ld b, e
    ld a, a
    ld a, a
    inc a
    inc a
    db $fd
    nop
    rst $38
    db $e4
    add b
    add b
    pop bc
    ld b, c
    ld h, a
    and [hl]
    rst $38
    inc a
    db $db
    dec sp
    call c, $d53b
    ld [hl], b
    cp a
    rst $38
    ld hl, sp+$77
    call c, $8fdb
    adc h
    rlca
    rlca
    ei
    inc bc
    inc bc
    ldh [$e5], a
    nop
    nop
    adc l
    adc l
    sub $ff
    ld e, e
    ld [hl], c
    cp [hl]
    inc sp
    db $dd
    scf
    db $db
    ld [hl], $ff
    jp c, $da36

    db $76
    cp d
    cp $72
    sbc $f7
    sbc $8c
    adc h
    ldh [$e7], a
    add b
    add b
    rst $38
    ld a, a
    rst $38
    jp $c07d


    rst $38
    ret nz

    rst $38
    ld e, e
    ld l, l
    ld a, [hl]
    cp $e1
    ld a, a
    ld c, c
    ld a, a
    ld a, a
    ld [hl], $36
    and b
    push hl
    rst $38
    inc c
    inc c
    ld d, $1a
    sbc [hl]
    sub d
    sbc $5e
    rst $28
    ld l, a
    xor e
    ld [hl], a
    cp d
    cp $e0
    cp e
    ld [hl], a
    cp e
    cp a
    rst $38
    inc sp
    cp $fe
    call z, $a0cc
    rst $20
    jr @+$01

    jr @+$7e

    ld h, h
    add $ba
    or [hl]
    ld a, d
    ld l, $ff
    sub $1c
    db $fc
    inc e
    db $ec
    add [hl]
    ld a, d
    cp $07
    jp nz, $fefe

    ld h, b
    rst $20
    rst $38
    push af
    nop
    nop
    nop

    db $80, $7d, $00, $00, $82, $02, $ff, $27

    rra
    ld [de], a
    nop
    nop
    add d
    ld [bc], a
    rst $38
    daa
    rra
    ld [de], a
    rst $38
    ld a, a
    nop
    nop
    add b
    ld a, l
    rra
    ld [de], a
    rst $38
    ld a, a
    nop
    nop
    add b
    ld a, l
    rra
    ld [de], a
    rst $38
    ld a, a
    nop
    nop
    rra
    nop
    ret nz

    inc bc
    rst $38
    ld a, a
    nop
    nop
    rra
    nop
    ret nz

    inc bc
    ld h, b
    db $fd
    nop
    ld a, a
    nop
    nop
    rra
    inc b
    ld h, b
    db $fd
    nop
    ld a, a
    nop
    nop
    rra
    inc b
    ld h, b
    add d
    ldh [$2b], a
    nop
    nop
    ldh [$03], a
    ld h, b
    add d
    ldh [$2b], a
    nop
    nop

Call_03e_6098:
    push bc
    push de
    push hl
    ld bc, $012c

jr_03e_609e:
    call Call_000_2e3b
    ldh a, [$94]
    bit 0, a
    jr nz, jr_03e_60b3

    bit 1, a
    jr nz, jr_03e_60b3

    bit 4, a
    jr nz, jr_03e_60b8

    ld a, b
    or c
    jr nz, jr_03e_609e

jr_03e_60b3:
    rst $08
    ld e, h
    xor a
    jr jr_03e_60bc

jr_03e_60b8:
    rst $08

    db $5c

    ld a, $01

jr_03e_60bc:
    call Call_000_2e3b
    pop hl
    pop de
    pop bc
    ret


Call_03e_60c3:
    push af
    push bc
    push de
    push hl
    jp Jump_03e_617c


Call_03e_60ca:
    push af
    push bc
    push de
    push hl
    ld h, a
    ldh a, [$96]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, h
    push bc
    call Call_03e_612c
    cp $01
    jr z, jr_03e_60e6

    ld hl, $c880
    jr jr_03e_60e9

jr_03e_60e6:
    ld hl, $c8c0

jr_03e_60e9:
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    rst $18

    db $54, $05

    ld hl, $d847
    xor a
    ld [hl], a
    pop bc
    ld hl, $0020
    ld a, c
    call Call_000_08b9
    ld d, $00
    ld e, b
    add hl, de
    push hl
    pop de
    ld hl, $d400
    add hl, de
    push hl
    call Call_03e_6144
    ld de, $ca00
    ld c, $20
    ld hl, $14bf
    rst $18

    db $22, $05

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    pop de
    call Call_03e_615e
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03e_612c:
    push af
    push bc
    push de
    push hl
    xor a

jr_03e_6131:
    cp $07
    jr z, jr_03e_613f

    push af
    xor a
    call Call_03e_6250
    pop af
    inc b
    inc a
    jr jr_03e_6131

jr_03e_613f:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03e_6144:
    push af
    push bc
    push de
    push hl
    ld hl, $ca00
    xor a

jr_03e_614c:
    cp $07
    jr z, jr_03e_6159

    push af
    ld a, $20
    ld [hl], a
    pop af
    inc hl
    inc a
    jr jr_03e_614c

jr_03e_6159:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03e_615e:
    push af
    push bc
    push de
    push hl
    ld hl, $ca00
    xor a

jr_03e_6166:
    cp $07
    jr z, jr_03e_6177

    push af
    ld a, [hl]
    push hl
    push de
    pop hl
    ld [hl], a
    pop hl
    pop af
    inc hl
    inc de
    inc a
    jr jr_03e_6166

jr_03e_6177:
    pop hl
    pop de
    pop bc
    pop af
    ret


Jump_03e_617c:
jr_03e_617c:
    ld a, [hl]
    cp $00
    jr z, jr_03e_6188

    call Call_03e_61e3
    inc b
    inc hl
    jr jr_03e_617c

jr_03e_6188:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03e_618d:
    push af
    push bc
    push de
    push hl

jr_03e_6191:
    ld a, [hl]
    cp $00
    jr z, jr_03e_619d

    call Call_03e_6209
    inc b
    inc hl
    jr jr_03e_6191

jr_03e_619d:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03e_61a2:
    push af
    push bc
    push de
    push hl

jr_03e_61a6:
    ld a, [hl]
    cp $00
    jr z, jr_03e_61b2

    call Call_03e_622a
    inc b
    inc hl
    jr jr_03e_61a6

jr_03e_61b2:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03e_61b7:
    push af
    push de
    ld hl, $0020
    ld a, c
    call Call_000_08b9
    ld d, $00
    ld e, b
    add hl, de
    push hl
    pop de
    ld hl, $d000
    add hl, de
    pop de
    pop af
    ret


Call_03e_61cd:
    push af
    push de
    ld hl, $0020
    ld a, c
    call Call_000_08b9
    ld d, $00
    ld e, b
    add hl, de
    push hl
    pop de
    ld hl, $9800
    add hl, de
    pop de
    pop af
    ret


Call_03e_61e3:
    push af
    push bc
    push de
    push hl
    ld h, a
    ldh a, [$96]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, h
    call Call_03e_61b7
    push hl
    ld de, $0400
    add hl, de
    ld [hl], a
    pop hl
    ld a, $00
    ld [hl], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03e_6209:
    push af
    push bc
    push de
    push hl
    ld h, a
    ldh a, [$96]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, h
    call Call_03e_61b7
    ld de, $0400
    add hl, de
    ld [hl], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03e_622a:
    push af
    push bc
    push de
    push hl
    ld h, a
    ldh a, [$96]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, h
    call Call_03e_61b7
    push hl
    ld de, $0400
    add hl, de
    ld [hl], a
    pop hl
    ld a, $08
    ld [hl], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03e_6250:
    push af
    push bc
    push de
    push hl
    ld h, a
    ldh a, [$96]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, h
    call Call_03e_61b7
    ld [hl], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld a, [hl]
    ld b, a
    inc hl
    ld a, [hl]
    add d
    ld c, a
    inc hl
    call Call_03e_60c3
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld a, [hl]
    ld b, a
    inc hl
    ld a, [hl]
    add d
    ld c, a
    inc hl
    call Call_03e_618d
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03e_6293:
    push af
    push bc
    push de
    push hl
    ld a, [hl]
    ld b, a
    inc hl
    ld a, [hl]
    add d
    ld c, a
    inc hl
    call Call_03e_61a2
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03e_62a6:
    push bc
    push de
    push hl
    call Call_03e_6342
    bit 7, h
    jr z, jr_03e_62b8

    push hl
    pop de
    ld hl, $0000
    call Call_000_08ac

jr_03e_62b8:
    push hl
    pop bc
    ld de, $0064
    call Call_000_08ac
    bit 7, h
    jr nz, jr_03e_62c6

    push hl
    pop bc

jr_03e_62c6:
    push bc
    pop hl
    ld de, $000a
    call Call_000_09ae
    ld a, l
    pop hl
    pop de
    pop bc
    ret


Call_03e_62d3:
    push bc
    push de
    push hl
    call Call_03e_6342
    bit 7, h
    jr z, jr_03e_62e5

    push hl
    pop de
    ld hl, $0000
    call Call_000_08ac

jr_03e_62e5:
    push hl
    pop bc
    ld de, $0064
    call Call_000_08ac
    bit 7, h
    jr nz, jr_03e_62f3

    push hl
    pop bc

jr_03e_62f3:
    push bc
    pop hl
    ld de, $000a
    call Call_000_09ae
    ld a, $0a
    call Call_000_08b9
    push hl
    pop de
    push bc
    pop hl
    call Call_000_08ac
    ld a, l
    pop hl
    pop de
    pop bc
    ret


    push bc
    push de
    push hl
    ld l, a
    ld h, $00
    ld d, $00
    ld e, $0a
    call Call_000_09ae
    ld a, l
    pop hl
    pop de
    pop bc
    ret


    push bc
    push de
    push hl
    ld b, a
    sub $0a
    bit 7, a
    jp nz, Jump_03e_633d

    ld l, b
    ld h, $00
    ld d, $00
    ld e, $0a
    call Call_000_09ae
    ld a, $0a
    call Call_000_08b9
    ld c, l
    ld a, b
    sub c
    jr jr_03e_633e

Jump_03e_633d:
    ld a, b

jr_03e_633e:
    pop hl
    pop de
    pop bc
    ret


Call_03e_6342:
    push af
    push bc
    push de
    ld l, a
    ld h, $00
    push hl
    pop bc
    ld d, $00
    ld e, $91
    call Call_000_08ac
    bit 7, h
    jr nz, jr_03e_635b

    push bc
    pop hl
    ld h, $ff
    jr jr_03e_635d

jr_03e_635b:
    push bc
    pop hl

jr_03e_635d:
    pop de
    pop bc
    pop af
    ret


    push bc
    push de
    push hl
    ld c, $08
    call Call_000_25a1
    call Call_000_2625
    rst $18
    nop
    dec b
    rst $18
    ld b, $01
    rst $18
    ld a, [de]
    inc bc
    call Call_000_0341
    call Call_000_23b6
    call Call_000_2683
    ld a, $90
    ldh [rWY], a
    xor a
    ldh [$8a], a
    ldh [$8b], a
    ldh a, [$96]
    push af
    call Call_03e_4102
    call Call_03e_6421
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    call Call_03e_43f7
    ld a, $00
    ld bc, $0608
    call Call_03e_60ca
    call Call_03e_659d
    ld a, $01
    ld bc, $060d
    call Call_03e_60ca
    call Call_03e_659d
    ld bc, $0e06
    call Call_03e_64fb
    ld bc, $0e0b
    call Call_03e_64fb
    ld hl, $c8be
    ld a, [hl]
    ld bc, $0e08
    call Call_03e_6525
    ld hl, $c8fe
    ld a, [hl]
    ld bc, $0e0d
    call Call_03e_6525
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $b800
    ld c, $24
    call Call_000_0468
    ld hl, $d400
    ld de, $9800
    ld c, $24
    call Call_000_04db
    call Call_000_0804
    rst $18
    inc h
    inc bc
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    call Call_03e_45b0
    call Call_03e_4605
    call Call_03e_665b
    ld a, $0f
    ld hl, $645c
    call Call_000_23e8
    call Call_000_0371
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    call Call_03e_6098
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    pop hl
    pop de
    pop bc
    ret


Call_03e_6421:
    push af
    push bc
    push de
    push hl
    ld c, $08

jr_03e_6427:
    ld a, c
    cp $0a
    jr z, jr_03e_643e

    ld b, $07

jr_03e_642e:
    ld a, b
    cp $11
    jr z, jr_03e_643b

    ld a, $c9
    call Call_03e_6209
    inc b
    jr jr_03e_642e

jr_03e_643b:
    inc c
    jr jr_03e_6427

jr_03e_643e:
    ld c, $0d

jr_03e_6440:
    ld a, c
    cp $0f
    jr z, jr_03e_6457

    ld b, $07

jr_03e_6447:
    ld a, b
    cp $11
    jr z, jr_03e_6454

    ld a, $c9
    call Call_03e_6209
    inc b
    jr jr_03e_6447

jr_03e_6454:
    inc c
    jr jr_03e_6440

jr_03e_6457:
    pop hl
    pop de
    pop bc
    pop af
    ret


    ldh a, [$96]
    push af
    push af
    push bc
    push de
    push hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0201
    ld de, $3030
    ld bc, $0c5c
    call Call_000_2756
    ld hl, $0201
    ld de, $3058
    ld bc, $0d6c
    call Call_000_2756
    ld hl, $6740
    ld bc, $0910
    ld de, $0000
    call Call_000_26ea
    ld hl, $674e
    ld bc, $0a20
    ld de, $0000
    call Call_000_26ea
    ldh a, [$8c]
    and $3f
    ld hl, $64bb
    add l
    ld l, a
    jr nc, jr_03e_64a5

    inc h

jr_03e_64a5:
    ld e, $00
    ld d, [hl]
    ld hl, $4930
    ld bc, $0800
    call Call_000_26ea
    pop hl
    pop de
    pop bc
    pop af
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    cp $fe
    cp $ff
    rst $38
    rst $38
    nop
    nop

Call_03e_64fb:
    push af
    push bc
    push de
    push hl
    push bc
    ld a, $39
    call Call_03e_6209
    inc b
    inc a
    call Call_03e_6209
    inc b
    inc a
    call Call_03e_6209
    pop bc
    inc c
    ld a, $49
    call Call_03e_6209
    inc a
    inc b
    call Call_03e_6209
    inc a
    inc b
    call Call_03e_6209
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03e_6525:
    push af
    push bc
    push de
    push hl
    ld d, a
    push bc
    push de
    call Call_03e_6342
    push hl
    pop bc
    ld de, $0000
    call Call_03e_6637
    cp $00
    jr z, jr_03e_6547

    bit 7, h
    jr nz, jr_03e_6543

    ld a, $2b
    jr jr_03e_6549

jr_03e_6543:
    ld a, $2d
    jr jr_03e_6549

jr_03e_6547:
    ld a, $60

jr_03e_6549:
    pop de
    pop bc
    call Call_03e_61e3
    inc b
    ld a, d
    cp $00
    jr z, jr_03e_6577

    push bc
    push de
    call Call_03e_6342
    bit 7, h
    jr z, jr_03e_6565

    push hl
    pop de
    ld hl, $0000
    call Call_000_08ac

jr_03e_6565:
    ld de, $0064
    call Call_000_09ae
    pop de
    pop bc
    ld a, l
    cp $00
    jr z, jr_03e_6577

    ld a, $31
    call Call_03e_61e3

jr_03e_6577:
    inc b
    ld a, d
    call Call_03e_62a6
    cp $00
    jr nz, jr_03e_6589

    ld a, d
    sub $64
    bit 7, a
    jr nz, jr_03e_658e

    ld a, $00

jr_03e_6589:
    add $30
    call Call_03e_61e3

jr_03e_658e:
    inc b
    ld a, d
    call Call_03e_62d3
    add $30
    call Call_03e_61e3
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03e_659d:
    push af
    push bc
    push de
    push hl
    cp $01
    jr z, jr_03e_65b0

    ld hl, $c890
    ld a, [hl]
    ld hl, $c893
    ld d, $00
    jr jr_03e_65b9

jr_03e_65b0:
    ld hl, $c8d0
    ld a, [hl]
    ld hl, $c8d3
    ld d, $05

jr_03e_65b9:
    cp $0b
    jr z, jr_03e_65d0

    ld a, [hl]
    cp $00
    jr z, jr_03e_65d0

    cp $01
    jr z, jr_03e_65d8

    cp $02
    jr z, jr_03e_65d0

    cp $03
    jr z, jr_03e_65d8

    jr jr_03e_65de

jr_03e_65d0:
    ld hl, $402f
    call Call_03e_6293
    jr jr_03e_65de

jr_03e_65d8:
    ld hl, $4028
    call Call_03e_6293

jr_03e_65de:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    push bc
    ld a, $ca
    call Call_03e_6209
    inc b
    inc a
    call Call_03e_6209
    inc b
    inc a
    call Call_03e_6209
    pop bc
    inc c
    ld a, $da
    call Call_03e_6209
    inc a
    inc b
    call Call_03e_6209
    inc a
    inc b
    call Call_03e_6209
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    push bc
    ld a, $cd
    call Call_03e_6209
    inc b
    inc a
    call Call_03e_6209
    inc b
    inc a
    call Call_03e_6209
    pop bc
    inc c
    ld a, $dd
    call Call_03e_6209
    inc a
    inc b
    call Call_03e_6209
    inc a
    inc b
    call Call_03e_6209
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03e_6637:
    push bc
    push de
    push hl
    push bc
    pop hl
    call Call_000_08ac
    bit 7, h
    jr nz, jr_03e_6655

    ld a, h
    cp $00
    jr nz, jr_03e_6651

    ld a, l
    cp $00
    jr nz, jr_03e_6651

    ld a, $00
    jr jr_03e_6657

jr_03e_6651:
    ld a, $01
    jr jr_03e_6657

jr_03e_6655:
    ld a, $02

jr_03e_6657:
    pop hl
    pop de
    pop bc
    ret


Call_03e_665b:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c8be
    ld a, [hl]
    call Call_03e_6342
    push hl
    pop bc
    ld hl, $c8fe
    ld a, [hl]
    call Call_03e_6342
    push hl
    pop de
    call Call_03e_6637
    cp $00
    jr z, jr_03e_66fd

    cp $02
    jr z, jr_03e_66c1

    ld hl, $5e2e
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $a100
    ld c, $06
    call Call_000_04db
    ld hl, $6058
    ld de, $0901
    call Call_000_0595
    ld hl, $5de1
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $a200
    ld c, $06
    call Call_000_04db
    ld hl, $6068
    ld de, $0a01
    call Call_000_0595
    jr jr_03e_672e

jr_03e_66c1:
    ld hl, $5de1
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $a100
    ld c, $06
    call Call_000_04db
    ld hl, $6068
    ld de, $0901
    call Call_000_0595
    ld hl, $5e2e
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $a200
    ld c, $06
    call Call_000_04db
    ld hl, $6058
    ld de, $0a01
    call Call_000_0595
    jr jr_03e_672e

jr_03e_66fd:
    ld hl, $5de1
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $a100
    ld c, $06
    call Call_000_04db
    ld hl, $d000
    ld de, $a200
    ld c, $06
    call Call_000_04db
    ld hl, $6068
    ld de, $0901
    call Call_000_0595
    ld hl, $6068
    ld de, $0a01
    call Call_000_0595

jr_03e_672e:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    inc e
    nop
    nop
    ld c, b
    inc h
    ld [bc], a
    nop
    ld c, b
    inc l
    inc b
    nop
    add b
    nop
    ld [hl], b
    inc e
    nop
    nop
    ld [hl], b
    inc h
    ld [bc], a
    nop
    ld [hl], b
    inc l
    inc b
    nop
    add b
    nop

    rst $18

    db $00, $0e

    ret


    push af
    push bc
    push de
    push hl

jr_03e_6764:
    call Call_03e_403f
    cp $00
    jr z, jr_03e_677a

    cp $01
    jr z, jr_03e_676f

jr_03e_676f:
    rst $18
    nop
    ld c, $fe
    nop
    jr z, jr_03e_677a

    cp $01
    jr z, jr_03e_6764

jr_03e_677a:
    pop hl
    pop de
    pop bc
    pop af
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
