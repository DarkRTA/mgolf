; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00c", ROMX[$4000], BANK[$c]

    inc d
    ld b, b
    db $ec
    ld e, d
    push bc
    ld e, a

    db $b2, $65, $f8, $67

    ldh [$6e], a

    db $15, $4a, $ad, $43

    add b
    ld [hl], e
    ld [hl], d
    ld d, a
    rst $18
    jr z, jr_00c_4022

    call Call_000_2b54
    ld b, $00
    rst $18
    ld a, [hl+]
    dec bc
    call Call_00c_40f3

jr_00c_4022:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d223
    ld a, $00
    ld [hl], a
    rst $18
    ld [hl-], a
    dec bc
    ld hl, $d226
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_00c_4248
    call Call_00c_433a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $0f
    ld hl, $4821
    call Call_000_23e8
    ld a, [$d226]
    or a
    jr z, jr_00c_4059

    ld a, $1d
    ld hl, $4852
    call Call_000_23e8

jr_00c_4059:
    call Call_000_2e3b
    ld c, $10
    call Call_000_25af
    call Call_000_2625

jr_00c_4064:
    call Call_000_2e3b
    call Call_00c_408b
    cp $ff
    jr nz, jr_00c_4064

    push af
    ld hl, $4821
    call Call_000_2449
    ld a, [$d226]
    or a
    jr z, jr_00c_4081

    ld hl, $4852
    call Call_000_2449

jr_00c_4081:
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    pop af
    ret


Call_00c_408b:
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $00
    push af
    ld a, [$d226]
    ld b, a
    ldh a, [$91]
    bit 5, a
    jr z, jr_00c_40bf

    ld a, [$d223]
    dec a
    bit 7, a
    jr z, jr_00c_40aa

    ld a, b

jr_00c_40aa:
    ld b, a
    ld a, [$d223]
    cp b
    jr z, jr_00c_40bd

    ld a, b
    ld [$d223], a
    call Call_00c_4248
    call Call_00c_433a
    rst $08
    ld e, e

jr_00c_40bd:
    jr jr_00c_40ec

jr_00c_40bf:
    bit 4, a
    jr z, jr_00c_40e2

    ld a, [$d223]
    inc a
    inc b
    cp b
    jr c, jr_00c_40cd

    ld a, $00

jr_00c_40cd:
    ld b, a
    ld a, [$d223]
    cp b
    jr z, jr_00c_40e0

    ld a, b
    ld [$d223], a
    call Call_00c_4248
    call Call_00c_433a
    rst $08
    ld e, e

jr_00c_40e0:
    jr jr_00c_40ec

jr_00c_40e2:
    bit 1, a
    jr z, jr_00c_40ec

    rst $08
    ld e, l
    pop af
    ld a, $ff
    push af

jr_00c_40ec:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ret


Call_00c_40f3:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ldh [$8a], a
    ldh [$8b], a
    call Call_000_0341
    call Call_000_23b6
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4b1c
    ld de, $d000
    call Call_000_0234
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4b20
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $8e00
    ld c, $04
    call Call_000_04db
    ld hl, $419b
    ld de, $0801
    call Call_000_0595
    ld hl, $4b1e
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $b000
    ld c, $80
    call Call_000_04db
    ld hl, $d800
    ld de, $a800
    ld c, $80
    call Call_000_04db
    ld hl, $5c00
    ld de, $0008
    call Call_000_0595
    ld hl, $4b18
    ld de, $d300
    call Call_000_0234
    ld hl, $4b1a
    ld de, $d000
    call Call_000_0234
    ld hl, $d022
    ld de, $d322
    ld b, $20
    call Call_00c_4958
    ld hl, $d300
    ld de, $b800
    ld c, $24
    call Call_000_04db
    ld hl, $d000
    ld de, $9800
    ld c, $24
    call Call_000_04db
    call Call_000_0371
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ret


    db $a8, $59, $85, $7e, $ff, $7f, $00, $00

    xor b
    ld e, c
    add l
    ld a, [hl]
    rst $38
    ld a, a
    nop
    nop

Call_00c_41ab:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    cp $06
    jr c, jr_00c_41c0

    xor a
    jr jr_00c_41c2

jr_00c_41c0:
    ld a, $01

jr_00c_41c2:
    ld hl, $d129
    add l
    ld l, a
    jr nc, jr_00c_41ca

    inc h

jr_00c_41ca:
    ld a, c
    add a
    add a
    add a
    add a
    add a
    add l
    ld l, a
    jr nc, jr_00c_41d5

    inc h

jr_00c_41d5:
    ld a, $bf
    ld [hl], $bf
    ld a, $03
    add h
    ld h, a
    ld [hl], $0a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_41e9:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    cp $64
    jr c, jr_00c_41fd

    ld b, $63

jr_00c_41fd:
    ld hl, $d129
    ld a, b
    cp $0a
    jr nc, jr_00c_4206

    inc hl

jr_00c_4206:
    ld a, c
    add a
    add a
    add a
    add a
    add a
    add l
    ld l, a
    jr nc, jr_00c_4211

    inc h

jr_00c_4211:
    push hl
    ld c, $00
    ld d, $00
    ld e, $00
    ld a, b
    cp $0a
    jr c, jr_00c_4227

jr_00c_421d:
    add $f6
    bit 7, a
    jr nz, jr_00c_4226

    inc c
    jr jr_00c_421d

jr_00c_4226:
    ld d, c

jr_00c_4227:
    ld a, c
    add a
    add a
    add a
    add c
    add c
    ld c, a
    ld a, b
    sub c
    ld e, a
    pop hl
    ld a, d
    or a
    jr z, jr_00c_423a

    ld a, d
    add $e6
    ld [hl+], a

jr_00c_423a:
    ld a, e
    add $e6
    ld [hl], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_4248:
    ldh a, [$96]
    push af
    push af
    push bc
    push de
    push hl
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4b18
    ld de, $d300
    call Call_000_0234
    ld hl, $4b1a
    ld de, $d000
    call Call_000_0234
    ld hl, $d16e
    ld [hl], $20
    ld a, $03
    add h
    ld h, a
    ld [hl], $00
    ld hl, $d16f
    ld [hl], $30
    ld a, $03
    add h
    ld h, a
    ld [hl], $00
    ld hl, $d1ee
    ld [hl], $20
    ld a, $03
    add h
    ld h, a
    ld [hl], $00
    ld hl, $d1ef
    ld [hl], $30
    ld a, $03
    add h
    ld h, a
    ld [hl], $00
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d223]
    ld de, $ad60
    call Call_00c_49c1
    call Call_000_2e3b
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d223]
    ld b, a
    push bc
    ld c, $00
    rst $18
    inc l
    dec bc
    ld a, b
    or a
    pop bc
    push bc
    jr z, jr_00c_42c4

    ld c, $06
    call Call_00c_41ab
    ld b, a
    call Call_00c_41e9

jr_00c_42c4:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld d, $06
    ld c, $00
    ld b, $00
    xor a

jr_00c_42d1:
    push bc
    rst $18
    inc l
    dec bc
    add b
    pop bc
    inc b
    dec d
    jr nz, jr_00c_42d1

    push af
    ld h, $00
    ld l, a
    ld a, $02
    ld de, $d16e
    call Call_000_21f0

Jump_00c_42e7:
    ld hl, $d170
    ld [hl], $06
    pop bc
    ld a, $24
    sub b
    ld h, $00
    ld l, a
    ld a, $02
    ld de, $d1ee
    call Call_000_21f0
    ld hl, $d1f0
    ld [hl], $06
    ld hl, $d46e
    ld [hl], $00
    ld hl, $d46f
    ld [hl], $00
    ld hl, $d4ee
    ld [hl], $00
    ld hl, $d4ef
    ld [hl], $00
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    pop bc
    ld d, $00

jr_00c_431d:
    ld c, d
    push bc
    rst $18
    inc l
    dec bc
    ld a, c
    pop bc
    or a
    jr z, jr_00c_432a

    call Call_00c_41ab

jr_00c_432a:
    inc d
    ld a, d
    cp $06
    jr nz, jr_00c_431d

    pop hl
    pop de
    pop bc
    pop af
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_00c_433a:
    ldh a, [$96]
    push af
    push af
    push bc
    push de
    push hl
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d300
    ld de, $b800
    ld c, $24
    call Call_000_0468
    call Call_000_2e3b
    ld hl, $d000
    ld de, $9800
    ld c, $24
    call Call_000_0468
    pop hl
    pop de
    pop bc
    pop af
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_00c_436a:
    ld a, [$c4b2]
    rrca
    rrca
    rrca
    and $0f
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, $e0
    add l
    ld l, a
    ld a, h
    adc $43
    ld h, a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    push hl
    ld hl, $d23e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    pop hl
    push hl
    ld c, $02
    call Call_000_0468
    pop hl
    ld de, $0200
    add hl, de
    push hl
    ld hl, $d240
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    pop hl
    ld c, $02
    call Call_000_0468
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $8fc0
    ld a, l
    ld [$d23e], a
    ld a, h
    ld [$d23f], a
    ld hl, $8fe0
    ld a, l
    ld [$d240], a
    ld a, h
    ld [$d241], a
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    call Call_00c_436a
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
    rlca
    inc bc
    rra
    inc c
    inc sp
    inc e
    ld h, $39
    ld a, h
    inc hl
    ld a, h
    ld b, e
    ld e, [hl]
    ld h, c
    nop
    nop
    ldh [$c0], a
    ld hl, sp+$30
    call z, Call_00c_6438
    sbc h
    ld a, $c4
    ld a, $c2
    ld a, d

jr_00c_43ff:
    add [hl]
    rlca
    inc bc
    nop
    nop
    inc bc
    ld bc, $060f
    add hl, de
    ld c, $13
    inc e
    ld a, $11
    ld a, $21
    ld hl, sp-$10
    nop
    nop
    ldh a, [$e0]
    db $fc
    jr jr_00c_43ff

    inc e
    ld [hl-], a
    adc $1f
    ld [c], a
    rra
    pop hl
    ld b, $03
    inc bc
    ld bc, $0000
    ld bc, $0700
    inc bc
    inc c
    rlca
    add hl, bc
    ld c, $9f
    ld [$fc06], sp
    db $fc
    ld hl, sp+$00
    nop
    ld hl, sp-$10
    cp $0c
    di
    ld c, $99
    ld h, a
    rrca
    pop af
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0386
    add h
    add a

Jump_00c_4450:
    ld bc, $03ff
    cp $fe
    db $fc
    nop
    nop
    db $fc
    ld a, b
    rst $38
    add [hl]
    ld a, c
    add a
    call z, $c333
    add c
    add c
    add c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    jp $2481


    rst $38
    nop
    rst $38
    add c
    rst $38
    rst $38
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    inc a
    rst $38
    jp $c33c


    di
    pop hl
    ld h, c
    ret nz

    ld b, b
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ret nz

    add b
    jp nc, $92ff

    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ld a, a
    ccf
    nop
    nop
    ccf
    ld e, $ff
    ld h, c
    ld sp, hl
    sbc c
    ld a, c
    ldh a, [$30]
    ldh [rNR41], a
    ldh [$60], a
    ret nz

    ret nz

    add b
    nop
    nop
    add b
    nop
    rst $38
    sbc a
    jp hl


    rst $38
    ret


    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ccf
    ccf
    rra
    nop
    nop
    rra
    rrca
    db $e4
    inc e
    db $fc
    call z, $f8bc
    sbc b
    ldh a, [rNR10]
    ldh a, [$30]
    ldh [$e0], a
    ret nz

    nop
    nop
    sbc a
    ldh [rIE], a
    rst $08
    db $f4
    ld a, a
    ld h, h
    ccf
    jr nz, jr_00c_4519

    jr nc, jr_00c_44fb

    rra
    rrca
    nop
    nop
    ld a, [c]
    ld c, $f2
    ld c, $fe
    and $5e
    db $fc
    ld c, h
    ld hl, sp+$08
    ld hl, sp+$18
    ldh a, [$f0]
    ldh [rVBK], a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld a, a
    ld h, a
    ld a, d
    ccf
    ld [hl-], a
    rra
    db $10

jr_00c_44fb:
    rra
    jr jr_00c_450d

    rrca
    rlca
    dec a
    jp Jump_000_07f9


    ld sp, hl
    rlca
    rst $38
    di
    cpl
    cp $26
    db $fc
    inc b

jr_00c_450d:
    db $fc
    inc c
    ld hl, sp+$2f
    jr nc, jr_00c_453a

    jr c, jr_00c_453c

    jr c, @+$41

    inc sp
    dec a

jr_00c_4519:
    rra
    add hl, de
    rrca
    ld [$0c0f], sp
    rlca
    rrca
    ldh a, [$9e]
    ld h, c
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    ld sp, hl
    sub a
    rst $38
    sub e
    cp $02
    cp $9f
    sub b
    sub a
    sbc b
    sub e
    sbc h
    sub e
    sbc h
    sbc a
    sbc c

jr_00c_453a:
    sbc [hl]
    rrca

jr_00c_453c:
    inc c
    rlca
    inc b
    rlca
    add a
    ld a, b
    add a
    ld a, b
    rst $08

jr_00c_4545:
    jr nc, jr_00c_4545

    ld bc, $01fe
    rst $38
    db $fc
    ld c, e
    rst $38
    ld c, c
    rst $38
    rst $08
    add h
    rst $08
    ld c, b
    ld c, e
    call z, $ce49
    ld c, c
    adc $cf
    call z, $87cf
    add [hl]
    inc bc
    ld h, [hl]
    sbc c
    jp $c33c


    inc a
    rst $20
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    and l
    rst $38
    ld b, d
    jp Jump_00c_42e7


    rst $20
    inc h
    and l
    ld h, [hl]
    inc h
    rst $20
    inc h
    rst $20
    rst $20
    ld h, [hl]
    rst $20
    jp $e19e


    inc sp
    call z, Call_000_1ee1
    pop hl
    ld e, $f3
    inc c
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ccf
    ld h, c
    ret nz

    ld hl, $f3e1
    ld hl, $12f3
    jp nc, $9233

    ld [hl], e
    sub d
    ld [hl], e
    di
    inc sp
    ld a, a
    jr nc, @-$2f

    ld [hl], b
    sbc c
    and $f0
    adc a
    ldh a, [rIF]
    ld a, c
    add [hl]
    ccf
    ret nz

    ccf
    ret nz

    ldh [$c0], a
    jr nc, @-$1e

    sub b
    ld [hl], b
    ld sp, hl
    db $10
    ld sp, hl
    add hl, bc
    jp hl


    add hl, de
    ret


    add hl, sp
    ret


    add hl, sp
    rrca
    rlca
    ccf
    jr jr_00c_462c

    jr c, @+$4e

    ld [hl], e
    ld hl, sp+$47
    ld hl, sp-$79
    cp h
    jp $e09f


    ret nz

    add b
    ldh a, [$60]
    sbc b
    ld [hl], b
    ret z

    jr c, jr_00c_4655

    adc b
    ld a, h
    add h
    db $f4
    inc c
    db $e4
    inc e
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld a, a
    ld h, a
    ld a, d
    ccf
    ld [hl-], a
    rra
    db $10
    rra
    jr jr_00c_45fd

    rrca
    rlca
    ld a, [c]
    ld c, $f2
    ld c, $fe
    and $5e
    db $fc
    ld c, h
    ld hl, sp+$08
    ld hl, sp+$18

jr_00c_45fd:
    ldh a, [$f0]
    ldh [$2f], a
    jr nc, jr_00c_462a

    jr c, jr_00c_462c

    jr c, @+$41

    inc sp
    dec a
    rra
    add hl, de
    rrca
    ld [$0c0f], sp
    rlca
    dec a
    jp Jump_000_07f9


    ld sp, hl
    rlca
    rst $38
    di
    cpl
    cp $26
    db $fc
    inc b
    db $fc
    inc c
    ld hl, sp-$61
    sub b
    sub a
    sbc b
    sub e
    sbc h
    sub e
    sbc h
    sbc a
    sbc c

jr_00c_462a:
    sbc [hl]
    rrca

jr_00c_462c:
    inc c
    rlca
    inc b
    rlca
    rrca
    ldh a, [$9e]
    ld h, c
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    ld sp, hl
    sub a
    rst $38
    sub e
    cp $02
    cp $cf
    add h
    rst $08
    ld c, b
    ld c, e
    call z, $ce49
    ld c, c
    adc $cf
    call z, $87cf
    add [hl]
    inc bc
    add a
    ld a, b
    add a
    ld a, b
    rst $08

jr_00c_4655:
    jr nc, jr_00c_4655

    ld bc, $01fe
    rst $38
    db $fc
    ld c, e
    rst $38
    ld c, c
    rst $38
    ld b, d
    jp Jump_00c_42e7


    rst $20
    inc h
    and l
    ld h, [hl]
    inc h
    rst $20
    inc h
    rst $20
    rst $20
    ld h, [hl]
    rst $20
    jp $9966


    jp $c33c


    inc a
    rst $20
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    ld a, [hl]
    and l
    rst $38
    ld h, c
    ret nz

jr_00c_4682:
    ld hl, $f3e1
    ld hl, $12f3
    jp nc, $9233

    ld [hl], e
    sub d
    ld [hl], e
    di
    inc sp
    sbc [hl]
    pop hl
    inc sp
    call z, Call_000_1ee1
    pop hl
    ld e, $f3
    inc c
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ccf
    ldh [$c0], a
    jr nc, @-$1e

    sub b
    ld [hl], b
    ld sp, hl
    db $10
    ld sp, hl
    add hl, bc
    jp hl


    add hl, de
    ret


    add hl, sp
    ret


    add hl, sp
    ld a, a
    jr nc, jr_00c_4682

    ld [hl], b
    sbc c
    and $f0
    adc a
    ldh a, [rIF]
    ld a, c
    add [hl]
    ccf
    ret nz

    ccf
    ret nz

    ret nz

    add b
    ldh a, [$60]
    sbc b
    ld [hl], b
    ret z

    jr c, jr_00c_4745

    adc b
    ld a, h
    add h
    db $f4
    inc c
    db $e4
    inc e
    rrca
    rlca
    ccf
    jr jr_00c_473c

    jr c, jr_00c_4723

    ld [hl], e
    ld hl, sp+$47
    ld hl, sp-$79
    cp h
    jp $e09f


    nop
    nop
    ldh [$c0], a
    ld hl, sp+$30
    call z, Call_00c_6438
    sbc h
    ld a, $c4
    ld a, $c2
    ld a, d

jr_00c_46ef:
    add [hl]
    nop
    nop
    rlca
    inc bc
    rra
    inc c
    inc sp
    inc e
    ld h, $39
    ld a, h
    inc hl
    ld a, h
    ld b, e
    ld e, [hl]
    ld h, c
    ld hl, sp-$10
    nop
    nop
    ldh a, [$e0]
    db $fc
    jr jr_00c_46ef

    inc e
    ld [hl-], a
    adc $1f
    ld [c], a
    rra
    pop hl
    rlca
    inc bc
    nop
    nop
    inc bc
    ld bc, $060f
    add hl, de
    ld c, $13
    inc e
    ld a, $11
    ld a, $21
    ld b, $fc
    db $fc

jr_00c_4723:
    ld hl, sp+$00
    nop
    ld hl, sp-$10
    cp $0c
    di
    ld c, $99
    ld h, a
    rrca
    pop af
    ld b, $03
    inc bc
    ld bc, $0000
    ld bc, $0700
    inc bc
    inc c
    rlca

jr_00c_473c:
    add hl, bc
    ld c, $9f
    ld [$ff01], sp
    inc bc
    cp $fe

jr_00c_4745:
    db $fc
    nop
    nop
    db $fc
    ld a, b
    rst $38
    add [hl]
    ld a, c
    add a
    call z, Call_000_0233
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0386
    add h
    add a
    inc h
    rst $38
    nop
    rst $38
    add c
    rst $38
    rst $38
    ld a, [hl]
    nop
    nop
    ld a, [hl]
    inc a
    rst $38
    jp $c33c


    jp $8181


    add c
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    jp $d281


    rst $38
    sub d
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ld a, a
    ccf
    nop
    nop
    ccf
    ld e, $ff
    ld h, c
    di
    pop hl
    ld h, c
    ret nz

    ld b, b
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ret nz

    add b
    rst $38
    sbc a
    jp hl


    rst $38
    ret


    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ccf
    ccf
    rra
    nop
    nop
    rra
    rrca
    ld sp, hl
    sbc c
    ld a, c
    ldh a, [$30]
    ldh [rNR41], a
    ldh [$60], a
    ret nz

    ret nz

    add b
    nop
    nop
    add b
    nop
    sbc a
    ldh [rIE], a
    rst $08
    db $f4
    ld a, a
    ld h, h
    ccf
    jr nz, @+$41

    jr nc, jr_00c_47eb

    rra
    rrca
    nop
    nop
    db $e4
    inc e
    db $fc
    call z, $f8bc
    sbc b
    ldh a, [rNR10]
    ldh a, [$30]
    ldh [$e0], a
    ret nz

    nop
    nop

Call_00c_47e0:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a

jr_00c_47eb:
    ldh [rSVBK], a
    ld a, [$c4b2]
    rrca
    rrca
    rrca
    and $03
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $d000
    add hl, de
    push hl
    ld de, $ad40
    ld c, $02
    call Call_000_0468
    pop hl
    ld de, $0080
    add hl, de
    ld de, $ae40
    ld c, $02
    call Call_000_0468
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $b1c0
    ld a, l
    ld [$d23e], a
    ld a, h
    ld [$d23f], a
    ld hl, $b1e0
    ld a, l
    ld [$d240], a
    ld a, h
    ld [$d241], a
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    call Call_00c_436a
    call Call_00c_47e0
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, [$c4b2]
    rrca
    rrca
    and $07
    ld hl, $4950
    add l
    ld l, a
    jr nc, jr_00c_4868

    inc h

jr_00c_4868:
    ld a, [hl]
    push af
    ld hl, $4947
    ld de, $0a1c
    pop bc
    ld a, d
    sub b
    ld d, a
    push bc
    ld bc, $00e0
    call Call_000_26ea
    ld hl, $4947
    ld de, $961c
    pop af
    add d
    ld d, a
    ld bc, $20e0
    call Call_000_26ea
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
    ldh a, [$96]
    push af
    ld a, [$c4b2]
    rrca
    rrca
    and $07
    ld hl, $4950
    add l
    ld l, a
    jr nc, jr_00c_48aa

    inc h

jr_00c_48aa:
    ld a, [hl]
    push af
    ld hl, $4947
    ld de, $0a14
    pop bc
    ld a, d
    sub b
    ld d, a
    push bc
    ld bc, $00e0
    call Call_000_26a4
    ld hl, $4947
    ld de, $9614
    pop af
    add d
    ld d, a
    ld bc, $20e0
    call Call_000_26a4
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
    ldh a, [$96]
    push af
    ld a, [$c4b2]
    rrca
    rrca
    and $07
    ld hl, $4950
    add l
    ld l, a
    jr nc, jr_00c_48ec

    inc h

jr_00c_48ec:
    ld a, [hl]
    add a
    add a
    add a
    add a
    add a
    push af
    ld a, [$c320]
    ld h, a
    ld a, [$c321]
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $0140
    add hl, de
    ld de, $0280
    pop bc
    push bc
    ld a, l
    sub b
    ld l, a
    ld a, h
    sbc $00
    ld h, a
    ld bc, $00e0
    call Call_000_27b4
    ld a, [$c320]
    ld h, a
    ld a, [$c321]
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $12c0
    add hl, de
    ld de, $0280
    pop af
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld bc, $20e0
    call Call_000_27b4
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
    ld [$0002], sp
    add b

    db $00, $01, $02, $03, $04, $03, $02, $01

Call_00c_4958:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    push de
    push hl
    pop de
    call Call_00c_499a
    pop de
    call Call_00c_4973
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_4973:
    ldh a, [$96]
    push af
    ld hl, $4b08
    call Call_000_0234
    ld h, $00
    ld l, b
    add hl, de
    ld d, h
    ld e, l
    ld hl, $4b0a
    call Call_000_0234
    ld h, $00
    ld l, b
    add hl, de
    ld d, h
    ld e, l
    ld hl, $4b0c
    call Call_000_0234
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_00c_499a:
    ldh a, [$96]
    push af
    ld hl, $4b02
    call Call_000_0234
    ld h, $00
    ld l, b
    add hl, de
    ld d, h
    ld e, l
    ld hl, $4b04
    call Call_000_0234
    ld h, $00
    ld l, b
    add hl, de
    ld d, h
    ld e, l
    ld hl, $4b06
    call Call_000_0234
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_00c_49c1:
    push af
    push bc
    push de
    push hl
    ld b, a
    ldh a, [$96]
    push af
    ld a, b
    push de
    push af
    ld a, a
    ld de, $0d02
    call Call_000_22a5
    pop af
    pop de
    add a
    ld hl, $4a07
    add l
    ld l, a
    jr nc, jr_00c_49de

    inc h

jr_00c_49de:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2e3b
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    push de
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    pop de
    ld c, $0a
    call Call_000_0468
    call Call_000_2e3b
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    inc h
    ld b, b
    ld h, $40
    jr z, jr_00c_4a4d

    ld a, [hl+]
    ld b, b
    inc l
    ld b, b
    ld l, $40
    jr nc, @+$42

    push bc
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d214], a
    ld [$d215], a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d23b]
    or a
    jr nz, jr_00c_4a4f

    rst $18
    jr z, jr_00c_4a3d

    call Call_000_2b54
    rst $18
    ld l, $0b
    ld a, $14
    ld [$d215], a

jr_00c_4a3d:
    ld a, [$d226]
    ld [$d226], a
    ld [$d214], a
    ld b, a
    rst $18
    ld a, [hl+]
    dec bc
    ld hl, $d224

jr_00c_4a4d:
    jr jr_00c_4a5d

jr_00c_4a4f:
    rst $18

    db $30, $0b

    ld a, $14
    ld [$d215], a
    ld a, [$d226]
    ld [$d214], a

jr_00c_4a5d:
    pop bc
    push bc
    call Call_00c_4aab
    ld a, $0f
    ld hl, $4c63
    call Call_000_23e8
    ld a, [$d226]
    or a
    jr z, jr_00c_4a78

    ld a, $1d
    ld hl, $48d6
    call Call_000_23e8

jr_00c_4a78:
    call Call_000_2e3b
    ld c, $10
    call Call_000_25af
    call Call_000_2625
    pop bc

jr_00c_4a84:
    call Call_000_2e3b
    call Call_00c_4ba8
    cp $ff
    jr nz, jr_00c_4a84

    push af
    ld hl, $4c63
    call Call_000_2449
    ld a, [$d226]
    or a
    jr z, jr_00c_4aa1

    ld hl, $48d6
    call Call_000_2449

jr_00c_4aa1:
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    pop af
    ret


Call_00c_4aab:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $3f
    ld [$c32c], a
    xor a
    ld [$c320], a
    ld [$c322], a
    ld [$c323], a
    ldh [$b9], a
    ldh [$8a], a
    ld a, [$d215]
    or a
    jr z, jr_00c_4acc

    ld a, $14

jr_00c_4acc:
    ldh [$8b], a
    ld [$c321], a
    ldh [$b8], a
    call Call_000_0341
    call Call_000_23b6
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4b20
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $8e00
    ld c, $04
    call Call_000_04db
    ld hl, $419b
    ld de, $0801
    call Call_000_0595
    ld hl, $4b0e
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $b000
    ld c, $80
    call Call_000_04db
    ld hl, $d800
    ld de, $a800
    ld c, $80
    call Call_000_04db
    ld hl, $4b68
    ld de, $0008
    call Call_000_0595
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4b12
    ld de, $d000
    call Call_000_0234
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4b10
    ld de, $d000
    call Call_000_0234
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d23b]
    or a
    jr nz, jr_00c_4b53

    call Call_00c_4d08
    jr z, jr_00c_4b56

jr_00c_4b53:
    call Call_00c_52a2

jr_00c_4b56:
    ld a, $01
    rst $18

    db $04, $0b

    rst $18

    db $3c, $04

    call Call_000_0371
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ret


    db $e0, $7f, $ff, $6b, $58, $1e, $00, $00, $7f, $27, $9d, $32, $7f, $63, $1b, $3a
    db $08, $25, $08, $25, $08, $25, $08, $25, $4b, $7f, $ff, $6b, $e7, $07, $00, $00
    db $bf, $23, $ff, $6b, $3f, $55, $00, $00, $1f, $23, $ff, $6b, $dc, $01, $00, $00
    db $dc, $32, $ff, $6b, $56, $21, $00, $00, $d6, $62, $ff, $6b, $ce, $49, $00, $00

Call_00c_4ba8:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    push bc
    ld a, $00
    push af
    ld a, [$d226]
    ld b, a
    ldh a, [$91]
    bit 5, a
    jr z, jr_00c_4bd8

    ld a, [$d214]
    dec a
    bit 7, a
    jr z, jr_00c_4bc5

    ld a, b

jr_00c_4bc5:
    ld b, a
    ld a, [$d214]
    cp b
    jr z, jr_00c_4bd5

    ld a, b
    ld [$d214], a
    rst $08
    ld e, e
    call Call_00c_4c89

jr_00c_4bd5:
    jp Jump_00c_4c5d


jr_00c_4bd8:
    bit 4, a
    jr z, jr_00c_4bf9

    ld a, [$d214]
    inc a
    inc b
    cp b
    jr c, jr_00c_4be6

    ld a, $00

jr_00c_4be6:
    ld b, a
    ld a, [$d214]
    cp b
    jr z, jr_00c_4bf6

    ld a, b
    ld [$d214], a
    rst $08

    db $5b

    call Call_00c_4c89

jr_00c_4bf6:
    jp Jump_00c_4c5d


jr_00c_4bf9:
    ldh a, [$90]
    bit 6, a
    jr z, jr_00c_4c18

    ld hl, $c322
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $ff80
    add hl, de
    bit 7, h
    jp nz, Jump_00c_4c5d

    ld a, l
    ld [$c322], a
    ld a, h
    ld [$c323], a
    jr jr_00c_4c5d

jr_00c_4c18:
    bit 7, a
    jr z, jr_00c_4c4b

    ld hl, $c322
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0080
    add hl, de
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d215]
    or a
    jr nz, jr_00c_4c36

    ld b, $2a
    jr jr_00c_4c38

jr_00c_4c36:
    ld b, $35

jr_00c_4c38:
    ld a, [$c32c]
    sub b
    ld e, a
    ld a, h
    cp e
    jr nc, jr_00c_4c5d

    ld a, l
    ld [$c322], a
    ld a, h
    ld [$c323], a
    jr jr_00c_4c5d

jr_00c_4c4b:
    bit 0, a
    jr z, jr_00c_4c51

    jr jr_00c_4c5d

jr_00c_4c51:
    bit 1, a
    jr z, jr_00c_4c5d

    pop af
    rst $08

    db $5d

    ld a, $ff
    push af
    jr jr_00c_4c5d

Jump_00c_4c5d:
jr_00c_4c5d:
    rst $18

    db $3c, $04

    pop af
    pop bc
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $b620
    ld a, l
    ld [$d23e], a
    ld a, h
    ld [$d23f], a
    ld hl, $b640
    ld a, l
    ld [$d240], a
    ld a, h
    ld [$d241], a
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    call Call_00c_436a
    ret


Call_00c_4c89:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    call Call_000_2e3b
    ld c, $18
    call Call_000_25a1
    call Call_000_2625
    call Call_000_0341
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d214]
    ld b, a
    ld a, [$d226]
    cp b
    jr z, jr_00c_4cb1

    xor a
    jr z, jr_00c_4cb3

jr_00c_4cb1:
    ld a, $14

jr_00c_4cb3:
    ld [$d215], a
    xor a
    ld [$c320], a
    ld [$c322], a
    ld [$c323], a
    ldh [$b9], a
    ldh [$8a], a
    ld a, [$d215]
    or a
    jr z, jr_00c_4ccc

    ld a, $14

jr_00c_4ccc:
    ldh [$8b], a
    ld [$c321], a
    ldh [$b8], a
    ld a, [$d23b]
    or a
    jr nz, jr_00c_4cde

    call Call_00c_4d08
    jr jr_00c_4ce1

jr_00c_4cde:
    call Call_00c_52a2

jr_00c_4ce1:
    ld a, $0a
    ld [$c323], a
    rst $18

    db $3c, $04

    xor a
    ld [$c323], a
    rst $18

    db $3c, $04

    call Call_000_0371
    call Call_000_2e3b
    ld c, $18
    call Call_000_25af
    call Call_000_2625
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_4d08:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    call Call_00c_5665
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d215]
    or a
    jr nz, jr_00c_4d23

    ld a, [$d214]
    jr jr_00c_4d25

jr_00c_4d23:
    ld a, $06

jr_00c_4d25:
    ld b, a
    rst $18
    ld a, [hl+]
    dec bc
    ld hl, $d224
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d215]
    or a
    jr nz, jr_00c_4d43

    ld c, $00
    rst $18
    ld b, d
    dec bc
    jr jr_00c_4d5f

jr_00c_4d43:
    xor a
    ld c, $00
    ld d, $06

jr_00c_4d48:
    push bc
    ld b, c
    push af
    push bc
    push de
    push hl
    rst $18
    ld a, [hl+]
    dec bc
    pop hl
    pop de
    pop bc
    pop af
    rst $18
    ld b, d
    dec bc
    add b
    pop bc
    ld b, a
    inc c
    dec d
    jr nz, jr_00c_4d48

jr_00c_4d5f:
    ld h, $00
    ld l, b
    ld a, b
    or a
    jr z, jr_00c_4d93

    ld a, [$d215]
    ld de, $d610
    add e
    ld e, a
    jr nc, jr_00c_4d71

    inc d

jr_00c_4d71:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $03
    call Call_000_21f0
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d214]
    ld b, a
    rst $18
    ld a, [hl+]
    dec bc
    call Call_00c_50c4
    ld a, e
    or a
    jr nz, jr_00c_4d93

    call Call_00c_5100

jr_00c_4d93:
    pop hl
    push hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, h
    or l
    jr nz, jr_00c_4da6

    pop hl
    jp Jump_00c_4fef


jr_00c_4da6:
    ld a, [$d215]
    ld de, $d110
    add e
    ld e, a
    jr nc, jr_00c_4db1

    inc d

jr_00c_4db1:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $03
    call Call_000_21f0
    pop hl
    push hl
    ld a, $02
    add l
    ld l, a
    jr nc, jr_00c_4dc5

    inc h

jr_00c_4dc5:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    call Call_00c_51b1
    ld a, [$d215]
    ld hl, $d18f
    add l
    ld l, a
    jr nc, jr_00c_4dda

    inc h

jr_00c_4dda:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    push bc
    ld d, h
    ld e, l
    ld h, $00
    ld l, c
    ld a, $04
    call Call_000_21f0
    pop bc
    ld a, c
    cp $0a
    jr c, jr_00c_4dfd

    cp $64
    jr c, jr_00c_4df9

    ld l, $8f
    jr jr_00c_4dff

jr_00c_4df9:
    ld l, $90
    jr jr_00c_4dff

jr_00c_4dfd:
    ld l, $91

jr_00c_4dff:
    ld h, $d1
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d215]
    add l
    ld l, a
    jr nc, jr_00c_4e0f

    inc h

jr_00c_4e0f:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ld [hl], a
    pop hl
    push hl
    ld a, $03
    add l
    ld l, a
    jr nc, jr_00c_4e20

    inc h

jr_00c_4e20:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld h, $00
    ld a, [$d215]
    ld de, $d20e
    add e
    ld e, a
    jr nc, jr_00c_4e36

    inc d

jr_00c_4e36:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $05
    call Call_000_21f0
    pop hl
    push hl
    ld a, $04
    add l
    ld l, a
    jr nc, jr_00c_4e4a

    inc h

jr_00c_4e4a:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d215]
    ld de, $d28d
    add e
    ld e, a
    jr nc, jr_00c_4e5e

    inc d

jr_00c_4e5e:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $05
    call Call_000_21f0
    pop hl
    push hl
    ld a, $06
    add l
    ld l, a
    jr nc, jr_00c_4e72

    inc h

jr_00c_4e72:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$d215]
    ld de, $d30d
    add e
    ld e, a
    jr nc, jr_00c_4e86

    inc d

jr_00c_4e86:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $05
    call Call_000_21f0
    pop hl
    push hl
    ld a, $08
    add l
    ld l, a
    jr nc, jr_00c_4e9a

    inc h

jr_00c_4e9a:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld h, $00
    ld a, [$d215]
    ld de, $d38d
    add e
    ld e, a
    jr nc, jr_00c_4eb0

    inc d

jr_00c_4eb0:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $05
    call Call_000_21f0
    pop hl
    push hl
    ld a, $09
    add l
    ld l, a
    jr nc, jr_00c_4ec4

    inc h

jr_00c_4ec4:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    push af
    ld c, $00

jr_00c_4ece:
    cp $0a
    jr c, jr_00c_4ed7

    inc c
    add $f6
    jr jr_00c_4ece

jr_00c_4ed7:
    ld a, c
    add a
    add a
    add a
    add c
    add c
    ld c, a
    ld h, $00
    ld l, c
    push bc
    ld a, [$d215]
    ld de, $d410
    add e
    ld e, a
    jr nc, jr_00c_4eed

    inc d

jr_00c_4eed:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    call Call_000_21f0
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d215]
    ld hl, $d411
    add l
    ld l, a
    jr nc, jr_00c_4f09

    inc h

jr_00c_4f09:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld [hl], $2e
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    pop bc
    pop af
    sub c
    ld h, $00
    ld l, a
    ld a, [$d215]
    ld de, $d412
    add e
    ld e, a
    jr nc, jr_00c_4f28

    inc d

jr_00c_4f28:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    call Call_000_21f0
    pop hl
    push hl
    ld a, $0a
    add l
    ld l, a
    jr nc, jr_00c_4f3c

    inc h

jr_00c_4f3c:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld h, $00
    ld a, [$d215]
    ld de, $d48d
    add e
    ld e, a
    jr nc, jr_00c_4f52

    inc d

jr_00c_4f52:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $05
    call Call_000_21f0
    pop hl
    push hl
    ld a, $0b
    add l
    ld l, a
    jr nc, jr_00c_4f66

    inc h

jr_00c_4f66:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld h, $00
    ld a, [$d215]
    ld de, $d50d
    add e
    ld e, a
    jr nc, jr_00c_4f7c

    inc d

jr_00c_4f7c:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $05
    call Call_000_21f0
    pop hl
    ld a, $0c
    add l
    ld l, a
    jr nc, jr_00c_4f8f

    inc h

jr_00c_4f8f:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld h, $00
    ld a, [$d215]
    ld de, $d58d
    add e
    ld e, a
    jr nc, jr_00c_4fa5

    inc d

jr_00c_4fa5:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $05
    call Call_000_21f0
    call Call_00c_5001
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d215]
    or a
    jr nz, jr_00c_4fef

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d224
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $0d
    add l
    ld l, a
    jr nc, jr_00c_4fd2

    inc h

jr_00c_4fd2:
    ld a, [hl]
    bit 2, a
    jr z, jr_00c_4fdc

    ld c, $00
    call Call_00c_51d2

jr_00c_4fdc:
    bit 1, a
    jr z, jr_00c_4fe5

    ld c, $01
    call Call_00c_51d2

jr_00c_4fe5:
    bit 0, a
    jp z, Jump_00c_4fef

    ld c, $02
    call Call_00c_51d2

Jump_00c_4fef:
jr_00c_4fef:
    ld a, $01
    rst $18
    inc b
    dec bc
    rst $18
    inc a
    inc b
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_5001:
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d215]
    ld d, $00
    ld e, a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld hl, $d110
    add hl, de
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $d18f
    add hl, de
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $d20e
    add hl, de
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $d28d
    add hl, de
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $d30d
    add hl, de
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $d38d
    add hl, de
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $d410
    add hl, de
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $d48d
    add hl, de
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $d50d
    add hl, de
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $d58d
    add hl, de
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d215]
    ld d, $00
    ld e, a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $06
    ld hl, $d193
    add hl, de
    ld [hl], a
    ld hl, $d213
    add hl, de
    ld [hl], a
    ld hl, $d413
    add hl, de
    ld [hl], a
    ld hl, $d113
    add hl, de
    ld [hl], a
    ld hl, $d413
    add hl, de
    ld [hl], a
    ld a, $38
    ld hl, $d292
    add hl, de
    ld [hl], a
    ld hl, $d312
    add hl, de
    ld [hl], a
    ld a, $37
    ld hl, $d392
    add hl, de
    ld [hl], a
    ld hl, $d492
    add hl, de
    ld [hl], a
    ld hl, $d512
    add hl, de
    ld [hl], a
    ld hl, $d592
    add hl, de
    ld [hl], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_00c_50c4:
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d215]
    ld d, $00
    ld e, a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld hl, $d610
    add hl, de
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d215]
    ld d, $00
    ld e, a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $06
    ld hl, $d613
    add hl, de
    ld [hl], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_00c_5100:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $00
    ld hl, $d706

jr_00c_5112:
    ld d, c
    rst $18
    ld b, d
    dec bc
    ld a, c
    or a
    jr z, jr_00c_511d

    ld a, $4e
    ld [hl], a

jr_00c_511d:
    ld a, $40
    add l
    ld l, a
    jr nc, jr_00c_5124

    inc h

jr_00c_5124:
    ld c, d
    inc c
    ld a, c
    cp $09
    jr nz, jr_00c_5112

    ld c, $09
    ld hl, $d70c

jr_00c_5130:
    ld d, c
    rst $18
    ld b, d
    dec bc
    ld a, c
    or a
    jr z, jr_00c_513b

    ld a, $4e
    ld [hl], a

jr_00c_513b:
    ld a, $40
    add l
    ld l, a
    jr nc, jr_00c_5142

    inc h

jr_00c_5142:
    ld c, d
    inc c
    ld a, c
    cp $12
    jr nz, jr_00c_5130

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_5153:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d214]
    ld h, a
    inc h
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld l, $01
    ld de, $d706

jr_00c_5170:
    rst $18
    ld c, h
    ld [bc], a
    jr z, jr_00c_517c

    push hl
    ld h, d
    ld l, e
    ld a, $4e
    ld [hl], a
    pop hl

jr_00c_517c:
    ld a, $40
    add e
    ld e, a
    jr nc, jr_00c_5183

    inc d

jr_00c_5183:
    inc l
    ld a, l
    cp $0a
    jr nz, jr_00c_5170

    ld l, $0a
    ld de, $d70c

jr_00c_518e:
    rst $18
    ld c, h
    ld [bc], a
    jr z, jr_00c_519a

    push hl
    ld h, d
    ld l, e
    ld a, $4e
    ld [hl], a
    pop hl

jr_00c_519a:
    ld a, $40
    add e
    ld e, a
    jr nc, jr_00c_51a1

    inc d

jr_00c_51a1:
    inc l
    ld a, l
    cp $13
    jr nz, jr_00c_518e

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_51b1:
    push af
    push hl
    push de
    ld b, a
    sub $36
    or a
    jr z, jr_00c_51c9

    bit 7, a
    jr nz, jr_00c_51c2

    ld b, $2b
    jr jr_00c_51cd

jr_00c_51c2:
    ld a, $36
    sub b
    ld b, $2d
    jr jr_00c_51cd

jr_00c_51c9:
    ld b, $60
    jr jr_00c_51cd

jr_00c_51cd:
    ld c, a
    pop de
    pop hl
    pop af
    ret


Call_00c_51d2:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld hl, $5287
    ld a, c
    add a
    add l
    ld l, a
    jr nc, jr_00c_51e3

    inc h

jr_00c_51e3:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    ld hl, $529f
    ld a, c
    add l
    ld l, a
    jr nc, jr_00c_51f1

    inc h

jr_00c_51f1:
    ld a, [hl]
    ld b, a
    ld hl, $528d
    ld a, c
    add a
    add a
    add c
    add c
    add l
    ld l, a
    jr nc, jr_00c_5200

    inc h

jr_00c_5200:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    push hl
    ld h, d
    ld l, e
    ld [hl], a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld [hl], b
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    ld a, [hl+]
    push hl
    ld h, d
    ld l, e
    inc hl
    ld [hl], a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld [hl], b
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    ld a, [hl+]
    push hl
    ld h, $00
    ld l, $40
    add hl, de
    ld d, h
    ld e, l
    ld [hl], a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld [hl], b
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    ld a, [hl+]
    push hl
    ld h, d
    ld l, e
    inc hl
    ld [hl], a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld [hl], b
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    ld a, [hl+]
    push hl
    ld h, $00
    ld l, $40
    add hl, de
    ld d, h
    ld e, l
    ld [hl], a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld [hl], b
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    ld a, [hl+]
    ld h, d
    ld l, e
    inc hl
    ld [hl], a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld [hl], b
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    rst $08
    rst $10
    adc [hl]
    ret c

    sub b
    ret c

    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], d
    ld [hl], e
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    dec c
    rrca
    db $0e

Call_00c_52a2:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    call Call_00c_5665
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    call Call_00c_579d
    ld h, $00
    ld l, e
    ld a, e
    or a
    jr z, jr_00c_52e8

    ld a, [$d215]
    ld de, $d610
    add e
    ld e, a
    jr nc, jr_00c_52c7

    inc d

jr_00c_52c7:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $03
    call Call_000_21f0
    call Call_00c_50c4
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d226]
    ld b, a
    ld a, [$d214]
    cp b
    jr z, jr_00c_52e8

    call Call_00c_5153

jr_00c_52e8:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d214]
    push af
    ld a, [$d226]
    ld b, a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ld c, a
    push bc
    call Call_00c_5820
    ld a, h
    or l
    pop bc
    jp z, Jump_00c_55a5

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d215]
    ld de, $d110
    add e
    ld e, a
    jr nc, jr_00c_5319

    inc d

jr_00c_5319:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $03
    call Call_000_21f0
    ld a, c
    push af
    call Call_00c_5843
    push hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d215]
    ld hl, $d18f
    add l
    ld l, a
    jr nc, jr_00c_533b

    inc h

jr_00c_533b:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, d
    cp $02
    jr z, jr_00c_5352

    cp $01
    jr z, jr_00c_534e

    ld a, $2b
    jr jr_00c_5354

jr_00c_534e:
    ld a, $2d
    jr jr_00c_5354

jr_00c_5352:
    ld a, $60

jr_00c_5354:
    ld d, h
    ld e, l
    pop hl
    push af
    push hl
    ld a, $04
    call Call_000_21f0
    pop hl
    ld a, l
    cp $0a
    jr c, jr_00c_536c

    cp $64
    jr c, jr_00c_5370

    ld l, $8f
    jr jr_00c_5372

jr_00c_536c:
    ld l, $91
    jr jr_00c_5372

jr_00c_5370:
    ld l, $90

jr_00c_5372:
    ld h, $d1
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d215]
    add l
    ld l, a
    jr nc, jr_00c_5382

    inc h

jr_00c_5382:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ld [hl], a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $04
    ld [$d23c], a
    ld a, $03
    ld [$d23d], a
    pop af
    push af
    call Call_00c_58cc
    ld a, $12
    add l
    ld l, a
    jr nc, jr_00c_53a6

    inc h

jr_00c_53a6:
    bit 7, h
    jr z, jr_00c_53ae

    ld h, $00
    ld l, $00

jr_00c_53ae:
    ld a, [$d215]
    ld de, $d20e
    add e
    ld e, a
    jr nc, jr_00c_53b9

    inc d

jr_00c_53b9:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $05
    call Call_000_21f0
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    push af
    call Call_00c_5955
    ld a, [$d215]
    ld de, $d28d
    add e
    ld e, a
    jr nc, jr_00c_53da

    inc d

jr_00c_53da:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $05
    call Call_000_21f0
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $09
    ld [$d23c], a
    ld a, $08
    ld [$d23d], a
    pop af
    push af
    call Call_00c_58cc
    bit 7, h
    jr z, jr_00c_5402

    ld h, $00
    ld l, $00

jr_00c_5402:
    ld a, [$d215]
    ld de, $d30d
    add e
    ld e, a
    jr nc, jr_00c_540d

    inc d

jr_00c_540d:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $05
    call Call_000_21f0
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $0c
    ld [$d23c], a
    ld a, $0b
    ld [$d23d], a
    pop af
    push af
    call Call_00c_59a5
    bit 7, h
    jr z, jr_00c_5435

    ld h, $00
    ld l, $00

jr_00c_5435:
    ld a, [$d215]
    ld de, $d38d
    add e
    ld e, a
    jr nc, jr_00c_5440

    inc d

jr_00c_5440:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $05
    call Call_000_21f0
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $0e
    ld [$d23c], a
    ld a, $0d
    ld [$d23d], a
    pop af
    push af
    call Call_00c_5a31
    bit 7, h
    jr z, jr_00c_5468

    ld h, $00
    ld l, $00

jr_00c_5468:
    ld a, l
    push af
    ld c, $00

jr_00c_546c:
    cp $0a
    jr c, jr_00c_5475

    inc c
    add $f6
    jr jr_00c_546c

jr_00c_5475:
    ld a, c
    add a
    add a
    add a
    add c
    add c
    ld c, a
    ld h, $00
    ld l, c
    push bc
    ld a, [$d215]
    ld de, $d410
    add e
    ld e, a
    jr nc, jr_00c_548b

    inc d

jr_00c_548b:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    call Call_000_21f0
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d215]
    ld hl, $d411
    add l
    ld l, a
    jr nc, jr_00c_54a7

    inc h

jr_00c_54a7:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld [hl], $2e
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    pop bc
    pop af
    sub c
    ld h, $00
    ld l, a
    ld a, [$d215]
    ld de, $d412
    add e
    ld e, a
    jr nc, jr_00c_54c6

    inc d

jr_00c_54c6:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    call Call_000_21f0
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $11
    ld [$d23c], a
    ld a, $10
    ld [$d23d], a
    pop af
    push af
    call Call_00c_59a5
    bit 7, h
    jr z, jr_00c_54ee

    ld h, $00
    ld l, $00

jr_00c_54ee:
    ld a, [$d215]
    ld de, $d48d
    add e
    ld e, a
    jr nc, jr_00c_54f9

    inc d

jr_00c_54f9:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $05
    call Call_000_21f0
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $13
    ld [$d23c], a
    ld a, $12
    ld [$d23d], a
    pop af
    push af
    call Call_00c_59a5
    bit 7, h
    jr z, jr_00c_5521

    ld h, $00
    ld l, $00

jr_00c_5521:
    ld a, [$d215]
    ld de, $d50d
    add e
    ld e, a
    jr nc, jr_00c_552c

    inc d

jr_00c_552c:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $05
    call Call_000_21f0
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $15
    ld [$d23c], a
    ld a, $14
    ld [$d23d], a
    pop af
    call Call_00c_59a5
    bit 7, h
    jr z, jr_00c_5553

    ld h, $00
    ld l, $00

jr_00c_5553:
    ld a, [$d215]
    ld de, $d58d
    add e
    ld e, a
    jr nc, jr_00c_555e

    inc d

jr_00c_555e:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $05
    call Call_000_21f0
    call Call_00c_5001
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d226]
    ld b, a
    ld a, [$d214]
    cp b
    jr z, jr_00c_55a5

    ld a, [$d214]
    ld h, a
    inc h
    ld l, $15
    rst $18
    ld c, h
    ld [bc], a
    jr z, jr_00c_558d

    ld c, $00
    call Call_00c_51d2

jr_00c_558d:
    ld l, $16
    rst $18
    ld c, h
    ld [bc], a
    jr z, jr_00c_5599

    ld c, $01
    call Call_00c_51d2

jr_00c_5599:
    ld l, $17
    rst $18
    ld c, h
    ld [bc], a
    jr z, jr_00c_55a5

    ld c, $02
    call Call_00c_51d2

Jump_00c_55a5:
jr_00c_55a5:
    ld a, $01
    rst $18

    db $04, $0b

    rst $18

    db $3c, $04

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
    ldh a, [$96]
    push af
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4b12
    ld de, $d000
    call Call_000_0234
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4b10
    ld de, $d000
    call Call_000_0234
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d215]
    ld de, $d002
    add e
    ld e, a
    jr nc, jr_00c_55ed

    inc d

jr_00c_55ed:
    ld b, $40
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    call Call_00c_4973
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d215]
    ld de, $d002
    add e
    ld e, a
    jr nc, jr_00c_5609

    inc d

jr_00c_5609:
    ld b, $40
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    call Call_00c_499a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d215]
    push af
    ld de, $d043
    add e
    ld e, a
    jr nc, jr_00c_5626

    inc d

jr_00c_5626:
    pop af
    or a
    jr nz, jr_00c_562f

    ld a, [$d214]
    jr jr_00c_563b

jr_00c_562f:
    ld a, [$d23b]
    or a
    jr nz, jr_00c_5639

    ld a, $06
    jr jr_00c_563b

jr_00c_5639:
    ld a, $05

jr_00c_563b:
    ld b, a
    ld a, [$d23b]
    or a
    jr nz, jr_00c_5647

    ld hl, $1105
    jr jr_00c_564a

jr_00c_5647:
    ld hl, $140a

jr_00c_564a:
    ld a, b
    add l
    ld l, a
    jr nc, jr_00c_5650

    inc h

jr_00c_5650:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $40
    rst $18
    ld [hl+], a
    dec b
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_5665:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4b12
    ld de, $d000
    call Call_000_0234
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4b10
    ld de, $d000
    call Call_000_0234
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d23b]
    or a
    jr nz, jr_00c_56a8

    ld hl, $570b
    ld a, [$d215]
    or a
    jr nz, jr_00c_56a4

    ld a, [$d214]
    jr jr_00c_56b8

jr_00c_56a4:
    ld a, $06
    jr jr_00c_56b8

jr_00c_56a8:
    ld hl, $5719
    ld a, [$d215]
    or a
    jr nz, jr_00c_56b6

    ld a, [$d214]
    jr jr_00c_56b8

jr_00c_56b6:
    ld a, $05

jr_00c_56b8:
    add a
    add l
    ld l, a
    jr nc, jr_00c_56be

    inc h

jr_00c_56be:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $a900
    ld c, $0c
    call Call_000_04db
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d23b]
    or a
    jr nz, jr_00c_56e8

    ld b, $0b
    jr jr_00c_56ea

jr_00c_56e8:
    ld b, $0c

jr_00c_56ea:
    ld a, [$d215]
    ld hl, $d044
    add l
    ld l, a
    jr nc, jr_00c_56f5

    inc h

jr_00c_56f5:
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ld c, $0c
    call Call_00c_576d
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    ld a, [bc]
    ld b, b
    inc c
    ld b, b
    ld c, $40
    db $10
    ld b, b
    ld [de], a
    ld b, b
    inc d
    ld b, b
    ld d, $40

    db $18, $40

    ld a, [de]
    ld b, b
    inc e
    ld b, b
    ld e, $40
    jr nz, jr_00c_5763

    db $22, $40

    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d215]
    ld hl, $d101
    add l
    ld l, a
    jr nc, jr_00c_573d

    inc h

jr_00c_573d:
    ld b, $16

jr_00c_573f:
    push hl
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $0c
    xor a
    call Call_00c_576d
    pop hl
    push hl
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $0c
    ld a, $20
    call Call_00c_576d
    pop hl
    ld de, $0040
    add hl, de
    dec b
    jr nz, jr_00c_573f

jr_00c_5763:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_576d:
jr_00c_576d:
    ld [hl+], a
    dec c
    jr nz, jr_00c_576d

    ret


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    rst $18
    inc h
    dec b
    ld hl, $c600
    ld a, c
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $14

jr_00c_5786:
    ld a, [hl+]
    or a
    jr z, jr_00c_5793

    push hl
    ld h, d
    ld l, e
    ld [hl], a
    pop hl
    inc de
    dec c
    jr nz, jr_00c_5786

jr_00c_5793:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_579d:
    push af
    push bc
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d226]
    ld b, a
    ld a, [$d214]
    cp b
    jr z, jr_00c_57b4

    call Call_00c_57d0
    jr jr_00c_57cd

jr_00c_57b4:
    ld c, $00
    ld d, $00

jr_00c_57b8:
    ld a, d
    call Call_00c_5820
    ld a, h
    or l
    jr z, jr_00c_57c7

    ld a, d
    call Call_00c_57d0
    ld a, c
    add e
    ld c, a

jr_00c_57c7:
    inc d
    ld a, d
    cp b
    jr nz, jr_00c_57b8

    ld e, c

jr_00c_57cd:
    pop bc
    pop af
    ret


Call_00c_57d0:
    push af
    push bc
    ld h, a
    inc h
    ld l, $01
    ld e, $00

jr_00c_57d8:
    rst $18

    db $4c, $02

    jr z, jr_00c_57de

    inc e

jr_00c_57de:
    inc l
    ld a, l
    cp $13
    jr nz, jr_00c_57d8

    pop bc
    pop af
    ret


    push bc
    push hl
    push de
    ld a, b
    call Call_00c_5acc
    ld a, $16
    add l
    ld l, a
    jr nc, jr_00c_57f5

    inc h

jr_00c_57f5:
    ld a, c
    cp $08
    jr c, jr_00c_580f

    cp $10
    jr c, jr_00c_5807

    inc hl
    inc hl
    ld a, c
    sub $10
    ld c, a
    ld b, [hl]
    jr jr_00c_5810

jr_00c_5807:
    inc hl
    ld a, c
    sub $08
    ld c, a
    ld b, [hl]
    jr jr_00c_5810

jr_00c_580f:
    ld b, [hl]

jr_00c_5810:
    ld a, c
    or a
    jr z, jr_00c_5819

jr_00c_5814:
    srl b
    dec a
    jr nz, jr_00c_5814

jr_00c_5819:
    ld a, b
    and $01
    pop de
    pop hl
    pop bc
    ret


Call_00c_5820:
    push af
    push bc
    cp b
    jr z, jr_00c_582d

    call Call_00c_5acc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_00c_5840

jr_00c_582d:
    xor a
    ld de, $0000

jr_00c_5831:
    call Call_00c_5acc
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld d, h
    ld e, l
    pop af
    inc a
    cp b
    jr nz, jr_00c_5831

jr_00c_5840:
    pop bc
    pop af
    ret


Call_00c_5843:
    push af
    push bc
    cp b
    jr z, jr_00c_5856

    call Call_00c_5acc
    ld a, $02
    add l
    ld l, a
    jr nc, jr_00c_5852

    inc h

jr_00c_5852:
    ld a, [hl]
    ld e, a
    jr jr_00c_5899

jr_00c_5856:
    ld c, $00
    ld e, $00
    xor a

jr_00c_585b:
    call Call_00c_5820
    push af
    ld a, h
    or l
    pop hl
    ld a, h
    jr z, jr_00c_5874

    call Call_00c_5acc
    ld a, $02
    add l
    ld l, a
    jr nc, jr_00c_586f

    inc h

jr_00c_586f:
    ld a, [hl]
    ld e, a
    or a
    jr nz, jr_00c_5879

jr_00c_5874:
    inc c
    ld a, c
    cp b
    jr nz, jr_00c_585b

jr_00c_5879:
    xor a

jr_00c_587a:
    call Call_00c_5820
    push af
    ld a, h
    or l
    pop hl
    ld a, h
    ld c, a
    jr z, jr_00c_5894

    call Call_00c_5acc
    ld a, $02
    add l
    ld l, a
    jr nc, jr_00c_588f

    inc h

jr_00c_588f:
    ld a, [hl]
    cp e
    jr nc, jr_00c_5894

    ld e, a

jr_00c_5894:
    ld a, c
    inc a
    cp b
    jr nz, jr_00c_587a

jr_00c_5899:
    ld h, $00
    ld l, e
    push hl
    ld de, $0036
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    bit 7, h
    jr nz, jr_00c_58b5

    ld a, h
    or l
    jr z, jr_00c_58c2

    ld d, h
    ld e, l
    pop hl
    ld h, d
    ld l, e
    jr jr_00c_58c9

jr_00c_58b5:
    pop hl
    ld a, e
    sub l
    ld e, a
    ld a, d
    sbc h
    ld d, a
    ld h, d
    ld l, e
    ld d, $01
    jr jr_00c_58c9

jr_00c_58c2:
    ld d, h
    ld e, l
    pop hl
    ld h, d
    ld l, e
    ld d, $02

jr_00c_58c9:
    pop bc
    pop af
    ret


Call_00c_58cc:
    push af
    push bc
    cp b
    jr z, jr_00c_58f2

    call Call_00c_5acc
    push hl
    ld a, [$d23d]
    add l
    ld l, a
    jr nc, jr_00c_58dd

    inc h

jr_00c_58dd:
    ld d, $00
    ld e, [hl]
    pop hl
    ld a, [$d23c]
    add l
    ld l, a
    jr nc, jr_00c_58e9

    inc h

jr_00c_58e9:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_09ae
    jp Jump_00c_5952


jr_00c_58f2:
    xor a
    ld de, $0000

jr_00c_58f6:
    call Call_00c_5820
    push af
    ld a, h
    or l
    pop hl
    ld a, h
    jr z, jr_00c_5913

    call Call_00c_5acc
    push af
    ld a, [$d23d]
    add l
    ld l, a
    jr nc, jr_00c_590c

    inc h

jr_00c_590c:
    ld a, [hl]
    add e
    ld e, a
    jr nc, jr_00c_5912

    inc d

jr_00c_5912:
    pop af

jr_00c_5913:
    inc a
    cp b
    jr nz, jr_00c_58f6

    push de
    ld hl, $d244
    xor a
    ld [hl], a
    ld de, $0000

jr_00c_5920:
    call Call_00c_5820
    push af
    ld a, h
    or l
    pop hl
    ld a, h
    jr z, jr_00c_5944

    call Call_00c_5acc
    push af
    ld a, [$d23c]
    add l
    ld l, a
    jr nc, jr_00c_5936

    inc h

jr_00c_5936:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld d, h
    ld e, l
    ld hl, $d244
    ld a, [hl]
    adc $00
    ld [hl], a
    pop af

jr_00c_5944:
    inc a
    cp b
    jr nz, jr_00c_5920

    ld hl, $d244
    ld a, [hl]
    ld l, e
    ld h, d
    pop de
    call Call_000_0ddb

Jump_00c_5952:
    pop bc
    pop af
    ret


Call_00c_5955:
    push af
    push bc
    cp b
    jr z, jr_00c_5969

    call Call_00c_5acc
    ld a, $06
    add l
    ld l, a
    jr nc, jr_00c_5964

    inc h

jr_00c_5964:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jr jr_00c_599c

jr_00c_5969:
    xor a
    ld de, $0000

jr_00c_596d:
    call Call_00c_5820
    push af
    ld a, h
    or l
    pop hl
    ld a, h
    jr z, jr_00c_5996

    call Call_00c_5acc
    push af
    ld a, $06
    add l
    ld l, a
    jr nc, jr_00c_5982

    inc h

jr_00c_5982:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    push hl
    push af
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    pop af
    bit 7, h
    pop hl
    jr nz, jr_00c_5996

    ld d, h
    ld e, l

jr_00c_5996:
    inc a
    cp b
    jr nz, jr_00c_596d

    ld h, d
    ld l, e

jr_00c_599c:
    ld de, $0020
    call Call_000_09ae
    pop bc
    pop af
    ret


Call_00c_59a5:
    push af
    push bc
    cp b
    jr z, jr_00c_59d2

    call Call_00c_5acc
    push hl
    ld a, [$d23d]
    add l
    ld l, a
    jr nc, jr_00c_59b6

    inc h

jr_00c_59b6:
    ld d, $00
    ld e, [hl]
    pop hl
    ld a, [$d23c]
    add l
    ld l, a
    jr nc, jr_00c_59c2

    inc h

jr_00c_59c2:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld h, $00
    ld a, $64
    call Call_000_08b9
    call Call_000_09ae
    jp Jump_00c_5a2e


jr_00c_59d2:
    xor a
    ld de, $0000

jr_00c_59d6:
    call Call_00c_5820
    push af
    ld a, h
    or l
    pop hl
    ld a, h
    jr z, jr_00c_59f3

    call Call_00c_5acc
    push af
    ld a, [$d23d]
    add l
    ld l, a
    jr nc, jr_00c_59ec

    inc h

jr_00c_59ec:
    ld a, [hl]
    add e
    ld e, a
    jr nc, jr_00c_59f2

    inc d

jr_00c_59f2:
    pop af

jr_00c_59f3:
    inc a
    cp b
    jr nz, jr_00c_59d6

    push de
    xor a
    ld de, $0000

jr_00c_59fc:
    call Call_00c_5820
    push af
    ld a, h
    or l
    pop hl
    ld a, h
    jr z, jr_00c_5a1b

    call Call_00c_5acc
    push af
    ld a, [$d23c]
    add l
    ld l, a
    jr nc, jr_00c_5a12

    inc h

jr_00c_5a12:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld h, $00
    add hl, de
    ld d, h
    ld e, l
    pop af

jr_00c_5a1b:
    inc a
    cp b
    jr nz, jr_00c_59fc

    ld h, d
    ld l, e
    ld a, $64
    call Call_000_0bec
    ld b, a
    ld a, h
    ld h, l
    ld l, b
    pop de
    call Call_000_0ddb

Jump_00c_5a2e:
    pop bc
    pop af
    ret


Call_00c_5a31:
    push af
    push bc
    cp b
    jr z, jr_00c_5a5c

    call Call_00c_5acc
    push hl
    ld a, [$d23d]
    add l
    ld l, a
    jr nc, jr_00c_5a42

    inc h

jr_00c_5a42:
    ld d, $00
    ld e, [hl]
    pop hl
    ld a, [$d23c]
    add l
    ld l, a
    jr nc, jr_00c_5a4e

    inc h

jr_00c_5a4e:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $0a
    call Call_000_08b9
    call Call_000_09ae
    jp Jump_00c_5ac9


jr_00c_5a5c:
    xor a
    ld de, $0000

jr_00c_5a60:
    call Call_00c_5820
    push af
    ld a, h
    or l
    pop hl
    ld a, h
    jr z, jr_00c_5a7d

    call Call_00c_5acc
    push af
    ld a, [$d23d]
    add l
    ld l, a
    jr nc, jr_00c_5a76

    inc h

jr_00c_5a76:
    ld a, [hl]
    add e
    ld e, a
    jr nc, jr_00c_5a7c

    inc d

jr_00c_5a7c:
    pop af

jr_00c_5a7d:
    inc a
    cp b
    jr nz, jr_00c_5a60

    push de
    ld hl, $d244
    xor a
    ld [hl+], a
    ld de, $0000

jr_00c_5a8a:
    call Call_00c_5820
    push af
    ld a, h
    or l
    pop hl
    ld a, h
    jr z, jr_00c_5aae

    call Call_00c_5acc
    push af
    ld a, [$d23c]
    add l
    ld l, a
    jr nc, jr_00c_5aa0

    inc h

jr_00c_5aa0:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld d, h
    ld e, l
    ld hl, $d244
    ld a, [hl]
    adc $00
    ld [hl], a
    pop af

jr_00c_5aae:
    inc a
    cp b
    jr nz, jr_00c_5a8a

    ld hl, $d244
    ld a, [hl]
    ld b, a
    add a
    add a
    add b
    add a
    ld l, e
    ld h, d
    ld b, $09

jr_00c_5abf:
    add hl, de
    adc $00
    dec b
    jr nz, jr_00c_5abf

    pop de
    call Call_000_0ddb

Jump_00c_5ac9:
    pop bc
    pop af
    ret


Call_00c_5acc:
    push af
    push bc
    push de
    ld h, $00
    ld l, a
    ld d, $00
    ld e, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld d, h
    ld e, l
    ld hl, $c980
    add hl, de
    pop de
    pop bc
    pop af
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    call Call_00c_5b5a
    xor a
    ld [$d214], a
    rst $18
    jr z, jr_00c_5b07

    call Call_000_2b54
    ld b, $00
    rst $18
    ld a, [hl+]
    dec bc
    rst $18
    ld l, $0b

jr_00c_5b07:
    call Call_00c_5caa
    ld a, $0f
    ld hl, $4821
    call Call_000_23e8
    ld a, [$d226]
    or a
    jr z, jr_00c_5b24

    cp $01
    jr z, jr_00c_5b24

    ld a, $1d
    ld hl, $4894
    call Call_000_23e8

jr_00c_5b24:
    call Call_000_2e3b
    ld c, $10
    call Call_000_25af
    call Call_000_2625

jr_00c_5b2f:
    call Call_000_2e3b
    call Call_00c_5c40
    cp $ff
    jr nz, jr_00c_5b2f

    push af
    ld hl, $4821
    call Call_000_2449
    ld a, [$d226]
    or a
    jr z, jr_00c_5b50

    cp $01
    jr z, jr_00c_5b50

    ld hl, $4894
    call Call_000_2449

jr_00c_5b50:
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    pop af
    ret


Call_00c_5b5a:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ldh [$8a], a
    ldh [$8b], a
    call Call_000_0341
    call Call_000_23b6
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4b20
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $8e00
    ld c, $04
    call Call_000_04db
    ld hl, $419b
    ld de, $0801
    call Call_000_0595
    ld hl, $4b1e
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $b000
    ld c, $80
    call Call_000_04db
    ld hl, $d800
    ld de, $a800
    ld c, $80
    call Call_000_04db
    ld hl, $5c00
    ld de, $0008
    call Call_000_0595
    ld hl, $4b14
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $b800
    ld c, $24
    call Call_000_04db
    ld hl, $4b16
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $9800
    ld c, $24
    call Call_000_04db
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4c18
    ld de, $d000
    call Call_000_0234
    ld hl, $4c16
    ld de, $d100
    call Call_000_0234
    call Call_000_0371
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ret


    db $e0, $7f, $ff, $6b, $58, $1e, $00, $00, $7f, $27, $9d, $32, $7f, $63, $1b, $3a
    db $5f, $03, $ff, $6b, $df, $01, $00, $00, $78, $3a, $ff, $6b, $80, $12, $00, $00
    db $9e, $22, $ff, $6b, $7e, $21, $00, $00, $7f, $32, $ff, $6b, $9f, $01, $00, $00
    db $3f, $4a, $ff, $6b, $ff, $20, $00, $00, $1f, $5e, $ff, $6b, $d8, $7c, $00, $00

Call_00c_5c40:
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $00
    push af
    ld a, [$d226]
    ld b, a
    ldh a, [$91]
    bit 5, a
    jr z, jr_00c_5c72

    ld a, [$d214]
    dec a
    bit 7, a
    jr z, jr_00c_5c60

    ld a, b
    dec a

jr_00c_5c60:
    ld b, a
    ld a, [$d214]
    cp b
    jr z, jr_00c_5c70

    ld a, b
    ld [$d214], a
    call Call_00c_5caa
    rst $08
    ld e, e

jr_00c_5c70:
    jr jr_00c_5ca1

jr_00c_5c72:
    bit 4, a
    jr z, jr_00c_5c91

    ld a, [$d214]
    inc a
    cp b
    jr c, jr_00c_5c7f

    ld a, $00

jr_00c_5c7f:
    ld b, a
    ld a, [$d214]
    cp b
    jr z, jr_00c_5c8f

    ld a, b
    ld [$d214], a
    call Call_00c_5caa
    rst $08
    ld e, e

jr_00c_5c8f:
    jr jr_00c_5ca1

jr_00c_5c91:
    bit 0, a
    jr z, jr_00c_5c97

    jr jr_00c_5ca1

jr_00c_5c97:
    bit 1, a
    jr z, jr_00c_5ca1

    rst $08
    ld e, l
    pop af
    ld a, $ff
    push af

jr_00c_5ca1:
    pop af
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ret


Call_00c_5caa:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4b14
    ld de, $d000
    call Call_000_0234
    ld hl, $4b16
    ld de, $d400
    call Call_000_0234
    call Call_00c_5ef6
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d214]
    ld b, a
    ld de, $ad60
    call Call_00c_49c1
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $00
    rst $18
    ld a, [de]
    inc bc

Jump_00c_5ce7:
    rst $18
    ld a, [hl-]
    dec bc
    call Call_00c_5fb0
    or a
    jp z, Jump_00c_5da1

    call Call_00c_5db8
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    push bc
    push af
    ld hl, $00a6
    ld de, $0080

jr_00c_5d00:
    ld a, c
    or a
    jr z, jr_00c_5d08

    add hl, de
    dec c
    jr jr_00c_5d00

jr_00c_5d08:
    pop af
    ld c, a
    rst $18
    jr c, jr_00c_5d18

    call Call_00c_5f32
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    pop bc

jr_00c_5d18:
    push bc
    ld l, c
    ld h, $00
    ld c, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $d0a9
    add hl, de
    push hl
    push hl
    dec hl
    ld a, $04
    add h
    ld h, a
    ld a, $11
    ld [hl], a
    ld a, $20
    add l
    ld l, a
    jr nc, jr_00c_5d39

    inc h

jr_00c_5d39:
    ld a, $11
    ld [hl], a
    pop hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    pop hl
    push hl
    ld de, $0020
    add hl, de
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    pop hl
    push hl
    ld de, $0400
    add hl, de
    ld a, $20
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    pop hl
    ld de, $0420
    add hl, de
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld d, c
    pop bc
    push bc
    ld h, $00
    ld l, c
    ld b, d
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $d4c9
    add hl, de
    ld d, h
    ld e, l
    ld hl, $1410
    ld a, b
    cp $0e
    jr nc, jr_00c_5d9a

    add l
    ld l, a
    jr nc, jr_00c_5d92

    inc h

jr_00c_5d92:
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    call Call_000_2e3b

jr_00c_5d9a:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    pop bc

Jump_00c_5da1:
    inc c
    ld a, c
    cp $03
    jp nz, Jump_00c_5ce7

    rst $18
    inc h
    inc bc
    call Call_00c_5ef6
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_5db8:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    push hl
    ld b, c
    ld de, $0080
    ld hl, $d0e6

jr_00c_5dcd:
    ld a, b
    or a
    jr z, jr_00c_5dd5

    add hl, de
    dec b
    jr jr_00c_5dcd

jr_00c_5dd5:
    push hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    pop hl
    ld de, $0400
    add hl, de
    ld d, h
    ld e, l
    pop hl
    push hl
    push de
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld b, [hl]
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    cp $0a
    jr nc, jr_00c_5e11

    ld h, $00
    ld l, $00
    ld a, $01
    push bc
    push de
    call Call_000_21f0
    pop de
    pop bc
    inc de
    ld a, $01
    jr jr_00c_5e13

jr_00c_5e11:
    ld a, $02

jr_00c_5e13:
    ld h, $00
    ld l, b
    call Call_000_21f0
    pop de
    inc de
    inc de
    ld h, d
    ld l, e
    ld [hl], $3a
    inc de
    pop hl
    inc hl
    push hl
    push de
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld b, [hl]
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    cp $0a
    jr nc, jr_00c_5e49

    ld h, $00
    ld l, $00
    ld a, $01
    push bc
    push de
    call Call_000_21f0
    pop de
    pop bc
    inc de
    ld a, $01
    jr jr_00c_5e4b

jr_00c_5e49:
    ld a, $02

jr_00c_5e4b:
    ld h, $00
    ld l, b
    call Call_000_21f0
    pop de
    inc de
    inc de
    ld h, d
    ld l, e
    ld [hl], $3a
    inc de
    pop hl
    inc hl
    push hl
    push de
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld b, [hl]
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    cp $0a
    jr nc, jr_00c_5e81

    ld h, $00
    ld l, $00
    ld a, $01
    push bc
    push de
    call Call_000_21f0
    pop de
    pop bc
    inc de
    ld a, $01
    jr jr_00c_5e83

jr_00c_5e81:
    ld a, $02

jr_00c_5e83:
    ld h, $00
    ld l, b
    call Call_000_21f0
    pop de
    inc de
    inc de
    ld h, d
    ld l, e
    ld [hl], $12
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    inc de
    inc hl
    inc hl
    ld a, [hl]
    sub $36
    or a
    jr z, jr_00c_5ec5

    bit 7, a
    jr z, jr_00c_5eb7

    ld a, [hl]
    ld b, a
    ld a, $36
    sub b
    ld b, a
    ld h, d
    ld l, e
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $2d
    ld [hl], a
    jr jr_00c_5ed1

jr_00c_5eb7:
    ld b, a
    ld h, d
    ld l, e
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $2b
    ld [hl], a
    jr jr_00c_5ed1

jr_00c_5ec5:
    ld b, a
    ld h, d
    ld l, e
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $60
    ld [hl], a

jr_00c_5ed1:
    ld a, b
    cp $64
    jr c, jr_00c_5edb

    ld b, $63
    ld a, $2b
    ld [hl], a

jr_00c_5edb:
    ld h, $00
    ld l, b
    inc de
    push de
    ld a, $02
    call Call_000_21f0
    pop de
    inc de
    inc de
    ld h, d
    ld l, e
    ld [hl], $11
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_5ef6:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    call Call_000_2e3b
    ld hl, $d000
    ld de, $b800
    ld c, $12
    call Call_000_0468
    ld hl, $d400
    ld de, $9800
    ld c, $12
    call Call_000_0468
    call Call_000_2e3b
    ld hl, $d120
    ld de, $b920
    ld c, $12
    call Call_000_0468
    ld hl, $d520
    ld de, $9920
    ld c, $12
    call Call_000_0468
    call Call_000_2e3b
    ret


Call_00c_5f32:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    push hl
    ld a, c
    add a
    add a
    ld d, $00
    ld e, a
    ld hl, $d000
    add hl, de
    pop de
    push hl
    ld hl, $d000
    add hl, de
    ld d, h
    ld e, l
    push de
    ld b, $00

jr_00c_5f4f:
    ld a, b
    add a
    add a
    add a
    add a
    add a
    pop hl
    add l
    ld l, a
    xor a
    adc h
    ld h, a
    ld d, h
    ld e, l
    pop hl
    ld a, b
    add a
    add l
    ld l, a
    xor a
    adc h
    ld h, a
    push hl
    push de
    ld c, $02

jr_00c_5f69:
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    push hl
    ld h, d
    ld l, e
    ld [hl], a
    pop hl
    push hl
    ld a, $01
    add h
    ld h, a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    push de
    ld hl, $0400
    add hl, de
    ld [hl], a
    pop de
    pop hl
    inc de
    inc hl
    dec c
    jr nz, jr_00c_5f69

    inc b
    ld a, b
    cp $02
    jr nz, jr_00c_5f4f

    pop de
    pop hl
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_5fb0:
    push hl
    push bc
    ld b, $00
    ld c, $03

jr_00c_5fb6:
    ld a, [hl+]
    or a
    jr z, jr_00c_5fbe

    ld b, $01
    jr jr_00c_5fc1

jr_00c_5fbe:
    dec c
    jr nz, jr_00c_5fb6

jr_00c_5fc1:
    ld a, b
    pop bc
    pop hl
    ret


    rst $18
    jr z, jr_00c_5fd3

    call Call_000_2b54
    call Call_00c_600a
    ld a, $0f
    ld hl, $61a8

jr_00c_5fd3:
    call Call_000_23e8
    ld a, $1d
    ld hl, $64cd
    call Call_000_23e8
    call Call_000_2e3b
    ld c, $10
    call Call_000_25af
    call Call_000_2625

jr_00c_5fe9:
    call Call_000_2e3b
    call Call_00c_60f8
    cp $ff
    jr nz, jr_00c_5fe9

    push af
    ld hl, $61a8
    call Call_000_2449
    ld hl, $64cd
    call Call_000_2449
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    pop af
    ret


Call_00c_600a:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ldh [$8a], a
    ldh [$8b], a
    ld [$d214], a
    ld [$d215], a
    call Call_000_0341
    call Call_000_23b6
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4b22
    ld de, $d000
    call Call_000_0234
    ld hl, $4b24
    ld de, $d040
    call Call_000_0234
    ld hl, $4d24
    ld de, $d080
    call Call_000_0234
    ld hl, $4d26
    ld de, $d0c0
    call Call_000_0234
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4b22
    ld de, $d000
    call Call_000_0234
    ld hl, $4b24
    ld de, $d040
    call Call_000_0234
    ld hl, $d000
    ld de, $8e00
    ld c, $08
    call Call_000_04db
    ld hl, $419b
    ld de, $0802
    call Call_000_0595
    ld hl, $4b1e
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $b000
    ld c, $80
    call Call_000_04db
    ld hl, $d800
    ld de, $a800
    ld c, $80
    call Call_000_04db
    ld hl, $5c00
    ld de, $0008
    call Call_000_0595
    ld hl, $4c04
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $b800
    ld c, $24
    call Call_000_04db
    ld hl, $4c02
    ld de, $d400
    call Call_000_0234
    ld hl, $d400
    ld de, $9800
    ld c, $24
    call Call_000_04db
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4c08
    ld de, $d000
    call Call_000_0234
    ld hl, $4c06
    ld de, $d4c0
    call Call_000_0234
    call Call_00c_61b2
    call Call_00c_6240
    call Call_000_0371
    call Call_000_2e3b
    call Call_000_2e3b
    call Call_00c_6481
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_00c_60f8:
    push bc
    ld a, $00
    push af
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ldh a, [$91]
    bit 6, a
    jr z, jr_00c_611d

    rst $08
    ld e, e
    ld a, [$d215]
    dec a
    bit 7, a
    jr nz, jr_00c_6118

    ld [$d215], a

jr_00c_6118:
    call Call_00c_6481
    jr jr_00c_616f

jr_00c_611d:
    bit 7, a
    jr z, jr_00c_6133

    rst $08
    ld e, e
    ld a, [$d215]
    inc a
    cp $0d
    jr nc, jr_00c_612e

    ld [$d215], a

jr_00c_612e:
    call Call_00c_6481
    jr jr_00c_616f

jr_00c_6133:
    bit 5, a
    jr z, jr_00c_6149

    rst $08
    ld e, e
    ld a, [$d214]
    dec a
    bit 7, a
    jr nz, jr_00c_6144

    ld [$d214], a

jr_00c_6144:
    call Call_00c_6481
    jr jr_00c_616f

jr_00c_6149:
    bit 4, a
    jr z, jr_00c_615f

    rst $08
    ld e, e
    ld a, [$d214]
    inc a
    cp $08
    jr nc, jr_00c_615a

    ld [$d214], a

jr_00c_615a:
    call Call_00c_6481
    jr jr_00c_616f

jr_00c_615f:
    bit 0, a
    jr z, jr_00c_6165

    jr jr_00c_616f

jr_00c_6165:
    bit 1, a
    jr z, jr_00c_616f

    rst $08
    ld e, l
    pop af
    ld a, $ff
    push af

jr_00c_616f:
    pop af
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    pop bc
    ret


Call_00c_6179:
    ld a, [$c4b2]
    rrca
    rrca
    rrca
    and $07
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, $e0
    add l
    ld l, a
    ld a, h
    adc $43
    ld h, a
    push hl
    ld de, $b1c0
    ld c, $02
    call Call_000_0468
    pop hl
    ld de, $0100
    add hl, de
    ld de, $b1e0
    ld c, $02
    call Call_000_0468
    ret


    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    call Call_00c_6179
    ret


Call_00c_61b2:
    ldh a, [$96]
    push af
    push af
    push bc
    push de
    push hl
    ld b, $00

jr_00c_61bb:
    ld de, $d502
    ld h, $00
    ld l, b
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld d, h
    ld e, l
    ld c, $00

jr_00c_61cc:
    push bc
    rst $18
    inc [hl]
    dec bc
    ld a, c
    pop bc
    or a
    jr z, jr_00c_61d8

    call Call_00c_61f5

jr_00c_61d8:
    ld h, $00
    ld l, $02
    add hl, de
    ld d, h
    ld e, l
    inc c
    ld a, c
    cp $0e
    jr nz, jr_00c_61cc

    inc b
    ld a, b
    cp $12
    jr nz, jr_00c_61bb

    pop hl
    pop de
    pop bc
    pop af
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_00c_61f5:
    push bc
    ld b, a
    push af
    push bc
    push de
    push hl
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    cp $02
    jr z, jr_00c_620b

    ld hl, $d51e
    jr jr_00c_620e

jr_00c_620b:
    ld hl, $d55e

jr_00c_620e:
    call Call_00c_6217
    pop hl
    pop de
    pop bc
    pop af
    pop bc
    ret


Call_00c_6217:
    push de
    push hl
    ld a, [hl+]
    push hl
    ld h, d
    ld l, e
    inc de
    ld [hl], a
    pop hl
    ld a, [hl]
    ld h, d
    ld l, e
    ld [hl], a
    pop hl
    ld d, $00
    ld e, $20
    add hl, de
    pop de
    push hl
    ld h, $00
    ld l, $20
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, [hl+]
    push hl
    ld h, d
    ld l, e
    inc de
    ld [hl], a
    pop hl
    ld a, [hl]
    ld h, d
    ld l, e
    ld [hl], a
    ret


Call_00c_6240:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $04

jr_00c_624f:
    ld b, $00

jr_00c_6251:
    push bc
    rst $18
    inc [hl]
    dec bc
    ld a, c
    pop bc
    or a
    jr nz, jr_00c_6263

    inc b
    ld a, b
    cp $12
    jr nz, jr_00c_6251

    call Call_00c_62f3

jr_00c_6263:
    inc c
    ld a, c
    cp $0a
    jr nz, jr_00c_624f

    ld c, $0c
    ld b, $00

jr_00c_626d:
    push bc
    rst $18
    inc [hl]
    dec bc
    ld a, c
    pop bc
    or a
    jr nz, jr_00c_627f

    inc b
    ld a, b
    cp $12
    jr nz, jr_00c_626d

    call Call_00c_62f3

jr_00c_627f:
    xor a
    ld c, $00
    ld d, $06

jr_00c_6284:
    push bc
    ld b, c
    push af
    push bc
    push de
    push hl
    rst $18
    ld a, [hl+]
    dec bc
    pop hl
    pop de
    pop bc
    pop af
    rst $18
    ld b, d
    dec bc
    add b
    pop bc
    ld b, a
    inc c
    dec d
    jr nz, jr_00c_6284

    ld a, b
    cp $32
    jr nc, jr_00c_62a5

    ld c, $0a
    call Call_00c_62f3

jr_00c_62a5:
    ld a, b
    cp $6c
    jr nc, jr_00c_62af

    ld c, $0d
    call Call_00c_62f3

jr_00c_62af:
    ld h, $00
    ld l, $00

jr_00c_62b3:
    ld c, $00
    ld b, l
    rst $18
    inc l
    dec bc
    ld a, b
    add h
    ld h, a
    inc l
    ld a, l
    cp $06
    jr nz, jr_00c_62b3

    ld a, h
    cp $1e
    jr nc, jr_00c_62cc

    ld c, $0b
    call Call_00c_62f3

jr_00c_62cc:
    ld b, $0e

jr_00c_62ce:
    ld c, $00

jr_00c_62d0:
    push bc
    rst $18
    inc [hl]
    dec bc
    ld a, c
    pop bc
    or a
    jr nz, jr_00c_62e3

    inc c
    ld a, c
    cp $0e
    jr nz, jr_00c_62d0

    ld c, b
    call Call_00c_62f3

jr_00c_62e3:
    inc b
    ld a, b
    cp $12
    jr nz, jr_00c_62ce

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_62f3:
    push af
    push bc
    push de
    push hl
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $d500
    ld h, $00
    ld l, c
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld d, h
    ld e, l
    push de
    ld hl, $d4de
    call Call_00c_6217
    pop hl
    ld de, $04c0
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld d, h
    ld e, l
    ld hl, $d01e
    call Call_00c_6217
    ld a, c
    cp $0e
    jr nc, jr_00c_634d

    ld de, $d4c2
    ld h, $00
    ld l, c
    add hl, hl
    add hl, de
    ld d, h
    ld e, l
    push de
    ld hl, $d4de
    call Call_00c_6217
    pop hl
    ld de, $04c0
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    ld d, h
    ld e, l
    ld hl, $d01e
    call Call_00c_6217

jr_00c_634d:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_6352:
    ldh a, [$96]
    push af
    push af
    push bc
    push de
    push hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d214]
    add a
    inc a
    inc a
    add l
    ld l, a
    jr nc, jr_00c_636a

    inc h

jr_00c_636a:
    ld c, $02

jr_00c_636c:
    ld b, $00
    push hl
    push de

jr_00c_6370:
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    push hl
    ld h, d
    ld l, e
    ld [hl], a
    pop hl
    inc hl
    inc de
    inc b
    ld a, b
    cp $0e
    jr nz, jr_00c_6370

    pop de
    ld a, $20
    add e
    ld e, a
    jr nc, jr_00c_6394

    inc d

jr_00c_6394:
    pop hl
    ld a, $20
    add l
    ld l, a
    jr nc, jr_00c_639c

    inc h

jr_00c_639c:
    dec c
    jr nz, jr_00c_636c

    pop hl
    pop de
    pop bc
    pop af
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_00c_63a9:
    ldh a, [$96]
    push af
    push af
    push bc
    push de
    push hl
    push de
    push hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d215]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld d, h
    ld e, l
    pop hl
    add hl, de
    pop de

jr_00c_63c9:
    push hl
    push de
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ld h, d
    ld l, e
    ld [hl], a
    pop de
    pop hl
    inc de
    inc hl
    push hl
    push de
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ld h, d
    ld l, e
    ld [hl], a
    pop de
    ld hl, $001f
    add hl, de
    ld d, h
    ld e, l
    pop hl
    push de
    ld de, $001f
    add hl, de
    pop de
    dec c
    jr nz, jr_00c_63c9

    pop hl
    pop de
    pop bc
    pop af
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_00c_6410:
    ldh a, [$96]
    push af
    push af
    push bc
    push de
    push hl
    push de
    push hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d214]
    add a
    inc a
    inc a
    push af
    ld a, [$d215]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld d, $00
    ld e, $40
    add hl, de
    pop af

Call_00c_6438:
    ld d, h
    ld e, l
    add e
    ld e, a
    jr nc, jr_00c_643f

    inc d

jr_00c_643f:
    pop hl
    add hl, de
    pop de
    ld c, $0c

jr_00c_6444:
    ld b, $00
    push hl
    push de

jr_00c_6448:
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    push hl
    ld h, d
    ld l, e
    ld [hl], a
    pop hl
    inc hl
    inc de
    inc b
    ld a, b
    cp $0e
    jr nz, jr_00c_6448

    pop de
    ld a, $20
    add e
    ld e, a
    jr nc, jr_00c_646c

    inc d

jr_00c_646c:
    pop hl
    ld a, $20
    add l
    ld l, a
    jr nc, jr_00c_6474

    inc h

jr_00c_6474:
    dec c
    jr nz, jr_00c_6444

    pop hl
    pop de
    pop bc
    pop af
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_00c_6481:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld hl, $d4c0
    ld de, $d464
    call Call_00c_6352
    ld hl, $d500
    ld de, $d4a2
    ld c, $0c
    call Call_00c_63a9
    ld hl, $d4c0
    ld de, $d4a4
    call Call_00c_6410
    ld hl, $d000
    ld de, $d064
    call Call_00c_6352
    ld hl, $d040
    ld de, $d0a2
    call Call_00c_63a9
    ld hl, $d000
    ld de, $d0a4
    call Call_00c_6410
    call Call_00c_6563
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
    ldh a, [$96]
    push af
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$c4b2]
    rrca
    rrca
    and $07
    ld hl, $4950
    add l
    ld l, a
    jr nc, jr_00c_64e9

    inc h

jr_00c_64e9:
    ld a, [hl]
    cp $04
    jr z, jr_00c_64fe

    or a
    jr nz, jr_00c_6509

    ld hl, $d080
    ld de, $8e00
    ld c, $08
    call Call_000_0468
    jr jr_00c_6509

jr_00c_64fe:
    ld hl, $d000
    ld de, $8e00
    ld c, $08
    call Call_000_0468

jr_00c_6509:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d214]
    or a
    jr z, jr_00c_6521

    ld hl, $4947
    ld de, $1c1f
    ld bc, $01e0
    call Call_000_26ea

jr_00c_6521:
    ld a, [$d214]
    cp $07
    jr z, jr_00c_6534

    ld hl, $4947
    ld de, $961f
    ld bc, $21e0
    call Call_000_26ea

jr_00c_6534:
    ld a, [$d215]
    or a
    jr z, jr_00c_6546

    ld hl, $4947
    ld de, $102a
    ld bc, $01e4
    call Call_000_26ea

jr_00c_6546:
    ld a, [$d215]
    cp $0c
    jr z, jr_00c_6559

    ld hl, $4947
    ld de, $108a
    ld bc, $41e4
    call Call_000_26ea

jr_00c_6559:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_6563:
    ldh a, [$96]
    push af
    push af
    push bc
    push de
    push hl
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $b800
    ld c, $12
    call Call_000_0468
    call Call_000_2e3b
    ld hl, $d400
    ld de, $9800
    ld c, $12
    call Call_000_0468
    call Call_000_2e3b
    ld hl, $d120
    ld de, $b920
    ld c, $12
    call Call_000_0468
    call Call_000_2e3b
    ld hl, $d520
    ld de, $9920
    ld c, $12
    call Call_000_0468
    call Call_000_2e3b
    pop hl
    pop de
    pop bc
    pop af
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    call Call_00c_65e3
    ld a, $0f
    ld hl, $4821
    call Call_000_23e8
    call Call_000_2e3b
    ld c, $10
    call Call_000_25af
    call Call_000_2625

jr_00c_65c8:
    call Call_000_2e3b
    call Call_00c_6641
    cp $ff
    jr nz, jr_00c_65c8

    push af
    ld hl, $4821
    call Call_000_2449
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    pop af
    ret


Call_00c_65e3:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ldh [$8a], a
    ldh [$8b], a
    call Call_000_0341
    call Call_000_23b6
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4b1e
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $b000
    ld c, $80
    call Call_000_04db
    ld hl, $d800
    ld de, $a800
    ld c, $80
    call Call_000_04db
    ld hl, $5c00
    ld de, $0008
    call Call_000_0595
    ld hl, $4c0c
    ld de, $d000
    call Call_000_0234
    ld hl, $4c0a
    ld de, $d400
    call Call_000_0234
    call Call_00c_665a
    call Call_000_0371
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_00c_6641:
    ld a, $00
    push af
    ldh a, [$90]
    bit 0, a
    jr z, jr_00c_664c

    jr jr_00c_6658

jr_00c_664c:
    bit 1, a
    jr z, jr_00c_6658

    rst $08

    db $5d

    pop af
    ld a, $ff
    push af
    jr jr_00c_6658

jr_00c_6658:
    pop af
    ret


Call_00c_665a:
Jump_00c_665a:
    push af
    push bc
    push de
    push hl
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4c1c
    ld de, $d000
    call Call_000_0234
    ld hl, $4c1a
    ld de, $d100
    call Call_000_0234
    ld a, [$c810]
    ld c, a
    ld hl, $0142
    call Call_00c_5f32
    rst $30

    db $20, $0a

    jr z, jr_00c_668f

    ld c, $01
    ld de, $d144
    call Call_00c_6799
    jr jr_00c_669e

jr_00c_668f:
    rst $30

    db $00, $0a

    jr z, jr_00c_669e

    ld c, $00
    ld de, $d144
    call Call_00c_6799
    jr jr_00c_669e

jr_00c_669e:
    rst $30

    db $60, $0a

    jr z, jr_00c_66ad

    ld c, $01
    ld de, $d146
    call Call_00c_6799
    jr jr_00c_66bc

jr_00c_66ad:
    rst $30

    db $40, $0a

    jr z, jr_00c_66bc

    ld c, $00
    ld de, $d146
    call Call_00c_6799
    jr jr_00c_66bc

jr_00c_66bc:
    rst $30

    db $a0, $0a

    jr z, jr_00c_66cb

    ld c, $01
    ld de, $d148
    call Call_00c_6799
    jr jr_00c_66da

jr_00c_66cb:
    rst $30

    db $80, $0a

    jr z, jr_00c_66da

    ld c, $00
    ld de, $d148
    call Call_00c_6799
    jr jr_00c_66da

jr_00c_66da:
    rst $30

    db $e0, $0a

    jr z, jr_00c_66e9

    ld c, $01
    ld de, $d14a
    call Call_00c_6799
    jr jr_00c_66f8

jr_00c_66e9:
    rst $30

    db $c0, $0a

    jr z, jr_00c_66f8

    ld c, $00
    ld de, $d14a
    call Call_00c_6799
    jr jr_00c_66f8

jr_00c_66f8:
    rst $30

    db $20, $0b

    jr z, jr_00c_6707

    ld c, $01
    ld de, $d14e
    call Call_00c_6799
    jr jr_00c_6716

jr_00c_6707:
    rst $30

    db $00, $0b

    jr z, jr_00c_6716

    ld c, $00
    ld de, $d14e
    call Call_00c_6799
    jr jr_00c_6716

jr_00c_6716:
    rst $30

    db $60, $0b

    jr z, jr_00c_6725

    ld c, $01
    ld de, $d14c
    call Call_00c_6799
    jr jr_00c_6734

jr_00c_6725:
    rst $30

    db $40, $0b

    jr z, jr_00c_6734

    ld c, $00
    ld de, $d14c
    call Call_00c_6799
    jr jr_00c_6734

jr_00c_6734:
    rst $30

    db $a0, $0b

    jr z, jr_00c_6743

    ld c, $01
    ld de, $d150
    call Call_00c_6799
    jr jr_00c_675f

jr_00c_6743:
    rst $30

    db $80, $0b

    jr z, jr_00c_6752

    ld c, $00
    ld de, $d150
    call Call_00c_6799
    jr jr_00c_675f

jr_00c_6752:
    rst $30

    db $a0, $0e

    jr nz, jr_00c_675f

    ld c, $02
    ld de, $d110
    call Call_00c_6799

jr_00c_675f:
    call Call_00c_6783
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $b800
    ld c, $24
    call Call_000_04db
    ld hl, $d400
    ld de, $9800
    ld c, $24
    call Call_000_04db
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_6783:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


jr_00c_6794:
    ld [hl+], a
    dec c
    jr nz, jr_00c_6794

    ret


Call_00c_6799:
    ldh a, [$96]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    or a
    jr z, jr_00c_67af

    cp $02
    jr z, jr_00c_67b4

    ld hl, $d054
    jr jr_00c_67b7

jr_00c_67af:
    ld hl, $d014
    jr jr_00c_67b7

jr_00c_67b4:
    ld hl, $d094

jr_00c_67b7:
    ld b, $02

jr_00c_67b9:
    push hl
    push de
    push hl
    push de
    ld a, [hl+]
    push hl
    ld h, d
    ld l, e
    ld [hl+], a
    ld d, h
    ld e, l
    pop hl
    ld a, [hl]
    ld h, d
    ld l, e
    ld [hl], a
    pop de
    pop hl
    ld a, $20
    add l
    ld l, a
    jr nc, jr_00c_67d2

    inc h

jr_00c_67d2:
    ld a, $20
    add e
    ld e, a
    jr nc, jr_00c_67d9

    inc d

jr_00c_67d9:
    ld a, [hl+]
    push hl
    ld h, d
    ld l, e
    ld [hl+], a
    ld d, h
    ld e, l
    pop hl
    ld a, [hl]
    ld h, d
    ld l, e
    ld [hl], a
    pop de
    ld a, $04
    add d
    ld d, a
    pop hl
    ld a, $04
    add h
    ld h, a
    dec b
    jr nz, jr_00c_67b9

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    call Call_00c_687c
    call Call_00c_6c29
    call Call_00c_6cbc
    call Call_00c_6d2d
    call Call_00c_6d76
    ld a, $0f
    ld hl, $4821
    call Call_000_23e8
    call Call_000_2e3b
    ld c, $10
    call Call_000_25af
    call Call_000_2625
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d215]
    or a
    jr z, jr_00c_683c

    ld a, $1d
    ld hl, $698f
    call Call_000_23e8
    ld a, $1c
    ld hl, $6b55
    call Call_000_23e8

jr_00c_683c:
    call Call_000_2e3b
    call Call_00c_69d5
    cp $fe
    jr z, jr_00c_684c

    cp $ff
    jr z, jr_00c_684c

    jr jr_00c_683c

jr_00c_684c:
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d215]
    or a
    jr z, jr_00c_6865

    ld hl, $698f
    call Call_000_2449
    ld hl, $6b55
    call Call_000_2449

jr_00c_6865:
    ld hl, $4821
    call Call_000_2449
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    pop af
    cp $fe
    jr nz, jr_00c_687b

    call Call_00c_6da3

jr_00c_687b:
    ret


Call_00c_687c:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d214], a
    ld hl, $d227
    ld c, $14

jr_00c_688b:
    ld [hl+], a
    dec c
    jr nz, jr_00c_688b

    xor a
    ldh [$8a], a
    ldh [$8b], a
    call Call_000_0341
    call Call_000_23b6
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4c12
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $a200
    ld c, $08
    call Call_000_04db
    ld hl, $4c14
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $a280
    ld c, $08
    call Call_000_04db
    ld hl, $6987
    ld de, $0a01
    call Call_000_0595
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d218
    xor a
    ld c, $08

jr_00c_68dd:
    ld [hl+], a
    dec c
    jr nz, jr_00c_68dd

    ld hl, $d218
    push hl
    ld hl, $6987
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    push hl
    ld hl, $6987
    ld de, $0002
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    push hl
    ld hl, $6987
    ld de, $0004
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4008
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $b000
    ld c, $80
    call Call_000_04db
    ld hl, $d800
    ld de, $a800
    ld c, $80
    call Call_000_04db
    ld hl, $5c00
    ld de, $0008
    call Call_000_0595
    ld hl, $4c10
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $b800
    ld c, $24
    call Call_000_04db
    ld hl, $4c0e
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $9800
    ld c, $24
    call Call_000_04db
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4c1c
    ld de, $d000
    call Call_000_0234
    ld hl, $4c1a
    ld de, $d100
    call Call_000_0234
    call Call_000_0371
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ret


    db $80, $7e, $1f, $68, $4c, $68, $00, $00

    ldh a, [$96]
    push af
    push af
    push bc
    push de
    push hl
    ld hl, $69b4
    ld bc, $0a20
    push hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    call Call_00c_6ae5
    pop hl
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
    nop
    nop
    ld [$0002], sp
    nop
    db $10
    inc b
    nop
    nop
    jr @+$08

    nop
    ld [$0800], sp
    nop
    ld [$0a08], sp
    nop
    ld [$0c10], sp
    nop
    ld [$0e18], sp
    nop
    add b

Call_00c_69d5:
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d215
    ld a, [hl]
    or a
    jr nz, jr_00c_69ed

    ldh a, [$91]
    and $02
    jr nz, jr_00c_6a3a

    jr jr_00c_6a40

jr_00c_69ed:
    ldh a, [$91]
    and $40
    jp z, Jump_00c_69fc

    ld e, $00
    call Call_00c_6a48
    jp Jump_00c_6a26


Jump_00c_69fc:
    ldh a, [$91]
    and $20
    jp z, Jump_00c_6a0b

    ld e, $01
    call Call_00c_6a48
    jp Jump_00c_6a26


Jump_00c_6a0b:
    ldh a, [$91]
    and $80
    jp z, Jump_00c_6a1a

    ld e, $02
    call Call_00c_6a48
    jp Jump_00c_6a26


Jump_00c_6a1a:
    ldh a, [$91]
    and $10
    jp z, Jump_00c_6a26

    ld e, $03
    call Call_00c_6a48

Jump_00c_6a26:
    ldh a, [$91]
    and $01
    jr nz, jr_00c_6a34

    ldh a, [$91]
    and $02
    jr nz, jr_00c_6a3a

    jr jr_00c_6a40

jr_00c_6a34:
    rst $08
    ld e, h
    ld a, $fe
    jr jr_00c_6a40

jr_00c_6a3a:
    rst $08

    db $5d

    ld a, $ff
    jr jr_00c_6a40

jr_00c_6a40:
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ret


Call_00c_6a48:
    rst $08
    ld e, e
    ld a, e
    cp $01
    jr jr_00c_6a5b

    cp $02
    jr jr_00c_6a5f

    cp $03
    jr jr_00c_6a63

    ld c, $04
    jr jr_00c_6a65

jr_00c_6a5b:
    ld c, $05
    jr jr_00c_6a65

jr_00c_6a5f:
    ld c, $04
    jr jr_00c_6a65

jr_00c_6a63:
    ld c, $05

jr_00c_6a65:
    ld hl, $d214
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, l
    ld d, l

jr_00c_6a6d:
    ld a, e
    cp $01
    jr z, jr_00c_6a88

    cp $02
    jr z, jr_00c_6aa1

    cp $03
    jr z, jr_00c_6aad

    ld c, $02
    ld a, d
    add $fb
    bit 7, a
    jr z, jr_00c_6ac6

    ld a, d
    add $0f
    jr jr_00c_6ac6

jr_00c_6a88:
    ld a, d
    dec a
    cp $ff
    jr z, jr_00c_6a9c

    cp $04
    jr z, jr_00c_6a9c

    cp $09
    jr z, jr_00c_6a9c

    cp $0e
    jr z, jr_00c_6a9c

    jr jr_00c_6ac6

jr_00c_6a9c:
    ld a, d
    add $04
    jr jr_00c_6ac6

jr_00c_6aa1:
    ld a, d
    add $05
    cp $14
    jr c, jr_00c_6ac6

    ld a, d
    add $f1
    jr jr_00c_6ac6

jr_00c_6aad:
    ld a, d
    inc a
    cp $05
    jr z, jr_00c_6ac1

    cp $0a
    jr z, jr_00c_6ac1

    cp $0f
    jr z, jr_00c_6ac1

    cp $14
    jr z, jr_00c_6ac1

    jr jr_00c_6ac6

jr_00c_6ac1:
    ld a, d
    add $fc
    jr jr_00c_6ac6

jr_00c_6ac6:
    ld d, a
    ld hl, $d227
    add l
    ld l, a
    jr nc, jr_00c_6acf

    inc h

jr_00c_6acf:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    cp $ff
    ld a, d
    jr nz, jr_00c_6adb

    dec c
    jr nz, jr_00c_6a6d

jr_00c_6adb:
    ld [$d214], a
    ld [$ca7f], a
    call Call_00c_6d76
    ret


Call_00c_6ae5:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d214]
    add a
    add a
    ld hl, $6b05
    add l
    ld l, a
    jr nc, jr_00c_6af8

    inc h

jr_00c_6af8:
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, l
    pop hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld e, l
    ret


    ld e, $00
    inc e
    nop
    ld [hl], $00
    inc e
    nop
    ld c, [hl]
    nop
    inc e
    nop
    ld h, [hl]
    nop
    inc e
    nop
    ld a, [hl]
    nop
    inc e
    nop
    ld e, $00
    inc [hl]
    nop
    ld [hl], $00
    inc [hl]
    nop
    ld c, [hl]
    nop
    inc [hl]
    nop
    ld h, [hl]
    nop
    inc [hl]
    nop
    ld a, [hl]
    nop
    inc [hl]
    nop
    ld e, $00
    ld c, h
    nop
    ld [hl], $00
    ld c, h
    nop
    ld c, [hl]
    nop
    ld c, h
    nop
    ld h, [hl]
    nop
    ld c, h
    nop
    ld a, [hl]
    nop
    ld c, h
    nop
    ld e, $00
    ld h, h
    nop
    ld [hl], $00
    ld h, h
    nop
    ld c, [hl]
    nop
    ld h, h
    nop
    ld h, [hl]
    nop
    ld h, h
    nop
    ld a, [hl]
    nop
    ld h, h
    nop
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d218
    inc hl
    inc hl
    push hl
    ld hl, $d220
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    inc a
    and $1f
    pop hl
    ld [hl], a
    ld hl, $6bf6
    add l
    ld l, a
    jr nc, jr_00c_6b7d

    inc h

jr_00c_6b7d:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    and $1f
    push af
    ld hl, $d221
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    inc a
    and $1f
    pop hl
    ld [hl], a
    ld hl, $6bf6
    add l
    ld l, a
    jr nc, jr_00c_6b99

    inc h

jr_00c_6b99:
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    and $1f
    ld b, a
    ld hl, $d222
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    inc a
    and $1f
    pop hl
    ld [hl], a
    ld hl, $6bf6
    add l
    ld l, a
    jr nc, jr_00c_6bb6

    inc h

jr_00c_6bb6:
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    and $1f
    ld d, a
    pop af
    pop hl
    push bc
    sla b
    sla b
    sla b
    sla b
    sla b
    add b
    pop bc
    push af
    ld a, b
    sra a
    sra a
    sra a
    and $03
    ld b, a
    ld a, d
    sla a
    sla a
    add b
    pop bc
    ld [hl], b
    inc hl
    ld [hl], a
    ld hl, $d218
    ld de, $0a01
    call Call_000_056c
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    rra
    nop
    ld a, [de]
    rra
    ld [bc], a
    inc e
    rra
    inc b
    rra
    rra
    ld b, $1f
    rra
    ld [$1f1f], sp
    ld a, [bc]
    rra
    rra
    inc c
    rra
    rra
    ld c, $1f
    rra
    db $10
    rra
    rra
    ld c, $1f
    rra
    inc c
    rra
    rra
    ld a, [bc]
    rra
    rra
    ld [$1f1f], sp
    ld b, $1f
    rra
    inc b
    rra
    rra
    ld [bc], a
    inc e
    rra
    nop
    ld a, [de]

Call_00c_6c29:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld c, $00

jr_00c_6c32:
    rst $18

    db $3c, $0b

    call Call_000_2b54
    cp $ff
    jr nz, jr_00c_6c41

    call Call_00c_6c91
    jr jr_00c_6c44

jr_00c_6c41:
    call Call_00c_6c54

jr_00c_6c44:
    inc c
    ld a, c
    cp $04
    jr nz, jr_00c_6c32

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_6c54:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    add a
    add a
    add c
    ld hl, $d227
    add l
    ld l, a
    jr nc, jr_00c_6c6d

    inc h

jr_00c_6c6d:
    ld c, $00

jr_00c_6c6f:
    push bc
    rst $18

    db $40, $0b

    ld a, b
    pop bc
    or a
    jr nz, jr_00c_6c7d

    ld a, $ff
    ld [hl+], a
    jr jr_00c_6c81

jr_00c_6c7d:
    rst $18
    ld a, $0b
    ld [hl+], a

jr_00c_6c81:
    inc c
    ld a, c
    cp $05
    jr nz, jr_00c_6c6f

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_6c91:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    add a
    add a
    add c
    ld hl, $d227
    add l
    ld l, a
    jr nc, jr_00c_6caa

    inc h

jr_00c_6caa:
    ld c, $05
    ld a, $ff

jr_00c_6cae:
    ld [hl+], a
    dec c
    jr nz, jr_00c_6cae

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_6cbc:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4c10
    ld de, $d000
    call Call_000_0234
    ld hl, $4c0e
    ld de, $d400
    call Call_000_0234
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $00

jr_00c_6ce3:
    ld hl, $d227
    ld a, c
    add a
    add a
    add c
    add l
    ld l, a
    jr nc, jr_00c_6cef

    inc h

jr_00c_6cef:
    ld b, $05
    ld de, $0044

jr_00c_6cf4:
    push hl
    ld a, [hl]
    cp $ff
    jr z, jr_00c_6d0e

    push af
    ld a, c
    add a
    add c
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    pop af
    push bc
    ld c, a
    call Call_00c_5f32
    pop bc

jr_00c_6d0e:
    pop hl
    ld a, e
    add $03
    ld e, a
    xor a
    adc d
    ld d, a
    inc hl
    dec b
    jr nz, jr_00c_6cf4

    inc c
    ld a, c
    cp $04
    jr nz, jr_00c_6ce3

    call Call_00c_5ef6
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_6d2d:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$ca7f]
    ld c, a
    ld hl, $d227
    add l
    ld l, a
    jr nc, jr_00c_6d46

    inc h

jr_00c_6d46:
    ld a, [hl]
    cp $ff
    jr nz, jr_00c_6d5b

    ld hl, $d227
    ld c, $00

jr_00c_6d50:
    ld a, [hl+]
    cp $ff
    jr nz, jr_00c_6d5b

    inc c
    ld a, c
    cp $14
    jr nz, jr_00c_6d50

jr_00c_6d5b:
    ld a, c
    ld [$d214], a
    cp $14
    jr c, jr_00c_6d67

    ld a, $00
    jr jr_00c_6d69

jr_00c_6d67:
    ld a, $01

jr_00c_6d69:
    ld [$d215], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_6d76:
    push af
    push hl
    push de
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d215]
    or a
    jr z, jr_00c_6d9a

    call Call_00c_6da3
    push bc
    ld c, b
    rst $18
    inc a
    dec bc
    call Call_000_2b54
    pop bc
    rst $18
    ld b, b
    dec bc
    call Call_00c_6dc8

jr_00c_6d9a:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop de
    pop hl
    pop af
    ret


Call_00c_6da3:
    push af
    push hl
    push de
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld b, $00
    ld a, [$d214]
    ld c, a

jr_00c_6db5:
    sub $05
    bit 7, a
    jr nz, jr_00c_6dbf

    ld c, a
    inc b
    jr jr_00c_6db5

jr_00c_6dbf:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop de
    pop hl
    pop af
    ret


Call_00c_6dc8:
    push bc
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4c10
    ld de, $d000
    call Call_000_0234
    ld hl, $4c0e
    ld de, $d400
    call Call_000_0234
    xor a
    ld c, $0a
    ld hl, $d1e1
    call Call_00c_6e7b
    ld c, $07
    ld hl, $d1ec
    call Call_00c_6e7b
    ld c, $0b
    ld hl, $d201
    call Call_00c_6e7b
    ld c, $07
    ld hl, $d20c
    call Call_00c_6e7b
    ld a, $03
    ld c, $0a
    ld hl, $d5e1
    call Call_00c_6e7b
    ld c, $07
    ld hl, $d5ec
    call Call_00c_6e7b
    ld a, $20
    ld c, $0b
    ld hl, $d601
    call Call_00c_6e7b
    ld c, $07
    ld hl, $d60c
    call Call_00c_6e7b
    pop bc
    push bc
    rst $18
    ld a, [de]
    inc bc
    ld hl, $1424
    ld a, b
    dec a
    add l
    ld l, a
    jr nc, jr_00c_6e35

    inc h

jr_00c_6e35:
    ld de, $d602
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    pop bc
    ld h, $00
    ld l, c
    ld de, $d610
    ld a, $02
    call Call_000_21f0
    ld a, $20
    ld hl, $d612
    ld [hl], a
    ld hl, $1422
    ld a, $01
    add l
    ld l, a
    jr nc, jr_00c_6e59

    inc h

jr_00c_6e59:
    ld de, $d60d
    ld c, $20
    rst $18
    ld [hl+], a
    dec b
    rst $18
    inc h
    inc bc
    ld hl, $d1e0
    ld de, $b9e0
    ld c, $06
    call Call_000_0468
    ld hl, $d5e0
    ld de, $99e0
    ld c, $06
    call Call_000_0468
    ret


Call_00c_6e7b:
jr_00c_6e7b:
    ld [hl+], a
    dec c
    jr nz, jr_00c_6e7b

    ret


    push af
    push bc
    push de
    push hl
    ld b, a
    ldh a, [$96]
    push af
    ld a, b
    push de
    push af
    ld a, a
    ld de, $0d02
    call Call_000_22a5
    pop af
    pop de
    add a
    ld hl, $6ec3
    add l
    ld l, a
    jr nc, jr_00c_6e9d

    inc h

jr_00c_6e9d:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2e3b
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    push de
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    pop de
    ld c, $0a
    call Call_000_0468
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    jr @+$42

    ld a, [de]
    ld b, b
    inc e
    ld b, b
    ld e, $40
    jr nz, jr_00c_6f0d

    ld [hl+], a
    ld b, b
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    call Call_00c_6f4b
    xor a
    ld [$d214], a
    rst $18
    jr z, jr_00c_6ef5

    call Call_000_2b54
    ld b, $00
    rst $18
    ld a, [hl+]
    dec bc
    rst $18
    ld l, $0b

jr_00c_6ef5:
    call Call_00c_7083
    ld a, [$d226]
    ld a, $0f
    ld hl, $705d
    call Call_000_23e8
    ld a, [$d226]
    or a
    jr z, jr_00c_6f15

    cp $01
    jr z, jr_00c_6f15

jr_00c_6f0d:
    ld a, $1d
    ld hl, $4894
    call Call_000_23e8

jr_00c_6f15:
    call Call_000_2e3b
    ld c, $10
    call Call_000_25af
    call Call_000_2625

jr_00c_6f20:
    call Call_000_2e3b
    call Call_00c_6ff1
    cp $ff
    jr nz, jr_00c_6f20

    push af
    ld hl, $705d
    call Call_000_2449
    ld a, [$d226]
    or a
    jr z, jr_00c_6f41

    cp $01
    jr z, jr_00c_6f41

    ld hl, $4894
    call Call_000_2449

jr_00c_6f41:
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    pop af
    ret


Call_00c_6f4b:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ldh [$8a], a
    ldh [$8b], a
    call Call_000_0341
    call Call_000_23b6
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4b20
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $8e00
    ld c, $04
    call Call_000_04db
    ld hl, $419b
    ld de, $0801
    call Call_000_0595
    ld hl, $4d1a
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $b000
    ld c, $80
    call Call_000_04db
    ld hl, $d800
    ld de, $a800
    ld c, $80
    call Call_000_04db
    ld hl, $5c00
    ld de, $0008
    call Call_000_0595
    ld hl, $4d1c
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $b800
    ld c, $24
    call Call_000_04db
    ld hl, $4d1e
    ld de, $d400
    call Call_000_0234
    ld hl, $d400
    ld de, $9800
    ld c, $24
    call Call_000_04db
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4d20
    ld de, $d000
    call Call_000_0234
    ld hl, $4d22
    ld de, $d400
    call Call_000_0234
    call Call_000_0371
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_00c_6ff1:
    push bc
    push hl
    push de
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d226]
    ld b, a
    ldh a, [$91]
    bit 5, a
    jr z, jr_00c_7023

    ld a, [$d214]
    dec a
    bit 7, a
    jr z, jr_00c_7011

    ld a, b
    dec a

jr_00c_7011:
    ld b, a
    ld a, [$d214]
    cp b
    jr z, jr_00c_7021

    ld a, b
    ld [$d214], a
    call Call_00c_7083
    rst $08
    ld e, e

jr_00c_7021:
    jr jr_00c_7052

jr_00c_7023:
    bit 4, a
    jr z, jr_00c_7042

    ld a, [$d214]
    inc a
    cp b
    jr c, jr_00c_7030

    ld a, $00

jr_00c_7030:
    ld b, a
    ld a, [$d214]
    cp b
    jr z, jr_00c_7040

    ld a, b
    ld [$d214], a
    call Call_00c_7083
    rst $08
    ld e, e

jr_00c_7040:
    jr jr_00c_7052

jr_00c_7042:
    bit 0, a
    jr z, jr_00c_7048

    jr jr_00c_7052

jr_00c_7048:
    bit 1, a
    jr z, jr_00c_7052

    rst $08
    ld e, l
    ld a, $ff
    jr jr_00c_7052

jr_00c_7052:
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    pop de
    pop hl
    pop bc
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $b220
    ld a, l
    ld [$d23e], a
    ld a, h
    ld [$d23f], a
    ld hl, $b240
    ld a, l
    ld [$d240], a
    ld a, h
    ld [$d241], a
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    call Call_00c_436a
    ret


Call_00c_7083:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4d1c
    ld de, $d000
    call Call_000_0234
    ld hl, $4d1e
    ld de, $d400
    call Call_000_0234
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d214]
    ld b, a
    ld de, $a860
    call Call_00c_49c1
    call Call_00c_70c2
    call Call_00c_5ef6
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_70c2:
    push af
    push bc
    push de
    push hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d227
    ld a, $ff
    ld c, $14

jr_00c_70d3:
    ld [hl+], a
    dec c
    jr nz, jr_00c_70d3

    ld hl, $d227
    ld a, [$d214]
    ld b, a
    ld c, $00

jr_00c_70e0:
    rst $18
    ld [hl], $0b
    or a
    jr z, jr_00c_70e8

    ld a, c
    ld [hl+], a

jr_00c_70e8:
    inc c
    ld a, c
    cp $12
    jr nz, jr_00c_70e0

    pop hl
    pop de
    pop bc
    pop af
    call Call_00c_70fc
    call Call_00c_7136
    call Call_00c_7297
    ret


Call_00c_70fc:
    push af
    push bc
    push de
    push hl
    ld hl, $d227
    ld a, [$d214]
    ld b, a

jr_00c_7107:
    ld a, [hl]
    cp $ff
    jr z, jr_00c_7131

    ld d, a
    ld c, a
    rst $18
    ld [hl], $0b
    ld c, a
    push hl
    push bc
    inc hl

jr_00c_7115:
    ld a, [hl]
    cp $ff
    jr z, jr_00c_712b

    ld e, a
    ld c, a
    rst $18
    ld [hl], $0b
    pop bc
    cp c
    jr nc, jr_00c_7127

    ld c, a
    ld a, d
    ld d, e
    ld [hl], a

jr_00c_7127:
    push bc
    inc hl
    jr jr_00c_7115

jr_00c_712b:
    pop bc
    pop hl
    ld a, d
    ld [hl+], a
    jr jr_00c_7107

jr_00c_7131:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_7136:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld hl, $d227
    ld c, $00

Jump_00c_7142:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    cp $ff
    jp z, Jump_00c_7265

    push hl
    push af
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    ld d, h
    ld e, l
    ld hl, $d000
    add hl, de
    push hl
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    add a
    ld hl, $726f
    add l
    ld l, a
    jr nc, jr_00c_7173

    inc h

jr_00c_7173:
    ld a, [hl+]
    push af
    ld a, [hl]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    pop af
    add l
    ld l, a
    jr nc, jr_00c_7184

    inc h

jr_00c_7184:
    ld de, $d000
    add hl, de
    ld d, h
    ld e, l
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    ld a, [hl]
    push hl
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ld h, d
    ld l, e
    ld [hl], a
    ld d, h
    ld e, l
    pop hl
    push hl
    ld a, $04
    add h
    ld h, a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    pop hl
    inc hl
    push hl
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld h, d
    ld l, e
    ld a, $04
    add h
    ld h, a
    pop af
    ld [hl], a
    inc de
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    ld a, [hl]
    push hl
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ld h, d
    ld l, e
    ld [hl], a
    pop hl
    push hl
    ld a, $04
    add h
    ld h, a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    pop hl
    inc hl
    push hl
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld h, d
    ld l, e
    ld a, $04
    add h
    ld h, a
    pop af
    ld [hl], a
    pop hl
    dec de
    ld a, $20
    add e
    ld e, a
    jr nc, jr_00c_71fc

    inc d

jr_00c_71fc:
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    push hl
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ld h, d
    ld l, e
    ld [hl], a
    ld d, h
    ld e, l
    pop hl
    push hl
    ld a, $04
    add h
    ld h, a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    pop hl
    inc hl
    push hl
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld h, d
    ld l, e
    ld a, $04
    add h
    ld h, a
    pop af
    ld [hl], a
    inc de
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    ld a, [hl]
    push hl
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ld h, d
    ld l, e
    ld [hl], a
    pop hl
    ld a, $04
    add h
    ld h, a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld h, d
    ld l, e
    ld a, $04
    add h
    ld h, a
    pop af
    ld [hl], a
    pop hl
    inc c
    jp Jump_00c_7142


Jump_00c_7265:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    ld bc, $0105
    rlca
    ld bc, $0109
    dec bc
    ld bc, $010d
    rrca
    rlca
    dec b
    rlca
    rlca
    rlca
    add hl, bc
    rlca
    dec bc
    rlca
    dec c
    rlca
    rrca
    dec c
    dec b
    dec c
    rlca
    dec c
    add hl, bc
    dec c
    dec bc
    dec c
    dec c
    dec c
    rrca
    dec c
    rrca
    dec c
    rrca

Call_00c_7297:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d214]
    ld b, a
    ld hl, $d227
    ld c, $00

Jump_00c_72ad:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    cp $ff
    jp z, Jump_00c_731c

    push hl
    push bc
    ld c, a
    rst $18
    ld [hl], $0b
    pop bc
    or a
    jr z, jr_00c_7317

    bit 7, a
    jr nz, jr_00c_7317

    push af
    ld a, c
    add a
    ld hl, $726f
    add l
    ld l, a
    jr nc, jr_00c_72d2

    inc h

jr_00c_72d2:
    ld a, [hl+]
    push af
    ld a, [hl]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    pop af
    add l
    ld l, a
    jr nc, jr_00c_72e3

    inc h

jr_00c_72e3:
    ld de, $d423
    add hl, de
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    sub $36
    or a
    jr z, jr_00c_730b

    bit 7, a
    jr nz, jr_00c_72fe

    push af
    ld a, $3d
    ld [hl+], a
    pop af
    jr jr_00c_7310

jr_00c_72fe:
    add $36
    ld d, a
    ld a, $36
    sub d
    push af
    ld a, $3e
    ld [hl+], a
    pop af
    jr jr_00c_7310

jr_00c_730b:
    push af
    ld a, $3f
    ld [hl+], a
    pop af

jr_00c_7310:
    push bc
    ld b, $33
    call Call_00c_7326
    pop bc

jr_00c_7317:
    inc c
    pop hl
    jp Jump_00c_72ad


Jump_00c_731c:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00c_7326:
    push af
    push bc
    push de
    push hl
    cp $64
    jr c, jr_00c_7337

    dec hl
    ld a, $0b
    add b
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_00c_736d

jr_00c_7337:
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    cp $0a
    jr nc, jr_00c_7344

    inc hl

jr_00c_7344:
    ld c, $00
    ld d, $00
    ld e, $00
    push af
    cp $0a
    jr c, jr_00c_7359

jr_00c_734f:
    add $f6
    bit 7, a
    jr nz, jr_00c_7358

    inc c
    jr jr_00c_734f

jr_00c_7358:
    ld d, c

jr_00c_7359:
    ld a, c
    add a
    add a
    add a
    add c
    add c
    ld c, a
    pop af
    sub c
    ld e, a
    ld a, d
    or a
    jr z, jr_00c_736a

    ld a, d
    add b
    ld [hl+], a

jr_00c_736a:
    ld a, e
    add b
    ld [hl], a

jr_00c_736d:
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
    nop
    nop
    nop
    nop
    nop
    nop
    push af
    nop
    rst $38
    db $e3
    rst $38
    ld hl, sp-$1b
    inc a
    inc a
    ld e, d
    ld h, [hl]
    cp a
    ld a, [hl]
    ld b, d
    ld e, d
    rst $20
    ld e, d
    ld h, [hl]
    or $e1
    inc a
    rst $38
    rst $38
    ld l, h
    ld l, h
    cp $92
    cp $da
    jp c, $b7f7

    db $fc
    db $fc
    ret c

    db $e3
    inc h
    inc h
    ld a, [hl]
    ld e, d
    ld l, a
    rst $38
    add c
    ld a, [hl]
    db $db
    ld a, [$5ae2]
    inc h
    ldh a, [$e2]
    rst $38
    cp a
    pop bc
    rst $38
    sbc e
    cp l
    jp $d9ff


    rst $38
    db $fd
    add e
    ld a, [hl]
    rst $38
    ld [hl], e
    ld [hl], e
    xor a
    db $dd
    rst $38
    db $fd
    xor e
    xor d
    rst $10
    ld [hl], l
    ld l, e
    rst $28
    push de
    rst $38
    push de
    cp e
    ld l, [hl]
    rst $38
    ld [hl], b
    ld [hl], b
    xor b
    ret c

    rst $38
    ei
    xor e
    ld l, a
    db $dd
    db $dd
    xor e
    ld_long $ffb6, a
    cp [hl]
    jp z, $ff74

    ld h, b
    ld h, b
    ldh a, [$90]
    cp a

jr_00c_73ea:
    ldh a, [$d0]
    ret nc

    cp a
    ldh [$e0], a
    adc b
    db $e3
    inc e
    ld a, a
    inc e
    inc l
    inc [hl]
    jr c, jr_00c_7421

    jr c, jr_00c_73ea

    db $fc
    ldh [rIE], a
    jr z, jr_00c_742c

    inc [hl]
    jr @+$01

    jr c, jr_00c_743d

    inc [hl]
    rst $18
    inc l
    inc e
    inc d
    inc e
    rst $30
    db $fc
    ldh [rNR14], a
    inc [hl]
    rst $38
    inc l
    jr @+$01

    jp $e7c3


    and l
    ld a, [hl]
    rst $28
    ld e, d
    inc a
    rst $20
    inc a
    adc b
    ldh [$e7], a

jr_00c_7421:
    and l
    ld b, d
    ld a, [hl]
    ld h, b
    ldh [$3c], a
    inc h
    rst $38

jr_00c_7429:
    rst $20
    rst $38
    add c

jr_00c_742c:
    cp $e0
    ld a, [$e0ec]
    inc a
    ld c, b
    db $e4
    jr nc, @+$01

    ld a, b
    ld c, b
    ld a, b
    ld l, a
    ld l, b
    ld l, b
    ld e, b

jr_00c_743d:
    jr nc, jr_00c_7477

    ld [c], a
    rst $38
    rst $38
    ldh [$e2], a
    nop
    inc l
    pop hl
    jr nc, jr_00c_7429

    jp nc, $c0e2

    ldh [$ea], a
    ld [c], a
    rst $38
    pop hl
    add $e1
    call nz, $fce1
    cp $e1
    db $10
    ld [c], a
    cp l
    db $db
    rst $28
    sub c
    rst $30
    adc c
    ei
    cp l
    db $db
    db $10
    pop hl
    inc a
    inc a
    ld e, h
    ld h, h
    ld a, h
    di
    ld b, h
    ld a, h
    sub b
    pop hl
    ld hl, sp-$40
    inc a
    rst $38
    ld a, [hl]
    ld a, [hl]
    cp $26

jr_00c_7477:
    ldh [$99], a
    rst $30
    ld sp, hl
    cp c
    rst $00
    rst $28
    sbc a
    db $fc
    ld [$f0e0], sp
    ld [c], a
    rst $30
    sbc c
    ld a, [hl]
    db $e3
    rst $38
    ld sp, hl
    rst $38
    rst $38
    sbc c
    cp l
    jp $ff7e


    ld a, $3e
    rst $38
    ld e, [hl]
    ld h, d
    cp [hl]
    jp nz, $93fe

    rst $38
    sub e
    db $76
    ld l, h
    ldh [$f3], a
    inc c
    and b
    db $e3
    sbc a
    db $fd
    add e
    ldh [$e5], a
    dec hl
    ld a, [hl]
    ld a, [hl]
    ld [c], a
    ldh [$9e], a
    ldh a, [$e0]

jr_00c_74b0:
    sbc c
    ret nc

    db $e3
    ld h, h
    pop hl
    cp a

jr_00c_74b6:
    push af
    ei
    ld l, $f3
    ld a, [hl-]
    ld h, $7e
    pop hl
    jr jr_00c_74b0

    and b
    db $e4
    sbc h
    pop hl
    ret nc

    push hl
    db $f4
    db $e3
    cp a
    pop bc
    ld a, a
    ld a, c
    add $a0
    pop hl
    nop
    nop
    ld c, $e1
    jr jr_00c_74b6

    ld hl, sp-$1b
    jr @+$1a

    xor $48
    ld [c], a
    inc h

jr_00c_74dd:
    inc a
    inc [hl]
    ldh [$c1], a
    ld a, [de]
    ld d, $34
    rst $38
    inc l
    ld l, b
    ld e, b
    ld l, b
    rst $18
    inc [hl]
    inc l
    ld a, [de]
    rst $20
    ld d, $0e
    ld c, $38
    pop bc
    jr jr_00c_74dd

    rst $38
    nop
    rst $38
    rst $38
    ld e, b
    ld l, b
    inc l
    inc [hl]
    ld d, $1a
    ld d, $fb
    ld a, a
    inc l
    inc [hl]
    ld e, b
    ld l, b
    ld [hl], b
    ld [hl], b
    nop
    jr nc, @-$1a

    di
    db $eb
    rst $30
    call nz, Call_000_20c0
    jp nz, Jump_000_3c3c

    ld h, d
    ld e, [hl]
    rst $38
    rst $18
    cp c
    or e
    db $ed
    xor a
    push af
    cp l
    db $db
    db $e3
    ld [hl], d
    ld c, [hl]
    ldh a, [$c5]
    ld d, d
    pop hl
    sbc h
    ret nz

    sbc c
    rst $20
    rst $38
    cp a
    db $fc
    db $fc
    ld a, [$fe86]
    sbc d
    ld b, b
    db $e3
    db $fd
    adc e
    add e
    cp $e0
    push hl
    sbc a
    ld [bc], a
    ldh [$d0], a
    jp nz, $e1e0

    db $fd
    cp l
    sbc e
    ld [c], a
    ld [c], a
    sbc e
    ld a, [$fc86]
    and b
    jp nz, Jump_00c_7ffe

    sbc [hl]
    cp $83
    db $fc
    sbc h
    cp $9e
    sub b
    push bc
    db $ec
    ldh a, [$e3]
    ld [$90c0], sp
    ldh a, [$90]
    call nz, $9ffe
    rst $38
    rst $38
    sub c
    cp a
    reti


    ld e, e
    ld h, l
    ccf
    rst $38
    rst $20
    jp hl


    rst $20
    sub h
    push hl
    sbc $c1
    rst $20
    sub b
    ret nz

    ld a, [hl]
    ld b, d
    ld a, [hl]
    pop af
    ld h, [hl]
    db $10
    jp nz, $a078

    ret nc

    jp $f3ff


    ld a, [hl]
    di
    rst $38
    cp $92
    cp d
    add $54
    ld l, h
    jr c, @+$01

    rst $38
    xor $ee
    rst $30
    sbc c
    db $ed
    sub e
    ld_long a, $ff87
    ld a, [$ed86]
    sub e
    rst $30
    sbc c
    xor $ff
    dec sp
    ldh a, [$f0]
    xor b
    ld [c], a
    sbc a
    ldh a, [$90]
    ld l, h
    ldh [$0c], a
    ret nz

    rst $38
    rst $30

jr_00c_75ad:
    rst $30
    db $eb
    sbc l

jr_00c_75b0:
    rst $30
    adc c
    db $eb
    sub l
    ld a, a
    rst $30
    sbc l
    rst $38
    sbc l
    rst $30
    sub l
    ld h, d
    and b
    ld [c], a
    rrca
    rst $28
    sbc c
    rst $30
    adc c
    ld e, $c0
    and b
    ld [c], a
    jr nz, jr_00c_75b0

    ld b, b
    db $eb
    ld [hl-], a
    ld b, d
    ld [c], a
    sbc h
    ld h, b
    push hl
    ld [bc], a
    pop hl
    cp l
    db $db
    ld h, b

jr_00c_75d6:
    pop hl
    ldh [$e9], a

jr_00c_75d9:
    rst $30
    rst $38
    sbc c
    and $f0
    and h
    or [hl]
    rst $08
    ld l, l
    ld [hl], e
    ret nz

    jr nc, jr_00c_75ad

    or b
    xor c
    add h
    and b
    ld [hl], $e2
    ldh [$c5], a
    ldh a, [$e5]
    and l
    db $db
    db $ec
    xor d
    add b
    or b
    add b
    rst $30
    rst $30
    ld l, b
    ldh [$9d], a
    xor e
    push de
    ld a, a
    cp a
    pop bc
    ld [hl], l
    ld c, e
    ld a, [hl]
    ld c, d
    inc [hl]
    nop
    ld [c], a
    ld d, e
    cp l
    jp $8190


    sbc b
    and c
    rst $20
    ldh a, [$c4]
    and l
    ld [hl], h
    and c
    cp $b0
    push hl
    add c
    ld l, l
    ld [hl], e
    ld a, [hl-]
    rst $20
    ld e, h
    ld h, h
    db $d3
    or a
    rst $08
    inc l
    and c
    ld a, [c]
    and d
    inc l
    ret nc

    add c
    inc a
    inc l
    cp $00
    and c
    sub $ba
    cp d
    sub $54
    ld l, h
    cp $ff
    add e
    cp $ee
    cp $82
    cp $ee
    jr c, jr_00c_75d9

    ldh [$e3], a
    inc [hl]
    ret nz

    add c
    inc a
    inc [hl]
    ldh [$81], a
    jp nc, Jump_00c_7ea1

    jp Jump_00c_665a


    jr nz, jr_00c_75d6

    db $10
    add a
    ldh a, [$83]
    ldh [$8d], a
    inc a
    inc a
    rst $38
    ld a, d
    ld b, [hl]
    dec a
    dec sp
    ld e, a
    pop hl
    cp a
    reti


    rst $38
    rst $38
    sbc c
    ld a, a
    ld b, c
    ccf
    rst $38
    ldh [$e0], a
    cp a
    ldh a, [$90]
    db $fc
    sbc h
    ld a, [$1c87]
    pop bc
    cp $fb
    add d
    db $fc
    ld [hl], b
    and d
    ld e, [hl]
    ld h, d
    cp a
    reti


    or $ff
    sub [hl]
    cp a
    reti


    ld e, [hl]
    ld h, d
    inc a
    rst $38
    rlca
    rra
    rlca
    rrca
    add hl, bc
    ccf
    add hl, sp
    ret nc

    rst $20
    ld d, b
    and c
    cp [hl]
    and d
    rst $30
    add c
    cp [hl]
    sbc $e0
    pop hl
    rrca
    rrca
    rla
    add hl, de
    xor a
    cpl
    scf
    cp $e7
    ld h, d
    ldh [$e6], a
    ld d, b
    add c
    ccf
    rst $30
    ccf
    ld e, e
    ld h, l
    and h
    db $e3
    dec a
    dec sp
    ld a, d
    ld b, [hl]
    reti


    inc a
    and b
    ld [$a190], a
    ld a, b
    ld a, b
    ld [hl], $80
    ld c, b
    ld a, b
    add sp, $30
    add c
    ld hl, sp-$1e
    ld [bc], a
    and d
    inc a
    nop
    add c
    db $f4
    db $ec
    add sp, -$05
    sbc b
    ld [hl], b
    db $10
    ret nz

    or $96
    rst $38
    sbc c
    ei
    ld d, a
    add a
    cp $8e
    ld [hl], b
    pop bc
    rst $30
    ret nc

    push hl
    rst $08
    ret nc

    push hl
    inc d
    jr nc, jr_00c_7745

    ld c, h
    and b
    add a
    ld a, [hl]
    add b
    xor c
    cp $e0
    jr z, jr_00c_774e

    ld a, $a0
    rrca
    and [hl]
    db $fd
    add e
    rst $28
    and b
    and h
    ld h, b
    and $40
    xor c
    ld h, d
    add b
    sbc $00
    push bc
    ccf
    ccf
    ld e, a
    ld h, c
    jr nc, jr_00c_7766

    sbc c
    cp a
    cp a
    reti


    ld e, a
    ld h, c
    ccf
    add hl, sp
    rrca
    or b
    add e
    sub c
    ld l, a
    rst $30
    adc a
    add sp, -$68
    ld b, b
    and e
    nop
    nop
    sbc $e2
    rst $18
    rst $18
    rst $38
    add c
    db $fd
    ei
    db $10
    and c
    inc a
    inc a
    ld a, h
    ld e, b
    and d
    ld h, b
    ld h, b
    ld a, $26
    ld l, $32
    ld e, $b8
    ld b, b
    ld [$a42e], sp
    cp [hl]
    db $e3
    ldh a, [$e4]
    cp l
    ld [bc], a
    jp $8010


    ld h, d
    ld h, d
    ld h, [hl]
    ldh [$7f], a
    db $fd

jr_00c_7745:
    xor e
    cp $82
    ld a, d
    ld d, [hl]
    inc l
    ldh [$e5], a
    dec bc

jr_00c_774e:
    jp Jump_000_007e


    jp nz, $f0f7

    add h
    add d
    pop hl
    ldh [$c3], a
    ld [hl-], a
    ld h, e
    rra
    ld a, l
    di
    ld e, d
    ld h, [hl]
    cp a
    nop
    jp nz, Jump_00c_4450

    rst $38

jr_00c_7766:
    rst $38
    db $fc
    rst $38
    rst $38
    dec b
    ld b, d
    ld b, b
    nop
    ld a, b
    nop

jr_00c_7770:
    db $fc
    inc a
    rst $38
    ld a, [hl]
    ld hl, $2faf
    ldh [rLCDC], a
    sbc $40
    rst $38

jr_00c_777c:
    ld c, a
    rst $38
    jr nz, jr_00c_7780

jr_00c_7780:
    ld a, h
    nop
    ld a, $1e
    rst $38
    ld a, h
    add e
    ld a, [hl]
    inc a
    inc hl
    ld hl, $033f
    cp $30
    pop hl
    inc a
    nop
    sbc $1c
    ld h, e
    db $fd
    inc bc
    cp a
    ld bc, $0105
    ld a, [hl-]
    ld [bc], a
    inc e
    ret c

jr_00c_779f:
    jr nz, jr_00c_779f

    rst $38
    nop
    ld a, a
    ld h, a
    inc l
    rst $18
    ld d, b
    db $10
    ld h, b
    rst $38
    jr nz, jr_00c_77e9

    nop
    ld e, $ff
    ld b, b
    nop
    inc l
    rst $38
    nop
    ld [hl], $06
    ld e, b
    cp a
    and b
    jr nz, jr_00c_777c

    ld sp, hl
    ld b, b
    add $e0
    ldh a, [$e0]
    ld l, h
    nop
    or $34
    ld h, a
    rst $38
    cp e
    cp $62
    xor $4a
    ld e, d
    ld b, b
    dec c
    cp $a8
    jr nz, jr_00c_7770

    nop
    adc $4c
    pop bc
    ld a, a
    ret nz

    rst $38
    ld b, b
    ldh [rLCDC], a
    ld e, [hl]
    nop
    cpl
    rst $38
    db $10
    rst $38
    nop
    ld e, b
    ld [$207c], sp

jr_00c_77e9:
    ld a, [hl]
    adc l
    rst $38
    cp a
    ld e, c
    ei
    ld d, c
    ld a, a
    ld [hl-], a
    daa
    sub b
    ldh [$fc], a
    rst $38
    db $10
    ld a, [hl]
    ld c, h
    dec sp
    db $dd
    ld [hl], a
    ld de, $effb
    ld d, c
    ld [hl], a
    ld d, d
    inc de
    ld a, b
    jr nz, jr_00c_783f

    nop
    ld a, h
    rst $38
    jr z, @-$04

    ld l, l
    db $db
    ld c, c
    ei
    ld e, c
    ld [hl], a
    rst $38
    inc sp
    ld [hl+], a
    rst $38
    inc b

jr_00c_7817:
    nop
    cp [hl]
    nop
    rst $18
    rst $38
    ld e, e
    add $7b
    sbc $42
    xor $4a
    ld e, [hl]
    rst $38
    inc b
    dec l
    rst $38
    ldh [rP1], a
    ld [hl], h
    ld d, b
    db $76
    rst $38
    jr nc, jr_00c_7817

    ld a, e
    add $42
    add $42

jr_00c_7835:
    ld a, [hl]
    rst $38
    ld b, $3c
    rst $38
    jr nc, jr_00c_783c

jr_00c_783c:
    jr @+$12

    inc d

jr_00c_783f:
    rst $38
    inc b
    ld e, h
    xor e
    xor d
    jr nz, jr_00c_7835

    ld b, l
    ld [hl], l
    ei
    ld b, l
    ld a, [de]
    jr c, jr_00c_786f

    jr nz, jr_00c_784f

jr_00c_784f:
    ld [hl], b
    xor a
    add sp, -$01
    ld h, b
    ld b, [hl]
    ld b, b
    inc bc
    inc bc
    nop
    rst $38
    ld e, $bf
    nop
    adc a
    dec bc
    sbc $40
    rst $08
    ret nz

    ldh [$fe], a
    rst $28
    ld e, d
    ld a, [hl]
    inc h
    dec l
    add b
    ldh [$fc], a
    nop
    ld a, [hl]

jr_00c_786f:
    rst $38
    ld l, [hl]
    db $fc
    inc bc
    ld a, [hl]
    ld c, $f8
    ld h, b
    ld a, h
    rst $38
    jr jr_00c_78ad

    rst $38
    ld a, b
    nop
    inc a

jr_00c_787f:
    inc l
    inc e
    rst $38
    ld [$837e], sp
    cp [hl]
    jr jr_00c_787f

    ld d, e
    ld e, d
    ei
    ld [de], a
    inc h
    nop
    ldh [$74], a
    nop
    ld a, [hl-]
    jr @+$73

    rst $38
    sbc a
    or d
    db $10
    ld [hl], e
    ld de, $013d
    ld e, $fe
    ld d, b
    ld [c], a
    ld a, b
    jr nz, jr_00c_790f

    sbc e
    or d
    db $10
    di
    rst $28
    ld d, c
    ld e, l
    ld de, $e026

jr_00c_78ad:
    ret nz

    inc a
    nop
    cp $ff
    ld e, $7c
    jp $1efe


    ld [hl], d
    ld d, b
    ccf
    rst $38
    inc hl

jr_00c_78bc:
    ld c, $ff
    ld c, b
    nop
    ld a, h
    jr nz, @-$10

    rst $38
    inc c
    ld [hl], e
    db $dd
    scf
    inc de
    ld [de], a
    ld [bc], a
    jr jr_00c_78bc

    ld [$ff08], sp
    ld [$e010], sp
    xor $44
    rst $38
    rst $38

jr_00c_78d7:
    dec [hl]
    rst $38
    ld d, l
    ld e, l
    ld b, c
    ld e, $0e
    ld [$10fe], sp
    ldh [rNR32], a
    nop
    ld e, $0e
    jr jr_00c_78d7

    ld a, b
    cp a
    ld [$20b8], sp
    ld l, h
    ld [$5032], sp
    ld [c], a
    inc l
    ld sp, hl
    inc c
    and b
    jp $e1a0


    ld b, h
    nop
    ld h, [hl]
    ld [hl+], a
    ld h, [hl]
    rst $38
    ld [hl+], a
    ld h, $db
    ld d, $12
    ld c, $06
    inc a
    di
    inc c
    jr jr_00c_797b

    ld [c], a
    ld l, [hl]
    ret nz

    ld a, e

jr_00c_790f:
    ld h, d
    ld b, b
    ld [hl], a
    rst $28
    inc hl
    ld a, $06
    inc e
    ldh [$c7], a
    inc de
    or $52
    rst $30
    ld [hl], d
    ld d, b
    ld de, $e6e0
    ld b, d
    ld b, b
    rlca
    inc bc
    cp $e0
    push hl
    db $76
    ld b, h
    dec sp
    db $dd
    ld [hl], e
    ld de, $eff3
    ld d, c
    ld [hl], l
    ld d, c
    ld [de], a
    and b
    ret nz

    jr @+$0a

    jr z, @+$01

    ld [$cf30], sp
    ld e, b
    ld [$287a], sp
    xor l
    ei
    ld hl, $2846
    ld [bc], a
    ld a, [bc]
    nop
    rrca
    push af
    dec b
    db $fd
    dec b
    nop
    add l
    ld c, $00
    rrca
    dec b
    rrca
    pop af
    inc bc
    rlca

jr_00c_7959:
    rlca
    ldh a, [rOCPS]
    rst $10
    and [hl]
    call $fc20
    ld [$edef], a
    rst $38
    db $ed
    cp h
    sbc [hl]
    cp l
    jp nc, Jump_00c_7da0

    rst $38
    ld bc, $c07f
    and b
    rlca
    ld sp, hl
    inc bc
    ld d, b
    pop bc
    ld h, b
    add d
    nop
    ld a, [hl]
    db $db

jr_00c_797b:
    ld a, $06
    rst $18
    inc a
    inc e
    ld [hl], b
    jr nc, jr_00c_79a3

    ld [hl], b
    ld h, d
    inc b
    nop
    ccf
    ld e, $e7
    db $fc
    inc c
    ld a, b
    ld l, b
    ret nz

    pop bc
    ld b, b
    jp $fc2f


    inc bc
    cp $7a
    jr nz, jr_00c_7959

    ld b, [hl]
    sub b
    and c
    ld b, [hl]
    ld h, c
    ccf
    ld hl, sp+$07
    ld a, h
    ld e, h

jr_00c_79a3:
    jr nc, @+$12

    ld b, [hl]
    ret nz

    ld b, b
    ld h, d
    ld a, c
    ld [$e0e0], sp
    call c, Call_000_1420
    db $fc
    inc [hl]
    ld h, h
    ret nc

    and $7f
    ld a, [hl]
    ld e, d
    ld a, $16
    inc [hl]
    inc d
    db $10

jr_00c_79bd:
    ret nc

    rst $20
    rst $30
    ld [hl], h
    inc e
    inc c
    ret nc

    push hl
    ld hl, sp+$00
    ld a, h
    rst $30
    rst $08
    db $fc
    inc b
    ld a, h
    ld [hl], h
    db $fc
    ldh [rP1], a
    ld h, h
    and h
    ld e, e
    adc a
    or $52
    ld a, [hl]
    db $76
    adc h
    ldh [$f0], a
    ld b, [hl]
    ld a, [hl+]
    and b
    ld a, a
    cp [hl]
    ld hl, sp-$1c
    ld a, l
    inc de
    ld bc, $e31d
    ld c, h
    ret nz

    ld [$38f7], sp
    jr jr_00c_79ff

    add b
    and b
    ld b, $02

jr_00c_79f3:
    ld a, [bc]
    ld [bc], a
    db $d3
    db $f4
    rrca
    ld h, d
    pop hl
    jr nz, jr_00c_79bd

    stop
    and b

jr_00c_79ff:
    rst $38
    ld a, l
    jp hl


    ld b, e
    jr nc, @-$1c

    ld h, b
    pop bc
    nop
    ret nc

    add c
    ld l, $18
    rst $28
    ldh a, [$e2]

jr_00c_7a0f:
    pop hl
    and $80
    nop
    ret nz

    ldh [$81], a
    inc a
    rst $10
    inc a
    inc d

jr_00c_7a1a:
    sbc a
    ld a, h
    inc [hl]
    db $ec
    ld h, h
    ld b, h
    ld b, b
    ret nz

    ret nc

    add b
    ld e, l

jr_00c_7a25:
    rst $38
    inc sp
    db $dd
    ld [hl], e
    ld sp, $2163
    rst $28
    ld h, c
    reti


    ld b, a

jr_00c_7a30:
    jr nc, jr_00c_79f3

    add b
    and b
    jr jr_00c_7a25

    cp d
    add b
    ld [hl], a
    inc c
    ei
    inc b
    inc b
    jr nz, jr_00c_79ff

    ld a, $00
    ld a, a
    dec a
    db $e3
    rst $20
    ld a, l
    ld b, e
    ld b, c
    jr nc, jr_00c_7a0f

    ldh a, [$e0]
    dec sp
    and $7b
    db $d3
    ld b, [hl]
    ld b, d
    ldh a, [$a3]
    cp [hl]
    jp $8003


    add b

jr_00c_7a59:
    inc bc
    ld bc, $b8a8
    ret nz

    ret nc

    and d
    ld a, [hl]
    add b

jr_00c_7a62:
    cp e
    call z, Call_000_22a0
    add b
    db $e3
    ld [c], a
    rst $38
    nop
    ld [hl], e
    ld [hl], c
    db $e3
    dec e
    ld [hl], e
    ld [hl], c
    rlca
    rst $20
    inc bc
    cp $06
    jr nz, jr_00c_7a59

    jr nz, jr_00c_7a1a

    ld a, d
    ld c, $f7
    ld a, a
    inc e
    inc c
    jr c, jr_00c_7a92

    or $30
    ld h, e
    ld h, b
    add b
    ei
    ld h, b
    jr nz, jr_00c_7ad9

    add b
    cp l
    ld h, a

jr_00c_7a8e:
    inc hl
    ld h, d
    ld [hl+], a
    rst $30

jr_00c_7a92:
    ld a, $00
    rra
    nop
    ld b, b
    add d
    nop
    jp $cf41


    ld b, e
    cp l
    inc hl
    ld hl, $c370
    add b
    pop hl
    ld e, a

jr_00c_7aa5:
    dec e
    cp a
    or e
    ld c, l
    ld e, a
    ld d, c
    rlca
    inc bc
    jr nz, jr_00c_7a30

    inc c
    db $dd
    nop
    xor d
    add b
    inc [hl]
    cp $01
    ld h, d
    pop hl
    ld a, h
    inc c
    db $fd
    jr c, jr_00c_7a8e

    jr nz, jr_00c_7a62

    nop
    di
    ld d, c
    di
    ld e, l
    pop de
    ld d, e
    ldh [$e0], a
    and b
    pop hl
    ld [c], a
    ld h, b
    ld a, $fe
    ld h, b
    rst $30
    inc c
    cp a
    inc b
    inc e
    inc c
    ld a, b
    jr @+$32

jr_00c_7ad9:
    and b
    ld [c], a
    ld h, b
    rst $18
    nop
    ld a, h
    and e
    ld l, [hl]
    ld l, $f8
    ldh [rNR41], a
    jr nz, @+$28

    nop
    and b
    inc c
    inc b
    ldh [$e9], a
    ldh [$c2], a
    ld a, $88
    inc hl
    ldh [$c1], a
    sub $60
    db $e3
    ld l, $d7
    ld h, b
    push hl
    db $10
    sub b
    ld h, c
    ld [hl], $1c
    rst $38
    rst $20
    db $fc
    ld [$687a], sp
    add hl, de
    add hl, bc
    ld [$90dc], sp
    jp nz, $e0fe

    ei
    ld c, $06
    ret nz

    push hl
    ld c, b
    nop
    rst $38
    ld h, h
    jr nz, @+$68

    cp e
    ld [c], a
    ld h, b
    jp $f741


    jp $4141


    ld b, b
    jr nz, jr_00c_7aa5

    nop
    adc $40
    rst $38
    rst $30
    rrca
    ld hl, sp+$78
    ret nz

    ld b, b
    ld a, [hl]
    nop
    cp h
    sub b
    ld hl, $c5e0
    dec b
    ld bc, $027a
    and b
    and e
    jr nz, @+$01

    nop
    ld d, b
    xor a
    xor b
    jr nz, @+$46

    ld b, b
    ld [bc], a
    ei
    nop
    ld bc, $c250
    ld a, a
    ld l, a
    ld e, h

jr_00c_7b4e:
    xor e
    ld a, d
    cp a
    jr z, jr_00c_7b4e

    ld l, c
    db $db
    ld c, c
    ld c, c
    or b
    call nz, $fd47
    cp e
    and h
    add b
    inc c
    ld [$0400], sp
    rst $38
    ldh a, [rIE]
    nop
    ld a, h
    ld [hl], b
    ld a, [hl]
    ld e, $38
    rst $20
    inc e
    ccf
    inc e
    ldh [rP1], a
    ld a, h
    ld h, b
    ld c, $60
    ld h, b
    jp nz, $ef80

    db $10
    ld e, b
    or a
    ld h, h
    jp z, $ffc0

    ld a, l
    ld b, c
    rst $38
    rst $38
    ld [bc], a
    nop
    inc bc
    ld bc, $0125
    ld d, $ff
    db $eb
    ld a, [bc]
    ld [bc], a
    inc [hl]
    nop
    jp c, $601a

    dec d
    rst $38
    jp nz, Jump_000_3e60

    cp [hl]
    ld h, b
    cp a
    ld [de], a
    pop hl
    nop
    ld h, c
    ld b, b
    pop bc
    cp a
    rst $38
    dec e
    ld a, l
    db $eb
    ld a, [de]
    ld a, [bc]
    ld b, $e1
    inc b
    cp $f0
    and e
    ld a, [hl-]
    rlca
    ei
    ld a, [bc]
    ld [bc], a
    ld c, $06
    db $fc
    db $10
    db $e3
    ld e, d
    ldh [$3d], a
    ccf
    pop bc
    rra
    dec e
    inc bc
    adc a
    ld bc, $017f
    ccf
    ret nz

    push bc
    ret nz

    and [hl]
    nop
    add h
    ei
    pop af
    ld b, $d0
    ldh [rP1], a
    add c
    sub b
    ld h, d
    jr z, jr_00c_7c4f

    xor a
    ld a, d
    cp a
    jr z, @+$01

    ld l, e
    sbc $46
    ld c, h
    and b
    jp Jump_000_3d20


    ld h, d
    ld b, b
    ret nz

    ld a, [hl]
    ld h, $7c
    inc e
    ld [hl], b
    pop bc
    add b
    and c
    inc bc
    jp $f27d


    pop bc
    ldh a, [$a1]
    ldh a, [$e3]
    ld [hl], b
    xor c
    ldh a, [$a1]
    ret nc

    and c
    adc b
    ldh a, [$a5]
    db $fc
    dec h
    ld a, [$0560]
    ld a, [$6464]
    add b
    ld a, [$0162]
    ldh a, [$fa]
    ld h, h
    reti


    cpl
    add sp, -$7a
    ldh a, [$ee]
    scf
    nop
    add e
    nop
    push de
    xor a
    db $fc
    ldh [$9f], a
    ld hl, sp-$20
    add a
    ret nz

    ld l, l
    rst $38
    nop
    rst $38
    ld [bc], a
    inc bc
    rrca
    dec e
    rra
    db $10
    rra
    db $10
    or $fa
    ldh [$15], a
    ld a, [bc]
    sub c
    and b
    ld bc, $8303
    jp nz, $fbff

    ld a, [hl]
    rst $38
    ld b, [hl]
    rst $38
    call nz, $7cff
    ei
    add e
    rst $00
    ldh a, [$e0]
    add b
    pop bc
    ldh [$e1], a
    or b
    ld a, a
    pop af

jr_00c_7c4f:
    cp b
    ld sp, hl
    adc b
    pop af
    sbc b
    ld h, c
    or c
    nop
    rst $38
    rst $38
    sub d
    cp e
    sub $d7
    xor $bf
    xor $df
    cp e
    xor $bb
    rst $38
    add b
    xor [hl]
    ld h, c
    db $10
    rst $38
    push hl
    sub $fe
    ldh [rNR11], a
    ld a, [$92e0]
    ld h, d
    ld hl, sp-$71
    db $fc
    call $feb7
    pop hl
    ld hl, sp-$71
    db $d3
    pop hl
    db $f4
    nop
    add h
    rst $38
    cp l
    or l
    cp $e0
    add h
    rst $38
    cp l
    rst $20
    ret nc

    db $e3
    ld hl, $ffcb
    xor l
    cp $e0
    inc hl
    ld a, [$62e0]
    ld h, e
    adc b
    rst $38
    db $ed
    db $db
    cp $e2
    ret c

    rst $38
    or b
    db $e3
    ld b, h
    rst $38
    ld l, l
    ld a, [c]
    cp $e0
    ld l, h
    ld a, [$b0e0]
    db $e3
    cpl
    ld hl, sp-$51
    ld hl, sp-$41
    xor a
    cp $2f
    cp $a3
    cp $32
    ld h, d
    nop
    cp e
    nop
    inc bc
    ld d, [hl]
    ld h, d
    inc bc
    nop
    ld b, $f1

jr_00c_7cc3:
    ld b, h
    pop bc
    cp d
    db $ec
    nop
    ret nz

    dec de
    ldh [$60], a
    nop
    jr nc, @-$1d

    ld b, d
    rst $00
    cp [hl]
    or b
    jr nz, @+$25

    nop
    pop hl
    nop
    ld b, d
    pop de
    ld b, h
    ret nz

    jp nc, Jump_000_00cc

    ld b, b
    ld a, d
    and b
    jp nc, $8544

    ld [hl], b
    ld [c], a
    add l
    rst $38
    cp l
    cp h
    ld [hl], b
    db $e4
    and d
    rst $38
    or a
    db $fd
    cp $e1
    scf
    db $fd
    db $fd
    jp nc, $2842

    db $fc
    ld a, l
    rst $10
    ld a, a
    jp c, $77ff

    sbc $7f
    jp c, $e73d

    jr jr_00c_7cc3

    cp a
    rst $38
    nop
    inc bc
    rlca
    ld b, a
    db $ed
    dec d
    ldh [rNR24], a
    rst $18
    rst $38
    sub l
    rst $38
    or h
    ld e, e
    pop bc
    ld b, d
    inc l
    ld a, [hl]
    ld a, a
    ld a, [hl]
    db $db
    rst $30
    db $dd
    rst $38
    ld c, l
    cp [hl]
    ldh [$e2], a
    sub l
    ld [$6022], sp
    inc a
    ld e, $60
    jr @-$7c

    ldh [$61], a
    ld b, e
    inc a
    adc d
    ldh [rLCDC], a
    inc [hl]
    cp d
    jr nz, jr_00c_7d45

    ret c

    ld b, b
    ldh a, [$e3]
    ld [c], a
    pop hl
    ld a, h
    ld l, [hl]
    ld d, d
    ld b, l
    ret c

    rst $38

jr_00c_7d45:
    sbc e
    ld [de], a
    ld [c], a
    adc e
    cp $80
    ld [c], a
    db $eb
    ret nz

    ld a, a
    cp $e3
    add b
    ld d, d
    ld b, l
    add h
    rst $38
    push af
    ld a, b
    ld h, d
    pop hl
    ld e, b
    ldh [$60], a
    ld [c], a
    ldh [$3f], a
    ldh [$bf], a
    cp $e0
    inc bc
    ccf
    ret nz

    ld [hl-], a
    ld b, h
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

Jump_00c_7da0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00c_7ea1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_00c_7ffe:
    rst $38
    rst $38
