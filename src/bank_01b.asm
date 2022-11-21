; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01b", ROMX[$4000], BANK[$1b]

    ld c, e
    ld a, e
    ld d, e
    ld a, e
    nop
    nop
    ld a, $00
    sub c
    nop
    pop bc
    nop
    db $e4
    nop
    dec b
    ld bc, $0126
    ld c, b
    ld bc, $017b
    xor [hl]
    ld bc, $01e6
    inc de
    ld [bc], a
    ld b, e
    ld [bc], a
    ld b, a
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    or b
    ld [bc], a
    call nz, $de02
    ld [bc], a
    rst $28
    ld [bc], a
    ld c, $03
    inc hl
    inc bc
    dec [hl]
    inc bc
    ld b, a
    inc bc
    ld e, e
    inc bc
    ld h, [hl]
    inc bc
    add d
    inc bc
    adc a
    inc bc
    and b
    inc bc
    xor e
    inc bc
    cp l
    inc bc
    sbc $03
    rst $38
    inc bc
    ld [de], a
    inc b
    ld [hl], $04
    ld d, [hl]
    inc b
    add e
    inc b
    or l
    inc b
    inc bc
    dec b
    dec hl
    dec b
    ld d, c
    dec b
    db $76
    dec b
    cp c
    dec b
    jp hl


    dec b
    dec c
    ld b, $44
    ld b, $6a
    ld b, $8e
    ld b, $bc
    ld b, $dd
    ld b, $f3
    ld b, $0f
    rlca
    cpl
    rlca
    ld [hl], c
    rlca
    reti


    rlca
    ld b, c
    ld [$0883], sp
    db $eb
    ld [$0953], sp
    sub l
    add hl, bc
    db $fd
    add hl, bc
    inc h
    ld a, [bc]
    ld d, d
    ld a, [bc]
    ld l, h
    ld a, [bc]
    ld [hl], b
    ld a, [bc]
    sub c
    ld a, [bc]
    and [hl]
    ld a, [bc]
    jp z, $d60a

    ld a, [bc]
    add sp, $0a
    ei
    ld a, [bc]
    inc d
    dec bc
    ld [hl], $0b
    ld d, [hl]
    dec bc
    ld a, b
    dec bc
    sub h
    dec bc
    add $0b
    db $f4
    dec bc
    inc h
    inc c

jr_01b_40a0:
    ld e, d
    inc c
    ld l, [hl]
    inc c
    ld a, a
    inc c
    sub h
    inc c
    and e
    inc c
    or [hl]
    inc c
    db $dd
    inc c
    dec d
    dec c
    dec sp
    dec c
    ld l, e
    dec c
    ld a, l
    dec c
    sub c
    dec c
    and l
    dec c
    cp c
    dec c
    db $dd
    dec c
    dec e
    ld c, $73
    ld c, $9d
    ld c, $b5
    ld c, $c4
    ld c, $d5
    ld c, $e9
    ld c, $0e
    rrca
    ld [hl], h
    rrca
    xor d
    rrca
    call nc, Call_000_240f

jr_01b_40d5:
    db $10
    adc [hl]
    db $10
    inc bc
    ld de, $1138
    and d

jr_01b_40dd:
    ld de, $11d5
    db $fc
    ld de, $1231
    or b
    ld [de], a
    ld a, [bc]
    inc de
    ld [hl], e
    inc de
    sub d
    inc de
    xor d
    inc de
    jp nc, Jump_000_0713

    inc d
    and c
    inc d
    cp $14
    ld h, l
    dec d
    rst $30
    dec d
    dec bc
    ld d, $33
    ld d, $b7
    ld d, $ec
    ld d, $49
    rla
    and a
    rla
    ld bc, $2c18
    jr jr_01b_40a0

    jr jr_01b_40d5

    jr @+$2d

    add hl, de
    ld d, d
    add hl, de
    ld a, [hl]
    add hl, de
    xor [hl]
    add hl, de
    jp nc, $f219

    add hl, de
    ld d, d
    ld a, [de]

jr_01b_411c:
    add l
    ld a, [de]
    and $1a
    inc de
    dec de
    ld [hl-], a
    dec de
    ld [hl], h
    dec de
    sbc h
    dec de
    call z, Call_000_331b
    inc e
    adc d
    inc e
    cp b
    inc e
    ld hl, $551d
    dec e

jr_01b_4134:
    cp b
    dec e
    rst $18
    dec e
    dec bc
    ld e, $41
    ld e, $6e
    ld e, $8e
    ld e, $bf
    ld e, $ed
    ld e, $21
    rra

jr_01b_4146:
    add a
    rra
    push af
    rra
    ld a, [hl+]
    jr nz, jr_01b_41a2

    jr nz, jr_01b_40dd

    jr nz, @-$51

    jr nz, jr_01b_411c

    jr nz, jr_01b_4134

    jr nz, jr_01b_4146

    jr nz, @+$2a

    ld hl, $215b
    add a
    ld hl, $21b8
    push hl
    ld hl, $223d
    xor c
    ld [hl+], a
    ld b, $23
    ld sp, $5223
    inc hl
    ld [hl], c
    inc hl
    adc l
    inc hl
    and e
    inc hl
    xor a
    inc hl
    call c, $0723
    inc h
    ld [hl], h
    inc h
    sbc [hl]
    inc h

jr_01b_417c:
    db $fd
    inc h
    ld h, a
    dec h

jr_01b_4180:
    call nz, $e025
    dec h
    or $25
    dec hl
    ld h, $4a
    ld h, $66
    ld h, $7c
    ld h, $88
    ld h, $b1
    ld h, $e4
    ld h, $17
    daa
    ld a, c
    daa
    db $eb
    daa

jr_01b_419a:
    db $76
    jr z, jr_01b_417c

    jr z, jr_01b_419a

    jr z, jr_01b_41b1

    add hl, hl

jr_01b_41a2:
    ld b, a
    add hl, hl
    ld h, e
    add hl, hl
    ld a, a
    add hl, hl
    sub l
    add hl, hl
    and c
    add hl, hl
    ret c

    add hl, hl
    dec c
    ld a, [hl+]
    ld h, l

jr_01b_41b1:
    ld a, [hl+]
    cp h
    ld a, [hl+]
    cp $2a
    ld d, [hl]
    dec hl
    pop bc
    dec hl
    db $dd
    dec hl
    di
    dec hl
    ld l, d
    inc l
    add l
    inc l
    and c
    inc l
    or a
    inc l
    sra h
    db $fd
    inc l
    ld d, a
    dec l
    ld a, h
    dec l
    xor [hl]
    dec l
    db $10
    ld l, $41
    ld l, $9b
    ld l, $0c
    cpl
    jr z, jr_01b_4209

    ld a, $2f
    xor a
    cpl
    adc $2f

jr_01b_41e0:
    ld [$002f], a
    jr nc, @+$0e

    jr nc, jr_01b_421f

    jr nc, jr_01b_424d

    jr nc, jr_01b_4180

    jr nc, jr_01b_41e0

    jr nc, @+$66

    ld sp, $3192
    db $fd
    ld sp, $3271
    adc l
    ld [hl-], a
    and e
    ld [hl-], a
    ld [bc], a
    inc sp
    inc [hl]
    inc sp
    ld d, b
    inc sp
    ld h, [hl]
    inc sp
    ld a, d
    inc sp
    and [hl]
    inc sp
    ld sp, hl
    inc sp
    ld a, [de]

jr_01b_4209:
    inc [hl]
    ld c, b
    inc [hl]
    ld a, [hl]
    inc [hl]
    xor a
    inc [hl]
    pop hl
    inc [hl]
    ld b, e
    dec [hl]
    ld e, a
    dec [hl]
    ld [hl], l
    dec [hl]
    rst $08
    dec [hl]
    dec b
    ld [hl], $21
    ld [hl], $3a

jr_01b_421f:
    ld [hl], $4d
    ld [hl], $81
    ld [hl], $b0
    ld [hl], $dd
    ld [hl], $e8
    ld [hl], $fb
    ld [hl], $12
    scf
    inc hl
    scf
    scf
    scf
    ld c, d
    scf
    ld [hl], l
    scf
    xor a
    scf
    ld c, $38
    ld [hl], h
    jr c, @-$15

    jr c, @+$55

    ld l, a
    jr nz, jr_01b_42bb

    ld l, a
    ld [hl], l
    jr nz, jr_01b_42b6

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    ccf
    ld [bc], a

jr_01b_424d:
    ld c, c
    daa
    ld l, l
    jr nz, jr_01b_42b3

    jr nz, jr_01b_42c8

    ld [hl], d
    ld l, c
    ld h, [hl]
    ld l, h
    ld h, l
    ld bc, $6e61
    ld l, [hl]
    ld l, a
    ld a, c
    ld h, l
    ld h, h
    inc l
    jr nz, jr_01b_42c6

    ld [hl], l
    ld [hl], h
    ld l, $2e
    ld l, $01
    ld h, e
    ld l, a
    ld l, [hl]
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], h
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01b_42f3

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    ld h, l
    ld h, h
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $6570
    ld h, c
    ld l, e
    inc l
    jr nz, jr_01b_42da

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01b_42dc

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld bc, $2107
    ld [bc], a
    ld b, [hl]
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01b_4315

    ld l, a
    ld [hl], a
    jr nz, @+$71

    ld l, [hl]
    inc l
    ld bc, $6f79
    ld [hl], l
    daa
    ld l, h

jr_01b_42b3:
    ld l, h
    jr nz, jr_01b_4318

jr_01b_42b6:
    ld h, l
    ld bc, $7665
    ld h, l

jr_01b_42bb:
    ld [hl], d
    ld a, c
    ld l, a
    ld l, [hl]
    ld h, l
    daa
    ld [hl], e
    jr nz, @+$71

    ld h, d
    ld l, d

jr_01b_42c6:
    ld h, l
    ld h, e

jr_01b_42c8:
    ld [hl], h
    ld l, c
    db $76
    ld h, l
    ld hl, $0003
    ld d, a
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01b_434e

    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l

jr_01b_42da:
    jr nz, jr_01b_4323

jr_01b_42dc:
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    inc l
    jr nz, jr_01b_4362

    ld l, a
    ld [hl], l
    jr nz, jr_01b_4350

    ld h, c
    ld l, [hl]
    jr nz, jr_01b_435e

    ld h, l
    ld h, l

jr_01b_42f3:
    ld [hl], h
    ld bc, $614d
    ld [hl], d
    ld l, c
    ld l, a
    ld l, $2e
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01b_4377

    ld l, c
    ld h, a
    ld l, [hl]
    jr nz, jr_01b_437b

    ld h, l
    ld h, c
    ld h, h
    ld [hl], e
    ld a, [hl-]
    ld bc, $5422
    ld l, a
    jr nz, @+$4f

    ld h, c

jr_01b_4315:
    ld [hl], d
    ld l, c
    ld l, a

jr_01b_4318:
    ld l, [hl]
    jr nz, jr_01b_435e

    ld l, h
    ld [hl], l
    ld h, d
    ld l, $22
    inc bc
    nop
    ld d, h

jr_01b_4323:
    ld l, b
    ld h, l
    jr nz, jr_01b_439a

    ld l, c
    ld h, a
    ld l, [hl]
    jr nz, jr_01b_439e

    ld h, l
    ld h, c
    ld h, h
    ld [hl], e
    ld a, [hl-]
    ld bc, $5422
    ld l, a
    jr nz, jr_01b_4387

    ld h, c
    ld l, h
    ld l, l
    jr nz, jr_01b_437f

    ld l, h
    ld [hl], l
    ld h, d
    ld l, $22
    inc bc
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01b_43bb

    ld l, c
    ld h, a
    ld l, [hl]
    jr nz, jr_01b_43bf

    ld h, l

jr_01b_434e:
    ld h, c
    ld h, h

jr_01b_4350:
    ld [hl], e
    ld a, [hl-]
    ld bc, $5422
    ld l, a
    jr nz, jr_01b_439c

    ld [hl], l
    ld l, [hl]
    ld h, l
    jr nz, jr_01b_43a0

    ld l, h

jr_01b_435e:
    ld [hl], l
    ld h, d
    ld l, $22

jr_01b_4362:
    inc bc
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01b_43dc

    ld l, c
    ld h, a
    ld l, [hl]
    jr nz, jr_01b_43e0

    ld h, l
    ld h, c
    ld h, h
    ld [hl], e
    ld a, [hl-]
    ld bc, $5422
    ld l, a

jr_01b_4377:
    jr nz, jr_01b_43c5

    ld l, c
    ld l, [hl]

jr_01b_437b:
    ld l, e
    ld [hl], e
    jr nz, @+$45

jr_01b_437f:
    ld l, h
    ld [hl], l
    ld h, d
    ld l, $22
    inc bc
    nop
    ld d, h

jr_01b_4387:
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, @+$63

    jr nz, jr_01b_43f4

    ld h, c
    ld h, d
    ld l, c
    ld l, [hl]
    ld bc, $6e69
    jr nz, jr_01b_440e

jr_01b_439a:
    ld l, b
    ld h, l

jr_01b_439c:
    jr nz, jr_01b_4415

jr_01b_439e:
    ld l, a
    ld l, a

jr_01b_43a0:
    ld h, h
    ld [hl], e
    ld l, $2e
    ld l, $01
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01b_440f

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_01b_441b

    ld [hl], h
    jr nz, jr_01b_4417

    ld h, l
    ccf
    inc bc
    nop
    ld d, h
    ld l, b

jr_01b_43bb:
    ld h, l
    jr nz, jr_01b_4431

    ld l, c

jr_01b_43bf:
    ld h, a
    ld l, [hl]
    jr nz, @+$74

    ld h, l
    ld h, c

jr_01b_43c5:
    ld h, h
    ld [hl], e
    ld a, [hl-]
    ld bc, $5922
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01b_4433

    ld l, b
    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld l, [hl]
    ld h, a
    ld h, l
    ld a, [hl-]
    ld bc, $6948

jr_01b_43dc:
    ld [hl], h
    jr nz, jr_01b_4453

    ld l, b

jr_01b_43e0:
    ld h, l
    jr nz, jr_01b_4457

    ld h, c
    ld [hl], d
    ld h, a
    ld h, l
    ld [hl], h
    ld hl, $0322
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01b_4464

    ld l, c
    ld h, a
    ld l, [hl]

jr_01b_43f4:
    jr nz, jr_01b_4468

    ld h, l
    ld h, c
    ld h, h
    ld [hl], e
    ld a, [hl-]
    ld bc, $4422
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01b_446a

    ld l, a
    ld [hl], d
    ld h, a
    ld h, l
    ld [hl], h
    ld hl, $5020
    ld l, c
    ld h, e

jr_01b_440e:
    ld l, e

jr_01b_440f:
    ld bc, $7075
    jr nz, jr_01b_4475

    ld h, [hl]

jr_01b_4415:
    ld [hl], h
    ld h, l

jr_01b_4417:
    ld [hl], d
    jr nz, @+$76

    ld h, l

jr_01b_441b:
    ld h, l
    jr nz, jr_01b_448d

    ld h, [hl]
    ld h, [hl]
    ld hl, $0322
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$75

    ld l, c
    ld h, a
    ld l, [hl]
    jr nz, @+$74

    ld h, l
    ld h, c
    ld h, h

jr_01b_4431:
    ld [hl], e
    ld a, [hl-]

jr_01b_4433:
    ld bc, $5022
    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_01b_44ac

    ld h, c
    ld l, e
    ld h, l
    ld [hl], e
    ld bc, $6570
    ld [hl], d
    ld h, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    ld l, $2e
    ld l, $22
    inc bc
    nop
    ld d, h
    ld l, b

jr_01b_4453:
    ld h, l
    jr nz, jr_01b_44c9

    ld l, c

jr_01b_4457:
    ld h, a
    ld l, [hl]
    jr nz, @+$74

    ld h, l
    ld h, c
    ld h, h
    ld [hl], e
    ld a, [hl-]
    ld bc, $4222
    ld h, l

jr_01b_4464:
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, l

jr_01b_4468:
    jr nz, jr_01b_44de

jr_01b_446a:
    ld l, b
    ld h, l
    ld bc, $6f62
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld [hl], e
    ld l, a

jr_01b_4475:
    ld l, l
    ld h, l
    jr nz, @+$65

    ld [hl], d
    ld l, a
    ld [hl], a
    ld [hl], e
    ld hl, $0322
    nop
    ld [hl+], a
    ld [hl+], a
    inc bc
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01b_44fd

    ld l, c
    ld h, a
    ld l, [hl]

jr_01b_448d:
    jr nz, jr_01b_4501

    ld h, l
    ld h, c
    ld h, h
    ld [hl], e
    ld a, [hl-]
    ld bc, $5322
    ld l, b
    ld l, a
    ld [hl], d
    ld [hl], h
    jr nz, jr_01b_44ff

    ld [hl], l
    ld [hl], h
    jr nz, jr_01b_4514

    ld [hl], a
    ld h, l
    ld h, l
    ld [hl], h
    ld hl, $5401
    ld l, a
    jr nz, jr_01b_44fb

    ld l, c

jr_01b_44ac:
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_01b_4512

    ld l, [hl]
    ld h, h
    jr nz, jr_01b_4505

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, $22
    inc bc
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01b_4534

    ld l, c
    ld h, a
    ld l, [hl]
    jr nz, jr_01b_4538

    ld h, l
    ld h, c
    ld h, h

jr_01b_44c9:
    ld [hl], e
    ld a, [hl-]
    ld bc, $4322
    ld l, a
    ld l, l
    ld h, l
    jr nz, @+$6a

    ld h, c
    db $76
    ld h, l
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $7773

jr_01b_44de:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_4548

    ld a, b
    ld h, c
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, l
    ld h, h
    ld hl, $0322
    nop
    ld [hl+], a
    ld b, e
    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_01b_4542

    ld h, c
    ld l, e
    ld h, l
    ld [hl], d
    daa
    ld [hl], e

jr_01b_44fb:
    jr nz, @+$4a

jr_01b_44fd:
    ld [hl], l
    ld [hl], h

jr_01b_44ff:
    ld [hl+], a
    inc bc

jr_01b_4501:
    nop
    ld [hl+], a
    ld d, d
    ld l, a

jr_01b_4505:
    ld h, c
    ld h, h
    jr nz, @+$76

    ld l, a
    ld bc, $6550
    ld h, c
    ld h, e
    ld l, b
    daa
    ld [hl], e

jr_01b_4512:
    jr nz, jr_01b_4557

jr_01b_4514:
    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, h
    ld h, l
    ld [hl+], a
    inc bc
    nop
    ld [hl+], a
    ld b, h
    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, jr_01b_4597

    ld l, a
    jr nz, @+$47

    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, b
    ld [hl+], a
    inc bc
    nop
    ld b, c
    jr nz, jr_01b_459c

    ld h, c
    ld [hl], d
    ld h, a
    ld h, l

jr_01b_4534:
    jr nz, jr_01b_45aa

    ld [hl], d
    ld h, l

jr_01b_4538:
    ld h, l
    ld bc, $6c62
    ld l, a
    ld h, e
    ld l, e
    ld [hl], e
    jr nz, @+$76

jr_01b_4542:
    ld l, b
    ld h, l
    jr nz, @+$72

    ld h, c
    ld [hl], h

jr_01b_4548:
    ld l, b
    ld l, $03
    nop
    ld b, a
    ld h, c
    ld l, h
    ld h, l
    jr nz, jr_01b_45a8

    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld a, c

jr_01b_4557:
    jr nz, jr_01b_459c

    ld l, b
    ld h, c
    ld [hl], h
    ld h, l
    ld h, c
    ld [hl], l
    inc bc
    nop
    ld d, h
    ld l, c
    ld l, [hl]
    ld a, c
    jr nz, jr_01b_45bb

    ld l, a
    ld [hl], h
    ld [hl], e
    jr nz, jr_01b_45af

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    inc bc
    nop
    ld c, l
    ld l, c
    ld l, [hl]
    ld l, c
    jr nz, @+$4e

    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_01b_45c1

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    inc bc
    nop
    ld d, d
    ld h, c
    db $76
    ld h, l
    ld l, [hl]
    jr nz, jr_01b_45e3

    ld l, a
    ld l, a
    ld h, h
    ld [hl], e
    jr nz, jr_01b_45d5

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l

jr_01b_4597:
    inc bc
    nop
    ld b, h
    ld [hl], l
    ld l, [hl]

jr_01b_459c:
    ld h, l
    jr nz, jr_01b_45e2

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_01b_45a4

jr_01b_45a4:
    ld b, a
    ld l, a
    ld l, h
    ld h, [hl]

jr_01b_45a8:
    jr nz, jr_01b_45f1

jr_01b_45aa:
    ld [hl], l
    ld [hl], d
    ld [hl], l
    daa
    ld [hl], e

jr_01b_45af:
    ld bc, $6950
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_01b_4618

    ld l, [hl]
    ld h, h
    jr nz, jr_01b_460b

jr_01b_45bb:
    ld [hl], l
    ld [hl], h
    ld [hl], h
    inc bc
    nop
    ld b, a

jr_01b_45c1:
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_01b_4609

    ld l, h
    ld l, c
    ld l, [hl]
    ld l, c
    ld h, e
    inc bc
    nop
    ld b, e
    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_01b_4620

    ld h, c
    ld l, e

jr_01b_45d5:
    ld h, l
    ld [hl], d
    daa
    ld [hl], e
    jr nz, jr_01b_4623

    ld [hl], l
    ld [hl], h
    nop
    ld c, b
    ld h, l
    ld l, h
    ld l, h

jr_01b_45e2:
    ld l, a

jr_01b_45e3:
    inc l
    jr nz, jr_01b_45ed

    ld l, $03
    nop
    ld d, e
    ld [hl], h
    ld h, c
    ld [hl], d

jr_01b_45ed:
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a

jr_01b_45f1:
    jr nz, jr_01b_4654

    jr nz, @+$74

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ccf
    nop
    ld b, e
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01b_466e

    ld h, l
    jr nz, jr_01b_467b

    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01b_4682

jr_01b_4609:
    ld l, a
    ld [hl], l

jr_01b_460b:
    ld bc, $6177
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01b_4686

    ld l, a
    jr nz, @+$75

    ld [hl], h
    ld h, c
    ld [hl], d

jr_01b_4618:
    ld [hl], h
    ld l, $03
    nop
    ld b, a
    ld l, a
    jr nz, jr_01b_4681

jr_01b_4620:
    ld l, b
    ld h, l
    ld h, c

jr_01b_4623:
    ld h, h
    jr nz, jr_01b_4687

    ld l, [hl]
    ld h, h
    jr nz, jr_01b_469d

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    ld bc, $7266
    ld l, a
    ld l, l
    jr nz, jr_01b_467d

    ld l, a
    ld l, h
    ld h, l
    jr nz, @+$33

    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01b_46a5

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_01b_46bb

    ld l, a
    jr nz, @+$69

    ld l, a
    ld l, h
    ld h, [hl]
    ccf
    inc bc
    nop
    ld c, a
    ld l, [hl]
    ld l, h
    ld a, c

jr_01b_4654:
    jr nz, jr_01b_46c6

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_01b_46c1

    ld h, c
    ld l, [hl]
    ld bc, $6f67
    jr nz, jr_01b_46d4

    ld l, [hl]
    jr nz, jr_01b_46dc

    ld l, b
    ld h, l
    jr nz, jr_01b_46cf

    ld l, a
    ld [hl], l

jr_01b_466e:
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $03
    nop
    ld b, l
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01b_46c8

jr_01b_467b:
    ld h, c
    ld [hl], d

jr_01b_467d:
    ld l, c
    ld l, a
    ld l, [hl]
    daa

jr_01b_4681:
    ld [hl], e

jr_01b_4682:
    ld bc, $6c43
    ld [hl], l

jr_01b_4686:
    ld h, d

jr_01b_4687:
    jr nz, jr_01b_46dd

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ccf
    nop
    dec bc
    jr nz, jr_01b_46da

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6f54

jr_01b_469d:
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h

jr_01b_46a5:
    daa
    ld [hl], e
    jr nz, jr_01b_4718

    ld l, [hl]
    ld l, h
    ld a, c
    ld bc, $6f66
    ld [hl], d
    jr nz, jr_01b_4726

    ld l, b
    ld h, l
    jr nz, jr_01b_4727

    ld [hl], l
    ld h, c
    ld l, h
    ld l, c
    ld h, [hl]

jr_01b_46bb:
    ld l, c
    ld h, l
    ld h, h
    ld l, $03
    nop

jr_01b_46c1:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01b_4729

jr_01b_46c6:
    ld h, c
    ld l, [hl]

jr_01b_46c8:
    jr nz, jr_01b_473a

    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_01b_4730

jr_01b_46cf:
    ld bc, $7270
    ld h, c
    ld h, e

jr_01b_46d4:
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_01b_474c

jr_01b_46da:
    ld l, a
    ld [hl], l

jr_01b_46dc:
    ld l, [hl]

jr_01b_46dd:
    ld h, h
    ld bc, $6e61
    ld a, c
    ld [hl], h
    ld l, c
    ld l, l
    ld h, l
    ld l, $20
    ld d, e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, @+$70

    ld l, a
    ld [hl], a
    ccf
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01b_475b

    ld h, c
    ld l, [hl]
    jr nz, jr_01b_476f

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $6f72
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_01b_476e

    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, c
    ld l, l
    ld h, l
    ld bc, $6661
    ld [hl], h
    ld h, l

jr_01b_4718:
    ld [hl], d
    jr nz, jr_01b_478f

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01b_4787

    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], b
    ld l, $02

jr_01b_4726:
    ld d, a

jr_01b_4727:
    ld l, c
    ld l, h

jr_01b_4729:
    ld l, h
    jr nz, jr_01b_47a5

    ld l, a
    ld [hl], l
    jr nz, @+$75

jr_01b_4730:
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    ld bc, $6972
    ld h, a
    ld l, b
    ld [hl], h

jr_01b_473a:
    jr nz, @+$63

    ld [hl], a
    ld h, c
    ld a, c
    ccf
    nop
    ld c, a
    ld c, e
    ld l, $20
    ld d, a
    ld h, c
    ld l, c
    ld [hl], h
    jr nz, jr_01b_47b1

    ld l, a

jr_01b_474c:
    ld [hl], d
    jr nz, jr_01b_47c3

    ld l, b
    ld h, l
    ld l, l
    inc l
    ld bc, $6874
    ld h, l
    ld l, [hl]
    jr nz, jr_01b_47d3

    ld l, a

jr_01b_475b:
    ld [hl], l
    jr nz, jr_01b_47c1

    ld h, c
    ld l, [hl]
    jr nz, jr_01b_47d5

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, $03
    nop
    ld b, l
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d

jr_01b_476e:
    ld l, c

jr_01b_476f:
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_47c0

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    daa
    ld [hl], e
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_01b_47d5

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l

jr_01b_4787:
    ld h, l
    ld l, [hl]
    ld [hl], h
    inc l
    ld bc, $3f07
    nop

jr_01b_478f:
    ld c, a
    ld c, b
    ccf
    jr nz, jr_01b_47e4

    ld l, h
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_47fd

    jr nz, jr_01b_480e

    ld [hl], d
    ld h, c
    ld h, e
    dec l
    ld bc, $6974

jr_01b_47a5:
    ld h, e
    ld h, l
    jr nz, jr_01b_481b

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_01b_4823

    ld l, b
    ld h, l

jr_01b_47b1:
    ld l, [hl]
    ccf
    nop
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, jr_01b_4821

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d

jr_01b_47c0:
    inc l

jr_01b_47c1:
    jr nz, jr_01b_4828

jr_01b_47c3:
    ld l, b
    ld bc, $3f07
    ld [bc], a
    ld c, d
    ld l, a
    ld l, c
    ld l, [hl]
    jr nz, jr_01b_4842

    ld l, b
    ld h, l
    jr nz, @+$6e

    ld h, c

jr_01b_47d3:
    ld [hl], e
    ld [hl], h

jr_01b_47d5:
    ld bc, $7267
    ld l, a
    ld [hl], l
    ld [hl], b
    jr nz, jr_01b_480a

    jr nz, jr_01b_4853

    ld l, b
    ld h, l
    ld a, c
    daa
    ld [hl], d

jr_01b_47e4:
    ld h, l
    ld bc, $6261
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, @+$76

    ld l, a
    jr nz, jr_01b_485c

    ld h, l
    ld h, c
    db $76
    ld h, l
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01b_4862

    ld l, c

jr_01b_47fd:
    ld l, [hl]
    ld h, c
    ld l, h
    jr nz, jr_01b_4869

    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], b
    ld bc, $6977
    ld l, h

jr_01b_480a:
    ld l, h
    jr nz, jr_01b_487b

    ld l, a

jr_01b_480e:
    ld [hl], a
    jr nz, @+$64

    ld h, l
    ld h, a
    ld l, c
    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, jr_01b_488f

jr_01b_481b:
    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l

jr_01b_4821:
    ld h, l
    ld l, [hl]

jr_01b_4823:
    ld [hl], h
    ld l, $03
    nop
    ld d, h

jr_01b_4828:
    ld l, b
    ld h, l
    ld a, c
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01b_4891

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_01b_48aa

    ld l, a
    ld bc, $7473
    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, $20
    ld b, a
    ld l, a
    ld l, a

jr_01b_4842:
    ld h, h
    jr nz, jr_01b_48b1

    ld [hl], l
    ld h, e
    ld l, e
    ld hl, $0003
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_01b_48cb

    ld l, a

jr_01b_4853:
    ld [hl], l
    jr nz, @+$68

    ld l, a
    ld [hl], d
    jr nz, jr_01b_48d1

    ld h, c
    ld l, c

jr_01b_485c:
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $01

jr_01b_4862:
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01b_48cd

    ld l, c
    ld l, [hl]

jr_01b_4869:
    ld h, c
    ld l, h
    jr nz, @+$69

    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], b
    ld bc, $616d
    ld a, c
    jr nz, jr_01b_48e5

    ld l, a
    ld [hl], a
    jr nz, @+$75

jr_01b_487b:
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01b_48b7

    dec l
    ld [hl], b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, jr_01b_4900

    ld l, a

jr_01b_488f:
    ld [hl], l
    ld l, [hl]

jr_01b_4891:
    ld h, h
    ccf
    ld bc, $7349
    jr nz, jr_01b_4901

    ld [hl], h
    jr nz, jr_01b_48fc

    jr nz, jr_01b_48ea

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_01b_48ea

    ld h, c
    ld l, l
    ld h, l
    ccf
    nop
    ld c, a
    ld l, [hl]

jr_01b_48aa:
    ld l, h
    ld a, c
    jr nz, jr_01b_491e

    ld l, h
    ld h, c
    ld a, c

jr_01b_48b1:
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, @+$65

    ld h, c

jr_01b_48b7:
    ld l, [hl]
    ld bc, $6f67
    jr nz, jr_01b_492c

    ld l, [hl]
    jr nz, jr_01b_4934

    ld l, b
    ld h, l
    jr nz, jr_01b_4927

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $03

jr_01b_48cb:
    nop
    ld e, c

jr_01b_48cd:
    ld l, a
    ld [hl], l
    jr nz, jr_01b_4934

jr_01b_48d1:
    ld h, c
    ld l, [hl]
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_01b_493b

    ld bc, $614d
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, @+$49

    ld h, c
    ld l, l
    ld h, l

jr_01b_48e5:
    jr nz, jr_01b_4948

    ld l, [hl]
    ld a, c
    ld [hl], h

jr_01b_48ea:
    ld l, c
    ld l, l
    ld h, l
    ld l, $01
    ld d, e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, jr_01b_4964

    ld l, a
    ld [hl], a
    ccf
    nop
    ld b, e
    ld h, c

jr_01b_48fc:
    ld l, h
    ld l, h
    jr nz, jr_01b_496d

jr_01b_4900:
    ld h, l

jr_01b_4901:
    jr nz, @+$79

    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01b_4981

    ld l, a
    ld [hl], l
    ld bc, $6177
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01b_4985

    ld l, a
    jr nz, @+$75

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, $03
    nop
    ld c, b
    ld l, c
    inc l

jr_01b_491e:
    jr nz, jr_01b_4927

    ld l, $2e
    ld l, $01
    ld b, e
    ld l, h
    ld [hl], l

jr_01b_4927:
    ld h, d
    jr nz, jr_01b_496d

    ld l, b
    ld h, c

jr_01b_492c:
    ld l, l
    ld [hl], b
    ld hl, $0003
    ld b, c
    jr nz, jr_01b_49a4

jr_01b_4934:
    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l

jr_01b_493b:
    jr nz, jr_01b_49af

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld bc, $7461
    jr nz, jr_01b_4951

    jr nz, @+$45

jr_01b_4948:
    ld l, h
    ld [hl], l
    ld h, d
    ccf
    nop
    ld d, a
    ld h, l
    ld l, h
    ld l, h

jr_01b_4951:
    jr nz, jr_01b_49c7

    ld l, b
    ld h, l
    ld l, [hl]
    inc l
    jr nz, jr_01b_49d2

    ld l, a
    ld [hl], l
    ld bc, $6163
    ld l, [hl]
    jr nz, @+$75

    ld [hl], h
    ld h, c
    ld [hl], d

jr_01b_4964:
    ld [hl], h
    jr nz, @+$70

    ld h, l
    ld a, b
    ld [hl], h
    ld l, $03
    nop

jr_01b_496d:
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01b_49e7

    ld l, a
    ld l, a
    jr nz, @+$64

    ld h, c
    ld h, h
    jr nz, jr_01b_49f4

    ld l, a
    ld [hl], l
    ld bc, $6f63
    ld [hl], l

jr_01b_4981:
    ld l, h
    ld h, h
    ld l, [hl]
    daa

jr_01b_4985:
    ld [hl], h
    jr nz, jr_01b_49ff

    ld l, c
    ld l, [hl]
    ld l, $02
    ld b, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_01b_49fe

    ld [hl], l
    ld h, e
    ld l, e
    jr nz, jr_01b_4a00

    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $656e
    ld a, b
    ld [hl], h
    jr nz, jr_01b_4a17

    ld l, a

jr_01b_49a4:
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld hl, $0003

jr_01b_49af:
    ld b, e
    ld l, a
    ld l, [hl]
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], h
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01b_4a2f

    ld l, [hl]
    ld bc, $6c70
    ld h, c
    ld h, e
    ld l, c

jr_01b_49c7:
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_4a34

    ld l, [hl]
    jr nz, jr_01b_4a1e

    ld h, c
    ld l, h
    ld l, l
    daa

jr_01b_49d2:
    ld [hl], e
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_01b_4a2e

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld hl, $5402
    ld l, b

jr_01b_49e7:
    ld l, c
    ld [hl], e
    jr nz, @+$72

    ld [hl], l
    ld [hl], h
    ld [hl], e
    jr nz, jr_01b_4a69

    ld l, a
    ld [hl], l
    jr nz, jr_01b_4a63

jr_01b_49f4:
    ld l, [hl]
    ld h, l
    ld bc, $7473
    ld h, l
    ld [hl], b
    jr nz, jr_01b_4a60

    ld l, h

jr_01b_49fe:
    ld l, a

jr_01b_49ff:
    ld [hl], e

jr_01b_4a00:
    ld h, l
    ld [hl], d
    jr nz, jr_01b_4a78

    ld l, a
    ld bc, $6562
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_4a6e

    jr nz, jr_01b_4a7c

    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld hl, $0003

jr_01b_4a17:
    ld b, e
    ld l, a
    ld l, [hl]
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], h

jr_01b_4a1e:
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01b_4a97

    ld l, [hl]
    ld bc, $6977
    ld l, [hl]
    ld l, [hl]

jr_01b_4a2e:
    ld l, c

jr_01b_4a2f:
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_4a83

    ld h, c

jr_01b_4a34:
    ld l, h
    ld l, l
    daa
    ld [hl], e
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_01b_4a93

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld hl, $4202
    ld [hl], l
    ld [hl], h
    jr nz, jr_01b_4ab3

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01b_4ac8

    ld h, l
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    ld bc, $6f66
    ld [hl], d
    jr nz, @+$76

jr_01b_4a60:
    ld l, b
    ld h, c
    ld [hl], h

jr_01b_4a63:
    ld hl, $4b20
    ld h, l
    ld h, l
    ld [hl], b

jr_01b_4a69:
    ld bc, $6c63
    ld l, c
    ld l, l

jr_01b_4a6e:
    ld h, d
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_4ae8

    ld l, b
    ld h, l
    jr nz, jr_01b_4aea

jr_01b_4a78:
    ld h, c
    ld l, [hl]
    ld l, e
    ld [hl], e

jr_01b_4a7c:
    ld hl, $0003
    ld c, c
    ld [hl], h
    daa
    ld [hl], e

jr_01b_4a83:
    jr nz, jr_01b_4af9

    ld l, a
    ld l, a
    jr nz, @+$64

    ld h, c
    ld h, h
    jr nz, jr_01b_4b06

    ld l, a
    ld [hl], l
    ld bc, $6f63
    ld [hl], l

jr_01b_4a93:
    ld l, h
    ld h, h
    ld l, [hl]
    daa

jr_01b_4a97:
    ld [hl], h
    jr nz, jr_01b_4b11

    ld l, c
    ld l, [hl]
    ld l, $02
    ld b, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_01b_4b10

    ld [hl], l
    ld h, e
    ld l, e
    jr nz, jr_01b_4b12

    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $656e
    ld a, b
    ld [hl], h

jr_01b_4ab3:
    jr nz, jr_01b_4b29

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld hl, $0003
    ld b, e
    ld l, a
    ld l, [hl]
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], h

jr_01b_4ac8:
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01b_4b41

    ld l, [hl]
    ld bc, $6c70
    ld h, c
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_4b46

    ld l, [hl]
    jr nz, jr_01b_4b24

    ld [hl], l
    ld l, [hl]
    ld h, l
    daa
    ld [hl], e
    ld bc, $6c43

jr_01b_4ae8:
    ld [hl], l
    ld h, d

jr_01b_4aea:
    jr nz, jr_01b_4b40

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld hl, $5402
    ld l, b

jr_01b_4af9:
    ld l, c
    ld [hl], e
    jr nz, @+$72

    ld [hl], l
    ld [hl], h
    ld [hl], e
    jr nz, jr_01b_4b7b

    ld l, a
    ld [hl], l
    jr nz, jr_01b_4b75

jr_01b_4b06:
    ld l, [hl]
    ld h, l
    ld bc, $7473
    ld h, l
    ld [hl], b
    jr nz, jr_01b_4b72

    ld l, h

jr_01b_4b10:
    ld l, a

jr_01b_4b11:
    ld [hl], e

jr_01b_4b12:
    ld h, l
    ld [hl], d
    jr nz, jr_01b_4b8a

    ld l, a
    ld bc, $6562
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_4b80

    jr nz, jr_01b_4b8e

    ld h, c
    ld [hl], e
    ld [hl], h

jr_01b_4b24:
    ld h, l
    ld [hl], d
    ld hl, $0003

jr_01b_4b29:
    ld b, e
    ld l, a
    ld l, [hl]
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], h
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01b_4ba9

    ld l, [hl]
    ld bc, $6977
    ld l, [hl]
    ld l, [hl]

jr_01b_4b40:
    ld l, c

jr_01b_4b41:
    ld l, [hl]
    ld h, a
    jr nz, @+$46

    ld [hl], l

jr_01b_4b46:
    ld l, [hl]
    ld h, l
    daa
    ld [hl], e
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_01b_4ba5

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld hl, $4202
    ld [hl], l
    ld [hl], h
    jr nz, jr_01b_4bc5

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01b_4bda

    ld h, l
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    ld bc, $6f66
    ld [hl], d
    jr nz, @+$76

jr_01b_4b72:
    ld l, b
    ld h, c
    ld [hl], h

jr_01b_4b75:
    ld hl, $4b20
    ld h, l
    ld h, l
    ld [hl], b

jr_01b_4b7b:
    ld bc, $6c63
    ld l, c
    ld l, l

jr_01b_4b80:
    ld h, d
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_4bfa

    ld l, b
    ld h, l
    jr nz, jr_01b_4bfc

jr_01b_4b8a:
    ld h, c
    ld l, [hl]
    ld l, e
    ld [hl], e

jr_01b_4b8e:
    ld hl, $0003
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01b_4c0b

    ld l, a
    ld l, a
    jr nz, @+$64

    ld h, c
    ld h, h
    jr nz, jr_01b_4c18

    ld l, a
    ld [hl], l
    ld bc, $6f63
    ld [hl], l

jr_01b_4ba5:
    ld l, h
    ld h, h
    ld l, [hl]
    daa

jr_01b_4ba9:
    ld [hl], h
    jr nz, jr_01b_4c23

    ld l, c
    ld l, [hl]
    ld l, $02
    ld b, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_01b_4c22

    ld [hl], l
    ld h, e
    ld l, e
    jr nz, jr_01b_4c24

    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $656e
    ld a, b
    ld [hl], h

jr_01b_4bc5:
    jr nz, jr_01b_4c3b

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld hl, $0003
    ld b, e
    ld l, a
    ld l, [hl]
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], h

jr_01b_4bda:
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01b_4c53

    ld l, [hl]
    ld bc, $6c70
    ld h, c
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_4c58

    ld l, [hl]
    jr nz, jr_01b_4c3e

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    daa
    ld bc, $6c43

jr_01b_4bfa:
    ld [hl], l
    ld h, d

jr_01b_4bfc:
    jr nz, jr_01b_4c52

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld hl, $5402
    ld l, b

jr_01b_4c0b:
    ld l, c
    ld [hl], e
    jr nz, jr_01b_4c7f

    ld [hl], l
    ld [hl], h
    ld [hl], e
    jr nz, jr_01b_4c8d

    ld l, a
    ld [hl], l
    jr nz, jr_01b_4c87

jr_01b_4c18:
    ld l, [hl]
    ld h, l
    ld bc, $7473
    ld h, l
    ld [hl], b
    jr nz, @+$65

    ld l, h

jr_01b_4c22:
    ld l, a

jr_01b_4c23:
    ld [hl], e

jr_01b_4c24:
    ld h, l
    ld [hl], d
    jr nz, @+$76

    ld l, a
    ld bc, $6562
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_4c92

    jr nz, jr_01b_4ca0

    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld hl, $0003

jr_01b_4c3b:
    ld e, c
    ld l, a
    ld [hl], l

jr_01b_4c3e:
    jr nz, jr_01b_4cae

    ld l, a
    jr nz, jr_01b_4caf

    ld l, a
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], d
    ld bc, $656e
    ld h, l
    ld h, h
    jr nz, jr_01b_4cc3

    ld l, a
    jr nz, jr_01b_4cb5

jr_01b_4c52:
    ld l, a

jr_01b_4c53:
    ld l, l
    ld h, l
    jr nz, jr_01b_4cb9

    ld h, c

jr_01b_4c58:
    ld h, e
    ld l, e
    ld bc, $6568
    ld [hl], d
    ld h, l
    ld hl, $0003
    ld b, c
    jr nz, jr_01b_4cd3

    ld h, l
    ld [hl], a
    jr nz, @+$65

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_01b_4cda

    ld h, c
    ld [hl], e
    ld bc, $7061
    ld [hl], b
    ld h, l
    ld h, c
    ld [hl], d
    ld h, l
    ld h, h
    jr nz, @+$63

jr_01b_4c7f:
    ld [hl], h
    jr nz, jr_01b_4c8d

    ld bc, $6c43
    ld [hl], l
    ld h, d

jr_01b_4c87:
    jr nz, jr_01b_4cfd

    ld l, a
    ld h, h
    ld h, c
    ld a, c

jr_01b_4c8d:
    ld hl, $0003
    ld c, c
    ld [hl], h

jr_01b_4c92:
    daa
    ld [hl], e
    jr nz, jr_01b_4c9d

    ld bc, $7266
    ld l, a
    ld l, l
    jr nz, jr_01b_4cea

jr_01b_4c9d:
    ld h, c
    ld [hl], d
    ld l, c

jr_01b_4ca0:
    ld l, a
    ld l, [hl]
    jr nz, jr_01b_4ce7

    ld l, h
    ld [hl], l
    ld h, d
    ld hl, $0003
    rlca
    ld hl, $0003

jr_01b_4cae:
    ld c, c

jr_01b_4caf:
    jr nz, @+$70

    ld l, a
    ld [hl], a
    jr nz, jr_01b_4d25

jr_01b_4cb5:
    ld [hl], d
    ld h, l
    ld [hl], e
    ld h, l

jr_01b_4cb9:
    ld l, [hl]
    ld [hl], h
    ld bc, $6874
    ld l, c
    ld [hl], e
    jr nz, jr_01b_4d36

    ld [hl], d

jr_01b_4cc3:
    ld l, a
    ld [hl], b
    ld l, b
    ld a, c
    jr nz, jr_01b_4d3d

    ld l, a
    ld bc, $2e07
    inc bc
    nop
    ld b, e
    ld l, a
    ld l, [hl]
    ld h, a

jr_01b_4cd3:
    ld [hl], d
    ld h, c
    ld [hl], h
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], h

jr_01b_4cda:
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    inc l
    ld bc, $2e07
    inc bc
    nop
    ld c, c
    jr nz, jr_01b_4d57

jr_01b_4ce7:
    ld [hl], d
    ld h, l
    ld [hl], e

jr_01b_4cea:
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $200f
    ld d, b
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_01b_4d4f

    ld [hl], d
    ld l, a

jr_01b_4cfd:
    ld [hl], b
    ld l, b
    ld a, c
    ld bc, $6f74
    jr nz, jr_01b_4d0c

    ld l, $03
    nop
    ld d, b
    ld [hl], d
    ld h, c
    ld h, e

jr_01b_4d0c:
    ld [hl], h
    ld l, c
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, a
    ccf
    nop
    ld d, b
    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$63

    ld l, h
    ld l, a
    ld l, [hl]
    ld h, l
    ccf

jr_01b_4d25:
    nop
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01b_4da5

    ld l, a
    ld [hl], l
    jr nz, jr_01b_4da0

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e

jr_01b_4d36:
    ld h, l
    ccf
    nop
    ld b, h
    ld l, a
    jr nz, jr_01b_4db6

jr_01b_4d3d:
    ld l, a
    ld [hl], l
    jr nz, jr_01b_4db1

    ld l, h
    ld h, c
    ld l, [hl]
    ld bc, $6f74
    jr nz, @+$72

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e

jr_01b_4d4f:
    ld h, l
    ccf
    nop
    ld b, c
    ld [hl], d
    ld h, l
    jr nz, jr_01b_4dd0

jr_01b_4d57:
    ld l, a
    ld [hl], l
    jr nz, jr_01b_4dcc

    ld [hl], l
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6874
    ld l, c
    ld [hl], e
    jr nz, jr_01b_4db6

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_01b_4db6

    ld h, c
    ld l, l
    ld h, l
    ccf
    nop
    ld b, h
    ld l, c
    ld h, h
    jr nz, jr_01b_4df2

    ld l, a
    ld [hl], l
    jr nz, jr_01b_4de5

    ld h, c
    db $76
    ld h, l
    jr nz, jr_01b_4de3

    ld bc, $6863
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    jr nz, jr_01b_4dfa

    ld h, [hl]
    jr nz, jr_01b_4df6

    ld h, l
    ld h, c
    ld [hl], d
    ld [hl], h
    ccf
    nop
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    ccf
    ld hl, $203f
    ld b, [hl]
    ld l, a
    ld [hl], d
    ld h, a

jr_01b_4da0:
    ld h, l
    ld [hl], h
    ld bc, $6f74

jr_01b_4da5:
    jr nz, jr_01b_4e0b

    ld l, a
    jr nz, jr_01b_4e1d

    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]

jr_01b_4db1:
    ld h, a
    ccf
    ld hl, $003f

jr_01b_4db6:
    ld c, c
    ld [hl], e
    jr nz, jr_01b_4e2e

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01b_4e2c

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    ld l, $2e
    ld l, $01
    ld [hl], b
    ld l, a
    ld [hl], e
    ld [hl], h
    ld [hl], b

jr_01b_4dcc:
    ld l, a
    ld l, [hl]
    ld h, l
    ld h, h

jr_01b_4dd0:
    ccf
    nop
    ld c, a
    ld c, e
    jr nz, jr_01b_4e4a

    ld l, b
    ld h, l
    ld l, [hl]
    ld l, $2e
    ld l, $01
    ld c, h
    ld h, l
    ld [hl], h
    jr nz, jr_01b_4e4f

    ld h, l

jr_01b_4de3:
    jr nz, jr_01b_4e50

jr_01b_4de5:
    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, @+$79

    ld l, b
    ld h, l
    ld l, [hl]
    ld bc, $6f79
    ld [hl], l
    daa

jr_01b_4df2:
    ld [hl], d
    ld h, l
    jr nz, jr_01b_4e68

jr_01b_4df6:
    ld h, l
    ld h, c
    ld h, h
    ld a, c

jr_01b_4dfa:
    jr nz, jr_01b_4e62

    ld l, a
    ld [hl], d
    jr nz, jr_01b_4e6d

    ld h, l
    ld l, $03
    nop
    ld c, c
    ld h, [hl]
    jr nz, jr_01b_4e71

    ld [hl], h
    daa
    ld [hl], e

jr_01b_4e0b:
    jr nz, jr_01b_4e6e

    jr nz, jr_01b_4e5c

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    ld bc, $6147
    ld l, l
    ld h, l
    inc l
    jr nz, jr_01b_4e64

    daa
    ld l, h

jr_01b_4e1d:
    ld l, h
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01b_4e8a

    ld l, [hl]
    ld a, c
    ld [hl], h

jr_01b_4e2c:
    ld l, c
    ld l, l

jr_01b_4e2e:
    ld h, l
    ld l, $03
    nop
    ld c, c
    daa
    db $76
    ld h, l
    jr nz, jr_01b_4ea6

    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_4eb4

    ld l, a
    ld bc, $6173
    ld a, c
    jr nz, jr_01b_4eb0

    ld h, [hl]
    jr nz, @+$7b

jr_01b_4e4a:
    ld l, a
    ld [hl], l
    ld bc, $6f64

jr_01b_4e4f:
    ld l, [hl]

jr_01b_4e50:
    daa
    ld [hl], h
    jr nz, @+$79

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01b_4ecd

    ld l, a
    jr nz, jr_01b_4ecc

jr_01b_4e5c:
    ld l, h
    ld h, c
    ld a, c
    ld hl, $0003

jr_01b_4e62:
    ld c, [hl]
    ld h, l

jr_01b_4e64:
    ld [hl], d
    db $76
    ld l, a
    ld [hl], l

jr_01b_4e68:
    ld [hl], e
    inc l
    jr nz, jr_01b_4ecd

    ld [hl], d

jr_01b_4e6d:
    ld h, l

jr_01b_4e6e:
    jr nz, jr_01b_4ee9

    ld l, a

jr_01b_4e71:
    ld [hl], l
    ccf
    ld bc, $6946
    ld l, [hl]
    ld h, l
    ld l, $20
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_01b_4ef0

    ld l, h
    ld h, c
    ld a, c
    ld bc, $6877
    ld h, l
    ld l, [hl]
    jr nz, jr_01b_4f03

jr_01b_4e8a:
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01b_4f03

    ld h, l
    ld h, c
    ld h, h
    ld a, c
    ld l, $03
    nop
    ld d, e
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    daa
    ld [hl], e
    jr nz, jr_01b_4f1c

    ld [hl], d

jr_01b_4ea6:
    ld l, a
    ld l, [hl]
    ld h, a
    ld hl, $0003
    ld d, h
    ld h, c
    ld l, e
    ld l, c

jr_01b_4eb0:
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_4f23

jr_01b_4eb4:
    ld l, [hl]
    jr nz, jr_01b_4f04

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ccf
    nop
    ld b, a
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$63

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    jr nz, @+$4f

jr_01b_4ecc:
    ld h, c

jr_01b_4ecd:
    ld [hl], d
    ld l, c
    ld l, a
    ccf
    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_4f28

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ccf
    nop
    ld b, e
    ld l, b
    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld l, [hl]
    ld h, a

jr_01b_4ee9:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$4f

    ld h, c
    ld [hl], d

jr_01b_4ef0:
    ld l, c
    ld l, a
    ccf
    nop
    ld b, c
    ld [hl], e
    jr nz, jr_01b_4f3f

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01b_4f41

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c

jr_01b_4f03:
    ld l, a

jr_01b_4f04:
    ld l, [hl]
    inc l
    ld bc, $616d
    ld l, e
    ld h, l
    jr nz, jr_01b_4f80

    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_01b_4f8b

    ld l, a
    ld [hl], l
    jr nz, jr_01b_4f8d

    ld l, c
    ld l, [hl]
    ld hl, $0003
    ld d, a

jr_01b_4f1c:
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01b_4f9a

    ld l, a
    ld [hl], l

jr_01b_4f23:
    ld [hl], d
    jr nz, jr_01b_4f9a

    ld h, l
    ld h, e

jr_01b_4f28:
    ld l, b
    ld l, [hl]
    ld l, c
    ld [hl], c
    ld [hl], l
    ld h, l
    inc l
    ld bc, $6f79
    ld [hl], l
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_01b_4f9e

    ld h, l
    jr nz, jr_01b_4fa0

jr_01b_4f3f:
    ld h, d
    ld l, h

jr_01b_4f41:
    ld h, l
    ld bc, $6f74
    jr nz, jr_01b_4fa9

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_01b_4f99

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld hl, $0003
    ld b, a
    ld h, l
    ld [hl], h
    jr nz, jr_01b_4fbf

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $4120
    ld l, [hl]
    ld h, h
    jr nz, jr_01b_4fc5

    ld h, l
    ld h, c
    ld [hl], h
    ld bc, $6874
    ld h, l
    jr nz, jr_01b_4fb3

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_01b_4fbf

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld hl, $0003
    ld d, b
    ld h, l
    ld [hl], d
    ld l, b
    ld h, c
    ld [hl], b
    ld [hl], e

jr_01b_4f80:
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_01b_4fe9

    ld h, c
    ld l, [hl]
    ld bc, $6163

jr_01b_4f8b:
    ld [hl], e
    ld [hl], h

jr_01b_4f8d:
    jr nz, jr_01b_4ff3

    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $656c

jr_01b_4f99:
    ld h, a

jr_01b_4f9a:
    ld h, l
    ld l, [hl]
    ld h, h
    ld h, c

jr_01b_4f9e:
    ld [hl], d
    ld a, c

jr_01b_4fa0:
    jr nz, jr_01b_4fef

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld hl, $0003

jr_01b_4fa9:
    ld c, b
    ld h, l
    ld a, c
    inc l
    ld bc, $6f79
    ld [hl], l
    jr nz, @+$69

jr_01b_4fb3:
    ld l, a
    ld [hl], h
    jr nz, jr_01b_5024

    ld h, l
    ld l, $03
    nop
    ld b, c
    ld [hl], a
    ld [hl], a
    inc l

jr_01b_4fbf:
    ld bc, $6f79
    ld [hl], l
    jr nz, @+$68

jr_01b_4fc5:
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, @+$6f

    ld h, l
    ld l, $03
    nop
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    ld hl, $5901
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01b_5044

    ld l, a
    ld l, a
    ld h, h
    ld l, $03
    nop
    ld d, h
    ld h, e
    ld l, b
    ld hl, $5720

jr_01b_4fe9:
    ld l, b
    ld l, a
    jr nz, jr_01b_5061

    ld l, a
    ld l, h

jr_01b_4fef:
    ld h, h
    jr nz, jr_01b_506b

    ld l, a

jr_01b_4ff3:
    ld [hl], l
    ccf
    inc bc
    nop
    ld c, c
    daa
    ld l, l
    jr nz, jr_01b_506e

    ld l, a
    ld l, a
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$68

    ld l, a
    ld [hl], d
    ld bc, $6f79
    ld [hl], l
    inc l
    jr nz, @+$09

    ld hl, $4701
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_01b_5081

    ld [hl], l
    ld h, e
    ld l, e
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01b_509a

    ld l, a

jr_01b_5024:
    ld [hl], d
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6168
    ld [hl], d
    ld h, h
    inc l
    jr nz, @+$09

    ld hl, $4b02
    ld h, l
    ld h, l
    ld [hl], b
    jr nz, jr_01b_50ab

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_01b_50ae

    ld l, [hl]
    ld bc, $6572
    ld h, [hl]

jr_01b_5044:
    ld l, c
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_50c4

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $6574
    ld h, e
    ld l, b
    ld l, [hl]
    ld l, c
    ld [hl], c
    ld [hl], l
    ld h, l
    ld hl, $0003
    ld b, c
    ld [hl], d
    ld h, l
    jr nz, @+$7b

    ld l, a

jr_01b_5061:
    ld [hl], l
    jr nz, @+$6a

    ld h, c
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_50d1

jr_01b_506b:
    ld [hl], l
    ld l, [hl]
    inc l

jr_01b_506e:
    ld bc, $3f07
    jr nz, jr_01b_50bd

    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld bc, $6177
    ld [hl], h
    ld h, e
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_50fa

jr_01b_5081:
    ld l, a
    ld [hl], l
    ld [bc], a
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld [hl], b
    ld l, c
    ld [hl], d
    ld h, l
    ld [hl], e
    jr nz, jr_01b_50fb

    ld h, l
    jr nz, jr_01b_5105

    ld l, a
    ld bc, $6f77
    ld [hl], d
    ld l, e
    jr nz, jr_01b_5101

    ld h, c

jr_01b_509a:
    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d
    ld l, $01
    ld c, c
    ld [hl], h
    jr nz, @+$74

    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_01b_510f

jr_01b_50ab:
    ld l, a
    ld h, l
    ld [hl], e

jr_01b_50ae:
    ld hl, $0003
    ld e, c
    ld l, a
    ld hl, $0720
    ld hl, $4801
    ld l, a
    ld [hl], a
    daa
    ld [hl], e

jr_01b_50bd:
    jr nz, jr_01b_5128

    ld [hl], h
    jr nz, jr_01b_5129

    ld l, a
    ld l, c

jr_01b_50c4:
    ld l, [hl]
    ld h, a
    ccf
    ld bc, $2749
    ld l, l
    jr nz, @+$71

    ld l, [hl]
    jr nz, jr_01b_5149

    ld l, a

jr_01b_50d1:
    ld [hl], l
    ld [hl], d
    jr nz, jr_01b_5148

    ld l, c
    ld h, h
    ld h, l
    ld hl, $0003
    rlca
    jr nz, @+$69

    ld l, a
    ld [hl], h
    ld bc, $2061
    ld sp, $552d
    ld d, b
    jr nz, jr_01b_5136

    ld [hl], l
    ld [hl], e
    ld l, b
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    ld hl, $0003
    ld d, b
    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e

jr_01b_50fa:
    ld h, l

jr_01b_50fb:
    jr nz, @+$6a

    ld h, l
    ld [hl], d
    ld h, l
    ccf

jr_01b_5101:
    nop
    ld c, e
    ld h, l
    ld h, l

jr_01b_5105:
    ld [hl], b
    jr nz, jr_01b_5178

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld l, c

jr_01b_510f:
    ld l, [hl]
    ld h, a
    ccf
    nop
    rlca
    ld bc, $7571
    ld l, c
    ld [hl], h
    jr nz, jr_01b_518b

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $03
    nop
    ld c, b

jr_01b_5128:
    ld [hl], l

jr_01b_5129:
    ld l, b
    ccf
    jr nz, jr_01b_5186

    ld l, a
    ld [hl], l
    jr nz, jr_01b_51a8

    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld h, c

jr_01b_5136:
    jr nz, jr_01b_51a3

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld bc, $6877
    ld h, c
    ld [hl], h
    jr nz, jr_01b_518b

    daa
    ld l, l
    jr nz, @+$66

    ld l, a
    ld l, c

jr_01b_5148:
    ld l, [hl]

jr_01b_5149:
    daa
    ccf
    nop
    ld d, a
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01b_51cb

    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01b_51bc

    ld l, h
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_01b_51d3

    ld l, a
    ld bc, $6874
    ld h, l
    jr nz, jr_01b_51cd

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    inc l
    jr nz, @+$77

    ld [hl], e
    ld h, l
    jr nz, jr_01b_51d2

    ld l, [hl]
    ld bc, $7061
    ld [hl], b
    ld [hl], d
    ld l, a

jr_01b_5178:
    ld h, c
    ld h, e
    ld l, b
    jr nz, jr_01b_51f0

    ld l, b
    ld l, a
    ld [hl], h
    jr nz, jr_01b_51f6

    ld l, a
    ld [bc], a
    ld l, b
    ld l, c

jr_01b_5186:
    ld [hl], h
    jr nz, jr_01b_5200

    ld l, c
    ld [hl], h

jr_01b_518b:
    ld l, b
    jr nz, jr_01b_51f1

    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    ld l, $20
    ld c, c
    ld [hl], h
    ld bc, $6163
    ld l, [hl]
    jr nz, @+$6b

    ld l, l
    ld [hl], b
    ld [hl], d
    ld l, a
    db $76

jr_01b_51a3:
    ld h, l
    jr nz, @+$7b

    ld l, a
    ld [hl], l

jr_01b_51a8:
    ld [hl], d
    ld bc, $6373
    ld l, a
    ld [hl], d
    ld h, l
    ld l, $03
    nop
    ld c, h
    ld l, c
    ld h, l
    jr nz, jr_01b_521b

    ld h, l
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, l

jr_01b_51bc:
    ld l, c
    ld l, [hl]
    ld h, l
    ld [hl], e
    jr nz, jr_01b_5236

    ld l, b
    ld h, l
    ld bc, $7270
    ld l, a
    ld [hl], b
    ld h, l
    ld [hl], d

jr_01b_51cb:
    jr nz, jr_01b_522e

jr_01b_51cd:
    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c

jr_01b_51d2:
    ld h, e

jr_01b_51d3:
    ld l, b
    ld bc, $6574
    ld h, e
    ld l, b
    ld l, [hl]
    ld l, c
    ld [hl], c
    ld [hl], l
    ld h, l
    jr nz, jr_01b_5254

    ld l, a
    jr nz, jr_01b_5258

    ld [hl], e
    ld h, l
    ld l, $03
    nop
    ld b, h
    ld l, a
    jr nz, jr_01b_5265

    ld l, a
    ld [hl], l
    jr nz, jr_01b_525b

jr_01b_51f0:
    ld l, [hl]

jr_01b_51f1:
    ld l, a
    ld [hl], a
    jr nz, @+$76

    ld l, b

jr_01b_51f6:
    ld h, l
    ld bc, $6970
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, @+$63

    ld l, [hl]

jr_01b_5200:
    ld h, h
    jr nz, jr_01b_5273

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld bc, $6574
    ld h, e
    ld l, b
    ld l, [hl]
    ld l, c
    ld [hl], c
    ld [hl], l
    ld h, l
    ccf
    nop
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], h

jr_01b_521b:
    jr nz, jr_01b_5286

    ld [hl], e
    jr nz, jr_01b_5281

    jr nz, jr_01b_5284

    ld h, c
    ld [hl], e
    ld h, l
    ld bc, $6f66
    ld [hl], d
    jr nz, jr_01b_528c

    ld [hl], b
    ld [hl], b
    ld [hl], d

jr_01b_522e:
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    jr nz, jr_01b_52a7

    ld l, b
    ld l, a

jr_01b_5236:
    ld [hl], h
    ld [hl], e
    ld l, $02
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01b_52b2

    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_01b_52ba

    ld [hl], d
    ld a, c
    jr nz, jr_01b_52b3

    ld [hl], h
    ld bc, $6977
    ld [hl], h
    ld l, b
    jr nz, jr_01b_52b3

    ld l, h
    ld l, h

jr_01b_5254:
    jr nz, jr_01b_52cf

    ld l, a
    ld [hl], l

jr_01b_5258:
    ld [hl], d
    jr nz, jr_01b_52be

jr_01b_525b:
    ld l, h
    ld [hl], l
    ld h, d
    ld [hl], e
    ld l, $03
    nop
    ld c, c
    ld [hl], h
    daa

jr_01b_5265:
    ld [hl], e
    jr nz, jr_01b_52c9

    jr nz, jr_01b_52cd

    ld l, b
    ld l, c
    ld [hl], b
    jr nz, jr_01b_52e2

    ld l, b
    ld l, a
    ld [hl], h
    inc l

jr_01b_5273:
    jr nz, jr_01b_52e9

    ld l, b
    ld h, l
    ld bc, $6162
    ld [hl], e
    ld l, c
    ld [hl], e
    jr nz, jr_01b_52e5

    ld l, a
    ld [hl], d

jr_01b_5281:
    jr nz, jr_01b_52e4

    ld [hl], b

jr_01b_5284:
    ld [hl], b
    ld [hl], d

jr_01b_5286:
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld l, $01

jr_01b_528c:
    ld c, h
    ld h, l
    ld h, c
    ld [hl], d
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$71

    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld [bc], a
    ld [hl], h
    ld h, l
    ld h, e
    ld l, b
    ld l, [hl]
    ld l, c
    ld [hl], c
    ld [hl], l
    ld h, l
    ld [hl], e
    jr nz, jr_01b_5308

jr_01b_52a7:
    ld h, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld bc, $616d
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d

jr_01b_52b2:
    ld l, c

jr_01b_52b3:
    ld l, [hl]
    ld h, a
    jr nz, @+$6b

    ld [hl], h
    jr nz, jr_01b_5326

jr_01b_52ba:
    ld h, l
    ld h, c
    ld h, h
    ld [hl], e

jr_01b_52be:
    ld bc, $6f74
    jr nz, jr_01b_5336

    ld [hl], l
    ld h, e
    ld h, e
    ld h, l
    ld [hl], e
    ld [hl], e

jr_01b_52c9:
    ld hl, $0003
    ld d, h

jr_01b_52cd:
    ld l, b
    ld h, l

jr_01b_52cf:
    jr nz, jr_01b_5334

    ld l, a
    ld l, [hl]
    ld h, h
    ld l, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_01b_534a

    ld h, [hl]
    ld bc, $6874
    ld h, l
    jr nz, jr_01b_5344

jr_01b_52e2:
    ld h, c
    ld l, h

jr_01b_52e4:
    ld l, h

jr_01b_52e5:
    jr nz, jr_01b_5348

    ld l, [hl]
    ld h, h

jr_01b_52e9:
    jr nz, jr_01b_535f

    ld l, b
    ld h, l
    ld bc, $7267
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, @+$79

    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01b_535c

    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    ld [bc], a
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_01b_5367

    ld [hl], b
    ld [hl], b

jr_01b_5308:
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld l, $20
    ld b, e
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    ld [hl], d
    ld bc, $696c
    ld h, l
    jr nz, jr_01b_537e

    ld l, [hl]
    ld h, h
    jr nz, jr_01b_5395

    ld l, b
    ld h, l
    jr nz, jr_01b_538c

    ld [hl], d

jr_01b_5326:
    ld h, l
    ld h, l
    ld l, [hl]
    daa
    ld [hl], e
    ld bc, $6c73
    ld l, a
    ld [hl], b
    ld h, l
    jr nz, jr_01b_53aa

    ld l, b

jr_01b_5334:
    ld h, l
    ld l, [hl]

jr_01b_5336:
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, @+$6a

    ld l, c
    ld [hl], h
    ld l, $03
    nop
    ld b, h
    ld l, c
    ld h, h

jr_01b_5344:
    jr nz, jr_01b_53bf

    ld l, a
    ld [hl], l

jr_01b_5348:
    jr nz, jr_01b_53be

jr_01b_534a:
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, @+$63

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld bc, $6873
    ld l, a
    ld [hl], h

jr_01b_535c:
    ld [hl], e
    jr nz, jr_01b_53ce

jr_01b_535f:
    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, jr_01b_53d9

    ld [hl], e
    ld h, l
    ld h, h

jr_01b_5367:
    jr nz, jr_01b_53dd

    ld l, b
    ld h, l
    ld bc, $5753
    jr nz, @+$71

    ld [hl], d
    jr nz, jr_01b_53c3

    ld d, a
    ccf
    nop
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01b_53cd

jr_01b_537e:
    ld c, e
    jr nz, jr_01b_53e2

    ld [hl], h
    jr nz, jr_01b_53ea

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, jr_01b_53ed

    ld [hl], l

jr_01b_538c:
    ld [hl], h
    ld bc, $6f79
    ld [hl], l
    jr nz, @+$65

    ld h, c
    ld l, [hl]

jr_01b_5395:
    daa
    ld [hl], h
    jr nz, jr_01b_53fa

    ld [hl], h
    ld [hl], h
    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_01b_5417

    ld l, c
    ld [hl], h
    ld l, b
    ld bc, $2061
    ld [hl], a
    ld h, l
    ld h, h
    ld h, a

jr_01b_53aa:
    ld h, l
    ld l, $02
    ld d, l
    ld [hl], e
    ld h, l
    jr nz, @+$66

    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, @+$65

    ld l, h
    ld [hl], l

jr_01b_53be:
    ld h, d

jr_01b_53bf:
    ld [hl], e
    ld bc, $6e61

jr_01b_53c3:
    ld h, h
    jr nz, jr_01b_543a

    ld [hl], d
    ld a, c
    jr nz, jr_01b_543d

    ld l, b
    ld l, a
    ld l, a

jr_01b_53cd:
    ld [hl], h

jr_01b_53ce:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_5439

    ld l, a
    ld [hl], d
    ld bc, $6874
    ld h, l

jr_01b_53d9:
    jr nz, jr_01b_544b

    ld l, c
    ld l, [hl]

jr_01b_53dd:
    ld hl, $0003
    ld c, h
    ld h, l

jr_01b_53e2:
    ld h, c
    ld [hl], d
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_545e

jr_01b_53ea:
    ld l, b
    ld h, c
    ld [hl], h

jr_01b_53ed:
    jr nz, jr_01b_5458

    ld l, [hl]
    ld bc, $7573
    ld h, e
    ld l, b
    jr nz, jr_01b_5458

    jr nz, jr_01b_546c

    ld l, b

jr_01b_53fa:
    ld l, a
    ld [hl], d
    ld [hl], h
    jr nz, @+$76

    ld l, c
    ld l, l
    ld h, l
    ld bc, $7369
    jr nz, jr_01b_5470

    ld l, l
    ld [hl], b
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    ld l, c
    db $76
    ld h, l
    ld l, $03
    nop
    ld b, h
    ld l, a
    jr nz, jr_01b_5490

jr_01b_5417:
    ld l, a
    ld [hl], l
    jr nz, @+$6d

    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_01b_5488

    ld l, a
    ld [hl], a
    jr nz, jr_01b_5498

    ld l, a
    ld bc, $7570
    ld [hl], h
    jr nz, jr_01b_549e

    ld [hl], b
    ld l, c
    ld l, [hl]
    jr nz, jr_01b_549f

    ld l, [hl]
    jr nz, @+$63

    jr nz, jr_01b_5497

    ld h, c
    ld l, h
    ld l, h
    ccf

jr_01b_5439:
    nop

jr_01b_543a:
    ld d, h
    ld [hl], d
    ld a, c

jr_01b_543d:
    jr nz, @+$6b

    ld [hl], h
    jr nz, jr_01b_54b1

    ld l, [hl]
    jr nz, jr_01b_54a6

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e

jr_01b_544b:
    ld l, b
    ld bc, $6977
    ld [hl], h
    ld l, b
    jr nz, jr_01b_54c6

    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b

jr_01b_5458:
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6562

jr_01b_545e:
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    ld [hl], e
    jr nz, jr_01b_54c6

    jr nz, @+$72

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d

jr_01b_546c:
    ld l, $03
    nop
    ld d, l

jr_01b_5470:
    ld [hl], e
    ld h, l
    jr nz, jr_01b_54e8

    ld l, b
    ld h, l
    jr nz, jr_01b_54a3

    jr nz, jr_01b_54bd

    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    jr nz, jr_01b_54d2

    ld h, c
    ld h, h
    ld bc, $6661
    ld [hl], h

jr_01b_5488:
    ld h, l
    ld [hl], d
    jr nz, jr_01b_5500

    ld l, b
    ld h, l
    jr nz, jr_01b_54e3

jr_01b_5490:
    ld l, b
    ld l, a
    ld [hl], h
    jr nz, @+$49

    ld h, c
    ld [hl], l

jr_01b_5497:
    ld h, a

jr_01b_5498:
    ld h, l
    ld bc, $6562
    ld h, a
    ld l, c

jr_01b_549e:
    ld l, [hl]

jr_01b_549f:
    ld [hl], e
    jr nz, jr_01b_550f

    ld l, a

jr_01b_54a3:
    db $76
    ld l, c
    ld l, [hl]

jr_01b_54a6:
    ld h, a
    ld l, $02
    ld d, b
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, @+$77

    ld [hl], b

jr_01b_54b1:
    jr nz, jr_01b_5527

    ld l, a
    jr nz, jr_01b_5523

    ld h, c
    ld l, e
    ld h, l
    ld bc, $6874
    ld h, l

jr_01b_54bd:
    jr nz, jr_01b_5521

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01b_5536

    ld l, a
    ld l, h

jr_01b_54c6:
    ld l, h
    ld l, $02
    ld d, b
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, @+$66

    ld l, a
    ld [hl], a

jr_01b_54d2:
    ld l, [hl]
    jr nz, jr_01b_5549

    ld l, a
    jr nz, jr_01b_5545

    ld h, c
    ld l, e
    ld h, l
    ld bc, $7469
    jr nz, jr_01b_5553

    ld [hl], h
    ld l, a
    ld [hl], b

jr_01b_54e3:
    jr nz, @+$73

    ld [hl], l
    ld l, c
    ld h, e

jr_01b_54e8:
    ld l, e
    ld l, h
    ld a, c
    ld l, $03
    nop
    ld d, b
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_556a

    ld [hl], b
    ld l, c
    ld l, [hl]
    jr nz, @+$71

    ld l, [hl]
    ld bc, $6874

jr_01b_5500:
    ld h, l
    jr nz, jr_01b_5565

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01b_5575

    ld h, c
    ld l, e
    ld h, l
    ld [hl], e
    ld bc, $6874

jr_01b_550f:
    ld h, l
    jr nz, jr_01b_5573

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    jr nz, jr_01b_5581

    ld [hl], l
    ld l, [hl]
    ld l, $02
    ld d, l
    ld [hl], e

jr_01b_5521:
    ld l, c
    ld l, [hl]

jr_01b_5523:
    ld h, a
    jr nz, jr_01b_5588

    ld h, c

jr_01b_5527:
    ld h, e
    ld l, e
    ld [hl], e
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld bc, $656d
    ld h, c
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01b_559e

    ld [hl], h

jr_01b_5536:
    ld [hl], e
    jr nz, jr_01b_559a

    ld l, h
    ld l, h
    jr nz, jr_01b_55b2

    ld [hl], b
    ld bc, $6f74
    jr nz, jr_01b_55bc

    ld l, a
    ld [hl], l

jr_01b_5545:
    ld hl, $0003
    ld b, c

jr_01b_5549:
    db $76
    ld l, a
    ld l, c
    ld h, h
    jr nz, jr_01b_55b7

    ld h, c
    ld a, d
    ld h, c
    ld [hl], d

jr_01b_5553:
    ld h, h
    ld [hl], e
    jr nz, jr_01b_55b8

    ld [hl], e
    ld bc, $6562
    ld [hl], e
    ld [hl], h
    jr nz, jr_01b_55d8

    ld l, a
    ld [hl], l
    jr nz, @+$65

    ld h, c
    ld l, [hl]

jr_01b_5565:
    ld l, $01
    ld b, d
    ld [hl], l
    ld [hl], h

jr_01b_556a:
    jr nz, jr_01b_55d5

    ld h, [hl]
    jr nz, jr_01b_55e8

    ld l, a
    ld [hl], l
    jr nz, jr_01b_55d4

jr_01b_5573:
    ld l, h
    ld [hl], a

jr_01b_5575:
    ld h, c
    ld a, c
    ld [hl], e
    ld [bc], a
    ld h, c
    db $76
    ld l, a
    ld l, c
    ld h, h
    jr nz, jr_01b_55f4

    ld l, b

jr_01b_5581:
    ld h, l
    ld l, l
    inc l
    jr nz, @+$7b

    ld l, a
    ld [hl], l

jr_01b_5588:
    daa
    ld l, h
    ld l, h
    ld bc, $656e
    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_01b_55fa

    ld h, l
    ld [hl], h
    jr nz, @+$63

    jr nz, jr_01b_55fb

    ld l, c

jr_01b_559a:
    ld [hl], d
    ld h, h
    ld l, c
    ld h, l

jr_01b_559e:
    inc l
    ld bc, $6f73
    jr nz, jr_01b_5614

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, @+$77

    ld [hl], b
    ld hl, $0003
    ld c, c

jr_01b_55b2:
    ld [hl], e
    jr nz, jr_01b_5628

    ld [hl], b
    ld l, c

jr_01b_55b7:
    ld l, [hl]

jr_01b_55b8:
    jr nz, @+$6a

    ld h, l
    ld l, h

jr_01b_55bc:
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01b_5628

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ccf
    nop
    ld e, c
    ld h, l
    ld h, c
    ld l, b

jr_01b_55d4:
    inc l

jr_01b_55d5:
    jr nz, @+$6b

    ld [hl], h

jr_01b_55d8:
    jr nz, jr_01b_564c

    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_01b_5649

    ld h, l
    ld l, h
    ld [hl], b
    ld [hl], e
    ld l, $03
    nop

jr_01b_55e8:
    ld d, e
    ld [hl], b
    ld l, c
    ld l, [hl]
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e
    jr nz, jr_01b_5655

jr_01b_55f4:
    ld [hl], d
    ld h, l
    ld bc, $6568
    ld l, h

jr_01b_55fa:
    ld [hl], b

jr_01b_55fb:
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld l, $20
    ld b, e
    ld h, c
    ld l, [hl]
    jr nz, jr_01b_567e

    ld l, a
    ld [hl], l
    ld bc, $6f64
    jr nz, jr_01b_567b

    ld l, [hl]
    ld h, l
    ccf
    nop
    ld d, h
    ld l, b
    ld h, l
    ld a, c

jr_01b_5614:
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01b_568d

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_01b_5680

    ld [hl], h
    ld bc, $6966
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld l, $2e

jr_01b_5628:
    ld l, $20
    ld c, c
    ld [hl], h
    jr nz, jr_01b_56a2

    ld h, c
    ld l, e
    ld h, l
    ld [hl], e
    ld bc, $6567
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_56b1

    ld [hl], e
    ld h, l
    ld h, h
    jr nz, @+$76

    ld l, a
    ld l, $03
    nop
    ld b, c
    ld h, [hl]
    ld [hl], h
    ld h, l

jr_01b_5649:
    ld [hl], d
    jr nz, jr_01b_56c0

jr_01b_564c:
    ld l, b
    ld h, l
    jr nz, jr_01b_56a3

    ld l, b
    ld l, a
    ld [hl], h
    jr nz, @+$49

jr_01b_5655:
    ld h, c
    ld [hl], l
    ld h, a
    ld h, l
    ld bc, $7473
    ld h, c
    ld [hl], d
    ld [hl], h
    ld [hl], e
    jr nz, jr_01b_56cf

    ld l, a
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    jr nz, jr_01b_56da

    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    ld bc, $6874
    ld h, l
    jr nz, jr_01b_569f

    jr nz, jr_01b_56b9

    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a

jr_01b_567b:
    ld l, h
    jr nz, jr_01b_56ce

jr_01b_567e:
    ld h, c
    ld h, h

jr_01b_5680:
    ld [bc], a
    ld h, d
    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01b_56fd

    ld l, b
    ld h, l
    jr nz, jr_01b_56f4

jr_01b_568d:
    ld h, c
    ld [hl], l
    ld h, a
    ld h, l
    ld bc, $7473
    ld l, a
    ld [hl], b
    ld [hl], e
    ld l, $20
    ld d, l
    ld [hl], b
    jr nz, @+$79

    ld l, c
    ld l, h

jr_01b_569f:
    ld l, h
    jr nz, jr_01b_570f

jr_01b_56a2:
    ld h, c

jr_01b_56a3:
    ld l, e
    ld h, l
    ld bc, $6874
    ld h, l
    jr nz, jr_01b_570d

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01b_5722

    ld l, a

jr_01b_56b1:
    ld l, h
    ld l, h
    inc l
    jr nz, jr_01b_5717

    ld l, [hl]
    ld h, h
    ld [bc], a

jr_01b_56b9:
    ld h, h
    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, @+$79

    ld l, c

jr_01b_56c0:
    ld l, h
    ld l, h
    jr nz, jr_01b_5731

    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_01b_5732

    ld [hl], h
    ld bc, $7473
    ld l, a

jr_01b_56ce:
    ld [hl], b

jr_01b_56cf:
    jr nz, jr_01b_573e

    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01b_5747

    ld [hl], l
    ld l, c
    ld h, e
    ld l, e

jr_01b_56da:
    ld l, h
    ld a, c
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01b_574a

    ld h, l
    ld h, c
    ld [hl], d
    jr nz, jr_01b_575b

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, @+$63

    ld bc, $796d
    ld [hl], e
    ld [hl], h

jr_01b_56f4:
    ld h, l
    ld [hl], d
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    jr nz, @+$65

    ld l, h

jr_01b_56fd:
    ld [hl], l
    ld h, d
    ld bc, $616d
    ld l, e
    ld h, l
    ld [hl], d
    jr nz, @+$71

    ld [hl], l
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l

jr_01b_570d:
    ld [hl], d
    ld h, l

jr_01b_570f:
    ld l, $02
    ld c, c
    ld h, [hl]
    jr nz, @+$7b

    ld l, a
    ld [hl], l

jr_01b_5717:
    jr nz, jr_01b_578c

    ld h, l
    ld h, l
    jr nz, jr_01b_577e

    ld l, [hl]
    ld a, c
    jr nz, jr_01b_5790

    ld h, h

jr_01b_5722:
    ld h, h
    ld bc, $6574
    ld [hl], d
    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    inc l
    jr nz, jr_01b_5791

    ld l, b
    ld h, l
    ld h, e

jr_01b_5731:
    ld l, e

jr_01b_5732:
    jr nz, @+$6b

    ld [hl], h
    jr nz, jr_01b_57a6

    ld [hl], l
    ld [hl], h
    ld l, $03
    nop
    ld c, c
    ld [hl], h

jr_01b_573e:
    daa
    ld [hl], e
    jr nz, jr_01b_57a4

    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01b_57bb

jr_01b_5747:
    ld l, a
    jr nz, @+$75

jr_01b_574a:
    ld l, b
    ld l, a
    ld l, a
    ld [hl], h
    ld bc, $6874
    ld l, c
    ld l, [hl]
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_57d2

    ld l, a
    ld [hl], l

jr_01b_575b:
    daa
    ld l, h
    ld l, h
    jr nz, jr_01b_57cd

    ld l, c
    ld [hl], e
    ld [hl], e
    ld bc, $6874
    ld h, l
    jr nz, jr_01b_57d0

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $02
    ld c, c
    ld h, [hl]
    jr nz, jr_01b_57ec

    ld l, a
    ld [hl], l
    jr nz, jr_01b_57e4

    ld l, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_01b_57dd

    ld l, [hl]
    ld h, h

jr_01b_577e:
    jr nz, jr_01b_57e7

    ld h, l
    ld [hl], h
    ld bc, $2061
    ld h, d
    ld h, c
    ld h, h
    jr nz, jr_01b_57f6

    ld l, c
    ld h, l

jr_01b_578c:
    inc l
    jr nz, jr_01b_5808

    ld l, a

jr_01b_5790:
    ld [hl], l

jr_01b_5791:
    ld bc, $6163
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01b_580c

    ld h, c
    db $76
    ld h, l
    jr nz, jr_01b_580e

    ld h, c
    ld [hl], d
    ld l, $03
    nop
    ld e, c

jr_01b_57a4:
    ld l, a
    ld [hl], l

jr_01b_57a6:
    jr nz, @+$6f

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01b_581b

    ld l, a
    ld [hl], h
    jr nz, jr_01b_5824

    ld l, b
    ld l, a
    ld l, a
    ld [hl], h
    ld bc, $6e6f
    jr nz, jr_01b_582e

    ld l, a

jr_01b_57bb:
    ld [hl], b
    jr nz, jr_01b_582d

    ld [hl], d
    jr nz, jr_01b_5835

    ld l, a
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $6973
    ld h, h
    ld h, l
    jr nz, jr_01b_583c

jr_01b_57cd:
    ld h, [hl]
    jr nz, jr_01b_5831

jr_01b_57d0:
    jr nz, jr_01b_583a

jr_01b_57d2:
    ld l, c
    ld l, h
    ld l, h
    ld hl, $4102
    jr nz, @+$76

    ld l, c
    ld l, [hl]
    ld a, c

jr_01b_57dd:
    jr nz, jr_01b_584f

    ld [hl], d
    ld l, a
    ld h, d
    ld l, h
    ld h, l

jr_01b_57e4:
    ld l, l
    jr nz, jr_01b_5856

jr_01b_57e7:
    ld l, [hl]
    ld bc, $2061
    ld [hl], h

jr_01b_57ec:
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_01b_5853

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a

jr_01b_57f6:
    ld h, c
    ld h, e
    ld l, b
    ld bc, $6163
    ld l, [hl]
    jr nz, jr_01b_5864

    ld l, [hl]
    ld h, h
    jr nz, @+$6b

    ld [hl], h
    ld l, $02
    ld b, c
    ld [hl], d

jr_01b_5808:
    ld h, l
    jr nz, jr_01b_587e

    ld [hl], b

jr_01b_580c:
    ld l, c
    ld l, [hl]

jr_01b_580e:
    jr nz, jr_01b_5883

    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e
    ld bc, $6361
    ld [hl], h
    ld [hl], l
    ld h, c
    ld l, h

jr_01b_581b:
    ld l, h
    ld a, c
    jr nz, jr_01b_5887

    ld h, l
    ld l, h
    ld [hl], b
    ld l, c
    ld l, [hl]

jr_01b_5824:
    ld h, a
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01b_588d

    ld [hl], b

jr_01b_582d:
    ld [hl], b

jr_01b_582e:
    ld [hl], d
    ld l, a
    ld h, c

jr_01b_5831:
    ld h, e
    ld l, b
    ccf
    nop

jr_01b_5835:
    ld c, c
    ld [hl], h
    jr nz, jr_01b_58ac

    ld [hl], l

jr_01b_583a:
    ld [hl], d
    ld h, l

jr_01b_583c:
    jr nz, jr_01b_58a2

    ld l, a
    ld h, l
    ld [hl], e
    jr nz, jr_01b_58ab

    ld h, l
    ld l, h
    ld [hl], b
    ld l, $03
    nop
    ld d, e
    ld [hl], b
    ld l, c
    ld l, [hl]
    jr nz, jr_01b_58c2

jr_01b_584f:
    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e

jr_01b_5853:
    jr nz, jr_01b_58b6

    ld [hl], d

jr_01b_5856:
    ld h, l
    ld bc, $6568
    ld l, h
    ld [hl], b
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld l, $20
    ld b, e
    ld h, c
    ld l, [hl]

jr_01b_5864:
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld bc, $6f64
    jr nz, jr_01b_58dc

    ld l, [hl]
    ld h, l
    ccf
    nop
    ld d, b
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_01b_58ec

    ld l, b
    ld h, l
    jr nz, jr_01b_58a7

    jr nz, @+$45

jr_01b_587e:
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a

jr_01b_5883:
    ld l, h
    jr nz, jr_01b_5887

    ld d, b

jr_01b_5887:
    ld h, c
    ld h, h
    jr nz, jr_01b_5902

    ld l, b
    ld l, c

jr_01b_588d:
    ld l, h
    ld h, l
    jr nz, jr_01b_5905

    ld l, b
    ld h, l
    jr nz, jr_01b_5908

    ld l, b
    ld l, a
    ld [hl], h
    jr nz, jr_01b_589b

    ld h, a

jr_01b_589b:
    ld h, c
    ld [hl], l
    ld h, a
    ld h, l
    jr nz, jr_01b_590a

    ld [hl], e

jr_01b_58a2:
    jr nz, jr_01b_5911

    ld l, a
    db $76
    ld l, c

jr_01b_58a7:
    ld l, [hl]
    ld h, a
    ld l, $02

jr_01b_58ab:
    ld d, b

jr_01b_58ac:
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_01b_5927

    ld [hl], b
    jr nz, jr_01b_5929

    ld l, a

jr_01b_58b6:
    jr nz, @+$6f

    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_01b_58be

    ld [hl], h

jr_01b_58be:
    ld l, b
    ld h, l
    jr nz, jr_01b_5924

jr_01b_58c2:
    ld h, c
    ld l, h
    ld l, h
    jr nz, @+$74

    ld l, a
    ld l, h
    ld l, h
    ld l, $02
    ld d, b
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_01b_5937

    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, jr_01b_594c

    ld l, a
    jr nz, jr_01b_594b

    ld [hl], l

jr_01b_58dc:
    ld [hl], h
    ld bc, $6162
    ld h, e
    ld l, e
    ld [hl], e
    ld [hl], b
    ld l, c
    ld l, [hl]
    jr nz, jr_01b_5957

    ld l, [hl]
    jr nz, @+$76

    ld l, b

jr_01b_58ec:
    ld h, l
    ld bc, $6162
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01b_5972

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b

jr_01b_5902:
    jr nz, jr_01b_5965

    ld [hl], h

jr_01b_5905:
    ld bc, $6966

jr_01b_5908:
    ld [hl], d
    ld [hl], e

jr_01b_590a:
    ld [hl], h
    ld l, $2e
    ld l, $20
    ld c, c
    ld [hl], h

jr_01b_5911:
    jr nz, jr_01b_5987

    ld h, c
    ld l, e
    ld h, l
    ld [hl], e
    ld bc, $6567
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_5996

    ld [hl], e
    ld h, l
    ld h, h

jr_01b_5924:
    jr nz, @+$76

    ld l, a

jr_01b_5927:
    ld l, $03

jr_01b_5929:
    nop
    ld c, c
    jr nz, jr_01b_5995

    ld h, l
    ld h, c
    ld [hl], d
    jr nz, @+$76

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa

jr_01b_5937:
    ld [hl], e
    jr nz, jr_01b_599b

    ld bc, $7473
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    jr nz, jr_01b_59a7

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_01b_59ae

    ld l, l
    ld [hl], b

jr_01b_594b:
    ld l, h

jr_01b_594c:
    ld l, a
    ld a, c
    ld h, l
    ld h, l
    ld bc, $756f
    ld [hl], h
    jr nz, jr_01b_59ca

    ld l, b

jr_01b_5957:
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $02
    ld c, c
    ld h, [hl]
    jr nz, jr_01b_59d9

    ld l, a
    ld [hl], l
    jr nz, jr_01b_59d7

    ld h, l

jr_01b_5965:
    ld h, l
    jr nz, @+$63

    ld l, [hl]
    ld a, c
    jr nz, jr_01b_59db

    ld h, h
    ld h, h
    ld bc, $6574
    ld [hl], d

jr_01b_5972:
    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    inc l
    jr nz, jr_01b_59dc

    ld l, b
    ld h, l
    ld h, e
    ld l, e
    jr nz, jr_01b_59e8

    ld [hl], h
    jr nz, jr_01b_59f1

    ld [hl], l
    ld [hl], h
    ld l, $03
    nop

jr_01b_5987:
    ld c, c
    ld [hl], h
    daa
    ld h, h
    jr nz, jr_01b_59ef

    ld h, l
    jr nz, jr_01b_59f1

    ld l, l
    ld h, c
    ld a, d
    ld l, c
    ld l, [hl]

jr_01b_5995:
    ld h, a

jr_01b_5996:
    ld bc, $6669
    jr nz, jr_01b_5a14

jr_01b_599b:
    ld l, a
    ld [hl], l
    jr nz, jr_01b_5a01

    ld h, l
    ld h, e
    ld h, c
    ld l, l
    ld h, l
    ld bc, $7247

jr_01b_59a7:
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01b_59ef

    ld l, b
    ld h, c

jr_01b_59ae:
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld hl, $5402
    ld l, a
    jr nz, jr_01b_5a1b

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_01b_5a05

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    jr nz, jr_01b_59d8

jr_01b_59ca:
    rlca
    jr nz, jr_01b_5a36

    ld [hl], e
    jr nz, jr_01b_5a35

    db $76
    ld h, l
    ld [hl], d
    ld a, c
    ld bc, $6f67

jr_01b_59d7:
    ld l, h

jr_01b_59d8:
    ld h, [hl]

jr_01b_59d9:
    ld h, l
    ld [hl], d

jr_01b_59db:
    daa

jr_01b_59dc:
    ld [hl], e
    jr nz, jr_01b_5a46

    ld l, a
    ld h, c
    ld l, h
    ld l, $03
    nop
    ld b, l
    db $76
    ld h, l

jr_01b_59e8:
    ld [hl], d
    ld a, c
    ld l, a
    ld l, [hl]
    ld h, l
    daa
    ld [hl], e

jr_01b_59ef:
    jr nz, @+$76

jr_01b_59f1:
    ld [hl], d
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_5a6c

    ld l, a
    ld bc, $6562
    jr nz, jr_01b_5a6a

    ld l, c
    ld l, e
    ld h, l

jr_01b_5a01:
    jr nz, jr_01b_5a7c

    ld l, a
    ld [hl], l

jr_01b_5a05:
    ld l, $02
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01b_5a71

    ld h, l
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e

jr_01b_5a14:
    ld h, l
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01b_5a7e

jr_01b_5a1b:
    ld h, c
    ld l, [hl]
    jr nz, jr_01b_5a84

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01b_5a99

    ld l, b
    ld h, l
    ld bc, $6874
    ld h, l
    jr nz, @+$4e

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_01b_5a87

    ld l, a
    ld [hl], l

jr_01b_5a35:
    ld [hl], d

jr_01b_5a36:
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $03
    nop
    ld c, c
    ld h, [hl]
    jr nz, @+$09

    inc l
    jr nz, jr_01b_5aba

jr_01b_5a46:
    ld l, b
    ld h, l
    ld bc, $6f72
    ld l, a
    ld l, e
    ld l, c
    ld h, l
    inc l
    jr nz, jr_01b_5ab5

    ld h, c
    ld l, [hl]
    jr nz, jr_01b_5ac3

    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_01b_5ac4

    ld [hl], h
    inc l
    ld bc, $6f73
    jr nz, jr_01b_5ac5

    ld h, c
    ld l, [hl]
    jr nz, jr_01b_5add

    ld h, l
    ld hl, $0003

jr_01b_5a6a:
    ld d, e
    ld l, b

jr_01b_5a6c:
    ld l, a
    ld l, a
    ld [hl], h
    ld l, c
    ld l, [hl]

jr_01b_5a71:
    ld h, a
    jr nz, jr_01b_5ada

    ld l, a
    ld [hl], d
    jr nz, @+$63

    ld bc, $6f64
    ld [hl], a

jr_01b_5a7c:
    ld l, [hl]
    ld l, b

jr_01b_5a7e:
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01b_5af3

    ld l, c

jr_01b_5a84:
    ld l, [hl]
    jr nz, jr_01b_5aed

jr_01b_5a87:
    ld [hl], d
    ld l, a
    ld l, l
    ld bc, $756f
    ld [hl], h
    jr nz, jr_01b_5aff

    ld h, [hl]
    jr nz, jr_01b_5b07

    ld l, b
    ld h, l
    jr nz, jr_01b_5b09

    ld l, a
    ld [hl], l

jr_01b_5a99:
    ld h, a
    ld l, b
    ld [bc], a
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01b_5b03

    ld h, l
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01b_5b09

    jr nz, @+$6f

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld bc, $7369
    jr nz, jr_01b_5b14

    jr nz, jr_01b_5b1d

jr_01b_5ab5:
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_01b_5b1b

jr_01b_5aba:
    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld l, $02

jr_01b_5ac3:
    ld d, a

jr_01b_5ac4:
    ld h, c

jr_01b_5ac5:
    ld l, [hl]
    ld [hl], h
    jr nz, @+$76

    ld l, a
    jr nz, jr_01b_5b40

    ld [hl], d
    ld a, c
    jr nz, @+$6f

    ld h, l
    ccf
    nop
    ld b, c
    ld [hl], a
    ld hl, $4920
    jr nz, @+$79

jr_01b_5ada:
    ld h, c
    ld l, [hl]
    ld [hl], h

jr_01b_5add:
    ld h, l
    ld h, h
    jr nz, jr_01b_5b55

    ld l, a
    ld bc, $6c70
    ld h, c
    ld a, c
    jr nz, jr_01b_5b5c

    ld l, a
    ld l, l
    ld h, l
    ld l, a

jr_01b_5aed:
    ld l, [hl]
    ld h, l
    jr nz, jr_01b_5b68

    ld l, b
    ld l, a

jr_01b_5af3:
    ld bc, $6c70
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    jr nz, jr_01b_5b5d

    ld [hl], h
    jr nz, jr_01b_5b4b

jr_01b_5aff:
    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e

jr_01b_5b03:
    ld hl, $0003
    ld c, c

jr_01b_5b07:
    jr nz, jr_01b_5b6c

jr_01b_5b09:
    ld h, c
    ld l, [hl]
    jr nz, jr_01b_5b74

    ld h, l
    ld [hl], h
    jr nz, jr_01b_5b88

    ld l, c
    ld [hl], h
    ld l, b

jr_01b_5b14:
    ld l, c
    ld l, [hl]
    ld bc, $2033
    ld a, c
    ld h, c

jr_01b_5b1b:
    ld [hl], d
    ld h, h

jr_01b_5b1d:
    ld [hl], e
    jr nz, jr_01b_5b57

    jr nz, jr_01b_5b96

    ld l, c
    ld l, l
    ld h, l
    ld [hl], e
    ld bc, $756f
    ld [hl], h
    jr nz, jr_01b_5b9b

    ld h, [hl]
    jr nz, jr_01b_5b60

    jr nc, @+$30

    ld [bc], a
    ld c, c
    ld h, [hl]
    jr nz, jr_01b_5baf

    ld l, a
    ld [hl], l
    jr nz, jr_01b_5ba1

    ld h, l
    ld [hl], h
    jr nz, @+$79

    ld l, c
    ld [hl], h

jr_01b_5b40:
    ld l, b
    ld l, c
    ld l, [hl]
    ld bc, $2033
    ld a, c
    ld h, c
    ld [hl], d
    ld h, h
    ld [hl], e

jr_01b_5b4b:
    jr nz, @+$6f

    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, c
    ld l, [hl]

jr_01b_5b55:
    jr nz, @+$39

jr_01b_5b57:
    ld bc, $6974
    ld l, l
    ld h, l

jr_01b_5b5c:
    ld [hl], e

jr_01b_5b5d:
    inc l
    jr nz, jr_01b_5bd9

jr_01b_5b60:
    ld l, a
    ld [hl], l
    jr nz, @+$79

    ld l, c
    ld l, [hl]
    ld l, $03

jr_01b_5b68:
    nop
    ld c, a
    ld l, l
    ld l, c

jr_01b_5b6c:
    ld h, a
    ld l, a
    ld [hl], e
    ld l, b
    ld hl, $5920
    ld l, a

jr_01b_5b74:
    ld [hl], l
    jr nz, @+$66

    ld l, c
    ld h, h
    ld bc, $7469
    jr nz, jr_01b_5b87

    jr nz, jr_01b_5bf4

    ld l, c
    ld l, l
    ld h, l
    ld [hl], e
    ld bc, $756f

jr_01b_5b87:
    ld [hl], h

jr_01b_5b88:
    jr nz, jr_01b_5bf9

    ld h, [hl]
    jr nz, jr_01b_5b96

    ld hl, $0003
    ld d, h
    ld l, a
    ld l, a
    jr nz, jr_01b_5bf7

    ld h, c

jr_01b_5b96:
    ld h, h
    ld hl, $5920
    ld l, a

jr_01b_5b9b:
    ld [hl], l
    ld bc, $6e6f
    ld l, h
    ld a, c

jr_01b_5ba1:
    jr nz, jr_01b_5c07

    ld l, c
    ld h, h
    jr nz, jr_01b_5c10

    ld [hl], h
    jr nz, jr_01b_5bb3

    jr nz, jr_01b_5c20

    ld l, c
    ld l, l
    ld h, l

jr_01b_5baf:
    ld [hl], e
    ld bc, $756f

jr_01b_5bb3:
    ld [hl], h
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_01b_5bc2

    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$79

    ld l, c

jr_01b_5bc2:
    ld l, [hl]
    inc l
    ld bc, $2e07
    ld [bc], a
    ld c, l
    ld a, c
    jr nz, jr_01b_5c2d

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    jr nz, jr_01b_5c3e

    ld [hl], e
    jr nz, @+$70

    ld l, a

jr_01b_5bd9:
    ld bc, $616d
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_01b_5c47

    ld l, a
    ld [hl], d
    jr nz, jr_01b_5c5e

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld l, $03
    nop
    ld c, l
    ld a, c
    jr nz, @+$63

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a

jr_01b_5bf4:
    ld h, c
    ld h, e
    ld l, b

jr_01b_5bf7:
    jr nz, jr_01b_5c62

jr_01b_5bf9:
    ld [hl], e
    jr nz, jr_01b_5c6a

    ld l, a
    ld bc, $616d
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_01b_5c6b

    ld l, a
    ld [hl], d

jr_01b_5c07:
    jr nz, jr_01b_5c82

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld l, $03
    nop

jr_01b_5c10:
    ld c, c
    jr nz, jr_01b_5c8a

    ld l, a
    ld l, [hl]
    ld hl, $0720
    inc l
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01b_5c92

    ld l, b

jr_01b_5c20:
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$72

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l

jr_01b_5c2d:
    ld hl, $0003
    ld b, e
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_5c9a

    ld h, e
    ld [hl], d
    ld l, a
    ld [hl], e
    ld [hl], e

jr_01b_5c3e:
    jr nz, jr_01b_5ca1

    ld bc, $6968
    ld l, h
    ld l, h
    jr nz, jr_01b_5cb0

jr_01b_5c47:
    ld [hl], e
    jr nz, jr_01b_5cab

    jr nz, jr_01b_5cc0

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld bc, $7061
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld l, $02
    ld c, c
    jr nz, jr_01b_5cc0

jr_01b_5c5e:
    ld h, l
    ld [hl], h
    jr nz, jr_01b_5cab

jr_01b_5c62:
    jr nz, jr_01b_5cc7

    ld h, c
    ld l, [hl]
    jr nz, jr_01b_5cca

    ld h, l
    ld h, c

jr_01b_5c6a:
    ld [hl], h

jr_01b_5c6b:
    jr nz, jr_01b_5ce6

    ld l, a
    ld [hl], l
    ld bc, $7461
    jr nz, @+$76

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01b_5cda

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld l, $01

jr_01b_5c82:
    ld c, b
    ld l, a
    ld [hl], a
    jr nz, @+$63

    ld h, d
    ld l, a
    ld [hl], l

jr_01b_5c8a:
    ld [hl], h
    jr nz, @+$6b

    ld [hl], h
    ccf
    nop
    ld d, a
    ld h, l

jr_01b_5c92:
    ld l, h
    ld l, h
    inc l
    jr nz, @+$6b

    ld h, [hl]
    jr nz, jr_01b_5d08

jr_01b_5c9a:
    ld l, a
    ld [hl], h
    jr nz, jr_01b_5d12

    ld l, b
    ld l, c
    ld [hl], e

jr_01b_5ca1:
    ld bc, $6974
    ld l, l
    ld h, l
    inc l
    jr nz, jr_01b_5d15

    ld h, l
    ld [hl], h

jr_01b_5cab:
    daa
    ld [hl], e
    jr nz, @+$66

    ld l, a

jr_01b_5cb0:
    jr nz, @+$6b

    ld [hl], h
    ld bc, $6e61
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, @+$76

    ld l, c
    ld l, l
    ld h, l

jr_01b_5cc0:
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01b_5d29

    ld h, c

jr_01b_5cc7:
    ld l, [hl]
    jr nz, @+$69

jr_01b_5cca:
    ld h, l
    ld [hl], h
    jr nz, jr_01b_5d45

    ld l, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld bc, $2033
    ld a, c
    ld h, c
    ld [hl], d
    ld h, h

jr_01b_5cda:
    ld [hl], e
    jr nz, @+$39

    jr nz, jr_01b_5d53

    ld l, c
    ld l, l
    ld h, l
    ld [hl], e
    jr nz, jr_01b_5d54

    ld [hl], l

jr_01b_5ce6:
    ld [hl], h
    ld bc, $666f
    jr nz, jr_01b_5d1d

    jr nc, jr_01b_5d1c

    ld [bc], a
    ld c, c
    ld h, [hl]
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_01b_5d5a

    ld h, c
    ld l, [hl]
    jr nz, @+$66

    ld l, a
    jr nz, jr_01b_5d67

    ld [hl], h
    ld bc, $6f6d
    ld [hl], d
    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, c

jr_01b_5d08:
    ld l, [hl]
    jr nz, jr_01b_5d42

    jr nz, @+$76

    ld l, c
    ld l, l
    ld h, l
    ld [hl], e
    inc l

jr_01b_5d12:
    ld bc, $6f79

jr_01b_5d15:
    ld [hl], l
    jr nz, @+$79

    ld l, c
    ld l, [hl]
    ld l, $20

jr_01b_5d1c:
    ld d, d

jr_01b_5d1d:
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    ccf
    inc bc
    nop
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d

jr_01b_5d29:
    ld h, l
    jr nz, jr_01b_5d93

    ld l, a
    ld l, a
    ld h, h
    inc l
    ld bc, $2107
    jr nz, @+$51

    ld [hl], l
    ld [hl], h
    jr nz, @+$71

    ld h, [hl]
    ld bc, $2009
    ld [hl], h
    ld [hl], d
    ld l, c
    ld h, l
    ld [hl], e

jr_01b_5d42:
    inc l
    jr nz, jr_01b_5dbe

jr_01b_5d45:
    ld l, a
    ld [hl], l
    jr nz, jr_01b_5db6

    ld h, c
    ld h, h
    ld h, l
    jr nz, @+$0b

    ld hl, $0003
    ld c, a
    ld l, b

jr_01b_5d53:
    inc l

jr_01b_5d54:
    jr nz, @+$09

    ld hl, $4f01
    ld l, [hl]

jr_01b_5d5a:
    ld l, h
    ld a, c
    jr nz, jr_01b_5d67

    jr nz, @+$76

    ld l, c
    ld l, l
    ld h, l
    ld [hl], e
    ld bc, $756f

jr_01b_5d67:
    ld [hl], h
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_01b_5d76

    ccf
    inc bc
    nop
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e

jr_01b_5d76:
    jr nz, jr_01b_5d7f

    ld bc, $6f66
    ld [hl], d
    jr nz, @+$7b

    ld l, a

jr_01b_5d7f:
    ld [hl], l
    ld l, $20
    ld c, c
    jr nz, jr_01b_5df1

    ld l, a
    ld [hl], e
    ld h, l
    ld l, $02
    ld d, a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01b_5e09

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01b_5d93:
    jr nz, @+$63

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    inc l
    ld bc, $2749
    ld h, h
    jr nz, jr_01b_5e15

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    jr nz, jr_01b_5e1d

    ld l, b
    ld h, l
    jr nz, jr_01b_5e21

    ld l, a
    ld [hl], b
    ld hl, $0003
    ld d, a
    ld l, c
    ld [hl], h
    ld l, b

jr_01b_5db6:
    jr nz, jr_01b_5e31

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, @+$63

    ld [hl], b

jr_01b_5dbe:
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    inc l
    ld bc, $2749
    ld h, h
    jr nz, jr_01b_5e3d

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    jr nz, jr_01b_5e45

    ld l, b
    ld h, l
    jr nz, jr_01b_5e49

    ld l, a
    ld [hl], b
    ld hl, $0003
    ld c, c
    jr nz, jr_01b_5e54

    ld l, c
    ld l, [hl]
    inc l
    jr nz, @+$09

    ld l, $01
    ld b, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_01b_5e5d

    ld h, l
    ld h, l
    jr nz, jr_01b_5e5b

    ld h, l
    jr nz, @+$63

jr_01b_5df1:
    ld h, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld bc, $2061
    ld l, h
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_01b_5e70

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    ld l, $03

jr_01b_5e09:
    nop
    ld c, h
    ld h, l
    ld [hl], h
    jr nz, @+$6f

    ld h, l
    jr nz, jr_01b_5e75

    ld l, a
    ld l, [hl]
    ld h, a

jr_01b_5e15:
    ld [hl], d
    ld h, c
    ld [hl], h
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], h
    ld h, l

jr_01b_5e1d:
    ld bc, $6f79
    ld [hl], l

jr_01b_5e21:
    jr nz, @+$71

    ld l, [hl]
    jr nz, jr_01b_5e9a

    ld l, b
    ld h, l
    ld bc, $7247
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01b_5e73

    ld l, b

jr_01b_5e31:
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, b
    ld l, c
    ld [hl], b
    ld l, $02

jr_01b_5e3d:
    ld d, a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, @+$76

    ld l, b
    ld h, c

jr_01b_5e45:
    ld [hl], h
    inc l
    jr nz, @+$4b

jr_01b_5e49:
    jr nz, jr_01b_5eaf

    ld h, l
    ld h, e
    ld l, h
    ld h, c
    ld [hl], d
    ld h, l
    ld bc, $6874

jr_01b_5e54:
    ld h, c
    ld [hl], h
    jr nz, jr_01b_5ea1

    jr nz, jr_01b_5ed1

    ld l, c

jr_01b_5e5b:
    ld l, h
    ld l, h

jr_01b_5e5d:
    jr nz, jr_01b_5ed3

    ld h, c
    ld l, e
    ld h, l
    ld bc, $7469
    jr nz, jr_01b_5ecd

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01b_5ee5

    ld l, a
    ld [hl], l
    ld l, $03

jr_01b_5e70:
    nop
    ld b, l
    db $76

jr_01b_5e73:
    ld h, l
    ld [hl], d

jr_01b_5e75:
    ld a, c
    ld l, a
    ld l, [hl]
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_01b_5ee4

    ld l, a
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    ld l, c
    ld [hl], d
    ld bc, $7965
    ld h, l
    ld [hl], e
    jr nz, jr_01b_5efb

    ld l, [hl]
    jr nz, jr_01b_5f08

    ld l, a
    ld [hl], l
    ld l, $02
    ld b, d
    ld h, l
    ld h, c
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a

jr_01b_5e9a:
    jr nz, jr_01b_5f10

    ld l, b
    ld h, l
    jr nz, jr_01b_5ee7

    ld [hl], d

jr_01b_5ea1:
    ld h, c
    ld l, [hl]
    ld h, h
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, @+$6b

jr_01b_5eaf:
    ld [hl], e
    jr nz, @+$67

    db $76
    ld h, l
    ld [hl], d
    ld a, c
    ld bc, $6f67
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d
    daa
    ld [hl], e
    jr nz, jr_01b_5f25

    ld [hl], d
    ld h, l
    ld h, c
    ld l, l
    ld hl, $0003
    ld c, a
    ld l, [hl]
    ld h, l
    jr nz, @+$71

jr_01b_5ecd:
    ld h, [hl]
    jr nz, jr_01b_5f44

    ld l, b

jr_01b_5ed1:
    ld h, l
    ld [hl], e

jr_01b_5ed3:
    ld h, l
    jr nz, jr_01b_5f3a

    ld h, c
    ld a, c
    ld [hl], e
    inc l
    ld bc, $2c07
    jr nz, jr_01b_5f28

    daa
    ld l, l
    ld bc, $6f67

jr_01b_5ee4:
    ld l, c

jr_01b_5ee5:
    ld l, [hl]
    ld h, a

jr_01b_5ee7:
    jr nz, jr_01b_5f5d

    ld l, a
    jr nz, @+$64

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_01b_5f6a

    ld l, a
    ld [hl], l
    ld hl, $0003
    ld d, e
    ld l, b
    ld l, a
    ld l, a
    ld [hl], h

jr_01b_5efb:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_5f66

    ld l, a
    ld [hl], d
    jr nz, @+$63

    ld bc, $6f64
    ld [hl], a

jr_01b_5f08:
    ld l, [hl]
    ld l, b
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01b_5f7f

    ld l, c

jr_01b_5f10:
    ld l, [hl]
    jr nz, jr_01b_5f79

    ld [hl], d
    ld l, a
    ld l, l
    ld bc, $756f
    ld [hl], h
    jr nz, jr_01b_5f8b

    ld h, [hl]
    jr nz, jr_01b_5f93

    ld l, b
    ld h, l
    jr nz, @+$74

    ld l, a
    ld [hl], l

jr_01b_5f25:
    ld h, a
    ld l, b
    ld [bc], a

jr_01b_5f28:
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01b_5f8f

    ld h, l
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, @+$63

    jr nz, jr_01b_5fa3

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_01b_5f3a:
    ld bc, $7369
    jr nz, jr_01b_5fa0

    jr nz, jr_01b_5fa9

    ld h, c
    ld [hl], d
    ld h, h

jr_01b_5f44:
    jr nz, jr_01b_5fa7

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld l, $02
    ld d, a
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01b_5fc9

    ld l, a
    jr nz, jr_01b_5fcc

    ld [hl], d
    ld a, c
    jr nz, jr_01b_5fc9

    ld h, l

jr_01b_5f5d:
    ccf
    nop
    ld b, c
    ld [hl], a
    inc l
    jr nz, jr_01b_5fad

    jr nz, jr_01b_5fdd

jr_01b_5f66:
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld h, l

jr_01b_5f6a:
    ld h, h
    jr nz, jr_01b_5fe1

    ld l, a
    jr nz, @+$75

    ld h, l
    ld h, l
    ld bc, $6877
    ld h, c
    ld [hl], h
    jr nz, jr_01b_5fed

jr_01b_5f79:
    ld l, b
    ld h, l
    jr nz, jr_01b_5fc4

    ld [hl], d
    ld h, c

jr_01b_5f7f:
    ld l, [hl]
    ld h, h
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld bc, $6f63
    ld [hl], l

jr_01b_5f8b:
    ld l, h
    ld h, h
    jr nz, jr_01b_5ff3

jr_01b_5f8f:
    ld l, a
    ld hl, $0003

jr_01b_5f93:
    ld c, c
    jr nz, jr_01b_5ff9

    ld h, c
    ld l, [hl]
    jr nz, jr_01b_6001

    ld h, l
    ld [hl], h
    jr nz, jr_01b_6015

    ld l, c
    ld [hl], h

jr_01b_5fa0:
    ld l, b
    ld l, c
    ld l, [hl]

jr_01b_5fa3:
    ld bc, $2033
    ld a, c

jr_01b_5fa7:
    ld h, c
    ld [hl], d

jr_01b_5fa9:
    ld h, h
    ld [hl], e
    jr nz, jr_01b_5fe4

jr_01b_5fad:
    jr nz, jr_01b_6023

    ld l, c
    ld l, l
    ld h, l
    ld [hl], e
    ld bc, $756f
    ld [hl], h
    jr nz, jr_01b_6028

    ld h, [hl]
    jr nz, jr_01b_5fed

    jr nc, @+$30

    ld [bc], a
    ld c, c
    ld h, [hl]
    jr nz, jr_01b_603c

    ld l, a

jr_01b_5fc4:
    ld [hl], l
    jr nz, jr_01b_602e

    ld h, l
    ld [hl], h

jr_01b_5fc9:
    jr nz, @+$79

    ld l, c

jr_01b_5fcc:
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld bc, $2033
    ld a, c
    ld h, c
    ld [hl], d
    ld h, h
    ld [hl], e
    jr nz, @+$6f

    ld l, a
    ld [hl], d
    ld h, l

jr_01b_5fdd:
    jr nz, @+$76

    ld l, b
    ld h, c

jr_01b_5fe1:
    ld l, [hl]
    jr nz, @+$39

jr_01b_5fe4:
    ld bc, $6974
    ld l, l
    ld h, l
    ld [hl], e
    inc l
    jr nz, jr_01b_6066

jr_01b_5fed:
    ld l, a
    ld [hl], l
    jr nz, @+$79

    ld l, c
    ld l, [hl]

jr_01b_5ff3:
    ld l, $03
    nop
    ld c, a
    ld l, l
    ld l, c

jr_01b_5ff9:
    ld h, a
    ld l, a
    ld [hl], e
    ld l, b
    ld hl, $5920
    ld l, a

jr_01b_6001:
    ld [hl], l
    jr nz, @+$66

    ld l, c
    ld h, h
    ld bc, $7469
    jr nz, jr_01b_6014

    jr nz, jr_01b_6081

    ld l, c
    ld l, l
    ld h, l
    ld [hl], e
    ld bc, $756f

jr_01b_6014:
    ld [hl], h

jr_01b_6015:
    jr nz, jr_01b_6086

    ld h, [hl]
    jr nz, jr_01b_6023

    ld hl, $0003
    ld d, h
    ld l, a
    ld l, a
    jr nz, @+$64

    ld h, c

jr_01b_6023:
    ld h, h
    ld hl, $5920
    ld l, a

jr_01b_6028:
    ld [hl], l
    ld bc, $6e6f
    ld l, h
    ld a, c

jr_01b_602e:
    jr nz, jr_01b_6094

    ld l, c
    ld h, h
    jr nz, jr_01b_609d

    ld [hl], h
    jr nz, jr_01b_6040

    jr nz, jr_01b_60ad

    ld l, c
    ld l, l
    ld h, l

jr_01b_603c:
    ld [hl], e
    ld bc, $756f

jr_01b_6040:
    ld [hl], h
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_01b_604f

    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01b_60c5

    ld l, c

jr_01b_604f:
    ld l, [hl]
    inc l
    ld bc, $2e07
    ld [bc], a
    ld c, l
    ld a, c
    jr nz, @+$63

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    jr nz, jr_01b_60c5

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h

jr_01b_6066:
    ld bc, $7665
    ld h, l
    ld l, [hl]
    jr nz, @+$65

    ld l, a
    ld l, l
    ld [hl], b
    ld h, c
    ld [hl], d
    ld h, l
    ld bc, $6f74
    jr nz, jr_01b_60f1

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld l, $03
    nop
    ld e, c
    ld l, a

jr_01b_6081:
    ld [hl], l
    ld [hl], d
    jr nz, @+$63

    ld [hl], b

jr_01b_6086:
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld bc, $6f64
    ld h, l
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h

jr_01b_6094:
    jr nz, @+$67

    db $76
    ld h, l
    ld l, [hl]
    ld bc, $6f63
    ld l, l

jr_01b_609d:
    ld [hl], b
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, @+$76

    ld l, a
    jr nz, jr_01b_6113

    ld l, c
    ld l, [hl]
    ld h, l
    ld l, $03
    nop
    ld c, c

jr_01b_60ad:
    jr nz, jr_01b_6126

    ld l, a
    ld l, [hl]
    ld hl, $0720
    inc l
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01b_612e

    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_01b_6132

    ld [hl], d
    ld h, c
    ld h, e

jr_01b_60c5:
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    ld hl, $0003
    ld d, e
    ld h, c
    ld a, c
    jr nz, @+$6a

    ld l, c
    jr nz, @+$76

    ld l, a
    jr nz, jr_01b_6127

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    ld bc, $6f66
    ld [hl], d
    jr nz, @+$6f

    ld h, l
    jr nz, jr_01b_614d

    ld h, [hl]
    jr nz, jr_01b_6160

    ld l, a
    ld [hl], l
    jr nz, jr_01b_6152

    ld l, a
    ld bc, $6f74
    jr nz, jr_01b_6165

jr_01b_60f1:
    ld l, b
    ld h, l
    jr nz, jr_01b_6158

    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, h
    ld h, l
    ld l, $03
    nop
    ld d, a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01b_617b

    ld l, e
    ld l, c
    ld l, h
    ld l, h
    ld [hl], e
    inc l
    ld bc, $2049
    ld h, e
    ld l, a

jr_01b_6113:
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_01b_617a

    ld h, l
    ld bc, $7247
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01b_6164

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c

jr_01b_6126:
    ld l, a

jr_01b_6127:
    ld l, [hl]
    ld hl, $0003
    ld c, c
    jr nz, jr_01b_61a3

jr_01b_612e:
    ld [hl], e
    ld h, l
    jr nz, jr_01b_61a4

jr_01b_6132:
    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_61a3

    ld l, [hl]
    jr nz, jr_01b_61aa

    ld a, c
    ld bc, $7061
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld l, $20
    ld d, a
    ld h, c
    ld l, [hl]
    ld [hl], h

jr_01b_614d:
    jr nz, jr_01b_61bc

    ld h, l
    jr nz, jr_01b_61c6

jr_01b_6152:
    ld l, a
    ld bc, $6574
    ld h, c
    ld h, e

jr_01b_6158:
    ld l, b
    jr nz, jr_01b_61d4

    ld l, a
    ld [hl], l
    ccf
    nop
    ld d, h

jr_01b_6160:
    ld l, b
    ld h, l
    jr nz, @+$6e

jr_01b_6164:
    ld l, a

jr_01b_6165:
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_01b_61de

    ld l, b
    ld h, l
    jr nz, jr_01b_61d1

    ld l, h
    ld [hl], l
    ld h, d
    inc l
    ld bc, $6874
    ld h, l
    jr nz, jr_01b_61e5

    ld l, a
    ld [hl], d

jr_01b_617a:
    ld h, l

jr_01b_617b:
    jr nz, jr_01b_61f1

    ld l, b
    ld h, l
    jr nz, jr_01b_61e3

    ld h, c
    ld l, h
    ld l, h
    ld bc, $6f72
    ld l, h
    ld l, h
    ld [hl], e
    ld l, $02
    ld d, a
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01b_61f5

    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_61fc

    ld bc, $6c63
    ld [hl], l
    ld h, d
    inc l
    jr nz, jr_01b_6206

jr_01b_61a3:
    ld l, a

jr_01b_61a4:
    ld l, [hl]
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    ld [hl], d

jr_01b_61aa:
    jr nz, @+$74

    ld [hl], l
    ld l, [hl]
    ld bc, $7266
    ld l, a
    ld l, l
    jr nz, jr_01b_6229

    ld l, b
    ld h, l
    jr nz, jr_01b_6220

    ld [hl], d
    ld h, l
    ld h, l

jr_01b_61bc:
    ld l, [hl]
    jr nz, jr_01b_6224

    ld h, h
    ld h, a
    ld h, l
    ld l, $03
    nop
    ld d, d

jr_01b_61c6:
    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_6237

    ld [hl], e
    jr nz, jr_01b_6236

jr_01b_61d1:
    ld h, c
    ld [hl], e
    ld l, c

jr_01b_61d4:
    ld h, l
    ld [hl], d
    ld bc, $6877
    ld h, l
    ld l, [hl]
    jr nz, jr_01b_6251

    ld l, b

jr_01b_61de:
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_01b_6244

jr_01b_61e3:
    ld [hl], d
    ld h, l

jr_01b_61e5:
    jr nz, jr_01b_6255

    ld l, a
    ld bc, $626f
    ld [hl], e
    ld [hl], h
    ld h, c
    ld h, e
    ld l, h
    ld h, l

jr_01b_61f1:
    ld [hl], e
    jr nz, jr_01b_626b

    ld l, c

jr_01b_61f5:
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld [bc], a
    ld [hl], $30

jr_01b_61fc:
    ld e, c
    jr nz, jr_01b_626e

    ld h, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01b_626d

jr_01b_6206:
    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $01
    ld d, l
    ld [hl], e
    ld h, l
    jr nz, jr_01b_6272

    jr nz, jr_01b_6246

    ld c, c
    jr nz, @+$76

    ld l, a
    jr nz, @+$3b

    ld c, c
    jr nz, jr_01b_6290

    ld l, a
    ld bc, $7061

jr_01b_6220:
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c

jr_01b_6224:
    ld h, e
    ld l, b
    jr nz, @+$76

    ld l, b

jr_01b_6229:
    ld h, l
    jr nz, jr_01b_6293

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld hl, $0003
    ld d, a
    ld l, b
    ld h, l

jr_01b_6236:
    ld l, [hl]

jr_01b_6237:
    jr nz, jr_01b_629a

    ld l, c
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$68

    ld l, a
    ld [hl], d
    jr nz, jr_01b_62b8

jr_01b_6244:
    ld l, b
    ld h, l

jr_01b_6246:
    ld bc, $6970
    ld l, [hl]
    jr nz, jr_01b_62b2

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01b_62b2

jr_01b_6251:
    jr nz, @+$65

    ld l, h
    ld h, l

jr_01b_6255:
    ld h, c
    ld [hl], d
    ld bc, $7073
    ld l, a
    ld [hl], h
    inc l
    jr nz, jr_01b_62d4

    ld [hl], e
    ld h, l
    jr nz, jr_01b_62d5

    ld [hl], l
    ld l, [hl]
    ld hl, $0003
    ld b, [hl]
    ld l, c
    ld [hl], d

jr_01b_626b:
    ld [hl], e
    ld [hl], h

jr_01b_626d:
    inc l

jr_01b_626e:
    jr nz, jr_01b_62d3

    ld l, b
    ld l, a

jr_01b_6272:
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_01b_62d8

    ld l, [hl]
    ld bc, $7061
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    inc l
    jr nz, jr_01b_6289

    ld bc, $6874
    ld h, l
    ld l, [hl]

jr_01b_6289:
    jr nz, jr_01b_62ec

    jr nz, jr_01b_62f0

    ld l, h
    ld [hl], l
    ld h, d

jr_01b_6290:
    ld l, $03
    nop

jr_01b_6293:
    ld d, l
    ld [hl], e
    ld h, l
    jr nz, @+$63

    jr nz, jr_01b_62cf

jr_01b_629a:
    ld c, c
    jr nz, jr_01b_6311

    ld l, a
    jr nz, jr_01b_6303

    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    ld bc, $6874
    ld h, l
    jr nz, jr_01b_630c

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01b_6323

    ld l, a
    jr nz, jr_01b_6326

jr_01b_62b2:
    ld l, b
    ld h, l
    ld bc, $7267
    ld h, l

jr_01b_62b8:
    ld h, l
    ld l, [hl]
    jr nz, jr_01b_631d

    ld l, [hl]
    ld h, h
    jr nz, jr_01b_6332

    ld l, a
    ld l, h
    ld l, h
    jr nz, jr_01b_632e

    ld [hl], h
    jr nz, jr_01b_6331

    ld l, [hl]
    ld l, $03
    nop
    ld d, e
    ld h, l
    ld h, l

jr_01b_62cf:
    ccf
    jr nz, @+$4b

    ld [hl], h

jr_01b_62d3:
    daa

jr_01b_62d4:
    ld [hl], e

jr_01b_62d5:
    jr nz, jr_01b_634a

    ld l, c

jr_01b_62d8:
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    ld hl, $5701
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01b_6358

    ld l, a
    jr nz, jr_01b_635b

    ld [hl], d
    ld a, c
    ccf
    nop
    ld b, [hl]

jr_01b_62ec:
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h

jr_01b_62f0:
    inc l
    jr nz, @+$65

    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    ld bc, $6e61
    jr nz, jr_01b_635e

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e

jr_01b_6303:
    ld l, b
    ld l, $03
    nop
    ld c, [hl]
    ld h, l
    ld a, b
    ld [hl], h
    inc l

jr_01b_630c:
    jr nz, @+$65

    ld l, b
    ld l, a
    ld l, a

jr_01b_6311:
    ld [hl], e
    ld h, l
    ld bc, $2061
    ld h, e
    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop

jr_01b_631d:
    ld c, a
    ld c, e
    ld l, $20
    ld c, [hl]
    ld l, a

jr_01b_6323:
    ld [hl], a
    jr nz, jr_01b_6399

jr_01b_6326:
    ld l, b
    ld l, a
    ld l, a
    ld [hl], h
    ld hl, $0003
    ld b, c

jr_01b_632e:
    ld [hl], h
    jr nz, @+$68

jr_01b_6331:
    ld l, c

jr_01b_6332:
    ld [hl], d
    ld [hl], e
    ld [hl], h
    jr nz, jr_01b_63a0

    ld [hl], h
    daa
    ld [hl], e
    ld bc, $6f74
    ld [hl], l
    ld h, a
    ld l, b
    ld l, $20
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_01b_63b0

    ld [hl], h
    daa
    ld [hl], e

jr_01b_634a:
    jr nz, jr_01b_63c1

    ld [hl], e
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld l, h
    inc l
    ld bc, $6f73
    jr nz, jr_01b_63c7

    ld [hl], d

jr_01b_6358:
    ld h, c
    ld h, e
    ld [hl], h

jr_01b_635b:
    ld l, c
    ld h, e
    ld h, l

jr_01b_635e:
    jr nz, jr_01b_63c8

    ld h, c
    ld [hl], d
    ld h, h
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    daa
    db $76
    ld h, l
    jr nz, jr_01b_63d5

    ld l, a
    ld [hl], h
    jr nz, jr_01b_63e6

    ld l, b
    ld h, l
    ld bc, $6469
    ld h, l
    ld h, c
    ld l, $20
    ld d, h
    ld [hl], d
    ld a, c
    jr nz, jr_01b_63f0

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $7073
    ld l, c
    ld l, [hl]
    jr nz, jr_01b_63fc

    ld l, [hl]
    jr nz, jr_01b_63f9

    ld [hl], h
    inc l
    jr nz, @+$76

    ld l, a
    ld l, a
    ld l, $03
    nop

jr_01b_6399:
    ld d, h
    ld l, a
    jr nz, jr_01b_640d

    ld [hl], d
    ld h, c
    ld h, e

jr_01b_63a0:
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_01b_6415

    ld l, [hl]
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01b_641d

    ld [hl], a
    ld l, [hl]

jr_01b_63b0:
    inc l
    jr nz, jr_01b_641d

    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld bc, $6970
    ld h, e
    ld l, e
    jr nz, jr_01b_641e

    jr nz, @+$75

    ld [hl], b
    ld l, a

jr_01b_63c1:
    ld [hl], h
    ld l, $03
    nop
    ld d, a
    ld l, b

jr_01b_63c7:
    ld h, c

jr_01b_63c8:
    ld [hl], h
    jr nz, jr_01b_642f

    ld l, a
    jr nz, jr_01b_6447

    ld l, a
    ld [hl], l
    jr nz, jr_01b_643d

    ld l, [hl]
    ld l, a
    ld [hl], a

jr_01b_63d5:
    ld hl, $213f
    ld bc, $7355
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_6441

    jr nz, jr_01b_6452

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld h, l

jr_01b_63e6:
    ld [hl], d
    jr nz, jr_01b_645d

    ld l, a
    ld bc, $7061
    ld [hl], b
    ld [hl], d
    ld l, a

jr_01b_63f0:
    ld h, c
    ld h, e
    ld l, b
    ld hl, $0003
    ld c, c
    daa
    ld l, l

jr_01b_63f9:
    jr nz, jr_01b_6470

    ld [hl], e

jr_01b_63fc:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_6462

    jr nz, jr_01b_6466

    ld l, b
    ld l, c
    ld [hl], b
    ld bc, $7061
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c

jr_01b_640d:
    ld h, e
    ld l, b
    ld l, $20
    ld d, a
    ld h, c
    ld l, [hl]
    ld [hl], h

jr_01b_6415:
    jr nz, jr_01b_648b

    ld l, a
    ld bc, $656c
    ld h, c
    ld [hl], d

jr_01b_641d:
    ld l, [hl]

jr_01b_641e:
    jr nz, jr_01b_6489

    ld [hl], h
    ccf
    nop
    ld b, e
    ld l, b
    ld l, c
    ld [hl], b
    jr nz, jr_01b_649c

    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e
    jr nz, jr_01b_64a4

jr_01b_642f:
    ld [hl], e
    ld h, l
    ld bc, $6163
    ld [hl], d
    ld [hl], d
    ld a, c
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, jr_01b_64af

jr_01b_643d:
    ld [hl], l
    ld l, [hl]
    jr nz, jr_01b_64b5

jr_01b_6441:
    ld l, a
    ld bc, $7061
    ld [hl], b
    ld [hl], d

jr_01b_6447:
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld l, $02
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01b_64c6

jr_01b_6452:
    ld l, b
    ld h, l
    ld l, a
    ld [hl], d
    ld a, c
    jr nz, @+$6b

    ld [hl], e
    jr nz, jr_01b_64d0

    ld l, a

jr_01b_645d:
    ld bc, $7461
    ld [hl], h
    ld h, c

jr_01b_6462:
    ld h, e
    ld l, e
    jr nz, @+$77

jr_01b_6466:
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_64cf

    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c

jr_01b_6470:
    ld bc, $6e61
    ld h, h
    jr nz, jr_01b_64e8

    ld [hl], l
    ld l, [hl]
    ld l, $03
    nop
    ld c, c
    ld h, [hl]
    jr nz, jr_01b_64ee

    ld h, d
    ld [hl], e
    ld [hl], h
    ld h, c
    ld h, e
    ld l, h
    ld h, l
    ld [hl], e
    jr nz, @+$63

jr_01b_6489:
    ld [hl], d
    ld h, l

jr_01b_648b:
    ld bc, $6977
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    jr nz, @+$38

    jr nc, jr_01b_64ef

    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_01b_650f

    ld l, b

jr_01b_649c:
    ld h, l
    ld bc, $7267
    ld h, l
    ld h, l
    ld l, [hl]
    inc l

jr_01b_64a4:
    jr nz, jr_01b_651f

    ld l, a
    ld [hl], l
    jr nz, jr_01b_650d

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    ld [bc], a

jr_01b_64af:
    ld [hl], d
    ld l, a
    ld l, h
    ld l, h
    jr nz, jr_01b_6524

jr_01b_64b5:
    ld l, [hl]
    ld l, $20
    ld c, c
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld h, l
    ld h, c
    ld h, h
    inc l
    ld bc, $6163
    ld [hl], d
    ld [hl], d
    ld a, c

jr_01b_64c6:
    jr nz, @+$6b

    ld [hl], h
    jr nz, jr_01b_653f

    ld l, a
    jr nz, @+$76

    ld l, b

jr_01b_64cf:
    ld h, l

jr_01b_64d0:
    ld bc, $7267
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, jr_01b_6550

    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, @+$74

    ld l, a
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld c, c

jr_01b_64e8:
    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    ld [hl], e

jr_01b_64ee:
    ld h, l

jr_01b_64ef:
    jr nz, jr_01b_6554

    ld l, a
    ld l, [hl]
    ld h, h
    ld l, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    inc l
    ld bc, $7375
    ld h, l
    jr nz, @+$63

    jr nz, @+$65

    ld l, b
    ld l, c
    ld [hl], b
    jr nz, jr_01b_657b

    ld l, b
    ld l, a
    ld [hl], h
    ld l, $02

jr_01b_650d:
    ld e, c
    ld l, a

jr_01b_650f:
    ld [hl], l
    jr nz, jr_01b_6580

    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_01b_6578

    jr nz, @+$34

    jr nc, jr_01b_6574

    ld bc, $6163
    ld [hl], d

jr_01b_651f:
    ld [hl], d
    ld a, c
    jr nz, jr_01b_6597

    ld l, a

jr_01b_6524:
    jr nz, jr_01b_658d

    ld h, l
    ld [hl], h
    jr nz, jr_01b_655b

    jr nz, @+$72

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld bc, $7761
    ld h, c
    ld a, c
    jr nz, jr_01b_6597

    ld l, [hl]
    ld h, h
    jr nz, jr_01b_65ad

    ld h, c
    db $76
    ld h, l
    jr nz, jr_01b_65af

jr_01b_653f:
    ld h, c
    ld [hl], d
    ld l, $03
    nop
    ld b, [hl]
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, jr_01b_65af

    ld l, b
    ld l, a
    ld l, a
    ld [hl], e

jr_01b_6550:
    ld h, l
    ld bc, $6e61

jr_01b_6554:
    jr nz, jr_01b_65b7

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c

jr_01b_655b:
    ld h, e
    ld l, b
    inc l
    jr nz, jr_01b_6565

    ld bc, $6874
    ld h, l
    ld l, [hl]

jr_01b_6565:
    jr nz, jr_01b_65c8

    jr nz, jr_01b_65cc

    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop
    ld c, c
    daa
    ld l, l
    jr nz, jr_01b_65db

jr_01b_6574:
    ld l, a
    ld l, [hl]
    ld l, [hl]
    ld h, c

jr_01b_6578:
    jr nz, jr_01b_65ef

    ld [hl], e

jr_01b_657b:
    ld h, l
    ld bc, $2061
    ld [hl], b

jr_01b_6580:
    ld l, c
    ld [hl], h
    ld h, e
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_6600

    ld h, l
    ld h, h
    ld h, a
    ld h, l

jr_01b_658d:
    ld l, $03
    nop
    ld b, h
    ld l, c
    ld h, h
    jr nz, @+$7b

    ld l, a
    ld [hl], l

jr_01b_6597:
    jr nz, jr_01b_6600

    ld h, l
    ld [hl], h
    jr nz, jr_01b_6611

    ld l, b
    ld h, c
    ld [hl], h
    ccf
    ld bc, $6157
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01b_661c

    ld l, a
    jr nz, @+$76

    ld [hl], d
    ld a, c

jr_01b_65ad:
    ccf
    nop

jr_01b_65af:
    ld b, [hl]
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, jr_01b_661a

jr_01b_65b7:
    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    ld bc, $6e61
    jr nz, jr_01b_6622

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b

jr_01b_65c8:
    ld l, $03
    nop
    ld c, [hl]

jr_01b_65cc:
    ld h, l
    ld a, b
    ld [hl], h
    inc l
    jr nz, jr_01b_6635

    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    ld bc, $2061
    ld h, e

jr_01b_65db:
    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop
    ld c, a
    ld c, e
    inc l
    jr nz, jr_01b_6659

    ld l, b
    ld l, a
    ld l, a
    ld [hl], h
    ld hl, $0003
    ld c, c
    ld [hl], h

jr_01b_65ef:
    daa
    ld [hl], e
    jr nz, jr_01b_6667

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld l, $20
    ld b, c
    ld bc, $6573
    ld l, [hl]
    ld [hl], e
    ld h, l

jr_01b_6600:
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_01b_6669

    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld bc, $7369
    jr nz, @+$76

jr_01b_6611:
    ld l, b
    ld h, l
    jr nz, jr_01b_6680

    ld h, l
    ld a, c
    ld hl, $0003

jr_01b_661a:
    ld b, a
    ld l, a

jr_01b_661c:
    ld l, a
    ld h, h
    jr nz, jr_01b_668a

    ld l, a
    ld h, d

jr_01b_6622:
    ld hl, $4901
    jr nz, jr_01b_668f

    ld h, c
    db $76
    ld h, l
    jr nz, jr_01b_66a0

    ld l, a
    jr nz, @+$72

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e

jr_01b_6635:
    ld h, l
    jr nz, jr_01b_6639

    ld [hl], h

jr_01b_6639:
    ld l, a
    jr nz, @+$6d

    ld h, l
    ld h, l
    ld [hl], b
    jr nz, @+$77

    ld [hl], b
    ld hl, $0003
    ld c, c
    jr nz, @+$66

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01b_66c2

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_01b_66b5

    ld l, [hl]
    ld a, c
    ld bc, $6873

jr_01b_6659:
    ld l, a
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$67

    ld h, c
    ld [hl], e
    ld a, c
    jr nz, jr_01b_66c5

    ld [hl], h
    jr nz, jr_01b_66cd

jr_01b_6667:
    ld l, c
    ld [hl], d

jr_01b_6669:
    ld [hl], e
    ld [hl], h
    ld l, $01
    ld d, h
    ld [hl], d
    ld a, c
    jr nz, jr_01b_66da

    ld h, c
    ld [hl], d
    ld h, h
    ld hl, $5902
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01b_66eb

    ld l, c

jr_01b_6680:
    ld l, e
    ld h, l
    ld l, h
    ld a, c
    jr nz, jr_01b_66fa

    ld l, a
    jr nz, jr_01b_66fe

    ld [hl], e

jr_01b_668a:
    ld h, l
    ld bc, $6874
    ld h, l

jr_01b_668f:
    jr nz, @+$65

    ld l, b
    ld l, c
    ld [hl], b
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], h
    inc l
    jr nz, jr_01b_670f

    ld l, a
    ld bc, $7270

jr_01b_66a0:
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_01b_6711

    ld [hl], h
    jr nz, jr_01b_670c

    jr nz, jr_01b_6719

    ld l, a
    ld [hl], h
    ld l, $03
    nop
    ld c, c
    daa
    ld l, l

jr_01b_66b5:
    jr nz, jr_01b_6727

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_6723

jr_01b_66c2:
    ld bc, $7562

jr_01b_66c5:
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    jr nz, jr_01b_673e

    ld l, b
    ld l, a

jr_01b_66cd:
    ld [hl], h
    ld l, $01
    ld c, c
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, l
    ld h, h

jr_01b_66da:
    ccf
    nop
    ld d, a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01b_6743

    jr nz, jr_01b_6746

    ld [hl], l
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    jr nz, @+$75

jr_01b_66eb:
    ld l, b
    ld l, a
    ld [hl], h
    inc l
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01b_675a

    ld a, b
    ld [hl], b
    ld l, h
    ld l, a
    ld h, h

jr_01b_66fa:
    ld h, l
    jr nz, jr_01b_6770

    ld h, c

jr_01b_66fe:
    ld l, [hl]
    ld h, h
    jr nz, jr_01b_6776

    ld l, a
    ld bc, $7266
    ld h, l
    ld h, l
    jr nz, jr_01b_677e

    ld l, b
    ld h, l

jr_01b_670c:
    jr nz, jr_01b_6770

    ld h, c

jr_01b_670f:
    ld l, h
    ld l, h

jr_01b_6711:
    ld l, $02
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01b_678d

jr_01b_6719:
    ld h, l
    ld h, e
    ld l, b
    ld l, [hl]
    ld l, c
    ld [hl], c
    ld [hl], l
    ld h, l
    jr nz, @+$6b

jr_01b_6723:
    ld [hl], e
    ld bc, $6163

jr_01b_6727:
    ld l, h
    ld l, h
    ld h, l
    ld h, h
    jr nz, jr_01b_678e

    ld l, [hl]
    jr nz, jr_01b_6795

    ld a, b
    ld [hl], b
    ld l, h
    ld l, a
    ld [hl], e
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l

jr_01b_673e:
    jr nz, @+$70

    ld h, l
    ld h, l
    ld h, h

jr_01b_6743:
    jr nz, jr_01b_67b9

    ld l, b

jr_01b_6746:
    ld h, l
    jr nz, @+$74

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld bc, $6c63
    ld [hl], l
    ld h, d
    jr nz, jr_01b_67c8

    ld l, a
    jr nz, jr_01b_67bc

    ld a, b
    ld [hl], b
    ld l, h

jr_01b_675a:
    ld l, a
    ld h, h
    ld h, l
    ld bc, $6173
    ld l, [hl]
    ld h, h
    jr nz, jr_01b_67c5

    ld l, [hl]
    ld h, h
    jr nz, jr_01b_67ce

    ld [hl], d
    ld h, l
    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, l
    ld [bc], a

jr_01b_6770:
    ld h, d
    ld h, c
    ld l, h
    ld l, h
    ld l, $20

jr_01b_6776:
    ld b, [hl]
    ld l, a
    ld [hl], d
    jr nz, @+$63

    jr nz, jr_01b_67df

    ld [hl], l

jr_01b_677e:
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    ld bc, $7567
    ld h, c
    ld [hl], d
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_6801

jr_01b_678d:
    ld l, b

jr_01b_678e:
    ld h, l
    jr nz, jr_01b_67f8

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]

jr_01b_6795:
    inc l
    ld bc, $7375
    ld h, l
    jr nz, jr_01b_6815

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01b_67f4

    ld d, a
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01b_680a

    ld [hl], l
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    jr nz, jr_01b_6823

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01b_681b

    ld [hl], l
    ld h, c
    ld [hl], d
    ld h, h
    ld [hl], e

jr_01b_67b9:
    ld bc, $6874

jr_01b_67bc:
    ld h, l
    jr nz, jr_01b_6826

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_01b_682e

jr_01b_67c5:
    ld [hl], e
    jr nz, jr_01b_6829

jr_01b_67c8:
    jr nz, jr_01b_6831

    ld [hl], l
    ld h, c
    ld [hl], d
    ld h, h

jr_01b_67ce:
    ld bc, $7562
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    ld l, $02
    ld b, [hl]
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01b_683f

    ld h, c
    ld l, h

jr_01b_67df:
    ld l, h
    jr nz, @+$76

    ld l, a
    jr nz, jr_01b_6855

    ld l, c
    ld l, [hl]
    inc l
    ld bc, $2749
    ld h, h
    jr nz, jr_01b_6861

    ld h, c
    ld a, c
    jr nz, jr_01b_685b

    ld [hl], h
    daa

jr_01b_67f4:
    ld [hl], e
    jr nz, jr_01b_6858

    ld h, d

jr_01b_67f8:
    ld l, a
    ld [hl], l
    ld [hl], h
    ld bc, $3032
    ld e, c
    ld l, $03

jr_01b_6801:
    nop
    ld b, [hl]
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, jr_01b_686d

jr_01b_680a:
    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    ld bc, $6e61
    jr nz, jr_01b_6875

    ld [hl], b

jr_01b_6815:
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b

jr_01b_681b:
    ld l, $03
    nop
    ld c, [hl]
    ld h, l
    ld a, b
    ld [hl], h
    inc l

jr_01b_6823:
    jr nz, jr_01b_6888

    ld l, b

jr_01b_6826:
    ld l, a
    ld l, a
    ld [hl], e

jr_01b_6829:
    ld h, l
    ld bc, $2061
    ld h, e

jr_01b_682e:
    ld l, h
    ld [hl], l
    ld h, d

jr_01b_6831:
    ld l, $03
    nop
    ld b, e
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    jr nz, jr_01b_68a4

    ld [hl], h
    jr nz, jr_01b_686f

    dec [hl]

jr_01b_683f:
    ld e, c
    jr nz, jr_01b_68a3

    ld l, [hl]
    ld h, h
    ld bc, $6f72
    ld l, h
    ld l, h
    jr nz, jr_01b_68b4

    ld [hl], h
    jr nz, @+$37

    ld e, c
    ld l, $20
    ld c, c
    daa
    ld l, h
    ld l, h

jr_01b_6855:
    ld bc, $7274

jr_01b_6858:
    ld a, c
    jr nz, @+$6b

jr_01b_685b:
    ld [hl], h
    jr nz, jr_01b_68d5

    ld l, c
    ld [hl], h
    ld l, b

jr_01b_6861:
    jr nz, @+$63

    jr nz, @+$55

    ld d, a
    ld l, $03
    nop
    ld d, e
    ld h, l
    ld h, l
    ccf

jr_01b_686d:
    jr nz, @+$4b

jr_01b_686f:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01b_68e7

    ld l, c

jr_01b_6875:
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    ld l, $01
    ld d, a
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, @+$76

    ld l, a
    jr nz, jr_01b_68f8

    ld [hl], d
    ld a, c
    ccf
    nop

jr_01b_6888:
    ld b, [hl]
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, @+$75

    ld h, l
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    ld bc, $6e61
    jr nz, jr_01b_68fb

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld l, $03

jr_01b_68a3:
    nop

jr_01b_68a4:
    ld d, h
    ld l, b
    ld h, l
    ld l, [hl]
    inc l
    jr nz, jr_01b_690e

    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    ld bc, $2061
    ld h, e

jr_01b_68b4:
    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop
    ld c, a
    ld c, e
    inc l
    jr nz, @+$75

    ld l, b
    ld l, a
    ld l, a
    ld [hl], h
    ld hl, $0003
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01b_6934

    ld h, c
    ld [hl], d
    ld h, h
    jr nz, @+$63

    ld [hl], h
    ld bc, $6966

jr_01b_68d5:
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, jr_01b_694e

    ld l, a
    jr nz, @+$6d

    ld h, l
    ld h, l
    ld [hl], b
    ld bc, $7270
    ld h, c
    ld h, e
    ld [hl], h

jr_01b_68e7:
    ld l, c
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $03
    nop
    ld e, c
    ld h, l
    ld h, c
    ld l, b
    inc l
    jr nz, jr_01b_696f

    ld l, a
    ld [hl], l

jr_01b_68f8:
    daa
    db $76
    ld h, l

jr_01b_68fb:
    jr nz, jr_01b_6964

    ld l, a
    ld [hl], h
    ld bc, $7469
    ld l, $20
    ld d, h
    ld [hl], d
    ld a, c
    jr nz, jr_01b_6979

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]

jr_01b_690e:
    ld h, a
    ld bc, $7073
    ld l, c
    ld l, [hl]
    jr nz, jr_01b_6985

    ld l, [hl]
    jr nz, jr_01b_6982

    ld [hl], h
    inc l
    jr nz, jr_01b_6991

    ld l, a
    ld l, a
    ld l, $03
    nop
    ld d, h
    ld l, a
    jr nz, jr_01b_6996

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_01b_699e

    ld l, [hl]
    ld bc, $6f79
    ld [hl], l

jr_01b_6934:
    ld [hl], d
    jr nz, jr_01b_69a6

    ld [hl], a
    ld l, [hl]
    inc l
    jr nz, jr_01b_699f

    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    ld bc, $2061
    ld [hl], e
    ld [hl], b
    ld l, a
    ld [hl], h
    jr nz, jr_01b_69ab

    ld l, [hl]
    ld h, h
    jr nz, jr_01b_69c1

jr_01b_694e:
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $0003
    ld c, c
    daa
    ld l, l
    jr nz, @+$76

    ld [hl], d
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_69d3

    ld [hl], l
    ld l, [hl]
    ld l, [hl]

jr_01b_6964:
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $7061
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e

jr_01b_696f:
    ld l, b
    ld h, l
    ld [hl], e
    jr nz, jr_01b_69e3

    ld l, [hl]
    ld bc, $6c73
    ld l, a

jr_01b_6979:
    ld [hl], b
    ld h, l
    ld h, h
    jr nz, @+$69

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]

jr_01b_6982:
    ld [hl], e
    ld l, $02

jr_01b_6985:
    ld b, a
    ld h, l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_69ef

    jr nz, @+$75

    ld h, l

jr_01b_6991:
    ld l, [hl]
    ld [hl], e
    ld h, l
    jr nz, jr_01b_6a05

jr_01b_6996:
    ld h, [hl]
    ld bc, $6964
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]

jr_01b_699e:
    ld h, e

jr_01b_699f:
    ld h, l
    jr nz, jr_01b_6a0b

    ld [hl], e
    jr nz, jr_01b_6a0d

    ld h, c

jr_01b_69a6:
    ld [hl], d
    ld h, h
    ld l, $01
    ld d, a

jr_01b_69ab:
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01b_6a24

    ld l, a
    jr nz, @+$76

    ld [hl], d
    ld a, c
    ccf
    nop
    ld b, e
    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, @+$63

    jr nz, jr_01b_6a24

jr_01b_69c1:
    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_01b_6a3a

    ld l, a
    ld bc, $616d
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01b_6a37

jr_01b_69d3:
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld bc, $7266
    ld l, a
    ld l, l
    jr nz, @+$64

    ld h, c
    ld l, h

jr_01b_69e3:
    ld l, h
    jr nz, jr_01b_6a5a

    ld l, a
    jr nz, @+$69

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $02

jr_01b_69ef:
    ld c, c
    ld [hl], h
    daa
    ld l, h
    ld l, h
    jr nz, jr_01b_6a5e

    ld h, l
    ld l, h
    ld [hl], b
    jr nz, jr_01b_6a74

    ld l, a
    ld [hl], l
    jr nz, jr_01b_6a66

    ld h, l
    ld [hl], h
    ld bc, $2061
    ld [hl], e

jr_01b_6a05:
    ld h, l
    ld l, [hl]
    ld [hl], e
    ld h, l
    jr nz, jr_01b_6a71

jr_01b_6a0b:
    ld l, a
    ld [hl], d

jr_01b_6a0d:
    jr nz, jr_01b_6a7f

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6e6f
    jr nz, jr_01b_6a8d

    ld l, h
    ld l, a
    ld [hl], b
    ld h, l
    ld h, h
    jr nz, jr_01b_6a88

    ld [hl], d
    ld h, l
    ld h, l

jr_01b_6a24:
    ld l, [hl]
    ld [hl], e
    ld l, $03
    nop
    ld c, a
    ld l, [hl]
    jr nz, jr_01b_6a8e

    jr nz, jr_01b_6aa2

    ld l, h
    ld l, a
    ld [hl], b
    ld h, l
    ld h, h
    jr nz, jr_01b_6a9d

    ld [hl], d

jr_01b_6a37:
    ld h, l
    ld h, l
    ld l, [hl]

jr_01b_6a3a:
    inc l
    ld bc, $7274
    ld a, c
    jr nz, jr_01b_6ab5

    ld l, a
    jr nz, @+$69

    ld h, l
    ld [hl], h
    jr nz, jr_01b_6aa9

    jr nz, @+$75

    ld h, l
    ld l, [hl]
    ld [hl], e
    ld h, l
    ld bc, $666f
    jr nz, jr_01b_6ac7

    ld l, b
    ld h, l
    jr nz, @+$66

    ld l, c
    ld [hl], e
    ld [hl], h

jr_01b_6a5a:
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l

jr_01b_6a5e:
    jr nz, @+$76

    ld l, a
    ld [bc], a
    ld h, d
    ld h, l
    jr nz, jr_01b_6ac9

jr_01b_6a66:
    ld l, h
    ld l, c
    ld l, l
    ld h, d
    ld h, l
    ld h, h
    ld l, $20
    ld b, c
    ld l, h
    ld [hl], e

jr_01b_6a71:
    ld l, a
    jr nz, jr_01b_6adf

jr_01b_6a74:
    ld h, l
    ld h, l
    ld [hl], b
    ld bc, $6e69
    jr nz, jr_01b_6ae9

    ld l, c
    ld l, [hl]
    ld h, h

jr_01b_6a7f:
    jr nz, jr_01b_6af5

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$7b

    ld l, a
    ld [hl], l

jr_01b_6a88:
    ld bc, $6163
    ld l, [hl]
    daa

jr_01b_6a8d:
    ld [hl], h

jr_01b_6a8e:
    jr nz, jr_01b_6af3

    ld h, c
    ld l, h
    ld h, e
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_01b_6b0e

    ld l, b
    ld h, l
    ld [bc], a

jr_01b_6a9d:
    ld [hl], d
    ld [hl], l
    ld l, [hl]
    jr nz, jr_01b_6b08

jr_01b_6aa2:
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, @+$76

    ld l, b
    ld h, l

jr_01b_6aa9:
    ld bc, $6166
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    ld l, $03
    nop
    ld d, h

jr_01b_6ab5:
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01b_6b1d

    jr nz, jr_01b_6b31

    ld h, l
    ld [hl], d
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    ld bc, $6c63

jr_01b_6ac7:
    ld l, c
    ld l, l

jr_01b_6ac9:
    ld h, d
    jr nz, jr_01b_6b32

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01b_6b45

    ld l, b
    ld h, l
    ld bc, $6162
    ld l, h
    ld l, h
    jr nz, jr_01b_6b4e

    ld l, a
    jr nz, jr_01b_6b51

    ld l, b
    ld h, l

jr_01b_6adf:
    jr nz, jr_01b_6b51

    ld l, c
    ld l, [hl]
    ld l, $02
    ld c, c
    ld h, [hl]
    jr nz, jr_01b_6b32

jr_01b_6ae9:
    jr nz, jr_01b_6b4f

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$69

    ld h, l
    ld [hl], h

jr_01b_6af3:
    jr nz, @+$6f

jr_01b_6af5:
    ld a, c
    ld bc, $6162
    ld l, h
    ld l, h
    jr nz, @+$77

    ld [hl], b
    jr nz, jr_01b_6b74

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01b_6b6d

    ld l, c
    ld l, h
    ld l, h

jr_01b_6b08:
    inc l
    ld bc, $2049
    ld [hl], a
    ld l, a

jr_01b_6b0e:
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01b_6b80

    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_01b_6b88

    ld h, c
    ld [hl], d
    ld l, $03
    nop

jr_01b_6b1d:
    ld b, [hl]
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, jr_01b_6b88

    ld l, b
    ld h, l
    ld h, e
    ld l, e
    jr nz, jr_01b_6b9f

    ld l, b
    ld h, l
    ld bc, $6964
    ld [hl], e

jr_01b_6b31:
    ld [hl], h

jr_01b_6b32:
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01b_6ba0

    jr nz, jr_01b_6ba4

    ld l, h
    ld [hl], l
    ld h, d
    inc l

jr_01b_6b45:
    jr nz, jr_01b_6ba9

    ld [hl], l
    ld [hl], h
    ld l, $2e
    ld l, $03
    nop

jr_01b_6b4e:
    ld c, c

jr_01b_6b4f:
    ld [hl], h
    daa

jr_01b_6b51:
    ld [hl], e
    jr nz, @+$71

    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, jr_01b_6b8b

    ld e, c
    jr nz, jr_01b_6bd0

    ld l, a
    ld bc, $6874
    ld h, l
    jr nz, @+$69

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_01b_6bce

    ld h, h
    ld h, a
    ld h, l
    inc l

jr_01b_6b6d:
    jr nz, jr_01b_6be2

    ld l, a
    ld bc, $2749
    ld l, h

jr_01b_6b74:
    ld l, h
    jr nz, @+$77

    ld [hl], e
    ld h, l
    jr nz, jr_01b_6bdc

    jr nz, jr_01b_6bed

    ld [hl], l
    ld [hl], h
    ld [hl], h

jr_01b_6b80:
    ld h, l
    ld [hl], d
    ld l, $03
    nop
    ld b, a
    ld l, a
    ld [hl], h

jr_01b_6b88:
    jr nz, jr_01b_6bf3

    ld [hl], h

jr_01b_6b8b:
    ccf
    jr nz, jr_01b_6bd2

    ld l, a
    jr nz, jr_01b_6c0a

    ld l, a
    ld [hl], l
    ld bc, $6177
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01b_6c0e

    ld l, a
    jr nz, jr_01b_6c11

    ld [hl], d
    ld a, c

jr_01b_6b9f:
    ccf

jr_01b_6ba0:
    nop
    ld b, [hl]
    ld l, c
    ld [hl], d

jr_01b_6ba4:
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, @+$65

jr_01b_6ba9:
    ld l, b
    ld h, l
    ld h, e
    ld l, e
    jr nz, jr_01b_6c23

    ld l, b
    ld h, l
    ld bc, $6964
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    ld l, [hl]
    inc l
    jr nz, @+$65

    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    ld bc, $2061
    ld h, e
    ld l, h

jr_01b_6bce:
    ld [hl], l
    ld h, d

jr_01b_6bd0:
    ld l, $03

jr_01b_6bd2:
    nop
    ld c, a
    ld c, e
    ld l, $20
    ld d, e
    ld l, b
    ld l, a
    ld l, a
    ld [hl], h

jr_01b_6bdc:
    ld hl, $0003
    ld c, c
    jr nz, @+$69

jr_01b_6be2:
    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_01b_6c51

    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01b_6c55

jr_01b_6bed:
    ld h, c
    ld [hl], d
    ld h, h
    ld l, $01
    ld b, c

jr_01b_6bf3:
    jr nz, jr_01b_6c68

    ld h, l
    ld l, [hl]
    ld [hl], e
    ld h, l
    jr nz, jr_01b_6c61

    ld l, a
    ld [hl], d
    jr nz, jr_01b_6c63

    ld l, c
    ld [hl], e
    dec l
    ld bc, $6174
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01b_6c73

jr_01b_6c0a:
    ld [hl], e
    jr nz, jr_01b_6c81

    ld l, b

jr_01b_6c0e:
    ld h, l
    jr nz, jr_01b_6c7c

jr_01b_6c11:
    ld h, l
    ld a, c
    ld l, $03
    nop
    ld c, b
    ld h, l
    ld a, c
    inc l
    jr nz, jr_01b_6c95

    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01b_6c8a

jr_01b_6c23:
    ld l, a
    ld l, a
    ld h, h
    ld hl, $4901
    daa
    ld l, l
    jr nz, jr_01b_6c94

    ld l, a
    ld l, [hl]
    ld l, [hl]
    ld h, c
    jr nz, @+$76

    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    inc l
    ld bc, $6f73
    jr nz, jr_01b_6c86

    jr nz, @+$79

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01b_6cb1

    ld l, a
    ld [hl], e
    ld h, l
    ld hl, $0003
    ld c, a
    ld l, [hl]
    jr nz, jr_01b_6cb0

    jr nz, jr_01b_6cc4

jr_01b_6c51:
    ld l, h
    ld l, a
    ld [hl], b
    ld h, l

jr_01b_6c55:
    ld h, h
    jr nz, @+$69

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    inc l
    ld bc, $6567
    ld [hl], h

jr_01b_6c61:
    ld [hl], h
    ld l, c

jr_01b_6c63:
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_6cdb

    ld l, b

jr_01b_6c68:
    ld h, l
    jr nz, jr_01b_6ccd

    ld h, c
    ld l, h
    ld l, h
    ld bc, $6f74
    jr nz, jr_01b_6ce7

jr_01b_6c73:
    ld l, b
    ld h, l
    jr nz, jr_01b_6cea

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_01b_6ce8

jr_01b_6c7c:
    ld h, l
    db $76
    ld h, l
    ld l, h
    ld [bc], a

jr_01b_6c81:
    ld h, c
    ld [hl], e
    jr nz, jr_01b_6cf9

    ld l, b

jr_01b_6c86:
    ld h, l
    jr nz, jr_01b_6cf9

    ld l, c

jr_01b_6c8a:
    ld l, [hl]
    jr nz, jr_01b_6cf6

    ld [hl], e
    jr nz, jr_01b_6cf1

    ld bc, $7573
    ld h, e

jr_01b_6c94:
    ld h, e

jr_01b_6c95:
    ld h, l
    ld [hl], e
    ld [hl], e
    ld h, [hl]
    ld [hl], l
    ld l, h
    jr nz, @+$72

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01b_6d0b

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01b_6d0f

    ld [hl], b
    ld [hl], b

jr_01b_6cb0:
    ld [hl], d

jr_01b_6cb1:
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld bc, $2061
    ld [hl], b
    ld l, c
    ld l, [hl]
    jr nz, jr_01b_6d1e

    ld [hl], h
    jr nz, jr_01b_6d34

    ld l, b
    ld h, l
    jr nz, jr_01b_6d32

jr_01b_6cc4:
    ld h, l
    ld h, c
    ld [hl], d
    ld bc, $6e65
    ld h, h
    jr nz, jr_01b_6d3c

jr_01b_6ccd:
    ld h, [hl]
    jr nz, jr_01b_6d31

    jr nz, jr_01b_6d39

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_01b_6d4c

    ld l, b
    ld h, c
    ld [hl], h

jr_01b_6cdb:
    daa
    ld [hl], e
    ld [bc], a
    ld h, a
    ld [hl], l
    ld h, c
    ld [hl], d
    ld h, h
    ld h, l
    ld h, h
    jr nz, jr_01b_6d49

jr_01b_6ce7:
    ld a, c

jr_01b_6ce8:
    jr nz, @+$63

jr_01b_6cea:
    ld bc, $6168
    ld a, d
    ld h, c
    ld [hl], d
    ld h, h

jr_01b_6cf1:
    inc l
    jr nz, @+$74

    ld l, c
    ld h, a

jr_01b_6cf6:
    ld l, b
    ld [hl], h
    ccf

jr_01b_6cf9:
    nop
    ld c, b
    ld [hl], l
    ld l, b
    ccf
    jr nz, @+$45

    ld h, c
    ld l, [hl]
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, @+$66

    ld l, a
    jr nz, @+$63

jr_01b_6d0b:
    ld bc, $6f6c
    ld h, d

jr_01b_6d0f:
    jr nz, jr_01b_6d84

    ld l, b
    ld l, a
    ld [hl], h
    inc l
    jr nz, jr_01b_6d1e

    ccf
    ld [bc], a
    ld e, c
    ld h, l
    ld h, c
    ld l, b
    inc l

jr_01b_6d1e:
    jr nz, @+$4b

    jr nz, jr_01b_6d90

    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_01b_6d9b

    ld l, a
    ld bc, $616d
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01b_6da5

jr_01b_6d31:
    ld l, b

jr_01b_6d32:
    ld h, c
    ld [hl], h

jr_01b_6d34:
    inc l
    jr nz, jr_01b_6dab

    ld l, a
    ld l, a

jr_01b_6d39:
    ld l, $03
    nop

jr_01b_6d3c:
    ld c, c
    jr nz, jr_01b_6db6

    ld l, c
    ld [hl], e
    ld l, b
    jr nz, @+$4b

    jr nz, jr_01b_6da9

    ld l, a
    ld [hl], l
    ld l, h

jr_01b_6d49:
    ld h, h
    jr nz, jr_01b_6db3

jr_01b_6d4c:
    ld h, l
    ld [hl], h
    ld bc, $6874
    ld h, l
    jr nz, jr_01b_6db6

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01b_6dcb

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_01b_6dd3

    ld l, a
    jr nz, jr_01b_6dd6

    ld l, b
    ld h, l
    ld bc, $6970
    ld l, [hl]
    jr nz, @+$71

    ld l, [hl]
    jr nz, jr_01b_6de1

    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_01b_6de6

    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e
    ld l, $02
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01b_6de1

    ld h, c
    ld l, [hl]
    jr nz, jr_01b_6df9

    ld l, c
    ld [hl], h

jr_01b_6d84:
    ld l, b
    jr nz, @+$63

    jr nz, jr_01b_6d8a

    ld l, h

jr_01b_6d8a:
    ld l, a
    ld h, d
    jr nz, jr_01b_6e01

    ld l, b
    ld l, a

jr_01b_6d90:
    ld [hl], h
    ld l, $03
    nop
    ld b, c
    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e

jr_01b_6d9b:
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_6e02

    jr nz, jr_01b_6e13

    ld l, c
    ld l, [hl]

jr_01b_6da5:
    ld bc, $6874
    ld h, c

jr_01b_6da9:
    ld [hl], h
    daa

jr_01b_6dab:
    ld [hl], e
    jr nz, @+$37

    ld e, c
    jr nz, jr_01b_6e17

    ld [hl], d
    ld l, a

jr_01b_6db3:
    ld l, l
    jr nz, jr_01b_6e17

jr_01b_6db6:
    ld bc, $7567
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_01b_6e20

    ld [hl], l
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    jr nz, jr_01b_6e2e

    ld [hl], e
    jr nz, @+$63

    ld [bc], a
    ld [hl], h
    ld l, a

jr_01b_6dcb:
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_01b_6e43

    ld l, b
    ld l, a
    ld [hl], h

jr_01b_6dd3:
    inc l
    jr nz, @+$64

jr_01b_6dd6:
    ld [hl], l
    ld [hl], h
    jr nz, jr_01b_6e3b

    ld bc, $3032
    ld e, c
    jr nz, jr_01b_6e4c

    ld l, a

jr_01b_6de1:
    ld h, d
    jr nz, @+$75

    ld l, b
    ld l, a

jr_01b_6de6:
    ld [hl], h
    jr nz, jr_01b_6e59

    ld [hl], l
    ld [hl], h
    ld [hl], e
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01b_6e64

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, @+$76

    ld l, b

jr_01b_6df9:
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $0003
    ld b, [hl]
    ld l, c

jr_01b_6e01:
    ld [hl], d

jr_01b_6e02:
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, @+$75

    ld h, l
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    ld bc, $6e61
    jr nz, jr_01b_6e72

    ld [hl], b
    ld [hl], b

jr_01b_6e13:
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e

jr_01b_6e17:
    ld l, b
    ld l, $03
    nop
    ld c, [hl]
    ld h, l
    ld a, b
    ld [hl], h
    inc l

jr_01b_6e20:
    jr nz, jr_01b_6e85

    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    ld bc, $2061
    ld h, e
    ld l, h
    ld [hl], l
    ld h, d

jr_01b_6e2e:
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01b_6eab

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01b_6e9a

    jr nz, jr_01b_6e6d

jr_01b_6e3b:
    jr nc, jr_01b_6e96

    jr nz, jr_01b_6ea2

    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c

jr_01b_6e43:
    ld bc, $6e61
    ld h, h
    jr nz, jr_01b_6eaa

    jr nz, jr_01b_6e80

    ld e, c

jr_01b_6e4c:
    jr nz, jr_01b_6ec0

    ld [hl], l
    ld l, [hl]
    ld l, $20
    ld c, c
    daa
    ld l, h
    ld l, h
    ld bc, $7375

jr_01b_6e59:
    ld h, l
    jr nz, jr_01b_6ec9

    ld a, c
    jr nz, jr_01b_6eb2

    ld d, a
    ld l, $20
    ld d, e
    ld [hl], h

jr_01b_6e64:
    ld h, c
    ld [hl], d
    ld [hl], h
    ld [bc], a
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_01b_6ed0

jr_01b_6e6d:
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld l, a
    ld [hl], d

jr_01b_6e72:
    inc l
    jr nz, jr_01b_6ee9

    ld l, b
    ld h, l
    ld l, [hl]
    ld bc, $7270
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_01b_6ee4

jr_01b_6e80:
    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, jr_01b_6ef4

jr_01b_6e85:
    ld l, [hl]
    jr nz, jr_01b_6efc

    ld l, b
    ld h, l
    ld bc, $202b
    ld b, e
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    jr nz, jr_01b_6ee6

jr_01b_6e96:
    ld h, c
    ld h, h
    ld [bc], a
    ld h, [hl]

jr_01b_6e9a:
    ld l, a
    ld [hl], d
    jr nz, jr_01b_6f00

    ld h, c
    ld h, e
    ld l, e
    ld [hl], e

jr_01b_6ea2:
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld l, $03
    nop
    ld c, b
    ld l, l

jr_01b_6eaa:
    ld l, l

jr_01b_6eab:
    inc l
    jr nz, jr_01b_6f1c

    ld l, a
    ld [hl], h
    jr nz, jr_01b_6f14

jr_01b_6eb2:
    ld h, c
    ld h, h
    ld hl, $5701
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01b_6f30

    ld l, a
    jr nz, jr_01b_6f33

    ld [hl], d

jr_01b_6ec0:
    ld a, c
    ccf
    nop
    ld b, [hl]
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc l

jr_01b_6ec9:
    jr nz, jr_01b_6f3e

    ld h, l
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h

jr_01b_6ed0:
    ld bc, $6e61
    jr nz, @+$63

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld l, $03
    nop
    ld c, [hl]
    ld h, l
    ld a, b
    ld [hl], h
    inc l

jr_01b_6ee4:
    jr nz, jr_01b_6f49

jr_01b_6ee6:
    ld l, b
    ld l, a
    ld l, a

jr_01b_6ee9:
    ld [hl], e
    ld h, l
    ld bc, $2061
    ld h, e
    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03

jr_01b_6ef4:
    nop
    ld c, a
    ld c, e
    ld l, $20
    ld b, a
    ld l, c
    db $76

jr_01b_6efc:
    ld h, l
    jr nz, jr_01b_6f68

    ld [hl], h

jr_01b_6f00:
    jr nz, jr_01b_6f63

    jr nz, jr_01b_6f78

    ld [hl], d
    ld a, c
    ld hl, $0003
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01b_6f70

    jr nz, jr_01b_6f85

    ld l, a
    ld [hl], l
    ld h, a

jr_01b_6f14:
    ld l, b
    jr nz, jr_01b_6f79

    ld [hl], l
    ld [hl], h
    ld bc, $656e

jr_01b_6f1c:
    ld h, e
    ld h, l
    ld [hl], e
    ld [hl], e
    ld h, c
    ld [hl], d
    ld a, c
    jr nz, jr_01b_6f98

    ld l, b
    ld l, a
    ld [hl], h
    inc l
    jr nz, jr_01b_6f9e

    ld l, a
    ld bc, $7270
    ld h, c

jr_01b_6f30:
    ld h, e
    ld [hl], h
    ld l, c

jr_01b_6f33:
    ld h, e
    ld h, l
    jr nz, jr_01b_6fac

    ld [hl], b
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l

jr_01b_6f3e:
    jr nz, jr_01b_6fad

    ld l, c
    ld [hl], e
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_01b_6f6e

    ld h, e
    ld h, c

jr_01b_6f49:
    ld [hl], l
    ld [hl], e
    ld h, l
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01b_6fb6

    ld l, c
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01b_6fce

    ld [hl], e
    ld h, l
    ld bc, $6162
    ld h, e
    ld l, e
    ld [hl], e
    ld [hl], b
    ld l, c

jr_01b_6f63:
    ld l, [hl]
    ld l, $02
    ld e, c
    ld l, a

jr_01b_6f68:
    ld [hl], l
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], l

jr_01b_6f6e:
    ld l, h
    ld h, h

jr_01b_6f70:
    jr nz, jr_01b_6fe2

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e

jr_01b_6f78:
    ld h, l

jr_01b_6f79:
    ld bc, $7570
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_6ff6

    ld [hl], b
    ld l, c

jr_01b_6f85:
    ld l, [hl]
    jr nz, @+$71

    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, jr_01b_6ff1

    ld h, c
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l

jr_01b_6f98:
    jr nz, jr_01b_6ffe

    ld l, c
    ld h, h
    jr nz, jr_01b_7007

jr_01b_6f9e:
    ld [hl], h
    ld hl, $5920
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    ld bc, $2061
    ld [hl], c
    ld [hl], l

jr_01b_6fac:
    ld l, c

jr_01b_6fad:
    ld h, e
    ld l, e
    jr nz, jr_01b_701d

    ld h, l
    ld h, c
    ld [hl], d
    ld l, [hl]
    ld h, l

jr_01b_6fb6:
    ld [hl], d
    ld hl, $0003
    ld d, l
    ld [hl], e
    ld h, l
    jr nz, jr_01b_7033

    ld l, b
    ld h, l
    jr nz, jr_01b_7036

    ld [hl], b
    ld l, a
    ld [hl], h
    jr nz, jr_01b_7037

    db $76
    ld h, l
    ld [hl], d
    ld bc, $6874

jr_01b_6fce:
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$76

    ld l, a
    jr nz, jr_01b_7046

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    ld bc, $6e6f
    jr nz, @+$7b

jr_01b_6fe2:
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01b_7056

    ld [hl], a
    ld l, [hl]
    ld l, $03
    nop
    ld b, c
    ld l, c
    ld l, l
    ld l, c
    ld l, [hl]

jr_01b_6ff1:
    ld h, a
    jr nz, jr_01b_705a

    ld l, a
    ld [hl], d

jr_01b_6ff6:
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, @+$72

    ld l, c
    ld l, [hl]

jr_01b_6ffe:
    ld bc, $7266
    ld l, a
    ld l, l
    jr nz, @+$64

    ld h, l
    ld l, h

jr_01b_7007:
    ld l, a
    ld [hl], a
    jr nz, @+$63

    jr nz, jr_01b_7080

    ld [hl], h
    ld h, l
    ld h, l
    ld [hl], b
    ld bc, $6c63
    ld l, c
    ld l, l
    ld h, d
    jr nz, jr_01b_708d

    ld l, a
    jr nz, jr_01b_7090

    ld l, b

jr_01b_701d:
    ld h, l
    jr nz, jr_01b_7087

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld [bc], a
    ld l, c
    ld [hl], e
    jr nz, jr_01b_7091

    ld h, c
    ld [hl], d
    ld h, h
    ld l, $20
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01b_7096

jr_01b_7033:
    ld h, c
    ld l, [hl]
    daa

jr_01b_7036:
    ld [hl], h

jr_01b_7037:
    ld bc, $6173
    db $76
    ld h, l
    jr nz, jr_01b_70ae

    ld h, c
    ld [hl], d
    jr nz, jr_01b_70b6

    ld l, b
    ld h, l
    ld l, [hl]
    inc l

jr_01b_7046:
    jr nz, @+$74

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ccf
    nop
    ld c, c
    ld h, [hl]
    jr nz, jr_01b_70cb

    ld l, a
    ld [hl], l
    jr nz, @+$66

jr_01b_7056:
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h

jr_01b_705a:
    jr nz, jr_01b_70d0

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_01b_70cb

    ld [hl], h
    daa
    ld [hl], e
    ld bc, $6168
    ld [hl], d
    ld h, h
    inc l
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_01b_70de

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01b_70d8

    ld h, l
    jr nz, jr_01b_70e0

    ld l, a
    ld l, a
    ld h, h
    ld l, $03
    nop
    ld d, h

jr_01b_7080:
    ld l, a
    jr nz, jr_01b_70e4

    ld [hl], h
    ld [hl], h
    ld h, c
    ld h, e

jr_01b_7087:
    ld l, e
    inc l
    jr nz, @+$74

    ld l, a
    ld l, h

jr_01b_708d:
    ld l, h
    jr nz, jr_01b_7104

jr_01b_7090:
    ld l, b

jr_01b_7091:
    ld h, l
    ld bc, $6162
    ld l, h

jr_01b_7096:
    ld l, h
    jr nz, jr_01b_710d

    ld l, a
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, @+$72

    ld l, c
    ld l, [hl]
    ld l, $02
    ld d, l
    ld [hl], e
    ld h, l
    jr nz, @+$63

    jr nz, jr_01b_7113

    ld l, c
    ld h, a
    ld l, b

jr_01b_70ae:
    jr nz, jr_01b_7112

    ld h, c
    ld l, h
    ld l, h
    inc l
    jr nz, jr_01b_7117

jr_01b_70b6:
    ld l, [hl]
    ld h, h
    ld bc, $6f79
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, jr_01b_7126

    ld l, [hl]
    ld h, h
    jr nz, @+$77

    ld [hl], b
    jr nz, jr_01b_713f

    ld l, c
    ld [hl], h
    ld l, b

jr_01b_70cb:
    jr nz, jr_01b_712e

    ld bc, $6962

jr_01b_70d0:
    ld h, a
    jr nz, jr_01b_7140

    ld l, c
    ld [hl], e
    ld [hl], e
    ld l, $03

jr_01b_70d8:
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01b_710f

jr_01b_70de:
    jr nc, jr_01b_7139

jr_01b_70e0:
    jr nz, @+$68

    ld [hl], d
    ld l, a

jr_01b_70e4:
    ld l, l
    jr nz, jr_01b_7149

    ld h, c
    ld l, h
    ld l, h
    ld bc, $6f74
    jr nz, jr_01b_7156

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_01b_715e

    ld [hl], e
    jr nz, jr_01b_715e

    ld l, h
    ld h, c
    ld [hl], h
    inc l
    ld bc, $7562
    ld [hl], h
    jr nz, jr_01b_7176

    ld l, b
    ld h, l

jr_01b_7104:
    jr nz, @+$70

    ld h, l
    ld a, b
    ld [hl], h
    jr nz, jr_01b_713c

    jr nc, jr_01b_7166

jr_01b_710d:
    ld l, $2e

jr_01b_710f:
    ld l, $02
    ld c, c

jr_01b_7112:
    ld [hl], h

jr_01b_7113:
    daa
    ld [hl], e
    jr nz, jr_01b_714c

jr_01b_7117:
    ld e, c
    jr nz, jr_01b_7180

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01b_7193

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld bc, $6f74

jr_01b_7126:
    jr nz, jr_01b_719c

    ld l, b
    ld h, l
    jr nz, jr_01b_719c

    ld l, c
    ld l, [hl]

jr_01b_712e:
    inc l
    jr nz, @+$75

    ld l, a
    jr nz, jr_01b_719d

    ld [hl], h
    ld bc, $6168
    ld [hl], e

jr_01b_7139:
    jr nz, @+$76

    ld l, a

jr_01b_713c:
    jr nz, jr_01b_71b1

    ld [hl], h

jr_01b_713f:
    ld l, a

jr_01b_7140:
    ld [hl], b
    jr nz, @+$76

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $03

jr_01b_7149:
    nop
    ld b, [hl]
    ld l, c

jr_01b_714c:
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, @+$75

    ld h, l
    ld l, h
    ld h, l
    ld h, e

jr_01b_7156:
    ld [hl], h
    ld bc, $6e61
    jr nz, jr_01b_71bd

    ld [hl], b
    ld [hl], b

jr_01b_715e:
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld l, $03
    nop

jr_01b_7166:
    ld c, [hl]
    ld h, l
    ld a, b
    ld [hl], h
    inc l
    jr nz, jr_01b_71d0

    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    ld bc, $2061
    ld h, e

jr_01b_7176:
    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01b_71e2

    ld h, c

jr_01b_7180:
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01b_71ef

    ld [hl], l
    ld h, h
    ld h, a
    ld h, l
    jr nz, jr_01b_71f3

    ld l, a
    ld [hl], a
    ld bc, $6874
    ld h, l
    jr nz, @+$68

jr_01b_7193:
    ld h, c
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    jr nz, jr_01b_720d

    ld l, a

jr_01b_719c:
    ld l, h

jr_01b_719d:
    ld l, h
    ld [hl], e
    inc l
    ld bc, $6f73
    jr nz, jr_01b_7206

    ld l, [hl]
    jr nz, jr_01b_7211

    ld [hl], d
    ld l, a
    ld l, [hl]
    jr nz, jr_01b_7216

    ld [hl], e
    jr nz, jr_01b_7212

    ld h, l

jr_01b_71b1:
    ld [hl], e
    ld [hl], h
    ld l, $02
    ld b, c
    jr nz, jr_01b_71ef

    ld c, c
    daa
    ld [hl], e
    jr nz, jr_01b_7229

jr_01b_71bd:
    ld l, a
    ld [hl], a
    jr nz, jr_01b_7234

    ld l, b
    ld l, a
    ld [hl], h
    jr nz, jr_01b_7229

    ld h, c
    ld l, [hl]
    ld bc, $6163
    ld [hl], d
    ld [hl], d
    ld a, c
    jr nz, jr_01b_7239

jr_01b_71d0:
    ld [hl], h
    jr nz, jr_01b_7234

    ld l, [hl]
    ld h, h
    jr nz, @+$74

    ld l, a
    ld l, h
    ld l, h
    ld bc, $7469
    jr nz, @+$77

    ld [hl], b
    jr nz, jr_01b_7256

jr_01b_71e2:
    ld l, b
    ld h, l
    jr nz, jr_01b_724d

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $03
    nop
    ld b, h
    ld l, c

jr_01b_71ef:
    ld h, h
    jr nz, jr_01b_726b

    ld l, a

jr_01b_71f3:
    ld [hl], l
    jr nz, @+$69

    ld h, l
    ld [hl], h
    jr nz, jr_01b_726e

    ld l, b
    ld h, c
    ld [hl], h
    ccf
    ld bc, $6157
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01b_7279

    ld l, a

jr_01b_7206:
    jr nz, jr_01b_727c

    ld [hl], d
    ld a, c
    ccf
    nop
    ld b, [hl]

jr_01b_720d:
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h

jr_01b_7211:
    inc l

jr_01b_7212:
    jr nz, jr_01b_7287

    ld h, l
    ld l, h

jr_01b_7216:
    ld h, l
    ld h, e
    ld [hl], h
    ld bc, $6e61
    jr nz, @+$63

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld l, $03
    nop
    ld c, [hl]

jr_01b_7229:
    ld h, l
    ld a, b
    ld [hl], h
    inc l
    jr nz, jr_01b_72a2

    ld h, l
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h

jr_01b_7234:
    jr nz, jr_01b_7297

    jr nz, jr_01b_729b

    ld l, h

jr_01b_7239:
    ld [hl], l
    ld h, d
    ld l, $03
    nop
    ld c, a
    ld c, e
    ld l, $20
    ld d, e
    ld l, b
    ld l, a
    ld l, a
    ld [hl], h
    ld hl, $0003
    ld c, c
    ld [hl], h
    daa

jr_01b_724d:
    ld [hl], e
    jr nz, jr_01b_72b8

    ld h, c
    ld [hl], d
    ld h, h
    ld l, $20
    ld b, c

jr_01b_7256:
    jr nz, jr_01b_72cb

    ld h, l
    ld l, [hl]
    ld [hl], e
    ld h, l
    ld bc, $666f
    jr nz, @+$66

    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01b_72d3

    ld [hl], e

jr_01b_726b:
    ld bc, $6874

jr_01b_726e:
    ld h, l
    jr nz, @+$6d

    ld h, l
    ld a, c
    ld l, $03
    nop
    ld c, [hl]
    ld l, c
    ld h, e

jr_01b_7279:
    ld h, l
    jr nz, jr_01b_72e6

jr_01b_727c:
    ld l, a
    ld h, d
    ld hl, $5420
    ld [hl], d
    ld a, c
    ld bc, $6874
    ld l, c

jr_01b_7287:
    ld [hl], e
    jr nz, jr_01b_72fd

    ld l, b
    ld l, a
    ld [hl], h
    jr nz, jr_01b_7306

    ld l, c
    ld [hl], h
    ld l, b
    ld bc, $6f74
    ld [hl], b
    ld [hl], e

jr_01b_7297:
    ld [hl], b
    ld l, c
    ld l, [hl]
    inc l

jr_01b_729b:
    jr nz, jr_01b_7311

    ld l, a
    ld l, a
    ld l, $03
    nop

jr_01b_72a2:
    ld c, a
    ld l, [hl]
    jr nz, jr_01b_7319

    ld l, h
    ld l, a
    ld [hl], b
    ld h, l
    ld h, h
    jr nz, @+$69

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld [hl], e
    inc l
    ld bc, $756a
    ld [hl], e
    ld [hl], h

jr_01b_72b8:
    jr nz, jr_01b_7328

    ld h, l
    ld h, c
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_7336

    ld l, b
    ld h, l
    jr nz, jr_01b_7336

    ld l, c
    ld l, [hl]
    ld bc, $7369

jr_01b_72cb:
    jr nz, jr_01b_7333

    ld l, c
    ld l, [hl]
    ld h, l
    ld l, $03
    nop

jr_01b_72d3:
    ld c, b
    ld h, l
    ld a, c
    ld hl, $5920
    ld l, a
    ld [hl], l
    jr nz, jr_01b_7341

    ld l, c
    ld h, h
    jr nz, jr_01b_734a

    ld [hl], h
    ld hl, $4101
    ld l, [hl]

jr_01b_72e6:
    ld h, h
    jr nz, jr_01b_7360

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01b_734f

    jr nz, jr_01b_7360

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    ld hl, $5901
    ld l, a
    ld [hl], l
    jr nz, jr_01b_7360

    ld l, c

jr_01b_72fd:
    ld h, h
    jr nz, jr_01b_7374

    ld l, b
    ld h, c
    ld [hl], h
    ld [bc], a
    daa
    ld h, e

jr_01b_7306:
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_01b_7355

    jr nz, @+$75

    ld h, c
    ld l, c
    ld h, h

jr_01b_7311:
    jr nz, jr_01b_735c

    ld bc, $656e
    ld h, l
    ld h, h
    ld h, l

jr_01b_7319:
    ld h, h
    jr nz, jr_01b_737d

    ld l, [hl]
    jr nz, jr_01b_7388

    ld [hl], d
    ld l, a
    ld l, [hl]
    inc l
    ld bc, $6964
    ld h, h
    ld l, [hl]

jr_01b_7328:
    daa
    ld [hl], h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ccf
    inc bc
    nop
    ld b, a
    ld l, a

jr_01b_7333:
    ld l, c
    ld l, [hl]
    ld h, a

jr_01b_7336:
    jr nz, jr_01b_73a7

    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_01b_739e

    jr nz, jr_01b_73ac

    ld l, a
    ld [hl], l

jr_01b_7341:
    ld l, [hl]
    ld h, h
    ld bc, $7266
    ld l, a
    ld l, l
    jr nz, jr_01b_73be

jr_01b_734a:
    ld l, b
    ld h, l
    jr nz, @+$74

    ld l, a

jr_01b_734f:
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_01b_73c8

    ld l, a

jr_01b_7355:
    ld bc, $2061
    ld h, h
    ld l, a
    ld [hl], a
    ld l, [hl]

jr_01b_735c:
    ld l, b
    ld l, c
    ld l, h
    ld l, h

jr_01b_7360:
    jr nz, jr_01b_73d2

    ld l, c
    ld l, [hl]
    jr nz, @+$6b

    ld [hl], e
    ld [bc], a
    ld l, b
    ld h, c
    ld [hl], d
    ld h, h
    ld l, $20
    ld c, c
    ld h, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l

jr_01b_7374:
    jr nz, @+$72

    ld l, c
    ld l, [hl]
    daa
    ld [hl], e
    ld bc, $6c63

jr_01b_737d:
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_01b_73f1

    ld l, [hl]
    jr nz, @+$63

    ld l, [hl]
    jr nz, jr_01b_73e9

jr_01b_7388:
    ld l, [hl]
    ld h, a
    ld l, h
    ld h, l
    ld h, h
    ld bc, $696c
    ld l, [hl]
    ld h, l
    ld l, $2e
    ld l, $4e
    ld l, a
    jr nz, jr_01b_7410

    ld h, c
    ld a, c
    inc l
    jr nz, jr_01b_7403

jr_01b_739e:
    ld l, b
    ccf
    jr nz, jr_01b_73a2

jr_01b_73a2:
    ld c, c
    ld h, [hl]
    jr nz, jr_01b_741f

    ld l, a

jr_01b_73a7:
    ld [hl], l
    jr nz, jr_01b_740d

    ld h, c
    ld l, [hl]

jr_01b_73ac:
    jr nz, jr_01b_741b

    ld h, c
    ld l, e
    ld h, l
    ld bc, $6874
    ld h, c
    ld [hl], h
    inc l
    jr nz, jr_01b_7432

    ld l, a
    ld [hl], l
    jr nz, jr_01b_7420

    ld h, c

jr_01b_73be:
    ld l, [hl]
    ld bc, $616d
    ld l, e
    ld h, l
    jr nz, jr_01b_7427

    ld l, [hl]
    ld a, c

jr_01b_73c8:
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $0003
    ld b, h
    ld l, a

jr_01b_73d2:
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$64

    ld h, l
    jr nz, jr_01b_744a

    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    ld [hl], l
    ld [hl], d
    ld h, l
    ld h, h
    ld bc, $7962
    jr nz, @+$6a

    ld h, c
    ld [hl], d

jr_01b_73e9:
    ld h, h
    jr nz, jr_01b_744d

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c

jr_01b_73f1:
    ld h, e
    ld l, b
    ld h, l
    ld [hl], e
    inc l
    ld bc, $7562
    ld [hl], h
    jr nz, jr_01b_745d

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b

jr_01b_7403:
    jr nz, jr_01b_7478

    ld l, a
    ld [bc], a
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_01b_746f

    ld h, c

jr_01b_740d:
    ld l, [hl]
    jr nz, jr_01b_7483

jr_01b_7410:
    ld [hl], h
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01b_748a

    ld [hl], d
    ld a, c
    ld bc, $6e61

jr_01b_741b:
    jr nz, jr_01b_7492

    ld [hl], b
    ld l, b

jr_01b_741f:
    ld l, c

jr_01b_7420:
    ld l, h
    ld l, h
    jr nz, jr_01b_7494

    ld [hl], l
    ld [hl], h
    ld [hl], h

jr_01b_7427:
    ld bc, $7665
    ld h, l
    ld l, [hl]
    jr nz, jr_01b_7497

    ld h, [hl]
    jr nz, jr_01b_74aa

    ld l, a

jr_01b_7432:
    ld [hl], l
    jr nz, jr_01b_74a2

    ld l, c
    ld [hl], e
    ld [hl], e
    ld l, $03
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01b_74a2

    ld l, h
    ld l, l
    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, jr_01b_74b1

    ld l, l
    ld [hl], b

jr_01b_744a:
    ld l, a
    ld [hl], e
    dec l

jr_01b_744d:
    ld bc, $6973
    ld h, d
    ld l, h
    ld h, l
    jr nz, @+$76

    ld l, a
    jr nz, jr_01b_74bf

    ld h, l
    ld [hl], h
    jr nz, jr_01b_74d0

    ld l, a

jr_01b_745d:
    ld bc, $6874
    ld h, l
    jr nz, jr_01b_74d3

    ld l, c
    ld l, [hl]
    inc l
    jr nz, jr_01b_74ca

    ld [hl], l
    ld [hl], h
    jr nz, jr_01b_74b5

    daa
    ld l, h
    ld l, h

jr_01b_746f:
    ld [bc], a
    ld [hl], h
    ld [hl], d
    ld a, c
    ld l, $20
    ld b, [hl]
    ld l, c
    ld l, [hl]

jr_01b_7478:
    ld h, h
    jr nz, jr_01b_74ef

    ld l, b
    ld h, l
    jr nz, @+$6e

    ld l, c
    ld l, [hl]
    ld h, l
    inc l

jr_01b_7483:
    ld bc, $6e61
    ld h, h
    jr nz, jr_01b_74f1

    ld l, c

jr_01b_748a:
    ld [hl], h
    jr nz, jr_01b_74ee

    jr nz, jr_01b_7502

    ld l, a
    ld h, [hl]
    ld [hl], h

jr_01b_7492:
    jr nz, jr_01b_74f6

jr_01b_7494:
    ld h, c
    ld l, h
    ld l, h

jr_01b_7497:
    jr nz, jr_01b_750d

    ld l, a
    ld bc, $7473
    ld l, a
    ld [hl], b
    jr nz, jr_01b_750f

    ld h, l

jr_01b_74a2:
    ld h, c
    ld [hl], d
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, @+$72

jr_01b_74aa:
    ld l, c
    ld l, [hl]
    ld l, $03
    nop
    ld b, [hl]
    ld l, c

jr_01b_74b1:
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc l

jr_01b_74b5:
    jr nz, @+$65

    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    ld bc, $6e61

jr_01b_74bf:
    jr nz, jr_01b_7522

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld l, $03

jr_01b_74ca:
    nop
    ld c, [hl]
    ld h, l
    ld a, b
    ld [hl], h
    inc l

jr_01b_74d0:
    jr nz, @+$65

    ld l, b

jr_01b_74d3:
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    ld bc, $2061
    ld h, e
    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop
    ld b, e
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    jr nz, jr_01b_755c

    ld l, b
    ld h, l
    jr nz, jr_01b_754e

    ld h, c
    ld l, h

jr_01b_74ee:
    ld l, h

jr_01b_74ef:
    jr nz, jr_01b_7566

jr_01b_74f1:
    ld [hl], b
    ld bc, $6874
    ld h, l

jr_01b_74f6:
    jr nz, jr_01b_7565

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, jr_01b_7574

jr_01b_7502:
    ld l, a
    ld l, h
    ld l, h
    ld bc, $7469
    jr nz, jr_01b_757e

    ld l, a
    jr nz, jr_01b_756e

jr_01b_750d:
    ld [hl], b
    ld [hl], b

jr_01b_750f:
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld l, $02
    ld d, l
    ld [hl], e
    ld h, l
    jr nz, jr_01b_758f

    ld l, b
    ld h, l
    jr nz, jr_01b_756f

    ld d, a
    jr nz, @+$63

jr_01b_7522:
    ld l, [hl]
    ld h, h
    ld bc, $7570
    ld [hl], h
    jr nz, @+$64

    ld h, c
    ld h, e
    ld l, e
    ld [hl], e
    ld [hl], b
    ld l, c
    ld l, [hl]
    jr nz, @+$71

    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, @+$64

    ld h, c
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $4e20
    ld l, a
    ld [hl], a
    jr nz, jr_01b_7595

    jr nz, jr_01b_75b1

jr_01b_754e:
    ld h, c
    ld l, [hl]
    ld bc, $6f68
    ld l, h
    ld h, l
    jr nz, jr_01b_75c6

    ld [hl], l
    ld [hl], h
    jr nz, @+$6b

    ld l, [hl]

jr_01b_755c:
    jr nz, jr_01b_758f

    jr nz, jr_01b_75d0

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, $01

jr_01b_7565:
    ld d, a

jr_01b_7566:
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01b_75df

    ld l, a
    jr nz, @+$76

jr_01b_756e:
    ld [hl], d

jr_01b_756f:
    ld a, c
    ccf
    nop
    ld b, [hl]
    ld l, c

jr_01b_7574:
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, jr_01b_75ed

    ld h, l
    ld l, h
    ld h, l
    ld h, e

jr_01b_757e:
    ld [hl], h
    ld bc, $6e61
    jr nz, jr_01b_75e5

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld l, $03
    nop
    ld c, [hl]

jr_01b_758f:
    ld h, l
    ld a, b
    ld [hl], h
    inc l
    jr nz, jr_01b_75f8

jr_01b_7595:
    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    ld bc, $2061
    ld h, e
    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop
    ld c, a
    ld c, e
    ld l, $20
    ld b, a
    ld l, c
    db $76
    ld h, l
    jr nz, jr_01b_7617

    ld [hl], h
    jr nz, @+$63

jr_01b_75b1:
    jr nz, jr_01b_7627

    ld [hl], d
    ld a, c
    ld l, $03
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01b_761f

    jr nz, jr_01b_7632

    ld h, l
    ld h, c
    ld l, h
    ld bc, $6564

jr_01b_75c6:
    ld l, h
    ld l, c
    ld h, e
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_01b_7641

    ld l, b
    ld l, a

jr_01b_75d0:
    ld [hl], h
    inc l
    ld bc, $6f73
    jr nz, jr_01b_7642

    ld h, l
    ld h, l
    ld [hl], b
    jr nz, jr_01b_7650

    ld [hl], d
    ld a, c
    ld l, c

jr_01b_75df:
    ld l, [hl]
    ld h, a
    ld l, $03
    nop
    ld c, c

jr_01b_75e5:
    ld [hl], h
    jr nz, jr_01b_764c

    ld l, c
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h

jr_01b_75ed:
    jr nz, @+$79

    ld l, a
    ld [hl], d
    ld l, e
    ld bc, $6327
    ld h, c
    ld [hl], l
    ld [hl], e

jr_01b_75f8:
    ld h, l
    jr nz, jr_01b_7674

    ld l, a
    ld [hl], l
    jr nz, jr_01b_7663

    ld l, c
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $7375
    ld h, l
    jr nz, @+$64

    ld h, c
    ld h, e
    ld l, e
    ld [hl], e
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld l, $02
    ld d, b
    ld [hl], d
    ld h, c
    ld h, e

jr_01b_7617:
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_01b_768d

    ld [hl], l
    ld [hl], h

jr_01b_761f:
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $7073
    ld l, c

jr_01b_7627:
    ld l, [hl]
    jr nz, jr_01b_7699

    ld l, [hl]
    jr nz, jr_01b_76a1

    ld l, b
    ld h, l
    jr nz, jr_01b_7693

    ld h, c

jr_01b_7632:
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld d, a
    ld l, a
    ld [hl], a
    ld hl, $5920
    ld l, a
    ld [hl], l
    jr nz, jr_01b_76a5

jr_01b_7641:
    ld l, c

jr_01b_7642:
    ld h, h
    jr nz, jr_01b_76ae

    ld [hl], h
    ld hl, $5901
    ld l, a
    ld [hl], l
    daa

jr_01b_764c:
    db $76
    ld h, l
    jr nz, jr_01b_76b7

jr_01b_7650:
    ld l, a
    ld [hl], h
    jr nz, jr_01b_76bd

    ld [hl], h
    ld hl, $0003
    ld d, l
    ld [hl], e
    ld h, l
    jr nz, jr_01b_76d1

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01b_76d5

    ld [hl], b

jr_01b_7663:
    ld l, a
    ld [hl], h
    jr nz, jr_01b_76db

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld bc, $6f74
    jr nz, jr_01b_76e0

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h

jr_01b_7674:
    ld l, c
    ld h, e
    ld h, l
    jr nz, @+$71

    ld l, [hl]
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01b_76f0

    ld [hl], a
    ld l, [hl]
    ld l, $03
    nop
    ld b, e
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a

jr_01b_768d:
    jr nz, jr_01b_76f0

    ld h, e
    ld [hl], d
    ld l, a
    ld [hl], e

jr_01b_7693:
    ld [hl], e
    jr nz, jr_01b_76f7

    ld bc, $7473

jr_01b_7699:
    ld h, l
    ld h, l
    ld [hl], b
    jr nz, @+$75

    ld l, h
    ld l, a
    ld [hl], b

jr_01b_76a1:
    ld h, l
    jr nz, jr_01b_770d

    ld [hl], e

jr_01b_76a5:
    jr nz, jr_01b_770f

    ld h, c
    ld [hl], d
    ld h, h
    inc l
    ld bc, $6f64

jr_01b_76ae:
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01b_772c

    ld h, c
    jr nz, @+$76

    ld l, b

jr_01b_76b7:
    ld l, c
    ld l, [hl]
    ld l, e
    ccf
    nop
    ld c, c

jr_01b_76bd:
    ld [hl], h
    jr nz, jr_01b_7734

    ld h, c
    ld l, e
    ld h, l
    ld [hl], e
    jr nz, jr_01b_7727

    ld l, [hl]
    jr nz, jr_01b_772e

    ld a, c
    ld h, l
    jr nz, jr_01b_7741

    ld l, a
    ld bc, $6572

jr_01b_76d1:
    ld h, c
    ld h, h
    jr nz, jr_01b_7741

jr_01b_76d5:
    ld l, c
    ld l, [hl]
    ld h, l
    ld [hl], e
    ld l, $2e

jr_01b_76db:
    ld l, $01
    ld e, c
    ld l, a
    ld [hl], l

jr_01b_76e0:
    daa
    db $76
    ld h, l
    jr nz, @+$69

    ld l, a
    ld [hl], h
    jr nz, jr_01b_7752

    ld [hl], h
    ld hl, $0003
    ld d, d
    ld h, l
    ld h, c

jr_01b_76f0:
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_776a

    ld l, b

jr_01b_76f7:
    ld h, l
    jr nz, jr_01b_775c

    ld h, c
    ld l, h
    ld l, h
    daa
    ld [hl], e
    ld bc, $696c
    ld l, [hl]
    ld h, l
    jr nz, jr_01b_776f

    ld [hl], e
    jr nz, jr_01b_777d

    ld l, b
    ld h, l
    jr nz, jr_01b_7778

jr_01b_770d:
    ld h, l
    ld a, c

jr_01b_770f:
    ld bc, $6f74
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01b_778c

    ld l, b
    ld l, a
    ld [hl], h
    ld l, $03
    nop
    ld c, b
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_01b_7798

    ld l, b
    ld l, a

jr_01b_7727:
    ld [hl], h
    ld [hl], e
    jr nz, jr_01b_7799

    ld h, l

jr_01b_772c:
    ld h, l
    ld h, h

jr_01b_772e:
    ld bc, $6562
    ld [hl], h
    ld [hl], h
    ld h, l

jr_01b_7734:
    ld [hl], d
    jr nz, jr_01b_7798

    ld l, c
    ld l, l
    inc l
    jr nz, jr_01b_77af

    ld l, a
    ld bc, $6874
    ld h, l

jr_01b_7741:
    ld a, c
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01b_77bb

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld l, $02
    ld d, e
    ld l, a
    inc l
    jr nz, jr_01b_77b5

jr_01b_7752:
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    jr nz, jr_01b_77c1

    ld [hl], h
    jr nz, jr_01b_77cf

    ld l, a

jr_01b_775c:
    ld bc, $6874
    ld h, l
    jr nz, jr_01b_77c9

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_01b_77c9

    ld l, [hl]
    ld h, h

jr_01b_776a:
    jr nz, jr_01b_77de

    ld l, a
    ld l, h
    ld l, h

jr_01b_776f:
    ld bc, $6977
    ld [hl], h
    ld l, b
    jr nz, @+$76

    ld l, b
    ld h, l

jr_01b_7778:
    jr nz, @+$75

    ld l, h
    ld l, a
    ld [hl], b

jr_01b_777d:
    ld h, l
    ld hl, $0003
    ld b, [hl]
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, jr_01b_77fc

    ld h, l
    ld l, h
    ld h, l

jr_01b_778c:
    ld h, e
    ld [hl], h
    ld bc, $6e61
    jr nz, jr_01b_77f4

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c

jr_01b_7798:
    ld h, e

jr_01b_7799:
    ld l, b
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    ld l, [hl]
    inc l
    jr nz, jr_01b_7807

    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    ld bc, $2061
    ld h, e
    ld l, h
    ld [hl], l

jr_01b_77af:
    ld h, d
    ld l, $03
    nop
    ld e, c
    ld l, a

jr_01b_77b5:
    ld [hl], l
    jr nz, jr_01b_782f

    ld h, c
    ld l, [hl]
    ld [hl], h

jr_01b_77bb:
    jr nz, @+$65

    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c

jr_01b_77c1:
    jr nz, jr_01b_7824

    ld l, [hl]
    ld h, h
    ld bc, $7572
    ld l, [hl]

jr_01b_77c9:
    jr nz, jr_01b_783f

    ld l, a
    jr nz, @+$64

    ld h, l

jr_01b_77cf:
    jr nz, jr_01b_7832

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    ld bc, $6874
    ld h, l
    jr nz, jr_01b_784e

    ld h, c
    ld l, l
    ld h, l

jr_01b_77de:
    ld l, $02
    ld c, c
    jr nz, jr_01b_7857

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, @+$63

    jr nz, @+$37

    ld c, c
    jr nz, @+$79

    ld l, c
    ld [hl], h
    ld l, b
    ld bc, $6f6e

jr_01b_77f4:
    jr nz, jr_01b_7869

    ld [hl], b
    ld l, c
    ld l, [hl]
    jr nz, jr_01b_786e

    ld l, b

jr_01b_77fc:
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    ld bc, $6f77
    ld [hl], d
    ld l, e
    jr nz, jr_01b_787e

jr_01b_7807:
    ld h, l
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld c, c
    jr nz, @+$76

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_01b_785f

    jr nz, @+$65

    ld h, c
    ld l, [hl]
    jr nz, @+$6f

    ld h, c
    ld l, e
    ld h, l
    ld bc, $6874
    ld h, c
    ld [hl], h

jr_01b_7824:
    jr nz, jr_01b_7899

    ld l, h
    ld l, a
    ld [hl], b
    ld h, l
    jr nz, jr_01b_7895

    ld l, [hl]
    jr nz, jr_01b_7860

jr_01b_782f:
    ld bc, $7570

jr_01b_7832:
    ld [hl], h
    ld [hl], h
    ld l, $20
    ld d, a
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, @+$76

    ld l, a
    jr nz, jr_01b_78b3

jr_01b_783f:
    ld [hl], d
    ld a, c
    ccf
    nop
    ld b, [hl]
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, jr_01b_78ae

    ld l, b
    ld l, a
    ld l, a

jr_01b_784e:
    ld [hl], e
    ld h, l
    ld bc, $6e61
    jr nz, jr_01b_78b6

    ld [hl], b
    ld [hl], b

jr_01b_7857:
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld l, $03
    nop

jr_01b_785f:
    ld c, [hl]

jr_01b_7860:
    ld h, l
    ld a, b
    ld [hl], h
    inc l
    jr nz, jr_01b_78c9

    ld l, b
    ld l, a
    ld l, a

jr_01b_7869:
    ld [hl], e
    ld h, l
    ld bc, $6f79

jr_01b_786e:
    ld [hl], l
    ld [hl], d
    jr nz, jr_01b_78d5

    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop
    ld c, a
    ld c, e
    ld l, $20
    ld c, b
    ld l, c

jr_01b_787e:
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01b_78e7

    ld h, c
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld e, c
    ld h, l
    ld h, c
    ld l, b
    inc l
    jr nz, jr_01b_78fb

    ld [hl], h
    daa
    ld [hl], e

jr_01b_7895:
    jr nz, jr_01b_790b

    ld l, a
    ld [hl], l

jr_01b_7899:
    ld h, a
    ld l, b
    ld l, $01
    ld e, c
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, @+$72

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_01b_790a

    ld l, [hl]
    ld h, h
    jr nz, jr_01b_7921

    ld l, b

jr_01b_78ae:
    ld h, l
    ld bc, $696c
    ld l, [hl]

jr_01b_78b3:
    ld h, l
    jr nz, jr_01b_7917

jr_01b_78b6:
    ld [hl], d
    ld h, l
    jr nz, jr_01b_7925

    ld h, l
    ld a, c
    ld l, $03
    nop
    ld c, b
    ld h, l
    ld a, c
    dec l
    ld l, b
    ld h, l
    ld a, c
    ld hl, $4e20

jr_01b_78c9:
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_01b_7945

    ld l, a
    ld [hl], d
    ld l, e
    ld hl, $5401
    ld [hl], d

jr_01b_78d5:
    ld a, c
    jr nz, @+$6b

    ld [hl], h
    jr nz, jr_01b_7952

    ld l, c
    ld [hl], h
    ld l, b
    ld bc, $6f74
    ld [hl], b
    ld [hl], e
    ld [hl], b
    ld l, c
    ld l, [hl]
    inc l

jr_01b_78e7:
    jr nz, jr_01b_795d

    ld l, a
    ld l, a
    ld l, $03
    nop
    ld c, c
    ld h, [hl]
    jr nz, jr_01b_796b

    ld l, a
    ld [hl], l
    jr nz, jr_01b_7959

    ld h, c
    ld l, [hl]
    jr nz, jr_01b_7961

    ld h, l

jr_01b_78fb:
    ld [hl], h
    ld bc, $6562
    ld l, h
    ld l, a
    ld [hl], a
    jr nz, jr_01b_7978

    ld l, b
    ld h, l
    jr nz, jr_01b_7978

    ld l, c
    ld l, [hl]

jr_01b_790a:
    inc l

jr_01b_790b:
    ld bc, $6874
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01b_797b

    ld [hl], d
    ld h, l
    ld h, c

jr_01b_7917:
    ld [hl], h
    ld hl, $0003
    ld d, h
    ld [hl], d
    ld a, c
    jr nz, jr_01b_7981

    ld h, a

jr_01b_7921:
    ld h, c
    ld l, c
    ld l, [hl]
    ccf

jr_01b_7925:
    nop
    ld d, a
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01b_79a0

    ld l, a
    jr nz, jr_01b_79a3

    ld [hl], d
    ld a, c
    jr nz, @+$63

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ccf
    nop
    ld d, a
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01b_79b3

    ld l, a
    ld bc, $7270
    ld h, c
    ld h, e

jr_01b_7945:
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_01b_79b3

    ld h, l
    ld [hl], d
    ld h, l
    ccf
    nop
    ld c, e
    ld h, l

jr_01b_7952:
    ld h, l
    ld [hl], b
    jr nz, @+$72

    ld [hl], d
    ld h, c
    ld h, e

jr_01b_7959:
    ld [hl], h
    ld l, c
    ld h, e
    ld l, c

jr_01b_795d:
    ld l, [hl]
    ld h, a
    ccf
    nop

jr_01b_7961:
    rlca
    jr nz, jr_01b_79d5

    ld [hl], l
    ld l, c
    ld [hl], h
    ld bc, $7270
    ld h, c

jr_01b_796b:
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $03
    nop
    ld c, h
    ld h, l
    ld [hl], e

jr_01b_7978:
    ld [hl], e
    ld l, a
    ld l, [hl]

jr_01b_797b:
    jr nz, @+$65

    ld l, b
    ld h, c
    ld [hl], d
    ld h, c

jr_01b_7981:
    ld h, e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $03
    nop
    ld b, h
    ld l, a
    jr nz, jr_01b_7a05

    ld l, a
    ld [hl], l
    jr nz, jr_01b_79fb

    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_01b_7a0c

    ld l, b
    ld h, c
    ld [hl], h
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01b_7a0c

    ld h, l
    ld h, l

jr_01b_79a0:
    ld h, h
    jr nz, @+$68

jr_01b_79a3:
    ld l, a
    ld [hl], d
    jr nz, jr_01b_7a08

    ld bc, $6f67
    ld l, a
    ld h, h
    jr nz, jr_01b_7a21

    ld l, b
    ld l, a
    ld [hl], h
    ccf
    nop

jr_01b_79b3:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01b_7a20

    ld h, c
    db $76
    ld h, l
    jr nz, jr_01b_7a31

    ld l, a
    jr nz, jr_01b_7a21

    ld h, h
    ld l, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01b_7a2d

    ld l, c
    ld l, l
    jr nz, jr_01b_7a31

    ld h, e
    ld h, e
    ld l, a
    ld [hl], d
    ld h, h

jr_01b_79d5:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01b_7a4e

    ld l, a
    ld bc, $6874
    ld h, l
    jr nz, jr_01b_7a43

    ld h, c
    ld l, h
    ld l, h
    daa
    ld [hl], e
    jr nz, jr_01b_7a54

    ld l, c
    ld h, l
    ld l, $03
    nop
    ld b, h
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01b_7a60

    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h

jr_01b_79fb:
    ld bc, $6e65
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, @+$68

    ld l, a

jr_01b_7a05:
    ld [hl], d
    jr nz, jr_01b_7a69

jr_01b_7a08:
    ld bc, $6f67
    ld l, a

jr_01b_7a0c:
    ld h, h
    jr nz, jr_01b_7a82

    ld l, b
    ld l, a
    ld [hl], h
    ld l, $02
    ld b, c
    jr nz, jr_01b_7a87

    ld l, h
    ld h, c
    ld l, [hl]
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_01b_7a80

    ld [hl], h

jr_01b_7a20:
    ld [hl], h

jr_01b_7a21:
    ld h, c
    ld h, e
    ld l, e
    jr nz, @+$68

    ld l, a
    ld [hl], d
    ld bc, $6165
    ld h, e
    ld l, b

jr_01b_7a2d:
    jr nz, jr_01b_7a97

    ld l, a
    ld l, h

jr_01b_7a31:
    ld h, l
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, @+$69

    ld l, a
    ld l, a
    ld h, h
    ld bc, $6873
    ld l, a
    ld [hl], h
    ld [hl], e
    jr nz, jr_01b_7aa4

jr_01b_7a43:
    ld [hl], d
    ld h, l
    jr nz, jr_01b_7ab2

    ld h, l
    ld a, c
    ld hl, $0003
    ld d, e
    ld l, a

jr_01b_7a4e:
    ld l, l
    ld h, l
    ld [hl], h
    ld l, c
    ld l, l
    ld h, l

jr_01b_7a54:
    ld [hl], e
    inc l
    jr nz, jr_01b_7ad1

    ld l, a
    ld [hl], l
    ld bc, $6163
    ld l, [hl]
    daa
    ld [hl], h

jr_01b_7a60:
    jr nz, @+$77

    ld [hl], e
    ld h, l
    jr nz, @+$63

    jr nz, jr_01b_7a99

    ld d, a

jr_01b_7a69:
    ld bc, $6327
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_01b_7ae1

    ld h, [hl]
    jr nz, jr_01b_7ae9

    ld [hl], d
    ld h, l
    ld h, l
    ld [hl], e
    ld [bc], a
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01b_7ae7

    ld h, c

jr_01b_7a80:
    ld a, d
    ld h, c

jr_01b_7a82:
    ld [hl], d
    ld h, h
    ld [hl], e
    ld l, $20

jr_01b_7a87:
    ld e, c
    ld l, a
    ld [hl], l
    ld bc, $756a
    ld [hl], e
    ld [hl], h
    jr nz, jr_01b_7af9

    ld h, c
    db $76
    ld h, l
    jr nz, jr_01b_7b0a

    ld l, a

jr_01b_7a97:
    jr nz, jr_01b_7afd

jr_01b_7a99:
    ld l, a
    jr nz, jr_01b_7b05

    ld [hl], h
    ld bc, $6977
    ld [hl], h
    ld l, b
    jr nz, jr_01b_7b05

jr_01b_7aa4:
    jr nz, jr_01b_7b19

    ld l, b
    ld l, a
    ld [hl], d
    ld [hl], h
    jr nz, jr_01b_7b0f

    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop

jr_01b_7ab2:
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01b_7b19

    jr nz, jr_01b_7b21

    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_01b_7b28

    ld h, h
    ld h, l
    ld h, c
    jr nz, jr_01b_7b38

    ld l, a
    ld bc, $656c
    ld h, c
    ld [hl], d
    ld l, [hl]
    jr nz, jr_01b_7b41

    ld h, l
    ld [hl], d
    ld l, l
    ld [hl], e

jr_01b_7ad1:
    jr nz, @+$68

    ld l, a
    ld [hl], d
    ld bc, $6964
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01b_7b54

jr_01b_7ae1:
    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e
    ld l, $02

jr_01b_7ae7:
    ld b, [hl]
    ld l, a

jr_01b_7ae9:
    ld [hl], d
    jr nz, @+$63

    jr nz, @+$74

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld l, c
    ld h, l
    inc l
    jr nz, jr_01b_7b5a

    ld [hl], l
    ld [hl], d

jr_01b_7af9:
    db $76
    ld l, c
    ld l, [hl]
    ld h, a

jr_01b_7afd:
    ld bc, $656c
    ld h, [hl]
    ld [hl], h
    jr nz, jr_01b_7b6d

    ld [hl], e

jr_01b_7b05:
    jr nz, jr_01b_7b68

    jr nz, @+$6a

    ld l, a

jr_01b_7b0a:
    ld l, a
    ld l, e
    inc l
    jr nz, jr_01b_7b86

jr_01b_7b0f:
    ld l, b
    ld l, c
    ld l, h
    ld h, l
    ld bc, $6972
    ld h, a
    ld l, b
    ld [hl], h

jr_01b_7b19:
    jr nz, jr_01b_7b84

    ld [hl], e
    jr nz, @+$63

    jr nz, jr_01b_7b93

    ld l, h

jr_01b_7b21:
    ld l, c
    ld h, e
    ld h, l
    ld l, $03
    nop
    ld e, c

jr_01b_7b28:
    ld l, a
    ld [hl], l
    jr nz, jr_01b_7ba3

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01b_7ba5

    ld l, a
    jr nz, jr_01b_7b98

    ld [hl], d
    ld l, c
    db $76
    ld h, l

jr_01b_7b38:
    ld bc, $6874
    ld h, l
    jr nz, jr_01b_7ba0

    ld h, c
    ld l, h
    ld l, h

jr_01b_7b41:
    jr nz, jr_01b_7ba9

    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ccf
    nop
    push af
    ld a, $00
    call Call_01b_7b5b
    pop af
    ret


    push af

jr_01b_7b54:
    ld a, $01
    call Call_01b_7b5b
    pop af

jr_01b_7b5a:
    ret


Call_01b_7b5b:
    push bc
    push de
    push hl
    ld hl, $4004
    sla e
    rl d
    add hl, de
    ld e, [hl]
    inc hl

jr_01b_7b68:
    ld d, [hl]
    ld hl, $423e
    add hl, de

jr_01b_7b6d:
    or a
    jr nz, jr_01b_7b78

    ld de, $c600
    ld bc, $0180
    jr jr_01b_7b7e

jr_01b_7b78:
    ld de, $d880
    ld bc, $0020

jr_01b_7b7e:
    call MemCopy
    pop hl
    pop de
    pop bc

jr_01b_7b84:
    ret


    rst $38

jr_01b_7b86:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01b_7b93:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01b_7b98:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01b_7ba0:
    rst $38
    rst $38
    rst $38

jr_01b_7ba3:
    rst $38
    rst $38

jr_01b_7ba5:
    rst $38
    rst $38
    rst $38
    rst $38

jr_01b_7ba9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
