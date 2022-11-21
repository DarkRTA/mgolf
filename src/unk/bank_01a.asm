INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01a", ROMX[$4000], BANK[$1a]

    db $20, $7b

    jr z, jr_01a_407f

    nop
    nop
    ld e, e
    nop
    sub d
    nop
    cp [hl]
    nop
    ld [c], a
    nop
    inc d
    ld bc, HeaderTitle
    ld h, h
    ld bc, $0194
    jp nz, $f801

    ld bc, $0226
    ld d, e
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    and [hl]
    ld [bc], a
    push de
    ld [bc], a
    db $f4
    ld [bc], a
    ld d, d
    inc bc
    adc h
    inc bc
    cp b
    inc bc
    inc bc
    inc b
    ld e, $04
    ld c, a
    inc b
    ld a, d
    inc b
    xor h
    inc b
    ret nc

    inc b
    ld [$2304], a
    dec b
    adc [hl]
    dec b
    pop bc
    dec b
    ld sp, hl
    dec b
    ld e, h
    ld b, $bf
    ld b, $29
    rlca
    add a
    rlca
    cp c
    rlca
    ld [hl+], a
    ld [$0890], sp
    jp nz, $f908

    ld [$0959], sp
    xor h
    add hl, bc
    ldh [$09], a
    dec de
    ld a, [bc]
    ld a, c
    ld a, [bc]
    db $dd
    ld a, [bc]
    ld c, $0b
    dec [hl]
    dec bc
    ld c, b
    dec bc
    ld a, e
    dec bc
    and d
    dec bc
    call $f90b
    dec bc
    inc hl
    inc c
    ld d, b
    inc c
    ld a, b
    inc c
    and l
    inc c
    call z, Call_000_040c
    dec c
    ld a, [hl-]
    dec c
    ld l, l
    dec c
    sub a

jr_01a_407f:
    dec c
    jp $d00d


    dec c
    nop
    ld c, $34
    ld c, $87
    ld c, $db
    ld c, $31
    rrca

    db $88, $0f, $ac, $0f, $c5, $0f, $d4, $0f, $ee, $0f, $05, $10, $19, $10

    ld c, a
    db $10
    ld h, d
    db $10
    ld [hl], e
    db $10
    adc e
    db $10
    sbc d
    db $10
    xor c
    db $10
    or h
    db $10
    adc $10
    rst $10
    db $10
    ld [c], a
    db $10
    di
    db $10
    ld b, $11
    dec h
    ld de, $1198
    db $d3
    ld de, $11e1
    dec bc
    ld [de], a
    ld h, [hl]
    ld [de], a

jr_01a_40c0:
    cp a
    ld [de], a
    ret c

    ld [de], a
    ld b, b
    inc de
    ld a, c
    inc de
    sub h
    inc de
    push hl
    inc de
    ld b, d
    inc d

jr_01a_40ce:
    pop bc
    inc d
    ld [c], a
    inc d
    ld b, c
    dec d
    ld [hl], d
    dec d
    add c
    dec d
    jp nc, Jump_000_1115

    ld d, $36
    ld d, $62
    ld d, $d1
    ld d, $09
    rla
    inc h
    rla
    sbc b
    rla
    cp $17
    db $76
    jr @-$56

    jr jr_01a_4102

    add hl, de
    ld c, b
    add hl, de
    ld e, h
    add hl, de
    xor h
    add hl, de
    dec c
    ld a, [de]
    jr nc, jr_01a_4114

    ld l, b
    ld a, [de]
    push de
    ld a, [de]
    ld [$171b], sp
    dec de

jr_01a_4102:
    ld b, e
    dec de
    ld [hl], l
    dec de
    db $d3
    dec de
    db $10
    inc e
    ld c, b
    inc e
    xor a
    inc e
    ld hl, sp+$1c
    ld d, [hl]
    dec e
    ld a, d
    dec e

jr_01a_4114:
    xor h
    dec e
    ld [bc], a
    ld e, $5d
    ld e, $83
    ld e, $b6
    ld e, $08
    rra
    ld h, [hl]
    rra
    or l
    rra
    rst $18
    rra
    ld a, $20
    ld [hl], c
    jr nz, jr_01a_40c0

    jr nz, jr_01a_40ce

    jr nz, @-$4b

    jr nz, jr_01a_4102

    jr nz, @-$01

    jr nz, jr_01a_4156

    ld hl, $2156
    and c
    ld hl, $21d3
    dec b

jr_01a_413d:
    ld [hl+], a
    ld c, c
    ld [hl+], a
    ld a, c
    ld [hl+], a
    xor [hl]
    ld [hl+], a
    adc $22
    rst $38
    ld [hl+], a
    ld sp, $5523
    inc hl
    adc d
    inc hl
    or b
    inc hl
    call nc, Call_000_0623
    inc h
    dec hl
    inc h

jr_01a_4156:
    dec [hl]
    inc h
    ld d, b
    inc h
    ld [hl], a
    inc h
    sbc a
    inc h
    push de
    inc h
    cp $24
    ld h, $25
    ld e, e
    dec h
    sub b
    dec h
    pop bc
    dec h
    rst $28
    dec h
    inc c
    ld h, $30
    ld h, $5e
    ld h, $82
    ld h, $ac
    ld h, $e4

jr_01a_4177:
    ld h, $16
    daa
    ld a, b
    daa
    pop de
    daa
    ld d, $28
    ld l, [hl]
    jr z, jr_01a_413d

jr_01a_4183:
    jr z, jr_01a_4177

    jr z, jr_01a_41df

    add hl, hl
    sub b
    add hl, hl
    db $ed
    add hl, hl
    inc hl
    ld a, [hl+]
    ld l, a
    ld a, [hl+]
    ret z

    ld a, [hl+]
    nop
    dec hl
    ld b, [hl]
    dec hl
    ld a, b

jr_01a_4197:
    dec hl
    xor e
    dec hl
    add hl, bc
    inc l
    ld b, [hl]
    inc l
    xor a
    inc l
    jp hl


    inc l
    rra
    dec l
    adc h
    dec l
    jp $f32d


    dec l
    dec l
    ld l, $66
    ld l, $c2
    ld l, $21
    cpl
    ld e, c
    cpl
    sub e

jr_01a_41b5:
    cpl
    pop bc
    cpl
    ld a, [$4e2f]
    jr nc, jr_01a_4235

    jr nc, jr_01a_4197

    jr nc, @+$08

    ld sp, $3150
    and e
    ld sp, $31d0
    nop
    ld [hl-], a
    ccf
    ld [hl-], a
    ld a, d
    ld [hl-], a
    xor b
    ld [hl-], a
    db $db
    ld [hl-], a
    ld l, $33
    ld h, h
    inc sp
    sbc b
    inc sp
    db $fd
    inc sp
    ld l, c
    inc [hl]
    ret nz

    inc [hl]
    ld a, [hl+]

jr_01a_41df:
    dec [hl]
    inc a
    dec [hl]
    xor c
    dec [hl]

jr_01a_41e4:
    dec c
    ld [hl], $5f
    ld [hl], $92
    ld [hl], $f6
    ld [hl], $1f
    scf
    ld l, l
    scf
    ret nz

    scf
    db $f4
    scf
    ld d, d
    jr c, jr_01a_4183

    jr c, jr_01a_41b5

    jr c, jr_01a_41e4

    jr c, @+$09

    inc l
    jr nz, jr_01a_4277

    ld l, b
    ld h, l
    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, @+$69

    ld l, a
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, @+$6a

    ld h, l
    ld h, c
    ld [hl], d
    ld bc, $666f
    jr nz, jr_01a_4292

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01a_4294

    ld l, c
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    inc l
    ld [bc], a
    ld a, c
    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, jr_01a_4290

    ld h, l
    jr nz, jr_01a_4292

    jr nz, jr_01a_429b

    ld h, l
    ld [hl], d

jr_01a_4235:
    ld l, a
    ld hl, $5401
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01a_42a2

    ld h, c
    ld a, c
    jr nz, jr_01a_42b9

    ld l, c
    ld l, h
    ld l, h
    ld bc, $6f63
    ld l, l
    ld h, l
    jr nz, jr_01a_42c2

    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_01a_42c4

    ld l, a
    ld l, a
    ld l, [hl]
    ld l, $03
    nop
    ld b, l
    db $76
    ld h, l
    ld l, [hl]
    jr nz, @+$63

    jr nz, jr_01a_42cf

    ld [hl], d
    ld l, a
    jr nz, jr_01a_42cf

    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_01a_42d5

    ld h, l
    ld bc, $6163
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$64

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_01a_42ea

    ld l, b

jr_01a_4277:
    ld h, l
    jr nz, jr_01a_42e9

    ld l, [hl]
    ld h, l
    ld bc, $6877
    ld l, a
    jr nz, jr_01a_42e4

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, @+$4f

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld hl, $0003
    ld d, b
    ld h, l

jr_01a_4290:
    ld [hl], d
    ld l, b

jr_01a_4292:
    ld h, c
    ld [hl], b

jr_01a_4294:
    ld [hl], e
    jr nz, jr_01a_4310

    ld l, a
    ld [hl], l
    daa
    ld l, h

jr_01a_429b:
    ld l, h
    ld bc, $6562
    ld h, e
    ld l, a
    ld l, l

jr_01a_42a2:
    ld h, l
    jr nz, jr_01a_430a

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
    jr nz, @+$6b

    ld h, h
    ld l, a
    ld l, h
    ld l, $03

jr_01a_42b9:
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01a_4323

    ld l, c
    ld [hl], d
    ld h, l

jr_01a_42c2:
    ld h, e
    ld [hl], h

jr_01a_42c4:
    ld l, a
    ld [hl], d
    daa
    ld [hl], e
    ld bc, $6f63
    ld l, a
    ld l, e
    ld h, d
    ld l, a

jr_01a_42cf:
    ld l, a
    ld l, e
    ld [hl], e
    ld bc, $7261

jr_01a_42d5:
    ld h, l
    jr nz, @+$6a

    ld h, l
    ld [hl], d
    ld h, l
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01a_4347

    ld l, c

jr_01a_42e4:
    ld [hl], d
    ld h, l
    ld h, e
    ld [hl], h
    ld l, a

jr_01a_42e9:
    ld [hl], d

jr_01a_42ea:
    daa
    ld [hl], e
    ld bc, $6f6d
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld l, c
    ld l, [hl]
    jr nz, jr_01a_435a

    ld l, h
    ld l, c
    ld l, l
    ld h, d
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6f62
    ld l, a
    ld l, e
    ld [hl], e
    jr nz, jr_01a_4367

    ld [hl], d
    ld h, l
    jr nz, jr_01a_4372

jr_01a_430a:
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $01
    nop

jr_01a_4310:
    rlca
    jr nz, jr_01a_4387

    ld l, b
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h
    ld bc, $666f
    jr nz, @+$63

    jr nz, jr_01a_4390

    ld h, l
    ld l, [hl]
    ld h, h

jr_01a_4323:
    ld [hl], l
    ld l, h
    ld [hl], l
    ld l, l
    ld bc, $7773
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $0003
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, @+$63

    jr nz, jr_01a_439d

    ld l, a
    ld l, a
    ld l, e
    ld a, [hl-]
    ld bc, $5422
    ld l, b
    ld h, l
    jr nz, @+$49

    ld [hl], d

jr_01a_4347:
    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_01a_4393

    ld l, a
    ld l, h
    ld h, [hl]
    ld bc, $6e45
    ld h, e
    ld a, c
    ld h, e
    ld l, h
    ld l, a
    ld [hl], b
    ld h, l
    ld h, h

jr_01a_435a:
    ld l, c
    ld h, c
    ld l, $22
    inc bc
    nop
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e

jr_01a_4367:
    jr nz, jr_01a_43ca

    jr nz, jr_01a_43cd

    ld l, a
    ld l, a
    ld l, e
    ld a, [hl-]
    ld bc, $4422

jr_01a_4372:
    ld l, c
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld h, c
    ld [hl], d
    ld a, c
    jr nz, jr_01a_43ec

    ld h, [hl]
    ld bc, $6f43
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    jr nz, jr_01a_43d3

jr_01a_4387:
    ld h, c
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], h
    ld l, $22
    inc bc
    nop

jr_01a_4390:
    ld d, h
    ld l, b
    ld h, l

jr_01a_4393:
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_01a_43fa

    jr nz, jr_01a_43fd

    ld l, a
    ld l, a

jr_01a_439d:
    ld l, e
    ld a, [hl-]
    ld bc, $4322
    ld l, a
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    ld [hl], h
    ld h, l
    ld bc, $614d
    ld l, [hl]
    ld h, c
    ld h, a
    ld h, l
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01a_43fd

    ld [hl], l
    ld l, c
    ld h, h
    ld h, l
    ld l, $22
    inc bc
    nop
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_01a_4428

    jr nz, jr_01a_442b

    ld l, a

jr_01a_43ca:
    ld l, a
    ld l, e
    ld a, [hl-]

jr_01a_43cd:
    ld bc, $4822
    ld l, c
    ld [hl], e
    ld [hl], h

jr_01a_43d3:
    ld l, a
    ld [hl], d
    ld a, c
    jr nz, jr_01a_4447

    ld h, [hl]
    jr nz, jr_01a_4428

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_01a_443b

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c

jr_01a_43ec:
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $22
    inc bc
    nop
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa

jr_01a_43fa:
    ld [hl], e
    jr nz, jr_01a_445e

jr_01a_43fd:
    jr nz, jr_01a_4461

    ld l, a
    ld l, a
    ld l, e
    ld a, [hl-]
    ld bc, $4222
    ld [hl], d
    ld h, l
    ld h, c
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_4483

    ld l, b
    ld h, l
    ld bc, $3031
    jr nc, jr_01a_4436

    ld b, d
    ld h, c
    ld [hl], d
    ld [hl], d
    ld l, c
    ld h, l
    ld [hl], d
    ld [hl], e
    ld hl, $0322
    nop
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa

jr_01a_4428:
    ld [hl], e
    jr nz, jr_01a_448c

jr_01a_442b:
    jr nz, jr_01a_448f

    ld l, a
    ld l, a
    ld l, e
    ld a, [hl-]
    ld bc, $4722
    ld l, a
    ld l, h

jr_01a_4436:
    ld h, [hl]
    jr nz, @+$54

    ld [hl], l
    ld l, h

jr_01a_443b:
    ld h, l
    ld [hl], e
    ld bc, $6f66
    ld [hl], d
    jr nz, jr_01a_4485

    ld h, l
    ld h, a
    ld l, c
    ld l, [hl]

jr_01a_4447:
    ld l, [hl]
    ld h, l
    ld [hl], d
    ld [hl], e
    ld l, $22
    inc bc
    nop
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_01a_44b9

    jr nz, jr_01a_44bc

    ld l, a
    ld l, a
    ld l, e
    ld a, [hl-]

jr_01a_445e:
    ld bc, $4d22

jr_01a_4461:
    ld l, a
    ld h, h
    ld h, l
    ld [hl], d
    ld l, [hl]
    jr nz, jr_01a_44af

    ld l, a
    ld l, h
    ld h, [hl]
    ld bc, $7250
    ld l, c
    ld l, [hl]
    ld h, e
    ld l, c
    ld [hl], b
    ld l, h
    ld h, l
    ld [hl], e
    ld l, $22
    inc bc
    nop
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_01a_44e4

jr_01a_4483:
    jr nz, jr_01a_44e7

jr_01a_4485:
    ld l, a
    ld l, a
    ld l, e
    ld a, [hl-]
    ld bc, $5222

jr_01a_448c:
    ld l, a
    ld h, c
    ld h, h

jr_01a_448f:
    jr nz, jr_01a_4505

    ld l, a
    jr nz, jr_01a_4508

    ld l, b
    ld h, l
    ld bc, $6953
    ld l, [hl]
    ld h, a
    ld l, h
    ld h, l
    ld [hl], e
    ld l, $22
    inc bc
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$63

    jr nz, jr_01a_451a

    ld l, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d

jr_01a_44af:
    ld h, l
    jr nz, @+$71

    ld h, [hl]
    ld bc, $7665
    ld h, l
    ld [hl], d
    ld a, c

jr_01a_44b9:
    jr nz, jr_01a_4522

    ld l, a

jr_01a_44bc:
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d
    daa
    ld [hl], e
    ld bc, $6469
    ld l, a
    ld l, h
    inc l
    jr nz, jr_01a_4517

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, $03
    nop
    ld c, l
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_01a_451c

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6944
    ld [hl], d
    ld h, l
    ld h, e
    ld [hl], h
    ld l, a

jr_01a_44e4:
    ld [hl], d
    daa
    ld [hl], e

jr_01a_44e7:
    jr nz, jr_01a_4538

    ld h, [hl]
    ld h, [hl]
    ld l, c
    ld h, e
    ld h, l
    inc bc
    nop
    ld c, c
    ld h, [hl]
    jr nz, jr_01a_456d

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01a_4565

    ld h, l
    db $76
    ld h, l
    ld l, h
    ld bc, $6e69
    ld h, e
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], e

jr_01a_4505:
    ld h, l
    ld [hl], e
    inc l

jr_01a_4508:
    jr nz, jr_01a_456f

    ld a, b
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld h, h
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01a_457a

    ld [hl], d

jr_01a_4517:
    ld l, c
    db $76
    ld h, l

jr_01a_451a:
    jr nz, jr_01a_4582

jr_01a_451c:
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld l, $02

jr_01a_4522:
    ld c, h
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_458c

    ld [hl], d
    ld l, c
    db $76
    ld h, l
    ld [hl], e
    jr nz, jr_01a_4590

    ld [hl], d
    ld h, l
    jr nz, jr_01a_45a2

    ld l, [hl]
    ld h, l
    jr nz, jr_01a_45a6

    ld h, [hl]

jr_01a_4538:
    ld bc, $6f67
    ld l, h
    ld h, [hl]
    daa
    ld [hl], e
    jr nz, jr_01a_45ae

    ld h, c
    ld l, [hl]
    ld a, c
    jr nz, jr_01a_45a9

    ld l, b
    ld h, c
    ld [hl], d
    ld l, l
    ld [hl], e
    ld l, $03
    nop
    ld c, l
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld l, c
    ld l, [hl]
    jr nz, jr_01a_45ba

    ld h, c
    ld l, h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, $01
    ld b, h
    ld [hl], d
    ld l, c
    db $76
    ld h, l

jr_01a_4565:
    jr nz, jr_01a_45d0

    ld [hl], e
    jr nz, jr_01a_45d3

    ld l, l
    ld [hl], b
    ld l, a

jr_01a_456d:
    ld [hl], d
    ld [hl], h

jr_01a_456f:
    ld h, c
    ld l, [hl]
    ld [hl], h
    inc l
    ld bc, $7562
    ld [hl], h
    jr nz, @+$75

    ld l, a

jr_01a_457a:
    jr nz, jr_01a_45e5

    ld [hl], e
    jr nz, jr_01a_45e2

    ld l, a
    ld l, [hl]
    ld [hl], h

jr_01a_4582:
    ld [hl], d
    ld l, a
    ld l, h
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01a_4602

    ld l, c

jr_01a_458c:
    ld h, h
    ld h, l
    jr nz, @+$6f

jr_01a_4590:
    ld h, l
    ld h, l
    ld [hl], h
    jr nz, jr_01a_45f6

    ld [hl], d
    ld h, l
    ld h, c
    ld bc, $656d
    ld h, c
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01a_4606

    ld h, l
    ld [hl], a

jr_01a_45a2:
    ld h, l
    ld [hl], d
    jr nz, @+$6f

jr_01a_45a6:
    ld l, c
    ld [hl], e
    ld [hl], e

jr_01a_45a9:
    ld h, l
    ld h, h
    ld bc, $6873

jr_01a_45ae:
    ld l, a
    ld [hl], h
    ld [hl], e
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01a_4620

    ld l, a

jr_01a_45ba:
    ld l, h
    ld h, [hl]
    jr nz, jr_01a_462b

    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    inc l
    ld bc, $614d
    ld [hl], d
    ld l, c
    ld l, a
    inc l
    jr nz, @+$6b

    ld [hl], e
    jr nz, @+$6f

jr_01a_45d0:
    ld a, c
    jr nz, jr_01a_463c

jr_01a_45d3:
    ld h, h
    ld l, a
    ld l, h
    ld hl, $4d02
    ld a, c
    jr nz, @+$66

    ld [hl], d
    ld h, l
    ld h, c
    ld l, l
    jr nz, jr_01a_464b

jr_01a_45e2:
    ld [hl], e
    jr nz, jr_01a_4659

jr_01a_45e5:
    ld l, a
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    ld bc, $2061
    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_01a_466c

    ld l, c

jr_01a_45f6:
    ld [hl], h
    ld l, b
    jr nz, @+$6a

    ld l, c
    ld l, l
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, c

jr_01a_4602:
    ld [hl], h
    jr nz, jr_01a_4678

    ld [hl], h

jr_01a_4606:
    ld [hl], l
    ld [hl], b
    ld l, c
    ld h, h
    ld bc, $7562
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    ld hl, $4820
    ld l, l
    ld [hl], b
    ld l, b
    ld hl, $0003
    ld c, a
    ld l, [hl]
    jr nz, @+$63

    jr nz, jr_01a_4684

jr_01a_4620:
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_01a_468e

    ld [hl], h
    daa
    ld [hl], e
    ld bc, $4e22

jr_01a_462b:
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_01a_4683

    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    ld hl, $0122
    ld l, $2e
    ld l, $6f
    ld [hl], d

jr_01a_463c:
    jr nz, jr_01a_46b1

    ld l, a
    jr nz, @+$76

    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_01a_46b9

    ld h, c
    ld a, c
    ld l, $03
    nop

jr_01a_464b:
    ld d, h
    ld l, b
    ld [hl], d
    ld h, l
    ld h, l
    jr nz, jr_01a_46c2

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld [hl], e
    ld bc, $6961

jr_01a_4659:
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01a_46ce

    ld h, c
    ld [hl], d
    ld hl, $2e01
    ld l, $2e
    ld l, a
    ld [hl], d
    jr nz, @+$75

    ld l, a
    jr nz, jr_01a_46e0

jr_01a_466c:
    ld l, b
    ld h, l
    ld a, c
    jr nz, @+$75

    ld h, c
    ld a, c
    ld l, $03
    nop
    ld c, c
    daa

jr_01a_4678:
    ld l, l
    jr nz, @+$6c

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01a_46e1

    jr nz, jr_01a_46f0

    ld l, a

jr_01a_4683:
    db $76

jr_01a_4684:
    ld l, c
    ld h, e
    ld h, l
    ld bc, $6f67
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d

jr_01a_468e:
    ld l, $20
    ld c, c
    jr nz, jr_01a_46f7

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $6e6b
    ld l, a
    ld [hl], a
    jr nz, jr_01a_46ff

    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $03
    nop
    ld c, c
    daa
    ld l, l
    jr nz, jr_01a_470e

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h

jr_01a_46b1:
    jr nz, @+$76

    ld l, a
    ld bc, $6863
    ld h, c
    ld l, [hl]

jr_01a_46b9:
    ld h, a
    ld h, l
    ld l, $20
    ld b, c
    ld [hl], e
    ld l, e
    jr nz, jr_01a_472f

jr_01a_46c2:
    ld h, l
    ld bc, $616c
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $03
    nop
    ld c, h
    ld b, l

jr_01a_46ce:
    ld b, c
    ld d, [hl]
    ld b, l
    jr nz, jr_01a_4720

    ld b, l
    jr nz, jr_01a_4717

    ld c, h
    ld c, a
    ld c, [hl]
    ld b, l
    ld hl, $4801
    ld h, l
    ld h, l
    dec l

jr_01a_46e0:
    ld a, c

jr_01a_46e1:
    ld h, c
    ld l, b
    ld hl, $0003
    rlca
    jr nz, @+$76

    ld l, a
    ld l, a
    ld l, e
    ld bc, $3635
    ld [hl-], a

jr_01a_46f0:
    jr nz, jr_01a_4762

    ld l, a
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld [hl], e

jr_01a_46f7:
    jr nz, jr_01a_4768

    ld h, [hl]
    ld bc, $6164
    ld l, l
    ld h, c

jr_01a_46ff:
    ld h, a
    ld h, l
    ld hl, $2e02
    ld l, $2e
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$6a

jr_01a_470e:
    ld l, a
    ld [hl], a
    jr nz, jr_01a_4774

    ld h, c
    ld h, h
    ld bc, $7469

jr_01a_4717:
    jr nz, jr_01a_4781

    ld [hl], l
    ld [hl], d
    ld [hl], h
    ld l, $03
    nop
    ld c, l

jr_01a_4720:
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    daa
    ld [hl], e
    jr nz, jr_01a_479c

    ld l, b
    ld h, l
    jr nz, @+$6a

    ld h, l
    ld [hl], d
    ld l, a

jr_01a_472f:
    ld bc, $666f
    jr nz, jr_01a_47a8

    ld l, b
    ld h, l
    jr nz, @+$69

    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_01a_47b4

    ld l, a
    ld [hl], d
    ld l, h
    ld h, h
    inc l
    ld bc, $7562
    ld [hl], h
    jr nz, jr_01a_4798

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    inc l
    jr nz, jr_01a_4791

    ld l, a
    ld [hl], a
    ld [hl], e
    ld h, l
    ld [hl], d
    inc l
    ld [bc], a
    ld e, c
    ld l, a
    ld [hl], e
    ld l, b
    ld l, c
    inc l
    jr nz, jr_01a_47a2

    ld c, e
    inc l
    jr nz, jr_01a_47a4

jr_01a_4762:
    ld h, c
    ld h, d
    ld a, c
    ld bc, $614d

jr_01a_4768:
    ld [hl], d
    ld l, c
    ld l, a
    jr nz, jr_01a_47ce

    ld l, [hl]
    ld h, h
    jr nz, jr_01a_47bd

    ld [hl], l
    ld l, c
    ld h, a

jr_01a_4774:
    ld l, c
    ld bc, $7261
    ld h, l
    jr nz, jr_01a_47dc

    ld l, h
    ld l, h
    jr nz, jr_01a_47e6

    ld l, a
    ld l, a

jr_01a_4781:
    ld h, h
    inc l
    jr nz, jr_01a_47f9

    ld l, a
    ld l, a
    ld l, $03
    nop
    ld d, a
    ld l, b
    ld l, a
    jr nz, jr_01a_47f2

    ld h, c
    ld [hl], d

jr_01a_4791:
    ld h, l
    ld [hl], e
    jr nz, jr_01a_47f6

    ld h, d
    ld l, a
    ld [hl], l

jr_01a_4798:
    ld [hl], h
    ld bc, $6961

jr_01a_479c:
    ld l, l
    ccf
    jr nz, @+$4b

    jr nz, jr_01a_480c

jr_01a_47a2:
    ld [hl], l
    ld [hl], e

jr_01a_47a4:
    ld [hl], h
    jr nz, jr_01a_4813

    ld l, a

jr_01a_47a8:
    db $76
    ld h, l
    ld bc, $6f74
    jr nz, jr_01a_4817

    ld h, c
    ld l, l
    ld l, l
    ld h, l
    ld [hl], d

jr_01a_47b4:
    jr nz, @+$64

    ld h, c
    ld l, h
    ld l, h
    ld [hl], e
    ld hl, $0003

jr_01a_47bd:
    ld d, e
    ld l, b
    ld l, a
    ld l, a
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_482d

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01a_4840

    ld l, b
    ld h, l

jr_01a_47ce:
    ld bc, $6f72
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_01a_483f

    ld [hl], e
    jr nz, jr_01a_483e

    ld h, c
    ld [hl], e
    ld a, c

jr_01a_47dc:
    jr nz, jr_01a_4855

    ld l, c
    ld [hl], h
    ld l, b
    ld bc, $2061
    ld [hl], a
    ld l, c

jr_01a_47e6:
    ld h, h
    ld h, l
    jr nz, @+$6f

    ld h, l
    ld h, l
    ld [hl], h
    jr nz, jr_01a_4850

    ld [hl], d
    ld h, l
    ld h, c

jr_01a_47f2:
    ld l, $03
    nop
    ld c, c

jr_01a_47f6:
    jr nz, jr_01a_486f

    ld l, c

jr_01a_47f9:
    ld [hl], e
    ld l, b
    jr nz, jr_01a_4846

    jr nz, jr_01a_4862

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_01a_486c

    ld h, l
    ld [hl], h
    ld bc, $2061
    ld l, b
    ld l, c

jr_01a_480c:
    ld h, a
    ld l, b
    inc l
    jr nz, @+$75

    ld l, a
    ld h, c

jr_01a_4813:
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a

jr_01a_4817:
    ld bc, $6873
    ld l, a
    ld [hl], h
    jr nz, jr_01a_488d

    ld l, [hl]
    jr nz, jr_01a_4882

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld [bc], a
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b

jr_01a_482d:
    jr nz, jr_01a_489c

    ld a, c
    jr nz, jr_01a_4885

    ld d, a
    ld l, $20
    ld c, c
    ld bc, $6e6b
    ld l, a
    ld [hl], a
    inc l
    jr nz, jr_01a_4887

jr_01a_483e:
    daa

jr_01a_483f:
    ld l, h

jr_01a_4840:
    ld l, h
    jr nz, jr_01a_48b5

    ld h, c
    ld l, c
    ld [hl], e

jr_01a_4846:
    ld h, l
    ld bc, $796d
    jr nz, jr_01a_48c0

    ld [hl], d
    ld h, c
    ld l, d
    ld h, l

jr_01a_4850:
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c

jr_01a_4855:
    ld hl, $0003
    ld c, c
    ld h, [hl]
    jr nz, jr_01a_48d5

    ld l, a
    ld [hl], l
    jr nz, @+$71

    ld l, [hl]
    ld l, h

jr_01a_4862:
    ld a, c
    jr nz, jr_01a_48cb

    ld l, a
    ld h, e
    ld [hl], l
    ld [hl], e
    ld bc, $6e6f

jr_01a_486c:
    jr nz, @+$6b

    ld l, [hl]

jr_01a_486f:
    ld h, e
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01a_48e2

    ld [hl], d
    ld l, c
    db $76
    ld h, l

jr_01a_4882:
    inc l
    jr nz, jr_01a_48fe

jr_01a_4885:
    ld l, a
    ld [hl], l

jr_01a_4887:
    daa
    ld l, h
    ld l, h
    ld [bc], a
    ld [hl], d
    ld [hl], l

jr_01a_488d:
    ld l, c
    ld l, [hl]
    jr nz, jr_01a_490a

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01a_48fc

    ld l, a
    ld [hl], d
    ld l, l
    ld l, $01
    ld d, h

jr_01a_489c:
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01a_491a

    ld l, b
    ld a, c
    jr nz, jr_01a_490a

    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    ld bc, $6567
    ld [hl], h
    ld [hl], e
    jr nz, @+$79

    ld l, a

jr_01a_48b5:
    ld [hl], d
    ld [hl], e
    ld h, l
    ld hl, $0003
    ld c, b
    ld h, c
    db $76
    ld l, c
    ld l, [hl]

jr_01a_48c0:
    ld h, a
    jr nz, jr_01a_4937

    ld l, b
    ld h, l
    jr nz, @+$6e

    ld l, a
    ld l, [hl]
    ld h, a
    ld h, l

jr_01a_48cb:
    ld [hl], e
    ld [hl], h
    ld bc, $7264
    ld l, c
    db $76
    ld h, l
    jr nz, jr_01a_493e

jr_01a_48d5:
    ld [hl], e
    jr nz, @+$63

    jr nz, @+$6a

    ld [hl], l
    ld h, a
    ld h, l
    ld bc, $6461
    db $76
    ld h, c

jr_01a_48e2:
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld h, a
    ld h, l
    ld l, $20
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, @+$6b

    ld h, [hl]
    ld [bc], a
    ld h, c
    ld l, c
    ld l, l
    jr nz, jr_01a_4958

    ld l, a
    ld l, [hl]
    ld h, e
    ld h, l
    ld [hl], d
    ld l, [hl]
    ld [hl], e

jr_01a_48fc:
    jr nz, jr_01a_4977

jr_01a_48fe:
    ld l, a
    ld [hl], l
    inc l
    ld bc, $6874
    ld h, l
    ld l, [hl]
    jr nz, jr_01a_4969

    jr nz, jr_01a_4976

jr_01a_490a:
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_4973

    ld [hl], d
    ld l, c
    db $76
    ld h, l
    ld bc, $7369
    jr nz, @+$70

    ld l, a
    ld [hl], h

jr_01a_491a:
    jr nz, @+$68

    ld l, a
    ld [hl], d
    jr nz, jr_01a_4999

    ld l, a
    ld [hl], l
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_01a_498d

    ld [hl], d
    ld h, l
    jr nz, jr_01a_4961

    inc [hl]
    ld bc, $7264
    ld l, c
    db $76
    ld h, l

jr_01a_4937:
    ld [hl], d
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e

jr_01a_493e:
    jr nz, jr_01a_49a9

    ld l, [hl]
    jr nz, jr_01a_49a4

    ld bc, $6f72
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, @+$64

    ld [hl], l
    ld [hl], h
    jr nz, jr_01a_49b0

    ld [hl], h
    ld [bc], a
    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld [hl], h
    jr nz, jr_01a_498a

jr_01a_4958:
    ld [hl-], a
    jr nz, jr_01a_49c4

    ld [hl], d
    ld l, a
    ld l, [hl]
    ld bc, $6873

jr_01a_4961:
    ld l, a
    ld [hl], h
    ld [hl], e
    ld l, $20
    ld e, c
    ld l, a
    ld [hl], l

jr_01a_4969:
    jr nz, jr_01a_49d6

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld bc, $6877
    ld l, c
    ld h, e

jr_01a_4973:
    ld l, b
    jr nz, jr_01a_49ea

jr_01a_4976:
    ld l, a

jr_01a_4977:
    jr nz, jr_01a_49e9

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    ld hl, $0003
    ld d, h
    ld l, a
    jr nz, @+$6f

    ld h, c
    ld l, e
    ld h, l

jr_01a_498a:
    jr nz, jr_01a_49f3

    ld l, a

jr_01a_498d:
    ld l, a
    ld h, h
    jr nz, jr_01a_49fa

    ld [hl], d
    ld l, a
    ld l, [hl]
    ld bc, $6873
    ld l, a
    ld [hl], h

jr_01a_4999:
    ld [hl], e
    inc l
    jr nz, jr_01a_4a16

    ld l, a
    ld [hl], l
    jr nz, jr_01a_4a0f

    ld h, l
    ld h, l
    ld h, h

jr_01a_49a4:
    jr nz, jr_01a_4a07

    ld bc, $6166

jr_01a_49a9:
    ld h, h
    ld h, l
    inc l
    jr nz, jr_01a_4a20

    ld l, c
    ld h, a

jr_01a_49b0:
    ld l, b
    ld [hl], h
    ccf
    inc bc
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$6e

    ld l, a
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], d
    jr nz, jr_01a_4a3a

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01a_49c4:
    ld bc, $7264
    ld l, c
    db $76
    ld h, l
    inc l
    jr nz, jr_01a_4a41

    ld l, b
    ld h, l
    jr nz, jr_01a_4a39

    ld l, c
    ld h, a
    ld l, b
    ld h, l
    ld [hl], d

jr_01a_49d6:
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01a_4a50

    ld l, b
    ld l, a
    ld [hl], h
    jr nz, jr_01a_4a4b

    ld [hl], e
    ld l, $20
    ld c, b
    ld l, c
    ld h, a
    ld l, b

jr_01a_49e9:
    ld [bc], a

jr_01a_49ea:
    ld h, d
    ld h, c
    ld l, h
    ld l, h
    ld [hl], e
    jr nz, jr_01a_4a52

    ld [hl], d
    ld h, l

jr_01a_49f3:
    jr nz, jr_01a_4a68

    ld [hl], l
    ld [hl], e
    ld h, e
    ld h, l
    ld [hl], b

jr_01a_49fa:
    dec l
    ld bc, $6974
    ld h, d
    ld l, h
    ld h, l
    jr nz, @+$76

    ld l, a
    jr nz, jr_01a_4a7d

    ld l, c

jr_01a_4a07:
    ld l, [hl]
    ld h, h
    ld bc, $202d
    ld h, c
    jr nz, jr_01a_4a7c

jr_01a_4a0f:
    ld h, c
    ld l, d
    ld l, a
    ld [hl], d
    jr nz, jr_01a_4a85

    ld [hl], d

jr_01a_4a16:
    ld l, a
    ld h, d
    ld l, h
    ld h, l
    ld l, l
    ld l, $03
    nop
    ld d, h
    ld l, b

jr_01a_4a20:
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_01a_4a88

    jr nz, jr_01a_4a95

    ld l, c
    ld l, l
    ld l, c
    ld [hl], h
    jr nz, @+$76

    ld l, a
    ld bc, $6877
    ld h, c
    ld [hl], h
    jr nz, jr_01a_4aaa

    ld [hl], b
    ld l, c

jr_01a_4a39:
    ld l, [hl]

jr_01a_4a3a:
    jr nz, jr_01a_4a9f

    ld h, c
    ld l, [hl]
    jr nz, jr_01a_4aa4

    ld l, a

jr_01a_4a41:
    jr nz, @+$76

    ld l, a
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01a_4abf

jr_01a_4a4b:
    ld [hl], d
    ld h, c
    ld l, d
    ld h, l
    ld h, e

jr_01a_4a50:
    ld [hl], h
    ld l, a

jr_01a_4a52:
    ld [hl], d
    ld a, c
    ld l, $02
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01a_4ace

    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$72

    ld h, c
    ld a, c
    ld bc, $7461
    ld [hl], h

jr_01a_4a68:
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_01a_4ae4

    ld l, a
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $6873
    ld l, a
    ld [hl], h
    daa

jr_01a_4a7c:
    ld [hl], e

jr_01a_4a7d:
    jr nz, @+$6a

    ld h, l
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    inc l

jr_01a_4a85:
    jr nz, jr_01a_4afb

    ld l, a

jr_01a_4a88:
    ld l, a
    ld l, $03
    nop
    ld b, [hl]
    ld l, a
    ld [hl], d
    jr nz, @+$76

    ld l, b
    ld l, a
    ld [hl], e
    ld h, l

jr_01a_4a95:
    jr nz, jr_01a_4b0a

    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld h, a
    ld bc, $6977

jr_01a_4a9f:
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, @+$63

jr_01a_4aa4:
    ld [hl], h
    jr nz, @+$4e

    ld l, c
    ld l, [hl]
    ld l, e

jr_01a_4aaa:
    ld [hl], e
    inc l
    ld bc, $7375
    ld h, l
    jr nz, jr_01a_4b13

    jr nz, jr_01a_4b20

    ld l, a
    ld [hl], a
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], h
    ld l, $03
    nop
    ld d, e

jr_01a_4abf:
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_4b35

    ld h, e
    ld h, l
    ld h, c
    ld l, [hl]
    jr nz, @+$79

    ld l, c
    ld l, [hl]

jr_01a_4ace:
    ld h, h
    ld [hl], e
    ld bc, $7261
    ld h, l
    jr nz, jr_01a_4b37

    jr nz, jr_01a_4b4b

    ld l, b
    ld l, a
    ld h, e
    ld l, e
    jr nz, jr_01a_4b52

    ld l, b
    ld h, l
    ld bc, $6966
    ld [hl], d

jr_01a_4ae4:
    ld [hl], e
    ld [hl], h
    jr nz, jr_01a_4b5c

    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_01a_4b4e

    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    daa
    db $76
    ld h, l

jr_01a_4afb:
    jr nz, @+$6b

    ld l, l
    ld [hl], b
    ld [hl], d
    ld l, a
    db $76
    ld h, l
    ld h, h
    ld bc, $2061
    ld l, h
    ld l, a
    ld [hl], h

jr_01a_4b0a:
    inc l
    jr nz, @+$09

    ld l, $01
    ld c, [hl]
    ld l, a
    ld [hl], a
    inc l

jr_01a_4b13:
    jr nz, jr_01a_4b7e

    ld l, l
    ld [hl], b
    ld [hl], d
    ld l, a
    db $76
    ld h, l
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01a_4b20:
    ld [bc], a
    ld h, h
    ld [hl], d
    ld l, c
    db $76
    ld h, l
    jr nz, jr_01a_4b89

    ld l, [hl]
    ld h, h
    jr nz, jr_01a_4b9b

    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld bc, $6b73
    ld l, c
    ld l, h

jr_01a_4b35:
    ld l, h
    ld [hl], e

jr_01a_4b37:
    jr nz, jr_01a_4bad

    ld l, a
    jr nz, jr_01a_4b9e

    ld h, l
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    ld bc, $2061
    ld [hl], b
    ld h, l
    ld [hl], d
    ld h, [hl]
    ld h, l
    ld h, e
    ld [hl], h

jr_01a_4b4b:
    jr nz, jr_01a_4bb4

    ld l, a

jr_01a_4b4e:
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d

jr_01a_4b52:
    ld l, $03
    nop
    ld b, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld h, a
    ld l, c
    ld l, [hl]

jr_01a_4b5c:
    ld h, a
    jr nz, @+$76

    ld [hl], d
    ld h, c
    ld l, d
    ld h, l
    ld h, e
    dec l
    ld bc, $6f74
    ld [hl], d
    ld l, c
    ld h, l
    ld [hl], e
    jr nz, jr_01a_4bd0

    ld h, c
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, @+$71

    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, jr_01a_4bde

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01a_4b7e:
    ld [hl], e
    ld h, l
    jr nz, jr_01a_4bfb

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [bc], a
    ld [hl], b
    ld l, h
    ld h, c

jr_01a_4b89:
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_4bf8

    ld [hl], e
    jr nz, jr_01a_4c06

    ld l, b
    ld h, l
    ld bc, $7566
    ld l, [hl]
    jr nz, jr_01a_4c09

    ld h, [hl]

jr_01a_4b9b:
    jr nz, jr_01a_4c06

    ld l, l

jr_01a_4b9e:
    ld [hl], b
    ld [hl], d
    ld l, a
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $03
    nop
    ld b, h
    ld l, a
    ld h, l
    ld [hl], e
    ld l, [hl]

jr_01a_4bad:
    daa
    ld [hl], h
    jr nz, @+$77

    ld [hl], e
    ld l, c
    ld l, [hl]

jr_01a_4bb4:
    ld h, a
    jr nz, jr_01a_4c2a

    ld [hl], b
    ld l, c
    ld l, [hl]
    ld bc, $7865
    ld [hl], b
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_01a_4c37

    ld l, b
    ld h, l
    jr nz, jr_01a_4c29

    ld h, c
    ld l, h
    ld l, h
    ld bc, $6f74
    jr nz, @+$79

    ld l, c

jr_01a_4bd0:
    ld l, [hl]
    ld h, h
    jr nz, jr_01a_4c47

    ld l, b
    ld l, c
    ld h, [hl]
    ld [hl], h
    ld [hl], e
    ccf
    inc bc
    nop
    ld c, c
    ld h, [hl]

jr_01a_4bde:
    jr nz, jr_01a_4c59

    ld l, a
    ld [hl], l
    jr nz, jr_01a_4c59

    ld [hl], e
    ld h, l
    jr nz, @+$74

    ld [hl], l
    ld l, [hl]
    jr nz, @+$76

    ld l, a
    ld bc, $7461
    ld [hl], h
    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_01a_4c6a

    ld l, b
    ld h, l

jr_01a_4bf8:
    jr nz, jr_01a_4c61

    ld [hl], d

jr_01a_4bfb:
    ld h, l
    ld h, l
    ld l, [hl]
    inc l
    jr nz, jr_01a_4c76

    ld [hl], e
    ld h, l
    ld bc, $2061

jr_01a_4c06:
    ld l, h
    ld l, a
    ld [hl], a

jr_01a_4c09:
    jr nz, jr_01a_4c7f

    ld [hl], d
    ld h, c
    ld l, d
    ld h, l
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    ld l, $03
    nop
    ld b, a
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01a_4c61

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld bc, $2c07
    jr nz, jr_01a_4ca0

    ld l, a
    ld [hl], l

jr_01a_4c29:
    daa

jr_01a_4c2a:
    ld [hl], d
    ld h, l
    ld bc, $6f67
    ld l, a
    ld h, h
    jr nz, @+$67

    ld l, [hl]
    ld l, a
    ld [hl], l
    ld h, a

jr_01a_4c37:
    ld l, b
    jr nz, jr_01a_4ca8

    ld l, a
    ld [hl], a
    ld hl, $5402
    ld l, a
    jr nz, jr_01a_4ca4

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_01a_4c94

jr_01a_4c47:
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    inc l
    jr nz, jr_01a_4caf

    ld l, h
    ld l, h
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01a_4cc4

    ld h, l
    ld h, l
    ld h, h

jr_01a_4c59:
    jr nz, jr_01a_4ccf

    ld l, a
    jr nz, @+$66

    ld l, a
    jr nz, jr_01a_4cca

jr_01a_4c61:
    ld [hl], e
    ld bc, $6e6b
    ld l, a
    ld [hl], a
    jr nz, jr_01a_4cdd

    ld l, b

jr_01a_4c6a:
    ld h, l
    jr nz, jr_01a_4cd0

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $03
    nop
    ld c, c

jr_01a_4c76:
    jr nz, jr_01a_4ce0

    ld h, l
    ld h, c
    ld [hl], d
    jr nz, jr_01a_4cde

    ld l, h
    ld l, h

jr_01a_4c7f:
    jr nz, jr_01a_4cf5

    ld l, b
    ld h, l
    ld bc, $6c70
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_01a_4cee

    ld [hl], h
    jr nz, jr_01a_4ce0

    ld h, l
    ld h, c
    ld h, e
    ld l, b

jr_01a_4c94:
    daa
    ld [hl], e
    ld bc, $6143
    ld [hl], e
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_01a_4d00

    ld [hl], d

jr_01a_4ca0:
    ld h, l
    jr nz, jr_01a_4d10

    ld h, c

jr_01a_4ca4:
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d

jr_01a_4ca8:
    ld [hl], e
    ld l, $02
    ld c, c
    jr nz, @+$79

    ld l, a

jr_01a_4caf:
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_01a_4d1e

    ld h, [hl]
    jr nz, jr_01a_4d2c

    ld l, b
    ld h, l
    ld bc, $4722
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01a_4d06

    ld l, b

jr_01a_4cc4:
    ld h, c
    ld l, l
    ld [hl], b
    ld [hl+], a
    jr nz, jr_01a_4d2d

jr_01a_4cca:
    ld h, c
    ld l, [hl]
    ld bc, $6562

jr_01a_4ccf:
    ld h, c

jr_01a_4cd0:
    ld [hl], h
    jr nz, jr_01a_4d47

    ld l, b
    ld h, l
    ld l, l
    ccf
    inc bc
    nop
    ld c, c
    jr nz, jr_01a_4d53

    ld l, a

jr_01a_4cdd:
    ld l, [hl]

jr_01a_4cde:
    ld h, h
    ld h, l

jr_01a_4ce0:
    ld [hl], d
    jr nz, jr_01a_4d5a

    ld l, b
    ld h, c
    ld [hl], h
    ld bc, $696b
    ld l, [hl]
    ld h, h
    jr nz, jr_01a_4d5c

    ld h, [hl]

jr_01a_4cee:
    jr nz, jr_01a_4d53

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l

jr_01a_4cf5:
    ld bc, $6550
    ld h, c
    ld h, e
    ld l, b
    daa
    ld [hl], e
    jr nz, @+$45

    ld h, c

jr_01a_4d00:
    ld [hl], e
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_01a_4d6f

jr_01a_4d06:
    ld [hl], e
    ccf
    inc bc
    nop
    ld c, c
    daa
    ld l, l
    jr nz, @+$75

    ld l, a

jr_01a_4d10:
    jr nz, @+$6c

    ld h, l
    ld h, c
    ld l, h
    ld l, a
    ld [hl], l
    ld [hl], e
    ld hl, $4901
    jr nz, jr_01a_4d94

    ld h, c

jr_01a_4d1e:
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01a_4d96

    ld l, a
    ld bc, $6c70
    ld h, c
    ld a, c
    jr nz, jr_01a_4d77

    ld h, c
    ld [hl], d

jr_01a_4d2c:
    ld l, c

jr_01a_4d2d:
    ld l, a
    ld hl, $0003
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01a_4d9a

    ld l, a
    ld l, h
    ld h, h
    jr nz, @+$6b

    ld l, [hl]
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l

jr_01a_4d47:
    jr nz, jr_01a_4daf

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, @+$4f

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a

jr_01a_4d53:
    ld bc, $6f47
    ld l, h
    ld h, [hl]
    jr nz, @+$68

jr_01a_4d5a:
    ld l, a
    ld [hl], d

jr_01a_4d5c:
    jr nz, jr_01a_4dd2

    ld l, b
    ld h, l
    jr nz, @+$50

    ld [hl], $34
    ld hl, $4701
    ld l, c
    db $76
    ld h, l
    jr nz, jr_01a_4dd5

    ld [hl], h
    jr nz, jr_01a_4dd0

jr_01a_4d6f:
    jr nz, jr_01a_4de4

    ld l, b
    ld l, a
    ld [hl], h
    ld hl, $0003

jr_01a_4d77:
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01a_4dd1

    ld l, a
    ld h, c
    ld h, h
    ld hl, $4f02
    ld l, b
    inc l
    jr nz, jr_01a_4df0

    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01a_4df6

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01a_4df2

    ld bc, $6f74

jr_01a_4d94:
    ld h, c
    ld h, h

jr_01a_4d96:
    ld [hl], e
    ld [hl], h
    ld l, a
    ld l, a

jr_01a_4d9a:
    ld l, h
    ld l, $03
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01a_4e05

    jr nz, @+$72

    ld l, c
    ld h, e
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, @+$71

    ld h, [hl]

jr_01a_4daf:
    ld bc, $6550
    ld h, c
    ld h, e
    ld l, b
    ld hl, $4101
    ld l, [hl]
    ld h, h
    jr nz, jr_01a_4e25

    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01a_4e34

    ld l, c
    ld h, a
    ld l, [hl]
    ld h, l
    ld h, h
    ld hl, $0003
    ld b, c
    jr nz, jr_01a_4e32

    ld l, c
    ld [hl], e
    ld l, b
    ld l, c

jr_01a_4dd0:
    ld l, [hl]

jr_01a_4dd1:
    ld h, a

jr_01a_4dd2:
    jr nz, jr_01a_4e46

    ld l, a

jr_01a_4dd5:
    ld h, h
    ccf
    ld hl, HeaderManufacturerCode
    ld c, a
    ld l, b
    ld hl, $4920
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01a_4e30

jr_01a_4de4:
    ld h, c
    ld l, e
    ld l, c
    ld [hl], h
    ld [hl], l
    daa
    ld [hl], e
    ld bc, $6f4c
    ld h, e
    ld l, e

jr_01a_4df0:
    ld h, l
    ld [hl], d

jr_01a_4df2:
    ld l, $03
    nop
    ld c, c

jr_01a_4df6:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01a_4e3d

    ld h, c
    ld h, d
    ld a, c
    jr nz, jr_01a_4e4d

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    daa

jr_01a_4e05:
    ld [hl], e
    ld bc, $6964
    ld h, c
    ld [hl], b
    ld h, l
    ld [hl], d
    ld hl, $4501
    ld [hl], a
    ld hl, $4920
    ld [hl], h
    jr nz, jr_01a_4e8a

    ld [hl], h
    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01a_4e8a

    ld l, a

jr_01a_4e25:
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_01a_4e8b

    ld bc, $6f59
    ld [hl], e
    ld l, b
    ld l, c

jr_01a_4e30:
    jr nz, jr_01a_4e97

jr_01a_4e32:
    ld h, a
    ld h, a

jr_01a_4e34:
    ld hl, $4920
    ld [hl], h
    daa
    ld [hl], e
    ld bc, $6261

jr_01a_4e3d:
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_01a_4eb6

    ld l, a
    jr nz, jr_01a_4ead

    ld h, c

jr_01a_4e46:
    ld [hl], h
    ld h, e
    ld l, b
    ld hl, $0003
    ld e, c

jr_01a_4e4d:
    ld l, a
    ld [hl], l
    jr nz, jr_01a_4eb7

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_01a_4eb8

    jr nz, jr_01a_4eac

    ld l, b
    ld a, c
    ld bc, $7547
    ld a, c
    jr nz, jr_01a_4ece

    ld h, c
    ld [hl], e
    ld l, e
    ld l, $01
    ld d, [hl]
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, @+$70

    ld l, c
    ld h, e
    ld h, l
    ld l, $2e
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01a_4edf

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, @+$4d

    ld l, a
    ld l, a
    ld [hl], b
    ld h, c
    daa
    ld [hl], e
    ld bc, $6873
    ld h, l
    ld l, h

jr_01a_4e8a:
    ld l, h

jr_01a_4e8b:
    inc l
    jr nz, jr_01a_4ef0

    ld [hl], l
    ld [hl], h
    jr nz, jr_01a_4f09

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa

jr_01a_4e97:
    ld [hl], e
    ld bc, $6f4b
    ld l, a
    ld [hl], b
    ld h, c
    ccf
    inc bc
    nop
    ld b, c
    jr nz, jr_01a_4ef4

    ld l, c
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld l, b
    ld h, c
    jr nz, jr_01a_4efc

jr_01a_4eac:
    ld l, h

jr_01a_4ead:
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld bc, $6f62
    ld [hl], l
    ld [hl], c
    ld [hl], l

jr_01a_4eb6:
    ld h, l

jr_01a_4eb7:
    ld [hl], h

jr_01a_4eb8:
    ld hl, $4401
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01a_4f35

    ld l, a
    ld [hl], l
    ld h, e
    ld l, b
    ld hl, $0003
    ld b, c
    jr nz, jr_01a_4f44

    ld h, l
    ld l, h
    ld l, h

jr_01a_4ece:
    ld l, a
    ld [hl], a
    jr nz, jr_01a_4f35

    ld h, c
    ld [hl], b
    jr nz, jr_01a_4f37

    ld l, [hl]
    ld h, h
    ld bc, $2061
    ld h, [hl]
    ld h, c
    ld l, e
    ld h, l

jr_01a_4edf:
    jr nz, jr_01a_4f4e

    ld l, a
    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld h, c
    ld h, e
    ld l, b
    ld h, l
    ld l, $2e
    ld l, $01
    ld b, e
    ld l, a
    ld [hl], l

jr_01a_4ef0:
    ld l, h
    ld h, h
    jr nz, jr_01a_4f5d

jr_01a_4ef4:
    ld [hl], h
    jr nz, @+$64

    ld h, l
    ld l, $2e
    ld l, $3f

jr_01a_4efc:
    ld hl, $033f
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$63

    jr nz, jr_01a_4f7f

    ld l, c

jr_01a_4f09:
    ld l, [hl]
    ld h, h
    dec l
    ld [hl], l
    ld [hl], b
    ld bc, $6f42
    ld h, d
    dec l
    ld l, a
    ld l, l
    ld h, d
    ld hl, $4902
    jr nz, @+$79

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01a_4f94

    ld l, a
    jr nz, @+$79

    ld l, c
    ld l, [hl]
    ld h, h
    ld bc, $7469
    jr nz, @+$77

    ld [hl], b
    inc l
    jr nz, @+$64

    ld [hl], l
    ld [hl], h
    ld l, $2e
    ld l, $03

jr_01a_4f35:
    nop
    ld c, c

jr_01a_4f37:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$46

    ld l, a
    ld l, [hl]
    ld l, e
    ld h, l
    ld a, c
    jr nz, jr_01a_4f8e

    ld l, a

jr_01a_4f44:
    ld l, [hl]
    ld h, a
    ld hl, $4f02
    ld l, b
    inc l
    jr nz, @+$6b

    ld [hl], h

jr_01a_4f4e:
    daa
    ld [hl], e
    jr nz, jr_01a_4fbc

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01a_4fb8

    ld bc, $6f77
    ld l, a
    ld h, h
    ld h, l

jr_01a_4f5d:
    ld l, [hl]
    jr nz, jr_01a_4fc7

    ld l, a
    ld [hl], d
    ld l, c
    ld l, h
    ld l, h
    ld h, c
    ld l, $03
    nop
    ld b, c
    ld c, b
    ld c, b
    ld c, b
    ld hl, $2121
    jr nz, jr_01a_4fbb

    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01a_4fb9

    ld l, a
    ld l, a
    ld hl, $4802
    ld [hl], l
    ld l, b
    ccf

jr_01a_4f7f:
    ld hl, HeaderManufacturerCode
    ld c, c
    ld [hl], h
    jr nz, @+$66

    ld l, c
    ld [hl], e
    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, c
    ld [hl], d

jr_01a_4f8e:
    ld h, l
    ld h, h
    ld hl, $0003
    ld e, c

jr_01a_4f94:
    ld l, c
    ld l, e
    ld h, l
    ld [hl], e
    ld hl, $4920
    ld [hl], h
    daa
    ld [hl], e
    ld bc, $6843
    ld h, c
    ld l, c
    ld l, [hl]
    jr nz, jr_01a_4fe9

    ld l, b
    ld l, a
    ld l, l
    ld [hl], b
    ld hl, $5302
    ld l, b
    ld l, b
    ld hl, $4920
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01a_5018

    ld [hl], e

jr_01a_4fb8:
    ld l, h

jr_01a_4fb9:
    ld h, l
    ld h, l

jr_01a_4fbb:
    ld [hl], b

jr_01a_4fbc:
    ld hl, $0003
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01a_502a

    ld l, l
    ld [hl], b

jr_01a_4fc7:
    ld [hl], h
    ld a, c
    ld l, $03
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01a_5046

    ld l, b
    ld h, l
    jr nz, @+$78

    ld l, c
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    ld bc, $7274
    ld l, a
    ld [hl], b
    ld l, b
    ld a, c
    jr nz, @+$68

    ld l, a
    ld [hl], d
    jr nz, jr_01a_4ff4

jr_01a_4fe9:
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_01a_5044

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]

jr_01a_4ff4:
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld hl, $0003
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01a_5076

    ld l, b
    ld h, l
    jr nz, jr_01a_5056

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    daa
    ld [hl], e
    ld bc, $6143
    ld [hl], e
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_01a_5069

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01a_5018:
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld bc, $6976
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    jr nz, @+$76

    ld [hl], d
    ld l, a

jr_01a_502a:
    ld [hl], b
    ld l, b
    ld a, c
    ld hl, $0003
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01a_50aa

    ld l, b
    ld h, l
    jr nz, jr_01a_5045

    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_01a_5095

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01a_5044:
    ld l, [hl]

jr_01a_5045:
    ld h, c

jr_01a_5046:
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld bc, $200f
    ld [hl], b
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_01a_50c8

    ld [hl], d
    ld l, a

jr_01a_5056:
    ld [hl], b
    ld l, b
    ld a, c
    ld l, $02
    rlca
    daa
    ld [hl], e
    jr nz, jr_01a_50c8

    ld h, l
    ld h, c
    ld [hl], d
    ld [hl], h
    ld bc, $7369
    jr nz, @+$75

jr_01a_5069:
    ld h, l
    ld [hl], h
    jr nz, @+$71

    ld l, [hl]
    jr nz, @+$79

    ld l, c
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a

jr_01a_5076:
    ld bc, $656e
    ld a, b
    ld [hl], h
    jr nz, jr_01a_50f1

    ld l, c
    ld l, l
    ld h, l
    ld l, $03
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01a_50fd

    ld l, b
    ld h, l
    ld bc, $200f
    ld [hl], b
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    jr nz, @+$76

jr_01a_5095:
    ld [hl], d
    ld l, a
    ld [hl], b
    ld l, b
    ld a, c
    ld bc, $6f66
    ld [hl], d
    jr nz, jr_01a_50f0

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    daa
    ld [hl], e
    jr nz, jr_01a_50eb

    ld h, c
    ld [hl], e

jr_01a_50aa:
    ld [hl], h
    ld l, h
    ld h, l
    ld hl, $0702
    daa
    ld [hl], e
    jr nz, jr_01a_511c

    ld h, l
    ld h, c
    ld [hl], d
    ld [hl], h
    ld bc, $7369
    jr nz, jr_01a_5130

    ld h, l
    ld [hl], h
    jr nz, jr_01a_5130

    ld l, [hl]
    jr nz, jr_01a_513b

    ld l, c
    ld l, [hl]
    ld l, [hl]
    ld l, c

jr_01a_50c8:
    ld l, [hl]
    ld h, a
    ld bc, $656e
    ld a, b
    ld [hl], h
    jr nz, @+$76

    ld l, c
    ld l, l
    ld h, l
    ld l, $03
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01a_50ec

    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_01a_513c

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01a_50eb:
    ld l, [hl]

jr_01a_50ec:
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]

jr_01a_50f0:
    ld [hl], h

jr_01a_50f1:
    ld bc, $200f
    ld [hl], b
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_01a_516f

    ld [hl], d
    ld l, a

jr_01a_50fd:
    ld [hl], b
    ld l, b
    ld a, c
    ld hl, $0702
    daa
    ld [hl], e
    jr nz, jr_01a_5176

    ld l, [hl]
    ld bc, $6966
    ld [hl], d
    ld h, l
    inc l
    jr nz, @+$66

    ld h, l
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, l
    ld h, h
    ld bc, $6f74

jr_01a_511c:
    jr nz, @+$79

    ld l, c
    ld l, [hl]
    jr nz, @+$70

    ld h, l
    ld a, b
    ld [hl], h
    jr nz, @+$76

    ld l, c
    ld l, l
    ld h, l
    ld hl, $0003
    ld c, c
    ld [hl], h
    daa

jr_01a_5130:
    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $200f
    ld [hl], b
    ld l, h
    ld h, c

jr_01a_513b:
    ld h, e

jr_01a_513c:
    ld h, l
    jr nz, @+$76

    ld [hl], d
    ld l, a
    ld [hl], b
    ld l, b
    ld a, c
    ld bc, $6f66
    ld [hl], d
    jr nz, @+$52

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    daa
    ld [hl], e
    jr nz, @+$45

    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, h
    ld h, l
    ld hl, $0702
    daa
    ld [hl], e
    jr nz, @+$71

    ld l, [hl]
    ld bc, $6966
    ld [hl], d
    ld h, l
    inc l
    jr nz, @+$66

    ld h, l
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, l

jr_01a_516f:
    ld h, h
    ld bc, $6f74
    jr nz, @+$79

    ld l, c

jr_01a_5176:
    ld l, [hl]
    jr nz, @+$70

    ld h, l
    ld a, b
    ld [hl], h
    jr nz, @+$76

    ld l, c
    ld l, l
    ld h, l
    ld hl, $0003

    db $53, $74, $61, $72, $74, $20, $62, $79, $20, $63, $72, $65, $61, $74, $69, $6e
    db $67, $01, $61, $20, $6e, $65, $77, $20, $63, $68, $61, $72, $61, $63, $74, $65
    db $72, $2e, $03, $00, $46, $69, $72, $73, $74, $2c, $20, $73, $65, $6c, $65, $63
    db $74, $20, $61, $20, $70, $6c, $61, $79, $65, $72, $2e, $03, $00, $57, $68, $69
    db $63, $68, $20, $61, $72, $65, $20, $79, $6f, $75, $3f, $00, $4e, $65, $78, $74
    db $2c, $20, $63, $68, $6f, $6f, $73, $65, $01, $61, $20, $63, $68, $61, $72, $61
    db $63, $74, $65, $72, $2e, $00, $4c, $65, $66, $74, $2d, $20, $6f, $72, $01, $72
    db $69, $67, $68, $74, $2d, $68, $61, $6e, $64, $65, $64, $3f, $00, $57, $68, $61
    db $74, $20, $69, $73, $20, $79, $6f, $75, $72, $20, $6e, $61, $6d, $65, $3f, $03
    db $00, $4f, $4b, $2c, $20, $07, $2e, $01, $47, $6f, $6f, $64, $20, $6c, $75, $63
    db $6b, $21, $02, $49, $20, $61, $77, $61, $69, $74, $20, $74, $68, $65, $20, $64
    db $61, $79, $01, $79, $6f, $75, $20, $72, $65, $61, $63, $68, $20, $74, $68, $65
    db $20, $74, $6f, $70, $21, $03, $00, $53, $74, $61, $72, $74, $20, $62, $79, $20
    db $63, $72, $65, $61, $74, $69, $6e, $67, $20, $00, $61, $20, $6e, $65, $77, $20
    db $63, $68, $61, $72, $61, $63, $74, $65, $72, $2e, $00, $46, $69, $72, $73, $74
    db $2c, $20, $73, $65, $6c, $65, $63, $74, $20, $61, $20, $70, $6c, $61, $79, $65
    db $72, $2e, $00, $57, $68, $69, $63, $68, $20, $61, $72, $65, $20, $79, $6f, $75
    db $3f, $00, $4e, $65, $78, $74, $2c, $20, $63, $68, $6f, $6f, $73, $65, $20, $61
    db $00, $63, $68, $61, $72, $61, $63, $74, $65, $72, $2e, $00, $50, $6c, $65, $61
    db $73, $65, $20, $74, $65, $6c, $6c, $20, $6d, $65, $20, $79, $6f, $75, $72, $20
    db $6e, $61, $6d, $65, $2e, $00, $57, $65, $6c, $6c, $2c, $20, $07, $2e, $00, $47
    db $6f, $6f, $64, $20, $6c, $75, $63, $6b, $21, $00, $49, $20, $61, $77, $61, $69
    db $74, $20, $74, $68, $65, $20, $64, $61, $79, $01, $00, $79, $6f, $75, $20, $72
    db $65, $61, $63, $68, $20, $74, $68, $65, $20, $74, $6f, $70, $21, $00, $57, $61
    db $6e, $74, $20, $74, $6f, $20, $6c, $65, $61, $72, $6e, $01, $73, $6f, $6d, $65
    db $20, $67, $6f, $6c, $66, $20, $6c, $69, $6e, $67, $6f, $3f, $00, $54, $61, $6c
    db $6b, $20, $74, $6f, $20, $74, $68, $65, $20, $70, $65, $6f, $70, $6c, $65, $01
    db $69, $6e, $20, $62, $61, $63, $6b, $2c, $20, $62, $75, $74, $20, $61, $73, $6b
    db $20, $6d, $65, $01, $69, $66, $20, $69, $74, $27, $73, $20, $6e, $6f, $74, $20
    db $63, $6c, $65, $61, $72, $21, $02, $4f, $68, $2c, $20, $63, $61, $72, $72, $79
    db $27, $73, $20, $68, $6f, $77, $20, $66, $61, $72, $01, $74, $68, $65, $20, $62
    db $61, $6c, $6c, $20, $67, $6f, $65, $73, $20, $75, $6e, $74, $69, $6c, $01, $69
    db $74, $73, $20, $31, $73, $74, $20, $62, $6f, $75, $6e, $63, $65, $2e, $03, $00
    db $54

    ld h, c
    ld l, h
    ld l, e
    jr nz, jr_01a_540e

    ld l, a
    jr nz, jr_01a_5411

    ld l, b
    ld h, l
    jr nz, jr_01a_5411

    ld h, l
    ld l, a
    ld [hl], b
    ld l, h
    ld h, l
    ld bc, $6e69
    jr nz, @+$64

    ld h, c
    ld h, e
    ld l, e
    inc l
    jr nz, jr_01a_5412

    ld l, [hl]
    ld h, h
    jr nz, @+$63

    ld [hl], e
    ld l, e
    ld bc, $656d
    jr nz, jr_01a_5425

    ld h, [hl]
    jr nz, @+$6b

    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$70

    ld l, a
    ld [hl], h
    jr nz, jr_01a_542b

    ld l, h
    ld h, l
    ld h, c
    ld [hl], d
    ld hl, $0003
    ld h, [hl]
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld bc, $6e6f
    ld bc, $696c
    ld l, [hl]
    ld h, l
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01a_5448

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    jr nz, jr_01a_5421

    ld bc, $6f68
    ld l, h
    ld h, l
    ld [hl], e
    jr nz, @+$71

    ld l, [hl]
    jr nz, @+$63

    ld l, [hl]
    jr nz, jr_01a_5427

    jr c, jr_01a_5425

    ld bc, $6f68
    ld l, h
    ld h, l
    jr nz, jr_01a_5462

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $03
    nop
    ld d, h
    ld l, a
    jr nz, jr_01a_546d

    ld h, l
    jr nz, jr_01a_546f

jr_01a_540e:
    ld [hl], h
    jr nz, jr_01a_5483

jr_01a_5411:
    ld h, l

jr_01a_5412:
    ld [hl], e
    ld [hl], h
    ld bc, $7075
    ld l, a
    ld l, [hl]
    jr nz, jr_01a_548f

    ld l, b
    ld h, l
    jr nz, jr_01a_5486

    ld [hl], d
    ld h, l

jr_01a_5421:
    ld h, l
    ld l, [hl]
    ld l, $01

jr_01a_5425:
    ld c, c
    ld h, [hl]

jr_01a_5427:
    jr nz, @+$76

    ld l, b
    ld h, l

jr_01a_542b:
    jr nz, jr_01a_5494

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_01a_549c

    ld [hl], e
    ld [bc], a
    ld [hl], d
    ld h, l
    ld h, c
    ld h, e
    ld l, b
    ld h, l
    ld h, h
    jr nz, @+$6b

    ld l, [hl]
    jr nz, jr_01a_54b0

    ld l, [hl]
    ld h, l
    ld bc, $7473
    ld [hl], d
    ld l, a

jr_01a_5448:
    ld l, e
    ld h, l
    inc l
    jr nz, jr_01a_54c1

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01a_54bb

    ld [hl], e
    ld bc, $6f22
    ld l, [hl]
    jr nz, jr_01a_54c2

    ld l, [hl]
    jr nz, jr_01a_54cb

    ld l, [hl]
    ld h, l
    ld l, $22
    inc bc
    nop

jr_01a_5462:
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01a_54d7

    ld h, c
    ld [hl], h
    ld l, b
    jr nz, jr_01a_54db

    ld h, [hl]

jr_01a_546d:
    jr nz, @+$76

jr_01a_546f:
    ld l, b
    ld h, l
    ld bc, $6162
    ld l, h
    ld l, h
    inc l
    jr nz, jr_01a_54ee

    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_01a_54eb

    ld l, a
    ld [hl], e
    ld [hl], h
    ld l, h
    ld a, c

jr_01a_5483:
    ld bc, $6e69

jr_01a_5486:
    jr nz, jr_01a_54fa

    ld h, l
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld h, e

jr_01a_548f:
    ld h, l
    jr nz, jr_01a_5506

    ld l, a
    ld [bc], a

jr_01a_5494:
    ld [hl], b
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    inc l

jr_01a_549c:
    jr nz, @+$63

    ld [hl], e
    jr nz, jr_01a_550a

    ld l, [hl]
    inc l
    ld bc, $4922
    jr nz, @+$65

    ld h, c
    ld l, [hl]
    jr nz, @+$75

    ld h, l
    ld h, l
    jr nz, jr_01a_5524

jr_01a_54b0:
    ld l, b
    ld h, l
    ld bc, $696c
    ld l, [hl]
    ld h, l
    ld hl, $0322
    nop

jr_01a_54bb:
    ld d, a
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, @+$76

jr_01a_54c1:
    ld l, a

jr_01a_54c2:
    jr nz, @+$6d

    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_01a_5530

    ld l, a
    ld l, h

jr_01a_54cb:
    ld h, [hl]
    jr nz, jr_01a_5540

    ld [hl], l
    ld l, h
    ld h, l
    ld [hl], e
    ccf
    nop
    ld b, a
    ld l, a
    ld l, h

jr_01a_54d7:
    ld h, [hl]
    jr nz, jr_01a_554c

    ld [hl], l

jr_01a_54db:
    ld l, h
    ld h, l
    ld [hl], e
    jr nz, @+$63

    ld [hl], d
    ld h, l
    jr nz, jr_01a_554c

    ld h, c
    ld [hl], d
    ld h, h
    ld l, $01
    ld c, c
    ld h, [hl]

jr_01a_54eb:
    jr nz, @+$76

    ld l, b

jr_01a_54ee:
    ld h, l
    ld a, c
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01a_5563

    ld l, a
    ld [hl], h
    ld bc, $6c63

jr_01a_54fa:
    ld h, l
    ld h, c
    ld [hl], d
    inc l
    jr nz, jr_01a_5563

    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_01a_5566

    ld [hl], e

jr_01a_5506:
    ld l, e
    jr nz, jr_01a_5576

    ld h, l

jr_01a_550a:
    ld hl, $4602
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    jr nz, jr_01a_5582

    ld h, [hl]
    ld h, [hl]
    inc l
    jr nz, @+$69

    ld l, a
    ld l, h
    ld h, [hl]
    daa
    ld [hl], e
    ld bc, $2061
    ld h, a
    ld h, c
    ld l, l
    ld h, l

jr_01a_5524:
    jr nz, jr_01a_559f

    ld l, a
    ld [hl], l
    jr nz, jr_01a_559a

    ld l, h
    ld h, c
    ld a, c
    ld bc, $6977

jr_01a_5530:
    ld [hl], h
    ld l, b
    jr nz, jr_01a_5595

    jr nz, @+$64

    ld h, c
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld b, a
    ld l, a
    ld l, h
    ld h, [hl]

jr_01a_5540:
    jr nz, @+$74

    ld [hl], l
    ld l, h
    ld h, l
    ld [hl], e
    jr nz, jr_01a_55a9

    ld [hl], d
    ld h, l
    jr nz, @+$6a

jr_01a_554c:
    ld h, c
    ld [hl], d
    ld h, h
    ld l, $01
    ld c, c
    ld h, [hl]
    jr nz, jr_01a_55c9

    ld l, b
    ld h, l
    ld a, c
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01a_55cb

    ld l, a
    ld [hl], h
    ld bc, $6c63
    ld h, l

jr_01a_5563:
    ld h, c
    ld [hl], d
    inc l

jr_01a_5566:
    jr nz, jr_01a_55cb

    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_01a_55ce

    ld [hl], e
    ld l, e
    jr nz, jr_01a_55de

    ld h, l
    ld hl, $0003
    ld [hl], l

jr_01a_5576:
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_01a_55ec

    ld h, c
    ld [hl], d
    ld bc, $6e75
    ld [hl], b

jr_01a_5582:
    ld l, h
    ld h, c
    ld a, c
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    ld bc, $6967
    ld l, l
    ld l, l
    ld h, l
    nop
    ld d, e
    ld h, e
    ld l, a
    ld [hl], d
    ld l, c

jr_01a_5595:
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_5605

    ld h, l

jr_01a_559a:
    ld [hl], e
    ld [hl], e
    ld bc, $6874

jr_01a_559f:
    ld h, c
    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, @+$72

    ld h, c
    ld [hl], d

jr_01a_55a9:
    ld bc, $6373
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$68

    ld l, a
    ld [hl], d
    jr nz, jr_01a_5616

    ld [bc], a
    ld l, b
    ld l, a
    ld l, h
    ld h, l
    jr nz, @+$71

    ld [hl], d
    jr nz, jr_01a_5622

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld bc, $7369
    jr nz, @+$65

jr_01a_55c9:
    ld h, c
    ld l, h

jr_01a_55cb:
    ld l, h
    ld h, l
    ld h, h

jr_01a_55ce:
    jr nz, jr_01a_5632

    ld h, l
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6e75
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_01a_564c

    ld h, c
    ld [hl], d

jr_01a_55de:
    ld l, $03
    nop
    ld b, c
    jr nz, @+$64

    ld h, c
    ld l, h
    ld l, h
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h

jr_01a_55ec:
    jr nz, jr_01a_5651

    ld h, c
    ld l, [hl]
    ld bc, $6f6e
    ld [hl], h
    jr nz, jr_01a_5658

    ld h, l
    jr nz, jr_01a_5669

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld h, h
    ld bc, $7564
    ld h, l
    jr nz, jr_01a_5678

    ld l, a

jr_01a_5605:
    jr nz, jr_01a_567b

    ld h, l
    ld [hl], d
    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, $02
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e

jr_01a_5616:
    jr nz, @+$63

    jr nz, jr_01a_564b

    dec l
    ld bc, $7473
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l

jr_01a_5622:
    jr nz, jr_01a_5694

    ld h, l
    ld l, [hl]
    ld h, c
    ld l, h
    ld [hl], h
    ld a, c
    ld bc, $6f74
    jr nz, jr_01a_5693

    ld [hl], d
    ld l, a
    ld [hl], b

jr_01a_5632:
    jr nz, jr_01a_56a8

    ld l, b
    ld h, l
    jr nz, jr_01a_569a

    ld h, c
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld d, a
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01a_56a5

    ld l, [hl]
    jr nz, @+$71

    ld [hl], b
    ld [hl], b
    ld l, a
    ld l, [hl]

jr_01a_564b:
    ld h, l

jr_01a_564c:
    ld l, [hl]
    ld [hl], h
    ld bc, $6461

jr_01a_5651:
    ld l, l
    ld l, c
    ld [hl], h
    ld [hl], e
    jr nz, jr_01a_56d0

    ld l, a

jr_01a_5658:
    ld [hl], l
    daa
    ld l, h
    ld l, h
    ld bc, $616d
    ld l, e
    ld h, l
    jr nz, jr_01a_56dc

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01a_56d6

    ld h, l

jr_01a_5669:
    ld a, b
    ld [hl], h
    ld [bc], a
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], h
    jr nz, jr_01a_56e9

    ld l, c
    ld [hl], h
    ld l, b
    ld l, a
    ld [hl], l
    ld [hl], h

jr_01a_5678:
    jr nz, jr_01a_56f3

    ld l, a

jr_01a_567b:
    ld [hl], l
    ld bc, $6174
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_56ee

    ld [hl], h
    ld l, $20
    ld c, c
    ld h, [hl]
    ld bc, $7469
    daa
    ld [hl], e
    jr nz, jr_01a_56f2

    jr nz, jr_01a_56fa

jr_01a_5693:
    ld l, c

jr_01a_5694:
    ld l, l
    ld l, l
    ld h, l
    jr nz, jr_01a_5708

    ld l, [hl]

jr_01a_569a:
    ld [bc], a
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, @+$35

    ld [hl], d
    ld h, h
    jr nz, jr_01a_5717

    ld [hl], h

jr_01a_56a5:
    ld [hl], d
    ld l, a
    ld l, e

jr_01a_56a8:
    ld h, l
    inc l
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, @+$75

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01a_5720

    ld [hl], e
    jr nz, jr_01a_56ee

    ld hl, $0003
    ld d, a
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, c
    jr nz, jr_01a_572f

    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_01a_572a

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    ld bc, $6f67

jr_01a_56d0:
    ld l, h
    ld h, [hl]
    jr nz, jr_01a_5739

    ld [hl], c
    ld [hl], l

jr_01a_56d6:
    ld l, c
    ld [hl], b
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h

jr_01a_56dc:
    ccf
    nop
    ld c, e
    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_574c

    ld [hl], c
    ld [hl], l

jr_01a_56e9:
    ld l, c
    ld [hl], b
    ld l, l
    ld h, l
    ld l, [hl]

jr_01a_56ee:
    ld [hl], h
    ld bc, $6163

jr_01a_56f2:
    ld l, [hl]

jr_01a_56f3:
    jr nz, @+$6a

    ld h, l
    ld l, h
    ld [hl], b
    jr nz, @+$7b

jr_01a_56fa:
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01a_5766

    ld h, c
    ld l, l
    ld h, l
    ld l, $01
    ld d, e
    ld [hl], h
    ld [hl], l
    ld h, h

jr_01a_5708:
    ld a, c
    jr nz, jr_01a_5780

    ld [hl], b
    ld hl, $4c02
    ld h, l
    ld h, c
    ld [hl], d
    ld l, [hl]
    jr nz, jr_01a_5789

    ld l, b
    ld h, l

jr_01a_5717:
    jr nz, jr_01a_577d

    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld h, l
    ld l, [hl]

jr_01a_5720:
    ld h, e
    ld h, l
    ld bc, $6562
    ld [hl], h
    ld [hl], a
    ld h, l
    ld h, l
    ld l, [hl]

jr_01a_572a:
    jr nz, jr_01a_57a3

    ld l, a
    ld l, a
    ld h, h

jr_01a_572f:
    ld [hl], e
    jr nz, jr_01a_5793

    ld l, [hl]
    ld h, h
    ld bc, $7269
    ld l, a
    ld l, [hl]

jr_01a_5739:
    ld [hl], e
    ld hl, $0003
    ld c, e
    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$67

    ld [hl], c
    ld [hl], l
    ld l, c
    ld [hl], b
    ld l, l
    ld h, l

jr_01a_574c:
    ld l, [hl]
    ld [hl], h
    ld bc, $6163
    ld l, [hl]
    jr nz, jr_01a_57bc

    ld h, l
    ld l, h
    ld [hl], b
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, @+$69

    ld h, c
    ld l, l
    ld h, l
    ld l, $01
    ld d, e
    ld [hl], h
    ld [hl], l

jr_01a_5766:
    ld h, h
    ld a, c
    jr nz, jr_01a_57df

    ld [hl], b
    ld hl, $0003
    ld l, c
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld bc, $6166
    ld h, e
    ld h, l
    ld bc, $6f6c
    ld h, [hl]
    ld [hl], h
    nop

jr_01a_577d:
    ld b, c
    jr nz, @+$6f

jr_01a_5780:
    ld h, l
    ld [hl], h
    ld h, c
    ld l, h
    jr nz, jr_01a_57e9

    ld l, h
    ld [hl], l
    ld h, d

jr_01a_5789:
    jr nz, jr_01a_5800

    ld [hl], e
    ld h, l
    ld h, h
    ld bc, $6f74
    jr nz, jr_01a_57fb

jr_01a_5793:
    ld l, c
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01a_57fd

    ld h, c
    ld l, h
    ld l, h
    ld l, $02
    ld d, h
    ld l, b
    ld h, l

jr_01a_57a3:
    jr nz, jr_01a_580d

    ld l, c
    ld h, a
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, @+$6b

    ld [hl], h
    ld [hl], e
    ld bc, $756e
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    inc l
    jr nz, jr_01a_582c

    ld l, b
    ld h, l
    jr nz, jr_01a_5829

jr_01a_57bc:
    ld l, a
    ld [hl], d
    ld h, l
    ld bc, $6f6c
    ld h, [hl]
    ld [hl], h
    jr nz, jr_01a_582f

    ld [hl], h
    jr nz, jr_01a_5831

    ld h, c
    ld [hl], e
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01a_5839

    ld [hl], d
    ld l, a
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01a_5849

    ld h, c
    ld [hl], d
    ld [hl], h
    ld bc, $666f

jr_01a_57df:
    jr nz, jr_01a_5842

    jr nz, jr_01a_5846

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_01a_5850

    ld h, l

jr_01a_57e9:
    ld h, c
    ld h, h
    ld bc, $6874
    ld h, c
    ld [hl], h
    jr nz, jr_01a_5856

    ld l, c
    ld [hl], d
    ld h, l
    ld h, e
    ld [hl], h
    ld l, h
    ld a, c
    ld [bc], a
    ld l, c

jr_01a_57fb:
    ld l, l
    ld [hl], b

jr_01a_57fd:
    ld h, c
    ld h, e
    ld [hl], h

jr_01a_5800:
    ld [hl], e
    jr nz, jr_01a_5877

    ld l, b
    ld h, l
    ld bc, $6162
    ld l, h
    ld l, h
    ld l, $03
    nop

jr_01a_580d:
    ld c, h
    ld l, a
    ld h, [hl]
    ld [hl], h
    jr nz, @+$6b

    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $6e61
    ld h, a
    ld l, h
    ld h, l
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_01a_5884

    ld bc, $6c63
    ld [hl], l
    ld h, d
    daa

jr_01a_5829:
    ld [hl], e
    jr nz, jr_01a_5892

jr_01a_582c:
    ld h, c
    ld h, e
    ld h, l

jr_01a_582f:
    ld l, $03

jr_01a_5831:
    nop
    ld d, a
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01a_58ac

    ld l, a

jr_01a_5839:
    jr nz, jr_01a_58a6

    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_01a_58b4

    ld l, b
    ld h, l

jr_01a_5842:
    ld bc, $6162
    ld [hl], e

jr_01a_5846:
    ld l, c
    ld h, e
    ld [hl], e

jr_01a_5849:
    jr nz, jr_01a_58ba

    ld h, [hl]
    jr nz, jr_01a_58b5

    ld l, a
    ld l, h

jr_01a_5850:
    ld h, [hl]
    ld bc, $6574
    ld h, e
    ld l, b

jr_01a_5856:
    ld l, [hl]
    ld l, c
    ld [hl], c
    ld [hl], l
    ld h, l
    ld [hl], e
    ccf
    nop
    ld b, a
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_01a_58d8

    ld h, l
    ld h, e
    ld l, b
    ld l, [hl]
    ld l, c
    ld [hl], c
    ld [hl], l
    ld h, l
    jr nz, jr_01a_58d7

    ld [hl], e
    ld bc, $6564
    ld h, l
    ld [hl], b
    ld l, $20
    ld c, h

jr_01a_5877:
    ld h, l
    ld h, c
    ld [hl], d
    ld l, [hl]
    jr nz, jr_01a_58e6

    ld [hl], h
    jr nz, jr_01a_58f4

    ld l, a
    ld bc, $6d69

jr_01a_5884:
    ld [hl], b
    ld [hl], d
    ld l, a
    db $76
    ld h, l
    jr nz, jr_01a_5904

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01a_58f7

    ld h, c
    ld l, l

jr_01a_5892:
    ld h, l
    ld l, $02
    ld b, l
    db $76
    ld h, l
    ld l, [hl]
    jr nz, jr_01a_590f

    ld l, b
    ld h, l
    jr nz, jr_01a_5912

    ld l, b
    ld l, a
    ld [hl], d
    ld [hl], h
    jr nz, jr_01a_590c

    ld h, c

jr_01a_58a6:
    ld l, l
    ld h, l
    inc l
    ld bc, $726f

jr_01a_58ac:
    jr nz, jr_01a_590f

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e

jr_01a_58b4:
    ld l, b

jr_01a_58b5:
    inc l
    jr nz, jr_01a_5920

    ld h, c
    ld [hl], e

jr_01a_58ba:
    ld bc, $616d
    ld l, [hl]
    ld a, c
    jr nz, @+$76

    ld h, l
    ld h, e
    ld l, b
    ld l, [hl]
    ld l, c
    ld [hl], c
    ld [hl], l
    ld h, l
    ld [hl], e
    ld l, $03
    nop
    ld b, a
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, @+$76

    ld h, l
    ld h, e
    ld l, b
    ld l, [hl]

jr_01a_58d7:
    ld l, c

jr_01a_58d8:
    ld [hl], c
    ld [hl], l
    ld h, l
    jr nz, jr_01a_5946

    ld [hl], e
    ld bc, $6564
    ld h, l
    ld [hl], b
    ld l, $20
    ld c, h

jr_01a_58e6:
    ld h, l
    ld h, c
    ld [hl], d
    ld l, [hl]
    jr nz, jr_01a_5955

    ld [hl], h
    jr nz, jr_01a_5963

    ld l, a
    ld bc, $6d69
    ld [hl], b

jr_01a_58f4:
    ld [hl], d
    ld l, a
    db $76

jr_01a_58f7:
    ld h, l
    jr nz, jr_01a_5973

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, @+$69

    ld h, c
    ld l, l
    ld h, l
    ld l, $03

jr_01a_5904:
    nop
    ld a, c
    ld l, c
    ld [hl], b
    ld [hl], e
    ld bc, $6e69

jr_01a_590c:
    ld [hl], h
    ld h, l
    ld l, [hl]

jr_01a_590f:
    ld [hl], h
    ld l, c
    ld l, a

jr_01a_5912:
    ld l, [hl]
    ld h, c
    ld l, h
    ld bc, $6863
    ld l, c
    ld [hl], b
    jr nz, jr_01a_598f

    ld l, b
    ld l, a
    ld [hl], h
    nop

jr_01a_5920:
    ld c, c
    ld l, [hl]
    ld h, c
    ld h, d
    ld l, c
    ld l, h
    ld l, c
    ld [hl], h
    ld a, c
    jr nz, jr_01a_599f

    ld l, a
    ld bc, $6968
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01a_5998

    ld h, c
    ld l, h
    ld l, h
    ld bc, $7270
    ld l, a
    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, h
    ld a, c
    jr nz, jr_01a_59a8

    ld [hl], l
    ld h, l

jr_01a_5946:
    jr nz, jr_01a_59bc

    ld l, a
    ld [bc], a
    ld l, [hl]
    ld h, l
    ld [hl], d
    db $76
    ld h, l
    ld [hl], e
    ld l, $20
    ld e, c
    ld l, c
    ld [hl], b

jr_01a_5955:
    ld [hl], e
    ld bc, $7375
    ld [hl], l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_01a_59cf

    ld h, e
    ld h, e
    ld [hl], l

jr_01a_5963:
    ld [hl], d
    ld bc, $6877
    ld h, l
    ld l, [hl]
    jr nz, @+$72

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld [bc], a
    ld h, d

jr_01a_5973:
    ld [hl], l
    ld [hl], h
    jr nz, jr_01a_59e4

    ld h, c
    ld a, c
    jr nz, jr_01a_59ea

    ld h, e
    ld h, e
    ld [hl], l
    ld [hl], d
    ld bc, $6c65
    ld [hl], e
    ld h, l
    ld [hl], a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld bc, $7361
    jr nz, jr_01a_5a05

    ld h, l

jr_01a_598f:
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld d, b
    ld [hl], l
    ld [hl], d
    ld [hl], b

jr_01a_5998:
    ld l, a
    ld [hl], e
    ld h, l
    ld l, h
    ld a, c
    jr nz, @+$6a

jr_01a_599f:
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6874

jr_01a_59a8:
    ld h, l
    jr nz, jr_01a_5a0d

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01a_5a1c

    ld h, l
    ld h, [hl]
    ld [hl], h
    jr nz, jr_01a_5a24

    ld [hl], d
    ld bc, $6972
    ld h, a
    ld l, b
    ld [hl], h

jr_01a_59bc:
    jr nz, jr_01a_5a35

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01a_5a24

    ld [bc], a
    ld l, b
    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_01a_5a39

    ld [hl], d
    jr nz, @+$75

    ld l, h
    ld l, c

jr_01a_59cf:
    ld h, e
    ld h, l
    jr nz, jr_01a_5a47

    ld l, a
    ld bc, $7661
    ld l, a
    ld l, c
    ld h, h
    jr nz, jr_01a_5a3d

    ld l, [hl]
    jr nz, jr_01a_5a4e

    ld h, d
    ld [hl], e
    ld [hl], h
    ld h, c
    ld h, e

jr_01a_59e4:
    ld l, h
    ld h, l
    ld bc, $6e61
    ld h, h

jr_01a_59ea:
    jr nz, jr_01a_5a53

    ld h, l
    ld [hl], h
    jr nz, jr_01a_5a5f

    ld l, [hl]
    jr nz, jr_01a_5a5a

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $03
    nop
    ld b, c
    ld l, [hl]
    jr nz, jr_01a_5a5f

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b

jr_01a_5a05:
    ld bc, $6873
    ld l, a
    ld [hl], h
    jr nz, jr_01a_5a75

    ld l, [hl]

jr_01a_5a0d:
    jr nz, @+$79

    ld l, b
    ld l, c
    ld h, e
    ld l, b
    ld bc, $6874
    ld h, l
    jr nz, jr_01a_5a7b

    ld h, c
    ld l, h
    ld l, h

jr_01a_5a1c:
    jr nz, jr_01a_5a87

    ld [hl], e
    ld [bc], a
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], h

jr_01a_5a24:
    jr nz, @+$71

    ld l, [hl]
    jr nz, @+$63

    jr nz, jr_01a_5a93

    ld l, c
    ld h, a
    ld l, b
    ld bc, $7274
    ld h, c
    ld l, d
    ld h, l
    ld h, e

jr_01a_5a35:
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c

jr_01a_5a39:
    inc l
    ld bc, $6874

jr_01a_5a3d:
    ld h, l
    ld l, [hl]
    jr nz, jr_01a_5ab3

    ld l, a
    ld l, h
    ld l, h
    ld [hl], e
    ld [bc], a
    ld [hl], h

jr_01a_5a47:
    ld l, a
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_01a_5ac2

jr_01a_5a4e:
    ld l, b
    ld h, l
    jr nz, jr_01a_5ab5

    ld [hl], l

jr_01a_5a53:
    ld [hl], b
    ld bc, $6661
    ld [hl], h
    ld h, l
    ld [hl], d

jr_01a_5a5a:
    jr nz, jr_01a_5ac8

    ld h, c
    ld l, [hl]
    ld h, h

jr_01a_5a5f:
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6e6f
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01a_5ad2

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $03
    nop
    ld d, a
    ld h, c
    ld l, [hl]

jr_01a_5a75:
    ld [hl], h
    jr nz, jr_01a_5aec

    ld l, a
    jr nz, jr_01a_5ae3

jr_01a_5a7b:
    ld h, l
    ld h, c
    ld [hl], d
    jr nz, jr_01a_5ae1

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    ld bc, $6f67

jr_01a_5a87:
    ld l, h
    ld h, [hl]
    jr nz, jr_01a_5af1

    ld h, c
    ld h, e
    ld l, c
    ld l, h
    ld l, c
    ld [hl], h
    ld l, c
    ld h, l

jr_01a_5a93:
    ld [hl], e
    jr nz, jr_01a_5af7

    ld l, [hl]
    ld h, h
    ld bc, $7165
    ld [hl], l
    ld l, c
    ld [hl], b
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ccf
    nop
    ld b, a
    ld l, a
    ld l, h
    ld h, [hl]
    daa
    ld [hl], e
    jr nz, jr_01a_5b0f

    ld l, b
    ld h, c
    ld [hl], d
    ld l, l
    jr nz, jr_01a_5b1e

    ld l, c

jr_01a_5ab3:
    ld h, l
    ld [hl], e

jr_01a_5ab5:
    ld bc, $6e69
    jr nz, jr_01a_5b2d

    ld [hl], h
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, l
    ld h, a
    ld a, c
    inc l

jr_01a_5ac2:
    jr nz, @+$75

    ld l, a
    ld bc, $656c

jr_01a_5ac8:
    ld h, c
    ld [hl], d
    ld l, [hl]
    jr nz, jr_01a_5b41

    ld l, b
    ld h, l
    jr nz, jr_01a_5b34

    ld l, a

jr_01a_5ad2:
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld hl, $4902
    ld h, [hl]
    jr nz, jr_01a_5b55

    ld l, a
    ld [hl], l
    jr nz, @+$6d

    ld l, [hl]

jr_01a_5ae1:
    ld l, a
    ld [hl], a

jr_01a_5ae3:
    jr nz, jr_01a_5b59

    ld l, b
    ld h, l
    ld bc, $6166
    ld h, e
    ld l, c

jr_01a_5aec:
    ld l, h
    ld l, c
    ld [hl], h
    ld l, c
    ld h, l

jr_01a_5af1:
    ld [hl], e
    inc l
    jr nz, jr_01a_5b5e

    ld [hl], h
    daa

jr_01a_5af7:
    ld l, h
    ld l, h
    jr nz, jr_01a_5b63

    ld h, l
    ld l, h
    ld [hl], b
    ld bc, $6e6f
    jr nz, jr_01a_5b77

    ld l, b
    ld h, l
    jr nz, @+$65

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $03
    nop

jr_01a_5b0f:
    ld b, a
    ld l, a
    ld l, h
    ld h, [hl]
    daa
    ld [hl], e
    jr nz, jr_01a_5b7a

    ld l, b
    ld h, c
    ld [hl], d
    ld l, l
    jr nz, @+$6e

    ld l, c

jr_01a_5b1e:
    ld h, l
    ld [hl], e
    ld bc, $6e69
    jr nz, jr_01a_5b98

    ld [hl], h
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, l
    ld h, a
    ld a, c
    inc l

jr_01a_5b2d:
    jr nz, jr_01a_5ba2

    ld l, a
    ld bc, $656c
    ld h, c

jr_01a_5b34:
    ld [hl], d
    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, @+$65

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l

jr_01a_5b41:
    ld hl, $0003
    ld c, a
    ld b, d
    ld bc, $7563
    ld [hl], b
    ld bc, $7567
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, @+$64

    ld [hl], l
    ld l, [hl]
    ld l, e

jr_01a_5b55:
    ld h, l
    ld [hl], d
    nop
    ld c, a

jr_01a_5b59:
    ld b, d
    jr nz, @+$75

    ld [hl], h
    ld h, c

jr_01a_5b5e:
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, jr_01a_5bc9

jr_01a_5b63:
    ld l, a
    ld [hl], d
    ld bc, $756f
    ld [hl], h
    jr nz, jr_01a_5bda

    ld h, [hl]
    jr nz, jr_01a_5bd0

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $01
    ld d, h
    ld l, b

jr_01a_5b77:
    ld h, l
    ld [hl], d
    ld h, l

jr_01a_5b7a:
    daa
    ld [hl], e
    jr nz, jr_01a_5bdf

    jr nz, @+$33

    dec l
    ld [bc], a
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    jr nz, jr_01a_5bfa

    ld h, l
    ld l, [hl]
    ld h, c
    ld l, h
    ld [hl], h
    ld a, c
    inc l
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    ld bc, $6f79

jr_01a_5b98:
    ld [hl], l
    jr nz, jr_01a_5c08

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, @+$74

    ld h, l
    dec l

jr_01a_5ba2:
    ld l, b
    ld l, c
    ld [hl], h
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01a_5c15

    ld l, a
    ld l, h
    ld h, l
    jr nz, jr_01a_5c1b

    ld l, [hl]
    jr nz, jr_01a_5c29

    ld l, b
    ld h, l
    ld bc, $7267
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_01a_5c33

    ld l, b
    ld h, c
    ld [hl], h
    ld bc, $6f67
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d

jr_01a_5bc9:
    ld [hl], e
    jr nz, jr_01a_5c2d

    ld l, c
    ld l, l
    jr nz, jr_01a_5c36

jr_01a_5bd0:
    ld l, a
    ld [hl], d
    ld l, $02
    ld b, c
    jr nz, @+$68

    ld l, h
    ld h, c
    ld h, a

jr_01a_5bda:
    jr nz, @+$6f

    ld h, c
    ld [hl], d
    ld l, e

jr_01a_5bdf:
    ld [hl], e
    jr nz, jr_01a_5c4b

    ld [hl], h
    inc l
    ld bc, $6f73
    jr nz, jr_01a_5c62

    ld l, a
    ld [hl], l
    jr nz, jr_01a_5c50

    ld h, c
    ld l, [hl]
    jr nz, jr_01a_5c64

    ld h, l
    ld h, l
    jr nz, jr_01a_5c5e

    ld [hl], h
    ld bc, $7266
    ld l, a

jr_01a_5bfa:
    ld l, l
    jr nz, jr_01a_5c5e

    jr nz, jr_01a_5c63

    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, $03

jr_01a_5c08:
    nop
    ld b, c
    jr nz, jr_01a_5c6e

    ld [hl], l
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    jr nz, jr_01a_5c87

    ld l, b
    ld h, c

jr_01a_5c15:
    ld [hl], h
    ld bc, $7270
    ld l, a
    ld [hl], h

jr_01a_5c1b:
    ld h, l
    ld h, e
    ld [hl], h
    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $7267
    ld h, l
    ld h, l
    ld l, [hl]

jr_01a_5c29:
    ld l, $03
    nop
    ld d, e

jr_01a_5c2d:
    ld l, b
    ld h, c
    ld l, h
    ld l, h
    jr nz, @+$4b

jr_01a_5c33:
    jr nz, jr_01a_5ca9

    ld h, l

jr_01a_5c36:
    ld l, h
    ld l, h
    jr nz, jr_01a_5ca2

    ld l, a
    ld [hl], a
    jr nz, jr_01a_5cb2

    ld l, a
    ld bc, $6966
    ld l, [hl]
    ld h, h
    jr nz, jr_01a_5cba

    ld l, b
    ld h, l
    jr nz, jr_01a_5cc1

    ld l, a

jr_01a_5c4b:
    ld [hl], d
    ld h, h
    ld [hl], e
    jr nz, jr_01a_5cc9

jr_01a_5c50:
    ld l, a
    ld [hl], l
    ld bc, $6177
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01a_5ccd

    ld l, a
    jr nz, jr_01a_5cc8

    ld l, a
    ld l, a

jr_01a_5c5e:
    ld l, e
    dec l
    ld [hl], l
    ld [hl], b

jr_01a_5c62:
    ccf

jr_01a_5c63:
    nop

jr_01a_5c64:
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01a_5cd6

    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01a_5ce7

jr_01a_5c6e:
    ld l, a
    ld [hl], l
    jr nz, jr_01a_5cdd

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld bc, $6261
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, @+$69

    ld l, a
    ld l, h
    ld h, [hl]
    inc l
    jr nz, jr_01a_5cf7

    ld l, b
    ld h, l
    jr nz, @+$6f

jr_01a_5c87:
    ld l, a
    ld [hl], d
    ld h, l
    ld bc, $7566
    ld l, [hl]
    jr nz, jr_01a_5cf9

    ld [hl], h
    jr nz, @+$6b

    ld [hl], e
    ld l, $02
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_01a_5d06

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, h
    ld h, l
    ld h, h
    ld h, a

jr_01a_5ca2:
    ld h, l
    jr nz, jr_01a_5d06

    ld l, h
    ld l, a
    ld l, [hl]
    ld h, l

jr_01a_5ca9:
    ld bc, $7369
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01a_5d16

    ld l, [hl]

jr_01a_5cb2:
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld l, $20
    ld b, [hl]
    ld l, a

jr_01a_5cba:
    ld [hl], d
    ld l, l
    ld bc, $7369
    jr nz, jr_01a_5d2a

jr_01a_5cc1:
    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    ld h, c
    ld l, [hl]

jr_01a_5cc8:
    ld [hl], h

jr_01a_5cc9:
    inc l
    jr nz, jr_01a_5d40

    ld l, a

jr_01a_5ccd:
    ld l, a
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01a_5d43

jr_01a_5cd6:
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01a_5d54

    ld l, a
    ld [hl], l

jr_01a_5cdd:
    jr nz, jr_01a_5d4a

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld bc, $6261
    ld l, a
    ld [hl], l

jr_01a_5ce7:
    ld [hl], h
    jr nz, @+$69

    ld l, a
    ld l, h
    ld h, [hl]
    inc l
    jr nz, jr_01a_5d64

    ld l, b
    ld h, l
    ld bc, $6f6d
    ld [hl], d
    ld h, l

jr_01a_5cf7:
    jr nz, jr_01a_5d5f

jr_01a_5cf9:
    ld [hl], l
    ld l, [hl]
    jr nz, jr_01a_5d66

    ld [hl], h
    jr nz, jr_01a_5d69

    ld [hl], e
    ld l, $03
    nop
    ld c, e
    ld h, l

jr_01a_5d06:
    ld h, l
    ld [hl], b
    jr nz, jr_01a_5d6d

    ld l, b
    ld h, l
    ld h, e
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    ccf
    nop
    ld e, c
    ld l, a
    ld [hl], l

jr_01a_5d16:
    daa
    ld l, h
    ld l, h
    jr nz, jr_01a_5d82

    ld h, c
    ld l, c
    ld l, [hl]
    jr nz, @+$33

    ld bc, $656c
    db $76
    ld h, l
    ld l, h
    jr nz, jr_01a_5d9f

    ld l, c
    ld [hl], h

jr_01a_5d2a:
    ld l, b
    jr nz, jr_01a_5d36

    jr nz, jr_01a_5d9c

    ld l, a
    ld [hl], d
    ld h, l
    ld bc, $6f70
    ld l, c

jr_01a_5d36:
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    inc l
    jr nz, jr_01a_5d43

    ld l, $03
    nop
    ld e, c

jr_01a_5d40:
    ld l, a
    ld [hl], l
    ld [hl], d

jr_01a_5d43:
    jr nz, jr_01a_5db1

    ld h, l
    db $76
    ld h, l
    ld l, h
    daa

jr_01a_5d4a:
    ld [hl], e
    jr nz, jr_01a_5db5

    ld l, c
    ld h, a
    ld l, b
    ld bc, $6e65
    ld l, a

jr_01a_5d54:
    ld [hl], l
    ld h, a
    ld l, b
    inc l
    jr nz, jr_01a_5d61

    ld l, $01
    ld e, c
    ld l, a
    ld [hl], l

jr_01a_5d5f:
    daa
    db $76

jr_01a_5d61:
    ld h, l
    jr nz, jr_01a_5ddb

jr_01a_5d64:
    ld l, a
    ld [hl], d

jr_01a_5d66:
    ld l, e
    ld h, l
    ld h, h

jr_01a_5d69:
    jr nz, jr_01a_5dd3

    ld h, c
    ld [hl], d

jr_01a_5d6d:
    ld h, h
    ld hl, $0003
    ld c, c
    ld [hl], h
    jr nz, jr_01a_5de8

    ld h, l
    ld h, l
    ld l, l
    ld [hl], e
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld bc, $6c70
    ld h, c
    ld h, e

jr_01a_5d82:
    ld h, l
    ld h, h
    jr nz, jr_01a_5def

    ld l, [hl]
    jr nz, jr_01a_5dfd

    ld l, b
    ld h, l
    jr nz, jr_01a_5dda

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_01a_5ded

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01a_5d9c:
    ld l, [hl]
    ld h, c
    ld l, l

jr_01a_5d9f:
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $02
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01a_5e23

    ld l, a
    ld [hl], l
    jr nz, jr_01a_5e21

    ld l, b
    ld l, a
    ld l, a

jr_01a_5db1:
    ld [hl], h
    ld bc, $6f66

jr_01a_5db5:
    ld [hl], d
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, @+$45

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_01a_5e38

    ld h, l
    ld a, b
    ld [hl], h
    ccf
    nop
    ld d, e
    ld [hl], l
    ld [hl], d
    ld h, l

jr_01a_5dd3:
    ld l, h
    ld a, c
    jr nz, jr_01a_5dde

    ld bc, $6163

jr_01a_5dda:
    ld l, [hl]

jr_01a_5ddb:
    jr nz, jr_01a_5e54

    ld l, c

jr_01a_5dde:
    ld l, [hl]
    jr nz, jr_01a_5e55

    ld l, b
    ld h, l
    jr nz, jr_01a_5e28

    ld l, h
    ld [hl], l
    ld h, d

jr_01a_5de8:
    ld bc, $6f54
    ld [hl], l
    ld [hl], d

jr_01a_5ded:
    ld l, [hl]
    ld h, c

jr_01a_5def:
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01a_5e56

    ld l, [hl]
    ld h, h
    ld [bc], a
    ld h, d
    ld h, l
    ld h, e
    ld l, a
    ld l, l

jr_01a_5dfd:
    ld h, l
    jr nz, jr_01a_5e43

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_01a_5e48

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, $03
    nop
    ld d, h
    ld h, c
    ld l, e
    ld h, l
    jr nz, @+$71

    ld l, [hl]
    jr nz, jr_01a_5e79

    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld bc, $6863
    ld h, c

jr_01a_5e21:
    ld l, h
    ld l, h

jr_01a_5e23:
    ld h, l
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], e

jr_01a_5e28:
    jr nz, jr_01a_5e9e

    ld l, a
    jr nz, jr_01a_5e96

    ld l, l
    dec l
    ld bc, $7270
    ld l, a
    db $76
    ld h, l
    jr nz, @+$7b

    ld l, a

jr_01a_5e38:
    ld [hl], l
    ld [hl], d
    jr nz, jr_01a_5eaf

    ld l, e
    ld l, c
    ld l, h
    ld l, h
    ld [hl], e
    ld l, $03

jr_01a_5e43:
    nop
    ld d, e
    ld l, a
    jr nz, @+$7b

jr_01a_5e48:
    ld l, a
    ld [hl], l
    jr nz, jr_01a_5ec3

    ld l, a
    ld l, [hl]
    jr nz, jr_01a_5e9d

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a

jr_01a_5e54:
    ld l, [hl]

jr_01a_5e55:
    daa

jr_01a_5e56:
    ld [hl], e
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_01a_5eb2

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    inc l
    ld bc, $6865
    inc l
    jr nz, jr_01a_5e75

    ccf
    jr nz, @+$49

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h

jr_01a_5e75:
    ld hl, $4202
    ld [hl], l

jr_01a_5e79:
    ld [hl], h
    jr nz, jr_01a_5ee0

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01a_5ef5

    ld [hl], h
    ld l, a
    ld [hl], b
    jr nz, jr_01a_5efb

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $4b01
    ld h, l
    ld h, l
    ld [hl], b
    jr nz, jr_01a_5f0c

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01a_5e96:
    jr nz, @+$67

    ld a, c
    ld h, l
    ld [hl], e
    jr nz, jr_01a_5f0c

jr_01a_5e9d:
    ld l, [hl]

jr_01a_5e9e:
    ld bc, $6874
    ld h, l
    jr nz, jr_01a_5f14

    ld [hl], d
    ld l, c
    ld a, d
    ld h, l
    ld hl, $0003
    ld c, c
    ld [hl], h
    daa
    ld [hl], e

jr_01a_5eaf:
    jr nz, jr_01a_5f25

    ld l, a

jr_01a_5eb2:
    ld l, a
    jr nz, @+$64

    ld h, c
    ld h, h
    jr nz, jr_01a_5f2d

    ld l, b
    ld h, c
    ld [hl], h
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01a_5f25

    ld l, a

jr_01a_5ec3:
    ld [hl], l
    ld l, h
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01a_5f3b

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld l, $02
    ld b, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, @+$6e

    ld [hl], l
    ld h, e
    ld l, e
    jr nz, jr_01a_5f45

    ld l, [hl]
    ld bc, $6874

jr_01a_5ee0:
    ld h, l
    jr nz, jr_01a_5f51

    ld h, l
    ld a, b
    ld [hl], h
    ld bc, $6f74
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $03
    nop
    ld c, c

jr_01a_5ef5:
    ld [hl], h
    jr nz, @+$75

    ld h, l
    ld h, l
    ld l, l

jr_01a_5efb:
    ld [hl], e
    jr nz, jr_01a_5f77

    ld l, a
    ld [hl], l
    ld bc, $6c70
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    jr nz, jr_01a_5f72

    ld l, [hl]
    jr nz, @+$76

jr_01a_5f0c:
    ld l, b
    ld h, l
    jr nz, jr_01a_5f5d

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a

jr_01a_5f14:
    ld l, [hl]
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, @+$56

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h

jr_01a_5f25:
    ld l, $02
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, @+$7b

jr_01a_5f2d:
    ld l, a
    ld [hl], l
    jr nz, jr_01a_5fa4

    ld l, b
    ld l, a
    ld l, a
    ld [hl], h
    ld bc, $6f66
    ld [hl], d
    jr nz, jr_01a_5faf

jr_01a_5f3b:
    ld l, b
    ld h, l
    jr nz, jr_01a_5f82

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6843

jr_01a_5f45:
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_01a_5fbb

    ld h, l
    ld a, b
    ld [hl], h
    ccf

jr_01a_5f51:
    nop
    ld c, $04
    jr nz, jr_01a_5fbf

    ld [hl], e
    jr nz, jr_01a_5fbf

    ld l, a
    ld h, e
    ld [hl], l
    ld [hl], e

jr_01a_5f5d:
    ld h, l
    ld h, h
    inc l
    ld bc, $7562
    ld [hl], h
    jr nz, jr_01a_5f6d

    ld bc, $6163
    ld l, [hl]
    jr nz, jr_01a_5fce

    ld h, l

jr_01a_5f6d:
    ld h, c
    ld [hl], h
    jr nz, @+$6a

    ld l, c

jr_01a_5f72:
    ld l, l
    ld hl, $0003
    ld c, l

jr_01a_5f77:
    ld h, c
    ld a, c
    ld h, d
    ld h, l
    jr nz, jr_01a_5ff6

    ld l, a
    ld [hl], l
    jr nz, jr_01a_5ff4

    ld l, b

jr_01a_5f82:
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    ld bc, $6e65
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01a_6002

    ld l, b
    ld h, l
    jr nz, jr_01a_5fe2

    ld h, c
    ld l, h
    ld l, l
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, @+$56

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]

jr_01a_5fa4:
    ld [hl], h
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01a_6013

    ld h, l
    ld h, c
    ld [hl], d
    ld h, h

jr_01a_5faf:
    jr nz, jr_01a_602a

    ld l, a
    ld [hl], l
    jr nz, jr_01a_602c

    ld l, a
    ld l, [hl]
    ld bc, $6874
    ld h, l

jr_01a_5fbb:
    jr nz, jr_01a_600d

    ld h, c
    ld l, h

jr_01a_5fbf:
    ld l, l
    jr nz, jr_01a_6005

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6f54
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l

jr_01a_5fce:
    ld l, [hl]
    ld [hl], h
    ld l, $02
    ld b, a
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    inc l
    jr nz, @+$09

    ld hl, $4e01
    ld h, l
    ld a, b
    ld [hl], h
    jr nz, jr_01a_6055

jr_01a_5fe2:
    ld [hl], h
    ld l, a
    ld [hl], b
    inc l
    jr nz, @+$78

    ld l, c
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    ld bc, $7461
    jr nz, @+$46

    ld [hl], l

jr_01a_5ff4:
    ld l, [hl]
    ld h, l

jr_01a_5ff6:
    jr nz, jr_01a_603b

    ld l, h
    ld [hl], l
    ld h, d
    ld hl, $0003
    ld c, c
    jr nz, jr_01a_6069

    ld h, l

jr_01a_6002:
    ld h, c
    ld [hl], d
    ld h, h

jr_01a_6005:
    jr nz, jr_01a_6080

    ld l, a
    ld [hl], l
    jr nz, @+$72

    ld l, h
    ld h, c

jr_01a_600d:
    ld h, e
    ld h, l
    ld h, h
    ld bc, $6e69

jr_01a_6013:
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01a_605d

    ld [hl], l
    ld l, [hl]
    ld h, l
    jr nz, jr_01a_6061

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6f54
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l

jr_01a_602a:
    ld l, [hl]
    ld [hl], h

jr_01a_602c:
    ld l, $02
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01a_60ad

    ld l, a
    ld [hl], l
    jr nz, jr_01a_60ab

    ld l, b
    ld l, a
    ld l, a

jr_01a_603b:
    ld [hl], h
    jr nz, jr_01a_60a4

    ld l, a
    ld [hl], d
    ld bc, $6874
    ld h, l
    jr nz, @+$45

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_01a_608e

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $656e

jr_01a_6055:
    ld a, b
    ld [hl], h
    ccf
    nop
    ld c, $06
    daa
    ld [hl], e

jr_01a_605d:
    jr nz, jr_01a_60c0

    jr nz, @+$72

jr_01a_6061:
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld bc, $6968
    ld [hl], h

jr_01a_6069:
    ld [hl], h
    ld h, l
    ld [hl], d
    inc l
    jr nz, jr_01a_60e2

    ld l, a
    jr nz, jr_01a_60e9

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    ld bc, $7469
    inc l
    jr nz, jr_01a_6083

    ld hl, $0003
    ld c, l

jr_01a_6080:
    ld h, c
    ld a, c
    ld h, d

jr_01a_6083:
    ld h, l
    jr nz, jr_01a_60ff

    ld l, a
    ld [hl], l
    jr nz, jr_01a_60fd

    ld l, b
    ld l, a
    ld [hl], l
    ld l, h

jr_01a_608e:
    ld h, h
    ld bc, $6e65
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01a_610b

    ld l, b
    ld h, l
    jr nz, jr_01a_60e7

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    ld bc, $6c43
    ld [hl], l
    ld h, d

jr_01a_60a4:
    jr nz, jr_01a_60fa

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c

jr_01a_60ab:
    ld l, l
    ld h, l

jr_01a_60ad:
    ld l, [hl]
    ld [hl], h
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01a_611d

    ld h, l
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_01a_6134

    ld l, a
    ld [hl], l
    jr nz, jr_01a_6136

    ld l, a

jr_01a_60c0:
    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, jr_01a_610b

    ld [hl], l
    ld l, [hl]
    ld h, l
    jr nz, jr_01a_610f

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6f54
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $02
    ld b, a
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    inc l

jr_01a_60e2:
    jr nz, @+$09

    ld hl, $4e01

jr_01a_60e7:
    ld h, l
    ld a, b

jr_01a_60e9:
    ld [hl], h
    jr nz, jr_01a_615f

    ld [hl], h
    ld l, a
    ld [hl], b
    inc l
    ld bc, $6976
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    jr nz, jr_01a_615b

jr_01a_60fa:
    ld [hl], h
    jr nz, @+$4e

jr_01a_60fd:
    ld l, c
    ld l, [hl]

jr_01a_60ff:
    ld l, e
    ld [hl], e
    ld hl, $0003
    ld c, c
    ld [hl], h
    jr nz, jr_01a_617b

    ld h, l
    ld h, l
    ld l, l

jr_01a_610b:
    ld [hl], e
    jr nz, @+$7b

    ld l, a

jr_01a_610f:
    ld [hl], l
    jr nz, jr_01a_6182

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    ld bc, $6e69
    jr nz, jr_01a_6190

    ld l, b

jr_01a_611d:
    ld h, l
    jr nz, jr_01a_616c

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_01a_617f

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h

jr_01a_6134:
    ld l, $02

jr_01a_6136:
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01a_61b5

    ld l, a
    ld [hl], l
    jr nz, jr_01a_61b3

    ld l, b
    ld l, a
    ld l, a
    ld [hl], h
    jr nz, jr_01a_61ac

    ld l, a
    ld [hl], d
    ld bc, $6874
    ld h, l
    jr nz, jr_01a_6195

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]

jr_01a_615b:
    ld bc, $656e
    ld a, b

jr_01a_615f:
    ld [hl], h
    ccf
    nop
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_01a_61db

    ld h, c
    ld a, c
    jr nz, jr_01a_61e0

jr_01a_616c:
    ld l, b
    ld h, l
    jr nz, jr_01a_61bc

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    ld bc, $7369
    jr nz, jr_01a_61da

    jr nz, jr_01a_61dd

jr_01a_617b:
    ld h, c
    ld [hl], h
    ld [hl], h
    ld l, h

jr_01a_617f:
    ld h, l
    jr nz, jr_01a_61f9

jr_01a_6182:
    ld l, c
    ld [hl], h
    ld l, b
    ld bc, $6874
    ld h, l
    jr nz, jr_01a_6202

    ld l, c
    ld l, [hl]
    ld h, h
    ld l, $02

jr_01a_6190:
    ld c, c
    jr nz, @+$6a

    ld h, l
    ld h, c

jr_01a_6195:
    ld [hl], d
    jr nz, jr_01a_6201

    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$6a

    ld h, c
    ld [hl], d
    ld h, h
    inc l
    ld bc, $6f73
    jr nz, jr_01a_620d

    ld l, a
    ld l, a
    ld h, h
    jr nz, @+$6e

    ld [hl], l

jr_01a_61ac:
    ld h, e
    ld l, e
    ld hl, $0003
    ld b, c
    ld l, b

jr_01a_61b3:
    ld l, $2e

jr_01a_61b5:
    ld l, $54
    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, c

jr_01a_61bc:
    ld l, [hl]
    ld h, a
    ld bc, $766f
    ld h, l
    ld [hl], d
    jr nz, jr_01a_6239

    ld l, c
    ld [hl], h
    ld l, h
    ld h, l
    ld [hl], e
    ld l, $01
    ld c, c
    jr nz, jr_01a_6244

    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, h
    ld l, $03

jr_01a_61da:
    nop

jr_01a_61db:
    ld b, e
    ld l, a

jr_01a_61dd:
    ld l, [hl]
    ld h, a
    ld [hl], d

jr_01a_61e0:
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
    ld bc, $6e6f
    jr nz, jr_01a_6268

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01a_626a

    ld l, c
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d

jr_01a_61f9:
    ld a, c
    ld bc, $7461
    jr nz, jr_01a_624b

    ld l, c
    ld l, [hl]

jr_01a_6201:
    ld l, e

jr_01a_6202:
    ld [hl], e
    ld hl, $4202
    ld [hl], l
    ld [hl], h
    jr nz, jr_01a_626e

    ld l, a
    ld l, [hl]
    daa

jr_01a_620d:
    ld [hl], h
    jr nz, jr_01a_6277

    ld h, l
    ld [hl], h
    jr nz, jr_01a_6288

    ld l, a
    ld l, a
    ld bc, $6968
    ld h, a
    ld l, b
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, jr_01a_628e

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld a, c
    ld l, $01
    ld b, d
    ld h, l
    jr nz, @+$63

    jr nz, jr_01a_62a0

    ld l, a
    ld l, h
    ld h, l
    jr nz, jr_01a_62a0

    ld l, a
    ld h, h
    ld h, l
    ld l, h
    ld l, $03

jr_01a_6239:
    nop
    ld d, b
    ld h, l
    ld [hl], d
    ld l, b
    ld h, c
    ld [hl], b
    ld [hl], e
    jr nz, jr_01a_62bc

    ld l, a

jr_01a_6244:
    ld [hl], l
    jr nz, @+$75

    ld l, b
    ld h, c
    ld l, h
    ld l, h

jr_01a_624b:
    ld bc, $6562
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_01a_62c8

    ld l, b
    ld h, l
    jr nz, jr_01a_62bd

    ld l, [hl]
    db $76
    ld a, c
    ld bc, $666f
    jr nz, jr_01a_62c1

    ld l, h
    ld l, h
    jr nz, @+$69

    ld l, a
    ld l, h
    ld h, [hl]
    ld h, l

jr_01a_6268:
    ld [hl], d
    ld [hl], e

jr_01a_626a:
    ld hl, $0003
    ld b, e

jr_01a_626e:
    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_01a_62c7

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]

jr_01a_6277:
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld bc, $7250
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_01a_62d9

    ld l, a

jr_01a_6288:
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld bc, $7551

jr_01a_628e:
    ld l, c
    ld [hl], h
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01a_630a

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $0003
    ld d, e
    ld [hl], h
    ld h, c

jr_01a_62a0:
    ld [hl], d
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$63

    jr nz, jr_01a_631b

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
    jr nz, jr_01a_6322

    ld h, l
    jr nz, jr_01a_6321

    ld h, [hl]
    jr nz, jr_01a_6334

    ld l, a

jr_01a_62bc:
    ld [hl], l

jr_01a_62bd:
    ld bc, $6177
    ld l, [hl]

jr_01a_62c1:
    ld [hl], h
    jr nz, jr_01a_6338

    ld l, a
    jr nz, jr_01a_6337

jr_01a_62c7:
    ld l, h

jr_01a_62c8:
    ld h, c
    ld a, c
    ld l, $03
    nop
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_01a_6347

    ld l, b
    ld h, l
    ld l, [hl]
    inc l
    jr nz, jr_01a_6340

jr_01a_62d9:
    ld l, a
    ld bc, $6861
    ld h, l
    ld h, c
    ld h, h
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, jr_01a_6359

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    ld bc, $7266
    ld l, a
    ld l, l
    jr nz, @+$4a

    ld l, a
    ld l, h
    ld h, l
    jr nz, @+$33

    ld l, $03
    nop
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01a_6368

    ld [hl], e
    jr nz, jr_01a_630d

    jr nz, jr_01a_6347

    ld l, h
    ld [hl], l
    ld h, d
    ld l, $01
    ld d, a

jr_01a_630a:
    ld h, c
    ld l, [hl]
    ld [hl], h

jr_01a_630d:
    jr nz, jr_01a_6383

    ld l, a
    jr nz, jr_01a_6382

    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_01a_637e

    ld l, a
    ld l, h
    ld h, [hl]
    ccf

jr_01a_631b:
    inc bc
    nop
    ld c, c
    ld h, [hl]
    jr nz, jr_01a_639a

jr_01a_6321:
    ld l, a

jr_01a_6322:
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, @+$70

    ld l, a
    ld [hl], h
    jr nz, @+$63

    ld bc, $6c70
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    inc l

jr_01a_6334:
    jr nz, jr_01a_63af

    ld l, a

jr_01a_6337:
    ld [hl], l

jr_01a_6338:
    jr nz, jr_01a_639d

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01a_63a7

jr_01a_6340:
    ld l, a
    ld bc, $6e6f
    jr nz, jr_01a_63ba

    ld l, b

jr_01a_6347:
    ld h, l
    jr nz, @+$65

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $03
    nop
    ld d, e
    ld l, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01a_63d2

jr_01a_6359:
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01a_63ce

    ld l, a
    ld [hl], h
    ld bc, $7571
    ld h, c
    ld l, h
    ld l, c

jr_01a_6368:
    ld h, [hl]
    ld l, c
    ld h, l
    ld h, h
    jr nz, jr_01a_63d4

    ld l, a
    ld [hl], d
    jr nz, jr_01a_63e6

    ld l, b
    ld h, l
    jr nz, jr_01a_63ea

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]

jr_01a_637e:
    ld [hl], h
    inc l
    ld [bc], a
    ld l, b

jr_01a_6382:
    ld l, a

jr_01a_6383:
    ld [hl], a
    jr nz, jr_01a_63e7

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_01a_63ed

    ld bc, $7270
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, @+$74

    ld l, a
    ld [hl], l
    ld l, [hl]

jr_01a_639a:
    ld h, h
    ccf
    nop

jr_01a_639d:
    ld c, a
    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, jr_01a_6414

    ld [hl], l
    ld h, c
    ld l, h
    ld l, c

jr_01a_63a7:
    ld h, [hl]
    ld l, c
    ld h, l
    ld h, h
    ld bc, $6f67
    ld l, h

jr_01a_63af:
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_01a_6418

    ld h, c
    ld l, [hl]
    jr nz, jr_01a_641e

    ld l, [hl]

jr_01a_63ba:
    ld [hl], h
    ld h, l
    ld [hl], d
    ld bc, $6874
    ld h, l
    jr nz, jr_01a_6437

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $03

jr_01a_63ce:
    nop
    ld e, c
    ld l, a
    ld [hl], l

jr_01a_63d2:
    jr nz, jr_01a_6437

jr_01a_63d4:
    ld h, c
    ld l, [hl]
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_01a_643e

    ld bc, $6f72
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_01a_6446

    ld l, [hl]

jr_01a_63e6:
    ld a, c

jr_01a_63e7:
    ld [hl], h
    ld l, c
    ld l, l

jr_01a_63ea:
    ld h, l
    ld l, $01

jr_01a_63ed:
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01a_646c

    ld l, a
    ld [hl], l
    jr nz, jr_01a_646a

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, jr_01a_646b

    ld l, a
    ld [hl], a
    ccf
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01a_6469

    ld h, c
    ld l, [hl]
    jr nz, jr_01a_647a

    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_01a_6470

    ld bc, $7270
    ld h, c
    ld h, e

jr_01a_6414:
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l

jr_01a_6418:
    jr nz, @+$74

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_01a_641e:
    ld bc, $6661
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, @+$76

    ld l, b
    ld h, l
    ld a, c
    jr nz, @+$75

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, $02
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01a_64b0

jr_01a_6437:
    ld l, a
    ld [hl], l
    jr nz, jr_01a_64ae

    ld [hl], h
    ld h, c
    ld [hl], d

jr_01a_643e:
    ld [hl], h
    jr nz, jr_01a_64af

    ld l, a
    ld [hl], a
    ccf
    nop
    ld c, a

jr_01a_6446:
    ld c, e
    ld l, $20
    ld c, a
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, l
    ld a, c
    ld bc, $6966
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    jr nz, jr_01a_64a3

    ld l, a
    ld l, h
    ld h, l
    jr nz, jr_01a_6491

    inc l
    ld bc, $7473
    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, @+$7b

jr_01a_6469:
    ld l, a

jr_01a_646a:
    ld [hl], l

jr_01a_646b:
    ld [hl], d

jr_01a_646c:
    jr nz, @+$74

    ld l, a
    ld [hl], l

jr_01a_6470:
    ld l, [hl]
    ld h, h
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d

jr_01a_647a:
    ld h, l
    jr nz, jr_01a_64ee

    ld [hl], l
    ld h, c
    ld l, h
    ld l, c
    ld h, [hl]
    ld l, c
    ld h, l
    ld h, h
    inc l
    jr nz, jr_01a_64ea

    ld [hl], l
    ld [hl], h
    ld bc, $6977
    ld l, h
    ld l, h
    jr nz, jr_01a_650a

jr_01a_6491:
    ld l, a
    ld [hl], l
    jr nz, jr_01a_64fa

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01a_650a

    ld [hl], l
    ld [hl], d
    ld bc, $6f74
    ld [hl], l
    ld [hl], d
    ld l, [hl]

jr_01a_64a3:
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ccf
    nop
    ld c, a
    ld l, b
    ld l, $20

jr_01a_64ae:
    ld c, b

jr_01a_64af:
    ld l, a

jr_01a_64b0:
    ld [hl], a
    jr nz, jr_01a_6514

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    ld bc, $2061
    ld [hl], b
    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_01a_6536

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ccf
    nop
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, jr_01a_6545

    ld l, b
    ld h, l
    jr nz, jr_01a_6541

    ld h, c
    ld [hl], e
    ld [hl], h
    jr nz, jr_01a_6541

    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], b
    ld bc, $7369
    jr nz, jr_01a_654d

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, @+$69

    ld h, l
    ld [hl], h

jr_01a_64ea:
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a

jr_01a_64ee:
    ld bc, $7473
    ld h, c
    ld [hl], d
    ld [hl], h
    ld h, l
    ld h, h
    ld l, $2e
    ld l, $03

jr_01a_64fa:
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01a_6566

    ld l, c
    ld l, [hl]
    ld h, c
    ld l, h
    jr nz, jr_01a_656d

    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], b

jr_01a_650a:
    ld bc, $7369
    jr nz, jr_01a_657d

    ld l, a
    ld [hl], a
    jr nz, @+$64

    ld h, l

jr_01a_6514:
    ld h, a
    ld l, c
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6874
    ld h, l
    jr nz, jr_01a_6595

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    daa
    ld [hl], d
    ld h, l
    jr nz, @+$63

jr_01a_6536:
    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_01a_65b0

    ld l, a
    ld bc, $7473
    ld h, c

jr_01a_6541:
    ld [hl], d
    ld [hl], h
    ld l, $20

jr_01a_6545:
    ld b, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_01a_65b7

    ld [hl], l
    ld h, e

jr_01a_654d:
    ld l, e
    ld hl, $0003
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_01a_65d1

    ld l, a
    ld [hl], l
    jr nz, @+$63

    ld l, h
    ld l, h
    jr nz, jr_01a_65c6

    ld l, a
    ld [hl], d
    ld bc, $6177
    ld l, c

jr_01a_6566:
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $20
    ld b, c

jr_01a_656d:
    ld [hl], h
    jr nz, jr_01a_65dc

    ld h, c
    ld [hl], e
    ld [hl], h
    inc l
    ld bc, $7469
    daa
    ld [hl], e
    jr nz, jr_01a_65ef

    ld l, b
    ld h, l

jr_01a_657d:
    jr nz, @+$75

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, $03
    nop
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01a_6605

    ld l, a
    ld [hl], l
    jr nz, jr_01a_6600

    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_01a_65f6

jr_01a_6595:
    ld bc, $614d
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_01a_65e4

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_01a_6603

    ld [hl], h
    ld bc, $200b
    ld b, e
    ld l, h
    ld [hl], l
    ld h, d
    ccf
    nop
    ld c, a
    ld l, [hl]
    ld l, h
    ld a, c

jr_01a_65b0:
    jr nz, jr_01a_6622

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d

jr_01a_65b7:
    ld [hl], e
    jr nz, @+$65

    ld h, c
    ld l, [hl]
    ld bc, $6f67
    jr nz, @+$71

    ld l, [hl]
    jr nz, jr_01a_6638

    ld l, b
    ld h, l

jr_01a_65c6:
    jr nz, jr_01a_662b

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $03
    nop
    ld e, c

jr_01a_65d1:
    ld l, a
    ld [hl], l
    jr nz, jr_01a_6638

    ld h, c
    ld l, [hl]
    jr nz, jr_01a_6649

    ld l, h
    ld h, c
    ld a, c

jr_01a_65dc:
    jr nz, jr_01a_663f

    ld bc, $614d
    ld [hl], h
    ld h, e
    ld l, b

jr_01a_65e4:
    jr nz, @+$49

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_01a_664c

    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, c

jr_01a_65ef:
    ld l, l
    ld h, l
    ld l, $01
    ld d, a
    ld l, c
    ld l, h

jr_01a_65f6:
    ld l, h
    jr nz, jr_01a_6672

    ld l, a
    ld [hl], l
    jr nz, jr_01a_666d

    ld l, h
    ld h, c
    ld a, c

jr_01a_6600:
    ccf
    nop
    ld d, a

jr_01a_6603:
    ld l, b
    ld h, l

jr_01a_6605:
    ld l, [hl]
    jr nz, jr_01a_6681

    ld l, a
    ld [hl], l
    jr nz, jr_01a_6683

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01a_6685

    ld l, a
    ld bc, $6c70
    ld h, c
    ld a, c
    inc l
    jr nz, jr_01a_6686

    ld h, l
    ld [hl], h
    jr nz, jr_01a_668b

    ld h, l
    jr nz, jr_01a_668c

    ld l, [hl]

jr_01a_6622:
    ld l, a
    ld [hl], a
    ld l, $03
    nop
    ld b, e
    ld l, b
    ld h, c
    ld l, l

jr_01a_662b:
    ld [hl], b
    jr nz, jr_01a_6635

    ld hl, $0003
    ld d, b
    ld l, h
    ld h, c
    ld a, c

jr_01a_6635:
    ld l, c
    ld l, [hl]
    ld h, a

jr_01a_6638:
    jr nz, jr_01a_669b

    jr nz, jr_01a_66ae

    ld l, a
    ld [hl], l
    ld l, [hl]

jr_01a_663f:
    ld h, h
    ld bc, $7461
    jr nz, @+$0d

    jr nz, jr_01a_668a

    ld l, h
    ld [hl], l

jr_01a_6649:
    ld h, d
    ccf
    nop

jr_01a_664c:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01a_66b4

    ld h, c
    ld l, [hl]
    jr nz, jr_01a_66c8

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, jr_01a_66cd

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld bc, $6661
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01a_66db

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01a_66d3

    ld [hl], d

jr_01a_666d:
    ld l, a
    ld [hl], l
    ld [hl], b
    ld l, $03

jr_01a_6672:
    nop
    ld d, a
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01a_6680

    daa
    ld [hl], e
    ld bc, $6568
    ld [hl], d
    ld h, l

jr_01a_6680:
    inc l

jr_01a_6681:
    jr nz, @+$67

jr_01a_6683:
    db $76
    ld h, l

jr_01a_6685:
    ld [hl], d

jr_01a_6686:
    ld a, c
    ld l, a
    ld l, [hl]
    ld h, l

jr_01a_668a:
    daa

jr_01a_668b:
    ld [hl], e

jr_01a_668c:
    ld bc, $6f73
    jr nz, jr_01a_66fa

    ld l, [hl]
    ld [hl], e
    ld [hl], b
    ld l, c
    ld [hl], d
    ld h, l
    ld h, h
    ld hl, $0003

jr_01a_669b:
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_01a_670a

    ld h, [hl]
    jr nz, jr_01a_671d

    ld l, a
    ld [hl], l
    jr nz, jr_01a_6710

    ld h, c
    db $76
    ld h, l
    ld l, [hl]
    daa
    ld [hl], h

jr_01a_66ae:
    ld bc, $6e61
    ld a, c
    jr nz, @+$63

jr_01a_66b4:
    ld [hl], b
    ld [hl], b
    ld l, a
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    inc l
    ld bc, $6572
    ld l, h
    ld h, c
    ld a, b
    jr nz, jr_01a_6729

jr_01a_66c8:
    jr nz, jr_01a_6741

    ld l, b
    ld l, c
    ld l, h

jr_01a_66cd:
    ld h, l
    ld l, $03
    nop
    ld e, c
    ld l, a

jr_01a_66d3:
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01a_671c

    ld l, h
    ld [hl], l

jr_01a_66db:
    ld h, d
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld hl, $5901
    ld l, a
    ld [hl], l
    jr nz, jr_01a_674c

    ld h, c
    ld l, [hl]
    jr nz, jr_01a_6751

    ld l, a
    jr nz, jr_01a_6751

    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $0003

jr_01a_66fa:
    ld d, a
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01a_6707

    daa
    ld [hl], e
    ld bc, $6568
    ld [hl], d
    ld h, l

jr_01a_6707:
    inc l
    jr nz, @+$67

jr_01a_670a:
    db $76
    ld h, l
    ld [hl], d
    ld a, c
    ld l, a
    ld l, [hl]

jr_01a_6710:
    ld h, l
    daa
    ld [hl], e
    ld bc, $6f73
    jr nz, jr_01a_6781

    ld l, [hl]
    ld [hl], e
    ld [hl], b
    ld l, c

jr_01a_671c:
    ld [hl], d

jr_01a_671d:
    ld h, l
    ld h, h
    ld hl, $0003
    ld b, d
    ld h, l
    ld h, c
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a

jr_01a_6729:
    jr nz, jr_01a_6739

    ld b, $20
    ld l, l
    ld h, c
    ld h, h
    ld h, l
    ld bc, $6f79
    ld [hl], l
    jr nz, @+$71

    ld [hl], l
    ld [hl], d

jr_01a_6739:
    jr nz, jr_01a_67a9

    ld h, l
    ld [hl], a
    jr nz, @+$45

    ld l, b
    ld h, c

jr_01a_6741:
    ld l, l
    ld [hl], b
    ld hl, $5301
    ld [hl], h
    ld l, a
    ld [hl], b
    jr nz, jr_01a_67ad

    ld a, c

jr_01a_674c:
    jr nz, jr_01a_67af

    ld l, [hl]
    ld a, c
    ld [hl], h

jr_01a_6751:
    ld l, c
    ld l, l
    ld h, l
    ld hl, $0003
    ld b, d
    ld h, l
    ld h, c
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_676e

    ld b, $20
    ld l, l
    ld h, c
    ld h, h
    ld h, l
    ld bc, $6f79
    ld [hl], l
    jr nz, @+$71

    ld [hl], l
    ld [hl], d

jr_01a_676e:
    jr nz, jr_01a_67de

    ld h, l
    ld [hl], a
    jr nz, jr_01a_67b7

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld hl, $5301
    ld [hl], h
    ld l, a
    ld [hl], b
    jr nz, @+$64

    ld a, c

jr_01a_6781:
    jr nz, jr_01a_67e4

    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, c
    ld l, l
    ld h, l
    ld hl, $0003
    ld c, b
    ld h, l
    ld a, c
    inc l
    jr nz, @+$49

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld hl, $5901
    ld l, a
    ld [hl], l
    jr nz, jr_01a_6806

    ld h, c
    ld l, [hl]
    jr nz, @+$72

    ld l, h
    ld h, c

jr_01a_67a9:
    ld a, c
    ld bc, $2061

jr_01a_67ad:
    ld [hl], d
    ld l, a

jr_01a_67af:
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_01a_6815

    ld l, [hl]
    ld a, c
    ld [hl], h

jr_01a_67b7:
    ld l, c
    ld l, l
    ld h, l
    ld hl, $0003
    ld c, b
    ld h, l
    ld a, c
    inc l
    jr nz, jr_01a_680a

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld hl, $4301
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_01a_6845

    ld l, h
    ld h, c
    ld a, c
    jr nz, @+$63

    jr nz, jr_01a_684e

    ld l, a
    ld [hl], l

jr_01a_67de:
    ld l, [hl]
    ld h, h
    ld bc, $6e61
    ld a, c

jr_01a_67e4:
    ld [hl], h
    ld l, c
    ld l, l
    ld h, l
    ld hl, $0003
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$75

    ld l, c
    ld h, a
    ld l, [hl]
    jr nz, jr_01a_6868

    ld h, c
    ld a, c
    ld [hl], e
    ld a, [hl-]
    ld bc, $5422
    ld l, a
    jr nz, jr_01a_6847

    ld l, a
    ld l, h
    ld h, l
    jr nz, @+$33

    ld l, $22

jr_01a_6806:
    inc bc
    nop
    ld d, h
    ld l, b

jr_01a_680a:
    ld h, l
    jr nz, jr_01a_6880

    ld l, c
    ld h, a
    ld l, [hl]
    jr nz, jr_01a_6885

    ld h, c
    ld a, c
    ld [hl], e

jr_01a_6815:
    ld a, [hl-]
    ld bc, $5422
    ld l, a
    jr nz, jr_01a_6860

    ld [hl], d
    ld l, c
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_6876

    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld l, $22
    inc bc
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01a_68a4

    ld l, c
    ld h, a
    ld l, [hl]
    jr nz, jr_01a_68a9

    ld h, c
    ld a, c
    ld [hl], e
    ld a, [hl-]
    ld bc, $5422
    ld l, a
    jr nz, jr_01a_6881

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c

jr_01a_6845:
    ld h, e
    ld l, b

jr_01a_6847:
    ld bc, $7250
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c

jr_01a_684e:
    ld h, e
    ld h, l
    jr nz, jr_01a_68a4

    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld l, $22
    inc bc
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01a_68d2

    ld l, c

jr_01a_6860:
    ld h, a
    ld l, [hl]
    jr nz, jr_01a_68d7

    ld h, c
    ld a, c
    ld [hl], e
    ld a, [hl-]

jr_01a_6868:
    ld bc, $5422
    ld l, a
    jr nz, jr_01a_68be

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_68c8

jr_01a_6876:
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld l, $22
    inc bc
    nop
    ld d, a
    ld h, c

jr_01a_6880:
    ld [hl], h

jr_01a_6881:
    ld h, e
    ld l, b
    jr nz, jr_01a_68f4

jr_01a_6885:
    ld [hl], l
    ld [hl], h
    jr nz, jr_01a_68ef

    ld l, a
    ld [hl], d
    ld bc, $6150
    ld l, h
    ld l, l
    daa
    ld [hl], e
    jr nz, jr_01a_68d7

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, $01
    ld d, e
    ld l, b
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_01a_6915

    ld l, a
    ld [hl], l
    ld h, a

jr_01a_68a4:
    ld l, b
    ld hl, $0003
    ld d, h

jr_01a_68a9:
    ld l, a
    ld h, h
    ld h, c
    ld a, c
    jr nz, jr_01a_6918

    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01a_6906

    ld h, c
    ld l, h
    ld l, l
    ld bc, $6c43
    ld [hl], l
    ld h, d

jr_01a_68be:
    jr nz, jr_01a_6914

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]

jr_01a_68c8:
    ld [hl], h
    ld l, $20
    ld c, a
    ld c, b
    ld hl, $4901
    daa
    ld l, l

jr_01a_68d2:
    jr nz, jr_01a_6947

    ld l, a
    jr nz, jr_01a_693c

jr_01a_68d7:
    ld a, b
    ld h, e
    ld l, c
    ld [hl], h
    ld h, l
    ld h, h
    ld hl, $0003
    ld b, h
    ld h, c
    ld l, [hl]
    ld h, a
    ld hl, $4920
    ld h, [hl]
    jr nz, jr_01a_6959

    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, @+$4b

jr_01a_68ef:
    ld bc, $6168
    ld h, h
    ld l, [hl]

jr_01a_68f4:
    daa
    ld [hl], h
    jr nz, jr_01a_695f

    ld l, a
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld bc, $6874
    ld h, c
    ld [hl], h
    jr nz, jr_01a_6968

    ld l, a
    ld [hl], l

jr_01a_6906:
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_01a_696d

    ld l, a
    ld h, a
    ld h, l
    ld a, c
    ld hl, $0003
    ld e, c
    ld l, a

jr_01a_6914:
    ld [hl], l

jr_01a_6915:
    jr nz, @+$6f

    ld [hl], l

jr_01a_6918:
    ld [hl], e
    ld [hl], h
    jr nz, jr_01a_697e

    ld h, l
    jr nz, jr_01a_6986

    ld l, a
    ld l, a
    ld h, h
    ld bc, $6669
    jr nz, jr_01a_69a0

    ld l, a
    ld [hl], l
    jr nz, @+$72

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    jr nz, @+$6b

    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, jr_01a_69ad

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01a_693c:
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $02
    ld d, e
    ld l, a
    ld l, l

jr_01a_6947:
    ld h, l
    ld h, h
    ld h, c
    ld a, c
    inc l
    jr nz, @+$4b

    daa
    ld l, l
    jr nz, jr_01a_69b9

    ld l, a
    ld l, [hl]
    ld l, [hl]
    ld h, c
    ld bc, $6c70

jr_01a_6959:
    ld h, c
    ld h, e
    ld h, l
    inc l
    jr nz, jr_01a_69d3

jr_01a_695f:
    ld l, a
    ld l, a
    jr nz, jr_01a_6990

    ld bc, $756a
    ld [hl], e
    ld [hl], h

jr_01a_6968:
    jr nz, jr_01a_69d6

    ld l, c
    ld l, e
    ld h, l

jr_01a_696d:
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld hl, $0003
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

jr_01a_697e:
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld hl, $5901

jr_01a_6986:
    ld l, a
    ld [hl], l
    jr nz, jr_01a_6a01

    ld l, a
    ld l, [hl]
    jr nz, jr_01a_6a02

    ld l, b
    ld h, l

jr_01a_6990:
    jr nz, jr_01a_69e2

    ld h, c
    ld l, h
    ld l, l
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_01a_69f0

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]

jr_01a_69a0:
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld hl, $4202
    ld h, l
    ld h, c
    ld [hl], h
    ld l, c
    ld l, [hl]

jr_01a_69ad:
    ld h, a
    jr nz, jr_01a_69be

    dec b
    jr nz, jr_01a_6a1c

    ld [hl], e
    jr nz, jr_01a_6a17

    ld bc, $6572

jr_01a_69b9:
    ld h, c
    ld l, h
    jr nz, @+$63

    ld h, e

jr_01a_69be:
    ld h, e
    ld l, a
    ld l, l
    ld [hl], b
    ld l, h
    ld l, c
    ld [hl], e
    ld l, b
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld hl, $0003
    ld b, c
    jr nz, jr_01a_6a40

    ld [hl], d
    ld h, c
    ld h, e

jr_01a_69d3:
    ld [hl], h
    ld l, c
    ld h, e

jr_01a_69d6:
    ld h, l
    jr nz, jr_01a_6a4b

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ccf
    ld bc, $6c50
    ld h, c

jr_01a_69e2:
    ld a, c
    jr nz, jr_01a_6a46

    ld l, h
    ld l, h
    jr nz, jr_01a_6a62

    ld l, a
    ld [hl], l
    jr nz, jr_01a_6a59

    ld l, c
    ld l, e
    ld h, l

jr_01a_69f0:
    inc l
    ld bc, $2e07
    ld [bc], a
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, @+$63

    ld l, h
    ld [hl], a
    ld h, c
    ld a, c

jr_01a_6a01:
    ld [hl], e

jr_01a_6a02:
    ld bc, $6577
    ld l, h
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_01a_6a74

    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $0003
    ld c, c
    jr nz, jr_01a_6a7d

    ld h, l
    ld h, c

jr_01a_6a17:
    ld [hl], d
    jr nz, @+$46

    ld [hl], l
    ld l, [hl]

jr_01a_6a1c:
    ld h, l
    jr nz, jr_01a_6a62

    ld l, h
    ld [hl], l
    ld h, d
    daa
    ld [hl], e
    ld bc, $616c
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_01a_6a96

    ld [hl], e
    jr nz, jr_01a_6aa2

    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    ld bc, $6f74
    ld [hl], l
    ld h, a
    ld l, b
    ld l, $02
    ld e, c
    ld l, a
    ld [hl], l

jr_01a_6a40:
    jr nz, jr_01a_6aa9

    ld l, a
    ld [hl], h
    ld [hl], h
    ld h, c

jr_01a_6a46:
    jr nz, jr_01a_6ab3

    ld l, [hl]
    ld l, a
    ld [hl], a

jr_01a_6a4b:
    ld bc, $6874
    ld h, l
    jr nz, @+$65

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    jr nz, jr_01a_6ac1

    ld h, [hl]

jr_01a_6a59:
    jr nz, jr_01a_6ad4

    ld l, a
    ld [hl], l
    ld bc, $6177
    ld l, [hl]
    ld l, [hl]

jr_01a_6a62:
    ld h, c
    jr nz, @+$79

    ld l, c
    ld l, [hl]
    ld hl, $0003
    ld d, a
    ld l, b
    ld a, c
    jr nz, @+$66

    ld l, a
    jr nz, @+$4b

    jr nz, @+$69

jr_01a_6a74:
    ld h, l
    ld [hl], h
    jr nz, jr_01a_6aeb

    ld l, a
    ld bc, $656e
    ld [hl], d

jr_01a_6a7d:
    db $76
    ld l, a
    ld [hl], l
    ld [hl], e
    jr nz, jr_01a_6ae5

    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01a_6afe

    ld l, b
    ld h, l
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_01a_6ae7

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01a_6a96:
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ccf
    ld [bc], a
    ld c, l
    ld a, c
    jr nz, jr_01a_6b0a

jr_01a_6aa2:
    ld h, l
    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, jr_01a_6b11

    ld [hl], e

jr_01a_6aa9:
    ld bc, $7274
    ld h, l
    ld l, l
    ld h, d
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, a

jr_01a_6ab3:
    ld hl, $0003
    ld c, a
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01a_6b05

    jr nz, @+$6d

    ld l, [hl]
    ld h, l
    ld [hl], a

jr_01a_6ac1:
    jr nz, jr_01a_6b0c

    jr nz, jr_01a_6b28

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    ld bc, $6c70
    ld h, c
    ld h, e
    ld h, l
    inc l
    jr nz, @+$4b

    jr nz, @+$6f

jr_01a_6ad4:
    ld l, c
    ld [hl], e
    dec l
    ld l, b
    ld l, c
    ld [hl], h
    ld hl, $4901
    jr nz, jr_01a_6b4d

    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_01a_6b54

    ld [hl], d

jr_01a_6ae5:
    ld h, c
    ld h, e

jr_01a_6ae7:
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l

jr_01a_6aeb:
    ld hl, $0003
    ld d, a
    ld l, b
    ld l, c
    ld l, h
    ld h, l
    jr nz, jr_01a_6b3e

    jr nz, jr_01a_6b6e

    ld h, c
    ld [hl], e
    jr nz, @+$6f

    ld l, c
    ld [hl], e
    ld [hl], e

jr_01a_6afe:
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    ld bc, $6f79

jr_01a_6b05:
    ld [hl], l
    jr nz, jr_01a_6b6d

    ld a, b
    ld [hl], h

jr_01a_6b0a:
    ld h, l
    ld l, [hl]

jr_01a_6b0c:
    ld h, h
    ld h, l
    ld h, h
    jr nz, @+$7b

jr_01a_6b11:
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01a_6b82

    ld h, l
    ld h, c
    ld h, h
    ld hl, $4902
    ld h, [hl]
    jr nz, jr_01a_6b93

    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01a_6b9a

    ld l, b
    ld h, l

jr_01a_6b28:
    jr nz, jr_01a_6b8d

    ld h, c
    ld [hl], e
    ld h, l
    inc l
    ld bc, $2049
    ld l, b
    ld h, c
    db $76
    ld h, l
    jr nz, jr_01a_6b98

    jr nz, jr_01a_6bb0

    ld h, c
    ld a, c
    ld [hl], e
    jr nz, jr_01a_6bb2

jr_01a_6b3e:
    ld l, a
    ld bc, $6f67
    jr nz, @+$64

    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01a_6b94

    jr nz, jr_01a_6bbd

jr_01a_6b4d:
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld l, $03
    nop

jr_01a_6b54:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01a_6bbb

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_01a_6b6c

    ld b, $20
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld bc, $6874
    ld h, l
    jr nz, jr_01a_6bac

    ld l, b
    ld h, c
    ld l, l

jr_01a_6b6c:
    ld [hl], b

jr_01a_6b6d:
    ld l, c

jr_01a_6b6e:
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, b
    ld l, c
    ld [hl], b
    ld hl, $5401
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01a_6bdf

    ld l, l
    ld h, c
    ld a, d
    ld l, c

jr_01a_6b82:
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_6bed

    ld l, a
    ld l, h
    ld h, [hl]
    ld hl, $0003
    rlca

jr_01a_6b8d:
    inc l
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    daa

jr_01a_6b93:
    ld h, h

jr_01a_6b94:
    ld bc, $6562
    ld [hl], h

jr_01a_6b98:
    ld [hl], h
    ld h, l

jr_01a_6b9a:
    ld [hl], d
    jr nz, jr_01a_6c14

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_01a_6c12

    ld [hl], l
    ld [hl], h
    ld hl, $4901
    daa
    ld l, l
    jr nz, jr_01a_6c13

jr_01a_6bac:
    ld l, a
    ld l, [hl]
    ld l, [hl]
    ld h, c

jr_01a_6bb0:
    jr nz, jr_01a_6c14

jr_01a_6bb2:
    ld h, l
    jr nz, jr_01a_6bf8

    ld l, h
    ld [hl], l
    ld h, d
    ld [bc], a
    ld b, e
    ld l, b

jr_01a_6bbb:
    ld h, c
    ld l, l

jr_01a_6bbd:
    ld [hl], b
    inc l
    jr nz, jr_01a_6c35

    ld l, a
    ld l, a
    ld l, $20
    ld c, c
    daa
    ld l, h
    ld l, h
    ld bc, $6163
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_01a_6c48

    ld l, a
    ld l, l
    ld h, l
    ld h, h
    ld h, c
    ld a, c
    inc l
    ld bc, $756a

jr_01a_6bdf:
    ld [hl], e
    ld [hl], h
    jr nz, jr_01a_6c5a

    ld h, c
    ld l, c
    ld [hl], h
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    daa

jr_01a_6bed:
    ld l, h
    ld l, h
    jr nz, jr_01a_6c5f

    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_01a_6c57

    ld l, h
    ld l, h

jr_01a_6bf8:
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01a_6c73

    ld h, l
    ld h, e
    ld l, b
    ld l, [hl]
    ld l, c
    ld [hl], c
    ld [hl], l
    ld h, l
    ld [hl], e
    jr nz, jr_01a_6c79

    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, jr_01a_6c5d

    ld l, c

jr_01a_6c12:
    ld l, [hl]

jr_01a_6c13:
    ld l, e

jr_01a_6c14:
    ld [hl], e
    jr nz, jr_01a_6c5a

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$63

    ld [hl], d
    ld h, l
    jr nz, jr_01a_6c91

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld bc, $6f67
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d

jr_01a_6c35:
    ld [hl], e
    jr nz, jr_01a_6c9d

    db $76
    ld h, l
    ld [hl], d
    ld a, c
    ld [hl], a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $5402
    ld l, b
    ld h, c
    ld [hl], h
    daa

jr_01a_6c48:
    ld [hl], e
    jr nz, jr_01a_6cbf

    ld l, b
    ld h, l
    jr nz, jr_01a_6c96

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    ld bc, $6843
    ld h, c

jr_01a_6c57:
    ld l, l
    ld [hl], b
    ld l, c

jr_01a_6c5a:
    ld l, a
    ld l, [hl]
    ld [hl], e

jr_01a_6c5d:
    ld l, b
    ld l, c

jr_01a_6c5f:
    ld [hl], b
    ld bc, $6f66
    ld [hl], d
    jr nz, jr_01a_6cdf

    ld l, a
    ld [hl], l
    ld hl, $0003
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_01a_6cba

    jr nz, @+$75

jr_01a_6c73:
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_01a_6cdc

    ld l, c

jr_01a_6c79:
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $6977
    ld l, [hl]
    inc l
    jr nz, @+$64

    ld [hl], l
    ld [hl], h
    jr nz, jr_01a_6cf6

    ld h, l
    ld l, c
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_01a_6cf4

    ld l, c

jr_01a_6c91:
    ld h, h
    ld bc, $6f79
    ld [hl], l

jr_01a_6c96:
    ld l, $02
    ld c, c
    jr nz, jr_01a_6d08

    ld h, c
    ld a, c

jr_01a_6c9d:
    jr nz, jr_01a_6d0b

    ld l, a
    ld [hl], e
    ld h, l
    jr nz, @+$76

    ld l, a
    ld bc, $070e
    inc l
    jr nz, @+$64

    ld [hl], l
    ld [hl], h
    jr nz, jr_01a_6cf8

    ld bc, $6f77
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01a_6d23

    ld l, a
    ld [hl], e
    ld h, l

jr_01a_6cba:
    jr nz, @+$76

    ld l, a
    jr nz, @+$7b

jr_01a_6cbf:
    ld l, a
    ld [hl], l
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01a_6d2d

    ld l, c
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $6562
    ld h, c
    ld [hl], h
    jr nz, jr_01a_6d42

    ld h, l
    ld l, $2e
    ld l, $02
    ld d, h
    ld l, b

jr_01a_6cdc:
    ld h, l
    jr nz, jr_01a_6d42

jr_01a_6cdf:
    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld bc, $6e61
    ld h, h
    jr nz, jr_01a_6d5e

    ld l, b
    ld h, l
    jr nz, @+$79

    ld l, c
    ld l, [hl]
    ld h, h
    ld bc, $6562

jr_01a_6cf4:
    ld h, c
    ld [hl], h

jr_01a_6cf6:
    jr nz, @+$6f

jr_01a_6cf8:
    ld h, l
    ld l, $03
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01a_6d70

    ld l, a
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, c

jr_01a_6d08:
    ld [hl], h
    jr nz, jr_01a_6d54

jr_01a_6d0b:
    ld bc, $6f6c
    ld [hl], e
    ld [hl], h
    jr nz, jr_01a_6d86

    ld l, a
    jr nz, jr_01a_6d8e

    ld l, a
    ld [hl], l
    ld l, $2e
    ld l, $02
    ld c, c
    jr nz, jr_01a_6d8a

    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, @+$76

jr_01a_6d23:
    ld l, a
    jr nz, jr_01a_6d9a

    ld l, b
    ld h, l
    ld bc, $6f63
    ld [hl], l
    ld [hl], d

jr_01a_6d2d:
    ld [hl], e
    ld h, l
    jr nz, jr_01a_6d92

    ld l, [hl]
    ld h, h
    jr nz, jr_01a_6da9

    ld l, a
    ld bc, $6874
    ld h, l
    jr nz, jr_01a_6db3

    ld l, c
    ld l, [hl]
    ld h, h
    ld l, $03
    nop

jr_01a_6d42:
    ld b, h
    ld h, c
    ld l, [hl]
    ld h, a
    ld hl, $4920
    ld h, [hl]
    jr nz, jr_01a_6dbb

    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, jr_01a_6d9a

    ld bc, $6168

jr_01a_6d54:
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01a_6dc1

    ld l, a
    ld [hl], h
    ld [hl], h
    ld h, l

jr_01a_6d5e:
    ld l, [hl]
    jr nz, jr_01a_6dd5

    ld l, b
    ld h, c
    ld [hl], h
    ld bc, $6f64
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_01a_6dcf

    ld l, a
    ld h, a
    ld h, l

jr_01a_6d70:
    ld a, c
    ld hl, $0003
    ld c, $05
    jr nz, jr_01a_6de1

    ld [hl], e
    jr nz, @+$73

    ld [hl], l
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_01a_6df5

    ld l, b
    ld h, l
    ld bc, $6166

jr_01a_6d86:
    db $76
    ld l, a
    ld [hl], d
    ld l, c

jr_01a_6d8a:
    ld [hl], h
    ld h, l
    jr nz, jr_01a_6def

jr_01a_6d8e:
    ld l, l
    ld l, a
    ld l, [hl]
    ld h, a

jr_01a_6d92:
    jr nz, jr_01a_6e08

    ld l, b
    ld h, l
    ld bc, $6f77
    ld l, l

jr_01a_6d9a:
    ld h, l
    ld l, [hl]
    jr nz, jr_01a_6e05

    ld l, a
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld [hl], e
    ld l, $03
    nop
    ld d, h
    ld l, b

jr_01a_6da9:
    ld h, c
    ld [hl], h
    jr nz, @+$6e

    ld h, c
    ld [hl], e
    ld [hl], h
    jr nz, @+$69

    ld [hl], d

jr_01a_6db3:
    ld l, a
    ld [hl], l
    ld [hl], b
    ld bc, $6f74
    jr nz, jr_01a_6e2e

jr_01a_6dbb:
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, jr_01a_6e2e

jr_01a_6dc1:
    ld l, a
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $7369
    jr nz, jr_01a_6e3d

    ld h, l
    ld h, c
    ld l, h
    ld l, h

jr_01a_6dcf:
    ld a, c
    jr nz, jr_01a_6e45

    ld l, h
    ld l, a
    ld [hl], a

jr_01a_6dd5:
    ld l, $02
    ld c, c
    ld h, [hl]
    jr nz, jr_01a_6e4f

    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_01a_6e47

    ld l, a

jr_01a_6de1:
    jr nz, jr_01a_6e57

    ld l, a
    ld l, a
    ld bc, $6c73
    ld l, a
    ld [hl], a
    inc l
    jr nz, jr_01a_6e61

    ld l, b
    ld h, l

jr_01a_6def:
    ld a, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_01a_6e57

jr_01a_6df5:
    ld l, h
    ld l, a
    ld [hl], a
    ld bc, $796d
    jr nz, jr_01a_6e6f

    ld l, b
    ld a, c
    ld [hl], h
    ld l, b
    ld l, l
    ld hl, $0003

jr_01a_6e05:
    ld d, a
    ld h, l
    ld l, h

jr_01a_6e08:
    ld l, h
    inc l
    jr nz, jr_01a_6e83

    ld h, l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01a_6e73

    jr nz, jr_01a_6e87

    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    ld bc, $6f63
    ld [hl], l
    ld [hl], b
    ld l, h
    ld h, l
    jr nz, jr_01a_6e90

    ld h, [hl]
    jr nz, jr_01a_6e90

    ld l, a
    ld [hl], e
    ld h, l
    ld [hl], d
    ld [hl], e
    ld hl, $4201
    ld [hl], l
    ld [hl], h

jr_01a_6e2e:
    jr nz, jr_01a_6e9f

    ld [hl], l
    ld [hl], d
    jr nz, jr_01a_6ea8

    ld l, c
    ld l, l
    ld h, l
    daa
    ld l, h
    ld l, h
    jr nz, jr_01a_6e9f

    ld l, a

jr_01a_6e3d:
    ld l, l
    ld h, l
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l

jr_01a_6e45:
    jr nz, jr_01a_6eb7

jr_01a_6e47:
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    jr nz, jr_01a_6e75

    ld h, e

jr_01a_6e4f:
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    ld bc, $6f79
    ld [hl], l

jr_01a_6e57:
    jr nz, jr_01a_6ebd

    ld l, c
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01a_6ecc

    ld h, l

jr_01a_6e61:
    ld [hl], h
    jr nz, jr_01a_6ed8

    ld l, b
    ld h, l
    ld bc, $6f74
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l

jr_01a_6e6f:
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01a_6ed9

jr_01a_6e73:
    ld h, c
    ld a, d

jr_01a_6e75:
    ld h, l
    ld [bc], a
    ld a, c
    ld l, a
    ld [hl], l
    ld l, $20
    ld c, c
    jr nz, jr_01a_6ee6

    ld l, a
    ld [hl], h
    jr nz, jr_01a_6ef3

jr_01a_6e83:
    ld [hl], e
    ld a, c
    ld h, e
    ld l, b

jr_01a_6e87:
    ld h, l
    ld h, h
    dec l
    ld bc, $756f
    ld [hl], h
    jr nz, jr_01a_6ef1

jr_01a_6e90:
    ld l, [hl]
    ld h, h
    jr nz, jr_01a_6ef7

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $6c70
    ld h, c

jr_01a_6e9f:
    ld a, c
    jr nz, jr_01a_6f0f

    ld a, c
    jr nz, jr_01a_6f07

    ld h, l
    ld [hl], e
    ld [hl], h

jr_01a_6ea8:
    ld hl, $0003
    ld d, h
    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    daa
    ld [hl], e
    jr nz, @+$76

jr_01a_6eb7:
    ld l, b
    ld h, l
    jr nz, @+$6d

    ld h, l
    ld a, c

jr_01a_6ebd:
    ld bc, $6f74
    jr nz, jr_01a_6f35

    ld [hl], l
    ld h, e
    ld h, e
    ld h, l
    ld [hl], e
    ld [hl], e
    inc l
    jr nz, jr_01a_6f3d

    ld l, c

jr_01a_6ecc:
    ld h, a
    ld l, b
    ld [hl], h
    ccf
    ld bc, $2749
    ld l, l
    jr nz, jr_01a_6f4a

    ld [hl], d
    ld h, c

jr_01a_6ed8:
    ld l, c

jr_01a_6ed9:
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    jr nz, jr_01a_6f54

    ld l, a
    ld l, a
    ld hl, $0003
    ld b, l

jr_01a_6ee6:
    db $76
    ld h, l
    ld [hl], d
    ld a, c
    ld l, a
    ld l, [hl]
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_01a_6f58

jr_01a_6ef1:
    ld h, l
    ld [hl], h

jr_01a_6ef3:
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a

jr_01a_6ef7:
    ld bc, $6e69
    ld [hl], h
    ld l, a
    jr nz, jr_01a_6f65

    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_01a_6f76

    ld l, c
    ld l, [hl]
    ld h, e
    ld h, l

jr_01a_6f07:
    ld bc, $6f79
    ld [hl], l
    jr nz, @+$64

    ld h, l
    ld h, e

jr_01a_6f0f:
    ld h, c
    ld l, l
    ld h, l
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, $03
    nop
    ld b, a
    ld h, l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_6f93

    ld l, [hl]
    jr nz, @+$6b

    ld l, [hl]
    jr nz, jr_01a_6f5c

    jr nz, jr_01a_6f9b

    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, jr_01a_6f9f

    ld l, a
    ld l, [hl]

jr_01a_6f35:
    ld h, a
    jr nz, jr_01a_6fa0

    ld l, a
    ld l, h
    ld h, l
    jr nz, jr_01a_6fa6

jr_01a_6f3d:
    ld [hl], e
    ld bc, $796d
    jr nz, jr_01a_6fac

    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], e
    ld [hl], e
    ld l, c
    ld h, d

jr_01a_6f4a:
    ld l, h
    ld h, l
    jr nz, jr_01a_6fb2

    ld [hl], d
    ld h, l
    ld h, c
    ld l, l
    ld l, $02

jr_01a_6f54:
    ld c, c
    ld h, [hl]
    jr nz, jr_01a_6fa1

jr_01a_6f58:
    jr nz, @+$65

    ld l, a
    ld [hl], l

jr_01a_6f5c:
    ld l, h
    ld h, h
    jr nz, jr_01a_6fc8

    ld l, c
    ld [hl], h
    jr nz, jr_01a_6fc5

    ld [hl], e

jr_01a_6f65:
    ld bc, $6166
    ld [hl], d
    jr nz, jr_01a_6fcc

    ld [hl], e
    jr nz, jr_01a_6f7c

    ld b, $2c
    jr nz, jr_01a_6fbb

    ld bc, $6f63
    ld [hl], l

jr_01a_6f76:
    ld l, h
    ld h, h
    jr nz, jr_01a_6fe1

    ld h, l
    ld [hl], h

jr_01a_6f7c:
    jr nz, jr_01a_6fdf

    ld l, [hl]
    jr nz, @+$67

    ld h, c
    ld h, a
    ld l, h
    ld h, l
    ld hl, $0003
    ld c, a
    ld l, b
    inc l
    jr nz, jr_01a_6ffa

    ld h, c
    ld l, [hl]
    ld hl, $5320
    ld l, a

jr_01a_6f93:
    ld l, l
    ld h, l
    ld h, d
    ld l, a
    ld h, h
    ld a, c
    daa
    ld [hl], e

jr_01a_6f9b:
    ld bc, $7274
    ld l, a

jr_01a_6f9f:
    ld [hl], l

jr_01a_6fa0:
    ld h, d

jr_01a_6fa1:
    ld l, h
    ld h, l
    jr nz, @+$75

    ld l, b

jr_01a_6fa6:
    ld l, a
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01a_7010

jr_01a_6fac:
    ld h, l
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld h, h

jr_01a_6fb2:
    ld bc, $756f
    ld [hl], d
    jr nz, jr_01a_702b

    ld [hl], h
    ld h, c
    ld [hl], d

jr_01a_6fbb:
    ld [hl], h
    ld hl, $0003
    ld d, a
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, @+$6f

jr_01a_6fc5:
    ld a, c
    jr nz, jr_01a_703b

jr_01a_6fc8:
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h

jr_01a_6fcc:
    jr nz, @+$79

    ld h, c
    ld [hl], e
    ld bc, $6564
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld h, h
    inc l
    jr nz, jr_01a_7024

    ld bc, $696d
    ld [hl], e

jr_01a_6fdf:
    ld [hl], e
    ld h, l

jr_01a_6fe1:
    ld h, h
    jr nz, jr_01a_7051

    ld a, c
    jr nz, jr_01a_7059

    ld l, b
    ld a, c
    ld [hl], h
    ld l, b
    ld l, l
    ld hl, $0003
    ld c, c
    jr nz, jr_01a_7069

    ld h, c
    ld [hl], e
    jr nz, jr_01a_706d

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b

jr_01a_6ffa:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_7078

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $6c70
    ld h, c
    ld a, c
    ld l, $2e
    ld l, $59
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l

jr_01a_7010:
    jr nz, @+$75

    ld l, l
    ld l, a
    ld l, a
    ld [hl], h
    ld l, b
    ld hl, $5901
    ld l, a
    ld [hl], l
    jr nz, jr_01a_7081

    ld h, c
    ld l, [hl]
    jr nz, jr_01a_7092

    ld l, h
    ld h, c

jr_01a_7024:
    ld h, e
    ld h, l
    ld hl, $0003
    ld d, b
    ld l, h

jr_01a_702b:
    ld h, c
    ld a, c
    jr nz, jr_01a_70a3

    ld l, b
    ld h, l
    jr nz, jr_01a_7096

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld bc, $2031

jr_01a_703b:
    ld l, b
    ld l, a
    ld l, h
    ld h, l
    jr nz, @+$63

    ld [hl], h
    jr nz, jr_01a_70a5

    jr nz, jr_01a_70ba

    ld l, c
    ld l, l
    ld h, l
    ld l, $2e
    ld l, $01
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h

jr_01a_7051:
    daa
    ld [hl], e
    jr nz, jr_01a_70bd

    ld l, a
    ld [hl], a
    jr nz, @+$7b

jr_01a_7059:
    ld l, a
    ld [hl], l
    jr nz, @+$79

    ld l, c
    ld l, [hl]
    ld hl, $0003
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01a_70aa

    ld l, h
    ld [hl], l

jr_01a_7069:
    ld h, d
    jr nz, jr_01a_70af

    ld l, b

jr_01a_706d:
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $7369
    jr nz, jr_01a_70ec

jr_01a_7078:
    ld l, b
    ld h, l
    jr nz, jr_01a_70ec

    ld h, l
    ld h, c
    ld l, e
    jr nz, jr_01a_70e7

jr_01a_7081:
    ld l, a
    ld [hl], d
    ld bc, $6e61
    ld a, c
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    ld hl, $5402
    ld l, b

jr_01a_7092:
    ld h, l
    jr nz, jr_01a_7100

    ld l, c

jr_01a_7096:
    ld l, [hl]
    ld h, a
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_01a_7111

    ld l, b
    ld h, c
    ld [hl], h
    ld bc, $7263

jr_01a_70a3:
    ld h, l
    ld [hl], a

jr_01a_70a5:
    jr nz, jr_01a_7110

    ld [hl], e
    jr nz, jr_01a_711e

jr_01a_70aa:
    ld l, b
    ld h, l
    ld bc, $7247

jr_01a_70af:
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01a_70f7

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a

jr_01a_70ba:
    ld l, [hl]
    ld l, $03

jr_01a_70bd:
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01a_710f

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $7369
    jr nz, jr_01a_7149

    ld l, b
    ld h, l
    jr nz, jr_01a_714b

    ld h, l
    ld h, c
    ld l, h
    jr nz, jr_01a_7141

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $02

jr_01a_70e7:
    ld c, b
    ld h, l
    jr nz, jr_01a_715a

    ld [hl], d

jr_01a_70ec:
    jr nz, jr_01a_7161

    ld l, b
    ld h, l
    jr nz, @+$69

    ld h, l
    ld [hl], h
    ld [hl], e
    jr nz, jr_01a_716b

jr_01a_70f7:
    ld l, a
    ld bc, $6c63
    ld h, c
    ld l, c
    ld l, l
    jr nz, jr_01a_7174

jr_01a_7100:
    ld l, b
    ld h, l
    jr nz, @+$76

    ld l, c
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_01a_7179

    ld h, [hl]
    ld bc, $7247
    ld h, c

jr_01a_710f:
    ld l, [hl]

jr_01a_7110:
    ld h, h

jr_01a_7111:
    jr nz, jr_01a_7156

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $03
    nop
    ld b, l

jr_01a_711e:
    db $76
    ld h, l
    ld l, [hl]
    jr nz, jr_01a_7184

    ld h, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01a_7199

    ld l, h
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $7469
    jr nz, jr_01a_71a1

    ld h, c
    ld l, [hl]
    ld a, c
    jr nz, jr_01a_71ad

    ld l, c
    ld l, l
    ld h, l
    ld [hl], e
    inc l
    ld bc, $694c

jr_01a_7141:
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, @+$6b

    ld [hl], e
    jr nz, jr_01a_71bc

jr_01a_7149:
    ld [hl], h
    ld l, c

jr_01a_714b:
    ld l, h
    ld l, h
    jr nz, jr_01a_71b7

    ld h, c
    ld [hl], d
    ld h, h
    ld l, $03
    nop
    ld b, c

jr_01a_7156:
    ld [hl], a
    ld hl, $4320

jr_01a_715a:
    ld l, b
    ld h, l
    ld h, e
    ld l, e
    jr nz, jr_01a_71cf

    ld [hl], l

jr_01a_7161:
    ld [hl], h
    jr nz, jr_01a_71d1

    ld a, c
    ld bc, $6373
    ld l, a
    ld [hl], d
    ld h, l

jr_01a_716b:
    ld hl, $5920
    ld h, l
    ld h, c
    ld l, b
    inc l
    jr nz, jr_01a_71dd

jr_01a_7174:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01a_71da

jr_01a_7179:
    ld bc, $6168
    ld [hl], d
    ld h, h
    jr nz, jr_01a_71e3

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e

jr_01a_7184:
    ld h, l
    inc l
    jr nz, jr_01a_71ea

    ld [hl], l
    ld [hl], h
    ld l, $2e
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01a_7204

    ld [hl], l
    ld [hl], e
    ld l, b
    ld h, l
    ld h, h
    jr nz, jr_01a_7206

jr_01a_7199:
    ld a, c
    ld [hl], e
    ld h, l
    ld l, h
    ld h, [hl]
    ld bc, $7274

jr_01a_71a1:
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_721b

    ld l, a
    jr nz, jr_01a_7217

    ld h, c
    ld [hl], h
    ld h, e

jr_01a_71ad:
    ld l, b
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01a_7225

    ld h, c
    ld h, e

jr_01a_71b7:
    ld h, l
    ld l, $2e
    ld l, $03

jr_01a_71bc:
    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_01a_7237

    ld l, b
    ld h, l
    jr nz, jr_01a_722a

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld bc, $2031

jr_01a_71cf:
    ld l, b
    ld l, a

jr_01a_71d1:
    ld l, h
    ld h, l
    jr nz, jr_01a_7236

    ld [hl], h
    jr nz, jr_01a_7239

    jr nz, jr_01a_724e

jr_01a_71da:
    ld l, c
    ld l, l
    ld h, l

jr_01a_71dd:
    ld l, $2e
    ld l, $01
    ld d, h
    ld l, b

jr_01a_71e3:
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$6a

    ld l, a

jr_01a_71ea:
    ld [hl], a
    jr nz, jr_01a_7266

    ld l, a
    ld [hl], l
    jr nz, jr_01a_7268

    ld l, c
    ld l, [hl]
    ld hl, $0003
    ld c, c
    daa
    ld l, l
    jr nz, jr_01a_7262

    ld l, a
    ld l, [hl]
    ld l, [hl]
    ld h, c
    jr nz, jr_01a_7263

    ld h, l
    jr nz, jr_01a_724b

jr_01a_7204:
    ld [hl], d
    ld h, c

jr_01a_7206:
    ld l, [hl]
    ld h, h
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    jr nz, jr_01a_7283

    ld l, a
    ld l, l
    ld h, l
    ld h, h
    ld h, c
    ld a, c
    inc l

jr_01a_7217:
    jr nz, jr_01a_7283

    ld [hl], l
    ld [hl], e

jr_01a_721b:
    ld [hl], h
    ld bc, $6f73
    jr nz, jr_01a_726a

    jr nz, jr_01a_7286

    ld h, c
    ld l, [hl]

jr_01a_7225:
    jr nz, jr_01a_7294

    ld h, l
    ld h, l
    ld [hl], h

jr_01a_722a:
    ld [bc], a
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01a_729d

    ld h, l
    ld h, a
    ld h, l
    ld l, [hl]
    ld h, h

jr_01a_7236:
    ld h, c

jr_01a_7237:
    ld [hl], d
    ld a, c

jr_01a_7239:
    ld bc, $6f67
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d
    inc l
    jr nz, jr_01a_7290

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, $03
    nop
    ld c, c

jr_01a_724b:
    jr nz, @+$79

    ld h, c

jr_01a_724e:
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01a_72c6

    ld l, a
    jr nz, @+$64

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_01a_7268

    dec b
    ld bc, $6e61
    ld h, h
    jr nz, jr_01a_72c3

    ld h, l

jr_01a_7262:
    ld h, e

jr_01a_7263:
    ld l, a
    ld l, l
    ld h, l

jr_01a_7266:
    jr nz, jr_01a_72ab

jr_01a_7268:
    ld l, h
    ld [hl], l

jr_01a_726a:
    ld h, d
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld hl, $0003
    ld c, $05
    inc l
    jr nz, @+$52

    ld h, c
    ld l, h
    ld l, l
    jr nz, jr_01a_72c1

    ld l, h
    ld [hl], l
    ld h, d
    daa
    ld [hl], e

jr_01a_7283:
    ld bc, $6843

jr_01a_7286:
    ld h, c
    ld l, l
    ld [hl], b
    inc l
    jr nz, jr_01a_72f5

    ld [hl], e
    jr nz, jr_01a_72f4

    db $76

jr_01a_7290:
    ld h, l
    ld [hl], d
    ld a, c
    ld l, a

jr_01a_7294:
    ld l, [hl]
    ld h, l
    daa
    ld [hl], e
    ld bc, $6166
    db $76
    ld l, a

jr_01a_729d:
    ld [hl], d
    ld l, c
    ld [hl], h
    ld h, l
    ld l, $02
    ld b, h
    ld l, a
    jr nz, jr_01a_7320

    ld l, a
    ld [hl], l
    jr nz, @+$76

jr_01a_72ab:
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    ld bc, $6873
    ld h, l
    daa
    ld l, h
    ld l, h
    jr nz, jr_01a_731a

    ld h, l
    jr nz, jr_01a_7328

    ld a, c
    jr nz, jr_01a_7324

    ld [hl], d
    ld l, c
    ld h, l

jr_01a_72c1:
    ld l, [hl]
    ld h, h

jr_01a_72c3:
    ld bc, $6669

jr_01a_72c6:
    jr nz, @+$4b

    jr nz, @+$64

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, @+$6a

    ld h, l
    ld [hl], d
    ccf
    inc bc
    nop
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, jr_01a_72e9

    dec b
    jr nz, jr_01a_7355

    ld l, a
    ld l, [hl]
    jr nz, jr_01a_7343

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, $01
    ld d, e

jr_01a_72e9:
    ld l, b
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_01a_7350

    ld l, [hl]
    jr nz, jr_01a_7353

    ld [hl], a
    ld h, l

jr_01a_72f4:
    ld [hl], e

jr_01a_72f5:
    ld l, a
    ld l, l
    ld h, l
    ld bc, $6f67
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01a_7369

    ld l, c
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$6d

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld bc, $6877
    ld h, c
    ld [hl], h
    jr nz, jr_01a_735f

    daa
    ld h, h
    jr nz, jr_01a_737e

jr_01a_731a:
    ld l, a
    ld bc, $6669
    jr nz, jr_01a_7399

jr_01a_7320:
    ld l, a
    ld [hl], l
    daa
    ld h, h

jr_01a_7324:
    jr nz, @+$79

    ld l, a
    ld l, [hl]

jr_01a_7328:
    ld hl, $4902
    jr nz, @+$6a

    ld h, c
    db $76
    ld h, l
    jr nz, jr_01a_73a6

    ld l, a
    jr nz, jr_01a_7397

    ld h, l
    jr nz, jr_01a_73ac

    ld l, b
    ld h, l
    ld bc, $6e6f
    ld h, l
    jr nz, jr_01a_73b4

    ld l, a
    jr nz, jr_01a_73a5

jr_01a_7343:
    ld h, l
    ld h, c
    ld [hl], h
    ld bc, $050e
    ld hl, $0003
    ld c, c
    jr nz, jr_01a_73b2

    ld h, c

jr_01a_7350:
    ld l, [hl]
    daa
    ld [hl], h

jr_01a_7353:
    jr nz, @+$64

jr_01a_7355:
    ld h, l
    ld l, h
    ld l, c
    ld h, l
    db $76
    ld h, l
    ld bc, $6f79
    ld [hl], l

jr_01a_735f:
    jr nz, jr_01a_73d8

    ld l, a
    ld l, [hl]
    ld hl, $4920
    ld [hl], h
    daa
    ld [hl], e

jr_01a_7369:
    ld bc, $6f73
    jr nz, jr_01a_73e3

    ld l, [hl]
    ld h, [hl]
    ld h, c
    ld l, c
    ld [hl], d
    ld hl, $4902
    jr nz, jr_01a_73ef

    ld h, c
    ld [hl], e
    jr nz, jr_01a_73ef

    ld [hl], l
    ld [hl], b

jr_01a_737e:
    ld [hl], b
    ld l, a
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_01a_73f9

    ld l, a
    ld bc, $6562
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01a_73fe

    ld l, [hl]
    ld h, l
    jr nz, @+$76

    ld l, a
    ld bc, $6562

jr_01a_7397:
    ld h, c
    ld [hl], h

jr_01a_7399:
    jr nz, jr_01a_73a9

    dec b
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01a_741b

    ld h, l

jr_01a_73a5:
    ld [hl], d

jr_01a_73a6:
    ld h, l
    jr nz, jr_01a_740a

jr_01a_73a9:
    ld l, l
    ld h, c
    ld a, d

jr_01a_73ac:
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6e69

jr_01a_73b2:
    jr nz, jr_01a_7428

jr_01a_73b4:
    ld l, b
    ld h, l
    jr nz, jr_01a_742c

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    inc l
    ld bc, $2107
    jr nz, jr_01a_741e

    ld c, a
    ld d, a
    ld hl, $0003
    ld c, a
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01a_744b

    ld l, a
    ld [hl], l
    jr nz, jr_01a_7449

    ld h, l
    ld h, l

jr_01a_73d8:
    jr nz, jr_01a_73e8

    ld b, $27
    ld [hl], e
    ld bc, $6f70
    ld [hl], a
    ld h, l
    ld [hl], d

jr_01a_73e3:
    inc l
    jr nz, jr_01a_745f

    ld l, a
    ld [hl], l

jr_01a_73e8:
    daa
    ld l, h
    ld l, h
    jr nz, jr_01a_7459

    ld l, a
    ld [hl], e

jr_01a_73ef:
    ld h, l
    ld bc, $6c61
    ld l, h
    jr nz, jr_01a_745e

    ld l, a
    ld [hl], b
    ld h, l

jr_01a_73f9:
    ld hl, $0003
    ld b, c
    ld [hl], e

jr_01a_73fe:
    jr nz, @+$6e

    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_7466

    ld [hl], e
    jr nz, jr_01a_7451

    jr nz, jr_01a_747a

jr_01a_740a:
    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_01a_747c

    ld a, c
    ld bc, $6562
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, @+$4b

    daa
    ld l, h
    ld l, h

jr_01a_741b:
    jr nz, jr_01a_748d

    ld l, h

jr_01a_741e:
    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_01a_748c

    ld l, [hl]
    jr nz, jr_01a_749a

    ld l, b
    ld h, l

jr_01a_7428:
    ld bc, $7544
    ld l, [hl]

jr_01a_742c:
    ld h, l
    jr nz, @+$56

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $03
    nop
    ld c, l
    ld a, c
    jr nz, jr_01a_74af

    ld l, h
    ld h, c
    ld l, [hl]
    jr nz, jr_01a_74bb

    ld h, c
    ld [hl], e
    jr nz, jr_01a_74bc

    ld l, a

jr_01a_7449:
    jr nz, jr_01a_74bb

jr_01a_744b:
    ld l, h
    ld h, c
    ld a, c
    ld bc, $796d

jr_01a_7451:
    jr nz, @+$64

    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01a_74bf

    ld h, c

jr_01a_7459:
    ld l, l
    ld h, l
    inc l
    jr nz, jr_01a_74c0

jr_01a_745e:
    ld [hl], l

jr_01a_745f:
    ld [hl], h
    ld bc, $2049
    ld h, e
    ld l, a
    ld [hl], l

jr_01a_7466:
    ld l, h
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01a_74d8

    ld h, l
    ld h, l
    ld [hl], b
    jr nz, jr_01a_74e7

    ld [hl], b
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    daa

jr_01a_747a:
    ld [hl], d
    ld h, l

jr_01a_747c:
    jr nz, jr_01a_74e5

    ld l, a
    ld l, a
    ld h, h
    ld hl, $4901
    jr nz, jr_01a_74fd

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01a_74f1

jr_01a_748c:
    db $76

jr_01a_748d:
    ld h, l
    ld l, [hl]
    ld bc, $6f63
    ld l, l
    ld [hl], b
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_01a_7508

    ld [hl], l

jr_01a_749a:
    ld [hl], d
    jr nz, jr_01a_7504

    ld h, c
    ld l, l
    ld h, l
    ld [hl], e
    ld hl, $0003
    ld b, [hl]
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01a_751e

    ld h, l
    ld h, l
    jr nz, jr_01a_7522

    ld l, a

jr_01a_74af:
    jr nz, @+$65

    ld [hl], l
    ld [hl], b
    inc l
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01a_7531

    ld h, l

jr_01a_74bb:
    ld [hl], d

jr_01a_74bc:
    ld h, l
    jr nz, jr_01a_752f

jr_01a_74bf:
    ld h, l

jr_01a_74c0:
    ld [hl], d
    ld h, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    ld hl, $5501
    ld l, [hl]
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, a
    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    ld hl, $0003
    ld d, a

jr_01a_74d8:
    ld l, c
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_7554

    ld l, b
    ld h, l
    jr nz, jr_01a_7527

    ld l, h

jr_01a_74e5:
    ld [hl], l
    ld h, d

jr_01a_74e7:
    ld bc, $6f54
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]

jr_01a_74f1:
    ld [hl], h
    jr nz, jr_01a_7568

    ld h, c
    ld l, e
    ld h, l
    ld [hl], e
    ld bc, $6570
    ld [hl], d
    ld h, [hl]

jr_01a_74fd:
    ld h, l
    ld h, e
    ld [hl], h
    jr nz, jr_01a_7572

    ld l, h
    ld h, c

jr_01a_7504:
    ld a, c
    ld l, $02
    ld b, c

jr_01a_7508:
    ld l, [hl]
    ld h, h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_01a_7587

    ld h, l
    ld [hl], d
    ld h, l
    ld bc, $6562
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01a_7590

    ld l, b
    ld h, c

jr_01a_751e:
    ld l, [hl]
    jr nz, jr_01a_7591

    ld h, l

jr_01a_7522:
    ld [hl], d
    ld h, [hl]
    ld h, l
    ld h, e
    ld [hl], h

jr_01a_7527:
    ld hl, $0003
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01a_757b

jr_01a_752f:
    ld l, c
    ld l, [hl]

jr_01a_7531:
    ld l, e
    ld [hl], e
    jr nz, jr_01a_7578

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    inc l
    ld bc, $070e
    inc l
    jr nz, jr_01a_75a9

    ld [hl], e
    jr nz, @+$63

    jr nz, jr_01a_75b5

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    ld bc, $6977
    ld [hl], h
    ld l, b
    jr nz, jr_01a_75bf

    ld l, a
    jr nz, @+$79

jr_01a_7554:
    ld h, l
    ld h, c
    ld l, e
    ld l, [hl]
    ld h, l
    ld [hl], e
    ld [hl], e
    ld h, l
    ld [hl], e
    ld l, $03
    nop
    ld c, c
    ld h, [hl]
    jr nz, jr_01a_75dd

    ld l, a
    ld [hl], l
    jr nz, @+$65

jr_01a_7568:
    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$6f

    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l

jr_01a_7572:
    ld [hl], d
    ld bc, $694c
    ld l, [hl]
    ld l, e

jr_01a_7578:
    ld [hl], e
    jr nz, @+$45

jr_01a_757b:
    ld l, h
    ld [hl], l
    ld h, d
    inc l
    jr nz, jr_01a_75fa

    ld l, a
    ld [hl], l
    ld bc, $6f77
    ld l, [hl]

jr_01a_7587:
    daa
    ld [hl], h
    jr nz, jr_01a_75ed

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_01a_759e

jr_01a_7590:
    rlca

jr_01a_7591:
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01a_75fb

    ld l, c
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01a_760e

jr_01a_759e:
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    inc l
    ld bc, $7562
    ld [hl], h
    jr nz, @+$4b

jr_01a_75a9:
    jr nz, jr_01a_7622

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01a_761d

    ld h, l
    ld [hl], h
    jr nz, jr_01a_761e

jr_01a_75b5:
    ld [hl], h
    ld bc, $6567
    ld [hl], h
    jr nz, jr_01a_7629

    ld h, l
    jr nz, jr_01a_7623

jr_01a_75bf:
    ld l, a
    ld [hl], a
    ld l, [hl]
    ld l, $02
    ld c, a
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01a_7613

    jr nz, jr_01a_7637

    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_01a_7645

    ld l, b
    ld h, l
    ld bc, $6f63
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    jr nz, jr_01a_7648

    ld h, c

jr_01a_75dd:
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], h
    inc l
    jr nz, @+$4b

    daa
    ld l, h
    ld l, h
    ld bc, $6c70
    ld h, c
    ld h, e
    ld h, l

jr_01a_75ed:
    jr nz, @+$68

    ld l, a
    ld [hl], d
    jr nz, jr_01a_7666

    ld [hl], l
    ld [hl], d
    ld h, l
    ld l, $03
    nop
    ld c, l

jr_01a_75fa:
    ld a, c

jr_01a_75fb:
    jr nz, jr_01a_7674

    ld h, l
    ld h, h
    ld h, a
    ld h, l
    jr nz, @+$79

    ld h, c
    ld [hl], e
    jr nz, jr_01a_7676

    ld h, [hl]
    ld h, [hl]
    ld bc, $6f74
    ld h, h
    ld h, c

jr_01a_760e:
    ld a, c
    inc l
    jr nz, @+$63

    ld l, [hl]

jr_01a_7613:
    ld h, h
    jr nz, @+$4b

    jr nz, jr_01a_767b

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    ld l, [hl]

jr_01a_761d:
    daa

jr_01a_761e:
    ld [hl], h
    ld bc, $6573

jr_01a_7622:
    ld h, l

jr_01a_7623:
    ld l, l
    jr nz, @+$76

    ld l, a
    jr nz, @+$6f

jr_01a_7629:
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_01a_76a1

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    ld l, $02
    ld b, d
    ld [hl], l
    ld [hl], h

jr_01a_7637:
    jr nz, jr_01a_76a8

    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01a_7687

    jr nz, jr_01a_76a7

    ld h, l
    ld [hl], h
    jr nz, @+$6f

    ld a, c

jr_01a_7645:
    ld bc, $5753

jr_01a_7648:
    jr nz, jr_01a_76bd

    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_76b2

    ld h, c
    ld h, e
    ld l, e
    inc l
    ld bc, $2749
    ld l, h
    ld l, h
    jr nz, jr_01a_76bd

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_01a_76d9

    ld l, a
    ld [hl], l
    ld hl, $0003
    ld c, c

jr_01a_7666:
    jr nz, jr_01a_76d6

    ld h, l
    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_01a_76d3

    db $76
    ld h, l
    ld l, [hl]
    ld bc, $7264

jr_01a_7674:
    ld h, l
    ld h, c

jr_01a_7676:
    ld l, l
    ld h, l
    ld h, h
    jr nz, jr_01a_76f4

jr_01a_767b:
    ld l, a
    ld [hl], l
    daa
    ld h, h
    jr nz, jr_01a_76f8

    ld l, c
    ld l, [hl]
    ld bc, $6562
    ld h, [hl]

jr_01a_7687:
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01a_76f9

    ld h, l
    ld hl, $4f02
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01a_76de

    jr nz, jr_01a_76fe

    ld h, l
    ld [hl], h
    jr nz, jr_01a_7708

    ld a, c
    ld bc, $5731
    jr nz, jr_01a_7714

jr_01a_76a1:
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_7709

jr_01a_76a7:
    ld h, c

jr_01a_76a8:
    ld h, e
    ld l, e
    inc l
    ld bc, $2749
    ld l, h
    ld l, h
    jr nz, @+$75

jr_01a_76b2:
    ld l, b
    ld l, a
    ld [hl], a
    jr nz, jr_01a_7730

    ld l, a
    ld [hl], l
    ld hl, $0003
    ld b, a

jr_01a_76bd:
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_01a_772b

    ld [hl], e
    jr nz, @+$6a

    ld h, c
    ld [hl], d
    ld h, h
    ld l, $2e
    ld l, $20
    ld c, c
    ld h, [hl]
    ld bc, $796d
    jr nz, jr_01a_774a

jr_01a_76d3:
    ld l, a
    ld l, a
    ld h, h

jr_01a_76d6:
    jr nz, @+$75

    ld [hl], a

jr_01a_76d9:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_7747

jr_01a_76de:
    ld [hl], e
    ld bc, $6e6f
    inc l
    jr nz, jr_01a_7752

    ld a, c
    jr nz, jr_01a_7751

    ld [hl], d
    ld l, a
    ld l, [hl]
    daa
    ld [hl], e
    jr nz, @+$71

    ld h, [hl]
    ld h, [hl]
    ld [bc], a
    ld h, c
    ld l, [hl]

jr_01a_76f4:
    ld h, h
    jr nz, @+$78

    ld l, c

jr_01a_76f8:
    ld h, e

jr_01a_76f9:
    ld h, l
    jr nz, jr_01a_7772

    ld h, l
    ld [hl], d

jr_01a_76fe:
    ld [hl], e
    ld h, c
    ld l, $20
    ld b, c
    ld [hl], h
    ld bc, $6874
    ld l, c

jr_01a_7708:
    ld [hl], e

jr_01a_7709:
    jr nz, jr_01a_777b

    ld h, c
    ld h, e
    ld h, l
    inc l
    jr nz, jr_01a_775a

    daa
    ld l, h
    ld l, h

jr_01a_7714:
    ld bc, $656e
    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_01a_777e

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld hl, $0003
    ld c, $05
    jr nz, jr_01a_7793

    ld [hl], e

jr_01a_772b:
    ld bc, $6f77
    ld l, [hl]
    ld h, h

jr_01a_7730:
    ld h, l
    ld [hl], d
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld hl, $0003
    ld c, c
    ld h, [hl]
    jr nz, jr_01a_77b5

    ld l, a
    ld [hl], l
    jr nz, @+$72

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_01a_77ae

    ld h, l

jr_01a_7747:
    ld [hl], d
    ld h, l
    inc l

jr_01a_774a:
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01a_77b3

    ld h, c

jr_01a_7751:
    ld l, [hl]

jr_01a_7752:
    jr nz, jr_01a_77b9

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01a_77ce

jr_01a_775a:
    ld l, b
    ld h, l
    ld bc, $7544
    ld l, [hl]
    ld h, l
    jr nz, @+$56

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $02
    ld d, a
    ld l, c
    ld l, [hl]
    ld l, [hl]

jr_01a_7772:
    ld l, c
    ld l, [hl]
    ld h, a
    daa
    ld [hl], e
    jr nz, jr_01a_77e2

    ld l, l
    ld [hl], b

jr_01a_777b:
    ld l, a
    ld [hl], e
    ld [hl], e

jr_01a_777e:
    ld l, c
    ld h, d
    ld l, h
    ld h, l
    ld l, $2e
    ld l, $01
    ld c, c
    jr nz, jr_01a_7800

    ld l, a
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, @+$79

    ld l, b
    ld h, c
    ld [hl], h

jr_01a_7793:
    jr nz, jr_01a_7805

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld bc, $2749
    ld l, h
    ld l, h
    jr nz, @+$69

    ld h, l
    ld [hl], h
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01a_781c

    ld [hl], d
    ld l, c
    ld h, l
    ld h, h
    jr nz, jr_01a_7821

jr_01a_77ae:
    ld l, a
    jr nz, jr_01a_7819

    ld h, c
    ld [hl], d

jr_01a_77b3:
    ld h, h
    inc l

jr_01a_77b5:
    ld bc, $7562
    ld [hl], h

jr_01a_77b9:
    jr nz, jr_01a_7804

    jr nz, jr_01a_7830

    ld [hl], h
    ld l, c
    ld l, h
    ld l, h
    ld bc, $6f63
    ld [hl], l
    ld l, h
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01a_783c

    ld l, h
    ld h, c

jr_01a_77ce:
    ld h, e
    ld h, l
    ld l, $02
    ld c, c
    jr nz, jr_01a_783c

    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_01a_784f

    ld l, b
    ld h, l
    jr nz, jr_01a_782f

    ld h, c
    ld l, h
    ld l, l

jr_01a_77e2:
    ld bc, $6f54
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01a_7861

    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    ld bc, $7369
    jr nz, jr_01a_785a

    jr nz, jr_01a_7863

    ld l, c
    ld h, a
    ld l, b
    ld h, l
    ld [hl], d

jr_01a_7800:
    jr nz, jr_01a_786e

    ld h, l
    db $76

jr_01a_7804:
    ld h, l

jr_01a_7805:
    ld l, h
    ld hl, $0003
    ld c, c
    ld h, [hl]
    jr nz, jr_01a_7886

    ld l, a
    ld [hl], l
    daa
    ld h, h
    jr nz, jr_01a_7886

    ld [hl], h
    ld h, l
    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, h

jr_01a_7819:
    jr nz, jr_01a_7890

    ld [hl], b

jr_01a_781c:
    ld bc, $6f79
    ld [hl], l
    ld [hl], d

jr_01a_7821:
    jr nz, jr_01a_788a

    ld h, c
    ld l, l
    ld h, l
    inc l
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_01a_7890

    ld l, a
    ld [hl], l

jr_01a_782f:
    ld l, h

jr_01a_7830:
    ld h, h
    ld bc, $6168
    db $76
    ld h, l
    jr nz, @+$79

    ld l, a
    ld l, [hl]
    ld l, $2e

jr_01a_783c:
    ld l, $02
    ld c, $05
    jr nz, jr_01a_78b5

    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, @+$6b

    ld [hl], e
    jr nz, @+$63

    ld bc, $7473
    ld [hl], d
    ld l, a

jr_01a_784f:
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_78ba

    ld l, a
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld l, $03

jr_01a_785a:
    nop
    ld c, [hl]
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_01a_78cb

jr_01a_7861:
    ld l, a
    ld h, d

jr_01a_7863:
    ld hl, $4920
    jr nz, jr_01a_78d3

    ld l, [hl]
    ld h, l
    ld [hl], a
    ld bc, $6f79

jr_01a_786e:
    ld [hl], l
    daa
    ld h, h
    jr nz, jr_01a_78ea

    ld l, c
    ld l, [hl]
    jr nz, jr_01a_78d8

    ld h, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld bc, $6573
    ld h, l
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_78fd

    ld l, a
    ld [hl], l

jr_01a_7886:
    jr nz, jr_01a_78f8

    ld l, h
    ld h, c

jr_01a_788a:
    ld a, c
    ld l, $03
    nop
    ld b, e
    ld l, b

jr_01a_7890:
    ld h, c
    ld l, l
    ld [hl], b
    inc l
    jr nz, @+$4b

    daa
    ld l, l
    jr nz, jr_01a_7901

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6f74
    jr nz, jr_01a_7905

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_01a_7921

    ld l, a
    ld [hl], l
    jr nz, jr_01a_790d

    ld l, [hl]
    ld h, h
    ld bc, $6562
    ld h, e
    ld l, a
    ld l, l
    ld h, l

jr_01a_78b5:
    jr nz, jr_01a_78fe

    ld [hl], d
    ld h, c
    ld l, [hl]

jr_01a_78ba:
    ld h, h
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld hl, $4902
    daa
    ld l, l
    jr nz, @+$67

    ld a, b
    ld [hl], h
    ld h, l

jr_01a_78cb:
    ld l, [hl]
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_793f

    ld a, c

jr_01a_78d3:
    ld bc, $7264
    ld l, c
    db $76

jr_01a_78d8:
    ld h, l
    jr nz, @+$6c

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01a_7946

    ld l, a
    ld [hl], d
    ld bc, $6874
    ld h, c
    ld [hl], h
    jr nz, jr_01a_7959

    ld [hl], l

jr_01a_78ea:
    ld [hl], d
    ld [hl], b
    ld l, a
    ld [hl], e
    ld h, l
    ld hl, $0003
    ld c, h
    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_01a_7959

jr_01a_78f8:
    ld [hl], h
    jr nz, jr_01a_7909

    ld b, $27

jr_01a_78fd:
    ld [hl], e

jr_01a_78fe:
    ld bc, $6870

jr_01a_7901:
    ld a, c
    ld [hl], e
    ld l, c
    ld [hl], c

jr_01a_7905:
    ld [hl], l
    ld h, l
    ld l, $2e

jr_01a_7909:
    ld l, $01
    ld c, b
    ld h, l

jr_01a_790d:
    daa
    ld [hl], e
    jr nz, jr_01a_7984

    ld l, a
    jr nz, jr_01a_7981

    ld h, c
    ld h, e
    ld l, b
    ld l, a
    ld hl, $0003
    ld c, $06
    daa
    ld [hl], e
    jr nz, jr_01a_7995

jr_01a_7921:
    ld h, l
    ld h, l
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], h
    ld bc, $6177
    ld [hl], e
    jr nz, jr_01a_798f

    ld l, l
    ld h, c
    ld a, d
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $5402
    ld l, a
    ld h, h
    ld h, c
    ld a, c
    daa
    ld [hl], e
    jr nz, jr_01a_79b6

jr_01a_793f:
    ld l, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld [hl], d
    jr nz, jr_01a_79bd

jr_01a_7946:
    ld l, c
    ld l, h
    ld l, h
    ld bc, $6168
    db $76
    ld h, l
    jr nz, @+$76

    ld l, a
    jr nz, jr_01a_79ba

    ld l, a
    jr nz, jr_01a_79ca

    ld l, b
    ld [hl], d
    ld l, a

jr_01a_7959:
    ld [hl], l
    ld h, a
    ld l, b
    ld bc, $6968
    ld l, l
    jr nz, @+$68

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld hl, $0003
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01a_79d8

    ld [hl], e
    jr nz, jr_01a_79db

    ld [hl], h
    jr nz, @+$63

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    ld bc, $060e
    daa
    ld [hl], e
    jr nz, jr_01a_79e7

    ld l, a

jr_01a_7981:
    ld l, h
    ld h, [hl]
    ccf

jr_01a_7984:
    ld [bc], a
    ld b, e
    ld h, c
    ld l, [hl]
    jr nz, jr_01a_7a03

    ld l, a
    ld [hl], l
    jr nz, jr_01a_7a00

    ld h, l

jr_01a_798f:
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, @+$69

jr_01a_7995:
    ld h, l
    ld [hl], h
    ld bc, $6874
    ld h, c
    ld [hl], h
    jr nz, jr_01a_7a11

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01a_7a1b

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, @+$6c

    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld bc, $2061
    ld l, h
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, @+$66

    ld [hl], d

jr_01a_79b6:
    ld l, c
    db $76
    ld h, l
    ccf

jr_01a_79ba:
    inc bc
    nop
    ld c, c

jr_01a_79bd:
    jr nz, jr_01a_7a22

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01a_7a2d

    ld l, c
    ld [hl], h
    jr nz, jr_01a_7a35

    ld l, c

jr_01a_79ca:
    ld l, e
    ld h, l
    ld bc, $6954
    ld l, [hl]
    ld a, c
    inc l
    jr nz, jr_01a_7a47

    ld l, a
    jr nz, @+$6f

    ld a, c

jr_01a_79d8:
    jr nz, jr_01a_7a40

    ld l, a

jr_01a_79db:
    ld h, e
    ld [hl], l
    ld [hl], e
    ld bc, $7369
    jr nz, jr_01a_7a52

    ld l, [hl]
    jr nz, jr_01a_7a47

    ld h, e

jr_01a_79e7:
    ld h, e
    ld [hl], l
    ld [hl], d
    ld h, c
    ld h, e
    ld a, c
    ld l, $03
    nop
    ld b, a
    ld h, l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_7a6d

    ld l, b
    ld h, l
    ld bc, $6f6c
    ld l, [hl]
    ld h, a

jr_01a_7a00:
    ld h, l
    ld [hl], e
    ld [hl], h

jr_01a_7a03:
    jr nz, jr_01a_7a69

    ld [hl], d
    ld l, c
    db $76
    ld h, l
    jr nz, jr_01a_7a74

    ld [hl], e
    ld bc, $6168
    ld [hl], d
    ld h, h

jr_01a_7a11:
    inc l
    jr nz, jr_01a_7a76

    ld [hl], l
    ld [hl], h
    jr nz, jr_01a_7a61

    jr nz, @+$75

    ld l, b

jr_01a_7a1b:
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    ld [bc], a
    ld l, b
    ld h, c

jr_01a_7a22:
    db $76
    ld h, l
    jr nz, jr_01a_7a87

    jr nz, jr_01a_7a8b

    ld l, b
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l

jr_01a_7a2d:
    jr nz, jr_01a_7a90

    ld [hl], h
    ld bc, $6567
    ld [hl], h
    ld [hl], h

jr_01a_7a35:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01a_7a9d

    ld l, h
    ld l, a
    ld [hl], e
    ld h, l
    ld [hl], e
    ld [hl], h

jr_01a_7a40:
    ld bc, $6f74
    jr nz, jr_01a_7ab9

    ld l, b
    ld h, l

jr_01a_7a47:
    jr nz, jr_01a_7ab9

    ld l, c
    ld l, [hl]
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    ld a, c

jr_01a_7a52:
    jr nz, jr_01a_7ac7

    ld h, c
    ld a, c
    jr nz, jr_01a_7ad1

    ld l, a
    ld [hl], l
    jr nz, jr_01a_7abf

    ld h, c
    ld l, [hl]
    ld bc, $656d

jr_01a_7a61:
    ld h, l
    ld [hl], h
    jr nz, jr_01a_7ab2

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a

jr_01a_7a69:
    jr nz, jr_01a_7ae2

    ld l, b
    ld h, l

jr_01a_7a6d:
    ld l, [hl]
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01a_7ad6

jr_01a_7a74:
    ld h, l
    ld h, e

jr_01a_7a76:
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_01a_7ac2

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, $03

jr_01a_7a87:
    nop
    ld d, a
    ld l, b
    ld h, l

jr_01a_7a8b:
    ld l, [hl]
    jr nz, jr_01a_7b07

    ld l, a
    ld [hl], l

jr_01a_7a90:
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01a_7adc

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    ld bc, $6843
    ld h, c

jr_01a_7a9d:
    ld l, l
    ld [hl], b
    inc l
    jr nz, jr_01a_7b1b

    ld l, a
    ld [hl], l
    jr nz, jr_01a_7b09

    ld h, c
    ld l, [hl]
    jr nz, jr_01a_7b17

    ld h, l
    ld h, l
    ld [hl], h
    ld bc, $614d
    ld [hl], d
    ld l, c

jr_01a_7ab2:
    ld l, a
    ld l, $2e
    ld l, $03
    nop
    ld c, c

jr_01a_7ab9:
    daa
    ld l, h
    ld l, h
    jr nz, jr_01a_7b20

    ld h, l

jr_01a_7abf:
    jr nz, @+$76

    ld l, b

jr_01a_7ac2:
    ld h, l
    jr nz, @+$71

    ld l, [hl]
    ld h, l

jr_01a_7ac7:
    ld bc, $6f74
    jr nz, jr_01a_7b2e

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_01a_7adf

jr_01a_7ad1:
    rlca
    jr nz, @+$63

    ld l, [hl]
    ld h, h

jr_01a_7ad6:
    ld bc, $6f6e
    ld h, d
    ld l, a
    ld h, h

jr_01a_7adc:
    ld a, c
    jr nz, @+$67

jr_01a_7adf:
    ld l, h
    ld [hl], e
    ld h, l

jr_01a_7ae2:
    ld hl, $0003
    ld c, c
    ld h, [hl]
    jr nz, jr_01a_7b62

    ld l, a
    ld [hl], l
    jr nz, jr_01a_7b5d

    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_01a_7b69

    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_01a_7b59

    ld [hl], l
    ld [hl], h
    ld bc, $6f64
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01a_7b6e

    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_01a_7b76

    ld h, c

jr_01a_7b07:
    ld [hl], d
    inc l

jr_01a_7b09:
    ld bc, $7469
    daa
    ld [hl], e
    jr nz, jr_01a_7b89

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01a_7b89

    ld h, l
    ld h, e

jr_01a_7b17:
    ld l, b
    ld l, [hl]
    ld l, c
    ld [hl], c

jr_01a_7b1b:
    ld [hl], l
    ld h, l
    ld l, $03
    nop

jr_01a_7b20:
    push af
    ld a, $00
    call Call_01a_7b30
    pop af
    ret


    push af
    ld a, $01
    call Call_01a_7b30

jr_01a_7b2e:
    pop af
    ret


Call_01a_7b30:
    push bc
    push de
    push hl
    ld hl, $4004
    sla e
    rl d
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld hl, $41fc
    add hl, de
    or a
    jr nz, jr_01a_7b4d

    ld de, $c600
    ld bc, $0180
    jr jr_01a_7b53

jr_01a_7b4d:
    ld de, $d880
    ld bc, $0020

jr_01a_7b53:
    call MemCopy
    pop hl
    pop de
    pop bc

jr_01a_7b59:
    ret


    rst $38
    rst $38
    rst $38

jr_01a_7b5d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01a_7b62:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01a_7b69:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01a_7b6e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01a_7b76:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01a_7b89:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
