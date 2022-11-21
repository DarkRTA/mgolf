INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01c", ROMX[$4000], BANK[$1c]

    db $14, $7b

    inc e
    ld a, e
    nop
    nop
    jr nc, jr_01c_4008

jr_01c_4008:
    ld c, l
    nop
    adc c
    nop
    db $ed
    nop
    ld d, l
    ld bc, $01b9
    jp nc, $0801

    ld [bc], a
    inc h
    ld [bc], a
    ld e, c
    ld [bc], a
    sub d
    ld [bc], a
    push bc
    ld [bc], a
    cpl
    inc bc
    ld d, d
    inc bc
    adc d
    inc bc
    cp a
    inc bc
    jr z, jr_01c_402c

    ld d, l
    inc b
    ld a, h
    inc b

jr_01c_402c:
    rst $18
    inc b
    ld b, e
    dec b
    db $76
    dec b
    jp c, Jump_000_2505

    ld b, $89
    ld b, $a4
    ld b, $0c
    rlca
    ld b, b
    rlca
    ld l, l
    rlca
    adc l
    rlca
    call nz, $fb07
    rlca
    dec hl
    ld [$085d], sp
    add a
    ld [$08f5], sp
    add hl, de
    add hl, bc
    ld c, [hl]
    add hl, bc
    add d
    add hl, bc
    cp c
    add hl, bc
    push hl
    add hl, bc
    ld de, $770a
    ld a, [bc]
    sbc $0a
    ld [de], a

jr_01c_405f:
    dec bc

jr_01c_4060:
    adc c
    dec bc
    xor $0b
    inc e
    inc c
    add e
    inc c
    ld de, $7f0d
    dec c
    sub [hl]
    dec c
    jp z, Jump_000_000d

    ld c, $24
    ld c, $3b
    ld c, $57
    ld c, $6b
    ld c, $a6
    ld c, $de
    ld c, $0b
    rrca
    ld [hl], b
    rrca
    sub h
    rrca
    push bc
    rrca
    inc [hl]
    db $10
    ld l, [hl]
    db $10
    sbc $10
    ld de, $2711
    ld de, $1159
    adc b
    ld de, $11b6
    db $e3
    ld de, $11f3
    ccf
    ld [de], a
    db $76
    ld [de], a
    xor l
    ld [de], a
    ld e, $13
    ld [hl], d
    inc de
    call c, Call_01c_5913
    inc d
    cp a
    inc d
    db $ed

jr_01c_40ab:
    inc d
    inc bc
    dec d
    cp [hl]
    dec d
    db $ec
    dec d
    db $10
    ld d, $77
    ld d, $94
    ld d, $aa
    ld d, $b7
    ld d, $ed
    ld d, $23
    rla
    ld e, c
    rla
    adc h
    rla
    pop af
    rla
    daa

jr_01c_40c7:
    jr @+$5b

    jr jr_01c_4060

    jr jr_01c_40c7

    jr jr_01c_405f

    add hl, de
    jp nz, $d819

    add hl, de
    dec bc
    ld a, [de]
    ld e, a
    ld a, [de]
    sbc e
    ld a, [de]
    cp e
    ld a, [de]
    xor $1a
    ld [bc], a
    dec de
    jr c, jr_01c_40fd

    ld [hl], d
    dec de
    xor b
    dec de
    inc c
    inc e
    ld e, e
    inc e
    call nz, Call_000_321c
    dec e
    ld d, b
    dec e
    ld h, [hl]
    dec e
    and [hl]
    dec e
    call nc, $f11d
    dec e
    ld [$291e], sp
    ld e, $3d

jr_01c_40fd:
    ld e, $71
    ld e, $a2
    ld e, $d7
    ld e, $0a
    rra
    ld [hl], e
    rra
    rst $08
    rra
    inc [hl]
    jr nz, jr_01c_40ab

    jr nz, @-$11

    jr nz, jr_01c_4114

    ld hl, $213a

jr_01c_4114:
    add c
    ld hl, $21ac
    jr @+$24

    dec hl
    ld [hl+], a
    sub a
    ld [hl+], a
    cp a
    ld [hl+], a
    ld [$6123], sp
    inc hl
    adc $23
    cpl
    inc h
    sbc b
    inc h
    dec b
    dec h
    ld e, $25
    ld [hl-], a
    dec h
    cp [hl]
    dec h
    pop hl
    dec h
    ld e, $26
    jr c, jr_01c_415e

jr_01c_4138:
    ld c, [hl]
    ld h, $61
    ld h, $8f
    ld h, $c0
    ld h, $f7
    ld h, $2a
    daa
    adc a
    daa
    db $ed
    daa
    ld b, l
    jr z, @-$50

    jr z, jr_01c_416a

    add hl, hl
    ld sp, $6329
    add hl, hl
    ld [hl], e
    add hl, hl
    add $29
    ld bc, $2f2a
    ld a, [hl+]
    ld c, h
    ld a, [hl+]
    sbc d
    ld a, [hl+]

jr_01c_415e:
    xor $2a
    ld d, $2b
    ld b, [hl]
    dec hl
    ld a, l
    dec hl
    add a
    dec hl
    or [hl]
    dec hl

jr_01c_416a:
    di
    dec hl
    ld h, $2c
    add b
    inc l
    db $dd
    inc l
    ld sp, $932d
    dec l
    jp z, Jump_000_242d

    ld l, $4c
    ld l, $b2
    ld l, $f8
    ld l, $61
    cpl
    sbc h
    cpl
    ld [$4b2f], a

jr_01c_4187:
    jr nc, jr_01c_4138

    jr nc, @+$04

    ld sp, $315c
    or [hl]
    ld sp, $3213
    ld a, h
    ld [hl-], a
    ret z

    ld [hl-], a
    db $fd

jr_01c_4197:
    ld [hl-], a
    ld d, h
    inc sp
    adc e
    inc sp
    ld a, [$6433]
    inc [hl]
    adc $34
    inc hl
    dec [hl]

jr_01c_41a4:
    ld b, [hl]
    dec [hl]
    ld l, [hl]
    dec [hl]
    ld a, a
    dec [hl]
    and c
    dec [hl]
    add $35
    ret c

    dec [hl]

jr_01c_41b0:
    inc sp
    ld [hl], $53
    ld [hl], $77
    ld [hl], $bc
    ld [hl], $e7
    ld [hl], $15
    scf
    jr nz, jr_01c_41f5

    cpl
    scf
    ld b, b
    scf
    ld d, h
    scf

    db $69, $37, $6f, $37, $75, $37, $7a, $37, $81, $37, $8f, $37, $97, $37, $a3, $37
    db $b6, $37, $cc, $37, $d0, $37, $d3, $37

    rst $18
    scf
    db $e4

jr_01c_41df:
    scf
    ld [$ec37], a
    scf
    ld a, [c]
    scf
    ld hl, sp+$37
    nop
    jr c, @+$07

    jr c, jr_01c_41f7

    jr c, @+$15

    db $38

    db $18, $38, $25, $38

    dec [hl]

jr_01c_41f5:
    jr c, @+$58

jr_01c_41f7:
    jr c, jr_01c_4256

    jr c, jr_01c_4263

    jr c, jr_01c_426d

jr_01c_41fd:
    jr c, jr_01c_427a

    jr c, jr_01c_4187

    jr c, jr_01c_4197

    jr c, jr_01c_41a4

    jr c, jr_01c_41b0

    jr c, @-$4d

jr_01c_4209:
    jr c, @-$42

    jr c, @-$39

    jr c, jr_01c_41df

    jr c, @-$1e

    jr c, jr_01c_41fd

    jr c, jr_01c_4269

    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01c_4287

    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, @+$63

    ld bc, $6968
    ld h, a
    ld l, b
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], h
    jr nz, jr_01c_42a1

    ld l, a
    jr nz, jr_01c_42a5

    ld [hl], e
    ld h, l
    ld bc, $6977
    ld [hl], h
    ld l, b
    jr nz, jr_01c_42ad

    ld h, c
    ld l, c
    ld l, h
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01c_42c3

    ld l, a
    ld [hl], l
    jr nz, jr_01c_42ba

    ld l, c
    ld l, e
    ld h, l
    ld bc, $6361
    ld h, e
    ld [hl], l

jr_01c_4256:
    ld [hl], d
    ld h, c
    ld h, e
    ld a, c
    jr nz, jr_01c_42c9

    ld l, a
    ld [hl], d
    ld h, l
    ccf
    nop
    ld d, h
    ld l, b

jr_01c_4263:
    ld h, l
    ld l, [hl]
    jr nz, jr_01c_42dc

    ld [hl], e
    ld h, l

jr_01c_4269:
    jr nz, jr_01c_42cc

    jr nz, jr_01c_42d9

jr_01c_426d:
    ld l, a
    ld [hl], a
    jr nz, jr_01c_42e4

    ld l, b
    ld l, a
    ld [hl], h
    ld bc, $6e69
    jr nz, jr_01c_42e1

    ld h, l

jr_01c_427a:
    ld h, c
    ld h, h
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, jr_01c_42b0

    jr nz, jr_01c_42ee

    ld [hl], h
    daa

jr_01c_4287:
    ld l, h
    ld l, h
    ld bc, $6562
    jr nz, jr_01c_42ef

    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_01c_4303

    ld h, l
    ld [hl], e
    ld [hl], e
    ld l, $03
    nop
    ld b, c
    ld l, [hl]
    jr nz, jr_01c_4302

jr_01c_42a1:
    ld h, e
    ld h, e
    ld [hl], l
    ld [hl], d

jr_01c_42a5:
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_01c_431d

    ld l, b
    ld l, a
    ld [hl], h

jr_01c_42ad:
    jr nz, jr_01c_4318

    ld [hl], e

jr_01c_42b0:
    ld bc, $6e6f
    ld h, l
    jr nz, jr_01c_4325

    ld h, [hl]
    jr nz, jr_01c_4320

    ld l, a

jr_01c_42ba:
    ld l, h
    ld h, [hl]
    daa
    ld [hl], e
    jr nz, jr_01c_4322

    ld h, c
    ld [hl], e
    ld l, c

jr_01c_42c3:
    ld h, e
    ld bc, $7270
    ld l, c
    ld l, [hl]

jr_01c_42c9:
    ld h, e
    ld l, c
    ld [hl], b

jr_01c_42cc:
    ld l, h
    ld h, l
    ld [hl], e
    ld l, $02
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_01c_434a

    ld l, b
    ld h, c
    ld [hl], h

jr_01c_42d9:
    jr nz, jr_01c_4346

    ld l, c

jr_01c_42dc:
    ld l, [hl]
    ld h, h
    jr nz, jr_01c_434f

    ld h, [hl]

jr_01c_42e1:
    ld bc, $6873

jr_01c_42e4:
    ld l, a
    ld [hl], h
    jr nz, @+$76

    ld h, c
    ld l, e
    ld h, l
    ld [hl], e
    jr nz, jr_01c_4352

jr_01c_42ee:
    ld l, c

jr_01c_42ef:
    ld l, h
    ld l, c
    ld h, a
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld bc, $7270
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    ld l, $03
    nop
    ld c, c

jr_01c_4302:
    ld h, [hl]

jr_01c_4303:
    jr nz, jr_01c_437e

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01c_437e

    ld h, l
    ld h, l
    jr nz, jr_01c_4381

    ld l, b
    ld l, a
    ld [hl], h
    daa
    ld [hl], e
    ld bc, $6972
    ld h, a
    ld l, b

jr_01c_4318:
    ld [hl], h
    jr nz, jr_01c_438a

    ld l, [hl]
    inc l

jr_01c_431d:
    jr nz, jr_01c_4387

    ld h, c

jr_01c_4320:
    ld a, d
    ld h, c

jr_01c_4322:
    ld [hl], d
    ld h, h
    ld [hl], e

jr_01c_4325:
    ld bc, $7261
    ld h, l
    jr nz, jr_01c_4399

    ld l, a
    jr nz, jr_01c_43a1

    ld [hl], a
    ld h, l
    ld h, c
    ld [hl], h
    ld l, $20
    ld b, d
    ld [hl], l
    ld [hl], h
    ld [bc], a
    ld l, c
    ld h, [hl]
    jr nz, @+$70

    ld l, a
    ld [hl], h
    inc l
    jr nz, @+$63

    ld h, h
    ld l, d
    ld [hl], l
    ld [hl], e
    ld [hl], h

jr_01c_4346:
    ld bc, $6f79
    ld [hl], l

jr_01c_434a:
    ld [hl], d
    jr nz, jr_01c_43b6

    ld l, l
    ld [hl], b

jr_01c_434f:
    ld h, c
    ld h, e
    ld [hl], h

jr_01c_4352:
    jr nz, jr_01c_43c4

    ld l, a
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld bc, $6f74
    jr nz, jr_01c_43c0

    ld l, a
    ld l, l
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld [hl], e
    ld h, c
    ld [hl], h
    ld h, l
    ld l, $03
    nop
    ld d, b
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_01c_43e3

    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e
    jr nz, jr_01c_43d7

    ld [hl], d
    ld h, l
    ld bc, $696c
    ld l, l
    ld l, c
    ld [hl], h

jr_01c_437e:
    ld h, l
    ld h, h
    inc l

jr_01c_4381:
    jr nz, jr_01c_43f6

    ld l, a
    jr nz, @+$66

    ld l, a

jr_01c_4387:
    ld l, [hl]
    daa
    ld [hl], h

jr_01c_438a:
    ld bc, $7375
    ld h, l
    jr nz, jr_01c_43b7

    ld h, l
    ld l, l
    jr nz, jr_01c_43f5

    ld l, h
    ld l, h
    jr nz, @+$77

    ld [hl], b

jr_01c_4399:
    ld l, $02
    ld c, l
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_01c_4402

jr_01c_43a1:
    jr nz, jr_01c_4413

    ld h, l
    ld [hl], d
    ld h, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    ld bc, $6f70
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_01c_4424

    ld l, b
    ld l, a
    ld [hl], h
    jr nz, jr_01c_4417

jr_01c_43b6:
    ld l, [hl]

jr_01c_43b7:
    ld h, h
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01c_4435

    ld l, a
    ld l, [hl]

jr_01c_43c0:
    daa
    ld [hl], h
    jr nz, jr_01c_4430

jr_01c_43c4:
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_01c_4432

    ld [hl], h
    ld l, $03
    nop
    ld b, e
    ld h, c
    ld l, [hl]
    jr nz, jr_01c_444b

    ld l, a
    ld [hl], l
    jr nz, @+$6a

    ld l, c

jr_01c_43d7:
    ld [hl], h
    ld bc, $6166
    ld [hl], d
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_01c_4450

    ld l, a

jr_01c_43e3:
    ld [hl], a
    ccf
    nop
    ld c, c
    daa
    ld l, l
    jr nz, jr_01c_4455

    ld h, l
    ld h, c
    ld l, h
    ld l, a
    ld [hl], l
    ld [hl], e
    ld l, $20
    ld b, d
    ld [hl], l

jr_01c_43f5:
    ld [hl], h

jr_01c_43f6:
    ld bc, $6968
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$68

    ld h, c
    ld [hl], d

jr_01c_4402:
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, @+$6f

    ld h, l
    ld h, c
    ld l, [hl]
    ld [hl], e
    ld bc, $656c
    ld [hl], e
    ld [hl], e
    jr nz, @+$65

jr_01c_4413:
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d

jr_01c_4417:
    ld l, a
    ld l, h
    ld l, $03
    nop
    ld b, h
    ld l, a
    jr nz, jr_01c_4499

    ld l, a
    ld [hl], l
    jr nz, jr_01c_449b

jr_01c_4424:
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, @+$76

    ld l, a
    ld bc, $6968
    ld [hl], h
    jr nz, @+$68

jr_01c_4430:
    ld h, c
    ld [hl], d

jr_01c_4432:
    ld [hl], h
    ld l, b
    ld h, l

jr_01c_4435:
    ld [hl], d
    ccf
    nop
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01c_44a5

    ld l, a
    ld [hl], d
    ld h, a
    ld h, l
    ld [hl], h
    inc l
    jr nz, jr_01c_44a8

    jr nz, jr_01c_44b5

    ld l, a
    ld l, [hl]

jr_01c_444b:
    ld h, a
    ld bc, $7264
    ld l, c

jr_01c_4450:
    db $76
    ld h, l
    jr nz, jr_01c_44bd

    ld [hl], e

jr_01c_4455:
    jr nz, jr_01c_44bc

    db $76
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_01c_44c4

    ld l, a
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d
    daa
    ld [hl], e
    ld bc, $7264
    ld h, l
    ld h, c
    ld l, l
    ld l, $03
    nop
    ld b, c
    ld l, l
    ld h, c
    ld a, d
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $5920
    ld l, a
    ld [hl], l
    jr nz, @+$6d

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld bc, $2061
    ld l, l
    ld l, a
    ld h, h
    ld h, l
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_01c_44ef

    ld [hl], d
    ld l, c
    db $76
    ld h, l
    ld bc, $656d
    ld h, c
    ld l, [hl]
    ld [hl], e
    jr nz, @+$75

    ld [hl], h
    ld h, l

jr_01c_4499:
    ld h, c
    ld h, h

jr_01c_449b:
    ld a, c
    jr nz, jr_01c_4511

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    ld [hl], e
    ld l, $03

jr_01c_44a5:
    nop
    ld b, c
    ld [hl], e

jr_01c_44a8:
    ld [hl], e
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, @+$79

    ld l, a
    ld [hl], d
    ld [hl], e
    ld [hl], h
    dec l
    ld h, e
    ld h, c

jr_01c_44b5:
    ld [hl], e
    ld h, l
    ld bc, $6373
    ld h, l
    ld l, [hl]

jr_01c_44bc:
    ld h, c

jr_01c_44bd:
    ld [hl], d
    ld l, c
    ld l, a
    jr nz, jr_01c_4534

    ld l, c
    ld [hl], e

jr_01c_44c4:
    ld l, e
    jr nz, @+$71

    ld l, [hl]
    ld bc, $7274
    ld l, a
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_01c_4545

    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e
    ld l, $03
    nop
    ld c, c
    ld h, [hl]
    jr nz, jr_01c_4556

    ld l, a
    ld [hl], l
    jr nz, jr_01c_4545

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$6f

    ld l, c
    ld [hl], e
    ld [hl], e
    ld bc, $6e6f
    jr nz, jr_01c_4563

jr_01c_44ef:
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_01c_456a

    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e
    inc l
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01c_4565

    ld h, c
    ld l, [hl]
    jr nz, jr_01c_4569

    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_01c_456d

    ld h, c
    ld h, e
    ld l, e
    ld l, $02
    ld d, b

jr_01c_4511:
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_4592

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, @+$6f

    ld l, c
    ld l, [hl]
    ld h, h
    ld bc, $6f74
    jr nz, jr_01c_458f

    ld [hl], h
    jr nz, jr_01c_459d

    ld h, l
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, jr_01c_45a3

    ld l, a
    ld bc, $6f77
    ld [hl], d

jr_01c_4534:
    ld l, e
    jr nz, jr_01c_45a8

    ld [hl], l
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_01c_45b4

    ld h, l
    ld l, h
    ld l, h
    ld l, $03
    nop
    rlca
    inc l

jr_01c_4545:
    jr nz, jr_01c_45aa

    ld h, c
    ld l, [hl]
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01c_45b7

    ld l, c
    ld [hl], h
    jr nz, jr_01c_45b4

    jr nz, @+$6a

    ld l, a

jr_01c_4556:
    ld l, a
    ld l, e
    ld bc, $6e61
    ld h, h
    jr nz, jr_01c_45bf

    jr nz, jr_01c_45d3

    ld l, h
    ld l, c
    ld h, e

jr_01c_4563:
    ld h, l
    ccf

jr_01c_4565:
    nop
    ld e, c
    ld h, l
    ld h, c

jr_01c_4569:
    ld l, b

jr_01c_456a:
    inc l
    jr nz, jr_01c_45ce

jr_01c_456d:
    ld [hl], e
    jr nz, jr_01c_45dd

    ld [hl], l
    ld h, e
    ld l, b
    jr nz, jr_01c_45d6

    ld [hl], e
    ld bc, $6f79
    ld [hl], l
    daa
    db $76
    ld h, l
    jr nz, jr_01c_45ef

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld h, h
    inc l
    jr nz, jr_01c_4600

    ld l, a
    ld [hl], l
    ld bc, $6873
    ld l, a
    ld [hl], l
    ld l, h

jr_01c_458f:
    ld h, h
    jr nz, jr_01c_45f4

jr_01c_4592:
    ld h, l
    jr nz, jr_01c_45f6

    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_01c_460e

    ld l, a
    ld l, $03

jr_01c_459d:
    nop
    ld b, l
    ld a, b
    ld [hl], b
    ld h, l
    ld [hl], d

jr_01c_45a3:
    ld l, c
    ld h, l
    ld l, [hl]
    ld h, e
    ld h, l

jr_01c_45a8:
    jr nz, jr_01c_4613

jr_01c_45aa:
    ld [hl], e
    jr nz, jr_01c_460e

    ld l, h
    ld l, h
    ld bc, $7469
    jr nz, jr_01c_4628

jr_01c_45b4:
    ld h, c
    ld l, e
    ld h, l

jr_01c_45b7:
    ld [hl], e
    inc l
    jr nz, jr_01c_462e

    ld l, a
    jr nz, jr_01c_4622

    ld l, a

jr_01c_45bf:
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $7572
    ld [hl], e
    ld l, b
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l

jr_01c_45ce:
    ld l, h
    ld h, [hl]
    ld l, $03
    nop

jr_01c_45d3:
    ld c, a
    ld h, d
    db $76

jr_01c_45d6:
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    ld l, h
    ld a, c
    inc l

jr_01c_45dd:
    jr nz, jr_01c_4653

    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    ld bc, $6873
    ld l, a
    ld [hl], h
    ld [hl], e
    jr nz, @+$63

    ld [hl], d
    ld h, l

jr_01c_45ef:
    jr nz, @+$74

    ld h, l
    ld h, c
    ld l, h

jr_01c_45f4:
    ld l, h
    ld a, c

jr_01c_45f6:
    ld bc, $6f74
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_01c_4671

    ld l, b
    ld l, a

jr_01c_4600:
    ld [hl], h
    ld [hl], e
    ld l, $20
    ld d, e
    ld l, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld [bc], a
    ld [hl], h
    ld l, b
    ld h, l
    ld a, c

jr_01c_460e:
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01c_4686

jr_01c_4613:
    ld l, a
    jr nz, @+$6a

    ld h, c
    ld [hl], d
    ld h, h
    inc l
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01c_4683

    ld h, c
    ld l, [hl]

jr_01c_4622:
    daa
    ld [hl], h
    jr nz, jr_01c_4693

    ld h, c
    ld l, e

jr_01c_4628:
    ld h, l
    ld bc, $6874
    ld h, l
    ld l, l

jr_01c_462e:
    jr nz, @+$67

    db $76
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_01c_46aa

    ld l, c
    ld l, l
    ld h, l
    ld l, $03
    nop
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01c_46aa

    ld l, c
    db $76
    ld h, l
    jr nz, jr_01c_46bd

    ld [hl], b
    jr nz, jr_01c_46b4

    ld h, [hl]
    ld bc, $6874
    ld h, l
    ld [hl], d
    ld h, l
    daa

jr_01c_4653:
    ld [hl], e
    jr nz, jr_01c_46b7

    ld l, [hl]
    ld a, c
    jr nz, jr_01c_46bd

    ld l, b
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld bc, $7461
    jr nz, jr_01c_46c5

    ld l, h
    ld l, h
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01c_46e3

    ld l, a
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d

jr_01c_4671:
    jr nz, jr_01c_46ea

    ld l, b
    ld h, l
    ld l, [hl]
    ld bc, $2007
    ld h, a
    ld l, a
    ld [hl], h
    ld bc, $7573
    ld h, e
    ld l, b
    jr nz, @+$63

jr_01c_4683:
    jr nz, jr_01c_46ec

    ld l, a

jr_01c_4686:
    ld l, a
    ld h, h
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], h
    ccf
    inc bc
    nop
    ld c, d
    ld [hl], l
    ld [hl], e

jr_01c_4693:
    ld [hl], h
    jr nz, jr_01c_46fa

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01c_4709

    ld l, c
    ld [hl], e
    dec l
    ld bc, $6968
    ld [hl], h
    inc l
    jr nz, jr_01c_4707

    ld l, [hl]
    ld h, h
    jr nz, jr_01c_4723

jr_01c_46aa:
    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    ld bc, $7661
    ld l, a
    ld l, c

jr_01c_46b4:
    ld h, h
    jr nz, jr_01c_472b

jr_01c_46b7:
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l

jr_01c_46bd:
    ld l, $02
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_01c_473b

    ld l, b

jr_01c_46c5:
    ld h, c
    ld [hl], h
    ld h, l
    db $76
    ld h, l
    ld [hl], d
    ld bc, $7274
    ld l, a
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_01c_474e

    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01c_4745

    ld l, [hl]
    inc l
    ld bc, $756a
    ld [hl], e
    ld [hl], h

jr_01c_46e3:
    jr nz, @+$64

    ld h, l
    jr nz, jr_01c_474b

    ld l, a
    ld l, [hl]

jr_01c_46ea:
    ld h, [hl]
    ld l, c

jr_01c_46ec:
    ld h, h
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $03
    nop
    ld b, c
    ld l, c
    ld l, l
    jr nz, jr_01c_475e

    ld l, a
    ld [hl], d

jr_01c_46fa:
    jr nz, jr_01c_475d

    jr nz, @+$75

    ld [hl], b
    ld l, a
    ld [hl], h
    jr nz, jr_01c_4772

    ld l, [hl]
    ld bc, $7267

jr_01c_4707:
    ld h, l
    ld h, l

jr_01c_4709:
    ld l, [hl]
    jr nz, jr_01c_4780

    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    ld bc, $6165
    ld [hl], e
    ld a, c
    jr nz, jr_01c_478c

    ld l, a
    jr nz, jr_01c_478b

    ld [hl], l
    ld [hl], h
    ld [hl], h
    jr nz, jr_01c_4786

    ld [hl], d
    ld l, a
    ld l, l

jr_01c_4723:
    ld l, $02
    ld c, c
    ld h, [hl]
    jr nz, jr_01c_4792

    ld [hl], h
    daa

jr_01c_472b:
    ld [hl], e
    jr nz, jr_01c_478f

    jr nz, @+$75

    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld bc, $696c
    ld l, [hl]

jr_01c_473b:
    ld h, l
    inc l
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_01c_47ad

    ld [hl], l
    ld [hl], e

jr_01c_4745:
    ld [hl], h
    ld bc, $696d
    ld h, a
    ld l, b

jr_01c_474b:
    ld [hl], h
    jr nz, jr_01c_47c1

jr_01c_474e:
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_01c_47bc

    ld [hl], h
    ld l, $03
    nop
    ld d, a
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01c_47d1

jr_01c_475d:
    ld l, a

jr_01c_475e:
    jr nz, jr_01c_47d3

    ld h, l
    ld h, l
    jr nz, @+$79

    ld l, b
    ld l, a
    daa
    ld [hl], e
    ld bc, $6562
    ld [hl], e
    ld [hl], h
    jr nz, jr_01c_47d0

    ld [hl], h
    jr nz, jr_01c_47e5

jr_01c_4772:
    ld l, b
    ld l, a
    ld l, a
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $7266
    ld l, a
    ld l, l
    jr nz, jr_01c_47f4

jr_01c_4780:
    ld l, b
    ld h, l
    jr nz, jr_01c_47f8

    ld [hl], d
    ld h, l

jr_01c_4786:
    ld h, l
    ld [hl], e
    ccf
    nop
    ld c, c

jr_01c_478b:
    daa

jr_01c_478c:
    ld l, l
    jr nz, jr_01c_47f2

jr_01c_478f:
    ld l, a
    ld l, [hl]
    ld h, [hl]

jr_01c_4792:
    ld l, c
    ld h, h
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01c_47e2

    ld bc, $6163
    ld l, [hl]
    jr nz, @+$6f

    ld h, c
    ld l, e
    ld h, l
    jr nz, @+$76

    ld l, b
    ld l, c
    ld [hl], e
    ld bc, $7274
    ld l, a
    ld [hl], l
    ld h, d

jr_01c_47ad:
    ld l, h
    ld h, l
    jr nz, jr_01c_4824

    ld l, b
    ld l, a
    ld [hl], h
    ld l, $02
    ld c, c
    jr nz, jr_01c_4830

    ld h, c
    ld l, [hl]
    ld [hl], h

jr_01c_47bc:
    ld h, l
    ld h, h
    jr nz, jr_01c_4834

    ld l, a

jr_01c_47c1:
    jr nz, jr_01c_4826

    ld l, a
    ld l, l
    dec l
    ld bc, $6570
    ld [hl], h
    ld h, l
    jr nz, @+$63

    ld h, a
    ld h, c
    ld l, c

jr_01c_47d0:
    ld l, [hl]

jr_01c_47d1:
    ld [hl], e
    ld [hl], h

jr_01c_47d3:
    jr nz, jr_01c_4848

    ld l, a
    ld l, l
    ld h, l
    dec l
    ld bc, $6e6f
    ld h, l
    jr nz, jr_01c_484e

    ld h, [hl]
    jr nz, @+$7b

jr_01c_47e2:
    ld l, a
    ld [hl], l
    ld [hl], d

jr_01c_47e5:
    jr nz, jr_01c_4853

    ld h, l
    db $76
    ld h, l
    ld l, h
    ld l, $03
    nop
    ld d, a
    ld l, b
    ld l, a
    ld h, l

jr_01c_47f2:
    db $76
    ld h, l

jr_01c_47f4:
    ld [hl], d
    jr nz, @+$69

    ld h, l

jr_01c_47f8:
    ld [hl], h
    ld [hl], e
    jr nz, jr_01c_486b

    ld [hl], l
    ld [hl], h
    ld bc, $666f
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, @+$79

    ld l, a
    ld l, a
    ld h, h
    ld [hl], e
    jr nz, jr_01c_486e

    ld l, [hl]
    ld h, h
    ld bc, $6c63
    ld l, a
    ld [hl], e
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, @+$76

    ld l, a
    jr nz, jr_01c_4890

    ld l, b
    ld h, l
    jr nz, jr_01c_4890

    ld l, c
    ld l, [hl]
    ld [bc], a
    ld [hl], a

jr_01c_4824:
    ld l, c
    ld l, [hl]

jr_01c_4826:
    ld [hl], e
    ld l, $20
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, @+$69

    ld l, a

jr_01c_4830:
    ld bc, $6966
    ld [hl], d

jr_01c_4834:
    ld [hl], e
    ld [hl], h
    ld l, $03
    nop
    ld b, c
    jr nz, @+$55

    ld d, a
    jr nz, jr_01c_48a8

    ld [hl], e
    jr nz, jr_01c_48a9

    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_01c_48ad

    ld l, a

jr_01c_4848:
    ld [hl], d
    ld bc, $756a
    ld [hl], e
    ld [hl], h

jr_01c_484e:
    jr nz, jr_01c_48b7

    ld h, l
    ld [hl], h
    ld [hl], h

jr_01c_4853:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$71

    ld [hl], l
    ld [hl], h
    ld bc, $666f
    jr nz, jr_01c_48d3

    ld l, b
    ld h, l
    jr nz, jr_01c_48da

    ld l, a
    ld l, a
    ld h, h
    ld [hl], e
    ld l, $02
    ld b, d
    ld [hl], l

jr_01c_486b:
    ld [hl], h
    jr nz, jr_01c_48e2

jr_01c_486e:
    ld l, a
    jr nz, jr_01c_48d8

    ld h, l
    ld [hl], h
    jr nz, jr_01c_48e4

    ld l, [hl]
    ld bc, $7267
    ld h, l
    ld h, l
    ld l, [hl]
    inc l
    jr nz, jr_01c_48c8

    daa
    ld l, h
    ld l, h
    jr nz, jr_01c_48eb

    ld h, c
    ld l, l
    ld h, d
    ld l, h
    ld h, l
    ld bc, $6e6f
    jr nz, jr_01c_48ef

    jr nz, @+$6e

jr_01c_4890:
    ld l, a
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], d
    jr nz, jr_01c_48fa

    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop
    ld c, [hl]
    ld l, a
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    jr nz, jr_01c_4915

    ld l, a
    ld [hl], a
    ld h, l

jr_01c_48a8:
    ld [hl], d

jr_01c_48a9:
    ld bc, $6873
    ld l, a

jr_01c_48ad:
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$79

    ld l, a
    ld [hl], d
    ld l, e
    ld l, $03

jr_01c_48b7:
    nop
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_01c_4933

    ld [hl], e
    ld h, l
    jr nz, @+$75

    ld l, c
    ld h, h
    ld h, l
    dec l
    jr nz, @+$63

jr_01c_48c8:
    ld l, [hl]
    ld h, h
    ld bc, $6162
    ld h, e
    ld l, e
    ld [hl], e
    ld [hl], b
    ld l, c
    ld l, [hl]

jr_01c_48d3:
    jr nz, jr_01c_4949

    ld l, a
    jr nz, jr_01c_493b

jr_01c_48d8:
    ld [hl], l
    ld [hl], d

jr_01c_48da:
    db $76
    ld h, l
    ld bc, $7469
    jr nz, jr_01c_4951

    ld h, c

jr_01c_48e2:
    ld [hl], e
    ld [hl], h

jr_01c_48e4:
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01c_495e

    ld [hl], d

jr_01c_48eb:
    ld h, l
    ld h, l
    ld [hl], e
    ld [bc], a

jr_01c_48ef:
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01c_4963

    ld l, [hl]
    ld [hl], h
    ld l, a
    jr nz, @+$76

    ld l, b

jr_01c_48fa:
    ld h, l
    ld bc, $7267
    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $20
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01c_497d

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld l, $01
    ld c, [hl]
    ld l, a
    jr nz, @+$6f

    ld l, c
    ld [hl], e

jr_01c_4915:
    dec l
    ld l, b
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $0003
    ld c, b
    ld l, l
    ld l, l
    inc l
    jr nz, jr_01c_4994

    ld l, a
    ld [hl], h
    jr nz, jr_01c_4997

    ld h, c
    ld a, b
    dec l
    ld [hl], b
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    inc l

jr_01c_4933:
    ld bc, $7562
    ld [hl], h
    jr nz, jr_01c_49a2

    ld [hl], h
    daa

jr_01c_493b:
    ld l, h
    ld l, h
    jr nz, jr_01c_49b6

    ld l, a
    ld [hl], d
    ld l, e
    ld l, $01
    ld c, a
    ld c, e
    ld l, $20
    ld e, c

jr_01c_4949:
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], h

jr_01c_4951:
    ld hl, $0003
    ld c, b
    ld l, l
    ld l, l
    ld l, l
    inc l
    jr nz, jr_01c_49d4

    ld l, a
    ld [hl], l
    daa

jr_01c_495e:
    ld [hl], d
    ld h, l
    jr nz, @+$65

    ld l, h

jr_01c_4963:
    ld l, a
    ld [hl], e
    ld h, l
    ld [hl], d
    ld bc, $6874
    ld h, c
    ld l, [hl]
    jr nz, jr_01c_49db

    ld h, l
    ld l, $20
    ld b, h
    ld h, c
    ld l, [hl]
    ld h, a
    ld hl, $5901
    ld l, a
    ld [hl], l
    jr nz, jr_01c_49f3

    ld l, c

jr_01c_497d:
    ld l, [hl]
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01c_49ef

    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld bc, $7761
    ld h, c
    ld a, c

jr_01c_4994:
    ld hl, $5920

jr_01c_4997:
    ld l, a
    ld [hl], l
    jr nz, jr_01c_4a07

    ld l, a
    ld [hl], e
    ld h, l
    ld hl, $0003
    ld c, l

jr_01c_49a2:
    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01c_4a1d

    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    ld bc, $6873
    ld l, a
    ld [hl], h
    ld [hl], e
    inc l

jr_01c_49b6:
    jr nz, jr_01c_4a27

    ld [hl], d
    jr nz, jr_01c_4a34

    ld l, a
    ld [hl], l
    daa
    db $76
    ld h, l
    jr nz, jr_01c_4a30

    ld l, a
    ld bc, $6863
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01c_4a3b

    ld h, [hl]
    jr nz, jr_01c_4a46

    ld l, c
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]

jr_01c_49d4:
    ld h, a
    ld l, $03
    nop
    ld c, l
    ld h, c
    ld [hl], e

jr_01c_49db:
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01c_4a54

    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    ld bc, $6873
    ld l, a
    ld [hl], h
    ld [hl], e
    inc l
    jr nz, jr_01c_4a5e

jr_01c_49ef:
    ld [hl], d
    jr nz, jr_01c_4a6b

    ld l, a

jr_01c_49f3:
    ld [hl], l
    daa
    db $76
    ld h, l
    jr nz, jr_01c_4a67

    ld l, a
    ld bc, $6863
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01c_4a72

    ld h, [hl]
    jr nz, @+$79

    ld l, c

jr_01c_4a07:
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $03
    nop
    rlca
    ld hl, $5720
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, c
    ld bc, $6573
    ld h, l
    jr nz, jr_01c_4a94

jr_01c_4a1d:
    ld l, b
    ld l, a
    jr nz, jr_01c_4a84

    ld h, c
    ld l, [hl]
    jr nz, @+$6a

    ld l, c
    ld [hl], h

jr_01c_4a27:
    jr nz, jr_01c_4a8a

    ld l, [hl]
    ld bc, $6522
    ld a, c
    ld h, l
    ld h, d

jr_01c_4a30:
    ld h, c
    ld l, h
    ld l, h
    ld [hl+], a

jr_01c_4a34:
    jr nz, jr_01c_4aaa

    ld l, b
    ld h, l
    jr nz, jr_01c_4a9c

    ld h, l

jr_01c_4a3b:
    ld [hl], e
    ld [hl], h
    ccf
    nop
    ld b, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_01c_4ab9

    ld [hl], d

jr_01c_4a46:
    ld a, c
    jr nz, jr_01c_4ab6

    ld h, l
    jr nz, jr_01c_4ab5

    ld h, [hl]
    jr nz, jr_01c_4ac8

    ld l, a
    ld [hl], l
    ld bc, $6977

jr_01c_4a54:
    ld l, [hl]
    jr nz, jr_01c_4acb

    ld l, b
    ld h, l
    jr nz, jr_01c_4aa7

    ld l, c
    ld l, [hl]
    ld l, e

jr_01c_4a5e:
    ld [hl], e
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, @+$56

    ld l, a

jr_01c_4a67:
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c

jr_01c_4a6b:
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $00
    ld c, a

jr_01c_4a72:
    ld c, e
    ld l, $20
    ld b, c
    ld l, c
    ld l, l
    jr nz, jr_01c_4ae0

    ld l, a
    ld [hl], d
    jr nz, jr_01c_4af2

    ld l, b
    ld h, c
    ld [hl], h
    ld bc, $7267

jr_01c_4a84:
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_01c_4aef

    ld [hl], d

jr_01c_4a8a:
    ld l, a
    ld l, l
    jr nz, jr_01c_4b02

    ld l, b
    ld l, c
    ld [hl], e
    ld bc, $7562

jr_01c_4a94:
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    ld l, $03
    nop
    ld e, c

jr_01c_4a9c:
    ld l, a
    ld [hl], l
    jr nz, jr_01c_4b03

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01c_4b1b

    ld [hl], e

jr_01c_4aa7:
    ld h, l
    jr nz, @+$6c

jr_01c_4aaa:
    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld bc, $6e61
    ld a, c
    jr nz, @+$75

    ld l, b
    ld l, a

jr_01c_4ab5:
    ld [hl], h

jr_01c_4ab6:
    jr nz, jr_01c_4b2c

    ld l, a

jr_01c_4ab9:
    jr nz, jr_01c_4b22

    ld h, l
    ld [hl], h
    jr nz, jr_01c_4b2e

    ld l, [hl]
    ld bc, $7267
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_01c_4b2e

jr_01c_4ac8:
    ld [hl], d
    ld l, a
    ld l, l

jr_01c_4acb:
    jr nz, jr_01c_4b35

    ld h, l
    ld [hl], d
    ld h, l
    ld l, $02
    ld c, b
    ld l, a
    ld [hl], a
    ld h, l
    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_01c_4b54

    ld l, a
    ld [hl], l
    jr nz, jr_01c_4b43

    ld l, a

jr_01c_4ae0:
    jr nz, jr_01c_4b4b

    ld [hl], h
    inc l
    ld bc, $6c63
    ld l, a
    ld [hl], e
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01c_4b62

    ld l, a

jr_01c_4aef:
    jr nz, jr_01c_4b65

    ld l, b

jr_01c_4af2:
    ld h, l
    jr nz, jr_01c_4b65

    ld l, c
    ld l, [hl]
    ld bc, $6977
    ld l, [hl]
    ld [hl], e
    ld l, $20
    ld c, l
    ld h, l
    jr nz, jr_01c_4b68

jr_01c_4b02:
    ld l, c

jr_01c_4b03:
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld hl, $0003
    ld c, b
    ld l, l
    ld l, l
    ld l, $2e
    ld l, $20
    ld c, [hl]
    ld l, a
    ld [hl], h
    jr nz, jr_01c_4b89

    ld l, a
    ld l, a
    jr nz, jr_01c_4b7b

    ld h, c
    ld h, h

jr_01c_4b1b:
    ld l, $01
    ld c, a
    ld c, e
    ld l, $20
    ld e, c

jr_01c_4b22:
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01c_4b9b

    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld l, $03

jr_01c_4b2c:
    nop
    ld e, c

jr_01c_4b2e:
    ld h, l
    ld [hl], e
    ld hl, $5420
    ld l, b
    ld h, c

jr_01c_4b35:
    ld [hl], h
    jr nz, jr_01c_4baf

    ld h, c
    ld [hl], e
    jr nz, jr_01c_4ba3

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld hl, $4101

jr_01c_4b43:
    ld l, h
    ld l, h
    jr nz, jr_01c_4bb9

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h

jr_01c_4b4b:
    ld l, $20
    ld c, [hl]
    ld l, a
    ld [hl], a
    ld bc, $7469
    daa

jr_01c_4b54:
    ld [hl], e
    jr nz, jr_01c_4bd0

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01c_4bd0

    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld hl, $0003

jr_01c_4b62:
    ld d, h
    ld h, e
    ld l, b

jr_01c_4b65:
    ld hl, $5920

jr_01c_4b68:
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, @+$65

    ld l, h
    ld l, a
    ld [hl], e
    ld h, l
    ld [hl], d
    ld bc, $6874
    ld h, c
    ld l, [hl]
    jr nz, jr_01c_4be8

jr_01c_4b7b:
    ld h, l
    ld l, $20
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l
    ld bc, $2049
    ld h, a
    ld [hl], l
    ld h, l

jr_01c_4b89:
    ld [hl], e
    ld [hl], e
    jr nz, jr_01c_4c06

    ld l, a
    ld [hl], l
    jr nz, jr_01c_4c08

    ld l, c
    ld l, [hl]
    ld l, $03
    nop
    ld e, c
    ld b, c
    ld e, c
    dec l
    ld c, b

jr_01c_4b9b:
    ld b, l
    ld e, c
    ld hl, $5920
    ld l, a
    ld [hl], l
    daa

jr_01c_4ba3:
    ld [hl], d
    ld h, l
    ld bc, $6166
    ld [hl], d
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_01c_4c10

jr_01c_4baf:
    ld [hl], a
    ld h, c
    ld a, c
    inc l
    jr nz, jr_01c_4c28

    ld l, a
    jr nz, @+$7b

    ld l, a

jr_01c_4bb9:
    ld [hl], l
    ld bc, $6f6c
    ld [hl], e
    ld h, l
    jr nz, jr_01c_4c35

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01c_4c33

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    ld l, $03
    nop
    ld c, c
    daa
    ld l, h

jr_01c_4bd0:
    ld l, h
    jr nz, @+$72

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_01c_4c4f

    ld l, a
    ld l, l
    ld h, l
    ld bc, $6f6d
    ld [hl], d
    ld h, l
    jr nz, jr_01c_4c47

    ld l, [hl]
    ld h, h

jr_01c_4be8:
    jr nz, jr_01c_4c5e

    ld [hl], d
    ld a, c
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01c_4c53

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, $03
    nop
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, @+$72

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l

jr_01c_4c06:
    jr nz, jr_01c_4c7b

jr_01c_4c08:
    ld l, a
    ld l, l
    ld h, l
    ld bc, $6f6d
    ld [hl], d
    ld h, l

jr_01c_4c10:
    jr nz, jr_01c_4c73

    ld l, [hl]
    ld h, h
    jr nz, @+$76

    ld [hl], d
    ld a, c
    ld bc, $6f79
    ld [hl], l
    jr nz, @+$63

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, $03
    nop
    ld b, e
    ld l, a
    ld l, [hl]

jr_01c_4c28:
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], h
    ld [hl], e
    jr nz, jr_01c_4c9e

    ld l, [hl]
    jr nz, jr_01c_4ca9

    ld l, c

jr_01c_4c33:
    ld l, [hl]
    ld l, [hl]

jr_01c_4c35:
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6874
    ld h, l
    jr nz, @+$4e

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    ld bc, $6843
    ld h, c
    ld l, l

jr_01c_4c47:
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, b
    ld l, c
    ld [hl], b

jr_01c_4c4f:
    ld l, $02
    ld d, b
    ld [hl], d

jr_01c_4c53:
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_4cbe

    ld h, [hl]

jr_01c_4c5e:
    ld [hl], h
    ld h, l
    ld [hl], d
    ld bc, $616d
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_4cb1

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01c_4cb3

    ld l, b
    ld h, c
    ld l, l

jr_01c_4c73:
    ld [hl], b
    ld l, $2e
    ld l, $01
    ld e, c
    ld l, a
    ld [hl], l

jr_01c_4c7b:
    daa
    ld [hl], d
    ld h, l
    jr nz, @+$66

    ld h, l
    ld h, h
    ld l, c
    ld h, e
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h
    ld hl, $0003
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01c_4cd7

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01c_4cd9

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld bc, $6168
    ld [hl], e

jr_01c_4c9e:
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, @+$72

    ld [hl], d
    ld l, c
    db $76
    ld l, c
    ld l, h

jr_01c_4ca9:
    ld h, l
    ld h, a
    ld h, l
    ld bc, $666f
    jr nz, jr_01c_4d16

jr_01c_4cb1:
    ld l, [hl]
    ld [hl], h

jr_01c_4cb3:
    ld h, l
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_4d0a

    ld h, l
    ld h, c
    ld h, e
    ld l, b

jr_01c_4cbe:
    daa
    ld [hl], e
    ld [bc], a
    ld d, h
    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $20
    ld c, c
    ld bc, $6568
    ld h, c
    ld [hl], d
    jr nz, jr_01c_4d22

    ld h, c
    ld [hl], d

jr_01c_4cd7:
    ld l, c
    ld l, a

jr_01c_4cd9:
    daa
    ld [hl], e
    jr nz, jr_01c_4d4b

    ld l, a
    ld [hl], h
    ld bc, $6874
    ld h, l
    jr nz, jr_01c_4d54

    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, jr_01c_4d4f

    ld a, b
    ld [hl], b
    ld h, l
    ld [hl], d
    ld [hl], h
    ld hl, $0003
    ld d, a
    ld l, c
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_4d4b

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    daa
    ld [hl], e
    ld bc, $6f54
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l

jr_01c_4d0a:
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01c_4d7e

    ld [hl], d
    ld l, a
    db $76
    ld h, l
    ld [hl], e
    ld bc, $6f79

jr_01c_4d16:
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01c_4d90

    ld l, b
    ld h, l
    jr nz, jr_01c_4d82

    ld h, l
    ld [hl], e

jr_01c_4d22:
    ld [hl], h
    ld l, $03
    nop
    ld d, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_01c_4d8f

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld [hl], e
    jr nz, jr_01c_4d9a

    ld h, l
    ld [hl], h
    ld bc, $7473
    ld [hl], l
    ld h, e
    ld l, e
    dec l
    ld [hl], l
    ld [hl], b
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, jr_01c_4db5

    ld [hl], l
    ld l, c
    ld [hl], h
    ld bc, $7270
    ld h, c

jr_01c_4d4b:
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e

jr_01c_4d4f:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_4db5

jr_01c_4d54:
    ld h, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld bc, $6572
    ld h, c
    ld h, e
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_4dd7

    ld l, b
    ld h, l
    jr nz, jr_01c_4ddb

    ld l, a
    ld [hl], b
    ld l, $02
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_01c_4de9

    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01c_4ddf

    ld h, l
    ld [hl], d
    ld h, l
    inc l
    ld bc, $6f73

jr_01c_4d7e:
    jr nz, jr_01c_4dc9

    jr nz, jr_01c_4ded

jr_01c_4d82:
    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    ld bc, $6f6e

jr_01c_4d8f:
    ld [hl], h

jr_01c_4d90:
    jr nz, jr_01c_4dfe

    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_01c_4e0b

    ld l, b
    ld h, l
    ld l, l

jr_01c_4d9a:
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01c_4e04

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_01c_4db5

    rlca
    inc l
    jr nz, jr_01c_4e1e

    ld l, a
    ld bc, $6f79
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01c_4e29

jr_01c_4db5:
    ld l, b
    ld h, l
    jr nz, jr_01c_4e1b

    ld h, l
    ld [hl], e
    ld [hl], h
    ld bc, $6972
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_01c_4e32

    ld l, a
    ld [hl], a
    ld l, $02
    ld c, c

jr_01c_4dc9:
    jr nz, jr_01c_4e2e

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$79

    ld h, c
    ld l, c
    ld [hl], h
    jr nz, jr_01c_4e4a

    ld l, a

jr_01c_4dd7:
    jr nz, @+$75

    ld h, l
    ld h, l

jr_01c_4ddb:
    ld bc, $6f68
    ld [hl], a

jr_01c_4ddf:
    jr nz, jr_01c_4e5a

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01c_4e53

    ld h, c
    ld [hl], h
    ld h, e

jr_01c_4de9:
    ld l, b
    jr nz, jr_01c_4e63

    ld l, c

jr_01c_4ded:
    ld [hl], h
    ld l, b
    ld bc, $614d
    ld [hl], d
    ld l, c
    ld l, a
    jr nz, jr_01c_4e6b

    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01c_4e6c

    ld [hl], l

jr_01c_4dfe:
    ld [hl], h
    ld l, $03
    nop
    ld c, c
    daa

jr_01c_4e04:
    ld l, l
    jr nz, jr_01c_4e77

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h

jr_01c_4e0b:
    ld l, c
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $7264
    ld l, c
    db $76
    ld h, l
    ld [hl], d
    jr nz, @+$76

    ld h, l
    ld h, l

jr_01c_4e1b:
    jr nz, jr_01c_4e90

    ld l, b

jr_01c_4e1e:
    ld l, a
    ld [hl], h
    ld [hl], e
    ld l, $01
    ld d, a
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01c_4e9d

jr_01c_4e29:
    ld l, a
    jr nz, jr_01c_4e9f

    ld h, l
    ld h, l

jr_01c_4e2e:
    ccf
    nop
    ld c, c
    ld [hl], h

jr_01c_4e32:
    jr nz, @+$63

    ld [hl], b
    ld [hl], b
    ld l, h
    ld l, c
    ld h, l
    ld [hl], e
    jr nz, jr_01c_4eb0

    ld l, a
    jr nz, @+$63

    ld l, [hl]
    ld a, c
    ld bc, $6873
    ld l, a
    ld [hl], h
    inc l
    jr nz, @+$64

    ld [hl], l

jr_01c_4e4a:
    ld [hl], h
    jr nz, jr_01c_4eaf

    ld h, l
    jr nz, @+$79

    ld h, c
    ld [hl], d
    ld a, c

jr_01c_4e53:
    ld bc, $666f
    jr nz, jr_01c_4ec0

    ld h, l
    ld l, c

jr_01c_4e5a:
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_01c_4ece

    ld l, [hl]
    jr nz, jr_01c_4ece

    ld l, a

jr_01c_4e63:
    ld l, [hl]
    ld h, a
    ld [bc], a
    ld h, h
    ld [hl], d
    ld l, c
    db $76
    ld h, l

jr_01c_4e6b:
    ld [hl], e

jr_01c_4e6c:
    ld l, $20
    ld c, c
    ld l, [hl]
    jr nz, jr_01c_4ed3

    jr nz, @+$6a

    ld h, l
    ld h, c
    ld h, h

jr_01c_4e77:
    dec l
    ld bc, $6977
    ld l, [hl]
    ld h, h
    inc l
    jr nz, @+$22

    ld a, c
    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, jr_01c_4ef4

    ld l, a
    ld [hl], e
    ld h, l
    ld bc, $6964
    ld [hl], e
    ld [hl], h

jr_01c_4e90:
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01c_4f09

    ld l, a

jr_01c_4e9d:
    ld [hl], d
    ld h, l

jr_01c_4e9f:
    jr nz, jr_01c_4f14

    ld [hl], h
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, l
    ld h, a
    ld l, c
    ld h, e
    ld bc, $6874
    ld h, l
    jr nz, @+$65

jr_01c_4eaf:
    ld l, a

jr_01c_4eb0:
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    inc l
    jr nz, jr_01c_4f2b

    ld l, b
    ld h, l
    ld bc, $6873
    ld h, c
    ld [hl], d
    ld [hl], b
    ld h, l

jr_01c_4ec0:
    ld [hl], d
    jr nz, jr_01c_4f3c

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01c_4f29

    ld l, c
    ld l, l
    ld [bc], a
    ld [hl], e
    ld l, b
    ld l, a

jr_01c_4ece:
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_01c_4f35

jr_01c_4ed3:
    ld h, l
    jr nz, jr_01c_4f45

    ld l, [hl]
    jr nz, jr_01c_4f4d

    ld l, b
    ld h, l
    ld bc, $6574
    ld h, l
    jr nz, jr_01c_4f54

    ld l, b
    ld l, a
    ld [hl], h
    ld l, $20
    ld b, l
    db $76
    ld h, l
    ld l, [hl]
    jr nz, @+$6b

    ld h, [hl]
    ld bc, $6874
    ld h, l
    jr nz, jr_01c_4f59

    ld h, c

jr_01c_4ef4:
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    jr nz, jr_01c_4f6e

    ld h, l
    ld h, l
    ld l, l
    ld [hl], e
    ld [bc], a
    ld l, a
    ld [hl], b
    ld h, l
    ld l, [hl]
    inc l
    jr nz, @+$7b

    ld l, a
    ld [hl], l

jr_01c_4f09:
    jr nz, jr_01c_4f73

    ld h, c
    db $76
    ld h, l
    jr nz, jr_01c_4f84

    ld l, a
    ld bc, $6e6b

jr_01c_4f14:
    ld l, a
    ld [hl], a
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, @+$76

    ld h, c
    ld [hl], d
    ld h, a
    ld h, l
    ld [hl], h
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld l, c
    ld l, [hl]

jr_01c_4f29:
    ld l, e
    ld l, c

jr_01c_4f2b:
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_4f98

    ld l, [hl]
    jr nz, jr_01c_4fa4

    ld h, l
    ld h, c
    ld l, h

jr_01c_4f35:
    ld bc, $6574
    ld [hl], d
    ld l, l
    ld [hl], e
    inc l

jr_01c_4f3c:
    jr nz, jr_01c_4fab

    ld a, c
    jr nz, jr_01c_4f73

    ld l, [hl]
    ld h, h
    jr nz, jr_01c_4fb8

jr_01c_4f45:
    ld l, b
    ld l, a
    ld [hl], h
    ld bc, $6873
    ld l, a
    ld [hl], l

jr_01c_4f4d:
    ld l, h
    ld h, h
    jr nz, jr_01c_4fbd

    ld h, c
    ld l, [hl]
    ld h, h

jr_01c_4f54:
    jr nz, jr_01c_4fbe

    ld h, l
    ld [hl], d
    ld h, l

jr_01c_4f59:
    ld l, $02
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_01c_4fc9

    ld h, [hl]
    jr nz, jr_01c_4fac

    jr nz, @+$79

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01c_4fde

    ld l, a
    ld bc, $7375

jr_01c_4f6e:
    ld h, l
    jr nz, @+$76

    ld l, b
    ld l, c

jr_01c_4f73:
    ld [hl], e
    jr nz, jr_01c_4fea

    ld h, c
    ld l, c
    ld l, h
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, h
    inc l
    ld bc, $2049
    ld [hl], e
    ld l, b
    ld l, a

jr_01c_4f84:
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_01c_4ff1

    ld l, c
    ld [hl], h
    jr nz, jr_01c_4ff5

    ld l, c
    ld h, a
    ld l, b
    ld l, $03
    nop
    ld b, [hl]
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h

jr_01c_4f98:
    inc l
    jr nz, jr_01c_4ffe

    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    ld bc, $2061
    ld h, e

jr_01c_4fa4:
    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop
    ld c, a

jr_01c_4fab:
    ld l, [hl]

jr_01c_4fac:
    jr nz, jr_01c_500f

    jr nz, jr_01c_4fe4

    dec l
    jr nz, jr_01c_5022

    ld [hl], d
    jr nz, jr_01c_4feb

    dec l
    ld [hl], b

jr_01c_4fb8:
    ld h, c
    ld [hl], d
    ld bc, $6f68

jr_01c_4fbd:
    ld l, h

jr_01c_4fbe:
    ld h, l
    inc l
    jr nz, jr_01c_5023

    jr nz, jr_01c_4ff5

    ld d, a
    jr nz, jr_01c_503a

    ld l, b
    ld l, a

jr_01c_4fc9:
    ld [hl], l
    ld l, h
    ld h, h
    ld bc, $6562
    jr nz, jr_01c_5037

    ld l, c
    ld l, [hl]
    ld h, l
    jr nz, jr_01c_503c

    ld l, a
    ld [hl], d
    jr nz, @+$6f

    ld h, l
    ld l, $03
    nop

jr_01c_4fde:
    ld c, c
    jr nz, jr_01c_5048

    ld h, c
    ld l, c
    ld l, [hl]

jr_01c_4fe4:
    jr nz, jr_01c_504a

    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c

jr_01c_4fea:
    ld l, [hl]

jr_01c_4feb:
    ld h, e
    ld h, l
    jr nz, jr_01c_5066

    ld l, c
    ld [hl], h

jr_01c_4ff1:
    ld l, b
    ld bc, $2061

jr_01c_4ff5:
    ld [hl], b
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, @+$75

    ld l, b
    ld l, a

jr_01c_4ffe:
    ld [hl], h
    inc l
    jr nz, jr_01c_5075

    ld l, a
    jr nz, jr_01c_504e

    daa
    ld l, h
    ld l, h
    ld bc, $7375
    ld h, l
    jr nz, @+$76

    ld l, b

jr_01c_500f:
    ld h, c
    ld [hl], h
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01c_5083

    ld [hl], e
    jr nz, jr_01c_508f

    ld h, l
    ld h, c
    ld l, h
    jr nz, @+$72

jr_01c_5022:
    ld [hl], d

jr_01c_5023:
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    ld l, $01
    ld d, a
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01c_50a5

    ld l, a
    jr nz, jr_01c_50a8

    ld [hl], d
    ld a, c
    ccf

jr_01c_5037:
    nop
    ld b, [hl]
    ld l, c

jr_01c_503a:
    ld [hl], d
    ld [hl], e

jr_01c_503c:
    ld [hl], h
    inc l
    jr nz, jr_01c_50a3

    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    ld bc, $2061

jr_01c_5048:
    ld h, e
    ld l, h

jr_01c_504a:
    ld [hl], l
    ld h, d
    ld l, $03

jr_01c_504e:
    nop
    ld c, [hl]
    ld h, l
    ld a, b
    ld [hl], h
    inc l
    jr nz, jr_01c_50b9

    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    ld bc, $2061
    ld [hl], b
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_01c_50d8

    ld l, b

jr_01c_5066:
    ld l, a
    ld [hl], h
    ld l, $03
    nop
    ld c, a
    ld c, e
    inc l
    jr nz, jr_01c_50d7

    ld l, c
    db $76
    ld h, l
    jr nz, @+$6b

jr_01c_5075:
    ld [hl], h
    jr nz, jr_01c_50d9

    jr nz, jr_01c_50ee

    ld [hl], d
    ld a, c
    ld hl, $0003
    ld c, c
    ld h, [hl]
    jr nz, jr_01c_50fc

jr_01c_5083:
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01c_50f8

    ld l, a
    ld [hl], h
    jr nz, jr_01c_5103

    ld [hl], e

jr_01c_508f:
    ld h, l
    ld h, h
    ld bc, $6f74
    jr nz, jr_01c_5106

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_01c_5110

    ld h, l
    ld h, l
    jr nz, jr_01c_5113

    ld l, b
    ld l, a
    ld [hl], h

jr_01c_50a3:
    ld [hl], e
    inc l

jr_01c_50a5:
    ld bc, $7469

jr_01c_50a8:
    jr nz, @+$76

    ld h, c
    ld l, e
    ld h, l
    ld [hl], e
    jr nz, jr_01c_5120

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    ld l, $03

jr_01c_50b9:
    nop
    ld c, c
    jr nz, @+$76

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_01c_5137

    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01c_5119

    ld c, e
    ld bc, $6f6e
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    inc l
    jr nz, @+$64

jr_01c_50d7:
    ld [hl], l

jr_01c_50d8:
    ld [hl], h

jr_01c_50d9:
    jr nz, jr_01c_514f

    ld [hl], d
    ld a, c
    ld bc, $6f66
    ld [hl], d
    jr nz, jr_01c_5150

    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01c_5149

    ld h, e
    ld h, e
    ld [hl], l
    ld [hl], d
    ld h, c
    ld h, e

jr_01c_50ee:
    ld a, c
    ld l, $03
    nop
    ld d, a
    ld c, a
    ld d, a
    ld hl, $4120

jr_01c_50f8:
    jr nz, jr_01c_516a

    ld h, l
    ld [hl], d

jr_01c_50fc:
    ld h, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    ld bc, $6f70

jr_01c_5103:
    ld [hl], a
    ld h, l
    ld [hl], d

jr_01c_5106:
    jr nz, jr_01c_517b

    ld l, b
    ld l, a
    ld [hl], h
    ld hl, $5901
    ld l, a
    ld [hl], l

jr_01c_5110:
    daa
    ld [hl], d
    ld h, l

jr_01c_5113:
    jr nz, @+$76

    ld h, c
    ld l, h
    ld h, l
    ld l, [hl]

jr_01c_5119:
    ld [hl], h
    ld h, l
    ld h, h
    ld hl, $0003
    ld b, [hl]

jr_01c_5120:
    ld l, a
    ld [hl], d
    jr nz, jr_01c_5185

    jr nz, jr_01c_519d

    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_01c_519e

    ld l, b
    ld l, a
    ld [hl], h
    inc l
    ld bc, $7270
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e

jr_01c_5137:
    ld h, l
    jr nz, jr_01c_51b1

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01c_51ad

    ld l, a
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    ld bc, $6f70
    ld [hl], a
    ld h, l

jr_01c_5149:
    ld [hl], d
    jr nz, @+$68

    ld l, c
    ld [hl], d
    ld [hl], e

jr_01c_514f:
    ld [hl], h

jr_01c_5150:
    ld l, $02
    ld c, a
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01c_51d1

    ld l, a
    ld [hl], l
    jr nz, jr_01c_51bf

    ld h, c
    ld l, [hl]
    jr nz, jr_01c_51c4

    ld l, a
    ld bc, $6874
    ld l, a
    ld [hl], e
    ld h, l
    inc l
    jr nz, @+$79

jr_01c_516a:
    ld l, a
    ld [hl], d
    ld l, e
    jr nz, jr_01c_51de

    ld l, [hl]
    jr nz, jr_01c_51eb

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $6f70
    ld [hl], a
    ld h, l
    ld [hl], d

jr_01c_517b:
    jr nz, jr_01c_51f0

    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e
    ld l, $03
    nop
    ld c, b

jr_01c_5185:
    ld h, l
    ld a, c
    inc l
    jr nz, jr_01c_51d8

    ld c, c
    ld b, e
    ld b, l
    jr nz, jr_01c_51e2

    ld c, b
    ld c, a
    ld d, h
    ld hl, $5901
    ld l, a
    ld [hl], l
    daa
    db $76
    ld h, l
    jr nz, jr_01c_5203

    ld l, a

jr_01c_519d:
    ld [hl], h

jr_01c_519e:
    jr nz, jr_01c_5214

    ld h, c
    ld l, h
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld hl, $0003
    ld c, c
    daa
    ld l, l
    jr nz, jr_01c_5211

jr_01c_51ad:
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a

jr_01c_51b1:
    jr nz, jr_01c_521c

    ld [hl], d
    ld l, a
    ld l, [hl]
    jr nz, jr_01c_522b

    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e
    ld l, $01
    ld d, a

jr_01c_51bf:
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01c_5238

jr_01c_51c4:
    ld l, a
    jr nz, jr_01c_523e

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_01c_523a

    ld h, l
    ld bc, $7270

jr_01c_51d1:
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    ccf

jr_01c_51d8:
    nop
    ld b, c
    ld l, [hl]
    jr nz, @+$6b

    ld [hl], d

jr_01c_51de:
    ld l, a
    ld l, [hl]
    jr nz, jr_01c_524b

jr_01c_51e2:
    ld [hl], e
    jr nz, @+$63

    ld l, [hl]
    ld bc, $666f
    ld h, [hl]
    ld h, l

jr_01c_51eb:
    ld l, [hl]
    ld [hl], e
    ld l, c
    db $76
    ld h, l

jr_01c_51f0:
    jr nz, jr_01c_5255

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_01c_525d

    ld l, a
    ld [hl], d
    ld bc, $7461
    ld [hl], h
    ld h, c
    ld h, e
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a

jr_01c_5203:
    jr nz, jr_01c_5279

    ld l, b
    ld h, l
    jr nz, @+$69

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $02
    ld d, e
    ld l, b

jr_01c_5211:
    ld l, a
    ld [hl], d
    ld [hl], h

jr_01c_5214:
    ld h, l
    ld [hl], d
    jr nz, jr_01c_5281

    ld [hl], d
    ld l, a
    ld l, [hl]
    ld [hl], e

jr_01c_521c:
    jr nz, jr_01c_527f

    ld [hl], d
    ld h, l
    ld bc, $6f6d
    ld [hl], d
    ld h, l
    jr nz, @+$63

    ld h, e
    ld h, e
    ld [hl], l
    ld [hl], d

jr_01c_522b:
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, @+$68

    ld l, a
    ld [hl], d
    ld bc, $6e61
    jr nz, jr_01c_529c

    ld h, c

jr_01c_5238:
    ld [hl], e
    ld l, c

jr_01c_523a:
    ld h, l
    ld [hl], d
    jr nz, jr_01c_529f

jr_01c_523e:
    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l

jr_01c_524b:
    jr nz, jr_01c_527e

    ld c, c
    inc l
    jr nz, jr_01c_5283

    ld c, c
    jr nz, jr_01c_52b5

    ld l, [hl]

jr_01c_5255:
    ld h, h
    jr nz, @+$79

    ld h, l
    ld h, h
    ld h, a
    ld h, l
    ld [hl], e

jr_01c_525d:
    ld bc, $7261
    ld h, l
    jr nz, jr_01c_52d8

    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_01c_52ca

    ld h, c
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_01c_52dd

    ld l, [hl]
    ld bc, $6874
    ld h, l
    ld l, c
    ld [hl], d
    jr nz, @+$66

    ld l, c
    ld [hl], e

jr_01c_5279:
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l

jr_01c_527e:
    ld [hl], e

jr_01c_527f:
    ld l, $03

jr_01c_5281:
    nop
    ld c, c

jr_01c_5283:
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01c_5300

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01c_52fa

    ld l, a
    ld h, [hl]
    ld [hl], h
    ld bc, $7261
    ld h, l
    jr nz, jr_01c_52fc

    ld h, c
    ld [hl], e
    ld l, c
    ld l, h
    ld a, c

jr_01c_529c:
    jr nz, @+$63

    ld h, [hl]

jr_01c_529f:
    ld h, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    dec l
    ld bc, $6465
    jr nz, jr_01c_530b

    ld a, c
    jr nz, @+$79

    ld l, c
    ld l, [hl]
    ld h, h
    inc l
    jr nz, jr_01c_5325

    ld l, a
    jr nz, @+$65

jr_01c_52b5:
    ld l, h
    ld [hl], l
    ld h, d
    ld [bc], a
    ld [hl], e
    ld h, l
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    daa
    ld [hl], e
    jr nz, jr_01c_532f

    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], d

jr_01c_52ca:
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld l, $01
    ld d, a
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    ld hl, $4920

jr_01c_52d8:
    daa
    ld l, l
    jr nz, jr_01c_533d

    ld l, c

jr_01c_52dd:
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6f66
    ld [hl], d
    jr nz, jr_01c_535b

    ld l, b
    ld h, l
    jr nz, jr_01c_5352

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $03
    nop
    ld c, [hl]
    ld l, a
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    jr nz, jr_01c_536a

jr_01c_52fa:
    ld l, a
    ld [hl], a

jr_01c_52fc:
    ld h, l
    ld [hl], d
    jr nz, jr_01c_5369

jr_01c_5300:
    ld [hl], e
    ld bc, $6e65
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_01c_5370

    ld l, a

jr_01c_530b:
    ld [hl], d
    jr nz, jr_01c_536f

    ld h, e
    ld h, e
    ld [hl], l
    dec l
    ld bc, $6172
    ld [hl], h
    ld h, l
    jr nz, @+$6b

    ld [hl], d
    ld l, a
    ld l, [hl]
    jr nz, jr_01c_5391

    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e
    ld l, $03
    nop

jr_01c_5325:
    ld c, [hl]
    ld h, l
    ld a, b
    ld [hl], h
    inc l
    jr nz, jr_01c_539f

    ld h, l
    ld l, h
    ld h, l

jr_01c_532f:
    ld h, e
    ld [hl], h
    ld bc, $2061
    ld h, e
    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop
    ld c, c
    ld l, [hl]

jr_01c_533d:
    jr nz, jr_01c_53a0

    jr nz, jr_01c_53b5

    ld h, c
    ld l, c
    ld l, h
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, h
    inc l
    jr nz, @+$4b

    jr nz, jr_01c_53c2

    ld [hl], e
    ld h, l
    ld bc, $6e6f

jr_01c_5352:
    ld h, l
    jr nz, jr_01c_53b8

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_01c_53c6

    ld l, a

jr_01c_535b:
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_01c_53d4

    ld l, b
    ld h, c
    ld l, [hl]
    ld bc, $6f6e
    ld [hl], d
    ld l, l
    ld h, c

jr_01c_5369:
    ld l, h

jr_01c_536a:
    ld l, $03
    nop
    ld b, a
    ld h, l

jr_01c_536f:
    ld [hl], h

jr_01c_5370:
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_53e5

    ld l, [hl]
    jr nz, @+$79

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01c_53f2

    ld l, b
    ld h, l
    ld bc, $4932
    jr nz, jr_01c_53fc

    ld h, c
    ld [hl], e
    jr nz, jr_01c_53f5

    ld [hl], l
    ld h, e
    ld l, e
    ld a, c
    ld l, $01
    ld d, a
    ld h, c

jr_01c_5391:
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01c_5409

    ld l, a
    jr nz, jr_01c_540c

    ld [hl], d
    ld a, c
    ccf
    nop
    ld b, [hl]
    ld l, c
    ld [hl], d

jr_01c_539f:
    ld [hl], e

jr_01c_53a0:
    ld [hl], h
    inc l
    jr nz, jr_01c_5407

    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_01c_540c

    ld bc, $6c63
    ld [hl], l
    ld h, d
    inc l
    jr nz, jr_01c_5415

    ld [hl], l
    ld [hl], h

jr_01c_53b5:
    jr nz, @+$65

    ld l, a

jr_01c_53b8:
    ld l, [hl]
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    ld [hl], d
    ld bc, $6874
    ld h, l

jr_01c_53c2:
    jr nz, jr_01c_543b

    ld l, c
    ld l, [hl]

jr_01c_53c6:
    ld h, h
    ld l, $03
    nop
    ld c, [hl]
    ld h, l
    ld a, b
    ld [hl], h
    inc l
    jr nz, jr_01c_5434

    ld l, b
    ld l, a
    ld l, a

jr_01c_53d4:
    ld [hl], e
    ld h, l
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $6f70
    ld [hl], a
    ld h, l
    ld [hl], d
    ld l, $20
    ld c, c
    ld [hl], e

jr_01c_53e5:
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $6f6e
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    jr nz, jr_01c_5457

    ld l, c

jr_01c_53f2:
    ld l, [hl]
    ld h, l
    ccf

jr_01c_53f5:
    inc bc
    nop
    ld c, a
    ld c, e
    ld l, $20
    ld c, [hl]

jr_01c_53fc:
    ld l, a
    ld [hl], a
    jr nz, jr_01c_5473

    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $03
    nop

jr_01c_5407:
    ld d, b
    ld h, c

jr_01c_5409:
    ld [hl], e
    ld [hl], e
    ld l, c

jr_01c_540c:
    ld l, [hl]
    ld h, a
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01c_547b

    ld [hl], d

jr_01c_5415:
    ld h, l
    ld h, l
    ld l, [hl]
    ld bc, $6e6f
    jr nz, jr_01c_547e

    ld l, [hl]
    jr nz, jr_01c_5489

    ld [hl], d
    ld l, a
    ld l, [hl]
    jr nz, jr_01c_5498

    ld l, b
    ld l, a
    ld [hl], h
    ld bc, $656d
    ld h, c
    ld l, [hl]
    ld [hl], e
    jr nz, @+$76

    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, d

jr_01c_5434:
    ld l, h
    ld h, l
    ld l, $02
    ld d, h
    ld [hl], d
    ld a, c

jr_01c_543b:
    jr nz, jr_01c_54ad

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6f73
    ld l, l
    ld h, l
    jr nz, jr_01c_54ba

    ld l, a
    ld [hl], d
    ld h, l
    ld l, $03
    nop
    ld c, h
    ld l, a
    ld l, [hl]
    ld h, a

jr_01c_5457:
    jr nz, jr_01c_54c2

    ld [hl], d
    ld l, a
    ld l, [hl]
    jr nz, jr_01c_54d1

    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e
    ld bc, $7261
    ld h, l
    jr nz, jr_01c_54dc

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    inc l
    jr nz, jr_01c_54d1

    ld [hl], l
    ld [hl], h
    jr nz, jr_01c_54da

jr_01c_5473:
    ld h, l
    ld [hl], h
    ld bc, $6c63
    ld l, a
    ld [hl], e
    ld h, l

jr_01c_547b:
    ld [hl], d
    jr nz, jr_01c_54f2

jr_01c_547e:
    ld l, a
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, @+$72

    ld l, c
    ld l, [hl]
    ld l, $03

jr_01c_5489:
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01c_54f7

    ld h, c
    db $76
    ld h, l
    jr nz, @+$63

    ld l, [hl]
    jr nz, jr_01c_54f8

    ld l, l

jr_01c_5498:
    ld h, c
    ld a, d
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6573
    ld l, [hl]
    ld [hl], e
    ld h, l
    jr nz, jr_01c_550b

    ld l, a
    ld [hl], d
    jr nz, @+$66

    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c

jr_01c_54ad:
    ld l, [hl]
    ld h, e
    ld h, l
    ld bc, $6e61
    ld h, h
    jr nz, jr_01c_551a

    ld l, c
    ld [hl], d
    ld h, l
    ld h, e

jr_01c_54ba:
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld hl, $0003
    ld d, b

jr_01c_54c2:
    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_01c_5534

    ld [hl], d
    ld l, a
    ld l, [hl]
    jr nz, jr_01c_5543

    ld l, b

jr_01c_54d1:
    ld l, a
    ld [hl], h
    ld [hl], e
    ld bc, $7962
    jr nz, @+$63

    ld l, c

jr_01c_54da:
    ld l, l
    ld l, c

jr_01c_54dc:
    ld l, [hl]
    ld h, a
    jr nz, @+$68

    ld l, a
    ld [hl], d
    jr nz, jr_01c_5558

    ld l, b
    ld h, l
    ld bc, $696d
    ld h, h
    ld h, h
    ld l, h
    ld h, l
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_01c_5566

jr_01c_54f2:
    ld l, b
    ld h, l
    jr nz, jr_01c_555d

    ld [hl], d

jr_01c_54f7:
    ld h, l

jr_01c_54f8:
    ld h, l
    ld l, [hl]
    ld l, $02
    ld d, e
    ld l, b
    ld l, a
    ld l, a
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_556c

    ld l, a
    ld [hl], d
    jr nz, @+$76

    ld l, b

jr_01c_550b:
    ld h, l
    ld bc, $6970
    ld l, [hl]
    daa
    ld [hl], e
    jr nz, jr_01c_5588

    ld l, a
    ld l, a
    jr nz, jr_01c_558a

    ld l, c
    ld [hl], e

jr_01c_551a:
    ld l, e
    ld a, c
    inc l
    jr nz, jr_01c_5592

    ld l, a
    ld bc, $7473
    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, @+$71

    ld h, [hl]
    ld h, [hl]
    jr nz, jr_01c_5591

    ld h, c
    ld [hl], e
    ld a, c
    ld l, $03
    nop
    ld b, l
    ld l, b

jr_01c_5534:
    ccf
    jr nz, jr_01c_5580

    daa
    ld l, l
    jr nz, jr_01c_55b2

    ld l, a
    ld [hl], d
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_55b2

jr_01c_5543:
    ld l, [hl]
    ld bc, $6e69
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld h, c
    ld l, h
    jr nz, jr_01c_55c5

    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e
    ld l, $02

jr_01c_5558:
    ld e, c
    ld h, l
    ld h, c
    ld l, b
    inc l

jr_01c_555d:
    jr nz, @+$72

    ld [hl], l
    ld [hl], d
    ld [hl], b
    ld l, a
    ld [hl], e
    ld h, l
    ld l, h

jr_01c_5566:
    ld a, c
    ld bc, $7563
    ld [hl], d
    db $76

jr_01c_556c:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$6f

    ld a, c
    jr nz, jr_01c_55e7

    ld l, b
    ld l, a
    ld [hl], h
    ld l, $01
    ld d, a
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, @+$76

    ld l, a

jr_01c_5580:
    jr nz, jr_01c_55f6

    ld [hl], d
    ld a, c
    ccf
    nop
    ld c, c
    ld h, [hl]

jr_01c_5588:
    jr nz, @+$7b

jr_01c_558a:
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, @+$74

jr_01c_5591:
    ld l, c

jr_01c_5592:
    ld h, a
    ld l, b
    ld [hl], h
    ld bc, $6562
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01c_55ff

    jr nz, jr_01c_5614

    ld [hl], d
    ld h, l
    ld h, l
    inc l
    jr nz, jr_01c_561f

    ld l, a
    ld [hl], l
    ld bc, $6163
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01c_5611

    ld l, c
    ld l, l

jr_01c_55b2:
    jr nz, jr_01c_561a

    ld l, a
    ld [hl], d
    jr nz, jr_01c_562c

    ld l, b
    ld h, l
    ld [bc], a
    ld h, a
    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    inc l
    jr nz, @+$74

    ld l, c
    ld h, a

jr_01c_55c5:
    ld l, b
    ld [hl], h
    ccf
    jr nz, jr_01c_5621

    ld l, c
    ld [hl], h
    ld l, b
    ld bc, $2061
    ld l, b
    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_01c_5645

    ld [hl], d
    jr nz, jr_01c_564c

    ld l, h
    ld l, c
    ld h, e
    ld h, l
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01c_5646

    ld h, c
    ld l, [hl]
    ld l, $20

jr_01c_55e7:
    ld d, h
    ld [hl], d
    ld a, c
    jr nz, jr_01c_5655

    ld [hl], h
    ld hl, $0003
    ld c, a
    ld l, [hl]
    jr nz, jr_01c_565c

    ld h, c
    ld [hl], d

jr_01c_55f6:
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_01c_565e

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e

jr_01c_55ff:
    ld h, l
    ld [hl], e
    inc l
    ld bc, $6669
    jr nz, jr_01c_5680

    ld l, a
    ld [hl], l
    jr nz, jr_01c_566e

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01c_5679

jr_01c_5611:
    ld l, a
    ld l, a
    ld l, e

jr_01c_5614:
    ld bc, $6e61
    ld h, h
    jr nz, jr_01c_568d

jr_01c_561a:
    ld l, h
    ld l, c
    ld h, e
    ld h, l
    inc l

jr_01c_561f:
    jr nz, @+$7b

jr_01c_5621:
    ld l, a
    ld [hl], l
    jr nz, jr_01c_569c

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    ld [bc], a
    ld l, l
    ld h, c

jr_01c_562c:
    ld l, e
    ld h, l
    jr nz, jr_01c_56a3

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    ld l, $20
    ld c, c
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld h, c
    ld l, h
    ld bc, $6873
    ld l, a

jr_01c_5645:
    ld [hl], h

jr_01c_5646:
    ld [hl], e
    jr nz, jr_01c_56b1

    ld h, l
    ld l, h
    ld [hl], b

jr_01c_564c:
    jr nz, jr_01c_56b7

    ld h, [hl]
    jr nz, jr_01c_56ca

    ld l, a
    ld [hl], l
    daa
    ld [hl], d

jr_01c_5655:
    ld h, l
    ld bc, $7473
    ld [hl], l
    ld h, e
    ld l, e

jr_01c_565c:
    jr nz, @+$64

jr_01c_565e:
    ld h, l
    ld [hl], h
    ld [hl], a
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_01c_56da

    ld [hl], d
    ld h, c
    ld [hl], b
    ld [hl], e
    ld l, $03
    nop
    ld d, h

jr_01c_566e:
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$76

    ld [hl], d
    ld h, l
    ld h, l
    jr nz, jr_01c_56da

    ld l, h

jr_01c_5679:
    ld l, a
    ld h, e
    ld l, e
    ld [hl], e
    ld bc, $6f79

jr_01c_5680:
    ld [hl], l
    jr nz, @+$68

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01c_56ef

    ld h, l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]

jr_01c_568d:
    ld h, a
    ld bc, $2061
    ld h, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_01c_5703

    ld l, c
    ld h, l
    jr nz, jr_01c_5701

    ld [hl], d

jr_01c_569c:
    ld l, a
    ld l, l
    ld [bc], a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l

jr_01c_56a3:
    ld l, $20
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01c_570d

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    ld bc, $6968

jr_01c_56b1:
    ld [hl], h
    jr nz, @+$63

    jr nz, jr_01c_571e

    ld l, c

jr_01c_56b7:
    ld h, a
    ld l, b
    jr nz, jr_01c_571d

    ld h, c
    ld l, h
    ld l, h
    inc l
    ld bc, $7562
    ld [hl], h
    jr nz, @+$76

    ld [hl], d
    ld a, c
    jr nz, jr_01c_573c

    ld l, c

jr_01c_56ca:
    ld h, h
    ld h, l
    ld [hl], e
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$70

    ld h, l
    ld h, l

jr_01c_56da:
    ld h, h
    jr nz, jr_01c_573e

    ld h, e
    ld h, e
    ld [hl], l
    ld [hl], d
    ld h, c
    ld h, e
    ld a, c
    inc l
    ld bc, $6f73
    jr nz, jr_01c_5754

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01c_5764

jr_01c_56ef:
    ld [hl], e
    ld h, l
    ld bc, $6f6e
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    jr nz, jr_01c_576a

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld l, $03
    nop

jr_01c_5701:
    ld c, [hl]
    ld h, l

jr_01c_5703:
    ld a, b
    ld [hl], h
    inc l
    jr nz, jr_01c_577b

    ld h, l
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h

jr_01c_570d:
    jr nz, jr_01c_5770

    jr nz, jr_01c_5774

    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop
    ld d, l
    ld [hl], e
    ld h, l
    jr nz, jr_01c_5790

    ld l, b

jr_01c_571d:
    ld h, l

jr_01c_571e:
    jr nz, jr_01c_5751

    ld d, a
    jr nz, jr_01c_5789

    ld l, a
    ld [hl], d
    ld bc, $6964
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01c_5796

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01c_57a9

    ld l, b
    ld h, l
    ld bc, $6574
    ld h, l
    inc l

jr_01c_573c:
    jr nz, jr_01c_579f

jr_01c_573e:
    ld [hl], e
    jr nz, jr_01c_57b6

    ld [hl], e
    ld [hl], l
    ld h, c
    ld l, h
    ld l, $02
    ld c, a
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01c_57c1

    ld l, b
    ld h, l
    jr nz, jr_01c_57b4

jr_01c_5751:
    ld [hl], l
    ld [hl], d
    ld [hl], e

jr_01c_5754:
    ld l, a
    ld [hl], d
    ld bc, $7473
    ld h, c
    ld [hl], d
    ld [hl], h
    ld [hl], e
    jr nz, jr_01c_57cc

    ld l, a
    db $76
    ld l, c
    ld l, [hl]
    ld h, a

jr_01c_5764:
    inc l
    ld bc, $6d69
    ld l, l
    ld h, l

jr_01c_576a:
    ld h, h
    ld l, c
    ld h, c
    ld [hl], h
    ld h, l
    ld l, h

jr_01c_5770:
    ld a, c
    jr nz, @+$72

    ld [hl], d

jr_01c_5774:
    ld h, l
    ld [hl], e
    ld [hl], e
    ld [bc], a
    ld [hl], h
    ld l, b
    ld h, l

jr_01c_577b:
    jr nz, @+$2d

    jr nz, @+$45

    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    jr nz, @+$52

    ld h, c
    ld h, h

jr_01c_5789:
    ld bc, $6e69
    jr nz, jr_01c_5802

    ld l, b
    ld h, l

jr_01c_5790:
    jr nz, jr_01c_57f6

    ld l, c
    ld [hl], d
    ld h, l
    ld h, e

jr_01c_5796:
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $706f
    ld [hl], b
    ld l, a

jr_01c_579f:
    ld [hl], e
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_01c_5819

    ld l, b
    ld h, l
    jr nz, jr_01c_5818

jr_01c_57a9:
    ld l, [hl]
    ld h, l
    ld [bc], a
    ld l, c
    ld l, [hl]
    jr nz, jr_01c_5827

    ld l, b
    ld l, c
    ld h, e
    ld l, b

jr_01c_57b4:
    jr nz, jr_01c_582f

jr_01c_57b6:
    ld l, a
    ld [hl], l
    jr nz, jr_01c_5831

    ld l, c
    ld [hl], e
    ld l, b
    ld bc, $6874
    ld h, l

jr_01c_57c1:
    jr nz, jr_01c_5825

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01c_583c

    ld l, a
    jr nz, jr_01c_582e

    ld [hl], l

jr_01c_57cc:
    ld [hl], d
    db $76
    ld h, l
    ld l, $03
    nop
    ld c, e
    ld h, l
    ld h, l
    ld [hl], b
    jr nz, jr_01c_5840

    ld l, a
    ld l, h
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$76

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
    jr nz, @+$52

    ld h, c
    ld h, h
    ld bc, $6e75
    ld [hl], h
    ld l, c
    ld l, h

jr_01c_57f6:
    jr nz, jr_01c_5861

    ld l, l
    ld [hl], b
    ld h, c
    ld h, e
    ld [hl], h
    ld l, $03
    nop
    ld c, a
    ld c, e

jr_01c_5802:
    ld l, $20
    ld c, c
    ld [hl], h
    jr nz, @+$79

    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01c_5884

    ld h, l
    ld l, h
    ld l, h
    ld l, $01
    ld d, e
    ld l, a
    inc l
    jr nz, jr_01c_588e

    ld l, c

jr_01c_5818:
    ld l, h

jr_01c_5819:
    ld l, h
    jr nz, jr_01c_5895

    ld l, a
    ld [hl], l
    jr nz, jr_01c_5894

    ld [hl], d
    ld a, c
    ccf
    nop
    ld d, h

jr_01c_5825:
    ld l, b
    ld h, l

jr_01c_5827:
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_01c_588e

    ld l, [hl]

jr_01c_582e:
    ld l, a

jr_01c_582f:
    ld [hl], h
    ld l, b

jr_01c_5831:
    ld h, l
    ld [hl], d
    jr nz, jr_01c_58ac

    ld h, c
    ld a, c
    ld bc, $6f74
    jr nz, @+$66

jr_01c_583c:
    ld l, a
    jr nz, jr_01c_58a8

    ld [hl], h

jr_01c_5840:
    inc l
    jr nz, jr_01c_58b7

    ld l, b
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld l, $01
    ld c, l
    ld l, a
    db $76
    ld h, l
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01c_58be

    ld l, l
    ld [hl], b
    ld h, c
    ld h, e
    ld [hl], h
    ld [bc], a
    ld l, h
    ld h, l
    ld h, [hl]
    ld [hl], h
    jr nz, jr_01c_58d0

jr_01c_5861:
    ld [hl], d
    jr nz, jr_01c_58d6

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, @+$76

    ld l, a
    ld bc, $7274
    ld h, c
    ld h, h
    ld h, l
    jr nz, jr_01c_58d7

    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld bc, $6f66
    ld [hl], d
    jr nz, jr_01c_58e3

    ld [hl], l
    ld [hl], d
    db $76
    ld h, c

jr_01c_5884:
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    ld l, $03
    nop
    ld b, [hl]
    ld l, c
    ld [hl], d

jr_01c_588e:
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, @+$75

    ld h, l

jr_01c_5894:
    ld l, h

jr_01c_5895:
    ld h, l
    ld h, e
    ld [hl], h
    ld bc, $6f4e
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    jr nz, @+$52

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld l, $03
    nop

jr_01c_58a8:
    ld c, [hl]
    ld h, l
    ld a, b
    ld [hl], h

jr_01c_58ac:
    inc l
    jr nz, jr_01c_5912

    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    ld bc, $2061

jr_01c_58b7:
    ld h, e
    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop

jr_01c_58be:
    ld c, a
    ld c, e
    ld l, $20
    ld c, b
    ld l, c
    ld [hl], h
    jr nz, jr_01c_5930

    ld [hl], h
    ld hl, $0003
    ld d, h
    ld l, c
    ld l, l
    ld l, c
    ld l, [hl]

jr_01c_58d0:
    ld h, a
    daa
    ld [hl], e
    jr nz, jr_01c_5940

    ld h, l

jr_01c_58d6:
    ld a, c

jr_01c_58d7:
    jr nz, jr_01c_5950

    ld l, c
    ld [hl], h
    ld l, b
    ld bc, $6e69
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld [hl], h

jr_01c_58e3:
    ld l, c
    ld l, a
    ld l, [hl]
    ld h, c
    ld l, h
    jr nz, jr_01c_595d

    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e
    inc l
    ld bc, $6f73
    jr nz, jr_01c_595f

    ld h, l
    ld h, l
    ld [hl], b
    jr nz, jr_01c_596d

    ld [hl], d
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01c_5974

    ld [hl], l
    ld h, e
    ld l, b
    jr nz, jr_01c_5970

    ld h, l
    db $76
    ld l, c
    ld h, c
    ld [hl], h
    ld l, c

jr_01c_5912:
    ld l, a

Call_01c_5913:
    ld l, [hl]
    ld bc, $7369
    jr nz, jr_01c_597e

    ld l, [hl]
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld l, $20
    ld d, h
    ld [hl], d
    ld a, c
    jr nz, jr_01c_598e

    ld [hl], h
    ld bc, $6e6f
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01c_5992

    ld l, a

jr_01c_5930:
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $03
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01c_59b0

    ld [hl], l
    ld [hl], b
    ld [hl], b

jr_01c_5940:
    ld l, a
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_01c_59ba

    ld l, a
    ld bc, $6562
    jr nz, jr_01c_59c0

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b

jr_01c_5950:
    inc l
    jr nz, @+$64

    ld [hl], l
    ld [hl], h
    jr nz, jr_01c_59d0

    ld l, a
    ld [hl], l
    ld bc, $6964
    ld h, h

jr_01c_595d:
    jr nz, jr_01c_59c8

jr_01c_595f:
    ld [hl], h
    ld hl, $4e20
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_01c_59d2

    ld l, a
    ld h, d
    ld hl, $0003

jr_01c_596d:
    ld e, c
    ld l, a
    ld [hl], l

jr_01c_5970:
    jr nz, jr_01c_59da

    ld l, c
    ld [hl], h

jr_01c_5974:
    jr nz, @+$63

    jr nz, @+$76

    ld [hl], d
    ld h, l
    ld h, l
    jr nz, jr_01c_59df

    ld [hl], l

jr_01c_597e:
    ld [hl], h
    ld bc, $7473
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01c_59ea

    ld [hl], l
    ld [hl], d
    db $76
    ld h, l
    ld h, h
    jr nz, jr_01c_59f7

jr_01c_598e:
    ld [hl], h
    ld bc, $6e69

jr_01c_5992:
    ld hl, $5620
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_01c_5a08

    ld l, c
    ld h, e
    ld h, l
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01c_5a09

    ld l, c
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01c_5a20

    ld l, a
    ld [hl], l
    ld h, e
    ld l, b

jr_01c_59b0:
    ld bc, $6874
    ld h, l
    jr nz, jr_01c_59e1

    jr nz, jr_01c_59fb

    ld l, a
    ld l, [hl]

jr_01c_59ba:
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    jr nz, jr_01c_5a10

jr_01c_59c0:
    ld h, c
    ld h, h
    ld l, $2e
    ld l, $01
    ld d, h
    ld l, b

jr_01c_59c8:
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01c_5a45

    ld l, b
    ld a, c

jr_01c_59d0:
    ld l, $02

jr_01c_59d2:
    ld c, e
    ld h, l
    ld h, l
    ld [hl], b
    jr nz, jr_01c_5a4c

    ld [hl], d
    ld a, c

jr_01c_59da:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_5a54

jr_01c_59df:
    ld l, [hl]
    ld [hl], h

jr_01c_59e1:
    ld l, c
    ld l, h
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01c_5a50

    ld h, l

jr_01c_59ea:
    ld [hl], h
    jr nz, jr_01c_5a62

    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_01c_5a66

    ld l, a
    ld bc, $7375
    ld l, c

jr_01c_59f7:
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_5a6e

jr_01c_59fb:
    ld l, c
    ld h, h
    ld h, l
    ld [hl], e
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld l, $03
    nop
    ld c, e
    ld h, l
    ld h, l

jr_01c_5a08:
    ld [hl], b

jr_01c_5a09:
    jr nz, jr_01c_5a7f

    ld [hl], d
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a

jr_01c_5a10:
    jr nz, jr_01c_5a87

    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, h
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01c_5a7f

    ld h, c
    ld l, [hl]
    jr nz, jr_01c_5a85

jr_01c_5a20:
    ld h, c
    ld [hl], e
    ld l, c
    ld l, h
    ld a, c
    ld bc, $6873
    ld l, a
    ld l, a
    ld [hl], h
    jr nz, @+$63

    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_01c_5aa8

    ld [hl], d
    ld h, l
    ld h, l
    ld [hl], e
    ld l, $03
    nop
    ld c, c
    daa
    ld l, l
    jr nz, @+$72

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c

jr_01c_5a45:
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6977

jr_01c_5a4c:
    ld l, [hl]
    ld h, h
    jr nz, jr_01c_5ac3

jr_01c_5a50:
    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e

jr_01c_5a54:
    ld l, $20
    ld d, a
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld bc, $6f74
    jr nz, jr_01c_5ad2

    ld [hl], h
    ld [hl], l
    ld h, h

jr_01c_5a62:
    ld a, c
    jr nz, jr_01c_5adc

    ld l, c

jr_01c_5a66:
    ld [hl], h
    ld l, b
    jr nz, jr_01c_5ad7

    ld h, l
    ccf
    nop
    ld d, l

jr_01c_5a6e:
    ld [hl], e
    ld h, l
    jr nz, jr_01c_5ade

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_01c_5adb

    ld l, h
    ld [hl], l
    ld h, d
    ld [hl], e
    jr nz, jr_01c_5ae7

    ld l, [hl]

jr_01c_5a7f:
    ld bc, $6174
    ld l, c
    ld l, h
    ld [hl], a

jr_01c_5a85:
    ld l, c
    ld l, [hl]

jr_01c_5a87:
    ld h, h
    ld [hl], e
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, jr_01c_5af7

    ld l, c
    ld h, a
    ld l, b
    ld h, l
    ld [hl], d
    ld bc, $6e6f
    ld h, l
    ld [hl], e
    jr nz, jr_01c_5b04

    ld l, [hl]
    jr nz, jr_01c_5b06

    ld h, l
    ld h, c
    ld h, h
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $03

jr_01c_5aa8:
    nop
    ld c, c
    ld h, [hl]
    jr nz, jr_01c_5b26

    ld l, a
    ld [hl], l
    jr nz, @+$67

    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_01c_5b1e

    ld l, c
    ld [hl], h
    jr nz, jr_01c_5b23

    ld [hl], h
    ld bc, $6972
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, @+$64

jr_01c_5ac3:
    ld [hl], l
    ld [hl], h
    jr nz, jr_01c_5b2b

    ld l, c
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $6567
    ld [hl], h
    jr nz, jr_01c_5b46

jr_01c_5ad2:
    ld l, a
    jr nz, jr_01c_5b49

    ld l, b
    ld h, l

jr_01c_5ad7:
    jr nz, jr_01c_5b49

    ld l, c
    ld l, [hl]

jr_01c_5adb:
    inc l

jr_01c_5adc:
    ld [bc], a
    ld l, c

jr_01c_5ade:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01c_5b53

    ld [hl], d
    ld l, a
    ld h, d
    ld h, c

jr_01c_5ae7:
    ld h, d
    ld l, h
    ld a, c
    ld bc, $6327
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_01c_5b6c

    ld l, a
    ld [hl], l
    jr nz, jr_01c_5b5b

jr_01c_5af7:
    ld l, c
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $6167
    ld [hl], l
    ld h, a
    ld h, l
    jr nz, jr_01c_5b78

jr_01c_5b04:
    ld l, b
    ld h, l

jr_01c_5b06:
    jr nz, @+$79

    ld l, c
    ld l, [hl]
    ld h, h
    ld l, $03
    nop
    ld c, c
    ld h, [hl]
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01c_5b7a

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, @+$71

    ld l, [hl]
    ld l, h

jr_01c_5b1e:
    ld a, c
    ld bc, $6567
    ld [hl], h

jr_01c_5b23:
    ld [hl], e
    jr nz, jr_01c_5b9f

jr_01c_5b26:
    ld l, a
    ld [hl], l
    jr nz, @+$76

    ld l, a

jr_01c_5b2b:
    jr nz, jr_01c_5ba1

    ld l, b
    ld h, l
    ld bc, $696d
    ld h, h
    ld h, h
    ld l, h
    ld h, l
    jr nz, jr_01c_5ba7

    ld h, [hl]
    jr nz, jr_01c_5baf

    ld l, b
    ld h, l
    ld [bc], a
    ld h, a
    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    inc l
    jr nz, @+$7b

jr_01c_5b46:
    ld l, a
    ld [hl], l
    daa

jr_01c_5b49:
    ld l, h
    ld l, h
    jr nz, jr_01c_5bb0

    ld l, a
    ld l, l
    ld h, l
    ld bc, $7075

jr_01c_5b53:
    jr nz, jr_01c_5bc8

    ld l, b
    ld l, a
    ld [hl], d
    ld [hl], h
    ld l, $20

jr_01c_5b5b:
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_01c_5bc1

    ld bc, $6968
    ld h, a
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, @+$65

    ld l, h
    ld [hl], l
    ld h, d

jr_01c_5b6c:
    jr nz, jr_01c_5bde

    ld [hl], l
    ld [hl], h
    ld [hl], e
    ld [bc], a
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_01c_5be6

    db $76

jr_01c_5b78:
    ld h, l
    ld [hl], d

jr_01c_5b7a:
    inc l
    jr nz, jr_01c_5bf0

    ld l, a
    jr nz, jr_01c_5bf9

    ld l, a
    ld [hl], l
    ld bc, $6168
    db $76
    ld h, l
    jr nz, @+$76

    ld l, a
    jr nz, @+$65

    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    ld [hl], d
    ld bc, $7473
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld h, a
    ld [hl], h
    ld l, b
    inc l
    jr nz, jr_01c_5c13

jr_01c_5b9f:
    ld l, a
    ld l, a

jr_01c_5ba1:
    ld l, $03
    nop
    ld b, [hl]
    ld l, a
    ld [hl], d

jr_01c_5ba7:
    jr nz, jr_01c_5c0a

    ld l, [hl]
    jr nz, jr_01c_5c0d

    ld h, e
    ld h, e
    ld [hl], l

jr_01c_5baf:
    ld [hl], d

jr_01c_5bb0:
    ld h, c
    ld [hl], h
    ld h, l
    ld bc, $7269
    ld l, a
    ld l, [hl]
    jr nz, jr_01c_5c2d

    ld l, b
    ld l, a
    ld [hl], h
    inc l
    jr nz, jr_01c_5c2e

    ld l, a

jr_01c_5bc1:
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    ld bc, $6f70

jr_01c_5bc8:
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_01c_5c36

    ld [hl], e
    jr nz, jr_01c_5c36

    ld l, c
    ld l, [hl]
    ld h, l
    ld l, $03
    nop
    ld c, [hl]
    ld h, l
    ld a, b
    ld [hl], h
    inc l
    jr nz, jr_01c_5c40

    ld l, b

jr_01c_5bde:
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    ld bc, $2061
    ld h, e

jr_01c_5be6:
    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop
    ld c, c
    ld [hl], h
    jr nz, jr_01c_5c5c

jr_01c_5bf0:
    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    jr nz, @+$6e

    ld l, c
    ld l, e
    ld h, l

jr_01c_5bf9:
    jr nz, jr_01c_5c5c

    ld bc, $6568
    ld h, c
    ld h, h
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, h
    ld l, $20
    ld c, c
    daa
    ld l, h
    ld l, h

jr_01c_5c0a:
    jr nz, jr_01c_5c80

    ld [hl], d

jr_01c_5c0d:
    ld a, c
    ld bc, $2061
    ld h, d
    ld l, c

jr_01c_5c13:
    ld h, a
    ld h, a
    ld h, l
    ld [hl], d
    jr nz, jr_01c_5c7c

    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop
    ld c, b
    ld l, l
    ld l, l
    ld hl, $5020
    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld a, c
    jr nz, jr_01c_5c93

    ld l, a

jr_01c_5c2d:
    ld l, a

jr_01c_5c2e:
    ld h, h
    ld hl, $4d01
    ld a, c
    jr nz, jr_01c_5c98

    ld l, h

jr_01c_5c36:
    ld [hl], l
    ld h, d
    jr nz, @+$75

    ld h, l
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    ld l, c

jr_01c_5c40:
    ld l, a
    ld l, [hl]
    ld bc, $6177
    ld [hl], e
    jr nz, jr_01c_5cba

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_01c_5c7b

    jr nz, jr_01c_5cc4

    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    ld [bc], a
    ld [hl], a
    ld l, b
    ld a, c
    ld hl, $4f20

jr_01c_5c5c:
    ld c, e
    ld l, $20
    ld b, h
    ld l, a
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld bc, $6177
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01c_5ce0

    ld l, a
    jr nz, jr_01c_5ce3

    ld [hl], d
    ld a, c
    ccf
    nop
    ld c, c
    ld l, [hl]
    jr nz, jr_01c_5cd8

    jr nz, jr_01c_5ced

    ld h, c
    ld l, c

jr_01c_5c7b:
    ld l, h

jr_01c_5c7c:
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, h

jr_01c_5c80:
    inc l
    jr nz, jr_01c_5cf8

    ld [hl], e
    ld h, l
    ld bc, $2061
    ld [hl], e
    ld l, l
    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld [hl], d
    jr nz, jr_01c_5cf4

    ld l, h
    ld [hl], l

jr_01c_5c93:
    ld h, d
    inc l
    jr nz, jr_01c_5d0a

    ld l, a

jr_01c_5c98:
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01c_5d02

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01c_5d13

    db $76
    ld h, l
    ld [hl], d
    ld [hl], e
    ld l, b
    ld l, a
    ld l, a
    ld [hl], h
    ld l, $03
    nop
    ld b, [hl]
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, jr_01c_5d25

    ld l, a
    ld [hl], d
    ld l, l

jr_01c_5cba:
    ld h, c
    ld l, h
    ld bc, $6f70
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_01c_5d37

jr_01c_5cc4:
    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_01c_5d2f

    ld l, a
    ld l, $03
    nop
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_01c_5d37

    ld l, b
    ld l, a
    ld l, a
    ld [hl], e

jr_01c_5cd8:
    ld h, l
    jr nz, jr_01c_5d3c

    jr nz, @+$65

    ld l, h
    ld [hl], l
    ld h, d

jr_01c_5ce0:
    ld l, $01
    ld d, l

jr_01c_5ce3:
    ld [hl], e
    ld h, l
    jr nz, @+$75

    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c

jr_01c_5ced:
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_5d52

    ld bc, $696c

jr_01c_5cf4:
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l

jr_01c_5cf8:
    jr nz, jr_01c_5d5c

    ld l, c
    ld h, a
    ld h, a
    ld h, l
    ld [hl], d
    ld l, $03
    nop

jr_01c_5d02:
    ld c, a
    ld c, e
    ld l, $20
    ld b, a
    ld l, c
    db $76
    ld h, l

jr_01c_5d0a:
    jr nz, @+$6b

    ld [hl], h
    jr nz, jr_01c_5d70

    jr nz, jr_01c_5d85

    ld [hl], d
    ld a, c

jr_01c_5d13:
    ld l, $03
    nop
    ld c, e
    ld h, l
    ld h, l
    ld [hl], b
    jr nz, jr_01c_5d8c

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, a

jr_01c_5d25:
    inc l
    jr nz, @+$75

    ld l, a
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01c_5da6

jr_01c_5d2f:
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01c_5da4

    db $76
    ld h, l

jr_01c_5d37:
    ld [hl], d
    dec l
    ld bc, $6873

jr_01c_5d3c:
    ld l, a
    ld l, a
    ld [hl], h
    jr nz, jr_01c_5db5

    ld l, b
    ld h, l
    jr nz, jr_01c_5dac

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01c_5dc4

    ld h, l

jr_01c_5d52:
    ld h, e
    ld [hl], d
    ld h, l
    ld [hl], h
    jr nz, jr_01c_5dcc

    ld l, a
    jr nz, jr_01c_5dce

    ld [hl], h

jr_01c_5d5c:
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld h, a
    ld bc, $6977
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, jr_01c_5dd1

    ld [hl], e
    jr nz, jr_01c_5dcc

    ld h, h
    ld l, d
    ld [hl], l
    ld [hl], e
    ld [hl], h

jr_01c_5d70:
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6c63
    ld [hl], l
    ld h, d
    ld [hl], e
    jr nz, jr_01c_5ddc

    ld l, [hl]
    ld h, h
    jr nz, jr_01c_5def

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld l, $03

jr_01c_5d85:
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01c_5df3

    ld h, c

jr_01c_5d8c:
    db $76
    ld h, l
    jr nz, jr_01c_5df1

    jr nz, jr_01c_5df9

    ld l, a
    ld l, a
    ld h, h
    ld bc, $7269
    ld l, a
    ld l, [hl]
    jr nz, jr_01c_5e0f

    ld l, b
    ld l, a
    ld [hl], h
    ld l, $20
    ld b, a
    ld h, l
    ld [hl], h

jr_01c_5da4:
    ld [hl], h
    ld l, c

jr_01c_5da6:
    ld l, [hl]
    ld h, a
    ld bc, $6874
    ld h, c

jr_01c_5dac:
    ld [hl], h
    jr nz, @+$65

    ld l, h
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_01c_5e1e

jr_01c_5db5:
    ld [hl], e
    jr nz, jr_01c_5e07

    ld c, e
    ld hl, $0003
    ld c, c
    ld l, [hl]
    jr nz, jr_01c_5e34

    ld l, b
    ld h, l
    ld l, a
    ld [hl], d

jr_01c_5dc4:
    ld a, c
    inc l
    jr nz, jr_01c_5e41

    ld l, a
    ld [hl], l
    jr nz, jr_01c_5e2d

jr_01c_5dcc:
    ld [hl], h
    ld [hl], h

jr_01c_5dce:
    ld h, c
    ld h, e
    ld l, e

jr_01c_5dd1:
    ld bc, $2061
    ld [hl], h
    ld [hl], a
    ld l, a
    dec l
    ld [hl], h
    ld l, c
    ld h, l
    ld [hl], d

jr_01c_5ddc:
    ld h, l
    ld h, h
    jr nz, jr_01c_5e47

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld bc, $7266
    ld l, a
    ld l, l
    jr nz, @+$6a

    ld h, l
    ld h, c
    ld h, h
    dec l

jr_01c_5def:
    ld l, a
    ld l, [hl]

jr_01c_5df1:
    ld l, $02

jr_01c_5df3:
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, @+$6b

    ld h, [hl]

jr_01c_5df9:
    jr nz, jr_01c_5e6f

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_01c_5e64

    ld bc, $6168
    ld a, d

jr_01c_5e07:
    ld h, c
    ld [hl], d
    ld h, h
    inc l
    jr nz, jr_01c_5e76

    ld [hl], e
    ld l, [hl]

jr_01c_5e0f:
    daa
    ld [hl], h
    jr nz, jr_01c_5e7c

    ld [hl], h
    ld bc, $6164
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], e

jr_01c_5e1e:
    ccf
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01c_5e99

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_01c_5e94

    ld [hl], h
    daa

jr_01c_5e2d:
    ld [hl], e
    ld bc, $6165
    ld [hl], e
    ld a, c
    inc l

jr_01c_5e34:
    jr nz, @+$09

    ccf
    ld [bc], a
    ld c, b
    ld l, l
    ld l, l
    inc l
    jr nz, jr_01c_5e87

    jr nz, jr_01c_5ea7

    ld [hl], l

jr_01c_5e41:
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_01c_5eaf

    ld [hl], h

jr_01c_5e47:
    daa
    ld [hl], e
    ld bc, $6168
    ld [hl], d
    ld h, h
    jr nz, @+$68

    ld l, a
    ld [hl], d
    jr nz, jr_01c_5ec1

    ld h, l
    jr nz, jr_01c_5e7e

    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    ld bc, $2749
    ld l, l
    jr nz, jr_01c_5ed0

    ld l, a
    ld [hl], h

jr_01c_5e64:
    jr nz, jr_01c_5ed9

    ld l, a
    jr nz, jr_01c_5ed0

    ld l, a
    ld l, a
    ld h, h
    ld l, $03
    nop

jr_01c_5e6f:
    ld b, c
    db $76
    ld l, a
    ld l, c
    ld h, h
    jr nz, jr_01c_5eea

jr_01c_5e76:
    ld l, b
    ld h, l
    jr nz, jr_01c_5ee2

    ld h, c
    ld a, d

jr_01c_5e7c:
    ld h, c
    ld [hl], d

jr_01c_5e7e:
    ld h, h
    ld bc, $7962
    jr nz, jr_01c_5ee5

    ld l, c
    ld l, l
    ld l, c

jr_01c_5e87:
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_5ef1

    ld l, a
    ld [hl], d
    jr nz, jr_01c_5f03

    ld l, b
    ld h, l
    ld bc, $6162

jr_01c_5e94:
    ld h, e
    ld l, e
    jr nz, jr_01c_5f07

    ld h, [hl]

jr_01c_5e99:
    jr nz, jr_01c_5f0f

    ld l, b
    ld h, l
    jr nz, @+$69

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $02
    ld c, b
    ld l, c

jr_01c_5ea7:
    ld [hl], h
    jr nz, @+$63

    jr nz, jr_01c_5f14

    ld l, c
    ld h, a
    ld l, b

jr_01c_5eaf:
    jr nz, jr_01c_5f13

    ld h, c
    ld l, h
    ld l, h
    ld bc, $6972
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_01c_5f1d

    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l

jr_01c_5ec1:
    jr nz, @+$72

    ld l, c
    ld l, [hl]
    ld l, $01
    ld c, c
    ld [hl], h
    jr nz, jr_01c_5f3e

    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h

jr_01c_5ed0:
    jr nz, jr_01c_5f49

    ld l, a
    ld [hl], d
    ld l, e
    ld l, $03
    nop
    ld c, c

jr_01c_5ed9:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01c_5f47

    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], e

jr_01c_5ee2:
    ld [hl], e
    ld l, c
    ld h, d

jr_01c_5ee5:
    ld l, h
    ld h, l
    jr nz, @+$76

    ld l, a

jr_01c_5eea:
    ld bc, $7061
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c

jr_01c_5ef1:
    ld h, e
    ld l, b
    jr nz, jr_01c_5f69

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01c_5f65

    ld l, c
    ld l, [hl]
    ld h, h
    ld bc, $666f
    jr nz, @+$6a

    ld l, a

jr_01c_5f03:
    ld l, h
    ld h, l
    jr nz, jr_01c_5f7e

jr_01c_5f07:
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01c_5f6d

    ld [bc], a
    ld [hl], e
    ld [hl], h

jr_01c_5f0f:
    ld h, c
    ld l, [hl]
    ld h, h
    ld h, c

jr_01c_5f13:
    ld [hl], d

jr_01c_5f14:
    ld h, h
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], h
    inc l
    jr nz, @+$75

jr_01c_5f1d:
    ld l, a
    ld bc, $7274
    ld a, c
    jr nz, jr_01c_5f88

    ld [hl], d
    ld l, a
    ld [hl], b
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_5f9f

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld bc, $6f64
    ld [hl], a
    ld l, [hl]
    jr nz, jr_01c_5fa7

    ld l, [hl]
    ld [hl], h
    ld l, a
    jr nz, jr_01c_5fb1

    ld l, b

jr_01c_5f3e:
    ld h, l
    jr nz, jr_01c_5fb1

    ld l, c
    ld l, [hl]
    ld l, $03
    nop
    ld c, [hl]

jr_01c_5f47:
    ld l, a
    ld [hl], d

jr_01c_5f49:
    ld l, l
    ld h, c
    ld l, h
    jr nz, jr_01c_5fbe

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld bc, $6873
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_01c_5fbd

    ld h, l
    jr nz, jr_01c_5fc4

    ld l, c
    ld l, [hl]
    ld h, l
    ld l, $03
    nop
    ld c, [hl]

jr_01c_5f65:
    ld h, l
    ld a, b
    ld [hl], h
    inc l

jr_01c_5f69:
    jr nz, jr_01c_5fce

    ld l, b
    ld l, a

jr_01c_5f6d:
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
    ld l, [hl]
    ld h, e
    ld h, l

jr_01c_5f7e:
    jr nz, jr_01c_5ff4

    ld l, b
    ld h, l
    jr nz, jr_01c_5feb

    ld h, c
    ld [hl], l
    ld h, a
    ld h, l

jr_01c_5f88:
    ld bc, $7473
    ld h, c
    ld [hl], d
    ld [hl], h
    ld [hl], e
    jr nz, jr_01c_5ffe

    ld l, a
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    ld bc, $7270
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_01c_6003

jr_01c_5f9f:
    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, @+$71

    ld l, [hl]
    jr nz, jr_01c_601b

jr_01c_5fa7:
    ld l, b
    ld h, l
    ld [bc], a
    dec hl
    jr nz, jr_01c_5ff0

    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d

jr_01c_5fb1:
    ld l, a
    ld l, h
    jr nz, jr_01c_6005

    ld h, c
    ld h, h
    ld l, $03
    nop
    ld c, e
    ld h, l
    ld h, l

jr_01c_5fbd:
    ld [hl], b

jr_01c_5fbe:
    jr nz, jr_01c_6028

    ld l, a
    ld l, h
    ld h, h
    ld l, c

jr_01c_5fc4:
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_603c

    ld l, b
    ld h, l
    ld bc, $202b
    ld b, e

jr_01c_5fce:
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    jr nz, @+$52

    ld h, c
    ld h, h
    ld bc, $6e75
    ld [hl], h
    ld l, c
    ld l, h
    jr nz, @+$6b

    ld l, l
    ld [hl], b
    ld h, c
    ld h, e
    ld [hl], h
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, c

jr_01c_5feb:
    ld [hl], h
    jr nz, jr_01c_6065

    ld h, c
    ld [hl], e

jr_01c_5ff0:
    jr nz, jr_01c_6065

    ld l, a
    dec l

jr_01c_5ff4:
    ld [hl], e
    ld l, a
    ld l, $01
    ld d, a
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, @+$76

jr_01c_5ffe:
    ld l, a
    jr nz, jr_01c_6075

    ld [hl], d
    ld a, c

jr_01c_6003:
    ccf
    nop

jr_01c_6005:
    ld b, [hl]
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, jr_01c_6070

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

jr_01c_601b:
    nop
    ld c, [hl]
    ld h, l
    ld a, b
    ld [hl], h
    inc l
    jr nz, jr_01c_6096

    ld h, l
    ld [hl], h
    jr nz, jr_01c_60a0

    ld l, a

jr_01c_6028:
    ld [hl], l
    ld [hl], d
    ld bc, $6f70
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, @+$76

    ld l, a
    jr nz, jr_01c_60a3

    ld l, a
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    ld l, $03

jr_01c_603c:
    nop
    ld c, a
    ld c, e
    ld l, $20
    ld b, a
    ld l, c
    db $76
    ld h, l
    jr nz, jr_01c_60b0

    ld [hl], h
    jr nz, jr_01c_60ab

    jr nz, jr_01c_60c0

    ld [hl], d
    ld a, c
    ld l, $03
    nop
    ld c, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01c_60bf

    ld l, a
    ld l, h
    ld h, h
    jr nz, jr_01c_60d0

    ld l, b
    ld h, l
    jr nz, jr_01c_608b

    ld bc, $6f43
    ld l, [hl]
    ld [hl], h

jr_01c_6065:
    ld [hl], d
    ld l, a
    ld l, h
    jr nz, jr_01c_60ba

    ld h, c
    ld h, h
    jr nz, jr_01c_60d2

    ld l, a
    ld [hl], a

jr_01c_6070:
    ld l, [hl]
    ld l, $01
    ld c, e
    ld h, l

jr_01c_6075:
    ld h, l
    ld [hl], b
    jr nz, @+$72

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
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e

jr_01c_608b:
    jr nz, jr_01c_60f6

    ld [hl], h
    ld hl, $5020
    ld l, a
    ld l, h
    ld l, c
    ld [hl], e
    ld l, b

jr_01c_6096:
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, @+$76

    ld h, l
    ld h, e
    ld l, b

jr_01c_60a0:
    ld l, [hl]
    ld l, c
    ld [hl], c

jr_01c_60a3:
    ld [hl], l
    ld h, l
    jr nz, jr_01c_611b

    ld l, a
    ld bc, $6567

jr_01c_60ab:
    ld [hl], h
    jr nz, @+$65

    ld l, h
    ld l, a

jr_01c_60b0:
    ld [hl], e
    ld h, l
    ld [hl], d
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h

jr_01c_60ba:
    daa
    ld [hl], e
    jr nz, jr_01c_6125

    ld [hl], d

jr_01c_60bf:
    ld h, l

jr_01c_60c0:
    ld h, c
    ld [hl], h
    jr nz, jr_01c_612a

    ld l, a
    ld [hl], d
    ld bc, $7573
    ld h, e
    ld l, b
    jr nz, jr_01c_612e

    jr nz, jr_01c_6137

    ld h, c

jr_01c_60d0:
    ld [hl], d
    ld h, h

jr_01c_60d2:
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], h
    ld hl, $5901
    ld l, a
    ld [hl], l
    jr nz, jr_01c_6146

    ld h, c
    db $76
    ld h, l
    jr nz, jr_01c_6157

    ld h, c
    ld l, h
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01c_6153

    ld h, c
    ld l, [hl]
    jr nz, jr_01c_6169

    ld [hl], e
    ld h, l

jr_01c_60f6:
    jr nz, @+$6a

    ld l, c
    ld h, a
    ld l, b
    ld bc, $7274
    ld h, c
    ld l, d
    ld h, l
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld l, c
    ld h, l
    ld [hl], e
    jr nz, @+$6b

    ld l, [hl]
    ld bc, $616d
    ld l, [hl]
    ld a, c
    jr nz, jr_01c_6185

    ld l, c
    ld [hl], h
    ld [hl], l
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e

jr_01c_611b:
    ld l, $03
    nop
    ld c, h
    ld h, c
    ld l, [hl]
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a

jr_01c_6125:
    jr nz, @+$6b

    ld l, [hl]
    jr nz, jr_01c_619e

jr_01c_612a:
    ld l, b
    ld h, l
    jr nz, @+$76

jr_01c_612e:
    ld [hl], d
    ld h, l
    ld h, l
    ld [hl], e
    ld bc, $6e6f
    jr nz, jr_01c_6198

jr_01c_6137:
    jr nz, jr_01c_61a6

    ld l, c
    ld [hl], e
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_01c_61b3

    ld l, b
    ld l, a
    ld [hl], h
    jr nz, jr_01c_61ae

    ld [hl], e

jr_01c_6146:
    ld bc, $7274
    ld l, a
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    ld l, $02
    ld d, a
    ld h, c
    ld l, [hl]

jr_01c_6153:
    ld [hl], h
    jr nz, @+$76

    ld l, a

jr_01c_6157:
    jr nz, jr_01c_61c5

    ld h, l
    ld h, c
    ld [hl], d
    ld l, [hl]
    jr nz, jr_01c_61c0

    ld bc, $6f67
    ld l, a
    ld h, h
    jr nz, jr_01c_61d8

    ld h, l
    ld h, e
    ld l, a

jr_01c_6169:
    db $76
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_01c_61e2

    ld l, b
    ld l, a
    ld [hl], h
    ld bc, $6f66
    ld [hl], d
    jr nz, jr_01c_61ec

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01c_61f0

    ld l, c
    ld [hl], h
    ld [hl], l
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]

jr_01c_6185:
    ccf
    nop
    ld d, l
    ld [hl], e
    ld [hl], l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    inc l
    jr nz, jr_01c_620a

    ld l, a
    ld [hl], l
    jr nz, jr_01c_61f8

    ld [hl], l
    ld [hl], d
    db $76

jr_01c_6198:
    ld h, l
    ld bc, $656c
    ld h, [hl]
    ld [hl], h

jr_01c_619e:
    jr nz, jr_01c_620f

    ld [hl], d
    jr nz, jr_01c_6215

    ld l, c
    ld h, a
    ld l, b

jr_01c_61a6:
    ld [hl], h
    jr nz, @+$76

    ld l, a
    jr nz, jr_01c_620d

    db $76
    ld l, a

jr_01c_61ae:
    ld l, c
    ld h, h
    ld bc, $6e61

jr_01c_61b3:
    jr nz, jr_01c_6224

    ld h, d
    ld [hl], e
    ld [hl], h
    ld h, c
    ld h, e
    ld l, h
    ld h, l
    inc l
    ld [bc], a
    ld h, d
    ld [hl], l

jr_01c_61c0:
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l

jr_01c_61c5:
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_01c_622c

    ld h, e
    ld [hl], h
    ld [hl], l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    ld bc, $6e61
    ld l, a
    ld [hl], h
    ld l, b

jr_01c_61d8:
    ld h, l
    ld [hl], d
    jr nz, jr_01c_624e

    ld l, a
    ld [hl], l
    ld [hl], h
    ld h, l
    ld l, $03

jr_01c_61e2:
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01c_624b

    ld h, c
    ld l, [hl]
    jr nz, jr_01c_6261

jr_01c_61ec:
    ld [hl], e
    ld h, l
    jr nz, @+$63

jr_01c_61f0:
    ld bc, $6c73
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_01c_6267

jr_01c_61f8:
    ld [hl], d
    jr nz, jr_01c_6263

    ld l, a
    ld l, a
    ld l, e
    inc l
    jr nz, jr_01c_6263

    ld [hl], l
    ld [hl], h
    ld bc, $6874
    ld h, l
    ld [hl], d
    ld h, l
    daa

jr_01c_620a:
    ld [hl], e
    jr nz, jr_01c_626e

jr_01c_620d:
    ld l, [hl]
    ld l, a

jr_01c_620f:
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld [bc], a
    ld [hl], a

jr_01c_6215:
    ld h, c
    ld a, c
    ld l, $20
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01c_6281

    ld h, c
    ld l, [hl]
    jr nz, jr_01c_6296

    ld [hl], d
    ld a, c

jr_01c_6224:
    ld bc, $6873
    ld l, a
    ld l, a
    ld [hl], h
    ld l, c
    ld l, [hl]

jr_01c_622c:
    ld h, a
    jr nz, jr_01c_629e

    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_01c_62a3

    ld [hl], d
    ld bc, $6e75
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_01c_62b1

    ld l, b
    ld h, l
    jr nz, jr_01c_62b5

    ld [hl], d
    ld h, l
    ld h, l
    ld [hl], e
    ld l, $03
    nop
    ld d, l
    ld [hl], e
    ld [hl], l

jr_01c_624b:
    ld h, c
    ld l, h
    ld l, h

jr_01c_624e:
    ld a, c
    inc l
    jr nz, jr_01c_62cb

    ld l, a
    ld [hl], l
    jr nz, @+$65

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $6567
    ld [hl], h
    jr nz, jr_01c_62d4

    ld l, a

jr_01c_6261:
    jr nz, jr_01c_62d7

jr_01c_6263:
    ld l, b
    ld h, l
    jr nz, jr_01c_62ce

jr_01c_6267:
    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld bc, $6874

jr_01c_626e:
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_01c_62e9

    ld [hl], d
    ld h, l
    ld h, l
    ld [hl], e
    inc l
    ld [bc], a
    ld h, d
    ld [hl], l
    ld [hl], h
    jr nz, @+$7b

    ld l, a

jr_01c_6281:
    ld [hl], l
    jr nz, jr_01c_62f1

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_01c_62ec

    ld h, l
    ld bc, $6261
    ld l, h
    ld h, l
    jr nz, jr_01c_6306

    ld l, a
    jr nz, jr_01c_62fe

    ld h, [hl]

jr_01c_6296:
    jr nz, jr_01c_6311

    ld l, a
    ld [hl], l
    jr nz, jr_01c_6311

    ld [hl], e
    ld h, l

jr_01c_629e:
    ld bc, $2061
    ld l, h
    ld l, a

jr_01c_62a3:
    ld [hl], a
    jr nz, jr_01c_631a

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

jr_01c_62b1:
    nop
    ld b, [hl]
    ld l, c
    ld [hl], d

jr_01c_62b5:
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, jr_01c_62da

    ld h, e
    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_01c_633b

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $6873
    ld l, a
    ld [hl], h
    inc l

jr_01c_62cb:
    jr nz, jr_01c_632f

    ld [hl], l

jr_01c_62ce:
    ld [hl], h
    ld l, $2e
    ld l, $02
    ld [hl], b

jr_01c_62d4:
    ld l, a
    ld [hl], a
    ld h, l

jr_01c_62d7:
    ld [hl], d
    jr nz, jr_01c_634d

jr_01c_62da:
    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e
    jr nz, jr_01c_6346

    ld l, h
    ld a, c
    ld bc, $6968
    ld h, a
    ld l, b
    ld h, l
    ld [hl], d

jr_01c_62e9:
    inc l
    jr nz, jr_01c_635f

jr_01c_62ec:
    ld l, a
    jr nz, jr_01c_6364

    ld [hl], e
    ld h, l

jr_01c_62f1:
    ld bc, $6f6e
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h
    jr nz, jr_01c_636a

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d

jr_01c_62fe:
    ld l, $03
    nop
    ld c, [hl]
    ld h, l
    ld a, b
    ld [hl], h
    inc l

jr_01c_6306:
    jr nz, jr_01c_636b

    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    ld bc, $2061
    ld h, e

jr_01c_6311:
    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop
    ld b, d
    ld l, c
    ld h, a

jr_01c_631a:
    jr nz, jr_01c_637f

    ld l, h
    ld [hl], l
    ld h, d
    ld [hl], e
    jr nz, jr_01c_6383

    ld [hl], d
    ld h, l
    jr nz, jr_01c_6388

    ld h, l
    ld [hl], e
    ld [hl], h
    ld bc, $6f66
    ld [hl], d
    jr nz, jr_01c_639b

jr_01c_632f:
    ld l, a
    ld [hl], a
    jr nz, jr_01c_63a7

    ld [hl], d
    ld h, c
    ld l, d
    ld h, l
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d

jr_01c_633b:
    ld l, c
    ld h, l
    ld [hl], e
    inc l
    ld bc, $6f73
    jr nz, @+$77

    ld [hl], e
    ld h, l

jr_01c_6346:
    jr nz, @+$63

    jr nz, @+$34

    ld c, c
    ld l, $03

jr_01c_634d:
    nop
    ld c, c
    ld h, [hl]
    jr nz, jr_01c_639b

    jr nz, jr_01c_63b7

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_01c_63c2

    ld l, c
    ld [hl], h
    jr nz, jr_01c_63c7

    ld [hl], h

jr_01c_635f:
    jr nz, jr_01c_63d0

    db $76
    ld h, l
    ld [hl], d

jr_01c_6364:
    ld bc, $6874
    ld h, l
    ld [hl], d
    ld h, l

jr_01c_636a:
    inc l

jr_01c_636b:
    jr nz, jr_01c_63e1

    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld h, h
    jr nz, @+$64

    ld h, l
    ld bc, $7267
    ld h, l
    ld h, c
    ld [hl], h
    ld l, $02
    ld c, [hl]
    ld l, a

jr_01c_637f:
    ld [hl], a
    jr nz, @+$6b

    ld [hl], h

jr_01c_6383:
    daa
    ld [hl], e
    jr nz, jr_01c_6400

    ld l, a

jr_01c_6388:
    ld [hl], l
    ld [hl], d
    jr nz, jr_01c_6400

    ld [hl], l
    ld [hl], d
    ld l, [hl]
    inc l
    jr nz, jr_01c_63e1

    ld c, e
    ccf
    nop
    ld b, [hl]
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc l

jr_01c_639b:
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, @+$79

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01c_641a

    ld l, a

jr_01c_63a7:
    ld bc, $6968
    ld [hl], h
    jr nz, jr_01c_6424

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01c_6420

    ld l, a
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h

jr_01c_63b7:
    ld bc, $6f70
    ld [hl], a
    ld h, l
    ld [hl], d
    ld l, $03
    nop
    ld c, [hl]
    ld l, a

jr_01c_63c2:
    ld [hl], a
    jr nz, jr_01c_6428

    ld l, b
    ld l, a

jr_01c_63c7:
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_01c_642d

    jr nz, jr_01c_6431

    ld l, h
    ld [hl], l

jr_01c_63d0:
    ld h, d
    ld l, $01
    ld c, c
    ld l, [hl]
    jr nz, @+$6e

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_01c_644f

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b

jr_01c_63e1:
    inc l
    ld bc, $2061
    inc sp
    ld d, a
    jr nz, jr_01c_6458

    ld [hl], d
    jr nz, jr_01c_644e

    ld l, c
    ld h, a
    ld h, a
    ld h, l
    ld [hl], d
    jr nz, @+$6b

    ld [hl], e
    ld [bc], a
    ld [hl], h
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    ld l, $20
    ld e, c
    ld l, a

jr_01c_6400:
    ld [hl], l
    jr nz, jr_01c_6466

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $6f67
    jr nz, jr_01c_6483

    ld [hl], d
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, @+$79

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01c_6478

    jr nz, jr_01c_644b

    ld c, c

jr_01c_641a:
    ld bc, $726f
    jr nz, jr_01c_6493

    ld l, b

jr_01c_6420:
    ld h, l
    ld [hl], d
    ld h, l
    ld h, c

jr_01c_6424:
    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h

jr_01c_6428:
    ld [hl], e
    ld l, $03
    nop
    ld c, a

jr_01c_642d:
    ld c, e
    ld l, $20
    ld c, h

jr_01c_6431:
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01c_64aa

    ld h, l
    ld h, l
    jr nz, jr_01c_64a4

    ld [hl], h
    ld hl, $0003
    ld c, b
    ld l, l
    ld l, l
    ld l, $2e
    ld l, $59
    ld l, a
    ld [hl], l
    jr nz, jr_01c_64ae

    ld l, c

jr_01c_644b:
    ld h, h
    ld l, [hl]
    daa

jr_01c_644e:
    ld [hl], h

jr_01c_644f:
    jr nz, jr_01c_64b8

    ld h, l
    ld [hl], h
    ld bc, $7469
    jr nz, jr_01c_64c7

jr_01c_6458:
    ld l, [hl]
    ld [hl], h
    ld l, a
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $6166
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c

jr_01c_6466:
    ld a, c
    ld l, $2e
    ld l, $54
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01c_64d9

    ld [hl], e
    ld [bc], a
    ld h, c
    jr nz, jr_01c_64e9

    ld [hl], d
    ld l, a
    ld [hl], l

jr_01c_6478:
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_01c_64f0

    ld l, b
    ld l, a
    ld [hl], h
    inc l
    jr nz, jr_01c_64f6

jr_01c_6483:
    ld l, a
    ld bc, $6f79
    ld [hl], l
    jr nz, @+$6a

    ld h, c
    db $76
    ld h, l
    jr nz, jr_01c_6503

    ld l, a
    jr nz, jr_01c_64f9

    ld h, l

jr_01c_6493:
    ld [hl], h
    ld bc, $6162
    ld h, e
    ld l, e
    jr nz, jr_01c_650f

    ld l, a
    jr nz, jr_01c_6512

    ld l, b
    ld h, l
    jr nz, jr_01c_6508

    ld h, c
    ld l, c

jr_01c_64a4:
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    ld l, $03

jr_01c_64aa:
    nop
    ld d, h
    ld l, b
    ld h, c

jr_01c_64ae:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01c_6525

    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c

jr_01c_64b8:
    jr nz, jr_01c_6521

    ld l, a
    ld l, a
    ld h, h
    ld bc, $6f66
    ld [hl], d
    jr nz, @+$63

    jr nz, jr_01c_6539

    ld [hl], d
    ld l, a

jr_01c_64c7:
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    ld bc, $6873
    ld l, a
    ld [hl], h
    ld hl, $0003
    ld c, a
    ld l, [hl]
    jr nz, jr_01c_654b

    ld [hl], d
    ld l, a

jr_01c_64d9:
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e
    inc l
    ld bc, $6f63
    ld l, [hl]
    ld [hl], e

jr_01c_64e9:
    ld l, c
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_01c_6550

    ld l, h

jr_01c_64f0:
    ld l, h
    ld bc, $6f70
    ld [hl], e
    ld [hl], e

jr_01c_64f6:
    ld l, c
    ld h, d
    ld l, c

jr_01c_64f9:
    ld l, h
    ld l, c
    ld [hl], h
    ld l, c
    ld h, l
    ld [hl], e
    jr nz, jr_01c_6563

    ld h, l
    ld h, [hl]

jr_01c_6503:
    ld l, a
    ld [hl], d
    ld h, l
    ld [bc], a
    ld h, e

jr_01c_6508:
    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a

jr_01c_650f:
    jr nz, jr_01c_658a

    ld l, a

jr_01c_6512:
    ld [hl], l
    ld [hl], d
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], h
    ld l, $03
    nop
    ld c, a
    ld l, b
    ld hl, $5920

jr_01c_6521:
    ld l, a
    ld [hl], l
    jr nz, jr_01c_6591

jr_01c_6525:
    ld h, c
    ld l, [hl]
    ld h, h
    ld h, l
    ld h, h
    jr nz, jr_01c_659b

    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, jr_01c_65a1

    ld h, l
    ld a, b
    ld [hl], h
    jr nz, @+$68

    ld h, c

jr_01c_6539:
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    jr nz, @+$71

    db $76
    ld h, l
    ld [hl], d
    ld hl, $4902
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01c_65b1

jr_01c_654b:
    ld l, c
    ld l, [hl]
    ld h, l
    jr nz, @+$6b

jr_01c_6550:
    ld h, [hl]
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld bc, $616c
    ld l, [hl]
    ld h, h
    jr nz, jr_01c_65cb

    ld l, [hl]
    jr nz, jr_01c_65d3

    ld l, b
    ld h, l
    jr nz, jr_01c_65c9

jr_01c_6563:
    ld h, c
    ld l, c
    ld [hl], d
    dec l
    ld bc, $6177
    ld a, c
    inc l
    jr nz, @+$64

    ld [hl], l
    ld [hl], h
    ld l, $2e
    ld l, $03
    nop
    ld c, h
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01c_65e4

    ld l, [hl]
    jr nz, jr_01c_65f2

    ld l, b
    ld h, l
    jr nz, jr_01c_65f6

    ld [hl], d
    ld h, l
    ld h, l
    ld [hl], e
    inc l
    ld bc, $6e61

jr_01c_658a:
    ld h, h
    jr nz, jr_01c_6606

    ld l, a
    ld [hl], l
    jr nz, jr_01c_6604

jr_01c_6591:
    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    ld bc, $6573
    ld [hl], h
    ld [hl], h

jr_01c_659b:
    ld l, h
    ld h, l
    jr nz, jr_01c_6605

    ld l, a
    ld [hl], d

jr_01c_65a1:
    jr nz, jr_01c_6604

    jr nz, jr_01c_6607

    ld l, a
    ld h, a
    ld h, l
    ld a, c
    inc l
    ld [bc], a
    ld h, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_01c_6623

    ld l, a

jr_01c_65b1:
    ld l, l
    ld h, l
    ld [hl], h
    ld l, c
    ld l, l
    ld h, l
    ld [hl], e
    jr nz, jr_01c_6633

    ld l, a
    ld [hl], l
    ld bc, $6163
    ld l, [hl]
    jr nz, @+$74

    ld l, c
    ld [hl], e
    ld l, e
    jr nz, jr_01c_662e

    ld l, a
    ld l, c

jr_01c_65c9:
    ld l, [hl]
    ld h, a

jr_01c_65cb:
    jr nz, jr_01c_6633

    ld l, a
    ld [hl], d
    ld bc, $6874
    ld h, l

jr_01c_65d3:
    jr nz, jr_01c_663c

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    inc l
    jr nz, jr_01c_664e

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ccf
    nop
    ld b, c
    ld l, [hl]

jr_01c_65e4:
    ld a, c
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_01c_6661

    ld l, b
    ld l, a
    jr nz, jr_01c_665b

    ld l, c
    ld [hl], e
    ld [hl], e
    ld h, l

jr_01c_65f2:
    ld [hl], e
    ld bc, $6177

jr_01c_65f6:
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    jr nz, jr_01c_666f

    ld l, a
    jr nz, jr_01c_6662

    ld l, a
    ld bc, $6877
    ld h, c
    ld [hl], h

jr_01c_6604:
    ld h, l

jr_01c_6605:
    db $76

jr_01c_6606:
    ld h, l

jr_01c_6607:
    ld [hl], d
    jr nz, jr_01c_6673

    ld [hl], h
    jr nz, jr_01c_6681

    ld h, c
    ld l, e
    ld h, l
    ld [hl], e
    ld [bc], a
    ld [hl], h
    ld l, a
    jr nz, @+$74

    ld h, l
    ld h, e
    ld l, a
    db $76
    ld h, l
    ld [hl], d
    ld l, $20
    ld c, c
    ld bc, $6163
    ld l, [hl]

jr_01c_6623:
    daa
    ld [hl], h
    jr nz, @+$63

    ld l, h
    ld [hl], a
    ld h, c
    ld a, c
    ld [hl], e
    jr nz, jr_01c_6697

jr_01c_662e:
    ld h, a
    ld l, [hl]
    ld l, a
    ld [hl], d
    ld h, l

jr_01c_6633:
    ld bc, $6874
    ld h, c
    ld [hl], h
    jr nz, jr_01c_66a0

    ld h, l
    ld h, l

jr_01c_663c:
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $03
    nop
    ld b, [hl]
    ld l, a
    ld [hl], d
    jr nz, @+$6a

    ld l, c
    ld h, a
    ld l, b
    jr nz, @+$74

    ld l, c

jr_01c_664e:
    ld [hl], e
    ld l, e
    ld bc, $6873
    ld l, a
    ld [hl], h
    ld [hl], e
    inc l
    jr nz, @+$7b

    ld l, a
    ld [hl], l

jr_01c_665b:
    jr nz, jr_01c_66d0

    ld l, b
    ld l, a
    ld [hl], l
    ld l, h

jr_01c_6661:
    ld h, h

jr_01c_6662:
    ld bc, $756a
    ld [hl], e
    ld [hl], h
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_01c_66d7

    ld [hl], h

jr_01c_666f:
    jr nz, jr_01c_66e4

    ld h, c
    ld h, [hl]

jr_01c_6673:
    ld h, l
    inc l
    ld [bc], a
    ld h, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_01c_66ee

    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, c
    ld l, l

jr_01c_6681:
    ld h, l
    ld [hl], e
    jr nz, jr_01c_66fe

    ld l, a
    ld [hl], l
    ld bc, $6168
    db $76
    ld h, l
    jr nz, jr_01c_6702

    ld l, a
    jr nz, jr_01c_6705

    ld h, c
    ld l, e
    ld h, l
    jr nz, @+$74

    ld l, c

jr_01c_6697:
    ld [hl], e
    ld l, e
    ld [hl], e
    ld bc, $6e69
    jr nz, jr_01c_6702

    ld l, a

jr_01c_66a0:
    ld l, l
    ld [hl], b
    ld h, l
    ld [hl], h
    ld l, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $03
    nop
    ld d, l
    ld [hl], e
    ld h, l
    jr nz, jr_01c_6712

    jr nz, jr_01c_6706

    ld d, a
    jr nz, jr_01c_671f

    ld h, [hl]
    jr nz, jr_01c_6732

    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    ld bc, $756a
    ld [hl], e
    ld [hl], h
    jr nz, jr_01c_6739

    ld [hl], d
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_6740

    ld l, a
    jr nz, @+$69

    ld h, l

jr_01c_66d0:
    ld [hl], h
    ld bc, $756f
    ld [hl], h
    jr nz, jr_01c_6746

jr_01c_66d7:
    ld h, [hl]
    jr nz, jr_01c_674e

    ld l, b
    ld h, l
    jr nz, jr_01c_6755

    ld l, a
    ld l, a
    ld h, h
    ld [hl], e
    inc l
    ld [bc], a

jr_01c_66e4:
    ld h, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_01c_674c

    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, c
    ld h, h

jr_01c_66ee:
    ld h, l
    ld [hl], d
    jr nz, jr_01c_6753

    ld l, h
    ld l, h
    ld bc, $6874
    ld h, l
    jr nz, jr_01c_6769

    ld [hl], b
    ld [hl], h
    ld l, c
    ld l, a

jr_01c_66fe:
    ld l, [hl]
    ld [hl], e
    jr nz, @+$6b

jr_01c_6702:
    ld h, [hl]
    jr nz, jr_01c_677e

jr_01c_6705:
    ld l, a

jr_01c_6706:
    ld [hl], l
    ld bc, $6177
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01c_6782

    ld l, b
    ld h, l
    jr nz, jr_01c_6779

jr_01c_6712:
    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $03
    nop
    ld c, [hl]
    ld l, a
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h

jr_01c_671f:
    jr nz, jr_01c_6791

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld bc, $6873
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$66

    ld l, a
    ld l, $03
    nop

jr_01c_6732:
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_01c_679a

    ld l, b
    ld l, a

jr_01c_6739:
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, @+$63

    jr nz, jr_01c_67a3

jr_01c_6740:
    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop

jr_01c_6746:
    ld c, c
    daa
    ld l, l
    jr nz, jr_01c_67ae

    ld [hl], l

jr_01c_674c:
    ld [hl], d
    db $76

jr_01c_674e:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$76

jr_01c_6753:
    ld l, a
    ld [hl], a

jr_01c_6755:
    ld h, c
    ld [hl], d
    ld h, h
    ld [hl], e
    ld bc, $6874
    ld h, l
    jr nz, jr_01c_67c6

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_01c_67d9

    ld l, a
    jr nz, jr_01c_67cf

    ld h, l

jr_01c_6769:
    ld [hl], h
    ld bc, $756f
    ld [hl], h
    jr nz, jr_01c_67df

    ld h, [hl]
    jr nz, jr_01c_67e7

    ld l, b
    ld h, l
    jr nz, jr_01c_67eb

    ld [hl], d
    ld h, l

jr_01c_6779:
    ld h, l
    ld [hl], e
    ld [bc], a
    ld h, c
    ld l, [hl]

jr_01c_677e:
    ld h, h
    jr nz, jr_01c_67f0

    ld l, [hl]

jr_01c_6782:
    jr nz, jr_01c_67eb

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $20
    ld b, c
    ld [hl], e
    ld bc, $6f73
    ld l, a
    ld l, [hl]

jr_01c_6791:
    jr nz, jr_01c_67f4

    ld [hl], e
    jr nz, jr_01c_680a

    ld l, b
    ld h, l
    jr nz, @+$69

jr_01c_679a:
    ld h, c
    ld [hl], l
    ld h, a
    ld h, l
    ld bc, $6f6d
    db $76
    ld h, l

jr_01c_67a3:
    ld [hl], e
    inc l
    jr nz, @+$72

    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_01c_6821

    ld l, b

jr_01c_67ae:
    ld h, l
    ld [bc], a
    dec hl
    jr nz, jr_01c_67f6

    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    jr nz, @+$52

    ld h, c
    ld h, h
    ld bc, $6f74
    jr nz, jr_01c_6825

    ld [hl], l
    ld [hl], d
    db $76
    ld h, l

jr_01c_67c6:
    jr nz, jr_01c_683c

    ld l, b
    ld h, l
    jr nz, jr_01c_682e

    ld h, c
    ld l, h
    ld l, h

jr_01c_67cf:
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01c_683f

    ld h, c
    db $76

jr_01c_67d9:
    ld h, l
    jr nz, jr_01c_6850

    ld l, a
    jr nz, jr_01c_6847

jr_01c_67df:
    ld l, a
    ld l, h
    ld h, h
    ld bc, $7469
    jr nz, jr_01c_685c

jr_01c_67e7:
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, h

jr_01c_67eb:
    jr nz, jr_01c_6856

    ld l, l
    ld [hl], b
    ld h, c

jr_01c_67f0:
    ld h, e
    ld [hl], h
    ld l, $03

jr_01c_67f4:
    nop
    ld d, e

jr_01c_67f6:
    ld h, l
    ld h, l
    ld hl, $4920
    daa
    ld l, l
    jr nz, @+$71

    ld l, [hl]
    jr nz, jr_01c_6876

    ld l, b
    ld h, l
    ld bc, $7267
    ld h, l
    ld h, l
    ld l, [hl]

jr_01c_680a:
    jr nz, jr_01c_686d

    ld l, [hl]
    ld h, h
    jr nz, @+$65

    ld h, c
    ld l, [hl]
    jr nz, @+$76

    ld [hl], d
    ld a, c
    ld bc, $6f66
    ld [hl], d
    jr nz, jr_01c_687d

    jr nz, @+$64

    ld l, c
    ld [hl], d
    ld h, h

jr_01c_6821:
    ld l, c
    ld h, l
    ld l, $02

jr_01c_6825:
    ld d, a
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01c_689f

    ld l, a
    jr nz, jr_01c_68a2

jr_01c_682e:
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
    jr nz, jr_01c_689d

    ld l, b
    ld l, a

jr_01c_683c:
    ld l, a
    ld [hl], e
    ld h, l

jr_01c_683f:
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01c_68b9

    ld l, b

jr_01c_6847:
    ld l, a
    ld [hl], h
    ld l, $03
    nop
    ld c, [hl]
    ld h, l
    ld a, b
    ld [hl], h

jr_01c_6850:
    inc l
    jr nz, @+$65

    ld l, b
    ld l, a
    ld l, a

jr_01c_6856:
    ld [hl], e
    ld h, l
    ld bc, $2061
    ld h, e

jr_01c_685c:
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
    ld [hl], h
    jr nz, jr_01c_68df

    ld l, b
    ld h, l

jr_01c_686d:
    jr nz, jr_01c_68d1

    ld h, c
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld e, c

jr_01c_6876:
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01c_68eb

jr_01c_687d:
    ld l, a
    ld [hl], h
    jr nz, jr_01c_68e9

    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $7473
    ld [hl], d
    ld h, c
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    inc l
    jr nz, jr_01c_6906

    ld l, a
    jr nz, jr_01c_68fa

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $7568

jr_01c_689d:
    ld [hl], d
    ld [hl], d

jr_01c_689f:
    ld a, c
    ld l, $03

jr_01c_68a2:
    nop
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$6b

    ld [hl], h
    ld l, $20
    ld d, d
    ld h, l
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld h, l
    ld bc, $6f79
    ld [hl], l
    ld [hl], d

jr_01c_68b9:
    jr nz, jr_01c_692f

    ld h, l
    ld h, e
    ld l, b
    ld l, [hl]
    ld l, c
    ld [hl], c
    ld [hl], l
    ld h, l
    jr nz, jr_01c_6939

    ld l, a
    ld bc, $6567
    ld [hl], h
    jr nz, jr_01c_692f

    ld l, h
    ld l, a
    ld [hl], e
    ld h, l
    ld [hl], d

jr_01c_68d1:
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$69

    ld [hl], d
    ld h, l
    ld h, c

jr_01c_68df:
    ld [hl], h
    jr nz, @+$68

    ld l, a
    ld [hl], d
    ld bc, $7573
    ld h, e
    ld l, b

jr_01c_68e9:
    jr nz, jr_01c_694c

jr_01c_68eb:
    jr nz, jr_01c_6955

    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_01c_6965

    ld l, b
    ld l, a
    ld [hl], h
    ld l, $01
    ld e, c
    ld l, a
    ld [hl], l

jr_01c_68fa:
    jr nz, jr_01c_6968

    ld h, l
    ld h, c
    ld [hl], d
    ld l, [hl]
    jr nz, @+$73

    ld [hl], l
    ld l, c
    ld h, e
    ld l, e

jr_01c_6906:
    ld l, h
    ld a, c
    ld hl, $0003
    ld c, a
    ld l, [hl]
    jr nz, jr_01c_6983

    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    jr nz, jr_01c_6988

    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e
    inc l
    ld bc, $6f63
    ld l, [hl]
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, @+$63

    ld l, h
    ld l, h
    ld bc, $706f
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e

jr_01c_692f:
    inc l
    jr nz, jr_01c_69a6

    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01c_69aa

    ld l, b
    ld l, a

jr_01c_6939:
    ld l, a
    ld [hl], h
    ld l, $03
    nop
    ld d, a
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01c_69ad

    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01c_69ab

    ld [hl], l
    ld [hl], d
    ld l, c

jr_01c_694c:
    ld h, l
    ld h, h
    ld bc, $6e69
    jr nz, @+$75

    ld h, c
    ld l, [hl]

jr_01c_6955:
    ld h, h
    inc l
    jr nz, jr_01c_69cd

    ld l, b
    ld h, l
    jr nz, jr_01c_69ca

    ld h, l
    ld h, l
    ld [hl], h
    ld bc, $7261
    ld h, l
    ld h, c

jr_01c_6965:
    jr nz, @+$69

    ld h, l

jr_01c_6968:
    ld [hl], h
    ld [hl], e
    jr nz, jr_01c_69df

    ld l, l
    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld [hl], d
    ld l, $02
    ld d, a
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01c_69ee

    ld l, b
    ld h, l
    jr nz, jr_01c_69ee

    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    ld [hl], l

jr_01c_6983:
    ld [hl], d
    ld h, l
    ld bc, $7369

jr_01c_6988:
    jr nz, jr_01c_69f9

    ld l, [hl]
    inc l
    jr nz, jr_01c_69ef

    ld [hl], d
    ld h, l
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $6962
    ld [hl], d
    ld h, h
    ld l, c
    ld h, l
    ld [hl], e
    jr nz, @+$76

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ccf
    nop
    ld c, [hl]
    ld l, c
    ld h, e

jr_01c_69a6:
    ld h, l
    jr nz, @+$75

    ld l, b

jr_01c_69aa:
    ld l, a

jr_01c_69ab:
    ld [hl], h
    ld [hl], e

jr_01c_69ad:
    jr nz, jr_01c_6a10

    ld [hl], d
    ld h, l
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $6165
    ld [hl], e
    ld a, c
    jr nz, @+$6b

    ld h, [hl]
    jr nz, jr_01c_6a32

    ld l, b
    ld h, l
    jr nz, jr_01c_6a2f

    ld h, l
    ld h, l
    ld [hl], h
    ld bc, $7261
    ld h, l
    ld h, c

jr_01c_69ca:
    jr nz, jr_01c_6a35

    ld [hl], e

jr_01c_69cd:
    jr nz, jr_01c_6a42

    ld l, l
    ld h, c
    ld l, h
    ld l, h
    ld l, $02
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01c_6a42

    ld h, c
    db $76
    ld h, l
    jr nz, jr_01c_6a53

jr_01c_69df:
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, @+$71

    ld h, [hl]
    ld bc, $6874
    ld h, l
    ld [hl], e
    ld h, l
    jr nz, jr_01c_6a61

jr_01c_69ee:
    ld l, b

jr_01c_69ef:
    ld l, a
    ld [hl], h
    ld [hl], e
    jr nz, @+$63

    ld [hl], e
    ld bc, $2061
    ld h, a

jr_01c_69f9:
    ld h, c
    ld l, l
    ld h, d
    ld l, h
    ld h, l
    ld l, $03
    nop
    ld d, h
    ld l, a
    jr nz, jr_01c_6a66

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    jr nz, @+$76

    ld l, b
    ld h, l

jr_01c_6a10:
    ld bc, $7267
    ld h, l
    ld h, l
    ld l, [hl]
    inc l
    jr nz, jr_01c_6a92

    ld l, a
    ld [hl], l
    jr nz, @+$6a

    ld h, c
    db $76
    ld h, l
    jr nz, jr_01c_6a96

    ld l, a
    ld bc, $6174
    ld l, e
    ld h, l
    jr nz, jr_01c_6a8b

    jr nz, @+$74

    ld l, c
    ld [hl], e
    ld l, e

jr_01c_6a2f:
    ld l, $02
    ld c, e

jr_01c_6a32:
    ld h, l
    ld h, l
    ld [hl], b

jr_01c_6a35:
    jr nz, jr_01c_6aab

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01c_6aa5

    ld l, [hl]
    jr nz, jr_01c_6aac

    ld l, c
    ld l, [hl]
    ld h, h

jr_01c_6a42:
    ld bc, $7361
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, @+$6e

    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld l, [hl]
    jr nz, jr_01c_6ac6

    ld l, a

jr_01c_6a53:
    ld bc, $656d
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01c_6aca

    ld l, a
    ld [hl], e
    ld h, l

jr_01c_6a61:
    jr nz, @+$66

    ld l, c
    ld [hl], e
    ld [hl], h

jr_01c_6a66:
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld bc, $6877
    ld h, l
    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, @+$64

    ld h, c
    ld l, h
    ld l, h
    daa
    ld [hl], e
    ld bc, $7562
    ld [hl], d
    ld l, c
    ld h, l
    ld h, h
    jr nz, jr_01c_6aec

    ld l, [hl]
    jr nz, jr_01c_6af9

    ld h, c
    ld l, [hl]
    ld h, h
    ld l, $02

jr_01c_6a8b:
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_01c_6b09

    ld l, a
    ld [hl], l

jr_01c_6a92:
    jr nz, jr_01c_6af7

    ld h, c
    ld l, [hl]

jr_01c_6a96:
    jr nz, jr_01c_6aff

    ld h, l
    ld [hl], h
    jr nz, @+$63

    ld bc, $6962
    ld [hl], d
    ld h, h
    ld l, c
    ld h, l
    jr nz, @+$79

jr_01c_6aa5:
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01c_6b14

    ld [hl], l

jr_01c_6aab:
    ld [hl], e

jr_01c_6aac:
    ld [hl], h
    ld bc, $2061
    ld l, h
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, @+$66

    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, $03
    nop
    ld d, a
    ld l, b
    ld h, l
    ld l, [hl]

jr_01c_6ac6:
    jr nz, jr_01c_6b3b

    ld l, b
    ld l, a

jr_01c_6aca:
    ld l, a
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_6b32

    ld bc, $6f6c
    ld l, [hl]
    ld h, a
    jr nz, @+$66

    ld [hl], d
    ld l, c
    db $76
    ld h, l
    inc l
    jr nz, jr_01c_6b40

    jr nz, jr_01c_6b4f

    ld l, c
    ld h, e
    ld h, l
    ld bc, $6873
    ld l, a
    ld [hl], h
    jr nz, jr_01c_6b58

    ld h, l

jr_01c_6aec:
    ld h, c
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01c_6b64

    ld [hl], l
    ld h, e
    ld h, e
    ld h, l
    ld [hl], e
    ld [hl], e

jr_01c_6af7:
    ld l, $02

jr_01c_6af9:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01c_6b6c

    ld h, l

jr_01c_6aff:
    ld h, l
    ld h, h
    jr nz, jr_01c_6b67

    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e

jr_01c_6b09:
    ld h, l
    ld bc, $6f74
    jr nz, jr_01c_6b70

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c

jr_01c_6b14:
    ld h, e
    ld l, b
    jr nz, jr_01c_6b8c

    ld l, b
    ld h, l
    ld bc, $7267
    ld h, l
    ld h, l
    ld l, [hl]
    inc l
    jr nz, jr_01c_6b96

    ld l, a
    jr nz, jr_01c_6b9b

    ld [hl], e
    ld h, l
    jr nz, jr_01c_6b9a

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld l, $03
    nop
    ld c, [hl]

jr_01c_6b32:
    ld l, a
    ld [hl], a
    jr nz, jr_01c_6b99

    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l

jr_01c_6b3b:
    jr nz, @+$63

    jr nz, jr_01c_6ba2

    ld l, h

jr_01c_6b40:
    ld [hl], l
    ld h, d
    ld l, $03
    nop
    ld c, c
    ld h, [hl]
    jr nz, jr_01c_6bb2

    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01c_6bb0

    ld [hl], l

jr_01c_6b4f:
    ld [hl], d
    ld l, c
    ld h, l
    ld h, h
    ld bc, $6e69
    jr nz, @+$75

jr_01c_6b58:
    ld h, c
    ld l, [hl]
    ld h, h
    inc l
    jr nz, jr_01c_6bbf

    jr nz, jr_01c_6b92

    ld c, c
    jr nz, @+$6b

    ld [hl], e

jr_01c_6b64:
    jr nz, jr_01c_6bda

    ld l, b

jr_01c_6b67:
    ld h, l
    ld bc, $6562
    ld [hl], e

jr_01c_6b6c:
    ld [hl], h
    jr nz, jr_01c_6bd2

    ld l, b

jr_01c_6b70:
    ld l, a
    ld l, c
    ld h, e
    ld h, l
    ld l, $03
    nop
    ld c, a
    ld c, e
    ld l, $20
    ld c, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_01c_6bca

    jr nz, jr_01c_6bea

    ld l, a
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l

jr_01c_6b8c:
    inc l
    jr nz, jr_01c_6bd8

    jr nz, jr_01c_6bf5

    ld l, c

jr_01c_6b92:
    ld h, h
    jr nz, jr_01c_6bfe

    ld [hl], h

jr_01c_6b96:
    ld l, $01
    ld b, h

jr_01c_6b99:
    ld l, a

jr_01c_6b9a:
    ld l, [hl]

jr_01c_6b9b:
    daa
    ld [hl], h
    jr nz, jr_01c_6c16

    ld l, a
    ld [hl], d
    ld [hl], d

jr_01c_6ba2:
    ld a, c
    jr nz, @+$63

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    ld bc, $6874
    ld h, l
    jr nz, jr_01c_6c11

    ld [hl], l

jr_01c_6bb0:
    ld l, [hl]
    ld l, e

jr_01c_6bb2:
    ld h, l
    ld [hl], d
    inc l
    jr nz, jr_01c_6c21

    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld [bc], a
    ld [hl], e
    ld [hl], a
    ld l, c
    ld l, [hl]

jr_01c_6bbf:
    ld h, a
    ld l, $20
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, @+$6b

    ld [hl], h
    daa
    ld [hl], e

jr_01c_6bca:
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01c_6c45

    ld [hl], l

jr_01c_6bd2:
    ld [hl], d
    ld l, [hl]
    inc l
    jr nz, jr_01c_6c26

    ld c, e

jr_01c_6bd8:
    ccf
    nop

jr_01c_6bda:
    ld b, [hl]
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    jr nz, jr_01c_6c44

    ld l, a
    ld l, l
    ld h, l
    ld [hl], e
    jr nz, jr_01c_6c57

    ld l, a
    ld [hl], a
    ld h, l

jr_01c_6bea:
    ld [hl], d
    ld l, $01
    ld b, [hl]
    ld l, a
    ld [hl], d
    jr nz, jr_01c_6c5f

    ld l, a
    ld [hl], d
    ld h, l

jr_01c_6bf5:
    jr nz, jr_01c_6c5b

    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l

jr_01c_6bfe:
    ld bc, $6863
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_01c_6c68

    jr nz, jr_01c_6c79

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_01c_6c82

    ld l, b
    ld l, a

jr_01c_6c11:
    ld [hl], h
    ld l, $03
    nop
    ld c, [hl]

jr_01c_6c16:
    ld h, l
    ld a, b
    ld [hl], h
    inc l
    jr nz, jr_01c_6c7f

    ld l, b
    ld l, a
    ld l, a
    ld [hl], e
    ld h, l

jr_01c_6c21:
    jr nz, jr_01c_6c9c

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01c_6c26:
    ld bc, $6c63
    ld [hl], l
    ld h, d
    jr nz, jr_01c_6c8e

    ld l, [hl]
    ld h, h
    jr nz, jr_01c_6c93

    ld h, l
    ld bc, $6f62
    ld l, h
    ld h, h
    jr nz, @+$63

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_01c_6ca8

    ld [hl], h
    ld l, $03
    nop
    ld c, a

jr_01c_6c44:
    ld c, e

jr_01c_6c45:
    ld l, $20
    ld d, e
    ld [hl], h
    ld h, c
    ld a, c
    jr nz, jr_01c_6cb3

    ld l, a
    ld h, e
    ld [hl], l
    ld [hl], e
    ld h, l
    ld h, h
    ld bc, $6e61
    ld h, h

jr_01c_6c57:
    jr nz, jr_01c_6ccc

    ld [hl], a
    ld l, c

jr_01c_6c5b:
    ld l, [hl]
    ld h, a
    ld l, $03

jr_01c_6c5f:
    nop
    ld c, a
    ld l, a
    ld [hl], b
    ld [hl], e
    inc l
    jr nz, jr_01c_6cd0

    ld [hl], h

jr_01c_6c68:
    jr nz, jr_01c_6cce

    ld l, c
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01c_6cd8

    ld l, a
    ld bc, $6f73
    jr nz, jr_01c_6cee

    ld h, l
    ld l, h

jr_01c_6c79:
    ld l, h
    ld l, $2e
    ld l, $02
    ld c, c

jr_01c_6c7f:
    ld h, [hl]
    jr nz, jr_01c_6cfb

jr_01c_6c82:
    ld l, a
    ld [hl], l
    jr nz, jr_01c_6cfd

    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    jr nz, jr_01c_6ced

    ld h, d
    ld l, a

jr_01c_6c8e:
    ld [hl], l
    ld [hl], h
    ld bc, $6874

jr_01c_6c93:
    ld h, l
    jr nz, jr_01c_6d03

    ld h, l
    ld h, l
    ld [hl], h
    jr nz, jr_01c_6cfc

    ld [hl], d

jr_01c_6c9c:
    ld h, l
    ld h, c
    inc l
    ld bc, $6f79
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, @+$6f

jr_01c_6ca8:
    ld l, c
    ld [hl], e
    ld [hl], e
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01c_6d1a

jr_01c_6cb3:
    ld l, a
    ld [hl], h
    jr nz, jr_01c_6d26

    ld [hl], l
    ld [hl], h
    jr nz, jr_01c_6d2a

    ld h, [hl]
    jr nz, jr_01c_6d32

    ld l, b
    ld h, l
    ld bc, $7562
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    inc l
    jr nz, jr_01c_6d2c

    ld [hl], l
    ld [hl], h

jr_01c_6ccc:
    jr nz, jr_01c_6d32

jr_01c_6cce:
    ld l, c
    ld h, h

jr_01c_6cd0:
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $616d
    ld l, e
    ld h, l

jr_01c_6cd8:
    jr nz, jr_01c_6d4e

    ld l, b
    ld h, l
    jr nz, @+$69

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $02
    ld c, [hl]
    ld h, l
    ld a, b
    ld [hl], h
    jr nz, jr_01c_6d5e

    ld l, c
    ld l, l
    ld h, l

jr_01c_6ced:
    inc l

jr_01c_6cee:
    jr nz, jr_01c_6d57

    ld h, l
    ld [hl], h
    ld bc, $6e6f
    jr nz, jr_01c_6d6b

    ld l, b
    ld h, l
    jr nz, jr_01c_6d62

jr_01c_6cfb:
    ld [hl], d

jr_01c_6cfc:
    ld h, l

jr_01c_6cfd:
    ld h, l
    ld l, [hl]
    ld l, $03
    nop
    ld d, h

jr_01c_6d03:
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01c_6d7c

    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_01c_6d78

    ld l, a
    ld l, a
    ld h, h
    ld bc, $6f66
    ld [hl], d
    jr nz, jr_01c_6d7b

jr_01c_6d1a:
    jr nz, jr_01c_6d90

    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_01c_6d97

    ld l, b
    ld l, a

jr_01c_6d26:
    ld [hl], h
    ld l, $03
    nop

jr_01c_6d2a:
    ld d, a
    ld h, c

jr_01c_6d2c:
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_01c_6daa

    ld l, a

jr_01c_6d32:
    ld [hl], l
    ld [hl], d
    jr nz, jr_01c_6daa

    ld l, c
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6877
    ld h, l
    ld l, [hl]
    jr nz, jr_01c_6db6

    ld l, b
    ld h, l
    jr nz, @+$6f

    ld h, l
    ld h, l
    ld [hl], h
    ld bc, $7261
    ld h, l
    ld h, c

jr_01c_6d4e:
    jr nz, jr_01c_6db9

    ld [hl], e
    jr nz, jr_01c_6dc6

    ld l, l
    ld h, c
    ld l, h
    ld l, h

jr_01c_6d57:
    ld l, $03
    nop
    ld b, a
    ld l, a
    ld l, a
    ld h, h

jr_01c_6d5e:
    ld l, $20
    ld d, d
    ld h, l

jr_01c_6d62:
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld h, l
    jr nz, jr_01c_6de1

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01c_6d6b:
    ld bc, $6574
    ld h, e
    ld l, b
    ld l, [hl]
    ld l, c
    ld [hl], c
    ld [hl], l
    ld h, l
    jr nz, jr_01c_6deb

    ld l, a

jr_01c_6d78:
    jr nz, jr_01c_6de1

    ld h, l

jr_01c_6d7b:
    ld [hl], h

jr_01c_6d7c:
    ld bc, $6c63
    ld l, a
    ld [hl], e
    ld h, l
    ld [hl], d
    jr nz, jr_01c_6df9

    ld l, a
    jr nz, jr_01c_6dfc

    ld l, b
    ld h, l
    jr nz, jr_01c_6dfc

    ld l, c
    ld l, [hl]
    ld l, $03

jr_01c_6d90:
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$7b

jr_01c_6d97:
    ld l, a
    ld [hl], l
    ld l, $00
    ld b, h
    ld l, a
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_01c_6e0e

    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_01c_6e1c

    ld l, b
    ld h, l

jr_01c_6daa:
    ld bc, $6173
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    ld a, [hl-]
    jr nz, jr_01c_6dd6

    ld d, b
    ld [hl], l

jr_01c_6db6:
    ld [hl], h
    ld [hl], h
    ld l, c

jr_01c_6db9:
    ld l, [hl]
    ld h, a
    ld bc, $6168
    ld [hl], e
    jr nz, jr_01c_6e2f

    ld l, a
    jr nz, jr_01c_6e2a

    ld l, a
    ld [hl], d

jr_01c_6dc6:
    ld l, l
    ccf
    ld [hl+], a
    nop
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_01c_6e3b

    ld h, c
    db $76
    ld h, l

jr_01c_6dd6:
    jr nz, @+$76

    ld l, a
    ld bc, $6572
    ld h, c
    ld h, e
    ld l, b
    jr nz, jr_01c_6e55

jr_01c_6de1:
    ld l, b
    ld h, l
    jr nz, @+$65

    ld [hl], l
    ld [hl], b
    ld l, $01
    ld c, c
    ld [hl], h

jr_01c_6deb:
    daa
    ld l, h
    ld l, h
    jr nz, jr_01c_6e5e

    ld h, l
    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_01c_6e69

    ld l, c
    ld l, [hl]
    ld l, e

jr_01c_6df9:
    inc l
    jr nz, @+$71

jr_01c_6dfc:
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld [hl], a
    ld l, c
    ld [hl], e
    ld h, l
    ld l, $03
    nop
    ld c, c
    ld [hl], h
    jr nz, jr_01c_6e78

    ld h, l
    ld h, c
    ld l, [hl]

jr_01c_6e0e:
    ld [hl], e
    jr nz, jr_01c_6e85

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01c_6e8a

    ld l, a
    ld bc, $6973
    ld l, [hl]
    ld l, e

jr_01c_6e1c:
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01c_6e84

    ld h, c
    ld l, h
    ld l, h
    inc l
    ld bc, $6e61
    ld a, c

jr_01c_6e2a:
    jr nz, @+$68

    ld l, a
    ld [hl], d
    ld l, l

jr_01c_6e2f:
    jr nz, @+$6b

    ld [hl], e
    jr nz, @+$68

    ld l, c
    ld l, [hl]
    ld h, l
    ld l, $03
    nop
    ld d, h

jr_01c_6e3b:
    ld l, b
    ld h, l
    jr nz, jr_01c_6ea0

    ld [hl], d
    ld [hl], d
    ld l, a
    ld [hl], a
    ld [hl], e
    jr nz, jr_01c_6eb5

    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, @+$69

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_01c_6ec3

    ld l, a
    ld l, c

jr_01c_6e55:
    ld l, [hl]
    ld [hl], h
    ld bc, $6f64
    ld [hl], a
    ld l, [hl]
    ld l, b
    ld l, c

jr_01c_6e5e:
    ld l, h
    ld l, h
    ld l, $02
    ld d, d
    ld h, l
    ld h, c
    ld h, h
    jr nz, jr_01c_6edc

    ld l, b

jr_01c_6e69:
    ld h, l
    jr nz, @+$63

    ld [hl], d
    ld [hl], d
    ld l, a
    ld [hl], a
    ld [hl], e
    jr nz, jr_01c_6ee7

    ld l, a
    ld bc, $6573
    ld h, l

jr_01c_6e78:
    jr nz, jr_01c_6ef1

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01c_6ee6

jr_01c_6e84:
    ld h, c

jr_01c_6e85:
    ld l, h
    ld l, h
    ld bc, $6977

jr_01c_6e8a:
    ld l, h
    ld l, h
    jr nz, @+$74

    ld l, a
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld b, d
    ld h, c
    ld l, h
    ld l, h
    ld [hl], e
    jr nz, @+$74

    ld l, a
    ld l, h
    ld l, h
    jr nz, @+$66

jr_01c_6ea0:
    ld l, a
    ld [hl], a
    ld l, [hl]
    ld l, b
    ld l, c
    ld l, h
    ld l, h
    ld bc, $7571
    ld l, c
    ld h, e
    ld l, e
    ld l, h
    ld a, c
    inc l
    jr nz, jr_01c_6f25

    ld l, a
    jr nz, jr_01c_6f25

jr_01c_6eb5:
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld bc, $6f73
    ld h, [hl]
    ld [hl], h
    ld l, h
    ld a, c
    ld l, $02
    ld c, c
    ld h, [hl]

jr_01c_6ec3:
    jr nz, jr_01c_6f3e

    ld l, a
    ld [hl], l
    jr nz, jr_01c_6f2c

    ld h, c
    ld l, [hl]
    inc l
    jr nz, jr_01c_6f36

    ld l, c
    ld [hl], h
    jr nz, jr_01c_6f3b

    ld [hl], h
    ld bc, $6168
    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_01c_6f53

jr_01c_6edc:
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01c_6f51

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]

jr_01c_6ee6:
    ld h, a

jr_01c_6ee7:
    ld bc, $7075
    ld l, b
    ld l, c
    ld l, h
    ld l, h
    ld hl, $0003

jr_01c_6ef1:
    ld c, l
    ld a, c
    jr nz, jr_01c_6f59

    ld [hl], d
    ld h, l
    ld h, c
    ld l, l
    jr nz, jr_01c_6f64

    ld [hl], e
    jr nz, @+$76

    ld l, a
    jr nz, jr_01c_6f78

    ld l, c
    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, jr_01c_6f4c

    ld l, h
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
    ld l, $02
    ld b, d
    ld h, l
    ld h, e
    ld l, a
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_6f66

    ld l, h
    ld [hl], l

jr_01c_6f25:
    ld h, d
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b

jr_01c_6f2c:
    jr nz, jr_01c_6f97

    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $7267

jr_01c_6f36:
    ld h, l
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], e

jr_01c_6f3b:
    ld [hl], h
    jr nz, @+$6a

jr_01c_6f3e:
    ld l, a
    ld l, [hl]
    ld l, a
    ld [hl], d
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_01c_6fbe

    ld h, c

jr_01c_6f4c:
    ld a, c
    jr nz, @+$4f

    ld h, c
    ld [hl], d

jr_01c_6f51:
    ld l, c
    ld l, a

jr_01c_6f53:
    daa
    ld [hl], e
    ld bc, $7570
    ld [hl], h

jr_01c_6f59:
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_6fc8

    ld [hl], e
    ld bc, $6e75
    ld h, d

jr_01c_6f64:
    ld h, l
    ld l, h

jr_01c_6f66:
    ld l, c
    ld h, l
    db $76
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    ld hl, $4902
    ld h, [hl]
    jr nz, jr_01c_6fe2

    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, jr_01c_6fc1

jr_01c_6f78:
    jr nz, @+$65

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    ld bc, $7570
    ld [hl], h
    ld [hl], h
    jr nz, jr_01c_6ff1

    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_01c_6fd7

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, $2e
    ld l, $01
    ld c, c
    daa
    ld h, h
    jr nz, @+$6e

jr_01c_6f97:
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_01c_700a

    ld a, c
    jr nz, jr_01c_7013

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    ld hl, $0003
    ld c, [hl]
    ld h, l
    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_01c_7023

    ld [hl], b
    inc l
    jr nz, jr_01c_7020

    ld h, l
    db $76
    ld h, l
    ld [hl], d
    jr nz, @+$6b

    ld l, [hl]
    ld bc, $202d
    ld h, e
    ld l, h

jr_01c_6fbe:
    ld l, c
    ld l, l
    ld h, d

jr_01c_6fc1:
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01c_702f

    ld l, c

jr_01c_6fc8:
    ld l, h
    ld l, h
    ld bc, $6f74
    jr nz, jr_01c_7041

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    jr nz, jr_01c_7049

    ld l, b
    ld h, l

jr_01c_6fd7:
    jr nz, jr_01c_7049

    ld l, c
    ld l, [hl]
    ld hl, $0003
    ld c, b
    ld h, l
    jr nz, jr_01c_7059

jr_01c_6fe2:
    ld h, c
    ld [hl], e
    jr nz, jr_01c_7059

    ld [hl], h
    ld h, l
    ld [hl], b
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $766f
    ld h, l

jr_01c_6ff1:
    ld [hl], d
    jr nz, jr_01c_7061

    ld a, c
    jr nz, jr_01c_7067

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $696c
    ld l, [hl]
    ld h, l
    ld hl, $4902
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01c_706c

jr_01c_700a:
    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01c_7085

    ld l, b
    ld h, c

jr_01c_7013:
    ld l, [hl]
    ld bc, $7473
    ld h, l
    ld [hl], b
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$71

    ld l, [hl]

jr_01c_7020:
    jr nz, jr_01c_708b

    ld [hl], h

jr_01c_7023:
    inc l
    ld bc, $7562
    ld [hl], h
    jr nz, @+$79

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01c_709c

jr_01c_702f:
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld [hl], d
    ld [hl], e
    ld hl, $0003
    ld c, b
    ld [hl], l
    ld l, b
    ccf
    jr nz, @+$4b

    ld h, [hl]
    jr nz, jr_01c_70ba

jr_01c_7041:
    ld l, a
    ld [hl], l
    jr nz, jr_01c_70bc

    ld h, c
    ld l, [hl]
    ld [hl], h
    inc l

jr_01c_7049:
    ld bc, $2749
    ld l, h
    ld l, h
    jr nz, @+$6f

    ld l, a
    db $76
    ld h, l
    jr nz, jr_01c_70c2

    ld a, c
    jr nz, @+$6f

    ld h, c

jr_01c_7059:
    ld [hl], d
    ld l, e
    ld h, l
    ld [hl], d
    ld l, $03
    nop
    ld d, a

jr_01c_7061:
    ld l, b
    ld l, a
    daa
    ld [hl], e
    jr nz, jr_01c_70cb

jr_01c_7067:
    ld [hl], d
    ld h, c
    ld h, a
    ld h, a
    ld l, c

jr_01c_706c:
    ld l, [hl]
    ld h, a
    jr nz, @+$76

    ld l, b
    ld h, l
    ld l, c
    ld [hl], d
    ld bc, $6566
    ld h, l
    ld [hl], h
    jr nz, jr_01c_70dc

    ld [hl], e
    jr nz, jr_01c_70f2

    ld l, b
    ld h, l
    ld a, c
    jr nz, @+$79

    ld h, c
    ld l, h

jr_01c_7085:
    ld l, e
    ld bc, $6e6f
    jr nz, jr_01c_70ff

jr_01c_708b:
    ld l, b
    ld h, l
    jr nz, @+$69

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ccf
    ld [bc], a
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$6a

    ld h, c
    db $76

jr_01c_709c:
    ld h, l
    jr nz, jr_01c_7113

    ld l, a
    jr nz, jr_01c_7108

    ld l, c
    ld a, b
    ld bc, $6e61
    ld a, c
    jr nz, jr_01c_710e

    ld h, c
    ld l, l
    ld h, c
    ld h, a
    ld h, l
    jr nz, @+$66

    ld l, a
    ld l, [hl]
    ld h, l
    ld bc, $7962
    jr nz, jr_01c_7132

    ld l, a

jr_01c_70ba:
    ld [hl], l
    ld [hl], d

jr_01c_70bc:
    jr nz, jr_01c_7131

    ld [hl], b
    ld l, c
    ld l, e
    ld h, l

jr_01c_70c2:
    ld [hl], e
    ld hl, $0003
    ld c, c
    jr nz, jr_01c_712d

    ld l, a
    ld l, [hl]

jr_01c_70cb:
    daa
    ld [hl], h
    jr nz, jr_01c_7136

    ld h, l
    ld [hl], h
    jr nz, @+$76

    ld l, a
    jr nz, jr_01c_7146

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld bc, $6966

jr_01c_70dc:
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, @+$75

    ld l, a
    ld l, $2e
    ld l, $02
    ld d, a
    ld h, c
    ld l, c
    ld [hl], h
    jr nz, jr_01c_714e

    jr nz, jr_01c_7162

    ld h, l
    ld h, e
    ld l, a

jr_01c_70f2:
    ld l, [hl]
    ld h, h
    inc l
    ld bc, $656c
    ld [hl], h
    jr nz, jr_01c_7168

    ld h, l
    jr nz, @+$6f

    ld h, c

jr_01c_70ff:
    ld [hl], d
    ld l, e
    ld bc, $796d
    jr nz, jr_01c_7168

    ld h, c
    ld l, h

jr_01c_7108:
    ld l, h
    ld l, $03
    nop
    ld e, c
    ld l, a

jr_01c_710e:
    ld [hl], l
    jr nz, jr_01c_7181

    ld l, h
    ld h, c

jr_01c_7113:
    ld a, c
    jr nz, jr_01c_717d

    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_01c_7184

    ld l, [hl]
    ld bc, $7267
    ld l, a
    ld [hl], l
    ld [hl], b
    ld [hl], e
    inc l
    jr nz, jr_01c_7199

    ld l, a
    jr nz, jr_01c_718d

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h

jr_01c_712d:
    ld bc, $6d69
    ld [hl], b

jr_01c_7131:
    ld l, a

jr_01c_7132:
    ld [hl], e
    ld h, l
    jr nz, jr_01c_71a5

jr_01c_7136:
    ld l, [hl]
    jr nz, jr_01c_71a8

    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld [hl], e
    ld hl, $4902
    ld h, [hl]
    jr nz, jr_01c_71bd

    ld l, a
    ld [hl], l

jr_01c_7146:
    jr nz, jr_01c_71b2

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01c_71bf

    ld h, l

jr_01c_714e:
    ld h, c
    ld h, h
    ld bc, $6874
    ld h, l
    jr nz, @+$6e

    ld l, c
    ld l, [hl]
    ld h, l
    ld [hl], e
    inc l
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld bc, $6f77

jr_01c_7162:
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$76

    ld h, c

jr_01c_7168:
    ld l, e
    ld h, l
    jr nz, jr_01c_71df

    ld l, a
    jr nz, @+$6e

    ld l, a
    ld l, [hl]
    ld h, a
    ld l, $03
    nop
    ld c, b
    ld h, c
    db $76
    ld h, l
    jr nz, jr_01c_71f4

    ld l, a
    ld [hl], l

jr_01c_717d:
    ld [hl], d
    jr nz, jr_01c_71e8

    ld h, c

jr_01c_7181:
    ld l, [hl]
    ld h, h
    ld [hl], e

jr_01c_7184:
    jr nz, jr_01c_71eb

    db $76
    ld h, l
    ld [hl], d
    ld bc, $7571
    ld l, c

jr_01c_718d:
    ld [hl], h
    jr nz, jr_01c_7207

    ld l, a
    ld [hl], d
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$79

    ld l, b

jr_01c_7199:
    ld h, l
    ld l, [hl]
    ld bc, $6461
    ld h, h
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    ld l, c
    ld l, [hl]

jr_01c_71a5:
    ld h, a
    jr nz, @+$63

jr_01c_71a8:
    jr nz, jr_01c_721a

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ccf
    inc bc
    nop
    ld d, a
    ld l, b

jr_01c_71b2:
    ld a, c
    jr nz, @+$63

    ld [hl], d
    ld h, l
    jr nz, jr_01c_7226

    ld a, c
    jr nz, jr_01c_7224

    ld h, c

jr_01c_71bd:
    ld l, [hl]
    ld h, h

jr_01c_71bf:
    ld [hl], e
    ld bc, $6873
    ld h, c
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    ccf
    ld [bc], a
    ld d, e
    ld l, b
    ld h, c
    ld l, e
    ld a, c
    jr nz, jr_01c_7239

    ld h, c
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, jr_01c_724e

    ld l, b
    ld h, l
    ld l, [hl]
    ld bc, $7570
    ld [hl], h
    ld [hl], h

jr_01c_71df:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_724d

    ld [hl], e
    jr nz, jr_01c_724a

    ld h, c

jr_01c_71e8:
    ld l, h
    ld l, h
    ld h, l

jr_01c_71eb:
    ld h, h
    ld bc, $6979
    ld [hl], b
    ld [hl], e
    inc l
    jr nz, jr_01c_7256

jr_01c_71f4:
    ld [hl], l
    ld [hl], h
    jr nz, jr_01c_7265

    ld h, l
    ccf
    ld hl, $033f
    nop
    ld c, c
    jr nz, jr_01c_7269

    ld h, c
    db $76
    ld h, l
    jr nz, @+$76

    ld l, b

jr_01c_7207:
    ld h, l
    jr nz, jr_01c_7272

    ld h, c
    ld h, d
    ld l, c
    ld [hl], h
    ld bc, $666f
    jr nz, @+$70

    ld l, a
    ld [hl], h
    jr nz, jr_01c_7287

    ld h, c
    ld a, c
    ld l, c

jr_01c_721a:
    ld l, [hl]
    ld h, a
    ld bc, $7461
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, c

jr_01c_7224:
    ld l, a
    ld l, [hl]

jr_01c_7226:
    jr nz, jr_01c_729c

    ld l, a
    jr nz, jr_01c_7298

    ld a, c
    ld [bc], a
    ld [hl], b
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, $20
    ld c, c
    daa
    db $76
    ld h, l
    jr nz, jr_01c_729a

jr_01c_7239:
    ld l, h
    ld [hl], d
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    ld bc, $6f6c
    ld [hl], e
    ld [hl], h
    jr nz, jr_01c_7279

    jr nz, jr_01c_72bb

    ld [hl], h
    ld [hl], d

jr_01c_724a:
    ld l, a
    ld l, e
    ld h, l

jr_01c_724d:
    ld [hl], e

jr_01c_724e:
    ld bc, $6562
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l

jr_01c_7256:
    jr nz, jr_01c_72c7

    ld h, [hl]
    jr nz, jr_01c_72c4

    ld [hl], h
    ld hl, $0003
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01c_72d7

    ld h, c

jr_01c_7265:
    ld a, c
    jr nz, jr_01c_72d0

    ld h, c

jr_01c_7269:
    ld l, h
    ld h, [hl]
    jr nz, jr_01c_72dc

    ld h, [hl]
    ld bc, $6f79
    ld [hl], l

jr_01c_7272:
    ld [hl], d
    jr nz, jr_01c_72e8

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l

jr_01c_7279:
    jr nz, jr_01c_72de

    ld l, a
    ld l, l
    ld h, l
    ld [hl], e
    ld bc, $7266
    ld l, a
    ld l, l
    jr nz, jr_01c_72f6

    ld [hl], l

jr_01c_7287:
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $02
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h

jr_01c_7298:
    jr nz, jr_01c_730d

jr_01c_729a:
    ld [hl], b
    ld h, l

jr_01c_729c:
    ld l, [hl]
    ld h, h
    ld bc, $7361
    jr nz, @+$6f

    ld [hl], l
    ld h, e
    ld l, b
    jr nz, jr_01c_731c

    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_01c_731c

    ld l, [hl]
    ld bc, $7570
    ld [hl], h
    ld [hl], h
    ld [hl], e
    jr nz, jr_01c_7317

    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, l

jr_01c_72bb:
    jr nz, @+$72

    ld [hl], d
    ld l, a
    ld [hl], e
    ld hl, $0003
    ld c, [hl]

jr_01c_72c4:
    ld h, l
    db $76
    ld h, l

jr_01c_72c7:
    ld [hl], d
    jr nz, jr_01c_733f

    ld [hl], b
    inc l
    jr nz, @+$70

    ld h, l
    db $76

jr_01c_72d0:
    ld h, l
    ld [hl], d
    ld bc, $6e69
    ld l, $20

jr_01c_72d7:
    ld c, [hl]
    ld l, a
    jr nz, jr_01c_7348

    ld h, c

jr_01c_72dc:
    ld [hl], h
    ld [hl], h

jr_01c_72de:
    ld h, l
    ld [hl], d
    jr nz, jr_01c_734a

    ld l, a
    ld [hl], a
    ld bc, $6f67
    ld l, a

jr_01c_72e8:
    ld h, h
    jr nz, jr_01c_7358

    ld a, c
    jr nz, jr_01c_735e

    ld [hl], l
    ld [hl], h
    ld [hl], h
    jr nz, @+$6b

    ld [hl], e
    inc l
    ld [bc], a

jr_01c_72f6:
    ld c, c
    jr nz, @+$65

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01c_7372

    ld h, l
    ld h, l
    ld l, l
    jr nz, @+$76

    ld l, a
    ld bc, $6572
    ld h, c
    ld h, e
    ld l, b
    jr nz, jr_01c_7381

jr_01c_730d:
    ld l, b
    ld h, l
    jr nz, jr_01c_7374

    ld [hl], l
    ld [hl], b
    ld hl, $0003
    ld d, h

jr_01c_7317:
    ld l, b
    ld h, l
    jr nz, jr_01c_7383

    ld h, c

jr_01c_731c:
    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_01c_7396

    ld l, b
    ld h, l
    ld bc, $6f63
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    inc l
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01c_739a

    ld h, c
    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d
    ld bc, $6874
    ld h, l
    jr nz, @+$69

    ld [hl], d
    ld h, l

jr_01c_733f:
    ld h, l
    ld l, [hl]
    ld [hl], e
    ld l, $02
    ld c, c
    jr nz, jr_01c_73b1

    ld [hl], l

jr_01c_7348:
    ld [hl], e
    ld [hl], h

jr_01c_734a:
    jr nz, jr_01c_73af

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $6e75
    ld h, h
    ld h, l
    ld [hl], d
    ld [hl], e
    ld [hl], h

jr_01c_7358:
    ld h, c
    ld l, [hl]
    ld h, h
    ld bc, $6f63

jr_01c_735e:
    ld l, l
    ld [hl], b
    ld l, h
    ld l, c
    ld h, e
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, @+$6e

    ld l, c
    ld l, [hl]
    ld h, l
    ld [hl], e
    ld l, $03
    nop
    ld d, b
    ld [hl], l

jr_01c_7372:
    ld [hl], h
    ld [hl], h

jr_01c_7374:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_73ee

    ld [hl], b
    jr nz, jr_01c_73dd

    ld l, [hl]
    ld h, h
    ld bc, $6361

jr_01c_7381:
    ld [hl], d
    ld l, a

jr_01c_7383:
    ld [hl], e
    ld [hl], e
    jr nz, jr_01c_73e8

    jr nz, jr_01c_73fc

    ld l, h
    ld l, a
    ld [hl], b
    ld h, l
    ld bc, $7369
    jr nz, jr_01c_7406

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b

jr_01c_7396:
    ld l, $02
    ld c, c
    ld h, [hl]

jr_01c_739a:
    jr nz, @+$4b

    jr nz, jr_01c_7401

    ld h, c
    ld l, [hl]
    inc l
    jr nz, @+$4b

    jr nz, jr_01c_741c

    ld h, c
    ld l, [hl]
    ld [hl], h
    ld bc, $796d
    jr nz, jr_01c_7422

    ld [hl], b
    ld l, b

jr_01c_73af:
    ld l, c
    ld l, h

jr_01c_73b1:
    ld l, h
    jr nz, jr_01c_7424

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld [hl], e
    ld bc, $6f74
    jr nz, jr_01c_741f

    ld h, l
    jr nz, jr_01c_7433

    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01c_743d

    ld h, l
    ld [hl], d
    ld [hl], e
    ld l, a
    ld l, [hl]
    daa
    ld [hl], e
    jr nz, jr_01c_7446

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld bc, $6564
    ld [hl], b

jr_01c_73dd:
    ld h, l
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, jr_01c_7452

    ld l, [hl]
    jr nz, jr_01c_745a

    ld l, b
    ld h, l

jr_01c_73e8:
    ld l, c
    ld [hl], d
    ld bc, $6570
    ld [hl], d

jr_01c_73ee:
    ld [hl], e
    ld l, a
    ld l, [hl]
    ld h, c
    ld l, h
    ld l, c
    ld [hl], h
    ld a, c
    ld l, $02
    ld b, c
    ld h, a
    ld h, a
    ld [hl], d

jr_01c_73fc:
    ld h, l
    ld [hl], e
    ld [hl], e
    ld l, c
    db $76

jr_01c_7401:
    ld h, l
    jr nz, @+$72

    ld h, l
    ld l, a

jr_01c_7406:
    ld [hl], b
    ld l, h
    ld h, l
    ld bc, $6f62
    ld [hl], l
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01c_747b

    ld l, [hl]
    jr nz, jr_01c_747b

    ld [hl], d
    ld l, a
    ld l, l
    ld bc, $6874
    ld h, l

jr_01c_741c:
    jr nz, jr_01c_7484

    ld h, c

jr_01c_741f:
    ld [hl], d
    jr nz, @+$6e

jr_01c_7422:
    ld l, c
    ld [hl], b

jr_01c_7424:
    ld l, $03
    nop
    ld d, b
    ld h, l
    ld l, a
    ld [hl], b
    ld l, h
    ld h, l
    jr nz, jr_01c_74a6

    ld l, b
    ld l, a
    jr nz, @+$72

jr_01c_7433:
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld bc, $6874
    ld h, l
    jr nz, jr_01c_74a1

    ld a, b

jr_01c_743d:
    ld h, c
    ld h, e
    ld [hl], h
    jr nz, jr_01c_74a6

    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c

jr_01c_7446:
    ld l, [hl]
    ld h, e
    ld h, l
    ld bc, $6f74
    jr nz, jr_01c_74c2

    ld l, b
    ld h, l
    jr nz, jr_01c_74b5

jr_01c_7452:
    ld [hl], l
    ld [hl], b
    jr nz, @+$63

    ld [hl], d
    ld h, l
    ld [bc], a
    ld [hl], b

jr_01c_745a:
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_74cf

    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld [hl], e
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01c_74d5

    ld l, c
    ld l, [hl]
    ld h, c
    ld l, h
    jr nz, @+$74

    ld l, a
    ld l, h
    ld l, h
    ld bc, $6162

jr_01c_747b:
    ld [hl], d
    ld h, l
    ld l, h
    ld a, c
    jr nz, jr_01c_74e4

    ld h, c
    ld [hl], d
    ld [hl], d

jr_01c_7484:
    ld l, c
    ld h, l
    ld [hl], e
    jr nz, jr_01c_74f2

    ld [hl], h
    jr nz, jr_01c_74f5

    ld l, [hl]
    ld l, $03
    nop
    ld d, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_01c_7506

    ld h, l
    ld l, a
    ld [hl], b
    ld l, h
    ld h, l
    jr nz, jr_01c_7512

    ld [hl], e
    ld h, l
    jr nz, @+$63

jr_01c_74a1:
    ld bc, $7570
    ld [hl], h
    ld [hl], h

jr_01c_74a6:
    ld h, l
    ld [hl], d
    jr nz, jr_01c_7510

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01c_751d

    ld h, l
    ld h, c
    ld [hl], d
    ld bc, $6874

jr_01c_74b5:
    ld h, l
    jr nz, jr_01c_751f

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    inc l
    jr nz, jr_01c_7521

    ld [hl], l
    ld [hl], h
    ld [bc], a

jr_01c_74c2:
    ld h, h
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01c_7535

    ld [hl], e
    jr nz, jr_01c_7543

jr_01c_74cf:
    ld l, b
    ld h, l
    jr nz, jr_01c_7543

    ld [hl], d
    ld l, a

jr_01c_74d5:
    ld h, d
    ld l, h
    ld h, l
    ld l, l
    ld l, $03
    nop
    ld b, l
    ld a, b
    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, c
    ld h, l
    ld l, [hl]

jr_01c_74e4:
    ld h, e
    ld h, l
    jr nz, jr_01c_755c

    ld h, l
    ld l, h
    ld l, h
    ld [hl], e
    ld bc, $6c61
    ld l, h
    jr nz, jr_01c_7569

jr_01c_74f2:
    ld l, b
    ld h, l
    ld l, [hl]

jr_01c_74f5:
    jr nz, jr_01c_7560

    ld [hl], h
    jr nz, jr_01c_755d

    ld l, a
    ld l, l
    ld h, l
    ld [hl], e
    ld bc, $6f74
    jr nz, jr_01c_7576

    ld l, h
    ld l, a
    ld [hl], b

jr_01c_7506:
    ld h, l
    ld h, h
    jr nz, jr_01c_757a

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld [hl], e
    ld l, $03

jr_01c_7510:
    nop
    ld b, l

jr_01c_7512:
    db $76
    ld h, l
    ld l, [hl]
    jr nz, @+$63

    ld h, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01c_758a

jr_01c_751d:
    ld h, c
    ld l, e

jr_01c_751f:
    ld l, c
    ld l, [hl]

jr_01c_7521:
    ld h, a
    ld bc, $7247
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01c_756d

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    inc l
    ld bc, $6f79

jr_01c_7535:
    ld [hl], l
    ld [hl], d
    jr nz, jr_01c_75a0

    ld l, a
    ld h, c
    ld l, h
    jr nz, jr_01c_75ad

    ld h, [hl]
    ld [bc], a
    ld h, h
    ld h, l
    ld h, [hl]

jr_01c_7543:
    ld h, l
    ld h, c
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$4f

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld bc, $7473
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01c_75c3

    ld l, c
    ld h, l
    ld [hl], e
    jr nz, jr_01c_75be

jr_01c_755c:
    ld h, l

jr_01c_755d:
    ld h, [hl]
    ld l, a
    ld [hl], d

jr_01c_7560:
    ld h, l
    ld bc, $6f79
    ld [hl], l
    ld l, $03
    nop
    ld d, h

jr_01c_7569:
    ld l, b
    ld h, l
    jr nz, jr_01c_75e2

jr_01c_756d:
    ld l, [hl]
    ld h, h
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]

jr_01c_7576:
    ld [hl], e
    jr nz, @+$71

    ld l, [hl]

jr_01c_757a:
    ld bc, $7267
    ld h, l
    ld h, l
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01c_75f2

    ld l, [hl]
    jr nz, jr_01c_75d6

    ld h, l
    ld h, c
    ld h, e
    ld l, b

jr_01c_758a:
    daa
    ld [hl], e
    ld bc, $6f63
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    jr nz, jr_01c_75f6

    ld [hl], d
    ld h, l
    jr nz, jr_01c_7601

    ld [hl], l
    ld h, a
    ld h, l
    ld l, $03
    nop
    ld b, h

jr_01c_75a0:
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01c_761a

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_01c_7625

    ld l, a

jr_01c_75ad:
    ld [hl], l
    daa
    db $76
    ld h, l
    ld bc, $616d
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld h, l
    ld h, h
    jr nz, jr_01c_7623

    ld l, a
    ld l, h

jr_01c_75be:
    ld h, [hl]
    jr nz, jr_01c_762b

    ld [hl], l
    ld [hl], e

jr_01c_75c3:
    ld [hl], h
    ld bc, $6562
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_01c_7647

    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    ld [bc], a
    ld b, a
    ld [hl], d

jr_01c_75d6:
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, $20
    ld b, a

jr_01c_75e2:
    ld l, a
    ld l, h
    ld h, [hl]
    daa
    ld [hl], e
    ld bc, $6e61
    jr nz, jr_01c_7651

    ld l, [hl]
    ld h, h
    ld l, h
    ld h, l
    ld [hl], e
    ld [hl], e

jr_01c_75f2:
    jr nz, jr_01c_7656

    ld h, c
    ld [hl], h

jr_01c_75f6:
    ld [hl], h
    ld l, h
    ld h, l
    ld bc, $6977
    ld [hl], h
    ld l, b
    jr nz, jr_01c_7674

    ld l, b

jr_01c_7601:
    ld h, l
    jr nz, jr_01c_7669

    ld l, h
    ld h, l
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    ld l, $03
    nop
    ld c, c
    ld l, [hl]
    jr nz, jr_01c_7679

    ld l, a
    ld l, h
    ld h, [hl]
    inc l
    jr nz, jr_01c_767b

    ld l, a
    ld [hl], l

jr_01c_761a:
    ld [hl], d
    ld [hl], e
    ld h, l
    ld bc, $6f63
    ld l, [hl]
    ld h, h
    ld l, c

jr_01c_7623:
    ld [hl], h
    ld l, c

jr_01c_7625:
    ld l, a
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01c_768d

    ld l, b

jr_01c_762b:
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld bc, $6564
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_76aa

    ld l, [hl]
    jr nz, jr_01c_76b5

    ld l, c
    ld l, [hl]
    ld h, h
    ld [bc], a
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01c_76b7

jr_01c_7647:
    ld l, c
    ld l, [hl]
    jr nz, jr_01c_76bb

    ld l, a
    ld [hl], e
    ld l, c
    ld [hl], h
    ld l, c
    ld l, a

jr_01c_7651:
    ld l, [hl]
    ld l, $01
    ld e, c
    ld l, a

jr_01c_7656:
    ld [hl], l
    jr nz, @+$70

    ld h, l
    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_01c_76c6

    ld h, l
    ld [hl], h
    jr nz, jr_01c_76d7

    ld l, b
    ld h, l
    ld bc, $6173
    ld l, l

jr_01c_7669:
    ld h, l
    jr nz, jr_01c_76db

    ld l, [hl]
    ld h, l
    ld [hl], e
    jr nz, jr_01c_76e5

    ld [hl], a
    ld l, c
    ld h, e

jr_01c_7674:
    ld h, l
    ld l, $03
    nop
    ld e, c

jr_01c_7679:
    ld l, a
    ld [hl], l

jr_01c_767b:
    jr nz, @+$65

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01c_76f2

    db $76
    ld h, l
    ld [hl], d
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    ld bc, $6e75

jr_01c_768d:
    ld h, h
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_01c_76fd

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld [hl], e
    ld bc, $6977
    ld [hl], h
    ld l, b
    jr nz, jr_01c_7712

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_770b

jr_01c_76aa:
    ld l, h
    ld l, a
    ld l, [hl]
    ld h, l
    ld l, $02
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01c_771d

jr_01c_76b5:
    ld h, c
    db $76

jr_01c_76b7:
    ld h, l
    jr nz, jr_01c_772e

    ld l, a

jr_01c_76bb:
    jr nz, jr_01c_771f

    ld h, l
    ld bc, $6261
    ld l, h
    ld h, l
    jr nz, jr_01c_7739

    ld l, a

jr_01c_76c6:
    jr nz, jr_01c_7738

    ld l, a
    ld [hl], e
    ld l, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $7469
    jr nz, @+$71

    ld l, [hl]
    jr nz, jr_01c_774b

jr_01c_76d7:
    ld l, b
    ld h, l
    jr nz, jr_01c_7742

jr_01c_76db:
    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $03
    nop
    ld c, c
    daa
    ld l, l

jr_01c_76e5:
    jr nz, jr_01c_7755

    ld l, a
    jr nz, jr_01c_7757

    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01c_775d

    ld l, c

jr_01c_76f2:
    ld l, e
    ld h, l
    ld bc, $614d
    ld [hl], d
    ld l, c
    ld l, a
    inc l
    jr nz, jr_01c_775f

jr_01c_76fd:
    ld [hl], l
    ld [hl], h
    jr nz, jr_01c_776e

    ld a, c
    ld bc, $7570
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    daa

jr_01c_770b:
    ld [hl], e
    jr nz, jr_01c_7775

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h

jr_01c_7712:
    ld hl, $4802
    ld l, a
    ld [hl], a
    jr nz, jr_01c_777a

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h

jr_01c_771d:
    jr nz, @+$6b

jr_01c_771f:
    ld [hl], h
    ccf
    ld bc, $6957
    ld l, h
    ld l, h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_01c_77a0

    ld h, c
    ld l, e

jr_01c_772e:
    ld h, l
    ld bc, $656d
    jr nz, jr_01c_77a3

    ld l, [hl]
    ccf
    nop
    ld b, h

jr_01c_7738:
    ld l, c

jr_01c_7739:
    ld h, h
    jr nz, jr_01c_77b5

    ld l, a
    ld [hl], l
    jr nz, @+$79

    ld l, c
    ld l, [hl]

jr_01c_7742:
    ld bc, $6874
    ld h, l
    jr nz, jr_01c_7753

    ld bc, $6c43

jr_01c_774b:
    ld [hl], l
    ld h, d
    jr nz, jr_01c_77a3

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]

jr_01c_7753:
    ld h, c
    ld l, l

jr_01c_7755:
    ld h, l
    ld l, [hl]

jr_01c_7757:
    ld [hl], h
    ccf
    nop
    ld b, h
    ld l, c
    ld h, h

jr_01c_775d:
    jr nz, @+$7b

jr_01c_775f:
    ld l, a
    ld [hl], l
    jr nz, jr_01c_77d3

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_01c_77d2

    ld l, [hl]
    ld bc, $6874
    ld h, l

jr_01c_776e:
    jr nz, jr_01c_777b

    ld bc, $6c43
    ld [hl], l
    ld h, d

jr_01c_7775:
    jr nz, jr_01c_77cb

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01c_777a:
    ld l, [hl]

jr_01c_777b:
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ccf
    nop
    ld c, b
    ld l, l
    ld [hl], b
    ld l, b
    ld hl, $5420
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01c_7805

    ld l, b
    ld l, a
    ccf
    inc bc
    nop
    ld c, b
    ld l, a
    ld [hl], a
    jr nz, jr_01c_77f9

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_01c_7807

    ld [hl], h
    ccf

jr_01c_77a0:
    jr nz, jr_01c_77e5

    ld h, c

jr_01c_77a3:
    ld l, [hl]
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01c_781e

    ld h, c
    ld l, e
    ld h, l
    jr nz, @+$6f

    ld h, l
    jr nz, jr_01c_7821

    ld l, [hl]
    ccf
    nop

jr_01c_77b5:
    ld c, c
    jr nz, @+$76

    ld l, b
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, @+$79

    ld h, l
    jr nz, jr_01c_7826

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    ld bc, $6c70
    ld h, c

jr_01c_77cb:
    ld a, c
    jr nz, @+$76

    ld l, a
    ld h, a
    ld h, l
    ld [hl], h

jr_01c_77d2:
    ld l, b

jr_01c_77d3:
    ld h, l
    ld [hl], d
    ld l, $2e
    ld l, $03
    nop
    ld c, a
    ld c, e
    ld l, $20
    ld c, h
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01c_7849

jr_01c_77e5:
    ld l, a
    jr nz, jr_01c_7851

    ld [hl], h
    ld l, $03
    nop
    ld c, c
    jr nz, jr_01c_7852

    ld h, c
    ld l, [hl]
    jr nz, jr_01c_785b

    ld l, c
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, c

jr_01c_77f9:
    ld [hl], h
    ld bc, $6963
    ld [hl], d
    ld h, e
    ld l, h
    ld h, l
    jr nz, jr_01c_783a

    jr nz, jr_01c_7879

jr_01c_7805:
    ld l, c
    ld l, l

jr_01c_7807:
    ld h, l
    ld [hl], e
    ld bc, $756f
    ld [hl], h
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_01c_7843

    jr nc, @+$30

    ld [bc], a
    ld c, c
    ld h, [hl]
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_01c_7881

    ld l, a

jr_01c_781e:
    jr nz, @+$6b

    ld [hl], h

jr_01c_7821:
    jr nz, @+$39

    jr nz, jr_01c_7894

    ld [hl], d

jr_01c_7826:
    ld bc, $6f6d
    ld [hl], d
    ld h, l
    jr nz, jr_01c_78a1

    ld l, c
    ld l, l
    ld h, l
    ld [hl], e
    inc l
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01c_78af

    ld l, c
    ld l, [hl]

jr_01c_783a:
    ld hl, $4c20
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01c_78aa

jr_01c_7843:
    ld l, a
    ld hl, $0003
    ld c, a
    ld l, l

jr_01c_7849:
    ld l, c
    ld h, a
    ld l, a
    ld [hl], e
    ld l, b
    ld hl, $4f01

jr_01c_7851:
    ld [hl], l

jr_01c_7852:
    ld [hl], h
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_01c_7861

    inc l
    jr nz, @+$7b

jr_01c_785b:
    ld l, a
    ld [hl], l
    jr nz, jr_01c_78cc

    ld h, c
    ld h, h

jr_01c_7861:
    ld h, l
    jr nz, jr_01c_786d

    ld hl, $0003
    ld b, c
    ld [hl], a
    inc l
    jr nz, @+$76

    ld l, a

jr_01c_786d:
    ld l, a
    jr nz, jr_01c_78d2

    ld h, c
    ld h, h
    ld l, $01
    ld c, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_01c_78e8

jr_01c_7879:
    ld h, [hl]
    jr nz, jr_01c_7885

    inc l
    jr nz, jr_01c_78f8

    ld l, a
    ld [hl], l

jr_01c_7881:
    jr nz, jr_01c_78f0

    ld h, c
    ld h, h

jr_01c_7885:
    ld h, l
    jr nz, jr_01c_7891

    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l

jr_01c_7891:
    jr nz, jr_01c_7906

    ld l, a

jr_01c_7894:
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6c65
    ld [hl], e
    ld h, l
    inc l

jr_01c_78a1:
    jr nz, jr_01c_78aa

    ld hl, $4e02
    ld l, a
    ld [hl], a
    jr nz, jr_01c_78f3

jr_01c_78aa:
    jr nz, jr_01c_7917

    ld l, [hl]
    ld l, a
    ld [hl], a

jr_01c_78af:
    jr nz, jr_01c_791b

    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld bc, $6f68
    ld [hl], a
    jr nz, jr_01c_7921

    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_01c_7938

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $7570
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_7935

jr_01c_78cc:
    ld [hl], e
    ld l, $03
    nop
    ld c, [hl]
    ld l, a

jr_01c_78d2:
    ld [hl], a
    jr nz, jr_01c_791e

    jr nz, jr_01c_7942

    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_01c_7946

    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld bc, $6f68
    ld [hl], a
    jr nz, jr_01c_794c

    ld l, a
    ld l, a
    ld h, h

jr_01c_78e8:
    jr nz, jr_01c_7963

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $7570

jr_01c_78f0:
    ld [hl], h
    ld [hl], h
    ld l, c

jr_01c_78f3:
    ld l, [hl]
    ld h, a
    jr nz, jr_01c_7960

    ld [hl], e

jr_01c_78f8:
    ld l, $03
    nop
    ld d, h
    ld l, a
    ld l, a
    jr nz, jr_01c_7962

    ld h, c
    ld h, h
    ld l, $20
    ld b, e
    ld l, a

jr_01c_7906:
    ld l, l
    ld h, l
    jr nz, jr_01c_796c

    ld h, c
    ld h, e
    ld l, e
    ld bc, $6661
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, @+$72

    ld [hl], d
    ld h, c

jr_01c_7917:
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e

jr_01c_791b:
    ld l, c
    ld l, [hl]
    ld h, a

jr_01c_791e:
    ld bc, $6f6d

jr_01c_7921:
    ld [hl], d
    ld h, l
    inc l
    jr nz, @+$09

    ld l, $03
    nop
    ld d, h
    ld [hl], d
    ld a, c
    jr nz, @+$63

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ccf
    nop
    ld d, b

jr_01c_7935:
    ld [hl], d
    ld h, c
    ld h, e

jr_01c_7938:
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, @+$6a

    ld h, l
    ld [hl], d
    ld h, l
    ccf

jr_01c_7942:
    nop
    ld c, e
    ld h, l
    ld h, l

jr_01c_7946:
    ld [hl], b
    jr nz, @+$72

    ld [hl], d
    ld h, c
    ld h, e

jr_01c_794c:
    ld [hl], h
    ld l, c
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, a
    ccf
    nop
    rlca
    ld bc, $7571
    ld l, c
    ld [hl], h
    jr nz, @+$72

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h

jr_01c_7960:
    ld l, c
    ld h, e

jr_01c_7962:
    ld l, c

jr_01c_7963:
    ld l, [hl]
    ld h, a
    ld l, $03
    nop
    ld c, c
    ld l, l
    ld [hl], b
    ld [hl], d

jr_01c_796c:
    ld l, a
    db $76
    ld h, l
    jr nz, @+$79

    ld l, b
    ld l, c
    ld h, e
    ld l, b
    jr nz, @+$75

    ld l, e
    ld l, c
    ld l, h
    ld l, h
    ccf
    nop

    db $4c, $65, $76, $65, $6c, $00, $44, $72, $69, $76, $65, $00, $53, $68, $6f, $74
    db $00, $48, $65, $69, $67, $68, $74, $00, $4d, $65, $65, $74, $20, $41, $72, $65
    db $61, $20, $61, $6e, $64, $00, $43, $6f, $6e, $74, $72, $6f, $6c, $00, $49, $73
    db $20, $74, $68, $69, $73, $20, $4f, $4b, $3f, $00, $4d, $6f, $76, $69, $6e, $67
    db $20, $75, $70, $20, $61, $20, $6c, $65, $76, $65, $6c, $21, $00, $59, $6f, $75
    db $20, $6d, $6f, $76, $65, $64, $20, $75, $70, $20, $61, $20, $6c, $65, $76, $65
    db $6c, $21, $00, $59, $65, $73, $00, $4e, $6f, $00, $49, $73, $20, $74, $68, $69
    db $73, $20, $4f, $4b, $3f, $00, $43, $6f, $70, $79, $00, $45, $72, $61, $73, $65
    db $00, $3f, $00, $4c, $65, $76, $65, $6c, $00, $44, $72, $69, $76, $65, $00, $45
    db $58, $50, $20, $50, $74, $73, $00, $54, $69, $6d, $65, $00, $46, $61, $64, $65
    db $00, $53, $74, $72, $61, $69, $67, $68, $74, $00, $44, $72, $61, $77, $00, $43
    db $72, $65, $61, $74, $65, $20, $61, $20, $6e, $65, $77, $00, $63, $68, $61, $72
    db $61, $63, $74, $65, $72, $20, $68, $65, $72, $65, $2e, $00, $59, $6f, $75, $20
    db $63, $61, $6e, $27, $74, $20, $63, $68, $6f, $6f, $73, $65, $20, $74, $68, $69
    db $73, $20, $63, $68, $61, $72, $61, $63, $74, $65, $72, $2e, $00, $52, $6f, $75
    db $6e, $64, $73, $00, $42, $65, $73, $74, $20, $53, $63, $6f, $72, $65, $00, $41
    db $76, $65, $72, $61, $67, $65, $00, $42, $65, $73, $74, $20, $44, $72, $69, $76
    db $65, $00, $41, $76, $67, $2e, $20, $44, $72, $69, $76, $65, $00, $46, $61, $69
    db $72, $77, $61, $79, $20, $4b, $65, $65, $70, $73, $00, $41, $76, $67, $2e, $20
    db $50, $75, $74, $74, $73, $00, $50, $61, $72, $20, $53, $61, $76, $65, $73, $00
    db $50, $61, $72, $20, $4f, $6e, $73, $00, $53, $61, $6e, $64, $20, $53, $61, $76
    db $65, $73, $00, $54, $72, $6f, $70, $68, $69, $65, $73, $00, $53, $70, $65, $65
    db $64, $20, $47, $6f, $6c, $66, $00, $54, $6f, $61, $64, $20, $54, $6f, $75, $72
    db $6e, $61, $6d, $65, $6e, $74, $00, $4b, $6f, $6f, $70, $61, $20, $43, $75, $70
    db $00, $53, $68, $79, $20, $47, $75, $79, $20, $49, $6e, $74, $65, $72, $6e, $61
    db $74, $69, $6f, $6e, $61, $6c, $00, $f5, $3e, $00, $cd, $24, $7b

    pop af
    ret


    db $f5, $3e, $01, $cd, $24, $7b, $f1, $c9, $c5, $d5, $e5, $21, $04, $40, $cb, $23
    db $cb, $12, $19, $5e, $23, $56, $21, $14, $42, $19, $b7, $20, $08, $11, $00, $c6
    db $01, $80, $01, $18, $06, $11, $80, $d8, $01, $20, $00, $cd, $d3, $03

    pop hl
    pop de
    pop bc
    ret


    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
