INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $019", ROMX[$4000], BANK[$19]

    db $c3, $7a

    bit 7, d
    nop
    nop
    cpl
    nop
    ld c, h
    nop
    and d
    nop
    ret c

    nop
    inc sp
    ld bc, $0162
    ld a, a
    ld bc, $01b7
    db $e3
    ld bc, $0254
    ld [hl], a
    ld [bc], a
    sbc l
    ld [bc], a
    dec [hl]
    inc bc
    jp z, $d003

    inc bc
    sub $03
    dec c
    inc b
    ld b, h
    inc b
    sbc b
    inc b
    cp [hl]
    inc b
    db $ec
    inc b
    ccf
    dec b
    ld a, a
    dec b
    sbc c
    dec b
    rst $30
    dec b
    inc hl
    ld b, $46
    ld b, $4c
    ld b, $52
    ld b, $b0
    ld b, $dc
    ld b, $07
    rlca
    ld d, h
    rlca
    ld l, b
    rlca
    cp d
    rlca
    db $ed
    rlca
    inc e
    ld [$08b5], sp
    ld c, c
    add hl, bc
    sub c
    add hl, bc
    db $ed
    add hl, bc
    scf
    ld a, [bc]
    db $76
    ld a, [bc]
    add $0a
    ld sp, hl
    ld a, [bc]
    rrca
    dec bc
    ld h, a
    dec bc
    cp h
    dec bc
    call nc, Call_000_370b
    inc c
    ld e, [hl]
    inc c
    add c
    inc c
    call nz, $e80c
    inc c
    jr nc, jr_019_4081

    ld h, a
    dec c
    adc e
    dec c
    push hl
    dec c
    cpl
    ld c, $7b
    ld c, $b9
    ld c, $01

jr_019_4081:
    rrca
    ld a, a
    rrca
    inc bc
    db $10
    dec sp
    db $10
    sbc b
    db $10
    ld a, [c]
    db $10
    inc sp
    ld de, $115c
    or b
    ld de, $11e8
    ld c, d
    ld [de], a

jr_019_4096:
    ld d, b
    ld [de], a
    ld d, [hl]
    ld [de], a
    db $eb
    ld [de], a
    dec sp
    inc de
    ld a, b
    inc de
    ld a, [hl]
    inc de
    add h
    inc de
    ret nc

    inc de
    ld sp, hl
    inc de
    ld e, $14
    inc h
    inc d
    ld a, [hl+]
    inc d
    pop bc
    inc d
    ld h, $15
    ld e, b
    dec d
    cp c
    dec d
    add b
    ld d, $d4
    ld d, $2e
    rla
    call nz, $f917
    rla
    rst $38
    rla
    dec b

jr_019_40c3:
    jr jr_019_40fe

    jr jr_019_4137

    jr jr_019_4096

    jr jr_019_40cd

    add hl, de
    dec [hl]

jr_019_40cd:
    add hl, de
    and c
    add hl, de
    ld [$161a], sp
    ld a, [de]
    inc a
    ld a, [de]
    ld [hl], b
    ld a, [de]
    rst $10
    ld a, [de]
    ld b, a
    dec de
    ld d, l
    dec de
    ld a, e
    dec de
    ld [$411b], a
    inc e
    sub [hl]
    inc e
    and h
    inc e
    jp z, $531c

    dec e
    ret nz

    dec e
    dec [hl]
    ld e, $61
    ld e, $8a
    ld e, $c1
    ld e, $17
    rra

jr_019_40f8:
    ld b, d
    rra
    sbc b
    rra
    ei
    rra

jr_019_40fe:
    ld h, h
    jr nz, jr_019_40c3

    jr nz, @+$24

    ld hl, $2170
    sub l
    ld hl, $21be
    push af
    ld hl, $222d
    ld h, l
    ld [hl+], a

    db $98, $22, $b6, $22, $14, $23, $40, $23, $74, $23, $d9, $23, $0a, $24, $6f, $24
    db $82, $24, $b6, $24

    or $24
    ld h, c
    dec h
    sla l
    inc [hl]
    ld h, $68
    ld h, $d3
    ld h, $3b
    daa
    xor c
    daa
    rrca
    jr z, jr_019_41aa

jr_019_4137:
    jr z, @-$23

    jr z, jr_019_417e

    add hl, hl
    xor l
    add hl, hl
    dec de
    ld a, [hl+]
    adc d
    ld a, [hl+]
    db $e4
    ld a, [hl+]
    ld b, d
    dec hl
    ld a, c
    dec hl
    push hl
    dec hl
    ld c, c
    inc l
    and [hl]
    inc l
    dec c
    dec l
    ld h, e
    dec l
    cp e
    dec l
    ld a, [de]

jr_019_4155:
    ld l, $78
    ld l, $a6
    ld l, $08
    cpl
    ld l, l
    cpl
    ret


    cpl
    dec l
    jr nc, jr_019_40f8

    jr nc, jr_019_4165

jr_019_4165:
    ld sp, $3168
    ret z

    ld sp, $31f6
    jr jr_019_41a0

    ld c, l
    ld [hl-], a
    and c
    ld [hl-], a
    dec c
    inc sp
    ld a, $33
    ld l, l
    inc sp
    xor c
    inc sp
    pop hl
    inc sp
    ld a, [hl-]
    inc [hl]

jr_019_417e:
    sub l
    inc [hl]
    call z, $fc34
    inc [hl]
    add hl, de
    dec [hl]
    ld a, $35
    ld h, a
    dec [hl]
    adc b
    dec [hl]
    or b
    dec [hl]
    call z, $fa35
    dec [hl]
    ld sp, $5836
    ld [hl], $85
    ld [hl], $ad
    ld [hl], $c8
    ld [hl], $e6
    ld [hl], $3f
    scf

jr_019_41a0:
    ld l, a
    scf
    sbc e
    scf
    push bc
    scf
    ld [$fd37], a
    scf

jr_019_41aa:
    dec b
    jr c, jr_019_41e7

    jr c, jr_019_421e

    jr c, jr_019_4155

    jr c, @-$3c

    jr c, jr_019_41f8

    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_019_422e

    ld h, c
    ld l, h
    ld l, e
    jr nz, jr_019_4233

    ld l, a
    jr nz, jr_019_422f

    ld h, l
    ld bc, $6e6f
    ld h, e
    ld h, l
    jr nz, jr_019_4243

    ld l, a
    ld [hl], l
    jr nz, jr_019_4235

    ld h, l
    ld [hl], h
    ld bc, $6f73
    ld l, l
    ld h, l
    jr nz, jr_019_423a

    ld l, a
    ld l, [hl]
    ld h, [hl]
    ld l, c
    ld h, h
    ld h, l
    ld l, [hl]
    ld h, e
    ld h, l
    ld hl, $0003
    ld d, e
    ld [hl], l
    ld [hl], d
    ld h, l

jr_019_41e7:
    ld hl, $4920
    daa
    ld l, h
    ld l, h
    jr nz, jr_019_425b

    ld h, l
    ld [hl], h
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_019_4267

    ld l, h

jr_019_41f8:
    ld h, c
    ld a, c
    jr nz, @+$6f

    ld h, l
    ld hl, $0003
    ld c, c
    daa
    ld l, l
    jr nz, jr_019_4279

    ld l, b
    ld h, l
    jr nz, jr_019_424c

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_019_4251

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld bc, $6568
    ld [hl], d
    ld h, l
    jr nz, jr_019_427a

    ld [hl], h
    ld bc, $614d
    ld [hl], d

jr_019_421e:
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_019_4266

    ld l, h
    ld [hl], l
    ld h, d
    ld hl, $4402
    ld l, c
    ld h, h
    jr nz, @+$7b

    ld l, a

jr_019_422e:
    ld [hl], l

jr_019_422f:
    jr nz, jr_019_429d

    ld h, l
    ld h, c

jr_019_4233:
    ld [hl], d
    ld l, [hl]

jr_019_4235:
    ld bc, $6f73
    ld l, l
    ld h, l

jr_019_423a:
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_019_42a7

    ld [hl], d
    ld l, a

jr_019_4243:
    ld l, l
    ld bc, $756f
    ld [hl], d
    jr nz, jr_019_42b6

    ld l, c
    ld [hl], h

jr_019_424c:
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_019_42b8

jr_019_4251:
    ld h, c
    ld l, l
    ld h, l
    ccf
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_019_42d2

jr_019_425b:
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_019_42ca

    ld l, l
    ld [hl], b
    ld [hl], d
    ld l, a
    db $76

jr_019_4266:
    ld h, l

jr_019_4267:
    ld bc, $6669
    jr nz, jr_019_42e5

    ld l, a
    ld [hl], l
    jr nz, @+$66

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_019_42e2

    ld h, l
    ld h, c
    ld [hl], d

jr_019_4279:
    ld l, [hl]

jr_019_427a:
    ld bc, $7266
    ld l, a
    ld l, l
    jr nz, jr_019_42f5

    ld l, b
    ld h, l
    jr nz, jr_019_42c8

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, $03
    nop
    ld c, a
    ld l, b
    ld hl, $5920
    ld l, a
    ld [hl], l
    jr nz, @+$65

    ld h, c
    ld l, [hl]
    jr nz, jr_019_430c

    ld [hl], h
    ld [hl], l
    ld h, h
    ld a, c

jr_019_429d:
    ld bc, $796d
    jr nz, @+$69

    ld h, c
    ld l, l
    ld h, l
    jr nz, @+$76

jr_019_42a7:
    ld l, a
    jr nz, jr_019_430c

    ld h, l
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    ld bc, $2061
    ld h, d
    ld h, l
    ld [hl], h
    ld [hl], h

jr_019_42b6:
    ld h, l
    ld [hl], d

jr_019_42b8:
    jr nz, @+$69

    ld l, a
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld hl, $4d02
    ld h, c
    ld a, c
    ld h, d
    ld h, l
    jr nz, jr_019_4311

jr_019_42c8:
    jr nz, jr_019_433d

jr_019_42ca:
    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_019_433d

    ld h, l

jr_019_42d2:
    ld [hl], h
    ld bc, $6f79
    ld [hl], l
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_019_434b

    ld h, l
    jr nz, @+$63

    ld h, a

jr_019_42e2:
    ld h, c
    ld l, c
    ld l, [hl]

jr_019_42e5:
    ccf
    nop
    ld b, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_019_4361

    ld h, c
    ld l, h
    ld l, e
    jr nz, jr_019_4366

    ld l, a
    jr nz, @+$6f

jr_019_42f5:
    ld h, l
    ld bc, $6e6f
    ld h, e
    ld h, l
    jr nz, jr_019_4376

    ld l, a
    ld [hl], l
    jr nz, jr_019_4368

    ld h, l
    ld [hl], h
    jr nz, jr_019_4378

    ld l, a
    ld l, l
    ld h, l
    ld bc, $6f63
    ld l, [hl]

jr_019_430c:
    ld h, [hl]
    ld l, c
    ld h, h
    ld h, l
    ld l, [hl]

jr_019_4311:
    ld h, e
    ld h, l
    ld hl, $0003
    ld d, e
    ld [hl], l
    ld [hl], d
    ld h, l
    ld hl, $4920
    daa
    ld l, h
    ld l, h
    jr nz, @+$6e

    ld h, l
    ld [hl], h
    ld bc, $6f79
    ld [hl], l
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_019_439c

    ld h, l
    ld hl, $0003
    ld c, c
    daa
    ld l, l
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_019_43a2

    ld l, a

jr_019_433d:
    ld [hl], d
    ld l, l
    ld h, l
    ld [hl], d
    ld bc, $614d
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_019_438d

    ld l, h

jr_019_434b:
    ld [hl], l
    ld h, d
    jr nz, jr_019_4392

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, $01
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_019_43a0

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b

jr_019_4361:
    jr nz, jr_019_43d1

    ld l, a
    ld [hl], a
    inc l

jr_019_4366:
    jr nz, @+$67

jr_019_4368:
    ld l, b
    ccf
    nop
    ld c, c
    jr nz, @+$69

    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, @+$4b

    jr nz, jr_019_43ea

jr_019_4376:
    ld l, b
    ld l, a

jr_019_4378:
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_019_43f9

    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_019_43fa

    ld l, a
    ld l, l
    ld h, l
    ld l, a
    ld l, [hl]
    ld h, l

jr_019_438d:
    ld bc, $6c65
    ld [hl], e
    ld h, l

jr_019_4392:
    ld l, $2e
    ld l, $03
    nop
    ld d, h
    ld l, a
    jr nz, jr_019_440f

    ld l, b

jr_019_439c:
    ld l, c
    ld l, [hl]
    ld l, e
    inc l

jr_019_43a0:
    jr nz, jr_019_441b

jr_019_43a2:
    ld l, a
    ld [hl], l
    jr nz, jr_019_4419

    ld [hl], h
    ld l, a
    ld l, h
    ld h, l
    ld bc, $6874
    ld h, l
    jr nz, jr_019_4413

    ld l, b
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
    ld bc, $7266
    ld l, a
    ld l, l
    jr nz, jr_019_442f

    ld h, l
    ld hl, $4902
    ld h, [hl]
    jr nz, jr_019_4432

    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_019_442f

    jr nz, @+$4f

    ld h, c

jr_019_43d1:
    ld [hl], h
    ld h, e
    ld l, b
    ld bc, $6147
    ld l, l
    ld h, l
    inc l
    jr nz, @+$4b

    jr nz, jr_019_4455

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$6e

    ld l, a
    ld [hl], e
    ld h, l
    ld hl, $4802

jr_019_43ea:
    ld l, a
    ld [hl], a
    jr nz, @+$63

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_019_445d

    ld [hl], h
    ccf
    ld bc, $6957

jr_019_43f9:
    ld l, h

jr_019_43fa:
    ld l, h
    jr nz, jr_019_4476

    ld l, a
    ld [hl], l
    jr nz, @+$76

    ld [hl], d
    ld a, c
    jr nz, jr_019_4472

    ld h, l
    ccf
    nop
    ld d, e
    ld l, a
    jr nz, jr_019_4485

    ld l, a
    ld [hl], l
    daa

jr_019_440f:
    ld [hl], d
    ld h, l
    jr nz, @+$6c

jr_019_4413:
    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld bc, $6f67

jr_019_4419:
    ld l, c
    ld l, [hl]

jr_019_441b:
    ld h, a
    jr nz, @+$76

    ld l, a
    jr nz, @+$74

    ld [hl], l
    ld l, [hl]
    inc l
    jr nz, @+$6a

    ld [hl], l
    ld l, b
    ccf
    inc bc
    nop
    ld c, c
    daa
    ld l, h
    ld l, h

jr_019_442f:
    jr nz, jr_019_44a4

    ld l, b

jr_019_4432:
    ld l, a
    ld [hl], a
    jr nz, jr_019_44af

    ld l, a
    ld [hl], l
    jr nz, @+$64

    ld a, c
    ld bc, $6977
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_019_44b9

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_019_44b7

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    ld hl, $0003
    ld c, c
    jr nz, jr_019_44b5

    ld l, l

jr_019_4455:
    jr nz, @+$10

    inc b
    inc l
    jr nz, @+$76

    ld l, b
    ld h, l

jr_019_445d:
    ld bc, $614d
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_019_44a9

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_019_44ae

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, $01
    ld e, c

jr_019_4472:
    ld l, a
    ld [hl], l
    jr nz, @+$64

jr_019_4476:
    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_019_44e8

    ld h, l
    jr nz, @+$6b

    ld l, [hl]
    ld [bc], a
    ld h, c
    jr nz, jr_019_44d0

    ld h, c
    ld [hl], h

jr_019_4485:
    ld h, e
    ld l, b
    jr nz, jr_019_44d0

    ld h, c
    ld l, l
    ld h, l
    inc l
    jr nz, jr_019_44f1

    ld [hl], l
    ld [hl], h
    ld bc, $2749
    ld l, l
    jr nz, jr_019_450a

    ld [hl], h
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_019_44e0

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld hl, $4901

jr_019_44a4:
    ld h, [hl]
    jr nz, jr_019_4520

    ld l, a
    ld [hl], l

jr_019_44a9:
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_019_4511

jr_019_44ae:
    ld l, a

jr_019_44af:
    ld l, [hl]
    ld h, [hl]
    ld l, c
    ld h, h
    ld h, l
    ld l, [hl]

jr_019_44b5:
    ld [hl], h
    ld [bc], a

jr_019_44b7:
    ld l, c
    ld l, [hl]

jr_019_44b9:
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, @+$4f

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, @+$49

    ld h, c
    ld l, l
    ld h, l
    inc l
    ld bc, $7274
    ld a, c
    jr nz, jr_019_44de

jr_019_44d0:
    dec b
    inc l
    jr nz, jr_019_4548

    ld l, b
    ld h, l
    ld bc, $6150
    ld l, h
    ld l, l
    jr nz, jr_019_4520

    ld l, h

jr_019_44de:
    ld [hl], l
    ld h, d

jr_019_44e0:
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, $03

jr_019_44e8:
    nop
    ld c, c
    jr nz, @+$63

    ld l, l
    jr nz, jr_019_4563

    ld l, b
    ld h, l

jr_019_44f1:
    jr nz, @+$68

    ld l, a
    ld [hl], d
    ld l, l
    ld h, l
    ld [hl], d
    ld bc, $614d
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_019_4544

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_019_4549

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b

jr_019_450a:
    inc l
    ld bc, $040e
    ld l, $20
    ld c, c

jr_019_4511:
    jr nz, jr_019_457f

    ld l, a
    ld [hl], e
    ld [hl], h
    ld [bc], a
    ld [hl], h
    ld l, a
    jr nz, jr_019_4594

    ld l, a
    ld [hl], l
    jr nz, jr_019_4588

    ld l, [hl]

jr_019_4520:
    jr nz, jr_019_4596

    ld l, b
    ld h, l
    ld bc, $6f54
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, jr_019_4596

    ld bc, $614d
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_019_4584

    ld h, c
    ld l, l
    ld h, l
    ld hl, $5920
    ld l, a

jr_019_4544:
    ld [hl], l
    daa
    ld [hl], d
    ld h, l

jr_019_4548:
    ld [bc], a

jr_019_4549:
    ld [hl], h
    ld l, a
    ld l, a
    jr nz, jr_019_45b5

    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_019_45b9

    ld l, a
    ld [hl], d
    jr nz, jr_019_45c4

    ld h, l
    ld l, $01
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, @+$76

    ld l, b

jr_019_4563:
    ld h, l
    jr nz, jr_019_45b3

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_019_45b5

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    inc l
    jr nz, @+$70

    ld l, a
    ld [hl], a
    ld l, $03
    nop
    ld b, h

jr_019_457f:
    ld d, l
    ld c, l
    ld c, l
    ld e, c
    nop

jr_019_4584:
    ld b, h
    ld d, l
    ld c, l
    ld c, l

jr_019_4588:
    ld e, c
    nop
    ld c, c
    daa
    ld l, l
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_019_45f9

    ld l, a

jr_019_4594:
    ld [hl], d
    ld l, l

jr_019_4596:
    ld h, l
    ld [hl], d
    ld bc, $614d
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, @+$45

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_019_45e9

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, $01
    ld b, c
    ld [hl], d
    ld h, l
    jr nz, jr_019_462a

    ld l, a
    ld [hl], l

jr_019_45b3:
    jr nz, jr_019_45fc

jr_019_45b5:
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h

jr_019_45b9:
    jr nz, jr_019_45fe

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ccf
    nop
    ld c, c
    daa
    ld l, l

jr_019_45c4:
    jr nz, jr_019_463a

    ld l, b
    ld h, l
    jr nz, jr_019_4617

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_019_4614

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
    ld l, $20
    ld b, c
    ld [hl], d
    ld h, l
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_019_465c

    ld l, b

jr_019_45e9:
    ld h, l
    jr nz, jr_019_4633

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_019_4635

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ccf
    nop
    ld d, h

jr_019_45f9:
    ld l, b
    ld h, l
    ld [hl], d

jr_019_45fc:
    ld h, l
    daa

jr_019_45fe:
    ld [hl], e
    jr nz, jr_019_466f

    ld l, a
    jr nz, jr_019_467b

    ld h, c
    ld a, c
    jr nz, @+$4b

    daa
    ld l, h
    ld l, h
    ld bc, $6f6c
    ld [hl], e
    ld h, l
    jr nz, jr_019_4673

    jr nz, jr_019_4681

jr_019_4614:
    ld h, c
    ld [hl], h
    ld h, e

jr_019_4617:
    ld l, b
    jr nz, jr_019_468e

    ld l, a
    ld bc, $6874
    ld h, l
    jr nz, jr_019_4668

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l

jr_019_462a:
    ld [hl], b
    ld hl, $4802
    ld l, a
    ld [hl], a
    jr nz, jr_019_4693

    ld h, d

jr_019_4633:
    ld l, a
    ld [hl], l

jr_019_4635:
    ld [hl], h
    jr nz, jr_019_46a1

    ld [hl], h
    ccf

jr_019_463a:
    ld bc, $6957
    ld l, h
    ld l, h
    jr nz, jr_019_46ba

    ld l, a
    ld [hl], l
    jr nz, @+$76

    ld [hl], d
    ld a, c
    jr nz, jr_019_46b6

    ld h, l
    ccf
    nop
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_019_46c5

    ld l, b
    ld l, a
    ld [hl], a
    jr nz, jr_019_46d0

    ld l, a
    ld [hl], l
    jr nz, jr_019_46bd

    ld a, c

jr_019_465c:
    ld bc, $6977
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_019_46da

    ld l, b
    ld l, c

jr_019_4668:
    ld [hl], e
    jr nz, jr_019_46d8

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b

jr_019_466f:
    ld hl, $0003
    ld c, c

jr_019_4673:
    jr nz, @+$6f

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, @+$6a

    ld h, c

jr_019_467b:
    db $76
    ld h, l
    ld bc, $696d
    ld [hl], e

jr_019_4681:
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    ld l, [hl]
    jr nz, jr_019_4701

    ld l, a
    ld [hl], l
    jr nz, @+$68

    ld l, a
    ld [hl], d

jr_019_468e:
    ld bc, $6f73
    ld l, l
    ld h, l

jr_019_4693:
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_019_46fd

    ld l, h
    ld [hl], e
    ld h, l
    ld l, $2e
    ld l, $03
    nop
    ld c, c

jr_019_46a1:
    jr nz, @+$63

    ld l, l
    jr nz, @+$10

    inc b
    inc l
    jr nz, jr_019_471e

    ld l, b
    ld h, l
    ld bc, $614d
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_019_46f8

    ld l, h

jr_019_46b6:
    ld [hl], l
    ld h, d
    jr nz, jr_019_46fd

jr_019_46ba:
    ld l, b
    ld h, c
    ld l, l

jr_019_46bd:
    ld [hl], b
    ld l, $01
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$64

jr_019_46c5:
    ld h, l
    ld h, c
    ld [hl], h
    jr nz, @+$6f

    ld h, l
    jr nz, jr_019_4736

    ld l, [hl]
    ld [bc], a
    ld h, c

jr_019_46d0:
    jr nz, @+$4f

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, @+$49

jr_019_46d8:
    ld h, c
    ld l, l

jr_019_46da:
    ld h, l
    inc l
    jr nz, jr_019_4740

    ld [hl], l
    ld [hl], h
    ld bc, $2749
    ld l, l
    jr nz, @+$75

    ld [hl], h
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_019_472f

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld hl, $0003
    ld c, b
    ld l, c
    ld hl, $4920

jr_019_46f8:
    daa
    ld l, l
    jr nz, @+$10

    dec b

jr_019_46fd:
    inc l
    ld bc, $6150

jr_019_4701:
    ld l, h
    ld l, l
    jr nz, jr_019_4748

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
    ld l, $02
    ld d, e
    ld l, a
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_019_477d

    ld h, l
    ld h, c
    ld [hl], h

jr_019_471e:
    jr nz, jr_019_472e

    inc b
    ld bc, $6e69
    jr nz, @+$63

    jr nz, @+$4f

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, @+$49

jr_019_472e:
    ld h, c

jr_019_472f:
    ld l, l
    ld h, l
    ccf
    nop
    ld c, a
    ld l, b
    inc l

jr_019_4736:
    jr nz, @+$64

    ld [hl], l
    ld [hl], h
    jr nz, jr_019_47b5

    ld l, a
    ld [hl], l
    jr nz, jr_019_47ac

jr_019_4740:
    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_019_47b1

    ld l, c
    ld l, e
    ld h, l

jr_019_4748:
    ld l, $2e
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_019_47bf

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_47b9

    ld h, l
    jr nz, @+$69

    ld l, a
    ld l, a
    ld h, h
    ld bc, $6669
    jr nz, jr_019_47db

    ld l, a
    ld [hl], l
    jr nz, jr_019_47c8

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_019_47df

    ld l, b
    ld h, l
    ld bc, $614d
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_019_47b9

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, @+$45

    ld l, b
    ld h, c

jr_019_477d:
    ld l, l
    ld [hl], b
    ld l, $02
    ld c, b
    ld l, a
    ld [hl], a
    daa
    ld h, h
    jr nz, jr_019_4801

    ld l, a
    ld [hl], l
    jr nz, @+$6e

    ld l, c
    ld l, e
    ld h, l
    ld bc, $6f74
    jr nz, jr_019_4808

    ld [hl], d
    ld a, c
    jr nz, jr_019_4805

    ld h, l
    jr nz, jr_019_4804

    ld l, [hl]
    ld bc, $2061
    ld c, l
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, @+$49

    ld h, c
    ld l, l
    ld h, l
    ccf
    nop
    ld c, c

jr_019_47ac:
    daa
    ld h, h
    jr nz, @+$64

    ld h, l

jr_019_47b1:
    jr nz, jr_019_481b

    ld h, c
    ld [hl], b

jr_019_47b5:
    ld [hl], b
    ld a, c
    jr nz, jr_019_482d

jr_019_47b9:
    ld l, a
    ld bc, $6f67
    jr nz, jr_019_4834

jr_019_47bf:
    ld [hl], b
    jr nz, jr_019_4823

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld [hl], h

jr_019_47c8:
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_019_482f

    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, c
    ld l, l
    ld h, l
    ld l, $03
    nop
    ld d, a
    ld h, l
    ld l, h
    ld l, h

jr_019_47db:
    inc l
    jr nz, @+$09

    inc l

jr_019_47df:
    ld bc, $6873
    ld l, a
    ld [hl], a
    jr nz, @+$6f

    ld h, l
    jr nz, jr_019_4860

    ld l, b
    ld h, c
    ld [hl], h
    ld bc, $6f79
    ld [hl], l
    daa
    db $76
    ld h, l
    jr nz, jr_019_485c

    ld l, a
    ld [hl], h
    ld hl, $0003
    ld b, h
    ld d, l
    ld c, l
    ld c, l
    ld e, c
    nop
    ld b, h

jr_019_4801:
    ld d, l
    ld c, l
    ld c, l

jr_019_4804:
    ld e, c

jr_019_4805:
    nop
    ld c, b
    ld l, c

jr_019_4808:
    ld hl, $4920
    daa
    ld l, l
    jr nz, @+$10

    dec b
    inc l
    ld bc, $6150
    ld l, h
    ld l, l
    jr nz, @+$45

    ld l, h
    ld [hl], l
    ld h, d

jr_019_481b:
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a

jr_019_4823:
    ld l, [hl]
    ld l, $02
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_019_4898

    ld h, c

jr_019_482d:
    ld [hl], e
    ld [hl], h

jr_019_482f:
    jr nz, jr_019_489e

    ld h, c
    ld [hl], h
    ld h, e

jr_019_4834:
    ld l, b
    jr nz, jr_019_48ae

    ld h, c
    ld [hl], e
    ld bc, $6c63
    ld l, a
    ld [hl], e
    ld h, l
    inc l
    jr nz, @+$79

    ld h, c
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$6b

    ld [hl], h
    ld bc, $3f07
    ld [bc], a
    ld d, a
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, @+$76

    ld l, a
    jr nz, jr_019_48cb

    ld [hl], d
    ld a, c
    ld bc, $656d

jr_019_485c:
    jr nz, @+$63

    ld h, a
    ld h, c

jr_019_4860:
    ld l, c
    ld l, [hl]
    ccf
    nop
    ld c, c
    daa
    ld h, h
    jr nz, jr_019_48cb

    ld h, l
    jr nz, jr_019_48d4

    ld h, c
    ld [hl], b
    ld [hl], b
    ld a, c
    jr nz, jr_019_48e6

    ld l, a
    ld bc, $6f67
    jr nz, @+$77

    ld [hl], b
    jr nz, jr_019_48dc

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_019_48e8

    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, c
    ld l, l
    ld h, l
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_019_4909

    ld l, b
    ld l, a

jr_019_4898:
    ld [hl], a
    jr nz, jr_019_4908

    ld h, l
    jr nz, jr_019_4908

jr_019_489e:
    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld bc, $6f68
    ld [hl], a
    jr nz, jr_019_490e

    ld l, a
    ld l, a
    ld h, h
    ld bc, $6f79
    ld [hl], l

jr_019_48ae:
    daa
    db $76
    ld h, l
    jr nz, jr_019_491a

    ld l, a
    ld [hl], h
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld hl, $0003
    ld c, b
    ld l, c
    ld hl, $4920
    daa
    ld l, l
    jr nz, jr_019_48d2

    dec b
    inc l
    ld bc, $6f66
    ld [hl], d
    ld l, l

jr_019_48cb:
    ld h, l
    ld [hl], d
    jr nz, jr_019_491f

    ld h, c
    ld l, h
    ld l, l

jr_019_48d2:
    jr nz, jr_019_4917

jr_019_48d4:
    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6843
    ld h, c
    ld l, l

jr_019_48dc:
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $02
    ld b, c
    ld [hl], d
    ld h, l
    ld l, [hl]

jr_019_48e6:
    daa
    ld [hl], h

jr_019_48e8:
    jr nz, jr_019_4963

    ld l, a
    ld [hl], l
    jr nz, jr_019_4962

    ld l, b
    ld h, l
    jr nz, jr_019_4961

    ld l, [hl]
    ld h, l
    ld bc, $6877
    ld l, a
    jr nz, jr_019_496e

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_019_496c

    ld a, c
    jr nz, jr_019_4976

    ld l, c
    ld [hl], h
    ld l, h
    ld h, l
    ccf
    nop

jr_019_4908:
    ld c, a

jr_019_4909:
    ld l, b
    inc l
    jr nz, jr_019_4976

    ld [hl], h

jr_019_490e:
    jr nz, jr_019_4987

    ld h, c
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_019_4990

jr_019_4917:
    ld l, a
    ld [hl], l
    ccf

jr_019_491a:
    inc bc
    nop
    ld e, c
    ld l, a
    ld [hl], l

jr_019_491f:
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_019_4998

    ld l, b
    ld h, l
    jr nz, jr_019_496b

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_019_4970

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    inc l
    ld bc, $7562
    ld [hl], h
    jr nz, jr_019_49a0

    ld l, a
    ld [hl], a
    daa
    ld [hl], e
    jr nz, jr_019_49b7

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $614d
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_019_4990

    ld h, c
    ld l, l
    ld h, l
    ccf
    ld [bc], a
    ld d, a
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_019_49c9

    ld l, h
    ld h, c
    ld a, c
    ld bc, $2061
    ld l, l
    ld h, c

jr_019_4961:
    ld [hl], h

jr_019_4962:
    ld h, e

jr_019_4963:
    ld l, b
    jr nz, @+$79

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, @+$6f

jr_019_496b:
    ld h, l

jr_019_496c:
    ccf
    nop

jr_019_496e:
    ld c, a
    ld l, b

jr_019_4970:
    inc l
    jr nz, @+$6b

    ld [hl], h
    daa
    ld [hl], e

jr_019_4976:
    jr nz, jr_019_49c7

    ld c, e
    jr nz, jr_019_49e4

    ld h, [hl]
    ld bc, $6f79
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, @+$70

    ld h, l
    ld [hl], d

jr_019_4987:
    db $76
    ld l, a
    ld [hl], l
    ld [hl], e
    ld l, $01
    ld d, a
    ld h, l
    daa

jr_019_4990:
    ld l, h
    ld l, h
    jr nz, jr_019_49f8

    ld l, a
    jr nz, jr_019_4a00

    ld [hl], h

jr_019_4998:
    jr nz, @+$6e

    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $03

jr_019_49a0:
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_019_4a1b

    ld l, c
    ld l, l
    ld h, l
    jr nz, @+$76

    ld l, a
    jr nz, @+$72

    ld h, c
    ld a, c
    ld bc, $6f79
    ld [hl], l
    jr nz, @+$64

jr_019_49b7:
    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_019_4a22

    ld l, a
    ld [hl], d
    ld bc, $6874
    ld h, l
    jr nz, jr_019_4a18

    ld l, a
    ld [hl], l
    ld [hl], d

jr_019_49c7:
    ld l, [hl]
    ld h, c

jr_019_49c9:
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $03
    nop
    ld c, b
    ld l, c
    ld hl, $4920
    daa
    ld l, l
    jr nz, jr_019_49e7

    dec b
    inc l
    ld bc, $6874
    ld h, l
    jr nz, jr_019_4a31

    ld h, c
    ld l, h
    ld l, l

jr_019_49e4:
    jr nz, jr_019_4a29

    ld l, h

jr_019_49e7:
    ld [hl], l
    ld h, d
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $02
    ld c, c
    jr nz, jr_019_4a63

    ld l, a

jr_019_49f8:
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_4a6b

    ld [hl], l
    ld [hl], d
    jr nz, @+$6e

jr_019_4a00:
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    ld bc, $616d
    ld [hl], h
    ld h, e
    ld l, b
    inc l
    jr nz, jr_019_4a70

    ld [hl], l
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e

jr_019_4a18:
    jr nz, @+$75

    ld [hl], h

jr_019_4a1b:
    ld l, c
    ld l, h
    ld l, h
    ld bc, $6874
    ld h, l

jr_019_4a22:
    jr nz, jr_019_4a78

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c

jr_019_4a29:
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld hl, $4902
    ld h, [hl]

jr_019_4a31:
    jr nz, jr_019_4aac

    ld l, a
    ld [hl], l
    jr nz, jr_019_4aae

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_019_4a9d

    ld l, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld bc, $614d
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_019_4a91

    ld h, c
    ld l, l
    ld h, l
    inc l
    jr nz, jr_019_4ac3

    ld h, l
    ld h, l
    ld bc, $6874
    ld h, l
    jr nz, @+$46

    ld [hl], l
    ld l, [hl]
    ld h, l
    jr nz, jr_019_4aa0

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_019_4aa5

    ld l, b

jr_019_4a63:
    ld h, c
    ld l, l
    ld [hl], b
    ld l, $03
    nop
    ld c, b
    ld l, c

jr_019_4a6b:
    ld hl, $4920
    daa
    ld l, l

jr_019_4a70:
    jr nz, jr_019_4ae6

    ld l, b
    ld h, l
    ld bc, $6f66
    ld [hl], d

jr_019_4a78:
    ld l, l
    ld h, l
    ld [hl], d
    jr nz, jr_019_4acd

    ld h, c
    ld l, h
    ld l, l
    jr nz, jr_019_4ac5

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    inc l
    jr nz, @+$10

    dec b
    ld l, $02

jr_019_4a91:
    ld c, c
    jr nz, @+$6e

    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_4b0d

    ld l, b
    ld h, l
    jr nz, jr_019_4b0a

jr_019_4a9d:
    ld h, c
    ld [hl], h
    ld h, e

jr_019_4aa0:
    ld l, b
    ld bc, $6e61
    ld h, h

jr_019_4aa5:
    jr nz, jr_019_4b14

    ld a, c
    jr nz, jr_019_4b1e

    ld l, c
    ld [hl], h

jr_019_4aac:
    ld l, h
    ld h, l

jr_019_4aae:
    ld l, $01
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_019_4afe

    daa
    ld l, l
    jr nz, jr_019_4b23

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_4b1f

    ld l, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l

jr_019_4ac3:
    ld [hl], d
    ld [bc], a

jr_019_4ac5:
    ld h, a
    ld l, a
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld l, $20

jr_019_4acd:
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_019_4b36

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_019_4b4b

    ld [hl], h
    ld l, a
    ld [hl], b
    ld bc, $6874
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $5920
    ld l, a
    ld [hl], l

jr_019_4ae6:
    jr nz, jr_019_4b53

    ld h, l
    ld h, l
    ld [hl], b
    ld bc, $6972
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_019_4b62

    ld l, [hl]
    jr nz, jr_019_4b5d

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $0003
    ld c, b

jr_019_4afe:
    ld l, c
    ld hl, $4920
    daa
    ld l, l
    jr nz, jr_019_4b14

    dec b
    inc l
    jr nz, jr_019_4b5a

jr_019_4b0a:
    ld h, c
    ld l, h
    ld l, l

jr_019_4b0d:
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_019_4b57

jr_019_4b14:
    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $02
    ld e, c

jr_019_4b1e:
    ld l, a

jr_019_4b1f:
    ld [hl], l
    jr nz, jr_019_4b90

    ld h, l

jr_019_4b23:
    ld [hl], a
    jr nz, jr_019_4b98

    ld h, l
    ld h, e
    ld [hl], d
    ld [hl], l
    ld l, c
    ld [hl], h
    ld [hl], e
    jr nz, jr_019_4ba2

    ld [hl], l
    ld [hl], d
    ld h, l
    ld bc, $6d69
    ld [hl], b

jr_019_4b36:
    ld [hl], d
    ld l, a
    db $76
    ld h, l
    jr nz, @+$73

    ld [hl], l
    ld l, c
    ld h, e
    ld l, e
    ld l, h
    ld a, c
    ld hl, $0003
    ld c, b
    ld l, c
    ld hl, $4920
    daa

jr_019_4b4b:
    ld l, l
    jr nz, @+$10

    dec b
    inc l
    jr nz, jr_019_4bc6

    ld l, b

jr_019_4b53:
    ld h, l
    ld bc, $6f66

jr_019_4b57:
    ld [hl], d
    ld l, l
    ld h, l

jr_019_4b5a:
    ld [hl], d
    jr nz, @+$52

jr_019_4b5d:
    ld h, c
    ld l, h
    ld l, l
    jr nz, @+$45

jr_019_4b62:
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
    ld l, $02
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_019_4bdd

    ld l, a
    jr nz, @+$77

    ld [hl], b
    jr nz, jr_019_4bdd

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_019_4bf1

    ld l, [hl]
    jr nz, jr_019_4bec

    jr nz, jr_019_4bda

    ld h, c
    ld [hl], h
    ld h, e

jr_019_4b90:
    ld l, b
    ld bc, $6147
    ld l, l
    ld h, l
    jr nz, jr_019_4bf9

jr_019_4b98:
    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, c
    ld l, l
    ld h, l
    ld l, $03
    nop
    ld c, b

jr_019_4ba2:
    ld l, c
    ld hl, $4920
    daa
    ld l, l
    jr nz, @+$10

    dec b
    inc l
    jr nz, jr_019_4c22

    ld l, b
    ld h, l
    ld bc, $6f66
    ld [hl], d
    ld l, l
    ld h, l
    ld [hl], d
    jr nz, jr_019_4c09

    ld h, c
    ld l, h
    ld l, l
    jr nz, @+$45

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6843
    ld h, c
    ld l, l

jr_019_4bc6:
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $02
    ld d, e
    ld l, a
    inc l
    jr nz, jr_019_4c4a

    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_019_4c4c

    ld l, b
    ld h, l

jr_019_4bda:
    ld bc, $7247

jr_019_4bdd:
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_019_4c25

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ccf
    nop
    ld c, b

jr_019_4bec:
    ld l, c
    ld hl, $4920
    daa

jr_019_4bf1:
    ld l, l
    jr nz, @+$10

    dec b
    inc l
    ld bc, $6150

jr_019_4bf9:
    ld l, h
    ld l, l
    jr nz, jr_019_4c40

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

jr_019_4c09:
    ld l, $02
    ld d, e
    ld l, a
    inc l
    jr nz, jr_019_4c89

    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_019_4c8b

    ld l, b
    ld h, l
    ld bc, $7247
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, @+$45

    ld l, b

jr_019_4c22:
    ld h, c
    ld l, l
    ld [hl], b

jr_019_4c25:
    ld l, c
    ld l, a
    ld l, [hl]
    ccf
    nop
    ld c, c
    jr nz, jr_019_4ca4

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, @+$76

    ld l, a
    jr nz, jr_019_4ca8

    ld h, l
    ld h, l
    ld bc, $6877
    ld h, c
    ld [hl], h
    jr nz, jr_019_4cb2

    ld l, b
    ld h, l

jr_019_4c40:
    jr nz, jr_019_4c89

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_019_4c8b

    ld l, b
    ld h, c

jr_019_4c4a:
    ld l, l
    ld [hl], b

jr_019_4c4c:
    ld bc, $6163
    ld l, [hl]
    jr nz, jr_019_4cb6

    ld l, a
    ld l, $02
    ld d, a
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_019_4cd5

    ld l, a
    ld [hl], l
    jr nz, jr_019_4cd0

    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_019_4cc6

    ld bc, $614d
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_019_4cb4

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_019_4ce9

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_019_4ce4

    ld h, l
    ccf
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_019_4cf2

    ld [hl], h
    ld l, a
    ld l, h
    ld h, l
    jr nz, jr_019_4cf2

    ld a, c
    jr nz, @+$52

    ld h, c

jr_019_4c89:
    ld l, h
    ld l, l

jr_019_4c8b:
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_019_4d06

    ld l, c
    ld [hl], h
    ld l, h
    ld h, l
    ld l, $01
    ld c, c
    jr nz, @+$71

    ld [hl], a
    ld h, l
    jr nz, jr_019_4d18

    ld l, a
    ld [hl], l
    jr nz, jr_019_4d09

    ld l, a

jr_019_4ca4:
    ld [hl], d
    jr nz, jr_019_4d1b

    ld l, b

jr_019_4ca8:
    ld h, c
    ld [hl], h
    ld l, $03
    nop
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l

jr_019_4cb2:
    jr nz, jr_019_4d2b

jr_019_4cb4:
    ld h, c
    ld [hl], e

jr_019_4cb6:
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_019_4d24

    ld [hl], h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ccf
    inc bc
    nop
    ld c, b
    ld l, c
    inc l

jr_019_4cc6:
    jr nz, jr_019_4d11

    daa
    ld l, l
    jr nz, jr_019_4cda

    dec b
    inc l
    jr nz, jr_019_4d44

jr_019_4cd0:
    ld l, b
    ld h, l
    ld bc, $6150

jr_019_4cd5:
    ld l, h
    ld l, l
    jr nz, jr_019_4d1c

    ld l, h

jr_019_4cda:
    ld [hl], l
    ld h, d
    jr nz, jr_019_4d21

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, $02

jr_019_4ce4:
    ld c, c
    jr nz, jr_019_4d53

    ld l, a
    ld [hl], e

jr_019_4ce9:
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_019_4d3d

    ld h, c
    ld [hl], h

jr_019_4cf2:
    ld h, e
    ld l, b
    inc l
    ld bc, $7562
    ld [hl], h
    jr nz, jr_019_4d44

    daa
    ld l, h
    ld l, h
    jr nz, jr_019_4d67

    ld h, l
    ld [hl], h
    jr nz, jr_019_4d7d

    ld l, a
    ld [hl], l

jr_019_4d06:
    ld bc, $6e69

jr_019_4d09:
    jr nz, jr_019_4d7f

    ld l, b
    ld h, l
    jr nz, jr_019_4d83

    ld l, a
    ld [hl], l

jr_019_4d11:
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h

jr_019_4d18:
    ld l, $03
    nop

jr_019_4d1b:
    ld c, c

jr_019_4d1c:
    jr nz, jr_019_4d85

    ld [hl], l
    ld h, l
    ld [hl], e

jr_019_4d21:
    ld [hl], e
    jr nz, jr_019_4d98

jr_019_4d24:
    ld l, b
    ld h, l
    jr nz, @+$52

    ld h, c
    ld l, h
    ld l, l

jr_019_4d2b:
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_019_4d75

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    jr nz, jr_019_4da4

    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, @+$6b

jr_019_4d3d:
    ld l, [hl]
    ld bc, $2061
    ld c, l
    ld h, c
    ld [hl], h

jr_019_4d44:
    ld h, e
    ld l, b
    jr nz, jr_019_4d8f

    ld h, c
    ld l, l
    ld h, l
    ld l, $02
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l

jr_019_4d53:
    jr nz, jr_019_4dc9

    ld l, b
    ld h, l
    jr nz, jr_019_4dc8

    ld l, [hl]
    ld h, l
    ld bc, $6877
    ld l, a
    jr nz, jr_019_4dc3

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_019_4d74

    dec b

jr_019_4d67:
    inc l
    ld bc, $6972
    ld h, a
    ld l, b
    ld [hl], h
    ccf
    nop
    ld d, e
    ld l, b
    ld h, l
    ld h, l

jr_019_4d74:
    ld [hl], e

jr_019_4d75:
    ld l, b
    ld hl, $4920
    jr nz, @+$69

    ld [hl], l
    ld h, l

jr_019_4d7d:
    ld [hl], e
    ld [hl], e

jr_019_4d7f:
    jr nz, jr_019_4def

    ld l, a
    ld [hl], h

jr_019_4d83:
    ld l, $2e

jr_019_4d85:
    ld l, $03
    nop
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, jr_019_4df8

jr_019_4d8f:
    ld h, [hl]
    jr nz, jr_019_4e0b

    ld l, a
    ld [hl], l
    jr nz, jr_019_4df8

    ld h, l
    ld h, c

jr_019_4d98:
    ld [hl], h
    ld bc, $050e
    inc l
    jr nz, jr_019_4de8

    jr nz, jr_019_4e18

    ld h, c
    ld l, [hl]
    ld l, [hl]

jr_019_4da4:
    ld h, c
    ld bc, $6573
    ld h, l
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    ld hl, $4802
    ld l, a
    ld [hl], a
    jr nz, jr_019_4de0

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, @+$6b

    ld [hl], h
    ccf
    jr nz, @+$45

jr_019_4dc3:
    ld h, c
    ld l, [hl]
    ld bc, $6f79

jr_019_4dc8:
    ld [hl], l

jr_019_4dc9:
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_019_4dde

    ld b, $2c
    jr nz, jr_019_4e18

    ld [hl], l
    ld l, [hl]
    ld h, l
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    inc l

jr_019_4dde:
    jr nz, jr_019_4e49

jr_019_4de0:
    ld l, [hl]
    jr nz, jr_019_4e44

    jr nz, jr_019_4e52

    ld h, c
    ld [hl], h
    ld h, e

jr_019_4de8:
    ld l, b
    ccf
    nop
    ld c, c
    daa
    db $76
    ld h, l

jr_019_4def:
    jr nz, jr_019_4e58

    ld l, a
    ld [hl], h
    jr nz, jr_019_4e63

    ld l, a
    ld [hl], h
    ld l, b

jr_019_4df8:
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6f74
    jr nz, @+$75

    ld h, c
    ld a, c
    jr nz, jr_019_4e78

    ld l, a
    jr nz, jr_019_4e68

    ld bc, $6863
    ld l, c

jr_019_4e0b:
    ld h, e
    ld l, e
    ld h, l
    ld l, [hl]
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_019_4e79

    ld h, l

jr_019_4e18:
    ld h, c
    ld [hl], h
    jr nz, jr_019_4e2a

    dec b
    inc l
    jr nz, @+$64

    ld [hl], l
    ld [hl], h
    ld bc, $2749
    ld l, h
    ld l, h
    jr nz, jr_019_4e9c

    ld h, e

jr_019_4e2a:
    ld l, b
    ld l, a
    ld l, a
    ld l, h
    jr nz, jr_019_4ea9

    ld l, a
    ld [hl], l
    ld hl, $0003
    ld c, c
    daa
    ld l, l
    jr nz, jr_019_4e48

    ld b, $2c
    jr nz, jr_019_4eb2

    ld l, b
    ld h, l
    jr nz, jr_019_4e86

    ld [hl], l
    ld l, [hl]

jr_019_4e44:
    ld h, l
    ld bc, $6843

jr_019_4e48:
    ld h, c

jr_019_4e49:
    ld l, l
    ld [hl], b
    ld l, $20
    ld c, b
    ld h, l
    ld h, c
    ld [hl], d
    ld h, h

jr_019_4e52:
    jr nz, jr_019_4ec3

    ld h, [hl]
    jr nz, jr_019_4ec4

    ld h, l

jr_019_4e58:
    ccf
    ld [bc], a
    ld d, e
    ld l, a
    inc l
    jr nz, jr_019_4ec3

    ld l, c
    ld h, h
    jr nz, jr_019_4ecf

jr_019_4e63:
    ld l, a
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a

jr_019_4e68:
    jr nz, jr_019_4ede

    ld l, a
    ld bc, $656d
    jr nz, jr_019_4ed2

    ld [hl], l
    ld h, a
    jr nz, jr_019_4eed

    ld l, a
    ld [hl], l
    ccf
    nop

jr_019_4e78:
    ld e, c

jr_019_4e79:
    ld l, a
    ld [hl], l
    jr nz, jr_019_4ee1

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_019_4ee6

    ld h, c
    ld [hl], d
    ld h, l

jr_019_4e86:
    ccf
    ld hl, HeaderManufacturerCode
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, @+$70

    ld l, a
    jr nz, jr_019_4ed8

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld hl, $0003

jr_019_4e9c:
    ld c, b
    ld [hl], l
    ld l, b
    dec l
    ld l, b
    ld [hl], l
    ld l, b
    ld hl, $4920
    jr nz, jr_019_4f13

    ld l, [hl]

jr_019_4ea9:
    ld l, a
    ld [hl], a
    ld bc, $6874
    ld h, c
    ld [hl], h
    jr nz, jr_019_4f18

jr_019_4eb2:
    ld h, l
    ld h, l
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $02
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_019_4f21

    ld h, d
    ld l, a
    ld [hl], l

jr_019_4ec3:
    ld [hl], h

jr_019_4ec4:
    jr nz, @+$6b

    ld [hl], h
    ccf
    ld bc, $654c
    ld [hl], h
    jr nz, jr_019_4f3b

    ld h, l

jr_019_4ecf:
    jr nz, @+$66

    ld l, a

jr_019_4ed2:
    jr nz, @+$6b

    ld [hl], h
    ld bc, $6f74

jr_019_4ed8:
    jr nz, jr_019_4f53

    ld l, a
    ld [hl], l
    jr nz, jr_019_4f3f

jr_019_4ede:
    ld h, a
    ld h, c
    ld l, c

jr_019_4ee1:
    ld l, [hl]
    ccf
    nop
    ld d, a
    ld h, l

jr_019_4ee6:
    ld l, h
    ld l, h
    jr nz, jr_019_4f53

    ld h, [hl]
    jr nz, jr_019_4f66

jr_019_4eed:
    ld l, a
    ld [hl], l
    daa
    db $76
    ld h, l
    jr nz, @+$69

    ld l, a
    ld [hl], h
    ld bc, $6f6e
    jr nz, @+$69

    ld [hl], l
    ld [hl], h
    ld [hl], e
    inc l
    jr nz, jr_019_4f63

    ld h, l
    ld h, c
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $050e
    jr nz, jr_019_4f79

    ld h, l
    ld h, c
    ld l, [hl]
    ld [hl], e
    jr nz, jr_019_4f80

    ld l, a

jr_019_4f13:
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a

jr_019_4f18:
    ld hl, $0003
    rlca
    inc l
    jr nz, jr_019_4f98

    ld l, a
    ld [hl], l

jr_019_4f21:
    ld bc, $6562
    ld h, c
    ld [hl], h
    jr nz, jr_019_4f36

    dec b
    inc l
    jr nz, @+$64

    ld [hl], l
    ld [hl], h
    jr nz, jr_019_4f79

    daa
    ld l, h
    ld l, h
    ld bc, $6873

jr_019_4f36:
    ld l, a
    ld [hl], a
    jr nz, jr_019_4fb3

    ld l, a

jr_019_4f3b:
    ld [hl], l
    ld hl, $0003

jr_019_4f3f:
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_019_4f4e

    inc l
    ld bc, $6874
    ld h, l
    jr nz, jr_019_4fbc

jr_019_4f4e:
    ld h, l
    ld [hl], a
    jr nz, jr_019_4f96

    ld [hl], l

jr_019_4f53:
    ld l, [hl]
    ld h, l
    jr nz, jr_019_4f9a

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    inc l
    jr nz, jr_019_4fd5

jr_019_4f63:
    ld l, c
    ld h, a
    ld l, b

jr_019_4f66:
    ld [hl], h
    ccf
    ld [bc], a
    ld b, h
    daa
    ld a, c
    ld h, c
    jr nz, jr_019_4fda

    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_019_4fbd

    daa
    ld l, l
    jr nz, @+$76

    ld l, b

jr_019_4f79:
    ld h, l
    ld bc, $7567
    ld a, c
    jr nz, jr_019_4ff9

jr_019_4f80:
    ld l, a
    ld [hl], l
    jr nz, jr_019_4ff7

    ld [hl], h
    ld l, a
    ld l, h
    ld h, l
    jr nz, jr_019_4ffe

    ld l, b
    ld h, l
    ld bc, $6974
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_019_4ffa

    ld [hl], d
    ld l, a

jr_019_4f96:
    ld l, l
    ccf

jr_019_4f98:
    nop
    ld d, d

jr_019_4f9a:
    ld h, l
    ld l, l
    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, jr_019_5017

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_019_4fd5

    ld bc, $2749
    ld l, l
    jr nz, jr_019_4fbc

    ld b, $2e
    ld l, $2e
    ld [bc], a

jr_019_4fb3:
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, @+$4b

    daa
    ld l, l
    jr nz, @+$69

jr_019_4fbc:
    ld l, a

jr_019_4fbd:
    ld l, [hl]
    ld l, [hl]
    ld h, c
    jr nz, @+$69

    ld h, l
    ld [hl], h
    ld bc, $6874
    ld h, c
    ld [hl], h
    jr nz, jr_019_500f

    ld [hl], l
    ld l, [hl]
    ld h, l
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c

jr_019_4fd5:
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, b
    ld l, c

jr_019_4fda:
    ld [hl], b
    jr nz, jr_019_503f

    ld h, c
    ld h, e
    ld l, e
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_019_505c

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_019_5061

    ld l, b
    ld h, l
    ld bc, $6f54
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l

jr_019_4ff7:
    ld h, l
    ld l, [hl]

jr_019_4ff9:
    ld [hl], h

jr_019_4ffa:
    inc l
    jr nz, jr_019_505f

    ld [hl], l

jr_019_4ffe:
    ld [hl], h
    ld bc, $6f6e
    ld [hl], a
    jr nz, jr_019_507e

    ld l, a
    ld [hl], l
    jr nz, jr_019_507d

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    ld [bc], a
    ld a, c

jr_019_500f:
    ld l, a
    ld [hl], l
    jr nz, jr_019_5076

    ld h, c
    ld l, [hl]
    jr nz, jr_019_508b

jr_019_5017:
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_019_5089

    ld h, l
    ld bc, $6e69
    jr nz, jr_019_5083

    jr nz, @+$4f

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, @+$49

    ld h, c
    ld l, l
    ld h, l
    ccf
    nop
    ld d, h
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_019_507e

    jr nz, jr_019_509a

    ld l, b
    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld l, [hl]
    ld h, a
    ld h, l

jr_019_503f:
    jr nz, jr_019_50ba

    ld l, a
    ld [hl], l
    ld hl, $4901
    daa
    ld l, h
    ld l, h
    jr nz, jr_019_50bf

    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_019_50c9

    ld l, a
    ld [hl], l
    jr nz, @+$6b

    ld l, [hl]
    jr nz, jr_019_50b8

    ld bc, $614d
    ld [hl], h
    ld h, e

jr_019_505c:
    ld l, b
    jr nz, jr_019_50a6

jr_019_505f:
    ld h, c
    ld l, l

jr_019_5061:
    ld h, l
    jr nz, jr_019_50c5

    ld l, [hl]
    ld a, c
    jr nz, jr_019_50cc

    ld h, c
    ld a, c
    ld hl, $0003
    ld b, c
    ld l, h
    ld l, h
    jr nz, jr_019_50e4

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h

jr_019_5076:
    ld hl, $5420
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e

jr_019_507d:
    ld [hl], e

jr_019_507e:
    ld bc, $2e07
    ld l, $2e

jr_019_5083:
    ld [bc], a
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h

jr_019_5089:
    jr nz, jr_019_50ff

jr_019_508b:
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_019_50fa

    ld [hl], h
    daa
    ld [hl], e
    ld bc, $6874
    ld h, l
    jr nz, jr_019_510e

jr_019_509a:
    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_019_5106

    ld l, h

jr_019_50a6:
    ld l, h
    ld bc, $766f
    ld h, l
    ld [hl], d
    jr nz, @+$63

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld hl, $0003
    ld c, c
    daa
    ld l, l

jr_019_50b8:
    jr nz, jr_019_50c8

jr_019_50ba:
    ld b, $2c
    jr nz, @+$76

    ld l, b

jr_019_50bf:
    ld h, l
    ld bc, $7544
    ld l, [hl]
    ld h, l

jr_019_50c5:
    jr nz, jr_019_510a

    ld l, h

jr_019_50c8:
    ld [hl], l

jr_019_50c9:
    ld h, d
    jr nz, @+$45

jr_019_50cc:
    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, $01
    ld c, c
    jr nz, jr_019_5141

    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_019_514b

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    inc l
    ld [bc], a

jr_019_50e4:
    ld h, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_019_5157

    ld l, a
    ld [hl], h
    jr nz, jr_019_5161

    ld l, b
    ld h, l
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, b

jr_019_50fa:
    ld l, c
    ld [hl], b
    ld hl, $5901

jr_019_50ff:
    ld l, a
    ld [hl], l
    jr nz, @+$64

    ld h, l
    ld h, c
    ld [hl], h

jr_019_5106:
    jr nz, @+$6f

    ld h, l
    inc l

jr_019_510a:
    jr nz, jr_019_517f

    ld l, a
    ld [bc], a

jr_019_510e:
    ld c, $07
    ld bc, $7369
    jr nz, @+$70

    ld h, l
    ld a, b
    ld [hl], h
    jr nz, jr_019_5180

    ld l, a
    ld [hl], d
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld hl, $4701
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_019_5194

    ld [hl], l
    ld h, e
    ld l, e
    ld hl, $4820
    ld h, c
    ld l, b
    ld hl, $0003
    ld c, c
    daa
    ld l, l
    jr nz, jr_019_51ac

    ld l, b
    ld h, l
    jr nz, @+$68

    ld l, a
    ld [hl], d
    ld l, l
    ld h, l
    ld [hl], d

jr_019_5141:
    jr nz, jr_019_5187

    ld [hl], l
    ld l, [hl]
    ld h, l
    ld bc, $6843
    ld h, c
    ld l, l

jr_019_514b:
    ld [hl], b
    inc l
    jr nz, jr_019_515d

    ld b, $2e
    ld [bc], a
    ld c, c
    jr nz, jr_019_51c1

    ld l, a
    ld [hl], e

jr_019_5157:
    ld [hl], h
    jr nz, jr_019_51c3

    ld [hl], h
    jr nz, jr_019_51be

jr_019_515d:
    ld l, h
    ld l, h
    ld l, $01

jr_019_5161:
    ld c, c
    daa
    ld l, l
    jr nz, @+$70

    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_019_51dc

    ld h, l
    ld a, b
    ld [hl], h
    ld bc, $6f74
    jr nz, jr_019_51ef

    ld l, a
    ld [hl], l
    ld l, $02
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_019_51f3

jr_019_517f:
    ld l, b

jr_019_5180:
    ld h, c
    ld [hl], h
    jr nz, jr_019_51fd

    ld l, a
    ld [hl], l
    daa

jr_019_5187:
    db $76
    ld h, l
    ld bc, $6562
    ld h, c
    ld [hl], h
    ld h, l
    ld l, [hl]
    jr nz, @+$6f

    ld h, l
    inc l

jr_019_5194:
    jr nz, jr_019_51df

    jr nz, jr_019_51fb

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $6177
    ld l, c
    ld [hl], h
    jr nz, jr_019_5217

    ld l, a
    jr nz, jr_019_5219

    ld h, l
    ld h, l
    jr nz, jr_019_5223

    ld l, a
    ld [hl], l

jr_019_51ac:
    ld [bc], a
    ld [hl], b
    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_019_51c1

    rlca
    ld hl, $0003
    ld c, c
    daa
    ld l, l
    jr nz, @+$10

    ld b, $2c

jr_019_51be:
    jr nz, jr_019_5204

    ld [hl], l

jr_019_51c1:
    ld l, [hl]
    ld h, l

jr_019_51c3:
    jr nz, @+$45

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    ld l, $20
    ld b, c
    ld l, h
    ld l, h
    jr nz, jr_019_5249

    ld l, b
    ld h, l
    jr nz, jr_019_521c

    ld l, h
    ld [hl], l
    ld h, d

jr_019_51dc:
    ld bc, $6843

jr_019_51df:
    ld h, c
    ld l, l
    ld [hl], b
    ld [hl], e
    jr nz, jr_019_5246

    ld [hl], d
    ld h, l
    jr nz, jr_019_5251

    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $0003

jr_019_51ef:
    ld e, c
    ld l, a
    ld [hl], l
    daa

jr_019_51f3:
    ld [hl], d
    ld h, l
    jr nz, jr_019_526b

    ld l, b
    ld h, l
    jr nz, @+$70

jr_019_51fb:
    ld h, l
    ld [hl], a

jr_019_51fd:
    ld bc, $7544
    ld l, [hl]
    ld h, l
    jr nz, jr_019_5247

jr_019_5204:
    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_019_524c

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    inc l
    ld bc, $2c07
    jr nz, @+$6a

    ld [hl], l
    ld l, b
    ccf
    ld [bc], a

jr_019_5217:
    ld d, a
    ld h, l

jr_019_5219:
    ld l, h
    ld l, h
    inc l

jr_019_521c:
    jr nz, jr_019_5267

    jr nz, jr_019_5293

    ld [hl], a
    ld h, l
    ld h, c

jr_019_5223:
    ld [hl], d
    jr nz, jr_019_526f

    daa
    ld l, h
    ld l, h
    ld bc, $6174
    ld l, e
    ld h, l
    jr nz, jr_019_52a4

    ld l, b
    ld h, l
    jr nz, jr_019_5278

    ld [hl], l
    ld l, [hl]
    ld h, l
    ld bc, $6843
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
    jr nz, jr_019_52a8

jr_019_5246:
    ld h, c

jr_019_5247:
    ld h, e
    ld l, e

jr_019_5249:
    ld hl, $0003

jr_019_524c:
    ld b, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    daa

jr_019_5251:
    ld [hl], h
    jr nz, jr_019_52cd

    ld l, a
    ld [hl], l
    jr nz, jr_019_52cc

    ld l, b
    ld h, l
    ld bc, $7247
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_019_52a5

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ccf

jr_019_5267:
    ld bc, $6f44
    ld l, [hl]

jr_019_526b:
    daa
    ld [hl], h
    jr nz, jr_019_52e8

jr_019_526f:
    ld l, a
    ld [hl], l
    jr nz, jr_019_52de

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld [bc], a
    ld c, c

jr_019_5278:
    daa
    ld l, l
    jr nz, jr_019_528a

    ld b, $2c
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_019_52eb

    ld [hl], l
    ld a, c
    ld bc, $6f79
    ld [hl], l

jr_019_528a:
    jr nz, jr_019_52ff

    ld [hl], h
    ld l, a
    ld l, h
    ld h, l
    jr nz, @+$76

    ld l, b

jr_019_5293:
    ld h, l
    ld bc, $7544
    ld l, [hl]
    ld h, l
    jr nz, jr_019_530f

    ld l, c
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_019_5307

    ld [hl], d
    ld l, a
    ld l, l

jr_019_52a4:
    ccf

jr_019_52a5:
    nop
    ld e, c
    ld l, a

jr_019_52a8:
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, @+$49

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_019_52f7

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld bc, $2c07
    jr nz, jr_019_5325

    ld [hl], l
    ld l, b
    ccf
    ld [bc], a
    ld b, h
    ld l, c
    ld h, h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_019_5335

    ld l, [hl]
    ld l, a

jr_019_52cc:
    ld [hl], a

jr_019_52cd:
    jr nz, jr_019_5318

    daa
    ld l, l
    ld bc, $7544
    ld l, [hl]
    ld h, l
    jr nz, jr_019_531b

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, @+$45

    ld l, b

jr_019_52de:
    ld h, c
    ld l, l
    ld [hl], b
    inc l
    ld bc, $060e
    ccf
    nop
    ld d, e

jr_019_52e8:
    ld l, a
    jr nz, jr_019_535f

jr_019_52eb:
    ld l, b
    ld h, l
    jr nz, jr_019_5336

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    ld bc, $6843
    ld h, c

jr_019_52f7:
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_019_5375

    ld h, c

jr_019_52ff:
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    ld bc, $6f74
    jr nz, @+$72

jr_019_5307:
    ld l, h
    ld h, c
    ld a, c
    jr nz, @+$6f

    ld h, l
    ccf
    inc bc

jr_019_530f:
    nop
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, jr_019_5388

jr_019_5318:
    ld l, h
    ld h, c
    ld a, c

jr_019_531b:
    jr nz, @+$6f

    ld h, l
    inc l
    ld bc, $3f07
    ld bc, $6c41

jr_019_5325:
    ld l, h
    jr nz, @+$74

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld hl, $4402
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$76

jr_019_5335:
    ld l, b

jr_019_5336:
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, @+$6b

    ld [hl], h
    daa
    ld [hl], e
    ld bc, $6874
    ld h, l
    jr nz, jr_019_5387

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_019_539d

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld bc, $6c61
    ld l, h
    jr nz, jr_019_53c7

    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_019_53be

    ld h, a
    ld h, c

jr_019_535f:
    ld l, c
    ld l, [hl]
    ld hl, $0003
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_019_53dc

    ld h, l
    ld l, l
    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, jr_019_53e7

    ld l, b
    ld l, c

jr_019_5375:
    ld [hl], e
    ld l, $2e
    ld l, $01
    ld c, c
    daa
    ld l, l
    jr nz, jr_019_538d

    ld b, $21
    ld [bc], a
    ld c, c
    daa
    ld l, l
    jr nz, jr_019_53fb

jr_019_5387:
    ld l, b

jr_019_5388:
    ld h, l
    jr nz, @+$46

    ld [hl], l
    ld l, [hl]

jr_019_538d:
    ld h, l
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_019_53d8

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld hl, $0003
    ld c, c

jr_019_539d:
    daa
    ld l, l
    jr nz, jr_019_53af

    ld b, $2c
    jr nz, jr_019_53e9

    ld [hl], l
    ld l, [hl]
    ld h, l
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, @+$45

jr_019_53af:
    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld hl, $4901
    jr nz, jr_019_5425

    ld h, c
    ld a, c
    jr nz, jr_019_5424

    ld h, c
    db $76

jr_019_53be:
    ld h, l
    jr nz, jr_019_542d

    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_543a

    ld l, b

jr_019_53c7:
    ld h, l
    ld [bc], a
    ld c, l
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_019_5417

    ld h, c
    ld l, l
    ld h, l
    inc l
    jr nz, @+$64

    ld [hl], l
    ld [hl], h

jr_019_53d8:
    jr nz, jr_019_544e

    ld l, b
    ld h, l

jr_019_53dc:
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b

jr_019_53e7:
    ld l, c
    ld l, a

jr_019_53e9:
    ld l, [hl]
    ld [hl], e
    ld l, b
    ld l, c
    ld [hl], b
    ld bc, $7369
    jr nz, jr_019_5457

    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h

jr_019_53fb:
    ld hl, $0003
    ld b, h
    ld d, l
    ld c, l
    ld c, l
    ld e, c
    nop
    ld b, h
    ld d, l
    ld c, l
    ld c, l
    ld e, c
    nop
    ld c, b
    ld h, l
    ld l, h
    ld l, h
    ld l, a
    ld l, $20
    ld c, l
    ld a, c
    jr nz, jr_019_5483

    ld h, c
    ld l, l

jr_019_5417:
    ld h, l
    jr nz, jr_019_5483

    ld [hl], e
    ld bc, $070e
    inc l
    ld bc, $694c
    ld l, [hl]
    ld l, e

jr_019_5424:
    ld [hl], e

jr_019_5425:
    jr nz, jr_019_546a

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_019_546f

    ld l, b

jr_019_542d:
    ld h, c
    ld l, l
    ld [hl], b
    ld l, $02
    ld c, c
    jr nz, jr_019_54a8

    ld h, l
    ld h, l
    jr nz, @+$7b

    ld l, a

jr_019_543a:
    ld [hl], l
    jr nz, jr_019_54a5

    ld h, c
    db $76
    ld h, l
    ld bc, $6562
    ld h, c
    ld [hl], h
    ld h, l
    ld l, [hl]
    jr nz, jr_019_5457

    ld b, $20
    ld h, c
    ld l, [hl]
    ld h, h

jr_019_544e:
    jr nz, jr_019_54c4

    ld l, b
    ld h, l
    ld bc, $746f
    ld l, b
    ld h, l

jr_019_5457:
    ld [hl], d
    ld [hl], e
    inc l
    jr nz, jr_019_54cb

    ld l, [hl]
    ld h, l
    dec l
    ld h, d
    ld a, c
    dec l
    ld l, a
    ld l, [hl]
    ld h, l
    ld l, $02
    ld c, [hl]
    ld l, a
    ld [hl], a

jr_019_546a:
    jr nz, jr_019_54e0

    ld l, b
    ld h, c
    ld [hl], h

jr_019_546f:
    jr nz, jr_019_54ea

    ld l, a
    ld [hl], l
    daa
    db $76
    ld h, l
    ld bc, $6562
    ld h, c
    ld [hl], h
    ld h, l
    ld l, [hl]
    jr nz, jr_019_54f3

    ld l, b
    ld h, l
    ld l, l
    inc l

jr_019_5483:
    jr nz, jr_019_54fe

    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    ld bc, $6568
    ld [hl], d
    ld h, l
    jr nz, jr_019_54f7

    ld l, a
    ld [hl], d
    jr nz, @+$6f

    ld h, l
    inc l
    jr nz, jr_019_550b

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ccf
    nop
    ld c, l
    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_5517

jr_019_54a5:
    ld h, l
    ld h, a
    ld [hl], d

jr_019_54a8:
    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    ld l, $2e
    ld l, $01
    ld c, c
    jr nz, jr_019_551e

    ld l, a
    ld [hl], b
    ld h, l
    ld h, h
    jr nz, jr_019_5530

    ld l, a
    jr nz, jr_019_5532

    ld h, l
    ld h, l
    ld bc, $756a

jr_019_54c4:
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_553f

    ld l, b
    ld h, c
    ld [hl], h

jr_019_54cb:
    jr nz, jr_019_5538

    ld l, c
    ld l, [hl]
    ld h, h
    ld [bc], a
    ld l, a
    ld h, [hl]
    jr nz, jr_019_5545

    ld l, h
    ld h, c
    ld a, c
    jr nz, @+$66

    ld h, l
    ld h, [hl]
    ld h, l
    ld h, c
    ld [hl], h
    ld h, l

jr_019_54e0:
    ld h, h
    ld bc, $6874
    ld h, l
    jr nz, jr_019_5556

    ld [hl], h
    ld l, b
    ld h, l

jr_019_54ea:
    ld [hl], d
    ld [hl], e
    ld l, $03
    nop
    ld d, e
    ld [hl], b
    ld l, h
    ld h, l

jr_019_54f3:
    ld l, [hl]
    ld h, h
    ld l, c
    ld h, h

jr_019_54f7:
    ld hl, $4920
    jr nz, jr_019_556f

    ld l, b
    ld h, c

jr_019_54fe:
    ld l, h
    ld l, h
    ld bc, $6873
    ld l, a
    ld [hl], a
    jr nz, jr_019_5580

    ld l, a
    ld [hl], l
    jr nz, jr_019_557f

jr_019_550b:
    ld l, b
    ld h, l
    jr nz, jr_019_5582

    ld l, e
    ld l, c
    ld l, h
    ld l, h
    ld [hl], e
    ld bc, $6e61

jr_019_5517:
    ld h, h
    jr nz, jr_019_557f

    ld a, b
    ld [hl], b
    ld h, l
    ld [hl], d

jr_019_551e:
    ld l, c
    ld h, l
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_019_5594

    ld h, [hl]
    ld [bc], a
    ld c, $07
    ld hl, $0003
    ld b, h
    ld d, l
    ld c, l
    ld c, l

jr_019_5530:
    ld e, c
    nop

jr_019_5532:
    ld b, h
    ld d, l
    ld c, l
    ld c, l
    ld e, c
    nop

jr_019_5538:
    ld c, b
    ld h, l
    ld l, h
    ld l, h
    ld l, a
    ld l, $20

jr_019_553f:
    ld c, l
    ld a, c
    jr nz, jr_019_55b1

    ld h, c
    ld l, l

jr_019_5545:
    ld h, l
    jr nz, jr_019_55b1

    ld [hl], e
    ld bc, $070e
    inc l
    ld bc, $694c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, @+$45

    ld l, h

jr_019_5556:
    ld [hl], l
    ld h, d
    jr nz, jr_019_559d

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, $02
    rlca
    inc l
    jr nz, jr_019_55c8

    ld l, c
    ld h, h
    ld bc, $756f
    ld [hl], d
    jr nz, jr_019_55d9

    ld h, c
    ld [hl], h
    ld h, e

jr_019_556f:
    ld l, b
    jr nz, @+$76

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    ld bc, $6f79
    ld [hl], l
    jr nz, @+$70

    ld l, a
    ld [hl], h
    ld l, b

jr_019_557f:
    ld l, c

jr_019_5580:
    ld l, [hl]
    ld h, a

jr_019_5582:
    ccf
    nop
    ld e, c
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_019_55fd

    ld l, e
    ld l, c
    ld l, h
    ld l, h
    ld [hl], e
    jr nz, @+$65

    ld h, c
    ld l, [hl]
    ld l, [hl]

jr_019_5594:
    ld l, a
    ld [hl], h
    ld bc, $6564
    ld h, [hl]
    ld h, l
    ld h, c
    ld [hl], h

jr_019_559d:
    jr nz, jr_019_560c

    ld h, l
    jr nz, jr_019_5603

    ld h, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, @+$63

    ld l, h
    ld l, h
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    ld l, [hl]

jr_019_55b1:
    jr nz, jr_019_55fc

    daa
    ld l, h
    ld l, h
    jr nz, jr_019_5628

    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_019_5636

    ld l, a
    ld [hl], l
    ld bc, $6e75
    ld [hl], h
    ld l, c
    ld l, h
    jr nz, jr_019_5640

    ld l, a

jr_019_55c8:
    ld [hl], l
    jr nz, jr_019_5637

    ld h, l
    ld h, c
    ld [hl], d
    ld l, [hl]
    ld l, $03
    nop
    ld b, h
    ld d, l
    ld c, l
    ld c, l
    ld e, c
    nop
    ld b, h

jr_019_55d9:
    ld d, l
    ld c, l
    ld c, l
    ld e, c
    nop
    ld c, l
    ld a, c
    jr nz, jr_019_5650

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_019_5650

    ld [hl], e
    ld bc, $070e
    inc l
    jr nz, jr_019_5654

    ld l, a
    ld [hl], d
    ld l, l
    ld h, l
    ld [hl], d
    ld bc, $694c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, @+$45

    ld l, h

jr_019_55fc:
    ld [hl], l

jr_019_55fd:
    ld h, d
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l

jr_019_5603:
    ld [hl], b
    ld l, $02
    rlca
    inc l
    jr nz, jr_019_5653

    daa
    db $76

jr_019_560c:
    ld h, l
    ld bc, $6f6c
    ld [hl], e
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_019_568c

    ld l, c
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_019_568d

    ld h, [hl]
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]

jr_019_5628:
    jr nz, @+$76

    ld l, a
    jr nz, jr_019_56a6

    ld l, a
    ld [hl], l
    ld l, $02
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l

jr_019_5636:
    ld h, [hl]

jr_019_5637:
    ld l, a
    ld [hl], d
    ld h, l
    inc l
    jr nz, jr_019_5686

    jr nz, jr_019_56ac

    ld [hl], l

jr_019_5640:
    ld [hl], e
    ld [hl], h
    ld bc, $6c70
    ld h, c
    ld a, c
    jr nz, jr_019_56be

    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, h
    jr nz, @+$6f

    ld a, c

jr_019_5650:
    ld bc, $6f68

jr_019_5653:
    ld l, [hl]

jr_019_5654:
    ld l, a
    ld [hl], d
    jr nz, @+$6b

    ld [hl], e
    jr nz, @+$63

    db $76
    ld h, l
    ld l, [hl]
    ld h, a
    ld h, l
    ld h, h
    ld l, $02
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_019_56e2

    ld l, a
    ld [hl], l
    jr nz, jr_019_56dd

    ld l, h
    ld h, c
    ld a, c
    jr nz, @+$6f

    ld h, l
    ccf
    nop
    ld d, e
    ld l, a
    jr nz, @+$70

    ld l, a
    ld [hl], a
    jr nz, jr_019_56f1

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_019_56fb

    ld l, a
    ld [hl], l
    daa
    ld [hl], d

jr_019_5686:
    ld h, l
    ld bc, $6843
    ld h, c
    ld l, l

jr_019_568c:
    ld [hl], b

jr_019_568d:
    ld l, c
    ld l, a
    ld l, [hl]
    inc l
    jr nz, jr_019_570c

    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    ld bc, $6f64
    ld l, [hl]
    ld h, l
    jr nz, jr_019_5716

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_019_5711

    ld h, c
    ld [hl], h

jr_019_56a6:
    ld h, e
    ld l, b
    ld h, l
    ld [hl], e
    ccf
    ld [bc], a

jr_019_56ac:
    ld c, c
    jr nz, @+$79

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_019_5719

    ld l, c
    ld h, a
    ld l, [hl]
    ld l, c
    ld h, [hl]
    ld a, c
    ld bc, $7573

jr_019_56be:
    ld h, e
    ld l, b
    jr nz, jr_019_5725

    ld l, a
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, h
    ld l, c
    ld h, e
    ld h, l
    ld bc, $6977
    ld [hl], h
    ld l, b
    jr nz, jr_019_5732

    jr nz, jr_019_5740

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    ld hl, $0003
    ld c, b
    ld h, c
    ld l, b

jr_019_56dd:
    ld hl, $4e20
    ld l, a
    ld [hl], a

jr_019_56e2:
    jr nz, jr_019_575d

    ld l, a
    ld [hl], l
    jr nz, @+$75

    ld l, b
    ld h, c
    ld l, h
    ld l, h
    ld bc, $6572
    ld [hl], b
    ld h, l

jr_019_56f1:
    ld l, [hl]
    ld [hl], h
    inc l
    jr nz, @+$6b

    ld l, [hl]
    ld [hl], e
    ld l, a
    ld l, h
    ld h, l

jr_019_56fb:
    ld l, [hl]
    ld [hl], h
    ld bc, $6974
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_019_5779

    ld l, b
    ld l, c
    ld h, l
    ld h, [hl]
    ld hl, $0003

jr_019_570c:
    ld c, c
    jr nz, jr_019_5770

    ld h, e
    ld l, e

jr_019_5711:
    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, h
    ld h, l

jr_019_5716:
    ld h, h
    ld h, a
    ld h, l

jr_019_5719:
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_019_5793

    ld l, e
    ld l, c
    ld l, h
    ld l, h
    ld [hl], e

jr_019_5725:
    jr nz, jr_019_5790

    ld l, [hl]
    ld bc, $614d
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_019_5777

    ld h, c
    ld l, l

jr_019_5732:
    ld h, l
    ld [hl], e
    ld l, $2e
    ld l, $02
    ld l, $2e
    ld l, $62
    ld [hl], l
    ld [hl], h
    jr nz, jr_019_57a5

jr_019_5740:
    ld a, b
    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, c
    ld h, l
    ld l, [hl]
    ld h, e
    ld h, l
    ld bc, $6873
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_019_57c4

    ld [hl], b
    ld h, l
    ld h, c
    ld l, e
    jr nz, jr_019_57bd

    ld l, a
    ld [hl], d
    ld bc, $6c43
    ld [hl], l

jr_019_575d:
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
    ld [hl], e
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l

jr_019_5770:
    daa
    db $76
    ld h, l
    jr nz, jr_019_57ec

    ld l, a
    ld l, [hl]

jr_019_5777:
    jr nz, jr_019_57da

jr_019_5779:
    ld l, h
    ld l, h
    jr nz, jr_019_57f1

    ld l, b
    ld h, l
    ld bc, $616d
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_019_57ee

    ld h, c
    ld l, l
    ld h, l
    ld [hl], e
    jr nz, jr_019_5804

    ld l, c
    ld [hl], h
    ld l, b

jr_019_5790:
    ld bc, $6874

jr_019_5793:
    ld h, l
    jr nz, jr_019_57d9

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_019_57de

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld [hl], e
    ld hl, $5902
    ld l, a
    ld [hl], l

jr_019_57a5:
    jr nz, jr_019_580f

    ld h, c
    db $76
    ld h, l
    jr nz, jr_019_581a

    ld l, a
    jr nz, jr_019_581c

    ld l, a
    ld [hl], d
    ld h, l
    ld bc, $6e65
    ld h, l
    ld l, l
    ld l, c
    ld h, l
    ld [hl], e
    inc l
    jr nz, jr_019_57c4

jr_019_57bd:
    ld l, $01
    ld b, c
    ld [hl], e
    jr nz, jr_019_5837

    ld l, b

jr_019_57c4:
    ld h, l
    jr nz, jr_019_5829

    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_5833

    ld l, a
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d
    inc l
    ld [bc], a
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_019_584b

    ld l, b

jr_019_57d9:
    ld h, c

jr_019_57da:
    ld l, h
    ld l, h
    jr nz, jr_019_5850

jr_019_57de:
    ld h, l
    ld h, e
    ld h, l
    ld l, c
    db $76
    ld h, l
    ld bc, $6e61
    jr nz, jr_019_5852

    ld l, [hl]
    db $76
    ld l, c

jr_019_57ec:
    ld [hl], h
    ld h, c

jr_019_57ee:
    ld [hl], h
    ld l, c
    ld l, a

jr_019_57f1:
    ld l, [hl]
    jr nz, jr_019_5868

    ld l, a
    ld bc, $6550
    ld h, c
    ld h, e
    ld l, b
    daa
    ld [hl], e
    jr nz, jr_019_5842

    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, h
    ld h, l

jr_019_5804:
    ld l, $02
    ld c, c
    jr nz, jr_019_5880

    ld l, c
    ld [hl], e
    ld l, b
    jr nz, jr_019_5887

    ld l, a

jr_019_580f:
    ld [hl], l
    jr nz, jr_019_587e

    ld [hl], l
    ld h, e
    ld l, e
    ld bc, $6761
    ld h, c
    ld l, c

jr_019_581a:
    ld l, [hl]
    ld [hl], e

jr_019_581c:
    ld [hl], h
    jr nz, jr_019_586c

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    jr nz, jr_019_588e

    ld l, [hl]
    ld bc, $614d

jr_019_5829:
    ld [hl], d
    ld l, c
    ld l, a
    jr nz, jr_019_587a

    ld h, c
    ld l, [hl]
    ld h, h
    ld l, $03

jr_019_5833:
    nop
    ld c, c
    jr nz, jr_019_5898

jr_019_5837:
    ld l, l
    jr nz, @+$10

    rlca
    inc l
    ld bc, $694c
    ld l, [hl]
    ld l, e
    ld [hl], e

jr_019_5842:
    jr nz, jr_019_5887

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6843
    ld h, c

jr_019_584b:
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]

jr_019_5850:
    ld l, $02

jr_019_5852:
    ld c, c
    jr nz, jr_019_58b6

    ld l, l
    jr nz, jr_019_58cc

    ld l, b
    ld h, l
    jr nz, @+$69

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], e
    ld [hl], h
    ld bc, $666f
    jr nz, jr_019_58dc

jr_019_5868:
    ld l, b
    ld h, l
    jr nz, jr_019_58d3

jr_019_586c:
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld hl, $5401
    ld l, b
    ld h, l
    jr nz, jr_019_58e7

    ld l, h
    ld h, l
    ld h, c

jr_019_587a:
    ld [hl], e
    ld [hl], l
    ld [hl], d
    ld h, l

jr_019_587e:
    daa
    ld [hl], e

jr_019_5880:
    jr nz, jr_019_58ef

    ld l, c
    ld l, [hl]
    ld h, l
    ld l, $03

jr_019_5887:
    nop
    ld c, l
    ld a, c
    jr nz, jr_019_58fa

    ld h, c
    ld l, l

jr_019_588e:
    ld h, l
    jr nz, jr_019_58fa

    ld [hl], e
    ld bc, $070e
    inc l
    jr nz, @+$68

jr_019_5898:
    ld l, a
    ld [hl], d
    ld l, l
    ld h, l
    ld [hl], d
    ld bc, $694c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_019_58e8

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, $02
    ld d, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, @+$66

jr_019_58b6:
    ld h, c
    ld a, c
    inc l
    jr nz, jr_019_5904

    jr nz, @+$75

    ld l, b
    ld h, c
    ld l, h
    ld l, h
    ld bc, $7661
    ld h, l
    ld l, [hl]
    ld h, a
    ld h, l
    jr nz, jr_019_5943

    ld l, a
    ld [hl], l

jr_019_58cc:
    ld [hl], d
    jr nz, jr_019_5943

    ld l, b
    ld h, l
    ld h, [hl]
    ld [hl], h

jr_019_58d3:
    ld bc, $666f
    jr nz, jr_019_5945

    ld a, c
    jr nz, jr_019_594f

    ld l, c

jr_019_58dc:
    ld [hl], h
    ld l, h
    ld h, l
    ld l, $03
    nop
    ld c, l
    ld a, c
    jr nz, @+$70

    ld h, c

jr_019_58e7:
    ld l, l

jr_019_58e8:
    ld h, l
    jr nz, @+$6b

    ld [hl], e
    ld bc, $070e

jr_019_58ef:
    inc l
    jr nz, jr_019_5958

    ld l, a
    ld [hl], d
    ld l, l
    ld h, l
    ld [hl], d
    ld bc, $694c

jr_019_58fa:
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_019_5942

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, @+$45

jr_019_5904:
    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, $02
    ld c, c
    jr nz, jr_019_5979

    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_597f

    ld a, c
    ld bc, $7247
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_019_595e

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_019_5998

    ld l, c
    ld [hl], h
    ld l, h
    ld h, l
    ld bc, $6f74
    jr nz, jr_019_59a6

    ld l, a
    ld [hl], l
    ld l, $20
    rlca
    ld l, $02
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    inc l
    jr nz, jr_019_5989

    jr nz, jr_019_59af

jr_019_5942:
    ld [hl], l

jr_019_5943:
    ld [hl], e
    ld [hl], h

jr_019_5945:
    ld bc, $6c70
    ld h, c
    ld a, c
    jr nz, @+$77

    ld l, [hl]
    ld [hl], h
    ld l, c

jr_019_594f:
    ld l, h
    jr nz, jr_019_59bf

    ld a, c
    ld bc, $6f68
    ld l, [hl]
    ld l, a

jr_019_5958:
    ld [hl], d
    jr nz, jr_019_59c4

    ld [hl], e
    jr nz, jr_019_59bf

jr_019_595e:
    db $76
    ld h, l
    ld l, [hl]
    ld h, a
    ld h, l
    ld h, h
    ld l, $02
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_019_59e5

    ld l, a
    ld [hl], l
    jr nz, jr_019_59e0

    ld l, h
    ld h, c
    ld a, c
    jr nz, @+$6f

    ld h, l
    ccf
    nop
    ld d, h

jr_019_5979:
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_019_59ea

    ld h, l

jr_019_597f:
    ld [hl], h
    jr nz, @+$6f

    ld h, l
    jr nz, @+$63

    db $76
    ld h, l
    ld l, [hl]
    ld h, a

jr_019_5989:
    ld h, l
    ld bc, $796d
    jr nz, jr_019_5a03

    ld l, c
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_019_59e4

jr_019_5998:
    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l

jr_019_59a6:
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld hl, $0003
    ld b, h
    ld d, l

jr_019_59af:
    ld c, l
    ld c, l
    ld e, c
    nop
    ld b, h
    ld d, l
    ld c, l
    ld c, l
    ld e, c
    nop
    ld c, l
    ld a, c
    jr nz, jr_019_5a1f

    ld h, c
    ld l, h

jr_019_59bf:
    ld l, h
    jr nz, @+$74

    ld l, a
    ld l, h

jr_019_59c4:
    ld l, h
    ld h, l
    ld h, h
    ld bc, $666f
    ld h, [hl]
    jr nz, jr_019_5a3c

    ld h, [hl]
    jr nz, jr_019_5a44

    ld l, b
    ld h, l
    jr nz, jr_019_5a41

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld bc, $6e61
    ld h, h
    jr nz, @+$6b

    ld l, [hl]
    ld [hl], h

jr_019_59e0:
    ld l, a
    jr nz, jr_019_5a57

    ld l, b

jr_019_59e4:
    ld h, l

jr_019_59e5:
    jr nz, jr_019_5a57

    ld l, a
    ld l, [hl]
    ld h, h

jr_019_59ea:
    ld hl, $0003
    ld c, c
    jr nz, jr_019_5a64

    ld l, a
    ld l, h
    ld h, h
    jr nz, @+$6a

    ld l, c
    ld l, l
    jr nz, jr_019_5a62

    ld [hl], h
    daa
    ld [hl], e
    ld bc, $2061
    ld [hl], d
    ld l, c
    ld [hl], e
    ld l, e

jr_019_5a03:
    jr nz, jr_019_5a79

    ld l, a
    jr nz, @+$63

    ld l, c
    ld l, l
    jr nz, @+$76

    ld l, a
    ld l, a
    ld bc, $6c63
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, @+$76

    ld l, a
    jr nz, jr_019_5a8d

    ld l, b
    ld h, l
    jr nz, jr_019_5a94

    ld h, c
    ld [hl], h

jr_019_5a1f:
    ld h, l
    ld [hl], d
    ld l, $03
    nop
    ld b, [hl]
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_019_5a92

    ld h, l
    ld [hl], d
    ld h, l
    inc l
    jr nz, jr_019_5aa9

    ld l, a
    ld [hl], l
    ld bc, $6163
    ld l, [hl]
    jr nz, jr_019_5aaf

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b

jr_019_5a3c:
    jr nz, jr_019_5ab2

    ld l, b
    ld h, l
    ld l, l

jr_019_5a41:
    ld bc, $616d

jr_019_5a44:
    ld l, e
    ld h, l
    jr nz, jr_019_5abb

    ld l, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_019_5abb

    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    ld [hl], e
    ld l, $02

jr_019_5a57:
    ld c, l
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    jr nz, @+$79

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h

jr_019_5a62:
    jr nz, jr_019_5ad2

jr_019_5a64:
    ld h, l
    db $76
    ld h, l
    ld [hl], d
    ld bc, $696d
    ld [hl], e
    ld [hl], e
    jr nz, @+$63

    jr nz, jr_019_5ae4

    ld l, b
    ld l, a
    ld [hl], h
    ld bc, $696c
    ld l, e
    ld h, l

jr_019_5a79:
    jr nz, jr_019_5aef

    ld l, b
    ld h, c
    ld [hl], h
    ld hl, $0003
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$45

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_019_5ace

    ld l, b
    ld h, c

jr_019_5a8d:
    ld l, l
    ld [hl], b
    ld [hl], e
    jr nz, jr_019_5af3

jr_019_5a92:
    ld [hl], d
    ld h, l

jr_019_5a94:
    ld bc, $6568
    ld [hl], d
    ld h, l
    jr nz, jr_019_5b04

    ld l, [hl]
    jr nz, jr_019_5b12

    ld l, b
    ld h, l
    ld bc, $6f6c
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld h, l
    jr nz, jr_019_5b0a

jr_019_5aa9:
    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    jr nz, jr_019_5b23

jr_019_5aaf:
    ld l, a
    ld h, h
    ld h, c

jr_019_5ab2:
    ld a, c
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_019_5b20

jr_019_5abb:
    ld a, b
    dec l
    ld b, e
    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    ld [hl], e
    jr nz, jr_019_5b2b

    ld [hl], d
    ld h, l
    jr nz, jr_019_5b37

jr_019_5ace:
    ld l, [hl]
    jr nz, jr_019_5b45

    ld l, b

jr_019_5ad2:
    ld h, l
    ld bc, $6f6c
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld h, l
    jr nz, jr_019_5b3d

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    jr nz, jr_019_5b56

    ld l, a
    ld h, h

jr_019_5ae4:
    ld h, c
    ld a, c
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_019_5b4f

    ld [hl], d

jr_019_5aef:
    ld h, l
    ld h, c
    jr nz, jr_019_5b68

jr_019_5af3:
    ld [hl], b
    jr nz, jr_019_5b6a

    ld l, b
    ld h, l
    ld bc, $7473
    ld h, l
    ld [hl], b
    ld [hl], e
    jr nz, jr_019_5b69

    ld [hl], e
    jr nz, @+$76

    ld l, b

jr_019_5b04:
    ld h, l
    jr nz, @+$45

    ld l, h
    ld [hl], l
    ld h, d

jr_019_5b0a:
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    ld [hl], e
    daa

jr_019_5b12:
    jr nz, jr_019_5b7c

    ld h, c
    ld l, [hl]
    ld h, a
    dec l
    ld l, a
    ld [hl], l
    ld [hl], h
    ld l, $02
    ld d, h
    ld l, b
    ld h, l

jr_019_5b20:
    jr nz, @+$75

    ld h, l

jr_019_5b23:
    ld h, c
    ld [hl], h
    ld [hl], e
    jr nz, jr_019_5b9f

    ld l, c
    ld [hl], h
    ld l, b

jr_019_5b2b:
    jr nz, jr_019_5ba1

    ld l, b
    ld h, l
    ld bc, $6562
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_5bac

    ld l, c

jr_019_5b37:
    ld h, l
    ld [hl], a
    ld [hl], e
    jr nz, jr_019_5b9d

    ld [hl], d

jr_019_5b3d:
    ld h, l
    jr nz, jr_019_5bb2

    ld h, l
    dec l
    ld bc, $6573

jr_019_5b45:
    ld [hl], d
    db $76
    ld h, l
    ld h, h
    jr nz, @+$68

    ld l, a
    ld [hl], d
    jr nz, jr_019_5bc3

jr_019_5b4f:
    ld l, b
    ld h, l
    ld l, l
    ld l, $03
    nop
    ld d, h

jr_019_5b56:
    ld l, b
    ld h, l
    jr nz, jr_019_5bbb

    ld [hl], d
    ld h, l
    ld h, c
    jr nz, jr_019_5bd4

    ld [hl], b
    jr nz, jr_019_5bd6

    ld l, b
    ld h, l
    ld bc, $7473
    ld h, l

jr_019_5b68:
    ld [hl], b

jr_019_5b69:
    ld [hl], e

jr_019_5b6a:
    jr nz, @+$6b

    ld [hl], e
    jr nz, @+$68

    ld l, a
    ld [hl], d
    jr nz, jr_019_5be7

    ld l, b
    ld h, l
    ld bc, $7865
    dec l
    ld b, e
    ld l, h
    ld [hl], l

jr_019_5b7c:
    ld h, d
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld [hl], e
    ld l, $02
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_019_5bfe

    ld h, l
    ld h, c
    ld [hl], h
    ld [hl], e
    jr nz, jr_019_5c08

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_019_5c0a

    ld l, b
    ld h, l
    ld bc, $6562
    ld [hl], e
    ld [hl], h

jr_019_5b9d:
    jr nz, jr_019_5c15

jr_019_5b9f:
    ld l, c
    ld h, l

jr_019_5ba1:
    ld [hl], a
    ld [hl], e
    jr nz, jr_019_5c06

    ld [hl], d
    ld h, l
    ld bc, $6572
    ld [hl], e
    ld h, l

jr_019_5bac:
    ld [hl], d
    db $76
    ld h, l
    ld h, h
    jr nz, jr_019_5c18

jr_019_5bb2:
    ld l, a
    ld [hl], d
    jr nz, jr_019_5c2a

    ld l, b
    ld h, l
    ld l, l
    ld l, $03

jr_019_5bbb:
    nop
    ld b, a
    ld l, a
    ld [hl], h
    jr nz, @+$63

    jr nz, @+$75

jr_019_5bc3:
    ld h, l
    ld h, e
    ld l, a
    ld l, [hl]
    ld h, h
    ccf
    nop
    ld d, h
    ld h, e
    ld l, b
    ld hl, $4920
    jr nz, jr_019_5c49

    ld h, c
    ld [hl], e

jr_019_5bd4:
    jr nz, jr_019_5c3d

jr_019_5bd6:
    ld l, a
    ld l, [hl]
    ld l, [hl]
    ld h, c
    ld bc, $6574
    ld l, h
    ld l, h
    jr nz, jr_019_5c5a

    ld l, a
    ld [hl], l
    jr nz, jr_019_5c58

    ld l, a
    ld l, l

jr_019_5be7:
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $0003
    ld c, a
    ld l, [hl]
    jr nz, jr_019_5c55

    jr nz, jr_019_5c58

    ld [hl], l
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    jr nz, @+$75

    ld l, b

jr_019_5bfe:
    ld l, a
    ld [hl], h
    inc l
    ld bc, $2049
    ld h, e
    ld l, b

jr_019_5c06:
    ld l, c
    ld [hl], b

jr_019_5c08:
    ld [hl], b
    ld h, l

jr_019_5c0a:
    ld h, h
    jr nz, jr_019_5c76

    ld [hl], h
    jr nz, jr_019_5c79

    ld l, [hl]
    ld l, $01
    ld c, c
    daa

jr_019_5c15:
    ld l, l
    jr nz, jr_019_5c8b

jr_019_5c18:
    ld l, a
    jr nz, jr_019_5c80

    ld a, b
    ld h, e
    ld l, c
    ld [hl], h
    ld h, l
    ld h, h
    ld hl, $0003
    ld c, c
    jr nz, @+$76

    ld l, a
    ld [hl], b
    ld [hl], b

jr_019_5c2a:
    ld h, l
    ld h, h
    jr nz, jr_019_5c8f

    jr nz, jr_019_5c92

    ld [hl], l
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    ld bc, $6873
    ld l, a
    ld [hl], h
    jr nz, jr_019_5c9d

    ld l, [hl]

jr_019_5c3d:
    ld h, h
    jr nz, jr_019_5ca9

    ld [hl], h
    jr nz, jr_019_5cad

    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld bc, $6c66

jr_019_5c49:
    ld h, l
    ld [hl], a
    ld hl, $4220
    ld [hl], l
    ld [hl], h
    jr nz, jr_019_5cbb

    ld [hl], h
    jr nz, jr_019_5cbd

jr_019_5c55:
    ld l, c
    ld [hl], h
    ld [bc], a

jr_019_5c58:
    ld [hl], h
    ld l, b

jr_019_5c5a:
    ld h, l
    jr nz, jr_019_5ccd

    ld l, c
    ld l, [hl]
    jr nz, jr_019_5cc2

    ld l, [hl]
    ld h, h
    jr nz, @+$75

    ld h, c
    ld l, [hl]
    ld l, e
    ld hl, $5301
    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e
    jr nz, jr_019_5cdd

    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_019_5cea

jr_019_5c76:
    ld l, b
    ld h, c
    ld [hl], h

jr_019_5c79:
    ld bc, $656b
    ld h, l
    ld [hl], b
    jr nz, jr_019_5ced

jr_019_5c80:
    ld h, l
    jr nz, jr_019_5ceb

    ld l, a
    ld l, a
    ld l, e
    ld h, l
    ld h, h
    ld hl, $0003

jr_019_5c8b:
    ld l, $2e
    ld l, $73

jr_019_5c8f:
    ld l, a
    jr nz, @+$4b

jr_019_5c92:
    jr nz, jr_019_5cf5

    ld l, c
    ld l, l
    jr nz, jr_019_5cfe

    ld l, a
    ld [hl], d
    jr nz, @+$76

    ld l, b

jr_019_5c9d:
    ld h, l
    ld bc, $7267
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_019_5d0c

    ld [hl], d
    ld l, a
    ld l, l

jr_019_5ca9:
    jr nz, @+$64

    ld h, l
    ld [hl], h

jr_019_5cad:
    ld [hl], a
    ld h, l
    ld h, l
    ld l, [hl]
    ld bc, $6874
    ld h, l
    ld [hl], e
    ld h, l
    jr nz, jr_019_5ceb

    jr nz, jr_019_5d2f

jr_019_5cbb:
    ld [hl], d
    ld h, l

jr_019_5cbd:
    ld h, l
    ld [hl], e
    ld l, $20
    ld c, c

jr_019_5cc2:
    daa
    ld l, l
    ld [bc], a
    ld [hl], e
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, @+$4b

    daa
    db $76

jr_019_5ccd:
    ld h, l
    jr nz, jr_019_5d37

    ld l, a
    ld [hl], h
    jr nz, @+$6b

    ld [hl], h
    inc l
    ld bc, $7562
    ld [hl], h
    jr nz, @+$6b

    ld [hl], h

jr_019_5cdd:
    jr nz, @+$6a

    ld l, c
    ld [hl], h
    ld [hl], e
    jr nz, @+$63

    ld bc, $7262
    ld h, c
    ld l, [hl]
    ld h, e

jr_019_5cea:
    ld l, b

jr_019_5ceb:
    jr nz, jr_019_5d4e

jr_019_5ced:
    ld l, [hl]
    ld h, h
    jr nz, jr_019_5d3a

    jr nz, jr_019_5d67

    ld [hl], d
    ld l, c

jr_019_5cf5:
    ld [hl], b
    ld l, h
    ld h, l
    ld hl, $0003
    ld b, a
    ld l, a
    ld [hl], h

jr_019_5cfe:
    jr nz, jr_019_5d61

    jr nz, @+$75

    ld h, l
    ld h, e
    ld l, a
    ld l, [hl]
    ld h, h
    ccf
    nop
    ld d, h
    ld h, e
    ld l, b

jr_019_5d0c:
    ld hl, $4920
    jr nz, jr_019_5d88

    ld h, c
    ld [hl], e
    jr nz, jr_019_5d7c

    ld l, a
    ld l, [hl]
    ld l, [hl]
    ld h, c
    ld bc, $6574
    ld l, h
    ld l, h
    jr nz, jr_019_5d99

    ld l, a
    ld [hl], l
    jr nz, jr_019_5d97

    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $0003

jr_019_5d2f:
    ld d, a
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_019_5d7e

    jr nz, jr_019_5da7

jr_019_5d37:
    ld l, h
    ld h, c
    ld a, c

jr_019_5d3a:
    ld h, l
    ld h, h
    jr nz, @+$4e

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    inc l
    ld bc, $796d
    jr nz, @+$64

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_019_5db8

    ld h, l

jr_019_5d4e:
    ld [hl], b
    ld [hl], h
    jr nz, jr_019_5dc4

    ld l, a
    ld l, h
    ld l, h
    dec l
    ld bc, $6e69
    ld h, a
    jr nz, jr_019_5dc5

    ld l, [hl]
    ld [hl], h
    ld l, a
    jr nz, @+$76

jr_019_5d61:
    ld l, b
    ld h, l
    jr nz, jr_019_5dd7

    ld l, a
    ld [hl], l

jr_019_5d67:
    ld h, a
    ld l, b
    ld hl, $4102
    jr nz, jr_019_5dd4

    ld h, c
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    jr nz, jr_019_5dea

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_019_5ded

    ld l, a

jr_019_5d7c:
    ld l, h
    ld l, h

jr_019_5d7e:
    ld [hl], e
    ld bc, $6874
    ld h, c
    ld [hl], h
    jr nz, @+$6f

    ld [hl], l
    ld h, e

jr_019_5d88:
    ld l, b
    jr nz, jr_019_5df4

    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $6166
    ld l, c
    ld [hl], d
    jr nz, jr_019_5df7

    ld [hl], h

jr_019_5d97:
    jr nz, jr_019_5dfa

jr_019_5d99:
    ld l, h
    ld l, h
    ld hl, $0003
    ld c, a
    ld [hl], d
    ld l, c
    ld h, a
    ld l, c
    ld l, [hl]
    ld h, c
    ld l, h
    ld l, h

jr_019_5da7:
    ld a, c
    inc l
    jr nz, jr_019_5df7

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    ld bc, $6f43
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    jr nz, jr_019_5e2f

jr_019_5db8:
    ld h, c
    ld [hl], e
    ld bc, $7263
    ld h, l
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, @+$70

jr_019_5dc4:
    ld h, c

jr_019_5dc5:
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    ld l, $02
    ld c, b
    ld [hl], l
    ld l, l
    ld h, c
    ld l, [hl]
    ld [hl], e

jr_019_5dd4:
    jr nz, jr_019_5e37

    ld [hl], d

jr_019_5dd7:
    ld h, l
    jr nz, jr_019_5e4a

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    dec l
    ld bc, $656c
    ld [hl], e
    ld [hl], e
    jr nz, @+$64

    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d

jr_019_5dea:
    ld h, l
    jr nz, jr_019_5e5b

jr_019_5ded:
    ld h, c
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    ld l, $03

jr_019_5df4:
    nop
    ld c, a
    ld h, [hl]

jr_019_5df7:
    jr nz, jr_019_5e5a

    ld l, h

jr_019_5dfa:
    ld l, h
    jr nz, jr_019_5e71

    ld l, b
    ld h, l
    jr nz, jr_019_5e64

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld [hl], e
    inc l
    ld bc, $694c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_019_5e79

    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_019_5e86

    ld l, [hl]
    ld l, h
    ld a, c
    ld bc, $6e6f
    ld h, l
    jr nz, @+$4b

    jr nz, jr_019_5e8a

    ld h, c
    ld [hl], h
    ld h, l
    ld hl, $4902
    jr nz, jr_019_5e92

    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_019_5ea3

jr_019_5e2f:
    ld l, b
    ld h, l
    jr nz, jr_019_5e9f

    ld h, c
    ld a, c
    ld l, a
    ld [hl], l

jr_019_5e37:
    ld [hl], h
    ld bc, $6e61
    ld h, h
    jr nz, jr_019_5eb2

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$6a

    ld h, l
    ld h, c
    ld [hl], h
    ld l, b
    ld hl, $0003

jr_019_5e4a:
    ld b, a
    ld l, a
    ld [hl], h
    jr nz, jr_019_5eb0

    jr nz, @+$75

    ld h, l
    ld h, e
    ld l, a
    ld l, [hl]
    ld h, h
    ccf
    nop
    ld d, h
    ld h, e

jr_019_5e5a:
    ld l, b

jr_019_5e5b:
    ld hl, $4920
    jr nz, jr_019_5ed7

    ld h, c
    ld [hl], e
    jr nz, @+$69

jr_019_5e64:
    ld l, a
    ld l, [hl]
    ld l, [hl]
    ld h, c
    ld bc, $6574
    ld l, h
    ld l, h
    jr nz, @+$7b

    ld l, a
    ld [hl], l

jr_019_5e71:
    jr nz, jr_019_5ee6

    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c

jr_019_5e79:
    ld l, [hl]
    ld h, a
    ld hl, $0003
    ld b, c
    ld [hl], h
    jr nz, jr_019_5ece

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e

jr_019_5e86:
    jr nz, @+$45

    ld l, h
    ld [hl], l

jr_019_5e8a:
    ld h, d
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $6568

jr_019_5e92:
    ld h, c
    ld [hl], h
    ld l, b
    daa
    ld [hl], e
    jr nz, jr_019_5f0c

    ld l, a
    jr nz, @+$76

    ld h, c
    ld l, h
    ld l, h

jr_019_5e9f:
    inc l
    ld bc, $6874

jr_019_5ea3:
    ld h, c
    ld [hl], h
    jr nz, jr_019_5f16

    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_019_5f25

    ld l, a
    ld [hl], l
    daa
    ld [hl], d

jr_019_5eb0:
    ld h, l
    ld [bc], a

jr_019_5eb2:
    ld l, c
    ld l, [hl]
    jr nz, jr_019_5f1f

    ld [hl], h
    inc l
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_019_5f21

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $6567
    ld [hl], h
    jr nz, jr_019_5f37

    ld [hl], l
    ld [hl], h
    ld hl, $4120
    ld l, [hl]

jr_019_5ece:
    ld h, h
    jr nz, jr_019_5f45

    ld l, b
    ld h, c
    ld [hl], h
    ld [bc], a
    ld h, [hl]
    ld h, c

jr_019_5ed7:
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    jr nz, jr_019_5f48

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_5f55

    ld l, a
    ld l, h
    ld l, h

jr_019_5ee6:
    ld [hl], e
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_019_5f50

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_019_5f65

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld bc, $6e69
    ld [hl], h
    ld l, a
    jr nz, jr_019_5f67

    ld [hl], h
    inc l
    jr nz, jr_019_5f76

    ld l, a
    ld l, a
    ld hl, $0003
    ld b, h
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c

jr_019_5f0c:
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, @+$6b

    ld [hl], e
    jr nz, @+$65

    ld [hl], l
    ld [hl], h

jr_019_5f16:
    jr nz, @+$64

    ld a, c
    ld bc, $6874
    ld h, l
    jr nz, jr_019_5f87

jr_019_5f1f:
    ld h, l
    ld h, c

jr_019_5f21:
    ld [hl], h
    ld l, b
    jr nz, jr_019_5f87

jr_019_5f25:
    ld [hl], l
    ld [hl], h
    jr nz, jr_019_5f8e

    ld a, b
    dec l
    ld bc, $6574
    ld l, [hl]
    ld h, h
    ld h, l
    ld h, h
    jr nz, jr_019_5f96

    ld a, c
    jr nz, jr_019_5fab

jr_019_5f37:
    ld l, b
    ld h, l
    jr nz, jr_019_5fa1

    ld h, c
    ld l, c
    ld [hl], d
    dec l
    ld [bc], a
    ld [hl], a
    ld h, c
    ld a, c
    ld l, $20

jr_019_5f45:
    ld d, e
    ld h, e
    ld l, a

jr_019_5f48:
    ld [hl], d
    ld h, l
    ld [hl], e
    jr nz, @+$65

    ld l, h
    ld l, c
    ld l, l

jr_019_5f50:
    ld h, d
    ld bc, $6877
    ld h, l

jr_019_5f55:
    ld l, [hl]
    jr nz, jr_019_5fd1

    ld l, a
    ld [hl], l
    jr nz, jr_019_5fbf

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $6966
    ld h, a
    ld [hl], l

jr_019_5f65:
    ld [hl], d
    ld h, l

jr_019_5f67:
    jr nz, jr_019_5fcd

    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld [hl], e
    ld l, $03
    nop
    ld l, $2e

jr_019_5f76:
    ld l, $73
    ld l, a
    jr nz, jr_019_5fe4

    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_019_5fea

    ld h, l
    ld h, c
    ld [hl], h
    ld l, b
    inc l

jr_019_5f87:
    ld bc, $6874
    ld h, l
    jr nz, jr_019_5ff4

    ld [hl], d

jr_019_5f8e:
    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_019_5ff6

    ld h, c
    ld [hl], h
    ld h, e

jr_019_5f96:
    ld l, b
    ld h, l
    ld [hl], e
    ld bc, $796d
    jr nz, jr_019_6011

    ld l, b
    ld h, c
    ld h, [hl]

jr_019_5fa1:
    ld [hl], h
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, jr_019_601b

    ld [hl], b
    ld l, c
    ld l, [hl]

jr_019_5fab:
    ld [hl], e
    ld [bc], a
    ld l, l
    ld a, c
    jr nz, jr_019_6019

    ld h, l
    ld h, c
    ld h, h
    ld hl, $5420
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_019_6035

    ld l, b

jr_019_5fbf:
    ld a, c
    ld bc, $7665
    ld h, l
    ld [hl], d
    ld a, c
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, @+$6a

    ld l, c
    ld [hl], h

jr_019_5fcd:
    ld [hl], e
    jr nz, @+$79

    ld l, c

jr_019_5fd1:
    ld h, e
    ld l, e
    dec l
    ld bc, $6465
    jr nz, jr_019_6041

    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    jr nz, @+$28

    jr nz, jr_019_6054

    ld l, h
    ld l, c
    ld h, e

jr_019_5fe4:
    ld h, l
    ld [hl], e
    ld hl, $0003
    rlca

jr_019_5fea:
    inc l
    jr nz, @+$6a

    ld h, c
    db $76
    ld h, l
    ld bc, $6f79
    ld [hl], l

jr_019_5ff4:
    jr nz, @+$63

jr_019_5ff6:
    ld l, h
    ld [hl], d
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    jr nz, @+$64

    ld h, l
    ld h, l
    ld l, [hl]
    ld bc, $6f74
    jr nz, jr_019_6056

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    daa
    ld [hl], e
    jr nz, jr_019_6051

    ld h, c
    ld [hl], e
    ld [hl], h

jr_019_6011:
    ld l, h
    ld h, l
    ccf
    nop
    ld e, c
    ld l, a
    ld [hl], l
    daa

jr_019_6019:
    db $76
    ld h, l

jr_019_601b:
    jr nz, @+$67

    ld h, c
    ld [hl], d
    ld l, [hl]
    ld h, l
    ld h, h
    ld bc, $6874
    ld h, l
    jr nz, jr_019_609a

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld l, $20
    ld e, c
    ld l, a
    ld [hl], l
    ld bc, $6873
    ld l, a

jr_019_6035:
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_019_60a1

    ld l, a
    ld hl, $0003
    ld b, c
    jr nz, jr_019_60a4

jr_019_6041:
    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    jr nz, jr_019_60b1

    ld l, [hl]
    jr nz, jr_019_60bf

    ld l, b
    ld h, l
    ld bc, $6c63
    ld l, a

jr_019_6051:
    ld [hl], l
    ld h, h
    ld [hl], e

jr_019_6054:
    ld l, $2e

jr_019_6056:
    ld l, $74
    ld l, b
    ld h, l
    jr nz, jr_019_60d2

    ld l, c
    ld h, l
    ld [hl], a
    ld bc, $756d
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_60c8

    ld h, l
    jr nz, @+$63

    ld [hl], e
    ld [hl], h
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_019_60ee

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_019_60f3

    ld l, b
    ld h, l
    jr nz, @+$49

    ld [hl], d
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
    jr nz, jr_019_6106

    ld l, c
    ld [hl], h
    ld l, h
    ld h, l
    ld l, $02
    ld e, c
    ld l, a

jr_019_609a:
    ld [hl], l
    daa
    db $76
    ld h, l
    jr nz, jr_019_6106

    ld l, c

jr_019_60a1:
    ld l, [hl]
    ld h, c
    ld l, h

jr_019_60a4:
    ld l, h
    ld a, c
    ld bc, $6572
    ld h, c
    ld h, e
    ld l, b
    ld h, l
    ld h, h
    jr nz, jr_019_6117

    ld l, a

jr_019_60b1:
    ld l, h
    ld h, [hl]
    daa
    ld [hl], e
    ld bc, $6970
    ld l, [hl]
    ld h, c
    ld h, e
    ld l, h
    ld h, l
    jr nz, jr_019_612e

jr_019_60bf:
    ld h, [hl]
    jr nz, jr_019_6135

    ld [hl], l
    ld h, e
    ld h, e
    ld h, l
    ld [hl], e
    ld [hl], e

jr_019_60c8:
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_019_6131

    ld [hl], d
    ld h, l

jr_019_60d2:
    jr nz, jr_019_6135

    ld l, l
    ld h, c
    ld a, d
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $5301
    ld l, a
    ld l, l
    ld h, l
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_019_614b

    ld l, c
    ld l, [hl]
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    ld bc, $6562

jr_019_60ee:
    ld h, c
    ld [hl], h
    jr nz, jr_019_6100

    rlca

jr_019_60f3:
    ld hl, $0003
    ld c, c
    jr nz, jr_019_6160

    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_019_6160

    ld l, h

jr_019_6100:
    ld l, h
    jr nz, jr_019_614c

    jr nz, jr_019_6168

    ld h, c

jr_019_6106:
    ld l, [hl]
    ld bc, $6f64
    jr nz, @+$6b

    ld [hl], e
    jr nz, jr_019_6170

    ld h, h
    ld l, l
    ld l, c
    ld [hl], h
    ld bc, $6f79
    ld [hl], l

jr_019_6117:
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_019_6190

    ld l, b
    ld h, l
    jr nz, jr_019_6182

    ld h, l
    ld [hl], e
    ld [hl], h
    inc l
    ld [bc], a
    ld h, l
    db $76
    ld h, l
    ld l, [hl]
    jr nz, jr_019_6194

    ld h, [hl]
    jr nz, @+$7b

jr_019_612e:
    ld l, a
    ld [hl], l
    daa

jr_019_6131:
    ld [hl], d
    ld h, l
    jr nz, jr_019_61a3

jr_019_6135:
    ld l, a
    ld [hl], h
    ld bc, $614d
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, @+$45

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_019_6188

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, $03

jr_019_614b:
    nop

jr_019_614c:
    ld c, c
    jr nz, @+$69

    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, @+$63

    ld l, h
    ld l, h
    jr nz, @+$4b

    jr nz, jr_019_61be

    ld h, c
    ld l, [hl]
    ld bc, $6f64

jr_019_6160:
    jr nz, jr_019_61cb

    ld [hl], e
    jr nz, @+$63

    ld h, h
    ld l, l
    ld l, c

jr_019_6168:
    ld [hl], h
    ld bc, $6f79
    ld [hl], l
    daa
    ld [hl], d
    ld h, l

jr_019_6170:
    jr nz, jr_019_61e6

    ld l, b
    ld h, l
    jr nz, jr_019_61d8

    ld h, l
    ld [hl], e
    ld [hl], h
    ld l, $02
    ld b, d
    ld h, l
    jr nz, jr_019_61f2

    ld [hl], l
    ld [hl], d
    ld h, l

jr_019_6182:
    jr nz, jr_019_61f8

    ld l, a
    jr nz, jr_019_61e9

    ld h, l

jr_019_6188:
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $6966
    ld [hl], d

jr_019_6190:
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_61db

jr_019_6194:
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_019_61dd

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld bc, $6f74
    jr nz, jr_019_6205

jr_019_61a3:
    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_019_61f5

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, $03
    nop
    ld d, e
    ld l, a
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_019_622e

    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_019_621d

    ld l, c
    ld l, l

jr_019_61be:
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6f66
    ld [hl], d
    jr nz, @+$49

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h

jr_019_61cb:
    jr nz, jr_019_6210

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $6874
    ld h, l

jr_019_61d8:
    jr nz, jr_019_6251

    ld l, b

jr_019_61db:
    ld l, a
    ld l, h

jr_019_61dd:
    ld h, l
    jr nz, @+$76

    ld l, c
    ld l, l
    ld h, l
    ld l, $20
    ld c, [hl]

jr_019_61e6:
    ld l, a
    ld [bc], a
    ld [hl], a

jr_019_61e9:
    ld l, a
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_019_6269

    ld l, a
    ld [hl], l

jr_019_61f2:
    jr nz, jr_019_6262

    ld h, l

jr_019_61f5:
    db $76
    ld h, l
    ld [hl], d

jr_019_61f8:
    ld bc, $6167
    db $76
    ld h, l
    jr nz, jr_019_624f

    ld h, c
    ld l, h
    ld l, l
    jr nz, jr_019_6247

    ld l, h

jr_019_6205:
    ld [hl], l
    ld h, d
    ld bc, $2061
    ld [hl-], a
    ld l, [hl]
    ld h, h
    jr nz, jr_019_6283

    ld l, b

jr_019_6210:
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h
    ld l, $03
    nop
    ld b, e
    ld l, a
    ld l, [hl]
    ld h, a
    ld [hl], d

jr_019_621d:
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
    jr nz, jr_019_6298

    ld l, [hl]
    ld bc, $6874
    ld h, l

jr_019_622e:
    jr nz, jr_019_6273

    ld l, b
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
    inc l
    ld bc, $2e07
    ld [bc], a
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_019_62bc

    ld h, c
    ld a, c

jr_019_6247:
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_019_62b5

    ld h, c
    ld l, [hl]

jr_019_624f:
    ld h, h
    ld l, h

jr_019_6251:
    ld h, l
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_019_62bc

    ld l, h
    ld [hl], l
    ld h, d
    ld [hl], e
    inc l
    jr nz, jr_019_62a9

    jr nz, @+$6d

jr_019_6262:
    ld l, [hl]
    ld h, l
    ld [hl], a
    ld bc, $6f79
    ld [hl], l

jr_019_6269:
    daa
    ld h, h
    jr nz, @+$76

    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_019_62db

    ld [hl], h

jr_019_6273:
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_019_62ee

    ld l, b
    ld l, a
    ld [hl], a
    ld h, l
    ld h, h
    jr nz, jr_019_62a9

    ld h, l

jr_019_6283:
    ld l, l
    ld bc, $6e69
    jr nz, jr_019_62fd

    ld l, b
    ld h, l
    jr nz, jr_019_62d9

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_019_62e7

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c

jr_019_6298:
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    inc l
    ld bc, $2e07
    ld [bc], a
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_019_631a

    ld l, b
    ld l, c
    ld l, [hl]

jr_019_62a9:
    ld h, a
    jr nz, jr_019_62f5

    jr nz, jr_019_6312

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $6567

jr_019_62b5:
    ld [hl], h
    jr nz, jr_019_6321

    ld [hl], e
    jr nz, @+$79

    ld l, b

jr_019_62bc:
    ld a, c
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld bc, $656e
    db $76
    ld h, l
    ld [hl], d
    jr nz, @+$76

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_019_6312

    ld [hl], l
    ld l, [hl]
    ld h, l
    ld hl, $213f
    inc bc
    nop
    ld e, c
    ld l, a
    ld [hl], l

jr_019_62d9:
    jr nz, jr_019_634e

jr_019_62db:
    ld l, b
    ld l, a
    ld [hl], a
    ld h, l
    ld h, h
    jr nz, jr_019_6309

    ld h, l
    ld l, l
    ld bc, $6e69

jr_019_62e7:
    jr nz, jr_019_635d

    ld l, b
    ld h, l
    jr nz, @+$4e

    ld l, c

jr_019_62ee:
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, @+$56

    ld l, a
    ld [hl], l

jr_019_62f5:
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    inc l

jr_019_62fd:
    ld bc, $2e07
    ld [bc], a
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_019_634f

    jr nz, @+$79

    ld h, c

jr_019_6309:
    ld l, [hl]
    ld [hl], h
    jr nz, jr_019_6381

    ld l, a
    ld bc, $6573
    ld h, l

jr_019_6312:
    jr nz, jr_019_638d

    ld l, a
    ld [hl], l
    jr nz, jr_019_637a

    ld h, l
    ld h, c

jr_019_631a:
    ld [hl], h
    ld bc, $614d
    ld [hl], d
    ld l, c
    ld l, a

jr_019_6321:
    ld hl, $0003
    ld c, c
    daa
    db $76
    ld h, l
    jr nz, jr_019_6390

    ld h, c
    ld l, c
    ld l, h
    ld h, l
    ld h, h
    inc l
    ld bc, $2e07
    jr nz, jr_019_638e

    ld l, a
    ld [hl], l
    ld bc, $6168
    db $76
    ld h, l
    jr nz, jr_019_63a0

    ld h, l
    ld [hl], e
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_019_63b2

    ld h, l
    ld l, $03
    nop
    ld d, e
    ld [hl], l
    ld [hl], d
    ld h, l
    ld l, h

jr_019_634e:
    ld a, c

jr_019_634f:
    jr nz, jr_019_63ca

    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, @+$64

    ld h, l
    ld bc, $6e69
    db $76

jr_019_635d:
    ld l, c
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_019_63d7

    ld l, a
    jr nz, jr_019_63d3

    ld h, l
    ld h, l
    ld [hl], h
    ld bc, $614d
    ld [hl], d
    ld l, c
    ld l, a
    ld l, $03
    nop
    ld c, c
    jr nz, @+$65

    ld l, b
    ld h, c
    ld l, h
    ld l, h
    ld h, l

jr_019_637a:
    ld l, [hl]
    ld h, a
    ld h, l
    ld h, h
    jr nz, @+$4f

    ld h, c

jr_019_6381:
    ld [hl], d
    ld l, c
    ld l, a
    ld bc, $616d
    ld l, [hl]
    ld a, c
    jr nz, jr_019_63ff

    ld l, c
    ld l, l

jr_019_638d:
    ld h, l

jr_019_638e:
    ld [hl], e
    inc l

jr_019_6390:
    jr nz, jr_019_640b

    ld h, l
    ld [hl], h
    ld bc, $6976
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    jr nz, jr_019_6403

    ld l, h
    ld [hl], l

jr_019_63a0:
    ld h, h
    ld h, l
    ld h, h
    jr nz, jr_019_6412

    ld h, l
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_019_641b

    ld h, c
    ld a, c
    jr nz, jr_019_6414

jr_019_63b2:
    ld h, l
    jr nz, jr_019_6416

    ld h, d
    ld l, h
    ld h, l
    ld bc, $6f74
    jr nz, jr_019_6421

    ld h, l
    ld h, [hl]
    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_019_642c

    ld l, c
    ld l, l
    ld l, $20
    ld e, c
    ld h, l

jr_019_63ca:
    ld [hl], e
    ld hl, $4401
    ld h, l
    ld h, [hl]
    ld h, l
    ld h, c
    ld [hl], h

jr_019_63d3:
    jr nz, jr_019_643d

    ld l, c
    ld l, l

jr_019_63d7:
    jr nz, jr_019_643f

    ld l, a
    ld [hl], d
    jr nz, @+$6f

    ld h, l
    ld hl, $0003
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$68

    ld l, a
    ld [hl], d
    ld l, l
    ld h, l
    ld [hl], d
    jr nz, jr_019_6430

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    ld [hl], e
    jr nz, @+$77

    ld [hl], e
    ld h, l
    ld h, h
    jr nz, @+$76

    ld l, a

jr_019_63ff:
    ld bc, $6168
    ld l, [hl]

jr_019_6403:
    ld h, a
    jr nz, @+$71

    ld [hl], l
    ld [hl], h
    jr nz, @+$6b

    ld l, [hl]

jr_019_640b:
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, @+$6e

    ld l, a

jr_019_6412:
    ld [hl], l
    ld l, [hl]

jr_019_6414:
    ld h, a
    ld h, l

jr_019_6416:
    ld l, $03
    nop
    ld d, h
    ld l, b

jr_019_641b:
    ld h, l
    jr nz, @+$63

    ld [hl], d
    ld h, l
    ld h, c

jr_019_6421:
    jr nz, @+$77

    ld [hl], b
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $7473
    ld h, l

jr_019_642c:
    ld [hl], b
    ld [hl], e
    jr nz, @+$79

jr_019_6430:
    ld h, c
    ld [hl], e
    jr nz, @+$68

    ld l, a
    ld [hl], d
    ld bc, $6f66
    ld [hl], d
    ld l, l
    ld h, l
    ld [hl], d

jr_019_643d:
    jr nz, @+$45

jr_019_643f:
    ld l, h
    ld [hl], l
    ld h, d
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld [hl], e
    ld l, $03
    nop

    db $4d, $61, $72, $69, $6f, $6e, $20, $43, $6c, $75, $62, $01, $44, $69, $72, $65
    db $63, $74, $6f, $72, $27, $73, $20, $4f, $66, $66, $69, $63, $65, $00, $48, $65
    db $6c, $6c, $6f, $2c, $20, $07, $21, $01, $49, $74, $27, $73, $20, $79, $6f, $75
    db $72, $20, $31, $73, $74, $20, $64, $61, $79, $01, $61, $73, $20, $6f, $75, $72
    db $20, $73, $74, $75, $64, $65, $6e, $74, $21, $02, $46, $6f, $6c, $6c, $6f, $77
    db $20, $6f, $75, $72, $20, $61, $64, $76, $69, $63, $65, $2c, $01, $61, $6e, $64
    db $20, $79, $6f, $75, $27, $6c, $6c, $20, $62, $65, $01, $61, $20, $67, $72, $65
    db $61, $74, $20, $67, $6f, $6c, $66, $65, $72, $21, $03, $00, $4e, $6f, $77, $2c
    db $20, $07, $2c, $01, $6c, $65, $74, $20, $6d, $65, $20, $69, $6e, $74, $72, $6f
    db $64, $75, $63, $65, $01, $74, $68, $65, $20, $63, $6c, $75, $62, $27, $73, $20
    db $73, $74, $61, $66, $66, $2e, $03, $00, $49, $27, $6d, $20, $74, $68, $65, $20
    db $70, $72, $6f, $20, $68, $65, $72, $65, $01, $61, $74, $20, $4d, $61, $72, $69
    db $6f, $6e, $20, $43, $6c, $75, $62, $2e, $01, $4e, $69, $63, $65, $20, $74, $6f
    db $20, $6d, $65, $65, $74, $20, $79, $6f, $75, $2e, $03, $00, $54, $68, $65, $20
    db $67, $6f, $6c, $66, $20, $6d, $61, $73, $74, $65, $72, $2c, $01, $4d, $61, $72
    db $69, $6f, $2c, $20, $69, $73, $20, $74, $68, $65, $20, $69, $64, $6f, $6c, $01
    db $6f, $66, $20, $61, $6c, $6c, $20, $67, $6f, $6c, $66, $65, $72, $73, $2e, $02
    db $49, $20, $6b, $6e, $6f, $77, $20, $77, $68, $61, $74, $20, $69, $74, $27, $73
    db $01, $6c, $69, $6b, $65, $20, $74, $6f, $20, $77, $61, $6e, $74, $20, $74, $6f
    db $01, $62, $65, $20, $6c, $69, $6b, $65, $20, $4d, $61, $72, $69, $6f, $21, $03
    db $00, $49, $66, $20, $79, $6f, $75, $20, $62, $65, $63, $6f, $6d, $65, $20, $61
    db $01, $70, $72, $6f, $2c, $20, $79, $6f, $75, $20, $6d, $61, $79, $20, $67, $65
    db $74, $01, $74, $6f, $20, $6d, $65, $65, $74, $20, $4d, $61, $72, $69, $6f, $21
    db $03, $00, $49, $27, $6d, $20, $74, $68, $65, $20, $43, $61, $64, $64, $69, $65
    db $01, $4d, $61, $73, $74, $65, $72, $20, $68, $65, $72, $65, $20, $61, $74, $01
    db $4d, $61, $72, $69, $6f, $6e, $20, $43, $6c, $75, $62, $2e, $02, $49, $27, $6d
    db $20, $72, $65, $73, $70, $6f, $6e, $73, $69, $62, $6c, $65, $01, $66, $6f, $72
    db $20, $74, $68, $65, $20, $63, $6f, $75, $72, $73, $65, $20, $61, $6e, $64, $01
    db $63, $61, $6e, $20, $61, $6e, $73, $77, $65, $72, $20, $71, $75, $65, $73, $74
    db $69, $6f, $6e, $73, $2e, $03, $00, $4c, $6f, $6f, $6b, $20, $61, $66, $74, $65
    db $72, $01, $07, $2c, $20, $4f, $4b, $3f, $03, $00, $55, $73, $65, $20, $4d, $61
    db $72, $69, $6f, $6e, $20, $43, $6c, $75, $62, $27, $73, $01, $66, $61, $63, $69
    db $6c, $69, $74, $69, $65, $73, $20, $74, $6f, $01, $69, $6d, $70, $72, $6f, $76
    db $65, $20, $79, $6f, $75, $72, $20, $67, $61, $6d, $65, $2e, $03, $00, $53, $65
    db $6c, $65, $63, $74, $20, $22, $43, $6c, $75, $62, $68, $6f, $75, $73, $65, $22
    db $01, $74, $6f, $20, $63, $6f, $6d, $65, $20, $68, $65, $72, $65, $01, $61, $6e
    db $79, $74, $69, $6d, $65, $2e, $02, $53, $65, $65, $20, $79, $6f, $75, $01, $6f
    db $6e, $20, $74, $68, $65, $20, $67, $72, $65, $65, $6e, $21, $03, $00, $50, $72
    db $61, $63, $74, $69, $63, $65, $20, $68, $61, $72, $64, $20, $61, $74, $01, $4d
    db $61, $72, $69, $6f, $6e, $20, $43, $6c, $75, $62, $2e, $20, $57, $68, $65, $6e
    db $01, $79, $6f, $75, $20, $66, $69, $6e, $64, $20, $6e, $65, $77, $20, $6a, $6f
    db $79, $20, $69, $6e, $02, $67, $6f, $6c, $66, $20, $61, $6e, $64, $20, $6b, $6e
    db $6f, $77, $20, $69, $74, $73, $01, $64, $65, $70, $74, $68, $73, $2c, $20, $74
    db $68, $65, $6e, $20, $79, $6f, $75, $27, $6c, $6c, $01, $62, $65, $20, $61, $20
    db $6d, $61, $73, $74, $65, $72, $2e, $03, $00, $47, $72, $65, $61, $74, $20, $74
    db $68, $69, $6e, $67, $73, $20, $61, $77, $61, $69, $74, $01, $69, $66, $20, $79
    db $6f, $75, $20, $62, $75, $69, $6c, $64, $20, $61, $01, $72, $65, $70, $75, $74
    db $61, $74, $69, $6f, $6e, $20, $61, $73, $20, $61, $6e, $02, $65, $78, $70, $65
    db $72, $74, $2e, $20, $54, $6f, $20, $64, $6f, $20, $73, $6f, $2c, $01, $79, $6f
    db $75, $20, $6d, $75, $73, $74, $20, $66, $69, $72, $73, $74, $20, $66, $61, $63
    db $65, $01, $74, $68, $65, $20, $43, $6c, $75, $62, $20, $43, $68, $61, $6d, $70
    db $21, $03, $00, $54, $72, $61, $69, $6e, $20, $61, $74, $20, $4d, $61, $72, $69
    db $6f, $6e, $20, $43, $6c, $75, $62, $01, $74, $6f, $20, $65, $6e, $74, $65, $72
    db $20, $74, $68, $65, $20, $43, $6c, $75, $62, $01, $54, $6f, $75, $72, $6e, $61
    db $6d, $65, $6e, $74, $2e, $02, $50, $6c, $61, $63, $65, $20, $68, $65, $72, $65
    db $20, $61, $6e, $64, $20, $79, $6f, $75, $01, $63, $61, $6e, $20, $65, $6e, $74
    db $65, $72, $20, $6f, $74, $68, $65, $72, $20, $43, $6c, $75, $62, $01, $54, $6f
    db $75, $72, $6e, $61, $6d, $65, $6e, $74, $73, $2e, $03, $00, $49, $66

    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_019_685e

    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_019_6862

    ld h, l
    inc l
    ld bc, $7361
    ld l, e
    jr nz, jr_019_685e

    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_019_6847

    ld h, c
    ld h, h
    ld h, h
    ld l, c
    ld h, l
    ld bc, $614d
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    daa
    ld [hl], e
    jr nz, jr_019_6863

    ld h, [hl]
    ld h, [hl]
    ld l, c
    ld h, e
    ld h, l
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_019_6891

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    jr nz, jr_019_6891

    ld l, [hl]
    jr nz, jr_019_689f

    ld l, b
    ld h, l
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_019_6888

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_019_68a8

    ld l, [hl]
    ld bc, $7573
    ld h, e
    ld l, b
    jr nz, jr_019_68a8

jr_019_6847:
    jr nz, jr_019_68bc

    ld l, b
    ld l, a
    ld [hl], d
    ld [hl], h
    jr nz, jr_019_68c3

    ld l, c
    ld l, l
    ld h, l
    ld l, $02
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_019_68cc

    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h

jr_019_685e:
    jr nz, @+$76

    ld h, l
    ld [hl], e

jr_019_6862:
    ld [hl], h

jr_019_6863:
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_019_68dd

    ld l, e
    ld l, c
    ld l, h
    ld l, h
    ld [hl], e
    jr nz, jr_019_68da

    ld l, [hl]
    ld bc, $6150
    ld l, h
    ld l, l
    daa
    ld [hl], e
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
    ld c, c

jr_019_6888:
    daa
    ld l, l
    jr nz, @+$63

    ld h, [hl]
    ld [hl], d
    ld h, c
    ld l, c
    ld h, h

jr_019_6891:
    jr nz, @+$4f

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, @+$6b

jr_019_689f:
    ld [hl], e
    jr nz, jr_019_6916

    ld l, b
    ld h, l
    jr nz, @+$6e

    ld l, a
    ld [hl], a

jr_019_68a8:
    ld h, l
    ld [hl], e
    ld [hl], h
    ld bc, $6c63
    ld [hl], l
    ld h, d
    jr nz, jr_019_6913

    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld l, $20
    ld d, a
    ld h, l
    daa

jr_019_68bc:
    ld [hl], d
    ld h, l
    ld [bc], a
    ld l, b
    ld l, a
    ld [hl], b
    ld l, c

jr_019_68c3:
    ld l, [hl]
    ld h, a
    jr nz, jr_019_6940

    ld l, a
    ld [hl], l
    jr nz, jr_019_692e

    ld h, c

jr_019_68cc:
    ld l, [hl]
    ld bc, $6172
    ld l, c
    ld [hl], e
    ld h, l
    jr nz, jr_019_6944

    ld [hl], l
    ld [hl], d
    jr nz, jr_019_694c

    ld [hl], h

jr_019_68da:
    ld h, c
    ld [hl], h
    ld [hl], l

jr_019_68dd:
    ld [hl], d
    ld h, l
    ld bc, $7461
    jr nz, jr_019_6934

    ld h, c
    ld l, h
    ld l, l
    jr nz, @+$45

    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$69

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_019_6974

    ld l, a
    ld [hl], l
    ld bc, $6c70
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    jr nz, @+$6b

    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, @+$45

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6f54

jr_019_6913:
    ld [hl], l
    ld [hl], d
    ld l, [hl]

jr_019_6916:
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    inc l
    jr nz, jr_019_6980

    ld [hl], l
    ld [hl], h
    ld [bc], a
    ld h, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_019_699b

    ld [hl], h
    ld l, a
    ld [hl], b
    jr nz, jr_019_69a1

    ld l, b

jr_019_692e:
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $5401

jr_019_6934:
    ld l, b
    ld h, l
    jr nz, jr_019_697b

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_019_6980

    ld l, b
    ld h, c
    ld l, l

jr_019_6940:
    ld [hl], b
    ld [hl], e
    jr nz, jr_019_69a5

jr_019_6944:
    ld [hl], d
    ld h, l
    ld bc, $6c61
    ld l, h
    jr nz, @+$6a

jr_019_694c:
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $20
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    jr nz, @+$76

    ld l, b
    ld h, l
    ld l, l
    ld hl, $0003
    ld c, c
    jr nz, jr_019_69c8

    ld h, l
    ld h, c
    ld [hl], d
    jr nz, jr_019_69de

    ld l, a
    ld [hl], l
    jr nz, jr_019_69d9

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    jr nz, jr_019_69d9

    ld l, [hl]
    ld bc, $6874

jr_019_6974:
    ld h, l
    jr nz, jr_019_69c4

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a

jr_019_697b:
    ld l, [hl]
    jr nz, @+$45

    ld l, h
    ld [hl], l

jr_019_6980:
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
    ld l, $20
    ld c, [hl]
    ld l, a
    ld [hl], a
    inc l
    ld [bc], a
    ld [hl], b
    ld l, a
    ld l, h
    ld l, c
    ld [hl], e
    ld l, b
    jr nz, jr_019_6a14

jr_019_699b:
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_019_6a13

    ld l, e

jr_019_69a1:
    ld l, c
    ld l, h
    ld l, h
    ld [hl], e

jr_019_69a5:
    ld bc, $6e61
    ld h, h
    jr nz, jr_019_6a11

    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_019_6a24

    ld l, b
    ld h, l
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $03
    nop
    ld e, c

jr_019_69c4:
    ld l, a
    ld [hl], l
    jr nz, jr_019_6a3f

jr_019_69c8:
    ld l, a
    ld l, [hl]
    jr nz, jr_019_6a40

    ld l, b
    ld h, l
    jr nz, jr_019_6a1d

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $6c43
    ld [hl], l

jr_019_69d9:
    ld h, d
    jr nz, jr_019_6a30

    ld l, a
    ld [hl], l

jr_019_69de:
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ccf
    ld bc, $6f43
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
    ld hl, $5902
    ld l, a
    ld [hl], l
    jr nz, jr_019_6a70

    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$76

    ld [hl], d
    ld a, c
    jr nz, jr_019_6a7c

    ld l, b
    ld h, l
    ld bc, $6150
    ld l, h
    ld l, l
    jr nz, jr_019_6a54

jr_019_6a11:
    ld l, h
    ld [hl], l

jr_019_6a13:
    ld h, d

jr_019_6a14:
    ld bc, $6f54
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l

jr_019_6a1d:
    ld l, [hl]
    ld [hl], h
    jr nz, jr_019_6a8f

    ld h, l
    ld a, b
    ld [hl], h

jr_019_6a24:
    ld l, $03
    nop
    ld c, c
    daa
    ld l, l
    jr nz, @+$63

    ld h, [hl]
    ld [hl], d
    ld h, c
    ld l, c

jr_019_6a30:
    ld h, h
    jr nz, @+$4f

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_019_6aa8

jr_019_6a3f:
    ld [hl], e

jr_019_6a40:
    jr nz, jr_019_6ab6

    ld l, b
    ld h, l
    jr nz, jr_019_6ab2

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], e
    ld [hl], h
    ld bc, $6c63
    ld [hl], l
    ld h, d
    jr nz, jr_019_6ab3

    ld [hl], d
    ld l, a

jr_019_6a54:
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld l, $20
    ld d, a
    ld h, l
    daa
    ld [hl], d
    ld h, l
    ld [bc], a
    ld l, b
    ld l, a
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_019_6ae0

    ld l, a
    ld [hl], l
    jr nz, jr_019_6ace

    ld h, c
    ld l, [hl]
    ld bc, $6172

jr_019_6a70:
    ld l, c
    ld [hl], e
    ld h, l
    jr nz, jr_019_6ae4

    ld [hl], l
    ld [hl], d
    jr nz, jr_019_6aec

    ld [hl], h
    ld h, c
    ld [hl], h

jr_019_6a7c:
    ld [hl], l
    ld [hl], d
    ld h, l
    ld bc, $7461
    jr nz, jr_019_6ad4

    ld h, c
    ld l, h
    ld l, l
    jr nz, @+$45

    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop

jr_019_6a8f:
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_019_6afc

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_019_6b14

    ld l, a
    ld [hl], l
    ld bc, $6f77
    ld l, [hl]
    jr nz, jr_019_6b17

    ld l, b
    ld h, l
    jr nz, @+$45

    ld l, h

jr_019_6aa8:
    ld [hl], l
    ld h, d
    ld bc, $6f54
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l

jr_019_6ab2:
    ld h, l

jr_019_6ab3:
    ld l, [hl]
    ld [hl], h
    inc l

jr_019_6ab6:
    jr nz, jr_019_6b1a

    ld [hl], l
    ld [hl], h
    ld [bc], a
    ld h, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_019_6b35

    ld [hl], h
    ld l, a
    ld [hl], b
    jr nz, jr_019_6b3b

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $5401

jr_019_6ace:
    ld l, b
    ld h, l
    jr nz, jr_019_6b15

    ld l, h
    ld [hl], l

jr_019_6ad4:
    ld h, d
    jr nz, jr_019_6b1a

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld [hl], e
    jr nz, @+$63

    ld [hl], d
    ld h, l

jr_019_6ae0:
    ld bc, $6c61
    ld l, h

jr_019_6ae4:
    jr nz, jr_019_6b4e

    ld h, l
    ld [hl], d
    ld h, l
    ld l, $20
    ld d, b

jr_019_6aec:
    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_019_6b65

    ld l, b
    ld h, l
    ld l, l
    ld hl, $0003
    ld d, e
    ld l, a
    jr nz, @+$7b

    ld l, a

jr_019_6afc:
    ld [hl], l
    jr nz, @+$79

    ld l, a
    ld l, [hl]
    jr nz, jr_019_6b77

    ld l, b
    ld h, l
    jr nz, jr_019_6b54

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_019_6b67

    ld l, a

jr_019_6b14:
    ld [hl], l

jr_019_6b15:
    ld [hl], d
    ld l, [hl]

jr_019_6b17:
    ld h, c
    ld l, l
    ld h, l

jr_019_6b1a:
    ld l, [hl]
    ld [hl], h
    ccf
    jr nz, jr_019_6b6d

    ld l, a
    ld [hl], a
    jr nz, jr_019_6b24

    ld a, c

jr_019_6b24:
    ld l, a
    ld [hl], l
    jr nz, jr_019_6b95

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_6b9d

    ld l, a
    ld l, h
    ld l, c
    ld [hl], e
    ld l, b
    jr nz, jr_019_6bad

    ld l, a

jr_019_6b35:
    ld [hl], l
    ld [hl], d
    ld [bc], a
    ld [hl], e
    ld l, e
    ld l, c

jr_019_6b3b:
    ld l, h
    ld l, h
    ld [hl], e
    jr nz, jr_019_6ba1

    ld l, [hl]
    ld h, h
    jr nz, jr_019_6baa

    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_019_6bbd

    ld l, b
    ld h, l
    ld bc, $6150

jr_019_6b4e:
    ld l, h
    ld l, l
    jr nz, jr_019_6b95

    ld l, h
    ld [hl], l

jr_019_6b54:
    ld h, d
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $03
    nop
    ld c, c
    jr nz, jr_019_6bcc

    ld h, l

jr_019_6b65:
    ld h, c
    ld [hl], d

jr_019_6b67:
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_019_6bdd

jr_019_6b6d:
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    ld bc, $6e69
    jr nz, jr_019_6beb

jr_019_6b77:
    ld l, b
    ld h, l
    jr nz, jr_019_6bcb

    ld h, c
    ld l, h
    ld l, l
    jr nz, @+$45

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
    ld l, $20
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h

jr_019_6b95:
    ld [bc], a
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_019_6c0f

    ld l, b
    ld l, c

jr_019_6b9d:
    ld l, [hl]
    ld l, e
    jr nz, jr_019_6c1a

jr_019_6ba1:
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    ld bc, $6f67
    ld l, a

jr_019_6baa:
    ld h, h
    jr nz, jr_019_6c12

jr_019_6bad:
    ld l, [hl]
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_019_6c28

    ld l, a
    jr nz, jr_019_6c1a

    ld l, a
    ld l, l
    dec l
    ld bc, $6570

jr_019_6bbd:
    ld [hl], h
    ld h, l
    jr nz, jr_019_6c22

    ld [hl], h
    jr nz, jr_019_6c08

    ld [hl], l
    ld l, [hl]
    ld h, l
    jr nz, @+$45

    ld l, h
    ld [hl], l

jr_019_6bcb:
    ld h, d

jr_019_6bcc:
    ccf
    inc bc
    nop
    ld b, c
    ld [hl], e
    jr nz, jr_019_6c42

    ld l, [hl]
    ld h, l
    jr nz, jr_019_6c4e

    ld l, b
    ld l, a
    jr nz, jr_019_6c4b

    ld l, h
    ld h, c

jr_019_6bdd:
    ld h, e
    ld h, l
    ld h, h
    ld bc, $6e69
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_019_6c39

    ld h, c
    ld l, h

jr_019_6beb:
    ld l, l
    jr nz, jr_019_6c31

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
    inc l
    jr nz, jr_019_6c78

    ld l, a
    ld [hl], l
    daa
    db $76
    ld h, l
    ld [bc], a
    ld [hl], b
    ld [hl], d
    ld l, a

jr_019_6c08:
    db $76
    ld h, l
    ld l, [hl]
    jr nz, jr_019_6c86

    ld l, a
    ld [hl], l

jr_019_6c0f:
    ld [hl], d
    jr nz, @+$63

jr_019_6c12:
    ld h, d
    ld l, c
    ld l, h
    ld l, c
    ld [hl], h
    ld a, c
    ld l, $01

jr_019_6c1a:
    ld c, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_019_6c84

    ld a, b
    ld [hl], b
    ld h, l

jr_019_6c22:
    ld h, e
    ld [hl], h
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a

jr_019_6c28:
    ld l, [hl]
    ld [hl], e
    ld bc, $756a
    ld [hl], e
    ld [hl], h
    jr nz, @+$6d

jr_019_6c31:
    ld h, l
    ld h, l
    ld [hl], b
    jr nz, jr_019_6ca8

    ld l, c
    ld [hl], e
    ld l, c

jr_019_6c39:
    ld l, [hl]
    ld h, a
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    ld [hl], d

jr_019_6c42:
    jr nz, jr_019_6cb2

    ld h, l
    ld a, b
    ld [hl], h
    jr nz, jr_019_6cb0

    ld l, a
    ld h, c

jr_019_6c4b:
    ld l, h
    jr nz, jr_019_6cb7

jr_019_6c4e:
    ld [hl], e
    ld bc, $6874
    ld h, l
    jr nz, jr_019_6c99

    ld [hl], l
    ld l, [hl]
    ld h, l
    jr nz, jr_019_6c9d

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
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_019_6cb2

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_019_6cb7

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b

jr_019_6c78:
    inc l
    ld bc, $060e
    inc l
    jr nz, jr_019_6ce8

    ld [hl], e
    jr nz, jr_019_6ce8

    ld h, c
    ld l, l

jr_019_6c84:
    ld l, a
    ld [hl], l

jr_019_6c86:
    ld [hl], e
    jr nz, jr_019_6cef

    ld l, a
    ld [hl], d
    ld bc, $6968
    ld [hl], e
    jr nz, jr_019_6cf5

    ld [hl], d
    ld l, c
    db $76
    ld h, l
    ld l, $03
    nop
    ld e, c

jr_019_6c99:
    ld l, a
    ld [hl], l
    jr nz, jr_019_6d0d

jr_019_6c9d:
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    jr nz, jr_019_6d0d

    ld l, [hl]
    jr nz, jr_019_6d1b

    ld l, b

jr_019_6ca8:
    ld h, l
    ld bc, $6150
    ld l, h
    ld l, l
    jr nz, jr_019_6cf3

jr_019_6cb0:
    ld l, h
    ld [hl], l

jr_019_6cb2:
    ld h, d
    ld bc, $6f54
    ld [hl], l

jr_019_6cb7:
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    inc l
    jr nz, @+$76

    ld l, a
    ld l, a
    ccf
    ld [bc], a
    ld d, a
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_019_6d45

    ld l, a
    ld [hl], l
    jr nz, jr_019_6d32

    ld h, l
    ld bc, $6177
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_019_6d4f

    ld l, b
    ld h, l
    jr nz, jr_019_6d22

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b

jr_019_6ce8:
    jr nz, jr_019_6d5e

    ld l, c
    ld [hl], h
    ld l, h
    ld h, l
    inc l

jr_019_6cef:
    jr nz, @+$76

    ld l, a
    ld l, a

jr_019_6cf3:
    ccf
    inc bc

jr_019_6cf5:
    nop
    ld d, e
    ld l, a
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_019_6d63

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld h, l
    ld h, h
    jr nz, jr_019_6d7a

    ld l, b
    ld h, l
    ld bc, $6150
    ld l, h
    ld l, l

jr_019_6d0d:
    jr nz, jr_019_6d63

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_019_6d7b

    ld [hl], e

jr_019_6d1b:
    ld bc, $614d
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]

jr_019_6d22:
    daa
    ld [hl], e
    jr nz, jr_019_6d69

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ccf
    inc bc
    nop
    ld b, d
    ld h, l
    ld h, c
    ld [hl], h
    ld l, c

jr_019_6d32:
    ld l, [hl]
    ld h, a
    jr nz, jr_019_6d44

    dec b
    jr nz, @+$76

    ld l, a
    ld bc, $6562
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_019_6d86

    ld l, h

jr_019_6d44:
    ld [hl], l

jr_019_6d45:
    ld h, d
    jr nz, jr_019_6d8b

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld bc, $7369

jr_019_6d4f:
    jr nz, jr_019_6dc4

    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_019_6dc0

    ld l, h
    ld [hl], e
    ld h, l

jr_019_6d5e:
    ld hl, $5702
    ld l, c
    ld [hl], h

jr_019_6d63:
    ld l, b
    jr nz, jr_019_6dda

    ld l, b
    ld l, a
    ld [hl], e

jr_019_6d69:
    ld h, l
    jr nz, jr_019_6ddf

    ld l, e
    ld l, c
    ld l, h
    ld l, h
    ld [hl], e
    inc l
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_019_6ddb

    ld l, a
    ld [hl], l

jr_019_6d7a:
    ld l, h

jr_019_6d7b:
    ld h, h
    jr nz, jr_019_6de3

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_019_6df8

    ld l, b
    ld h, l

jr_019_6d86:
    ld bc, $7544
    ld l, [hl]
    ld h, l

jr_019_6d8b:
    jr nz, jr_019_6de1

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
    ld e, c
    ld l, a
    ld [hl], l
    daa
    db $76
    ld h, l
    jr nz, jr_019_6e11

    ld [hl], d
    ld l, a
    db $76
    ld h, l
    ld l, [hl]
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $6b73
    ld l, c
    ld l, h
    ld l, h
    ld [hl], e
    jr nz, jr_019_6e16

    ld a, c
    jr nz, jr_019_6e2e

    ld l, c
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6150

jr_019_6dc0:
    ld l, h
    ld l, l
    daa
    ld [hl], e

jr_019_6dc4:
    jr nz, jr_019_6e1a

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
    ld c, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_019_6e3b

    ld a, b
    ld [hl], b
    ld h, l
    ld h, e

jr_019_6dda:
    ld [hl], h

jr_019_6ddb:
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a

jr_019_6ddf:
    ld l, [hl]
    ld [hl], e

jr_019_6de1:
    jr nz, @+$68

jr_019_6de3:
    ld l, a
    ld [hl], d
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_019_6e55

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_6e5b

    ld h, l
    ld h, l
    ld [hl], b
    ld bc, $6972
    ld [hl], e
    ld l, c

jr_019_6df8:
    ld l, [hl]
    ld h, a
    ld hl, $0003
    ld c, $05
    inc l
    jr nz, jr_019_6e52

    ld h, c
    ld l, h
    ld l, l
    jr nz, jr_019_6e4a

    ld l, h
    ld [hl], l
    ld h, d
    daa
    ld [hl], e
    ld bc, $6843
    ld h, c
    ld l, l

jr_019_6e11:
    ld [hl], b
    inc l
    jr nz, jr_019_6e7e

    ld [hl], e

jr_019_6e16:
    jr nz, jr_019_6e79

    jr nz, jr_019_6e8d

jr_019_6e1a:
    ld l, e
    ld l, c
    ld l, h
    ld l, h
    ld h, l
    ld h, h
    ld bc, $6f67
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld l, $02
    ld b, d
    ld h, l
    ld h, c
    ld [hl], h
    ld l, c

jr_019_6e2e:
    ld l, [hl]
    ld h, a
    jr nz, jr_019_6e9a

    ld h, l
    ld [hl], d
    jr nz, @+$68

    ld l, a
    ld [hl], d
    ld bc, $6874

jr_019_6e3b:
    ld h, l
    jr nz, jr_019_6eb5

    ld l, c
    ld l, [hl]
    jr nz, jr_019_6eb4

    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    ld bc, $656d

jr_019_6e4a:
    ld h, c
    ld l, [hl]
    ld [hl], e
    jr nz, jr_019_6ec2

    ld l, a
    ld l, l
    ld h, l

jr_019_6e52:
    ld [hl], h
    ld l, b
    ld l, c

jr_019_6e55:
    ld l, [hl]
    ld h, a
    ld hl, $0003
    ld c, c

jr_019_6e5b:
    jr nz, jr_019_6ec5

    ld h, l
    ld h, c
    ld [hl], d
    jr nz, jr_019_6edb

    ld l, a
    ld [hl], l
    jr nz, jr_019_6edd

    ld l, a
    ld l, [hl]
    jr nz, jr_019_6ede

    ld l, b
    ld h, l
    ld bc, $6150
    ld l, h
    ld l, l
    jr nz, jr_019_6eb6

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6f54

jr_019_6e79:
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l

jr_019_6e7e:
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $20
    ld c, [hl]
    ld l, a
    ld [hl], a
    inc l
    ld [bc], a
    ld [hl], b
    ld l, a
    ld l, h
    ld l, c
    ld [hl], e

jr_019_6e8d:
    ld l, b
    jr nz, jr_019_6f09

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_019_6f08

    ld l, e
    ld l, c
    ld l, h
    ld l, h
    ld [hl], e

jr_019_6e9a:
    ld bc, $6e61
    ld h, h
    jr nz, jr_019_6f14

    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_019_6f19

    ld l, b
    ld h, l
    jr nz, jr_019_6eed

    ld [hl], l
    ld l, [hl]
    ld h, l
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_019_6ef6

    ld l, b

jr_019_6eb4:
    ld h, c

jr_019_6eb5:
    ld l, l

jr_019_6eb6:
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, b
    ld l, c
    ld [hl], b
    ld l, $03
    nop
    ld e, c

jr_019_6ec2:
    ld l, a
    ld [hl], l
    daa

jr_019_6ec5:
    db $76
    ld h, l
    jr nz, @+$63

    ld l, h
    ld [hl], d
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    ld bc, $6c70
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    jr nz, jr_019_6f39

    ld [hl], h
    jr nz, @+$46

jr_019_6edb:
    ld [hl], l
    ld l, [hl]

jr_019_6edd:
    ld h, l

jr_019_6ede:
    ccf
    ld bc, $7247
    ld h, l
    ld h, c
    ld [hl], h
    inc l
    jr nz, jr_019_6eef

    ld hl, $5402
    ld l, b
    ld h, l

jr_019_6eed:
    jr nz, jr_019_6f5e

jr_019_6eef:
    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, jr_019_6f57

    ld l, a
    ld [hl], l

jr_019_6ef6:
    ld [hl], d
    ld [hl], e
    ld h, l
    ld bc, $656c
    ld h, [hl]
    ld [hl], h
    jr nz, jr_019_6f66

    ld l, a
    ld [hl], d
    jr nz, jr_019_6f7d

    ld l, a
    ld [hl], l
    jr nz, jr_019_6f71

jr_019_6f08:
    ld [hl], e

jr_019_6f09:
    ld bc, $694c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_019_6f54

    ld l, h
    ld [hl], l
    ld h, d

jr_019_6f14:
    ld hl, $0003
    ld d, b
    ld l, h

jr_019_6f19:
    ld h, c
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_019_6f89

    ld l, [hl]
    jr nz, jr_019_6f67

    ld [hl], l
    ld l, [hl]
    ld h, l
    daa
    ld [hl], e
    ld bc, $6f54
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_019_6f9e

    ld [hl], e
    ld bc, $6e69

jr_019_6f39:
    ld h, e
    ld [hl], d
    ld h, l
    ld h, h
    ld l, c
    ld h, d
    ld l, h
    ld h, l
    inc l
    ld [bc], a
    rlca
    ld hl, $4e20
    ld l, a
    ld [hl], a
    ld bc, $6f79
    ld [hl], l
    jr nz, @+$65

    ld h, c
    ld l, [hl]
    jr nz, jr_019_6fb8

    ld l, [hl]

jr_019_6f54:
    ld [hl], h
    ld h, l
    ld [hl], d

jr_019_6f57:
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $694c

jr_019_6f5e:
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_019_6fb7

    ld l, a
    ld [hl], l
    ld [hl], d

jr_019_6f66:
    ld l, [hl]

jr_019_6f67:
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld hl, $0003
    ld d, b
    ld l, h

jr_019_6f71:
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    jr nz, @+$6b

    ld l, [hl]
    jr nz, jr_019_6fbe

    ld [hl], l
    ld l, [hl]
    ld h, l

jr_019_6f7d:
    daa
    ld [hl], e
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_019_6fda

    ld l, a
    ld [hl], l
    ld [hl], d

jr_019_6f89:
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    inc l
    ld bc, $6865
    inc l
    jr nz, @+$09

    ccf
    ld [bc], a
    ld e, c
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_019_7004

jr_019_6f9e:
    ld l, c
    ld l, [hl]
    ld h, c
    ld l, h
    jr nz, jr_019_7013

    ld h, d
    ld l, d
    ld h, l
    ld h, e
    ld [hl], h
    dec l
    ld bc, $7669
    ld h, l
    jr nz, @+$6b

    ld [hl], e
    jr nz, jr_019_7027

    ld l, b
    ld h, l
    jr nz, jr_019_7003

jr_019_6fb7:
    ld l, c

jr_019_6fb8:
    ld l, [hl]
    ld l, e
    ld [hl], e
    ld bc, $6c43

jr_019_6fbe:
    ld [hl], l
    ld h, d
    jr nz, jr_019_7016

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
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_019_7043

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    jr nz, jr_019_7043

jr_019_6fda:
    ld l, [hl]
    jr nz, jr_019_7051

    ld l, b
    ld h, l
    ld bc, $7544
    ld l, [hl]
    ld h, l
    jr nz, jr_019_7029

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
    inc l
    jr nz, @+$76

    ld l, a
    ld l, a
    ccf
    ld [bc], a
    ld d, a
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_019_707b

    ld l, a

jr_019_7003:
    ld [hl], l

jr_019_7004:
    jr nz, jr_019_7068

    ld h, l
    ld bc, $6177
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$76

    ld l, b
    ld h, l

jr_019_7013:
    jr nz, @+$45

    ld l, h

jr_019_7016:
    ld [hl], l
    ld h, d
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    jr nz, jr_019_7094

    ld l, c
    ld [hl], h
    ld l, h
    ld h, l
    inc l
    jr nz, jr_019_709b

jr_019_7027:
    ld l, a
    ld l, a

jr_019_7029:
    ccf
    inc bc
    nop
    ld b, c
    ld [hl], e
    jr nz, jr_019_703b

    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    inc l
    ld bc, $6f79
    ld [hl], l

jr_019_703b:
    jr nz, jr_019_70b0

    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, @+$72

    ld h, l

jr_019_7043:
    ld [hl], d
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld l, l
    ld h, l
    ld h, h
    ld bc, $7461
    jr nz, jr_019_7093

    ld [hl], l
    ld l, [hl]

jr_019_7051:
    ld h, l
    jr nz, jr_019_7097

    ld l, h
    ld [hl], l
    ld h, d
    ld hl, $0003
    ld c, c
    daa
    ld l, l
    jr nz, jr_019_70c0

    ld l, l
    ld h, c
    ld a, d
    ld h, l
    ld h, h
    jr nz, jr_019_70da

    ld l, b
    ld h, c

jr_019_7068:
    ld [hl], h
    ld bc, $6f79
    ld [hl], l
    jr nz, @+$64

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_019_7082

    ld b, $20
    ld [hl], h
    ld l, a
    ld bc, $6562

jr_019_707b:
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, @+$45

    ld l, h

jr_019_7082:
    ld [hl], l
    ld h, d
    jr nz, jr_019_70c9

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld hl, $4c02
    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, @+$45

jr_019_7093:
    ld l, h

jr_019_7094:
    ld [hl], l
    ld h, d
    daa

jr_019_7097:
    ld [hl], e
    jr nz, @+$45

    ld l, b

jr_019_709b:
    ld h, c
    ld l, l
    ld [hl], b
    inc l
    ld bc, $070e
    inc l
    jr nz, jr_019_710e

    ld [hl], e
    jr nz, jr_019_711c

    ld l, b
    ld h, l
    jr nz, jr_019_70f3

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h

jr_019_70b0:
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $03
    nop
    ld b, d
    ld h, l
    ld h, c
    ld [hl], h

jr_019_70c0:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_019_70d3

    ld b, $20
    ld l, c
    ld l, [hl]

jr_019_70c9:
    ld bc, $7544
    ld l, [hl]
    ld h, l
    daa
    ld [hl], e
    jr nz, @+$45

    ld l, h

jr_019_70d3:
    ld [hl], l
    ld h, d
    jr nz, @+$56

    ld l, a
    ld [hl], l
    ld [hl], d

jr_019_70da:
    dec l
    ld bc, $616e
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$75

    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld [bc], a
    ld h, l
    ld l, h
    ld [hl], e
    ld h, l

jr_019_70f3:
    ld hl, $5920
    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, jr_019_715f

    ld h, l
    ld h, c
    ld [hl], h
    ld bc, $070e
    jr nz, jr_019_7166

    ld [hl], h
    jr nz, @+$4e

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_019_7151

jr_019_710e:
    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $7461
    jr nz, jr_019_718a

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_019_718b

    ld h, c

jr_019_711c:
    ld h, e
    ld h, l
    ld hl, $0003
    ld c, $06
    daa
    ld [hl], e
    jr nz, jr_019_7193

    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, @+$66

    ld [hl], d
    ld l, c
    db $76
    ld h, l
    ld bc, $7369
    jr nz, jr_019_7196

    jr nz, jr_019_719d

    ld h, l
    ld h, c
    ld [hl], d
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    ld bc, $6577
    ld h, c
    ld [hl], b
    ld l, a
    ld l, [hl]
    ld l, $02
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_019_71c5

    ld l, a
    ld [hl], l
    jr nz, jr_019_71b2

    ld h, l

jr_019_7151:
    ld h, c
    ld [hl], h
    jr nz, jr_019_71bd

    ld l, c
    ld l, l
    inc l
    ld bc, $6f73
    jr nz, jr_019_71a6

    jr nz, jr_019_71c6

jr_019_715f:
    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_019_71de

    ld l, a

jr_019_7166:
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    ld bc, $6f73
    ld l, l
    ld h, l
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_019_71e8

    ld l, a
    jr nz, @+$68

    ld h, l
    ld h, c
    ld [hl], d
    ld l, $03
    nop
    ld c, c
    jr nz, jr_019_71e8

    ld h, l
    ld h, c
    ld [hl], d
    jr nz, jr_019_71fe

    ld l, a
    ld [hl], l
    jr nz, jr_019_7200

    ld l, a

jr_019_718a:
    ld l, [hl]

jr_019_718b:
    ld bc, $6874
    ld h, l
    jr nz, jr_019_71d5

    ld [hl], l
    ld l, [hl]

jr_019_7193:
    ld h, l
    jr nz, jr_019_71d9

jr_019_7196:
    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6f54
    ld [hl], l

jr_019_719d:
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $02

jr_019_71a6:
    ld c, c
    ld h, [hl]
    jr nz, jr_019_7223

    ld l, a
    ld [hl], l
    jr nz, @+$79

    ld l, c
    ld l, [hl]
    jr nz, @+$63

jr_019_71b2:
    ld [hl], h
    jr nz, @+$4e

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    ld bc, $6c43
    ld [hl], l

jr_019_71bd:
    ld h, d
    inc l
    jr nz, jr_019_723a

    ld l, a
    ld [hl], l
    daa
    ld l, h

jr_019_71c5:
    ld l, h

jr_019_71c6:
    jr nz, jr_019_722a

    ld h, l
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    ld bc, $7247
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_019_7218

jr_019_71d5:
    ld l, b
    ld h, c
    ld l, l
    ld [hl], b

jr_019_71d9:
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $2e

jr_019_71de:
    ld l, $03
    nop
    ld d, b
    ld l, h
    ld h, c
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, a

jr_019_71e8:
    jr nz, jr_019_7253

    ld l, [hl]
    jr nz, jr_019_7261

    ld l, b
    ld h, l
    ld bc, $694c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_019_724b

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l

jr_019_71fe:
    ld l, [hl]
    ld [hl], h

jr_019_7200:
    ld bc, $7369
    jr nz, jr_019_7278

    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_019_7274

    ld l, h
    ld [hl], e
    ld h, l
    ld hl, $4102
    ld h, [hl]
    ld [hl], h
    ld h, l

jr_019_7218:
    ld [hl], d
    jr nz, jr_019_727e

    ld l, a
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$75

    ld l, a

jr_019_7223:
    ld bc, $6166
    ld [hl], d
    inc l
    jr nz, jr_019_72a1

jr_019_722a:
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_019_72a8

    ld l, a
    ld [hl], l
    jr nz, @+$76

    ld [hl], d
    ld a, c
    ld bc, $6f74
    jr nz, @+$76

jr_019_723a:
    ld h, c
    ld l, e
    ld h, l
    jr nz, @+$71

    ld l, [hl]
    jr nz, jr_019_728f

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ccf
    inc bc
    nop
    ld d, e
    ld l, a

jr_019_724b:
    jr nz, jr_019_72c6

    ld l, a
    ld [hl], l
    jr nz, jr_019_72c1

    ld l, h
    ld h, c

jr_019_7253:
    ld h, e
    ld h, l
    ld h, h
    jr nz, jr_019_72c1

    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, jr_019_72ab

    ld l, c
    ld l, [hl]

jr_019_7261:
    ld l, e
    ld [hl], e
    jr nz, jr_019_72a8

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
    ccf

jr_019_7274:
    jr nz, jr_019_72bd

    ld [hl], d
    ld h, l

jr_019_7278:
    ld h, c
    ld [hl], h
    ld hl, $5902
    ld l, a

jr_019_727e:
    ld [hl], l
    ld [hl], d
    jr nz, jr_019_72e6

    ld [hl], d
    ld h, l
    ld h, c
    ld l, l
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_019_72ed

    ld h, l
    ld h, e
    ld l, a
    ld l, l

jr_019_728f:
    dec l
    ld bc, $6e69
    ld h, a
    jr nz, jr_019_72dd

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_019_72df

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c

jr_019_72a1:
    ld l, a
    ld l, [hl]
    ld bc, $7369
    jr nz, @+$64

jr_019_72a8:
    ld h, l
    ld h, [hl]
    ld l, a

jr_019_72ab:
    ld [hl], d
    ld h, l
    jr nz, jr_019_7328

    ld l, a
    ld [hl], l
    ld hl, $0003
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_019_7305

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e

jr_019_72bd:
    jr nz, jr_019_7302

    ld l, h
    ld [hl], l

jr_019_72c1:
    ld h, d
    ld bc, $6f54
    ld [hl], l

jr_019_72c6:
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_019_7338

    ld [hl], e
    jr nz, jr_019_7346

    ld l, b
    ld h, l
    ld bc, $6863
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]

jr_019_72dd:
    ld [hl], e
    ld l, b

jr_019_72df:
    ld l, c
    ld [hl], b
    jr nz, jr_019_7349

    ld l, a
    ld [hl], d
    ld [bc], a

jr_019_72e6:
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, @+$64

    ld h, l
    ld [hl], e

jr_019_72ed:
    ld [hl], h
    jr nz, jr_019_7357

    ld l, a
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld [hl], e
    ld l, $01
    ld d, b
    ld l, h
    ld h, c
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_019_736e

    ld h, c

jr_019_7302:
    ld l, e
    ld h, l
    ld [hl], e

jr_019_7305:
    jr nz, jr_019_7380

    ld l, a
    ld [hl], l
    ld bc, $6e6f
    ld h, l
    jr nz, jr_019_737e

    ld h, [hl]
    jr nz, jr_019_7386

    ld l, b
    ld h, l
    jr nz, jr_019_7378

    ld h, l
    ld [hl], e
    ld [hl], h
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_019_7391

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    jr nz, jr_019_7391

jr_019_7328:
    ld l, [hl]
    ld bc, $694c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_019_7374

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6f54
    ld [hl], l

jr_019_7338:
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    inc l
    jr nz, @+$76

    ld l, a
    ld l, a
    ccf
    ld [bc], a

jr_019_7346:
    ld e, c
    ld l, a
    ld [hl], l

jr_019_7349:
    daa
    ld l, h
    ld l, h
    jr nz, jr_019_73b0

    ld h, l
    jr nz, jr_019_73c8

    ld h, c
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a

jr_019_7357:
    ld bc, $6874
    ld h, l
    jr nz, jr_019_73d1

    ld l, c
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_019_73d2

    ld h, [hl]
    jr nz, jr_019_73ad

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    ld bc, $6843
    ld h, c

jr_019_736e:
    ld l, l
    ld [hl], b
    jr nz, jr_019_73e5

    ld l, a
    ld l, a

jr_019_7374:
    ld l, [hl]
    inc l
    jr nz, @+$67

jr_019_7378:
    ld l, b
    ccf
    inc bc
    nop
    ld b, c
    ld [hl], e

jr_019_737e:
    jr nz, @+$0d

jr_019_7380:
    daa
    ld [hl], e
    jr nz, jr_019_73c7

    ld l, b
    ld h, c

jr_019_7386:
    ld l, l
    ld [hl], b
    inc l
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_019_7402

    ld [hl], l
    ld [hl], d

jr_019_7391:
    ld h, l
    jr nz, jr_019_7404

    ld h, l
    ld [hl], d
    dec l
    ld bc, $6f66
    ld [hl], d
    ld l, l
    ld h, l
    ld h, h
    jr nz, jr_019_7401

    ld [hl], h
    jr nz, jr_019_73ef

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l

jr_019_73ad:
    jr nz, jr_019_7413

    ld l, c

jr_019_73b0:
    ld h, h
    jr nz, jr_019_741c

    ld [hl], h
    inc l
    ld bc, $2107
    jr nz, jr_019_7413

    ld l, a
    ld [hl], l
    ld bc, $6f77
    ld l, [hl]
    jr nz, jr_019_7423

    ld [hl], h
    jr nz, jr_019_7411

    ld l, c
    ld l, [hl]

jr_019_73c7:
    ld l, e

jr_019_73c8:
    ld [hl], e
    ld hl, $0003
    ld d, h
    ld h, c
    ld l, e
    ld l, c
    ld l, [hl]

jr_019_73d1:
    ld h, a

jr_019_73d2:
    jr nz, jr_019_7448

    ld l, b
    ld h, l
    jr nz, jr_019_741f

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    jr nz, jr_019_7458

    ld l, c

jr_019_73e5:
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_019_745d

    ld l, a
    ld bc, $7571
    ld l, c

jr_019_73ef:
    ld h, e
    ld l, e
    ld l, h
    ld a, c
    jr nz, @+$6b

    ld [hl], e
    jr nz, jr_019_7459

    ld l, l
    ld h, c
    ld a, d
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $0003

jr_019_7401:
    ld e, c

jr_019_7402:
    ld l, a
    ld [hl], l

jr_019_7404:
    jr nz, jr_019_747a

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_019_747f

    ld l, b
    ld h, l
    jr nz, jr_019_7456

    ld [hl], d
    ld h, c

jr_019_7411:
    ld l, [hl]
    ld h, h

jr_019_7413:
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    jr nz, jr_019_748f

    ld l, c

jr_019_741c:
    ld [hl], h
    ld l, h
    ld h, l

jr_019_741f:
    inc l
    ld bc, $2107

jr_019_7423:
    ld [bc], a
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, jr_019_7490

    ld h, l
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld l, c
    ld [hl], h
    ld h, l
    ld l, h
    ld a, c
    ld bc, $6562
    jr nz, jr_019_74a3

    ld l, [hl]
    db $76
    ld l, c
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_019_74b6

    ld l, a
    ld bc, $6550
    ld h, c
    ld h, e

jr_019_7448:
    ld l, b
    daa
    ld [hl], e
    jr nz, jr_019_7490

    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, h
    ld h, l
    ld l, $03
    nop
    ld d, h

jr_019_7456:
    ld l, b
    ld h, l

jr_019_7458:
    ld a, c

jr_019_7459:
    jr nz, @+$75

    ld h, c
    ld a, c

jr_019_745d:
    jr nz, jr_019_74d3

    ld l, b
    ld h, l
    jr nz, jr_019_74aa

    ld [hl], d
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
    jr nz, jr_019_74d9

    ld h, l
    ld [hl], h
    ld [hl], e
    ld bc, $6e69
    db $76
    ld l, c

jr_019_747a:
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_019_74f3

jr_019_747f:
    ld l, a
    jr nz, jr_019_74d2

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    daa
    ld [hl], e
    ld [bc], a
    ld d, h
    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c

jr_019_748f:
    ld l, l

jr_019_7490:
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $20
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    ld bc, $7247
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_019_74e6

jr_019_74a3:
    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    jr nz, jr_019_7517

    ld l, a

jr_019_74aa:
    ld [hl], a
    ld l, $01
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, jr_019_7517

    ld h, l

jr_019_74b6:
    jr nz, jr_019_7521

    ld l, [hl]
    db $76
    ld l, c
    ld [hl], h
    ld h, l
    ld h, h
    ld l, $03
    nop
    ld b, [hl]
    ld h, l
    ld h, c
    ld [hl], d
    jr nz, jr_019_7535

    ld l, a
    ld [hl], h
    jr nz, jr_019_753f

    ld l, b
    ld h, l
    ld bc, $756f
    ld [hl], h
    ld h, e

jr_019_74d2:
    ld l, a

jr_019_74d3:
    ld l, l
    ld h, l
    inc l
    jr nz, jr_019_753a

    ld [hl], l

jr_019_74d9:
    ld [hl], h
    jr nz, jr_019_7542

    ld h, c
    ld h, e
    ld h, l
    ld bc, $614d
    ld [hl], d
    ld l, c
    ld l, a
    inc l

jr_019_74e6:
    jr nz, jr_019_7561

    ld l, a
    ld [hl], l
    jr nz, jr_019_7559

    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld l, $03
    nop
    ld b, a

jr_019_74f3:
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_019_7564

    ld [hl], l
    ld h, e
    ld l, e
    jr nz, jr_019_7566

    ld l, [hl]
    ld bc, $6550
    ld h, c
    ld h, e
    ld l, b
    daa
    ld [hl], e
    jr nz, jr_019_755c

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
    ld bc, $7247
    ld h, c
    ld l, [hl]

jr_019_7517:
    ld h, h
    jr nz, jr_019_755d

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld hl, $0003

jr_019_7521:
    ld d, a
    ld h, l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_019_758d

    ld a, b
    ld [hl], b
    ld h, l
    ld h, e
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_019_75ab

    ld l, a
    ld [hl], l
    ld [hl], d

jr_019_7535:
    ld bc, $6562
    ld [hl], e
    ld [hl], h

jr_019_753a:
    jr nz, jr_019_75ae

    ld l, a
    ld [hl], l
    ld l, [hl]

jr_019_753f:
    ld h, h
    jr nz, jr_019_75bb

jr_019_7542:
    ld h, l
    ld [hl], h
    jr nz, jr_019_75a7

    ld [hl], h
    ld bc, $6550
    ld h, c
    ld h, e
    ld l, b
    daa
    ld [hl], e
    jr nz, @+$56

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]

jr_019_7559:
    ld [hl], h
    ld l, $03

jr_019_755c:
    nop

jr_019_755d:
    ld b, [hl]
    ld [hl], l
    ld l, h
    ld h, [hl]

jr_019_7561:
    ld l, c
    ld l, h
    ld l, h

jr_019_7564:
    jr nz, @+$76

jr_019_7566:
    ld l, b
    ld h, l
    jr nz, jr_019_75d1

    ld l, a
    ld l, h
    ld h, [hl]
    dec l
    ld bc, $7265
    ld [hl], e
    daa
    jr nz, jr_019_75d9

    ld [hl], d
    ld h, l
    ld h, c
    ld l, l
    jr nz, @+$2f

    jr nz, jr_019_75f4

    ld l, c
    ld l, [hl]
    ld bc, $6550
    ld h, c
    ld h, e
    ld l, b
    daa
    ld [hl], e
    jr nz, jr_019_75dd

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]

jr_019_758d:
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
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld bc, $6e6f

jr_019_75a7:
    jr nz, jr_019_760b

    ld h, l
    ld h, c

jr_019_75ab:
    ld [hl], h
    ld l, c
    ld l, [hl]

jr_019_75ae:
    ld h, a
    jr nz, jr_019_75fe

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    inc l
    ld bc, $2107
    ld [bc], a
    ld c, c

jr_019_75bb:
    daa
    db $76
    ld h, l
    jr nz, jr_019_7630

    ld [hl], l
    ld [hl], h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $6976
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    jr nz, jr_019_7645

jr_019_75d1:
    ld [hl], d
    ld l, a
    ld [hl], b
    ld l, b
    ld a, c
    jr nz, jr_019_7641

    ld l, [hl]

jr_019_75d9:
    ld bc, $6874
    ld h, l

jr_019_75dd:
    jr nz, jr_019_762c

    ld h, l
    ld l, l
    ld l, a
    ld [hl], d
    ld l, c
    ld h, c
    ld l, h
    jr nz, jr_019_763a

    ld l, a
    ld l, a
    ld l, l
    ld l, $03
    nop
    rlca
    inc l
    jr nz, jr_019_7669

    ld l, b
    ld h, l

jr_019_75f4:
    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, @+$69

    ld l, a
    ld l, h
    ld h, [hl]

jr_019_75fe:
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, @+$6a

    ld h, l
    ld h, c
    ld [hl], d
    ld bc, $666f
    jr nz, jr_019_7684

jr_019_760b:
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_019_7686

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
    jr nz, jr_019_7682

    ld h, l
    jr nz, jr_019_7684

    jr nz, jr_019_768d

    ld h, l
    ld [hl], d
    ld l, a
    ld hl, $5401
    ld l, b

jr_019_762c:
    ld h, c
    ld [hl], h
    jr nz, jr_019_7694

jr_019_7630:
    ld h, c
    ld a, c
    jr nz, jr_019_76ab

    ld l, c
    ld l, h
    ld l, h
    ld bc, $6f63

jr_019_763a:
    ld l, l
    ld h, l
    jr nz, @+$78

    ld h, l
    ld [hl], d
    ld a, c

jr_019_7641:
    jr nz, jr_019_76b6

    ld l, a
    ld l, a

jr_019_7645:
    ld l, [hl]
    ld l, $03
    nop
    ld b, l
    db $76
    ld h, l
    ld l, [hl]
    jr nz, jr_019_76b0

    jr nz, @+$72

    ld [hl], d
    ld l, a
    jr nz, @+$6e

    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_019_76c7

    ld h, l
    ld bc, $6163
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$64

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_019_76dc

    ld l, b

jr_019_7669:
    ld h, l
    jr nz, jr_019_76db

    ld l, [hl]
    ld h, l
    ld bc, $6877
    ld l, a
    jr nz, jr_019_76d6

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_019_76c6

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, $03
    nop
    ld d, b
    ld h, l

jr_019_7682:
    ld [hl], d
    ld l, b

jr_019_7684:
    ld h, c
    ld [hl], b

jr_019_7686:
    ld [hl], e
    jr nz, jr_019_7702

    ld l, a
    ld [hl], l
    daa
    ld l, h

jr_019_768d:
    ld l, h
    ld bc, $6562
    ld h, e
    ld l, a
    ld l, l

jr_019_7694:
    ld h, l
    jr nz, jr_019_76f8

    ld l, [hl]
    jr nz, jr_019_7703

    ld h, h
    ld l, a
    ld l, h
    ld bc, $6f66
    ld [hl], d
    jr nz, @+$63

    ld l, h
    ld l, h
    jr nz, jr_019_770e

    ld l, a
    ld l, h
    ld h, [hl]
    ld h, l

jr_019_76ab:
    ld [hl], d
    ld [hl], e
    ld l, $03
    nop

jr_019_76b0:
    ld d, e
    ld l, a
    inc l
    jr nz, jr_019_772e

    ld l, a

jr_019_76b6:
    ld [hl], l
    jr nz, @+$63

    ld l, h
    ld [hl], d
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    ld bc, $6562
    ld h, c
    ld [hl], h
    jr nz, @+$4f

jr_019_76c6:
    ld h, c

jr_019_76c7:
    ld [hl], d
    ld l, c
    ld l, a
    ld hl, $0003
    ld c, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_019_7739

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h

jr_019_76d6:
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_019_7752

jr_019_76db:
    ld l, c

jr_019_76dc:
    ld [hl], e
    ld l, b
    ld bc, $7369
    jr nz, jr_019_7751

    ld l, a
    ld [hl], a
    jr nz, @+$68

    ld [hl], l
    ld l, h
    ld h, [hl]
    ld l, c
    ld l, h
    ld l, h
    ld h, l
    ld h, h
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_019_775f

    ld h, c

jr_019_76f8:
    db $76
    ld h, l
    jr nz, jr_019_775d

    ld h, e
    ld l, b
    ld l, c
    ld h, l
    db $76
    ld h, l

jr_019_7702:
    ld h, h

jr_019_7703:
    ld bc, $7665
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_019_7772

    ld l, a
    ld l, h
    ld h, [hl]

jr_019_770e:
    ld h, l
    ld [hl], d
    daa
    ld [hl], e
    jr nz, @+$66

    ld [hl], d
    ld h, l
    ld h, c
    ld l, l
    ld hl, $0003
    ld c, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_019_7790

    ld [hl], d
    ld l, a
    jr nz, jr_019_7788

    ld l, a
    ld h, l
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $6f6c
    ld l, a

jr_019_772e:
    ld l, e
    jr nz, jr_019_77a5

    ld l, a
    ld l, a
    jr nz, @+$6a

    ld h, c
    ld [hl], b
    ld [hl], b
    ld a, c

jr_019_7739:
    ld l, $03
    nop
    ld c, [hl]
    ld l, a
    inc l
    jr nz, jr_019_778a

    jr nz, jr_019_77b7

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, @+$6b

    ld [hl], h
    daa
    ld [hl], e
    ld bc, $6d61
    ld h, c
    ld a, d

jr_019_7751:
    ld l, c

jr_019_7752:
    ld l, [hl]
    ld h, a
    jr nz, jr_019_775d

    ld bc, $6562
    ld h, c
    ld [hl], h
    jr nz, jr_019_77aa

jr_019_775d:
    ld h, c
    ld [hl], d

jr_019_775f:
    ld l, c
    ld l, a
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_019_77e1

    ld l, b
    ld a, c
    jr nz, jr_019_77cf

    ld [hl], d
    ld h, l
    jr nz, jr_019_77eb

jr_019_7772:
    ld l, a
    ld [hl], l
    ld bc, $6f73
    jr nz, @+$73

    ld [hl], l
    ld l, c
    ld h, l
    ld [hl], h
    ccf
    inc bc
    nop
    ld d, a
    ld h, c
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_019_77ec

jr_019_7788:
    ld h, l
    ld h, [hl]

jr_019_778a:
    ld h, l
    ld h, c
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a

jr_019_7790:
    ld bc, $614d
    ld [hl], d
    ld l, c
    ld l, a
    jr nz, jr_019_77fd

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

jr_019_77a5:
    jr nz, jr_019_780b

    ld [hl], d
    ld h, l
    ld h, c

jr_019_77aa:
    ld l, l
    ccf
    inc bc
    nop
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_019_7821

    ld l, a
    ld [hl], a
    jr nz, jr_019_782b

jr_019_77b7:
    ld l, b
    ld h, c
    ld [hl], h
    ld bc, $2707
    ld [hl], e
    ld bc, $6f64
    ld l, [hl]
    ld h, l
    jr nz, jr_019_782e

    ld [hl], h
    inc l
    ld [bc], a
    ld [hl], a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_019_7836

    ld h, c

jr_019_77cf:
    ld [hl], b
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld [hl], e
    ld bc, $6f74
    jr nz, jr_019_784d

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_019_7842

    ld [hl], d
    ld h, l
    ld h, c

jr_019_77e1:
    ld l, l
    ccf
    inc bc
    nop
    ld b, a
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_019_7862

jr_019_77eb:
    ld l, c

jr_019_77ec:
    ld [hl], h
    ld l, b
    jr nz, jr_019_785e

    ld l, a
    jr nz, @+$66

    ld [hl], d
    ld h, l
    ld h, c
    ld l, l
    ld bc, $7369
    jr nz, jr_019_786a

    ld l, a

jr_019_77fd:
    jr nz, jr_019_7866

    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_019_7865

    ld [hl], h
    jr nz, @+$63

    ld l, h
    ld l, h
    ld l, $03

jr_019_780b:
    nop
    ld d, e
    ld [hl], l
    ld [hl], d
    ld h, l
    ld l, h
    ld a, c
    jr nz, jr_019_787b

    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_019_7890

    ld l, c
    ld [hl], h
    ld l, b
    ld bc, $6f6e
    jr nz, jr_019_7885

jr_019_7821:
    ld [hl], d
    ld h, l
    ld h, c
    ld l, l
    jr nz, jr_019_7893

    ld l, a
    ld [hl], e
    ld h, l
    ld [hl], e

jr_019_782b:
    ld bc, $7469

jr_019_782e:
    ld [hl], e
    jr nz, @+$63

    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, c
    ld l, h

jr_019_7836:
    ld l, $03
    nop
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_019_78b5

    ld h, l
    jr nz, jr_019_78b4

    ld l, b

jr_019_7842:
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_019_78aa

    ld h, l
    ld bc, $6168
    ld [hl], b

jr_019_784d:
    ld [hl], b
    ld a, c
    jr nz, jr_019_7858

    ld bc, $6562
    ld h, c
    ld [hl], h
    jr nz, @+$4f

jr_019_7858:
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, $2e

jr_019_785e:
    ld l, $03
    nop
    ld d, e

jr_019_7862:
    ld l, a
    jr nz, jr_019_78de

jr_019_7865:
    ld l, a

jr_019_7866:
    ld [hl], l
    jr nz, jr_019_78d6

    ld h, l

jr_019_786a:
    ld h, c
    ld l, [hl]
    jr nz, jr_019_78e2

    ld l, b
    ld h, c
    ld [hl], h
    ld bc, $2007
    ld l, b
    ld h, c
    ld [hl], e
    ld l, $2e
    ld l, $03

jr_019_787b:
    nop
    ld c, c
    jr nz, jr_019_78e2

    ld h, c
    ld l, [hl]
    jr nz, @+$77

    ld l, [hl]
    ld h, h

jr_019_7885:
    ld h, l
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, h
    ld bc, $6f62
    ld [hl], h

jr_019_7890:
    ld l, b
    jr nz, @+$75

jr_019_7893:
    ld l, c
    ld h, h
    ld h, l
    ld [hl], e
    ld l, $03
    nop
    ld d, h
    ld l, a
    jr nz, @+$74

    ld h, l
    ld h, c
    ld l, h
    ld l, c
    ld a, d
    ld h, l
    jr nz, jr_019_7907

    jr nz, jr_019_790c

    ld [hl], d
    ld h, l

jr_019_78aa:
    ld h, c
    ld l, l
    ld bc, $7369
    jr nz, @+$63

    jr nz, jr_019_792a

    ld l, a

jr_019_78b4:
    ld l, [hl]

jr_019_78b5:
    ld h, h
    ld h, l
    ld [hl], d
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld bc, $6874
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $2e
    ld l, $02
    ld h, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_019_793e

    ld l, a
    jr nz, jr_019_7939

    ld l, a
    ld [hl], e
    ld h, l
    jr nz, @+$63

    ld bc, $7264
    ld h, l

jr_019_78d6:
    ld h, c
    ld l, l
    jr nz, jr_019_793b

    ld l, h
    ld [hl], h
    ld l, a
    ld h, a

jr_019_78de:
    ld h, l
    ld [hl], h
    ld l, b
    ld h, l

jr_019_78e2:
    ld [hl], d
    ld bc, $7369
    jr nz, jr_019_7949

    jr nz, @+$76

    ld [hl], d
    ld h, c
    ld h, a
    ld h, l
    ld h, h
    ld a, c
    ld l, $03
    nop
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_019_7962

    ld h, [hl]
    ld l, $2e
    ld l, $01
    ld [hl], a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_019_796d

    ld h, [hl]
    jr nz, jr_019_797e

jr_019_7907:
    ld h, l
    jr nz, jr_019_796d

    ld l, a
    db $76

jr_019_790c:
    ld h, l
    ld [hl], d
    ld bc, $7469
    jr nz, @+$77

    ld [hl], b
    jr nz, jr_019_797c

    ld l, a
    ld [hl], d
    jr nz, jr_019_797b

    jr nz, jr_019_7993

    ld l, b
    ld l, c
    ld l, h
    ld h, l
    ccf
    inc bc
    nop
    ld c, c
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_019_7993

jr_019_792a:
    ld [hl], h
    jr nz, jr_019_798f

    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    ld bc, $6f74
    jr nz, jr_019_79a3

    ld h, l
    ld [hl], h

jr_019_7939:
    jr nz, jr_019_79a4

jr_019_793b:
    ld [hl], h
    jr nz, jr_019_79aa

jr_019_793e:
    ld h, l
    ld h, c
    ld l, e
    ld bc, $756f
    ld [hl], h
    jr nz, jr_019_79ba

    ld l, h
    ld l, a

jr_019_7949:
    ld [hl], a
    ld l, h
    ld a, c
    ccf
    inc bc
    nop
    ld d, b
    ld h, l
    ld [hl], d
    ld l, b
    ld h, c
    ld [hl], b
    ld [hl], e
    ld l, $20
    ld c, c
    ld [hl], h
    daa
    ld h, h
    ld bc, $6572
    ld h, h
    ld [hl], l
    ld h, e

jr_019_7962:
    ld h, l
    jr nz, jr_019_79d9

    ld l, b
    ld h, l
    jr nz, jr_019_79d0

    ld l, a
    ld l, h
    ld h, [hl]
    ld h, l

jr_019_796d:
    ld [hl], d
    ld [hl], e
    daa
    ld bc, $6873
    ld l, a
    ld h, e
    ld l, e
    ld l, $03
    nop
    ld b, c
    ld l, [hl]

jr_019_797b:
    ld h, h

jr_019_797c:
    jr nz, jr_019_79f5

jr_019_797e:
    ld h, l
    daa
    ld l, h
    ld l, h
    jr nz, jr_019_79f7

    ld h, c
    db $76
    ld h, l
    ld bc, $2707
    ld [hl], e
    ld bc, $6572
    ld [hl], b

jr_019_798f:
    ld [hl], l
    ld [hl], h
    ld h, c
    ld [hl], h

jr_019_7993:
    ld l, c
    ld l, a
    ld l, [hl]
    inc l
    jr nz, jr_019_7a0d

    ld l, a
    ld l, a
    ld hl, $0003
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    daa

jr_019_79a3:
    ld [hl], e

jr_019_79a4:
    jr nz, @+$64

    ld [hl], d
    ld l, c
    ld l, h
    ld l, h

jr_019_79aa:
    ld l, c
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld hl, $0003
    ld c, a
    ld c, e
    inc l
    jr nz, jr_019_79bd

    ccf
    inc bc
    nop
    ld e, c

jr_019_79ba:
    ld l, a
    ld [hl], l
    daa

jr_019_79bd:
    db $76
    ld h, l
    jr nz, jr_019_7a38

    ld l, a
    ld [hl], d
    ld l, e
    ld h, l
    ld h, h
    jr nz, jr_019_7a30

    ld h, c
    ld [hl], d
    ld h, h
    ld bc, $6f74
    jr nz, jr_019_7a32

jr_019_79d0:
    ld h, l
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_019_7a4b

    ld l, b
    ld h, l

jr_019_79d9:
    ld bc, $6e6f
    ld h, l
    jr nz, jr_019_7a53

    ld l, a
    jr nz, @+$64

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_019_7a34

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, $03
    nop
    ld c, c
    daa
    ld l, l
    jr nz, @+$75

    ld l, a
    ld [hl], d

jr_019_79f5:
    ld [hl], d
    ld a, c

jr_019_79f7:
    jr nz, jr_019_7a6d

    ld l, a
    jr nz, jr_019_7a60

    ld l, a
    ld bc, $6874
    ld l, c
    ld [hl], e
    inc l
    jr nz, @+$64

    ld [hl], l
    ld [hl], h
    jr nz, jr_019_7a6c

    ld h, c
    ld l, [hl]
    jr nz, @+$7b

jr_019_7a0d:
    ld l, a
    ld [hl], l
    ld bc, $656b
    ld h, l
    ld [hl], b
    jr nz, jr_019_7a7f

    ld [hl], h
    jr nz, jr_019_7a7a

    jr nz, @+$75

    ld h, l
    ld h, e
    ld [hl], d
    ld h, l
    ld [hl], h
    ccf
    inc bc
    nop
    ld d, b
    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    jr nz, jr_019_7a8d

    ld h, l
    jr nz, jr_019_7a9e

    ld h, c
    ld [hl], h

jr_019_7a30:
    ld l, c
    ld h, l

jr_019_7a32:
    ld l, [hl]
    ld [hl], h

jr_019_7a34:
    ld l, $01
    ld d, a
    ld h, l

jr_019_7a38:
    daa
    ld l, h
    ld l, h
    jr nz, jr_019_7aaa

    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_019_7aab

    ld [hl], h
    ld bc, $6e6b
    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, @+$6b

jr_019_7a4b:
    ld l, [hl]
    jr nz, jr_019_7ab2

    ld [hl], l
    ld h, l
    jr nz, jr_019_7ac6

    ld l, c

jr_019_7a53:
    ld l, l
    ld h, l
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, @+$7b

    ld l, a

jr_019_7a60:
    ld [hl], l
    jr nz, jr_019_7ac9

    ld l, a
    ld [hl], d
    ld bc, $6e75
    ld h, h
    ld h, l
    ld [hl], d
    ld [hl], e

jr_019_7a6c:
    ld [hl], h

jr_019_7a6d:
    ld h, c
    ld l, [hl]
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $03
    nop
    ld b, e
    ld l, a
    ld l, [hl]
    ld h, a

jr_019_7a7a:
    ld [hl], d
    ld h, c
    ld [hl], h
    ld [hl], l
    ld l, h

jr_019_7a7f:
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    jr nz, jr_019_7af6

    ld l, [hl]
    ld bc, $6f79
    ld [hl], l
    ld [hl], d

jr_019_7a8d:
    jr nz, jr_019_7b05

    ld l, c
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    ld l, $02
    ld c, c
    daa
    db $76
    ld h, l
    jr nz, jr_019_7b0d

    ld [hl], l

jr_019_7a9e:
    ld [hl], h
    jr nz, jr_019_7b1a

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $7274
    ld l, a
    ld [hl], b
    ld l, b

jr_019_7aaa:
    ld a, c

jr_019_7aab:
    jr nz, jr_019_7b16

    ld l, [hl]
    jr nz, jr_019_7b24

    ld l, b
    ld h, l

jr_019_7ab2:
    ld bc, $654d
    ld l, l
    ld l, a
    ld [hl], d
    ld l, c
    ld h, c
    ld l, h
    jr nz, jr_019_7b0f

    ld l, a
    ld l, a
    ld l, l
    ld l, $03
    nop

    push af
    ld a, $00

jr_019_7ac6:
    call Call_019_7ad3

jr_019_7ac9:
    pop af
    ret


    push af
    ld a, $01
    call Call_019_7ad3
    pop af
    ret


Call_019_7ad3:
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
    ld hl, $41b4
    add hl, de
    or a
    jr nz, jr_019_7af0

    ld de, $c600
    ld bc, $0180
    jr jr_019_7af6

jr_019_7af0:
    ld de, $d880
    ld bc, $0020

jr_019_7af6:
    call MemCopy
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

jr_019_7b05:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_019_7b0d:
    rst $38
    rst $38

jr_019_7b0f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_019_7b16:
    rst $38
    rst $38
    rst $38
    rst $38

jr_019_7b1a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_019_7b24:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
