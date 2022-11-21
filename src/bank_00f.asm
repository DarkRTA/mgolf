; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00f", ROMX[$4000], BANK[$f]

    db $b7, $4a, $d6, $4a

    ld a, d
    ld c, e

jr_00f_4006:
    ld [hl+], a
    dec c
    jr nz, jr_00f_4006

    ret


Call_00f_400b:
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
    ld hl, $4840
    ld de, $d000
    call Call_000_1f2f
    ld hl, $4892
    ld de, $d100
    call Call_000_1f2f
    ld hl, $48d5
    ld de, $d400
    call Call_000_1f2f
    ld h, $01
    ld l, $02
    call Call_00f_4613
    ld de, $d700
    call Call_000_1f2f
    ld h, $ff
    ld l, $02
    call Call_00f_4613
    ld de, $db00
    call Call_000_1f2f
    ld h, $00
    ld l, $02
    call Call_00f_4613
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
    ld hl, $4911
    ld de, $0103
    call Call_000_0595
    ld hl, $4911
    ld de, $0903
    call Call_000_0595
    ld h, $00
    ld l, $0a
    call Call_00f_4613
    ld de, $0404
    call Call_000_0595
    ld a, $01
    ldh [rVBK], a
    ld hl, $de00
    ld de, $9100
    ld c, $20
    call Call_000_2096
    ld hl, $4680
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
    ld hl, $4680
    ld de, $8880
    ld c, $08
    call Call_000_2096
    ld hl, $d700
    ld de, $8900
    ld c, $20
    call Call_000_2096
    ld hl, $4700
    ld de, $a700
    ld c, $04
    call Call_000_2096
    call Call_00f_459b
    call Call_00f_44fd
    call Call_000_0371
    call Call_000_2e3b
    call Call_000_2e3b
    ld a, $01
    ld hl, $4160
    call Call_000_23e8
    ld a, $01
    ld hl, $4292
    call Call_000_23e8
    call Call_00f_4a11
    ret


    ldh a, [$8c]
    and $3f
    ld hl, $4179
    add l
    ld l, a
    jr nc, jr_00f_416c

    inc h

jr_00f_416c:
    ld d, $00
    ld e, [hl]
    ld hl, $41b9
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

Call_00f_41e2:
    ld a, $01
    ld hl, $4292
    call Call_000_23e8
    call Call_00f_4963

jr_00f_41ed:
    call Call_000_2e3b
    ldh a, [$91]
    bit 5, a
    jr z, jr_00f_4201

    ldh a, [$b2]
    cp $02
    jr c, jr_00f_41ed

    call Call_00f_4401
    jr jr_00f_423c

jr_00f_4201:
    bit 4, a
    jr z, jr_00f_4210

    ldh a, [$b2]
    cp $02
    jr c, jr_00f_41ed

    call Call_00f_4328
    jr jr_00f_423c

jr_00f_4210:
    bit 0, a
    jr z, jr_00f_422c

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
    jr nc, jr_00f_4229

    inc h

jr_00f_4229:
    ld a, [hl]
    jr jr_00f_423e

jr_00f_422c:
    bit 1, a
    jr z, jr_00f_423c

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $08
    ld e, l
    ld a, $ff
    jr jr_00f_423e

jr_00f_423c:
    jr jr_00f_41ed

jr_00f_423e:
    push af
    ld hl, $4292
    call Call_000_2449
    pop af
    ret


Call_00f_4247:
    ld hl, $c600
    ld de, $b880
    ld c, $10
    call Call_000_0468
    ld hl, $c700
    ld de, $9880
    ld c, $10
    call Call_000_0468
    ret


Call_00f_425e:
    ldh a, [$b4]
    add $08
    cp $b0
    jr nz, jr_00f_4268

    ld a, $10

jr_00f_4268:
    ldh [$b4], a
    ret


Call_00f_426b:
    ld hl, $c601
    ld de, $c600
    ld bc, $01ff
    call Call_000_03d3
    ret


Call_00f_4278:
    ldh a, [$b4]
    add $f8
    cp $08
    jr nz, jr_00f_4282

    ld a, $a8

jr_00f_4282:
    ldh [$b4], a
    ret


Call_00f_4285:
    ld hl, $c7fe
    ld de, $c7ff
    ld bc, $01ff
    call Call_000_03e2
    ret


    call Call_00f_42b4
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


Call_00f_42b4:
    ld hl, $ffb1
    inc [hl]
    ld a, [hl]
    and $1c
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld de, $4740
    add hl, de
    ld de, $b060
    ld c, $01
    call Call_000_0468
    ret


Call_00f_42cd:
    call Call_00f_426b
    ldh a, [$b4]
    push af
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    bit 3, h
    jr nz, jr_00f_42e0

    set 4, h

jr_00f_42e0:
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

jr_00f_430a:
    ld [hl], $0b
    add hl, de
    dec c
    jr nz, jr_00f_430a

    ld c, $08

jr_00f_4312:
    ld [hl], a
    inc a
    add hl, de
    dec c
    jr nz, jr_00f_4312

    ld hl, $ffb6
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_00f_425e
    call Call_00f_4247
    call Call_000_2e3b
    ret


Call_00f_4328:
    rst $08
    ld e, e
    ld hl, $4292
    call Call_000_2449
    call Call_00f_497b
    call Call_00f_459b
    call Call_000_2e3b
    ldh a, [$b2]
    ld h, a
    inc h
    ldh a, [$b0]
    inc a
    cp h
    jr c, jr_00f_4345

    ld a, $01

jr_00f_4345:
    ldh [$b0], a
    ld h, $00
    ld l, $02
    call Call_00f_4613
    ld de, $d000
    call Call_000_1f2f
    ld h, $01
    ld l, $02
    call Call_00f_4613
    ld de, $d500
    call Call_000_1f2f
    call Call_000_2e3b
    call Call_000_2e3b
    ld hl, $d200
    ld a, l
    ldh [$b6], a
    ld a, h
    ldh [$b7], a
    call Call_00f_42cd
    call Call_00f_42cd
    call Call_00f_42cd
    call Call_00f_42cd
    call Call_00f_42cd
    call Call_00f_42cd
    call Call_00f_426b
    ld hl, $c613
    call Call_00f_4481
    call Call_00f_425e
    call Call_00f_42cd
    call Call_00f_42cd
    call Call_00f_42cd
    call Call_00f_42cd
    call Call_00f_44ba
    call Call_000_2e3b
    call Call_00f_4963
    ld a, $01
    ld hl, $4292
    call Call_000_23e8
    ret


Call_00f_43ac:
    call Call_00f_4278
    call Call_00f_4285
    ldh a, [$b4]
    push af
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    bit 3, h
    jr nz, jr_00f_43c2

    set 4, h

jr_00f_43c2:
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

jr_00f_43ec:
    ld [hl], $0b
    add hl, de
    dec c
    jr nz, jr_00f_43ec

    ld c, $08

jr_00f_43f4:
    ld [hl], a
    inc a
    add hl, de
    dec c
    jr nz, jr_00f_43f4

    call Call_00f_4247
    call Call_000_2e3b
    ret


Call_00f_4401:
    rst $08
    ld e, e
    ld hl, $4292
    call Call_000_2449
    call Call_00f_497b
    call Call_00f_459b
    call Call_000_2e3b
    ldh a, [$b0]
    dec a
    or a
    jr nz, jr_00f_441a

    ldh a, [$b2]

jr_00f_441a:
    ldh [$b0], a
    ld h, $00
    ld l, $02
    call Call_00f_4613
    ld de, $d500
    call Call_000_1f2f
    ld h, $ff
    ld l, $02
    call Call_00f_4613
    ld de, $d000
    call Call_000_1f2f
    call Call_000_2e3b
    call Call_000_2e3b
    ld hl, $d780
    ld a, l
    ldh [$b6], a
    ld a, h
    ldh [$b7], a
    call Call_00f_43ac
    call Call_00f_43ac
    call Call_00f_43ac
    call Call_00f_43ac
    call Call_00f_43ac
    call Call_00f_43ac
    call Call_00f_4278
    call Call_00f_4285
    ld hl, $c600
    call Call_00f_4481
    call Call_00f_43ac
    call Call_00f_43ac
    call Call_00f_43ac
    call Call_00f_43ac
    call Call_00f_44ba
    call Call_000_2e3b
    call Call_00f_4963
    ld a, $01
    ld hl, $4292
    call Call_000_23e8
    ret


Call_00f_4481:
    ld de, $0020
    ld c, $08

jr_00f_4486:
    ld [hl], $09
    add hl, de
    dec c
    jr nz, jr_00f_4486

    ldh a, [$b4]
    ld c, $08

jr_00f_4490:
    ld [hl], a
    inc a
    add hl, de
    dec c
    jr nz, jr_00f_4490

    ldh a, [$b4]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    bit 3, h
    jr nz, jr_00f_44a5

    set 4, h

jr_00f_44a5:
    ld de, $a000
    add hl, de
    ld d, h
    ld e, l
    ld hl, $4680
    ld c, $08
    call Call_000_0468
    call Call_00f_4247
    call Call_000_2e3b
    ret


Call_00f_44ba:
    ld h, $00
    ld l, $0a
    call Call_00f_4613
    ld de, $0404
    call Call_000_056c
    ld h, $00
    ld l, $04
    call Call_00f_4613
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
    jr jr_00f_4538

Call_00f_44fd:
    ld h, $00
    ld l, $0a
    call Call_00f_4613
    ld de, $0404
    call Call_000_0595
    ld h, $00
    ld l, $04
    call Call_00f_4613
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

jr_00f_4538:
    ld de, $c605
    ld c, $08
    ld h, $00
    ld l, $08
    call Call_00f_4613

jr_00f_4544:
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
    jr nz, jr_00f_4544

    ld h, d
    ld l, e
    ld de, $0016
    ld c, $08
    ld a, $b0

jr_00f_4576:
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
    jr nz, jr_00f_4576

    call Call_00f_4247
    ret


Call_00f_4592:
    ld [hl+], a
    add $08
    cp $b0
    ret c

    sub $a0
    ret


Call_00f_459b:
    ld hl, $c600
    ld c, $08

jr_00f_45a0:
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
    jr nz, jr_00f_45a0

    ld c, $08
    ldh a, [$b4]

jr_00f_45c9:
    push af
    call Call_00f_4592
    call Call_00f_4592
    call Call_00f_4592
    call Call_00f_4592
    call Call_00f_4592
    call Call_00f_4592
    call Call_00f_4592
    call Call_00f_4592
    call Call_00f_4592
    call Call_00f_4592
    call Call_00f_4592
    call Call_00f_4592
    call Call_00f_4592
    call Call_00f_4592
    call Call_00f_4592
    call Call_00f_4592
    call Call_00f_4592
    call Call_00f_4592
    call Call_00f_4592
    call Call_00f_4592
    ld de, $000c
    add hl, de
    pop af
    inc a
    dec c
    jr nz, jr_00f_45c9

    call Call_00f_4247
    ret


Call_00f_4613:
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ldh a, [$b0]
    add h
    ld h, a
    or a
    jr nz, jr_00f_462c

    ldh a, [$b2]
    cp $01
    jr z, jr_00f_4638

    ld h, a
    jr jr_00f_4638

jr_00f_462c:
    ldh a, [$b2]
    cp h
    jr nc, jr_00f_4638

    ld h, $00
    cp $01
    jr z, jr_00f_4638

    inc h

jr_00f_4638:
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
    jr nc, jr_00f_4648

    inc h

jr_00f_4648:
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
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

Call_00f_4963:
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


Call_00f_497b:
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


Call_00f_4995:
    push af
    ld hl, $4954
    ld de, $d1a0
    call Call_000_1f2f
    ld hl, $4929
    ld de, $d4a0
    call Call_000_1f2f
    pop af
    ret


Call_00f_49aa:
    ld h, $00
    ld l, $00
    call Call_00f_4613
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
    call Call_00f_4613
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


Call_00f_4a11:
    ld hl, $4892
    ld de, $d000
    call Call_000_1f2f
    ld hl, $48d5
    ld de, $d300
    call Call_000_1f2f
    ld hl, $4954
    ld de, $d600
    call Call_000_1f2f
    ld hl, $4929
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
    call Call_00f_4aa0
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
    call Call_00f_4aa0
    call Call_000_2e3b
    ld hl, $d600
    ld de, $d1a0
    ld c, $0a
    call Call_000_03eb
    ld hl, $d900
    ld de, $d4a0
    ld c, $0a
    call Call_000_03eb
    call Call_00f_4aa0
    call Call_000_2e3b
    ret


Call_00f_4aa0:
    ld hl, $d1a0
    ld de, $b9a0
    ld c, $0a
    call Call_000_0468
    ld hl, $d4a0
    ld de, $99a0
    ld c, $0a
    call Call_000_0468
    ret


    call Call_00f_4b7a
    ld bc, $4c78
    call Call_00f_400b
    ld c, $10
    call Call_000_25af
    call Call_000_2625
    call Call_00f_41e2
    push af
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    pop af
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, l
    ld [$d209], a
    push hl
    call Call_00f_4b7a
    pop bc
    push hl
    ld e, $00
    ld a, b

jr_00f_4ae9:
    inc e
    inc hl
    cp [hl]
    jr nz, jr_00f_4ae9

    pop hl
    ld bc, $4c78
    call Call_00f_400b
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d209]
    bit 7, a
    jr z, jr_00f_4b08

    ld hl, $4292
    call Call_000_2449

jr_00f_4b08:
    ld c, $10
    call Call_000_25af
    call Call_000_2625

jr_00f_4b10:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d209]
    bit 7, a
    jr z, jr_00f_4b33

    ld hl, $4292
    call Call_000_2449
    ld hl, $d207
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ldh a, [$b0]
    add l
    ld l, a
    jr nc, jr_00f_4b30

    inc h

jr_00f_4b30:
    ld a, [hl]
    jr jr_00f_4b40

jr_00f_4b33:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    call Call_00f_41e2
    cp $ff
    jr z, jr_00f_4b6d

jr_00f_4b40:
    ld b, a
    push bc
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d209]
    and $7f
    call Call_00f_78c5
    call Call_000_2e3b
    ld a, $01
    ld hl, $789f
    call Call_000_23e8
    call Call_00f_77b3
    cp $ff
    pop bc
    jr nz, jr_00f_4b6b

    ld hl, $789f
    call Call_000_2449
    jr jr_00f_4b10

jr_00f_4b6b:
    ld c, a
    ld a, b

jr_00f_4b6d:
    push af
    push bc
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    pop bc
    pop af
    ret


Call_00f_4b7a:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d658
    push hl
    xor a
    ld [hl+], a
    ld d, a
    ld e, $01
    ld a, [$c2a5]
    and $0f
    cp $0f
    jp z, Jump_00f_4c15

    ld a, [$c834]
    cp $01
    jp z, Jump_00f_4be4

    cp $02
    jp nz, Jump_00f_4bb9

    ld a, [$c33f]
    or a
    jr nz, jr_00f_4bb9

    ld [hl], $01
    inc hl
    inc d
    ld [hl], $02
    inc hl
    inc d
    ld [hl], $03
    inc hl
    inc d
    ld [hl], $04
    inc hl
    inc d
    jp Jump_00f_4c46


Jump_00f_4bb9:
jr_00f_4bb9:
    ldh a, [$cf]
    or a
    jp nz, Jump_00f_4c48

    ld [hl], $01
    inc hl
    inc d
    ld [hl], $02
    inc hl
    inc d
    ld [hl], $03
    inc hl
    inc d
    ld [hl], $04
    inc hl
    inc d
    rst $30
    ld h, b
    ld de, $0428
    ld [hl], $05
    inc hl
    inc d
    rst $30
    ldh [rNR13], a
    jr z, jr_00f_4be1

    ld [hl], $06
    inc hl
    inc d

jr_00f_4be1:
    jp Jump_00f_4c46


Jump_00f_4be4:
    ldh a, [$cf]
    or a
    jp nz, Jump_00f_4c62

    ld [hl], $01
    inc hl
    inc d
    rst $30
    nop
    ld c, $28
    inc b
    ld [hl], $02
    inc hl
    inc d
    rst $30
    jr nz, jr_00f_4c08

    jr z, jr_00f_4c00

    ld [hl], $03
    inc hl
    inc d

jr_00f_4c00:
    rst $30
    ld b, b
    ld c, $28
    inc b
    ld [hl], $04
    inc hl

jr_00f_4c08:
    inc d
    rst $30
    ld h, b
    ld de, $0428
    ld [hl], $05
    inc hl
    inc d
    jp Jump_00f_4c46


Jump_00f_4c15:
    ldh a, [$cf]
    or a
    jr nz, jr_00f_4c48

    ld [hl], $01
    inc hl
    inc d
    ld [hl], $02
    inc hl
    inc d
    ld [hl], $03
    inc hl
    inc d
    ld [hl], $04
    inc hl
    inc d
    push de
    ld de, $01e0
    rst $18

    db $42, $02

    pop de
    jr z, jr_00f_4c38

    ld [hl], $05
    inc hl
    inc d

jr_00f_4c38:
    push de
    ld de, $0200
    rst $18

    db $42, $02

    pop de
    jr z, jr_00f_4c46

    ld [hl], $06
    inc hl
    inc d

Jump_00f_4c46:
jr_00f_4c46:
    pop hl
    ret


Jump_00f_4c48:
jr_00f_4c48:
    ld [hl], $01
    inc hl
    inc d
    ld [hl], $02
    inc hl
    inc d
    ld [hl], $03
    inc hl
    inc d
    ld [hl], $04
    inc hl
    inc d
    ld [hl], $05
    inc hl
    inc d
    ld [hl], $06
    inc hl
    inc d
    jr jr_00f_4c46

Jump_00f_4c62:
    ld [hl], $01
    inc hl
    inc d
    ld [hl], $02
    inc hl
    inc d
    ld [hl], $03
    inc hl
    inc d
    ld [hl], $04
    inc hl
    inc d
    ld [hl], $05
    inc hl
    inc d
    jr jr_00f_4c46

    db $d4, $4c

    inc sp
    ld c, l

    db $57, $4d, $90, $4e

    sbc b
    ld c, [hl]
    and a
    ld c, [hl]
    nop
    ld c, a
    ld e, c
    ld c, a
    ld h, d
    ld c, a
    or d
    ld c, a

    db $d2, $4f, $52, $50, $61, $53, $da, $56, $e3, $56, $33, $57

    ld d, e
    ld d, a

    db $a0, $57

    ld a, c
    ld e, d
    add h
    ld e, l
    adc l
    ld e, l
    db $dd
    ld e, l
    db $fd
    ld e, l
    ld l, d
    ld e, [hl]
    push bc
    ld h, b
    adc h
    ld h, e
    sub l
    ld h, e
    push hl
    ld h, e
    dec b
    ld h, h

    db $5c, $64

    ld [c], a
    ld h, [hl]
    and c
    ld l, c
    xor d
    ld l, c
    ld a, [$1a69]
    ld l, d
    and e
    ld l, d
    or d
    ld l, l
    db $ed
    ld [hl], b
    or $70
    ld b, [hl]
    ld [hl], c
    ld h, [hl]
    ld [hl], c
    ret nz

    ld [hl], c
    ld b, h
    ld [hl], h
    ld a, [hl-]
    ld [hl], a
    ld b, e
    ld [hl], a
    sub e
    ld [hl], a

    rst $18

    db $1a, $03

    call Call_00f_4995
    call Call_00f_49aa
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
    jr nc, jr_00f_4cf3

    inc h

jr_00f_4cf3:
    ld d, [hl]
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0021
    ld a, d
    push af
    add l
    ld l, a
    jr nc, jr_00f_4d03

    inc h

jr_00f_4d03:
    ld de, $d4c5
    ld c, $20
    rst $18

    db $22, $05

    ld hl, $0028
    ld a, [$c2a5]
    and $0f
    cp $0f
    jp nz, Jump_00f_4d1b

    ld hl, $002f

Jump_00f_4d1b:
    pop af
    add l
    ld l, a
    jr nc, jr_00f_4d21

    inc h

jr_00f_4d21:
    ld de, $d505
    ld c, $20
    rst $18

    db $22, $05

    rst $18

    db $24, $03

    call Call_00f_4aa0
    call Call_000_2e3b
    ret


    call Call_00f_4995
    call Call_00f_4aa0
    call Call_000_2e3b
    ret


    ld bc, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0000], a
    nop

    db $ff, $07, $0f, $0a, $1d, $17, $38, $2f, $30, $ff, $3b, $67, $57, $ef, $be, $cf
    db $b8, $cd, $ff, $57, $ef, $2e, $71, $17, $38, $0b, $1c, $ff, $05, $0e, $03, $07
    db $01, $03, $00, $00, $ef, $00, $80, $80, $c0, $ff, $e1, $d9, $ff, $e5, $ff, $fe
    db $be, $c3, $d5, $bb, $7f, $b9, $f5, $ff, $bb, $ff, $83, $b7, $cf, $ce, $ff, $fc
    db $e7, $fe, $98, $fc, $e0, $e0, $fd, $e4, $81, $c3, $c6, $ff, $6f, $ef, $69, $ef
    db $69, $cd, $6b, $b6, $ff, $7b, $7b, $86, $b7, $ce, $4f, $fe, $3d, $f7, $7f, $18
    db $3d, $e0, $e5, $03, $07, $b4, $ff, $ff, $4b, $fc, $fe, $09, $b5, $7b, $ff, $70
    db $ff, $fb, $7c, $f6, $79, $fd, $73, $fb, $77, $ef, $ef, $ff, $c6, $ef, $c0, $e6
    db $80, $8c, $de, $ff, $b2, $ff, $dd, $e3, $bd, $db, $eb, $97, $ff, $ff, $8f, $f4
    db $8f, $be, $c3, $ef, $f3, $ef, $1f, $ff, $0e, $1f, $c6, $e1, $05, $0e, $0b, $ff
    db $1c, $16, $39, $2d, $33, $2e, $31, $17, $ff, $b8, $8b, $9c, $85, $8e, $0b, $9c
    db $36, $ff, $79, $7d, $43, $7b, $47, $3f, $7f, $1e, $fd, $3f, $60, $e7, $c3, $c7
    db $8c, $df, $57, $f8, $ff, $af, $76, $ba, $65, $5f, $e3, $fd, $e3, $ff, $ef, $f0
    db $9b, $fc, $0f, $9f, $03, $07, $ff, $00, $00, $60, $f0, $d0, $b8, $f8, $98, $ff
    db $f8, $98, $79, $9b, $b6, $df, $7b, $dc, $ff, $77, $db, $bd, $d2, $7f, $91, $7e
    db $91, $ff, $f7, $98, $fd, $9e, $ff, $ff, $b1, $fb, $fe, $40, $e7, $87, $cf, $5b
    db $fc, $af, $70, $bb, $fe, $fa, $c0, $db, $e7, $ef, $f0, $f7, $78, $ec, $df, $7f
    db $a7, $ef, $c1, $e3, $20, $e3, $30, $78, $ff, $78, $4c, $7c, $cc, $fc, $86, $fe
    db $ce, $ff, $fc, $ce, $f8, $cc, $f4, $ce, $dc, $e6, $ff, $fa, $e7, $ef, $f3, $df
    db $ff, $8e, $df, $03, $00, $00, $00, $00

    nop

    db $80, $7d, $1f, $68, $4c, $68, $00, $00

    ld bc, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e4
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
    call nc, $4602
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

    db $ff, $00, $30, $00, $30, $30, $ff, $30, $ff, $be, $f8, $e1, $00, $31, $01, $31
    db $00, $ff, $e0, $1c, $df, $ff, $3e, $ff, $7e, $ff, $ff, $e3, $00, $0c, $df, $00
    db $0c, $0c, $ff, $0c, $f8, $e2, $00, $0c, $ff, $c0, $ec, $01, $31, $01, $33, $07
    db $3f, $ff, $0e, $3f, $1f, $3e, $1f, $3e, $0f, $3e, $ff, $02, $37, $b3, $cc, $4c
    db $80, $88, $00, $ff, $80, $00, $14, $00, $3c, $00, $2c, $18, $ff, $db, $3c, $70
    db $fc, $c0, $6c, $80, $4c, $ff, $98, $3c, $fc, $7c, $fc, $7c, $f8, $7c, $ff, $40
    db $ec, $03, $33, $07, $37, $03, $37, $fc, $9c, $e7, $a9, $e1, $3f, $ff, $0c, $1e
    db $00, $ff, $3c, $fe, $e0, $93, $e0, $c0, $cc, $00, $8c, $9c, $e9, $00, $00

    nop

    db $fb, $ff, $00, $fe, $f5, $3e, $00, $1c, $00, $08, $ff, $00, $10, $00, $90, $00
    db $50, $00, $b0, $ff, $00, $d1, $00, $e3, $00, $c7, $00, $8f, $ff, $00, $ee, $f1
    db $57, $bb, $ad, $5e, $5e, $3f, $e1, $b1, $ff, $ef, $ff, $ff, $c3, $e0, $c0, $e3
    db $fc, $ff, $f7, $a0, $e3, $df, $3f, $e7, $78, $f8, $47, $ff, $e0, $5f, $e0, $5f
    db $ff, $5f, $e0, $7f, $ce, $f8, $e1, $ef, $5f, $f0, $f8, $e2, $80, $ef, $fe, $00
    db $57, $fc, $00, $f8, $ae, $e0, $f8, $f8, $e0, $fe, $62, $ea, $ff, $81, $7e, $02
    db $fd, $e4, $fb, $53, $bf, $ae, $80, $e1, $e1, $ff, $be, $80, $e8, $03, $7e, $f2
    db $01, $fe, $24, $e1, $03, $fb, $06, $7f, $fe, $9f, $e2, $ff, $e3, $1e, $03, $fe
    db $07, $fe, $fb, $fe, $7d, $03, $fe, $e0, $07, $fe, $7b, $fe, $83, $f6, $e0, $ef
    db $0f, $fe, $f7, $fa, $00, $ed, $07, $00, $7b, $ff, $00, $7d, $00, $7e, $00, $1f
    db $00, $3f, $fb, $00, $7f, $e4, $c0, $f0, $0f, $e0, $1f, $c0, $b3, $3f, $80, $f5
    db $e1, $d5, $c2, $e0, $ff, $80, $e3, $a1, $c8, $02, $e0, $00, $e7, $fe, $cf, $07
    db $c0, $e0, $a4, $c1, $af, $df, $ff, $f3, $7c, $5c, $e3, $60, $ff, $e3, $ff, $e7
    db $7c, $ff, $60, $fe, $e0, $f8, $e7, $7d, $fe, $6f, $f7, $f0, $7f, $c0, $80, $d3
    db $f8, $00, $70, $00, $b7, $a0, $00, $c1, $8c, $c0, $0f, $f0, $fe, $e3, $0e, $7f
    db $f1, $0c, $f3, $08, $f7, $10, $ef, $80, $e5, $97, $e0, $ff, $77, $80, $c6, $fe
    db $d4, $c2, $fc, $cb, $f8, $fe, $28, $c4, $ef, $f0, $d7, $38, $0b, $fc, $3d, $fb
    db $fe, $c3, $06, $e0, $05, $fe, $3f, $fc, $cb, $ff, $fc, $0f, $f8, $17, $f8, $7f
    db $f0, $bf, $fc, $86, $f4, $f0, $a3, $7f, $00, $bf, $00, $df, $00, $7f, $ef, $00
    db $f6, $00, $f1, $00, $e0, $78, $e0, $95, $83, $e8, $c0, $0f, $ec, $c0, $ff, $00
    db $c0, $80, $c5, $b7, $94, $00, $c6, $01, $c3, $e0, $d0, $a0, $07, $8c, $c0, $88
    db $c1, $01, $7c, $6e, $c0, $a6, $a1, $e0, $00, $c0, $00, $80, $fe, $e0, $a9, $c0
    db $70, $e6, $fe, $fd, $fe, $fe, $e2, $f0, $8a, $e0, $e0, $2e, $aa, $a4, $80, $00
    db $40, $f4, $c0, $df, $78, $e0, $80, $a3, $4a, $80, $c5, $f7, $80, $a6, $7f, $88
    db $e4, $d4, $e1, $fe, $8e, $e0, $aa, $71, $a3, $c0, $b6, $a0, $07, $66, $aa, $f0
    db $14, $a4, $fb, $ff, $07, $f7, $0f, $fc, $1f, $db, $3c, $f7, $87, $38, $be, $71
    db $00, $a5, $18, $e1, $8e, $e5, $c4, $a3, $02, $f3, $00, $04, $00, $a2, $fe, $e3
    db $91, $00, $63, $00, $f7, $87, $00, $cf, $00, $a0, $d7, $3b, $2e, $df, $ff, $5d
    db $e6, $e7, $fc, $bb, $fc, $ff, $f8, $ff, $0b, $fc, $f4, $0f, $e3, $1f, $f0, $0f
    db $4b, $fc, $03, $f8, $b3, $ff, $b8, $a0, $72, $a7, $0f, $94, $82, $ff, $ed, $1e
    db $bf, $ff, $f3, $ff, $ee, $f1, $7f, $ff, $00, $f3, $0c, $00, $ff, $f9, $14, $e0
    db $8a, $dc, $c3, $e0, $94, $80, $08, $9a, $c0, $88, $e1, $00, $a9, $fe, $ff, $01
    db $df, $3f, $aa, $77, $dd, $63, $ff, $ff, $41, $7f, $c1, $b4, $cf, $fb, $8e, $f5
    db $dd, $8e, $4c, $81, $5f, $e0, $bf, $b1, $80, $fe, $07, $ff, $05, $ff, $e4, $ff
    db $7e, $ff, $05, $ff, $ff, $84, $7f, $e4, $1f, $fb, $04, $fb, $04, $e5, $04, $4a
    db $e0, $04, $82, $8c, $a8, $84, $01, $ef, $1f, $ff, $df, $3f, $f7, $38, $bf, $70
    db $ec, $f3, $7f, $d8, $e7, $78, $87, $f0, $0f, $c0, $5d, $a0, $ea, $00, $81, $3f
    db $12, $a0, $1f, $06, $a0, $03, $00, $fb, $fa, $0c, $e0, $7a, $00, $ac, $c1, $ff
    db $22, $ff, $2d, $ef, $fe, $17, $f8, $0d, $c4, $80, $82, $ff, $41, $ff, $ff, $c1
    db $7f, $c2, $7f, $a1, $7f, $d0, $ff, $3f, $f0, $1f, $f0, $1f, $d1, $3f, $e7, $f3
    db $ff, $7f, $fe, $e0, $39, $a1, $60, $9f, $fe, $01, $e4, $c6, $a1, $74, $85, $03
    db $c0, $82, $40, $e1, $b9, $7f, $7f, $ff, $ff, $c6, $ff, $ff, $c0, $bf, $c0, $70
    db $fd, $8f, $b2, $81, $00, $ff, $01, $ff, $07, $ff, $9f, $09, $ff, $17, $fb, $10
    db $c0, $86, $86, $a7, $3f, $cf, $00, $23, $00, $88, $8c, $60, $00, $a5, $cf, $f0
    db $ff, $af, $7b, $d6, $3f, $fc, $07, $5a, $e7, $ff, $ba, $e7, $5c, $e7, $f4, $0f
    db $e8, $1f, $ff, $f0, $3f, $70, $9f, $f8, $8f, $f4, $8f, $9f, $fc, $87, $74, $8f
    db $8e, $78, $84, $15, $82, $fc, $fc, $32, $65, $1e, $c1, $ec, $1f, $fb, $1c, $d7
    db $38, $ff, $7e, $f1, $fc, $f3, $8c, $f3, $7c, $83, $fb, $f8, $07, $3c, $87, $00
    db $ff, $80, $ff, $c0, $7f, $7f, $70, $ff, $88, $ff, $08, $ff, $00, $00

    nop

    db $e3, $ff, $00, $fe, $ff, $fe, $ff, $fe, $ff, $f1, $00, $e0, $fe, $fe, $e0, $00
    db $00, $f9, $00, $f0, $00, $c0, $fb, $00, $80, $fe, $e0, $e0, $00, $10, $00, $08
    db $ee, $c6, $e2, $3f, $00, $1f, $fe, $e0, $07, $00, $03, $fb, $00, $fb, $b6, $f8
    db $3e, $01, $1c, $03, $08, $ff, $07, $ff, $00, $fe, $01, $fc, $03, $f8, $ff, $07
    db $00, $ff, $f8, $ff, $fc, $ff, $fe, $ff, $ff, $07, $f8, $7b, $fc, $7d, $fe, $7e
    db $7f, $ff, $1f, $ff, $3f, $ff, $7f, $ff, $ff, $e0, $fe, $74, $e2, $f8, $07, $70
    db $8f, $a0, $df, $c1, $fb, $ff, $e3, $f0, $e4, $7f, $80, $bf, $c0, $df, $7f, $e0
    db $ef, $f0, $f6, $f8, $fe, $00, $fe, $e1, $f9, $f0, $72, $e4, $fd, $e7, $01, $00
    db $02, $01, $04, $72, $a0, $e0, $0f, $f8, $e2, $a0, $e7, $04, $f8, $7a, $a0, $ea
    db $7d, $7f, $52, $e0, $23, $00, $88, $07, $50, $a0, $e4, $ff, $10, $0f, $90, $0f
    db $50, $8f, $b0, $cf, $7f, $d1, $ef, $e3, $ff, $c7, $ff, $8f, $80, $e4, $fe, $f0
    db $c3, $81, $7e, $02, $fd, $f0, $0f, $e0, $df, $1f, $c0, $3f, $80, $7f, $dd, $c5
    db $0f, $f0, $fe, $fe, $e3, $0e, $f1, $0c, $f3, $08, $f7, $10, $ff, $ef, $f1, $fe
    db $e0, $ff, $c1, $ff, $83, $8f, $ff, $07, $ff, $0f, $3c, $e0, $41, $e0, $e4, $c0
    db $40, $6b, $80, $a0, $52, $e0, $e0, $b0, $e2, $10, $0f, $fe, $e3, $7f, $91, $0f
    db $63, $9f, $87, $ff, $cf, $20, $e0, $ff, $fe, $01, $df, $3f, $aa, $77, $dd, $63
    db $ff, $ff, $41, $7f, $c1, $b4, $cf, $f0, $0f, $ff, $c1, $ff, $22, $ff, $2d, $fe
    db $17, $f8, $df, $0d, $fe, $03, $fe, $82, $a0, $e0, $cf, $f0, $ff, $af, $7b, $d6
    db $3f, $fc, $07, $5a, $e7, $ff, $ba, $a7, $5c, $e7, $ee, $f1, $57, $bb, $7f, $ad
    db $5e, $5e, $e1, $b1, $ff, $ef, $e3, $c2, $ef, $e4, $fb, $53, $bf, $f0, $e1, $e1
    db $ff, $be, $96, $d3, $c2, $e0, $ff, $f0, $e3, $a1, $c4, $c1, $f0, $e8, $e0, $5b
    db $ff, $77, $b3, $c2, $ee, $f1, $d0, $e5, $b7, $f0, $ea, $f7, $a1, $ff, $f7, $e0
    db $e4, $d7, $3b, $2e, $df, $ff, $5d, $e6, $e7, $fc, $bb, $fc, $ff, $f8, $bf, $0b
    db $fc, $fb, $8a, $f5, $8e, $f2, $a1, $5f, $ff, $e0, $bf, $a0, $5f, $e0, $fe, $07
    db $41, $ff, $ff, $c1, $7f, $c2, $7f, $a1, $7f, $d0, $ff, $3f, $f0, $1f, $f0, $1f
    db $d1, $3f, $f4, $ff, $0f, $e8, $1f, $f0, $3f, $70, $9f, $f8, $3f, $8f, $f4, $8f
    db $fc, $87, $74, $cf, $c0, $87, $e4, $ec, $bc, $a5, $78, $e2, $c3, $3f, $f0, $eb
    db $ff, $ff, $f8, $fc, $06, $c0, $e0, $e5, $fe, $ff, $f8, $fc, $fd, $fe, $eb, $f3
    db $0f, $d0, $e5, $81, $36, $c2, $e8, $f0, $9d, $f7, $7e, $f7, $0f, $fd, $a1, $7f
    db $ff, $37, $0f, $f7, $05, $03, $01, $2c, $c0, $a2, $c1, $f4, $0f, $bf, $e3, $1f
    db $f0, $0f, $fc, $03, $5e, $a5, $05, $ff, $fd, $e4, $fc, $7e, $fe, $05, $ff, $84
    db $ff, $7f, $e4, $1f, $fb, $04, $fb, $04, $e7, $eb, $ff, $7f, $ff, $e0, $c0, $3f
    db $a0, $60, $9f, $fe, $6f, $01, $ff, $00, $8e, $71, $e8, $03, $fc, $28, $ad, $ec
    db $7a, $e6, $0e, $a2, $f9, $07, $90, $a5, $fe, $01, $f7, $f3, $0f, $bf, $81, $a2
    db $f6, $83, $1f, $e0, $f9, $fe, $76, $26, $e3, $fd, $03, $aa, $e0, $01, $fd, $03
    db $52, $e0, $fe, $62, $a0, $e8, $f0, $fe, $ff, $cf, $f0, $7f, $35, $80, $6e, $a1
    db $cf, $f4, $e0, $37, $0f, $f4, $e1, $c2, $85, $ff, $3f, $c0, $ff, $ff, $fc, $07
    db $ff, $04, $b0, $fe, $e0, $ae, $82, $4a, $e0, $2c, $a0, $f3, $0f, $68, $e1, $fe
    db $f7, $01, $f3, $0f, $20, $a7, $fb, $07, $f7, $0f, $bf, $ec, $1f, $fb, $1c, $d7
    db $38, $86, $83, $df, $ff, $3f, $e0, $78, $c0, $47, $c0, $5f, $c0, $ff, $5f, $ff
    db $03, $fa, $06, $7e, $fe, $82, $ff, $e2, $02, $1e, $02, $fe, $06, $fe, $fa, $ff
    db $fe, $af, $df, $70, $7c, $40, $e3, $60, $ee, $f6, $80, $7c, $ff, $60, $fe, $e0
    db $ef, $f0, $17, $bf, $38, $0b, $fc, $3d, $fe, $c3, $d2, $a0, $05, $ff, $fe, $3f
    db $fc, $e0, $c0, $c0, $80, $c0, $eb, $80, $d0, $50, $e6, $01, $ea, $86, $20, $c0
    db $f3, $7f, $fc, $ff, $ff, $9f, $7f, $02, $01, $ec, $e1, $9f, $01, $00, $05, $03
    db $6f, $5f, $a2, $14, $85, $fe, $ef, $01, $ef, $1f, $df, $58, $c0, $fe, $01, $b9
    db $ff, $7f, $7f, $ff, $c6, $ff, $ff, $c0, $bf, $ff, $c0, $70, $8f, $7e, $f1, $fc
    db $f3, $8c, $df, $f3, $7c, $83, $f8, $07, $0c, $a3, $df, $5f, $bb, $e0, $7f, $68
    db $e1, $cf, $5f, $f0, $f8, $e2, $02, $dd, $fe, $68, $e1, $7a, $fe, $82, $f8, $e0
    db $0e, $fe, $fb, $f6, $fa, $68, $e5, $e3, $ff, $7d, $fe, $6f, $fe, $dd, $e0, $cb
    db $fc, $0f, $f8, $17, $f8, $7f, $e3, $f0, $bf, $6d, $c1, $a8, $74, $02, $e1, $fc
    db $1f, $db, $ff, $3c, $f7, $38, $be, $71, $ff, $00, $ed, $ef, $1e, $bf, $ff, $f3
    db $58, $a0, $ff, $00, $f3, $ff, $0c, $00, $ff, $f7, $38, $bf, $70, $ec, $ff, $f3
    db $d8, $e7, $78, $87, $f0, $0f, $c0, $b9, $3f, $20, $a0, $82, $80, $00, $ff, $01
    db $a0, $80, $09, $df, $f9, $17, $f3, $10, $f0, $55, $63, $80, $ff, $ff, $c0, $7f
    db $70, $ff, $88, $8f, $08, $0f, $00, $00, $00, $0f, $0f, $0f, $0f, $0d, $0f, $0f
    db $0f, $0f, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0c
    db $0c, $0c, $0c, $0c, $0c, $0c, $0c, $0d, $0d, $0d, $0c, $0c, $0c, $0d, $0d, $0d
    db $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0e, $0e, $0e, $0e, $0e, $0e
    db $0d, $0d, $0d, $0d, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0d, $0f, $0f
    db $0f, $0f, $0e, $0e, $0e, $0d, $0d, $0d, $0f, $0f, $0f, $0f, $0d, $0d, $0d, $0d
    db $0d, $0d, $ff, $7f, $90, $7f, $d4, $02, $46, $02, $1f, $18, $46, $02, $80, $09
    db $00, $00, $de, $33, $cc, $03, $08, $03, $46, $02, $7e, $02, $46, $02, $8f, $01
    db $00, $00

    ld c, a
    rst $38
    rst $38
    rst $38
    add b
    cp $ea
    rst $38
    ld [c], a
    jp $e4fe


    ld [hl+], a
    ld a, [c]
    pop hl
    ld bc, $eaff
    jp nc, $d0ec

    ld [c], a
    rst $20
    cp $e0
    adc $e1
    pop af
    add c
    cp $e0
    jp nc, $d0eb

    ld [c], a
    rst $38
    ldh [$e0], a
    and $cf
    and $e0
    ldh [$e7], a
    rst $38
    ldh [$a2], a
    db $e3
    add d
    add d
    db $ed
    sbc [hl]
    rst $38
    ld [c], a
    add d
    add d
    and d
    pop hl
    rst $38
    rst $38
    rrca
    rst $38
    rrca
    ld a, a
    ld a, a
    ld c, a
    ld c, a
    ld l, a
    ld l, a
    rrca
    rlca
    rrca
    rst $38
    rst $38
    nop
    nop
    nop

    db $fb, $00, $ff, $fe, $e9, $7c, $83, $fe, $7d, $87, $ff, $82, $3b, $02, $7f, $01
    db $7f, $01, $7e, $fd, $02, $fe, $e3, $fe, $82, $fe, $42, $fe, $42, $7f, $ff, $4f
    db $f0, $50, $e7, $20, $ef, $fe, $f1, $ff, $21, $ee, $22, $ff, $3b, $ff, $6f, $ff
    db $ff, $5f, $f9, $f8, $e7, $e3, $bf, $9f, $7f, $ff, $3f, $fd, $78, $f3, $f3, $ef
    db $e7, $ff, $ff, $de, $fd, $bc, $fb, $79, $e7, $63, $0f, $ff, $07, $1f, $0f, $1e
    db $0e, $9c, $1c, $d8, $ff, $98, $e0, $c0, $f8, $60, $be, $b8, $ff, $ff, $de, $fb
    db $b3, $df, $de, $ff, $ff, $de, $df, $de, $ff, $bf, $f7, $f7, $80, $eb, $00, $ff
    db $7f, $7e, $81, $ff, $7e, $83, $81, $7d, $80, $e0, $dd, $ff, $fe, $ed, $81, $ff
    db $41, $fe, $f0, $f1, $db, $ff, $4b, $fe, $fe, $ff, $bf, $ff, $ff, $ff, $ff, $cf
    db $7f, $47, $bf, $a8, $df, $d6, $ff, $df, $fd, $ff, $7f, $ff, $be, $f0, $e0, $3c
    db $ff, $fd, $db, $ea, $e0, $ff, $ff, $ef, $b9, $a9, $38, $fd, $28, $fe, $e7, $b8
    db $28, $f8, $a8, $f8, $e8, $ff, $bf, $a8, $ff, $af, $fb, $fb, $ff, $bf, $fc, $80
    db $ed, $f0, $cb, $38, $c7, $fe, $39, $cf, $46, $bf, $b5, $85, $7b, $09, $77, $11
    db $fe, $e3, $6f, $fd, $21, $fe, $ec, $22, $7f, $35, $ef, $2a, $fd, $ff, $ad, $fd
    db $7d, $ff, $fb, $ff, $fe, $1f, $ff, $0f, $f7, $f4, $fc, $f8, $dc, $08, $ef, $ff
    db $e6, $f7, $f7, $7c, $38, $bc, $98, $de, $ff, $dc, $de, $ce, $ee, $c2, $f0, $e0
    db $f0, $bf, $e0, $60, $60, $20, $20, $00, $ff, $e8, $80, $7f, $00, $f8, $80, $ff
    db $f8, $ff, $7f, $80, $fb, $ce, $e2, $cc, $0f, $00, $03, $bc, $e9, $b0, $e0, $ff
    db $ff, $fd, $80, $fe, $e2, $40, $ff, $c0, $78, $40, $e7, $af, $c0, $cf, $00, $1f
    db $db, $e0, $07, $97, $e2, $03, $bf, $00, $0f, $01, $3f, $02, $1f, $f2, $e0, $01
    db $1c, $cb, $ec, $78, $e5, $c0, $00, $ff, $fd, $e0, $fe, $ff, $5c, $cc, $f7, $7e
    db $00, $3c, $80, $e8, $00, $ff, $30, $ef, $ff, $28, $ff, $30, $ff, $20, $20, $20
    db $ff, $f4, $fe, $e1, $af, $a2, $00, $78, $e0, $ff, $1f, $ff, $f2, $ff, $ff, $11
    db $ff, $ff, $e0, $1f, $fe, $01, $89, $7f, $6c, $e4, $77, $ed, $e0, $3e, $e0, $fe
    db $ff, $5c, $a0, $fe, $af, $00, $fc, $00, $f8, $fe, $e0, $f0, $cd, $e0, $18, $f3
    db $00, $04, $80, $ea, $3d, $a4, $3f, $00, $87, $00, $fd, $c1, $ae, $e0, $c1, $00
    db $87, $01, $3f, $06, $ff, $ff, $38, $ff, $c4, $ff, $25, $ff, $3e, $0d, $e0, $20
    db $a0, $01, $fe, $c1, $c5, $f7, $d0, $8a, $fb, $88, $e3, $01, $86, $bd, $d6, $80
    db $e7, $50, $a1, $b3, $83, $6e, $c3, $68, $c1, $a3, $80, $ff, $76, $04, $ab, $20
    db $fd, $d9, $fe, $b6, $1b, $d7, $d3, $6a, $a0, $1a, $ff, $60, $c0, $72, $cc, $18
    db $ed, $f5, $ff, $1c, $e2, $80, $4d, $cf, $01, $00, $01, $01, $ff, $07, $01, $1f
    db $06, $39, $19, $26, $20, $ff, $2f, $20, $6f, $20, $df, $40, $df, $c0, $ff, $bf
    db $80, $bb, $80, $a7, $83, $bf, $9f, $bd, $ff, $8c, $83, $07, $ff, $1e, $7d, $8c
    db $81, $73, $ff, $0f, $f7, $1f, $ef, $1e, $ef, $1c, $ff, $ff, $18, $ff, $dd, $14
    db $7e, $3e, $ff, $f7, $ff, $fe, $dc, $f5, $74, $ff, $7b, $ff, $3e, $8f, $ff, $0f
    db $ff, $03, $d6, $c1, $72, $c8, $00, $85, $83, $be, $d9, $a4, $80, $00, $60, $00
    db $10, $8a, $e9, $03, $ff, $01, $06, $02, $3d, $04, $fd, $3c, $c5, $6f, $c4, $bb
    db $02, $7f, $fe, $e0, $bf, $82, $fe, $ea, $6f, $16, $ef, $a4, $f7, $8c, $91, $ef
    db $38, $fe, $e2, $ff, $fd, $6d, $ff, $ab, $ff, $ef, $ff, $ed, $ff, $ff, $ae, $fd
    db $ed, $ff, $6f, $7f, $6f, $3f, $ff, $fe, $ff, $3f, $ff, $07, $f8, $c1, $35, $a4
    db $ca, $80, $61, $f8, $f7, $a0, $c0, $0c, $f1, $de, $a1, $f3, $e0, $ff, $1f, $13
    db $ec, $0c, $fb, $08, $f7, $10, $7e, $fe, $f4, $00, $ff, $f0, $fb, $f8, $dd, $8c
    db $82, $ff, $7f, $38, $bc, $9b, $de, $dd, $de, $cf, $ff, $e6, $cf, $f2, $ed, $f3
    db $ef, $6b, $fb, $ff, $bf, $be, $be, $2a, $7f, $3f, $ff, $f7, $ff, $ff, $ff, $fe
    db $fe, $fd, $59, $7b, $79, $bf, $ef, $ef, $df, $cb, $fb, $f9, $ea, $61, $fe, $0f
    db $1e, $ff, $03, $3f, $e8, $80, $00, $00

    nop
    dec de
    nop
    rst $38
    cp $e9
    ld a, h
    add e
    ldh a, [$eb]
    cp $ff
    cp $ff

jr_00f_5a86:
    ld a, d
    ld a, [$fefa]
    add b
    and $83
    nop
    ld bc, $ff00
    pop hl
    cp $70
    pop hl
    ld hl, sp+$00
    ldh [rP1], a
    ret nz

    nop
    add b
    cp $f0
    pop hl
    cp $7d
    add a
    add d
    dec sp
    ld [bc], a
    ld a, a
    rst $18
    ld bc, $017f
    ld a, [hl]
    ld [bc], a
    cp $e2
    add c
    rst $38
    cpl
    ld a, [hl]
    add e
    add c
    ld a, l
    ldh a, [$e0]
    rst $38
    cp $e2
    ld b, b
    db $eb
    inc hl
    jr c, jr_00f_5a86

    adc h
    rst $38
    ld [hl], d
    ld a, [$e170]
    ldh a, [$82]
    ldh [$84], a
    ld [c], a
    ld a, $70
    ld [c], a
    add b
    nop
    ld h, b
    nop
    db $10
    ld a, [c]
    and $f7
    xor $ff
    ld a, [hl]
    ld [bc], a
    cp $82
    cp $42
    cp $42
    rst $38
    rst $38
    ld c, a
    ldh a, [$50]
    rst $20

jr_00f_5ae5:
    jr nz, @-$0f

    jr nz, jr_00f_5ae5

    ld l, d
    db $e3
    ld h, h
    ld [c], a
    add c
    rst $38
    ld b, c
    rst $38
    ld b, c
    cp $ff
    add hl, sp
    rst $08
    ld b, [hl]
    or l
    add l
    ld a, e
    add hl, bc
    ld [hl], a
    cp c
    ld de, $e3fe
    sub b
    jp z, Jump_000_000f

    inc bc
    add sp, -$2a
    db $fc
    sub d
    ld a, [$f8c0]
    ld [hl], h
    ldh [$f8], a
    pop hl
    add [hl]
    db $e4
    call nz, $ea79
    ld bc, $00ff
    ld bc, $0701
    ld bc, $0001
    inc bc
    rst $38
    ld bc, $0206
    dec a
    inc b
    db $fd
    inc a
    push bc
    rst $38
    call nz, $02bb
    ld a, a
    ld [bc], a
    ldh [rP1], a
    di
    rst $38
    ldh [$1f], a
    inc de
    db $ec
    inc c
    ei
    ld [$85f7], sp
    db $10
    cp $e1
    rst $28
    ld l, h
    ldh [$fc], a
    jp hl


    ld l, h
    pop hl
    db $fc
    jp hl


    ld l, a
    ld [hl], c
    ld hl, $ebfe
    ld d, $ec
    ld [c], a
    and c
    ld a, [hl]
    nop
    inc a
    ldh a, [$e8]
    sbc a
    ldh [rP1], a
    jr jr_00f_5b5a

jr_00f_5b5a:
    inc b
    ldh [$e8], a
    ret nc

    db $ec
    rra
    rst $38
    ld b, $39
    add hl, de
    ld h, $20
    cpl
    jr nz, jr_00f_5bd8

    rst $38
    jr nz, @-$1f

    ld b, b
    rst $18
    ret nz

    cp a
    add b
    ld a, a
    add a
    ld [bc], a
    cp a
    add d
    cp $e9
    ld l, d
    db $e3
    ld a, [$60e7]
    ldh [rNR42], a
    rst $38
    xor $22
    ei
    ccf
    rst $38
    ld l, a
    ld e, a
    rst $38
    rst $38
    ld hl, sp-$07
    db $e3
    rst $20
    rst $38
    pop af
    ld c, e
    db $db
    rst $38
    cp $fe
    cp a
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $38
    ld b, a
    ld a, a
    and h
    cp a
    ld l, a
    ld [hl+], a
    ld a, l
    scf
    rst $38
    ld l, d
    xor a
    xor l
    db $fd
    db $fd
    ld a, l
    ei
    rst $38
    cp a
    rst $38
    cp $0f
    rra
    rst $38
    add b
    cp $e1
    ld a, a
    rst $38
    ret nz

    ret nz

    rst $38
    ld b, b
    ld a, b
    ret nz

    rst $20
    nop
    db $fd
    rst $08
    ld b, c
    and b
    jr nc, @-$0f

    jr z, @+$01

    jr nc, jr_00f_5be9

    rst $10
    rst $38
    jr nz, jr_00f_5bed

    db $fc
    ldh [rIE], a
    ld sp, $3fa5
    ret nz

    ccf
    rlca
    jr c, jr_00f_5bd9

jr_00f_5bd8:
    add [hl]

jr_00f_5bd9:
    nop
    pop bc
    ld hl, $d0a6
    and c
    cp $13
    and b
    cp b
    add e
    and e
    add a
    sbc a
    cp a
    cp a

jr_00f_5be9:
    rst $38
    ld a, a
    ld a, b
    db $fd

jr_00f_5bed:
    di
    di
    rst $20
    rrca
    ld e, [hl]
    rst $38
    cp a
    scf
    sbc [hl]
    and l
    xor $d6
    rst $30
    db $fd
    rst $28
    rst $38
    ld a, a
    rst $38
    cp [hl]
    adc h
    ldh [$3c], a
    rst $38
    rst $30
    rst $38
    db $10
    rlca
    ldh a, [$f7]
    ld hl, sp-$05
    ld hl, sp+$09
    rst $38
    call c, $efe6
    rst $30
    rst $30
    ld a, [hl-]
    ld a, l
    sbc a
    ei
    cp a
    ccf
    call nc, $efe3
    sbc $ff
    cp h
    db $fd
    xor a
    ld a, c
    ei
    sub $df
    call nc, $dbe7
    ld e, d
    ldh [$f4], a
    rst $28
    rst $30
    ld hl, sp-$04
    ld [$e2d4], sp
    jr c, jr_00f_5cb1

    sbc b
    ld e, a
    cp h
    call c, Call_000_00de
    rra
    ld a, [hl+]
    ret nz

    rlca
    ld [hl], $a2
    rst $18
    inc bc
    ld bc, $030f
    ld a, $a0
    add h

jr_00f_5c49:
    nop
    nop
    ld a, a
    rrca
    rrca
    rst $38
    rst $38
    ld a, [c]
    rst $38
    ld de, $a026
    rst $38
    pop bc
    ld bc, $0787
    ld a, $3f
    ld hl, sp-$01
    ccf
    call nz, $25ff
    rst $38
    ld a, $7f
    jr nc, jr_00f_5c49

    ld a, [hl+]
    db $e4
    rst $38
    add b
    rst $38
    nop
    ld a, l
    cp h
    ei
    ld a, c
    rst $20
    rst $38
    ld [hl], e
    rrca
    rst $30
    rra
    rst $28
    ld e, $ef
    inc e
    rst $30
    rst $38
    jr @+$01

    sbc e
    ld [c], a
    rst $38
    rst $38
    rst $28
    cp c
    ei
    rst $28

jr_00f_5c87:
    jr c, jr_00f_5c87

    ld [c], a
    cp h
    sbc e
    sbc $dd
    sbc $ff
    rst $08
    and $cf
    ld a, [c]
    db $ed
    di
    rst $28
    ld l, e
    rst $38
    ei
    cp a
    cp [hl]
    rst $20
    ld h, e
    rrca
    rlca
    sbc a
    rst $38
    rrca
    sbc $8e
    db $fc
    call c, $e8f8
    db $fc
    rst $30
    ldh a, [$fe]
    ld a, h
    push de
    ldh [rIE], a

jr_00f_5cb1:
    cp c

jr_00f_5cb2:
    xor c
    jr c, jr_00f_5cb2

jr_00f_5cb5:
    jr z, jr_00f_5cb5

    push hl
    sbc $ce
    xor $c2
    ldh a, [$e0]
    cp a
    ldh a, [$e0]
    ld h, b
    ld h, b
    jr nz, jr_00f_5ce5

    and b
    add c
    rra
    db $fc
    ld h, e
    ldh [$b3], a
    xor c
    rst $38
    rst $38
    ldh [$1f], a
    cp $01
    ld e, l
    ld a, a
    ld c, l
    db $e4
    nop
    nop
    ldh [$d5], a
    pop bc
    cp $61
    and l
    rst $38
    nop
    nop
    db $76
    inc b
    xor e

jr_00f_5ce5:
    jr nz, @+$7f

    ld e, c
    rst $28
    cp $b6
    rst $10
    db $d3
    db $dd
    ret nz

    ld a, [de]
    rst $38
    nop
    rst $38
    db $dd
    inc d
    ld a, [hl]
    ld a, $ff
    rst $30
    cp $dc
    rst $38
    push af
    ld [hl], h
    rst $38
    ld a, e
    rst $38
    ld a, $ff
    rrca
    rst $38
    ld l, l
    db $fd
    cp e
    rst $28
    rst $38
    rst $28
    db $fd
    rst $28
    rst $38
    cp [hl]
    rst $28
    db $fd
    db $ed
    ld l, a
    rst $38
    ld l, a
    ld a, a
    cp a
    cp [hl]
    ld a, [hl+]
    ld a, a
    ccf
    rst $38
    rst $30
    ld d, l
    ret nz

    cp $ff
    db $fd
    ld e, c
    ld a, e
    ld a, c
    rst $28
    rst $28
    or a
    or [hl]
    rst $38
    rst $38
    rst $18
    ei
    or e
    rst $18
    sbc $ff
    rst $38
    rst $38
    sbc $de
    rst $38
    cp a

jr_00f_5d37:
    rst $30
    rst $30
    cp b
    jr z, jr_00f_5d37

    ld hl, sp-$58
    ld d, [hl]
    ldh [$e8], a
    cp a
    xor h
    rst $38
    cp a
    rst $28
    ei
    ei
    rst $38
    cp a
    sbc c
    add a
    ldh a, [$80]
    rst $38
    sub a
    ldh a, [rIE]
    ld a, a
    sub [hl]
    adc e
    ldh a, [$87]
    sub a
    ld e, a
    add h
    rra
    add $e5
    adc h
    rst $38
    inc bc
    inc b
    ret nz

    ld [hl-], a
    and $b1
    ld h, b
    cp $ff
    xor a
    ccf
    rst $38
    rlca
    rst $38
    ld l, c
    ret nz

    inc bc
    and c
    ld h, d
    rst $18
    rst $30
    set 7, e
    ld sp, hl
    xor [hl]
    pop bc
    cp $1e
    rst $38
    inc bc
    ld bc, $a23f
    ldh [rP1], a
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
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
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0f
    rrca
    rrca
    rrca
    dec c
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    dec c
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    db $fc
    ld a, a
    adc [hl]
    ld bc, $7dc0
    ret nz

    nop
    adc e
    inc bc
    adc [hl]
    ld bc, $0240
    ret nz

    nop
    adc e
    inc bc
    nop
    ld a, a
    ld b, b
    ld [bc], a
    ret nz

    nop
    adc e
    inc bc
    ld b, b
    ld [bc], a
    ret nz

    ld a, l
    ret nz

    nop
    sbc l
    rst $38
    rst $38
    ldh [$fe], a
    rst $38
    cp $ff
    db $e3
    di
    pop hl
    rst $38
    rst $38
    sbc a
    ccf
    ld c, l
    ld e, $fc
    ld c, c
    db $db
    add c
    ccf
    ld c, c
    db $eb
    ld a, l
    dec hl
    ld [bc], a
    add c
    db $ed
    ld [c], a
    ei
    ld [$c7ff], a
    jp $c1eb


    db $ed
    jp hl


    db $ed
    db $ed
    rst $38
    db $ed
    jp hl


    db $eb
    pop bc
    rst $00
    jp $1cb9


    rst $38
    cp d
    cp h
    add b
    add b
    cp [hl]
    cp h
    sbc [hl]
    cp h
    rst $38
    reti


    sbc h
    add b
    pop bc
    reti


    db $dd
    rst $38
    rst $38
    rst $38
    rst $30
    db $e3
    db $eb
    pop bc
    db $dd
    ret


    rst $18
    rst $18
    cp a
    db $dd
    ret


    db $eb
    pop bc
    rst $30
    db $e3
    ret nz

    db $ed
    db $e3
    rst $38
    pop bc
    db $eb
    db $eb
    pop bc
    db $e3
    reti


    db $dd
    pop bc
    db $76
    call z, $80e0
    nop
    and d
    db $ec
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    ei
    rst $38

jr_00f_5e6c:
    nop
    cp $eb
    rlca
    nop
    ld a, e
    nop
    ld a, l
    rst $38
    nop
    ld a, [hl]
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    cp $e4
    ldh [$f0], a
    rrca
    ldh [$1f], a
    ret nz

    ccf
    add b
    db $fc
    push af
    pop hl
    push de
    db $e4
    call z, Call_000_3333
    call z, $ff00
    rst $18
    ld h, b
    rst $38
    or $ff
    rst $38
    jp $ffe0


    nop
    ei
    cp $01
    cp $e1
    rst $38
    nop

jr_00f_5ea3:
    rst $18
    jr nz, jr_00f_5ea3

    rst $38
    ld [bc], a
    rst $38
    nop
    rst $10
    jr c, jr_00f_5e6c

    ld l, b
    ei
    rst $38
    ld c, h
    rst $28
    ld e, h
    db $dd
    ld a, [hl]
    cp c
    ld a, [hl]
    jp Jump_000_3cfd


    and d
    push hl
    rst $18

jr_00f_5ebd:
    jr nz, jr_00f_5ebd

    ld bc, $04fb
    cp $94
    ld [c], a
    ld a, $ff
    ld a, a
    jp $81e7


    jp $81ff


    adc a
    inc bc
    sbc a
    rlca
    rra
    rlca
    rra
    db $fc
    add b
    db $ed
    ld [hl], b
    db $e3
    ld hl, sp+$00
    ld [hl], b
    nop
    and b
    nop
    cp a
    pop bc
    nop
    db $e3
    nop
    rrca
    ldh a, [$fe]
    db $e3
    ld c, $ff
    pop af
    inc c
    di
    ld [$10f7], sp

jr_00f_5ef1:
    rst $28
    jr nz, jr_00f_5ef1

    rst $18
    add b
    jp hl


    ret nz

    ld a, a
    cp a
    ld h, b
    cp a
    ld h, b
    rst $28
    ld a, a
    ldh [$9f], a
    ldh [$a2], a

Call_00f_5f03:
    db $e4
    nop
    rst $38
    inc a
    rst $38
    rst $08
    ld l, [hl]
    add a
    rst $08
    add a
    sbc a
    adc a
    sbc a
    xor a
    add a
    sbc a
    add a
    rst $18
    ld a, [$bfe2]
    db $f4
    ld [c], a
    sbc a
    db $eb
    adc a
    rst $18
    ld a, [$bfe2]
    add sp, -$1f
    rst $08
    rst $18
    rst $00
    rst $08
    rst $38
    rst $20
    rst $38
    rst $28
    db $fc
    ldh [$80], a
    di
    ld a, a
    nop
    rst $38
    cp a
    nop
    rst $18
    nop
    rst $28
    nop
    rst $30
    nop
    ld d, a
    pop af
    nop
    ldh [$78], a
    ldh [$83], a
    add sp, -$40
    rrca
    db $ec
    ret nz

    call c, $c3d2
    nop
    push hl
    db $fd
    rst $38
    ld [bc], a
    ret nz

    ld [c], a
    pop bc
    nop
    rst $30
    add b
    nop
    nop
    db $fc
    ldh [$e0], a
    nop
    ldh a, [rP1]
    push de
    db $fc
    or b
    jp nz, $f8fe

    ldh [$f8], a
    db $f4
    db $e3
    inc e
    rst $20
    rst $38
    ld [hl], $c3
    ld h, a
    jp $c74f


    ld c, a
    jp Jump_00f_6fbd


    ld a, [$cfec]
    jp $8bdf


    add b
    add sp, -$40
    ld a, [$e0ba]
    ret nz

    ld [hl], d
    ld hl, sp-$20
    nop
    rst $00
    nop
    adc a
    ld d, h
    add b
    ld [$c380], a
    ldh a, [$88]
    ld [c], a
    ccf
    ld b, [hl]
    ret nz

    inc bc
    cp $e0
    add l
    ccf

jr_00f_5f97:
    ld a, [hl]
    ldh [$c0], a
    ld [hl], d
    ldh [$fd], a
    push hl
    xor h
    pop hl
    cp $e3
    add b
    inc b
    ld e, d
    ld [c], a
    push hl
    db $e3
    ld a, a
    ld c, [hl]
    ldh [rNR34], a
    db $e3
    inc c
    jp hl


    ld c, $c3
    xor $a5
    ld a, [$e33c]
    ldh a, [$fe]
    db $e4
    pop af
    nop
    ld h, e
    nop
    add a
    adc e
    nop
    rst $08
    inc h
    pop hl
    ld bc, $c900
    sub h
    push hl
    ld b, [hl]
    pop hl
    ld hl, sp-$78
    call nc, $ffc0
    rst $38
    ld h, e
    pop hl
    rst $38
    db $fc
    ld [c], a
    inc b
    db $d3
    call nz, Call_000_00c3
    jp c, $c2c0

    cp $62
    xor d
    add c
    ld a, [hl]
    add b
    and e
    scf
    adc $f7
    dec b
    rst $38
    ld h, l
    add b
    and d
    inc b
    rst $38
    rlca
    nop
    ld d, l
    inc b
    ld [de], a
    ld [c], a
    inc bc
    jr c, jr_00f_5f97

    rra
    db $fc
    jp nz, $fe07

    db $e4
    and c
    inc bc
    add b
    rst $38
    add h
    or b
    nop
    cp a
    nop
    xor l
    rrca
    db $e4
    and d

jr_00f_600a:
    rst $38
    ldh [rTMA], a
    ret nz

    and b
    jp $a1f8


    cp b
    and a
    ld [c], a
    pop hl
    inc bc
    nop
    ld bc, $fec8
    and $00
    db $ed
    sbc [hl]
    jp Jump_000_00f8


    cp a
    nop
    or b
    rst $28
    rst $38
    sub l
    db $10
    ld b, b
    and h
    ldh [rNR50], a
    add $03
    ld e, b
    and b
    ld a, [hl-]
    ret


    push af
    rst $38
    ld c, $da
    ccf
    xor l
    ld [hl], e

jr_00f_603a:
    rst $08
    ld a, a
    cp $17
    ld a, a
    ret nz

    ccf
    jr jr_00f_600a

    rst $08
    call nc, $56a0
    and e
    ld l, [hl]
    db $e3
    add hl, sp
    ld bc, $bf00
    nop
    or b
    cp a
    rst $38
    ld b, b
    ret nz

    add h
    jr jr_00f_603a

    cp $f8
    jp Jump_000_00ff


    ld d, a
    cp b
    db $eb
    inc a
    or l
    rst $38
    ld l, [hl]
    db $d3
    ld l, [hl]
    ld h, e
    sbc $be

jr_00f_6068:
    rst $18
    rst $18
    rst $38
    cp a
    cp a
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    dec h
    db $dd
    sbc $e2
    ld h, b
    jr nz, jr_00f_6068

    db $10
    sub b
    ret


    rra
    nop
    pop af
    pop hl
    ld a, [$00b6]
    cp a
    add b
    ld h, h
    ld a, [de]
    rst $20
    and h
    db $d3
    rst $38
    ld d, d
    jp $cb43


    xor $c3
    ld a, [hl]
    rst $38
    ld [hl], a
    inc a
    rst $20
    inc h
    db $f4
    ldh [$c3], a
    bit 5, [hl]
    db $f4
    ldh [rIE], a
    cp h
    di
    ld [de], a
    jp hl


    add hl, hl

Call_00f_60a4:
    pop hl
    ld hl, $dfe5
    scf
    pop hl
    ld a, a
    rst $38
    ld e, $e8
    ld [c], a
    jp nz, $ffcb

    ld l, a
    jp $bd7e


    ld a, [hl]
    ret nz

    ccf
    ld [hl], b
    rra
    rst $38
    ret z

    cp a
    ld a, b
    rst $38
    ldh a, [$c3]
    nop
    nop
    nop
    ld [hl], e
    rst $38
    nop
    cp $ff
    db $f4
    di
    ret nz

    nop
    add b
    db $fc
    ldh [$ce], a
    ret c

    rst $20
    ld a, a
    nop
    ccf
    db $fc
    ldh [$c8], a
    db $fd
    ld hl, sp+$00
    or l
    ldh a, [$fe]
    ldh [$f8], a
    and b
    and $01
    nop
    rst $38
    pop hl
    ld bc, $90fe
    or $07
    ld hl, sp+$7b
    db $fc
    ld a, l
    cp $7e
    ld a, a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    ldh [$fe], a
    cp d
    db $e3
    rlca
    ld [hl], b
    adc a
    and b
    rst $18
    pop bc
    rst $38
    db $fd
    db $e3
    ldh a, [$e4]
    ld a, a
    add b
    cp a
    ret nz

    rst $18
    ldh [$ef], a
    rst $28
    ldh a, [$f7]
    ld hl, sp+$48
    rst $30
    cp $01
    db $fc
    rst $30
    inc bc
    ld hl, sp+$07
    ld hl, sp-$1b
    nop
    rst $38
    ld hl, sp-$01
    rst $08
    db $fc
    rst $38
    cp $ff
    and b
    rst $38
    and b
    ei
    ldh a, [rIF]
    rst $18
    ldh [$1f], a
    ret nz

    ccf
    add b
    rlca
    and $0f
    ldh a, [$fe]
    cp $e3
    ld c, $f1
    inc c
    di
    ld [$10f7], sp
    rst $38
    rst $28
    pop af
    cp $e0
    rst $38
    pop bc
    rst $38
    add e
    adc a
    rst $38
    rlca

jr_00f_6150:
    rst $38
    rrca
    sbc h
    ldh [$a0], a
    db $e3
    ld d, d
    db $e3
    ldh [$df], a
    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    pop de
    db $e4
    rrca
    pop af
    ccf
    rrca
    ld h, e
    sbc a
    add a

jr_00f_6168:
    rst $38
    rst $08
    add b
    db $e4
    add d
    jp $81c7


    ld a, [hl]
    nop
    ldh [$e0], a
    and b
    rst $38
    and b
    ld sp, hl
    nop
    rst $38
    rst $38
    call z, Call_000_3333
    call z, $ff00
    ld h, b
    rst $38
    ld l, l
    or $23
    ld [c], a
    jr nz, jr_00f_6168

    ldh a, [$e9]
    ret nz

    ld a, a
    jr jr_00f_6150

    ld c, $e0
    push hl
    db $fd
    rst $38
    ld [bc], a
    nop
    ld [c], a
    ret nc

    jp hl


    ret z

    pop bc
    ret nz

    jp hl


    ld a, [hl]
    or b
    pop hl
    scf
    adc $05
    db $fd
    ld h, l
    db $fd
    or b
    pop hl
    db $dd
    inc b
    and b
    ld_long a, $ffef
    db $10
    or b
    ld_long $ffbf, a
    ld sp, hl
    ld b, b
    and b
    ld a, [c]
    cp $e1
    rst $38
    nop

jr_00f_61bb:
    rst $18
    jr nz, jr_00f_61bb

    rst $38
    ld [bc], a
    rst $38
    nop
    cp a
    ld h, b
    cp a
    ld h, b
    ld a, a
    adc a
    ldh [$9f], a
    ldh [$fb], a
    and l
    pop hl
    ld a, d
    and c
    ld l, h
    ret nz

    and d
    rst $38
    pop bc
    ld b, c
    add b
    add b
    nop
    ld b, b
    add b
    ret nc

    rst $38
    ldh [$e8], a
    ldh a, [$fe]
    rst $38
    rst $28
    ldh a, [$df]
    rst $38
    ldh [$6f], a
    ldh a, [$5e]
    ccf
    dec bc
    rlca
    ld bc, $039f
    dec b
    inc bc
    ccf
    ret nz

    ld d, [hl]
    and e
    ld hl, sp-$20
    rst $38
    cp a
    rst $30
    ld hl, sp-$21
    ldh [$fc], a
    rlca
    ld l, e
    ld [c], a
    nop
    rst $38
    db $fc
    inc bc
    rst $38
    rst $38
    rst $20
    rra

jr_00f_620a:
    ei
    rlca
    rst $38
    ld a, a
    rst $38
    rst $30
    rrca
    ei
    rlca
    rst $30
    rrca
    sbc a
    ld a, a
    rst $38
    ei
    db $fc
    ld b, b
    cp d
    ldh [rNR33], a
    pop bc
    rst $38
    sbc a
    rst $38
    ret nc

    ldh [rLCDC], a
    add b
    add a
    and d
    ldh a, [$e4]
    cp a
    rst $38
    ld a, a
    rla
    rrca
    dec bc
    rlca
    inc bc
    rlca
    rla
    rst $38
    rrca
    rst $38
    ld a, [de]
    rst $20
    and h
    db $d3
    ld d, d
    jp $43ff


    set 5, [hl]
    jp $ff7e


    inc a
    rst $20
    rst $38
    inc h
    rst $10
    jr c, jr_00f_620a

    ld l, b
    ei
    ld c, h
    rst $28
    ld a, a
    ld e, h
    db $dd
    ld a, [hl]
    cp c
    ld a, [hl]
    jp $ea3c


    add b
    rst $38
    inc a
    rst $08
    ld l, [hl]
    add a
    rst $08
    add a
    sbc a
    adc a
    rst $38
    sbc a
    add a
    sbc a
    add a
    rst $18
    adc a
    sbc a
    ei
    db $ed
    db $fc
    res 4, c
    db $fd
    cp $f8
    ldh [$f8], a

jr_00f_6274:
    ei
    db $fc
    ccf
    cp $fd
    ld c, [hl]
    ccf
    di
    db $fc
    ld l, h
    push hl
    cp h
    sub d
    rst $30
    inc bc
    ei
    rlca
    di
    and b
    rlca
    ei
    rlca
    db $fd
    pop af
    inc bc
    sbc h
    add c
    jr z, jr_00f_6274

    ld l, d
    db $e3
    ld a, a
    rst $38
    sbc a
    ld a, a
    rra
    dec b
    inc bc
    rla
    rrca
    cp a
    ld [hl], a
    and d
    db $fc
    db $e4
    db $76
    add b
    rst $38
    ld d, a
    cp b
    db $eb
    inc a
    or l
    ld l, [hl]
    db $d3
    ld l, [hl]
    rst $28
    ld h, e
    sbc $be
    rst $18
    ld h, h
    ldh [$c3], a
    bit 5, [hl]
    cp $64
    ldh [$bc], a
    di
    ld [de], a
    jp hl


    add hl, hl
    pop hl
    ld hl, $589e
    add e

Jump_00f_62c3:
    rst $18

jr_00f_62c4:
    jr nz, jr_00f_62c4

    ld bc, $c3ce
    ld l, d
    ldh [$bf], a
    xor $64
    ld [c], a
    sbc a
    adc a
    rst $18
    ld_long a, $ffe1
    inc e
    rst $20
    rst $38
    ld [hl], $c3
    ld h, a
    jp $c74f


    ld c, a
    jp Jump_00f_6fc9


    ld a, [$d6e1]
    add c
    rst $38
    cp $e0
    ld a, [$80e0]
    ld a, a
    pop de
    add b
    ld a, [de]
    sbc a
    jp nz, $56c1

    ldh [rSB], a
    cp $e3
    cp $01
    rst $38
    push af
    ld c, $da
    ccf
    xor l
    ld [hl], e
    rst $08
    ld a, a
    ld l, a
    cp $7f

jr_00f_6306:
    ret nz

    ccf
    add [hl]
    ld [c], a
    cp a
    cp a
    cp b
    add b
    rst $28
    add b
    rst $38
    dec h
    sbc $42
    ret nz

    jr nz, jr_00f_6306

    db $10
    rst $38
    push hl
    scf
    pop hl
    ld a, a
    rst $38
    ld e, $e7
    inc h
    xor $bc
    ret nz

    jp nz, Jump_00f_6fcb

    cp h
    ret nz

    ld a, $ff
    ld a, a
    rst $38
    jp $81e7


    jp $8f81


    inc bc
    sbc a
    cp a
    rlca
    rra
    rlca
    rra
    adc a
    cp a
    ret z

    pop bc
    rst $08
    ld l, a
    rst $18
    rst $00
    rst $38
    rst $20
    ldh [$a0], a
    rst $20
    rst $38
    ld l, d
    db $e3
    sbc $64
    ld [c], a
    rst $08
    jp $8bdf


    add b
    add h
    add b
    ld a, a
    rst $38
    ld a, a
    add b
    ret nz

    cp a
    and b
    rst $18
    ret nc

    rst $28
    ldh [$5e], a
    db $e3
    ld a, b
    and c
    pop af
    and h
    ldh a, [$fd]
    inc [hl]
    ret nz

    rst $18
    ccf
    scf
    sbc a
    rst $08
    db $fd
    inc bc
    inc bc
    db $fc
    pop bc
    and h
    or e
    call nz, $fe3f
    ldh a, [$a0]
    ld e, $e1
    cp l
    ld a, [hl]
    ret nz

    ccf
    ld [hl], b
    rra
    rst $38
    ret z

    cp a
    ld a, b
    rst $38
    ld b, b
    db $e3
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
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
    dec c
    dec c
    inc c
    inc c
    inc c
    dec c
    dec c
    dec c
    inc c
    inc c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c

jr_00f_63b9:
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0f
    dec c
    rrca
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec c
    rrca
    dec c
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    rrca
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec c
    rst $38
    ld c, e
    sbc a
    ld bc, $02df
    sub b
    ld bc, $009f
    sub b
    ld bc, $18ca
    nop
    nop
    sbc h
    ld a, a
    sub h
    inc bc
    call nc, $9002
    ld bc, $035a
    sub b
    ld bc, $01c4
    nop
    jr @-$03

    rst $38
    nop
    cp $f6
    db $10
    rst $10
    jr c, jr_00f_63b9

    ld a, h
    db $fc
    ldh [$ed], a
    rst $38
    pop hl
    ld bc, $0100
    ld bc, $0301
    rst $38
    ld b, $03
    inc b
    rlca
    inc b
    rrca
    ld b, h
    ld a, h
    rst $38
    ld b, h
    cp $83
    cp $01
    rst $38
    rst $38
    rst $38
    ccf
    add d
    rst $00
    ld b, h
    rst $00
    ld b, h
    rst $28
    rst $18
    ld [c], a
    jp c, $ffe1

    add b
    ret nz

    add b
    ld b, b
    ret nz

    ld b, b
    ldh [$e8], a
    rst $18
    rra
    ldh a, [$1f]
    rst $38
    rra
    sbc d
    rst $20
    jr z, @+$01

    ld sp, hl
    db $10
    call nc, $8ae0
    rst $20
    cpl
    ldh a, [$1f]
    ldh a, [rIE]
    ld bc, $a0f0
    rst $20
    nop
    nop
    nop

    db $7d, $00, $ff, $e0, $01, $00, $03, $00, $0f, $fe, $e0, $df, $1f, $00, $3f, $00
    db $ff, $fe, $e0, $7e, $81, $93, $3c, $c3, $f7, $e2, $fc, $e6, $01, $fe, $e1, $ff
    db $e1, $ff, $ff, $ff, $ff, $60, $81, $01, $00, $60, $80, $cf, $0f, $f0, $60, $80
    db $c4, $e1, $fc, $e9, $80, $00, $fb, $18, $e0, $c8, $e9, $80, $ff, $7c, $ff, $df
    db $ff, $3f, $ef, $f0, $f7, $0f, $f9, $fe, $7b, $cf, $8c, $ec, $1f, $1f, $c2, $e0
    db $a8, $e5, $3f, $c0, $dc, $9f, $e3, $c8, $e3, $c0, $00, $f0, $fe, $e0, $f8, $00
    db $fd, $fc, $80, $f4, $80, $ff, $40, $7f, $c2, $c2, $67, $05, $07, $05, $be, $e1
    db $89, $e2, $fe, $01, $82, $ed, $de, $72, $e3, $c0, $00, $07, $f8, $44, $e9, $f0
    db $ff, $ff, $9f, $7f, $e7, $f8, $ee, $31, $b1, $7f, $8f, $7e, $ff, $fd, $fe, $80
    db $e5, $23, $e7, $00, $e9, $17, $e7, $08, $23, $1c, $08, $eb, $fa, $c9, $40, $40
    db $a0, $fb, $e0, $a0, $00, $e0, $0c, $03, $01, $00, $0c, $ff, $03, $00, $ff, $60
    db $1f, $18, $07, $03, $fa, $7b, $f2, $1c, $fa, $cc, $ce, $ff, $b5, $fb, $7b, $df
    db $80, $de, $00, $4a, $fc, $00, $e5, $f0, $0f, $f6, $80, $e9, $81, $00, $91, $c3
    db $e7, $18, $c3, $3c, $b8, $80, $f7, $92, $c2, $be, $c2, $63, $80, $80, $94, $c0
    db $20, $95, $c0, $53, $c1, $07, $f9, $d2, $38, $e4, $e2, $3c, $c7, $ec, $ff, $ff
    db $db, $3f, $7e, $01, $77, $00, $7a, $fe, $7e, $e0, $e7, $ff, $c3, $ff, $c0, $ff
    db $60, $e2, $fe, $e0, $e1, $f6, $e0, $80, $df, $fe, $a5, $02, $03, $02, $fb, $03
    db $04, $00, $c0, $03, $fe, $07, $ff, $20, $9f, $1f, $10, $0f, $20, $1f, $dc, $a3
    db $7e, $f3, $1e, $fe, $f6, $aa, $00, $ff, $cc, $ff, $b3, $7f, $b9, $ff, $00, $f9
    db $00, $cd, $e3, $eb, $f7, $3e, $cb, $ff, $1c, $a2, $a2, $c1, $32, $c4, $80, $df
    db $00, $ff, $7f, $10, $ff, $a8, $b8, $a8, $b8, $44, $80, $a0, $ff, $b8, $ef, $f0
    db $ff, $38, $ff, $46, $ff, $5f, $b9, $ff, $fe, $ff, $7f, $9a, $a1, $7f, $f6, $b3
    db $dd, $03, $b3, $a3, $ff, $01, $fe, $34, $a3, $30, $ff, $ff, $cf, $ff, $7b, $fc
    db $fc, $ff, $87, $ff, $cd, $03, $24, $a2, $78, $ff, $71, $c0, $00, $e6, $c0, $00
    db $d9, $e0, $00, $fa, $55, $a1, $19, $1b, $40, $a5, $0c, $ff, $a7, $73, $ff, $8c
    db $82, $e0, $30, $a3, $3e, $74, $b2, $e0, $d8, $52, $c0, $fc, $80, $9f, $80, $40
    db $80, $74, $e3, $d9, $ff, $ff, $b6, $7f, $ee, $f0, $fa, $fc, $1c, $ff, $f5, $07
    db $7c, $e2, $f0, $3e, $e0, $0e, $07, $9e, $0f, $9f, $fe, $3f, $fc, $7f, $e0, $6c
    db $c0, $fe, $e5, $e0, $ba, $64, $e0, $3c, $9c, $e0, $0e, $ff, $06, $d6, $e2, $01
    db $ce, $6b, $80, $28, $ff, $7d, $84, $80, $c0, $85, $0e, $ff, $9f, $91, $ff, $6e
    db $ff, $9f, $b0, $87, $f3, $92, $1f, $ea, $72, $80, $38, $df, $a2, $c0, $74, $e3
    db $ff, $71, $ff, $ff, $af, $1f, $f3, $00, $d2, $e0, $ee, $f0, $e7, $3e, $ff, $1f
    db $f8, $c4, $16, $8b, $0e, $f1, $01, $ff, $fa, $31, $c4, $01, $ea, $44, $93, $44
    db $57, $ab, $30, $cf, $f1, $61, $c0, $bc, $80, $78, $4e, $c0, $fd, $be, $80, $e8
    db $00, $ff, $98, $ff, $67, $ff, $e1, $99, $80, $fc, $df, $60, $c4, $61, $f2, $c8
    db $c0, $ff, $3e, $ff, $ff, $cd, $03, $cb, $00, $b2, $79, $fd, $fa, $72, $c0, $81
    db $93, $60, $22, $c9, $22, $d5, $0c, $f9, $f3, $0a, $b8, $9c, $a3, $ff, $0f, $ff
    db $1d, $ff, $bf, $fa, $fd, $f6, $f9, $fa, $c1, $fe, $e1, $e2, $bb, $c1, $e6, $fe
    db $e2, $e2, $c1, $f2, $fe, $e0, $f6, $0e, $f0, $e0, $e2, $c1, $ee, $fe, $e2, $f6
    db $e1, $e4, $e1, $e8, $e1, $25, $f2, $d8, $e2, $f6, $d8, $e2, $d6, $e1, $f6, $d6
    db $e4, $d4, $e9, $00, $00, $00

    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    sbc $f0
    pop hl
    ld a, a
    add b
    ccf
    ret nz

    pop af
    ldh [$f0], a
    rlca
    ld [hl], a
    ld hl, sp+$03
    db $fc
    ldh [$e9], a
    add sp, $1f
    call c, $e2e0
    rst $28
    ld a, [hl]
    add c
    inc a
    jp $e0c9


    rst $38
    jr @+$01

    di
    inc a
    rst $38
    ret nc

    rst $38
    ldh [$e3], a
    ccf
    ret nz

    rra
    ldh [$de], a
    or b
    pop hl
    ldh [rIE], a
    ldh [$7f], a
    cp $e0
    rst $38
    ret nz

    ld hl, sp-$02
    db $e4
    cp b
    pop hl
    db $fc
    jp hl


    ld [hl+], a
    ret


    ld [hl+], a
    push de
    inc c
    dec a

jr_00f_6737:
    di
    ld [$81eb], a
    rst $38
    jp $ffff


    push hl
    ldh a, [$ed]
    ldh a, [$fe]
    db $fd
    ret nc

    db $fd
    and b
    db $ed
    ld l, b
    pop hl
    ldh [rIE], a
    ld hl, sp+$7f
    rst $38
    db $fc
    ccf
    db $fc
    rrca
    cp $0f
    cp $07
    rst $38
    ld c, $f1
    ld bc, $31fa
    call nz, $ea01
    cp a
    ld b, h
    sub e
    ld b, h
    xor e
    jr nc, jr_00f_6737

    ld d, d
    db $ed
    nop
    ld a, $9f
    db $e3
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld [c], a
    ldh a, [$e5]
    rst $38
    add b
    ld a, a
    ld b, b
    jp nz, Jump_000_05c2

    rlca
    dec b
    ld a, h
    ldh [$e5], a
    sbc d
    ret nz

    ld b, b
    ld b, b
    and b
    ldh [$a0], a
    ldh a, [$e8]
    db $fc
    rst $38
    ld [c], a
    ldh [$e7], a
    ld bc, $0302
    ld [bc], a
    inc bc
    inc b

jr_00f_6797:
    ld a, [hl]
    ret nc

    rst $20
    db $10
    xor b
    cp b
    xor b
    cp b
    ld b, h
    ret nc

    ld [$19bb], a
    dec de
    add hl, hl
    ldh [rTAC], a
    rst $38
    inc bc
    sub d
    ldh [rP1], a
    ld [hl], a
    rst $38
    jr z, jr_00f_682e

    jr nz, jr_00f_6797

    ret nz

    rst $38
    ldh a, [$50]
    pop hl
    db $eb
    rra

jr_00f_67ba:
    cp [hl]
    db $10
    and $00
    db $db
    ldh [rIF], a
    rst $38
    dec e
    rst $38
    rst $38
    ld a, [$f6fd]
    ld sp, hl
    rst $38
    rst $38
    ld h, b
    rst $38
    add c
    ld bc, $6000
    add b
    rrca
    ldh a, [$60]
    reti


    add b
    adc a
    db $e4
    add [hl]
    ld [c], a
    cp $01
    ld a, a

jr_00f_67de:
    push hl
    inc c
    inc bc
    rst $38
    ld bc, $0c00
    inc bc
    nop
    rst $38
    ld h, b
    rra
    di
    jr jr_00f_67f4

    ld sp, hl
    ldh [$ef], a
    and b
    ld h, e
    add b
    add b

jr_00f_67f4:
    nop
    rst $28
    add b
    nop
    jr nz, jr_00f_67ba

    jr nz, jr_00f_67de

    rst $38
    inc bc
    cp $ff
    inc bc
    rst $38
    jr nz, @+$21

    db $10
    rrca
    jr nz, jr_00f_6827

    cp $f0
    db $e3
    cp b
    rst $28
    ldh a, [rIE]
    jr c, @+$01

    ld b, [hl]
    cp a
    rst $38
    cp c
    rst $38
    cp $ff
    ld a, a
    ld b, b
    call nz, $cf0c
    rst $38
    ld [hl], e
    rst $38
    adc h
    ld a, [c]
    ldh [$f1], a
    push bc
    ld c, $ff

jr_00f_6827:
    rst $18
    sub c
    rst $38
    ld l, [hl]
    rst $38
    sbc a
    ld [hl], b

jr_00f_682e:
    and $00
    rst $38
    rst $18
    sbc b
    rst $38
    ld h, a
    rst $38
    sbc c
    ld l, d
    ret nz

    ld a, [$6ec1]
    cp $e1
    ld [c], a
    pop bc
    and $fe
    ld [c], a
    ld [c], a
    pop bc
    ld sp, hl

jr_00f_6846:
    jp $f39e


    jp Jump_000_0080


    jr jr_00f_682e

    ldh a, [$e9]
    db $f4
    pop af

jr_00f_6852:
    rlca
    ld [c], a
    rst $18
    db $ed
    rst $38
    xor $ec
    add l
    ret nz

    ldh [$eb], a
    nop
    rst $38
    ld a, $f0
    inc d
    db $e4
    ldh a, [$e5]
    add e
    push bc
    ldh a, [$f1]
    ld a, [c]
    pop bc
    ld a, [c]
    pop bc
    sbc l
    or $60
    ldh [$e2], a
    pop bc
    xor $fe
    ld [c], a
    ld h, b
    xor c
    add b
    ld a, a
    rst $38
    ld a, h
    rst $38
    ret nz

    nop
    rlca
    ld hl, sp+$4c
    xor d
    db $76
    jr c, jr_00f_6846

    inc e
    ldh [$f0], a
    db $eb
    nop
    nop
    jr c, jr_00f_6852

    jp nz, $9632

    jp hl


    ld e, $dc
    push hl
    rrca
    and $03
    db $fc
    db $76
    db $eb
    dec b
    ldh [$66], a
    ld h, [hl]
    db $eb
    nop
    rra
    xor b
    pop hl
    ldh [$ca], a
    nop
    rst $38
    ld h, [hl]
    pop hl
    db $f4
    call nz, $58c1
    pop hl
    ld a, [c]
    cp b
    ret nz

    rst $18
    ccf
    rst $28
    ldh a, [rIE]
    rst $30
    rrca
    ld sp, hl
    cp $7b
    adc h
    db $ec
    rra
    db $fd
    rra
    ld a, [bc]
    and b
    ldh a, [rIE]
    sbc a
    ld a, a
    rst $20
    ld hl, sp-$01
    xor $31
    or c
    ld a, a
    ld a, [hl]
    rst $38
    db $fd
    cp $fe
    ld h, c
    add c
    add b
    rst $38
    adc $ff
    or l
    ei
    ld a, e
    cp a
    add b
    sbc $00
    ld c, d
    db $fc
    cp $90
    add h
    db $ec
    rst $38
    rst $38
    db $db
    ccf
    ld a, [hl]
    ld bc, $0077
    ld a, d
    db $fc
    ld a, h
    db $e3
    ei
    ld h, b
    call z, $b3ff
    ld a, a
    cp c
    nop
    db $ed
    ld sp, hl
    ld l, [hl]
    and b
    ld bc, $6cfe
    add e
    jr nc, @+$01

    rst $08
    or a
    rst $38
    ld a, e
    db $fc
    res 4, c
    ld b, b
    add b
    ld d, h
    db $e3
    reti


    xor a
    rst $38
    or [hl]
    ld a, a
    jr c, jr_00f_6995

    jp nz, $a8c0

    jp nz, Jump_00f_7380

    rst $38
    ld [hl], c
    dec b
    and c
    ld b, d
    add sp, -$40
    rst $38
    and $c2
    ret nz

    ld [$c128], a
    ld [c], a
    cp b
    jp nz, $20f6

    ret nz

    ld bc, $3f01
    ld h, c
    ccf
    xor b
    add c
    ld d, $83
    ld e, e
    ld [c], a
    ld a, [bc]
    adc b
    db $fc
    db $fc
    ld d, l
    add c
    db $ed
    rrca
    or b
    add a
    rst $38
    rst $20
    ld [de], a
    add b
    ret nz

    rst $38
    ld h, b
    ld a, [$e0fe]
    pop hl
    ld [$cd80], sp
    db $e3
    db $eb
    rst $30
    ld a, $eb
    rst $38
    inc e
    ret c

    ld h, d
    pop bc
    ld a, [hl+]
    add b
    db $fc
    rst $38
    add a
    db $f4
    rst $38
    add b
    add d
    ld h, c
    ld a, b
    db $f4
    ldh [rIE], a
    rst $38
    xor $f0
    rst $10
    ld a, [$1cfc]
    db $eb
    add d
    nop
    ld hl, sp-$80
    cp $ff
    rst $38
    xor a
    rra
    di
    nop
    jp nc, $eee0

    ldh a, [$f7]
    ld a, $ff
    rra
    ret c

jr_00f_6987:
    ld [c], a
    ld a, $ff
    call Call_00f_5f03
    rlc b
    or d
    ld a, c
    db $fd
    ld [hl-], a
    ldh [$81], a

jr_00f_6995:
    inc de
    ld h, b
    nop
    ld h, $c1
    inc h
    push bc
    ld a, [de]
    pop bc
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    rrca
    rrca
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec c
    ld c, $0f
    dec c
    dec c
    dec c
    dec c

Call_00f_69c2:
    dec c
    dec c
    dec c
    dec c
    dec c
    rrca
    ld c, $0e
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0f
    rrca
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc c
    inc c
    inc c
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    nop
    nop
    rra
    ld a, [hl-]
    rra
    ld sp, $281f
    ld d, d
    ld a, [hl]
    rra
    jr z, jr_00f_6987

    ld sp, $0000
    add b
    ld b, e
    add b
    ld c, d
    add b
    ld sp, $0000
    sbc h
    ld e, e
    ld d, d
    ld b, d
    and b
    ld sp, $0000
    ei
    db $fc
    nop
    cp $e3
    db $fd
    inc bc
    ld a, [$f40f]
    rst $28
    ld c, $f8
    inc e
    nop
    rst $38
    ld [c], a
    add c
    jp $ff00


    add c
    nop

jr_00f_6a31:
    nop
    inc e
    inc e
    rst $30
    rst $30
    ccf
    db $fd
    nop
    cp $e3
    cp a
    ret nz

    ld e, a
    ldh a, [$2f]
    ld [hl], b
    rst $38

jr_00f_6a42:
    rra
    jr c, jr_00f_6a31

jr_00f_6a45:
    inc e
    db $f4
    jr jr_00f_6a45

    jr c, @+$01

    db $f4
    jr jr_00f_6a42

    inc a
    add sp, $1c
    jp c, $ff3e

    or $0f
    sbc l
    rst $38
    add l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    rst $28
    rst $08
    adc a
    add c
    add c
    and l
    jp $5aff


    rst $38
    scf
    jr c, jr_00f_6a9a

    jr jr_00f_6aac

    inc e
    rst $38
    cpl
    jr jr_00f_6aa1

    inc a
    rla
    jr c, jr_00f_6ad1

    ld a, h
    rst $38
    ld l, a
    ldh a, [$ee]
    rra
    db $fd
    inc bc
    ei
    rlca
    cp $9a
    push hl
    db $fc
    nop
    and l
    xor l
    cp l
    rst $38
    db $db
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    rst $20
    rst $38
    ld b, d
    rst $20
    sub h
    pop hl
    cp a
    ld [hl], a
    ld hl, sp-$41
    ret nz

    rst $18

jr_00f_6a9a:
    ldh [$9a], a
    push hl
    ccf
    ld bc, $0000

jr_00f_6aa1:
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $fc
    pop hl

jr_00f_6aac:
    cp $f7
    rst $38
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    ld de, $fe00
    rst $38
    pop hl
    ldh a, [$60]
    sbc c
    ldh a, [rIF]
    rst $38
    ld h, b
    rst $38
    rst $38
    pop af
    rst $38
    cp a
    rst $38
    and b
    rst $38
    db $10
    rst $38
    rst $38
    or a
    jr @+$11

    ld hl, sp+$18

jr_00f_6ad1:
    rrca
    dec b
    rst $08
    rst $38
    dec e
    rlca
    ld hl, sp-$10
    ldh [$b9], a
    pop hl

jr_00f_6adc:
    rrca
    ldh a, [rIE]
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$bf], a
    ld b, b
    ei
    cp a
    ld b, b
    xor d
    jp hl


    cp $01
    ld l, a
    sbc a
    cp a
    rst $38
    rst $38
    push af
    ei
    ld l, a
    ldh a, [rIE]
    nop
    ld l, [hl]
    add e
    sbc a
    sbc a
    call nc, $fde0
    pop hl
    add b
    rst $38
    call nz, $fee2
    ldh [$e0], a
    ei
    nop
    ret nz

    ld a, [hl]
    ldh [$78], a
    jr nc, jr_00f_6adc

    ld hl, sp+$07
    rst $38
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$01
    rst $28
    rst $38
    jr z, @+$01

    rst $38
    ld b, h
    rst $38
    ld l, l
    add $83
    cp $c6
    ccf
    add e
    ld bc, $c7ff
    ld bc, $f0fe
    ldh [$39], a
    pop hl
    rst $38
    add e
    ld a, h
    add e
    ld a, h
    rst $00
    jr c, @-$37

    jr c, @-$0f

    rst $28
    db $10
    rst $28
    db $10
    ld a, [hl+]
    jp hl


    push af
    ei
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    xor [hl]
    rst $18
    call c, $b83f
    rst $38
    ld a, a
    ld [hl], b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $20
    rst $38
    ld bc, $80fe
    push af
    adc [hl]
    pop hl
    cp $00
    ldh a, [rIE]
    nop
    ldh [rSB], a
    pop hl
    ld bc, $0301
    ld [bc], a
    xor $fe
    ldh [$03], a
    inc bc
    ld bc, $e0fd
    inc a
    rra
    add sp, -$01
    ld a, a
    sub b
    rst $38
    jr nz, @+$01

    call nz, $0aff
    cp $fe
    ldh [rNR11], a
    rst $38
    sbc e
    ld [hl], c
    and b
    ld a, a
    ld sp, $e03f
    ld b, b
    rst $38
    ld [hl], c
    ret nz

    ccf
    xor $e0
    cp c
    pop bc
    cp $05
    ldh [$1f], a
    pop af
    ld c, $f1
    ld c, $fb
    inc b

jr_00f_6b9b:
    db $d3
    ei
    inc b
    cp h
    ret z

    db $e4
    ret nz

    ret nz

    inc d
    ldh [$03], a
    db $fc
    rst $38
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    and a
    ld b, b
    add b
    add b
    xor [hl]
    pop bc
    nop
    db $ec
    pop af
    jr jr_00f_6b9b

    ldh [$fe], a
    sub [hl]
    jp nz, $0000

    ld b, h
    xor $aa

jr_00f_6bc4:
    xor $aa
    ld a, a
    rst $38
    ld d, l
    cp e
    ld de, $aeff
    dec de
    and h
    pop hl
    ld sp, hl
    cp e
    and b
    jp nz, $c152

    ld d, h
    xor e
    xor c
    ld d, [hl]

jr_00f_6bda:
    ld d, d
    rst $10
    xor h
    ld [bc], a
    db $fc
    ld b, b
    pop hl
    add b
    jr c, jr_00f_6bc4

    ld b, b
    rst $38
    rst $10
    ret nz

    ld a, a
    add b
    dec a
    jp nz, $e480

    ret nz

    rst $08
    ccf
    call nz, $d032
    sub h
    push bc
    ld bc, $e4ff
    sbc h
    db $e4
    add b
    pop de
    rra
    nop
    or l
    rrca
    cp $e0
    ld bc, $e980
    add hl, de
    ld [$ea80], sp
    ld h, d
    rst $38
    add c
    dec b
    ld [bc], a
    ld bc, $0406
    inc bc
    inc bc
    ld a, a
    nop
    add b
    nop
    jr nc, jr_00f_6bda

    inc bc
    db $fc
    ld a, [hl-]
    pop bc
    adc a
    ld bc, $02fe
    db $fd
    or b
    call nz, $b1b2
    db $e4
    and b
    ld a, [hl]
    cp a
    rst $38
    jp $81e7


    jp $ff81


    pop hl

jr_00f_6c33:
    jp $c3bd


    ld a, [c]
    ldh [$7e], a
    rst $38
    ld h, a
    rst $28
    nop
    rst $10
    db $e3
    cp e
    nop
    pop bc
    pop hl
    pop bc
    db $ed
    rst $38
    or [hl]
    ld d, a
    ret nz

    rst $38
    rst $38
    rst $38
    and h
    rst $38
    rst $38
    db $fc
    sub a
    db $fc
    rst $38
    rst $38
    rlca
    rst $38
    rst $38
    inc b
    inc b
    rst $38
    ld h, h
    add h
    ccf
    nop
    inc b
    nop
    nop
    ld h, b
    add b
    jp nz, Jump_000_3aa0

    and $3f
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    add b
    ld sp, hl
    sub h
    and d
    pop bc
    add b
    rst $38
    db $e4
    ld [hl-], a
    and b
    add b
    ret nz

    cp [hl]
    pop hl
    nop
    and h
    ei
    inc e
    rst $38
    rst $38
    ld d, $fb
    inc e
    rst $10
    jr c, jr_00f_6c33

    ld a, h
    cp a
    ld b, l
    cp $83
    cp $ff
    cp $33
    and b
    sub [hl]
    ld a, [hl+]
    cpl
    and b
    adc a
    dec hl
    and b
    and [hl]
    daa
    and b
    sub a
    ld hl, sp-$1d
    ld [hl], l
    ldh [$ee], a
    jp nc, $0c80

    inc bc
    ld bc, $c0e0
    inc c
    inc bc
    nop
    ld a, a
    rst $38
    jr nc, jr_00f_6cbf

    ld [$3007], sp
    rrca
    jp $c383


    add b
    ld a, a
    sub l
    jp z, $d380

    adc b
    push bc

jr_00f_6cbf:
    inc e
    call nz, $fb0e
    rst $38
    inc c
    rst $38
    db $eb
    inc e
    inc d
    rst $38
    push de
    ld a, $7f
    db $e3
    ld a, $a2
    ld a, a
    pop bc
    ld a, a
    rst $38
    cp $e1
    push hl
    ld e, e
    ld a, [$53e0]
    inc de
    jp $80ad


    jp $beff


    ld [$80a7], a
    dec a
    and e
    add b
    cp h
    nop
    push bc
    add [hl]
    ld bc, $ff41
    add b
    ld b, c
    add b
    add d
    ld bc, $0798
    ld [bc], a
    sbc a
    db $fc
    ld [$08f0], sp
    ldh a, [$7e]
    jp $853d


    ldh [rIE], a
    rst $38
    ret c

    ccf
    db $f4
    rrca
    ld a, [$fa07]
    rst $38
    rlca
    db $fc
    rlca
    db $f4
    rrca
    ld hl, sp+$0f
    add sp, -$19
    rra
    ldh a, [$1f]
    add b
    push af
    add b
    add a
    db $fd
    ld c, $ff
    cp a
    dec bc
    db $fd
    ld c, $eb
    inc e
    push de
    ld a, b
    push hl
    rst $38
    ld c, e
    rst $38
    ld c, e
    cpl
    add b
    rst $00
    dec hl
    add b
    ld [hl], h
    pop hl
    ld b, a
    inc hl
    add b
    dec d
    res 0, b
    and l
    rra
    ld b, b
    and b
    nop
    ld a, $a5
    add sp, $62
    ldh a, [$e0]
    rst $38
    ldh a, [$08]
    pop af
    inc bc
    ld sp, hl
    ld bc, $07fb
    rst $38
    ei
    ld a, [bc]
    rst $30
    ld c, $f6

jr_00f_6d53:
    inc b
    rst $38
    inc c
    rst $38
    rst $38
    ld [$18fc], sp
    ld hl, sp+$10
    rst $38
    jr nc, @-$5f

    rst $38
    jr nz, jr_00f_6d53

    ld [hl], b
    ldh [$80], a
    rst $38
    ld a, [hl]
    ld h, a
    db $fc
    rst $28
    nop
    ld hl, sp+$00
    sbc b
    ld h, c
    and l
    db $db
    rst $38
    ld l, l
    xor e
    rst $38
    ld bc, $60a7
    ld c, c
    and e
    ld h, b
    dec h
    nop
    and l
    ldh [$b3], a
    rra
    ld b, $3f
    and [hl]
    ld l, c
    ld h, b
    ld bc, $5c03
    add b
    rlca
    rst $38
    inc bc
    add d
    rst $00
    rst $28
    add $c4
    ld l, a
    ld a, h
    rst $38
    ld l, a
    dec hl
    ld a, h
    ccf
    jr c, jr_00f_6dac

    rst $38
    jr @+$01

    rst $38
    dec bc
    inc e
    rrca
    inc c
    inc b
    rst $38
    ld b, $1f
    rst $38
    inc bc
    ld b, $07

jr_00f_6dac:
    inc bc
    add b
    push af
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $fc
    pop hl
    cp $e3
    ld hl, sp-$10
    rst $38
    ldh a, [rIE]
    ldh a, [$f3]
    ei
    inc e
    rst $30
    ld d, $fb
    rst $38
    inc e
    ld a, [bc]
    ei
    inc c
    rst $38
    db $eb
    inc e
    inc d
    rst $38
    rst $38
    push de
    ld a, $e3
    ld a, $a2
    ld a, a
    pop bc
    db $fd
    ld a, a
    ret nz

    rst $20
    db $fd
    ld c, $fb
    dec bc
    db $fd
    ld c, $e8
    or b
    db $ed
    cp $ff
    add [hl]
    db $e3
    cp $fe
    ld [c], a
    ldh a, [rP1]
    pop af
    di
    nop
    ldh [$fe], a
    ldh [rIE], a
    db $e3
    ld b, h
    xor $aa
    xor $2e
    ld l, b
    pop hl
    rra
    nop
    rrca
    cp $e0
    ld bc, $e6f0
    ld d, h
    db $e3
    rst $30
    db $e3
    nop
    pop bc
    ret c

    ldh [$d7], a
    jr c, @-$53

    ld a, h
    rst $38
    ld b, l
    cp $83
    cp $ff
    cp $ff
    rst $38
    rst $38
    sub [hl]
    sub [hl]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    db $db
    ld e, e
    rst $38
    ld a, a
    db $d3
    ld d, e
    add hl, hl
    db $e3
    db $eb
    ld [hl], e
    inc e
    push de
    ld e, b
    ld [c], a
    add sp, -$20
    rst $38
    ld c, e
    ld c, e
    ldh [$e0], a
    ld a, $0f
    ldh [$fc], a
    nop
    ld hl, sp+$00
    sbc b
    sbc h
    db $e4
    ld [$97e1], sp
    ld a, a
    nop
    ccf
    sbc h
    ldh [rNR11], a
    ldh a, [$e6]
    ld [hl], d
    db $e3
    ldh [$fb], a
    nop
    ret nz

    ld a, b
    ldh [$e0], a
    ld bc, $01e1
    ld bc, $03fb
    ld [bc], a
    cp $e0
    inc bc
    inc bc
    ld bc, $0703
    rst $38
    inc bc
    xor d
    rst $38
    ld d, l
    cp e
    ld de, $aeff
    rr e
    ld a, [bc]
    sub l
    ldh [$bb], a
    sub c
    ldh [$f0], a
    db $e4
    add hl, de
    ld [$f0fe], sp
    db $e4
    db $ed
    db $ed
    or [hl]
    or [hl]
    add b
    add b
    rst $38
    rst $38
    rst $38
    and h
    and h
    rst $38
    rst $38
    sub h
    sub a
    db $fc
    rst $38
    rst $38
    adc a
    adc a
    rst $38
    rst $38
    and [hl]
    and [hl]
    rst $38
    rst $30
    rst $38
    sub a
    sub a
    ld hl, sp-$1d
    rst $38
    rst $38
    jp $ffc3


    cp [hl]
    cp [hl]
    rst $38
    rst $38
    dec a
    dec a
    rst $38
    rst $38
    rst $38
    cp h
    cp h
    rst $38
    rst $38
    rst $00
    rst $00
    rst $38
    rst $38

jr_00f_6eb5:
    db $fd
    ld d, e
    ld d, h
    ldh [rBGP], a
    ld b, a
    rst $38
    rst $38
    set 1, e
    rst $38
    rst $38
    rst $38
    db $db
    db $db
    ld l, l
    ld l, l
    ld bc, $ff01
    rst $38
    rst $38
    ld c, c
    ld c, c
    rst $38
    rst $38
    dec h
    dec h
    rst $38
    rst $38
    rst $38
    ldh a, [$60]
    sbc c
    ldh a, [rIF]
    rst $38
    rst $38
    ld h, b
    rst $38
    pop af
    rst $38
    cp a
    rst $38
    and b
    rst $38
    rst $38
    db $10
    rst $38
    ld a, b
    jr nc, jr_00f_6eb5

    ld hl, sp+$07
    rst $38
    rst $38
    ld [hl], b
    rst $38
    ld hl, sp-$01
    rst $28
    rst $38
    jr z, @+$01

    rst $38
    ld b, h
    rst $38
    inc a
    rra
    add sp, $7f
    sub b
    rst $38
    ld e, a
    jr nz, @+$01

    call nz, $0aff
    cp $e0
    ld de, $c432
    rst $38
    ld d, h
    rst $38
    xor c
    cp $52
    db $fc
    ld [bc], a
    db $fc
    ei
    ld bc, $22fe
    jp $8162


    dec b
    ld [bc], a
    ld bc, $06ff
    inc b
    inc bc
    inc bc
    nop
    rlca
    rst $38
    rst $38
    rst $38
    inc b
    inc b
    rst $38
    ld h, h
    add h
    nop
    inc b
    nop
    sbc a
    nop
    ld h, b
    add b
    nop
    rst $38
    ld d, l
    ldh [rSC], a
    ret nz

    inc c
    db $db
    inc bc
    ld bc, $c0a0
    inc c
    inc bc
    ld a, [c]
    and l
    add [hl]
    ld bc, $41ff
    add b
    ld b, c
    add b
    add d
    ld bc, $0798
    cp $e2
    and e
    rra
    ldh [rNR41], a
    ret nz

    nop
    ret nz

    ld b, b
    ei
    add b
    add b
    sub $a2
    nop
    rst $38
    ldh [$1f], a
    ld b, $fd
    ld bc, $c35b
    or a

jr_00f_6f66:
    jr jr_00f_6f77

    ld hl, sp+$18
    rrca
    rst $18
    dec b
    rst $38
    dec e
    rlca
    ld hl, sp+$60
    ldh [rIE], a
    rst $38
    rst $38
    ld l, l

jr_00f_6f77:
    add $83
    cp $c6
    add e
    ld bc, $f7ff
    rst $00
    ld bc, $60fe
    ldh [rIE], a
    rst $38
    sbc e
    ld [hl], c
    rst $38
    and b
    ld a, a
    ld sp, $40e0
    rst $38
    ld [hl], c
    ret nz

    jp hl


    ccf
    ld e, [hl]
    ldh [$99], a
    and c
    add b
    adc h
    ldh [rLCDC], a
    rst $38
    ret nz

    ei
    ld a, a
    add b
    adc l
    and d
    add b
    nop
    jr nz, jr_00f_6f66

    ld b, $9d
    ld hl, sp+$7a
    and c
    ld bc, $02ff
    db $fc
    ldh [rBCPD], a
    rst $00
    ld d, l
    cp $a4
    pop bc
    rst $38
    jr nc, @+$11

    ld [$3007], sp
    rrca

Jump_00f_6fbd:
    db $fc
    ld d, e
    and e
    adc $e1
    ld [bc], a
    db $fc
    ld [$08f0], sp
    ldh a, [$e3]

Jump_00f_6fc9:
    inc bc
    db $fc

Jump_00f_6fcb:
    xor l
    and [hl]
    call nc, Call_00f_60a4
    ldh [$f0], a
    ld [$dbf1], sp
    inc bc
    ld sp, hl
    push bc
    and d
    ld bc, $4c03
    ret nz

    rlca
    inc bc
    rst $38
    add d
    rst $00
    rst $28
    add $00
    rst $38
    rrca
    ldh a, [rIE]
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$bf], a
    ld b, b
    ei
    cp a
    ld b, b
    ld d, $a1
    add e
    ld a, h
    add e
    ld a, h
    rst $00
    ld a, a
    jr c, @-$37

    jr c, @-$0f

    db $10
    rst $28
    db $10
    inc [hl]
    db $e3
    rst $38
    ldh [$1f], a
    pop af
    ld c, $f1
    ld c, $fb
    inc b
    rst $18
    ei
    inc b
    rst $38
    nop
    add b
    and h
    ret nz

    rst $08
    ccf
    ldh [$50], a
    and a
    ldh [$82], a
    ld [hl-], a
    xor b
    ldh a, [rIE]
    ld [c], a
    ret nz

    rst $38
    ret c

    ccf
    rst $38
    db $f4
    rrca
    ld a, [$fa07]
    rlca
    db $fc
    rlca
    rst $38
    ld bc, $07fb
    ei
    ld a, [bc]
    rst $30
    ld c, $f6
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    ld [$18fc], sp
    ld hl, sp-$01
    call nz, Call_00f_7c6f
    ld l, a
    dec hl
    ld a, h
    ccf
    jr c, @+$01

    db $10
    rst $38
    jr @+$01

    dec bc
    inc e
    rrca
    inc c
    sbc $fe
    adc b
    ld bc, $9f6f
    cp a
    ret z

    adc b
    push af
    ei
    ld h, a
    rst $38
    rst $38
    sbc a
    ld l, b
    add [hl]
    ld b, c
    and b
    rst $38
    ret nz

    ld d, h
    add d
    ld a, b
    ld d, [hl]
    add h
    ld l, e
    db $e4
    ldh a, [$e9]
    ld a, [hl]
    rst $38
    jp $e0e7


    ld sp, hl
    cp $14
    add c
    db $f4

jr_00f_707b:
    rrca
    ld hl, sp+$0f
    add sp, $1f
    ldh a, [$fd]
    rra
    dec hl
    push hl
    db $10
    rst $38
    jr nc, @+$01

    jr nz, jr_00f_707b

    ei
    ld [hl], b
    ldh [rNR31], a
    push hl
    inc b
    rst $38
    ld b, $ff
    inc bc
    rst $30
    ld b, $07
    inc bc
    dec bc
    push hl
    push af
    ei
    ld l, a
    ldh a, [$cf]
    rst $38
    nop
    ld l, [hl]
    sbc a
    db $76
    ldh [$fe], a
    ld [c], a
    xor [hl]
    rst $18
    ld e, a
    call c, $b83f
    ld a, a
    ld [hl], b
    inc e
    ldh [$c0], a
    call nz, $ffa0
    ld bc, $03fe
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [$c1]
    db $10
    ldh [$a0], a
    ld [c], a
    and d
    add hl, sp
    ret nz

    rst $38
    db $e4
    inc a
    add h
    add c
    jp $81ed


    rst $38
    pop hl
    jp Jump_00f_62c3


    ldh [$7e], a
    rst $38
    ld h, a
    rlca
    rst $28
    rst $38
    add b
    rst $38
    db $e4
    inc e
    add b
    or d
    and b
    ei
    and b
    rst $38
    db $eb
    nop
    ldh a, [rIE]
    rst $38
    db $eb
    nop
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    ld c, $0d
    dec c
    dec c
    dec c
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
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    inc c
    inc c
    inc c
    dec c
    dec c
    dec c
    dec c
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    inc c
    dec c
    dec c
    dec c
    rrca
    rrca
    ld c, $0e
    rrca
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0c
    inc c
    inc c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0e
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $16
    ld b, d
    rst $18
    ld c, l
    rst $18
    jr c, @+$28

    db $10
    rst $38
    ld c, e
    rst $18
    ld d, c
    nop
    ld [bc], a
    nop
    nop
    adc [hl]
    inc bc

jr_00f_7158:
    and $02
    nop
    ld [bc], a
    nop
    nop
    sbc b
    ld b, e
    ld b, $03
    nop
    ld [bc], a
    sbc a
    ld h, c
    ei
    nop
    rst $38
    cp $e3
    ld bc, $03ff
    rst $38
    nop
    db $dd
    ld bc, $e5f2
    ret nz

    rst $38
    ldh [$fe], a
    pop hl
    ldh a, [$f0]
    add h
    ld [c], a
    db $e4
    jp c, Jump_000_00e4

    ret c

    ldh [rIE], a
    ld [c], a
    sub $e0
    rst $38
    db $e4
    ldh a, [$fd]
    ld hl, sp-$01
    ldh [$fc], a
    db $fc
    db $fc
    ld a, h
    cp $3e
    rra
    ld a, [hl]
    ld a, $3f
    rra
    ccf
    add sp, -$1b
    ld hl, sp-$1a
    jp z, $fee2

    cp d
    rst $20
    rra
    rst $38
    jr c, jr_00f_7224

    ld b, h
    rst $28
    nop
    rst $30
    rst $00
    nop
    add e
    db $fc
    ldh [$ef], a
    nop
    rst $38
    add b
    ccf
    rst $38
    ret nz

    ldh [$60], a
    rst $38
    jr nz, jr_00f_7158

    and $00
    nop
    nop
    push af
    nop
    rst $38
    db $e4
    rst $38
    cp $f8
    ccf
    nop
    rrca
    nop
    rst $10
    ld b, b
    nop
    ld b, e
    ld a, [$3fe0]
    ret c

    ldh [$db], a
    inc a
    rst $38
    and h
    ld a, a
    db $db
    rst $20
    rst $20
    jr jr_00f_721a

    rst $38
    ld d, c
    rst $38
    set 4, b
    ret z

    push hl
    rst $38
    rst $20
    rrca
    or h
    db $eb
    ld bc, $e1fe
    rst $38
    rst $18
    pop hl
    rst $28
    pop af
    ld a, a
    pop af
    ccf
    pop af
    rst $38
    scf
    ld sp, hl
    dec sp
    db $fd
    rra
    db $fd
    rrca
    db $fd
    sbc a
    dec c
    rst $38
    rrca
    rst $38
    rlca
    cp $e2
    add b
    db $e3
    ld bc, $80fe
    or $fc
    nop
    di
    nop
    rst $08
    nop
    dec sp
    cp e
    nop
    ei
    ld e, [hl]
    ldh [$bf], a

jr_00f_721a:
    nop
    cp l
    add d
    ldh [$a5], a
    rst $38
    ld a, [hl]
    jp c, $65e7

jr_00f_7224:
    sbc e
    cp e
    ld a, h
    cp $fa
    add b
    and $f0
    add b
    and $01
    nop
    or a
    ld a, b
    ld e, l
    rst $38
    xor $bf
    jp z, $9ee3

    call $70be
    rst $38
    rst $38
    add e
    ld a, h
    rst $38
    nop
    ld a, a
    add b
    cp a
    rst $38
    ret nz

    rst $38
    ld [hl], b
    ccf
    db $10
    rra
    db $10
    sbc a
    rst $10
    sub b
    ld a, a
    ldh a, [rHDMA4]
    db $ed
    nop
    inc h
    ldh [$3f], a
    nop
    db $dd
    ld a, a
    ld [bc], a
    ld a, [c]
    di
    nop
    call z, $e006
    ei
    nop
    sub l
    ld a, e
    ldh [$e2], a
    rst $28
    cp $e0
    cp $fe
    ldh [rP1], a
    pop af
    inc bc
    call nc, $e05a
    or h
    db $e3
    ret nz

    inc [hl]
    and $fc
    ld l, d
    ldh [$c0], a
    nop
    dec d
    add b
    add sp, -$3a
    add b
    db $e4
    ldh [$f8], a
    call nc, $88ce
    db $db
    add [hl]
    pop bc
    ld [hl], l
    rst $08
    nop
    ldh [$fc], a
    ld b, $e0
    cp a
    nop
    db $fd
    cp $e0
    ld d, b
    add d
    pop bc
    nop
    db $ed
    adc h
    pop hl
    or d
    pop hl
    inc bc
    inc a
    ret nz

    rrca
    inc [hl]
    ld [c], a
    sub c
    db $fc
    db $ec
    and $f9
    db $ed
    ld a, [de]
    jp $801f


    db $ec
    ld e, d
    pop hl
    add b
    ld a, $fe
    cp d
    inc a
    nop
    pop bc
    nop
    pop af
    ld [hl], h
    ret nz

    jp c, $fea1

    nop
    pop bc
    ei
    rst $20
    push de
    cp $7a
    rst $18
    rst $20
    rst $38
    db $db
    db $76
    res 7, d
    rst $00
    jp hl


    sub a
    pop hl
    rst $38
    sbc a
    xor c
    rst $18
    ld c, [hl]
    rst $38
    ld [hl], c
    cp $80
    xor a
    ld a, a
    pop bc
    ld a, $f8

jr_00f_72e2:
    inc c
    db $e4
    ld bc, $c0ea
    ld [bc], a
    ld e, h
    jr z, @-$3e

    rst $20
    and a
    ld bc, $0700
    xor [hl]
    xor b
    inc bc
    nop
    add sp, -$1f
    rrca
    and $e0
    jp z, Jump_00f_7aac

    ret z

    xor h
    pop bc
    stop
    ld [de], a
    cp b
    sbc d
    ret nz

    add b
    and c
    nop
    call Call_000_00f8
    ld a, [$a244]
    ld hl, sp-$2c
    ld h, d
    ret nz

    add h
    db $e3
    rlca
    ld a, b
    jp nz, $8401

    db $e4
    rst $28
    rra
    rst $38
    rst $38
    rra
    jp c, $f73d

    jr c, jr_00f_72e2

    ld [hl], c
    rst $38
    ld l, h
    di
    db $fc
    db $e3
    ret c

    rst $20
    ld hl, sp-$19
    rst $38
    ld l, h
    di
    cp h
    ld [hl], e
    ld a, h
    di
    db $ec
    di
    ccf
    ret c

    rst $20
    ldh a, [$cf]
    ldh a, [$cf]
    add b
    db $db
    add b
    and e
    rla
    rrca
    nop
    dec a
    add d
    ret nz

    rst $18
    cp $e0
    nop
    push hl
    nop
    and a
    ld d, a
    ld bc, $0900
    call nz, $0382
    adc [hl]
    ld [c], a
    rlca
    ld [c], a
    add b
    db $fd
    rst $38
    ld e, [hl]
    and b
    rst $38
    ld h, [hl]
    db $db
    ld h, [hl]
    ld [hl], d
    rst $08
    rst $38
    ld h, e
    rst $18
    pop hl
    rst $18
    ldh [$df], a
    and b
    rst $18
    rst $30
    ret nz

    rst $38
    ld h, b

jr_00f_7372:
    cp $e4
    jr nc, @+$01

    jr c, @+$01

    push bc

jr_00f_7379:
    jr jr_00f_7379

    ld [c], a
    jr nc, jr_00f_7372

    ldh [$f6], a

Jump_00f_7380:
    pop hl
    nop
    rst $18
    di
    nop
    ret


    call c, $e286
    ld [bc], a
    and c
    db $fd
    nop
    or b
    xor $81
    jp $cf7e


    or e
    ld a, [hl]
    db $ed
    ld e, $3c
    adc l
    inc b
    and d
    ret nz

    ld a, a
    rst $38
    ret nz

    ld a, [hl]
    pop bc
    ld a, a
    pop bc
    rst $38
    pop bc
    cp a
    rst $38
    pop bc
    cp h
    jp $c3fc


    ld e, c
    rst $20
    ld a, c
    rst $38
    rst $20
    add hl, sp
    rst $20
    dec a
    db $e3
    dec a
    db $e3
    ld a, l
    ld e, a
    db $e3
    reti


    rst $20
    adc c
    rst $30
    ld [$fe83], sp
    sbc b
    add b
    sbc h
    inc h
    and c
    ld a, b
    cp c
    or b
    nop
    cp h
    nop
    ldh a, [rTMA]
    and c
    inc b
    db $fc
    add h
    and d
    cp [hl]
    ld h, l
    ei
    rlca
    xor $1f
    db $d3
    add hl, sp
    rst $38
    or a
    ld a, a
    jp z, $6d5c

    ret c

    sub b
    cp b
    rst $38
    sub b
    ei
    call nc, $a0f3
    ldh a, [$94]
    or e
    rst $38
    pop af
    sub b
    sub h
    di
    ld hl, sp-$0d
    sub b
    cp e
    rst $38
    ret z

    sbc e
    xor b
    db $db
    ldh a, [$fb]
    sub d
    ld sp, hl
    rst $38
    call z, $9899
    call $d9ec
    cp l
    db $fc
    call nc, Call_00f_69c2
    cp $75
    pop af
    add d
    and b
    nop
    ld a, [hl]
    ld h, b
    ld c, b
    nop
    cp l
    ld [$8400], sp
    push hl
    ei
    cp e
    cp h
    nop
    add c
    add b
    db $e3
    rst $38
    add e
    ld b, $a4
    sub h
    add c
    sbc [hl]
    add e
    rst $18
    ldh [$7b], a
    rst $38
    inc a
    xor a
    ld [hl], a
    jp c, Jump_000_07fc

    rrca
    db $10
    ld d, a
    pop hl
    and d
    ld e, h
    daa
    ld h, c
    ret z

    ld hl, $9068
    sub a
    xor h
    nop
    nop
    nop
    and l
    nop
    rst $38
    db $e4
    rst $38
    cp $e4
    ldh a, [$e3]
    ld bc, $e6f0
    ccf
    ld d, d
    cp $e0
    ld a, a
    ld [c], a
    and $f8
    di
    add b
    cp e
    ldh [$80], a
    call c, $c7e8
    rrca
    nop
    rlca
    db $fc
    ldh [$cc], a
    ei
    xor [hl]
    db $eb
    cp $00
    pop bc
    db $fc
    db $fc
    ldh [$9a], a
    rst $20
    ld l, h
    db $eb
    cp $ff
    ld b, d
    db $e3
    db $ed
    ld e, $1b
    cp a
    ld a, a
    ld d, [hl]
    db $eb
    ld a, a
    add b
    jp z, $feff

    rst $38
    cp $fd
    rst $38
    ccf
    ret nz

    rrca
    ldh a, [rSCY]
    cp l
    ld b, e
    cp a
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    cp $01
    ei
    rlca
    rst $38
    rst $28
    rra
    cp e
    ld a, a
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp l
    rst $38
    ei
    rst $38
    ld a, e
    rst $38
    push de
    ld a, a
    db $f4
    ldh [$ef], a
    cp $e0
    cp $fe
    ldh [$df], a
    ldh [$5f], a
    rst $30
    ld hl, sp-$03
    cp $bf
    db $e4
    ldh [$fd], a
    cp $e0
    db $fc
    db $db
    ldh [$86], a
    jp nz, $837c

    pop de
    xor $f1
    cp $fd
    db $fc
    call z, $f3e0
    inc c
    ret nz

    ccf
    nop
    rst $38
    cp a
    db $10
    rst $28
    ld [de], a
    db $ed
    inc bc
    rst $38
    or b
    push hl
    cpl
    xor e
    rst $18
    dec a
    jp nc, $dfe0

    cp $e0
    rst $38
    ret nz

    ld [c], a
    db $dd
    pop hl
    cp $f6
    pop hl
    and d
    pop hl
    cp [hl]
    ldh [rNR23], a
    db $e4
    rst $18
    ldh [$b4], a
    ei
    ei
    cp h
    or b
    ld [c], a
    db $fc
    inc bc
    pop af
    ld c, $c1
    rst $38
    ld a, $00
    rst $38
    ld b, b
    cp a
    ld c, b
    or a
    ld [$f7ff], sp
    rst $38
    nop
    db $db
    inc a
    and h
    ld a, a
    db $db
    rst $28
    rst $20
    rst $20
    jr jr_00f_7556

    sub e
    ld [c], a
    db $db
    inc a
    and l
    rst $38
    ld a, [hl]
    jp c, $65e7

    sbc e
    cp e
    ld a, h
    cp $f8
    add e
    ld [c], a
    ldh [rIE], a
    ldh [$e1], a
    ei
    rst $20
    push de
    cp $7a
    sbc a
    rst $18
    rst $20
    db $db
    db $76
    set 0, b
    rst $38
    ldh [rIE], a
    jp c, $e75f

    push hl
    ei
    cp e
    cp h
    ret nz

    pop hl
    add b
    cp $c1
    ret c

    db $fc
    db $e3
    ld a, [hl]
    and l
    ret z

    ret nz

    ldh a, [$f8]
    add sp, -$3b
    ld sp, hl

jr_00f_7556:
    rlca
    and $dd
    pop bc
    dec bc
    rlca
    and $c0
    ld [hl], h
    and c
    rst $38
    ret nc

    ldh [$bf], a
    rst $38
    rst $38
    rst $08
    ldh a, [$3f]
    ret nz

    ld d, d
    and c
    di
    rst $38
    rrca
    rst $38
    rst $38
    cpl
    rra
    cp d
    rst $00
    jp hl


    rst $38
    sub a
    pop hl
    sbc a
    xor c
    rst $18
    ld c, [hl]
    rst $38
    ld [hl], c
    rst $38
    cp $80
    ld a, a
    pop bc
    ld a, $f8
    db $fd
    rst $38
    db $fd
    ld a, [$c1a9]
    ei
    db $fc
    cp $ff
    ld sp, hl
    cp $bf
    sbc a
    ldh [rSB], a
    rst $30
    db $fd
    dec bc
    ldh a, [$e2]
    rlca
    cp a
    rst $38
    ld bc, $03fd
    rst $30
    rrca
    ld d, b
    pop hl
    and l
    ld a, a
    ld a, [hl]
    jp $b37e


    ld a, [hl]
    db $ed
    ld e, $0c
    and c
    rst $38
    db $fc
    rst $38
    rlca
    sbc b
    inc b
    rrca
    inc bc
    rst $00
    sbc $77
    push hl
    di
    adc a
    ld a, [hl]
    add c
    and [hl]
    pop hl
    rst $08
    ldh a, [rIE]
    cp a
    ret nz

    rst $08
    ldh a, [$fb]
    db $fc
    db $fc
    inc bc
    ld sp, hl
    adc a
    ld b, c
    pop bc
    ld e, b
    and $b7
    ld a, b
    ld e, l
    xor $bf
    rst $38
    jp z, $9ee3

    call $70be
    rst $38
    add e
    ld a, a
    ld a, h
    rst $38
    nop
    add c
    nop
    ld b, l
    add e
    add hl, sp
    pop bc
    rst $38
    db $fc
    rst $38
    rst $30
    ld hl, sp-$21
    ldh [$bf], a
    ret nz

    add d
    inc d
    pop bc
    db $fc
    ld e, h
    ldh [$b0], a
    add l
    ld a, h
    pop hl
    jr nz, @-$5e

    add h
    ldh [rIE], a
    rst $38
    inc bc
    cp $03
    db $fd
    inc bc
    db $fc
    inc bc
    rst $20
    rst $38
    rra
    cp a
    ld a, a
    jp nc, $41e1

    add e
    ld bc, $03ff
    ld bc, $4000
    add b
    db $db
    inc a
    rst $38
    cp $ce
    ret nz

    rst $38
    ld h, [hl]
    db $db
    ld h, [hl]
    ld [hl], d
    rst $08
    ld h, e
    rst $30
    rst $18
    pop hl
    rst $18
    ld b, d
    xor e
    cp a
    ret nz

    nop
    rst $38
    rst $38
    rlca
    ei
    rra
    xor $39
    db $d3
    ld a, a
    or a
    rst $38
    ld e, h
    jp z, $6dd8

    cp b
    sub b
    nop
    rst $38
    rst $38
    ldh [$df], a
    inc a
    ld a, e
    ld [hl], a
    xor a
    db $fc
    jp c, $0fff

    rlca
    pop hl
    db $10
    ld e, h
    and d
    rst $38
    ld bc, $fefe
    pop hl
    rst $18
    pop hl
    rst $28
    pop af
    ld a, a
    pop af
    ccf
    rst $30
    pop af
    scf
    ld sp, hl
    call z, $ffe1
    ld [hl], b
    ccf
    db $10
    rra
    rra
    db $10
    sbc a
    sub b
    ld a, a
    ld a, d
    ldh [$fe], a
    add e
    ld hl, sp-$80
    ret nz

    sbc $a0
    xor c
    pop bc
    ld [hl], $8c
    ld d, b
    and b
    ld a, [hl]
    add h
    ld [c], a
    ret nz

    rst $00
    ccf
    cp $58
    and b
    rra
    rst $38
    rra
    jp c, $f73d

    jr c, @+$01

    cp [hl]
    ld [hl], c
    ld l, h
    di
    db $fc
    db $e3
    ret c

    rst $20
    ld a, a
    ldh [$df], a
    and b
    rst $18
    ret nz

    rst $38
    ld h, b
    cp $e4
    rst $38
    jr nc, @+$01

    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, [hl]
    pop bc
    rst $38
    ld a, a
    pop bc
    rst $38
    pop bc
    cp a
    pop bc
    cp h
    jp $fcff


    jp $90fb


    di
    call nc, $a0f0
    rst $38
    or e
    sub h
    sub b
    pop af
    di
    sub h
    di
    ld hl, sp-$15
    cp e
    sub b
    cp h
    ld h, d
    ret z

    ret nc

    ld h, a
    dec sp
    db $fd
    rra
    cpl
    db $fd
    rrca
    db $fd
    dec c
    inc [hl]
    and b
    rlca
    cp $e2
    inc d
    jp z, Jump_000_1096

    call nz, Call_000_03fc
    ldh a, [$eb]
    rra
    ld l, d
    and $f0
    and e
    rst $38
    or $a8
    add b
    di
    rrca
    ld d, [hl]
    db $e3
    ld hl, sp-$19
    ld l, h
    di
    rst $38
    cp h
    ld [hl], e
    ld a, h
    di
    db $ec
    di
    ret c

    rst $20
    ld a, a
    ldh a, [$cf]
    ldh a, [$cf]
    jr c, @+$01

jr_00f_7705:
    jr jr_00f_7705

    ld [c], a
    ld sp, hl
    jr nc, jr_00f_776f

    ldh [$f6], a
    pop hl
    ld e, c
    rst $20
    ld a, c
    rst $20
    add hl, sp
    rst $38
    rst $20
    dec a
    db $e3
    dec a
    db $e3
    ld a, l
    db $e3
    reti


    rst $38
    rst $20
    adc c
    rst $30
    sbc c
    jp z, $a8db

    ei
    rst $38
    ldh a, [$f9]
    sub d
    sbc c
    call z, $98cd
    reti


    rrca
    db $ec
    db $fc
    cp l
    rrca
    ld e, [hl]
    ld [c], a
    sub [hl]
    ld h, a
    nop
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
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
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $0e

jr_00f_776f:
    dec c
    ld c, $0e
    dec c
    ld c, $0e
    ld c, $0d
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    rrca
    rrca
    dec c
    dec c
    ld c, $0e
    ld c, $0d
    dec c
    dec c
    rrca
    rrca
    dec c
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    rrca
    rrca
    rst $38
    ld a, a
    sub b
    ld a, [hl]
    ld c, h
    ld b, d
    inc b
    ld a, [bc]
    sbc a
    ld [bc], a
    inc b
    ld a, [bc]
    nop
    add hl, bc
    nop
    nop
    sbc [hl]
    dec sp
    xor h
    inc bc
    ret z

    ld [bc], a
    inc b
    ld a, [bc]
    adc d
    ld a, [hl]
    nop
    ld b, c
    inc b
    ld [bc], a
    nop
    nop

Call_00f_77b3:
    ld hl, $7b9a
    ld de, $0d01
    call Call_000_056c
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    rst $18

    db $1a, $03

    call Call_00f_4995
    call Call_00f_49aa
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
    jr nc, jr_00f_77e1

    inc h

jr_00f_77e1:
    ld h, [hl]
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, h
    ld hl, $0021
    add l
    ld l, a
    jr nc, jr_00f_77f0

    inc h

jr_00f_77f0:
    ld de, $d4c5
    ld c, $20
    rst $18

    db $22, $05

    ld hl, $003b
    ld de, $d505
    ld c, $20
    rst $18

    db $22, $05

    rst $18

    db $24, $03

    call Call_00f_4aa0
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d209]
    and $7f
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a

Jump_00f_781d:
jr_00f_781d:
    ld hl, $ffb3
    inc [hl]
    call Call_000_2e3b
    ldh a, [$91]
    bit 5, a
    jr z, jr_00f_783c

    rst $08
    ld e, e
    dec b
    ld a, b
    or a
    jr nz, jr_00f_7833

    ld a, $12

jr_00f_7833:
    ld [hl], $00
    push af
    call Call_00f_78c5
    pop bc
    jr jr_00f_781d

jr_00f_783c:
    bit 4, a
    jr z, jr_00f_7853

    rst $08
    ld e, e
    inc b
    ld a, b
    cp $13
    jr nz, jr_00f_784a

    ld a, $01

jr_00f_784a:
    ld [hl], $00
    push af
    call Call_00f_78c5
    pop bc
    jr jr_00f_781d

jr_00f_7853:
    bit 6, a
    jr z, jr_00f_7869

    rst $08
    ld e, e
    dec b
    ld a, b
    or a
    jr nz, jr_00f_7860

    ld a, $12

jr_00f_7860:
    ld [hl], $00
    push af
    call Call_00f_78c5
    pop bc
    jr jr_00f_781d

jr_00f_7869:
    bit 7, a
    jr z, jr_00f_7880

    rst $08
    ld e, e
    inc b
    ld a, b
    cp $13
    jr nz, jr_00f_7877

    ld a, $01

jr_00f_7877:
    ld [hl], $00
    push af
    call Call_00f_78c5
    pop bc
    jr jr_00f_781d

jr_00f_7880:
    bit 0, a
    jr z, jr_00f_7888

    rst $08

    db $5c

    ld a, b
    ret


jr_00f_7888:
    bit 1, a
    jr z, jr_00f_789c

    rst $08
    ld e, l
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ld [$d209], a
    ld a, $ff
    ret


jr_00f_789c:
    jp Jump_00f_781d


    call Call_00f_42b4
    ldh a, [$b3]
    and $0f
    cp $0c
    ret nc

    ld bc, $0d20
    ld de, $5060
    call Call_000_26a4
    ld bc, $0d24
    ld de, $6060
    call Call_000_26a4
    ld bc, $0d28
    ld de, $7060
    call Call_000_26a4
    ret


Call_00f_78c5:
    ld hl, $78ea
    add l
    ld l, a
    jr nc, jr_00f_78cd

    inc h

jr_00f_78cd:
    ld a, [hl]
    push af
    swap a
    and $0f
    ld b, a
    ld c, $00
    call Call_00f_78fe
    pop af
    and $0f
    ld b, a
    ld c, $01
    call Call_00f_78fe
    ld b, $0b
    ld c, $02
    call Call_00f_78fe
    ret


    and b

    db $a1

    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_00f_7917

Call_00f_78fe:
    ldh a, [$96]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    push bc
    ld a, b
    add a
    ld hl, $7934
    add l
    ld l, a
    jr nc, jr_00f_7912

    inc h

jr_00f_7912:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $d0

jr_00f_7917:
    add c
    ld d, a
    ld e, $00
    push de
    call Call_000_1f2f
    pop hl
    pop bc
    ld a, c
    swap a
    add a
    add a
    ld d, $a2
    ld e, a
    ld c, $04
    call Call_000_0468
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ld c, h
    ld a, c

    db $83, $79

    xor h
    ld a, c
    db $ed
    ld a, c
    ld [hl], $7a
    ld a, b
    ld a, d
    xor b
    ld a, d
    call nc, $0c7a
    ld a, e
    ccf
    ld a, e

    db $72, $7b, $7b, $7b

    rst $38
    nop
    nop
    rrca
    rrca
    inc sp
    inc a
    rst $08
    ldh a, [$df]
    rst $38
    ret nz

    db $fc
    jp $feff


    rst $20
    ret nz

    rst $08
    rst $38
    ldh a, [$f3]
    db $fc
    ccf
    ccf
    rrca
    rrca
    nop
    rst $38
    nop
    ldh a, [$f0]
    call z, $f33c
    rrca
    ccf
    cp $e2
    jp hl


    jp $c33f


    di
    rrca
    rst $08
    ccf
    rrca
    db $fc
    db $fc
    ldh a, [$f0]
    nop
    nop
    nop

    db $fd, $00, $ff, $e0, $03, $03, $0c, $0f, $0f, $0c, $f6, $fe, $e0, $0f, $03, $ff
    db $ee, $00, $00, $3f, $3f, $ff, $cf, $f3, $3f, $c3, $ff, $03, $ff, $03, $0b, $3f
    db $c3, $fe, $eb, $ff, $ff, $e0, $00, $00

    nop
    rst $38
    nop
    nop
    ccf
    ccf
    inc sp
    inc a
    rst $08
    ldh a, [rIE]
    rst $38
    ret nz

    db $fc
    jp $cff3


    rst $38
    rst $38
    adc a
    inc bc
    inc bc
    inc c
    rrca
    ldh a, [$e3]
    cp $e0
    rst $38
    ldh [rP1], a
    rst $38
    nop
    ldh a, [$f0]
    call z, $ff3c
    rrca
    di
    rst $38
    rrca
    rst $38
    inc bc
    ccf
    jp $cf33


    rst $38
    ld e, a
    rrca
    call z, $fc3c
    inc a
    and $e0
    inc bc
    cp $e0
    nop
    ldh [$e0], a
    nop
    nop
    nop
    rst $38
    nop
    nop
    ccf
    ccf
    inc sp
    inc a
    rst $08
    ldh a, [rIE]
    db $fc
    jp $ffc3


    rst $38
    rst $38
    rrca
    inc c
    rst $38
    rrca
    inc c
    rst $38
    rst $38
    jp $fcff


    jp $cfff


    ldh a, [$f3]
    db $fc
    ccf
    ccf
    rrca
    rrca
    rst $38
    nop
    nop
    ldh a, [$f0]
    call z, $ff3c
    rrca
    rst $38
    di
    rrca
    ccf
    jp Jump_000_03ff


    rst $38
    rrca
    sbc $fe
    ldh [$03], a
    ccf
    jp $f8f3


    ldh [$cf], a
    ccf
    rrca
    db $fc
    db $fc
    ldh a, [$f0]
    nop
    nop
    nop
    rst $30
    nop
    nop
    inc bc
    rst $38
    ldh [$0c], a
    rrca
    rrca
    inc c
    rst $38
    inc sp
    inc a
    inc a
    inc sp
    rst $08
    di
    rst $38
    ret nz

    rst $38
    rst $38
    ret nz

    db $fc
    rst $38
    db $fc
    rst $38
    inc c
    rrca
    db $fc
    db $ec
    ldh [$fe], a
    ldh [rP1], a
    nop
    db $fc
    db $fc
    inc a
    call z, $fcef
    inc c
    db $fc
    inc c
    ld a, [$cce0]
    rst $38
    rst $08
    cp e
    rst $38
    inc bc
    cp $e0
    rrca
    rst $38
    rrca
    xor $e1
    db $fc
    nop
    rst $38
    ldh [rP1], a
    nop
    nop
    cp a
    nop
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    cp $e0
    jp $fe20


    ldh [$f8], a
    pop hl
    pop af
    ldh [$ec], a
    and $f4
    push hl
    inc bc
    cp $e0
    reti


    ldh [$ef], a
    call z, $f33c
    rrca
    ret c

    ld [c], a
    jp $c33f


    rst $38
    di
    rrca
    rst $08
    ccf
    db $fc
    db $fc
    ldh a, [$f0]
    nop
    nop
    nop
    cp a
    nop
    nop
    rst $38

Jump_00f_7aac:
    rst $38
    rst $38
    jp $e4fe


    ret nz

    add sp, -$02
    ldh [$f4], a
    jp hl


    push hl
    ldh [rP1], a
    rst $38
    and $f0
    ldh a, [$cc]
    rst $28
    inc a
    di
    rrca
    ccf
    call nc, Call_000_3fe2
    jp Jump_00f_7ff3


    rrca
    rst $08
    ccf
    db $fc
    db $fc
    ldh a, [$f0]
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    ld a, a
    db $fc
    jp $cff3


    db $fc
    db $fc
    nop
    rst $38
    ldh [$3d], a
    inc bc
    rst $38
    ld [c], a
    inc c
    rrca
    inc c
    rrca
    rst $38
    pop hl
    ldh [$e2], a
    ld a, a
    inc bc
    rst $38
    inc bc
    ccf
    jp $f3cf


    cp $e1
    rlca
    rst $38
    jp $fe3f


    ldh [$ee], a
    pop hl
    ld [$c5e0], a
    ldh [rP1], a
    nop
    nop
    rst $38
    nop
    nop
    rrca
    rrca
    inc sp
    inc a
    rst $08
    ldh a, [$db]
    rst $38
    jp $e1fe


    rst $08
    ldh a, [$f6]
    rst $20
    di
    db $fc
    rst $38
    ccf
    ccf
    rrca
    rrca
    nop
    nop
    ldh a, [$f0]
    rst $18
    call z, $f33c
    rrca
    ccf
    ldh [$e2], a
    di
    rrca
    ld a, [hl]
    or $e7
    rst $08
    ccf
    db $fc
    db $fc
    ldh a, [$f0]
    nop
    nop
    nop
    rst $38
    nop
    nop
    rrca
    rrca
    inc sp
    inc a
    rst $08
    ldh a, [$fb]
    rst $38
    jp $e1fe


    rst $08
    ldh a, [$30]
    ccf
    rrca
    ei
    rrca
    inc bc
    rst $38
    add sp, $00
    nop
    ldh a, [$f0]
    call z, Call_000_3c6f
    di
    rrca
    ccf
    ldh [$e2], a
    rst $38
    inc bc
    cp $e3
    dec bc
    ccf
    jp $e1fe


    rst $38
    rst $38
    ldh [rP1], a
    nop
    nop

    db $01, $00, $ff, $ff, $ff, $fa, $00, $00

    nop

    db $9d, $00, $ff, $e2, $ff, $ff, $c3, $fd, $e1, $fe, $e1, $c0, $20, $fe, $e0, $f6
    db $e2, $ee, $e0, $fe, $e0, $e0, $ee, $03, $fe, $e0, $e0, $e8, $00, $00, $00, $96
    db $32, $ff, $7f, $18, $63, $00, $00

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_00f_7c6f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00f_7ff3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
