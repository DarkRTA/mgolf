INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $018", ROMX[$4000], BANK[$18]

    db $04, $7d, $0c, $7d

    nop
    nop
    dec b
    nop
    dec e
    nop
    add hl, sp
    nop
    ld d, h
    nop
    ld l, h
    nop
    adc c
    nop
    sbc [hl]
    nop
    cp e
    nop
    db $d3
    nop
    db $eb
    nop
    inc b
    ld bc, $010c
    inc d
    ld bc, $0128
    ld b, c
    ld bc, $0155
    ld l, c
    ld bc, $017d
    sub c
    ld bc, $01aa
    jp $d701


    ld bc, $01f0
    ld hl, sp+$01
    nop
    ld [bc], a

    db $02, $02

    add hl, bc
    ld [bc], a
    ld [de], a
    ld [bc], a
    dec de
    ld [bc], a
    inc h
    ld [bc], a
    dec l
    ld [bc], a
    ld [hl], $02
    ccf
    ld [bc], a

    db $41, $02

    ld d, b
    ld [bc], a
    ld e, l
    ld [bc], a
    ld l, d
    ld [bc], a
    ld a, b
    ld [bc], a
    adc d
    ld [bc], a
    sbc d
    ld [bc], a

    db $9c, $02

    xor [hl]
    ld [bc], a
    ret nz

    ld [bc], a
    jp nc, $e702

    ld [bc], a
    ei
    ld [bc], a
    db $10
    inc bc

    db $12, $03

    inc hl
    inc bc
    dec [hl]
    inc bc
    ld b, a
    inc bc
    ld e, h
    inc bc
    ld [hl], b
    inc bc
    add l
    inc bc
    add a
    inc bc
    sub d
    inc bc
    sbc a
    inc bc
    xor d
    inc bc

    db $ba, $03

    ret


    inc bc
    rlc e
    jp nc, $d703

    inc bc
    call c, $e203
    inc bc
    add sp, $03

    db $f5, $03

    ld sp, hl
    inc bc
    nop
    inc b

    db $07, $04, $0b, $04

    ld de, $1704
    inc b
    inc e
    inc b

    db $26, $04, $2c, $04

    ld [hl-], a
    inc b
    jr c, jr_018_40a6

    dec a
    inc b
    ld b, e
    inc b

jr_018_40a6:
    ld c, b
    inc b
    ld d, c
    inc b
    ld d, l
    inc b
    ld e, c
    inc b
    ld h, b
    inc b
    ld h, a
    inc b
    ld l, e
    inc b
    ld [hl], c
    inc b
    ld [hl], a
    inc b
    ld a, h
    inc b
    add h
    inc b
    adc d
    inc b
    sub b
    inc b
    sub [hl]
    inc b
    sbc e
    inc b
    and c
    inc b
    and [hl]
    inc b
    xor a
    inc b
    or e
    inc b
    push de
    inc b
    ld sp, hl
    inc b
    dec bc
    dec b

    db $0d, $05, $18, $05, $23, $05, $2a, $05

    inc sp
    dec b
    ld a, $05
    ld b, a
    dec b
    ld c, c
    dec b

    db $4b, $05

    ld e, h
    dec b

    db $5e, $05, $77, $05, $8a, $05, $a0, $05

    or e
    dec b
    cp [hl]
    dec b
    rst $00
    dec b
    ret


    dec b

    db $cb, $05

    push hl
    dec b
    rst $20
    dec b
    jp hl


    dec b
    nop
    ld b, $19
    ld b, $1b
    ld b, $1d
    ld b, $1f
    ld b, $21
    ld b, $23
    ld b, $25
    ld b, $3c
    ld b, $73
    ld b, $7b
    ld b, $7f
    ld b, $84
    ld b, $8b
    ld b, $93
    ld b, $97
    ld b, $9e
    ld b, $a3
    ld b, $ab
    ld b, $af
    ld b, $b7
    ld b, $bb
    ld b, $bf
    ld b, $c4
    ld b, $ca
    ld b, $d2
    ld b, $d8
    ld b, $dc
    ld b, $e2
    ld b, $e8
    ld b, $ee
    ld b, $f4
    ld b, $fb
    ld b, $00
    rlca
    inc b
    rlca
    ld [$0f07], sp
    rlca
    ld d, $07
    inc e
    rlca
    inc hl
    rlca
    add hl, hl
    rlca
    dec l
    rlca
    dec [hl]
    rlca
    add hl, sp
    rlca
    ccf
    rlca
    ld c, b
    rlca
    ld c, [hl]
    rlca
    ld d, a
    rlca
    ld e, h
    rlca
    ld h, e
    rlca
    ld l, d
    rlca
    ld l, a
    rlca
    ld [hl], e
    rlca
    ld [hl], a
    rlca
    ld a, h
    rlca
    add l
    rlca
    adc e
    rlca
    sub c
    rlca
    sub a
    rlca
    sbc [hl]
    rlca
    and h
    rlca
    xor e
    rlca
    or l
    rlca
    cp [hl]
    rlca
    jp nz, $c607

    rlca
    call z, $d307
    rlca
    jp c, $de07

    rlca
    push hl
    rlca
    db $eb
    rlca
    ld a, [c]
    rlca
    ld hl, sp+$07
    cp $07
    dec b
    ld [$0809], sp
    ld [de], a
    ld [$0815], sp
    ld a, [de]
    ld [$0820], sp
    jr z, @+$0a

    ld l, $08
    inc sp
    ld [$083a], sp
    ld b, c
    ld [$0847], sp
    ld c, l
    ld [$0852], sp
    ld e, d
    ld [$085f], sp
    ld h, h
    ld [$0868], sp
    ld l, [hl]
    ld [$0875], sp
    ld a, e
    ld [$087f], sp
    add h
    ld [$088b], sp
    sub b
    ld [$089a], sp
    and b
    ld [$08a5], sp
    xor e
    ld [$08b0], sp
    cp b
    ld [$08bd], sp
    jp $c908


    ld [$08cf], sp
    rst $10
    ld [$08e1], sp
    and $08
    ldh a, [$08]
    push af
    ld [$08fd], sp
    inc b
    add hl, bc
    add hl, bc
    add hl, bc
    db $10
    add hl, bc
    rla
    add hl, bc
    rra
    add hl, bc
    ld [hl+], a
    add hl, bc
    ld h, $09
    inc l
    add hl, bc
    dec [hl]
    add hl, bc
    dec sp
    add hl, bc
    ld b, e
    add hl, bc
    ld c, c
    add hl, bc
    ld c, a
    add hl, bc
    ld d, a
    add hl, bc
    ld e, h
    add hl, bc
    ld h, h
    add hl, bc
    ld l, e
    add hl, bc
    ld [hl], b
    add hl, bc
    ld [hl], h
    add hl, bc
    ld a, l
    add hl, bc
    add e
    add hl, bc
    adc e
    add hl, bc
    sub d
    add hl, bc
    sbc b
    add hl, bc
    sbc h
    add hl, bc
    and h
    add hl, bc
    xor d
    add hl, bc
    or b
    add hl, bc
    or a
    add hl, bc
    jp nz, $ca09

    add hl, bc
    push de
    add hl, bc
    db $e3
    add hl, bc
    pop af
    add hl, bc
    rst $38
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld de, $1c0a
    ld a, [bc]
    ld e, $0a
    jr nz, jr_018_4240

    ld [hl+], a
    ld a, [bc]
    inc h
    ld a, [bc]
    inc [hl]
    ld a, [bc]
    ld c, e
    ld a, [bc]
    ld h, c
    ld a, [bc]

jr_018_4240:
    ld a, l
    ld a, [bc]
    adc a
    ld a, [bc]
    or d
    ld a, [bc]

    db $b5, $0a

    cp d
    ld a, [bc]
    cp a
    ld a, [bc]
    rst $10
    ld a, [bc]
    db $f4
    ld a, [bc]
    inc c
    dec bc
    daa
    dec bc
    ld b, d
    dec bc
    ld e, e
    dec bc
    ld [hl], h
    dec bc
    sub c
    dec bc
    and a
    dec bc
    or e
    dec bc
    cp a
    dec bc
    push bc
    dec bc
    sub $0b
    db $dd
    dec bc
    db $ed
    dec bc
    ld sp, hl
    dec bc
    dec b
    inc c
    jr z, jr_018_427c

    ld c, c
    inc c
    ld l, d
    inc c
    adc h
    inc c
    and [hl]
    inc c
    jp z, $ed0c

    inc c

jr_018_427c:
    dec b
    dec c
    daa
    dec c
    ld c, b
    dec c
    ld h, b
    dec c
    add d
    dec c
    and e
    dec c
    cp h
    dec c
    rst $18
    dec c
    ld bc, $190e
    ld c, $2f
    ld c, $45
    ld c, $5c
    ld c, $73
    ld c, $82
    ld c, $90
    ld c, $9b
    ld c, $ad
    ld c, $bb
    ld c, $c8
    ld c, $d6
    ld c, $ea
    ld c, $f0
    ld c, $0a
    rrca
    ld hl, $370f
    rrca

jr_018_42b0:
    ld c, a
    rrca
    ld e, [hl]
    rrca
    ld [hl], e
    rrca
    adc [hl]
    rrca
    sbc e
    rrca
    xor h
    rrca
    cp [hl]
    rrca
    rst $08
    rrca
    db $e3
    rrca
    xor $0f
    add hl, bc
    db $10
    dec h
    db $10
    jr c, jr_018_42da

    ld c, b
    db $10
    ld e, h
    db $10
    ld [hl], c
    db $10
    ld a, e
    db $10
    add [hl]
    db $10
    sub c
    db $10
    and h
    db $10
    cp d
    db $10

jr_018_42da:
    call nz, Call_000_2410
    ld de, $118e
    db $db
    ld de, $1241
    and d
    ld [de], a
    add hl, hl
    inc de
    ld h, b
    inc de
    or [hl]
    inc de
    db $eb
    inc de
    inc e
    inc d
    ld [hl], h
    inc d
    cp a

jr_018_42f3:
    inc d
    ld e, $15
    ld a, [hl]
    dec d
    or l
    dec d
    push hl
    dec d
    ld d, c
    ld d, $b4
    ld d, $17
    rla
    ld b, [hl]
    rla

jr_018_4304:
    and a
    rla
    jp hl


    rla
    ld c, b
    jr jr_018_42b0

    jr @-$28

    jr jr_018_433b

    add hl, de
    ld c, b
    add hl, de
    add b
    add hl, de
    and [hl]
    add hl, de
    call z, $e519
    add hl, de
    ld a, [de]
    ld a, [de]
    ld a, a
    ld a, [de]
    db $e4
    ld a, [de]
    ccf
    dec de
    sub [hl]
    dec de
    ret z

    dec de
    ld a, [$651b]
    inc e
    rst $08
    inc e
    ld [$711d], sp
    dec e
    and [hl]
    dec e
    jp nc, Jump_000_041d

    ld e, $38
    ld e, $90
    ld e, $e3

jr_018_433b:
    ld e, $36
    rra
    sbc [hl]
    rra
    pop af
    rra
    ld h, b
    jr nz, jr_018_42f3

    jr nz, jr_018_4386

    ld hl, $21a4
    db $db
    ld hl, $220e
    ld a, h
    ld [hl+], a
    xor d
    ld [hl+], a
    ld de, $7323
    inc hl
    cp h
    inc hl
    rrca
    inc h
    ld a, d
    inc h
    or h
    inc h
    db $e4
    inc h
    jr jr_018_4387

    ld l, a
    dec h
    and e
    dec h
    xor c
    dec h
    db $db
    dec h
    ld b, a
    ld h, $91

jr_018_436d:
    ld h, $e7
    ld h, $1a
    daa
    ld a, $27
    add l
    daa
    and e
    daa
    ld sp, hl
    daa
    ld d, e
    jr z, jr_018_4304

    jr z, jr_018_436d

    jr z, jr_018_43a6

    add hl, hl
    add c
    add hl, hl
    sbc h
    add hl, hl

jr_018_4386:
    db $fd

jr_018_4387:
    add hl, hl
    ld h, h
    ld a, [hl+]
    ld a, e
    ld a, [hl+]
    or e
    ld a, [hl+]
    add sp, $2a
    rst $38
    ld a, [hl+]
    scf
    dec hl
    ld l, h
    dec hl
    add e
    dec hl
    cp c
    dec hl
    jp hl


    dec hl
    nop
    inc l
    ld sp, $612c
    inc l
    ld a, b
    inc l
    reti


    inc l

jr_018_43a6:
    ld [$592d], sp
    dec l
    or b
    dec l
    dec c
    ld l, $69
    ld l, $c3

jr_018_43b1:
    ld l, $1e
    cpl
    ld [hl], l
    cpl
    call $262f
    jr nc, jr_018_433b

    jr nc, jr_018_436d

    jr nc, @-$1e

    jr nc, jr_018_43d2

    ld sp, $3142
    ld [hl], e
    ld sp, $31a5
    push de
    ld sp, $3208
    ld b, c
    ld [hl-], a
    add c
    ld [hl-], a
    and a
    ld [hl-], a

jr_018_43d2:
    add $32
    jp hl


    ld [hl-], a
    ld a, [bc]
    inc sp
    ld [hl], d
    inc sp
    and e
    inc sp
    dec e
    inc [hl]
    ld c, h
    inc [hl]
    add b
    inc [hl]
    cp b
    inc [hl]
    pop af
    inc [hl]
    dec l
    dec [hl]
    add d
    dec [hl]
    cp e
    dec [hl]
    db $ec
    dec [hl]
    ld b, d
    ld [hl], $54
    ld [hl], $79
    ld [hl], $ac
    ld [hl], $eb
    ld [hl], $41
    scf
    sbc c
    scf
    db $fd
    scf
    ld l, c
    jr c, jr_018_43b1

    jr c, @-$3a

    jr c, jr_018_4453

    ld l, a
    ld l, [hl]
    ld h, l
    nop
    rlca
    jr nz, jr_018_446f

    ld l, b
    ld h, l
    ld h, e
    ld l, e
    ld h, l
    ld h, h
    jr nz, jr_018_4488

    ld l, b
    ld h, l
    jr nz, @+$65

    ld l, b
    ld h, l
    ld [hl], e
    ld [hl], h
    ld l, $2e
    ld l, $03
    nop
    rlca
    jr nz, jr_018_4487

    ld l, b
    ld h, l
    ld h, e
    ld l, e
    ld h, l
    ld h, h
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_018_4492

    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    ld l, b
    ld h, l
    ld l, h
    ld h, [hl]
    ld l, $2e
    ld l, $03
    nop
    rlca
    jr nz, @+$6e

    ld l, a
    ld l, a
    ld l, e
    ld h, l
    ld h, h
    jr nz, @+$6b

    ld l, [hl]
    jr nz, jr_018_44be

    ld l, b
    ld h, l
    jr nz, @+$64

    ld h, c
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, h

jr_018_4453:
    ld l, $2e
    ld l, $03
    nop
    rlca
    jr nz, jr_018_44c7

    ld l, a
    ld l, a
    ld l, e
    ld h, l
    ld h, h
    jr nz, jr_018_44cb

    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, @+$6c

    ld [hl], l
    ld h, a
    ld l, $2e
    ld l, $03

jr_018_446f:
    nop
    rlca
    jr nz, jr_018_44e7

    ld [hl], d
    ld l, c
    ld h, l
    ld h, h
    jr nz, @+$76

    ld l, a
    jr nz, jr_018_44ee

    ld h, l
    ld h, c
    ld h, h
    jr nz, jr_018_44f5

    ld l, b
    ld h, l
    jr nz, jr_018_44f8

    ld l, c
    ld h, a

jr_018_4487:
    ld l, [hl]

jr_018_4488:
    ld l, $2e
    ld l, $03
    nop
    rlca
    jr nz, jr_018_4502

    ld h, l
    ld h, c

jr_018_4492:
    ld h, h
    jr nz, jr_018_4509

    ld l, b
    ld h, l
    jr nz, jr_018_4505

    ld h, c
    ld h, d
    ld h, l
    ld l, h
    ld l, $2e
    ld l, $03
    nop
    rlca
    jr nz, jr_018_4508

    ld l, b
    ld h, l
    ld h, e
    ld l, e
    ld h, l
    ld h, h
    jr nz, jr_018_4521

    ld l, b
    ld h, l
    jr nz, jr_018_4517

    ld l, h
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_018_451a

    ld h, l
    ld h, h
    ld l, $2e
    ld l, $03

jr_018_44be:
    nop
    rlca
    jr nz, jr_018_4525

    ld l, b
    ld h, l
    ld h, e
    ld l, e
    ld h, l

jr_018_44c7:
    ld h, h
    jr nz, jr_018_453e

    ld l, b

jr_018_44cb:
    ld h, l
    jr nz, jr_018_4541

    ld l, b
    ld h, l
    ld l, h
    ld h, [hl]
    ld l, $2e
    ld l, $03
    nop
    rlca
    jr nz, @+$65

    ld l, b
    ld h, l
    ld h, e
    ld l, e
    ld h, l
    ld h, h
    jr nz, jr_018_4556

    ld l, b
    ld h, l
    jr nz, jr_018_4549

    ld l, h

jr_018_44e7:
    ld l, a
    ld h, e
    ld l, e
    ld l, $2e
    ld l, $03

jr_018_44ee:
    nop
    rlca
    jr nz, jr_018_4555

    ld l, b
    ld h, l
    ld h, e

jr_018_44f5:
    ld l, e
    ld h, l
    ld h, h

jr_018_44f8:
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_018_456a

    ld l, a
    ld h, e
    ld l, e
    ld h, l

jr_018_4502:
    ld [hl], d
    ld l, $2e

jr_018_4505:
    ld l, $03
    nop

jr_018_4508:
    ld d, d

jr_018_4509:
    ld h, l
    ld [hl], e
    ld h, l
    ld [hl], d
    db $76
    ld h, l
    nop
    ld d, d
    ld h, l
    ld [hl], e
    ld h, l
    ld [hl], d
    db $76
    ld h, l

jr_018_4517:
    nop
    ld l, $2e

jr_018_451a:
    ld l, $62
    ld [hl], l
    ld [hl], h
    jr nz, jr_018_4589

    ld [hl], h

jr_018_4521:
    daa
    ld [hl], e
    jr nz, jr_018_458a

jr_018_4525:
    ld l, l
    ld [hl], b
    ld [hl], h
    ld a, c
    ld l, $03
    nop
    ld l, $2e
    ld l, $62
    ld [hl], l
    ld [hl], h
    jr nz, jr_018_45a2

    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    daa
    ld [hl], e
    jr nz, jr_018_45b2

jr_018_453e:
    ld l, b
    ld h, l
    ld [hl], d

jr_018_4541:
    ld h, l
    ld l, $03
    nop
    ld l, $2e
    ld l, $62

jr_018_4549:
    ld [hl], l
    ld [hl], h
    jr nz, jr_018_45b6

    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_018_45b7

    ld l, l
    ld [hl], b
    ld [hl], h

jr_018_4555:
    ld a, c

jr_018_4556:
    ld l, $03
    nop
    ld l, $2e
    ld l, $62
    ld [hl], l
    ld [hl], h
    jr nz, @+$6b

    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_018_45cb

    ld l, l
    ld [hl], b
    ld [hl], h
    ld a, c

jr_018_456a:
    ld l, $03
    nop
    ld l, $2e
    ld l, $62
    ld [hl], l
    ld [hl], h
    jr nz, @+$6b

    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$64

    ld l, h
    ld h, c
    ld l, [hl]
    ld l, e
    ld l, $03
    nop
    ld l, $2e
    ld l, $62
    ld [hl], l
    ld [hl], h
    jr nz, @+$6b

jr_018_4589:
    ld [hl], h

jr_018_458a:
    daa
    ld [hl], e
    jr nz, jr_018_45f0

    ld l, h
    ld h, c
    ld l, [hl]
    ld l, e
    ld l, $03
    nop
    ld l, $2e
    ld l, $62
    ld [hl], l
    ld [hl], h
    jr nz, @+$70

    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]

jr_018_45a2:
    ld h, a
    daa
    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $03
    nop
    ld l, $2e
    ld l, $62

jr_018_45b2:
    ld [hl], l
    ld [hl], h
    jr nz, @+$70

jr_018_45b6:
    ld l, a

jr_018_45b7:
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    daa
    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $03
    nop
    ld l, $2e
    ld l, $62

jr_018_45cb:
    ld [hl], l
    ld [hl], h
    jr nz, @+$6b

    ld [hl], h
    jr nz, @+$75

    ld [hl], h
    ld l, a
    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, h
    ld l, $03
    nop
    ld l, $2e
    ld l, $62
    ld [hl], l
    ld [hl], h
    jr nz, @+$70

    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    daa
    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, l
    ld [hl], d

jr_018_45f0:
    ld h, l
    ld l, $03
    nop
    ld d, d
    ld h, l
    ld [hl], e
    ld h, l
    ld [hl], d
    db $76
    ld h, l
    nop
    ld d, d
    ld h, l
    ld [hl], e
    ld h, l
    ld [hl], d
    db $76
    ld h, l
    nop
    inc b
    nop

    db $59, $65, $73, $01, $4e, $6f, $00, $43, $6f, $75, $72, $73, $65, $20, $30, $00
    db $43, $6f, $75, $72, $73, $65, $20, $31, $00, $43, $6f, $75, $72, $73, $65, $20
    db $32, $00, $43, $6f, $75, $72, $73, $65, $20, $33, $00, $43, $6f, $75, $72, $73
    db $65, $20, $34, $00, $43, $6f, $75, $72, $73, $65, $20, $35, $00, $30, $00, $31
    db $2e, $20, $4d, $61, $72, $69, $6f, $6e, $20, $43, $6c, $75, $62, $00, $32, $2e
    db $20, $50, $61, $6c, $6d, $20, $43, $6c, $75, $62, $00, $33, $2e, $20, $44, $75
    db $6e, $65, $20, $43, $6c, $75, $62, $00, $34, $2e, $20, $4c, $69, $6e, $6b, $73
    db $20, $43, $6c, $75, $62, $00, $35, $2e, $20, $50, $65, $61, $63, $68, $27, $73
    db $20, $43, $61, $73, $74, $6c, $65, $00, $54, $68, $65, $20, $47, $6f, $6c, $66
    db $20, $47, $75, $72, $75, $27, $73, $00, $30, $00, $59, $6f, $75, $72, $20, $68
    db $6f, $6d, $65, $20, $63, $6f, $75, $72, $73, $65, $2e, $00, $41, $20, $74, $72
    db $6f, $70, $69, $63, $61, $6c, $20, $74, $77, $69, $73, $74, $21, $00, $54, $68
    db $65, $20, $61, $72, $69, $64, $20, $70, $6c, $61, $74, $65, $61, $75, $21, $00
    db $41, $20, $73, $65, $61, $73, $69, $64, $65, $20, $63, $68, $61, $6c, $6c, $65
    db $6e, $67, $65, $21, $00, $42, $79, $20, $69, $6e, $76, $69, $74, $61, $74, $69
    db $6f, $6e, $20, $6f, $6e, $6c, $79, $21, $00, $50, $69, $74, $63, $68, $20, $26
    db $20, $50, $75, $74, $74, $20, $43, $6f, $75, $72, $73, $65, $21, $00, $30, $00
    db $41, $20, $77, $6f, $6f, $64, $65, $64, $20, $63, $6f, $75, $72, $73, $65, $21
    db $00, $41, $20, $74, $72, $6f, $70, $69, $63, $61, $6c, $20, $74, $77, $69, $73
    db $74, $21, $00, $54, $68, $65, $20, $61, $72, $69, $64, $20, $70, $6c, $61, $74
    db $65, $61, $75, $21, $00, $41, $20, $73, $65, $61, $73, $69, $64, $65, $20, $63
    db $68, $61, $6c, $6c, $65, $6e, $67, $65, $21, $00, $54, $68, $65, $20, $63, $61
    db $73, $74, $6c, $65, $20, $67, $72, $6f, $75, $6e, $64, $73, $21, $00, $50, $69
    db $74, $63, $68, $20, $26, $20, $50, $75, $74, $74, $20, $43, $6f, $75, $72, $73
    db $65, $21, $00, $30, $00, $4d, $61, $72, $69, $6f, $6e, $20, $43, $75, $70, $00
    db $54, $72, $6f, $70, $69, $63, $61, $6c, $20, $43, $75, $70, $00, $44, $65, $73
    db $65, $72, $74, $20, $43, $75, $70, $00, $4e, $6f, $72, $74, $68, $20, $57, $69
    db $6e, $64, $73, $20, $43, $75, $70, $00, $53, $65, $6c, $65, $63, $74, $20, $61
    db $20, $68, $6f, $6c, $65, $2e, $00, $30, $00, $4d, $61, $72, $69, $6f, $6e, $00
    db $50, $61, $6c, $6d, $00, $44, $75, $6e, $65, $00, $4c, $69, $6e, $6b, $73, $00
    db $50, $65, $61, $63, $68, $00, $50, $69, $74, $63, $68, $20, $26, $20, $50, $75
    db $74, $74, $00, $4b, $69, $64, $00, $53, $68, $65, $72, $72, $79, $00, $41, $7a
    db $61, $6c, $65, $61, $00, $4a, $6f, $65, $00, $50, $75, $74, $74, $73, $00, $47
    db $72, $61, $63, $65, $00, $54, $69, $6e, $79, $00, $47, $65, $6e, $65, $20, $59
    db $75, $73, $73, $00, $4d, $61, $72, $69, $6f, $00, $4c, $75, $69, $67, $69, $00
    db $57, $61, $72, $69, $6f, $00, $4c, $69, $6d, $65, $00, $46, $6c, $69, $6e, $74
    db $00, $4c, $69, $6c, $79, $00, $4d, $75, $6e, $61, $6b, $61, $74, $61, $00, $4f
    db $6b, $61, $00, $4b, $69, $64, $00, $53, $68, $65, $72, $72, $79, $00, $41, $7a
    db $61, $6c, $65, $61, $00, $4a, $6f, $65, $00, $50, $75, $74, $74, $73, $00, $47
    db $72, $61, $63, $65, $00, $54, $69, $6e, $79, $00, $47, $65, $6e, $65, $20, $59
    db $2e, $00, $4d, $61, $72, $69, $6f, $00, $4c, $75, $69, $67, $69, $00, $57, $61
    db $72, $69, $6f, $00, $4c, $69, $6d, $65, $00, $46, $6c, $69, $6e, $74, $00, $4c
    db $69, $6c, $79, $00, $4d, $75, $6e, $61, $6b, $61, $74, $61, $00, $4f, $6b, $61
    db $00, $43, $6f, $6e, $74, $69, $6e, $75, $65, $20, $79, $6f, $75, $72, $20, $6c
    db $61, $73, $74, $20, $20, $20, $20, $20, $20, $20, $20, $20, $01, $67, $61, $6d
    db $65, $3f, $00, $59, $6f, $75, $72, $20, $73, $61, $76, $65, $64, $20, $64, $61
    db $74, $61, $01, $77, $69, $6c, $6c, $20, $62, $65, $20, $65, $72, $61, $73, $65
    db $64, $2e, $01, $4f, $4b, $3f, $00, $53, $74, $61, $72, $74, $20, $61, $20, $6e
    db $65, $77, $20, $67, $61, $6d, $65, $2e, $00, $30, $00, $54, $6f, $75, $72, $6e
    db $61, $6d, $65, $6e, $74, $00, $4d, $61, $74, $63, $68, $20, $47, $61, $6d, $65
    db $00, $53, $74, $72, $6f, $6b, $65, $00, $54, $72, $61, $69, $6e, $69, $6e, $67
    db $00, $4d, $69, $6e, $69, $2d, $47, $61, $6d, $65, $73, $00, $50, $72, $61, $63
    db $74, $69, $63, $65, $00, $37, $00, $38, $00, $4d, $61, $72, $69, $6f, $6e, $20
    db $43, $6c, $75, $62, $68, $6f, $75, $73, $65, $00, $30, $00, $45, $6e, $74, $65
    db $72, $20, $61, $20, $43, $6c, $75, $62, $20, $54, $6f, $75, $72, $6e, $61, $6d
    db $65, $6e, $74, $21, $00, $50, $6c, $61, $79, $20, $61, $20, $43, $6c, $75, $62
    db $20, $43, $68, $61, $6d, $70, $21, $00, $54, $72, $79, $20, $61, $20, $70, $72
    db $61, $63, $74, $69, $63, $65, $20, $72, $6f, $75, $6e, $64, $21, $00, $50, $72
    db $61, $63, $74, $69, $63, $65, $20, $61, $6e, $79, $20, $68, $6f, $6c, $65, $21
    db $00, $4d, $69, $6e, $69, $2d, $47, $61, $6d, $65, $73, $00, $50, $72, $61, $63
    db $74, $69, $63, $65, $00, $37, $00, $38, $00, $53, $74, $61, $72, $74, $20, $66
    db $72, $6f, $6d, $20, $74, $68, $65, $20, $63, $6c, $75, $62, $68, $6f, $75, $73
    db $65, $21, $00, $30, $00, $31, $00, $43, $6f, $6d, $70, $65, $74, $65, $20, $66
    db $6f, $72, $20, $68, $6f, $6c, $65, $73, $20, $77, $6f, $6e, $21, $00, $43, $6f
    db $6d, $70, $65, $74, $65, $20, $66, $6f, $72, $20, $74, $6f, $74, $61, $6c, $20
    db $73, $63, $6f, $72, $65, $21, $00, $34, $00, $35, $00, $36, $00, $37, $00, $38
    db $00, $39, $00, $53, $63, $65, $6e, $65, $01, $4d, $61, $70, $01, $50, $61, $6c
    db $65, $74, $74, $65, $01, $46, $6c, $61, $67, $00, $54, $6f, $75, $72, $6e, $61
    db $6d, $65, $6e, $74, $01, $4d, $61, $74, $63, $68, $20, $47, $61, $6d, $65, $01
    db $50, $72, $61, $63, $74, $69, $63, $65, $01, $43, $6c, $75, $62, $68, $6f, $75
    db $73, $65, $01, $56, $53, $01, $53, $74, $61, $72, $74, $20, $4f, $76, $65, $72
    db $00, $46, $6c, $79, $20, $47, $75, $79, $00, $4a, $6f, $65, $00, $4d, $69, $6b
    db $65, $00, $41, $7a, $61, $6c, $65, $61, $00, $50, $65, $6e, $67, $75, $69, $6e
    db $00, $4b, $69, $64, $00, $53, $68, $65, $72, $72, $79, $00, $4d, $61, $72, $6b
    db $00, $4d, $69, $63, $68, $61, $65, $6c, $00, $54, $69, $6d, $00, $43, $68, $75
    db $63, $6b, $79, $61, $00, $54, $6f, $6d, $00, $52, $65, $78, $00, $47, $61, $69
    db $6c, $00, $43, $6f, $6c, $69, $6e, $00, $43, $68, $61, $72, $6c, $65, $73, $00
    db $4b, $65, $6e, $6a, $69, $00, $4a, $65, $6e, $00, $54, $65, $72, $72, $79, $00
    db $53, $6f, $6e, $6e, $79, $00, $50, $69, $67, $6d, $61, $00, $48, $61, $6c, $65
    db $79, $00, $41, $72, $6d, $6f, $6e, $64, $00, $48, $69, $72, $6f, $00, $44, $61
    db $6e, $00, $4a, $69, $6d, $00, $4c, $65, $73, $6c, $69, $65, $00, $41, $7a, $61
    db $6c, $65, $61, $00, $42, $75, $62, $62, $61, $00, $53, $68, $65, $72, $72, $79
    db $00, $42, $75, $7a, $7a, $79, $00, $4b, $69, $64, $00, $43, $68, $61, $72, $6c
    db $69, $65, $00, $4a, $6f, $65, $00, $4c, $61, $72, $72, $79, $00, $57, $65, $6e
    db $64, $79, $20, $4f, $2e, $00, $46, $61, $72

    ld h, c
    ld l, [hl]
    nop
    ld b, [hl]
    ld h, c
    ld l, h
    ld h, e
    ld l, a
    jr nz, jr_018_4ba5

    ld l, $00
    ld d, b
    ld h, l
    ld l, [hl]
    ld l, [hl]
    nop
    ld b, c
    ld l, [hl]
    ld h, h
    ld [hl], d
    ld h, l
    ld [hl], a
    nop
    ld c, h
    ld [hl], l
    ld h, h
    ld [hl], a
    ld l, c
    ld h, a
    nop
    ld c, l
    ld l, c
    ld l, e
    ld h, l
    nop
    ld b, h
    ld h, l
    ld a, b
    nop
    ld b, [hl]
    ld l, a
    ld a, b
    nop
    ld b, a
    ld [hl], d
    ld h, l
    ld h, a
    nop
    ld c, l
    ld h, l
    ld [hl], h
    ld h, c
    ld l, h
    jr nz, jr_018_4bd4

    ld l, $00
    ld b, e
    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e
    nop
    ld c, [hl]
    ld l, c
    ld h, e
    ld l, e
    ld l, a
    nop
    ld b, h
    ld h, c
    db $76
    ld l, c
    ld h, h
    nop
    ld d, e
    ld l, h
    ld l, c
    ld [hl], b
    ld [hl], b
    ld a, c
    nop
    ld d, b
    ld l, c
    ld h, a

jr_018_4ba5:
    ld l, l
    ld h, c
    nop
    ld c, l
    ld h, c
    ld [hl], d
    ld [hl], e
    ld l, b
    ld h, c
    nop
    ld b, e
    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e
    ld [hl], h
    ld l, c
    ld h, c
    ld l, [hl]
    nop
    ld c, l
    ld l, c
    ld h, e
    ld l, b
    ld h, l
    ld l, h
    ld l, h
    ld h, l
    nop
    ld c, e
    ld h, l
    ld l, [hl]
    nop
    ld c, e
    ld l, c
    ld h, h
    nop
    ld b, d
    ld [hl], l
    ld h, d
    ld h, d
    ld h, c
    nop
    ld d, e
    ld l, b
    ld h, l
    ld [hl], d

jr_018_4bd4:
    ld [hl], d
    ld a, c
    nop
    ld d, l
    ld l, e
    ld l, e
    ld l, c
    ld l, e
    ld l, c
    nop
    ld c, d
    ld l, a
    ld h, l
    nop
    ld b, c
    ld a, d
    ld h, c
    ld l, h
    ld h, l
    ld h, c
    nop
    ld c, b
    ld h, l
    ld l, [hl]
    ld [hl], d
    ld a, c
    nop
    ld c, l
    ld [hl], d
    ld l, $20
    ld c, c
    ld l, $00
    ld d, b
    ld h, l
    ld [hl], b
    ld [hl], b
    ld a, c
    nop
    ld b, l
    ld [hl], d
    ld l, c
    ld h, e
    ld l, b
    nop
    ld b, a
    ld l, a
    ld l, a
    ld l, l
    ld h, d
    ld h, c
    nop
    ld c, d
    ld [hl], d
    ld l, $00
    ld c, l
    ld l, c
    ld h, e
    ld l, b
    ld h, l
    ld l, h
    ld l, h
    ld h, l
    nop
    ld b, l
    ld h, h
    nop
    ld b, d
    ld l, c
    ld l, h
    ld l, h
    nop
    ld c, e
    ld h, l
    ld l, c
    ld l, e
    ld l, a
    nop
    ld b, c
    ld l, [hl]
    ld h, h
    ld [hl], d
    ld l, a
    ld [hl], e
    ld [hl], e
    nop
    ld d, e
    ld [hl], b
    ld l, c
    ld l, e
    ld h, l
    nop
    ld c, e
    ld h, c
    ld [hl], h
    ld h, l
    nop
    ld c, l
    ld l, a
    ld [hl], d
    ld [hl], h
    ld l, a
    ld l, [hl]
    nop
    ld c, h
    ld h, c
    ld l, e
    ld l, c
    ld [hl], h
    ld [hl], l
    nop
    ld c, b
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    nop
    ld d, e
    ld l, a
    ld l, [hl]
    ld l, [hl]
    ld a, c
    nop
    ld d, b
    ld l, h
    ld [hl], l
    ld l, l
    nop
    ld b, e
    ld l, b
    ld h, c
    ld [hl], d
    ld l, h
    ld l, c
    ld h, l
    nop
    ld d, b
    ld l, b
    ld l, c
    ld l, h
    nop
    ld c, e
    ld l, a
    ld h, d
    ld h, l
    nop
    ld c, e
    ld l, c
    ld h, h
    nop
    ld e, d
    ld h, l
    ld l, h
    ld h, h
    ld h, c
    nop
    ld d, e
    ld l, b
    ld h, l
    ld [hl], d
    ld [hl], d
    ld a, c
    nop
    ld c, e
    ld l, a
    ld l, a
    ld [hl], b
    ld h, c
    nop
    ld c, d
    ld l, a
    ld h, l
    nop
    ld c, h
    ld l, c
    ld l, [hl]
    ld l, e
    nop
    ld b, c
    ld a, d
    ld h, c
    ld l, h
    ld h, l
    ld h, c
    nop
    ld c, [hl]
    ld h, c
    db $76
    ld l, c
    nop
    ld c, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_4cf4

    ld l, a
    ld [hl], d
    ld h, c
    nop
    ld b, h
    ld h, c
    ld l, l
    ld [hl], b
    ld h, l
    nop
    ld c, c
    ld l, l
    ld [hl], b
    ld h, c
    nop
    ld d, e
    ld h, c
    ld [hl], d
    ld l, c
    ld h, c
    nop
    ld b, d
    ld l, c
    ld l, h
    ld l, h
    nop
    ld b, h
    ld h, c
    ld [hl], d
    ld [hl], l
    ld l, [hl]
    ld l, c
    ld h, c
    nop
    ld d, d
    ld [hl], l
    ld [hl], h
    ld l, a
    nop
    ld d, h
    ld h, c
    ld l, h
    ld l, a
    ld l, [hl]
    nop
    ld d, e
    ld l, b
    ld h, l
    ld l, c
    ld l, e
    nop
    ld d, d
    ld h, c
    ld [hl], l
    ld [hl], d
    ld [hl], l
    nop
    ld b, d
    ld l, a
    ld l, [hl]
    ld l, a
    ld l, a
    ld [hl], d
    ld [hl], l
    nop
    ld d, e
    ld l, e
    ld [hl], l
    ld l, h
    ld l, h
    jr nz, jr_018_4d2d

    ld l, c
    ld h, h
    nop
    ld b, h
    ld h, l
    ld l, e
    ld [hl], l
    nop
    ld b, a
    ld l, a
    ld [hl], d
    ld l, a
    ld l, [hl]
    jr nz, jr_018_4d3c

    ld l, c
    ld h, h
    nop

jr_018_4cf4:
    ld c, l
    ld l, c
    ld h, h
    ld l, a
    nop
    ld c, [hl]
    ld h, c
    ld h, d
    ld l, a
    ld l, a
    ld [hl], d
    ld [hl], l
    nop
    ld d, b
    ld l, c
    ld h, l
    ld [hl], d
    ld [hl], d
    ld h, l
    nop
    ld c, c
    ld l, [hl]
    ld h, a
    ld l, a
    nop
    ld b, a
    ld l, a
    ld l, a
    ld l, l
    ld h, d
    ld h, c
    nop
    ld b, d
    ld l, a
    ld [hl], a
    ld [hl], e
    ld h, l
    ld [hl], d
    nop
    ld b, d
    ld l, a
    ld h, d
    dec l
    ld l, a
    ld l, l
    ld h, d
    nop
    ld b, h
    ld c, e
    nop
    ld b, d
    ld l, a
    ld l, a
    nop
    ld e, c
    ld l, a
    ld [hl], e

jr_018_4d2d:
    ld l, b
    ld l, c
    nop
    ld c, e
    ld l, a
    ld l, a
    ld [hl], b
    ld h, c
    jr nz, jr_018_4d8b

    ld l, $00
    ld d, b
    ld h, l
    ld h, c

jr_018_4d3c:
    ld h, e
    ld l, b
    nop
    ld d, e
    ld l, b
    ld a, c
    jr nz, jr_018_4d8b

    ld [hl], l
    ld a, c
    nop
    ld c, h
    ld [hl], l
    ld l, c
    ld h, a
    ld l, c
    nop
    ld e, d
    ld h, l
    ld l, h
    ld h, h
    ld h, c
    nop
    ld b, d
    ld h, c
    ld h, d
    ld a, c
    jr nz, jr_018_4da6

    ld l, $00
    ld c, h
    ld l, c
    ld l, [hl]
    ld l, e
    nop
    ld c, l
    ld h, e
    ld b, e
    ld l, h
    ld l, a
    ld [hl], l
    ld h, h
    nop
    ld c, l
    ld l, $4d
    ld l, a
    ld l, h
    ld h, l
    nop
    ld d, h
    ld l, a
    ld h, c
    ld h, h
    nop
    ld b, [hl]
    ld l, a
    ld a, b
    nop
    ld c, e
    ld l, a
    ld l, a
    ld [hl], b
    ld h, c
    jr nz, jr_018_4dcf

    ld l, $00
    ld d, l
    ld l, [hl]
    ld h, c
    ld h, a
    ld l, c
    nop
    ld b, e
    ld l, $43
    ld l, b

jr_018_4d8b:
    ld l, a
    ld l, l
    ld [hl], b
    nop
    ld d, e
    ld l, [hl]
    ld l, c
    ld h, [hl]
    ld l, c
    ld [hl], h
    nop
    ld b, h
    ld l, a
    ld [hl], d
    ld l, c
    ld h, l
    nop
    ld b, d
    ld [hl], l
    ld h, d
    nop
    ld d, a
    ld l, c
    ld h, a
    ld h, a
    ld l, h
    ld h, l

jr_018_4da6:
    ld [hl], d
    nop
    ld d, a
    ld l, b
    ld l, a
    ld l, l
    ld [hl], b
    nop
    ld b, d
    ld h, l
    ld h, l
    ld a, d
    ld l, a
    nop
    ld d, d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    nop
    ld b, d
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_018_4e14

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    nop
    ld b, c
    db $76
    ld h, l
    ld [hl], d
    ld h, c
    ld h, a
    ld h, l
    nop
    ld b, d

jr_018_4dcf:
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_018_4e18

    ld [hl], d
    ld l, c
    db $76
    ld h, l
    nop
    ld b, c
    db $76
    ld h, l
    ld [hl], d
    ld h, c
    ld h, a
    ld h, l
    jr nz, jr_018_4e26

    ld [hl], d
    ld l, c
    db $76
    ld h, l
    nop
    ld b, [hl]
    ld h, c
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    jr nz, jr_018_4e3b

    ld h, l
    ld h, l
    ld [hl], b
    ld [hl], e
    nop
    ld b, c
    db $76
    ld h, l
    ld [hl], d
    ld h, c
    ld h, a
    ld h, l
    jr nz, @+$52

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld [hl], e
    nop
    ld d, b
    ld h, c
    ld [hl], d
    jr nz, @+$55

    ld h, c
    db $76
    ld h, l
    ld [hl], e
    nop
    ld d, b
    ld h, c
    ld [hl], d
    jr nz, @+$51

    ld l, [hl]
    ld [hl], e

jr_018_4e14:
    nop
    ld d, e
    ld h, c
    ld l, [hl]

jr_018_4e18:
    ld h, h
    jr nz, jr_018_4e6e

    ld h, c
    db $76
    ld h, l
    ld [hl], e
    nop
    dec h
    nop
    ld e, c
    nop
    add hl, bc
    nop

jr_018_4e26:
    ld l, $00
    ld b, e
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    ld bc, $7552
    ld l, [hl]
    ld bc, $6f54
    ld [hl], h
    ld h, c
    ld l, h
    nop
    ld e, c
    ld l, a
    ld [hl], l

jr_018_4e3b:
    jr nz, jr_018_4ea2

    ld h, c
    ld [hl], d
    ld l, [hl]
    ld h, l
    ld h, h
    ld bc, $2009
    ld b, l
    ld e, b
    ld d, b
    jr nz, jr_018_4e9a

    ld [hl], h
    ld [hl], e
    ld hl, $0003
    ld c, e
    ld l, c
    ld h, h
    ld bc, $6853
    ld h, l
    ld [hl], d
    ld [hl], d
    ld a, c
    ld bc, $7a41
    ld h, c
    ld l, h
    ld h, l
    ld h, c
    ld bc, $6f4a
    ld h, l
    nop
    ld d, b
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld [hl], e
    ld bc, $7247
    ld h, c

jr_018_4e6e:
    ld h, e
    ld h, l
    ld bc, $6954
    ld l, [hl]
    ld a, c
    ld bc, $6547
    ld l, [hl]
    ld h, l
    jr nz, @+$5b

    ld [hl], l
    ld [hl], e
    ld [hl], e
    ld bc, $4d00
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld bc, $754c
    ld l, c
    ld h, a
    ld l, c
    ld bc, $6157
    ld [hl], d
    ld l, c
    ld l, a
    nop
    ld c, b
    ld l, a
    ld l, h
    ld h, l
    jr nz, @+$6b

    ld l, [hl]

jr_018_4e9a:
    jr nz, @+$51

    ld l, [hl]
    ld h, l
    ld bc, $6145
    ld h, a

jr_018_4ea2:
    ld l, h
    ld h, l
    ld bc, $6942
    ld [hl], d
    ld h, h
    ld l, c
    ld h, l
    ld bc, $6150
    ld [hl], d
    ld bc, $6f42
    ld h, a
    ld h, l
    ld a, c
    nop
    ld d, l
    ld [hl], b
    nop

    db $45, $76, $65, $6e, $00, $44, $6f, $77, $6e, $00, $67, $62, $5f, $30, $34, $01
    db $67, $62, $5f, $30, $35, $01, $67, $62, $5f, $30, $33, $01, $67, $62, $5f, $30

    ld [hl], $00
    ld a, c
    ld l, a
    ld l, e
    ld l, a
    jr nc, jr_018_4f12

    ld bc, $7267
    ld l, [hl]
    ld [hl-], a
    ld e, a
    ld [hl], b
    ld [hl], h
    ld bc, $7267
    ld l, [hl]
    inc sp
    ld e, a
    ld [hl], b
    ld [hl], h
    ld bc, $7461
    ld e, a
    jr nc, jr_018_4f2a

    nop
    ld h, c
    ld [hl], h
    ld e, a
    jr nc, @+$34

    ld bc, $7473
    ld e, a
    jr nc, @+$34

    ld bc, $7774
    ld l, c
    ld l, [hl]
    ld l, [hl]
    ld l, d
    ld bc, $756b
    ld l, l
    ld l, a
    nop
    ld l, e
    ld [hl], l

jr_018_4f12:
    ld l, l
    ld l, a
    ld [hl-], a
    ld bc, $6977
    ld l, [hl]
    jr nc, @+$33

    ld bc, $6574
    ld h, a
    ld h, c
    ld l, l
    ld l, c
    ld bc, $7267
    ld l, [hl]
    inc [hl]
    ld e, a
    ld [hl], b
    ld [hl], h

jr_018_4f2a:
    nop
    ld h, a
    ld h, d
    ld e, a
    jr nc, @+$39

    ld bc, $7267
    ld l, [hl]
    ld sp, $705f
    ld [hl], h
    ld bc, $696d
    ld l, [hl]
    ld l, c
    jr nc, jr_018_4f76

    ld bc, $7473
    ld e, a
    jr nc, jr_018_4f76

    nop
    ld h, [hl]
    ld l, c
    ld h, l
    ld l, h
    ld h, h
    ld bc, $7473
    ld e, a
    jr nc, jr_018_4f84

    ld bc, $616d
    ld [hl], h
    ld h, e
    ld l, b
    ld bc, $696d
    ld l, [hl]
    ld l, c
    jr nc, jr_018_4f96

    nop
    ld l, l
    ld l, c
    ld l, [hl]
    ld l, c
    jr nc, jr_018_4f97

    ld bc, $696d
    ld l, [hl]
    ld l, c
    jr nc, @+$33

    ld bc, $696d
    ld l, [hl]
    ld l, c
    jr nc, jr_018_4fa9

    ld bc, $696d

jr_018_4f76:
    inc [hl]
    nop
    ld h, c
    ld [hl], h
    ld e, a
    jr nc, jr_018_4fae

    ld bc, $7267
    ld l, [hl]
    ld l, h
    ld e, a
    scf

jr_018_4f84:
    ld b, l
    ld bc, $6863
    ld [hl], d
    ld l, l
    ld l, e
    ld h, d
    ld l, e
    ld sp, $7301
    ld [hl], h
    ld e, a
    jr nc, jr_018_4fc4

    nop
    ld l, l

jr_018_4f96:
    ld h, c

jr_018_4f97:
    ld [hl], b
    ld sp, $355f
    ld sp, $6101
    ld [hl], h
    ld e, a
    jr nc, jr_018_4fd2

    ld bc, $696d
    ld l, [hl]
    ld l, c
    jr nc, jr_018_4fdc

jr_018_4fa9:
    ld h, d
    nop
    ld c, l
    ld l, a
    ld h, h

jr_018_4fae:
    ld h, l
    jr nz, @+$55

    ld h, l
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    nop
    ld b, h
    ld h, l
    db $76
    ld h, l
    ld l, h
    ld l, a
    ld [hl], b
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    nop
    ld b, [hl]

jr_018_4fc4:
    ld l, c
    ld h, l
    ld l, h
    ld h, h
    nop
    ld c, l
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_018_5014

    ld l, h

jr_018_4fd2:
    ld [hl], l
    ld h, d
    ld l, b
    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    nop
    ld c, h
    ld l, a

jr_018_4fdc:
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld h, l
    nop
    ld b, h
    ld l, c
    ld [hl], d
    ld h, l
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    daa
    ld [hl], e
    jr nz, jr_018_503f

    ld l, a
    ld l, a
    ld l, l
    nop
    ld c, h
    ld l, a
    ld h, e
    ld l, e
    ld h, l
    ld [hl], d
    jr nz, jr_018_504b

    ld l, a
    ld l, a
    ld l, l
    nop
    ld d, h
    ld [hl], d
    ld l, a
    ld [hl], b
    ld l, b
    ld a, c
    jr nz, @+$54

    ld l, a
    ld l, a
    ld l, l
    nop
    ld c, l
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_018_5054

    ld l, h
    ld [hl], l
    ld h, d

jr_018_5014:
    ld bc, $6143
    ld h, h
    ld h, h
    ld l, c
    ld h, l
    jr nz, jr_018_506a

    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    daa
    ld [hl], e
    jr nz, jr_018_5075

    ld h, [hl]
    ld h, [hl]
    ld l, c
    ld h, e
    ld h, l
    nop
    ld d, b
    ld h, c
    ld l, h
    ld l, l
    jr nz, jr_018_5075

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6143
    ld h, h
    ld h, h
    ld l, c
    ld h, l
    jr nz, jr_018_508b

    ld h, c

jr_018_503f:
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    daa
    ld [hl], e
    jr nz, jr_018_5096

    ld h, [hl]
    ld h, [hl]
    ld l, c
    ld h, e

jr_018_504b:
    ld h, l
    nop
    ld b, h
    ld [hl], l
    ld l, [hl]
    ld h, l
    jr nz, jr_018_5096

    ld l, h

jr_018_5054:
    ld [hl], l
    ld h, d
    ld bc, $6143
    ld h, h
    ld h, h
    ld l, c
    ld h, l
    jr nz, jr_018_50ac

    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    daa
    ld [hl], e
    jr nz, @+$51

    ld h, [hl]
    ld h, [hl]

jr_018_506a:
    ld l, c
    ld h, e
    ld h, l
    nop
    ld c, h
    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_018_50b8

jr_018_5075:
    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6143
    ld h, h
    ld h, h
    ld l, c
    ld h, l
    jr nz, jr_018_50ce

    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    daa
    ld [hl], e
    jr nz, jr_018_50d9

    ld h, [hl]

jr_018_508b:
    ld h, [hl]
    ld l, c
    ld h, e
    ld h, l
    nop
    ld c, l
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]

jr_018_5096:
    jr nz, @+$45

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $7244
    ld l, c
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_50f7

    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    nop
    ld c, l
    ld h, c

jr_018_50ac:
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_018_50f5

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $7041

jr_018_50b8:
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    jr nz, jr_018_5110

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_018_511b

    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    nop

jr_018_50ce:
    ld c, l
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_018_5119

    ld l, h
    ld [hl], l
    ld h, d

jr_018_50d9:
    ld bc, $7250
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_018_5134

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_5133

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    nop
    ld d, b
    ld h, c
    ld l, h
    ld l, l

jr_018_50f5:
    jr nz, jr_018_513a

jr_018_50f7:
    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $7244
    ld l, c
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$54

    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    nop
    ld d, b
    ld h, c
    ld l, h
    ld l, l
    jr nz, jr_018_5152

    ld l, h

jr_018_5110:
    ld [hl], l
    ld h, d
    ld bc, $7041
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c

jr_018_5119:
    ld h, e
    ld l, b

jr_018_511b:
    jr nz, jr_018_516d

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_018_5178

    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    nop
    ld d, b
    ld h, c
    ld l, h
    ld l, l
    jr nz, jr_018_5174

    ld l, h
    ld [hl], l

jr_018_5133:
    ld h, d

jr_018_5134:
    ld bc, $7250
    ld h, c
    ld h, e
    ld [hl], h

jr_018_513a:
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_018_518f

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_518e

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    nop
    ld b, h
    ld [hl], l
    ld l, [hl]
    ld h, l
    jr nz, jr_018_5195

jr_018_5152:
    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $7244
    ld l, c
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_51b1

    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    nop
    ld b, h
    ld [hl], l
    ld l, [hl]
    ld h, l
    jr nz, @+$45

    ld l, h
    ld [hl], l
    ld h, d

jr_018_516d:
    ld bc, $7041
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c

jr_018_5174:
    ld h, e
    ld l, b
    jr nz, jr_018_51c8

jr_018_5178:
    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_018_51d3

    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    nop
    ld b, h
    ld [hl], l
    ld l, [hl]
    ld h, l
    jr nz, jr_018_51cf

    ld l, h
    ld [hl], l

jr_018_518e:
    ld h, d

jr_018_518f:
    ld bc, $7250
    ld h, c
    ld h, e
    ld [hl], h

jr_018_5195:
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_018_51ea

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$49

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    nop
    ld c, h
    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_018_51f1

    ld l, h
    ld [hl], l
    ld h, d

jr_018_51b1:
    ld bc, $7244
    ld l, c
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_520d

    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    nop
    ld c, h
    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_018_520a

    ld l, h

jr_018_51c8:
    ld [hl], l
    ld h, d
    ld bc, $7041
    ld [hl], b
    ld [hl], d

jr_018_51cf:
    ld l, a
    ld h, c
    ld h, e
    ld l, b

jr_018_51d3:
    jr nz, jr_018_5225

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_018_5230

    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    nop
    ld c, h
    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_018_522d

jr_018_51ea:
    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $7250
    ld h, c

jr_018_51f1:
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_018_5248

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_5247

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    nop
    ld b, c
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, h

jr_018_520a:
    jr nz, @+$45

    ld h, l

jr_018_520d:
    ld [hl], d
    ld h, l
    ld l, l
    ld l, a
    ld l, [hl]
    ld a, c
    jr nz, jr_018_523d

    ld c, l
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    add hl, hl
    nop
    ld b, c
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_018_5267

    ld h, l

jr_018_5225:
    ld [hl], d
    ld h, l
    ld l, l
    ld l, a
    ld l, [hl]
    ld a, c
    jr nz, jr_018_5255

jr_018_522d:
    ld d, b
    ld h, c
    ld l, h

jr_018_5230:
    ld l, l
    add hl, hl
    nop
    ld b, c
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_018_527d

    ld h, l
    ld [hl], d
    ld h, l

jr_018_523d:
    ld l, l
    ld l, a
    ld l, [hl]
    ld a, c
    jr nz, jr_018_526b

    ld b, h
    ld [hl], l
    ld l, [hl]
    ld h, l

jr_018_5247:
    add hl, hl

jr_018_5248:
    nop
    ld b, c
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_018_5293

    ld h, l
    ld [hl], d
    ld h, l
    ld l, l
    ld l, a

jr_018_5255:
    ld l, [hl]
    ld a, c
    jr nz, jr_018_5281

    ld c, h
    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    add hl, hl
    nop
    ld d, d
    ld l, a
    ld h, c
    ld h, h
    jr nz, jr_018_52da

    ld l, a

jr_018_5267:
    jr nz, jr_018_52b9

    ld h, l
    ld h, c

jr_018_526b:
    ld h, e
    ld l, b
    daa
    ld [hl], e
    jr nz, jr_018_52b4

    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, h
    ld h, l
    nop
    ld d, b
    ld h, l
    ld h, c
    ld h, e
    ld l, b
    daa

jr_018_527d:
    ld [hl], e
    jr nz, jr_018_52c3

    ld h, c

jr_018_5281:
    ld [hl], e
    ld [hl], h
    ld l, h
    ld h, l
    nop
    ld d, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    jr nz, jr_018_52dc

    ld [hl], b
    ld h, l
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a

jr_018_5293:
    nop
    ld d, [hl]
    ld d, e
    jr nz, jr_018_52ea

    ld h, l
    ld [hl], e
    ld [hl], l
    ld l, h
    ld [hl], h
    ld [hl], e
    nop
    ld b, e
    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    jr nz, jr_018_52f7

    ld h, c
    ld [hl], d
    ld h, c
    ld l, l
    ld h, l
    ld [hl], h
    ld h, l
    ld [hl], d
    ld [hl], e
    nop
    ld c, [hl]
    ld l, a
    ld [hl], d

jr_018_52b4:
    ld l, c
    ld l, a
    jr nz, jr_018_530b

    ld [hl], h

jr_018_52b9:
    ld h, c
    ld [hl], h
    ld [hl], l
    ld [hl], e
    ld hl, $4e00
    ld l, a
    ld [hl], d
    ld l, c

jr_018_52c3:
    ld l, a
    jr nz, jr_018_5319

    ld h, c
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    nop
    ld d, e
    ld h, l
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    jr nz, jr_018_5327

    ld h, e
    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    nop

jr_018_52da:
    ld c, l
    ld l, c

jr_018_52dc:
    ld l, [hl]
    ld l, c
    dec l
    ld b, e
    ld l, b
    ld h, c
    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_018_533e

jr_018_52ea:
    ld h, l
    ld [hl], e
    ld [hl], h
    nop
    ld d, h
    ld h, l
    ld [hl], d
    ld l, a
    ld [hl], b
    nop
    ld d, a
    ld l, c
    ld l, [hl]

jr_018_52f7:
    ld h, h
    ld a, c
    jr nz, jr_018_5351

    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld a, c
    ld bc, $7053
    ld h, l
    ld h, e
    ld l, c
    ld h, c
    ld l, h
    jr nz, jr_018_5352

    ld l, a

jr_018_530b:
    ld l, h
    ld h, l
    nop
    ld d, h
    ld l, c
    ld l, [hl]
    ld a, c
    dec l
    ld d, h
    ld l, a
    ld [hl], h
    ld [hl], e
    jr nz, jr_018_5360

jr_018_5319:
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_018_5365

    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    nop
    ld c, l
    ld l, c

jr_018_5327:
    ld l, [hl]
    ld l, c
    dec l
    ld c, l
    ld l, c
    ld l, [hl]
    ld l, c
    jr nz, @+$4e

    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_018_5378

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    nop
    ld d, d
    ld h, c
    db $76

jr_018_533e:
    ld h, l
    ld l, [hl]
    jr nz, jr_018_5399

    ld l, a
    ld l, a
    ld h, h
    ld [hl], e
    jr nz, jr_018_538f

    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_018_5390

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e

jr_018_5351:
    ld h, l

jr_018_5352:
    nop
    ld b, c
    ld l, h
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_018_53a5

    ld h, c
    ld l, l

jr_018_5360:
    ld h, l
    nop
    ld b, c
    ld l, h
    ld [hl], h

jr_018_5365:
    ld h, l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_018_53b4

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_018_53b7

    db $76
    ld h, l
    ld l, [hl]
    ld [hl], h
    nop
    ld b, a

jr_018_5378:
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_018_53c4

    ld [hl], l
    ld [hl], d
    ld [hl], l
    daa
    ld [hl], e
    ld bc, $6950
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, jr_018_53de

    ld [hl], l

jr_018_538f:
    ld [hl], h

jr_018_5390:
    ld [hl], h
    nop
    ld b, a
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_018_53db

    ld l, h

jr_018_5399:
    ld l, c
    ld l, [hl]
    ld l, c
    ld h, e
    jr nz, jr_018_539f

jr_018_539f:
    ld b, e
    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_018_53f2

jr_018_53a5:
    ld h, c
    ld l, e
    ld h, l
    ld [hl], d
    daa
    ld [hl], e
    jr nz, jr_018_53f5

    ld [hl], l
    ld [hl], h
    nop
    ld d, a
    ld l, c
    ld l, [hl]
    ld h, h

jr_018_53b4:
    ld a, c
    jr nz, jr_018_540d

jr_018_53b7:
    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld a, c
    jr nz, @+$4a

    ld [hl], l
    ld [hl], h
    ld [hl], h
    nop
    ld c, l
    ld h, c

jr_018_53c4:
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_018_5410

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_018_5413

    db $76
    ld h, l
    ld l, [hl]
    ld [hl], h
    nop
    ld b, l
    ld l, [hl]
    ld h, h
    jr nz, jr_018_541c

    ld l, c
    ld [hl], d
    ld h, l

jr_018_53db:
    ld h, e
    ld [hl], h
    ld l, a

jr_018_53de:
    ld [hl], d
    daa
    ld [hl], e
    jr nz, jr_018_5435

    ld l, a
    ld l, a
    ld l, l
    nop
    ld b, l
    ld l, [hl]
    ld h, h
    jr nz, jr_018_5438

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld h, l
    nop

jr_018_53f2:
    ld b, l
    ld l, [hl]
    ld h, h

jr_018_53f5:
    jr nz, jr_018_543a

    ld h, c
    ld h, h
    ld h, h
    ld l, c
    ld h, l
    jr nz, jr_018_544b

    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    daa
    ld [hl], e
    jr nz, jr_018_5456

    ld h, [hl]
    ld h, [hl]
    ld l, c
    ld h, e
    ld h, l
    nop

jr_018_540d:
    ld b, l
    ld l, [hl]
    ld h, h

jr_018_5410:
    jr nz, jr_018_5453

    ld [hl], a

jr_018_5413:
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_018_545b

    ld h, l
    ld [hl], d
    ld h, l
    ld l, l

jr_018_541c:
    ld l, a
    ld l, [hl]
    ld a, c
    jr nz, jr_018_5449

    ld c, l
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    add hl, hl
    nop
    ld b, l
    ld l, [hl]
    ld h, h
    jr nz, jr_018_5482

    ld l, c
    ld l, [hl]
    ld a, c
    dec l
    ld d, h
    ld l, a
    ld [hl], h

jr_018_5435:
    ld [hl], e
    jr nz, jr_018_547f

jr_018_5438:
    ld l, a
    ld l, h

jr_018_543a:
    ld h, [hl]
    nop
    ld b, l
    ld l, [hl]
    ld h, h
    jr nz, jr_018_5493

    ld h, c
    db $76
    ld h, l
    ld l, [hl]
    jr nz, jr_018_549e

    ld l, a
    ld l, a

jr_018_5449:
    ld h, h
    ld [hl], e

jr_018_544b:
    nop
    ld b, l
    ld l, [hl]
    ld h, h
    jr nz, jr_018_5492

    ld l, h
    ld [hl], h

jr_018_5453:
    ld h, l
    ld [hl], d
    ld l, [hl]

jr_018_5456:
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_018_54a2

jr_018_545b:
    ld h, c
    ld l, l
    ld h, l
    ld sp, $4500
    ld l, [hl]
    ld h, h
    jr nz, jr_018_54b2

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_018_54b2

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_018_54b5

    db $76
    ld h, l
    ld l, [hl]
    ld [hl], h
    nop
    ld b, l
    ld l, [hl]
    ld h, h
    jr nz, jr_018_54c0

    ld l, c
    ld h, l
    ld l, h
    ld h, h
    nop

jr_018_547f:
    ld b, l
    ld l, [hl]
    ld h, h

jr_018_5482:
    jr nz, jr_018_54c7

    ld l, h
    ld l, a
    ld [hl], l
    ld h, h
    ld [hl], e
    nop
    ld b, l
    ld l, [hl]
    ld h, h
    jr nz, jr_018_54d0

    ld a, d
    ld h, c
    ld l, h

jr_018_5492:
    ld h, l

jr_018_5493:
    ld h, c
    nop
    ld b, l
    ld l, [hl]
    ld h, h
    jr nz, jr_018_54ea

    ld h, l
    ld h, c
    ld h, e
    ld l, b

jr_018_549e:
    daa
    ld [hl], e
    jr nz, @+$45

jr_018_54a2:
    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, h
    ld h, l
    nop
    ld b, l
    ld l, [hl]
    ld h, h
    jr nz, jr_018_54fa

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]

jr_018_54b2:
    jr nz, @+$45

    ld l, h

jr_018_54b5:
    ld [hl], l
    ld h, d
    jr nz, jr_018_5501

    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    nop
    ld b, l
    ld l, [hl]

jr_018_54c0:
    ld h, h
    jr nz, jr_018_5509

    ld l, c
    ld h, l
    ld l, h
    ld h, h

jr_018_54c7:
    nop
    ld b, e
    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_018_553b

    ld h, l
    ld l, l

jr_018_54d0:
    ld h, d
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_018_5549

    ld l, c
    ld h, a
    ld l, [hl]
    ld bc, $6e69
    jr nz, @+$63

    ld [hl], h
    jr nz, jr_018_5555

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_018_5549

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld [hl], h

jr_018_54ea:
    ld h, l
    ld [hl], d
    ld bc, $6e61
    ld h, h
    jr nz, jr_018_5559

    ld l, a
    jr nz, jr_018_5569

    ld l, a
    jr nz, @+$76

    ld l, b
    ld h, l

jr_018_54fa:
    ld [bc], a
    ld b, e
    ld h, c
    ld h, h
    ld h, h
    ld l, c
    ld h, l

jr_018_5501:
    jr nz, jr_018_5550

    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    daa

jr_018_5509:
    ld [hl], e
    ld bc, $666f
    ld h, [hl]
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_018_5587

    ld l, a
    jr nz, jr_018_557d

    ld h, l
    ld [hl], h
    jr nz, jr_018_557b

    ld bc, $7473
    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, jr_018_5596

    ld l, c
    ld l, l
    ld h, l
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$6b

    ld [hl], e
    jr nz, jr_018_55a5

    ld l, b
    ld h, l
    jr nz, jr_018_55ab

    ld l, c
    ld [hl], e
    ld l, c
    ld [hl], h
    ld l, a
    ld [hl], d

jr_018_553b:
    ld [hl], e
    daa
    ld bc, $6f63
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $20
    ld c, [hl]
    ld l, a

jr_018_5549:
    ld l, [hl]
    dec l
    ld l, l
    ld h, l
    ld l, l
    ld h, d
    ld h, l

jr_018_5550:
    ld [hl], d
    ld [hl], e
    ld bc, $6973

jr_018_5555:
    ld h, a
    ld l, [hl]
    jr nz, jr_018_55c2

jr_018_5559:
    ld l, [hl]
    jr nz, jr_018_55c4

    ld h, l
    ld [hl], d
    ld h, l
    ld l, $02
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_018_55a9

    ld h, c
    ld h, h
    ld h, h

jr_018_5569:
    ld l, c
    ld h, l
    jr nz, jr_018_55ba

    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld bc, $6874
    ld h, l
    ld l, [hl]
    jr nz, jr_018_55e0

    ld l, c
    db $76

jr_018_557b:
    ld h, l
    ld [hl], e

jr_018_557d:
    jr nz, jr_018_55f3

    ld l, b
    ld h, l
    ld l, l
    jr nz, jr_018_55e5

    ld bc, $7473

jr_018_5587:
    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, jr_018_5600

    ld l, c
    ld l, l
    ld h, l
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e

jr_018_5596:
    jr nz, @+$65

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    jr nz, @+$6a

    ld h, c
    ld [hl], e
    ld bc, $616d
    ld l, [hl]

jr_018_55a5:
    ld a, c
    jr nz, jr_018_560a

    ld [hl], l

jr_018_55a9:
    ld l, [hl]
    ld l, e

jr_018_55ab:
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_018_5611

    ld l, [hl]
    ld h, h
    ld bc, $6177
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_018_5622

jr_018_55ba:
    ld h, c
    ld a, d
    ld h, c
    ld [hl], d
    ld h, h
    ld [hl], e
    ld l, $02

jr_018_55c2:
    ld b, c
    db $76

jr_018_55c4:
    ld l, a
    ld l, c
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_5640

    ld l, b
    ld h, l
    ld l, l
    ld bc, $6163
    ld l, [hl]
    jr nz, jr_018_5637

    ld h, l
    jr nz, @+$76

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld l, $03
    nop
    ld c, c

jr_018_55e0:
    ld h, [hl]
    jr nz, jr_018_565c

    ld l, a
    ld [hl], l

jr_018_55e5:
    jr nz, jr_018_564b

    ld [hl], l
    ld l, [hl]
    ld l, e
    jr nz, jr_018_5665

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $6162
    ld l, h

jr_018_55f3:
    ld l, h
    inc l
    jr nz, jr_018_5660

    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_018_565d

    jr nz, jr_018_562f

    dec l
    ld [hl], e

jr_018_5600:
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    ld bc, $6570
    ld l, [hl]
    ld h, c

jr_018_560a:
    ld l, h
    ld [hl], h
    ld a, c
    ld l, $20
    ld b, d
    ld [hl], l

jr_018_5611:
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    ld [hl], e
    ld [bc], a
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_018_568f

    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, @+$76

    ld [hl], d

jr_018_5622:
    ld h, c
    ld [hl], b
    ld [hl], e
    ld l, $01
    ld b, l
    ld [hl], e
    ld h, e
    ld h, c
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld h, a

jr_018_562f:
    jr nz, jr_018_5697

    ld [hl], d
    ld l, a
    ld l, l
    ld bc, $6874

jr_018_5637:
    ld h, l
    ld l, l
    jr nz, @+$6b

    ld [hl], e
    jr nz, jr_018_56b2

    ld l, a
    ld [hl], l

jr_018_5640:
    ld h, a
    ld l, b
    ld l, $03
    nop
    ld c, c
    jr nz, jr_018_56bf

    ld h, c
    ld l, [hl]
    ld [hl], h

jr_018_564b:
    jr nz, jr_018_56c1

    ld l, a
    jr nz, @+$6b

    ld l, [hl]
    ld h, e
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    ld bc, $796d
    jr nz, jr_018_56c0

jr_018_565c:
    ld [hl], d

jr_018_565d:
    ld l, c
    db $76
    ld h, l

jr_018_5660:
    jr nz, jr_018_56c4

    ld a, c
    jr nz, jr_018_56d9

jr_018_5665:
    ld [hl], a
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld a, c
    ld bc, $6179
    ld [hl], d
    ld h, h
    ld [hl], e
    ld l, $02
    ld c, c
    ld h, [hl]
    jr nz, jr_018_56bf

    jr nz, jr_018_56dc

    ld l, a
    inc l
    jr nz, jr_018_56c5

    jr nz, jr_018_56e1

    ld h, c
    ld l, [hl]
    jr nz, jr_018_56f7

    ld [hl], e
    ld h, l
    jr nz, @+$63

    ld bc, $6873
    ld l, a
    ld [hl], d
    ld [hl], h
    jr nz, jr_018_56f7

    ld [hl], d

jr_018_568f:
    ld l, a
    ld l, [hl]
    jr nz, jr_018_5702

    ld l, [hl]
    jr nz, jr_018_5703

    ld a, c

jr_018_5697:
    ld bc, $6573
    ld h, e
    ld l, a
    ld l, [hl]
    ld h, h
    jr nz, jr_018_5713

    ld l, b
    ld l, a
    ld [hl], h
    ld hl, $0003
    ld b, c
    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    jr nz, jr_018_5723

    ld l, b
    ld l, a

jr_018_56b2:
    ld [hl], h
    ld [hl], e
    jr nz, jr_018_5717

    ld [hl], d
    ld h, l
    ld bc, $6f6d
    ld [hl], d
    ld h, l
    jr nz, jr_018_5728

jr_018_56bf:
    ld l, l

jr_018_56c0:
    ld [hl], b

jr_018_56c1:
    ld l, a
    ld [hl], d
    ld [hl], h

jr_018_56c4:
    ld h, c

jr_018_56c5:
    ld l, [hl]
    ld [hl], h
    ld bc, $6874
    ld h, c
    ld l, [hl]
    jr nz, jr_018_5742

    ld h, l
    ld h, l
    jr nz, jr_018_5741

    ld [hl], d
    jr nz, jr_018_573e

    ld [hl], d
    ld l, a
    ld l, [hl]
    ld [bc], a

jr_018_56d9:
    ld [hl], e
    ld l, b
    ld l, a

jr_018_56dc:
    ld [hl], h
    ld [hl], e
    ld l, $20
    ld c, c

jr_018_56e1:
    ld h, [hl]
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, @+$6f

    ld l, c
    ld [hl], e
    ld [hl], e
    ld bc, $6874
    ld h, l
    jr nz, jr_018_5758

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_018_5766

jr_018_56f7:
    ld l, [hl]
    jr nz, jr_018_576e

    ld l, b
    ld h, l
    ld bc, $6e32
    ld h, h
    jr nz, jr_018_5775

jr_018_5702:
    ld [hl], h

jr_018_5703:
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    inc l
    jr nz, @+$71

    ld l, [hl]
    ld l, h
    ld a, c
    ld [bc], a
    ld h, c
    jr nz, jr_018_5778

    ld l, a
    ld l, a

jr_018_5713:
    ld h, h
    jr nz, @+$63

    ld [hl], b

jr_018_5717:
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    ld bc, $6163
    ld l, [hl]
    jr nz, jr_018_5796

jr_018_5723:
    ld h, c
    db $76
    ld h, l
    jr nz, jr_018_5798

jr_018_5728:
    ld h, c
    ld [hl], d
    ld l, $03
    nop
    ld d, h
    ld l, a
    jr nz, jr_018_5792

    db $76
    ld l, a
    ld l, c
    ld h, h
    jr nz, jr_018_579f

    ld h, c
    ld a, d
    ld h, c
    ld [hl], d
    ld h, h
    ld [hl], e
    inc l

jr_018_573e:
    ld bc, $6f64

jr_018_5741:
    ld l, [hl]

jr_018_5742:
    daa
    ld [hl], h
    jr nz, jr_018_57bb

    ld [hl], e
    ld h, l
    jr nz, @+$63

    jr nz, jr_018_57b0

    ld [hl], d
    ld l, c
    db $76
    ld h, l
    ld [hl], d
    ld bc, $6e6f
    jr nz, @+$76

    ld l, b
    ld h, l

jr_018_5758:
    jr nz, @+$76

    ld h, l
    ld h, l
    jr nz, jr_018_57d1

    ld l, b
    ld l, a
    ld [hl], h
    ld l, $03
    nop
    ld l, $2e

jr_018_5766:
    ld l, $6c
    ld l, a
    ld [hl], a
    jr nz, jr_018_57e0

    ld [hl], d
    ld h, c

jr_018_576e:
    ld l, d
    ld h, l
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c

jr_018_5775:
    ld bc, $6e69

jr_018_5778:
    jr nz, @+$6a

    ld h, l
    ld h, c
    ld h, h
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, h
    ld [hl], e
    inc l
    ld bc, $6968
    ld h, a
    ld l, b
    jr nz, @+$76

    ld [hl], d
    ld h, c
    ld l, d
    ld h, l
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d

jr_018_5792:
    ld a, c
    ld [bc], a
    ld l, c
    ld l, [hl]

jr_018_5796:
    jr nz, jr_018_580c

jr_018_5798:
    ld h, c
    ld l, c
    ld l, h
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, h

jr_018_579f:
    ld [hl], e
    ld l, $2e
    ld l, $01
    ld l, $2e
    ld l, $6c
    ld l, a
    ld [hl], a
    jr nz, jr_018_5820

    ld [hl], d
    ld h, c
    ld l, d
    ld h, l

jr_018_57b0:
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    ld l, $2e
    ld l, $03
    nop
    ld b, l

jr_018_57bb:
    db $76
    ld h, l
    ld [hl], d
    ld a, c
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_018_5838

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_018_583e

    ld l, a
    ld bc, $756d
    ld h, e
    ld l, b

jr_018_57d1:
    jr nz, jr_018_5835

    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a

jr_018_57e0:
    inc l
    ld bc, $6874
    ld h, l
    ld a, c
    jr nz, jr_018_584b

    ld l, b
    ld l, a
    ld l, e
    ld h, l
    ld hl, $0003
    ld b, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_018_586b

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$63

    jr nz, jr_018_586b

    ld l, a
    ld [hl], h
    ld bc, $666f
    jr nz, jr_018_586d

    ld l, a
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld [hl], e

jr_018_580c:
    jr nz, jr_018_5885

    ld h, c
    ld l, c
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6f74
    jr nz, @+$75

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    ccf
    inc bc
    nop

jr_018_5820:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_5895

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    jr nz, jr_018_5895

    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $6c43
    ld [hl], l

jr_018_5835:
    ld h, d
    jr nz, @+$56

jr_018_5838:
    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l

jr_018_583e:
    ld h, l
    ld l, [hl]
    ld [hl], h
    inc l
    ld bc, $2107
    ld [bc], a
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_58b3

jr_018_584b:
    ld h, c
    db $76
    ld h, l
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_018_58b8

    db $76
    ld h, l
    ld l, [hl]
    ld bc, $6562
    ld h, l
    ld l, [hl]
    jr nz, jr_018_58be

    jr nz, jr_018_58cc

    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    ld bc, $6f6c
    ld l, [hl]
    ld h, a
    ld l, $20

jr_018_586b:
    ld c, c
    ld l, l

jr_018_586d:
    ld [hl], b
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    ld l, c
    db $76
    ld h, l
    ld hl, $0003
    ld d, e
    ld h, c
    ld a, c
    inc l
    jr nz, jr_018_58df

    ld [hl], d
    ld h, l
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$7b

jr_018_5885:
    ld l, a
    ld [hl], l
    inc l
    ld bc, $2c07
    jr nz, jr_018_5901

    ld l, b
    ld h, l
    ld bc, $656e
    ld [hl], a
    jr nz, jr_018_58d8

jr_018_5895:
    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_018_58dd

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ccf
    ld [bc], a
    ld c, c
    ld [hl], h
    jr nz, jr_018_5911

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_018_590b

    ld h, l
    jr nz, jr_018_5913

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld bc, $6f74

jr_018_58b3:
    jr nz, jr_018_5917

    ld h, l
    jr nz, jr_018_592c

jr_018_58b8:
    ld l, b
    ld h, l
    jr nz, jr_018_58ff

    ld l, b
    ld h, c

jr_018_58be:
    ld l, l
    ld [hl], b
    ld hl, $0003
    ld c, l
    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, @+$72

    ld h, l
    ld l, a
    ld [hl], b

jr_018_58cc:
    ld l, h
    ld h, l
    jr nz, jr_018_5937

    ld h, l
    ld [hl], h
    ld bc, $656e
    ld [hl], d
    db $76
    ld l, a

jr_018_58d8:
    ld [hl], l
    ld [hl], e
    jr nz, jr_018_5945

    ld l, [hl]

jr_018_58dd:
    jr nz, jr_018_5953

jr_018_58df:
    ld l, b
    ld h, l
    ld l, c
    ld [hl], d
    ld bc, $6966
    ld [hl], d
    ld [hl], e
    ld [hl], h
    jr nz, jr_018_593f

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
    ld [bc], a
    ld h, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_018_5974

    ld l, a
    ld [hl], l
    jr nz, jr_018_596f

jr_018_58ff:
    ld l, h
    ld h, c

jr_018_5901:
    ld h, e
    ld h, l
    ld h, h
    inc l
    ld bc, $2107
    jr nz, jr_018_595e

    ld l, b

jr_018_590b:
    ld h, c
    ld [hl], h
    ld bc, $6174
    ld l, e

jr_018_5911:
    ld h, l
    ld [hl], e

jr_018_5913:
    jr nz, @+$74

    ld h, l
    ld h, c

jr_018_5917:
    ld l, h
    jr nz, @+$76

    ld h, c
    ld l, h
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld hl, $0003
    ld c, l
    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, jr_018_5998

    ld h, l
    ld l, a
    ld [hl], b
    ld l, h

jr_018_592c:
    ld h, l
    jr nz, jr_018_5992

    ld l, b
    ld l, a
    ld l, e
    ld h, l
    ld bc, $7266
    ld l, a

jr_018_5937:
    ld l, l
    jr nz, jr_018_59ae

    ld l, b
    ld h, l
    jr nz, jr_018_59ae

    ld [hl], d

jr_018_593f:
    ld h, l
    ld [hl], e
    ld [hl], e
    ld [hl], l
    ld [hl], d
    ld h, l

jr_018_5945:
    jr nz, jr_018_59b6

    ld h, [hl]
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_018_59a3

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]

jr_018_5953:
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    inc l
    ld [bc], a
    ld h, d
    ld [hl], l
    ld [hl], h

jr_018_595e:
    jr nz, jr_018_59d9

    ld l, a
    ld [hl], l
    jr nz, jr_018_59db

    ld l, a
    ld l, [hl]
    inc l
    ld bc, $2107
    jr nz, jr_018_59c5

    ld l, a
    ld [hl], l
    daa

jr_018_596f:
    ld [hl], d
    ld h, l
    ld bc, $2061

jr_018_5974:
    ld h, a
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, @+$6f

    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld hl, $0003
    ld d, b
    ld h, c
    ld l, h
    ld l, l
    jr nz, jr_018_59cb

    ld l, h
    ld [hl], l
    ld h, d
    daa
    ld [hl], e
    jr nz, @+$76

    ld [hl], d
    ld h, l
    ld h, l

jr_018_5992:
    ld [hl], e
    ld bc, $616d
    ld l, e
    ld h, l

jr_018_5998:
    jr nz, @+$6b

    ld [hl], h
    jr nz, jr_018_5a11

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_018_5a17

jr_018_59a3:
    ld l, a
    ld bc, $7461
    ld [hl], h
    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_018_5a21

    ld l, b

jr_018_59ae:
    ld h, l
    jr nz, jr_018_5a14

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l

jr_018_59b6:
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$52

    ld h, c
    ld l, h
    ld l, l
    jr nz, jr_018_5a06

    ld l, h
    ld [hl], l

jr_018_59c5:
    ld h, d
    ld bc, $6f54
    ld [hl], l
    ld [hl], d

jr_018_59cb:
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_018_5a3c

    ld [hl], e
    jr nz, jr_018_5a37

    ld bc, $7473

jr_018_59d9:
    ld h, l
    ld [hl], b

jr_018_59db:
    jr nz, jr_018_5a3e

    ld h, d
    ld l, a
    db $76
    ld h, l
    jr nz, jr_018_5a52

    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_018_5a54

    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_018_5a6f

    ld l, a
    ld [hl], l
    ld bc, $7264
    ld l, c
    db $76
    ld h, l
    jr nz, jr_018_5a74

    ld l, b
    ld h, l
    jr nz, @+$64

    ld h, c
    ld l, h

jr_018_5a06:
    ld l, h
    inc l
    jr nz, jr_018_5a7e

    ld l, b
    ld h, l
    ld bc, $6f6d
    ld [hl], d
    ld h, l

jr_018_5a11:
    jr nz, jr_018_5a7f

    ld l, c

jr_018_5a14:
    ld l, e
    ld h, l
    ld l, h

jr_018_5a17:
    ld a, c
    jr nz, jr_018_5a83

    ld [hl], h
    daa
    ld l, h
    ld l, h
    ld [bc], a
    ld h, e
    ld [hl], l

jr_018_5a21:
    ld [hl], d
    db $76
    ld h, l
    ld l, $20
    ld b, h
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_018_5a98

    ld h, c
    ld [hl], e
    ld bc, $6461
    db $76
    ld h, c

jr_018_5a37:
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld h, a
    ld h, l

jr_018_5a3c:
    ld [hl], e
    inc l

jr_018_5a3e:
    jr nz, jr_018_5aa2

    ld [hl], l
    ld [hl], h
    jr nz, jr_018_5ab7

    ld l, a
    ld bc, $6f64
    ld h, l
    ld [hl], e
    jr nz, jr_018_5aaf

    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h

jr_018_5a52:
    ld l, $03

jr_018_5a54:
    nop
    ld b, a
    ld h, l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$71

    ld l, [hl]
    jr nz, jr_018_5ac8

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld bc, $6e69
    jr nz, jr_018_5a9c

    jr nz, jr_018_5adf

    ld [hl], h
    ld [hl], d
    ld l, a

jr_018_5a6f:
    ld l, e
    ld h, l
    ld [hl], e
    jr nz, @+$64

jr_018_5a74:
    ld h, l
    ld l, h
    ld l, a
    ld [hl], a
    ld bc, $6170
    ld [hl], d
    jr nz, jr_018_5ae7

jr_018_5a7e:
    ld [hl], e

jr_018_5a7f:
    jr nz, jr_018_5ae2

    jr nz, jr_018_5af3

jr_018_5a83:
    ld h, c
    ld [hl], d
    jr nz, @+$71

    ld l, [hl]
    ld l, $02
    ld d, a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_018_5af1

    jr nz, jr_018_5b02

    ld h, c
    ld [hl], d
    jr nz, jr_018_5b05

    ld l, [hl]
    inc l

jr_018_5a98:
    ld bc, $6f79
    ld [hl], l

jr_018_5a9c:
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_018_5b14

    ld [hl], l

jr_018_5aa2:
    ld [hl], d
    ld h, l
    jr nz, jr_018_5b1a

    ld l, a
    ld bc, $7661
    ld l, a
    ld l, c
    ld h, h
    jr nz, jr_018_5b10

jr_018_5aaf:
    jr nz, @+$64

    ld l, a
    ld h, a
    ld h, l
    ld a, c
    ld l, $03

jr_018_5ab7:
    nop
    ld c, c
    ld h, [hl]
    jr nz, jr_018_5b35

    ld l, a
    ld [hl], l
    jr nz, jr_018_5b34

    ld [hl], d
    ld a, c
    jr nz, jr_018_5b38

    ld l, a
    jr nz, jr_018_5b2e

    ld h, l

jr_018_5ac8:
    ld [hl], h
    ld bc, $6e6f
    jr nz, jr_018_5b35

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, @+$6b

    ld l, [hl]
    jr nz, jr_018_5b09

    ld bc, $7473
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    ld [hl], e

jr_018_5adf:
    jr nz, jr_018_5b50

    ld l, [hl]

jr_018_5ae2:
    jr nz, jr_018_5b45

    jr nz, jr_018_5b59

    ld l, b

jr_018_5ae7:
    ld l, a
    ld [hl], d
    ld [hl], h
    ld [bc], a
    ld [hl], b
    ld h, c
    ld [hl], d
    jr nz, jr_018_5b25

    inc l

jr_018_5af1:
    jr nz, jr_018_5b6c

jr_018_5af3:
    ld l, a
    ld [hl], l
    jr nz, jr_018_5b5a

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    ld bc, $6e65
    ld h, h
    jr nz, jr_018_5b76

    ld [hl], b

jr_018_5b02:
    jr nz, jr_018_5b6b

    ld h, l

jr_018_5b05:
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]

jr_018_5b09:
    ld h, a
    ld bc, $2061
    ld [hl], a
    ld l, a
    ld [hl], d

jr_018_5b10:
    ld [hl], e
    ld h, l
    jr nz, @+$75

jr_018_5b14:
    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    ld l, $03

jr_018_5b1a:
    nop
    ld b, h
    ld l, c
    ld h, h
    jr nz, jr_018_5b99

    ld l, a
    ld [hl], l
    jr nz, jr_018_5b8f

    ld l, [hl]

jr_018_5b25:
    ld l, a
    ld [hl], a
    jr nz, @+$63

    ld bc, $6166
    ld l, c
    ld [hl], d

jr_018_5b2e:
    ld [hl], a
    ld h, c
    ld a, c
    jr nz, jr_018_5ba7

    ld l, b

jr_018_5b34:
    ld h, c

jr_018_5b35:
    ld [hl], h
    jr nz, jr_018_5bac

jr_018_5b38:
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld [hl], e
    ld bc, $7369
    jr nz, @+$63

    jr nz, jr_018_5ba7

    ld l, a
    ld h, a

jr_018_5b45:
    ld l, h
    ld h, l
    ld h, a
    ccf
    nop
    ld b, c
    ld [hl], h
    ld [hl], h
    ld h, c
    ld h, e
    ld l, e

jr_018_5b50:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_5bb6

    jr nz, jr_018_5bbb

    ld l, a
    ld h, a

jr_018_5b59:
    dec l

jr_018_5b5a:
    ld bc, $656c
    ld h, a
    jr nz, jr_018_5bd2

    ld h, l
    ld [hl], c
    ld [hl], l
    ld l, c
    ld [hl], d
    ld h, l
    ld [hl], e
    ld bc, $6163
    ld [hl], d

jr_018_5b6b:
    ld h, l

jr_018_5b6c:
    ld h, [hl]
    ld [hl], l
    ld l, h
    jr nz, jr_018_5bd2

    ld l, c
    ld l, l
    ld l, $02
    ld c, c

jr_018_5b76:
    ld h, [hl]
    jr nz, jr_018_5bf2

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_018_5bdf

    ld [hl], h
    ld [hl], h
    ld h, c
    ld h, e
    ld l, e
    daa
    ld [hl], e
    ld bc, $6f74
    ld l, a
    jr nz, jr_018_5bed

    ld l, a
    ld l, h
    ld h, h
    inc l

jr_018_5b8f:
    jr nz, jr_018_5c0a

    ld l, a
    ld [hl], l
    jr nz, @+$65

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h

jr_018_5b99:
    ld bc, $616c
    ld l, [hl]
    ld h, h
    jr nz, @+$6b

    ld l, [hl]
    jr nz, jr_018_5c04

    jr nz, jr_018_5c19

    ld [hl], d
    ld h, c

jr_018_5ba7:
    ld [hl], b
    ld hl, $0003
    ld c, c

jr_018_5bac:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_018_5c14

    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld h, h

jr_018_5bb6:
    jr nz, jr_018_5c19

    jr nz, jr_018_5c1e

    ld l, a

jr_018_5bbb:
    ld h, a
    dec l
    ld bc, $656c
    ld h, a
    jr nz, jr_018_5bea

    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_018_5c33

    ld [hl], h
    daa
    ld [hl], e
    ld bc, $6562
    ld l, [hl]
    ld [hl], h

jr_018_5bd2:
    jr nz, jr_018_5c01

    jr nz, jr_018_5c40

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_018_5c47

    ld l, c
    ld l, e
    ld h, l
    ld [bc], a

jr_018_5bdf:
    ld h, c
    jr nz, jr_018_5c46

    ld l, a
    ld h, a
    daa
    ld [hl], e
    jr nz, jr_018_5c54

    ld h, l
    ld h, a

jr_018_5bea:
    ld l, $03
    nop

jr_018_5bed:
    ld b, [hl]
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h

jr_018_5bf2:
    jr nz, @+$76

    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_018_5c42

    jr nz, jr_018_5c6e

    ld h, c
    ld [hl], a
    ld bc, $6f79
    ld [hl], l

jr_018_5c01:
    inc l
    jr nz, jr_018_5c0b

jr_018_5c04:
    inc l
    jr nz, jr_018_5c50

    ld bc, $6e6b

jr_018_5c0a:
    ld h, l

jr_018_5c0b:
    ld [hl], a
    jr nz, jr_018_5c87

    ld l, a
    ld [hl], l
    jr nz, jr_018_5c7a

    ld h, c
    ld h, h

jr_018_5c14:
    jr nz, jr_018_5c7f

    ld [hl], h
    ld l, $02

jr_018_5c19:
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_018_5c92

jr_018_5c1e:
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    daa
    db $76
    ld h, l
    ld bc, $6c70
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    inc l
    jr nz, jr_018_5ca9

    ld l, c

jr_018_5c33:
    ld l, h
    ld l, h
    jr nz, jr_018_5cb0

    ld l, a
    ld [hl], l
    ld bc, $6961
    ld l, l
    jr nz, jr_018_5cb3

    ld l, a

jr_018_5c40:
    jr nz, jr_018_5ca4

jr_018_5c42:
    ld h, l
    jr nz, jr_018_5c88

    ld l, b

jr_018_5c46:
    ld h, c

jr_018_5c47:
    ld l, l
    ld [hl], b
    ccf
    inc bc
    nop
    ld b, [hl]
    ld l, c
    ld [hl], d
    ld [hl], e

jr_018_5c50:
    ld [hl], h
    jr nz, jr_018_5cc7

    ld l, c

jr_018_5c54:
    ld l, l
    ld h, l
    jr nz, @+$4b

    jr nz, @+$75

    ld h, c
    ld [hl], a
    ld bc, $6f79
    ld [hl], l
    inc l
    jr nz, jr_018_5c6a

    inc l
    jr nz, @+$4b

    ld bc, $6e6b
    ld h, l

jr_018_5c6a:
    ld [hl], a
    jr nz, jr_018_5ce6

    ld l, a

jr_018_5c6e:
    ld [hl], l
    daa
    ld h, h
    jr nz, @+$79

    ld l, c
    ld l, [hl]
    ld hl, $4902
    daa
    ld l, l

jr_018_5c7a:
    jr nz, jr_018_5cef

    ld [hl], l
    ld [hl], d
    ld h, l

jr_018_5c7f:
    jr nz, jr_018_5cf5

    ld l, b
    ld h, c
    ld [hl], h
    ld bc, $6f73

jr_018_5c87:
    ld l, l

jr_018_5c88:
    ld h, l
    ld h, h
    ld h, c
    ld a, c
    inc l
    jr nz, jr_018_5d08

    ld l, a
    ld [hl], l
    daa

jr_018_5c92:
    ld l, h
    ld l, h
    ld bc, $6567
    ld [hl], h
    jr nz, jr_018_5d0e

    ld l, a
    jr nz, jr_018_5d0a

    ld h, l
    ld h, l
    ld [hl], h
    jr nz, jr_018_5cef

    ld h, c
    ld [hl], d

jr_018_5ca4:
    ld l, c
    ld l, a
    ld hl, $0003

jr_018_5ca9:
    ld b, a
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_5d24

jr_018_5cb0:
    ld l, a
    jr nz, jr_018_5d23

jr_018_5cb3:
    ld l, h
    ld h, c
    ld a, c
    jr nz, @+$63

    ld bc, $614d
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_018_5d07

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_018_5d3c

    ld l, c
    ld [hl], h

jr_018_5cc7:
    ld l, b
    ld bc, $6874
    ld h, l
    jr nz, jr_018_5d11

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_018_5d16

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ccf
    inc bc
    nop
    ld b, c
    ld h, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]

jr_018_5ce6:
    ld h, a
    jr nz, jr_018_5d4a

    ld bc, $6f72
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_018_5cef:
    inc l
    jr nz, jr_018_5d53

    ld [hl], e
    ld [hl], e
    ld h, l

jr_018_5cf5:
    ld [hl], e
    ld [hl], e
    jr nz, jr_018_5d72

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $6c70
    ld h, c
    ld a, c
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, @+$72

jr_018_5d07:
    ld [hl], d

jr_018_5d08:
    ld h, c
    ld h, e

jr_018_5d0a:
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l

jr_018_5d0e:
    ld [bc], a
    ld l, b
    ld h, c

jr_018_5d11:
    ld [hl], d
    ld h, h
    ld hl, $4120

jr_018_5d16:
    ld l, h
    ld l, h
    jr nz, jr_018_5d81

    ld l, a
    ld l, a
    ld h, h
    ld bc, $6f67
    ld l, h
    ld h, [hl]
    ld h, l

jr_018_5d23:
    ld [hl], d

jr_018_5d24:
    ld [hl], e
    jr nz, jr_018_5d8b

    ld l, a
    jr nz, jr_018_5d9e

    ld l, b
    ld h, c
    ld [hl], h
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_5da5

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    jr nz, @+$63

jr_018_5d3c:
    ld [hl], h
    jr nz, jr_018_5d8f

    ld h, c
    ld l, h
    ld l, l
    ld bc, $6c43
    ld [hl], l
    ld h, d
    inc l
    jr nz, @+$09

jr_018_5d4a:
    ccf
    nop
    ld d, a
    ld l, a
    ld [hl], a
    ld hl, $4d20
    ld l, a

jr_018_5d53:
    ld [hl], e
    ld [hl], h
    jr nz, @+$69

    ld l, a
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld [hl], e
    ld bc, $7262
    ld h, c
    ld h, a
    inc l
    jr nz, jr_018_5dc7

    ld [hl], l
    ld [hl], h
    jr nz, @+$4b

    jr nz, jr_018_5dd2

    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e
    ld bc, $6f79

jr_018_5d72:
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_018_5dd9

    ld h, d
    ld l, a
    db $76
    ld h, l
    jr nz, jr_018_5df2

    ld l, b
    ld h, c
    ld [hl], h

jr_018_5d81:
    ld hl, $0003
    ld c, b
    ld l, l
    ld l, l
    ld l, $2e
    ld l, $49

jr_018_5d8b:
    jr nz, jr_018_5df4

    ld [hl], l
    ld h, l

jr_018_5d8f:
    ld [hl], e
    ld [hl], e
    jr nz, jr_018_5e07

    ld l, b
    ld h, c
    ld [hl], h
    ld bc, $6174
    ld l, e
    ld h, l
    ld [hl], e
    jr nz, jr_018_5e11

jr_018_5d9e:
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_018_5e16

    ld l, e
    ld l, c

jr_018_5da5:
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld c, b
    ld l, l
    ld l, l
    ld l, $2e
    ld l, $49
    jr nz, jr_018_5e1a

    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h
    ld bc, $6174
    ld l, e
    ld h, l
    ld [hl], e
    jr nz, jr_018_5e37

    ld l, a
    ld l, l
    ld h, l

jr_018_5dc7:
    jr nz, jr_018_5e3c

    ld l, e
    ld l, c
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld e, c
    ld l, a

jr_018_5dd2:
    ld [hl], l
    jr nz, jr_018_5e4c

    ld l, a
    ld l, [hl]
    jr nz, jr_018_5e3a

jr_018_5dd9:
    ld [hl], h
    jr nz, jr_018_5e2c

    ld h, c
    ld l, h
    ld l, l
    ld bc, $6c43
    ld [hl], l
    ld h, d
    inc l
    jr nz, jr_018_5dee

    ccf
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$65

jr_018_5dee:
    ld h, c
    ld l, [hl]
    daa
    ld [hl], h

jr_018_5df2:
    jr nz, @+$68

jr_018_5df4:
    ld l, a
    ld l, a
    ld l, h
    jr nz, jr_018_5e66

    ld h, l
    ld hl, $5701
    ld h, l
    daa
    db $76
    ld h, l
    jr nz, jr_018_5e64

    ld l, h
    ld [hl], d
    ld h, l
    ld h, c

jr_018_5e07:
    ld h, h
    ld a, c
    jr nz, jr_018_5e7e

    ld h, l
    ld h, l
    ld l, [hl]
    ld bc, $6874

jr_018_5e11:
    ld h, l
    jr nz, jr_018_5e86

    ld h, c
    ld l, [hl]

jr_018_5e16:
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a

jr_018_5e1a:
    ld [hl], e
    ld hl, $0003
    ld c, l
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    daa
    ld [hl], e
    jr nz, jr_018_5e6b

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b

jr_018_5e2c:
    ld bc, $6977
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_5e97

    ld [hl], h

jr_018_5e37:
    jr nz, jr_018_5e89

    ld h, c

jr_018_5e3a:
    ld l, h
    ld l, l

jr_018_5e3c:
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_018_5eac

    ld [hl], e
    jr nz, jr_018_5ea8

    ld l, c
    ld h, a
    jr nz, jr_018_5eb8

    ld h, l
    ld [hl], a

jr_018_5e4c:
    ld [hl], e
    ld hl, $4902
    jr nz, jr_018_5eb5

    ld h, c
    ld l, [hl]
    jr nz, jr_018_5eca

    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_018_5ed4

    ld l, a
    ld [hl], l
    daa
    db $76
    ld h, l
    ld bc, $6c61
    ld [hl], d

jr_018_5e64:
    ld h, l
    ld h, c

jr_018_5e66:
    ld h, h
    ld a, c
    jr nz, jr_018_5ed1

    ld l, a

jr_018_5e6b:
    ld [hl], h
    jr nz, jr_018_5ede

    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], e
    ld bc, $6f66
    ld [hl], d
    jr nz, jr_018_5ebc

    ld [hl], l
    ld l, [hl]
    ld h, l
    jr nz, jr_018_5ec0

    ld l, h

jr_018_5e7e:
    ld [hl], l
    ld h, d
    ld l, $03
    nop
    ld c, l
    ld h, c
    ld [hl], d

jr_018_5e86:
    ld l, c
    ld l, a
    ld l, [hl]

jr_018_5e89:
    daa
    ld [hl], e
    jr nz, jr_018_5ed0

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld bc, $6977
    ld l, [hl]
    ld l, [hl]
    ld l, c

jr_018_5e97:
    ld l, [hl]
    ld h, a
    jr nz, @+$63

    ld [hl], h
    jr nz, @+$52

    ld h, c
    ld l, h
    ld l, l
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_018_5f11

jr_018_5ea8:
    ld [hl], e
    jr nz, jr_018_5f0d

    ld l, c

jr_018_5eac:
    ld h, a
    jr nz, jr_018_5f1d

    ld h, l
    ld [hl], a
    ld [hl], e
    ld hl, $4902

jr_018_5eb5:
    jr nz, jr_018_5f1a

    ld h, c

jr_018_5eb8:
    ld l, [hl]
    jr nz, jr_018_5f2f

    ld h, l

jr_018_5ebc:
    ld l, h
    ld l, h
    jr nz, @+$7b

jr_018_5ec0:
    ld l, a
    ld [hl], l
    daa
    db $76
    ld h, l
    ld bc, $6c61
    ld [hl], d
    ld h, l

jr_018_5eca:
    ld h, c
    ld h, h
    ld a, c
    jr nz, jr_018_5f36

    ld l, a

jr_018_5ed0:
    ld [hl], h

jr_018_5ed1:
    jr nz, jr_018_5f43

    ld l, h

jr_018_5ed4:
    ld h, c
    ld l, [hl]
    ld [hl], e
    ld bc, $6f66
    ld [hl], d
    jr nz, jr_018_5f21

    ld [hl], l

jr_018_5ede:
    ld l, [hl]
    ld h, l
    jr nz, @+$45

    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop
    ld c, [hl]
    ld l, c
    ld h, e
    ld h, l
    inc l
    jr nz, jr_018_5ef6

    ld hl, $5901
    ld l, a
    ld [hl], l
    jr nz, jr_018_5f66

jr_018_5ef6:
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    jr nz, jr_018_5f66

    ld l, [hl]
    jr nz, jr_018_5f74

    ld l, b
    ld h, l
    ld bc, $6150
    ld l, h
    ld l, l
    jr nz, jr_018_5f5d

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]

jr_018_5f0d:
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]

jr_018_5f11:
    ld [hl], h
    ld hl, $4902
    jr nz, @+$69

    ld [hl], l
    ld h, l
    ld [hl], e

jr_018_5f1a:
    ld [hl], e
    jr nz, jr_018_5f94

jr_018_5f1d:
    ld h, l
    jr nz, jr_018_5f83

    ld h, c

jr_018_5f21:
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $6163
    ld l, h
    ld l, h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_018_5f90

jr_018_5f2f:
    ld bc, $6562
    ld h, a
    ld l, c
    ld l, [hl]
    ld l, [hl]

jr_018_5f36:
    ld h, l
    ld [hl], d
    jr nz, jr_018_5f9b

    ld l, [hl]
    ld a, c
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    ld hl, $0003

jr_018_5f43:
    ld b, a
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    inc l
    jr nz, jr_018_5f52

    ld hl, $5901
    ld l, a
    ld [hl], l
    jr nz, jr_018_5fc9

jr_018_5f52:
    ld l, a
    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_018_5faa

    ld h, c
    ld l, h
    ld l, l

jr_018_5f5d:
    ld bc, $6f54
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l

jr_018_5f66:
    ld l, [hl]
    ld [hl], h
    ld hl, $5702
    ld h, l
    daa
    ld l, h
    ld l, h
    jr nz, jr_018_5fd9

    ld h, c
    db $76
    ld h, l

jr_018_5f74:
    jr nz, jr_018_5fea

    ld l, a
    jr nz, @+$65

    ld h, c
    ld l, h
    ld l, h
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_018_5fc5

    ld l, h

jr_018_5f83:
    ld [hl], l
    ld h, d
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld bc, $7266
    ld l, a
    ld l, l

jr_018_5f90:
    jr nz, jr_018_6000

    ld l, a
    ld [hl], a

jr_018_5f94:
    jr nz, jr_018_6005

    ld l, [hl]
    ld hl, $0003
    ld b, h

jr_018_5f9b:
    ld [hl], l
    ld l, [hl]
    ld h, l
    jr nz, jr_018_5fe3

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, @+$6b

    ld [hl], e
    ld bc, $2061
    ld [hl], h

jr_018_5faa:
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_018_6014

    ld h, l
    ld [hl], e
    ld h, l
    ld [hl], d
    ld [hl], h
    jr nz, jr_018_6018

    ld l, [hl]
    ld h, h
    ld bc, $6f6d
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld l, c
    ld l, [hl]
    jr nz, jr_018_6027

    ld l, a

jr_018_5fc5:
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l

jr_018_5fc9:
    ld l, $03
    nop
    ld c, c
    daa
    db $76
    ld h, l
    jr nz, jr_018_603a

    ld h, l
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_018_6044

    ld l, a

jr_018_5fd9:
    ld h, [hl]
    ld [hl], h
    ld bc, $6163
    ld l, [hl]
    jr nz, jr_018_6049

    ld h, l
    ld l, h

jr_018_5fe3:
    ld [hl], b
    jr nz, jr_018_604f

    ld l, [hl]
    jr nz, @+$76

    ld l, b

jr_018_5fea:
    ld h, l
    ld bc, $7544
    ld l, [hl]
    ld h, l
    jr nz, jr_018_6046

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
    ld d, a
    ld l, b

jr_018_6000:
    ld h, l
    ld l, [hl]
    jr nz, jr_018_607d

    ld l, a

jr_018_6005:
    ld [hl], l
    ld [hl], d
    jr nz, @+$66

    ld [hl], d
    ld l, c
    db $76
    ld h, l
    ld bc, $6e69
    ld h, e
    ld [hl], d
    ld h, l
    ld h, c

jr_018_6014:
    ld [hl], e
    ld h, l
    ld [hl], e
    inc l

jr_018_6018:
    jr nz, jr_018_607d

    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    ld bc, $6163
    ld l, [hl]
    jr nz, jr_018_6088

    ld h, l

jr_018_6027:
    jr nz, jr_018_608a

    jr nz, jr_018_609b

    ld [hl], d
    ld l, a
    ld h, d
    ld l, h
    ld h, l
    ld l, l
    ld l, $02
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, @+$7b

    ld l, a
    ld [hl], l

jr_018_603a:
    jr nz, jr_018_60aa

    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_018_60a2

    ld bc, $6f6c

jr_018_6044:
    ld l, [hl]
    ld h, a

jr_018_6046:
    jr nz, @+$66

    ld [hl], d

jr_018_6049:
    ld l, c
    db $76
    ld h, l
    inc l
    jr nz, @+$75

jr_018_604f:
    ld l, a
    jr nz, jr_018_60bb

    ld [hl], h
    daa
    ld [hl], e
    ld bc, $6e6f
    ld h, l
    jr nz, @+$71

    ld [hl], d
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, @+$71

    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld l, $03
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_60dc

    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_018_60d5

    ld l, c
    ld [hl], d
    ld h, h
    ld l, c
    ld h, l
    ld [hl], e
    ld bc, $6f66
    ld [hl], d

jr_018_607d:
    jr nz, @+$6e

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, @+$75

    ld h, e
    ld l, a
    ld [hl], d

jr_018_6088:
    ld h, l
    ld [hl], e

jr_018_608a:
    ld l, $01
    ld c, c
    ld h, [hl]
    jr nz, jr_018_60f2

    ld l, c
    ld [hl], d
    ld h, h
    ld l, c
    ld h, l
    ld [hl], e
    jr nz, jr_018_610f

    ld h, l
    ld [hl], d
    ld h, l

jr_018_609b:
    jr nz, jr_018_60fe

    ld [bc], a
    ld [hl], e
    ld [hl], l
    ld [hl], d
    ld h, l

jr_018_60a2:
    jr nz, jr_018_6118

    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_6119

jr_018_60aa:
    ld l, [hl]
    jr nz, jr_018_6119

    ld l, a
    ld l, [hl]
    ld h, a
    ld bc, $6170
    ld [hl], d
    jr nz, jr_018_611c

    ld l, c
    db $76
    ld h, l
    ld [hl], e
    inc l

jr_018_60bb:
    jr nz, @+$69

    ld l, a
    ld l, h
    ld h, [hl]
    ld bc, $6f77
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$64

    ld h, l
    jr nz, @+$67

    ld h, c
    ld [hl], e
    ld l, c
    ld h, l
    ld [hl], d
    ld hl, $0003
    ld e, c
    ld l, a

jr_018_60d5:
    ld [hl], l
    daa
    db $76
    ld h, l
    jr nz, jr_018_6142

    ld l, a

jr_018_60dc:
    ld [hl], h
    ld [hl], h
    ld h, c
    jr nz, jr_018_6151

    ld l, h
    ld h, c
    ld l, [hl]
    ld bc, $6877
    ld l, c
    ld h, e
    ld l, b
    jr nz, jr_018_6154

    ld l, a
    ld l, h
    ld h, l
    ld [hl], e
    jr nz, jr_018_616b

jr_018_60f2:
    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    ld bc, $7461
    ld [hl], h
    ld h, c
    ld h, e
    ld l, e

jr_018_60fe:
    jr nz, jr_018_6161

    ld l, [hl]
    ld h, h
    jr nz, jr_018_6168

    ld h, l
    ld h, [hl]
    ld h, l
    ld l, [hl]
    ld h, h
    ld l, $03
    nop
    ld c, c
    ld [hl], h
    daa

jr_018_610f:
    ld [hl], e
    jr nz, jr_018_6186

    ld [hl], d
    ld [hl], l
    ld h, l
    jr nz, jr_018_618e

    ld l, b

jr_018_6118:
    ld h, c

jr_018_6119:
    ld [hl], h
    jr nz, jr_018_6190

jr_018_611c:
    ld l, b
    ld h, l
    ld a, c
    ld bc, $6173
    ld a, c
    jr nz, jr_018_6186

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, @+$71

    db $76
    ld h, l
    ld [hl], d
    dec l
    ld bc, $6f63
    ld l, [hl]
    ld h, [hl]
    ld l, c
    ld h, h
    ld h, l
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, @+$6e

    ld h, l
    ld h, c
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a

jr_018_6142:
    ld [bc], a
    ld [hl], h
    ld l, a
    jr nz, jr_018_61b4

    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    ld [hl], e
    ld l, $01
    ld e, c

jr_018_6151:
    ld l, a
    ld [hl], l
    daa

jr_018_6154:
    db $76
    ld h, l
    jr nz, @+$69

    ld l, a
    ld [hl], h
    ld [hl], h
    ld h, c
    jr nz, @+$6a

    ld h, c
    db $76
    ld h, l

jr_018_6161:
    ld bc, $2061
    ld [hl], a
    ld h, l
    ld l, h
    ld l, h

jr_018_6168:
    dec l
    ld l, h
    ld h, c

jr_018_616b:
    ld l, c
    ld h, h
    jr nz, jr_018_61df

    ld l, h
    ld h, c
    ld l, [hl]
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_018_61ea

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    jr nz, jr_018_61e2

    ld [hl], h
    jr nz, jr_018_61d4

    ld h, c
    ld l, h

jr_018_6186:
    ld l, l
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, @+$76

jr_018_618e:
    ld l, a
    ld l, a

jr_018_6190:
    ccf
    jr nz, jr_018_61d4

    ld l, [hl]
    ld h, h
    jr nz, jr_018_6200

    ld l, [hl]
    ld bc, $6f6e
    jr nz, jr_018_6211

    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_018_6203

    ld [hl], h
    jr nz, jr_018_6206

    ld l, h
    ld l, h
    ld hl, $0003
    ld d, e
    ld l, a
    inc l
    jr nz, jr_018_6228

    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l

jr_018_61b4:
    jr nz, jr_018_6224

    ld l, a
    ld [hl], a
    ld bc, $6562
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_6223

    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld h, h
    jr nz, @+$52

    ld h, c
    ld l, h
    ld l, l
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    inc l
    jr nz, @+$09

    ccf

jr_018_61d4:
    inc bc
    nop
    ld c, a
    ld l, b
    inc l
    jr nz, jr_018_623c

    jr nz, jr_018_6220

    ld l, h
    ld [hl], l

jr_018_61df:
    ld h, d
    jr nz, @+$45

jr_018_61e2:
    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld hl, $5001
    ld l, h

jr_018_61ea:
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_6252

    jr nz, jr_018_6240

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    ld bc, $6147
    ld l, l
    ld h, l
    inc l
    jr nz, jr_018_6260

    ld [hl], d

jr_018_6200:
    ld h, l
    jr nz, jr_018_627c

jr_018_6203:
    ld l, a
    ld [hl], l
    ccf

jr_018_6206:
    inc bc
    nop
    ld b, h
    ld [hl], l
    ld l, [hl]
    ld h, l
    jr nz, jr_018_6251

    ld l, h
    ld [hl], l
    ld h, d

jr_018_6211:
    daa
    ld [hl], e
    jr nz, jr_018_6288

    ld l, a
    ld bc, $6f74
    ld [hl], l
    ld h, a
    ld l, b
    inc l
    jr nz, jr_018_6298

    ld l, a

jr_018_6220:
    ld [hl], l
    daa
    ld l, h

jr_018_6223:
    ld l, h

jr_018_6224:
    jr nz, jr_018_6294

    ld h, l
    ld h, l

jr_018_6228:
    ld h, h
    ld bc, $7270
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_018_62a6

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $03
    nop

jr_018_623c:
    ld c, c
    ld [hl], h
    daa
    ld [hl], e

jr_018_6240:
    jr nz, jr_018_6249

    ld hl, $4901
    jr nz, jr_018_62af

    ld h, l
    ld h, c

jr_018_6249:
    ld [hl], d
    ld h, h
    jr nz, jr_018_62c6

    ld l, a
    ld [hl], l
    jr nz, jr_018_62c1

jr_018_6251:
    ld l, h

jr_018_6252:
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    ld bc, $7461
    jr nz, jr_018_629f

    ld [hl], l
    ld l, [hl]
    ld h, l
    jr nz, jr_018_62a3

jr_018_6260:
    ld l, h
    ld [hl], l
    ld h, d
    ld hl, $4202
    ld h, l
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_62d3

    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_018_62d6

    ld l, [hl]
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld bc, $6f74
    jr nz, @+$72

    ld l, h

jr_018_627c:
    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_018_62ea

    ld [hl], e
    jr nz, jr_018_62f6

    ld h, l
    ld h, c
    ld l, h
    ld l, h

jr_018_6288:
    ld a, c
    ld bc, $6d61
    ld h, c
    ld a, d
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $0003

jr_018_6294:
    ld c, c
    ld [hl], h
    daa
    ld [hl], e

jr_018_6298:
    jr nz, jr_018_62a1

    ld hl, $4901
    jr nz, jr_018_6307

jr_018_629f:
    ld h, l
    ld h, c

jr_018_62a1:
    ld [hl], d
    ld h, h

jr_018_62a3:
    jr nz, @+$7b

    ld l, a

jr_018_62a6:
    ld [hl], l
    jr nz, jr_018_6320

    ld l, a
    ld l, [hl]
    ld bc, $6874
    ld h, l

jr_018_62af:
    jr nz, @+$46

    ld [hl], l
    ld l, [hl]
    ld h, l
    jr nz, @+$56

    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, l
    ld a, c
    ld hl, $4902
    daa
    ld l, l

jr_018_62c1:
    jr nz, jr_018_6337

    ld l, a
    ld [hl], h
    ld h, c

jr_018_62c6:
    ld l, h
    ld l, h
    ld a, c
    ld bc, $6873
    ld l, a
    ld h, e
    ld l, e
    ld h, l
    ld h, h
    jr nz, jr_018_6347

jr_018_62d3:
    ld l, b
    ld h, c
    ld [hl], h

jr_018_62d6:
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld bc, $6f63
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_018_6359

    ld l, c
    ld l, [hl]
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l

jr_018_62ea:
    jr nz, jr_018_635c

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    jr nz, jr_018_6354

    ld [hl], h
    jr nz, jr_018_633a

jr_018_62f6:
    ld [hl], l
    ld l, [hl]
    ld h, l
    ld bc, $6c43
    ld [hl], l
    ld h, d
    ccf
    jr nz, jr_018_6355

    ld l, a
    ld l, a
    jr nz, jr_018_6368

    ld l, a
    ld l, a

jr_018_6307:
    ld l, h
    inc l
    ld bc, $2107
    ld [bc], a
    ld b, c
    ld l, [hl]
    ld h, h
    jr nz, jr_018_6386

    ld l, a
    jr nz, jr_018_6389

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    inc l
    jr nz, jr_018_6365

    ld bc, $6874
    ld l, a

jr_018_6320:
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_018_63a2

    ld l, a
    ld [hl], l
    jr nz, jr_018_638e

    ld [hl], e
    ld bc, $2061
    ld [hl], d
    ld l, a
    ld l, a
    ld l, e
    ld l, c
    ld h, l

jr_018_6337:
    ld hl, $0003

jr_018_633a:
    ld d, e
    ld l, a
    jr nz, jr_018_63b7

    ld l, a
    ld [hl], l
    daa
    db $76
    ld h, l
    jr nz, jr_018_63bc

    ld l, a
    ld l, [hl]

jr_018_6347:
    jr nz, jr_018_63bd

    ld l, b
    ld h, l
    ld bc, $7544
    ld l, [hl]
    ld h, l
    jr nz, jr_018_63a6

    ld l, a
    ld [hl], l

jr_018_6354:
    ld [hl], d

jr_018_6355:
    ld l, [hl]
    ld h, l
    ld a, c
    inc l

jr_018_6359:
    jr nz, jr_018_63cf

    ld l, a

jr_018_635c:
    ld l, a
    ccf
    ld bc, $2049
    ld h, e
    ld h, c
    ld l, [hl]
    daa

jr_018_6365:
    ld [hl], h
    jr nz, jr_018_63ca

jr_018_6368:
    ld h, l
    ld l, h
    ld l, c
    ld h, l
    db $76
    ld h, l
    ld [bc], a
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_018_63de

    ld [hl], d
    ld l, a
    ld l, l
    ld bc, $614d
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, @+$45

    ld l, h
    ld [hl], l

jr_018_6386:
    ld h, d
    jr nz, jr_018_6400

jr_018_6389:
    ld l, a
    ld l, [hl]
    jr nz, @+$76

    ld l, b

jr_018_638e:
    ld h, l
    ld bc, $7544
    ld l, [hl]
    ld h, l
    jr nz, jr_018_63ea

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

jr_018_63a2:
    ld c, h
    ld l, c
    ld l, [hl]
    ld l, e

jr_018_63a6:
    ld [hl], e
    jr nz, jr_018_63ec

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_018_6417

    ld [hl], e
    jr nz, jr_018_6412

    ld bc, $6573
    ld h, c
    dec l
    ld [hl], e

jr_018_63b7:
    ld l, c
    ld h, h
    ld h, l
    jr nz, jr_018_641f

jr_018_63bc:
    ld l, a

jr_018_63bd:
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $02
    ld c, a
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_018_643c

    ld l, b
    ld h, l

jr_018_63ca:
    jr nz, jr_018_6432

    ld h, c
    ld l, c
    ld [hl], d

jr_018_63cf:
    ld [hl], a
    ld h, c
    ld a, c
    ld bc, $7469
    daa
    ld [hl], e
    jr nz, jr_018_643a

    ld l, h
    ld l, h
    jr nz, @+$6a

    ld h, l

jr_018_63de:
    ld h, c
    ld [hl], h
    ld l, b
    ld l, $01
    ld c, l
    ld h, c
    ld l, [hl]
    inc l
    jr nz, jr_018_6452

    ld [hl], h

jr_018_63ea:
    daa
    ld [hl], e

jr_018_63ec:
    jr nz, @+$76

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld hl, $0003
    ld b, a
    ld l, a
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_018_6475

    ld l, b
    ld l, a

jr_018_6400:
    jr nz, @+$76

    ld h, c
    ld l, e
    ld h, l
    ld bc, $6461
    db $76
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld h, a
    ld h, l
    jr nz, jr_018_6480

    ld h, [hl]

jr_018_6412:
    jr nz, jr_018_6460

    ld l, c
    ld l, [hl]
    ld l, e

jr_018_6417:
    ld [hl], e
    daa
    ld bc, $7774
    ld l, a
    jr nz, jr_018_6485

jr_018_641f:
    ld h, c
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    jr nz, jr_018_649b

    ld a, c
    ld [hl], b
    ld h, l
    ld [hl], e
    ld [bc], a
    ld h, c
    ld l, h
    ld [hl], a
    ld h, c
    ld a, c
    ld [hl], e

jr_018_6432:
    jr nz, @+$79

    ld l, c
    ld l, [hl]
    ld l, $20
    ld b, d
    ld h, c

jr_018_643a:
    ld l, h
    ld l, h

jr_018_643c:
    ld [hl], e
    ld bc, $6572
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_018_64b8

    ld [hl], l
    ld l, [hl]
    jr nz, @+$71

    ld l, [hl]
    jr nz, jr_018_64c1

    ld l, b
    ld h, l
    ld bc, $646f

jr_018_6452:
    ld h, h
    dec l
    ld h, e
    ld l, a
    ld l, h
    ld l, a
    ld [hl], d
    ld h, l
    ld h, h
    jr nz, jr_018_64c4

    ld [hl], d
    ld h, c
    ld [hl], e

jr_018_6460:
    ld [hl], e
    ld hl, $0003
    ld c, a
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_018_64e3

    ld l, a
    ld [hl], l
    jr nz, @+$69

    ld h, l
    ld [hl], h
    jr nz, jr_018_64d4

    ld l, a
    ld [hl], h
    ld l, b

jr_018_6475:
    ld bc, $6964
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_018_64e1

jr_018_6480:
    ld l, [hl]
    ld h, h
    ld bc, $6964

jr_018_6485:
    ld [hl], d
    ld h, l
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_018_64f2

    ld l, a
    ld [hl], a
    ld l, [hl]
    inc l
    ld [bc], a
    ld h, a
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_018_64fb

    ld h, l
    ld h, e

jr_018_649b:
    ld l, a
    ld l, l
    ld h, l
    ld [hl], e
    jr nz, @+$63

    ld bc, $6874
    ld l, c
    ld l, [hl]
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_6513

    ld h, c
    ld l, l
    ld h, l
    ld l, $03
    nop
    ld c, b
    ld h, l
    ld h, c
    ld [hl], h
    ld l, b
    inc l

jr_018_64b8:
    jr nz, jr_018_652a

    ld l, a
    ld [hl], h
    jr nz, jr_018_6520

    ld [hl], l
    ld l, [hl]
    ld l, e

jr_018_64c1:
    ld h, l
    ld [hl], d
    ld [hl], e

jr_018_64c4:
    ld bc, $6e61
    ld h, h
    jr nz, @+$75

    ld h, l
    ld [hl], d
    ld l, c
    ld l, a
    ld [hl], l
    ld [hl], e
    jr nz, jr_018_6544

    ld [hl], l
    ld l, [hl]

jr_018_64d4:
    ld bc, $616d
    ld l, e
    ld h, l
    jr nz, jr_018_6527

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, @+$45

jr_018_64e1:
    ld l, h
    ld [hl], l

jr_018_64e3:
    ld h, d
    ld [bc], a
    ld [hl], h
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld l, $20
    ld d, h
    ld l, a
    jr nz, @+$6f

    ld h, c
    ld l, e

jr_018_64f2:
    ld h, l
    jr nz, @+$72

    ld h, c
    ld [hl], d
    inc l
    ld bc, $6f79

jr_018_64fb:
    ld [hl], l
    jr nz, @+$6a

    ld h, c
    db $76
    ld h, l
    jr nz, @+$76

    ld l, a
    jr nz, jr_018_6576

    ld l, h
    ld h, c
    ld l, [hl]
    ld bc, $6877
    ld l, c
    ld h, e
    ld l, b
    jr nz, jr_018_6579

    ld l, a
    ld l, h

jr_018_6513:
    ld h, l
    ld [hl], e
    jr nz, jr_018_6590

    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    ld [bc], a
    ld h, c
    ld [hl], h
    ld [hl], h

jr_018_6520:
    ld h, c
    ld h, e
    ld l, e
    jr nz, @+$63

    ld l, [hl]
    ld h, h

jr_018_6527:
    jr nz, jr_018_65a0

    ld l, b

jr_018_652a:
    ld l, c
    ld h, e
    ld l, b
    ld bc, $6f79
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, jr_018_65aa

    ld [hl], d
    ld a, c
    jr nz, jr_018_65ae

    ld l, a
    ld bc, $6173
    db $76
    ld h, l
    ld l, $03
    nop
    ld d, a

jr_018_6544:
    ld l, b
    ld l, c
    ld h, e
    ld l, b
    jr nz, @+$6a

    ld l, a
    ld l, h
    ld h, l
    ld [hl], e
    jr nz, jr_018_65c9

    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    ld bc, $7461
    ld [hl], h
    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_018_65c2

    ld h, l
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld bc, $6e6f
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_018_65e4

    ld l, c
    ld l, [hl]
    ld h, h
    ld l, $02
    ld b, l
    db $76
    ld h, l
    ld l, [hl]

jr_018_6576:
    jr nz, jr_018_65e7

    ld l, [hl]

jr_018_6579:
    jr nz, jr_018_65eb

    ld h, c
    ld [hl], d
    jr nz, jr_018_65e5

    ld l, c
    db $76
    ld h, l
    ld [hl], e
    inc l
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_018_65f7

    ld h, c
    ld a, c
    jr nz, jr_018_65fc

    ld h, l
    ld h, l

jr_018_6590:
    ld h, h
    jr nz, jr_018_6607

    ld l, a
    ld bc, $7563
    ld [hl], h
    jr nz, jr_018_6611

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, @+$63

    ld l, [hl]

jr_018_65a0:
    jr nz, jr_018_660b

    ld [hl], d
    ld l, a
    ld l, [hl]
    ld l, $03
    nop
    ld c, c
    ld [hl], h

jr_018_65aa:
    daa
    ld [hl], e
    jr nz, jr_018_6621

jr_018_65ae:
    ld h, c
    ld l, c
    ld h, h
    jr nz, jr_018_662c

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_018_6627

    ld [hl], a
    ld l, [hl]
    ld bc, $6c70
    ld h, c
    ld a, c
    jr nz, @+$6b

    ld [hl], e

jr_018_65c2:
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_018_6633

    ld h, l

jr_018_65c9:
    ld a, c
    ld bc, $6f74
    jr nz, jr_018_6630

    jr nz, jr_018_6645

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_018_663a

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $03
    nop
    ld d, e
    ld l, a
    jr nz, jr_018_665c

    ld l, a

jr_018_65e4:
    ld [hl], l

jr_018_65e5:
    jr nz, jr_018_6657

jr_018_65e7:
    ld l, h
    ld h, c
    ld h, e
    ld h, l

jr_018_65eb:
    ld h, h
    jr nz, jr_018_664f

    ld [hl], h
    ld bc, $7544
    ld l, [hl]
    ld h, l
    jr nz, jr_018_6639

    ld l, h

jr_018_65f7:
    ld [hl], l
    ld h, d
    inc l
    jr nz, jr_018_6670

jr_018_65fc:
    ld l, a
    ld l, a
    ccf
    ld bc, $6f53
    ld l, l
    ld h, l
    jr nz, @+$67

    ld h, [hl]

jr_018_6607:
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld [hl], h

jr_018_660b:
    inc l
    jr nz, jr_018_6673

    ld l, b
    ccf
    inc bc

jr_018_6611:
    nop
    ld d, e
    ld l, a
    inc l
    jr nz, jr_018_6690

    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_018_6662

    ld [hl], l
    ld l, [hl]
    ld h, l

jr_018_6621:
    jr nz, jr_018_6666

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b

jr_018_6627:
    inc l
    ld bc, $7568
    ld l, b

jr_018_662c:
    inc l
    jr nz, jr_018_6636

    ccf

jr_018_6630:
    ld bc, $6f59

jr_018_6633:
    ld [hl], l
    daa
    ld l, h

jr_018_6636:
    ld l, h
    jr nz, jr_018_66ad

jr_018_6639:
    ld h, c

jr_018_663a:
    ld l, e
    ld h, l
    jr nz, jr_018_668a

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    inc l
    jr nz, jr_018_66b9

jr_018_6645:
    ld l, a
    ld l, a
    ld l, $02
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l

jr_018_664f:
    jr nz, jr_018_66bf

    ld l, a
    ld [hl], h
    jr nz, jr_018_66bb

    ld h, c
    ld [hl], d

jr_018_6657:
    jr nz, jr_018_66bf

    ld [hl], d
    ld l, a
    ld l, l

jr_018_665c:
    ld bc, $6874
    ld h, l
    jr nz, jr_018_66d5

jr_018_6662:
    ld l, a
    dec l
    ld h, e
    ld h, c

jr_018_6666:
    ld l, h
    ld l, h
    ld h, l
    ld h, h
    ld bc, $7247
    ld h, c
    ld l, [hl]
    ld h, h

jr_018_6670:
    jr nz, jr_018_66b5

    ld l, b

jr_018_6673:
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
    ld l, $03
    nop
    ld b, c
    jr nz, jr_018_66c6

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_018_66cb

    ld l, b
    ld h, c

jr_018_668a:
    ld l, l
    ld [hl], b
    ccf
    ld bc, $6c50

jr_018_6690:
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_66f8

    jr nz, jr_018_66e6

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    ld bc, $6147
    ld l, l
    ld h, l
    inc l
    jr nz, jr_018_6706

    ld [hl], d
    ld h, l
    jr nz, jr_018_6722

    ld l, a
    ld [hl], l
    ccf
    inc bc

jr_018_66ad:
    nop
    ld b, l
    db $76
    ld h, l
    ld [hl], d
    ld a, c
    ld l, a
    ld l, [hl]

jr_018_66b5:
    ld h, l
    jr nz, @+$79

    ld l, b

jr_018_66b9:
    ld l, a
    daa

jr_018_66bb:
    ld [hl], e
    ld bc, $6c70

jr_018_66bf:
    ld h, c
    ld a, c
    ld h, l
    ld h, h
    jr nz, jr_018_6711

    ld l, c

jr_018_66c6:
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, @+$45

jr_018_66cb:
    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6173
    ld a, c
    ld [hl], e
    jr nz, jr_018_673e

jr_018_66d5:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$76

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld hl, $5702
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_018_675f

jr_018_66e6:
    ld l, a
    ld [hl], l
    jr nz, jr_018_675d

    ld h, l
    ld h, l
    jr nz, jr_018_6757

    ld [hl], h
    ld [hl], e
    ld bc, $6168
    ld [hl], d
    ld h, h
    jr nz, jr_018_675d

    ld h, c

jr_018_66f8:
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    ld [hl], e
    jr nz, jr_018_6761

    ld l, [hl]
    ld h, h
    ld bc, $6874
    ld h, c

jr_018_6706:
    ld [hl], h
    jr nz, jr_018_6771

    ld h, l
    ld h, c
    ld [hl], h
    ld l, b
    ld l, $2e
    ld l, $4f

jr_018_6711:
    ld l, b
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$72

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    jr nz, jr_018_6782

    ld [hl], h

jr_018_6722:
    jr nz, jr_018_6770

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    ld bc, $6c43
    ld [hl], l
    ld h, d
    ccf
    jr nz, jr_018_6784

    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_018_679e

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld bc, $2107

jr_018_673e:
    ld [bc], a
    ld c, c
    ld h, [hl]
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, @+$6d

    ld h, l
    ld h, l
    ld [hl], b
    jr nz, @+$6b

    ld [hl], h
    jr nz, jr_018_67c4

    ld [hl], b
    inc l
    ld bc, $6f79
    ld [hl], l
    daa
    ld l, h

jr_018_6757:
    ld l, h
    jr nz, jr_018_67ce

    ld h, c
    ld l, e
    ld h, l

jr_018_675d:
    jr nz, @+$76

jr_018_675f:
    ld l, b
    ld h, l

jr_018_6761:
    ld bc, $7247
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_018_67ac

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]

jr_018_6770:
    ld [hl], e

jr_018_6771:
    ld l, b
    ld l, c
    ld [hl], b
    ld hl, $0003
    ld c, c
    jr nz, jr_018_67e2

    ld h, l
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_018_67f9

    ld l, a
    ld [hl], l

jr_018_6782:
    jr nz, jr_018_67f4

jr_018_6784:
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld h, h
    ld bc, $7461
    jr nz, jr_018_67da

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_018_67d7

    ld l, h
    ld [hl], l
    ld h, d
    ld l, $02
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_018_67e5

jr_018_679e:
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
    ld [hl], e

jr_018_67ac:
    ld l, b
    ld l, c
    ld [hl], b
    daa
    ld [hl], e
    jr nz, @+$6b

    ld l, [hl]
    ld bc, $6572
    ld h, c
    ld h, e
    ld l, b
    inc l
    jr nz, jr_018_67c4

    ld hl, $0003
    ld d, a
    ld h, c
    ld [hl], e
    ld l, [hl]

jr_018_67c4:
    daa
    ld [hl], h
    jr nz, jr_018_6814

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, @+$45

jr_018_67ce:
    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6f74
    ld [hl], l
    ld h, a
    ld l, b

jr_018_67d7:
    ccf
    jr nz, jr_018_682e

jr_018_67da:
    ld l, b
    ld h, l
    jr nz, @+$74

    ld [hl], l
    ld l, [hl]
    ld [bc], a
    ld [hl], h

jr_018_67e2:
    ld l, b
    ld h, l
    ld [hl], d

jr_018_67e5:
    ld h, l
    jr nz, jr_018_685a

    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_018_685c

    ld h, l
    ld [hl], e
    ld [hl], e
    ld h, l
    ld [hl], e

jr_018_67f4:
    ld bc, $6977
    ld [hl], h
    ld l, b

jr_018_67f9:
    jr nz, jr_018_6874

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_018_6873

    ld h, l
    ld l, [hl]
    ld [hl], e
    ld h, l
    jr nz, @+$71

    ld h, [hl]
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

jr_018_6814:
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_018_688c

    ld h, c
    ld a, c
    jr nz, jr_018_6891

    ld l, b
    ld h, l
    jr nz, @+$4e

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    ld bc, $6f54
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l

jr_018_682e:
    ld l, [hl]
    ld [hl], h
    jr nz, @+$76

    ld [hl], d
    ld l, c
    ld h, l
    ld [hl], e
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_018_68ad

    ld h, c
    ld [hl], h
    ld l, c
    ld h, l
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, $02
    ld c, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_018_68bf

    ld h, c
    db $76
    ld h, l
    jr nz, jr_018_68c1

    ld h, c
    ld [hl], d
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    ld bc, $6177

jr_018_685a:
    ld l, c
    ld [hl], h

jr_018_685c:
    jr nz, jr_018_68c4

    ld l, a
    ld [hl], d
    jr nz, jr_018_68c3

    jr nz, jr_018_68c7

    ld l, b
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld bc, $6f74
    jr nz, jr_018_68de

    ld [hl], d
    ld h, l
    ld [hl], e
    ld h, l
    ld l, [hl]

jr_018_6873:
    ld [hl], h

jr_018_6874:
    jr nz, jr_018_68df

    ld [hl], h
    ld [hl], e
    ld h, l
    ld l, h
    ld h, [hl]
    ld l, $03
    nop
    ld d, h
    ld l, a
    jr nz, jr_018_68f9

    ld l, c
    ld l, [hl]
    jr nz, @+$63

    ld [hl], h
    jr nz, jr_018_68d5

    ld l, c
    ld l, [hl]
    ld l, e

jr_018_688c:
    ld [hl], e
    inc l
    ld bc, $6f79

jr_018_6891:
    ld [hl], l
    jr nz, @+$70

    ld h, l
    ld h, l
    ld h, h
    jr nz, @+$64

    ld l, a
    ld [hl], h
    ld l, b
    jr nz, jr_018_6901

    ld l, b
    ld l, c
    ld [hl], b
    ld bc, $6e61
    ld h, h
    jr nz, jr_018_6919

    ld l, a
    ld l, h
    ld l, h
    jr nz, jr_018_6920

    ld h, l

jr_018_68ad:
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
    ld b, l
    db $76
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_018_6922

jr_018_68bf:
    ld l, b
    ld h, c

jr_018_68c1:
    ld l, [hl]
    ld h, e

jr_018_68c3:
    ld h, l

jr_018_68c4:
    ld bc, $7262

jr_018_68c7:
    ld l, c
    ld l, [hl]
    ld h, a
    ld [hl], e
    jr nz, jr_018_693f

    ld l, c
    ld [hl], e
    ld l, e
    ld l, $2e
    ld l, $01
    ld [hl], h

jr_018_68d5:
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_018_6928

    ld l, c
    ld l, [hl]

jr_018_68de:
    ld l, e

jr_018_68df:
    ld [hl], e
    jr nz, @+$45

    ld l, h
    ld [hl], l
    ld h, d
    ld hl, $0003
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_018_6961

    ld h, c
    ld a, c
    jr nz, jr_018_6969

    ld l, b
    ld h, c
    ld [hl], h
    ld h, l
    db $76
    ld h, l
    ld [hl], d

jr_018_68f9:
    ld bc, $7263
    ld h, l
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], e

jr_018_6901:
    jr nz, jr_018_6977

    ld l, b
    ld h, l
    jr nz, jr_018_697e

    ld l, c
    ld l, [hl]
    ld h, h
    inc l
    ld bc, $7263
    ld h, l
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_018_6961

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e

jr_018_6919:
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    ld a, c

jr_018_6920:
    jr nz, jr_018_6995

jr_018_6922:
    ld h, c
    ld a, c
    jr nz, jr_018_6999

    ld l, a
    ld l, l

jr_018_6928:
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6962
    ld h, a
    jr nz, jr_018_699c

    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld [hl], e
    jr nz, jr_018_69b3

    ld l, b
    ld h, l
    ld l, [hl]

jr_018_693f:
    ld bc, $6f79
    ld [hl], l
    jr nz, @+$6f

    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_018_6991

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_018_6993

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, $02
    ld c, $07
    jr nz, @+$79

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_018_69c2

    ld h, l

jr_018_6961:
    ld bc, $6874
    ld h, l
    jr nz, jr_018_69d6

    ld l, [hl]
    ld h, l

jr_018_6969:
    jr nz, jr_018_69df

    ld l, a
    jr nz, jr_018_69cf

    ld [hl], e
    ld l, e
    ld l, $03
    nop
    ld d, e
    ld l, a
    jr nz, jr_018_69f0

jr_018_6977:
    ld l, a
    ld [hl], l
    jr nz, jr_018_69eb

    ld l, h
    ld h, c
    ld h, e

jr_018_697e:
    ld h, l
    ld h, h
    jr nz, jr_018_69e3

    ld [hl], h
    ld bc, $694c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_018_69ce

    ld l, h
    ld [hl], l
    ld h, d
    inc l
    jr nz, jr_018_6a05

jr_018_6991:
    ld l, a
    ld l, a

jr_018_6993:
    ld l, $01

jr_018_6995:
    ld d, e
    ld l, a
    ld l, l
    ld h, l

jr_018_6999:
    jr nz, jr_018_6a00

    ld h, [hl]

jr_018_699c:
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld [hl], h
    inc l
    jr nz, jr_018_6a08

    ld l, b
    ccf
    inc bc
    nop
    ld b, h
    ld d, l
    ld c, l
    ld c, l
    ld e, c
    nop
    ld d, a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_018_6a14

jr_018_69b3:
    jr nz, jr_018_69f8

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_018_69fd

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ccf
    ld bc, $6c50

jr_018_69c2:
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_6a2a

    jr nz, jr_018_6a18

    ld h, c
    ld [hl], h
    ld h, e

jr_018_69ce:
    ld l, b

jr_018_69cf:
    ld bc, $6147
    ld l, l
    ld h, l
    jr nz, jr_018_6a37

jr_018_69d6:
    ld [hl], d
    ld h, l
    jr nz, jr_018_6a53

    ld l, a
    ld [hl], l
    ccf
    inc bc
    nop

jr_018_69df:
    ld c, c
    ld [hl], e
    ld l, [hl]
    daa

jr_018_69e3:
    ld [hl], h
    jr nz, jr_018_6a5a

    ld l, b
    ld h, l
    jr nz, jr_018_6a52

    ld h, l

jr_018_69eb:
    ld h, c
    ld [hl], h
    ld l, b
    jr nz, jr_018_6a59

jr_018_69f0:
    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, jr_018_6a43

    ld l, c

jr_018_69f8:
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, @+$74

jr_018_69fd:
    ld l, a
    ld [hl], l
    ld h, a

jr_018_6a00:
    ld l, b
    ld bc, $2061
    ld [hl], d

jr_018_6a05:
    ld h, l
    ld h, c
    ld l, h

jr_018_6a08:
    jr nz, jr_018_6a7a

    ld h, c
    ld l, c
    ld l, [hl]
    ccf
    ld [bc], a
    ld c, [hl]
    ld l, a
    jr nz, jr_018_6a80

    ld h, c

jr_018_6a14:
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d

jr_018_6a18:
    jr nz, jr_018_6a82

    ld l, a
    ld [hl], a
    jr nz, jr_018_6a91

    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld h, a
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_018_6a8a

    ld [hl], d

jr_018_6a2a:
    ld h, l
    inc l
    jr nz, jr_018_6aa7

    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, jr_018_6aa3

    ld h, l
    ld h, l

jr_018_6a37:
    ld h, h
    ld bc, $2061
    scf
    ld c, c
    jr nz, jr_018_6ab3

    ld l, a
    jr nz, @+$69

    ld h, l

jr_018_6a43:
    ld [hl], h
    jr nz, jr_018_6ab5

    ld [hl], l
    ld [hl], h
    ld l, $03
    nop
    ld c, b
    ld h, l
    ld a, c
    ld hl, $4920
    ld [hl], e

jr_018_6a52:
    ld l, [hl]

jr_018_6a53:
    daa
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, c

jr_018_6a59:
    ld [hl], h

jr_018_6a5a:
    ld bc, $7247
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_018_6aa5

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    inc l
    ld bc, $3f07
    ld [bc], a
    ld d, a
    ld h, c
    ld a, c
    jr nz, @+$76

    ld l, a
    jr nz, jr_018_6ada

    ld l, a
    jr nz, jr_018_6adf

    ld l, [hl]
    ld bc, $6874

jr_018_6a7a:
    ld h, c
    ld [hl], h
    jr nz, jr_018_6aca

    ld l, c
    ld l, [hl]

jr_018_6a80:
    ld l, e
    ld [hl], e

jr_018_6a82:
    jr nz, jr_018_6ac7

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6f54

jr_018_6a8a:
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]

jr_018_6a91:
    ld [hl], h
    ld hl, $0003
    ld c, b
    ld h, l
    ld a, c
    inc l
    jr nz, jr_018_6b0f

    ld l, b
    ld h, l
    ld a, c
    jr nz, @+$75

    ld h, c
    ld l, c
    ld h, h

jr_018_6aa3:
    jr nz, jr_018_6b1e

jr_018_6aa5:
    ld l, a
    ld [hl], l

jr_018_6aa7:
    ld bc, $6f77
    ld l, [hl]
    jr nz, jr_018_6b21

    ld l, b
    ld h, l
    jr nz, jr_018_6afd

    ld l, c
    ld l, [hl]

jr_018_6ab3:
    ld l, e
    ld [hl], e

jr_018_6ab5:
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_018_6b10

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

jr_018_6ac7:
    ld d, a
    ld l, a
    ld [hl], a

jr_018_6aca:
    ld hl, $4920
    jr nz, jr_018_6b43

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_018_6b49

    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e

jr_018_6ada:
    ld bc, $696c
    ld l, e
    ld h, l

jr_018_6adf:
    inc l
    jr nz, jr_018_6b55

    ld l, a
    jr nz, jr_018_6b48

    ld l, a
    ld l, a
    ld l, h
    ld hl, $0003
    ld b, [hl]
    ld l, c
    ld l, [hl]
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    inc l
    jr nz, jr_018_6b42

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $6c43

jr_018_6afd:
    ld [hl], l
    ld h, d
    daa
    ld [hl], e
    jr nz, jr_018_6b73

    ld [hl], d
    ld l, a
    ld h, h
    ld [hl], l
    ld h, e
    ld h, l
    ld h, h
    jr nz, jr_018_6b6d

    ld bc, $7247

jr_018_6b0f:
    ld h, c

jr_018_6b10:
    ld l, [hl]
    ld h, h
    jr nz, jr_018_6b57

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld hl, $0003

jr_018_6b1e:
    ld b, h
    ld l, c
    ld h, h

jr_018_6b21:
    jr nz, jr_018_6b9c

    ld l, a
    ld [hl], l
    jr nz, @+$74

    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, @+$64

    ld h, l
    ld h, c
    ld [hl], h
    ld bc, $7247
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_018_6b7c

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    jr nz, jr_018_6b4d

    rlca
    ccf
    nop

jr_018_6b42:
    ld b, c

jr_018_6b43:
    ld l, h
    ld l, h
    jr nz, jr_018_6bae

    ld l, a

jr_018_6b48:
    ld l, h

jr_018_6b49:
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld [hl], e

jr_018_6b4d:
    jr nz, @+$79

    ld h, l
    ld [hl], d
    ld h, l
    ld bc, $6873

jr_018_6b55:
    ld l, a
    ld l, a

jr_018_6b57:
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_6bc3

    ld l, a
    ld [hl], d
    jr nz, jr_018_6b6f

    rlca
    ld l, $02
    ld c, [hl]
    ld l, a
    ld [hl], a
    inc l
    jr nz, jr_018_6bb3

    jr nz, jr_018_6bd3

    ld [hl], l

jr_018_6b6d:
    ld h, l
    ld [hl], e

jr_018_6b6f:
    ld [hl], e
    jr nz, jr_018_6be9

    ld h, l

jr_018_6b73:
    daa
    ld l, h
    ld l, h
    ld bc, $6562
    jr nz, jr_018_6bdc

    ld h, [hl]

jr_018_6b7c:
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_018_6bfa

    ld l, a
    ld [hl], l
    inc l
    ld bc, $2107
    inc bc
    nop
    ld b, e
    daa
    ld l, l
    ld l, a
    ld l, [hl]
    inc l
    jr nz, jr_018_6c02

    ld [hl], l
    ld l, c
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $6f6d
    ld h, h

jr_018_6b9c:
    ld h, l
    ld [hl], e
    ld [hl], h
    ld a, c
    jr nz, jr_018_6c03

    ld h, e
    ld [hl], h
    ld hl, $0003
    ld d, e
    ld l, a
    jr nz, jr_018_6c24

    ld l, a
    ld [hl], l
    daa

jr_018_6bae:
    ld [hl], d
    ld h, l
    jr nz, jr_018_6c26

    ld l, b

jr_018_6bb3:
    ld h, l
    jr nz, jr_018_6c25

    ld l, [hl]
    ld h, l
    ld bc, $6877
    ld l, a
    jr nz, jr_018_6c20

    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_018_6c37

jr_018_6bc3:
    ld l, b
    ld h, l
    jr nz, jr_018_6c13

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    ld hl, $5702
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_018_6c37

jr_018_6bd3:
    ld l, a
    jr nz, jr_018_6c4f

    ld l, a
    ld [hl], l
    jr nz, @+$75

    ld h, c
    ld a, c

jr_018_6bdc:
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_018_6c56

    ld h, l
    ld h, c
    ld h, e
    ld l, b
    jr nz, @+$6f

    ld h, l

jr_018_6be9:
    jr nz, jr_018_6c53

    ld l, a
    ld [hl], a
    ld bc, $6f74
    jr nz, jr_018_6c53

    ld [hl], h
    ld [hl], h
    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_018_6c62

    ld [hl], h

jr_018_6bfa:
    ccf
    inc bc
    nop
    ld b, c
    ld [hl], b
    ld [hl], b
    ld h, c
    ld [hl], d

jr_018_6c02:
    ld h, l

jr_018_6c03:
    ld l, [hl]
    ld [hl], h
    ld l, h
    ld a, c
    jr nz, jr_018_6c6a

    jr nz, @+$6e

    ld l, a
    ld [hl], h
    ld bc, $666f
    jr nz, jr_018_6c59

    ld [hl], d

jr_018_6c13:
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_018_6c5b

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld [hl], e
    ld bc, $6168

jr_018_6c20:
    db $76
    ld h, l
    jr nz, jr_018_6c94

jr_018_6c24:
    ld l, h

jr_018_6c25:
    ld h, c

jr_018_6c26:
    ld a, c
    ld h, l
    ld h, h
    jr nz, jr_018_6c78

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, $02
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_018_6ca4

    ld l, a

jr_018_6c37:
    ld l, [hl]
    ld h, l
    jr nz, jr_018_6ca3

    ld h, c
    db $76
    ld h, l
    ld bc, $6562
    ld h, l
    ld l, [hl]
    jr nz, jr_018_6ca6

    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_018_6cbe

    ld l, a
    ld bc, $6562
    ld h, c

jr_018_6c4f:
    ld [hl], h
    jr nz, jr_018_6cba

    ld l, c

jr_018_6c53:
    ld l, l
    ld l, $03

jr_018_6c56:
    nop
    ld d, h
    ld l, b

jr_018_6c59:
    ld h, l
    ld a, c

jr_018_6c5b:
    jr nz, jr_018_6cd0

    ld h, c
    ld a, c
    jr nz, @+$52

    ld h, l

jr_018_6c62:
    ld h, c
    ld h, e
    ld l, b
    daa
    ld [hl], e
    ld bc, $6143

jr_018_6c6a:
    ld [hl], e
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_018_6cd9

    ld [hl], e
    jr nz, @+$79

    ld h, c
    ld a, c
    ld bc, $7075

jr_018_6c78:
    jr nz, jr_018_6ce3

    ld l, [hl]
    jr nz, jr_018_6cf1

    ld l, b
    ld h, l
    jr nz, jr_018_6ce4

    ld l, h
    ld l, a
    ld [hl], l
    ld h, h
    ld [hl], e
    ld l, $2e
    ld l, $03
    nop
    ld c, c
    jr nz, jr_018_6cf6

    ld h, l
    ld h, c
    ld [hl], d
    jr nz, jr_018_6cfc

    ld l, [hl]

jr_018_6c94:
    db $76
    ld l, c
    ld [hl], h
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld bc, $6f74
    jr nz, jr_018_6cf2

    ld h, l

jr_018_6ca3:
    ld h, c

jr_018_6ca4:
    ld h, e
    ld l, b

jr_018_6ca6:
    daa
    ld [hl], e
    jr nz, jr_018_6ced

    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, h
    ld h, l
    ld bc, $6f63
    ld l, l
    ld h, l
    jr nz, @+$77

    ld l, [hl]
    ld h, l
    ld a, b
    ld [hl], b

jr_018_6cba:
    ld h, l
    ld h, e
    ld [hl], h
    ld h, l

jr_018_6cbe:
    ld h, h
    ld l, h
    ld a, c
    ld l, $02
    ld c, c
    jr nz, jr_018_6d2e

    ld h, l
    ld h, c
    ld [hl], d
    jr nz, jr_018_6cd9

    rlca
    jr nz, jr_018_6d35

    ld l, a
    ld [hl], h

jr_018_6cd0:
    ld bc, $6e6f
    ld h, l
    jr nz, jr_018_6d3d

    ld l, a
    ld l, c
    ld l, [hl]

jr_018_6cd9:
    ld h, a
    jr nz, jr_018_6d42

    ld [hl], d
    ld l, a
    ld l, l
    ld bc, $614d
    ld [hl], d

jr_018_6ce3:
    ld l, c

jr_018_6ce4:
    ld l, a
    ld l, [hl]
    jr nz, @+$76

    ld l, a
    jr nz, jr_018_6d37

    ld l, c
    ld l, [hl]

jr_018_6ced:
    ld l, e
    ld [hl], e
    ld l, $03

jr_018_6cf1:
    nop

jr_018_6cf2:
    ld e, c
    ld l, a
    ld [hl], l
    daa

jr_018_6cf6:
    db $76
    ld h, l
    jr nz, jr_018_6d5d

    ld l, a
    ld l, l

jr_018_6cfc:
    ld h, l
    jr nz, jr_018_6d60

    jr nz, jr_018_6d6d

    ld l, a
    ld l, [hl]
    ld h, a
    ld bc, $6177
    ld a, c
    inc l
    jr nz, jr_018_6d12

    ld l, $02
    ld b, a
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h

jr_018_6d12:
    jr nz, jr_018_6d57

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $7369
    jr nz, jr_018_6d94

    ld l, b
    ld h, l
    jr nz, jr_018_6d98

    ld l, a
    ld [hl], b
    ld hl, $0003
    ld c, c
    jr nz, jr_018_6d93

    ld [hl], l
    ld h, l

jr_018_6d2e:
    ld [hl], e
    ld [hl], e
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    daa

jr_018_6d35:
    ld l, h
    ld l, h

jr_018_6d37:
    jr nz, jr_018_6d9b

    ld h, l
    ld bc, $6f67

jr_018_6d3d:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$76

jr_018_6d42:
    ld l, a
    jr nz, jr_018_6d95

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
    inc l
    jr nz, @+$09

    ld l, $02

jr_018_6d57:
    ld c, c
    ld [hl], h
    daa
    ld h, h
    jr nz, jr_018_6dbf

jr_018_6d5d:
    ld h, l
    jr nz, jr_018_6dd3

jr_018_6d60:
    ld l, a
    jr nz, jr_018_6dc6

    ld l, a
    ld l, a
    ld l, h
    ld bc, $6f74
    jr nz, jr_018_6ddb

    ld l, h
    ld h, c

jr_018_6d6d:
    ld a, c
    jr nz, jr_018_6dd1

    ld [hl], h
    ld bc, $6550
    ld h, c
    ld h, e
    ld l, b
    daa
    ld [hl], e
    jr nz, jr_018_6dbe

    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, h
    ld h, l
    ld l, $2e
    ld l, $03
    nop
    ld b, [hl]
    ld l, c
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    ld h, l
    ld h, h
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    ld l, c

jr_018_6d93:
    ld l, [hl]

jr_018_6d94:
    ld h, a

jr_018_6d95:
    ld bc, $6f74

jr_018_6d98:
    ld h, h
    ld h, c
    ld a, c

jr_018_6d9b:
    inc l
    jr nz, jr_018_6da5

    ccf
    nop
    ld c, a
    ld l, b
    inc l
    jr nz, jr_018_6e0c

jr_018_6da5:
    ld l, c
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, @+$76

    ld l, c
    ld [hl], d
    ld h, l
    ld h, h
    jr nz, @+$64

    ld l, a
    ld h, h
    ld a, c
    ld bc, $2061
    ld [hl], d

jr_018_6dbe:
    ld h, l

jr_018_6dbf:
    ld [hl], e
    ld [hl], h
    jr nz, jr_018_6e32

    ld [hl], l
    ld [hl], h
    ld [hl], e

jr_018_6dc6:
    ld l, c
    ld h, h
    ld h, l
    ccf
    ld [bc], a
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_018_6e32

jr_018_6dd1:
    ld l, h
    ld [hl], a

jr_018_6dd3:
    ld h, c
    ld a, c
    ld [hl], e
    jr nz, jr_018_6e44

    ld l, c
    ld h, [hl]
    ld [hl], h

jr_018_6ddb:
    ld [hl], e
    ld bc, $6874
    ld h, l
    jr nz, jr_018_6e55

    ld [hl], b
    ld l, c
    ld [hl], d
    ld l, c
    ld [hl], h
    ld [hl], e
    ld hl, $5720
    ld h, l
    ld l, h
    ld l, h
    inc l
    ld bc, $6174
    ld l, e
    ld h, l
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, @+$76

    ld l, c
    ld l, l
    ld h, l
    ld hl, $0003
    ld c, a
    ld l, b
    inc l
    jr nz, jr_018_6e78

    ld h, l
    ld h, [hl]
    ld [hl], d
    ld h, l
    ld [hl], e
    ld l, b

jr_018_6e0c:
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, h
    ld h, [hl]
    jr nz, jr_018_6e7c

    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_018_6e94

    ld l, a
    ld l, l
    ld h, l
    ld bc, $6f6d
    ld [hl], d
    ld h, l
    jr nz, jr_018_6e9f

    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a

jr_018_6e32:
    ccf
    ld [bc], a
    ld c, b
    ld h, l
    ld a, c
    ld hl, $5420
    ld [hl], d
    ld a, c
    jr nz, jr_018_6eb1

    ld [hl], h
    ld l, a
    ld [hl], b
    ld [hl], b
    ld l, c
    ld l, [hl]

jr_018_6e44:
    ld h, a
    ld bc, $7962
    jr nz, jr_018_6eb9

    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_018_6eb3

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l

jr_018_6e55:
    ld [hl], e
    ld bc, $6e69
    jr nz, jr_018_6ecf

    ld l, b
    ld h, l
    jr nz, jr_018_6ecf

    ld [hl], d
    ld l, a
    ld h, e
    ld h, l
    ld [hl], e
    ld [hl], e
    ld hl, $0003
    ld c, b
    ld h, l
    ld a, c
    inc l
    jr nz, jr_018_6e75

    ld hl, $4701
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a

jr_018_6e75:
    jr nz, @+$71

    ld [hl], l

jr_018_6e78:
    ld [hl], h
    ld [hl], e
    ld l, c
    ld h, h

jr_018_6e7c:
    ld h, l
    ccf
    nop
    ld b, e
    ld l, b
    ld h, l
    ld h, e
    ld l, e
    jr nz, jr_018_6ef5

    ld [hl], l
    ld [hl], h
    jr nz, jr_018_6ef9

    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld bc, $6f63
    ld [hl], l
    ld [hl], d
    ld [hl], e

jr_018_6e94:
    ld h, l
    ld [hl], e
    inc l
    jr nz, @+$76

    ld l, a
    ld l, a
    ld l, $20
    ld c, c
    ld [hl], h

jr_018_6e9f:
    daa
    ld l, h
    ld l, h
    ld bc, $6d69
    ld [hl], b
    ld [hl], d
    ld l, a
    db $76
    ld h, l
    jr nz, jr_018_6f25

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_018_6f18

jr_018_6eb1:
    ld h, c
    ld l, l

jr_018_6eb3:
    ld h, l
    ld hl, $0003
    ld c, a
    ld l, [hl]

jr_018_6eb9:
    ld h, e
    ld h, l
    jr nz, jr_018_6f26

    ld l, [hl]
    jr nz, jr_018_6f21

    jr nz, @+$79

    ld l, b
    ld l, c
    ld l, h
    ld h, l
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_018_6f3f

    ld l, b
    ld l, a
    ld [hl], l

jr_018_6ecf:
    ld l, h
    ld h, h
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    ld bc, $746f
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_018_6f41

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld [hl], e
    inc l
    jr nz, @+$76

    ld l, a
    ld l, a
    ld l, $03
    nop
    ld c, b
    ld h, l
    ld a, c
    inc l
    jr nz, jr_018_6ef9

    ld hl, $4701

jr_018_6ef5:
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a

jr_018_6ef9:
    jr nz, @+$71

    ld [hl], l
    ld [hl], h
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    ccf
    nop
    ld b, e
    ld l, b
    ld h, l
    ld h, e
    ld l, e
    jr nz, jr_018_6f79

    ld [hl], l
    ld [hl], h
    jr nz, jr_018_6f7d

    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld bc, $6f63
    ld [hl], l
    ld [hl], d
    ld [hl], e

jr_018_6f18:
    ld h, l
    ld [hl], e
    inc l
    jr nz, jr_018_6f91

    ld l, a
    ld l, a
    ld l, $20

jr_018_6f21:
    ld c, c
    ld [hl], h
    daa
    ld l, h

jr_018_6f25:
    ld l, h

jr_018_6f26:
    ld bc, $6d69
    ld [hl], b
    ld [hl], d
    ld l, a
    db $76
    ld h, l
    jr nz, jr_018_6fa9

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_018_6f9c

    ld h, c
    ld l, l
    ld h, l
    ld hl, $0003
    ld c, a
    ld l, [hl]
    ld h, e
    ld h, l

jr_018_6f3f:
    jr nz, jr_018_6faa

jr_018_6f41:
    ld l, [hl]
    jr nz, @+$63

    jr nz, jr_018_6fbd

    ld l, b
    ld l, c
    ld l, h
    ld h, l
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_018_6fc3

    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_018_6fc7

    ld l, h
    ld h, c
    ld a, c
    ld bc, $746f
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, @+$65

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld [hl], e
    inc l
    jr nz, jr_018_6fdf

    ld l, a
    ld l, a
    ld l, $03
    nop
    ld c, b
    ld h, l
    ld a, c
    inc l
    jr nz, jr_018_6f7d

    ld hl, $4701

jr_018_6f79:
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a

jr_018_6f7d:
    jr nz, jr_018_6fee

    ld [hl], l
    ld [hl], h
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    ccf
    nop
    ld b, a
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_7002

    ld l, a
    jr nz, @+$65

jr_018_6f91:
    ld l, b
    ld h, l
    ld h, e
    ld l, e
    jr nz, jr_018_7006

    ld [hl], l
    ld [hl], h
    ld bc, $694c

jr_018_6f9c:
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_018_6fe4

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_018_7008

    ld h, l
    ld h, [hl]
    ld l, a

jr_018_6fa9:
    ld [hl], d

jr_018_6faa:
    ld h, l
    ld bc, $6874
    ld h, l
    jr nz, jr_018_7005

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
    inc bc
    nop

jr_018_6fbd:
    ld c, c
    jr nz, jr_018_7023

    ld h, c
    ld l, [hl]
    daa

jr_018_6fc3:
    ld [hl], h
    jr nz, @+$79

    ld h, c

jr_018_6fc7:
    ld l, c
    ld [hl], h
    jr nz, jr_018_703f

    ld l, a
    ld bc, $6573
    ld h, l
    jr nz, jr_018_704b

    ld l, a
    ld [hl], l
    jr nz, jr_018_7038

    ld h, l
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    ld bc, $7247
    ld h, c

jr_018_6fdf:
    ld l, [hl]
    ld h, h
    jr nz, jr_018_7026

    ld l, b

jr_018_6fe4:
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld hl, $0003
    ld c, b

jr_018_6fee:
    ld h, l
    ld a, c
    inc l
    jr nz, jr_018_6ffa

    ld hl, $4701
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a

jr_018_6ffa:
    jr nz, jr_018_706b

    ld [hl], l
    ld [hl], h
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l

jr_018_7002:
    ccf
    nop
    ld d, b

jr_018_7005:
    ld [hl], d

jr_018_7006:
    ld h, c
    ld h, e

jr_018_7008:
    ld [hl], h
    ld l, c
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$77

    ld [hl], b
    jr nz, jr_018_7087

    ld l, a
    ld bc, $6174
    ld l, e
    ld h, l
    jr nz, jr_018_708f

    ld l, b
    ld h, l
    jr nz, jr_018_7066

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h

jr_018_7023:
    ld bc, $6843

jr_018_7026:
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_018_70a2

    ld l, c
    ld [hl], h
    ld l, h
    ld h, l
    ccf
    inc bc
    nop
    ld c, c
    jr nz, @+$65

jr_018_7038:
    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_018_70b5

    ld h, c

jr_018_703f:
    ld l, c
    ld [hl], h
    jr nz, jr_018_70b7

    ld l, a
    ld bc, $6573
    ld h, l
    jr nz, jr_018_70c3

    ld l, a

jr_018_704b:
    ld [hl], l
    jr nz, @+$64

    ld h, l
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    ld bc, $7247
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_018_709e

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld hl, $0003
    ld c, b

jr_018_7066:
    ld h, l
    ld a, c
    inc l
    jr nz, jr_018_7072

jr_018_706b:
    ld hl, $4701
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a

jr_018_7072:
    jr nz, jr_018_70e3

    ld [hl], l
    ld [hl], h
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    ccf
    nop
    ld c, b
    ld h, l
    ld h, c
    ld h, h
    jr nz, jr_018_70e8

    ld l, a
    ld [hl], d
    jr nz, jr_018_70d2

    ld l, c

jr_018_7087:
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_018_70cf

    ld l, h
    ld [hl], l
    ld h, d

jr_018_708f:
    ld l, $01
    ld d, e
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_7103

    ld l, a
    ld l, a

jr_018_709e:
    ld h, h
    daa
    ld l, h
    ld l, h

jr_018_70a2:
    ld bc, $6f63
    ld l, l
    ld h, l
    jr nz, jr_018_7118

    ld h, [hl]
    jr nz, jr_018_7115

    ld [hl], h
    ld l, $02
    ld c, $07
    jr nz, @+$79

    ld h, c
    ld [hl], e

jr_018_70b5:
    jr nz, jr_018_712c

jr_018_70b7:
    ld [hl], b
    ld bc, $6874
    ld h, c
    ld [hl], h
    jr nz, jr_018_7136

    ld h, c
    ld a, c
    jr nz, jr_018_713a

jr_018_70c3:
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_018_7130

    ld l, c
    ld [hl], e
    ld [bc], a
    ld l, c
    ld l, [hl]
    db $76
    ld l, c

jr_018_70cf:
    ld [hl], h
    ld h, c
    ld [hl], h

jr_018_70d2:
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_018_713a

    ld h, c
    ld l, l
    ld h, l
    ld l, $03
    nop
    ld b, c
    jr nz, @+$49

    ld [hl], d
    ld h, c
    ld l, [hl]

jr_018_70e3:
    ld h, h
    jr nz, jr_018_7129

    ld l, b
    ld h, c

jr_018_70e8:
    ld l, l
    ld [hl], b
    ld bc, $6873
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_018_7166

    ld [hl], h
    ld l, a
    ld [hl], b
    ld bc, $7962
    jr nz, jr_018_7147

    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, @+$45

    ld l, h
    ld [hl], l

jr_018_7103:
    ld h, d
    inc l
    jr nz, @+$76

    ld l, a
    ld l, a
    ld l, $03
    nop
    rlca
    ld hl, $5901
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l

jr_018_7115:
    jr nz, jr_018_717f

    ld h, c

jr_018_7118:
    ld l, [hl]
    ld h, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_718e

    ld [hl], l
    ld [hl], h
    ld bc, $6977
    ld [hl], h
    ld l, b
    jr nz, jr_018_7136

    inc b

jr_018_7129:
    ld hl, $4f02

jr_018_712c:
    ld l, b
    inc l
    jr nz, jr_018_71a9

jr_018_7130:
    ld l, a
    ld [hl], l
    jr nz, @+$79

    ld h, c
    ld l, [hl]

jr_018_7136:
    ld [hl], h
    jr nz, jr_018_71ad

    ld l, a

jr_018_713a:
    ld bc, $6f63
    ld [hl], b
    ld a, c
    jr nz, jr_018_71b5

    ld l, b
    ld h, l
    jr nz, jr_018_7188

    ld l, h
    ld [hl], l

jr_018_7147:
    ld h, d
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    daa
    ld [hl], e
    jr nz, jr_018_71c6

    ld h, l
    ld h, e
    ld l, b
    ld l, [hl]
    ld l, c
    ld [hl], c
    ld [hl], l
    ld h, l
    ld hl, $0003
    rlca
    ld hl, $5901
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l

jr_018_7166:
    jr nz, jr_018_71d0

    ld h, c
    ld l, [hl]
    ld h, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_71df

    ld [hl], l
    ld [hl], h
    ld bc, $6977
    ld [hl], h
    ld l, b
    jr nz, jr_018_7187

    inc b
    ld hl, $5702
    ld l, b
    ld h, c

jr_018_717f:
    ld [hl], h
    jr nz, jr_018_71e3

    jr nz, @+$6f

    ld h, c
    ld [hl], h
    ld h, e

jr_018_7187:
    ld l, b

jr_018_7188:
    jr nz, @+$2f

    jr nz, jr_018_7200

    ld l, b
    ld h, l

jr_018_718e:
    ld bc, $7563
    ld [hl], d
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_018_71f9

    ld l, [hl]
    ld h, h
    jr nz, @+$68

    ld l, a
    ld [hl], d
    ld l, l
    dec l
    ld bc, $7265
    jr nz, jr_018_71f2

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a

jr_018_71a9:
    ld l, [hl]
    jr nz, jr_018_71ef

    ld l, b

jr_018_71ad:
    ld h, c
    ld l, l
    ld [hl], b
    ld [hl], e
    ld hl, $0003
    rlca

jr_018_71b5:
    inc l
    jr nz, jr_018_722f

    ld l, c
    ld l, h
    ld l, h
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_018_7222

    ld l, [hl]
    ld h, h
    jr nz, jr_018_71d3

    dec b

jr_018_71c6:
    jr nz, jr_018_7238

    ld l, h
    ld h, c
    ld a, c
    ld bc, $2061
    ld c, l
    ld h, c

jr_018_71d0:
    ld [hl], h
    ld h, e
    ld l, b

jr_018_71d3:
    jr nz, jr_018_721c

    ld h, c
    ld l, l
    ld h, l
    ccf
    ld [bc], a
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    daa

jr_018_71df:
    ld l, h
    ld l, h
    jr nz, @+$64

jr_018_71e3:
    ld h, l
    jr nz, @+$75

    ld l, a
    ld l, l
    ld h, l
    dec l
    ld bc, $6874
    ld l, c
    ld l, [hl]

jr_018_71ef:
    ld h, a
    jr nz, jr_018_725b

jr_018_71f2:
    ld h, [hl]
    jr nz, jr_018_726e

    ld l, a
    ld [hl], l
    jr nz, jr_018_725b

jr_018_71f9:
    ld h, l
    ld h, c
    ld [hl], h
    ld bc, $6150
    ld l, h

jr_018_7200:
    ld l, l
    jr nz, @+$45

    ld l, h
    ld [hl], l
    ld h, d
    daa
    ld [hl], e
    jr nz, jr_018_724d

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld hl, $0003
    rlca
    inc l
    jr nz, jr_018_728c

    ld l, c
    ld l, h
    ld l, h
    ld bc, $6f79
    ld [hl], l

jr_018_721c:
    jr nz, jr_018_727f

    ld l, [hl]
    ld h, h
    jr nz, jr_018_7230

jr_018_7222:
    dec b
    jr nz, jr_018_7295

    ld l, h
    ld h, c
    ld a, c
    ld bc, $2061
    ld c, l
    ld h, c
    ld [hl], h
    ld h, e

jr_018_722f:
    ld l, b

jr_018_7230:
    jr nz, @+$49

    ld h, c
    ld l, l
    ld h, l
    ccf
    ld [bc], a
    ld d, a

jr_018_7238:
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_018_7291

    ld h, c
    ld l, h
    ld l, l
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_018_728e

    ld l, b
    ld h, c

jr_018_724d:
    ld l, l
    ld [hl], b
    inc l
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld l, h
    ld l, h
    ld bc, $6562

jr_018_725b:
    jr nz, jr_018_72be

    jr nz, jr_018_72d1

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_018_72d9

    ld l, a
    jr nz, jr_018_72db

    ld h, l
    ld h, l
    ld hl, $0003
    rlca

jr_018_726e:
    inc l
    jr nz, jr_018_72e8

    ld l, c
    ld l, h
    ld l, h
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_018_72db

    ld l, [hl]
    ld h, h
    jr nz, jr_018_728c

    dec b

jr_018_727f:
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    ld bc, $2061
    ld c, l
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b

jr_018_728c:
    jr nz, jr_018_72d5

jr_018_728e:
    ld h, c
    ld l, l
    ld h, l

jr_018_7291:
    ccf
    ld [bc], a
    ld d, a
    ld h, l

jr_018_7295:
    ld l, h
    ld l, h
    inc l
    jr nz, jr_018_7303

    ld h, [hl]
    jr nz, jr_018_7316

    ld l, a
    ld [hl], l
    jr nz, jr_018_7318

    ld h, c
    ld l, [hl]
    ld [hl], h
    ld bc, $6f74
    jr nz, jr_018_7312

    ld l, l
    ld [hl], b
    ld [hl], d
    ld l, a
    db $76
    ld h, l
    inc l
    jr nz, jr_018_7325

    ld [hl], h
    ld l, c
    ld h, e
    ld l, e
    ld bc, $6977
    ld [hl], h
    ld l, b
    jr nz, jr_018_7331

    ld l, b

jr_018_72be:
    ld h, l
    jr nz, jr_018_7323

    ld h, l
    ld [hl], e
    ld [hl], h
    ld hl, $0003
    rlca
    inc l
    jr nz, jr_018_7342

    ld l, c
    ld l, h
    ld l, h
    ld bc, $6f79

jr_018_72d1:
    ld [hl], l
    jr nz, jr_018_7335

    ld l, [hl]

jr_018_72d5:
    ld h, h
    jr nz, jr_018_72e6

    dec b

jr_018_72d9:
    jr nz, jr_018_734b

jr_018_72db:
    ld l, h
    ld h, c
    ld a, c
    ld bc, $2061
    ld c, l
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b

jr_018_72e6:
    jr nz, jr_018_732f

jr_018_72e8:
    ld h, c
    ld l, l
    ld h, l
    ccf
    ld [bc], a
    ld c, c
    daa
    ld h, h
    jr nz, jr_018_735e

    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_018_736b

    ld l, a
    jr nz, jr_018_736d

    ld h, l
    ld h, l
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_018_7369

    ld l, a

jr_018_7303:
    jr nz, jr_018_737a

    ld [hl], b
    jr nz, jr_018_7369

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld bc, $6874
    ld h, l

jr_018_7312:
    jr nz, jr_018_737a

    ld l, a
    ld [hl], d

jr_018_7316:
    ld l, l
    ld h, l

jr_018_7318:
    ld [hl], d
    jr nz, jr_018_735e

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld hl, $0003
    ld d, b

jr_018_7323:
    ld l, h
    ld h, c

jr_018_7325:
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_738c

    jr nz, jr_018_737a

    ld h, c
    ld [hl], h

jr_018_732f:
    ld h, e
    ld l, b

jr_018_7331:
    ld bc, $6147
    ld l, l

jr_018_7335:
    ld h, l
    jr nz, jr_018_73af

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_018_734b

    ld b, $2c
    ld bc, $3f07

jr_018_7342:
    ld [bc], a
    ld c, b
    ld h, l
    jr nz, @+$74

    ld h, l
    ld h, c
    ld l, h
    ld l, h

jr_018_734b:
    ld a, c
    jr nz, jr_018_73b6

    ld l, c
    ld [hl], h
    ld [hl], e
    ld bc, $6874
    ld h, l
    jr nz, @+$64

    ld h, c
    ld l, h
    ld l, h
    inc l
    jr nz, jr_018_73d0

    ld l, a

jr_018_735e:
    jr nz, @+$66

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $756f
    ld [hl], h
    dec l

jr_018_7369:
    ld [hl], b
    ld h, c

jr_018_736b:
    ld h, e
    ld h, l

jr_018_736d:
    jr nz, jr_018_73e8

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, h
    ld h, [hl]
    ld hl, $0003
    ld d, b

jr_018_737a:
    ld l, h
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_73e3

    jr nz, jr_018_73d1

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    ld bc, $6147
    ld l, l

jr_018_738c:
    ld h, l
    jr nz, jr_018_7406

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_018_73a2

    ld b, $2c
    ld bc, $3f07
    ld [bc], a
    ld d, a
    ld l, a
    ld [hl], a
    ld hl, $4120
    jr nz, jr_018_740f

jr_018_73a2:
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_018_740a

    ld h, l
    dec l
    ld bc, $7774
    ld h, l
    ld h, l

jr_018_73af:
    ld l, [hl]
    jr nz, jr_018_742b

    ld l, a
    ld [hl], l
    jr nz, @+$63

jr_018_73b6:
    ld l, [hl]
    ld h, h
    jr nz, jr_018_742e

    ld l, b
    ld h, l
    ld bc, $6f66
    ld [hl], d
    ld l, l
    ld h, l
    ld [hl], d
    jr nz, jr_018_7409

    ld [hl], l
    ld l, [hl]
    ld h, l
    jr nz, jr_018_740d

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ccf
    inc bc

jr_018_73d0:
    nop

jr_018_73d1:
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_743b

    jr nz, @+$4f

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    ld bc, $6147

jr_018_73e3:
    ld l, l
    ld h, l
    jr nz, jr_018_745e

    ld l, c

jr_018_73e8:
    ld [hl], h
    ld l, b
    jr nz, @+$10

    rlca
    inc l
    ld bc, $3f07
    ld [bc], a
    ld b, c
    jr nz, jr_018_7442

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_018_7442

    ld h, c
    ld l, l
    ld h, l
    jr nz, @+$79

    ld l, c
    ld [hl], h
    ld l, b
    ld bc, $6874

jr_018_7406:
    ld h, l
    jr nz, jr_018_7450

jr_018_7409:
    ld [hl], d

jr_018_740a:
    ld h, c
    ld l, [hl]
    ld h, h

jr_018_740d:
    jr nz, jr_018_7452

jr_018_740f:
    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_018_7445

    ld bc, $6874
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$63

    ld l, l
    ld h, c
    ld a, d
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $0003
    ld d, b

jr_018_742b:
    ld l, h
    ld h, c
    ld a, c

jr_018_742e:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_7494

    jr nz, @+$4f

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, @+$49

jr_018_743b:
    ld h, c
    ld l, l
    ld h, l
    ld bc, $6977
    ld [hl], h

jr_018_7442:
    ld l, b
    jr nz, @+$10

jr_018_7445:
    rlca
    inc l
    ld bc, $3f07
    ld [bc], a
    ld b, c
    jr nz, @+$74

    ld l, a
    ld [hl], l

jr_018_7450:
    ld l, [hl]
    ld h, h

jr_018_7452:
    jr nz, jr_018_74cb

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_018_74cd

    ld l, b
    ld h, l
    ld bc, $6f66

jr_018_745e:
    ld [hl], d
    ld l, l
    ld h, l
    ld [hl], d
    jr nz, jr_018_74ab

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_018_74ad

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld bc, $6977
    ld l, h
    ld l, h
    jr nz, @+$64

    ld h, l
    jr nz, jr_018_74d9

    jr nz, jr_018_74ee

    ld l, b
    ld [hl], d
    ld l, c
    ld l, h
    ld l, h
    ld h, l
    ld [hl], d
    ld hl, $0003
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    jr nz, @+$10

    inc b
    inc l
    jr nz, jr_018_74ef

    ld l, [hl]
    ld h, h
    ld bc, $6f79
    ld [hl], l

jr_018_7494:
    daa
    ld l, h
    ld l, h
    jr nz, @+$68

    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, @+$69

    ld l, a
    ld l, h
    ld h, [hl]
    daa
    ld [hl], e
    ld bc, $6f6e
    ld [hl], h
    jr nz, jr_018_750a

    ld l, h
    ld l, h

jr_018_74ab:
    jr nz, @+$72

jr_018_74ad:
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld l, $03
    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_7531

    ld l, b
    ld h, l
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld bc, $6f74
    jr nz, jr_018_753a

    ld [hl], d

jr_018_74cb:
    ld h, c
    ld h, e

jr_018_74cd:
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_018_7539

    ld l, a
    ld [hl], d
    ld bc, $200b
    ld [hl], a

jr_018_74d9:
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_018_7546

    ld h, l
    ld l, h
    ld [hl], b
    ld l, $03
    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_74fb

    dec b

jr_018_74ee:
    daa

jr_018_74ef:
    ld l, h
    ld l, h
    ld bc, $6967
    db $76
    ld h, l
    jr nz, @+$6b

    ld l, [hl]
    ld [hl], e
    ld l, c

jr_018_74fb:
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_018_7569

    ld l, [hl]
    ld [hl], h
    ld l, a
    ld bc, $7461
    ld [hl], h
    ld h, c
    ld h, e
    ld l, e

jr_018_750a:
    jr nz, jr_018_757b

    ld [hl], b
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, $03
    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_752c

    dec b
    daa
    ld l, h
    ld l, h
    ld bc, $6967
    db $76
    ld h, l
    jr nz, jr_018_7592

    ld l, [hl]
    ld [hl], e
    ld l, c

jr_018_752c:
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, @+$6b

jr_018_7531:
    ld l, [hl]
    ld [hl], h
    ld l, a
    ld bc, $7461
    ld [hl], h
    ld h, c

jr_018_7539:
    ld h, e

jr_018_753a:
    ld l, e
    jr nz, jr_018_75ac

    ld [hl], b
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, $03
    nop

jr_018_7546:
    ld d, b
    ld l, h
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_755d

    dec b
    daa
    ld l, h
    ld l, h
    ld bc, $6967
    db $76
    ld h, l
    jr nz, jr_018_75c3

    ld l, [hl]
    ld [hl], e
    ld l, c

jr_018_755d:
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_018_75cb

    ld l, [hl]
    ld [hl], h
    ld l, a
    ld bc, $7461
    ld [hl], h

jr_018_7569:
    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_018_75dd

    ld [hl], b
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, $03
    nop
    ld d, b
    ld [hl], d
    ld h, c
    ld h, e

jr_018_757b:
    ld [hl], h
    ld l, c
    ld h, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_75e9

    ld l, a
    ld [hl], d
    ld bc, $200b
    ld h, d
    ld a, c
    jr nz, jr_018_75fc

    ld l, h
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a

jr_018_7592:
    ld bc, $6150
    ld l, h
    ld l, l
    daa
    ld [hl], e
    jr nz, jr_018_7601

    ld l, a
    ld [hl], d
    ld l, l
    ld h, l
    ld [hl], d
    jr nz, jr_018_75e5

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ccf
    inc bc
    nop
    ld e, c
    ld l, a
    ld [hl], l

jr_018_75ac:
    jr nz, jr_018_7611

    ld h, c
    ld l, [hl]
    jr nz, @+$6e

    ld h, l
    ld h, c
    ld [hl], d
    ld l, [hl]
    jr nz, @+$76

    ld l, a
    ld bc, $7264
    ld l, c
    db $76
    ld h, l
    jr nz, jr_018_7622

    ld l, [hl]
    ld h, h

jr_018_75c3:
    jr nz, jr_018_7628

    ld l, b
    ld l, c
    ld [hl], b
    jr nz, @+$64

    ld a, c

jr_018_75cb:
    ld bc, $6c70
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_75e3

    ld b, $2e
    inc bc
    nop
    ld d, b
    ld l, h
    ld h, c
    ld a, c

jr_018_75dd:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$46

    ld [hl], l

jr_018_75e3:
    ld l, [hl]
    ld h, l

jr_018_75e5:
    daa
    ld [hl], e
    jr nz, jr_018_764f

jr_018_75e9:
    ld l, a
    ld [hl], d
    ld l, l
    dec l
    ld bc, $7265
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    jr nz, @+$76

    ld l, a
    jr nz, jr_018_766b

    ld [hl], d

jr_018_75fc:
    ld h, l
    dec l
    ld bc, $6170

jr_018_7601:
    ld [hl], d
    ld h, l
    jr nz, jr_018_766b

    ld l, a
    ld [hl], d
    jr nz, jr_018_7614

    ccf
    inc bc
    nop
    rlca
    inc l
    jr nz, jr_018_7679

    ld [hl], e

jr_018_7611:
    ld bc, $6874

jr_018_7614:
    ld h, c
    ld [hl], h
    jr nz, jr_018_765f

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b

jr_018_7622:
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, @+$10

    rlca

jr_018_7628:
    ccf
    ld [bc], a
    ld c, c
    jr nz, jr_018_76a4

    ld l, a
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    ld l, $2e
    ld l, $01
    ld [hl], a
    ld l, b
    ld l, a
    jr nz, jr_018_76b2

    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_018_76b7

    ld l, c
    ld l, [hl]
    ccf
    inc bc
    nop
    rlca
    inc l
    jr nz, jr_018_76b2

    ld [hl], e
    ld bc, $6874
    ld h, c
    ld [hl], h

jr_018_764f:
    jr nz, jr_018_76b7

    ld l, a
    ld [hl], d
    ld l, l
    ld h, l
    ld [hl], d
    jr nz, jr_018_769f

    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, h
    ld bc, $6843

jr_018_765f:
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, @+$10

    rlca
    ccf
    ld [bc], a
    ld c, c

jr_018_766b:
    jr nz, jr_018_76e4

    ld l, a
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    ld l, $2e
    ld l, $01
    ld [hl], a
    ld l, b
    ld l, a

jr_018_7679:
    jr nz, jr_018_76f2

    ld l, c
    ld l, h
    ld l, h
    jr nz, @+$79

    ld l, c
    ld l, [hl]
    ccf
    inc bc
    nop
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_018_76ef

    jr nz, jr_018_76f2

    ld l, a
    ld l, a
    ld l, e
    ld a, [hl-]
    ld bc, $5022
    ld [hl], d
    ld l, a
    ld [hl], b
    ld h, l
    ld [hl], d
    jr nz, @+$59

    ld l, a

jr_018_769f:
    ld [hl], d
    ld h, h
    jr nz, jr_018_76f8

    ld [hl], e

jr_018_76a4:
    ld h, c
    ld h, a
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

jr_018_76b2:
    jr nz, @+$63

    jr nz, jr_018_7718

    ld l, a

jr_018_76b7:
    ld l, a
    ld l, e
    ld a, [hl-]
    ld bc, $4722
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_018_7714

    ld [hl], l
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
    jr nz, @+$63

    jr nz, jr_018_7737

    ld l, a
    ld l, a
    ld l, e
    ld a, [hl-]
    ld bc, $5322
    ld [hl], h
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, l
    ld h, a
    ld l, c
    ld h, e

jr_018_76e4:
    jr nz, jr_018_772d

    ld l, a
    ld l, h
    ld h, [hl]
    ld l, $22
    inc bc
    nop
    ld d, h
    ld l, b

jr_018_76ef:
    ld h, l
    ld [hl], d
    ld h, l

jr_018_76f2:
    daa
    ld [hl], e
    jr nz, jr_018_7757

    jr nz, jr_018_775a

jr_018_76f8:
    ld l, a
    ld l, a
    ld l, e
    ld a, [hl-]
    ld bc, $4722
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_018_7757

    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    ld [hl], e
    ld l, $22
    inc bc
    nop
    ld c, c
    jr nz, jr_018_777c

    ld l, [hl]
    ld l, a
    ld [hl], a

jr_018_7714:
    jr nz, jr_018_7782

    ld l, a
    ld [hl], a

jr_018_7718:
    ld h, l
    ld [hl], d
    jr nz, jr_018_777f

    ld l, h
    ld [hl], l
    ld h, d
    ld [hl], e
    ld bc, $6168
    db $76
    ld h, l
    jr nz, jr_018_7793

    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_018_778f

    ld l, a

jr_018_772d:
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    inc l
    ld bc, $7562
    ld [hl], h

jr_018_7737:
    jr nz, jr_018_779d

    ld h, c
    ld l, [hl]
    ld h, a
    ld hl, $4202
    ld [hl], l
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e
    jr nz, jr_018_77b0

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $656e
    ld h, e
    ld h, l
    ld [hl], e
    ld [hl], e

jr_018_7757:
    ld h, c
    ld [hl], d
    ld l, c

jr_018_775a:
    ld l, h
    ld a, c
    jr nz, jr_018_77c6

    ld h, c
    db $76
    ld h, l
    ld bc, $6f74
    jr nz, @+$6f

    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_018_77df

    ld l, b
    ld h, l
    jr nz, jr_018_77d6

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld hl, $0003
    ld b, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_018_77dd

jr_018_777c:
    ld [hl], b
    ld [hl], b
    ld [hl], d

jr_018_777f:
    ld l, a
    ld h, c
    ld h, e

jr_018_7782:
    ld l, b
    jr nz, jr_018_77f8

    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e
    ld bc, $6163
    ld l, [hl]
    jr nz, jr_018_7801

jr_018_778f:
    ld h, l
    ld h, c
    ld l, h
    ld l, h

jr_018_7793:
    ld a, c
    jr nz, jr_018_77fe

    ld h, l
    ld l, h
    ld [hl], b
    jr nz, jr_018_7814

    ld l, a
    ld [hl], l

jr_018_779d:
    ld [hl], d
    ld bc, $6373
    ld l, a
    ld [hl], d
    ld h, l
    ld hl, $0003
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$67

    ld h, c
    ld [hl], e
    ld a, c

jr_018_77b0:
    jr nz, jr_018_7826

    ld l, a
    jr nz, jr_018_7818

    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_018_782f

    ld [hl], b
    ld bc, $6873
    ld l, a
    ld [hl], d
    ld [hl], h
    jr nz, jr_018_782c

    ld h, [hl]
    jr nz, jr_018_783f

jr_018_77c6:
    ld l, a
    ld [hl], l
    jr nz, jr_018_782e

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $7375
    ld h, l
    jr nz, jr_018_7838

    ld l, c
    ld [hl], e

jr_018_77d6:
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_018_7840

jr_018_77dd:
    ld l, h
    ld [hl], l

jr_018_77df:
    ld h, d
    ld [hl], e
    ld [bc], a
    ld l, c
    ld l, [hl]
    jr nz, jr_018_7847

    jr nz, jr_018_7850

    ld h, l
    ld h, c
    ld h, h
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, h
    ld l, $20
    ld c, c
    ld l, [hl]
    jr nz, jr_018_7856

    ld bc, $6174

jr_018_77f8:
    ld l, c
    ld l, h
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, h

jr_018_77fe:
    inc l
    jr nz, jr_018_7876

jr_018_7801:
    ld [hl], e
    ld h, l
    jr nz, @+$75

    ld l, l
    ld h, c
    ld l, h
    ld l, h
    ld bc, $6c63
    ld [hl], l
    ld h, d
    ld [hl], e
    ld l, $2e
    ld l, $4f
    ld l, b

jr_018_7814:
    ld hl, $5920
    ld l, a

jr_018_7818:
    ld [hl], l
    jr nz, jr_018_7886

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld hl, $0003
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_018_7869

jr_018_7826:
    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_018_786e

    ld l, b

jr_018_782c:
    ld h, c
    ld l, l

jr_018_782e:
    ld [hl], b

jr_018_782f:
    ld [hl], e
    jr nz, jr_018_7893

    ld [hl], d
    ld h, l
    ld bc, $6568
    ld [hl], d

jr_018_7838:
    ld h, l
    jr nz, @+$6b

    ld l, [hl]
    jr nz, jr_018_78b2

    ld l, b

jr_018_783f:
    ld h, l

jr_018_7840:
    jr nz, jr_018_78ae

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, a
    ld h, l

jr_018_7847:
    ld bc, $6f74
    ld h, h
    ld h, c
    ld a, c
    ld l, $03
    nop

jr_018_7850:
    ld c, c
    jr nz, @+$79

    ld h, c
    ld l, [hl]
    ld [hl], h

jr_018_7856:
    jr nz, jr_018_78cc

    ld l, a
    jr nz, jr_018_78bd

    ld h, l
    jr nz, jr_018_78bf

    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, jr_018_78a8

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b

jr_018_7869:
    jr nz, jr_018_78de

    ld l, a
    jr nz, jr_018_78b7

jr_018_786e:
    jr nz, @+$65

    ld h, c
    ld l, [hl]
    ld bc, $6168
    ld l, [hl]

jr_018_7876:
    ld h, a
    jr nz, jr_018_78ed

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$76

    ld l, a
    ld l, a
    ld hl, $0003
    ld c, c
    ld h, [hl]

jr_018_7886:
    jr nz, jr_018_7901

    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_018_78f6

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a

jr_018_7893:
    jr nz, jr_018_790a

    ld [hl], b
    ld bc, $6874
    ld h, l
    ld [hl], d
    ld h, l
    inc l
    jr nz, jr_018_7918

    ld l, a
    ld [hl], l
    daa
    ld h, h
    jr nz, @+$64

    ld h, l
    ld [hl], h
    ld [hl], h

jr_018_78a8:
    ld h, l
    ld [hl], d
    ld bc, $6e6b
    ld l, a

jr_018_78ae:
    ld [hl], a
    jr nz, jr_018_7928

    ld l, b

jr_018_78b2:
    ld l, a
    daa
    ld [hl], e
    jr nz, jr_018_792e

jr_018_78b7:
    ld l, b
    ld l, a
    ld l, $03
    nop
    ld d, h

jr_018_78bd:
    ld l, b
    ld l, a

jr_018_78bf:
    ld [hl], e
    ld h, l
    jr nz, jr_018_7924

    ld [hl], d
    ld h, l
    jr nz, jr_018_7928

    ld l, h
    ld l, h
    jr nz, jr_018_793f

    ld l, b

jr_018_78cc:
    ld h, l
    ld bc, $6c43
    ld [hl], l
    ld h, d
    jr nz, @+$45

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld [hl], e
    ld hl, $4920
    daa
    ld l, h

jr_018_78de:
    ld l, h
    ld bc, $6574
    ld l, h
    ld l, h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_018_7961

    ld l, b
    ld l, a
    daa

jr_018_78ed:
    ld [hl], e
    jr nz, jr_018_7967

    ld l, b
    ld l, a
    ld hl, $0003
    ld d, h

jr_018_78f6:
    ld l, b
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_018_795d

    ld [hl], d
    ld h, l
    jr nz, jr_018_7961

    ld l, h

jr_018_7901:
    ld l, h
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $7865
    dec l

jr_018_790a:
    ld b, e
    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_018_7953

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld [hl], e
    ld hl, $4920

jr_018_7918:
    daa
    ld l, h
    ld l, h
    ld bc, $6574
    ld l, h
    ld l, h
    jr nz, @+$7b

    ld l, a
    ld [hl], l

jr_018_7924:
    jr nz, jr_018_799d

    ld l, b
    ld l, a

jr_018_7928:
    daa
    ld [hl], e
    jr nz, @+$79

    ld l, b
    ld l, a

jr_018_792e:
    ld hl, $0003
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_018_799f

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld l, h
    ld l, h
    ld h, l
    ld h, e
    ld [hl], h
    ld [hl], l

jr_018_793f:
    ld h, c
    ld l, h
    jr nz, jr_018_79b2

    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, jr_018_79bc

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_018_79b9

    ld [hl], e
    jr nz, jr_018_799f

jr_018_7953:
    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b

jr_018_795d:
    inc l
    jr nz, jr_018_796e

    rlca

jr_018_7961:
    ld l, $02
    ld c, b
    ld h, l
    daa
    ld [hl], e

jr_018_7967:
    jr nz, jr_018_79dd

    ld l, b
    ld h, l
    jr nz, jr_018_79cf

    ld h, l

jr_018_796e:
    ld [hl], e
    ld [hl], h
    jr nz, @+$71

    ld h, [hl]
    ld bc, $6874
    ld h, l
    jr nz, jr_018_79bc

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_018_79c1

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld [hl], e
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_018_79fe

    ld [hl], h
    ld [hl], l
    ld h, h
    jr nz, jr_018_79fe

    ld h, l
    ld a, b
    ld [hl], h
    jr nz, jr_018_7a09

    ld l, a
    jr nz, jr_018_7a00

    ld l, c
    ld l, l
    ld bc, $7369

jr_018_799d:
    jr nz, jr_018_79e3

jr_018_799f:
    ld [hl], l
    ld l, [hl]
    ld h, l
    jr nz, jr_018_79e7

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    inc l
    ld c, $06
    inc l
    ld bc, $6874
    ld h, l
    jr nz, jr_018_7a25

jr_018_79b2:
    ld h, l
    ld h, e
    ld l, a
    ld l, [hl]
    ld h, h
    jr nz, jr_018_7a1b

jr_018_79b9:
    ld h, l
    ld [hl], e
    ld [hl], h

jr_018_79bc:
    ld hl, $0003
    ld d, h
    ld l, b

jr_018_79c1:
    ld h, l
    jr nz, jr_018_7a30

    ld h, c
    ld h, h
    ld a, c
    jr nz, jr_018_7a32

    ld [hl], e
    jr nz, @+$52

    ld h, c
    ld l, h
    ld l, l

jr_018_79cf:
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    inc l
    jr nz, @+$10

    dec b
    ld l, $20
    ld d, e
    ld l, b

jr_018_79dd:
    ld h, l
    daa
    ld [hl], e
    ld bc, $656e

jr_018_79e3:
    ld a, b
    ld [hl], h
    jr nz, jr_018_7a50

jr_018_79e7:
    ld l, [hl]
    jr nz, jr_018_7a56

    ld l, c
    ld l, [hl]
    ld h, l
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_018_7a61

    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, @+$69

    ld [hl], l
    ld a, c

jr_018_79fe:
    jr nz, @+$71

jr_018_7a00:
    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, jr_018_7a73

    ld h, l
    ld h, [hl]

jr_018_7a09:
    ld [hl], h
    jr nz, jr_018_7a75

    ld [hl], e
    jr nz, jr_018_7a1d

    inc b
    ld l, $01
    ld b, c
    ld [hl], e
    jr nz, @+$4f

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]

jr_018_7a1b:
    jr nz, jr_018_7a60

jr_018_7a1d:
    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    inc l
    ld [bc], a
    ld l, b
    ld h, l

jr_018_7a25:
    daa
    ld [hl], e
    jr nz, jr_018_7a8a

    ld [hl], h
    jr nz, jr_018_7aa0

    ld l, b
    ld h, l
    jr nz, jr_018_7a92

jr_018_7a30:
    ld l, a
    ld [hl], h

jr_018_7a32:
    ld [hl], h
    ld l, a
    ld l, l
    ld bc, $666f
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_018_7aaa

    ld h, c
    ld h, h
    ld h, h
    ld h, l
    ld [hl], d
    ld l, $03
    nop
    ld b, h
    ld l, c
    ld h, h
    jr nz, jr_018_7ac4

    ld l, a
    ld [hl], l
    jr nz, @+$69

    ld h, l

jr_018_7a50:
    ld [hl], h
    jr nz, jr_018_7ac7

    ld l, b
    ld h, c
    ld [hl], h

jr_018_7a56:
    ccf
    nop
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$66

    ld l, c
    ld h, h
    ld l, [hl]

jr_018_7a60:
    daa

jr_018_7a61:
    ld [hl], h
    jr nz, jr_018_7acb

    ld h, l
    ld [hl], h
    jr nz, jr_018_7ad1

    ld [hl], h
    ccf
    ld bc, $4b4f
    inc l
    jr nz, jr_018_7adc

    ld l, c
    ld [hl], e
    ld [hl], h

jr_018_7a73:
    ld h, l
    ld l, [hl]

jr_018_7a75:
    jr nz, jr_018_7aec

    ld [hl], b
    ld l, $2e
    ld l, $03
    nop
    ld c, c
    ld h, [hl]
    jr nz, jr_018_7afa

    ld l, a
    ld [hl], l
    jr nz, jr_018_7afc

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_018_7afe

jr_018_7a8a:
    ld l, a
    jr nz, jr_018_7aef

    ld h, l
    ld bc, $2061
    ld b, e

jr_018_7a92:
    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_018_7ada

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    inc l
    jr nz, jr_018_7b09

    ld l, [hl]
    ld l, a

jr_018_7aa0:
    ld [hl], a
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_018_7b1a

    ld l, c
    db $76

jr_018_7aaa:
    ld h, c
    ld l, h
    ld [hl], e
    ld hl, $0003
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_018_7b1d

    ld l, a
    ld [hl], d
    ld h, a
    ld h, l
    ld [hl], h
    jr nz, jr_018_7b32

    ld l, b
    ld h, l
    jr nz, jr_018_7b27

    ld a, b
    dec l

jr_018_7ac4:
    ld bc, $6843

jr_018_7ac7:
    ld h, c
    ld l, l
    ld [hl], b
    ld [hl], e

jr_018_7acb:
    jr nz, jr_018_7b46

    ld l, a
    ld [hl], l
    jr nz, jr_018_7b33

jr_018_7ad1:
    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_018_7b3f

    ld l, [hl]
    ld bc, $6f79

jr_018_7ada:
    ld [hl], l
    ld [hl], d

jr_018_7adc:
    jr nz, jr_018_7b50

    ld l, c
    ld [hl], e
    ld h, l
    jr nz, jr_018_7b57

    ld l, a
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_018_7b5e

    ld l, a
    ld [hl], b

jr_018_7aec:
    ld l, $03
    nop

jr_018_7aef:
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$6b

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld l, h
    ld l, h
    ld h, l

jr_018_7afa:
    ld h, e
    ld [hl], h

jr_018_7afc:
    ld [hl], l
    ld h, c

jr_018_7afe:
    ld l, h
    jr nz, jr_018_7b70

    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, jr_018_7b7a

    ld l, c

jr_018_7b09:
    ld h, a
    ld l, b
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_018_7b76

    ld l, a
    ld [hl], d
    ld l, l
    ld h, l
    ld [hl], d
    ld bc, $694c
    ld l, [hl]
    ld l, e

jr_018_7b1a:
    ld [hl], e
    jr nz, jr_018_7b60

jr_018_7b1d:
    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    inc l
    ld [bc], a
    ld c, $07
    ld l, $01

jr_018_7b27:
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    jr nz, jr_018_7ba0

    ld h, c
    ld l, c
    ld h, h
    jr nz, jr_018_7b9a

jr_018_7b32:
    ld h, l

jr_018_7b33:
    ld bc, $6177
    ld [hl], e
    jr nz, jr_018_7bad

    ld l, b
    ld h, l
    jr nz, jr_018_7b9f

    ld h, l
    ld [hl], e

jr_018_7b3f:
    ld [hl], h
    ld l, $2e
    ld l, $03
    nop
    ld d, h

jr_018_7b46:
    ld l, b
    ld h, l
    jr nz, @+$75

    ld [hl], h
    ld [hl], l
    ld h, h
    jr nz, jr_018_7bbe

    ld l, [hl]

jr_018_7b50:
    jr nz, jr_018_7bba

    ld l, c
    ld [hl], e
    ld bc, $656c

jr_018_7b57:
    ld h, [hl]
    ld [hl], h
    jr nz, jr_018_7bc4

    ld [hl], e
    jr nz, jr_018_7bd2

jr_018_7b5e:
    ld l, b
    ld h, l

jr_018_7b60:
    jr nz, jr_018_7bc8

    ld l, a
    ld [hl], d
    ld l, l
    ld h, l
    ld [hl], d
    ld bc, $7544
    ld l, [hl]
    ld h, l
    jr nz, jr_018_7bb1

    ld l, b
    ld h, c

jr_018_7b70:
    ld l, l
    ld [hl], b
    ld l, $02
    ld c, $06

jr_018_7b76:
    daa
    ld [hl], e
    jr nz, jr_018_7be6

jr_018_7b7a:
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_018_7be3

    ld [hl], d
    ld l, c
    db $76
    ld h, l
    ld bc, $7375
    ld h, l
    ld h, h
    jr nz, jr_018_7bfe

    ld l, a
    jr nz, jr_018_7bef

    ld h, l
    ld bc, $6573
    ld h, e
    ld l, a
    ld l, [hl]
    ld h, h
    jr nz, jr_018_7bf9

    ld h, l
    ld [hl], e
    ld [hl], h

jr_018_7b9a:
    ld l, $03
    nop
    ld d, h
    ld l, b

jr_018_7b9f:
    ld h, l

jr_018_7ba0:
    jr nz, jr_018_7c19

    ld l, a
    ld l, l
    ld h, c
    ld l, [hl]
    jr nz, @+$71

    ld l, [hl]
    jr nz, jr_018_7c1f

    ld l, b
    ld h, l

jr_018_7bad:
    ld bc, $656c
    ld h, [hl]

jr_018_7bb1:
    ld [hl], h
    jr nz, jr_018_7c1d

    ld [hl], e
    jr nz, jr_018_7c1d

    ld l, a
    ld [hl], d
    ld l, l

jr_018_7bba:
    ld h, l
    ld [hl], d
    jr nz, jr_018_7c0e

jr_018_7bbe:
    ld h, c
    ld l, h
    ld l, l
    ld bc, $6843

jr_018_7bc4:
    ld h, c
    ld l, l
    ld [hl], b
    inc l

jr_018_7bc8:
    jr nz, @+$10

    dec b
    ld l, $20
    ld c, b
    ld h, l
    ld [hl], d
    ld [bc], a
    ld [hl], e

jr_018_7bd2:
    ld [hl], h
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    jr nz, jr_018_7c49

    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_018_7c46

    ld h, c
    ld h, h
    ld bc, $6568

jr_018_7be3:
    ld [hl], d
    jr nz, @+$63

jr_018_7be6:
    ld [hl], h
    jr nz, jr_018_7c1c

    ld [hl], d
    ld h, h
    inc l
    jr nz, jr_018_7c63

    ld l, [hl]

jr_018_7bef:
    ld [hl], h
    ld l, c
    ld l, h
    ld bc, $2007
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], a

jr_018_7bf9:
    ld h, l
    ld h, h
    jr nz, jr_018_7c72

    ld [hl], b

jr_018_7bfe:
    ld hl, $0003
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_018_7c72

    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_018_7c74

    ld [hl], l

jr_018_7c0e:
    ld a, c
    jr nz, @+$6b

    ld [hl], e
    ld bc, $6874
    ld h, l
    jr nz, jr_018_7c7e

    ld l, a

jr_018_7c19:
    ld [hl], d
    ld l, l
    ld h, l

jr_018_7c1c:
    ld [hl], d

jr_018_7c1d:
    jr nz, jr_018_7c6c

jr_018_7c1f:
    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $6843
    ld h, c
    ld l, l
    ld [hl], b
    ld l, $20
    ld c, $04
    jr nz, jr_018_7c98

    ld h, c
    ld [hl], e
    ld [bc], a
    ld h, d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_018_7cb0

    ld l, a
    ld [hl], d
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_7cb0

    ld l, [hl]
    jr nz, jr_018_7cac

    ld l, c
    ld [hl], e

jr_018_7c46:
    ld bc, $7570

jr_018_7c49:
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    jr nz, jr_018_7cb9

    ld l, a
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_018_7ccc

    ld l, a
    ld bc, $6572
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_018_7cd6

    ld l, b

jr_018_7c63:
    ld h, l
    jr nz, jr_018_7cda

    ld l, c
    ld [hl], h
    ld l, h
    ld h, l
    ld l, $03

jr_018_7c6c:
    nop
    ld c, c
    daa
    ld l, l
    jr nz, jr_018_7ce6

jr_018_7c72:
    ld l, b
    ld h, l

jr_018_7c74:
    jr nz, jr_018_7cb9

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_018_7cbe

    ld l, b
    ld h, c
    ld l, l

jr_018_7c7e:
    ld [hl], b
    ld bc, $6568
    ld [hl], d
    ld h, l
    jr nz, jr_018_7ce7

    ld [hl], h
    jr nz, jr_018_7cd6

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, @+$45

    ld l, h
    ld [hl], l
    ld h, d
    ld hl, $4102
    ld [hl], d
    ld h, l

jr_018_7c98:
    jr nz, jr_018_7d13

    ld l, a
    ld [hl], l
    jr nz, jr_018_7d12

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$70

    ld h, l
    ld [hl], a
    ld h, d
    ld l, c
    ld h, l
    ld bc, $6f67
    ld l, h

jr_018_7cac:
    ld h, [hl]
    ld h, l
    ld [hl], d
    inc l

jr_018_7cb0:
    jr nz, jr_018_7cb9

    ccf
    nop
    ld b, a
    ld [hl], l
    ld h, l
    ld [hl], e
    ld [hl], e

jr_018_7cb9:
    jr nz, jr_018_7d04

    jr nz, jr_018_7d34

    ld h, c

jr_018_7cbe:
    ld [hl], e
    jr nz, @+$79

    ld [hl], d
    ld l, a
    ld l, [hl]
    ld h, a
    ld l, $03
    nop
    ld b, l
    ld a, b
    ld [hl], b
    ld h, l

jr_018_7ccc:
    ld [hl], d
    ld l, c
    ld h, l
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_018_7d4b

    ld l, c
    ld l, [hl]

jr_018_7cd6:
    ld [hl], e
    ld bc, $6f54

jr_018_7cda:
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    ld hl, $4d02

jr_018_7ce6:
    ld h, c

jr_018_7ce7:
    ld a, c
    ld h, d
    ld h, l
    jr nz, @+$4b

    jr nz, jr_018_7d51

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_018_7d60

    ld h, l
    ld l, [hl]
    ld h, h
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_018_7d70

    ld l, a
    ld l, l
    ld h, l
    ld hl, $213f
    nop

jr_018_7d04:
    push af
    ld a, $00
    call Call_018_7d14
    pop af
    ret


    push af
    ld a, $01
    call Call_018_7d14

jr_018_7d12:
    pop af

jr_018_7d13:
    ret


Call_018_7d14:
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
    ld hl, $4404
    add hl, de
    or a
    jr nz, jr_018_7d31

    ld de, $c600
    ld bc, $0180
    jr jr_018_7d37

jr_018_7d31:
    ld de, $d880

jr_018_7d34:
    ld bc, $0020

jr_018_7d37:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_018_7d4b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_018_7d51:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_018_7d60:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_018_7d70:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
