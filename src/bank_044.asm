; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $044", ROMX[$4000], BANK[$44]

    db $74, $7e

    ei
    ld b, d

Call_044_4004:
    push bc
    ld b, $80

jr_044_4007:
    ld c, [hl]
    inc hl
    inc c
    dec c
    jr z, jr_044_4013

    rst $18
    ld e, $05
    inc d
    jr jr_044_4007

jr_044_4013:
    pop bc
    ret


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
    ccf
    nop
    ld a, a
    rra
    ld a, a
    jr nc, jr_044_40a1

    jr nz, jr_044_409b

    jr nz, jr_044_409d

    jr nz, jr_044_409f

    jr nz, jr_044_40a1

    jr nz, jr_044_40a3

    jr nz, jr_044_40a5

    jr nz, jr_044_40af

    jr nz, jr_044_40b8

    jr nc, jr_044_40ba

    rra
    ccf
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    cp $f8
    cp $0c
    ld e, $04
    ld c, $04
    ld c, $04
    ld c, $04
    ld c, $04
    ld c, $04
    ld c, $04
    ld e, $04
    cp $0c
    cp $f8
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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

jr_044_409b:
    nop
    nop

jr_044_409d:
    nop
    nop

jr_044_409f:
    nop
    nop

jr_044_40a1:
    rst $38
    nop

jr_044_40a3:
    rst $38
    nop

jr_044_40a5:
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

jr_044_40af:
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_044_40b8:
    nop
    nop

jr_044_40ba:
    nop
    nop
    nop
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

Call_044_40e0:
    ld hl, $c3f7
    ld a, [hl]
    add a
    add a
    ld hl, $c3f6
    add [hl]
    add a
    ld hl, $c100
    add l
    ld l, a
    jr nc, jr_044_40f3

    inc h

jr_044_40f3:
    ret


Call_044_40f4:
    push af
    push bc
    push de
    push hl
    call Call_044_40e0
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    call Call_000_24eb
    push de
    ld h, $00
    ld l, a
    ld de, $c470
    ld a, $03
    call Call_000_21f0
    ld h, $00
    ld l, b
    ld de, $c473
    ld a, $03
    call Call_000_21f0
    ld h, $00
    ld l, c
    ld de, $c476
    ld a, $03
    call Call_000_21f0
    pop de
    ld a, e
    add a
    add e
    ld hl, $c470
    add l
    ld l, a
    jr nc, jr_044_412f

    inc h

jr_044_412f:
    ld [hl], $0d
    xor a
    ld [$c479], a
    ld hl, $c470
    ld de, $0102
    ld a, [$c3f5]
    call Call_044_4004
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    pop hl
    pop de
    pop bc
    pop af
    ret


    dec l
    dec l
    ld d, d
    dec l
    dec l
    ld b, a
    dec l
    dec l
    ld b, d
    nop

Call_044_4156:
    ld de, $0700
    ld bc, $0b04
    rst $18
    inc b
    dec b
    ld [$c3f5], a
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    ld hl, $414c
    ld de, $0101
    ld a, [$c3f5]
    call Call_044_4004
    ld e, $00
    call Call_044_40f4

jr_044_4179:
    ldh a, [$94]
    and $03
    jr nz, jr_044_41de

    ldh a, [$90]
    bit 5, a
    jr z, jr_044_4188

    dec e
    jr jr_044_41a4

jr_044_4188:
    bit 4, a
    jr z, jr_044_418f

    inc e
    jr jr_044_41a4

jr_044_418f:
    bit 6, a
    jr z, jr_044_4197

    ld d, $01
    jr jr_044_41b6

jr_044_4197:
    bit 7, a
    jr z, jr_044_419f

    ld d, $ff
    jr jr_044_41b6

jr_044_419f:
    call Call_000_2e3b
    jr jr_044_4179

jr_044_41a4:
    ld a, e
    cp $ff
    jr nz, jr_044_41ab

    ld e, $02

jr_044_41ab:
    cp $03
    jr nz, jr_044_41b1

    ld e, $00

jr_044_41b1:
    call Call_044_40f4
    jr jr_044_4179

jr_044_41b6:
    call Call_044_40e0
    ld a, [hl+]
    ld c, a
    ld a, [hl-]
    ld b, a
    ld a, e
    and $03
    jr nz, jr_044_41c5

    call Call_000_252e

jr_044_41c5:
    dec a
    jr nz, jr_044_41cb

    call Call_000_253a

jr_044_41cb:
    dec a
    jr nz, jr_044_41d1

    call Call_000_254a

jr_044_41d1:
    ld a, c
    ld [hl+], a
    ld a, b
    ld [hl-], a
    ld a, $03
    ldh [$9d], a
    call Call_044_40f4
    jr jr_044_4179

jr_044_41de:
    ld a, [$c3f5]
    rst $18
    inc c
    dec b
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    ret


Call_044_41eb:
    ld de, $0000
    ld bc, $0712
    ld a, $00
    rst $18
    ld [bc], a
    dec b
    ld [$c3f4], a
    ld h, $10
    ld de, $0101
    ld bc, $0030

jr_044_4201:
    rst $18
    ld e, $05
    inc e
    inc c
    res 3, c
    dec h
    jr nz, jr_044_4201

    ld h, $08
    ld e, $01
    ld b, $00

jr_044_4211:
    ld d, $02
    ld c, $a0
    rst $18
    ld e, $05
    inc d
    ld c, $a1
    rst $18
    ld e, $05
    inc d
    ld c, $a2
    rst $18
    ld e, $05
    inc d
    ld c, $a3
    rst $18
    ld e, $05
    inc e
    inc b
    dec h
    jr nz, jr_044_4211

    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    ld a, $0f
    ld hl, $4292
    call Call_000_23e8

jr_044_423d:
    ldh a, [$94]
    bit 1, a
    jr nz, jr_044_427f

    bit 0, a
    call nz, Call_044_4156
    ld a, [$c3f6]
    ld d, a
    ld a, [$c3f7]
    ld e, a
    ldh a, [$91]
    bit 5, a
    jr z, jr_044_4259

    dec d
    jr jr_044_426e

jr_044_4259:
    bit 4, a
    jr z, jr_044_4260

    inc d
    jr jr_044_426e

jr_044_4260:
    bit 6, a
    jr z, jr_044_4267

    dec e
    jr jr_044_426e

jr_044_4267:
    bit 7, a
    jr z, jr_044_426e

    inc e
    jr jr_044_426e

jr_044_426e:
    ld a, d
    and $03
    ld [$c3f6], a
    ld a, e
    and $0f
    ld [$c3f7], a
    call Call_000_2e3b
    jr jr_044_423d

jr_044_427f:
    ld a, [$c3f4]
    rst $18
    inc c
    dec b
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    ld hl, $4292
    call Call_000_2449
    ret


    ld a, [$c320]
    rlca
    rlca
    rlca
    add $04
    and $07
    ld h, a
    ld a, [$c322]
    rlca
    rlca
    rlca
    add $04
    and $07
    ld l, a
    ld a, [$c3f6]
    add a
    add a
    add a
    add $18
    sub h
    ld d, a
    ld a, [$c3f7]
    add a
    add a
    add a
    add $18
    sub l
    ld e, a
    ld b, $01
    ld c, $60
    push hl
    call Call_000_26a4
    pop hl
    ld a, $50
    sub l
    ld e, a
    ld b, $00
    ld a, $08

jr_044_42cd:
    push af
    push hl
    ld a, $20
    sub h
    ld d, a
    ld c, $66
    push de
    call Call_000_2798
    pop de
    ld a, d
    add $08
    ld d, a
    inc c
    inc c
    push de
    call Call_000_2798
    pop de
    ld a, d
    add $08
    ld d, a
    inc c
    inc c
    push de
    call Call_000_2798
    pop de
    ld a, e
    add $08
    ld e, a
    inc b
    pop hl
    pop af
    dec a
    jr nz, jr_044_42cd

    ret


    ld hl, $4020
    ld de, $8600
    ld c, $0c
    call Call_000_0468
    xor a
    ld [$c3f6], a
    ld [$c3f7], a
    call Call_044_41eb
    ret


    db $21
    ld b, e

    db $21, $43

    sub $4c
    ld a, h
    ld d, [hl]
    ld d, a
    ld h, b
    dec c
    ld l, d
    or d
    ld [hl], h
    ld hl, $4d43
    ld c, h

    db $47, $43

    call nc, Call_044_5c43
    ld b, h
    pop hl
    ld b, h
    ld l, c
    ld b, l
    xor $45
    ld [hl], l
    ld b, [hl]
    inc b
    ld b, a
    adc c
    ld b, a
    db $10
    ld c, b
    sbc d
    ld c, b
    ld [hl+], a
    ld c, c
    and a
    ld c, c
    ld l, $4a
    or a
    ld c, d
    ld b, b
    ld c, e
    ret z

    ld c, e
    ld c, l
    ld c, h

    db $00, $00, $00, $ff, $ff, $00, $00, $00, $00, $00, $0f, $f1, $1f, $f0, $00, $00
    db $00, $00, $0f, $1f, $ff, $f0, $00, $00, $00, $00, $0f, $1f, $f1, $ff, $00, $00
    db $00, $00, $0f, $ff, $ff, $f0, $00, $00, $00, $00, $ff, $1f, $ff, $f0, $00, $00
    db $00, $00, $ff, $ff, $ff, $f0, $00, $00, $00, $00, $0f, $ff, $ff, $f0, $00, $00
    db $00, $00, $0f, $f3, $3f, $ff, $00, $00, $00, $00, $0f, $ff, $3f, $1f, $00, $00
    db $00, $00, $00, $ff, $ff, $f0, $00, $00, $00, $00, $0f, $1f, $ff, $f0, $00, $00
    db $00, $00, $0f, $ff, $f1, $f0, $00, $00, $00, $00, $00, $ff, $ff, $00, $00, $00
    db $00, $00, $00, $f3, $3f, $00, $00, $00, $00, $00, $00, $ff, $ff, $00, $00, $00
    db $4e, $27, $28, $46, $47, $48, $59, $66, $67, $68, $79, $ff, $0a, $00, $00, $00
    db $00, $0f, $22, $22, $22, $00, $00, $00, $0f, $ff, $f2, $22, $22, $00, $00, $0f
    db $f1, $1f, $22, $22, $22, $00, $00, $0f, $1f, $ff, $22, $22, $22, $00, $00, $0f
    db $ff, $ff, $22, $22, $22, $00, $00, $ff, $ff, $f2, $22, $22, $22, $00, $00, $ff

    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rrca
    rst $38
    ccf
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    rst $38
    di
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    rrca
    ccf
    rst $38
    ld a, [c]
    ld [hl+], a
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rIE]
    ld a, [c]
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    ld c, b
    ld b, [hl]
    ld c, b
    ld d, l
    ld h, [hl]
    ld [hl], a
    rst $38
    dec b
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
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    pop af
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    pop af
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
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
    jr nc, jr_044_4535

    ld e, b
    rst $38
    ld [bc], a
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    di
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    inc sp
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop

jr_044_4535:
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    ld c, [hl]
    ld [de], a
    inc de
    inc h
    ld [hl], a
    adc b
    rst $38
    dec b
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
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    pop af
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    pop af
    ccf
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    ld b, h
    ld b, a
    ld c, b
    rst $38
    ld [bc], a
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
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    cpl
    ccf
    rra
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ccf
    rra
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    rra
    nop
    nop
    nop
    nop
    rrca
    rra
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
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
    ld b, a
    inc [hl]
    dec [hl]
    ld [hl], $37
    rst $38
    inc b
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc sp
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    di
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    ld bc, $3fff
    rst $38
    nop
    nop
    nop
    nop
    rrca
    pop af
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    ld d, e
    jr jr_044_4711

    ld a, [hl+]
    add hl, sp
    ld b, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    add l
    add a
    adc b
    rst $38
    inc c
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

jr_044_4711:
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
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
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
    inc h
    ld d, a
    ld e, b
    rst $38
    ld [bc], a
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    inc sp
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    ld b, c
    jr z, jr_044_4835

    ld l, b
    ld [hl], a
    rst $38
    inc b
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38

jr_044_4835:
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop

Jump_044_4851:
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    ld de, $001f
    nop
    nop
    nop
    nop
    rrca
    inc sp
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
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
    add hl, sp
    ld h, $27
    ld b, [hl]
    ld b, a
    ld c, b
    ld e, c
    ld e, d
    rst $38
    rlca
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    rrca
    di
    pop af
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    inc sp
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    inc sp
    pop af
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    pop af
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld d, e
    rla
    jr jr_044_4954

    scf
    db $76
    rst $38
    dec b
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
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop

jr_044_4954:
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
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
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    di
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
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
    ld hl, $5857
    rst $38
    ld [bc], a
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    pop af
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    pop af
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rra
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld c, d
    jr jr_044_4a51

    jr c, jr_044_4a73

    rst $38
    inc b
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca

jr_044_4a51:
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    pop af
    rst $38
    rst $38

jr_044_4a73:
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    ld de, $00f0
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    ld c, a
    daa
    jr z, jr_044_4b08

    ld e, b
    ld h, a
    ld a, b
    rst $38
    ld b, $00
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    ld de, $00f0
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    ccf
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    inc sp
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop

jr_044_4b08:
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    pop af
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    ld b, e
    ld h, $35
    scf
    ld b, [hl]
    ld [hl], a
    ld a, b
    rst $38
    ld b, $00
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
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    pop af
    rra
    nop
    nop
    nop
    nop
    nop
    pop af
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld b, [hl]
    jr c, jr_044_4bfc

    ld a, [hl-]
    ld b, a
    ld d, [hl]
    rst $38
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    ldh a, [rIE]
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38

jr_044_4bfc:
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
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
    ld d, b
    ld d, a
    ld e, b
    rst $38
    ld [bc], a
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    pop af
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    pop af
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    ld a, [c]
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    cpl
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    ld a, [c]
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    ld a, [c]
    rst $38
    pop af
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    pop af
    di
    ccf
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    ccf
    rst $38
    ldh a, [rP1]
    nop
    nop
    pop af
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld h, e
    ld d, $17
    jr jr_044_4cfb

    ld l, d
    ld l, e
    rst $38
    ld b, $f4
    ld d, l
    db $fc
    ld c, h
    add d
    ld c, l
    ld a, [bc]
    ld c, [hl]
    sub b
    ld c, [hl]
    add hl, de
    ld c, a
    sbc [hl]
    ld c, a
    add hl, hl
    ld d, b
    or e
    ld d, b
    ld a, [hl-]
    ld d, c
    jp nz, Jump_044_4851

    ld d, d
    call Call_044_5252
    ld d, e
    jp c, Jump_044_5f53

    ld d, h
    and $54
    ld l, h
    ld d, l
    db $f4

jr_044_4cfb:
    ld d, l
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    di
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    ld c, e
    daa
    jr z, jr_044_4da9

    rst $38
    inc bc
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
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    pop af
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af

jr_044_4da9:
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    pop af
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rra
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rra
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    pop af
    di
    rst $38
    rra
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    rra
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
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
    ld b, [hl]
    dec sp
    inc a
    ld e, d
    ld a, c
    ld a, d
    rst $38
    dec b
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    di
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    di
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rra
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    inc sp
    rst $38
    nop
    nop
    nop
    nop
    nop
    pop af
    di
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    pop af
    rra
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rVBK]
    inc h
    dec h
    ld h, $ff
    inc bc
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
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    pop af
    rst $38
    ld de, $00f0
    nop
    nop
    nop
    pop af
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    ld c, e
    ld [hl], $37
    ld d, [hl]
    ld d, a
    ld l, c
    ld [hl], a
    rst $38
    ld b, $00
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
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    pop af
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rra
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld de, $001f
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
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
    ld sp, $6968
    rst $38
    ld [bc], a
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    pop af
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld b, [hl]
    ld h, $27
    jr c, jr_044_5069

    ld d, a
    ld e, b
    ld h, [hl]
    ld a, b
    rst $38
    ld [$0000], sp
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
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop

jr_044_5069:
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    ccf
    pop af
    ldh a, [rP1]
    nop
    nop
    rrca
    rra
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    dec hl
    inc l
    ld l, b
    ld [hl], a
    ld a, c
    adc b
    sub a
    rst $38
    rlca
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
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
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
    jr nz, jr_044_517c

    ld c, b
    ld h, a
    ld l, b
    rst $38
    inc b
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
    rrca
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    pop af
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    rrca
    pop af
    rst $38
    rst $38
    nop
    nop
    nop
    nop

jr_044_517c:
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ld c, l
    dec [hl]
    ld [hl], $47
    ld l, b
    ld a, c
    rst $38
    dec b
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    nop
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    cpl
    ccf
    rst $38
    nop
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    cpl
    ccf
    rst $38
    ldh a, [rP1]
    nop
    ld [hl+], a
    ld [hl+], a
    cpl
    di
    rst $38
    ldh a, [rP1]
    nop
    ld [hl+], a
    ld [hl+], a
    cpl
    di
    ccf
    rra
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    di
    ccf
    rra
    nop
    nop
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    ldh a, [rIF]
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    ld d, l
    rla
    jr jr_044_526c

    rst $38
    inc bc
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop

Call_044_5252:
    rrca
    rst $38
    rra
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rra
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra

jr_044_526c:
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [$f0]
    nop
    nop
    nop
    rrca
    di
    ccf
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    ldh a, [rP1]
    ld d, c
    rla
    jr z, @+$01

    ld [bc], a
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
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
    jr z, jr_044_53b6

    db $76
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    ld a, [c]
    di
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di

jr_044_53b6:
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    ld c, h
    ld a, [de]
    dec de
    inc l
    ld a, [hl-]
    dec sp
    rst $38
    dec b
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    di
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    ld b, e
    rla
    jr z, @+$01

    ld [bc], a
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    rra
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    ld de, $00f0
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
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
    ld l, $59
    ld l, b
    ld l, d
    ld a, c
    rst $38
    inc b
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
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rra
    rst $38
    nop
    nop
    nop
    nop
    nop
    di
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    di
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop

Call_044_5565:
    nop
    ld c, b
    ld [hl], $37
    ld a, b

Call_044_556a:
    rst $38
    inc bc
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    rra
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    pop af
    di
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    ld d, h
    inc h
    dec h
    ld b, a
    ld h, a
    db $76
    rst $38
    dec b
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    pop af
    rra
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld b, a
    daa
    jr z, jr_044_56c0

    ld d, [hl]
    ld d, a
    rst $38
    dec b
    rst $08
    ld e, a
    and d
    ld d, [hl]
    inc sp
    ld d, a
    cp l
    ld d, a
    ld c, b
    ld e, b
    ret nc

    ld e, b
    ld e, c
    ld e, c
    and $59
    ld l, l
    ld e, d
    rst $38
    ld e, d
    adc b
    ld e, e
    ld de, $965c
    ld e, h
    jr nz, jr_044_56f5

    xor e
    ld e, l
    ld [hl], $5e
    cp [hl]
    ld e, [hl]
    ld c, c
    ld e, a
    rst $08
    ld e, a
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop

jr_044_56c0:
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca

jr_044_56f5:
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld b, c
    rla
    jr jr_044_574c

    scf
    jr c, @+$48

    ld c, c
    ld d, l
    ld d, a
    ld e, b
    ld l, c
    ld [hl], l
    db $76
    ld a, b
    rst $38
    ld c, $00
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop

jr_044_574c:
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $1fff
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rra
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    ld bc, $1f11
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    dec sp
    jr z, jr_044_57df

    ld c, b
    ld c, c
    ld h, a
    ld l, b
    ld l, c
    rst $38
    rlca
    nop
    nop
    rst $38
    rrca
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    rra
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop

jr_044_57df:
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rra
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ldh a, [rIE]
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    ld d, h
    inc hl
    inc h
    scf
    jr c, jr_044_5889

    ld d, a
    ld e, b
    ld [hl], a
    rst $38
    ld [$0000], sp
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

Jump_044_5857:
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
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    pop af
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop

jr_044_5889:
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    ccf
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rra
    pop af
    rst $38
    nop
    nop
    nop
    nop
    rrca
    pop af
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
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
    ld [hl-], a
    ld b, a
    ld c, b
    ld d, [hl]
    ld h, a
    ld l, b
    rst $38
    dec b
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    pop af
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    pop af
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    di
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
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
    ld b, c
    add hl, de
    ld a, [de]
    daa
    jr z, jr_044_599c

    ld h, l
    rst $38
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    inc sp
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca

jr_044_599c:
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    inc a
    dec d
    ld d, $36
    scf
    ld c, c
    ld c, d
    ld d, a
    ld l, b
    ld l, c
    ld l, d
    rst $38
    ld a, [bc]
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    ld a, $17
    jr jr_044_5a83

    ld a, b
    rst $38
    inc b
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
    ldh a, [rP1]

jr_044_5a83:
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rIE]
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rrca
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
    ld l, $37
    jr c, jr_044_5b48

    ld e, b
    ld h, l
    ld h, [hl]
    ld l, c
    ld l, d
    ld [hl], a
    ld a, b
    add l
    add [hl]
    adc c
    adc d
    sub a
    rst $38
    rrca
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    pop af
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rrca
    di
    rst $38
    ld [hl+], a
    cpl
    ldh a, [rP1]
    nop
    rrca
    di
    ld a, [c]
    rst $38
    cpl
    ldh a, [rP1]
    nop
    rrca
    di
    ld a, [c]
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    ld a, [c]
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    ld [hl+], a
    rst $38
    ldh a, [rP1]
    nop

jr_044_5b48:
    nop
    rst $38
    rst $38
    ld [hl+], a
    cpl
    ldh a, [rP1]
    nop
    nop
    rst $38
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff1f
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    ld h, d
    daa
    jr z, jr_044_5bac

    ld e, b
    ld e, c
    ld a, c
    rst $38
    ld b, $00
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38

jr_044_5bac:
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    di
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld b, [hl]
    ld d, $27
    ld [hl], $57
    ld e, b
    ld h, [hl]
    rst $38
    ld b, $00
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
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop

Call_044_5c43:
    nop
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    ld de, $001f
    nop
    nop
    nop
    nop
    nop
    pop af
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
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
    ld a, [hl+]
    ld b, a
    ld c, b
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
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
    ld a, $28
    add hl, hl
    ld a, [hl+]
    ld b, a
    ld h, l
    ld h, a
    ld l, b
    rst $38
    rlca
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld c, l
    ld a, [de]
    dec de
    daa
    jr z, jr_044_5ddc

    ld [hl], a
    adc b
    sub a
    rst $38
    ld [$0000], sp
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
    rst $38
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    pop af
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop

jr_044_5ddc:
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    pop af
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    pop af
    pop af
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
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
    ld b, b
    inc [hl]
    dec [hl]
    scf
    ld c, b
    ld e, c
    ld e, d
    ld a, d
    ld a, e
    rst $38
    ld [$0000], sp
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    inc sp
    ld b, a
    ld c, b
    ld e, c
    ld h, a
    ld l, b
    rst $38
    dec b
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld b, l
    add hl, de
    ld a, [de]
    ld a, [hl-]
    ld b, a
    ld c, b
    ld d, [hl]
    ld [hl], a
    ld a, b
    rst $38
    ld [$0000], sp
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop

Jump_044_5f53:
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    di
    pop af
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ld de, $00ff
    nop
    nop
    rrca
    di
    rst $38
    rra
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, l
    jr z, jr_044_5ff5

    ld a, [hl+]
    rst $38
    inc bc
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
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    pop af
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    ld de, $ff11

jr_044_5ff5:
    nop
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    pop af
    rst $38
    nop
    nop
    nop
    nop
    pop af
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    ld de, $00f0
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld de, $00f0
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld b, e
    jr jr_044_606b

    daa
    ld l, c
    ld a, b
    rst $38
    dec b
    add [hl]
    ld l, c
    ld a, l
    ld h, b
    ld b, $61
    adc a
    ld h, c
    dec d
    ld h, d
    sbc [hl]
    ld h, d
    daa
    ld h, e
    xor e
    ld h, e
    dec [hl]
    ld h, h
    cp l
    ld h, h

jr_044_606b:
    ld b, [hl]
    ld h, l
    call Call_044_5565
    ld h, [hl]
    sbc $66
    ld h, l
    ld h, a
    xor $67
    ld [hl], e
    ld l, b
    ei
    ld l, b
    add [hl]
    ld l, c
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    ld b, c
    ld d, $17
    jr jr_044_6138

    ld d, a
    db $76
    rst $38
    ld b, $00
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop

jr_044_6138:
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    di
    ccf
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    ld c, b
    inc de
    inc d
    inc sp
    ld b, l
    ld h, l
    sub l
    rst $38
    ld b, $00
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
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    inc sp
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
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
    ld e, $57
    ld e, b
    ld l, c
    rst $38
    inc bc
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    pop af
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rra
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    ld c, h
    jr z, jr_044_62c1

    ld c, b
    ld a, c
    sbc c
    sbc d
    rst $38
    ld b, $00
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop

jr_044_62c1:
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    ccf
    jr jr_044_633a

    daa
    ld l, b
    db $76
    ld [hl], a
    rst $38
    ld b, $00
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

jr_044_633a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    ld de, $001f
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    pop af
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    pop af
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
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
    add hl, hl
    ld e, c
    rst $38
    ld bc, $0000
    nop
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    di
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    ld c, b
    jr jr_044_6447

    ld [hl], $37
    ld d, l
    ld h, h
    ld h, [hl]
    rst $38
    rlca
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop

jr_044_6447:
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    pop af
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    rst $38
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld c, a
    dec de
    inc e
    ld e, e
    sbc b
    sbc c
    rst $38
    dec b
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    jr c, jr_044_6556

    jr jr_044_655a

    ld e, c
    ld l, b
    sbc c
    rst $38
    ld b, $00
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

jr_044_6556:
    nop
    nop
    nop
    nop

jr_044_655a:
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    rra
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ld de, $00f0
    nop
    nop
    nop
    rrca
    pop af
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    pop af
    ld de, $00f0
    nop
    nop
    nop
    rrca
    di
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
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
    jr z, jr_044_661f

    ld e, b
    ld h, [hl]
    ld [hl], a
    rst $38
    inc b
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    pop af
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop

jr_044_661f:
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    ld de, $00f0
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    ld b, e
    rla
    jr jr_044_667a

    ld d, a
    ld l, b
    rst $38
    dec b
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop

jr_044_667a:
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    ld c, [hl]
    ld [de], a
    inc de
    ld d, h
    add [hl]
    sub a
    sbc b
    rst $38
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
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
    jr c, jr_044_6785

    ld h, $48
    ld e, c
    rst $38
    inc b
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
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    pop af
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop

jr_044_6785:
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rra
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld b, e
    dec sp
    inc a
    ld a, b
    ld a, c
    sub [hl]
    sub a
    rst $38
    ld b, $00
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
    nop
    nop
    pop af
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ld de, $00f0
    nop
    nop
    nop
    nop
    rrca
    pop af
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    db $76
    ld [hl], a
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    ldh a, [rIE]
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld e, d
    inc l
    dec l
    ld c, c
    sbc b
    sbc c
    rst $38
    dec b
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    ld a, [hl-]
    add hl, bc
    jr jr_044_6999

    add hl, hl
    ld e, c
    ld h, a
    ld l, b
    add a
    rst $38
    ld [$0000], sp
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
    rrca
    rst $38

jr_044_6999:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    ld c, d
    inc sp
    inc [hl]
    dec [hl]
    ld h, [hl]
    rst $38
    inc b
    dec d
    ld [hl], h
    inc sp
    ld l, d
    call z, Call_044_556a
    ld l, e
    db $f4
    ld l, e
    add h
    ld l, h
    inc hl
    ld l, l
    push bc
    ld l, l
    ld c, a
    ld l, [hl]
    ldh a, [$6e]
    ld [hl], l
    ld l, a
    dec bc
    ld [hl], b
    sub a
    ld [hl], b
    inc sp
    ld [hl], c
    cp b
    ld [hl], c
    ld e, c
    ld [hl], d
    add sp, $72
    add e
    ld [hl], e
    dec d
    ld [hl], h
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    ccf
    rst $38
    ldh a, [rP1]
    nop
    rrca
    cpl
    rst $38
    di
    ld a, [c]
    ldh a, [rP1]
    nop
    rrca
    cpl
    rst $38
    inc sp
    rst $38
    ldh a, [rP1]
    nop
    rrca
    cpl
    rst $38
    di
    rst $38
    ldh a, [rP1]
    nop
    rrca
    ld [hl+], a
    rst $38
    rst $38
    ld a, [c]
    ldh a, [rP1]
    nop
    rrca
    rst $38
    pop af
    rra
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    di
    ccf
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    rst $38
    ld de, $ff11
    nop
    nop
    nop
    nop
    rrca
    ld de, $f011
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    ld l, a
    jr c, jr_044_6af9

    ld b, [hl]
    ld b, a
    ld c, e
    ld c, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld a, b
    add a
    sub h
    sub l
    and [hl]
    and a
    xor b
    or e
    or l
    cp e
    cp h
    add $c7
    rst $38
    ld d, $22
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    nop
    nop
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rP1]
    nop
    rrca
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    rst $38

jr_044_6af9:
    ld a, [c]
    ld [hl+], a
    rst $38
    nop
    nop
    rrca
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    rrca
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    ldh a, [rIE]
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [c]
    cpl
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    cpl
    rst $38
    nop
    nop
    rrca
    ld de, $fff0
    rst $38
    ldh a, [rP1]
    nop
    rrca
    ccf
    ldh a, [rIE]
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    ld l, h
    add hl, de
    jr z, jr_044_6ba9

    ld l, b
    ld a, c
    adc b
    rst $38
    ld b, $00
    rst $38
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    rst $38
    ld de, $f0ff
    nop
    nop
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    nop
    rrca
    pop af
    rra
    ldh a, [rP1]
    rrca
    rst $38
    rst $38
    rst $38
    pop af
    rra
    rst $38
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38

jr_044_6ba9:
    rst $38
    pop af
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    ld de, $1f11
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    pop af
    ld de, $ffff
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    sub b
    inc de
    inc d
    ld [hl+], a
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld b, e
    ld c, b
    ld d, l
    ld d, a
    ld e, c
    ld e, d
    ld h, e
    ld h, h
    ld h, [hl]
    ld l, b
    ld [hl], l
    ld [hl], a
    add h
    add [hl]
    adc e
    sub l
    sub a
    sbc c
    sbc d
    and [hl]
    xor b
    rst $38
    inc e
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    cpl
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    cpl
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    ld c, h
    inc de
    inc d
    dec d
    ld b, l
    ld b, a
    ld d, [hl]
    ld e, b
    ld [hl], a
    ld a, b
    xor b
    xor c
    cp d
    cp e
    rst $38
    dec c
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rrca
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    ldh a, [rP1]
    nop
    nop
    rst $38
    pop af
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ld de, $00f0
    nop
    nop
    nop
    nop
    rrca
    ld de, $00f0
    nop
    nop
    nop
    nop
    rrca
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld c, l
    dec d
    ld d, $23
    inc h
    daa
    jr z, jr_044_6d35

    dec [hl]
    ld [hl], $42
    ld b, e
    ld b, h
    ld b, a
    ld c, b
    ld d, c
    ld d, l
    ld d, [hl]
    ld h, d
    ld h, h
    ld h, a
    ld l, b
    ld [hl], c
    ld [hl], e
    ld [hl], l
    add d
    add h
    sub e
    and h
    rst $38
    inc e
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl

jr_044_6d35:
    di
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    cpl
    cpl
    ld a, [c]
    rst $38
    di
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    ldh a, [rIF]
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rrca
    rrca
    di
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [hl]
    rla
    jr jr_044_6deb

    ld b, l
    ld b, [hl]
    ld c, c
    ld c, d
    ld d, a
    ld e, b
    ld h, h
    ld h, l
    ld h, [hl]
    ld l, c
    ld l, d
    ld [hl], a
    ld a, b
    add h
    add l
    add [hl]
    adc c
    adc d
    sub a
    sbc b
    and h
    and l
    and [hl]
    xor c
    xor d
    or a
    cp b
    add $ff
    rra
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
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ld a, [c]
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rrca
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a

jr_044_6deb:
    ld [hl+], a
    ld [hl+], a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rrca
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    ld bc, $22ff
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rrca
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    nop
    nop
    nop
    rst $38
    di
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld d, [hl]
    ld l, b
    add [hl]
    rst $38
    rlca
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    cpl
    ldh a, [rIE]
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    cpl
    rst $38
    rst $38
    cpl
    rst $38
    nop
    nop
    rst $38
    cpl
    rst $38
    ld a, [c]
    cpl
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld a, [c]
    cpl
    rst $38
    nop
    nop
    rrca
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    ld [hl], l
    ld [$2725], sp
    jr z, jr_044_6f0b

    add hl, sp
    ld b, e
    ld b, l
    ld b, a
    ld d, [hl]
    ld e, b
    ld e, h
    ld h, a
    ld [hl], l
    db $76
    ld a, b
    add a
    adc h
    sub l
    sub [hl]
    sbc e
    and h
    xor d
    xor h
    or [hl]
    or a
    cp b
    cp e
    ret


    jp z, Jump_000_1eff

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

jr_044_6f0b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
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
    daa
    ld d, a
    ld e, b
    rst $38
    ld [bc], a
    ld [hl+], a
    cpl
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    cpl
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    di
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld c, e
    inc de
    inc d
    scf
    ld b, [hl]
    ld c, b
    ld d, a
    ld h, [hl]
    ld l, c
    ld [hl], l
    ld [hl], a
    ld a, b
    add [hl]
    adc c
    sub l
    sub a
    sbc b
    and [hl]
    xor c
    or l
    rst $38
    inc de
    nop
    nop
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rrca
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ccf
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ccf
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rrca
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    rrca
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    rrca
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld b, b
    inc d
    dec d
    ld d, $35
    ld d, l
    ld h, h
    ld [hl], d
    ld [hl], e
    add c
    rst $38
    add hl, bc
    ld [hl+], a
    cpl
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [c]
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [c]
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    cpl
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    ccf
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld l, b
    inc de
    inc d
    dec d
    inc sp
    inc [hl]
    ld b, l
    ld b, [hl]
    ld c, b
    ld d, h
    ld d, a
    ld e, c
    ld e, d
    ld e, e
    ld h, l
    ld h, [hl]
    ld a, c
    ld a, d
    ld a, e
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    or h
    push bc
    rst $38
    add hl, de
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
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rra
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
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
    ld b, b
    ld h, a
    ld l, b
    rst $38
    ld [bc], a
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
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    cpl
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    cpl
    rst $38
    nop
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld [hl+], a
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    cpl
    di
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], l
    ld a, [hl+]
    dec hl
    inc l
    ld b, a
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld [hl], l
    add [hl]
    add a
    adc b
    adc c
    adc d
    sub l
    sbc e
    xor b
    xor c
    xor d
    or [hl]
    or a
    rst $38
    ld e, $00
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ld [hl+], a
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    ld b, h
    inc h
    dec h
    ld h, $66
    ld h, a
    ld a, b
    ld a, c
    sub a
    sbc c
    sbc d
    xor b
    ret z

    rst $38
    inc c
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
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    di
    inc sp
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    di
    inc sp
    ccf
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    ccf
    rst $38
    inc sp
    ccf
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    inc sp
    rst $38
    inc sp
    inc sp
    rst $38
    ld [hl+], a
    ld [hl+], a
    rst $38
    di
    rst $38
    inc sp
    inc sp
    ccf
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    rst $38
    inc sp
    rst $38
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    ldh a, [rIF]
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    cpl
    ldh a, [rIE]
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ldh a, [rIF]
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ld a, [c]
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
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld c, [hl]
    ld b, l
    ld b, [hl]
    ld h, l
    ld h, [hl]
    ld [hl], a
    sub [hl]
    sub a
    sbc b
    sbc c
    and h
    and l
    or e
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    call nz, $d8c5
    reti


    jp c, $ffdb

    jr jr_044_73a6

    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rP1]
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rP1]
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    ldh a, [rP1]
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

jr_044_73a6:
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    ldh a, [rP1]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    ldh a, [rP1]
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    cpl
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ldh a, [rP1]
    rrca
    ldh a, [rP1]
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    ld d, a
    ld [$2a19], sp
    ld c, d
    ld e, e
    ld l, d
    ld a, c
    adc b
    adc d
    sbc c
    and a
    xor b
    or [hl]
    push bc
    db $d3
    rst $38
    rrca
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rrca
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ldh a, [$f3]
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ccf
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld e, [hl]
    jr jr_044_74b1

    ld a, [de]
    daa
    dec hl
    ld [hl], $38
    add hl, sp
    ld a, [hl-]
    ld b, a
    ld c, e
    ld c, h
    ld d, [hl]
    ld e, b
    ld e, c
    ld e, d
    ld h, a
    db $76
    ld a, b
    ld a, c
    ld a, d
    add a
    sub [hl]
    sbc b
    and a
    or [hl]
    rst $38

jr_044_74b1:
    ld a, [de]
    db $ed
    ld a, l
    ret c

    ld [hl], h
    ret c

    ld [hl], h
    ret c

    ld [hl], h
    ret c

    ld [hl], h
    ret c

    ld [hl], h
    ret c

    ld [hl], h
    ret c

    ld [hl], h
    ret c

    ld [hl], h
    ret c

    ld [hl], h
    ret c

    ld [hl], h
    ret c

    ld [hl], h
    ret c

    ld [hl], h
    ret c

    ld [hl], h
    ret c

    ld [hl], h
    ret c

    ld [hl], h
    ret c

    ld [hl], h
    ret c

    ld [hl], h
    ret c

    ld [hl], h
    nop
    nop
    rst $38
    nop
    nop
    rrca
    rrca
    ldh a, [rP1]
    nop
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    nop
    rrca
    rst $38
    ldh a, [rIF]
    ld a, [c]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ldh a, [rIF]
    ld [hl+], a
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rra
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    nop
    nop
    rst $38
    di
    rst $38
    rst $38
    pop af
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    ld de, $ff1f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    rst $38
    di
    rst $38
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rrca
    ldh a, [rIF]
    nop
    xor a
    inc sp
    inc [hl]
    ld c, h
    ld d, a
    ld l, h
    ld l, l
    add e
    sbc e
    sbc h
    or l
    or [hl]
    cp c
    cp d
    cp e
    cp h
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    nop
    rrca
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rrca
    pop af
    rra
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIF]
    rra
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIE]
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIF]
    rst $38
    ccf
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    nop
    rst $38
    di
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    rst $38
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ldh a, [rIF]
    ccf
    rst $38
    ld a, [c]
    ld [hl+], a
    rst $38
    rst $38
    nop
    rst $38
    pop af
    ldh a, [rIE]
    ld a, [c]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rrca
    ldh a, [rIF]
    rst $38
    ldh a, [$8d]
    ld b, [hl]
    ld c, b
    ld d, l
    ld h, [hl]
    ld [hl], a
    rst $38
    dec b
    rst $38
    rst $38
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
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    pop af
    rra
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    rra
    pop af
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    pop af
    rra
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    pop af
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rra
    pop af
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rra
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    jp nz, Jump_044_5857

    rst $38
    ld [bc], a
    nop
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    di
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rIE]
    di
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    di
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    inc sp
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ccf
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rra
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    ret z

    ld [de], a
    inc de
    inc h
    ld [hl], a
    adc b
    rst $38
    dec b
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    pop af
    rra
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    pop af
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [$f1]
    ccf
    rra
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    ccf
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    rra
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIF]
    rra
    pop af
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rra
    pop af
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    ret nz

    ld b, a
    ld c, b
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rra
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIE]
    cpl
    ccf
    rra
    nop
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ccf
    rra
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    ccf
    rra
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    rra
    ccf
    ldh a, [rP1]
    rst $38
    rst $38
    ldh a, [rIF]
    rra
    pop af
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    di
    ccf
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    cp h
    inc [hl]
    dec [hl]
    ld [hl], $37
    rst $38
    inc b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    di
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    rst $38
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rIE]
    inc sp
    pop af
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    di
    pop af
    ldh a, [rP1]
    rst $38
    rst $38
    ldh a, [rSB]
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    pop af
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    di
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    ret nz

    jr jr_044_78a7

    ld a, [hl+]
    add hl, sp
    ld b, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    add l
    add a
    adc b
    rst $38
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_044_78a7:
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    pop af
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret c

    ld d, a
    ld e, b
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rra
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rrca
    pop af
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    pop af
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    di
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    inc sp
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rrca
    rra
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    pop af
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    jr z, jr_044_79cb

    ld l, b
    ld [hl], a
    rst $38
    inc b
    nop
    nop
    rst $38
    nop
    nop
    rrca
    rrca
    ldh a, [rP1]
    nop
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    nop
    rrca
    rst $38
    ldh a, [rIF]
    ld a, [c]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ldh a, [rIF]
    ld [hl+], a
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rst $38

jr_044_79cb:
    cpl
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rra
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    nop
    nop
    rst $38
    di
    rst $38
    rst $38
    pop af
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    ld de, $ff1f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    rst $38
    di
    rst $38
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rrca
    ldh a, [rIF]
    nop
    xor a
    inc sp
    inc [hl]
    ld c, h
    ld d, a
    ld l, h
    ld l, l
    add e
    sbc e
    sbc h
    or l
    or [hl]
    cp c
    cp d
    cp e
    cp h
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    nop
    rrca
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rrca
    pop af
    rra
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIF]
    rra
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIE]
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIF]
    rst $38
    ccf
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    nop
    rst $38
    di
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    rst $38
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ldh a, [rIF]
    ccf
    rst $38
    ld a, [c]
    ld [hl+], a
    rst $38
    rst $38
    nop
    rst $38
    pop af
    ldh a, [rIE]
    ld a, [c]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rrca
    ldh a, [rIF]
    rst $38
    ldh a, [$8d]
    ld b, [hl]
    ld c, b
    ld d, l
    ld h, [hl]
    ld [hl], a
    rst $38
    dec b
    rst $38
    rst $38
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
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    pop af
    rra
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    rra
    pop af
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    pop af
    rra
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    pop af
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rra
    pop af
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rra
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    jp nz, Jump_044_5857

    rst $38
    ld [bc], a
    nop
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    di
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rIE]
    di
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    di
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    inc sp
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ccf
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rra
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    ret z

    ld [de], a
    inc de
    inc h
    ld [hl], a
    adc b
    rst $38
    dec b
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    pop af
    rra
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    pop af
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [$f1]
    ccf
    rra
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    ccf
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    rra
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIF]
    rra
    pop af
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rra
    pop af
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    ret nz

    ld b, a
    ld c, b
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rra
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIE]
    cpl
    ccf
    rra
    nop
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ccf
    rra
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    ccf
    rra
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    rra
    ccf
    ldh a, [rP1]
    rst $38
    rst $38
    ldh a, [rIF]
    rra
    pop af
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    di
    ccf
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    cp h
    inc [hl]
    dec [hl]
    ld [hl], $37
    rst $38
    inc b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    di
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    rst $38
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rIE]
    inc sp
    pop af
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    di
    pop af
    ldh a, [rP1]
    rst $38
    rst $38
    ldh a, [rSB]
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    pop af
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    di
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    ret nz

    jr jr_044_7d75

    ld a, [hl+]
    add hl, sp
    ld b, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    add l
    add a
    adc b
    rst $38
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_044_7d75:
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    pop af
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret c

    ld d, a
    ld e, b
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rra
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rrca
    pop af
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    pop af
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    di
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    inc sp
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rrca
    rra
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    pop af
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    jr z, jr_044_7e99

    ld l, b
    ld [hl], a
    rst $38
    inc b

    push af
    push de
    push hl
    ld hl, $4311
    ld a, [$c836]
    add a
    add l
    ld l, a
    jr nc, jr_044_7e83

    inc h

jr_044_7e83:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c837]
    add a
    add l
    ld l, a
    jr nc, jr_044_7e8f

    inc h

jr_044_7e8f:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $0c
    call Call_000_03eb
    pop hl
    pop de

jr_044_7e99:
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
