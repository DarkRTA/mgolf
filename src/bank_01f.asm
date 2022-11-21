; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01f", ROMX[$4000], BANK[$1f]

    db $b1, $73

    cp c
    ld [hl], e
    nop
    nop
    inc [hl]
    nop
    add c
    nop
    ld sp, hl
    nop
    cpl
    ld bc, $015d
    xor a
    ld bc, $020b
    ld d, h
    ld [bc], a
    add c
    ld [bc], a
    jp c, Jump_000_2a02

    inc bc
    ld d, h
    inc bc
    or b
    inc bc
    ld d, l
    inc b
    and l
    inc b
    inc b
    dec b
    ld h, h
    dec b
    add l
    dec b
    adc $05
    ld d, [hl]
    ld b, $85
    ld b, $d3
    ld b, $19
    rlca
    ld [hl], d
    rlca
    adc $07
    inc e
    ld [$086b], sp
    jp nz, $f508

    ld [$095a], sp
    and [hl]
    add hl, bc
    inc bc
    ld a, [bc]
    ld l, $0a
    ld a, h
    ld a, [bc]
    nop
    dec bc
    ccf
    dec bc
    sbc c
    dec bc
    dec de
    inc c
    ld b, l
    inc c
    jp Jump_000_3e0c


    dec c
    ld a, a
    dec c
    ld bc, $380e
    ld c, $61
    ld c, $8e
    ld c, $0d
    rrca
    ld [hl], d
    rrca
    cp c
    rrca
    dec de
    db $10

jr_01f_406a:
    ld d, b
    db $10
    or h
    db $10
    db $e3
    db $10
    ld b, [hl]
    ld de, $1175
    cp l
    ld de, $11e0
    ld c, d
    ld [de], a
    xor c
    ld [de], a
    ldh a, [rNR12]
    ld h, $13
    adc d
    inc de
    rst $20
    inc de
    db $10
    inc d
    ld h, c
    inc d
    cp e
    inc d
    jr nc, jr_01f_40a1

    and c
    dec d
    db $f4
    dec d
    ld e, d
    ld d, $ae
    ld d, $2d

jr_01f_4095:
    rla
    adc d
    rla
    db $e3
    rla
    inc d
    jr @+$78

    jr @-$63

    jr jr_01f_4095

jr_01f_40a1:
    jr jr_01f_40fd

    add hl, de
    or h
    add hl, de
    ld h, $1a
    cp l
    ld a, [de]
    inc e
    dec de
    ld [hl], h
    dec de
    sub h
    dec de
    ld hl, sp+$1b

jr_01f_40b2:
    dec h
    inc e
    ld d, a
    inc e
    sbc h
    inc e
    call z, $ff1c
    inc e
    ld c, [hl]
    dec e
    xor c
    dec e
    ld hl, sp+$1d
    ld c, e
    ld e, $79
    ld e, $d6
    ld e, $2e
    rra
    ld l, b
    rra
    sub l
    rra
    db $f4
    rra
    jr nz, jr_01f_40f2

    ld [hl], c
    jr nz, jr_01f_406a

    jr nz, @-$11

    jr nz, jr_01f_4109

    ld hl, $218c
    call $fd21
    ld hl, $2266
    sub a
    ld [hl+], a
    ret c

    ld [hl+], a
    inc [hl]
    inc hl
    ld d, d
    inc hl
    or h
    inc hl
    dec d
    inc h
    ld h, h
    inc h
    cp a
    inc h

jr_01f_40f2:
    jp hl


    inc h
    inc l
    dec h
    xor e
    dec h
    db $e3
    dec h
    ld b, l
    ld h, $a8

jr_01f_40fd:
    ld h, $f1
    ld h, $60
    daa
    add [hl]
    daa
    or l
    daa
    call nc, Call_01f_4927

jr_01f_4109:
    jr z, jr_01f_40b2

    jr z, jr_01f_411d

    add hl, hl
    ld d, c
    add hl, hl
    ld l, a
    add hl, hl
    jp $2229


    ld a, [hl+]
    ld l, b
    ld a, [hl+]
    sbc d
    ld a, [hl+]
    adc $2a
    db $10

jr_01f_411d:
    dec hl
    ld e, b
    dec hl
    and b
    dec hl
    db $f4
    dec hl
    ld de, $722c
    inc l
    call c, $652c
    dec l
    adc b
    dec l
    pop bc
    dec l
    jr jr_01f_4160

    ld c, [hl]
    ld l, $9f
    ld l, $f7
    ld l, $52
    cpl
    adc h
    cpl
    ret z

    cpl
    jr c, jr_01f_4170

jr_01f_4140:
    adc l
    jr nc, jr_01f_4140

    jr nc, @+$5d

    ld sp, $3194
    jp z, Jump_000_3631

    ld [hl-], a
    ld a, [hl-]
    ld [hl-], a
    ld a, $32
    ld b, d
    ld [hl-], a
    ld b, [hl]
    ld [hl-], a

    db $57, $32

    ld b, e
    ld h, c
    ld h, h
    ld h, h
    ld l, c
    ld h, l
    jr nz, jr_01f_41cb

    ld h, c
    ld [hl], e

jr_01f_4160:
    ld [hl], h
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_01f_41d3

    ld h, c
    ld l, [hl]
    ld h, c
    ld h, a
    ld h, l
    ld bc, $6163
    ld h, h
    ld h, h

jr_01f_4170:
    ld l, c
    ld h, l
    ld [hl], e
    jr nz, jr_01f_41d6

    ld l, [hl]
    ld h, h
    jr nz, jr_01f_41ec

    ld h, l
    ld [hl], h
    jr nz, jr_01f_41f0

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    ld bc, $6974
    ld l, l
    ld h, l
    ld [hl], e
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_41f3

    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01f_420c

    ld l, b
    ld h, l
    ld bc, $6162
    ld l, h
    ld l, h
    jr nz, jr_01f_4208

    ld l, a
    ld h, l
    ld [hl], e
    jr nz, jr_01f_420c

    ld [hl], d
    ld l, a
    ld l, l
    ld bc, $6874
    ld h, l
    jr nz, jr_01f_421c

    ld l, a
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01f_421f

    ld [hl], h
    daa
    ld [hl], e
    ld [bc], a
    ld l, b
    ld l, c
    ld [hl], h
    jr nz, jr_01f_4234

    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, h
    jr nz, @+$6b

    ld [hl], h
    ld [hl], e
    jr nz, @+$68

    ld l, c
    ld [hl], d

jr_01f_41cb:
    ld [hl], e
    ld [hl], h
    ld bc, $6f62
    ld [hl], l
    ld l, [hl]
    ld h, e

jr_01f_41d3:
    ld h, l
    ld l, $03

jr_01f_41d6:
    nop
    ld b, c
    ld l, [hl]
    jr nz, jr_01f_423c

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    jr nz, jr_01f_4257

    ld l, b
    ld l, a
    ld [hl], h
    ld bc, $6e69
    jr nz, @+$79

jr_01f_41ec:
    ld l, b
    ld l, c
    ld h, e
    ld l, b

jr_01f_41f0:
    jr nz, jr_01f_4266

    ld l, b

jr_01f_41f3:
    ld h, l
    jr nz, jr_01f_4258

    ld h, c
    ld l, h
    ld l, h
    ld bc, $7369
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], h
    jr nz, @+$71

    ld l, [hl]
    jr nz, jr_01f_4267

    jr nz, jr_01f_4270

jr_01f_4208:
    ld l, c
    ld h, a
    ld l, b
    ld [bc], a

jr_01f_420c:
    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, d
    ld h, l
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    inc l
    jr nz, jr_01f_428d

    ld l, b
    ld h, l
    ld l, [hl]

jr_01f_421c:
    ld bc, $6f72

jr_01f_421f:
    ld l, h
    ld l, h
    ld [hl], e
    jr nz, @+$76

    ld l, a
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_01f_429f

    ld l, b
    ld h, l
    ld bc, $7563
    ld [hl], b
    jr nz, jr_01f_4294

    ld h, [hl]

jr_01f_4234:
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01f_42a5

    ld h, c
    ld l, [hl]
    ld h, h

jr_01f_423c:
    ld l, c
    ld l, [hl]
    ld h, a
    ld [bc], a
    ld l, a
    ld l, [hl]
    jr nz, jr_01f_42b8

    ld l, b
    ld h, l
    jr nz, @+$69

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $03
    nop
    ld d, h
    ld l, a
    jr nz, jr_01f_42bb

    ld l, c
    ld [hl], h
    jr nz, jr_01f_42cb

jr_01f_4257:
    ld l, b

jr_01f_4258:
    ld h, l
    jr nz, @+$64

    ld h, c
    ld l, h
    ld l, h
    ld bc, $6e61
    ld h, h
    jr nz, @+$6a

    ld l, a
    ld l, h

jr_01f_4266:
    ld h, l

jr_01f_4267:
    jr nz, @+$71

    ld [hl], l
    ld [hl], h
    jr nz, jr_01f_42d3

    ld [hl], d
    ld l, a
    ld l, l

jr_01f_4270:
    ld bc, $756f
    ld [hl], h
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01f_42e5

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $03
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01f_42ec

    jr nz, jr_01f_42c2

jr_01f_428d:
    jr nz, jr_01f_4306

    ld l, a
    ld l, a
    ld h, h
    ld l, $20

jr_01f_4294:
    ld e, c
    ld l, a
    ld [hl], l
    ld bc, $6f64
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01f_4307

jr_01f_429f:
    ld h, c
    db $76
    ld h, l
    jr nz, jr_01f_4313

    ld l, [hl]

jr_01f_42a5:
    ld h, l
    inc l
    ld bc, $6874
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld l, $2e
    ld l, $03
    nop
    ld b, c
    jr nz, @+$65

    ld l, a
    ld l, [hl]

jr_01f_42b8:
    ld [hl], h
    ld h, l
    ld [hl], e

jr_01f_42bb:
    ld [hl], h
    jr nz, jr_01f_4332

    ld l, a
    jr nz, @+$75

    ld h, l

jr_01f_42c2:
    ld h, l
    ld bc, $6877
    ld l, a
    jr nz, jr_01f_432c

    ld h, c
    ld l, [hl]

jr_01f_42cb:
    jr nz, @+$69

    ld h, l
    ld [hl], h
    ld bc, $6c63
    ld l, a

jr_01f_42d3:
    ld [hl], e
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, @+$76

    ld l, a
    jr nz, jr_01f_4350

    ld l, b
    ld h, l
    jr nz, jr_01f_4350

    ld l, c
    ld l, [hl]
    ld [bc], a
    ld l, a
    ld l, [hl]

jr_01f_42e5:
    jr nz, jr_01f_435b

    ld l, b
    ld h, l
    jr nz, @+$76

    ld h, l

jr_01f_42ec:
    ld h, l
    jr nz, jr_01f_4362

    ld l, b
    ld l, a
    ld [hl], h
    ld bc, $6e6f
    jr nz, @+$63

    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], d
    ld [hl], h
    jr nz, jr_01f_4367

    ld l, a
    ld l, h
    ld h, l
    ld l, $03
    nop
    ld c, c

jr_01f_4306:
    ld [hl], h

jr_01f_4307:
    daa
    ld [hl], e
    jr nz, jr_01f_437f

    ld l, b
    ld h, l
    jr nz, @+$76

    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a

jr_01f_4313:
    jr nz, jr_01f_438e

    ld l, a
    ld [hl], l
    ld bc, $7375
    ld h, l
    jr nz, @+$76

    ld l, a
    jr nz, jr_01f_4388

    ld l, c
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, @+$64

    ld h, c
    ld l, h
    ld l, h
    inc l

jr_01f_432c:
    ld bc, $6973
    ld l, h
    ld l, h
    ld a, c

jr_01f_4332:
    ld hl, $5402
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_01f_439c

    ld [hl], d
    ld h, l
    jr nz, jr_01f_43b6

    ld l, a
    ld l, a
    ld h, h
    ld [hl], e
    inc l
    ld bc, $6577
    ld h, h
    ld h, a
    ld h, l
    ld [hl], e
    inc l
    jr nz, jr_01f_43b7

    ld [hl], d
    ld l, a

jr_01f_4350:
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01f_43b5

    ld l, [hl]
    ld h, h
    ld bc, $7570
    ld [hl], h
    ld [hl], h

jr_01f_435b:
    ld h, l
    ld [hl], d
    ld [hl], e
    ld l, $03
    nop
    ld d, h

jr_01f_4362:
    ld l, b
    ld h, l
    jr nz, jr_01f_43dd

    ld l, c

jr_01f_4367:
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld [hl], d
    jr nz, jr_01f_43dc

    ld h, [hl]
    jr nz, jr_01f_43d1

    ld bc, $6c63
    ld [hl], l
    ld h, d
    jr nz, jr_01f_43da

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e

jr_01f_437f:
    ld l, b
    ld l, c
    ld [hl], b
    ld l, $01
    ld c, a
    ld h, [hl]
    ld [hl], h
    ld h, l

jr_01f_4388:
    ld l, [hl]
    jr nz, jr_01f_43ee

    ld h, c
    ld l, h
    ld l, h

jr_01f_438e:
    ld h, l
    ld h, h
    jr nz, jr_01f_43f3

    ld [bc], a
    ld h, e
    ld l, h
    ld [hl], l
    ld h, d
    jr nz, @+$65

    ld l, b
    ld h, c
    ld l, l

jr_01f_439c:
    ld [hl], b
    jr nz, jr_01f_4405

    ld l, a
    ld [hl], d
    ld bc, $6873
    ld l, a
    ld [hl], d
    ld [hl], h
    ld l, $03
    nop
    ld b, c
    jr nz, @+$65

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e

jr_01f_43b5:
    ld l, b

jr_01f_43b6:
    ld l, c

jr_01f_43b7:
    ld [hl], b
    ld bc, $7073
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, a
    ld [hl], d
    ld h, l
    ld h, h
    jr nz, @+$64

    ld a, c
    jr nz, jr_01f_4428

    ld bc, $6f63
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld a, c
    jr nz, jr_01f_4434

jr_01f_43d1:
    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l

jr_01f_43da:
    jr nz, jr_01f_443f

jr_01f_43dc:
    ld l, h

jr_01f_43dd:
    ld [hl], l
    ld h, d
    ld [hl], e
    jr nz, jr_01f_4445

    ld h, c
    ld [hl], d
    ld [hl], d
    ld l, c
    ld h, l
    ld h, h
    ld bc, $6e69
    jr nz, jr_01f_4461

    ld l, b

jr_01f_43ee:
    ld h, l
    jr nz, @+$65

    ld h, c
    ld h, h

jr_01f_43f3:
    ld h, h
    ld l, c
    ld h, l
    jr nz, @+$64

    ld h, c
    ld h, a
    ld bc, $6877
    ld l, c
    ld l, h
    ld h, l
    jr nz, jr_01f_4472

    ld l, h
    ld h, c
    ld a, c

jr_01f_4405:
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $02
    ld d, d
    ld [hl], l
    ld l, h
    ld h, l
    ld [hl], e
    jr nz, jr_01f_4481

    ld h, l
    ld [hl], d
    ld l, l
    ld l, c
    ld [hl], h
    jr nz, jr_01f_448d

    ld [hl], b
    jr nz, jr_01f_448f

    ld l, a
    ld bc, $3431
    jr nz, @+$65

    ld l, h
    ld [hl], l
    ld h, d
    ld [hl], e
    jr nz, jr_01f_4497

    ld h, l

jr_01f_4428:
    ld [hl], d
    jr nz, jr_01f_449e

    ld h, l
    ld [hl], h
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01f_449a

    ld l, a

jr_01f_4434:
    ld l, h
    ld h, [hl]
    jr nz, @+$65

    ld l, h
    ld [hl], l
    ld h, d
    daa
    ld [hl], e
    jr nz, jr_01f_44ac

jr_01f_443f:
    ld h, c
    ld l, c
    ld l, [hl]
    ld bc, $7562

jr_01f_4445:
    ld l, c
    ld l, h
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $20
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    ld bc, $6877
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_01f_44cf

    ld l, b
    ld h, l
    jr nz, jr_01f_44cb

    ld l, a
    ld [hl], l

jr_01f_4461:
    ld l, [hl]
    ld h, a
    ld h, l
    ld [bc], a
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01f_44de

    ld l, b
    ld h, l
    jr nz, jr_01f_44da

    ld l, a
    ld h, e
    ld l, e
    ld h, l

jr_01f_4472:
    ld [hl], d
    ld bc, $6f72
    ld l, a
    ld l, l
    ld [hl], e
    jr nz, jr_01f_44dc

    ld [hl], d
    ld h, l
    ld l, $03
    nop
    ld d, h

jr_01f_4481:
    ld l, b
    ld h, l
    jr nz, jr_01f_44f5

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_01f_4502

    ld l, b
    ld h, l

jr_01f_448d:
    ld [hl], d
    ld h, l

jr_01f_448f:
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01f_4505

    ld l, h
    ld h, c

jr_01f_4497:
    ld a, c
    jr nz, @+$63

jr_01f_449a:
    jr nz, jr_01f_4503

    ld h, c
    ld l, l

jr_01f_449e:
    ld h, l
    ld bc, $666f
    jr nz, jr_01f_450b

    ld l, a
    ld l, h
    ld h, [hl]
    ld l, $03
    nop
    ld d, h
    ld l, b

jr_01f_44ac:
    ld h, l
    jr nz, jr_01f_4522

    ld l, b
    ld h, c
    ld [hl], b
    ld h, l
    jr nz, jr_01f_4524

    ld h, [hl]
    jr nz, @+$63

    jr nz, jr_01f_451d

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld bc, $6e61
    ld h, h
    jr nz, jr_01f_4531

    ld l, a
    ld h, e
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a

jr_01f_44cb:
    ld l, [hl]
    jr nz, @+$71

    ld h, [hl]

jr_01f_44cf:
    jr nz, jr_01f_4534

    ld [hl], l
    ld [hl], b
    ld [hl], e
    inc l
    ld bc, $7267
    ld h, l
    ld h, l

jr_01f_44da:
    ld l, [hl]
    ld [hl], e

jr_01f_44dc:
    jr nz, jr_01f_453f

jr_01f_44de:
    ld l, [hl]
    ld h, h
    jr nz, jr_01f_454a

    ld h, c
    ld a, d
    ld h, c
    ld [hl], d
    ld h, h
    ld [hl], e
    ld l, $02
    ld d, l
    ld [hl], e
    ld h, l
    jr nz, jr_01f_4558

    ld [hl], h
    jr nz, jr_01f_4566

    ld l, a
    jr nz, jr_01f_4565

jr_01f_44f5:
    ld l, h
    ld h, c
    ld l, [hl]
    jr nz, jr_01f_455b

    ld bc, $7473
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, l
    ld h, a

jr_01f_4502:
    ld a, c

jr_01f_4503:
    ld l, $03

jr_01f_4505:
    nop
    ld b, c
    ld l, [hl]
    ld l, a
    ld [hl], h
    ld l, b

jr_01f_450b:
    ld h, l
    ld [hl], d
    jr nz, @+$6f

    ld h, l
    ld h, c
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01f_457b

    ld l, a
    ld [hl], d
    ld bc, $6964
    ld [hl], e
    ld [hl], h
    ld l, c

jr_01f_451d:
    ld l, [hl]
    ld h, a
    ld [hl], l
    ld l, c
    ld [hl], e

jr_01f_4522:
    ld l, b
    ld l, c

jr_01f_4524:
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_458b

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld bc, $6964
    ld h, [hl]

jr_01f_4531:
    ld h, [hl]
    ld l, c
    ld h, e

jr_01f_4534:
    ld [hl], l
    ld l, h
    ld [hl], h
    ld a, c
    ld l, $02
    ld b, d
    ld a, c
    jr nz, jr_01f_45a1

    ld l, a

jr_01f_453f:
    ld l, l
    ld [hl], b
    ld h, c
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_45ba

    ld h, c
    ld [hl], h

jr_01f_454a:
    ld l, c
    ld l, [hl]
    ld h, a
    ld [hl], e
    inc l
    jr nz, jr_01f_4552

    ld a, c

jr_01f_4552:
    ld l, a
    ld [hl], l
    jr nz, @+$6f

    ld h, c
    ld a, c

jr_01f_4558:
    jr nz, jr_01f_45c0

    ld l, c

jr_01f_455b:
    ld l, [hl]
    ld h, h
    jr nz, jr_01f_45c0

    jr nz, jr_01f_45c4

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e

jr_01f_4565:
    ld h, l

jr_01f_4566:
    jr nz, jr_01f_4569

    ld [hl], a

jr_01f_4569:
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01f_45cf

    jr nz, jr_01f_45e0

    ld h, c
    ld [hl], d
    jr nz, jr_01f_45e3

    ld h, [hl]
    jr nz, jr_01f_45ae

    inc sp
    jr nz, jr_01f_45ee

    ld l, a

jr_01f_457b:
    jr nz, jr_01f_45df

    ld h, l
    ld [bc], a
    ld l, l
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$66

    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld l, c
    ld h, e
    ld [hl], l

jr_01f_458b:
    ld l, h
    ld [hl], h
    jr nz, jr_01f_4603

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_01f_4595

    ld l, a

jr_01f_4595:
    ld l, [hl]
    ld h, l
    jr nz, jr_01f_4610

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01f_45ff

    jr nz, jr_01f_4610

    ld h, c

jr_01f_45a1:
    ld [hl], d
    jr nz, jr_01f_4613

    ld h, [hl]
    jr nz, jr_01f_45de

    ld sp, $032e
    nop
    ld b, c
    jr nz, jr_01f_4611

jr_01f_45ae:
    ld [hl], d
    ld h, l
    ld h, l
    ld l, e
    daa
    ld [hl], e
    jr nz, jr_01f_4617

    jr nz, jr_01f_462b

    ld [hl], h
    ld [hl], d

jr_01f_45ba:
    ld h, l
    ld h, c
    ld l, l
    ld bc, $6874

jr_01f_45c0:
    ld h, c
    ld [hl], h
    jr nz, jr_01f_462a

jr_01f_45c4:
    ld l, h
    ld l, a
    ld [hl], a
    ld [hl], e
    jr nz, jr_01f_463e

    ld l, b
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a

jr_01f_45cf:
    ld l, b
    ld bc, $2061
    ld h, e
    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $02
    ld b, h
    ld l, a
    ld l, [hl]

jr_01f_45de:
    daa

jr_01f_45df:
    ld [hl], h

jr_01f_45e0:
    jr nz, jr_01f_4645

    ld l, a

jr_01f_45e3:
    ld l, [hl]
    ld h, [hl]
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_01f_4653

    ld [hl], h
    ld bc, $6977

jr_01f_45ee:
    ld [hl], h
    ld l, b
    jr nz, jr_01f_4653

    jr nz, jr_01f_4657

    ld l, h
    ld h, l
    ld h, l
    ld l, e
    ld hl, $0003
    ld b, c
    jr nz, jr_01f_4660

    ld [hl], l

jr_01f_45ff:
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d

jr_01f_4603:
    jr nz, jr_01f_4679

    ld l, b
    ld h, c
    ld [hl], h
    ld bc, $7563
    ld [hl], h
    ld [hl], e
    jr nz, @+$63

    ld h, e

jr_01f_4610:
    ld [hl], d

jr_01f_4611:
    ld l, a
    ld [hl], e

jr_01f_4613:
    ld [hl], e
    jr nz, jr_01f_468a

    ld l, b

jr_01f_4617:
    ld h, l
    ld bc, $6166
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    ld l, $20
    jr nz, jr_01f_4679

    ld [hl], e
    ld h, l
    ld [bc], a
    ld a, c
    ld l, a
    ld [hl], l

jr_01f_462a:
    ld [hl], d

jr_01f_462b:
    jr nz, jr_01f_4690

    ld l, h
    ld [hl], l
    ld h, d
    daa
    ld [hl], e
    jr nz, jr_01f_46a7

    ld l, a
    ld l, h
    ld h, l
    ld bc, $6f74
    jr nz, jr_01f_46a4

    ld l, c
    ld [hl], h

jr_01f_463e:
    jr nz, jr_01f_46b9

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01f_46bc

jr_01f_4645:
    ld h, c
    ld a, c
    ld bc, $756f
    ld [hl], h
    jr nz, jr_01f_46bc

    ld h, [hl]
    jr nz, jr_01f_46b1

    jr nz, jr_01f_46b4

    ld [hl], l

jr_01f_4653:
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d

jr_01f_4657:
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$6a

    ld l, a

jr_01f_4660:
    ld l, h
    ld h, l
    jr nz, @+$6b

    ld l, [hl]
    jr nz, jr_01f_46db

    ld l, b
    ld h, l
    ld bc, $7267
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_01f_46e5

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01f_46dd

    ld l, a
    ld l, h
    ld h, [hl]

jr_01f_4679:
    ld h, l
    ld [hl], d
    ld [hl], e
    ld bc, $6961
    ld l, l
    jr nz, jr_01f_46e8

    ld l, a
    ld [hl], d
    ld l, $02
    ld b, c
    jr nz, jr_01f_46ef

    ld l, h

jr_01f_468a:
    ld h, c
    ld h, a
    jr nz, @+$6f

    ld h, c
    ld [hl], d

jr_01f_4690:
    ld l, e
    ld [hl], e
    jr nz, @+$6b

    ld [hl], h
    ld bc, $6f73
    jr nz, jr_01f_4713

    ld l, a
    ld [hl], l
    jr nz, jr_01f_4701

    ld h, c
    ld l, [hl]
    jr nz, jr_01f_4715

    ld h, l
    ld h, l

jr_01f_46a4:
    jr nz, jr_01f_470f

    ld [hl], h

jr_01f_46a7:
    ld bc, $7266
    ld l, a
    ld l, l
    jr nz, jr_01f_470f

    jr nz, jr_01f_4714

    ld l, c

jr_01f_46b1:
    ld [hl], e
    ld [hl], h
    ld h, c

jr_01f_46b4:
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, $03

jr_01f_46b9:
    nop
    ld d, h
    ld l, a

jr_01f_46bc:
    jr nz, jr_01f_4731

    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01f_472a

    ld h, c
    ld l, h
    ld l, h
    ld bc, $6e69
    ld [hl], h
    ld l, a
    jr nz, jr_01f_4746

    ld l, b
    ld h, l
    jr nz, jr_01f_4739

    ld [hl], l
    ld [hl], b
    ld l, $03
    nop

jr_01f_46db:
    ld b, c
    ld l, c

jr_01f_46dd:
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_4749

    ld l, a
    ld [hl], d

jr_01f_46e5:
    jr nz, jr_01f_475b

    ld l, b

jr_01f_46e8:
    ld h, l
    ld bc, $6970
    ld l, [hl]
    jr nz, jr_01f_4761

jr_01f_46ef:
    ld h, c
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_01f_476a

    ld l, b
    ld h, c
    ld l, [hl]
    ld bc, $6e69
    jr nz, @+$68

    ld [hl], d
    ld l, a
    ld l, [hl]

jr_01f_4701:
    ld [hl], h
    jr nz, jr_01f_4773

    ld h, [hl]
    jr nz, jr_01f_4770

    ld [hl], h
    ld [bc], a
    ld [hl], a
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01f_4770

jr_01f_470f:
    ld [hl], h
    ld [hl], h
    ld h, c
    ld h, e

jr_01f_4713:
    ld l, e

jr_01f_4714:
    ld l, c

jr_01f_4715:
    ld l, [hl]
    ld h, a
    ld bc, $6874
    ld h, l
    jr nz, @+$69

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $03
    nop
    ld b, c
    ld l, [hl]
    jr nz, jr_01f_4789

    ld [hl], d
    ld h, l

jr_01f_472a:
    ld h, c
    jr nz, jr_01f_479c

    ld h, [hl]
    jr nz, @+$69

    ld [hl], d

jr_01f_4731:
    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_01f_47a2

    ld l, a
    ld l, [hl]
    ld h, a

jr_01f_4739:
    ld h, l
    ld [hl], d
    ld bc, $6874
    ld h, c
    ld l, [hl]
    jr nz, jr_01f_47b4

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b

jr_01f_4746:
    jr nz, @+$76

    ld l, b

jr_01f_4749:
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01f_47b4

    db $76
    ld h, l
    ld l, [hl]
    ld bc, $6168
    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_01f_47cf

jr_01f_475b:
    ld l, a
    jr nz, jr_01f_47c3

    ld [hl], e
    ld h, e
    ld h, c

jr_01f_4761:
    ld [hl], b
    ld h, l
    ld l, $02
    ld c, c
    ld h, [hl]
    jr nz, jr_01f_47e2

    ld l, a

jr_01f_476a:
    ld [hl], l
    ld [hl], d
    jr nz, jr_01f_47d0

    ld h, c
    ld l, h

jr_01f_4770:
    ld l, h
    jr nz, jr_01f_47df

jr_01f_4773:
    ld h, c
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, jr_01f_47e1

    ld h, l
    ld [hl], d
    ld h, l
    inc l
    jr nz, jr_01f_4780

    ld a, c

jr_01f_4780:
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, @+$68

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h

jr_01f_4789:
    jr nz, jr_01f_47fb

    ld [hl], d
    ld l, c
    ld l, a
    ld [hl], d
    ld l, c
    ld [hl], h
    ld a, c
    jr nz, jr_01f_47fd

    ld [hl], e
    ld bc, $756a
    ld [hl], e
    ld [hl], h
    jr nz, jr_01f_4803

jr_01f_479c:
    ld h, l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a

jr_01f_47a2:
    jr nz, jr_01f_480d

    ld [hl], h
    jr nz, jr_01f_4816

    ld [hl], l
    ld [hl], h
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_481d

    ld h, c
    ld [hl], e
    ld [hl], h

jr_01f_47b4:
    jr nz, jr_01f_482a

    ld l, a
    jr nz, jr_01f_4830

    ld l, c
    ld l, [hl]
    ld bc, $2061
    ld [hl], h
    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]

jr_01f_47c3:
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01f_4839

    ld [hl], d
    ld bc, $6863
    ld h, c

jr_01f_47cf:
    ld l, l

jr_01f_47d0:
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
    ld c, c
    ld l, [hl]
    ld h, h
    ld h, l

jr_01f_47df:
    ld l, [hl]
    ld [hl], h

jr_01f_47e1:
    ld h, c

jr_01f_47e2:
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01f_4858

    ld l, [hl]
    ld bc, $2061
    ld h, a
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_01f_4855

    ld h, c
    ld l, h
    ld l, h
    ld l, $01
    ld b, h
    ld l, c
    ld l, l

jr_01f_47fb:
    ld [hl], b
    ld l, h

jr_01f_47fd:
    ld h, l
    ld [hl], e
    jr nz, @+$63

    ld h, [hl]
    ld h, [hl]

jr_01f_4803:
    ld h, l
    ld h, e
    ld [hl], h
    ld [bc], a
    ld h, d
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01f_4870

jr_01f_480d:
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    jr nz, @+$63

    ld l, [hl]

jr_01f_4816:
    ld h, h
    ld bc, $6961
    ld [hl], d
    jr nz, jr_01f_488f

jr_01f_481d:
    ld h, l
    ld [hl], e
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, $03
    nop
    ld b, c

jr_01f_482a:
    jr nz, jr_01f_488f

    ld l, h
    ld [hl], l
    ld l, l
    ld [hl], b

jr_01f_4830:
    jr nz, jr_01f_48a1

    ld h, [hl]
    jr nz, jr_01f_489c

    ld [hl], d
    ld h, c
    ld [hl], e
    ld [hl], e

jr_01f_4839:
    ld bc, $6e6b
    ld l, a
    ld h, e
    ld l, e
    ld h, l
    ld h, h
    jr nz, jr_01f_48af

    ld l, a
    ld l, a
    ld [hl], e
    ld h, l
    jr nz, jr_01f_48b8

    ld l, [hl]
    ld bc, $2061
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], h
    ld l, $02
    ld b, c
    ld l, h

jr_01f_4855:
    ld [hl], a
    ld h, c
    ld a, c

jr_01f_4858:
    ld [hl], e
    jr nz, jr_01f_48cd

    ld h, l
    ld [hl], b
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01f_48cc

    ld l, c
    db $76
    ld l, a
    ld [hl], h
    ld hl, $0003
    ld b, c

jr_01f_4870:
    jr nz, jr_01f_48da

    ld l, a
    ld l, h
    ld h, l
    jr nz, jr_01f_48eb

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01f_48f0

    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld [hl], e
    ld bc, $6873
    ld h, c
    ld [hl], d
    ld [hl], b
    ld l, h
    ld a, c
    jr nz, jr_01f_48ec

    ld h, l
    ld [hl], h
    ld [hl], a
    ld h, l
    ld h, l

jr_01f_488f:
    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, @+$76

    ld h, l
    ld h, l
    jr nz, jr_01f_48fb

    ld l, [hl]
    ld h, h

jr_01f_489c:
    jr nz, @+$76

    ld l, b
    ld h, l
    ld [bc], a

jr_01f_48a1:
    ld h, a
    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    inc l
    jr nz, jr_01f_4915

    ld l, c
    ld l, e
    ld h, l
    jr nz, @+$76

    ld l, b

jr_01f_48af:
    ld h, l
    ld bc, $6873
    ld h, c
    ld [hl], b
    ld h, l
    jr nz, jr_01f_4927

jr_01f_48b8:
    ld h, [hl]
    jr nz, jr_01f_491c

    jr nz, jr_01f_4921

    ld l, a
    ld h, a
    daa
    ld [hl], e
    ld bc, $656c
    ld h, a
    ld l, $03
    nop
    ld c, c
    ld l, [hl]
    jr nz, @+$6f

jr_01f_48cc:
    ld h, c

jr_01f_48cd:
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_01f_4942

    ld l, h
    ld h, c
    ld a, c
    inc l
    ld bc, $6877
    ld h, l

jr_01f_48da:
    ld l, [hl]
    jr nz, jr_01f_493e

    jr nz, jr_01f_494f

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    ld bc, $6163
    ld l, [hl]
    jr nz, jr_01f_4961

    ld l, c

jr_01f_48eb:
    ld l, [hl]

jr_01f_48ec:
    jr nz, jr_01f_4962

    ld l, b
    ld h, l

jr_01f_48f0:
    ld [bc], a
    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, @+$64

    ld a, c
    jr nz, jr_01f_496f

jr_01f_48fb:
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6874
    ld h, l
    jr nz, jr_01f_4974

    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_01f_497b

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    ld bc, $6e6f
    jr nz, @+$76

jr_01f_4915:
    ld l, b
    ld h, l
    jr nz, jr_01f_4987

    ld h, l
    ld a, b
    ld [hl], h

jr_01f_491c:
    jr nz, jr_01f_4986

    ld l, a
    ld l, h
    ld h, l

jr_01f_4921:
    ld l, $03
    nop
    ld d, h
    ld [hl], a
    ld l, a

Call_01f_4927:
jr_01f_4927:
    jr nz, @+$75

    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    ld [hl], e
    jr nz, @+$71

    db $76
    ld h, l
    ld [hl], d
    ld bc, $6170
    ld [hl], d
    ld l, $20
    ld c, a
    ld l, [hl]
    jr nz, jr_01f_499f

jr_01f_493e:
    jr nz, jr_01f_49b0

    ld h, c
    ld [hl], d

jr_01f_4942:
    jr nz, jr_01f_4978

    ld bc, $6f68
    ld l, h
    ld h, l
    inc l
    jr nz, jr_01f_49ad

    jr nz, jr_01f_49b2

    ld l, a

jr_01f_494f:
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    ld [bc], a
    ld h, d
    ld l, a
    ld h, a
    ld h, l
    ld a, c
    jr nz, jr_01f_49d2

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$64

jr_01f_4961:
    ld h, l

jr_01f_4962:
    ld bc, $2061
    ld [hl], e
    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01f_49db

    ld h, [hl]
    jr nz, jr_01f_49a5

jr_01f_496f:
    ld l, $03
    nop
    ld d, h
    ld l, b

jr_01f_4974:
    ld h, l
    jr nz, jr_01f_49eb

    ld l, c

jr_01f_4978:
    ld l, l
    ld l, c
    ld l, [hl]

jr_01f_497b:
    ld h, a
    jr nz, jr_01f_49ed

    ld h, [hl]
    ld bc, $7773
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, c

jr_01f_4986:
    ld l, [hl]

jr_01f_4987:
    ld h, a
    jr nz, jr_01f_49fe

    ld l, b
    ld h, l
    jr nz, jr_01f_49f1

    ld l, h
    ld [hl], l
    ld h, d
    inc l
    ld bc, $7266
    ld l, a
    ld l, l
    jr nz, jr_01f_4a0d

    ld l, b
    ld h, l
    jr nz, jr_01f_4a11

    ld l, a
    ld [hl], b

jr_01f_499f:
    jr nz, jr_01f_4a10

    ld h, [hl]
    ld [bc], a
    ld [hl], h
    ld l, b

jr_01f_49a5:
    ld h, l
    jr nz, jr_01f_4a1b

    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, a
    inc l

jr_01f_49ad:
    jr nz, jr_01f_4a13

    ld l, a

jr_01f_49b0:
    ld [hl], a
    ld l, [hl]

jr_01f_49b2:
    ld bc, $6f74
    jr nz, jr_01f_4a2b

    ld l, b
    ld h, l
    jr nz, @+$64

    ld h, c
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01f_4a2c

    ld l, a
    ld l, a
    ld l, e
    dec l
    ld [hl], e
    ld [hl], h
    ld a, c
    ld l, h
    ld h, l
    ld bc, $6873
    ld l, a
    ld [hl], h

jr_01f_49d2:
    jr nz, jr_01f_4a3d

    ld l, [hl]
    jr nz, jr_01f_4a4e

    ld l, b
    ld l, c
    ld h, e
    ld l, b

jr_01f_49db:
    ld bc, $6874
    ld h, l
    jr nz, jr_01f_4a43

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01f_4a4c

    ld l, h
    ld l, c
    ld h, l
    ld [hl], e
    ld [bc], a

jr_01f_49eb:
    ld [hl], h
    ld l, a

jr_01f_49ed:
    jr nz, jr_01f_4a63

    ld l, b
    ld h, l

jr_01f_49f1:
    jr nz, jr_01f_4a65

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld bc, $6562
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l

jr_01f_49fe:
    jr nz, @+$6a

    ld h, l
    ld h, c
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6f66
    ld [hl], d
    jr nz, jr_01f_4a80

    ld l, b

jr_01f_4a0d:
    ld h, l
    jr nz, jr_01f_4a84

jr_01f_4a10:
    ld h, c

jr_01f_4a11:
    ld [hl], d
    ld h, a

jr_01f_4a13:
    ld h, l
    ld [hl], h
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld l, c

jr_01f_4a1b:
    ld [hl], e
    jr nz, jr_01f_4a87

    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01f_4a9c

    ld l, a
    ld l, a
    ld h, h
    ld bc, $6977

jr_01f_4a2b:
    ld [hl], h

jr_01f_4a2c:
    ld l, b
    jr nz, jr_01f_4aa3

    ld l, b
    ld h, l
    jr nz, @+$6e

    ld l, a
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], e
    ld [hl], h
    ld bc, $7264
    ld l, c

jr_01f_4a3d:
    db $76
    ld h, l
    jr nz, jr_01f_4aa5

    ld l, c
    ld [hl], e

jr_01f_4a43:
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, $03
    nop
    ld b, c

jr_01f_4a4c:
    jr nz, jr_01f_4ab1

jr_01f_4a4e:
    ld l, a
    ld l, l
    ld [hl], b
    ld h, l
    ld [hl], h
    ld l, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_01f_4ace

    ld l, a
    ld bc, $6573
    ld h, l
    jr nz, @+$79

    ld l, b
    ld l, a

jr_01f_4a63:
    jr nz, jr_01f_4ac8

jr_01f_4a65:
    ld h, c
    ld l, [hl]
    jr nz, @+$66

    ld [hl], d
    ld l, c
    db $76
    ld h, l
    ld bc, $6874
    ld h, l
    jr nz, jr_01f_4ad9

    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, @+$71

    ld l, [hl]
    ld [bc], a
    ld [hl], h
    ld l, b

jr_01f_4a80:
    ld h, l
    jr nz, jr_01f_4af7

    ld h, l

jr_01f_4a84:
    ld h, l
    jr nz, @+$75

jr_01f_4a87:
    ld l, b
    ld l, a
    ld [hl], h
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_4af3

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01f_4b03

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, @+$6e

    ld h, c

jr_01f_4a9c:
    ld l, [hl]
    ld h, h
    ld bc, $6e6f
    jr nz, jr_01f_4b17

jr_01f_4aa3:
    ld l, b
    ld h, l

jr_01f_4aa5:
    jr nz, jr_01f_4b0d

    ld h, c
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    ld l, $03
    nop
    ld d, h

jr_01f_4ab1:
    ld l, a
    jr nz, jr_01f_4b21

    ld l, a
    db $76
    ld h, l
    jr nz, @+$63

    jr nz, jr_01f_4b1d

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01f_4b34

    ld l, a
    ld bc, $2061
    ld [hl], b
    ld l, h
    ld h, c
    ld a, c

jr_01f_4ac8:
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_01f_4b41

jr_01f_4ace:
    ld [hl], b
    ld l, a
    ld [hl], h
    ld bc, $6661
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01f_4b41

jr_01f_4ad9:
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_4b4a

    ld [hl], h
    jr nz, jr_01f_4b4d

    ld l, [hl]
    ld [hl], h
    ld l, a
    ld [bc], a
    ld h, c
    ld l, [hl]
    jr nz, @+$77

    ld l, [hl]
    ld [hl], b
    ld l, h
    ld h, c
    ld a, c
    ld h, c
    ld h, d

jr_01f_4af3:
    ld l, h
    ld h, l
    jr nz, jr_01f_4b63

jr_01f_4af7:
    ld l, c
    ld h, l
    ld l, $03
    nop
    ld d, h
    ld l, a
    jr nz, jr_01f_4b6d

    ld l, c
    ld [hl], e
    ld [hl], e

jr_01f_4b03:
    jr nz, @+$71

    ld l, [hl]
    jr nz, jr_01f_4b69

    ld bc, $7773
    ld l, c
    ld l, [hl]

jr_01f_4b0d:
    ld h, a
    jr nz, jr_01f_4b72

    ld a, c
    jr nz, @+$6a

    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, c

jr_01f_4b17:
    ld l, [hl]
    ld h, a
    ld bc, $6874
    ld h, l

jr_01f_4b1d:
    jr nz, jr_01f_4b86

    ld [hl], d
    ld l, a

jr_01f_4b21:
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_01f_4b8f

    ld l, [hl]
    ld [bc], a
    ld h, [hl]
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01f_4b9e

    ld h, [hl]
    jr nz, jr_01f_4ba6

    ld l, b
    ld h, l

jr_01f_4b34:
    jr nz, jr_01f_4b98

    ld h, c
    ld l, h
    ld l, h
    ld l, $01
    ld c, c
    ld [hl], h
    jr nz, jr_01f_4bb6

    ld l, a
    ld l, [hl]

jr_01f_4b41:
    daa
    ld [hl], h
    jr nz, jr_01f_4bac

    ld l, a
    jr nz, jr_01f_4bae

    ld h, c
    ld [hl], d

jr_01f_4b4a:
    jr nz, jr_01f_4bb5

    ld h, [hl]

jr_01f_4b4d:
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01f_4bb7

    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld hl, $0003
    ld b, c
    jr nz, jr_01f_4bcf

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01f_4bd1

    ld h, [hl]

jr_01f_4b63:
    ld bc, $2032
    ld [hl], e
    ld [hl], h
    ld [hl], d

jr_01f_4b69:
    ld l, a
    ld l, e
    ld h, l
    ld [hl], e

jr_01f_4b6d:
    jr nz, jr_01f_4be4

    ld l, [hl]
    ld h, h
    ld h, l

jr_01f_4b72:
    ld [hl], d
    ld bc, $6170
    ld [hl], d
    jr nz, jr_01f_4be8

    ld l, [hl]
    jr nz, jr_01f_4bdd

    jr nz, jr_01f_4be6

    ld l, a
    ld l, h
    ld h, l
    ld l, $03
    nop
    ld d, b
    ld l, h

jr_01f_4b86:
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_4bee

    jr nz, jr_01f_4bf7

jr_01f_4b8f:
    ld l, a
    ld l, h
    ld h, l
    jr nz, jr_01f_4c03

    ld [hl], d
    ld bc, $6f63

jr_01f_4b98:
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    jr nz, jr_01f_4c07

jr_01f_4b9e:
    ld l, [hl]
    jr nz, jr_01f_4c15

    ld l, b
    ld h, l
    jr nz, jr_01f_4c18

    ld h, c

jr_01f_4ba6:
    ld l, l
    ld h, l
    ld bc, $756e
    ld l, l

jr_01f_4bac:
    ld h, d
    ld h, l

jr_01f_4bae:
    ld [hl], d
    jr nz, jr_01f_4c20

    ld h, [hl]
    jr nz, jr_01f_4c27

    ld [hl], h

jr_01f_4bb5:
    ld [hl], d

jr_01f_4bb6:
    ld l, a

jr_01f_4bb7:
    ld l, e
    ld h, l
    ld [hl], e
    ld [bc], a
    ld h, c
    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01f_4c36

    ld h, l
    ld [hl], h
    jr nz, jr_01f_4c37

    ld h, c
    ld [hl], d
    ld bc, $6373
    ld l, a
    ld [hl], d
    ld h, l

jr_01f_4bcf:
    ld l, $03

jr_01f_4bd1:
    nop
    ld b, c
    jr nz, jr_01f_4c49

    ld h, l
    ld h, e
    ld l, b
    ld l, [hl]
    ld l, c
    ld [hl], c
    ld [hl], l
    ld h, l

jr_01f_4bdd:
    jr nz, jr_01f_4c45

    ld l, a
    ld [hl], d
    ld bc, $6373

jr_01f_4be4:
    ld h, c
    ld [hl], h

jr_01f_4be6:
    ld [hl], h
    ld h, l

jr_01f_4be8:
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_4c61

jr_01f_4bee:
    ld h, c
    ld l, [hl]
    ld h, h
    ld bc, $726f
    jr nz, @+$66

    ld l, c

jr_01f_4bf7:
    ld [hl], d
    ld [hl], h
    jr nz, @+$76

    ld l, a
    jr nz, jr_01f_4c64

    ld [hl], d
    ld h, l
    ld h, l
    ld [bc], a
    ld [hl], h

jr_01f_4c03:
    ld l, b
    ld h, l
    jr nz, jr_01f_4c69

jr_01f_4c07:
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01f_4c72

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01f_4c72

    ld bc, $6168
    ld a, d

jr_01f_4c15:
    ld h, c
    ld [hl], d
    ld h, h

jr_01f_4c18:
    ld l, $20
    ld d, h
    ld l, b
    ld h, l
    ld bc, $6f73

jr_01f_4c20:
    ld l, h
    ld h, l
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_01f_4c9b

jr_01f_4c27:
    ld l, b
    ld h, l
    jr nz, jr_01f_4c7e

    ld d, a
    ld [bc], a
    ld l, b
    ld h, c
    ld [hl], e
    jr nz, @+$63

    jr nz, jr_01f_4ca4

    ld [hl], d
    ld l, a

jr_01f_4c36:
    ld l, d

jr_01f_4c37:
    ld h, l
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $7375
    ld h, l
    ld h, h
    jr nz, jr_01f_4caa

    ld l, a

jr_01f_4c45:
    ld [hl], d
    jr nz, jr_01f_4cbc

    ld l, b

jr_01f_4c49:
    ld l, c
    ld [hl], e
    ld bc, $7570
    ld [hl], d
    ld [hl], b
    ld l, a
    ld [hl], e
    ld h, l
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_4cc1

    ld [hl], d
    ld l, a
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01f_4cd1

jr_01f_4c61:
    ld h, c
    ld [hl], d
    ld [hl], h

jr_01f_4c64:
    ld bc, $666f
    jr nz, jr_01f_4cca

jr_01f_4c69:
    jr nz, jr_01f_4cce

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_01f_4cd8

    ld h, l
    ld h, c

jr_01f_4c72:
    ld h, h
    ld bc, $6874
    ld h, c
    ld [hl], h
    jr nz, jr_01f_4cde

    ld l, c
    ld [hl], d
    ld h, l
    ld h, e

jr_01f_4c7e:
    ld [hl], h
    ld l, h
    ld a, c
    ld [bc], a
    ld l, c
    ld l, l
    ld [hl], b
    ld h, c
    ld h, e
    ld [hl], h
    ld [hl], e
    jr nz, jr_01f_4cff

    ld l, b
    ld h, l
    ld bc, $6162
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01f_4d0b

    ld l, h
    ld l, c
    ld h, e

jr_01f_4c9b:
    ld h, l
    dec l
    ld [hl], e
    ld [hl], h
    ld a, c
    ld l, h
    ld h, l
    jr nz, jr_01f_4d17

jr_01f_4ca4:
    ld l, b
    ld l, a
    ld [hl], h
    ld bc, $6e69

jr_01f_4caa:
    jr nz, @+$79

    ld l, b
    ld l, c
    ld h, e
    ld l, b
    jr nz, jr_01f_4d26

    ld l, b
    ld h, l
    jr nz, @+$64

    ld h, c
    ld l, h
    ld l, h
    ld bc, $6c66

jr_01f_4cbc:
    ld l, c
    ld h, l
    ld [hl], e
    jr nz, jr_01f_4d35

jr_01f_4cc1:
    ld l, a
    jr nz, jr_01f_4d38

    ld l, b
    ld h, l
    jr nz, jr_01f_4d34

    ld h, l
    ld h, [hl]

jr_01f_4cca:
    ld [hl], h
    ld [bc], a
    ld h, d
    ld h, l

jr_01f_4cce:
    ld h, [hl]
    ld l, a
    ld [hl], d

jr_01f_4cd1:
    ld h, l
    jr nz, jr_01f_4d3c

    ld h, l
    ld h, c
    ld h, h
    ld l, c

jr_01f_4cd8:
    ld l, [hl]
    ld h, a
    ld bc, $6f74
    ld [hl], a

jr_01f_4cde:
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_01f_4d57

    ld l, b
    ld h, l
    jr nz, jr_01f_4d5b

    ld h, c
    ld [hl], d
    ld h, a
    ld h, l
    ld [hl], h
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_4d68

    ld h, l
    ld l, [hl]
    ld h, h
    ld h, l
    ld h, h
    jr nz, jr_01f_4d62

    ld [hl], d
    ld h, c
    ld [hl], e
    ld [hl], e

jr_01f_4cff:
    jr nz, jr_01f_4d75

    ld l, b
    ld h, c
    ld [hl], h
    ld bc, $7473
    ld [hl], d
    ld h, l
    ld [hl], h
    ld h, e

jr_01f_4d0b:
    ld l, b
    ld h, l
    ld [hl], e
    jr nz, jr_01f_4d76

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, @+$76

    ld l, b
    ld h, l

jr_01f_4d17:
    ld bc, $6574
    ld h, l
    jr nz, jr_01f_4d91

    ld l, a
    jr nz, jr_01f_4d94

    ld l, b
    ld h, l
    jr nz, jr_01f_4d8b

    ld [hl], d
    ld h, l

jr_01f_4d26:
    ld h, l
    ld l, [hl]
    ld l, $02
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01f_4d95

    ld h, c
    ld [hl], e
    ld l, c
    ld h, l

jr_01f_4d34:
    ld [hl], d

jr_01f_4d35:
    jr nz, jr_01f_4dab

    ld l, a

jr_01f_4d38:
    jr nz, @+$6a

    ld l, c
    ld [hl], h

jr_01f_4d3c:
    jr nz, jr_01f_4da4

    ld [hl], d
    ld l, a
    ld l, l
    ld bc, $6874
    ld h, l
    jr nz, jr_01f_4dad

    ld h, c
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    jr nz, jr_01f_4dc3

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_01f_4dbd

    ld [hl], h
    jr nz, jr_01f_4dc0

jr_01f_4d57:
    ld [hl], e
    ld bc, $6f74

jr_01f_4d5b:
    jr nz, @+$6a

    ld l, c
    ld [hl], h
    jr nz, jr_01f_4dc7

    ld [hl], d

jr_01f_4d62:
    ld l, a
    ld l, l
    jr nz, jr_01f_4dda

    ld l, b
    ld h, l

jr_01f_4d68:
    jr nz, jr_01f_4ddc

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01f_4dd6

    ld [hl], l

jr_01f_4d75:
    ld l, [hl]

jr_01f_4d76:
    ld l, e
    ld h, l
    ld [hl], d
    jr nz, jr_01f_4def

    ld l, b
    ld h, c
    ld [hl], h
    ld bc, $7369
    jr nz, jr_01f_4de5

    ld h, l
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    jr nz, @+$71

    ld [hl], d

jr_01f_4d8b:
    jr nz, jr_01f_4df6

    ld l, [hl]
    ld bc, $2061

jr_01f_4d91:
    ld h, [hl]
    ld h, c
    ld l, c

jr_01f_4d94:
    ld [hl], d

jr_01f_4d95:
    ld [hl], a
    ld h, c
    ld a, c
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01f_4e15

    ld l, a
    ld l, a
    ld h, h
    jr nz, @+$65

    ld l, h

jr_01f_4da4:
    ld [hl], l
    ld h, d
    jr nz, jr_01f_4e1c

    ld l, b
    ld h, c
    ld [hl], h

jr_01f_4dab:
    jr nz, jr_01f_4e10

jr_01f_4dad:
    ld h, c
    ld l, [hl]
    ld bc, $6562
    jr nz, @+$77

    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_01f_4e1f

    ld l, a
    ld [hl], d
    jr nz, @+$6a

jr_01f_4dbd:
    ld l, c
    ld [hl], h
    ld [hl], h

jr_01f_4dc0:
    ld l, c
    ld l, [hl]
    ld h, a

jr_01f_4dc3:
    ld bc, $6162
    ld l, h

jr_01f_4dc7:
    ld l, h
    ld [hl], e
    jr nz, jr_01f_4e3f

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01f_4e3c

    ld l, c
    ld h, l
    jr nz, jr_01f_4e43

    ld [hl], l
    ld [hl], h

jr_01f_4dd6:
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l

jr_01f_4dda:
    ld [bc], a
    ld [hl], h

jr_01f_4ddc:
    ld l, b
    ld h, l
    jr nz, @+$76

    ld h, l
    ld h, l
    jr nz, jr_01f_4e4b

    ld [hl], d

jr_01f_4de5:
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld l, $20
    ld bc, $6854
    ld l, c

jr_01f_4def:
    ld [hl], e
    jr nz, jr_01f_4e5b

    ld [hl], e
    jr nz, jr_01f_4e6a

    ld [hl], e

jr_01f_4df6:
    ld h, l
    ld h, h
    jr nz, jr_01f_4e6e

    ld l, a
    jr nz, jr_01f_4e6f

    ld h, l
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld bc, $7420
    ld l, a
    jr nz, @+$70

    ld l, a
    ld l, [hl]
    dec l
    ld h, h
    ld [hl], d
    ld l, c
    db $76
    ld h, l
    ld [hl], d

jr_01f_4e10:
    jr nz, jr_01f_4e89

    ld l, a
    ld l, a
    ld h, h

jr_01f_4e15:
    ld [hl], e
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01f_4e7e

jr_01f_4e1c:
    ld h, c
    ld l, h
    ld l, h

jr_01f_4e1f:
    jr nz, @+$79

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01f_4e94

    ld l, a
    ld bc, $7073
    ld l, c
    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01f_4e99

    ld l, h
    ld l, c
    ld h, l
    ld [hl], e
    ld bc, $6166
    ld [hl], d
    ld [hl], h

jr_01f_4e3c:
    ld l, b
    ld h, l
    ld [hl], d

jr_01f_4e3f:
    jr nz, jr_01f_4eb5

    ld l, b
    ld h, c

jr_01f_4e43:
    ld l, [hl]
    ld [bc], a
    ld l, [hl]
    ld l, a
    ld [hl], d
    ld l, l
    ld h, c
    ld l, h

jr_01f_4e4b:
    jr nz, jr_01f_4eb1

    ld [hl], l
    ld h, l
    jr nz, jr_01f_4ec5

    ld l, a
    ld bc, $7267
    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_01f_4ec9

    ld [hl], d

jr_01f_4e5b:
    jr nz, jr_01f_4ed4

    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    ld bc, $6f63
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_4ecc

jr_01f_4e6a:
    ld h, l
    ld [hl], h
    ld [hl], a
    ld h, l

jr_01f_4e6e:
    ld h, l

jr_01f_4e6f:
    ld l, [hl]
    ld [bc], a
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_01f_4ed9

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, @+$68

    ld h, c
    ld h, e
    ld h, l

jr_01f_4e7e:
    ld bc, $6e61
    ld h, h
    jr nz, jr_01f_4ee6

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01f_4ef8

jr_01f_4e89:
    ld l, [hl]
    ld bc, $6d69
    ld [hl], b
    ld h, c
    ld h, e
    ld [hl], h
    ld l, $03
    nop

jr_01f_4e94:
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_4f06

jr_01f_4e99:
    ld l, a
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_01f_4f0f

    ld h, [hl]
    ld bc, $7773
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_4f20

    ld l, b
    ld h, l
    ld bc, $6c63

jr_01f_4eb1:
    ld [hl], l
    ld h, d
    jr nz, jr_01f_4f2a

jr_01f_4eb5:
    ld [hl], b
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, h
    ld [hl], e
    ld [bc], a
    ld h, c
    ld h, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01f_4f2b

    ld l, c
    ld [hl], h

jr_01f_4ec5:
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a

jr_01f_4ec9:
    ld bc, $6874

jr_01f_4ecc:
    ld h, l
    jr nz, jr_01f_4f31

    ld h, c
    ld l, h
    ld l, h
    ld l, $03

jr_01f_4ed4:
    nop
    ld b, c
    jr nz, jr_01f_4f4f

    ld l, a

jr_01f_4ed9:
    ld [hl], d
    ld h, h
    jr nz, jr_01f_4f52

    ld [hl], e
    ld h, l
    ld h, h
    jr nz, @+$76

    ld l, a
    jr nz, jr_01f_4f5c

    ld h, c

jr_01f_4ee6:
    ld [hl], d
    ld l, [hl]
    jr nz, jr_01f_4eeb

    ld h, a

jr_01f_4eeb:
    ld l, a
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_01f_4f62

    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l

jr_01f_4ef8:
    jr nz, jr_01f_4f60

    ld h, c
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    jr nz, jr_01f_4f03

    ld [hl], h

jr_01f_4f03:
    ld l, b
    ld h, c
    ld [hl], h

jr_01f_4f06:
    jr nz, jr_01f_4f69

    jr nz, jr_01f_4f6c

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01f_4f77

jr_01f_4f0f:
    ld h, c
    ld [hl], e
    jr nz, jr_01f_4f75

    ld h, l
    ld h, l
    ld l, [hl]
    ld [bc], a
    ld l, b
    ld l, c
    ld [hl], h
    jr nz, jr_01f_4f85

    ld l, [hl]
    jr nz, jr_01f_4f93

    ld l, b

jr_01f_4f20:
    ld h, l
    ld l, c
    ld [hl], d
    jr nz, jr_01f_4f89

    ld l, c
    ld [hl], d
    ld h, l
    ld h, e
    ld [hl], h

jr_01f_4f2a:
    ld l, c

jr_01f_4f2b:
    ld l, a
    ld l, [hl]
    ld l, $01
    ld c, c
    ld h, [hl]

jr_01f_4f31:
    jr nz, jr_01f_4fac

    ld l, a
    ld [hl], l
    jr nz, jr_01f_4f9f

    ld h, l
    ld h, c
    ld [hl], d
    jr nz, @+$75

    ld l, a
    ld l, l
    ld h, l
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_01f_4fb7

    ld h, c
    ld a, c
    ld bc, $7469
    inc l
    jr nz, @+$79

    ld h, c
    ld [hl], h
    ld h, e

jr_01f_4f4f:
    ld l, b
    jr nz, jr_01f_4fc1

jr_01f_4f52:
    ld [hl], l
    ld [hl], h
    ld hl, $0003
    ld b, c
    ld l, [hl]
    jr nz, jr_01f_4fc4

    ld l, [hl]

jr_01f_4f5c:
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld [hl], l

jr_01f_4f60:
    ld l, l
    ld h, l

jr_01f_4f62:
    ld l, [hl]
    ld [hl], h
    ld bc, $7375
    ld h, l
    ld h, h

jr_01f_4f69:
    jr nz, jr_01f_4fdf

    ld l, a

jr_01f_4f6c:
    jr nz, jr_01f_4fd4

    ld l, c
    ld a, b
    jr nz, jr_01f_4fd3

    ld bc, $6162

jr_01f_4f75:
    ld l, h
    ld l, h

jr_01f_4f77:
    jr nz, jr_01f_4fe6

    ld h, c
    ld [hl], d
    ld l, e
    ld h, l
    ld [hl], d
    ld [bc], a
    ld l, a
    ld l, [hl]
    jr nz, jr_01f_4ff7

    ld l, b
    ld h, l

jr_01f_4f85:
    jr nz, jr_01f_4fee

    ld [hl], d
    ld h, l

jr_01f_4f89:
    ld h, l
    ld l, [hl]
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_4ff9

jr_01f_4f93:
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    jr nz, jr_01f_4fd2

    jr nz, @+$6a

    ld l, a
    ld l, h
    ld h, l
    ld [hl], e

jr_01f_4f9f:
    ld bc, $6e6f
    jr nz, jr_01f_5005

    ld l, [hl]
    jr nz, jr_01f_4fd8

    jr c, jr_01f_4fd6

    ld l, b
    ld l, a
    ld l, h

jr_01f_4fac:
    ld h, l
    ld bc, $6f63
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $03
    nop

jr_01f_4fb7:
    ld b, c
    jr nz, jr_01f_501e

    ld l, a
    jr nz, jr_01f_502c

    ld [hl], d
    jr nz, @+$66

    ld l, c

jr_01f_4fc1:
    ld h, l
    jr nz, jr_01f_5037

jr_01f_4fc4:
    ld l, b
    ld l, a
    ld [hl], h
    ld bc, $6874
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_01f_5035

    ld l, c

jr_01f_4fd2:
    ld h, [hl]

jr_01f_4fd3:
    ld h, [hl]

jr_01f_4fd4:
    ld l, c
    ld h, e

jr_01f_4fd6:
    ld [hl], l
    ld l, h

jr_01f_4fd8:
    ld [hl], h
    ld bc, $6574
    ld [hl], d
    ld [hl], d
    ld h, c

jr_01f_4fdf:
    ld l, c
    ld l, [hl]
    ld l, $03
    nop
    ld d, a
    ld l, b

jr_01f_4fe6:
    ld h, l
    ld l, [hl]
    jr nz, jr_01f_504b

    ld l, [hl]
    jr nz, @+$71

    ld [hl], b

jr_01f_4fee:
    ld [hl], b
    ld l, a
    ld l, [hl]
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld bc, $6461

jr_01f_4ff7:
    ld l, l
    ld l, c

jr_01f_4ff9:
    ld [hl], h
    ld [hl], e
    jr nz, jr_01f_5076

    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    ld bc, $616d

jr_01f_5005:
    ld l, e
    ld h, l
    jr nz, jr_01f_5082

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01f_507c

    ld h, l
    ld a, b
    ld [hl], h
    ld [bc], a
    ld [hl], b
    ld [hl], l
    ld [hl], h
    ld [hl], h
    jr nz, jr_01f_508f

    ld l, c
    ld [hl], h
    ld l, b
    ld l, a
    ld [hl], l
    ld [hl], h

jr_01f_501e:
    jr nz, jr_01f_5099

    ld l, a
    ld [hl], l
    ld bc, $6174
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_5094

    ld [hl], h

jr_01f_502c:
    ld l, $20
    ld c, c
    ld h, [hl]
    ld bc, $7469
    daa
    ld [hl], e

jr_01f_5035:
    jr nz, jr_01f_5098

jr_01f_5037:
    jr nz, jr_01f_50a0

    ld l, c
    ld l, l
    ld l, l
    ld h, l
    jr nz, jr_01f_50ae

    ld l, [hl]
    ld [bc], a
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_01f_5079

    ld [hl], d
    ld h, h
    jr nz, jr_01f_50bd

    ld [hl], h

jr_01f_504b:
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    inc l
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01f_50ca

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$6b

    ld [hl], e
    jr nz, jr_01f_5094

    ld hl, $0003
    ld d, h
    ld l, a
    jr nz, @+$73

    ld [hl], l
    ld l, c
    ld [hl], h
    jr nz, jr_01f_50e0

    ld [hl], d
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6f74
    jr nz, jr_01f_50e9

jr_01f_5076:
    ld l, c
    ld l, [hl]
    ld l, e

jr_01f_5079:
    jr nz, jr_01f_50ef

    ld l, b

jr_01f_507c:
    ld h, l
    jr nz, jr_01f_50e1

    ld h, c
    ld l, h
    ld l, h

jr_01f_5082:
    ld l, $01
    ld c, c
    ld l, [hl]
    jr nz, @+$4f

    ld h, c
    ld [hl], d
    ld l, c
    ld l, a
    jr nz, @+$49

    ld l, a

jr_01f_508f:
    ld l, h
    ld h, [hl]
    inc l
    ld [bc], a
    ld a, c

jr_01f_5094:
    ld l, a
    ld [hl], l
    jr nz, jr_01f_50f9

jr_01f_5098:
    ld [hl], l

jr_01f_5099:
    ld [hl], h
    ld l, a
    ld l, l
    ld h, c
    ld [hl], h
    ld l, c
    ld h, e

jr_01f_50a0:
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    ld bc, $6967
    db $76
    ld h, l
    jr nz, jr_01f_5120

    ld [hl], b
    jr nz, jr_01f_5117

jr_01f_50ae:
    ld h, [hl]
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld bc, $6373
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01f_50ee

    jr nz, jr_01f_5131

jr_01f_50bd:
    ld l, c
    ld l, l
    ld h, l
    ld [hl], e
    jr nz, jr_01f_5133

    ld h, c
    ld [hl], d
    ld l, $03
    nop
    ld d, h
    ld l, b

jr_01f_50ca:
    ld h, l
    jr nz, @+$64

    ld h, c
    ld h, a
    jr nz, jr_01f_5146

    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_01f_514a

    ld l, a
    ld bc, $6f68
    ld l, h
    ld h, h
    jr nz, jr_01f_5141

    ld l, h
    ld [hl], l

jr_01f_50e0:
    ld h, d

jr_01f_50e1:
    ld [hl], e
    jr nz, jr_01f_5145

    ld l, [hl]
    ld h, h
    ld bc, $746f

jr_01f_50e9:
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_01f_5153

jr_01f_50ee:
    ld [hl], c

jr_01f_50ef:
    ld [hl], l
    ld l, c
    ld [hl], b
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [bc], a
    ld [hl], a
    ld l, b

jr_01f_50f9:
    ld l, c
    ld l, h
    ld h, l
    jr nz, jr_01f_516e

    ld l, h
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$63

    ld bc, $6f72
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld l, $03
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01f_5189

    ld l, b
    ld h, l

jr_01f_5117:
    jr nz, jr_01f_518d

    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_5198

    ld l, a

jr_01f_5120:
    ld [hl], l
    ld bc, $6968
    ld [hl], h
    jr nz, jr_01f_519b

    ld l, b
    ld h, l
    jr nz, jr_01f_518d

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01f_51a7

    ld l, c

jr_01f_5131:
    ld [hl], h
    ld l, b

jr_01f_5133:
    ld hl, $4901
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01f_519c

    ld l, h
    ld [hl], e
    ld l, a
    jr nz, jr_01f_51a1

    ld l, [hl]

jr_01f_5141:
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l

jr_01f_5145:
    ld [hl], d

jr_01f_5146:
    ld [bc], a
    ld l, [hl]
    ld h, c
    ld l, l

jr_01f_514a:
    ld h, l
    jr nz, jr_01f_51b3

    ld l, a
    ld [hl], d
    jr nz, jr_01f_51b4

    ld l, a
    ld [hl], l

jr_01f_5153:
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld a, c
    ld bc, $6c63
    ld [hl], l
    ld h, d
    ld [hl], e
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, jr_01f_51ca

    ld l, a
    ld l, h
    ld h, [hl]
    ld bc, $6f63
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld [hl], e

jr_01f_516e:
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01f_51db

    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_01f_51e9

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    ld hl, $4920
    ld bc, $6163
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$64

jr_01f_5189:
    ld h, l
    ld l, h
    ld l, c
    ld h, l

jr_01f_518d:
    db $76
    ld h, l
    jr nz, jr_01f_520a

    ld l, a
    ld [hl], l
    ld bc, $6f64
    ld l, [hl]
    daa

jr_01f_5198:
    ld [hl], h
    jr nz, jr_01f_5206

jr_01f_519b:
    ld l, [hl]

jr_01f_519c:
    ld l, a
    ld [hl], a
    jr nz, jr_01f_5214

    ld l, b

jr_01f_51a1:
    ld h, c
    ld [hl], h
    ld hl, $0003
    ld b, c

jr_01f_51a7:
    jr nz, jr_01f_5210

    ld [hl], d
    ld h, c
    ld [hl], e
    ld [hl], e
    dec l
    ld h, e
    ld l, a
    db $76
    ld h, l
    ld [hl], d

jr_01f_51b3:
    ld h, l

jr_01f_51b4:
    ld h, h
    ld bc, $6f68
    ld l, h
    ld l, h
    ld l, a
    ld [hl], a
    jr nz, jr_01f_5227

    ld l, [hl]
    jr nz, jr_01f_5235

    ld l, b
    ld h, l
    ld bc, $7267
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_01f_51ca:
    inc l
    jr nz, jr_01f_5240

    ld l, c
    ld l, l
    ld l, c
    ld l, h
    ld h, c
    ld [hl], d
    ld [bc], a
    ld [hl], h
    ld l, a
    jr nz, jr_01f_5239

    jr nz, jr_01f_523c

    ld [hl], l

jr_01f_51db:
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    ld l, $20
    ld d, h
    ld l, b
    ld h, l
    ld bc, $7572
    ld l, h
    ld h, l

jr_01f_51e9:
    ld [hl], e
    jr nz, @+$66

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01f_5255

    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, c
    dec l
    ld bc, $6564
    ld [hl], d
    jr nz, @+$6b

    ld [hl], h
    jr nz, jr_01f_5261

    jr nz, jr_01f_526a

    ld h, c
    ld a, d
    ld h, c
    ld [hl], d

jr_01f_5206:
    ld h, h
    ld l, $03
    nop

jr_01f_520a:
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01f_5279

jr_01f_5210:
    ld [hl], e
    jr nz, jr_01f_5287

    ld l, b

jr_01f_5214:
    ld h, l
    jr nz, jr_01f_5278

    ld [hl], d
    ld h, l
    ld h, c
    ld bc, $616d
    ld h, h
    ld h, l
    jr nz, jr_01f_5286

    ld [hl], e
    ld [hl], b
    ld h, l
    ld h, e
    ld l, c
    ld h, c

jr_01f_5227:
    ld l, h
    ld l, h
    ld a, c
    ld bc, $6f66
    ld [hl], d
    jr nz, @+$72

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]

jr_01f_5235:
    ld h, a
    ld l, $03
    nop

jr_01f_5239:
    ld d, h
    ld l, b
    ld h, l

jr_01f_523c:
    jr nz, @+$76

    ld l, b
    ld l, c

jr_01f_5240:
    ld l, [hl]
    inc l
    jr nz, @+$69

    ld [hl], d
    ld h, c
    ld [hl], e
    ld [hl], e
    ld a, c
    jr nz, @+$63

    ld [hl], d
    ld h, l
    ld h, c
    ld bc, $7261
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_01f_5255:
    jr nz, jr_01f_52cb

    ld l, b
    ld h, l
    jr nz, @+$67

    ld h, h
    ld h, a
    ld h, l
    jr nz, jr_01f_52cf

    ld h, [hl]

jr_01f_5261:
    ld bc, $6874
    ld h, l
    jr nz, jr_01f_52ce

    ld [hl], d
    ld h, l
    ld h, l

jr_01f_526a:
    ld l, [hl]
    ld l, $02
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$63

    ld l, h
    ld [hl], e
    ld l, a
    jr nz, jr_01f_52db

jr_01f_5278:
    ld h, c

jr_01f_5279:
    ld l, h
    ld l, h
    ld h, l
    ld h, h
    ld bc, $6874
    ld h, l
    jr nz, @+$63

    ld [hl], b
    ld [hl], d
    ld l, a

jr_01f_5286:
    ld l, [hl]

jr_01f_5287:
    inc l
    jr nz, jr_01f_52ed

    ld l, a
    ld l, h
    ld l, h
    ld h, c
    ld [hl], d
    ld bc, $726f
    jr nz, jr_01f_52fa

    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$69

    ld [hl], d
    ld l, c
    ld [hl], b
    daa
    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $6e65
    ld h, h
    jr nz, jr_01f_531f

    ld h, [hl]
    jr nz, jr_01f_5327

    ld l, b
    ld h, l
    jr nz, jr_01f_531a

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6874
    ld h, c
    ld [hl], h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_01f_532c

    ld [hl], d
    ld h, c
    ld h, d
    ld hl, $0003

jr_01f_52cb:
    ld b, a
    ld [hl], d
    ld l, a

jr_01f_52ce:
    ld [hl], e

jr_01f_52cf:
    ld [hl], e
    jr nz, jr_01f_533b

    ld [hl], e
    jr nz, jr_01f_5349

    ld l, b
    ld h, l
    jr nz, @+$76

    ld l, a
    ld [hl], h

jr_01f_52db:
    ld h, c
    ld l, h
    ld bc, $6373
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01f_534a

    ld h, c
    ld [hl], d
    ld l, [hl]
    ld h, l
    ld h, h
    jr nz, jr_01f_534e

    ld a, c

jr_01f_52ed:
    ld bc, $2061
    ld [hl], b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    inc l
    jr nz, @+$70

    ld l, a

jr_01f_52fa:
    ld [hl], h
    ld [bc], a
    ld l, c
    ld l, [hl]
    ld h, e
    ld l, h
    ld [hl], l
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_5368

    ld bc, $6168
    ld l, [hl]
    ld h, h
    ld l, c
    ld h, e
    ld h, c
    ld [hl], b
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01f_5378

    ld [hl], l
    ld l, [hl]
    ld l, e
    ld h, l

jr_01f_531a:
    ld [hl], d
    jr nz, jr_01f_5391

    ld l, b
    ld h, c

jr_01f_531f:
    ld [hl], h
    ld bc, $7270
    ld l, a
    ld [hl], h
    ld h, l
    ld h, e

jr_01f_5327:
    ld [hl], h
    ld [hl], e
    jr nz, jr_01f_539f

    ld l, b

jr_01f_532c:
    ld h, l
    ld bc, $7267
    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_53a9

jr_01f_533b:
    ld [hl], l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, @+$71

    ld h, [hl]
    ld bc, $6f70
    ld l, c
    ld l, [hl]
    ld [hl], h

jr_01f_5349:
    ld [hl], e

jr_01f_534a:
    jr nz, jr_01f_53ad

    jr nz, jr_01f_53be

jr_01f_534e:
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    ld bc, $7573
    ld h, d
    ld [hl], h
    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld [hl], e
    jr nz, jr_01f_53c5

    ld [hl], d
    ld l, a
    ld l, l
    ld [bc], a
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01f_53db

jr_01f_5368:
    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01f_53e2

    ld l, a
    ld bc, $616d
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_01f_53df

    ld l, c

jr_01f_5378:
    ld [hl], e
    ld bc, $6261
    ld l, c
    ld l, h
    ld l, c
    ld [hl], h
    ld a, c
    jr nz, jr_01f_53f7

    ld l, a
    jr nz, jr_01f_53fa

    ld l, b
    ld h, c
    ld [hl], h
    ld [bc], a
    ld l, a
    ld h, [hl]
    jr nz, jr_01f_53ef

    jr nz, @+$75

    ld h, e

jr_01f_5391:
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    ld bc, $6c70
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    ld l, $03

jr_01f_539f:
    nop
    ld b, c
    ld l, [hl]
    jr nz, jr_01f_5413

    ld h, d
    ld [hl], e
    ld [hl], h
    ld h, c
    ld h, e

jr_01f_53a9:
    ld l, h
    ld h, l
    jr nz, jr_01f_5420

jr_01f_53ad:
    ld [hl], l
    ld h, e
    ld l, b
    jr nz, jr_01f_5413

    ld [hl], e
    ld bc, $2061
    ld h, d
    ld [hl], l
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    jr nz, jr_01f_542d

jr_01f_53be:
    ld [hl], d
    jr nz, jr_01f_5438

    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d

jr_01f_53c5:
    ld bc, $6168
    ld a, d
    ld h, c
    ld [hl], d
    ld h, h
    ld l, $02
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_5445

    ld [hl], l
    ld l, h
    ld h, l
    ld [hl], e
    jr nz, jr_01f_543d

    ld l, a
    ld l, [hl]

jr_01f_53db:
    daa
    ld [hl], h
    jr nz, jr_01f_5442

jr_01f_53df:
    ld l, a
    ld [hl], l
    ld l, [hl]

jr_01f_53e2:
    ld [hl], h
    ld bc, $7267
    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_01f_544d

    ld [hl], l
    ld l, [hl]
    ld l, e
    ld h, l

jr_01f_53ef:
    ld [hl], d
    ld [hl], e
    jr nz, jr_01f_5454

    ld [hl], e
    ld bc, $6168

jr_01f_53f7:
    ld a, d
    ld h, c
    ld [hl], d

jr_01f_53fa:
    ld h, h
    ld [hl], e
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_5474

    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, jr_01f_5478

    ld h, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $6c63
    ld [hl], l
    ld h, d

jr_01f_5413:
    jr nz, jr_01f_5489

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01f_5482

    ld l, c
    ld [hl], h
    ld [hl], e
    ld bc, $6874

jr_01f_5420:
    ld h, l
    jr nz, jr_01f_5485

    ld h, c
    ld l, h
    ld l, h
    ld l, $20
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    ld [bc], a

jr_01f_542d:
    ld h, e
    ld l, a
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_01f_54ac

jr_01f_5438:
    ld l, a
    ld bc, $6874
    ld h, l

jr_01f_543d:
    jr nz, @+$75

    ld l, b
    ld h, c
    ld h, [hl]

jr_01f_5442:
    ld [hl], h
    ld l, $03

jr_01f_5445:
    nop
    ld b, c
    ld l, [hl]
    jr nz, @+$63

    ld [hl], d
    ld h, l
    ld h, c

jr_01f_544d:
    jr nz, @+$71

    ld h, [hl]
    ld bc, $6e75
    ld [hl], h

jr_01f_5454:
    ld h, l
    ld l, [hl]
    ld h, h
    ld h, l
    ld h, h
    jr nz, jr_01f_54c7

    ld h, c
    ld l, [hl]
    ld h, h
    inc l
    ld bc, $6373
    ld h, c
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    ld h, l
    ld h, h
    jr nz, jr_01f_54e2

    ld l, c
    ld [hl], h
    ld l, b
    ld [bc], a
    ld l, h
    ld l, a
    ld [hl], a
    jr nz, @+$64

jr_01f_5474:
    ld [hl], l
    ld [hl], e
    ld l, b
    ld h, l

jr_01f_5478:
    ld [hl], e
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_54e4

    ld [hl], l

jr_01f_5482:
    ld [hl], b
    jr nz, jr_01f_54ee

jr_01f_5485:
    ld l, [hl]
    jr nz, jr_01f_54fc

    ld l, b

jr_01f_5489:
    ld h, l
    ld bc, $7267
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_01f_54f8

    ld l, a
    ld [hl], d
    jr nz, jr_01f_550d

    ld l, b
    ld l, c
    ld h, e
    ld l, b
    ld bc, $6874
    ld h, l
    jr nz, jr_01f_5510

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_01f_5509

    ld l, c
    ld l, l
    ld l, $02

jr_01f_54ac:
    ld b, c
    ld l, h
    ld [hl], e
    ld l, a
    inc l
    jr nz, jr_01f_5522

    ld l, [hl]
    ld h, l
    jr nz, jr_01f_5526

    ld h, [hl]
    jr nz, jr_01f_552e

    ld l, b
    ld h, l
    ld bc, $3831
    jr nz, jr_01f_5522

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], e
    jr nz, jr_01f_5529

jr_01f_54c7:
    ld h, l
    ld [hl], h
    ld [hl], a
    ld h, l
    ld h, l
    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, jr_01f_5547

    ld h, l
    ld h, l
    jr nz, jr_01f_5538

    ld l, [hl]
    ld h, h
    jr nz, jr_01f_553e

    ld [hl], l
    ld [hl], b
    ld l, $03
    nop
    ld b, a
    ld h, l

jr_01f_54e2:
    ld [hl], h
    ld [hl], h

jr_01f_54e4:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_555d

    ld l, b
    ld h, l
    jr nz, jr_01f_554f

    ld h, c

jr_01f_54ee:
    ld l, h
    ld l, h
    ld bc, $6e69
    ld [hl], h
    ld l, a
    jr nz, jr_01f_556b

    ld l, b

jr_01f_54f8:
    ld h, l
    jr nz, jr_01f_555e

    ld [hl], l

jr_01f_54fc:
    ld [hl], b
    jr nz, jr_01f_5568

    ld l, [hl]
    ld bc, $756a
    ld [hl], e
    ld [hl], h
    jr nz, jr_01f_5576

    ld l, [hl]
    ld h, l

jr_01f_5509:
    jr nz, jr_01f_557e

    ld [hl], h
    ld [hl], d

jr_01f_550d:
    ld l, a
    ld l, e
    ld h, l

jr_01f_5510:
    ld l, $02
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$77

    ld [hl], e
    ld [hl], l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    ld bc, $6168
    ld [hl], b

jr_01f_5522:
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld [hl], e

jr_01f_5526:
    jr nz, jr_01f_5597

    ld l, [hl]

jr_01f_5529:
    ld l, h
    ld a, c
    jr nz, jr_01f_559c

    ld l, [hl]

jr_01f_552e:
    ld bc, $6170
    ld [hl], d
    jr nz, jr_01f_5567

    jr nz, jr_01f_559e

    ld l, a
    ld l, h

jr_01f_5538:
    ld h, l
    ld [hl], e
    ld l, $03
    nop
    ld d, h

jr_01f_553e:
    ld l, a
    jr nz, @+$65

    ld l, a
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    ld [hl], h

jr_01f_5547:
    ld h, l
    jr nz, jr_01f_55ab

    ld bc, $6f68
    ld l, h
    ld h, l

jr_01f_554f:
    jr nz, jr_01f_55b3

    ld a, c
    jr nz, @+$75

    ld l, c
    ld l, [hl]
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6874

jr_01f_555d:
    ld h, l

jr_01f_555e:
    jr nz, jr_01f_55c2

    ld h, c
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld b, c

jr_01f_5567:
    ld l, [hl]

jr_01f_5568:
    ld l, a
    ld [hl], h
    ld l, b

jr_01f_556b:
    ld h, l
    ld [hl], d
    jr nz, jr_01f_55dd

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_01f_55da

    ld l, a
    ld [hl], d

jr_01f_5576:
    ld bc, $6874
    ld h, l
    jr nz, jr_01f_55ad

    jr c, @+$76

jr_01f_557e:
    ld l, b
    jr nz, jr_01f_55e9

    ld l, a
    ld l, h
    ld h, l
    ld bc, $6562
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_01f_55fd

    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01f_55fc

    ld [hl], h
    daa
    ld [hl], e
    ld [bc], a

jr_01f_5597:
    ld h, h
    ld l, a
    ld l, [hl]
    ld h, l
    inc l

jr_01f_559c:
    jr nz, jr_01f_5617

jr_01f_559e:
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_01f_5614

    ld l, [hl]
    ld bc, $6f79
    ld [hl], l
    ld [hl], d

jr_01f_55ab:
    jr nz, @+$79

jr_01f_55ad:
    ld h, c
    ld a, c
    jr nz, jr_01f_5619

    ld l, a
    ld l, l

jr_01f_55b3:
    ld h, l
    ld hl, $0003
    ld d, e
    ld l, b
    ld l, a
    ld l, a
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_5627

    ld l, c

jr_01f_55c2:
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld bc, $6e6f
    jr nz, jr_01f_563e

    ld l, b
    ld h, l
    jr nz, jr_01f_5642

    ld h, l
    ld h, l
    jr nz, jr_01f_5645

    ld l, b
    ld l, a
    ld [hl], h
    ld l, $01
    ld b, [hl]
    ld [hl], d
    ld l, a

jr_01f_55da:
    ld l, l
    jr nz, @+$4a

jr_01f_55dd:
    ld l, a
    ld l, h
    ld h, l
    jr nz, jr_01f_5614

    inc l
    jr nz, jr_01f_5659

    ld l, b
    ld h, l
    ld [bc], a
    ld [hl], a

jr_01f_55e9:
    ld l, c
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld [hl], d
    jr nz, jr_01f_565f

    ld h, [hl]
    jr nz, jr_01f_5667

    ld l, b
    ld h, l
    ld bc, $616c
    ld [hl], e
    ld [hl], h
    jr nz, jr_01f_5664

jr_01f_55fc:
    ld l, a

jr_01f_55fd:
    ld l, h
    ld h, l
    jr nz, jr_01f_5668

    ld h, l
    ld [hl], h
    ld [hl], e
    ld bc, $6874
    ld h, l
    jr nz, jr_01f_5672

    ld l, a
    ld l, [hl]
    ld l, a
    ld [hl], d
    ld l, $03
    nop
    ld b, [hl]
    ld l, a
    ld [hl], d

jr_01f_5614:
    jr nz, jr_01f_5688

    ld l, c

jr_01f_5617:
    ld h, a
    ld l, b

jr_01f_5619:
    ld [hl], h
    ld l, c
    ld h, l
    ld [hl], e
    inc l
    jr nz, jr_01f_5689

    ld [hl], h
    daa
    ld [hl], e
    ld bc, $6877
    ld h, l

jr_01f_5627:
    ld l, [hl]
    jr nz, jr_01f_569e

    ld l, b
    ld h, l
    jr nz, jr_01f_5690

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01f_5699

    ld l, h
    ld l, c
    ld h, l
    ld [hl], e
    ld bc, $6166
    ld [hl], d
    jr nz, jr_01f_56b1

    ld l, a

jr_01f_563e:
    jr nz, jr_01f_56b4

    ld l, b
    ld h, l

jr_01f_5642:
    jr nz, jr_01f_56b0

    ld h, l

jr_01f_5645:
    ld h, [hl]
    ld [hl], h
    jr nz, jr_01f_56b8

    ld h, [hl]
    ld [bc], a
    ld l, c
    ld [hl], h
    ld [hl], e
    jr nz, jr_01f_56b9

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld h, h
    ld h, l
    ld h, h
    jr nz, jr_01f_56c9

jr_01f_5659:
    ld h, c
    ld [hl], h
    ld l, b
    ld l, $01
    ld b, [hl]

jr_01f_565f:
    ld l, a
    ld [hl], d
    jr nz, jr_01f_56cf

    ld h, l

jr_01f_5664:
    ld h, [hl]
    ld [hl], h
    ld l, c

jr_01f_5667:
    ld h, l

jr_01f_5668:
    ld [hl], e
    inc l
    jr nz, jr_01f_56e0

    ld l, b
    ld h, l
    ld bc, $6162
    ld l, h

jr_01f_5672:
    ld l, h
    jr nz, @+$68

    ld l, h
    ld l, c
    ld h, l
    ld [hl], e
    jr nz, jr_01f_56e1

    ld h, c
    ld [hl], d
    jr nz, jr_01f_56f1

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld l, $03
    nop
    ld d, h
    ld l, b

jr_01f_5688:
    ld h, l

jr_01f_5689:
    jr nz, jr_01f_56f8

    ld l, a
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h

jr_01f_5690:
    jr nz, jr_01f_5706

    ld l, b
    ld h, l
    jr nz, @+$65

    ld l, h
    ld [hl], l
    ld h, d

jr_01f_5699:
    ld bc, $6968
    ld [hl], h
    ld [hl], e

jr_01f_569e:
    jr nz, jr_01f_5714

    ld l, b
    ld h, l
    jr nz, jr_01f_5706

    ld h, c
    ld l, h
    ld l, h
    ld l, $20
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_5710

    ld h, c
    ld l, h

jr_01f_56b0:
    ld l, h

jr_01f_56b1:
    ld bc, $6977

jr_01f_56b4:
    ld l, h
    ld l, h
    jr nz, jr_01f_571e

jr_01f_56b8:
    ld l, h

jr_01f_56b9:
    ld a, c
    jr nz, jr_01f_5728

    ld h, l
    ld h, [hl]
    ld [hl], h
    jr nz, @+$71

    ld [hl], d
    jr nz, @+$74

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    inc l

jr_01f_56c9:
    ld [bc], a
    ld h, h
    ld h, l
    ld [hl], b
    ld h, l
    ld l, [hl]

jr_01f_56cf:
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_5744

    ld l, [hl]
    jr nz, jr_01f_574c

    ld l, b
    ld h, l
    ld bc, $6568
    ld h, c
    ld h, h
    daa

jr_01f_56e0:
    ld [hl], e

jr_01f_56e1:
    jr nz, jr_01f_5753

    ld h, c
    ld [hl], h
    ld l, b
    jr nz, jr_01f_5749

    ld l, [hl]
    ld h, h
    ld bc, $6964
    ld [hl], d
    ld h, l
    ld h, e
    ld [hl], h

jr_01f_56f1:
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $03
    nop
    ld b, c

jr_01f_56f8:
    jr nz, @+$75

    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_5769

    ld l, [hl]
    jr nz, jr_01f_577a

    ld l, b
    ld l, c
    ld h, e

jr_01f_5706:
    ld l, b
    ld bc, $6874
    ld h, l
    jr nz, jr_01f_5770

    ld l, h
    ld [hl], l
    ld h, d

jr_01f_5710:
    jr nz, jr_01f_577a

    ld h, l
    ld h, c

jr_01f_5714:
    ld h, h
    jr nz, jr_01f_577d

    ld h, c
    ld l, h
    ld l, h
    ld [hl], e
    ld bc, $7266

jr_01f_571e:
    ld l, a
    ld l, l
    jr nz, jr_01f_5796

    ld l, b
    ld h, l
    jr nz, jr_01f_578f

    ld l, [hl]
    ld [hl], e

jr_01f_5728:
    ld l, c
    ld h, h
    ld h, l
    ld [bc], a
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, @+$76

    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01f_57a6

    ld [hl], l
    ld [hl], h
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, h
    ld bc, $6e6f
    jr nz, jr_01f_57ab

    ld l, l
    ld [hl], b

jr_01f_5744:
    ld h, c
    ld h, e
    ld [hl], h
    ld l, $03

jr_01f_5749:
    nop
    ld d, b
    ld [hl], l

jr_01f_574c:
    ld [hl], d
    ld [hl], b
    ld l, a
    ld [hl], e
    ld h, l
    ld l, h
    ld a, c

jr_01f_5753:
    jr nz, @+$6a

    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6874
    ld h, l
    jr nz, jr_01f_57c3

    ld h, c
    ld l, h
    ld l, h
    jr nz, @+$6e

    ld h, l
    ld h, [hl]
    ld [hl], h

jr_01f_5769:
    jr nz, jr_01f_57da

    ld [hl], d
    ld bc, $6972
    ld h, a

jr_01f_5770:
    ld l, b
    ld [hl], h
    jr nz, jr_01f_57eb

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01f_57da

    ld [bc], a

jr_01f_577a:
    ld l, b
    ld l, a
    ld l, a

jr_01f_577d:
    ld l, e
    jr nz, jr_01f_57ef

    ld [hl], d
    jr nz, jr_01f_57f6

    ld l, h
    ld l, c
    ld h, e
    ld h, l
    jr nz, jr_01f_57fd

    ld l, a
    ld bc, $7661
    ld l, a
    ld l, c

jr_01f_578f:
    ld h, h
    jr nz, jr_01f_57f3

    ld l, [hl]
    jr nz, jr_01f_5804

    ld h, d

jr_01f_5796:
    ld [hl], e
    ld [hl], h
    ld h, c
    ld h, e
    ld l, h
    ld h, l
    ld bc, $6e61
    ld h, h
    jr nz, jr_01f_5809

    ld h, l
    ld [hl], h
    jr nz, jr_01f_5815

jr_01f_57a6:
    ld l, [hl]
    jr nz, jr_01f_5810

    ld [hl], d
    ld h, l

jr_01f_57ab:
    ld h, l
    ld l, [hl]
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01f_5820

    ld h, l
    ld [hl], h
    ld h, c
    ld l, h
    jr nz, jr_01f_581c

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $7375
    ld h, l
    ld h, h
    jr nz, jr_01f_5837

jr_01f_57c3:
    ld l, a
    jr nz, jr_01f_582e

    ld l, c
    ld [hl], h
    jr nz, jr_01f_583e

    ld l, b
    ld h, l
    ld bc, $6162
    ld l, h
    ld l, h
    ld l, $20
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_5844

    ld l, a
    ld [hl], a

jr_01f_57da:
    ld h, l
    ld [hl], d
    ld [bc], a
    ld l, c
    ld [hl], h
    ld [hl], e
    jr nz, jr_01f_5850

    ld [hl], l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    inc l
    jr nz, jr_01f_585e

    ld l, b

jr_01f_57eb:
    ld h, l
    ld bc, $7267

jr_01f_57ef:
    ld h, l
    ld h, c
    ld [hl], h
    ld h, l

jr_01f_57f3:
    ld [hl], d
    jr nz, jr_01f_585f

jr_01f_57f6:
    ld [hl], h
    ld [hl], e
    ld bc, $6964
    ld [hl], e
    ld [hl], h

jr_01f_57fd:
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld l, $03
    nop

jr_01f_5804:
    ld c, a
    ld l, [hl]
    jr nz, jr_01f_587c

    ld l, b

jr_01f_5809:
    ld h, l
    ld [hl], e
    ld h, l
    jr nz, jr_01f_5876

    ld h, c
    ld a, d

jr_01f_5810:
    ld h, c
    ld [hl], d
    ld h, h
    ld [hl], e
    inc l

jr_01f_5815:
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01f_587e

    ld h, c

jr_01f_581c:
    ld l, [hl]
    jr nz, jr_01f_5883

    ld [hl], d

jr_01f_5820:
    ld l, a
    ld [hl], b
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $6162
    ld l, h
    ld l, h
    jr nz, @+$34

jr_01f_582e:
    jr nz, jr_01f_5893

    ld l, h
    ld [hl], l
    ld h, d
    dec l
    ld l, h
    ld h, l
    ld l, [hl]

jr_01f_5837:
    ld h, a
    ld [hl], h
    ld l, b
    ld [hl], e
    ld [bc], a
    ld h, [hl]
    ld [hl], d

jr_01f_583e:
    ld l, a
    ld l, l
    jr nz, jr_01f_58b9

    ld l, b
    ld h, l

jr_01f_5844:
    ld [hl], d
    ld h, l
    jr nz, jr_01f_58b1

    ld [hl], h
    ld bc, $7264
    ld l, a
    ld [hl], b
    ld [hl], b
    ld h, l

jr_01f_5850:
    ld h, h
    ld l, $20
    ld b, c
    ld l, h
    ld l, h
    jr nz, jr_01f_58c7

    ld h, [hl]
    ld bc, $614d
    ld [hl], d
    ld l, c

jr_01f_585e:
    ld l, a

jr_01f_585f:
    jr nz, @+$49

    ld l, a
    ld l, h
    ld h, [hl]
    daa
    ld [hl], e
    jr nz, jr_01f_58df

    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    ld [bc], a
    ld l, b
    ld h, c
    ld a, d
    ld h, c
    ld [hl], d
    ld h, h
    ld [hl], e
    jr nz, jr_01f_58d7

jr_01f_5876:
    ld [hl], d
    ld h, l
    jr nz, jr_01f_58e6

    ld h, c
    ld [hl], h

jr_01f_587c:
    ld h, l
    ld [hl], d

jr_01f_587e:
    ld h, c
    ld l, h
    ld l, $03
    nop

jr_01f_5883:
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01f_58fd

    ld l, b
    ld h, l
    jr nz, @+$65

    ld l, a
    ld l, [hl]
    ld h, h
    ld l, c
    ld [hl], h
    ld l, c

jr_01f_5893:
    ld l, a
    ld l, [hl]
    jr nz, jr_01f_5906

    ld h, [hl]
    ld bc, $6874
    ld h, l
    jr nz, jr_01f_5911

    ld [hl], b
    ld l, a
    ld [hl], h
    jr nz, jr_01f_591a

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $6162
    ld l, h
    ld l, h

jr_01f_58b1:
    jr nz, jr_01f_591f

    ld h, c
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $20

jr_01f_58b9:
    ld c, h
    ld [hl], l
    ld h, e
    ld l, e
    jr nz, jr_01f_5927

    ld h, c
    ld [hl], e
    ld [bc], a
    ld h, c
    jr nz, @+$6e

    ld l, a
    ld [hl], h

jr_01f_58c7:
    jr nz, jr_01f_593d

    ld l, a
    jr nz, jr_01f_5930

    ld l, a
    jr nz, jr_01f_5946

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01f_5935

    ld bc, $6f67

jr_01f_58d7:
    ld l, a
    ld h, h
    jr nz, jr_01f_5947

    ld l, c
    ld h, l
    ld l, $03

jr_01f_58df:
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_5955

    ld h, c

jr_01f_58e6:
    ld [hl], h
    ld l, b
    jr nz, jr_01f_5959

    ld h, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $6162
    ld l, h
    ld l, h
    inc l
    jr nz, @+$77

    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_01f_5969

    ld l, a

jr_01f_58fd:
    ld [hl], e
    ld [hl], h
    ld l, h
    ld a, c
    ld bc, $6e69
    jr nz, jr_01f_5978

jr_01f_5906:
    ld h, l
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01f_5984

    ld l, a

jr_01f_5911:
    ld [bc], a
    ld [hl], b
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    inc l

jr_01f_591a:
    jr nz, @+$63

    ld [hl], e
    jr nz, @+$6b

jr_01f_591f:
    ld l, [hl]
    inc l
    ld bc, $4922
    jr nz, jr_01f_5989

    ld h, c

jr_01f_5927:
    ld l, [hl]
    jr nz, jr_01f_599d

    ld h, l
    ld h, l
    jr nz, jr_01f_59a2

    ld l, b
    ld h, l

jr_01f_5930:
    ld bc, $696c
    ld l, [hl]
    ld h, l

jr_01f_5935:
    ld hl, $0322
    nop
    ld b, c
    jr nz, jr_01f_59af

    ld h, l

jr_01f_593d:
    ld h, c
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    jr nz, jr_01f_59a7

    ld l, a
    ld [hl], l

jr_01f_5946:
    ld [hl], d

jr_01f_5947:
    ld [hl], e
    ld h, l
    ld l, $01
    ld b, c
    ld l, h
    ld [hl], e
    ld l, a
    jr nz, jr_01f_59c4

    ld l, h
    ld h, c
    ld l, [hl]
    ld h, a

jr_01f_5955:
    jr nz, jr_01f_59bd

    ld l, a
    ld [hl], d

jr_01f_5959:
    jr nz, jr_01f_59bc

    ld bc, $6f67
    ld l, h
    ld h, [hl]
    jr nz, @+$65

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $03

jr_01f_5969:
    nop
    ld b, c
    jr nz, jr_01f_59e0

    ld l, b
    ld l, a
    ld [hl], h
    jr nz, jr_01f_59e6

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$75

    ld l, h

jr_01f_5978:
    ld l, a
    ld [hl], a
    ld l, h
    ld a, c
    ld bc, $6c66
    ld l, c
    ld h, l
    ld [hl], e
    jr nz, jr_01f_59ec

jr_01f_5984:
    ld l, c
    ld h, a
    ld l, b
    jr nz, jr_01f_59f2

jr_01f_5989:
    ld l, [hl]
    ld [hl], h
    ld l, a
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $6961
    ld [hl], d
    ld l, $20
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01f_59fd

    ld l, [hl]

jr_01f_599d:
    jr nz, jr_01f_5a00

    ld h, h
    db $76
    ld h, c

jr_01f_59a2:
    ld l, [hl]
    ld h, e
    ld h, l
    ld h, h
    ld [bc], a

jr_01f_59a7:
    ld [hl], h
    ld h, l
    ld h, e
    ld l, b
    ld l, [hl]
    ld l, c
    ld [hl], c
    ld [hl], l

jr_01f_59af:
    ld h, l
    inc l
    jr nz, @+$64

    ld [hl], l
    ld [hl], h
    jr nz, @+$63

    ld bc, $696d
    ld [hl], e
    dec l

jr_01f_59bc:
    ld [hl], e

jr_01f_59bd:
    ld l, b
    ld l, a
    ld [hl], h
    jr nz, @+$65

    ld h, c
    ld l, [hl]

jr_01f_59c4:
    jr nz, @+$6a

    ld [hl], l
    ld [hl], d
    ld [hl], h
    ld hl, $0003
    ld c, h
    ld l, a
    ld h, [hl]
    ld [hl], h
    jr nz, @+$6b

    ld [hl], e
    jr nz, jr_01f_5a49

    ld l, b
    ld h, l
    jr nz, jr_01f_5a3a

    ld l, [hl]
    ld h, a
    ld l, h
    ld h, l
    ld bc, $666f

jr_01f_59e0:
    jr nz, jr_01f_5a43

    jr nz, jr_01f_5a47

    ld l, h
    ld [hl], l

jr_01f_59e6:
    ld h, d
    daa
    ld [hl], e
    jr nz, jr_01f_5a51

    ld h, c

jr_01f_59ec:
    ld h, e
    ld h, l
    ld l, $03
    nop
    ld b, c

jr_01f_59f2:
    ld l, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, @+$70

    ld h, c
    ld l, l
    ld h, l

jr_01f_59fd:
    jr nz, jr_01f_5a65

    ld l, a

jr_01f_5a00:
    ld [hl], d
    ld bc, $2061
    ld [hl], b
    ld h, c
    ld [hl], d
    jr nz, jr_01f_5a3e

    jr nz, @+$6a

    ld l, a
    ld l, h
    ld h, l
    ld l, $02
    ld c, h
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_5a7f

    ld [hl], e
    jr nz, @+$63

    ld l, h
    ld [hl], e
    ld l, a
    jr nz, jr_01f_5a93

    ld [hl], e
    ld h, l
    ld h, h
    ld bc, $6f74
    jr nz, @+$66

    ld h, l
    ld [hl], e
    ld h, e
    ld [hl], d
    ld l, c
    ld h, d
    ld h, l
    jr nz, jr_01f_5a90

    jr nz, jr_01f_5a99

    ld l, a
    ld l, h
    ld h, l
    inc l
    ld bc, $696c
    ld l, e
    ld h, l

jr_01f_5a3a:
    jr nz, jr_01f_5a9d

    jr nz, jr_01f_5aaa

jr_01f_5a3e:
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_5ab3

jr_01f_5a43:
    ld h, c
    ld [hl], d
    jr nz, jr_01f_5a7b

jr_01f_5a47:
    ld l, $03

jr_01f_5a49:
    nop
    ld d, h
    ld h, l
    ld [hl], d
    ld l, l
    jr nz, jr_01f_5ab6

    ld l, a

jr_01f_5a51:
    ld [hl], d
    jr nz, jr_01f_5ac8

    ld l, b
    ld h, l
    jr nz, @+$34

    inc l
    jr nz, @+$35

    ld bc, $6e61
    ld h, h
    jr nz, jr_01f_5a95

    jr nz, jr_01f_5acc

    ld [hl], d
    ld l, a

jr_01f_5a65:
    ld l, [hl]
    ld [hl], e
    ld l, $20
    ld d, h
    ld l, b
    ld h, l
    ld bc, $6f6c
    ld l, [hl]
    ld h, a
    inc l
    jr nz, jr_01f_5ae1

    ld l, c
    ld h, h
    ld h, h
    ld l, h
    ld h, l
    jr nz, jr_01f_5adc

jr_01f_5a7b:
    ld l, [hl]
    ld h, h
    ld [bc], a
    ld [hl], e

jr_01f_5a7f:
    ld l, b
    ld l, a
    ld [hl], d
    ld [hl], h
    jr nz, @+$6b

    ld [hl], d
    ld l, a
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01f_5aec

    ld [hl], d
    ld h, l
    ld bc, $616e

jr_01f_5a90:
    ld l, l
    ld h, l
    ld h, h

jr_01f_5a93:
    jr nz, jr_01f_5afb

jr_01f_5a95:
    ld l, a
    ld [hl], d
    jr nz, jr_01f_5b0d

jr_01f_5a99:
    ld l, b
    ld h, l
    ld l, c
    ld [hl], d

jr_01f_5a9d:
    ld bc, $7264
    ld l, c
    db $76
    ld h, l
    jr nz, jr_01f_5b09

    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]

jr_01f_5aaa:
    ld h, e
    ld h, l
    ld [hl], e
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01f_5b1f

jr_01f_5ab3:
    ld l, a
    ld [hl], e
    ld [hl], h

jr_01f_5ab6:
    jr nz, @+$64

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01f_5b26

    ld [hl], e
    jr nz, jr_01f_5b21

    ld bc, $6162
    ld l, h
    ld l, h
    jr nz, jr_01f_5b3b

    ld l, b

jr_01f_5ac8:
    ld h, c
    ld [hl], h
    jr nz, jr_01f_5b2f

jr_01f_5acc:
    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    ld bc, $6562
    jr nz, jr_01f_5b3b

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld hl, $4920

jr_01f_5adc:
    ld l, [hl]
    ld [bc], a
    ld c, l
    ld h, c
    ld [hl], d

jr_01f_5ae1:
    ld l, c
    ld l, a
    jr nz, jr_01f_5b2c

    ld l, a
    ld l, h
    ld h, [hl]
    inc l
    jr nz, jr_01f_5b64

    ld l, a

jr_01f_5aec:
    ld [hl], l
    ld bc, $6163
    ld l, [hl]
    jr nz, jr_01f_5b54

    ld l, h
    ld [hl], a
    ld h, c
    ld a, c
    ld [hl], e
    jr nz, jr_01f_5b60

    ld l, c

jr_01f_5afb:
    ld l, [hl]
    ld h, h
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01f_5b66

    ld h, c
    ld l, h
    ld l, h
    ld l, $03

jr_01f_5b09:
    nop
    ld d, h
    ld l, b
    ld h, l

jr_01f_5b0d:
    jr nz, @+$71

    ld h, d
    ld l, d
    ld h, l
    ld h, e
    ld [hl], h
    jr nz, jr_01f_5b8b

    ld [hl], e
    ld h, l
    ld h, h
    jr nz, @+$76

    ld l, a
    ld bc, $616d

jr_01f_5b1f:
    ld [hl], d
    ld l, e

jr_01f_5b21:
    jr nz, jr_01f_5b85

    ld h, c
    ld l, h
    ld l, h

jr_01f_5b26:
    jr nz, jr_01f_5b98

    ld l, a
    ld [hl], e
    ld l, c
    ld [hl], h

jr_01f_5b2c:
    ld l, c
    ld l, a
    ld l, [hl]

jr_01f_5b2f:
    ld bc, $6e6f
    jr nz, jr_01f_5ba8

    ld l, b
    ld h, l
    jr nz, @+$69

    ld [hl], d
    ld h, l
    ld h, l

jr_01f_5b3b:
    ld l, [hl]
    ld l, $20
    ld b, c
    ld l, h
    ld [hl], e
    ld l, a
    inc l
    ld [bc], a
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_01f_5bc4

    ld l, b
    ld l, a
    jr nz, jr_01f_5bb4

    ld l, b
    ld h, l
    ld h, e

jr_01f_5b54:
    ld l, e
    ld [hl], e
    ld bc, $706f
    ld [hl], b
    ld l, a
    ld l, [hl]
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [hl], e

jr_01f_5b60:
    daa
    jr nz, jr_01f_5bd6

    ld h, e

jr_01f_5b64:
    ld l, a
    ld [hl], d

jr_01f_5b66:
    ld h, l
    ld [hl], e
    ld bc, $6e69
    jr nz, jr_01f_5bce

    jr nz, jr_01f_5bd2

    ld l, a
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
    ld b, c
    jr nz, jr_01f_5be2

    ld l, a
    ld l, l
    ld [hl], b
    ld h, l
    ld [hl], h
    ld l, c

jr_01f_5b85:
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_01f_5bed

jr_01f_5b8b:
    ld h, l
    dec l
    ld bc, $7774
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_01f_5bc7

    jr nz, jr_01f_5c07

    ld l, h

jr_01f_5b98:
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    ld [hl], e
    ld bc, $6f74
    jr nz, jr_01f_5c15

    ld h, l
    ld h, l
    jr nz, jr_01f_5c1d

    ld l, b
    ld l, a

jr_01f_5ba8:
    jr nz, jr_01f_5c0d

    ld h, c
    ld l, [hl]
    ld [bc], a
    ld [hl], a
    ld l, c
    ld l, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l

jr_01f_5bb4:
    jr nz, jr_01f_5c23

    ld l, a
    ld [hl], e
    ld [hl], h
    ld bc, $6f68
    ld l, h
    ld h, l
    ld [hl], e
    ld l, $20
    ld d, h
    ld l, b
    ld h, l

jr_01f_5bc4:
    jr nz, @+$6f

    ld h, c

jr_01f_5bc7:
    ld [hl], h
    ld h, e
    ld l, b
    ld bc, $6e65
    ld h, h

jr_01f_5bce:
    ld [hl], e
    jr nz, @+$63

    ld [hl], e

jr_01f_5bd2:
    jr nz, jr_01f_5c47

    ld l, a
    ld l, a

jr_01f_5bd6:
    ld l, [hl]
    jr nz, jr_01f_5c3a

    ld [hl], e
    ld [bc], a
    ld h, c
    jr nz, jr_01f_5c55

    ld l, c
    ld l, [hl]
    ld l, [hl]
    ld h, l

jr_01f_5be2:
    ld [hl], d
    jr nz, jr_01f_5c4e

    ld [hl], e
    jr nz, jr_01f_5c4c

    ld h, l
    ld h, e
    ld l, c
    ld h, h
    ld h, l

jr_01f_5bed:
    ld h, h
    inc l
    ld bc, $7665
    ld h, l
    ld l, [hl]
    jr nz, @+$6b

    ld h, [hl]
    jr nz, jr_01f_5c6d

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_01f_5c60

    ld [hl], d
    ld h, l
    ld bc, $6e75
    ld [hl], b
    ld l, h
    ld h, c

jr_01f_5c07:
    ld a, c
    ld h, l
    ld h, h
    jr nz, jr_01f_5c74

    ld l, a

jr_01f_5c0d:
    ld l, h
    ld h, l
    ld [hl], e
    ld l, $03
    nop
    ld c, h
    ld l, c

jr_01f_5c15:
    ld l, [hl]
    ld h, l
    jr nz, jr_01f_5c8e

    ld [hl], b
    jr nz, jr_01f_5c90

    ld l, b

jr_01f_5c1d:
    ld l, c
    ld [hl], e
    jr nz, @+$63

    ld [hl], d
    ld h, l

jr_01f_5c23:
    ld h, c
    ld bc, $6e6f
    jr nz, jr_01f_5c9d

    ld l, b
    ld h, l
    jr nz, jr_01f_5c9d

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld bc, $6167
    ld [hl], l
    ld h, a
    ld h, l
    jr nz, jr_01f_5cad

    ld l, a

jr_01f_5c3a:
    jr nz, jr_01f_5ca4

    ld l, c
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    ld [bc], a
    ld h, d
    ld h, c
    ld l, h
    ld l, h

jr_01f_5c47:
    jr nz, jr_01f_5cac

    ld l, a
    ld [hl], d
    ld [hl], d

jr_01f_5c4c:
    ld h, l
    ld h, e

jr_01f_5c4e:
    ld [hl], h
    ld l, h
    ld a, c
    ld l, $01
    ld b, c
    ld l, h

jr_01f_5c55:
    ld [hl], e
    ld l, a
    jr nz, @+$65

    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld h, h
    jr nz, jr_01f_5cd4

jr_01f_5c60:
    ld l, b
    ld h, l
    ld bc, $6968
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_5ce6

    ld l, a

jr_01f_5c6d:
    ld l, [hl]
    ld h, l
    ld l, $03
    nop
    ld d, e
    ld l, a

jr_01f_5c74:
    ld l, l
    ld h, l
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_01f_5cf2

    ld l, b
    ld l, a
    jr nz, @+$64

    ld h, l
    dec l
    ld bc, $6f6c
    ld l, [hl]
    ld h, a
    ld [hl], e
    jr nz, @+$76

    ld l, a
    jr nz, jr_01f_5ced

    jr nz, jr_01f_5cf1

jr_01f_5c8e:
    ld l, a
    ld [hl], l

jr_01f_5c90:
    ld l, [hl]
    dec l
    ld bc, $7274
    ld a, c
    jr nz, jr_01f_5cfb

    ld l, h
    ld [hl], l
    ld h, d
    ld l, $20

jr_01f_5c9d:
    ld b, c
    jr nz, jr_01f_5d07

    ld l, a
    ld l, a
    ld h, h
    ld [bc], a

jr_01f_5ca4:
    ld h, e
    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_01f_5d1e

    ld h, c
    ld l, e

jr_01f_5cac:
    ld h, l

jr_01f_5cad:
    ld [hl], e
    jr nz, jr_01f_5d17

    ld l, a
    ld l, a
    ld h, h
    ld bc, $6163
    ld [hl], d
    ld h, l
    jr nz, @+$71

    ld h, [hl]
    jr nz, @+$6b

    ld [hl], h
    ld [hl], e
    jr nz, jr_01f_5d2e

    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    ld [hl], e
    ld l, $03
    nop
    ld b, c
    ld l, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_01f_5d41

    ld h, c

jr_01f_5cd4:
    ld l, l
    ld h, l
    jr nz, jr_01f_5d3e

    ld l, a
    ld [hl], d
    ld bc, $2061
    ld [hl], b
    ld h, c
    ld [hl], d
    jr nz, jr_01f_5d16

    jr nz, @+$6a

    ld l, a
    ld l, h

jr_01f_5ce6:
    ld h, l
    ld l, $03
    nop
    ld d, h
    ld h, l
    ld [hl], d

jr_01f_5ced:
    ld l, l
    jr nz, jr_01f_5d56

    ld l, a

jr_01f_5cf1:
    ld [hl], d

jr_01f_5cf2:
    jr nz, jr_01f_5d68

    ld l, b
    ld h, l
    jr nz, jr_01f_5d2d

    inc l
    jr nz, jr_01f_5d31

jr_01f_5cfb:
    ld bc, $6e61
    ld h, h
    jr nz, jr_01f_5d38

    jr nz, @+$6b

    ld [hl], d
    ld l, a
    ld l, [hl]
    ld [hl], e

jr_01f_5d07:
    ld l, $20
    ld d, h
    ld l, b
    ld h, l
    ld a, c
    ld bc, $7261
    ld h, l
    jr nz, jr_01f_5d76

    ld h, c
    ld l, h
    ld l, h

jr_01f_5d16:
    ld h, l

jr_01f_5d17:
    ld h, h
    jr nz, @+$76

    ld l, b
    ld l, c
    ld [hl], e
    ld [bc], a

jr_01f_5d1e:
    ld h, d
    ld h, l
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_01f_5d96

    ld h, [hl]
    jr nz, jr_01f_5d9e

    ld l, b
    ld h, l
    ld l, c

jr_01f_5d2d:
    ld [hl], d

jr_01f_5d2e:
    ld bc, $696d

jr_01f_5d31:
    ld h, h
    ld h, h
    ld l, h
    ld h, l
    dec l
    ld [hl], d
    ld h, c

jr_01f_5d38:
    ld l, [hl]
    ld h, a
    ld h, l
    ld bc, $7264

jr_01f_5d3e:
    ld l, c
    db $76
    ld h, l

jr_01f_5d41:
    jr nz, jr_01f_5da7

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
    ld d, h
    ld l, a
    jr nz, @+$6a

    ld l, c
    ld [hl], h
    jr nz, jr_01f_5dca

jr_01f_5d56:
    ld l, b
    ld h, l
    jr nz, jr_01f_5dbc

    ld h, c
    ld l, h
    ld l, h
    ld bc, $6f73
    jr nz, @+$6b

    ld [hl], h
    jr nz, jr_01f_5dc9

    ld l, a
    ld h, l
    ld [hl], e

jr_01f_5d68:
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01f_5dd3

    ld l, h
    ld a, c
    ld bc, $7270
    ld l, a
    ld [hl], b
    ld h, l
    ld [hl], d

jr_01f_5d76:
    ld l, h
    ld a, c
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01f_5dee

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_01f_5dfb

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_01f_5dfe

    ld l, b
    ld h, l
    ld bc, $7267
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_01f_5e07

    ld l, c

jr_01f_5d96:
    ld [hl], e
    ld h, l
    ld [hl], e
    jr nz, jr_01f_5e07

    ld l, c
    ld l, e
    ld h, l

jr_01f_5d9e:
    ld bc, $2061
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld a, c
    jr nz, jr_01f_5e0f

jr_01f_5da7:
    ld l, c
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld b, c
    jr nz, @+$35

    dec l
    ld [hl], b
    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, jr_01f_5e19

    ld h, l
    ld [hl], h
    jr nz, jr_01f_5e2a

    ld l, [hl]

jr_01f_5dbc:
    ld bc, $6373
    ld l, a
    ld [hl], d
    ld h, l
    ld [hl], e
    jr nz, @+$71

    ld l, [hl]
    jr nz, jr_01f_5e3c

    ld l, b

jr_01f_5dc9:
    ld h, l

jr_01f_5dca:
    ld bc, $7266
    ld l, a
    ld l, [hl]
    ld [hl], h
    jr nz, @+$3b

    inc l

jr_01f_5dd3:
    jr nz, jr_01f_5e49

    ld l, b
    ld h, l
    ld [bc], a
    ld h, d
    ld h, c
    ld h, e
    ld l, e
    jr nz, @+$3b

    jr nz, jr_01f_5e41

    ld l, [hl]
    ld h, h
    jr nz, jr_01f_5e45

    ld l, h
    ld l, h
    ld bc, $3831
    jr nz, @+$6a

    ld l, a
    ld l, h
    ld h, l

jr_01f_5dee:
    ld [hl], e
    ld l, $03
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01f_5e6f

    ld l, b
    ld h, l
    ld [hl], d

jr_01f_5dfb:
    ld h, l
    jr nz, @+$63

jr_01f_5dfe:
    jr nz, @+$69

    ld l, a
    ld l, h
    ld h, [hl]
    ld bc, $6c63
    ld [hl], l

jr_01f_5e07:
    ld h, d
    daa
    ld [hl], e
    jr nz, jr_01f_5e74

    ld h, l
    ld h, c
    ld h, h

jr_01f_5e0f:
    jr nz, @+$6f

    ld h, l
    ld h, l
    ld [hl], h
    ld [hl], e
    ld bc, $6874
    ld h, l

jr_01f_5e19:
    jr nz, jr_01f_5e8e

    ld l, b
    ld h, c
    ld h, [hl]
    ld [hl], h
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01f_5e95

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d

jr_01f_5e2a:
    daa
    ld [hl], e
    jr nz, jr_01f_5e95

    ld [hl], d
    ld l, a
    ld [hl], e
    ld [hl], e
    ld bc, $6373
    ld l, a
    ld [hl], d
    ld h, l
    inc l
    jr nz, @+$6e

    ld h, l

jr_01f_5e3c:
    ld [hl], e
    ld [hl], e
    jr nz, jr_01f_5ea8

    ld l, c

jr_01f_5e41:
    ld [hl], e
    ld bc, $726f

jr_01f_5e45:
    jr nz, jr_01f_5eaf

    ld h, l
    ld [hl], d

jr_01f_5e49:
    jr nz, @+$6a

    ld h, c
    ld l, [hl]
    ld h, h
    ld l, c
    ld h, e
    ld h, c
    ld [hl], b
    ld l, $03
    nop
    ld c, a
    ld b, d
    jr nz, jr_01f_5ecc

    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, jr_01f_5ec6

    ld l, a
    ld [hl], d
    jr nz, jr_01f_5ed3

    ld [hl], l
    ld [hl], h
    ld bc, $666f
    jr nz, jr_01f_5ecd

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_01f_5e6f:
    ld [hl], e
    ld l, $20
    ld d, h
    ld l, b

jr_01f_5e74:
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    ld bc, $2061
    ld sp, $732d
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    jr nz, jr_01f_5ef6

    ld h, l
    ld l, [hl]
    ld h, c
    ld l, h
    ld [hl], h
    ld a, c
    inc l
    ld [bc], a

jr_01f_5e8e:
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01f_5f0c

    ld l, a
    ld [hl], l

jr_01f_5e95:
    jr nz, jr_01f_5f04

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, @+$74

    ld h, l
    dec l
    ld l, b
    ld l, c
    ld [hl], h
    ld l, $03
    nop
    ld d, h
    ld l, a
    jr nz, jr_01f_5f0a

jr_01f_5ea8:
    ld h, l
    jr nz, jr_01f_5f0c

    ld [hl], h
    jr nz, jr_01f_5f20

    ld h, l

jr_01f_5eaf:
    ld [hl], e
    ld [hl], h
    ld bc, $7075
    ld l, a
    ld l, [hl]
    jr nz, jr_01f_5f2c

    ld l, b
    ld h, l
    jr nz, jr_01f_5f23

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $01
    ld c, c
    ld h, [hl]
    jr nz, jr_01f_5f3a

jr_01f_5ec6:
    ld l, b
    ld h, l
    jr nz, jr_01f_5f31

    ld [hl], d
    ld h, l

jr_01f_5ecc:
    ld h, l

jr_01f_5ecd:
    ld l, [hl]
    jr nz, jr_01f_5f39

    ld [hl], e
    ld [bc], a
    ld [hl], d

jr_01f_5ed3:
    ld h, l
    ld h, c
    ld h, e
    ld l, b
    ld h, l
    ld h, h
    jr nz, jr_01f_5f44

    ld l, [hl]
    jr nz, jr_01f_5f4d

    ld l, [hl]
    ld h, l
    ld bc, $7473
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    inc l
    jr nz, jr_01f_5f5e

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01f_5f58

    ld [hl], e
    ld bc, $6f22
    ld l, [hl]
    jr nz, @+$6b

jr_01f_5ef6:
    ld l, [hl]
    jr nz, @+$71

    ld l, [hl]
    ld h, l
    ld l, $22
    inc bc
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$72

jr_01f_5f04:
    ld h, l
    ld [hl], d
    ld h, e
    ld h, l
    ld l, [hl]
    ld [hl], h

jr_01f_5f0a:
    ld h, c
    ld h, a

jr_01f_5f0c:
    ld h, l
    jr nz, jr_01f_5f7e

    ld h, [hl]
    ld bc, $6974
    ld l, l
    ld h, l
    ld [hl], e
    jr nz, jr_01f_5f8c

    ld l, b
    ld h, l
    jr nz, jr_01f_5f82

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h

jr_01f_5f20:
    ld bc, $7473

jr_01f_5f23:
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    jr nz, @+$6e

    ld h, c
    ld l, [hl]
    ld h, h

jr_01f_5f2c:
    ld h, l
    ld h, h
    jr nz, @+$71

    ld l, [hl]

jr_01f_5f31:
    ld [bc], a
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_01f_5f9d

    ld h, c
    ld l, c

jr_01f_5f39:
    ld [hl], d

jr_01f_5f3a:
    ld [hl], a
    ld h, c
    ld a, c
    jr nz, jr_01f_5fae

    ld [hl], d
    ld bc, $7267
    ld h, l

jr_01f_5f44:
    ld h, l
    ld l, [hl]
    jr nz, jr_01f_5fad

    ld h, h
    ld h, a
    ld h, l
    ld l, $03

jr_01f_5f4d:
    nop
    ld b, c
    jr nz, jr_01f_5fc4

    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_5fc0

    ld l, [hl]

jr_01f_5f58:
    jr nz, jr_01f_5fd1

    ld l, b
    ld l, c
    ld h, e
    ld l, b

jr_01f_5f5e:
    ld bc, $6874
    ld h, l
    jr nz, jr_01f_5fc7

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_01f_5fd1

    ld h, l
    ld h, c
    ld h, h
    jr nz, jr_01f_5fd4

    ld h, c
    ld l, h
    ld l, h
    ld [hl], e
    ld bc, $7266
    ld l, a
    ld l, l
    jr nz, jr_01f_5fed

    ld l, b
    ld h, l
    jr nz, jr_01f_5fec

    ld [hl], l

jr_01f_5f7e:
    ld [hl], h
    ld [hl], e
    ld l, c
    ld h, h

jr_01f_5f82:
    ld h, l
    ld [bc], a
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, @+$76

    ld [hl], l
    ld [hl], d
    ld l, [hl]

jr_01f_5f8c:
    ld [hl], e
    jr nz, @+$6b

    ld l, [hl]
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, h
    ld bc, $6e6f
    jr nz, jr_01f_6002

    ld l, l
    ld [hl], b
    ld h, c
    ld h, e

jr_01f_5f9d:
    ld [hl], h
    ld l, $03
    nop
    ld d, e
    ld h, e
    ld l, a
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_6012

    ld l, c
    ld h, a
    ld l, b

jr_01f_5fad:
    ld h, l

jr_01f_5fae:
    ld [hl], d
    ld bc, $6874
    ld h, c
    ld l, [hl]
    jr nz, @+$72

    ld h, c
    ld [hl], d
    jr nz, jr_01f_6029

    ld l, [hl]
    jr nz, jr_01f_601e

    ld bc, $6f68

jr_01f_5fc0:
    ld l, h
    ld h, l
    jr nz, jr_01f_6033

jr_01f_5fc4:
    ld [hl], d
    jr nz, @+$65

jr_01f_5fc7:
    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $03
    nop
    ld d, h
    ld l, b

jr_01f_5fd1:
    ld h, l
    jr nz, jr_01f_6047

jr_01f_5fd4:
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, h
    ld h, c
    ld [hl], d
    ld h, h
    ld bc, $756e
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, jr_01f_6053

    ld h, [hl]
    jr nz, @+$75

    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l

jr_01f_5fec:
    ld [hl], e

jr_01f_5fed:
    ld bc, $656e
    ld h, l
    ld h, h
    ld h, l
    ld h, h
    jr nz, jr_01f_606a

    ld l, a
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    jr nz, jr_01f_605f

    ld [bc], a
    ld l, b
    ld l, a
    ld l, h

jr_01f_6002:
    ld h, l
    jr nz, jr_01f_6074

    ld [hl], d
    jr nz, jr_01f_606b

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $01
    ld b, c
    jr nz, jr_01f_6086

jr_01f_6012:
    ld a, c
    ld [hl], b
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    jr nz, @+$65

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e

jr_01f_601e:
    ld h, l
    ld bc, $7369
    jr nz, jr_01f_605b

    ld [hl-], a
    jr nz, jr_01f_6097

    ld h, c
    ld [hl], d

jr_01f_6029:
    ld l, $03
    nop
    ld d, h
    ld l, a
    jr nz, @+$74

    ld h, l
    ld h, c
    ld h, e

jr_01f_6033:
    ld l, b
    jr nz, jr_01f_60aa

    ld l, b
    ld h, l
    ld bc, $7267
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_01f_60a9

    ld l, [hl]
    jr nz, @+$34

    ld bc, $7473
    ld [hl], d

jr_01f_6047:
    ld l, a
    ld l, e
    ld h, l
    ld [hl], e
    jr nz, jr_01f_60c2

    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    ld [bc], a
    ld [hl], b

jr_01f_6053:
    ld h, c
    ld [hl], d
    jr nz, jr_01f_60bd

    ld l, a
    ld [hl], d
    jr nz, jr_01f_60cf

jr_01f_605b:
    ld l, b
    ld h, l
    jr nz, @+$6a

jr_01f_605f:
    ld l, a
    ld l, h
    ld h, l
    ld l, $01
    ld c, a
    ld l, [hl]
    jr nz, jr_01f_60c9

    jr nz, @+$72

jr_01f_606a:
    ld h, c

jr_01f_606b:
    ld [hl], d
    jr nz, @+$36

    jr nz, @+$6a

    ld l, a
    ld l, h
    ld h, l
    inc l

jr_01f_6074:
    ld bc, $7469
    daa
    ld [hl], e
    jr nz, jr_01f_60ea

    ld l, [hl]
    jr nz, jr_01f_60e7

    ld l, [hl]
    jr nz, jr_01f_60b3

    ld l, $03
    nop
    ld d, b
    ld h, l

jr_01f_6086:
    ld [hl], d
    ld h, e
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld h, a
    ld h, l
    jr nz, @+$71

    ld h, [hl]
    ld bc, $6f68
    ld l, h
    ld h, l
    ld [hl], e

jr_01f_6097:
    jr nz, @+$71

    ld l, [hl]
    jr nz, jr_01f_6113

    ld l, b
    ld l, c
    ld h, e
    ld l, b
    ld bc, $6874
    ld h, l
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c

jr_01f_60a9:
    ld h, l

jr_01f_60aa:
    ld [hl], d
    jr nz, jr_01f_6112

    ld h, c
    ld [hl], d
    ld l, [hl]
    ld h, l
    ld h, h
    ld [bc], a

jr_01f_60b3:
    ld h, c
    jr nz, jr_01f_6126

    ld h, c
    ld [hl], d
    jr nz, @+$71

    ld l, [hl]
    ld l, $03

jr_01f_60bd:
    nop
    ld d, h
    ld l, a
    jr nz, jr_01f_6135

jr_01f_60c2:
    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01f_6138

    ld h, c

jr_01f_60c9:
    ld [hl], d
    ld bc, $6877
    ld h, l
    ld l, [hl]

jr_01f_60cf:
    jr nz, jr_01f_6141

    ld l, h
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_613a

    ld bc, $6f68
    ld l, h
    ld h, l
    jr nz, jr_01f_614f

    ld [hl], d
    jr nz, jr_01f_6146

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e

jr_01f_60e7:
    ld h, l
    ld l, $03

jr_01f_60ea:
    nop
    ld b, c
    jr nz, @+$72

    ld h, c
    ld [hl], d
    jr nz, jr_01f_6165

    ld h, c
    db $76
    ld h, l
    jr nz, jr_01f_6160

    ld [hl], e
    jr nz, jr_01f_6171

    ld l, b
    ld h, l
    ld l, [hl]
    ld bc, $6f79
    ld [hl], l
    jr nz, jr_01f_6176

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01f_6179

    ld h, c
    ld [hl], d
    jr nz, jr_01f_617c

    ld [hl], d
    ld bc, $6562
    ld [hl], h

jr_01f_6112:
    ld [hl], h

jr_01f_6113:
    ld h, l
    ld [hl], d
    ld l, $02
    ld c, c
    ld [hl], h
    jr nz, @+$6f

    ld h, l
    ld h, c
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01f_619a

    ld l, a
    ld [hl], l
    jr nz, @+$65

    ld h, c

jr_01f_6126:
    ld l, l
    ld h, l
    ld bc, $6874
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_01f_619b

    ld l, [hl]
    jr nz, jr_01f_6196

jr_01f_6135:
    jr nz, jr_01f_61a7

    ld l, c

jr_01f_6138:
    ld l, [hl]
    ld h, e

jr_01f_613a:
    ld l, b
    ld bc, $6f74
    jr nz, jr_01f_61ad

    ld h, c

jr_01f_6141:
    ld l, e
    ld h, l
    jr nz, jr_01f_61b5

    ld h, c

jr_01f_6146:
    ld [hl], d
    ld l, $03
    nop
    ld d, b
    ld h, l
    ld [hl], d
    ld h, e
    ld h, l

jr_01f_614f:
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld h, a
    ld h, l
    jr nz, @+$71

    ld h, [hl]
    ld bc, $6f68
    ld l, h
    ld h, l
    ld [hl], e
    jr nz, jr_01f_61ce

    ld l, [hl]

jr_01f_6160:
    jr nz, @+$79

    ld l, b
    ld l, c
    ld h, e

jr_01f_6165:
    ld l, b
    ld bc, $6170
    ld [hl], d
    jr nz, jr_01f_61e3

    ld h, c
    ld [hl], e
    jr nz, jr_01f_61dd

    ld h, c

jr_01f_6171:
    ld h, h
    ld h, l
    ld l, $03
    nop

jr_01f_6176:
    ld b, c
    jr nz, jr_01f_61ec

jr_01f_6179:
    ld [hl], h
    ld [hl], d
    ld l, a

jr_01f_617c:
    ld l, e
    ld h, l
    jr nz, @+$63

    ld h, h
    ld h, h
    ld h, l
    ld h, h
    jr nz, jr_01f_61fa

    ld l, a
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01f_6201

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01f_61fa

    ld l, a
    ld [hl], d

jr_01f_6196:
    ld bc, $7564
    ld l, [hl]

jr_01f_619a:
    ld l, e

jr_01f_619b:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_6219

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01f_6207

    ld h, c
    ld l, h

jr_01f_61a7:
    ld l, h
    ld [bc], a
    ld l, a
    ld [hl], d
    jr nz, jr_01f_6215

jr_01f_61ad:
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_621e

jr_01f_61b5:
    ld [hl], h
    jr nz, jr_01f_6227

    ld [hl], l
    ld [hl], h
    ld bc, $666f
    jr nz, jr_01f_6221

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_6232

    ld l, h
    ld h, c

jr_01f_61ce:
    ld h, a
    ld [hl], b
    ld l, a
    ld l, h
    ld h, l
    jr nz, @+$77

    ld [hl], e
    ld h, l
    ld h, h
    ld bc, $6f74
    jr nz, @+$6f

jr_01f_61dd:
    ld h, c
    ld [hl], d
    ld l, e
    jr nz, jr_01f_6256

    ld l, b

jr_01f_61e3:
    ld h, l
    jr nz, jr_01f_6249

    ld [hl], l
    ld [hl], b
    ld l, $03
    nop
    ld b, c

jr_01f_61ec:
    ld l, [hl]
    jr nz, @+$63

    ld [hl], b
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    jr nz, jr_01f_626b

    ld l, b
    ld l, a

jr_01f_61fa:
    ld [hl], h
    ld bc, $6e69
    jr nz, @+$79

    ld l, b

jr_01f_6201:
    ld l, c
    ld h, e
    ld l, b
    jr nz, jr_01f_627a

    ld l, b

jr_01f_6207:
    ld h, l
    jr nz, jr_01f_626c

    ld h, c
    ld l, h
    ld l, h
    ld bc, $7369
    jr nz, jr_01f_627e

    ld l, a
    ld h, [hl]
    ld [hl], h

jr_01f_6215:
    ld h, l
    ld h, h
    jr nz, jr_01f_6282

jr_01f_6219:
    ld l, [hl]
    ld [hl], h
    ld l, a
    jr nz, jr_01f_6292

jr_01f_621e:
    ld l, b
    ld h, l
    ld [bc], a

jr_01f_6221:
    ld h, c
    ld l, c
    ld [hl], d
    jr nz, jr_01f_6287

    ld l, [hl]

jr_01f_6227:
    ld h, h
    jr nz, @+$6e

    ld h, c
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, @+$79

    ld l, c
    ld [hl], h

jr_01f_6232:
    ld l, b
    ld bc, $2061
    ld [hl], c
    ld [hl], l
    ld l, c
    ld h, e
    ld l, e
    jr nz, jr_01f_62b0

    ld [hl], h
    ld l, a
    ld [hl], b
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01f_62a9

    ld l, h
    ld [hl], l
    ld h, d

jr_01f_6249:
    jr nz, jr_01f_62c2

    ld l, c
    ld [hl], h
    ld l, b
    ld bc, $6f67
    ld l, a
    ld h, h
    jr nz, jr_01f_62b8

    ld l, a

jr_01f_6256:
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    ld bc, $6874
    ld h, c
    ld [hl], h
    jr nz, jr_01f_62c7

    ld h, c
    ld [hl], e
    ld l, c
    ld l, h
    ld a, c
    ld [bc], a
    ld l, h
    ld l, a
    ld h, [hl]

jr_01f_626b:
    ld [hl], h

jr_01f_626c:
    ld [hl], e
    jr nz, jr_01f_62e3

    ld l, b
    ld h, l
    jr nz, @+$64

    ld h, c
    ld l, h
    ld l, h
    ld bc, $6e69
    ld [hl], h

jr_01f_627a:
    ld l, a
    jr nz, jr_01f_62f1

    ld l, b

jr_01f_627e:
    ld h, l
    jr nz, jr_01f_62e2

    ld l, c

jr_01f_6282:
    ld [hl], d
    ld l, $03
    nop
    ld b, c

jr_01f_6287:
    ld l, [hl]
    jr nz, jr_01f_62ef

    ld a, b
    ld [hl], h
    ld [hl], d
    ld h, c
    jr nz, @+$65

    ld l, a
    ld l, l

jr_01f_6292:
    ld [hl], b
    ld h, l
    dec l
    ld bc, $6974
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_01f_6312

    ld l, a
    jr nz, jr_01f_6303

    ld [hl], d
    ld h, l
    ld h, c
    ld l, e
    ld bc, $2061
    ld [hl], h

jr_01f_62a9:
    ld l, c
    ld h, l
    ld l, $20
    ld d, e
    ld [hl], l
    ld h, h

jr_01f_62b0:
    ld h, h
    ld h, l
    ld l, [hl]
    ld [bc], a
    ld h, h
    ld h, l
    ld h, c
    ld [hl], h

jr_01f_62b8:
    ld l, b
    jr nz, jr_01f_6324

    ld [hl], e
    jr nz, @+$65

    ld l, a
    ld l, l
    ld l, l
    ld l, a

jr_01f_62c2:
    ld l, [hl]
    inc l
    ld bc, $7562

jr_01f_62c7:
    ld [hl], h
    jr nz, jr_01f_633c

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, jr_01f_6334

    ld h, c
    ld l, [hl]
    ld bc, $6562
    jr nz, jr_01f_634a

    ld h, l
    ld [hl], b
    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld h, h
    ld l, $03
    nop

jr_01f_62e2:
    ld b, c

jr_01f_62e3:
    jr nz, jr_01f_6358

    ld l, l
    ld h, c
    ld l, h
    ld l, h
    inc l
    jr nz, jr_01f_635e

    ld l, a
    ld [hl], l
    ld l, [hl]

jr_01f_62ef:
    ld h, h
    inc l

jr_01f_62f1:
    ld bc, $6f70
    ld [hl], h
    dec l
    ld [hl], e
    ld l, b
    ld h, c
    ld [hl], b
    ld h, l
    ld h, h
    jr nz, @+$64

    ld [hl], l
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d

jr_01f_6303:
    ld bc, $666f
    ld [hl], h
    ld h, l
    ld l, [hl]
    jr nz, jr_01f_6371

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_01f_6380

    ld l, [hl]

jr_01f_6312:
    ld [bc], a
    ld l, h
    ld l, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_01f_637d

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld [hl], e
    ld l, $03
    nop
    ld b, c

jr_01f_6324:
    jr nz, jr_01f_6389

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_01f_63a0

    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_01f_63a4

    ld l, a
    ld bc, $6f72

jr_01f_6334:
    ld l, h
    ld l, h
    jr nz, jr_01f_63ac

    ld l, b
    ld h, l
    jr nz, jr_01f_639e

jr_01f_633c:
    ld h, c
    ld l, h
    ld l, h
    ld bc, $6361
    ld [hl], d
    ld l, a
    ld [hl], e
    ld [hl], e
    jr nz, jr_01f_63bc

    ld l, b
    ld h, l

jr_01f_634a:
    jr nz, jr_01f_63b3

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$72

jr_01f_6358:
    ld h, c
    ld [hl], h
    ld l, b
    jr nz, jr_01f_63d1

    ld l, b

jr_01f_635e:
    ld h, l
    jr nz, @+$64

    ld h, c
    ld l, h
    ld l, h
    ld bc, $7274
    ld h, c
    db $76
    ld h, l
    ld l, h
    ld [hl], e
    jr nz, jr_01f_63e5

    ld l, b
    ld h, l
    ld l, [hl]

jr_01f_6371:
    jr nz, jr_01f_63e3

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, $01
    ld c, c
    ld h, [hl]
    jr nz, jr_01f_63f5

    ld l, a

jr_01f_637d:
    ld [hl], l
    jr nz, jr_01f_63e3

jr_01f_6380:
    ld h, c
    ld l, [hl]
    jr nz, jr_01f_63f6

    ld h, l
    ld h, c
    ld h, h
    ld [bc], a
    ld [hl], b

jr_01f_6389:
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$6e

    ld l, c
    ld l, [hl]
    ld h, l
    ld [hl], e
    inc l
    ld bc, $7469
    daa
    ld l, h
    ld l, h
    jr nz, jr_01f_6412

jr_01f_639e:
    ld h, c
    ld l, e

jr_01f_63a0:
    ld h, l
    jr nz, jr_01f_6409

    ld h, l

jr_01f_63a4:
    ld [hl], a
    ld h, l
    ld [hl], d
    ld bc, $7570
    ld [hl], h
    ld [hl], h

jr_01f_63ac:
    ld [hl], e
    jr nz, jr_01f_6423

    ld l, a
    jr nz, jr_01f_641a

    ld l, a

jr_01f_63b3:
    ld l, h
    ld h, l
    jr nz, jr_01f_6426

    ld [hl], l
    ld [hl], h
    ld l, $03
    nop

jr_01f_63bc:
    ld b, c
    jr nz, jr_01f_6433

    ld l, a
    ld l, a
    ld l, h
    jr nz, jr_01f_6439

    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_01f_643d

    ld l, a
    ld bc, $6d73
    ld l, a
    ld l, a
    ld [hl], h
    ld l, b

jr_01f_63d1:
    jr nz, jr_01f_6442

    ld [hl], l
    ld [hl], h
    jr nz, jr_01f_644b

    ld l, b
    ld h, l
    ld bc, $6173
    ld l, [hl]
    ld h, h
    jr nz, jr_01f_6449

    ld l, [hl]
    jr nz, @+$63

jr_01f_63e3:
    jr nz, jr_01f_6447

jr_01f_63e5:
    ld [hl], l
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01f_6453

    ld l, a
    ld l, l
    ld h, l
    ld h, d
    ld h, c

jr_01f_63f5:
    ld h, e

jr_01f_63f6:
    ld l, e
    jr nz, jr_01f_645f

    ld [hl], d
    ld l, a
    ld l, l
    ld bc, $2061
    ld l, l
    ld l, c
    ld [hl], e
    dec l
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], h
    jr nz, jr_01f_6478

jr_01f_6409:
    ld [hl], d
    jr nz, jr_01f_646d

    ld bc, $6162
    ld h, h
    jr nz, jr_01f_647e

jr_01f_6412:
    ld l, c
    ld h, l
    inc l
    jr nz, jr_01f_6478

    ld [hl], e
    jr nz, @+$6b

jr_01f_641a:
    ld l, [hl]
    ld [bc], a
    ld [hl+], a
    ld l, [hl]
    ld l, c
    ld h, e
    ld h, l
    jr nz, @+$74

jr_01f_6423:
    ld h, l
    ld h, e
    ld l, a

jr_01f_6426:
    db $76
    ld h, l
    ld [hl], d
    ld a, c
    ld hl, $0322
    nop
    ld b, c
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], e

jr_01f_6433:
    jr nz, jr_01f_64a4

    ld h, [hl]
    ld h, [hl]
    jr nz, jr_01f_64ad

jr_01f_6439:
    ld l, b
    ld h, l
    jr nz, jr_01f_64a3

jr_01f_643d:
    ld h, c
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c

jr_01f_6442:
    ld a, c
    ld bc, $6877
    ld h, l

jr_01f_6447:
    ld [hl], d
    ld h, l

jr_01f_6449:
    jr nz, jr_01f_64bf

jr_01f_644b:
    ld l, b
    ld h, l
    jr nz, @+$69

    ld [hl], d
    ld h, c
    ld [hl], e
    ld [hl], e

jr_01f_6453:
    jr nz, jr_01f_64be

    ld [hl], e
    ld bc, $6f6c
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], d
    ld l, $02

jr_01f_645f:
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$69

    ld [hl], d
    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_01f_64d7

    ld h, c
    ld l, e
    ld h, l

jr_01f_646d:
    ld [hl], e
    jr nz, jr_01f_64d9

    ld [hl], h
    ld bc, $6168
    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d

jr_01f_6478:
    jr nz, jr_01f_64ee

    ld l, a
    jr nz, @+$75

    ld [hl], a

jr_01f_647e:
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6874
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $03
    nop
    ld b, c
    jr nz, @+$74

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, @+$6b

    ld [hl], e
    jr nz, jr_01f_64c7

    jr c, jr_01f_6499

    ld l, b

jr_01f_6499:
    ld l, a
    ld l, h
    ld h, l
    ld [hl], e
    jr nz, jr_01f_650e

    ld h, [hl]
    jr nz, jr_01f_6509

    ld l, a

jr_01f_64a3:
    ld l, h

jr_01f_64a4:
    ld h, [hl]
    ld l, $03
    nop
    ld b, c
    ld h, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d

jr_01f_64ad:
    jr nz, jr_01f_6528

    ld l, a
    ld [hl], l
    jr nz, @+$6a

    ld l, c
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $6162
    ld l, h
    ld l, h

jr_01f_64be:
    inc l

jr_01f_64bf:
    jr nz, jr_01f_6535

    ld l, b
    ld h, l
    jr nz, jr_01f_6537

    ld [hl], l
    ld l, [hl]

jr_01f_64c7:
    jr nz, @+$6b

    ld [hl], e
    ld bc, $6874
    ld h, l
    jr nz, jr_01f_6534

    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l

jr_01f_64d7:
    jr nz, jr_01f_6542

jr_01f_64d9:
    ld [hl], h
    ld [bc], a
    ld l, l
    ld l, a
    db $76
    ld h, l
    ld [hl], e
    jr nz, jr_01f_6548

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01f_6550

    ld [hl], h
    ld [hl], e
    ld bc, $6966
    ld [hl], d
    ld [hl], e

jr_01f_64ee:
    ld [hl], h
    jr nz, jr_01f_6553

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01f_656d

    ld l, [hl]
    dec l
    ld bc, $6974
    ld l, h
    jr nz, @+$6b

    ld [hl], h
    jr nz, jr_01f_6576

    ld [hl], h
    ld l, a
    ld [hl], b
    ld [hl], e
    ld l, $03

jr_01f_6509:
    nop
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e

jr_01f_650e:
    jr nz, jr_01f_6579

    ld [hl], e
    jr nz, jr_01f_658a

    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01f_658c

    ld l, b
    ld h, l
    ld bc, $6162
    ld l, h
    ld l, h
    jr nz, jr_01f_658a

    ld [hl], e
    jr nz, jr_01f_6596

    ld l, a
    ld l, h
    ld l, h
    ld l, c

jr_01f_6528:
    ld l, [hl]
    ld h, a
    ld bc, $6f74
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_01f_65a7

    ld l, b

jr_01f_6534:
    ld h, l

jr_01f_6535:
    jr nz, jr_01f_659a

jr_01f_6537:
    ld [hl], l
    ld [hl], b
    ld l, $02
    ld d, d
    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a

jr_01f_6542:
    jr nz, jr_01f_65a6

    ld h, c
    ld l, h
    ld l, h
    ld [hl], e

jr_01f_6548:
    ld bc, $6574
    ld l, [hl]
    ld h, h
    jr nz, jr_01f_65c3

    ld l, a

jr_01f_6550:
    jr nz, jr_01f_65b5

    ld h, c

jr_01f_6553:
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_01f_65cc

    ld l, b
    ld h, l
    ld bc, $696c
    ld l, [hl]
    ld h, l
    jr nz, jr_01f_65c2

    ld l, [hl]
    ld h, h
    jr nz, @+$75

    ld l, c
    ld l, [hl]
    ld l, e
    ld l, $03
    nop
    ld d, h
    ld l, b

jr_01f_656d:
    ld h, l
    jr nz, jr_01f_65e0

    ld h, l
    ld [hl], d
    ld h, e
    ld h, l
    ld l, [hl]
    ld [hl], h

jr_01f_6576:
    ld h, c
    ld h, a
    ld h, l

jr_01f_6579:
    jr nz, jr_01f_65ea

    ld h, [hl]
    ld bc, $6162
    ld l, h
    ld l, h
    ld [hl], e
    jr nz, @+$6a

    ld l, a
    ld l, h
    ld h, l
    ld h, h
    dec l
    ld l, a

jr_01f_658a:
    ld [hl], l
    ld [hl], h

jr_01f_658c:
    jr nz, jr_01f_65ef

    ld [hl], h
    ld bc, $6170
    ld [hl], d
    jr nz, @+$71

    ld [hl], d

jr_01f_6596:
    jr nz, @+$64

    ld h, l
    ld [hl], h

jr_01f_659a:
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01f_6600

    ld h, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    ld [bc], a
    ld l, h
    ld h, c

jr_01f_65a6:
    ld l, [hl]

jr_01f_65a7:
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_6616

    ld l, [hl]
    jr nz, jr_01f_6611

    jr nz, jr_01f_6614

    ld [hl], l
    ld l, [hl]
    ld l, e

jr_01f_65b5:
    ld h, l
    ld [hl], d
    ld l, $03
    nop
    ld b, c
    jr nz, @+$65

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_01f_6637

jr_01f_65c2:
    ld [hl], e

jr_01f_65c3:
    ld h, l
    ld h, h
    jr nz, jr_01f_663b

    ld l, a
    ld bc, $6567
    ld [hl], h

jr_01f_65cc:
    jr nz, jr_01f_662f

    jr nz, jr_01f_6632

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01f_6644

    ld [hl], l
    ld [hl], h
    ld bc, $666f
    jr nz, @+$63

    jr nz, jr_01f_6640

    ld [hl], l
    ld l, [hl]

jr_01f_65e0:
    ld l, e
    ld h, l
    ld [hl], d
    ld l, $02
    ld c, c
    ld [hl], h
    jr nz, jr_01f_6651

    ld h, c

jr_01f_65ea:
    ld [hl], e
    jr nz, @+$63

    jr nz, jr_01f_6662

jr_01f_65ef:
    ld l, a
    ld l, h
    ld h, l
    ld bc, $6874
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01f_6670

    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_01f_6666

jr_01f_6600:
    ld l, a
    ld [hl], d
    ld bc, $7865
    ld [hl], b
    ld l, h
    ld l, a
    ld [hl], e
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_01f_6681

    ld l, b
    ld l, a
    ld [hl], h

jr_01f_6611:
    ld [hl], e
    ld l, $03

jr_01f_6614:
    nop
    ld d, h

jr_01f_6616:
    ld l, b
    ld h, l
    jr nz, @+$70

    ld [hl], l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, @+$71

    ld h, [hl]
    ld bc, $7473
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    ld [hl], e
    jr nz, @+$76

    ld h, c
    ld l, e
    ld h, l

jr_01f_662f:
    ld l, [hl]
    jr nz, jr_01f_66a6

jr_01f_6632:
    ld l, a
    ld bc, $6f68
    ld l, h

jr_01f_6637:
    ld h, l
    dec l
    ld l, a
    ld [hl], l

jr_01f_663b:
    ld [hl], h
    ld l, $03
    nop
    ld b, c

jr_01f_6640:
    jr nz, jr_01f_66aa

    ld h, c
    ld l, [hl]

jr_01f_6644:
    ld h, h
    ld l, c
    ld h, e
    ld h, c
    ld [hl], b
    jr nz, jr_01f_66ba

    ld h, [hl]
    ld bc, $657a
    ld [hl], d
    ld l, a

jr_01f_6651:
    ld l, $20
    ld d, e
    ld l, a
    ld l, l
    ld h, l
    ld l, a
    ld l, [hl]
    ld h, l
    ld bc, $6977
    ld [hl], h
    ld l, b
    jr nz, @+$70

    ld l, a

jr_01f_6662:
    jr nz, @+$6a

    ld h, c
    ld l, [hl]

jr_01f_6666:
    ld h, h
    ld l, c
    ld h, e
    ld h, c
    ld [hl], b
    ld [bc], a
    ld l, c
    ld [hl], e
    jr nz, jr_01f_66d1

jr_01f_6670:
    jr nz, jr_01f_66e5

    ld h, e
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    ld bc, $6c70
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    ld l, $03

jr_01f_6681:
    nop
    ld b, a
    ld [hl], d
    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_01f_66fd

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01f_66f7

    ld [hl], e
    jr nz, jr_01f_66fd

    ld l, a
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], d
    ld bc, $6874
    ld h, c
    ld l, [hl]
    jr nz, jr_01f_6711

    ld l, b
    ld h, l
    jr nz, jr_01f_6707

    ld h, c
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c

jr_01f_66a6:
    ld a, c
    jr nz, jr_01f_670b

    ld [hl], l

jr_01f_66aa:
    ld [hl], h
    ld bc, $6873
    ld l, a
    ld [hl], d
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01f_6729

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_01f_672e

jr_01f_66ba:
    ld l, b
    ld h, l
    jr nz, @+$74

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld l, $02
    ld c, h
    ld h, c
    ld l, [hl]
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_6736

    ld l, [hl]
    jr nz, jr_01f_6743

    ld h, l

jr_01f_66d1:
    ld l, l
    ld l, c
    dec l
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld bc, $7369
    jr nz, jr_01f_674b

    ld [hl], l
    ld h, e
    ld l, b
    jr nz, jr_01f_6745

    ld h, l
    ld [hl], h

jr_01f_66e5:
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, @+$76

    ld l, b
    ld h, c
    ld l, [hl]
    ld bc, $616c
    ld l, [hl]
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_6760

jr_01f_66f7:
    ld l, [hl]
    jr nz, jr_01f_676c

    ld l, a
    ld [hl], l
    ld h, a

jr_01f_66fd:
    ld l, b
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_6776

    ld l, a

jr_01f_6707:
    ld l, h
    ld h, l
    jr nz, jr_01f_677f

jr_01f_670b:
    ld l, b
    ld h, c
    ld [hl], h
    ld bc, $6f63

jr_01f_6711:
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    ld [hl], e
    jr nz, jr_01f_678d

    ld l, b
    ld h, l
    ld bc, $6568
    ld h, c
    ld h, h
    jr nz, @+$76

    ld l, a
    jr nz, @+$76

    ld l, b
    ld h, l
    ld [bc], a
    ld h, a

jr_01f_6729:
    ld [hl], d
    ld l, c
    ld [hl], b
    jr nz, jr_01f_679d

jr_01f_672e:
    ld l, [hl]
    jr nz, jr_01f_6792

    jr nz, @+$65

    ld l, h
    ld [hl], l
    ld h, d

jr_01f_6736:
    ld l, $03
    nop
    ld c, c
    ld h, [hl]
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_01f_67a9

    ld l, c
    ld [hl], h

jr_01f_6743:
    jr nz, jr_01f_67b9

jr_01f_6745:
    ld l, b
    ld h, l
    jr nz, @+$64

    ld h, c
    ld l, h

jr_01f_674b:
    ld l, h
    ld bc, $6977
    ld [hl], h
    ld l, b
    jr nz, jr_01f_67c7

    ld l, b
    ld h, l
    jr nz, jr_01f_67b9

    ld h, c
    ld [hl], e
    ld h, l
    jr nz, @+$71

    ld h, [hl]
    ld bc, $6874

jr_01f_6760:
    ld h, l
    jr nz, @+$6a

    ld h, l
    ld h, c
    ld h, h
    inc l
    jr nz, jr_01f_67dc

    ld h, l
    ld l, [hl]
    ld h, h

jr_01f_676c:
    ld l, c
    ld l, [hl]
    ld h, a
    ld [bc], a
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_01f_67d7

    ld h, c

jr_01f_6776:
    ld l, h
    ld l, h
    jr nz, @+$71

    ld h, [hl]
    ld h, [hl]
    jr nz, jr_01f_67f2

    ld l, a

jr_01f_677f:
    jr nz, jr_01f_67f5

    ld l, b
    ld h, l
    ld bc, $6973
    ld h, h
    ld h, l
    inc l
    jr nz, @+$7b

    ld l, a
    ld [hl], l

jr_01f_678d:
    jr nz, @+$75

    ld l, b
    ld h, c
    ld l, [hl]

jr_01f_6792:
    ld l, e
    ld h, l
    ld h, h
    ld bc, $7469
    ld hl, $0003
    ld d, h
    ld l, b

jr_01f_679d:
    ld l, c
    ld [hl], e
    jr nz, @+$6b

    ld [hl], e
    jr nz, jr_01f_6805

    ld l, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld h, l

jr_01f_67a9:
    ld [hl], d
    ld bc, $616e
    ld l, l
    ld h, l
    jr nz, jr_01f_6817

    ld l, a
    ld [hl], d
    jr nz, jr_01f_6816

    jr nz, jr_01f_6827

    ld h, c
    ld [hl], d

jr_01f_67b9:
    jr nz, @+$35

    ld bc, $6f68
    ld l, h
    ld h, l
    ld l, $02
    ld d, e
    ld l, b
    ld l, a
    ld [hl], d
    ld [hl], h

jr_01f_67c7:
    jr nz, jr_01f_6832

    ld [hl], e
    jr nz, jr_01f_682d

    ld l, h
    ld [hl], e
    ld l, a
    jr nz, jr_01f_6846

    ld [hl], e
    ld h, l
    ld h, h
    ld bc, $6f74

jr_01f_67d7:
    jr nz, jr_01f_683d

    ld h, l
    ld [hl], e
    ld h, e

jr_01f_67dc:
    ld [hl], d
    ld l, c
    ld h, d
    ld h, l
    jr nz, jr_01f_6843

    jr nz, jr_01f_684c

    ld l, a
    ld l, h
    ld h, l
    inc l
    ld bc, $696c
    ld l, e
    ld h, l
    jr nz, @+$63

    jr nz, jr_01f_6864

    ld l, b

jr_01f_67f2:
    ld l, a
    ld [hl], d
    ld [hl], h

jr_01f_67f5:
    jr nz, jr_01f_6867

    ld h, c
    ld [hl], d
    jr nz, jr_01f_682f

    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_683b

    jr nz, jr_01f_6866

jr_01f_6805:
    ld l, [hl]
    ld h, h
    jr nz, jr_01f_6842

    ld bc, $7269
    ld l, a
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01f_6872

    ld l, [hl]
    ld h, h
    jr nz, jr_01f_6889

    ld l, b

jr_01f_6816:
    ld h, l

jr_01f_6817:
    ld bc, $6970
    ld [hl], h
    ld h, e
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_6883

    ld l, [hl]
    ld h, h
    ld [bc], a
    ld [hl], e
    ld h, c

jr_01f_6827:
    ld l, [hl]
    ld h, h
    jr nz, jr_01f_68a2

    ld h, l
    ld h, h

jr_01f_682d:
    ld h, a
    ld h, l

jr_01f_682f:
    ld [hl], e
    jr nz, jr_01f_6893

jr_01f_6832:
    ld [hl], d
    ld h, l
    ld bc, $6874
    ld h, l
    jr nz, @+$75

    ld l, b

jr_01f_683b:
    ld l, a
    ld [hl], d

jr_01f_683d:
    ld [hl], h
    jr nz, jr_01f_68a9

    ld [hl], d
    ld l, a

jr_01f_6842:
    ld l, [hl]

jr_01f_6843:
    ld [hl], e
    ld l, $03

jr_01f_6846:
    nop
    ld d, e
    ld l, b
    ld l, a
    ld l, a
    ld [hl], h

jr_01f_684c:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_68c4

    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_01f_685b

    ld h, c

jr_01f_685b:
    ld h, e
    ld [hl], d
    ld l, a
    ld [hl], e
    ld [hl], e
    jr nz, jr_01f_68d6

    ld l, b
    ld h, l

jr_01f_6864:
    jr nz, jr_01f_68c8

jr_01f_6866:
    ld h, l

jr_01f_6867:
    ld l, [hl]
    ld h, h
    jr nz, jr_01f_68d4

    ld l, [hl]
    jr nz, jr_01f_686f

    ld h, c

jr_01f_686f:
    jr nz, @+$66

    ld l, a

jr_01f_6872:
    ld h, a
    ld l, h
    ld h, l
    ld h, a
    inc l
    jr nz, jr_01f_68eb

    ld h, c
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld [bc], a
    ld [hl], h
    ld l, b
    ld h, c
    ld l, [hl]

jr_01f_6883:
    jr nz, jr_01f_68f9

    ld h, c
    ld l, e
    ld l, c
    ld l, [hl]

jr_01f_6889:
    ld h, a
    jr nz, jr_01f_6900

    ld l, b
    ld h, l
    jr nz, jr_01f_6903

    ld h, c
    ld h, [hl]
    ld h, l

jr_01f_6893:
    ld [hl], e
    ld [hl], h
    ld bc, $6562
    ld [hl], h
    jr nz, jr_01f_68fc

    ld l, [hl]
    ld h, h
    jr nz, jr_01f_6905

    ld l, a
    ld l, h
    ld l, h

jr_01f_68a2:
    ld l, a
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_691d

jr_01f_68a9:
    ld l, b
    ld h, l
    ld bc, $6166
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01f_6925

    ld [hl], e
    jr nz, jr_01f_6933

    ld l, b
    ld h, l
    jr nz, @+$63

    ld h, e

jr_01f_68c4:
    ld [hl], h
    jr nz, jr_01f_6936

    ld h, [hl]

jr_01f_68c8:
    ld bc, $6968
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$76

    ld l, b
    ld h, l

jr_01f_68d4:
    jr nz, @+$64

jr_01f_68d6:
    ld h, c
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01f_6941

    ld [hl], l
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    jr nz, jr_01f_695a

    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e

jr_01f_68eb:
    ld bc, $6e6f
    jr nz, @+$64

    ld l, a
    ld [hl], h
    ld l, b
    jr nz, jr_01f_6968

    ld l, c
    ld h, h
    ld h, l
    ld [hl], e

jr_01f_68f9:
    ld bc, $666f

jr_01f_68fc:
    jr nz, @+$76

    ld l, b
    ld h, l

jr_01f_6900:
    jr nz, jr_01f_6968

    ld h, c

jr_01f_6903:
    ld l, c
    ld [hl], d

jr_01f_6905:
    ld [hl], a
    ld h, c
    ld a, c
    ld l, $03
    nop
    ld d, h
    ld l, a
    jr nz, jr_01f_6976

    ld h, l
    ld [hl], h
    jr nz, jr_01f_6987

    ld l, b
    ld h, l
    jr nz, jr_01f_6979

    ld h, c
    ld l, h
    ld l, h
    ld bc, $6e69

jr_01f_691d:
    ld [hl], h
    ld l, a
    jr nz, jr_01f_6995

    ld l, b
    ld h, l
    jr nz, jr_01f_6988

jr_01f_6925:
    ld [hl], l
    ld [hl], b
    ld l, $03
    nop
    ld b, [hl]
    ld l, a
    ld [hl], d
    jr nz, jr_01f_69a1

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h

jr_01f_6933:
    ld l, c
    ld h, l
    ld [hl], e

jr_01f_6936:
    inc l
    jr nz, jr_01f_69a2

    ld [hl], h
    daa
    ld [hl], e
    ld bc, $6877
    ld h, l
    ld l, [hl]

jr_01f_6941:
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01f_69a9

    ld h, c
    ld l, h
    ld l, h
    jr nz, @+$68

    ld l, h
    ld l, c
    ld h, l
    ld [hl], e
    ld bc, $6166
    ld [hl], d
    jr nz, @+$76

    ld l, a
    jr nz, jr_01f_69cd

    ld l, b

jr_01f_695a:
    ld h, l
    jr nz, jr_01f_69cf

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_01f_69d2

    ld h, [hl]
    ld [bc], a
    ld l, c
    ld [hl], h
    ld [hl], e

jr_01f_6968:
    jr nz, jr_01f_69d3

    ld l, [hl]
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld h, h
    ld h, l
    ld h, h
    jr nz, jr_01f_69e3

    ld h, c
    ld [hl], h
    ld l, b

jr_01f_6976:
    ld l, $01
    ld b, [hl]

jr_01f_6979:
    ld l, a
    ld [hl], d
    jr nz, jr_01f_69e9

    ld h, l
    ld h, [hl]
    ld [hl], h
    ld l, c
    ld h, l
    ld [hl], e
    inc l
    jr nz, jr_01f_69fa

    ld l, b

jr_01f_6987:
    ld h, l

jr_01f_6988:
    ld bc, $6162
    ld l, h
    ld l, h
    jr nz, jr_01f_69f5

    ld l, h
    ld l, c
    ld h, l
    ld [hl], e
    jr nz, @+$68

jr_01f_6995:
    ld h, c
    ld [hl], d
    jr nz, jr_01f_6a05

    ld h, l
    ld h, [hl]
    ld [hl], h
    ld l, $03
    nop
    ld d, h
    ld h, c

jr_01f_69a1:
    ld l, e

jr_01f_69a2:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$63

    jr nz, @+$78

jr_01f_69a9:
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_01f_6a1a

    ld l, a
    ld l, [hl]
    ld h, a
    ld bc, $6974
    ld l, l
    ld h, l
    ld l, $20
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$63

    jr nz, @+$78

    ld l, c
    ld l, a
    ld l, h
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $666f
    jr nz, jr_01f_6a34

jr_01f_69cd:
    ld l, a
    ld l, h

jr_01f_69cf:
    ld h, [hl]
    jr nz, jr_01f_6a37

jr_01f_69d2:
    ld [hl], h

jr_01f_69d3:
    ld l, c
    ld [hl], c
    ld [hl], l
    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    ld [bc], a
    ld l, c
    ld [hl], e
    jr nz, jr_01f_6a53

jr_01f_69e3:
    ld h, l
    ld l, [hl]
    ld h, c
    ld l, h
    ld l, c
    ld a, d

jr_01f_69e9:
    ld h, l
    ld h, h
    jr nz, jr_01f_6a56

    ld l, [hl]
    ld bc, $6f74
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c

jr_01f_69f5:
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [hl], e

jr_01f_69fa:
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$64

    ld l, a
    ld [hl], h
    ld [hl], h

jr_01f_6a05:
    ld l, a
    ld l, l
    jr nz, jr_01f_6a79

    ld h, c
    ld [hl], d
    ld [hl], h
    ld bc, $666f
    jr nz, jr_01f_6a85

    ld l, b
    ld h, l
    jr nz, @+$6a

    ld h, l
    ld h, c
    ld h, h
    jr nz, jr_01f_6a91

jr_01f_6a1a:
    ld l, b
    ld l, c
    ld h, e
    ld l, b
    ld bc, $6968
    ld [hl], h
    ld [hl], e
    jr nz, jr_01f_6a99

    ld l, b
    ld h, l
    jr nz, @+$69

    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld l, $02
    ld b, c
    ld l, h
    ld [hl], e
    ld l, a

jr_01f_6a34:
    inc l
    jr nz, jr_01f_6aab

jr_01f_6a37:
    ld l, a
    jr nz, jr_01f_6aaa

    ld [hl], l
    ld [hl], h
    jr nz, jr_01f_6ab2

    ld l, b
    ld h, l
    ld bc, $6f73
    ld l, h
    ld h, l
    jr nz, jr_01f_6abb

    ld l, a
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01f_6ab5

    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_01f_6a53:
    ld bc, $6e69

jr_01f_6a56:
    jr nz, jr_01f_6ad1

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, @+$63

    ld h, h
    ld h, h
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    ld l, $03
    nop
    ld d, a
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01f_6ae0

    ld l, b
    ld h, l
    jr nz, @+$64

    ld h, c
    ld l, h
    ld l, h
    jr nz, @+$74

    ld l, a
    ld [hl], h
    ld h, c
    ld [hl], h

jr_01f_6a79:
    ld h, l
    ld [hl], e
    ld bc, $6e69
    jr nz, @+$68

    ld l, h
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h

jr_01f_6a85:
    ld l, $20
    ld b, c
    ld h, h
    ld h, h
    jr nz, jr_01f_6aff

    ld [hl], b
    ld l, c
    ld l, [hl]
    jr nz, jr_01f_6b05

jr_01f_6a91:
    ld l, a
    ld bc, $6863
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l

jr_01f_6a99:
    jr nz, jr_01f_6b0f

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
    ld b, c
    ld l, [hl]
    ld l, a

jr_01f_6aaa:
    ld [hl], h

jr_01f_6aab:
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_01f_6b1e

    ld h, c
    ld l, l

jr_01f_6ab2:
    ld h, l
    jr nz, jr_01f_6b1b

jr_01f_6ab5:
    ld l, a
    ld [hl], d
    ld bc, $6874
    ld h, l

jr_01f_6abb:
    jr nz, jr_01f_6af0

    jr nz, jr_01f_6b36

    ld l, a
    ld l, a
    ld h, h
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_6b3a

    ld l, a
    ld [hl], e
    ld l, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]

jr_01f_6ad1:
    jr nz, jr_01f_6b42

    ld h, [hl]
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01f_6b41

    ld h, l
    ld h, l
    ld [hl], h
    jr nz, jr_01f_6b41

jr_01f_6ae0:
    ld [hl], e
    jr nz, jr_01f_6b5c

    ld l, a
    ld [hl], l
    ld bc, $7473
    ld [hl], d
    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_01f_6b62

    ld l, b
    ld h, l

jr_01f_6af0:
    jr nz, @+$64

    ld h, c
    ld l, h
    ld l, h
    ld l, $02
    ld b, c
    jr nz, jr_01f_6b5c

    ld h, c
    ld h, h
    jr nz, jr_01f_6b71

    ld [hl], h

jr_01f_6aff:
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, @+$79

jr_01f_6b05:
    ld l, c
    ld l, h
    ld l, h
    ld bc, $6b73
    ld h, l
    ld [hl], a
    jr nz, jr_01f_6b88

jr_01f_6b0f:
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01f_6b75

    ld l, c
    ld l, l
    ld l, $03
    nop
    ld b, e
    ld l, a

jr_01f_6b1b:
    ld l, [hl]
    ld [hl], e
    ld l, c

jr_01f_6b1e:
    ld [hl], e
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld [hl], h
    inc l
    jr nz, jr_01f_6b96

    ld [hl], d
    ld h, l
    ld h, e
    ld l, c
    ld [hl], e
    ld h, l
    ld bc, $6c70
    ld h, c
    ld a, c
    jr nz, jr_01f_6b9c

    ld l, [hl]
    jr nz, @+$79

jr_01f_6b36:
    ld l, b
    ld l, c
    ld h, e
    ld l, b

jr_01f_6b3a:
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld bc, $6961

jr_01f_6b41:
    ld l, l

jr_01f_6b42:
    jr nz, jr_01f_6baa

    ld l, a
    ld [hl], d
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01f_6bb3

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld [bc], a
    ld l, c
    ld l, [hl]
    jr nz, jr_01f_6bbb

    ld [hl], d
    ld l, a
    ld l, [hl]
    ld [hl], h
    jr nz, @+$71

    ld h, [hl]

jr_01f_6b5c:
    jr nz, jr_01f_6bd2

    ld l, b
    ld h, l
    jr nz, jr_01f_6bc5

jr_01f_6b62:
    ld [hl], l
    ld [hl], b
    inc l
    ld bc, $6f6e
    ld [hl], h
    jr nz, jr_01f_6bd1

    ld l, a
    ld [hl], d
    jr nz, @+$76

    ld l, b
    ld h, l

jr_01f_6b71:
    jr nz, @+$72

    ld l, c
    ld l, [hl]

jr_01f_6b75:
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$70

    ld [hl], l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, jr_01f_6bf3

    ld h, [hl]
    ld bc, $6974

jr_01f_6b88:
    ld l, l
    ld h, l
    ld [hl], e
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, @+$6a

    ld l, c
    ld [hl], h
    ld bc, $6874

jr_01f_6b96:
    ld h, l
    jr nz, jr_01f_6bfb

    ld h, c
    ld l, h
    ld l, h

jr_01f_6b9c:
    ld l, $02
    ld d, a
    ld l, b
    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld [hl], e
    jr nz, jr_01f_6c07

    ld [hl], d
    ld h, l
    ld l, [hl]
    daa

jr_01f_6baa:
    ld [hl], h
    ld bc, $6f63
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld h, h

jr_01f_6bb3:
    inc l
    jr nz, jr_01f_6c2a

    ld l, b
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b

jr_01f_6bbb:
    ld l, $03
    nop
    ld b, c
    ld l, [hl]
    jr nz, jr_01f_6c31

    ld h, d
    ld [hl], e
    ld [hl], h

jr_01f_6bc5:
    ld h, c
    ld h, e
    ld l, h
    ld h, l
    jr nz, jr_01f_6c2d

    ld l, h
    ld l, a
    ld h, e
    ld l, e
    ld l, c
    ld l, [hl]

jr_01f_6bd1:
    ld h, a

jr_01f_6bd2:
    ld bc, $2061
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_01f_6c52

    ld l, b
    ld l, a
    ld [hl], h
    jr nz, jr_01f_6c58

    ld l, a
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $6970
    ld l, [hl]
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01f_6c24

jr_01f_6bf3:
    dec l
    ld l, b
    ld l, a
    ld l, h
    ld h, l
    jr nz, jr_01f_6c6e

    ld l, c

jr_01f_6bfb:
    ld h, l
    dec l
    ld h, d
    ld [hl], d
    ld h, l
    ld h, c
    ld l, e
    ld h, l
    ld [hl], d
    ld bc, $6877

jr_01f_6c07:
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, @+$68

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    jr nz, jr_01f_6c8a

    ld l, a
    ld bc, $6973
    ld l, [hl]
    ld l, e
    jr nz, jr_01f_6c95

    ld l, c
    ld l, [hl]
    ld [hl], e
    ld hl, $0003

jr_01f_6c24:
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_6c96

    ld l, a

jr_01f_6c2a:
    ld [hl], h
    ld l, c
    ld l, a

jr_01f_6c2d:
    ld l, [hl]
    jr nz, jr_01f_6ca9

    ld l, a

jr_01f_6c31:
    ld [hl], l
    jr nz, jr_01f_6ca1

    ld h, c
    ld l, e
    ld h, l
    ld bc, $6977
    ld [hl], h
    ld l, b
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, @+$65

    ld l, h
    ld [hl], l
    ld h, d
    inc l
    jr nz, @+$6c

    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld bc, $6562
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l

jr_01f_6c52:
    jr nz, @+$6a

    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, c

jr_01f_6c58:
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_6cd0

    ld l, b
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
    jr nz, jr_01f_6ce2

    ld l, a
    ld l, a
    ld h, h

jr_01f_6c6e:
    ld h, l
    ld l, [hl]
    jr nz, jr_01f_6ce2

    ld h, l
    ld h, a
    ld bc, $7075
    ld l, a
    ld l, [hl]
    jr nz, jr_01f_6cf2

    ld l, b
    ld l, c
    ld h, e
    ld l, b
    jr nz, jr_01f_6cf5

    ld l, b
    ld h, l
    ld bc, $6162
    ld l, h
    ld l, h
    jr nz, jr_01f_6cfc

jr_01f_6c8a:
    ld h, l
    ld [hl], e
    ld [hl], h
    ld [hl], e
    jr nz, jr_01f_6cf6

    ld l, a
    ld [hl], d
    ld [bc], a
    ld [hl], h
    ld l, b

jr_01f_6c95:
    ld h, l

jr_01f_6c96:
    jr nz, jr_01f_6cfe

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    jr nz, jr_01f_6d11

    ld l, b
    ld l, a
    ld [hl], h

jr_01f_6ca1:
    ld bc, $6e6f
    jr nz, jr_01f_6d07

    jr nz, jr_01f_6d10

    ld l, a

jr_01f_6ca9:
    ld l, h
    ld h, l
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$63

    ld [hl], d
    ld h, l
    ld h, c
    jr nz, jr_01f_6d1e

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_01f_6d34

    ld l, b
    ld l, c
    ld h, e
    ld l, b
    ld bc, $6165
    ld h, e
    ld l, b
    jr nz, jr_01f_6d38

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, jr_01f_6d43

    ld h, c

jr_01f_6cd0:
    ld l, e
    ld h, l
    ld [hl], e
    ld bc, $6968
    ld [hl], e
    jr nz, @+$71

    ld [hl], d
    jr nz, jr_01f_6d44

    ld h, l
    ld [hl], d
    jr nz, jr_01f_6d46

    ld l, c
    ld [hl], d

jr_01f_6ce2:
    ld [hl], e
    ld [hl], h
    jr nz, jr_01f_6d59

    ld l, b
    ld l, a
    ld [hl], h
    ld [bc], a
    ld l, a
    ld l, [hl]
    jr nz, jr_01f_6d4f

    jr nz, jr_01f_6d58

    ld l, a
    ld l, h

jr_01f_6cf2:
    ld h, l
    ld l, $03

jr_01f_6cf5:
    nop

jr_01f_6cf6:
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_6d68

    ld h, c

jr_01f_6cfc:
    ld [hl], d
    ld l, e

jr_01f_6cfe:
    jr nz, jr_01f_6d74

    ld l, b
    ld h, c
    ld [hl], h
    ld bc, $7073
    ld h, l

jr_01f_6d07:
    ld h, e
    ld l, c
    ld h, [hl]
    ld l, c
    ld h, l
    ld [hl], e
    jr nz, jr_01f_6d75

    ld [hl], d

jr_01f_6d10:
    ld l, a

jr_01f_6d11:
    ld l, l
    ld bc, $6877
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01f_6d92

jr_01f_6d1e:
    ld h, l
    ld h, l
    ld [bc], a
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], h
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_01f_6d90

    ld h, l
    ld bc, $6174
    ld l, e
    ld h, l

jr_01f_6d34:
    ld l, [hl]
    jr nz, @+$71

    ld l, [hl]

jr_01f_6d38:
    jr nz, jr_01f_6dae

    ld l, b
    ld h, l
    ld bc, $6574
    ld h, l
    jr nz, jr_01f_6da9

    ld [hl], d

jr_01f_6d43:
    ld l, a

jr_01f_6d44:
    ld [hl], l
    ld l, [hl]

jr_01f_6d46:
    ld h, h
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_6db5

jr_01f_6d4f:
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    jr nz, jr_01f_6dc8

    ld [hl], h
    ld [hl], d
    ld l, a

jr_01f_6d58:
    ld l, e

jr_01f_6d59:
    ld h, l
    jr nz, @+$71

    ld l, [hl]
    ld bc, $2061
    ld l, b
    ld l, a
    ld l, h
    ld h, l
    ld l, $03
    nop
    ld d, h

jr_01f_6d68:
    ld l, a
    jr nz, jr_01f_6dde

    ld h, l
    ld [hl], h
    jr nz, jr_01f_6de3

    ld l, b
    ld h, l
    jr nz, jr_01f_6dd5

    ld h, c

jr_01f_6d74:
    ld l, h

jr_01f_6d75:
    ld l, h
    ld bc, $6e6f
    jr nz, jr_01f_6def

    ld l, b
    ld h, l
    jr nz, jr_01f_6df3

    ld h, l
    ld h, l
    jr nz, jr_01f_6de9

    ld l, a
    ld [hl], d
    ld bc, $6874
    ld h, l
    jr nz, jr_01f_6dff

    ld h, l
    ld h, l
    jr nz, jr_01f_6e02

    ld l, b

jr_01f_6d90:
    ld l, a
    ld [hl], h

jr_01f_6d92:
    ld l, $02
    ld c, c
    ld h, [hl]
    jr nz, jr_01f_6e01

    ld [hl], h
    jr nz, jr_01f_6e01

    ld h, c
    ld l, h
    ld l, h
    ld [hl], e
    jr nz, jr_01f_6e10

    ld h, [hl]
    ld h, [hl]
    inc l
    ld bc, $6874
    ld h, l
    ld [hl], d

jr_01f_6da9:
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_01f_6e1c

jr_01f_6dae:
    ld l, a
    jr nz, jr_01f_6e21

    ld h, l
    ld l, [hl]
    ld h, c
    ld l, h

jr_01f_6db5:
    ld [hl], h
    ld a, c
    ld bc, $6f74
    jr nz, jr_01f_6e2e

    ld h, l
    ld [hl], b
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_01f_6e2d

    ld [hl], h
    ld l, $03
    nop

jr_01f_6dc8:
    ld c, a
    ld l, [hl]
    jr nz, jr_01f_6e2d

    jr nz, @+$6f

    ld l, c
    ld [hl], e
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_01f_6e48

jr_01f_6dd5:
    ld l, b
    ld l, a
    ld [hl], h
    inc l
    ld bc, $6968
    ld [hl], h
    ld [hl], h

jr_01f_6dde:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_6e57

jr_01f_6de3:
    ld l, b
    ld h, l
    jr nz, jr_01f_6e49

    ld h, c
    ld l, h

jr_01f_6de9:
    ld l, h
    ld bc, $6261
    ld l, a
    db $76

jr_01f_6def:
    ld h, l
    jr nz, jr_01f_6e55

    ld h, l

jr_01f_6df3:
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01f_6e6c

    ld l, a
    ld [bc], a
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h

jr_01f_6dff:
    jr nz, jr_01f_6e6a

jr_01f_6e01:
    ld [hl], h

jr_01f_6e02:
    jr nz, jr_01f_6e76

    ld l, a
    ld l, h
    ld l, h
    ld [hl], e
    ld l, $20
    ld b, c
    ld bc, $6f74
    ld [hl], b
    ld [hl], b

jr_01f_6e10:
    ld h, l
    ld h, h
    jr nz, jr_01f_6e76

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01f_6e90

    ld l, a
    ld l, [hl]
    daa

jr_01f_6e1c:
    ld [hl], h
    ld bc, $6972
    ld [hl], e

jr_01f_6e21:
    ld h, l
    jr nz, jr_01f_6e8d

    ld l, [hl]
    ld [hl], h
    ld l, a
    jr nz, jr_01f_6e9d

    ld l, b
    ld h, l
    jr nz, @+$63

jr_01f_6e2d:
    ld l, c

jr_01f_6e2e:
    ld [hl], d
    ld l, $03
    nop
    ld d, [hl]
    ld h, l
    ld [hl], d
    ld [hl], h
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    jr nz, jr_01f_6eaf

    ld [hl], b
    ld l, c
    ld l, [hl]
    jr nz, jr_01f_6eb0

    ld l, [hl]
    jr nz, @+$63

    ld bc, $6162
    ld l, h

jr_01f_6e48:
    ld l, h

jr_01f_6e49:
    jr nz, @+$6b

    ld l, [hl]
    jr nz, jr_01f_6ec2

    ld l, b
    ld h, l
    jr nz, jr_01f_6eb6

    ld l, c
    ld [hl], d
    ld h, l

jr_01f_6e55:
    ld h, e
    ld [hl], h

jr_01f_6e57:
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, jr_01f_6ec2

    ld h, c
    ld l, h
    ld l, h
    daa
    ld [hl], e
    jr nz, @+$6f

    ld l, a
    db $76
    ld l, c

jr_01f_6e6a:
    ld l, [hl]
    ld h, a

jr_01f_6e6c:
    ld l, $02
    ld b, c
    jr nz, jr_01f_6ed3

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01f_6eed

jr_01f_6e76:
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_01f_6eef

    ld l, a
    ld [hl], b
    ld [hl], e
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld bc, $6c66
    ld l, c
    ld h, l
    ld [hl], e
    jr nz, jr_01f_6ef5

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d

jr_01f_6e8d:
    jr nz, jr_01f_6ef0

    ld l, [hl]

jr_01f_6e90:
    ld h, h
    jr nz, @+$74

    ld l, a
    ld l, h
    ld l, h
    ld [hl], e
    ld bc, $6166
    ld [hl], d
    ld [hl], h
    ld l, b

jr_01f_6e9d:
    ld h, l
    ld [hl], d
    jr nz, @+$76

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_01f_6f07

    jr nz, jr_01f_6f0a

    ld h, c
    ld l, h
    ld l, h
    ld [bc], a
    ld [hl], a
    ld l, c
    ld [hl], h

jr_01f_6eaf:
    ld l, b

jr_01f_6eb0:
    jr nz, jr_01f_6f20

    ld l, a
    jr nz, jr_01f_6f28

    ld [hl], b

jr_01f_6eb6:
    ld l, c
    ld l, [hl]
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_6f33

    ld [hl], l
    ld l, l

jr_01f_6ec2:
    jr nz, jr_01f_6f33

    ld h, [hl]
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $6163
    ld [hl], d
    ld [hl], d
    ld a, c
    jr nz, jr_01f_6f32

    ld l, [hl]
    ld h, h

jr_01f_6ed3:
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $7572
    ld l, [hl]
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01f_6f44

    ld l, a
    ld l, l
    ld [hl], b
    ld h, l
    ld [hl], h
    ld l, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_01f_6f4e

jr_01f_6eed:
    ld l, l
    ld l, a

jr_01f_6eef:
    ld l, [hl]

jr_01f_6ef0:
    ld h, a
    ld bc, $616d
    ld l, [hl]

jr_01f_6ef5:
    ld a, c
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_01f_6f66

    ld l, a
    ld [hl], d
    jr nz, jr_01f_6f65

    ld bc, $7270

jr_01f_6f07:
    ld l, c
    ld a, d
    ld h, l

jr_01f_6f0a:
    jr nz, @+$71

    ld [hl], d
    jr nz, jr_01f_6f83

    ld [hl], d
    ld l, a
    ld [hl], b
    ld l, b
    ld a, c
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01f_6f8d

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01f_6f8f

jr_01f_6f20:
    ld h, [hl]
    jr nz, jr_01f_6f56

    jr nz, @+$75

    ld [hl], h
    ld [hl], d
    ld l, a

jr_01f_6f28:
    ld l, e
    ld h, l
    ld [hl], e
    ld bc, $766f
    ld h, l
    ld [hl], d
    jr nz, @+$72

jr_01f_6f32:
    ld h, c

jr_01f_6f33:
    ld [hl], d
    ld l, $20
    ld c, a
    ld l, [hl]
    jr nz, jr_01f_6f9b

    jr nz, @+$72

    ld h, c
    ld [hl], d
    jr nz, jr_01f_6f74

    ld bc, $6f68
    ld l, h

jr_01f_6f44:
    ld h, l
    inc l
    jr nz, jr_01f_6fa9

    jr nz, @+$76

    ld [hl], d
    ld l, c
    ld [hl], b
    ld l, h

jr_01f_6f4e:
    ld h, l
    jr nz, jr_01f_6fb3

    ld l, a
    ld h, a
    ld h, l
    ld a, c
    ld [bc], a

jr_01f_6f56:
    ld [hl], a
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$64

    ld h, l
    jr nz, jr_01f_6fc1

    jr nz, jr_01f_6fd5

    ld h, e
    ld l, a
    ld [hl], d

jr_01f_6f65:
    ld h, l

jr_01f_6f66:
    ld bc, $666f
    jr nz, @+$39

    ld l, $03
    nop
    ld b, c
    jr nz, jr_01f_6fe4

    ld l, b
    ld l, a
    ld [hl], h

jr_01f_6f74:
    jr nz, @+$76

    ld h, c
    ld l, e
    ld h, l
    ld l, [hl]
    jr nz, jr_01f_6ff0

    ld l, a
    ld bc, $7365
    ld h, e
    ld h, c
    ld [hl], b

jr_01f_6f83:
    ld h, l
    jr nz, jr_01f_6fe7

    jr nz, jr_01f_6fec

    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld l, c
    ld h, e

jr_01f_6f8d:
    ld [hl], l
    ld l, h

jr_01f_6f8f:
    ld [hl], h
    ld [bc], a
    ld l, h
    ld l, c
    ld h, l
    jr nz, jr_01f_7005

    ld [hl], d
    jr nz, jr_01f_700c

    ld l, c
    ld [hl], h

jr_01f_6f9b:
    ld [hl], l
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $03
    nop
    ld d, e
    ld h, e
    ld l, a
    ld [hl], d
    ld l, c

jr_01f_6fa9:
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_7019

    ld h, l
    ld [hl], e
    ld [hl], e
    ld bc, $6874

jr_01f_6fb3:
    ld h, c
    ld l, [hl]
    jr nz, jr_01f_702b

    ld l, b
    ld h, l
    jr nz, jr_01f_702b

    ld h, c
    ld [hl], d
    ld bc, $6373
    ld l, a

jr_01f_6fc1:
    ld [hl], d
    ld h, l
    jr nz, jr_01f_702b

    ld l, a
    ld [hl], d
    jr nz, jr_01f_702a

    ld [bc], a
    ld l, b
    ld l, a
    ld l, h
    ld h, l
    jr nz, jr_01f_703f

    ld [hl], d
    jr nz, jr_01f_7036

    ld l, a
    ld [hl], l

jr_01f_6fd5:
    ld [hl], d
    ld [hl], e
    ld h, l
    ld bc, $7369
    jr nz, jr_01f_7040

    ld h, c
    ld l, h
    ld l, h
    ld h, l
    ld h, h
    jr nz, jr_01f_7046

jr_01f_6fe4:
    ld h, l
    ld l, c
    ld l, [hl]

jr_01f_6fe7:
    ld h, a
    ld bc, $6e75
    ld h, h

jr_01f_6fec:
    ld h, l
    ld [hl], d
    jr nz, @+$72

jr_01f_6ff0:
    ld h, c
    ld [hl], d
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_706f

    ld [hl], b
    ld [hl], e
    jr nz, jr_01f_705f

    ld l, [hl]
    ld h, h
    ld bc, $6f64
    ld [hl], a
    ld l, [hl]

jr_01f_7005:
    ld [hl], e
    jr nz, jr_01f_7077

    ld h, [hl]
    jr nz, jr_01f_707f

    ld l, b

jr_01f_700c:
    ld h, l
    ld bc, $6574
    ld [hl], d
    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, $20
    ld c, c
    ld [hl], h

jr_01f_7019:
    daa
    ld [hl], e
    ld [bc], a
    ld l, c
    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01f_709a

    ld l, c
    ld l, [hl]
    ld h, e

jr_01f_702a:
    ld h, l

jr_01f_702b:
    ld bc, $6874
    ld h, l
    jr nz, jr_01f_7093

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01f_7097

jr_01f_7036:
    ld l, h
    ld [hl], a
    ld h, c
    ld a, c
    ld [hl], e
    ld bc, $6f72
    ld l, h

jr_01f_703f:
    ld l, h

jr_01f_7040:
    ld [hl], e
    jr nz, jr_01f_70a7

    ld l, a
    ld [hl], a
    ld l, [hl]

jr_01f_7046:
    ld l, b
    ld l, c
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01f_70b2

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01f_70c9

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01f_70bd

    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld [hl], h

jr_01f_705f:
    ld bc, $6562
    jr nz, @+$72

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld h, h
    jr nz, @+$66

    ld [hl], l
    ld h, l
    jr nz, jr_01f_70e3

jr_01f_706f:
    ld l, a
    ld bc, $6574
    ld [hl], d
    ld [hl], d
    ld h, c
    ld l, c

jr_01f_7077:
    ld l, [hl]
    ld l, $02
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l

jr_01f_707f:
    daa
    ld [hl], e
    jr nz, jr_01f_70e4

    jr nz, jr_01f_70b6

    dec l
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    ld bc, $6570
    ld l, [hl]
    ld h, c
    ld l, h
    ld [hl], h

jr_01f_7093:
    ld a, c
    jr nz, @+$76

    ld l, a

jr_01f_7097:
    jr nz, @+$66

    ld [hl], d

jr_01f_709a:
    ld l, a
    ld [hl], b
    jr nz, jr_01f_7112

    ld l, b
    ld h, l
    ld bc, $6162
    ld l, h
    ld l, h
    ld l, $03

jr_01f_70a7:
    nop
    ld b, c
    jr nz, jr_01f_711f

    ld h, l
    ld [hl], d
    ld l, l
    jr nz, jr_01f_7116

    ld l, a
    ld [hl], d

jr_01f_70b2:
    jr nz, jr_01f_7115

    jr nz, jr_01f_7129

jr_01f_70b6:
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6e69

jr_01f_70bd:
    jr nz, jr_01f_7136

    ld l, b
    ld l, c
    ld h, e
    ld l, b
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01f_712c

jr_01f_70c9:
    ld l, h
    ld [hl], l
    ld h, d
    daa
    ld [hl], e
    ld bc, $6170
    ld [hl], h
    ld l, b
    jr nz, jr_01f_713e

    ld [hl], e
    jr nz, @+$78

    ld h, l
    ld [hl], d
    ld [hl], h
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    ld l, $03
    nop
    ld d, e

jr_01f_70e3:
    ld l, a

jr_01f_70e4:
    ld l, l
    ld h, l
    ld l, a
    ld l, [hl]
    ld h, l
    jr nz, jr_01f_7162

    ld l, b
    ld l, a
    jr nz, jr_01f_7158

    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01f_7156

    ld bc, $656d
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, jr_01f_716d

    ld h, [hl]
    jr nz, jr_01f_7175

    ld l, b
    ld h, l
    jr nz, @+$65

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6877
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_01f_7178

    ld h, l
    daa

jr_01f_7112:
    ld [hl], e
    jr nz, jr_01f_7185

jr_01f_7115:
    ld l, h

jr_01f_7116:
    ld h, c
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $03
    nop
    ld d, h

jr_01f_711f:
    ld h, l
    ld [hl], d
    ld [hl], d
    ld h, c
    ld l, c
    ld l, [hl]
    jr nz, jr_01f_718a

    ld l, a
    db $76

jr_01f_7129:
    ld h, l
    ld [hl], d
    ld h, l

jr_01f_712c:
    ld h, h
    jr nz, jr_01f_7198

    ld l, [hl]
    ld bc, $6570
    ld h, d
    ld h, d
    ld l, h

jr_01f_7136:
    ld h, l
    ld [hl], e
    jr nz, jr_01f_719b

    ld l, [hl]
    ld h, h
    jr nz, @+$74

jr_01f_713e:
    ld l, a
    ld h, e
    ld l, e
    ld [hl], e
    ld l, $01
    ld c, h
    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_01f_71ae

    ld h, l
    ld h, l
    ld [hl], b
    jr nz, jr_01f_71c1

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    inc l
    jr nz, jr_01f_71bf

jr_01f_7156:
    ld [hl], h
    ld [bc], a

jr_01f_7158:
    ld l, c
    ld [hl], e
    jr nz, @+$66

    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld l, c
    ld h, e
    ld [hl], l

jr_01f_7162:
    ld l, h
    ld [hl], h
    jr nz, @+$76

    ld l, a
    jr nz, jr_01f_71dc

    ld l, b
    ld l, a
    ld l, a
    ld [hl], h

jr_01f_716d:
    ld bc, $6f66
    ld [hl], d
    jr nz, jr_01f_71d7

    ld l, c
    ld [hl], e

jr_01f_7175:
    ld [hl], h
    ld h, c
    ld l, [hl]

jr_01f_7178:
    ld h, e
    ld h, l
    jr nz, jr_01f_71e2

    ld [hl], d
    ld l, a
    ld l, l
    ld bc, $6874
    ld h, l
    ld [hl], e
    ld h, l

jr_01f_7185:
    jr nz, jr_01f_71e8

    ld [hl], d
    ld h, l
    ld h, c

jr_01f_718a:
    ld [hl], e
    ld l, $03
    nop
    ld b, c
    ld l, [hl]
    jr nz, jr_01f_7201

    ld h, d
    ld [hl], e
    ld [hl], h
    ld h, c
    ld h, e
    ld l, h

jr_01f_7198:
    ld h, l
    jr nz, jr_01f_7208

jr_01f_719b:
    ld h, c
    ld h, h
    ld h, l
    jr nz, jr_01f_720f

    ld h, [hl]
    ld bc, $6177
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $20
    ld c, c
    ld h, [hl]
    jr nz, jr_01f_7226

    ld l, a

jr_01f_71ae:
    ld [hl], l
    jr nz, @+$66

    ld [hl], l
    ld l, [hl]
    ld l, e
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, @+$64

    ld h, c
    ld l, h
    ld l, h
    inc l

jr_01f_71bf:
    jr nz, jr_01f_723a

jr_01f_71c1:
    ld l, a
    ld [hl], l
    jr nz, jr_01f_7232

    ld [hl], l
    ld [hl], e
    ld [hl], h
    ld [bc], a
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    jr nz, @+$63

    jr nz, @+$33

    dec l
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, e

jr_01f_71d7:
    ld h, l
    ld bc, $6570
    ld l, [hl]

jr_01f_71dc:
    ld h, c
    ld l, h
    ld [hl], h
    ld a, c
    ld l, $03

jr_01f_71e2:
    nop
    ld b, c
    jr nz, jr_01f_7259

    ld l, b
    ld l, a

jr_01f_71e8:
    ld [hl], d
    ld [hl], h
    dec l
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld bc, $6c63
    ld [hl], l
    ld h, d
    jr nz, jr_01f_726c

    ld [hl], e
    ld h, l
    ld h, h
    jr nz, @+$76

    ld l, a
    ld bc, $6968
    ld [hl], h

jr_01f_7201:
    jr nz, jr_01f_7277

    ld l, b
    ld h, l
    jr nz, @+$64

    ld h, c

jr_01f_7208:
    ld l, h
    ld l, h
    ld [bc], a
    ld l, b
    ld l, c
    ld h, a
    ld l, b

jr_01f_720f:
    jr nz, jr_01f_727a

    ld l, [hl]
    ld [hl], h
    ld l, a
    jr nz, jr_01f_728a

    ld l, b
    ld h, l
    ld bc, $6961
    ld [hl], d
    ld l, $20
    ld d, e
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, @+$63

    ld l, [hl]
    ld h, h

jr_01f_7226:
    ld bc, $6970
    ld [hl], h
    ld h, e
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01f_72a8

    ld h, l

jr_01f_7232:
    ld h, h
    ld h, a
    ld h, l
    ld [hl], e
    ld [bc], a
    ld h, c
    ld [hl], d
    ld h, l

jr_01f_723a:
    jr nz, jr_01f_72b0

    ld l, b
    ld h, l
    jr nz, jr_01f_72ad

    ld l, a
    ld [hl], e
    ld [hl], h
    ld bc, $6f63
    ld l, l
    ld l, l
    ld l, a
    ld l, [hl]
    jr nz, jr_01f_72c0

    ld a, c
    ld [hl], b
    ld h, l
    ld [hl], e
    ld l, $03
    nop
    ld b, c
    jr nz, @+$66

    ld l, c
    ld [hl], e
    ld [hl], h

jr_01f_7259:
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01f_72c2

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_01f_72d3

    ld l, [hl]
    ld h, e
    ld h, l
    ld bc, $616d
    ld h, h
    ld h, l

jr_01f_726c:
    jr nz, jr_01f_72dd

    ld h, [hl]
    jr nz, @+$79

    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_01f_72d8

    ld [hl], l

jr_01f_7277:
    ld [hl], h
    jr nz, @+$70

jr_01f_727a:
    ld l, a
    ld [hl], a
    ld bc, $616d
    ld h, h
    ld h, l
    jr nz, jr_01f_72f2

    ld h, [hl]
    jr nz, @+$6f

    ld h, l
    ld [hl], h
    ld h, c
    ld l, h

jr_01f_728a:
    ld l, $02
    ld d, l
    ld [hl], e
    ld h, l
    jr nz, jr_01f_72f2

    jr nz, @+$33

    inc l
    jr nz, jr_01f_72c9

    jr nz, jr_01f_7307

    ld [hl], d
    jr nz, jr_01f_72cf

    jr nz, @+$79

    ld l, a
    ld l, a
    ld h, h
    ld bc, $6e69
    jr nz, jr_01f_72f2

    ld h, c
    ld [hl], d
    ld l, c

jr_01f_72a8:
    ld l, a
    jr nz, jr_01f_72f2

    ld l, a
    ld l, h

jr_01f_72ad:
    ld h, [hl]
    ld l, $03

jr_01f_72b0:
    nop
    ld c, a
    ld l, [hl]
    ld h, l
    jr nz, jr_01f_732f

    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_01f_7320

    ld [hl], c
    ld [hl], l
    ld h, c
    ld l, h
    ld [hl], e

jr_01f_72c0:
    jr nz, jr_01f_72f5

jr_01f_72c2:
    ld bc, $6566
    ld h, l
    ld [hl], h
    ld l, $20

jr_01f_72c9:
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e

jr_01f_72cf:
    jr nz, jr_01f_7332

    ld h, d
    ld l, a

jr_01f_72d3:
    ld [hl], l
    ld [hl], h
    ld bc, $6874

jr_01f_72d8:
    ld h, l
    jr nz, jr_01f_734e

    ld h, c
    ld l, l

jr_01f_72dd:
    ld h, l
    jr nz, jr_01f_7341

    ld [hl], e
    jr nz, jr_01f_731c

    jr nc, jr_01f_7305

    ld h, e
    ld l, l
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01f_7364

    ld l, [hl]
    ld l, c
    ld [hl], h

jr_01f_72f2:
    jr nz, jr_01f_7369

    ld [hl], e

jr_01f_72f5:
    ld h, l
    ld h, h
    jr nz, jr_01f_736d

    ld l, a
    ld bc, $656d
    ld h, c
    ld [hl], e
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_01f_7368

    ld l, c

jr_01f_7305:
    ld [hl], e
    ld [hl], h

jr_01f_7307:
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld bc, $756f
    ld [hl], h
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    jr nz, jr_01f_7389

    ld l, b
    ld h, l
    jr nz, @+$69

    ld [hl], d
    ld h, l
    ld h, l

jr_01f_731c:
    ld l, [hl]
    ld l, $03
    nop

jr_01f_7320:
    ld c, c
    ld l, [hl]
    ld h, c
    ld h, d
    ld l, c
    ld l, h
    ld l, c
    ld [hl], h
    ld a, c
    jr nz, jr_01f_739f

    ld l, a
    jr nz, jr_01f_7396

    ld l, c

jr_01f_732f:
    ld [hl], h
    jr nz, @+$76

jr_01f_7332:
    ld l, b
    ld h, l
    ld bc, $6162
    ld l, h
    ld l, h
    jr nz, @+$72

    ld [hl], d
    ld l, a
    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, h

jr_01f_7341:
    ld a, c
    jr nz, jr_01f_73a8

    ld [hl], l
    ld h, l
    ld bc, $6f74
    jr nz, @+$70

    ld h, l
    ld [hl], d
    db $76

jr_01f_734e:
    ld h, l
    ld [hl], e
    ld l, $20
    ld e, c
    ld l, c
    ld [hl], b
    ld [hl], e
    ld [bc], a
    ld [hl], l
    ld [hl], e
    ld [hl], l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, @+$71

    ld h, e
    ld h, e
    ld [hl], l
    ld [hl], d

jr_01f_7364:
    jr nz, @+$79

    ld l, b
    ld h, l

jr_01f_7368:
    ld l, [hl]

jr_01f_7369:
    ld bc, $7570
    ld [hl], h

jr_01f_736d:
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$64

    ld [hl], l
    ld [hl], h
    jr nz, @+$6f

    ld h, c
    ld a, c
    ld bc, $636f
    ld h, e
    ld [hl], l
    ld [hl], d
    jr nz, @+$67

    ld l, h
    ld [hl], e
    ld h, l
    ld [hl], a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l

jr_01f_7389:
    ld l, $03
    nop
    jr nc, @+$32

    jr nc, jr_01f_7390

jr_01f_7390:
    ld sp, $7473
    nop
    ld [hl-], a
    ld l, [hl]

jr_01f_7396:
    ld h, h
    nop
    inc sp
    ld [hl], d
    ld h, h
    nop
    ld d, h
    ld l, b
    ld l, c

jr_01f_739f:
    ld [hl], e
    jr nz, @+$6b

    ld [hl], e
    jr nz, @+$63

    jr nz, @+$76

    ld h, l

jr_01f_73a8:
    ld [hl], e
    ld [hl], h
    ld l, $03
    nop

    db $4c, $56, $2e, $00, $f5, $3e, $00, $cd, $c1, $73

    pop af
    ret


    db $f5, $3e, $01, $cd, $c1, $73, $f1, $c9, $c5, $d5, $e5, $21, $04, $40, $cb, $23
    db $cb, $12, $19, $5e, $23, $56, $21, $56, $41, $19, $b7, $20, $08, $11, $00, $c6
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
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
