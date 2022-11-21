; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00d", ROMX[$4000], BANK[$d]

    db $a7, $4a

jr_00d_4002:
    ld [hl+], a
    dec c
    jr nz, jr_00d_4002

    ret


Call_00d_4007:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, l
    ld [$d207], a
    ld a, h
    ld [$d208], a
    ld a, c
    ld [$d200], a
    ld a, b
    ld [$d201], a
    ld a, e
    ldh [$b0], a
    ld a, d
    ldh [$b2], a
    ld a, $10
    ldh [$b4], a
    push bc
    call Call_000_0341
    call Call_000_23b6
    xor a
    ldh [$8a], a
    ldh [$8b], a
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    inc hl
    inc hl
    inc hl
    inc hl
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $8e00
    ld c, $14
    call Call_000_04db
    pop hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0c01
    call Call_000_0595
    ld hl, $4830
    ld de, $d000
    call Call_000_1f2f
    ld hl, $4882
    ld de, $d100
    call Call_000_1f2f
    ld hl, $48c5
    ld de, $d400
    call Call_000_1f2f
    ld h, $01
    ld l, $02
    call Call_00d_460f
    ld de, $d700
    call Call_000_1f2f
    ld h, $ff
    ld l, $02
    call Call_00d_460f
    ld de, $db00
    call Call_000_1f2f
    ld h, $00
    ld l, $02
    call Call_00d_460f
    ld de, $d900
    call Call_000_1f2f
    ld a, $01
    ldh [rVBK], a
    ld hl, $d000
    ld de, $9000
    ld c, $10
    call Call_000_2096
    ld hl, $d100
    ld de, $9800
    ld c, $24
    call Call_000_2096
    xor a
    ldh [rVBK], a
    ld hl, $d400
    ld de, $9800
    ld c, $24
    call Call_000_2096
    ld hl, $4901
    ld de, $0103
    call Call_000_0595
    ld hl, $4901
    ld de, $0903
    call Call_000_0595
    ld h, $00
    ld l, $0a
    call Call_00d_460f
    ld de, $0404
    call Call_000_0595
    ld a, $01
    ldh [rVBK], a
    ld hl, $de00
    ld de, $9100
    ld c, $20
    call Call_000_2096
    ld hl, $4670
    ld de, $9300
    ld c, $08
    call Call_000_2096
    ld hl, $d900
    ld de, $9380
    ld c, $48
    call Call_000_2096
    ld hl, $dd80
    ld de, $8800
    ld c, $08
    call Call_000_2096
    ld hl, $4670
    ld de, $8880
    ld c, $08
    call Call_000_2096
    ld hl, $d700
    ld de, $8900
    ld c, $20
    call Call_000_2096
    ld hl, $46f0
    ld de, $a700
    ld c, $04
    call Call_000_2096
    call Call_00d_4597
    call Call_00d_44f9
    call Call_000_0371
    call Call_000_2e3b
    call Call_000_2e3b
    ld a, $01
    ld hl, $415c
    call Call_000_23e8
    ld a, $01
    ld hl, $428e
    call Call_000_23e8
    call Call_00d_4a01
    ret


    ldh a, [$8c]
    and $3f
    ld hl, $4175
    add l
    ld l, a
    jr nc, jr_00d_4168

    inc h

jr_00d_4168:
    ld d, $00
    ld e, [hl]
    ld hl, $41b5
    ld bc, $04e0
    call Call_000_26ea
    ret


    db $00, $00, $00, $01, $01, $01, $02, $02, $02, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $02, $02, $02, $01, $01, $01, $00, $00
    db $00, $00, $00, $ff, $ff, $ff, $fe, $fe, $fe, $fd, $fd, $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fe, $fe, $fe, $ff, $ff, $ff, $00, $00
    db $16, $30, $00, $00, $16, $38, $02, $00, $16, $40, $04, $00, $16, $48, $06, $00
    db $16, $50, $08, $00, $16, $58, $0a, $00, $16, $60, $0c, $00, $16, $68, $0e, $00
    db $16, $70, $10, $00, $16, $78, $12, $00, $80

Call_00d_41de:
    ld a, $01
    ld hl, $428e
    call Call_000_23e8
    call Call_00d_4953

jr_00d_41e9:
    call Call_000_2e3b
    ldh a, [$91]
    bit 5, a
    jr z, jr_00d_41fd

    ldh a, [$b2]
    cp $02
    jr c, jr_00d_41e9

    call Call_00d_43fd
    jr jr_00d_4238

jr_00d_41fd:
    bit 4, a
    jr z, jr_00d_420c

    ldh a, [$b2]
    cp $02
    jr c, jr_00d_41e9

    call Call_00d_4324
    jr jr_00d_4238

jr_00d_420c:
    bit 0, a
    jr z, jr_00d_4228

    rst $08

    db $5c

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d207
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$b0]
    add l
    ld l, a
    jr nc, jr_00d_4225

    inc h

jr_00d_4225:
    ld a, [hl]
    jr jr_00d_423a

jr_00d_4228:
    bit 1, a
    jr z, jr_00d_4238

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $08
    ld e, l
    ld a, $ff
    jr jr_00d_423a

jr_00d_4238:
    jr jr_00d_41e9

jr_00d_423a:
    push af
    ld hl, $428e
    call Call_000_2449
    pop af
    ret


Call_00d_4243:
    ld hl, $c600
    ld de, $b880
    ld c, $10
    call Call_000_0468
    ld hl, $c700
    ld de, $9880
    ld c, $10
    call Call_000_0468
    ret


Call_00d_425a:
    ldh a, [$b4]
    add $08
    cp $b0
    jr nz, jr_00d_4264

    ld a, $10

jr_00d_4264:
    ldh [$b4], a
    ret


Call_00d_4267:
    ld hl, $c601
    ld de, $c600
    ld bc, $01ff
    call Call_000_03d3
    ret


Call_00d_4274:
    ldh a, [$b4]
    add $f8
    cp $08
    jr nz, jr_00d_427e

    ld a, $a8

jr_00d_427e:
    ldh [$b4], a
    ret


Call_00d_4281:
    ld hl, $c7fe
    ld de, $c7ff
    ld bc, $01ff
    call Call_000_03e2
    ret


    call Call_00d_42b0
    ldh a, [$b2]
    cp $02
    ret c

    ldh a, [$b1]
    and $0f
    cp $0c
    ret nc

    ld de, $1448
    ld bc, $0970
    call Call_000_26a4
    ld de, $8c48
    ld bc, $2970
    call Call_000_26a4
    ret


Call_00d_42b0:
    ld hl, $ffb1
    inc [hl]
    ld a, [hl]
    and $1c
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld de, $4730
    add hl, de
    ld de, $b060
    ld c, $01
    call Call_000_0468
    ret


Call_00d_42c9:
    call Call_00d_4267
    ldh a, [$b4]
    push af
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    bit 3, h
    jr nz, jr_00d_42dc

    set 4, h

jr_00d_42dc:
    ld de, $a000
    add hl, de
    ld d, h
    ld e, l
    ld hl, $ffb6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $08
    call Call_000_0468
    ld hl, $ffb6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0080
    add hl, de
    ld a, l
    ldh [$b6], a
    ld a, h
    ldh [$b7], a
    pop af
    ld hl, $c613
    ld de, $0020
    ld c, $08

jr_00d_4306:
    ld [hl], $0b
    add hl, de
    dec c
    jr nz, jr_00d_4306

    ld c, $08

jr_00d_430e:
    ld [hl], a
    inc a
    add hl, de
    dec c
    jr nz, jr_00d_430e

    ld hl, $ffb6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_00d_425a
    call Call_00d_4243
    call Call_000_2e3b
    ret


Call_00d_4324:
    rst $08

    db $5b

    ld hl, $428e
    call Call_000_2449
    call Call_00d_496b
    call Call_00d_4597
    call Call_000_2e3b
    ldh a, [$b2]
    ld h, a
    inc h
    ldh a, [$b0]
    inc a
    cp h
    jr c, jr_00d_4341

    ld a, $01

jr_00d_4341:
    ldh [$b0], a
    ld h, $00
    ld l, $02
    call Call_00d_460f
    ld de, $d000
    call Call_000_1f2f
    ld h, $01
    ld l, $02
    call Call_00d_460f
    ld de, $d500
    call Call_000_1f2f
    call Call_000_2e3b
    call Call_000_2e3b
    ld hl, $d200
    ld a, l
    ldh [$b6], a
    ld a, h
    ldh [$b7], a
    call Call_00d_42c9
    call Call_00d_42c9
    call Call_00d_42c9
    call Call_00d_42c9
    call Call_00d_42c9
    call Call_00d_42c9
    call Call_00d_4267
    ld hl, $c613
    call Call_00d_447d
    call Call_00d_425a
    call Call_00d_42c9
    call Call_00d_42c9
    call Call_00d_42c9
    call Call_00d_42c9
    call Call_00d_44b6
    call Call_000_2e3b
    call Call_00d_4953
    ld a, $01
    ld hl, $428e
    call Call_000_23e8
    ret


Call_00d_43a8:
    call Call_00d_4274
    call Call_00d_4281
    ldh a, [$b4]
    push af
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    bit 3, h
    jr nz, jr_00d_43be

    set 4, h

jr_00d_43be:
    ld de, $a000
    add hl, de
    ld d, h
    ld e, l
    ld hl, $ffb6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $08
    call Call_000_0468
    ld hl, $ffb6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $ff80
    add hl, de
    ld a, l
    ldh [$b6], a
    ld a, h
    ldh [$b7], a
    pop af
    ld hl, $c600
    ld de, $0020
    ld c, $08

jr_00d_43e8:
    ld [hl], $0b
    add hl, de
    dec c
    jr nz, jr_00d_43e8

    ld c, $08

jr_00d_43f0:
    ld [hl], a
    inc a
    add hl, de
    dec c
    jr nz, jr_00d_43f0

    call Call_00d_4243
    call Call_000_2e3b
    ret


Call_00d_43fd:
    rst $08

    db $5b

    ld hl, $428e
    call Call_000_2449
    call Call_00d_496b
    call Call_00d_4597
    call Call_000_2e3b
    ldh a, [$b0]
    dec a
    or a
    jr nz, jr_00d_4416

    ldh a, [$b2]

jr_00d_4416:
    ldh [$b0], a
    ld h, $00
    ld l, $02
    call Call_00d_460f
    ld de, $d500
    call Call_000_1f2f
    ld h, $ff
    ld l, $02
    call Call_00d_460f
    ld de, $d000
    call Call_000_1f2f
    call Call_000_2e3b
    call Call_000_2e3b
    ld hl, $d780
    ld a, l
    ldh [$b6], a
    ld a, h
    ldh [$b7], a
    call Call_00d_43a8
    call Call_00d_43a8
    call Call_00d_43a8
    call Call_00d_43a8
    call Call_00d_43a8
    call Call_00d_43a8
    call Call_00d_4274
    call Call_00d_4281
    ld hl, $c600
    call Call_00d_447d
    call Call_00d_43a8
    call Call_00d_43a8
    call Call_00d_43a8
    call Call_00d_43a8
    call Call_00d_44b6
    call Call_000_2e3b
    call Call_00d_4953
    ld a, $01
    ld hl, $428e
    call Call_000_23e8
    ret


Call_00d_447d:
    ld de, $0020
    ld c, $08

jr_00d_4482:
    ld [hl], $09
    add hl, de
    dec c
    jr nz, jr_00d_4482

    ldh a, [$b4]
    ld c, $08

jr_00d_448c:
    ld [hl], a
    inc a
    add hl, de
    dec c
    jr nz, jr_00d_448c

    ldh a, [$b4]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    bit 3, h
    jr nz, jr_00d_44a1

    set 4, h

jr_00d_44a1:
    ld de, $a000
    add hl, de
    ld d, h
    ld e, l
    ld hl, $4670
    ld c, $08
    call Call_000_0468
    call Call_00d_4243
    call Call_000_2e3b
    ret


Call_00d_44b6:
    ld h, $00
    ld l, $0a
    call Call_00d_460f
    ld de, $0404
    call Call_000_056c
    ld h, $00
    ld l, $04
    call Call_00d_460f
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $ab00
    ld c, $20
    call Call_000_0468
    call Call_000_2e3b
    ld hl, $d200
    ld de, $ad00
    ld c, $20
    call Call_000_0468
    call Call_000_2e3b
    ld hl, $d400
    ld de, $af00
    ld c, $10
    call Call_000_0468
    jr jr_00d_4534

Call_00d_44f9:
    ld h, $00
    ld l, $0a
    call Call_00d_460f
    ld de, $0404
    call Call_000_0595
    ld h, $00
    ld l, $04
    call Call_00d_460f
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $ab00
    ld c, $20
    call Call_000_0468
    ld hl, $d200
    ld de, $ad00
    ld c, $20
    call Call_000_0468
    ld hl, $d400
    ld de, $af00
    ld c, $10
    call Call_000_04db

jr_00d_4534:
    ld de, $c605
    ld c, $08
    ld h, $00
    ld l, $08
    call Call_00d_460f

jr_00d_4540:
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
    ld a, $16
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec c
    jr nz, jr_00d_4540

    ld h, d
    ld l, e
    ld de, $0016
    ld c, $08
    ld a, $b0

jr_00d_4572:
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    add hl, de
    dec c
    jr nz, jr_00d_4572

    call Call_00d_4243
    ret


Call_00d_458e:
    ld [hl+], a
    add $08
    cp $b0
    ret c

    sub $a0
    ret


Call_00d_4597:
    ld hl, $c600
    ld c, $08

jr_00d_459c:
    ld a, $0b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $09
    ld [hl+], a
    ld a, $0b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $09
    ld [hl+], a
    ld a, $0b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld de, $000c
    add hl, de
    dec c
    jr nz, jr_00d_459c

    ld c, $08
    ldh a, [$b4]

jr_00d_45c5:
    push af
    call Call_00d_458e
    call Call_00d_458e
    call Call_00d_458e
    call Call_00d_458e
    call Call_00d_458e
    call Call_00d_458e
    call Call_00d_458e
    call Call_00d_458e
    call Call_00d_458e
    call Call_00d_458e
    call Call_00d_458e
    call Call_00d_458e
    call Call_00d_458e
    call Call_00d_458e
    call Call_00d_458e
    call Call_00d_458e
    call Call_00d_458e
    call Call_00d_458e
    call Call_00d_458e
    call Call_00d_458e

Call_00d_4602:
    ld de, $000c
    add hl, de
    pop af
    inc a
    dec c
    jr nz, jr_00d_45c5

    call Call_00d_4243
    ret


Call_00d_460f:
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ldh a, [$b0]
    add h
    ld h, a
    or a
    jr nz, jr_00d_4628

    ldh a, [$b2]
    cp $01
    jr z, jr_00d_4634

    ld h, a
    jr jr_00d_4634

jr_00d_4628:
    ldh a, [$b2]
    cp h
    jr nc, jr_00d_4634

    ld h, $00
    cp $01
    jr z, jr_00d_4634

    inc h

jr_00d_4634:
    ld a, l
    push af
    ld a, h
    push af
    ld hl, $d207
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    add l
    ld l, a
    jr nc, jr_00d_4644

    inc h

jr_00d_4644:
    ld h, [hl]
    pop af
    ld l, a
    push de
    push hl
    ld l, h
    ld h, $00
    ld d, h
    ld e, l
    add hl, hl
    add hl, de
    add hl, hl
    add hl, hl
    pop de
    ld d, $00
    add hl, de
    push hl
    ld hl, $d200
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    add hl, de
    ld de, $0008
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec b
    ld b, $0b
    inc c
    ld d, $19
    ld d, $19
    dec bc
    inc c
    dec b
    ld b, $02
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    ld e, l
    ld h, e
    cp a
    pop bc
    ld h, a
    sbc c
    rst $18
    add hl, sp
    cp a
    ld a, c
    ld a, a
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    ld a, a
    ld sp, hl
    cp a
    ld a, c
    rst $18
    add hl, sp
    ld h, a
    sbc c
    cp a
    pop bc
    ld e, l
    ld h, e
    ld a, $3e
    rst $38
    rst $38
    rst $38
    rst $38
    jp $dfff


    db $e3
    rst $18
    db $e3
    rst $18
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    cp a
    rst $00
    cp a
    rst $00
    cp a
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $ff
    cp $1f
    cp $1f
    cp $1f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    db $fd
    ld a, $fd
    ld a, $fd
    ld a, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
    rst $38
    ei
    ld a, h
    ei
    ld a, h
    ei
    ld a, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $30
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    rst $28
    pop af
    rst $28
    pop af
    rst $28
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec b
    ld b, $0b
    inc c
    ld d, $19
    ld d, $19
    dec bc
    inc c
    dec b
    ld b, $02
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    ld e, l
    ld h, e
    cp a
    pop bc
    ld h, a
    sbc c
    rst $18
    add hl, sp
    cp a
    ld a, c
    ld a, a
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    ld a, a
    ld sp, hl
    cp a
    ld a, c
    rst $18
    add hl, sp
    ld h, a
    sbc c
    cp a
    pop bc
    ld e, l
    ld h, e
    ld a, $3e
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

    db $b5, $00, $ff, $ec, $ff, $ff, $ec, $10, $e0, $fe, $e1, $f0, $df, $00, $0f, $00
    db $08, $07, $fe, $e1, $ef, $f0, $f6, $fe, $e1, $0f, $f0, $f0, $e5, $55, $00, $aa
    db $00, $3c, $fc, $e9, $b0, $f1, $c3, $ff, $df, $e3, $fe, $e1, $b0, $e9, $e7, $f0
    db $0f, $f7, $fe, $e2, $aa, $e3, $0f, $00, $0f, $66, $a8, $e2, $ef, $f0, $e0, $ed
    db $da, $e3, $f0, $0f, $e0, $e5, $00, $80, $e5, $e0, $ff, $e0, $ff, $7e, $e1, $00
    db $00

    nop

    db $7b, $0a, $2a, $fe, $ef, $09, $09, $09, $29, $ff, $e5, $12, $e1, $f0, $0a, $e0
    db $e9, $c0, $f2, $29, $c0, $e7, $b4, $e0, $fd, $fa, $01, $0b, $ff, $e0, $f0, $ff
    db $f0, $ff, $f0, $ff, $f0, $ff, $f0, $ff, $f0, $ff, $00, $f0, $ff, $e0, $eb, $e0
    db $dd, $80, $d4, $a9, $c6, $40, $d4, $c0, $ff, $c0, $ff, $00, $c0, $ff, $d7, $a0
    db $00, $00

    nop

    db $45, $02, $ff, $f0, $00, $ff, $e8, $e0, $ff, $e0, $fb, $06, $ff, $f0, $2a, $c0
    db $e9, $04, $ff, $e0, $01, $af, $e7, $01, $f0, $e1, $e0, $ff, $80, $e0, $ff, $e0
    db $ff, $e0, $ff, $e0, $ff, $e0, $ff, $e0, $fd, $e0, $dd, $03, $00, $ff, $f0, $80
    db $df, $e0, $ff, $e0, $ff, $e0, $ff, $ff, $e1, $00, $00

    nop

    db $80, $2d, $ff, $7f, $ce, $39, $00, $00, $7d, $3b, $16, $33, $4c, $1e, $44, $11
    db $96, $32, $d2, $21, $ec, $10, $44, $08, $fb, $02, $03, $ff, $ee, $04, $14, $15
    db $16, $17, $ff, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $2b, $05, $20, $ff, $ee
    db $06, $e0, $fd, $00, $ff, $e8, $e0, $fd, $0b, $07, $08, $ff, $ee, $09, $c0, $e9
    db $00, $00

    nop

    db $01, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f4, $00, $00

    nop

Call_00d_4953:
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d200
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    jp hl


Call_00d_496b:
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d200
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    jp hl


Call_00d_4985:
    push af
    ld hl, $4944
    ld de, $d1a0
    call Call_000_1f2f
    ld hl, $4919
    ld de, $d4a0
    call Call_000_1f2f
    pop af
    ret


    ld h, $00
    ld l, $00
    call Call_00d_460f
    ld de, $d600
    call Call_000_1f2f
    ld hl, $d600
    ld de, $b070
    ld c, $09
    call Call_000_0468
    ld a, $07
    ld hl, $d4c1
    ld bc, $001e
    ld [hl+], a
    inc de
    inc a
    ld [hl+], a
    inc de
    inc a
    ld [hl], a
    inc de
    inc a
    add hl, bc
    ld [hl+], a
    inc de
    inc a
    ld [hl+], a
    inc de
    inc a
    ld [hl], a
    inc de
    inc a
    add hl, bc
    ld [hl+], a
    inc de
    inc a
    ld [hl+], a
    inc de
    inc a
    ld [hl], a
    ld h, $00
    ld l, $06
    call Call_00d_460f
    ld d, h
    ld e, l
    ld hl, $d1c1
    ld bc, $001e
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    inc de
    add hl, bc
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    inc de
    add hl, bc
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    ret


Call_00d_4a01:
    ld hl, $4882
    ld de, $d000
    call Call_000_1f2f
    ld hl, $48c5
    ld de, $d300
    call Call_000_1f2f
    ld hl, $4944
    ld de, $d600
    call Call_000_1f2f
    ld hl, $4919
    ld de, $d900
    call Call_000_1f2f
    ld hl, $d620
    ld de, $d1e0
    ld c, $02
    call Call_000_03eb
    ld hl, $d920
    ld de, $d4e0
    ld c, $02
    call Call_000_03eb
    call Call_00d_4a90
    call Call_000_2e3b
    ld hl, $d600
    ld de, $d1c0
    ld c, $04
    call Call_000_03eb
    ld hl, $d900
    ld de, $d4c0
    ld c, $04
    call Call_000_03eb
    ld hl, $d680
    ld de, $d200
    ld c, $02
    call Call_000_03eb
    ld hl, $d980
    ld de, $d500
    ld c, $02
    call Call_000_03eb
    call Call_00d_4a90
    call Call_000_2e3b
    ld hl, $d600
    ld de, $d1a0
    ld c, $0a
    call Call_000_03eb
    ld hl, $d900
    ld de, $d4a0
    ld c, $0a
    call Call_000_03eb
    call Call_00d_4a90
    call Call_000_2e3b
    ret


Call_00d_4a90:
    ld hl, $d1a0
    ld de, $b9a0
    ld c, $0a
    call Call_000_0468
    ld hl, $d4a0
    ld de, $99a0
    ld c, $0a
    call Call_000_0468
    ret


    call Call_00d_707a
    ld a, [$c834]
    call Call_00d_70a9
    ld bc, $4acc
    call Call_00d_4007
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    call Call_00d_41de
    push af
    ld c, $08
    call Call_000_25a1
    call Call_000_2625
    pop af
    ret


    db $f7, $6f, $70, $70, $4c, $4b, $86, $4c

    adc [hl]
    ld c, h
    adc [hl]
    ld c, h
    rst $20
    ld c, h
    ld b, b
    ld c, l
    ld c, c
    ld c, l
    sbc c
    ld c, l
    adc h
    ld d, l

    db $8c, $55, $7e, $59

    ld [hl], e
    ld e, l

    db $7c, $5d, $cc, $5d

    db $ec
    ld e, l

    db $ec, $5d, $4c, $61

    cp e
    ld h, h

    db $c4, $64, $14, $65

    inc [hl]
    ld h, l

    db $34, $65, $cf, $67

    adc d
    ld l, d

    db $93, $6a, $e3, $6a

    inc bc
    ld l, e

    db $03, $6b, $3b, $6d

    ld a, [hl]
    ld l, a

    db $87, $6f, $d7, $6f

    cp c
    ld c, l
    cp c
    ld c, l
    ld h, a
    ld d, c
    inc de
    ld d, l
    inc e
    ld d, l
    ld l, h
    ld d, l
    cp c
    ld c, l
    cp c
    ld c, l
    ld h, a
    ld d, c
    inc de
    ld d, l
    inc e
    ld d, l
    ld l, h
    ld d, l
    cp c
    ld c, l
    cp c
    ld c, l
    ld h, a
    ld d, c
    inc de
    ld d, l
    inc e
    ld d, l
    ld l, h
    ld d, l
    cp c
    ld c, l
    cp c
    ld c, l
    ld h, a
    ld d, c
    inc de
    ld d, l
    inc e
    ld d, l
    ld l, h
    ld d, l
    cp c
    ld c, l

    db $b9, $4d, $67, $51

    inc de
    ld d, l

    db $1c, $55, $6c, $55, $2f, $07, $0f, $0f, $08, $fe, $e2, $09, $fe, $e2, $f4, $e1
    db $ff, $19, $17, $19, $1d, $13, $1f, $13, $0f, $ff, $1f, $06, $0f, $00, $00, $c6
    db $ef, $ad, $ff, $7b, $d7, $39, $eb, $1d, $b7, $cd, $ff, $ff, $c5, $bf, $c5, $f7
    db $0d, $db, $3d, $ff, $ff, $f9, $ff, $f9, $8f, $89, $8f, $89, $07, $ef, $8f, $03
    db $07, $00, $ff, $e0, $01, $83, $83, $ff, $82, $9b, $be, $66, $ff, $bb, $c7, $7f
    db $ff, $83, $ff, $33, $df, $33, $ff, $03, $7d, $ff, $83, $df, $e1, $bb, $fd, $9f
    db $bf, $03, $ff, $87, $00, $00, $03, $07, $85, $ce, $4b, $ff, $fc, $b6, $79, $dd
    db $33, $7b, $87, $b7, $ff, $cf, $7e, $cf, $7c, $4e, $7c, $4c, $7c, $bb, $cc, $fc
    db $fe, $e1, $fc, $98, $fc, $c2, $e1, $82, $ff, $c3, $c3, $c6, $c5, $c6, $c7, $cc
    db $8b, $ff, $cc, $0f, $88, $0f, $18, $16, $19, $1f, $ff, $11, $1f, $11, $17, $19
    db $0b, $1d, $07, $fd, $0f, $a0, $e1, $b8, $fc, $54, $ee, $be, $46, $ff, $fe, $06
    db $fa, $07, $7f, $93, $df, $b3, $ff, $b5, $fb, $ff, $f9, $ef, $f9, $8a, $8d, $ff
    db $87, $8c, $87, $84, $83, $87, $01, $83, $fc, $80, $e1, $fc, $e3, $18, $3c, $64
    db $fe, $be, $c3, $ff, $d5, $bb, $7f, $b9, $75, $bb, $ff, $83, $bf, $b7, $cf, $ce
    db $ff, $bc, $fe, $a0, $e1, $04, $bf, $0e, $0a, $1f, $17, $1b, $1f, $30, $e0, $6f
    db $ff, $f3, $bf, $c3, $7e, $83, $ef, $32, $df, $ff, $32, $7f, $82, $be, $c3, $6f
    db $f3, $3f, $f7, $7f, $0e, $1f, $c0, $e6, $01, $31, $7b, $ca, $ff, $ff, $77, $8e
    db $f7, $6c, $af, $5c, $fe, $ff, $3f, $dd, $3e, $ff, $0c, $be, $cd, $7f, $f7, $ff
    db $3b, $7f, $a0, $e5, $c0, $e0, $20, $f0, $9f, $f0, $30, $b0, $70, $70, $fa, $e0
    db $f8, $e3, $e0, $7f, $f0, $c0, $e0, $80, $c0, $00, $00, $00, $00

    nop

    db $80, $7d, $1f, $68, $4c, $68, $00, $00

    rrca
    ld d, l
    nop
    xor d
    nop
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    db $fc
    rst $38
    ldh a, [$ef]
    nop
    nop
    nop
    rrca
    ld d, l
    nop
    xor d
    nop
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    db $fc
    rst $38
    ldh a, [$ef]
    nop
    nop
    nop
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    rst $38
    ld a, a
    sub b
    ld a, a
    call nc, Call_00d_4602
    ld [bc], a
    rra
    jr @+$48

    ld [bc], a
    add b
    add hl, bc
    nop
    nop
    sbc $33
    call z, Call_000_0803
    inc bc
    ld b, [hl]
    ld [bc], a
    adc e
    ld hl, $04ca
    or l
    ld de, $03ff

    db $fb, $00, $ff, $fe, $fa, $fc, $00, $f1, $03, $e7, $ff, $0f, $ec, $0c, $e8, $0f
    db $ef, $07, $e7, $bf, $07, $f7, $06, $f7, $04, $f4, $fe, $f9, $07, $c7, $f7, $00
    db $f0, $ae, $fc, $fe, $ff, $88, $e5, $c7, $0f, $ff, $1c, $3f, $70, $ff, $c3, $ff
    db $0c, $ff, $ef, $31, $e7, $c6, $ff, $ff, $e0, $80, $ff, $00, $fe, $ff, $e4, $30
    db $70, $78, $c0, $fc, $80, $f4, $fe, $fe, $e4, $e4, $80, $a4, $80, $c4, $80, $8c
    db $ef, $80, $fc, $84, $ff, $de, $e1, $f0, $03, $f7, $ff, $17, $e4, $03, $e6, $07
    db $ee, $0f, $e8, $bf, $0f, $e9, $07, $ed, $0f, $eb, $44, $e0, $ef, $ff, $11, $e3
    db $09, $f1, $00, $fd, $00, $fc, $bf, $02, $fc, $00, $fe, $01, $fe, $88, $ff, $ff
    db $fd, $c0, $5f, $e0, $01, $ff, $c6, $ff, $18, $ff, $1f, $63, $ff, $8c, $39, $31
    db $80, $e1, $4c, $e0, $80, $f0, $fd, $e4, $80, $ec, $14, $08, $80, $c1, $cf, $ef
    db $ff, $ff, $75, $ff, $c9, $ff, $91, $fe, $b9, $ff, $ff, $60, $ff, $40, $ff, $c0
    db $df, $68, $ff, $ff, $70, $ff, $a0, $ef, $f4, $ff, $b8, $ff, $77, $d8, $3d, $6e
    db $1f, $3f, $9b, $1d, $ff, $24, $75, $47, $67, $40, $60, $60, $60, $e2, $f8, $cc
    db $00, $18, $e0, $10, $e0, $82, $e2, $03, $ff, $8c, $fe, $f6, $e0, $c6, $fe, $18
    db $f9, $61, $e7, $86, $7f, $fc, $fa, $f0, $e8, $c0, $c0, $40, $fe, $e4, $7f, $43
    db $c3, $47, $c0, $4f, $c0, $4e, $fe, $e6, $ff, $4a, $c0, $4c, $c0, $48, $c0, $4f
    db $c8, $fe, $00, $e1, $6c, $fe, $b6, $db, $ff, $93, $ff, $ff, $07, $ff, $04, $ff
    db $81, $ff, $e7, $bf, $ff, $be, $4f, $d9, $be, $73, $de, $3a, $f6, $ff, $26, $e4
    db $26, $e0, $30, $d0, $38, $e8, $ff, $18, $f8, $09, $5b, $bf, $fe, $ff, $e7, $7f
    db $7f, $8c, $ce, $08, $0c, $08, $08, $80, $f0, $dd, $63, $97, $c0, $01, $ff, $06
    db $88, $e3, $9c, $1a, $3f, $70, $68, $c0, $a0, $00, $80, $86, $c5, $7e, $c3, $bf
    db $03, $83, $87, $c6, $c7, $44, $fe, $e7, $c6, $fc, $fc, $e4, $80, $c2, $7f, $40
    db $3f, $00, $3f, $20, $ff, $9f, $90, $8f, $80, $cf, $c0, $6f, $e1, $ff, $2e, $e2
    db $ac, $60, $6d, $c1, $dd, $c1, $ff, $ed, $e1, $6d, $21, $6d, $20, $2d, $42, $ff
    db $ec, $c1, $ee, $84, $83, $32, $39, $48, $7f, $cd, $84, $c5, $44, $4d, $48, $78
    db $00, $ed, $ff, $fe, $ff, $ff, $19, $f9, $60, $e7, $86, $ff, $9f, $1b, $71, $6b
    db $c0, $a1, $00, $80, $ff, $0e, $0e, $1f, $03, $1f, $01, $0e, $02, $ff, $00, $00
    db $0f, $1f, $31, $70, $7f, $c3, $ef, $8f, $80, $ff, $9f, $64, $c0, $ff, $ff, $1f
    db $af, $ff, $0d, $df, $09, $fe, $e3, $9f, $fe, $e0, $1f, $ff, $09, $3f, $09, $ff
    db $09, $ff, $ff, $01, $ef, $03, $01, $f1, $00, $20, $c4, $20, $c0, $8e, $ff, $1f
    db $3d, $73, $5e, $e1, $bf, $c1, $ff, $ff, $92, $7f, $80, $7f, $89, $bc, $d3, $df
    db $f3, $ef, $7f, $bc, $a1, $84, $a4, $20, $c0, $07, $0f, $7e, $78, $a9, $01, $fe
    db $80, $7c, $40, $3c, $46, $e0, $ff, $cf, $c8, $67, $e4, $33, $f2, $99, $f9, $ff
    db $cc, $7c, $e6, $3e, $73, $1f, $39, $0f, $ff, $1d, $07, $0f, $02, $07, $fe, $ff
    db $f3, $ff, $3f, $c0, $c1, $8e, $8e, $8e, $82, $80, $7d, $80, $72, $a0, $e7, $f7
    db $72, $72, $52, $fe, $ed, $fd, $7e, $ff, $e0, $ff, $e7, $1f, $3c, $43, $87, $ff
    db $08, $f1, $02, $fc, $80, $7f, $02, $01, $ff, $b9, $fc, $f4, $de, $7e, $ef, $7f
    db $f7, $df, $bb, $f7, $77, $ff, $ef, $3b, $a0, $f0, $f8, $fb, $04, $03, $96, $e1
    db $08, $f0, $83, $07, $3f, $f7, $7f, $e7, $e1, $f8, $88, $e0, $31, $00, $0e, $76
    db $1f, $a0, $40, $80, $e4, $87, $80, $7f, $00, $fe, $e4, $ff, $01, $7e, $00, $3e
    db $00, $9e, $82, $dc, $ef, $40, $dd, $41, $5d, $b2, $c0, $dd, $a0, $9c, $df, $80
    db $be, $80, $bd, $81, $fe, $e2, $80, $bc, $fb, $80, $bf, $fe, $e7, $84, $c3, $f0
    db $f8, $fe, $ff, $1f, $ff, $d3, $3e, $66, $97, $31, $4f, $ff, $98, $26, $ce, $95
    db $64, $03, $76, $0b, $ff, $73, $01, $7b, $11, $0b, $e1, $eb, $8b, $ff, $d3, $12
    db $26, $27, $cf, $4c, $9c, $1b, $ff, $38, $77, $f1, $ce, $ce, $3d, $04, $fb, $6e
    db $00, $c8, $40, $3f, $30, $a1, $82, $81, $40, $64, $81, $ff, $11, $e0, $24, $ce
    db $4e, $9b, $9f, $31, $ff, $3f, $66, $7f, $4f, $7f, $61, $7f, $46, $bf, $7f, $6f
    db $7f, $c1, $ff, $86, $3d, $e0, $c7, $fe, $79, $80, $06, $ff, $ef, $7f, $6f, $ff
    db $c5, $fb, $ff, $82, $d8, $a1, $ff, $ff, $3b, $3f, $8a, $d7, $0e, $0a, $ee, $fe
    db $e1, $0b, $96, $80, $10, $e0, $ff, $80, $7f, $10, $0f, $c4, $e3, $f1, $78, $ff
    db $dc, $de, $bf, $87, $7d, $45, $fb, $38, $ff, $9b, $88, $7f, $04, $7f, $0f, $f1
    db $91, $ff, $6f, $60, $6f, $20, $ff, $31, $ce, $ce, $ff, $bd, $84, $bf, $84, $ff
    db $c6, $38, $38, $cf, $f7, $10, $f7, $10, $f8, $69, $12, $e0, $1f, $20, $75, $1f
    db $04, $e7, $40, $ba, $a0, $80, $df, $c0, $fe, $e2, $ff, $d0, $cf, $c0, $ef, $e0
    db $ef, $e8, $e7, $ff, $e0, $f7, $f0, $f7, $f0, $77, $f0, $f7, $0f, $80, $87, $e0
    db $ef, $f4, $e0, $f6, $e0, $f4, $e1, $ca, $e3, $3f, $02, $01, $fc, $fd, $e0, $f1
    db $a0, $c1, $2e, $e5, $ff, $20, $9f, $88, $c7, $e4, $f3, $f2, $39, $ff, $f9, $7c
    db $9c, $8e, $7e, $06, $fe, $83, $ff, $ff, $87, $f9, $c9, $77, $30, $f7, $10, $ff
    db $ff, $08, $ff, $1f, $e3, $e1, $cf, $40, $03, $df, $40, $00, $00

    nop

    db $29, $00, $ff, $ff, $e9, $e8, $03, $dd, $ec, $ff, $f0, $ff, $c0, $f6, $df, $1f
    db $00, $ce, $00, $f1, $8d, $e8, $80, $00, $f5, $cf, $b0, $ee, $e0, $80, $f4, $03
    db $00, $0e, $00, $bf, $3b, $03, $ec, $0f, $b0, $3f, $f8, $e5, $c0, $ff, $ff, $00
    db $ff, $01, $ff, $c6, $ff, $ff, $df, $ff, $0c, $ff, $31, $ff, $f2, $e1, $03, $ff
    db $7d, $8c, $f6, $e0, $ff, $ff, $63, $ff, $80, $e6, $e0, $ff, $06, $ff, $19, $fe
    db $67, $f9, $9e, $e7, $df, $fe, $fe, $19, $ff, $66, $f8, $e0, $7b, $9f, $ff, $e5
    db $71, $9e, $c0, $7f, $00, $83, $00, $ff, $40, $00, $a0, $80, $50, $c0, $28, $e0
    db $ff, $94, $f0, $ca, $f8, $65, $7c, $ff, $00, $f5, $3f, $2e, $ec, $3e, $e9, $c2
    db $0e, $00, $15, $04, $5f, $2a, $0e, $51, $1f, $c0, $4e, $ea, $40, $78, $e0, $ff
    db $1b, $03, $1c, $0f, $1b, $0c, $1f, $0f, $7f, $1f, $07, $0f, $07, $0e, $06, $c3
    db $80, $e2, $fb, $de, $e7, $77, $e0, $ff, $80, $80, $ff, $00, $3d, $18, $80, $e0
    db $8c, $ff, $f7, $39, $f0, $e1, $e0, $c1, $fd, $c6, $78, $e4, $f9, $fc, $e7, $f0
    db $ff, $c0, $7f, $7f, $40, $79, $9c, $e7, $70, $9f, $78, $e0, $fc, $41, $e0, $fc
    db $e3, $0e, $e3, $1f, $e1, $1f, $f3, $ff, $0e, $ff, $00, $ef, $0f, $be, $31, $43
    db $ff, $7f, $b2, $3e, $d9, $1f, $ed, $0f, $f7, $ff, $07, $fa, $02, $fe, $fe, $33
    db $f3, $fe, $f3, $c0, $80, $d8, $c0, $fc, $e3, $c1, $00, $61, $00, $ff, $a1, $80
    db $a6, $3f, $cf, $7f, $e1, $7f, $ff, $c6, $7f, $ef, $7f, $41, $7f, $86, $ff, $bf
    db $ef, $ff, $a0, $80, $e0, $c0, $fe, $e3, $d0, $7f, $c0, $f0, $e0, $f0, $e0, $0f
    db $04, $fe, $eb, $fe, $98, $e3, $bf, $30, $47, $78, $83, $fc, $8b, $b7, $f4, $8b
    db $f4, $f0, $ed, $7f, $40, $fe, $e2, $43, $ff, $78, $47, $70, $4f, $71, $4e, $71
    db $4e, $7e, $68, $e3, $7f, $03, $be, $87, $7c, $c7, $fe, $e1, $f7, $f0, $8f, $9f
    db $a2, $c0, $ff, $ff, $1f, $ff, $ff, $0d, $ff, $29, $df, $29, $df, $ff, $8e, $fb
    db $f3, $8e, $9f, $c0, $ff, $e7, $ff, $7a, $f7, $ff, $df, $72, $df, $72, $62, $40
    db $e3, $41, $ff, $e3, $c1, $e3, $c1, $c3, $80, $c1, $80, $5f, $c2, $80, $c3, $81
    db $c7, $82, $c0, $06, $68, $e0, $df, $ef, $7f, $c5, $ff, $82, $5e, $c0, $e8, $e0
    db $ff, $f8, $f0, $78, $f0, $f8, $f0, $f8, $80, $bf, $f0, $e0, $e8, $e0, $78, $f0
    db $60, $ec, $07, $fe, $6c, $e1, $9b, $e4, $db, $a4, $bb, $c4, $f3, $1f, $8c, $87
    db $fc, $ff, $ff, $f2, $e1, $f0, $e9, $6c, $e1, $ff, $71, $4e, $75, $4a, $73, $4c
    db $77, $48, $6f, $78, $4f, $ff, $ff, $6a, $e3, $7d, $c6, $fc, $e3, $fd, $ff, $6c
    db $e2, $69, $9f, $69, $9f, $e9, $1f, $c7, $c9, $3f, $09, $f2, $a0, $6c, $e1, $fc
    db $e7, $ff, $7e, $5b, $c3, $81, $fe, $e0, $80, $c0, $fe, $e6, $06, $ce, $a0, $5f
    db $fb, $3b, $7b, $0a, $1b, $fe, $e3, $0b, $66, $e0, $7c, $64, $e0, $1a, $c3, $fc
    db $00, $fe, $fc, $0f, $1e, $ae, $ff, $0f, $00, $0b, $03, $0c, $07, $1a, $03, $ff
    db $16, $07, $18, $0f, $19, $0f, $ff, $00, $ff, $e3, $00, $be, $80, $df, $cf, $75
    db $ff, $df, $c9, $ff, $91, $ff, $b8, $1b, $c0, $6d, $6c, $ff, $92, $b6, $93, $ff
    db $07, $ff, $04, $ff, $d5, $81, $ea, $c0, $ff, $50, $c2, $c0, $9a, $a0, $e0, $80
    db $7d, $b0, $98, $a0, $fd, $01, $0f, $01, $01, $fe, $86, $ff, $6e, $0e, $ff, $7e
    db $e7, $ff, $dc, $1f, $ef, $3b, $03, $06, $00, $ea, $e1, $fc, $00, $c0, $ff, $80
    db $b8, $80, $f7, $f0, $1e, $fe, $d3, $ff, $ff, $a6, $3e, $51, $17, $28, $0f, $17
    db $fd, $07, $7e, $e1, $e0, $00, $d8, $c0, $76, $f0, $7f, $dd, $dc, $87, $bf, $ee
    db $e0, $f8, $80, $aa, $be, $4c, $8d, $15, $07, $1b, $0f, $1f, $ca, $e0, $0d, $ef
    db $01, $07, $01, $02, $50, $80, $60, $ff, $40, $fe, $f2, $80, $48, $ff, $70, $ff
    db $a0, $ff, $e4, $fe, $60, $e0, $fe, $bf, $69, $cf, $32, $fe, $1b, $ff, $fe, $2f
    db $f6, $3d, $e4, $2f, $e0, $17, $ff, $f0, $30, $e0, $b1, $e0, $f2, $60, $e3, $ff
    db $c1, $d3, $c1, $73, $e1, $b3, $21, $f2, $ff, $20, $b1, $3f, $40, $7f, $81, $ff
    db $92, $fe, $b2, $80, $09, $ff, $90, $ff, $cf, $ff, $ba, $ff, $b8, $d5, $fc, $6e
    db $fe, $77, $ff, $b3, $fb, $ff, $77, $a2, $a0, $ff, $ff, $16, $06, $0c, $ff, $05
    db $8a, $03, $87, $03, $85, $01, $e5, $ff, $01, $f5, $e1, $a7, $83, $45, $7d, $38
    db $ff, $fb, $88, $9b, $04, $7f, $0f, $7f, $91, $ff, $f1, $60, $6f, $20, $6f, $b0
    db $80, $e8, $ff, $e0, $34, $f0, $7a, $f8, $8d, $9c, $07, $0f, $7e, $82, $fe, $87
    db $df, $6d, $1a, $e0, $02, $e5, $92, $63, $ff, $50, $7f, $ac, $3f, $df, $1f, $79
    db $1b, $ff, $ae, $24, $df, $47, $df, $40, $ff, $60, $ff, $0f, $f8, $0e, $f8, $1b
    db $fb, $fe, $fe, $ff, $67, $e7, $bd, $8c, $fb, $08, $ff, $08, $ff, $51, $40, $d0
    db $c0, $f8, $80, $f4, $30, $ff, $7a, $48, $be, $84, $f6, $44, $cf, $48, $fb, $7f
    db $7f, $8c, $67, $1f, $00, $f7, $07, $f7, $fd, $f0, $f0, $c3, $07, $00, $7b, $03
    db $bf, $3f, $ff, $e1, $e7, $ca, $02, $17, $07, $2c, $0c, $ff, $d8, $1b, $71, $77
    db $ce, $ce, $04, $3d, $ff, $08, $fb, $31, $ff, $ce, $ce, $84, $bd, $ff, $84, $bf
    db $c6, $ff, $38, $38, $10, $f7, $ff, $10, $f7, $c9, $f9, $30, $77, $10, $f7, $fd
    db $08, $40, $a0, $e1, $e3, $40, $cf, $40, $df, $00, $00, $00

    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp

    db $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0e, $0e, $0f, $0f, $0f, $0f, $0f, $0f
    db $0f, $0f, $0e, $0e, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0e, $0e, $0f, $0f
    db $0f, $0f, $0f, $0f, $0f, $0f, $0e, $0e, $0f, $0f, $0f, $0f, $0f, $0f, $0f, $0f
    db $0e, $0e, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
    db $0d, $0e, $0e, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
    db $ff, $7f, $5f, $03, $5f, $02, $00, $00, $5f, $02, $ff, $6b, $3f, $01, $00, $00
    db $5f, $02, $ff, $6b, $40, $02, $00, $00, $5f, $02, $ff, $6b, $40, $7d, $00, $00
    db $f3, $00, $ff, $fe, $ff, $fe, $fd, $04, $f8, $11, $e3, $ff, $27, $cf, $4f, $99
    db $1e, $b2, $3f, $a2, $ff, $bf, $2f, $37, $73, $6f, $66, $5e, $dc, $ff, $fd, $e5
    db $fd, $85, $7d, $19, $e0, $20, $ff, $e0, $20, $f4, $14, $fe, $9c, $77, $fe, $ff
    db $01, $03, $22, $c6, $4f, $9f, $17, $b5, $df, $a3, $22, $23, $62, $41, $ff, $e0
    db $71, $71, $3f, $5b, $ca, $8f, $84, $9b, $8e, $a2, $ff, $fe, $ff, $ff, $01, $00
    db $fc, $fe, $87, $03, $3c, $1c, $ff, $e1, $60, $8f, $80, $ff, $f8, $df, $8f, $ff
    db $03, $01, $e3, $e3, $63, $63, $62, $42, $ff, $00, $00, $04, $04, $00, $00, $18
    db $18, $ff, $01, $00, $03, $01, $9e, $87, $ce, $cb, $ff, $6b, $29, $3d, $15, $a7
    db $a2, $f7, $66, $cf, $fb, $32, $ff, $0c, $a9, $e5, $a2, $ea, $f7, $00, $1f, $f7
    db $14, $e3, $00, $c1, $fc, $e0, $f6, $e0, $88, $ff, $fe, $fe, $c8, $03, $f0, $fb
    db $18, $1b, $ea, $09, $ff, $d0, $18, $a3, $37, $cf, $fe, $fe, $b2, $ff, $ff, $98
    db $ff, $88, $ff, $c9, $fe, $4a, $ff, $7d, $4d, $7f, $5e, $ef, $b8, $cf, $e9, $ff
    db $0f, $8a, $66, $0e, $32, $06, $89, $d3, $ff, $54, $49, $c2, $ec, $ec, $61, $e1
    db $73, $ff, $f2, $76, $f4, $54, $d4, $5c, $d8, $98, $fb, $98, $98, $38, $ea, $fe
    db $02, $fc, $04, $f9, $be, $b4, $c1, $0f, $d9, $1b, $d3, $12, $fe, $e0, $1a, $ff
    db $d3, $0a, $db, $2b, $c9, $0d, $e9, $05, $ff, $ec, $12, $e6, $09, $f3, $05, $f9
    db $01, $ff, $fd, $00, $fd, $02, $fc, $00, $fe, $01, $ff, $be, $00, $bf, $01, $1e
    db $00, $be, $02, $ef, $bc, $00, $fd, $01, $fe, $e4, $02, $fc, $01, $ff, $fe, $42
    db $3c, $00, $81, $bb, $ff, $ff, $ff, $66, $ff, $41, $ff, $4e, $f8, $90, $f0, $ff
    db $a0, $fc, $5c, $ec, $6c, $ac, $ac, $ec, $ff, $e0, $b0, $b0, $80, $00, $00, $00
    db $c1, $ff, $81, $f8, $f8, $c4, $c4, $87, $87, $8e, $ff, $86, $1b, $0b, $3b, $3b
    db $34, $24, $61, $ff, $21, $e0, $40, $00, $fc, $01, $fb, $02, $ff, $fa, $0a, $f2
    db $13, $e7, $46, $8e, $1d, $ff, $39, $7c, $e0, $c3, $80, $f8, $80, $ff, $ff, $70
    db $cf, $0f, $e0, $e0, $ff, $bf, $ff, $fb, $80, $c4, $fe, $e0, $e4, $80, $64, $c0
    db $f4, $ff, $c0, $f2, $60, $7a, $30, $9f, $88, $6f, $ff, $2f, $ee, $ec, $4a, $ce
    db $7e, $ee, $3e, $ff, $7c, $7f, $73, $78, $50, $7f, $cf, $e3, $ff, $c0, $fc, $a0
    db $be, $9c, $c3, $c3, $3c, $ff, $38, $c7, $87, $78, $f0, $0f, $1f, $00, $ff, $00
    db $79, $fc, $fc, $c6, $fe, $67, $ff, $ff, $11, $ff, $c9, $7f, $29, $3e, $17, $7c
    db $ff, $76, $7c, $7e, $6e, $6a, $6a, $0a, $1e, $ff, $16, $86, $86, $0c, $06, $18
    db $0c, $39, $ff, $3c, $cc, $4d, $8d, $84, $84, $86, $46, $ff, $42, $f2, $f3, $f3
    db $e1, $e1, $a1, $71, $ff, $30, $00, $3f, $80, $df, $c0, $5f, $d0, $ff, $4f, $c8
    db $e7, $e2, $71, $b8, $9c, $3e, $ff, $07, $c3, $01, $1f, $01, $ff, $0e, $ff, $ff
    db $f0, $1f, $07, $ff, $fd, $ff, $01, $67, $fb, $01, $27, $fe, $e0, $26, $03, $2f
    db $03, $4f, $ff, $06, $5e, $0c, $f9, $11, $f6, $f4, $77, $ff, $37, $52, $73, $fe
    db $76, $7c, $3e, $fe, $ff, $ce, $1e, $0a, $fe, $f3, $c7, $03, $3f, $ff, $05, $7f
    db $39, $c7, $c3, $3f, $1c, $e7, $ff, $e1, $1e, $0f, $f0, $f8, $00, $00, $2d, $ff
    db $cf, $5f, $9e, $1f, $3f, $7f, $7f, $7f, $ff, $78, $3f, $77, $1f, $3e, $bf, $32
    db $3f, $ff, $6c, $77, $f6, $f7, $b6, $f3, $b2, $ff, $ff, $ef, $66, $c2, $6f, $40
    db $3f, $61, $3f, $ff, $20, $9f, $30, $4f, $8c, $9f, $3b, $3b, $8f, $39, $3b, $fb
    db $ff, $ff, $e0, $24, $c0, $ac, $c0, $00, $dd, $f8, $fa, $e1, $80, $7f, $40, $e1
    db $e0, $88, $c7, $7f, $e4, $f3, $f0, $9b, $d8, $cb, $48, $fe, $e0, $ff, $58, $cb
    db $50, $db, $d4, $93, $b0, $97, $ff, $a0, $37, $48, $67, $90, $cf, $a0, $9f, $ff
    db $80, $bf, $00, $bf, $40, $3f, $80, $7f, $38, $ee, $a1, $fa, $e0, $d0, $e0, $00
    db $bf, $80, $fe, $e4, $e8, $e1, $ff, $04, $03, $f1, $f8, $fc, $0e, $fe, $83, $ff
    db $ff, $c1, $ff, $01, $ff, $e0, $ff, $fc, $ff, $ff, $8e, $ff, $73, $cf, $c9, $cf
    db $c9, $ef, $8f, $8b, $ff, $72, $ee, $e0, $00, $ff, $03, $ff, $fe, $03, $fc, $06
    db $fe, $1b, $f7, $e7, $3f, $87, $07, $cf, $8f, $ff, $df, $80, $e2, $fe, $ff, $6e
    db $66, $ae, $01, $fe, $00, $d4, $a0, $00, $fd, $ee, $a0, $ff, $fb, $0b, $f3, $13
    db $e6, $07, $ef, $0f, $ff, $e9, $0f, $eb, $07, $ee, $13, $e7, $05, $ff, $f5, $84
    db $74, $05, $75, $44, $34, $04, $ff, $b4, $a6, $94, $82, $d6, $db, $c2, $c1, $ff
    db $eb, $e4, $e9, $e4, $e9, $e1, $6b, $eb, $ff, $62, $e3, $66, $c7, $64, $87, $cf
    db $0c, $ff, $1c, $d8, $10, $1c, $1c, $8c, $d8, $df, $7f, $fe, $f7, $f3, $f3, $f1
    db $ff, $9f, $84, $ff, $fe, $f0, $ef, $82, $01, $38, $7c, $67, $c7, $cf, $ff, $80
    db $ff, $80, $ff, $fc, $87, $03, $86, $ff, $86, $01, $01, $be, $bc, $ff, $e7, $ff
    db $9f, $2f, $3f, $3f, $be, $9e, $99, $a0, $96, $a0, $e0, $ff, $e0, $e0, $20, $c0
    db $c0, $01, $00, $01, $ff, $01, $9c, $0c, $f9, $f1, $ff, $be, $ff, $ff, $90, $ff
    db $a9, $ff, $cb, $ff, $4e, $ff, $ff, $60, $ff, $87, $fc, $48, $78, $78, $18, $ff
    db $08, $0c, $04, $87, $03, $c1, $80, $e0, $79, $c0, $92, $ff, $f2, $f1, $40, $3f
    db $10, $8f, $ce, $a0, $ff, $31, $f9, $1c, $fc, $86, $fe, $42, $7e, $ff, $43, $7f
    db $61, $3f, $11, $df, $d1, $ff, $ff, $f1, $fe, $7b, $6e, $27, $06, $06, $1c, $ff
    db $16, $3d, $3c, $7c, $2e, $fe, $7a, $fe, $ff, $e2, $fe, $72, $fe, $be, $fc, $26
    db $fe, $fd, $63, $70, $c0, $81, $ff, $10, $ff, $20, $ff, $ff, $38, $ef, $c4, $c7
    db $42, $63, $22, $23, $ff, $22, $e3, $c3, $87, $02, $8f, $84, $1f, $01, $08, $00
    db $00

    nop

    db $c9, $00, $ff, $ff, $e7, $e6, $08, $fe, $e0, $da, $ea, $01, $01, $ff, $02, $03
    db $00, $05, $01, $07, $02, $07, $ff, $0a, $0b, $13, $37, $46, $db, $1d, $63, $ff
    db $7c, $c0, $00, $a0, $80, $60, $c0, $60, $ff, $d0, $d0, $c8, $6c, $e2, $db, $b8
    db $c6, $af, $3e, $00, $00, $02, $fe, $e0, $07, $fa, $e2, $00, $c7, $80, $80, $40
    db $9a, $ff, $ff, $ff, $6c, $ea, $14, $3e, $fc, $fc, $e0, $66, $e7, $02, $04, $0d
    db $11, $17, $27, $ff, $29, $0f, $37, $1b, $3e, $12, $3e, $12, $ff, $36, $1a, $bc
    db $c3, $87, $f8, $70, $ff, $ff, $3f, $cf, $ff, $e0, $bf, $ff, $80, $ff, $ff, $bb
    db $c4, $3d, $c3, $e1, $1f, $0e, $ff, $ff, $f0, $ff, $e7, $1f, $fd, $ff, $01, $ff
    db $ff, $99, $67, $40, $20, $b0, $88, $e8, $e4, $ff, $94, $f0, $ec, $d8, $7c, $48
    db $7c, $48, $e3, $6c, $58, $8e, $ff, $ff, $ff, $fa, $f9, $2e, $0a, $1d, $ff, $2b
    db $1b, $0d, $16, $05, $0b, $12, $05, $ff, $09, $03, $05, $03, $01, $bb, $c4, $9b
    db $ff, $e4, $5b, $64, $cb, $f4, $6d, $f2, $b5, $ff, $7a, $e8, $9f, $bf, $6f, $d9
    db $27, $d9, $ff, $27, $da, $26, $d3, $2f, $b6, $4f, $ad, $ff, $5e, $17, $f9, $fd
    db $f6, $74, $50, $b8, $ff, $d4, $d8, $b0, $68, $a0, $d0, $48, $a0, $1f, $90, $c0
    db $a0, $c0, $80, $76, $c7, $06, $e3, $8e, $ff, $fc, $ff, $ff, $ea, $e9, $02, $00
    db $01, $02, $01, $00, $ff, $40, $01, $40, $00, $e0, $01, $41, $00, $ff, $41, $02
    db $fd, $ee, $7b, $4a, $6f, $7e, $ff, $bd, $3e, $f3, $7f, $d7, $78, $4f, $7f, $ff
    db $dc, $e3, $bf, $77, $de, $52, $77, $fe, $ff, $bd, $7c, $cf, $fe, $eb, $1e, $f2
    db $fe, $cf, $3b, $c7, $40, $00, $2c, $c0, $6a, $e3, $80, $80, $ec, $f4, $e0, $dc
    db $a4, $01, $01, $b8, $e0, $02, $00, $03, $fd, $05, $8e, $e1, $7c, $82, $bb, $38
    db $5f, $67, $bf, $b0, $cf, $80, $ff, $fc, $ff, $7e, $e3, $80, $ff, $40, $60, $10
    db $d0, $c8, $2c, $e2, $1a, $f5, $f9, $6e, $e1, $03, $4c, $c3, $4f, $53, $1e, $62
    db $fd, $3f, $5e, $e1, $fe, $01, $fd, $fc, $7b, $87, $bf, $df, $3c, $7e, $e1, $f0
    db $8f, $4e, $e3, $f8, $ff, $04, $f4, $f0, $fc, $18, $1c, $ea, $37, $d5, $d0, $ac
    db $e0, $01, $fe, $e3, $01, $55, $e0, $81, $42, $ff, $a3, $fc, $dd, $be, $ff, $c3
    db $fb, $3c, $ff, $bf, $c7, $77, $78, $ef, $0f, $ff, $00, $ff, $c5, $3f, $b9, $7f
    db $fb, $c7, $dc, $3f, $ff, $f9, $e7, $ee, $1e, $f7, $f0, $ff, $00, $cf, $40, $00
    db $c0, $80, $fe, $e3, $58, $e1, $f8, $04, $fe, $52, $a0, $0b, $0a, $13, $17, $07
    db $19, $0f, $ff, $1b, $0f, $16, $07, $0b, $13, $7b, $87, $ff, $ff, $86, $ff, $01
    db $fd, $be, $e7, $ff, $ff, $2f, $ff, $ff, $3f, $df, $be, $85, $fc, $ff, $43, $fe
    db $c2, $7e, $e1, $7f, $d1, $3f, $ff, $f1, $df, $f1, $ff, $7a, $fe, $6f, $bf, $ff
    db $bb, $37, $f6, $6f, $7d, $5e, $e7, $fd, $ff, $87, $fd, $9b, $7d, $3f, $e0, $f8
    db $ff, $ff, $af, $df, $fd, $03, $ff, $e3, $ff, $63, $ff, $df, $62, $ff, $00, $ff
    db $04, $6b, $a3, $ff, $ce, $cf, $b3, $fe, $98, $ff, $88, $ff, $ff, $c9, $ff, $4b
    db $fe, $cf, $7d, $7e, $00, $ff, $bb, $bb, $66, $ff, $41, $ff, $4e, $ff, $ff, $97
    db $f8, $af, $f0, $5f, $fc, $7a, $79, $df, $c5, $fc, $66, $fe, $11, $e2, $e0, $a9
    db $7f, $ff, $d6, $3e, $f5, $7c, $1d, $2d, $3e, $5f, $ff, $df, $1f, $ff, $7f, $f8
    db $7f, $b7, $3f, $ff, $de, $1f, $72, $bf, $f6, $f1, $0d, $fc, $d7, $82, $fe, $c1
    db $74, $a0, $e0, $e2, $c0, $8e, $ff, $ff, $0f, $05, $0f, $84, $8f, $05, $8f, $44
    db $ff, $4f, $04, $cd, $a6, $ab, $82, $e6, $db, $fc, $9c, $e0, $fe, $e1, $e0, $3f
    db $e0, $ff, $c0, $fe, $ff, $01, $ff, $01, $b6, $6e, $ff, $06, $f5, $ff, $1c, $fe
    db $3d, $ad, $7c, $7b, $fe, $e3, $ff, $fe, $73, $fe, $3f, $e0, $1f, $f4, $9d, $ff
    db $fe, $76, $77, $fd, $01, $1b, $22, $2f, $d7, $4f, $5d, $17, $6c, $e0, $18, $c0
    db $c0, $03, $e6, $ff, $9e, $fa, $ce, $bd, $6b, $d7, $3d, $de, $ff, $7f, $a8, $ef
    db $d9, $cf, $7a, $0f, $97, $ff, $66, $cb, $32, $a5, $89, $e2, $54, $7f, $ff, $ec
    db $ff, $ac, $f3, $ec, $ff, $b0, $7f, $ff, $80, $ff, $00, $bf, $c1, $ff, $f8, $fd
    db $ff, $7c, $fb, $6e, $9f, $6a, $f7, $1e, $ff, $ff, $86, $f5, $0c, $eb, $18, $fa
    db $39, $ac, $ff, $3f, $7e, $77, $be, $f7, $be, $f3, $ef, $ff, $ff, $5b, $66, $d0
    db $6f, $a1, $3f, $73, $ff, $ff, $f9, $cf, $f9, $cf, $fb, $8f, $72, $fe, $d2, $80
    db $00, $ff, $03, $ff, $d5, $c1, $f2, $ff, $e4, $f2, $e4, $75, $e1, $76, $eb, $7a
    db $ff, $e3, $5c, $c7, $b7, $87, $6f, $9c, $f7, $ff, $f9, $be, $ff, $90, $ff, $a9
    db $ff, $cb, $fe, $0c, $e0, $60, $ff, $bf, $fe, $25, $fc, $62, $fe, $30, $e0, $81
    db $ff, $10, $ff, $20, $ff, $38, $df, $ff, $7e, $a3, $be, $23, $f1, $c0, $41, $ff
    db $ff, $71, $6e, $5b, $f4, $8f, $ea, $9b, $fa, $bf, $a7, $6e, $f7, $36, $fb, $0c
    db $29, $e4, $00, $ff, $ff, $d1, $c2, $72, $ec, $6d, $e1, $7b, $ff, $f2, $5f, $f4
    db $77, $d4, $bf, $d8, $ff, $ff, $98, $ff, $c4, $ff, $87, $f7, $8e, $ef, $ff, $1b
    db $ff, $3b, $ef, $34, $bf, $61, $5f, $ff, $e0, $7e, $cc, $f6, $8d, $fd, $84, $fb
    db $ff, $46, $fe, $f2, $ed, $f3, $bf, $e1, $be, $ff, $71, $e0, $3f, $50, $9f, $3c
    db $4f, $5b, $bf, $9f, $fd, $3b, $3f, $3b, $ff, $ff, $e0, $02, $ff, $fe, $05, $fc
    db $1a, $fe, $ef, $f7, $7f, $ef, $87, $bf, $cf, $df, $ef, $e0, $ef, $0c, $37, $ff
    db $d8, $ff, $1c, $ab, $8c, $de, $df, $fb, $ff, $f7, $fd, $f3, $9f, $ff, $87, $ff
    db $4b, $ff, $fc, $ff, $78, $ef, $18, $f7, $0c, $7b, $ff, $87, $be, $c1, $df, $e0
    db $d4, $ef, $7a, $ff, $c7, $be, $63, $fe, $23, $df, $e3, $7a, $1f, $87, $f4, $8f
    db $e8, $1f, $00, $00

    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp

    db $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
    db $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
    db $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0e, $0e, $0e, $0d, $0d, $0d, $0d, $0d
    db $0d, $0d, $0e, $0e, $0e, $0e, $0e, $0c, $0c, $0d, $0d, $0d, $0e, $0e, $0e, $0e
    db $0e, $0d, $0d, $0d, $0d, $0d, $0e, $0e, $0e, $0e, $0e, $0d, $0d, $0d, $0d, $0d
    db $16, $7c, $ff, $5b, $bf, $00, $00, $00, $16, $7c, $ff, $5b, $1f, $02, $00, $00
    db $16, $7c, $ff, $5b, $9f, $01, $00, $00, $8b, $21, $8b, $21, $8b, $21, $8b, $21
    db $f3, $00, $ff, $fe, $ff, $f6, $f5, $01, $fe, $00, $fe, $7f, $02, $fc, $02, $fc
    db $00, $fd, $01, $fe, $e4, $fd, $00, $fe, $e0, $04, $f9, $09, $f3, $02, $f7, $ff
    db $14, $e7, $04, $ef, $28, $cf, $09, $df, $ff, $13, $df, $1f, $df, $0c, $de, $21
    db $c0, $f8, $b2, $ff, $fe, $ff, $e4, $e3, $0c, $f0, $21, $c3, $4e, $ff, $9f, $90
    db $3f, $20, $7f, $40, $7f, $40, $f3, $ff, $80, $fe, $e2, $72, $e2, $ff, $03, $ff
    db $87, $ff, $ff, $8f, $ff, $89, $ff, $16, $f9, $2f, $ff, $f6, $7f, $e1, $ef, $f0
    db $f6, $f9, $cf, $ff, $ff, $87, $cf, $32, $86, $4a, $32, $13, $3e, $72, $e0, $2f
    db $cf, $08, $df, $17, $72, $e0, $fe, $e7, $6f, $0e, $df, $2d, $cf, $1c, $ff, $02
    db $fc, $18, $e0, $3e, $68, $e8, $05, $02, $f0, $f8, $0e, $92, $e0, $fa, $c6, $ff
    db $ff, $06, $ff, $1f, $ff, $6f, $f7, $be, $df, $c1, $fd, $83, $fe, $82, $fe, $e1
    db $fd, $83, $fe, $39, $e4, $80, $df, $60, $f6, $f9, $ef, $7f, $ff, $34, $1e, $dc
    db $8e, $e6, $c3, $f3, $e3, $ff, $fb, $f3, $7a, $fb, $be, $fb, $bf, $ff, $f5, $df
    db $fe, $e0, $ef, $56, $e0, $7f, $ff, $f7, $9f, $fc, $a4, $eb, $02, $e9, $40, $bf
    db $70, $8f, $88, $77, $df, $04, $fb, $84, $7b, $03, $7e, $ea, $04, $03, $f7, $70
    db $fb, $f8, $fe, $e2, $f0, $fb, $64, $f3, $ff, $28, $e7, $e0, $ef, $e0, $2f, $60
    db $af, $ff, $e0, $ef, $e8, $a7, $e4, $b3, $f8, $bb, $ff, $f8, $8b, $f8, $9b, $e8
    db $9b, $f8, $0b, $ff, $f0, $1b, $f4, $73, $e0, $37, $48, $e7, $ff, $90, $cf, $20
    db $9f, $40, $3f, $80, $7f, $ff, $00, $7f, $40, $3f, $00, $bf, $a0, $9f, $ff, $80
    db $df, $50, $cf, $40, $ef, $a0, $ef, $df, $a8, $e7, $a0, $f7, $d0, $fe, $e0, $4a
    db $31, $ff, $4a, $31, $c8, $33, $28, $d3, $19, $e2, $7f, $11, $e2, $04, $f2, $06
    db $f0, $04, $fe, $e0, $ff, $10, $e0, $11, $e0, $02, $e1, $04, $e3, $ff, $20, $c7
    db $48, $87, $80, $0f, $10, $0f, $ff, $1c, $00, $01, $00, $c4, $03, $38, $c7, $fe
    db $e8, $cd, $04, $f8, $01, $f8, $00, $f9, $00, $ff, $f9, $0a, $f1, $00, $f3, $11
    db $e2, $05, $ff, $e2, $01, $e6, $01, $e6, $14, $e2, $0a, $ff, $f0, $04, $f8, $21
    db $dc, $11, $ec, $2c, $ff, $c0, $14, $e0, $40, $80, $20, $c0, $30, $ff, $c0, $40
    db $80, $9c, $3e, $2e, $66, $7e, $ff, $4e, $7c, $7e, $7d, $7c, $78, $7d, $79, $ff
    db $7c, $3c, $76, $9e, $3b, $4f, $9f, $27, $ff, $cd, $13, $e6, $09, $f3, $80, $00
    db $81, $ff, $00, $82, $01, $04, $03, $08, $07, $10, $9e, $96, $e0, $20, $1f, $20
    db $1f, $52, $e2, $f8, $a6, $0d, $ff, $f0, $30, $c0, $00, $00, $10, $e0, $09, $ff
    db $f0, $02, $f1, $14, $e3, $08, $e7, $20, $ff, $cf, $00, $cf, $50, $8f, $80, $1f
    db $00, $ff, $1f, $40, $1f, $a0, $5f, $20, $df, $60, $ff, $9f, $40, $bf, $c0, $3f
    db $82, $7c, $80, $b9, $7d, $7c, $a1, $74, $a0, $ff, $02, $fd, $bc, $a1, $c4, $bf
    db $3b, $80, $37, $18, $27, $48, $aa, $e0, $08, $ff, $07, $82, $01, $39, $7c, $74
    db $66, $7e, $ff, $72, $3e, $7e, $be, $3e, $1e, $be, $9e, $ff, $3e, $3c, $6e, $79
    db $dc, $f2, $f9, $e4, $ef, $b3, $c8, $67, $90, $00, $d8, $08, $f7, $08, $ff, $f7
    db $10, $ef, $31, $ce, $a1, $1e, $42, $f7, $3d, $3c, $03, $6c, $e5, $08, $f0, $23
    db $c7, $ff, $0d, $de, $17, $d8, $1f, $d0, $1f, $d0, $ff, $15, $db, $0f, $de, $08
    db $c8, $0f, $d9, $ff, $1e, $bf, $2f, $70, $de, $e1, $6f, $9f, $ff, $f6, $fc, $02
    db $06, $0a, $f2, $02, $f6, $ff, $06, $f4, $04, $f4, $07, $f7, $08, $f1, $81, $00
    db $e0, $80, $20, $cd, $cc, $81, $ca, $81, $cc, $85, $10, $ab, $10, $df, $ef, $10
    db $ef, $20, $df, $f8, $e3, $08, $f7, $cf, $30, $c7, $c0, $3f, $70, $e8, $86, $e0
    db $8d, $1e, $ff, $37, $78, $df, $e0, $ff, $00, $fd, $03, $ff, $f7, $0e, $bc, $78
    db $e1, $c0, $0f, $07, $ff, $7b, $3c, $df, $e0, $fe, $01, $ef, $1f, $ff, $fa, $f3
    db $f3, $61, $d1, $d1, $51, $50, $f7, $70, $60, $00, $ff, $e2, $80, $00, $e0, $e0
    db $ff, $c1, $80, $41, $c1, $43, $42, $6f, $47, $ff, $3f, $78, $0f, $98, $5f, $91
    db $1e, $b2, $ff, $bd, $2d, $2b, $62, $66, $42, $46, $c4, $ff, $cc, $84, $8c, $88
    db $88, $88, $9f, $0e, $cf, $9b, $11, $10, $10, $90, $9f, $64, $e6, $0f, $c8, $ff
    db $e7, $a0, $77, $d4, $33, $f0, $1b, $78, $ff, $e8, $cf, $8f, $19, $0e, $77, $38
    db $df, $ff, $e0, $7d, $83, $f6, $0f, $da, $3e, $ee, $ff, $f2, $7e, $82, $fe, $02
    db $fa, $06, $5c, $ff, $be, $a6, $e2, $da, $da, $fa, $a2, $22, $ff, $22, $06, $02
    db $0c, $06, $f9, $7c, $d2, $ff, $99, $f0, $3b, $fa, $c9, $f8, $0d, $fc, $7f, $35
    db $fd, $cc, $8c, $06, $06, $02, $ff, $e3, $f7, $06, $02, $06, $ff, $e0, $0e, $06
    db $0e, $0a, $cf, $ea, $ca, $7a, $3a, $88, $ff, $66, $d0, $07, $e0, $5f, $f7, $d0
    db $37, $a0, $77, $22, $a2, $1f, $d2, $a9, $00, $fe, $ff, $ee, $ed, $00, $00

    nop

    db $e9, $00, $ff, $ff, $ec, $eb, $01, $dd, $eb, $84, $4a, $84, $ff, $4a, $04, $c8
    db $04, $28, $04, $19, $0c, $ff, $11, $09, $04, $09, $06, $7f, $80, $7e, $ff, $81
    db $7c, $82, $f8, $04, $f0, $08, $e0, $5f, $10, $e0, $10, $c0, $20, $af, $fc, $10
    db $8f, $ff, $fc, $ff, $ff, $f5, $f4, $40, $00, $70, $00, $88, $0b, $ff, $04, $0b
    db $04, $0f, $10, $0e, $11, $1c, $ff, $02, $18, $04, $18, $20, $30, $48, $c0, $5f
    db $20, $80, $40, $00, $80, $c3, $f2, $08, $fe, $e0, $f1, $10, $6e, $e0, $4c, $e1
    db $f8, $e1, $08, $08, $30, $00, $d9, $c0, $99, $ff, $d0, $dd, $01, $02, $cc, $ca
    db $04, $00, $f7, $84, $00, $03, $ba, $c7, $70, $80, $e0, $10, $ff, $e3, $1c, $fe
    db $01, $38, $c4, $00, $38, $fe, $b3, $e1, $02, $0d, $0f, $30, $ff, $00, $0f, $ff
    db $10, $06, $09, $0c, $02, $08, $14, $10, $ff, $08, $00, $31, $40, $a1, $80, $42
    db $c0, $fd, $3c, $4c, $ef, $07, $08, $1b, $23, $6c, $8d, $7e, $7f, $e7, $e0, $10
    db $d0, $c8, $28, $a0, $74, $fc, $fe, $50, $e0, $03, $0c, $1d, $21, $2e, $4e, $50
    db $ff, $90, $a0, $20, $c0, $40, $40, $40, $00, $7f, $00, $f8, $05, $f7, $f0, $0e
    db $0e, $e5, $e2, $7e, $32, $e2, $f8, $04, $74, $70, $fc, $f8, $fe, $e1, $ef, $f4
    db $f0, $68, $64, $38, $e9, $03, $04, $06, $ff, $01, $10, $20, $30, $00, $20, $50
    db $60, $ff, $80, $e0, $00, $a0, $40, $00, $a0, $00, $fd, $20, $7a, $e1, $2c, $0d
    db $30, $17, $30, $1f, $ff, $30, $1f, $31, $15, $2e, $0f, $b0, $37, $ff, $c0, $df
    db $00, $ff, $01, $fd, $06, $f7, $ff, $3b, $bc, $de, $e1, $f7, $0f, $18, $d4, $ff
    db $14, $f0, $6f, $78, $bf, $cf, $e8, $19, $bf, $b0, $77, $c0, $df, $01, $7d, $cf
    db $c1, $f0, $ff, $08, $e8, $e0, $18, $d0, $28, $a0, $50, $ff, $48, $a0, $90, $01
    db $02, $01, $02, $02, $77, $00, $03, $01, $fe, $e3, $02, $00, $80, $ff, $e2, $de
    db $c7, $c3, $03, $03, $87, $87, $bf, $c1, $06, $06, $ff, $1f, $1f, $67, $6f, $80
    db $be, $81, $fd, $ff, $83, $fe, $30, $28, $f0, $e0, $30, $e0, $ff, $30, $60, $f0
    db $e0, $b0, $e8, $a8, $e4, $ff, $bc, $f8, $06, $00, $06, $00, $04, $0a, $ff, $0c
    db $00, $0c, $11, $18, $05, $18, $01, $ef, $18, $01, $00, $60, $08, $c0, $c0, $01
    db $82, $fb, $02, $80, $ac, $e1, $01, $02, $3f, $08, $29, $ff, $0f, $5e, $1e, $a0
    db $2f, $c0, $de, $0f, $7f, $6f, $f5, $f6, $fb, $02, $b8, $7b, $60, $e0, $ff, $fe
    db $0f, $ef, $f6, $fa, $6d, $f3, $ff, $ff, $d1, $fe, $51, $06, $f6, $1b, $da, $e3
    db $ff, $ee, $03, $7e, $03, $fe, $03, $fa, $1d, $e7, $5c, $bb, $a6, $4e, $a0, $e2
    db $aa, $02, $00, $02, $ff, $04, $05, $09, $0a, $02, $0c, $14, $14, $ff, $04, $18
    db $28, $29, $09, $8f, $8f, $89, $ff, $89, $10, $16, $26, $2f, $61, $7f, $e0, $ff
    db $ef, $f0, $f6, $cf, $cf, $83, $fe, $83, $df, $fe, $81, $fd, $00, $ff, $fe, $e1
    db $80, $ff, $ff, $40, $df, $8c, $f8, $9c, $f8, $8c, $e8, $ff, $0c, $f8, $14, $f0
    db $78, $f4, $28, $e0, $ff, $50, $48, $09, $14, $05, $0a, $03, $04, $ff, $02, $21
    db $02, $11, $13, $2c, $0b, $14, $f1, $3f, $90, $c0, $ad, $e0, $ca, $a1, $c4, $48
    db $80, $c0, $ff, $18, $b0, $48, $07, $0a, $0b, $02, $0d, $ff, $06, $0f, $04, $0f
    db $07, $06, $08, $01, $f6, $a3, $80, $ef, $70, $b5, $e2, $00, $7f, $80, $ff, $ff
    db $e0, $be, $c1, $7f, $41, $ff, $da, $a7, $ff, $fa, $ff, $22, $fb, $06, $f5, $0c
    db $7a, $df, $f9, $b4, $d2, $34, $f0, $8f, $ad, $33, $13, $bf, $3f, $1f, $2d, $0c
    db $1e, $21, $77, $a5, $b7, $ff, $87, $4b, $32, $87, $4a, $0b, $13, $14, $ff, $04
    db $1f, $2f, $28, $08, $37, $17, $f0, $ff, $f6, $6f, $ef, $d5, $34, $ad, $dc, $da
    db $ff, $e6, $ef, $f3, $f7, $fb, $7e, $7a, $a0, $bb, $90, $40, $fe, $82, $80, $00
    db $80, $03, $c0, $c0, $ff, $a0, $1f, $20, $0f, $30, $3f, $40, $5d, $ff, $9c, $b7
    db $2e, $cf, $7e, $fd, $7c, $fe, $ff, $7d, $e0, $10, $f0, $08, $7c, $82, $ba, $ff
    db $39, $ed, $74, $f3, $7e, $bf, $3e, $7f, $fd, $be, $10, $8d, $fe, $43, $d7, $6f
    db $b8, $3f, $ff, $68, $0f, $31, $5f, $53, $1e, $6f, $bd, $ff, $b6, $2b, $cc, $fa
    db $0a, $f8, $36, $fc, $ff, $ce, $fd, $75, $8c, $fb, $06, $ff, $02, $d9, $ff, $24
    db $e3, $ea, $98, $3f, $1f, $fe, $e7, $2e, $0e, $7f, $1d, $2d, $ba, $be, $bf, $bf
    db $df, $ff, $e0, $ff, $ef, $ef, $8f, $8f, $7f, $7f, $97, $f7, $ff, $a0, $80, $60
    db $50, $50, $40, $b0, $a0, $ff, $b0, $a8, $a8, $a0, $d8, $d0, $d8, $d0, $ff, $fa
    db $78, $fa, $79, $b5, $3c, $5a, $9e, $ff, $2f, $4f, $15, $27, $0a, $13, $05, $09
    db $ff, $5f, $1e, $5f, $9e, $ad, $3c, $5a, $79, $ff, $f4, $f2, $a8, $e4, $50, $c8
    db $a0, $90, $f8, $2c, $a1, $c8, $c0, $bc, $a6, $db, $66, $7d, $46, $b7, $ff, $cc
    db $fb, $8c, $ff, $88, $6e, $9f, $75, $9f, $9b, $ff, $10, $ff, $02, $68, $e0, $fe
    db $e0, $f7, $7f, $0e, $fb, $0e, $df, $ea, $bf, $7a, $4f, $8d, $00, $00, $00

    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp

    db $0d, $0d, $0f, $0f, $0f, $0f, $0f, $0f, $0e, $0e, $0d, $0d, $0f, $0f, $0f, $0f
    db $0f, $0f, $0e, $0e, $0d, $0d, $0f, $0f, $0f, $0f, $0f, $0e, $0e, $0e, $0d, $0d
    db $0d, $0d, $0f, $0f, $0e, $0e, $0e, $0e, $0d, $0d, $0d, $0d, $0f, $0f, $0e, $0e
    db $0e, $0e, $0d, $0d, $0d, $0d, $0f, $0f, $0e, $0e, $0e, $0e, $0d, $0d, $0d, $0d
    db $0f, $0f, $0e, $0e, $0e, $0e, $0d, $0d, $0d, $0d, $0f, $0f, $0e, $0e, $0e, $0e
    db $ff, $7f, $1f, $02, $5f, $00, $00, $00, $9f, $00, $ff, $6b, $1f, $12, $00, $00
    db $9f, $00, $ff, $67, $7f, $61, $00, $00, $9f, $00, $ff, $6b, $50, $7e, $00, $00
    db $f3, $00, $ff, $fe, $ff, $fa, $f9, $08, $f0, $23, $c7, $ff, $0d, $de, $17, $d8
    db $0d, $de, $23, $c7, $fb, $08, $f0, $d0, $f2, $f0, $16, $e7, $27, $cd, $ff, $0a
    db $dd, $1d, $d3, $16, $da, $0f, $db, $ff, $2d, $cb, $0f, $ef, $13, $e3, $02, $fa
    db $3f, $02, $fa, $01, $fb, $04, $f8, $a0, $ff, $fc, $fb, $bf, $c0, $00, $1f, $3f
    db $e7, $f8, $d7, $e3, $e7, $df, $f8, $1f, $3f, $c0, $00, $cc, $ef, $80, $7f, $ff
    db $00, $00, $9e, $ff, $ed, $f3, $bf, $c8, $ff, $ff, $90, $7f, $91, $ff, $30, $ff
    db $18, $ff, $ff, $10, $7f, $b0, $ee, $99, $bf, $c9, $ef, $7e, $fe, $41, $41, $9c
    db $f5, $04, $c3, $10, $ff, $d8, $1b, $df, $1f, $d5, $1f, $d1, $1f, $ff, $d1, $1e
    db $db, $14, $de, $11, $d0, $10, $fd, $d7, $fe, $f0, $10, $ff, $ff, $ff, $10, $ff
    db $ed, $38, $55, $e4, $ff, $00, $80, $f0, $10, $e0, $c6, $ff, $0e, $1a, $3e, $ae
    db $f2, $fc, $46, $fe, $ff, $c2, $5e, $66, $ee, $f2, $be, $7e, $f0, $ff, $50, $d0
    db $97, $90, $97, $e0, $f7, $88, $d7, $c7, $c0, $df, $1c, $f8, $7f, $fe, $e1, $01
    db $7e, $ff, $02, $7c, $04, $79, $89, $72, $02, $f4, $ff, $11, $e4, $04, $e9, $22
    db $c9, $08, $d2, $ff, $44, $92, $1d, $b8, $24, $a5, $24, $a5, $ff, $18, $bd, $42
    db $81, $00, $00, $fe, $ff, $bb, $f9, $07, $d7, $c3, $f9, $07, $fe, $80, $ee, $02
    db $ff, $fc, $00, $fd, $01, $fd, $11, $e1, $26, $ff, $cf, $08, $df, $11, $df, $10
    db $df, $90, $ef, $1f, $30, $7f, $50, $fe, $e0, $58, $7f, $67, $7f, $7f, $20, $7f
    db $a0, $3f, $10, $bf, $9c, $db, $ff, $90, $0f, $08, $67, $60, $97, $e0, $17, $ff
    db $48, $27, $90, $4f, $20, $9f, $40, $3f, $f3, $00, $7f, $b2, $c0, $80, $c9, $3f
    db $04, $03, $f1, $ff, $f8, $ec, $1e, $fa, $06, $ec, $1e, $f1, $df, $f8, $04, $03
    db $c0, $3f, $04, $ec, $0f, $c0, $ff, $ef, $e0, $ef, $e4, $e3, $32, $f9, $08, $fb
    db $fd, $04, $fe, $e1, $fc, $06, $ff, $05, $ff, $ff, $0d, $ff, $35, $ff, $ca, $ff
    db $0c, $fe, $8f, $19, $fc, $2c, $ed, $1c, $df, $fe, $ff, $fe, $fd, $01, $1b, $fe
    db $00, $fe, $e4, $81, $7e, $aa, $c3, $a4, $c1, $36, $eb, $ce, $c4, $f7, $02, $fc
    db $01, $bc, $c0, $fc, $e1, $11, $e3, $ff, $47, $8f, $9d, $38, $39, $61, $63, $41
    db $ff, $4e, $4f, $6f, $45, $3d, $68, $98, $38, $ff, $59, $90, $19, $d1, $13, $d1
    db $1f, $b2, $ff, $3d, $ae, $3f, $b8, $3f, $a7, $20, $a0, $ff, $20, $a0, $21, $a0
    db $27, $a3, $21, $a1, $ff, $23, $a2, $33, $a1, $31, $a1, $11, $b1, $ff, $51, $90
    db $11, $b0, $b0, $20, $30, $60, $ff, $58, $f0, $df, $ef, $ed, $f3, $7f, $ff, $cf
    db $0f, $1f, $20, $c0, $8c, $ff, $e2, $e1, $40, $80, $ff, $1e, $bf, $ad, $33, $3f
    db $63, $7f, $50, $ff, $57, $d8, $df, $88, $ef, $c8, $f7, $f8, $ff, $ff, $90, $af
    db $28, $7f, $28, $f6, $fb, $ff, $7d, $8d, $f7, $8f, $df, $3f, $78, $ed, $ff, $fd
    db $85, $fc, $85, $f4, $ac, $59, $6c, $ff, $aa, $d9, $f0, $1b, $f4, $13, $b0, $77
    db $ff, $f0, $d7, $10, $17, $90, $17, $b0, $97, $ff, $90, $37, $30, $17, $14, $13
    db $32, $19, $ff, $99, $0c, $8c, $86, $c6, $83, $df, $cf, $ff, $d5, $db, $7b, $57
    db $ef, $77, $d6, $ef, $3e, $56, $a0, $ff, $f8, $fc, $02, $01, $84, $ff, $ca, $83
    db $ff, $40, $3f, $20, $9f, $90, $cf, $40, $ef, $ef, $a0, $6f, $e0, $2f, $fe, $e1
    db $a0, $6f, $c0, $df, $6f, $50, $cf, $80, $df, $ea, $e1, $c4, $e3, $ff, $f1, $f8
    db $fc, $3e, $a7, $ef, $41, $e3, $8b, $14, $09, $e0, $c0, $fe, $bc, $f5, $92, $c7
    db $67, $80, $ff, $8f, $80, $c0, $20, $1f, $86, $ff, $fe, $ff, $de, $c4, $3f, $ff
    db $10, $8f, $c8, $e7, $d0, $d7, $50, $f7, $ef, $60, $77, $88, $07, $d0, $fb, $82
    db $01, $38, $07, $7d, $f8, $fd, $04, $f1, $00, $00

    nop

    db $81, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $fb, $fa, $38, $7f
    db $04, $37, $10, $3b, $1b, $35, $1f, $d6, $e7, $99, $80, $fe, $e2, $c6, $eb, $60
    db $90, $b6, $ff, $e4, $e3, $3f, $7f, $40, $5e, $1e, $61, $ad, $a3, $3f, $b1, $e7
    db $9f, $80, $40, $40, $20, $a0, $c0, $ff, $ed, $ec, $31, $ff, $1f, $31, $1f, $3a
    db $1e, $35, $14, $3e, $f7, $11, $38, $10, $fe, $e1, $80, $01, $81, $02, $ff, $82
    db $04, $04, $89, $09, $02, $0a, $11, $ff, $12, $04, $14, $22, $90, $08, $08, $60
    db $ff, $08, $e0, $90, $48, $20, $90, $40, $20, $f3, $80, $40, $50, $ed, $a0, $e0
    db $01, $01, $02, $03, $fd, $01, $fe, $e3, $0d, $11, $37, $47, $d0, $7f, $ff, $70
    db $57, $a8, $df, $d8, $ef, $f0, $f7, $ff, $90, $ff, $78, $af, $a8, $7f, $50, $40
    db $ef, $30, $a0, $30, $e0, $fe, $e2, $a0, $50, $c0, $93, $60, $50, $6e, $ff, $1a
    db $ea, $c0, $6a, $e3, $fa, $e5, $ff, $ff, $10, $25, $08, $29, $44, $5a, $1d, $7e
    db $ff, $24, $7e, $24, $5a, $18, $3c, $42, $ff, $f4, $b9, $c1, $b9, $e9, $c0, $ac
    db $ed, $5a, $9d, $a7, $39, $ff, $dd, $63, $fe, $4e, $d5, $6f, $aa, $3d, $ff, $5f
    db $98, $36, $59, $f2, $f6, $0f, $7d, $ff, $87, $f7, $1f, $df, $6a, $78, $87, $fd
    db $bf, $86, $fc, $a7, $f4, $a0, $80, $ca, $c1, $d8, $ff, $c4, $f6, $f1, $3d, $fc
    db $b7, $a7, $5d, $fd, $41, $60, $c8, $40, $60, $10, $d0, $c8, $07, $ff, $08, $1b
    db $23, $2c, $0d, $30, $17, $2c, $ff, $0d, $1b, $23, $07, $08, $00, $00, $df, $df
    db $1f, $e0, $e7, $00, $ff, $fe, $e1, $e0, $e7, $ff, $df, $1f, $3f, $c0, $ff, $ff
    db $10, $ff, $ed, $38, $f0, $e2, $00, $ff, $ff, $e0, $00, $fe, $fe, $fb, $01, $f9
    db $e0, $e3, $01, $f9, $fe, $fe, $ff, $ff, $00, $f8, $04, $f6, $f1, $0d, $ec, $03
    db $7f, $fa, $0d, $ec, $f6, $f1, $f8, $04, $60, $ef, $ff, $37, $19, $3d, $13, $52
    db $1f, $6c, $3d, $ff, $78, $3f, $67, $3f, $7f, $20, $7f, $20, $ff, $ca, $59, $8c
    db $aa, $14, $f0, $18, $f4, $ff, $38, $b0, $d8, $f0, $f8, $10, $78, $90, $bf, $e2
    db $14, $01, $02, $00, $01, $d6, $c7, $f8, $7f, $d0, $58, $50, $e8, $60, $70, $88
    db $c4, $df, $b4, $ff, $ff, $43, $c0, $02, $dc, $eb, $e0, $10, $cc, $ed, $7e, $ff
    db $21, $7b, $27, $7f, $21, $7e, $23, $6d, $ff, $33, $6f, $31, $5f, $11, $3e, $51
    db $d8, $ff, $b0, $58, $90, $d8, $30, $f8, $14, $d4, $7f, $32, $6a, $99, $f5, $8c
    db $ba, $c6, $9c, $ea, $fd, $80, $e0, $b0, $00, $0f, $00, $0e, $16, $15, $ff, $27
    db $28, $0a, $31, $1d, $33, $16, $2b, $fd, $0f, $07, $a1, $ff, $00, $9e, $9e, $e1
    db $ed, $bf, $88, $bf, $90, $ff, $11, $7f, $e0, $e0, $10, $ff, $37, $c6, $db, $1a
    db $a3, $ae, $45, $fc, $ff, $c3, $fe, $c7, $5e, $02, $00, $03, $01, $ff, $0f, $11
    db $16, $27, $28, $0f, $31, $1f, $ff, $30, $1f, $70, $9f, $d0, $c0, $f0, $e0, $ff
    db $f8, $e4, $34, $f2, $0a, $f8, $06, $fc, $8f, $06, $fc, $07, $fc, $8c, $a4, $ed
    db $c0, $fc, $e1, $00, $ff, $81, $5e, $11, $6f, $b0, $af, $30, $57, $ff, $58, $cf
    db $df, $e1, $ed, $7f, $7f, $ef, $ff, $0f, $ef, $df, $f1, $d5, $d3, $7b, $67, $b7
    db $ef, $c6, $d6, $71, $c1, $fb, $f8, $9a, $83, $80, $de, $61, $c2, $bf, $80, $c0
    db $20, $ec, $c3, $7c, $82, $df, $ba, $38, $fa, $f8, $fc, $02, $e0, $19, $2d, $ff
    db $1f, $0f, $0f, $13, $07, $02, $07, $02, $ff, $05, $01, $03, $04, $00, $00, $30
    db $ff, $fd, $18, $2e, $c0, $30, $7f, $88, $ee, $89, $bf, $ff, $7f, $7e, $ff, $41
    db $e3, $ee, $3f, $be, $ff, $5f, $f0, $b8, $d0, $f8, $90, $e8, $e0, $ff, $b0, $88
    db $e0, $c0, $b0, $3f, $d0, $7f, $ff, $d0, $7f, $d8, $7f, $e7, $7f, $a0, $3f, $ff
    db $60, $bf, $50, $1f, $06, $fe, $05, $ff, $ff, $0d, $ff, $35, $ff, $ca, $fe, $0d
    db $fc, $8f, $1a, $f9, $3e, $ec, $90, $e5, $26, $80, $23, $82, $1f, $00, $8e, $e4
    db $74, $c5, $8c, $e1, $ff, $ff, $ff, $e7, $00, $00

    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp

    db $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0f, $0d, $0d, $0d
    db $0d, $0d, $0d, $0d, $0d, $0d, $0f, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
    db $0f, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0e, $0e, $0e, $0e, $0e, $0d, $0d, $0d
    db $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0f
    db $0f, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0f, $0f, $0d, $0d, $0d, $0d, $0d
    db $ff, $7f, $80, $7e, $80, $7d, $00, $00, $00, $7d, $ff, $6b, $1f, $02, $00, $00
    db $00, $7d, $ff, $6b, $00, $02, $00, $00, $00, $7d, $ff, $6b, $df, $20, $00, $00
    db $03, $00, $ff, $fe, $ff, $fe, $ff, $fe, $ff, $fe, $ff, $fe, $ff, $fe, $ff, $f8
    db $fe, $ff, $fe, $ff, $f4, $f3, $02, $fc, $01, $fc, $01, $ff, $fd, $01, $fc, $88
    db $04, $75, $22, $58, $9f, $5a, $75, $32, $88, $07, $cc, $ff, $c6, $e5, $00, $ff
    db $fd, $09, $f1, $03, $f7, $25, $c4, $0f, $ff, $dd, $17, $d3, $1f, $df, $1f, $d0
    db $0f, $ff, $da, $2f, $ca, $0f, $e8, $07, $ef, $10, $ff, $e0, $00, $ff, $08, $07
    db $74, $63, $78, $ff, $50, $7c, $5a, $5e, $56, $5e, $52, $7e, $fb, $52, $7e, $f8
    db $e0, $50, $50, $70, $57, $70, $f3, $57, $50, $fe, $e0, $f8, $eb, $d0, $d7, $70
    db $57, $ff, $f0, $d7, $50, $50, $53, $57, $fc, $fe, $ff, $01, $00, $74, $23, $58
    db $5b, $74, $33, $e3, $8a, $04, $6a, $e3, $9c, $e0, $76, $f6, $10, $0f, $c2, $ff
    db $e1, $38, $3d, $6c, $25, $fc, $e4, $7e, $ff, $3f, $eb, $29, $ff, $ff, $ff, $01
    db $ff, $7d, $ab, $fe, $e0, $03, $ff, $ff, $00, $00, $42, $ff, $fe, $e8, $e7, $22
    db $c1, $1c, $c9, $54, $94, $1f, $ff, $3f, $e3, $f2, $09, $03, $05, $f9, $00, $fd
    db $fd, $8c, $e1, $20, $1f, $d1, $8e, $60, $6e, $0f, $d2, $cc, $20, $1d, $e4, $c0
    db $fe, $e0, $ea, $e3, $b4, $f3, $f7, $80, $7f, $00, $fe, $e0, $08, $07, $64, $f3
    db $ff, $b0, $9b, $f8, $9b, $e0, $f3, $08, $87, $fb, $40, $3f, $8a, $ff, $08, $f0
    db $13, $e7, $25, $ff, $cf, $0f, $d8, $17, $d8, $5f, $90, $1f, $ff, $bf, $14, $34
    db $ff, $ff, $df, $e0, $ff, $ff, $00, $7f, $80, $df, $e0, $3b, $7c, $07, $ff, $8f
    db $9e, $3c, $3b, $6f, $6f, $c8, $cf, $ff, $88, $9f, $88, $ff, $58, $6f, $3f, $bb
    db $ff, $1c, $ff, $9f, $7f, $d0, $7f, $70, $5f, $ff, $50, $5b, $57, $7f, $51, $3f
    db $71, $9f, $ff, $31, $4f, $9f, $29, $c9, $09, $e9, $29, $ff, $c9, $0b, $d9, $1a
    db $d3, $12, $d2, $12, $f7, $d2, $1e, $de, $fc, $e0, $df, $5d, $93, $3f, $7f, $b1
    db $3f, $bf, $4f, $9f, $20, $c0, $80, $ff, $ff, $10, $0f, $c8, $e7, $24, $f3, $f0
    db $1b, $ff, $e8, $1b, $f8, $0b, $fa, $f9, $88, $8c, $ff, $fc, $ff, $fb, $07, $ff
    db $00, $fd, $03, $ff, $fa, $07, $dc, $3e, $e1, $f0, $f9, $7c, $ff, $ac, $e6, $e6
    db $23, $f3, $21, $d9, $31, $ff, $ff, $1a, $f6, $fc, $d2, $3e, $fd, $fc, $ff, $eb
    db $19, $f6, $33, $f4, $36, $54, $b6, $ff, $fe, $17, $fb, $0f, $f9, $0b, $f8, $f9
    db $ff, $4a, $48, $4b, $48, $48, $4d, $6c, $45, $ff, $25, $64, $24, $a6, $36, $a2
    db $1e, $be, $ff, $13, $d3, $1e, $5f, $1f, $30, $f7, $f8, $e7, $ff, $ff, $fe, $80
    db $df, $f0, $ef, $1f, $c0, $df, $ff, $c0, $5f, $80, $df, $00, $bf, $40, $3f, $78
    db $b0, $c0, $aa, $c2, $ba, $c0, $bf, $a0, $9f, $80, $e8, $e0, $e6, $e6, $e1, $20
    db $9f, $e6, $e1, $ea, $e1, $20, $9f, $90, $ff, $cf, $c8, $e7, $60, $f7, $34, $70
    db $91, $ff, $3b, $5b, $9e, $0f, $dc, $2f, $c9, $86, $ff, $6f, $30, $00, $01, $83
    db $8f, $ff, $f8, $7f, $7c, $62, $f1, $c8, $e7, $10, $0f, $be, $e3, $98, $fe, $ff
    db $fe, $ff, $fa, $f9, $20, $1f, $64, $e1, $66, $e1, $04, $ff, $03, $78, $fb, $f0
    db $fb, $34, $b3, $4a, $7f, $49, $5c, $4d, $32, $79, $84, $03, $c4, $ff, $00, $fe
    db $ff, $fe, $ff, $fc, $fb, $00, $00

    nop

    db $f9, $00, $ff, $ff, $eb, $ea, $f0, $08, $e8, $74, $d7, $ff, $78, $d9, $7c, $f7
    db $5e, $f3, $5e, $d3, $07, $7e, $db, $7e, $ce, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $e6, $e5, $ff, $f7, $5e, $ff, $50, $d8, $70, $d8, $70, $07, $f8, $50, $f8, $f8
    db $e2, $ce, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $01, $02, $02, $01, $03, $01
    db $02, $01, $d4, $68, $e5, $60, $e0, $d0, $58, $e0, $f0, $c6, $e7, $1c, $22, $ff
    db $2a, $1c, $3f, $54, $07, $08, $0b, $13, $ff, $15, $25, $28, $0f, $30, $17, $30
    db $5f, $ff, $5f, $1f, $df, $14, $e0, $10, $d0, $c8, $ff, $28, $24, $14, $f0, $0c
    db $e8, $0c, $f8, $2f, $fc, $fa, $fb, $88, $96, $eb, $e0, $87, $ff, $fd, $fc, $ff
    db $73, $88, $a8, $75, $fd, $58, $b8, $75, $fd, $70, $a6, $e4, $ff, $50, $fb, $53
    db $fd, $fc, $ff, $fe, $01, $a8, $74, $fc, $58, $b8, $74, $ff, $71, $8a, $df, $1f
    db $ee, $e3, $f5, $09, $f7, $03, $05, $02, $3e, $e0, $00, $00, $c0, $20, $ff, $ff
    db $ff, $c0, $df, $00, $ff, $00, $7f, $ff, $c0, $df, $b8, $3b, $77, $07, $5d, $9e
    db $ff, $fc, $fc, $03, $fb, $00, $ff, $01, $fd, $ff, $02, $fa, $1d, $dc, $ee, $e1
    db $7a, $f9, $ff, $e0, $c0, $60, $c0, $a0, $80, $40, $00, $80, $fd, $e1, $82, $ff
    db $ff, $ff, $ee, $ed, $ba, $c3, $74, $e1, $d4, $e3, $a0, $ff, $d1, $f1, $60, $e1
    db $d2, $c2, $20, $03, $fc, $a2, $c0, $a0, $c0, $00, $ab, $3b, $58, $6f, $b8, $ff
    db $cf, $e8, $9f, $58, $ff, $af, $6f, $58, $ff, $bb, $9f, $ff, $b5, $ac, $3a, $e6
    db $2d, $ff, $f3, $17, $d9, $1a, $ff, $f5, $f6, $13, $ff, $d2, $fe, $fd, $00, $80
    db $80, $40, $40, $3f, $00, $c0, $a0, $a0, $80, $60, $56, $e2, $8e, $ff, $f8, $ff
    db $ff, $08, $db, $dc, $eb, $50, $7f, $f0, $7f, $f0, $ff, $5f, $f3, $5b, $d1, $7f
    db $b1, $3f, $51, $ff, $9f, $2f, $4f, $0d, $eb, $3a, $f6, $3d, $ff, $f4, $1d, $54
    db $16, $fe, $0b, $fb, $0d, $9f, $f9, $fe, $f8, $40, $20, $c6, $c2, $5a, $e1, $20
    db $cf, $a0, $90, $d0, $c8, $9e, $ff, $7e, $ff, $02, $00, $ff, $07, $09, $0b, $03
    db $1e, $25, $2d, $0f, $fb, $3b, $17, $cc, $a0, $10, $dc, $c2, $fa, $38, $ff, $b6
    db $6c, $e7, $fc, $be, $7e, $3d, $eb, $fa, $c0, $e8, $80, $89, $e0, $00, $1f, $29
    db $1f, $09, $ff, $1f, $29, $2d, $0b, $36, $1a, $3f, $12, $fe, $fe, $e0, $1e, $fd
    db $4a, $fc, $4b, $fa, $48, $ff, $d6, $6c, $be, $25, $7d, $24, $6b, $36, $ff, $5f
    db $1e, $68, $60, $bb, $34, $55, $91, $ff, $3a, $5b, $2c, $0f, $19, $2f, $16, $86
    db $e3, $cf, $30, $ec, $a1, $b4, $c1, $0c, $c0, $20, $f8, $04, $f3, $7c, $78, $70
    db $ff, $ec, $eb, $3f, $1f, $30, $1f, $ff, $2a, $0f, $1a, $2f, $18, $0f, $17, $07
    db $7b, $0f, $10, $80, $a0, $ff, $01, $ff, $ab, $fe, $e0, $f3, $03, $ff, $ff, $e0
    db $90, $62, $68, $64, $d4, $b0, $bf, $9c, $f8, $ec, $e0, $70, $08, $a9, $a0, $00
    db $ff, $3f, $12, $3e, $1e, $31, $5d, $71, $3f, $bf, $7f, $3f, $2f, $4f, $1f, $20
    db $c0, $e0, $13, $ff, $be, $1e, $d0, $1f, $f0, $f7, $ff, $ff, $fb, $fe, $fe, $d0
    db $e1, $7d, $01, $8f, $8f, $7b, $7f, $f8, $6c, $62, $d0, $c8, $e0, $10, $7e, $a1
    db $ff, $f4, $f0, $78, $34, $fc, $4a, $ee, $5c, $0f, $b4, $32, $78, $84, $72, $f1
    db $00, $00

    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp

    db $0d, $0d, $0e, $0e, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0e, $0e, $0d, $0d
    db $0d, $0d, $0d, $0d, $0d, $0d, $0e, $0e, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
    db $0e, $0e, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d
    db $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0e, $0e
    db $0e, $0d, $0d, $0f, $0f, $0d, $0d, $0d, $0f, $0f, $0e, $0d, $0d, $0d, $0e, $0d
    db $ff, $7f, $40, $03, $00, $02, $00, $00, $00, $02, $ff, $6b, $9f, $01, $00, $00
    db $00, $02, $ff, $6b, $40, $7e, $00, $00, $00, $02, $ff, $6b, $94, $52, $00, $00

    rst $18

    db $1a, $03

    call Call_00d_4985
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d207
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$b0]
    add l
    ld l, a
    jr nc, jr_00d_7013

    inc h

jr_00d_7013:
    ld d, [hl]
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0066
    ld a, d
    push af
    add l
    ld l, a
    jr nc, jr_00d_7023

    inc h

jr_00d_7023:
    push hl
    rst $18

    db $3c, $05

    inc a
    srl a
    ld hl, $d4ca
    ld d, $00
    ld e, a
    call Call_000_08ac
    ld d, h
    ld e, l
    pop hl
    ld c, $20
    rst $18

    db $22, $05

    ld hl, $0070
    ld a, [$c33f]
    or a
    jp z, Jump_00d_7048

    ld hl, $007a

Jump_00d_7048:
    pop af
    add l
    ld l, a
    jr nc, jr_00d_704e

    inc h

jr_00d_704e:
    push hl
    rst $18

    db $3c, $05

    inc a
    srl a
    ld hl, $d50a
    ld d, $00
    ld e, a
    call Call_000_08ac
    ld d, h
    ld e, l
    pop hl
    ld c, $20
    rst $18

    db $22, $05

    rst $18

    db $24, $03

    call Call_00d_4a90
    call Call_000_2e3b
    ret


    call Call_00d_4985
    call Call_00d_4a90
    call Call_000_2e3b
    ret


Call_00d_707a:
    ld a, [$c33f]
    or a
    jr nz, jr_00d_70a0

    ld a, [$c2a5]
    and $0f
    cp $0f
    jr z, jr_00d_7097

    ld hl, $708f
    ld d, $05
    ret


    db $00, $01, $02, $03, $04, $09

    dec b
    db $06

jr_00d_7097:
    ld hl, $709d
    ld d, $02
    ret


    db $00, $03, $04

jr_00d_70a0:
    ld hl, $70a6
    ld d, $02
    ret


    nop
    ld [bc], a
    inc bc

Call_00d_70a9:
    push hl
    push bc
    ld c, d
    inc c
    ld e, $00

jr_00d_70af:
    cp [hl]
    jr z, jr_00d_70b9

    inc hl
    inc e
    dec c
    jr nz, jr_00d_70af

    ld e, $01

jr_00d_70b9:
    pop bc
    pop hl
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
