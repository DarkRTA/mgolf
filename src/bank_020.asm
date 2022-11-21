; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $020", ROMX[$4000], BANK[$20]

    ld [de], a
    ld b, b

    db $33, $40, $cb, $4c

    ld e, e
    ld e, c
    db $eb
    ld h, l
    ld a, e
    ld [hl], d
    inc sp
    ld b, b
    inc sp
    ld b, b
    inc sp
    ld b, b
    push af
    push bc
    push de
    push hl
    ldh [$95], a
    ld [$2000], a

    ld a, c
    add a
    add l
    ld l, a
    jr nc, jr_020_4022

    inc h

jr_020_4022:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, b
    ld b, $00
    add hl, bc
    ld c, $04
    call Call_000_0468
    pop hl
    pop de
    pop bc
    pop af
    ret


    db $06, $04, $3b, $40, $60, $4c, $3b, $40, $60, $40, $60, $41, $60, $42, $60, $43

    ld h, b
    ld b, h
    ld h, b
    ld b, l
    ld h, b
    ld b, [hl]
    ld h, b
    ld b, a
    ld h, b
    ld c, b
    ld h, b
    ld c, c
    ld h, b
    ld c, d
    ld h, b
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$090f], sp
    rrca
    rla
    rra
    dec de
    rra
    add hl, bc
    rrca
    ld b, $07
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    dec bc
    rrca
    ld c, $0f
    rrca
    rrca

jr_020_407e:
    ld b, $06
    ld [hl], b
    ld [hl], b
    ld hl, sp-$08
    jr c, jr_020_407e

    ld [hl], b
    ldh a, [$90]
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [$28]
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [$e0]
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$38]
    add sp, -$10
    ret nc

    ldh [$e0], a
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    dec bc
    rrca
    inc c
    rrca
    jr jr_020_40cb

    ld a, [hl+]
    ccf
    ld [hl+], a
    ccf
    jr c, jr_020_40f1

    ld e, h
    ld a, a
    ld a, a
    ld a, a
    ld c, a
    ld c, a
    ret z

    rst $08
    rst $08
    rst $08
    rrca
    ld [$0707], sp
    add b
    add b
    ret nz

    ret nz

    and b
    ldh [$d0], a
    ldh a, [$30]
    ldh a, [rNR23]

jr_020_40cb:
    ld hl, sp+$54
    db $fc
    ld b, h
    db $fc
    inc e
    db $fc
    inc a
    db $fc
    ld a, [$fafe]
    cp $96
    or $f0
    ldh a, [$e0]
    ldh [rP1], a
    nop
    ld c, $0e
    rra
    rra
    inc e
    rra

jr_020_40e6:
    ld c, $0f
    add hl, bc
    rrca
    ld [$0c0f], sp
    rrca
    inc d
    rra
    db $10

jr_020_40f1:
    rra
    ld [$070f], sp
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld b, $07
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_40e6

    db $10
    ldh a, [$90]
    ldh a, [$e8]
    ld hl, sp-$28
    ld hl, sp-$70
    ldh a, [$60]
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ld [hl], b
    ret nc

    ldh a, [$90]
    ld h, b
    ld h, b
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    rlca

jr_020_4126:
    ld [$080f], sp
    rrca
    jr jr_020_414b

    inc l
    ccf
    daa
    ccf
    ld a, h
    ld a, a
    ld e, a
    ld a, a
    ccf
    ccf
    dec bc
    rrca
    ld [$0f0f], sp
    rrca
    rrca
    ld [$0707], sp
    add b
    add b
    ret nz

    ret nz

    jr nz, jr_020_4126

    db $10
    ldh a, [rNR10]
    ldh a, [rNR23]

jr_020_414b:
    ld hl, sp+$34
    db $fc
    and h
    db $fc
    ld a, b
    ld hl, sp-$04
    db $fc
    ei
    rst $38
    db $db
    rst $38
    sub [hl]
    or $f0
    ldh a, [$e0]
    ldh [rP1], a
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$090f], sp
    rrca
    rla
    rra
    dec de
    rra
    add hl, bc
    rrca
    ld b, $07
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    ld c, $0b
    rrca
    add hl, bc

jr_020_417e:
    ld b, $06
    ld [hl], b
    ld [hl], b
    ld hl, sp-$08
    jr c, jr_020_417e

    ld [hl], b
    ldh a, [$90]
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [$28]
    ld hl, sp+$08
    ld hl, sp+$16
    or $ee
    xor $f8
    ld hl, sp-$30
    ldh a, [$60]
    ldh [$f0], a
    ldh a, [$e0]
    ldh [rSB], a
    ld bc, $0303
    dec b
    rlca
    dec bc
    rrca
    inc c
    rrca
    jr jr_020_41cb

    ld a, [hl+]
    ccf
    ld [hl+], a
    ccf
    jr c, jr_020_41f1

    inc a
    ccf
    ccf
    ccf
    rst $18
    rst $38
    jp hl


    rst $28
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    and b
    ldh [$d0], a
    ldh a, [$30]
    ldh a, [rNR23]

jr_020_41cb:
    ld hl, sp+$54
    db $fc
    ld b, h
    db $fc
    inc e
    db $fc
    ld a, [hl-]
    cp $fe
    cp $f0
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$f0]
    db $10
    ldh [$e0], a
    ld c, $0e
    rra
    rra
    inc e
    rra

jr_020_41e6:
    ld c, $0f
    add hl, bc
    rrca
    ld [$0c0f], sp
    rrca
    inc d
    rra
    db $10

jr_020_41f1:
    rra
    ld [$670f], sp
    ld h, a
    ld l, a
    ld l, a
    ccf
    ccf
    inc e
    rla
    rrca
    dec bc
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_41e6

    db $10
    ldh a, [$90]
    ldh a, [$e8]
    ld hl, sp-$28
    ld hl, sp-$70
    ldh a, [$60]
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ret nc

    ldh a, [rSVBK]
    ldh a, [$f0]
    ldh a, [$60]
    ld h, b
    ld bc, $0301
    inc bc
    inc b
    rlca

jr_020_4226:
    ld [$080f], sp
    rrca
    jr jr_020_424b

    inc l
    ccf
    daa
    ccf
    inc e
    rra
    ccf
    ccf
    ld e, a
    ld a, a
    ld e, e
    ld a, a
    ld l, c
    ld l, a
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    jr nz, jr_020_4226

    inc de
    di
    inc de
    di
    add hl, de

jr_020_424b:
    ld sp, hl
    dec [hl]
    db $fd
    and a
    rst $38
    ld a, [hl]
    cp $fa
    cp $fc
    db $fc
    ret nc

    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$f0]
    db $10
    ldh [$e0], a
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc c
    rrca
    rla
    rra
    dec bc
    rrca
    add hl, bc
    rrca
    ld b, $07
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    dec bc
    rrca
    rlca
    inc b
    rlca
    rlca
    jr jr_020_429a

    db $fc
    db $fc
    inc e
    db $fc
    inc c
    db $fc
    ld a, b
    ld hl, sp-$68
    ld hl, sp+$08
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$10
    ldh a, [$e0]
    ldh [$80], a
    add b
    ld b, b
    ret nz

jr_020_429a:
    and b
    ldh [$f6], a
    or $9e
    sbc [hl]
    ld bc, $0601
    rlca
    inc b
    rlca
    dec bc
    rrca
    ld c, $0f
    inc d
    rra
    ld de, $0d1f
    rrca
    ld b, $07
    rrca
    rrca

jr_020_42b4:
    rrca
    rrca
    ld b, $07
    dec b
    rlca
    rrca
    rrca
    rra
    inc de
    rra
    rra
    ret nz

    ret nz

jr_020_42c2:
    jr nc, jr_020_42b4

    ldh a, [$f0]
    ldh a, [$f0]
    jr jr_020_42c2

    ld [$28f8], sp
    ld hl, sp+$28
    ld hl, sp+$10
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$60]
    ldh [$a0], a
    ldh [$e0], a
    ldh [$f0], a
    sub b
    ldh a, [$f0]
    jr jr_020_42fa

    ccf
    ccf
    jr c, @+$41

    jr nc, jr_020_4327

jr_020_42e8:
    ld e, $1f
    add hl, de
    rra
    db $10
    rra
    inc d
    rra
    inc d
    rra
    ld [$070f], sp
    rlca
    ld bc, $0201
    inc bc

jr_020_42fa:
    dec b
    rlca
    ld l, a
    ld l, a
    ld a, c

jr_020_42ff:
    ld a, c
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_020_42e8

    jr nc, jr_020_42fa

    add sp, -$08
    ret nc

    ldh a, [$90]
    ldh a, [$60]
    ldh [$c0], a
    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ret nc

    ldh a, [$e0]
    jr nz, jr_020_42ff

    ldh [$0e], a
    ld c, $0f
    rrca
    jr jr_020_4345

    db $10

jr_020_4327:
    rra
    ld [$0c0f], sp
    rrca
    dec bc
    rrca
    add hl, bc
    rrca
    dec bc
    rrca
    rlca
    rlca
    rlca
    rlca
    ld b, $07
    dec b
    rlca
    rlca
    rlca
    rrca
    add hl, bc
    rrca
    rrca
    nop
    nop
    ret nz

    ret nz

    ld h, b

jr_020_4345:
    ldh [rNR41], a
    ldh [rSVBK], a
    ldh a, [$88]
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    jr nc, @-$0e

    ret nc

    ldh a, [$f0]
    ldh a, [$f8]
    ret z

    ld hl, sp-$08
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc c
    rrca
    rla
    rra
    dec bc
    rrca
    add hl, bc
    rrca
    ld b, $07
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    dec bc
    rrca
    rlca
    inc b
    rlca
    rlca
    jr jr_020_439a

    db $fc
    db $fc
    inc e
    db $fc
    inc c
    db $fc
    ld a, b
    ld hl, sp-$68
    ld hl, sp+$08
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$10
    ldh a, [$e0]
    ldh [$e0], a
    ldh [rLCDC], a
    ret nz

jr_020_439a:
    add b
    add b
    add b
    add b
    add b
    add b
    ld bc, $0601
    rlca
    inc b
    rlca
    dec bc
    rrca
    ld c, $0f
    inc d
    rra
    ld de, $0d1f
    rrca
    ld b, $07
    rrca
    rrca

jr_020_43b4:
    rrca
    rrca
    dec e
    rra
    inc a
    ccf
    ccf
    ccf
    ld e, $12
    ld e, $1e
    ret nz

    ret nz

jr_020_43c2:
    jr nc, jr_020_43b4

    ldh a, [$f0]
    ldh a, [$f0]
    jr jr_020_43c2

    ld [$28f8], sp
    ld hl, sp+$28
    ld hl, sp+$10
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [$a0], a
    ldh [$e0], a
    ldh [$f0], a
    sub b
    ldh a, [$f0]
    jr jr_020_43fa

    ccf
    ccf
    jr c, @+$41

    jr nc, jr_020_4427

jr_020_43e8:
    ld e, $1f
    add hl, de
    rra
    db $10
    rra
    inc d
    rra
    inc d
    rra
    jr jr_020_4413

    rrca
    rrca
    dec b
    rlca
    inc bc
    inc bc

jr_020_43fa:
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_020_43e8

    jr nc, jr_020_43fa

    add sp, -$08
    ret nc

    ldh a, [$90]
    ldh a, [$60]
    ldh [$c0], a

jr_020_4413:
    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ret nc

    ldh a, [$e0]
    jr nz, @-$1e

    ldh [$0e], a
    ld c, $0f
    rrca
    jr jr_020_4445

    db $10

jr_020_4427:
    rra
    ld [$0c0f], sp
    rrca
    dec bc
    rrca
    add hl, bc
    rrca
    dec bc
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    rlca
    rlca
    rrca
    add hl, bc
    rrca
    rrca
    nop
    nop
    ret nz

    ret nz

    ld h, b

jr_020_4445:
    ldh [rNR41], a
    ldh [rSVBK], a
    ldh a, [$88]
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [$c3], a
    jp $f7f7


    db $fc
    db $fc
    jr nc, @-$0e

    ret nc

    ldh a, [$f0]
    ldh a, [$78]
    ld c, b
    ld a, b
    ld a, b
    nop
    nop
    ld bc, $0201
    inc bc
    call nz, $ccc7
    rst $08
    rst $10
    rst $18
    ld c, e
    ld c, a
    ld l, c
    ld l, a
    ld [hl], $37
    rra
    rra
    dec bc
    rrca
    add hl, bc
    rrca
    rrca
    rrca
    dec bc
    rrca
    rlca
    inc b
    rlca
    rlca
    jr jr_020_449a

    db $fc
    db $fc
    inc e
    db $fc
    inc c
    db $fc
    ld a, b
    ld hl, sp-$68
    ld hl, sp+$08
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$10
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    add b
    add b

jr_020_449a:
    nop
    nop
    add b
    add b
    add b
    add b
    ld bc, $0601
    rlca
    inc b
    rlca
    set 1, a
    adc $cf
    ld d, h
    ld e, a
    ld [hl], c
    ld a, a
    dec a
    ccf
    ld d, $1f
    dec bc
    rrca

jr_020_44b4:
    ld b, $07
    rlca
    rlca
    dec b
    rlca
    rrca
    rrca
    ld e, $12
    ld e, $1e
    ret nz

    ret nz

jr_020_44c2:
    jr nc, jr_020_44b4

    ldh a, [$f0]
    ldh a, [$f0]
    jr jr_020_44c2

    ld [$28f8], sp
    ld hl, sp+$28
    ld hl, sp+$10
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [rNR41], a
    ldh [$e0], a
    ldh [$f0], a
    sub b
    ldh a, [$f0]
    jr @+$1a

    ccf
    ccf
    jr c, @+$41

    jr nc, jr_020_4527

    ld e, $1f
    add hl, de
    rra
    db $10
    rra
    inc d
    rra
    inc d
    rra
    ld [$070f], sp
    rlca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    add b
    add b
    ld b, b
    ret nz

    ld h, $e6
    ld [hl], $f6
    cp $fe
    ret c

    ld hl, sp-$70
    ldh a, [$60]
    ldh [$c0], a
    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ret nc

    ldh a, [$e0]
    jr nz, @-$1e

    ldh [$0e], a
    ld c, $0f
    rrca
    jr jr_020_4545

    db $10

jr_020_4527:
    rra
    ld [$0c0f], sp
    rrca
    dec bc
    rrca
    add hl, bc
    rrca
    dec bc
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    rlca
    rlca
    rrca
    add hl, bc
    rrca
    rrca
    nop
    nop
    ret nz

    ret nz

    ld h, e

jr_020_4545:
    db $e3
    inc hl
    db $e3

jr_020_4548:
    ld [hl], e
    di
    adc d
    ld a, [$f6f6]
    db $e4
    db $e4
    call z, $fccc
    db $fc
    ld hl, sp-$08
    jr nc, jr_020_4548

    ret nc

    ldh a, [$f0]
    ldh a, [$78]
    ld c, b
    ld a, b
    ld a, b
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld h, h
    ld h, a
    ld h, h
    ld h, a
    ld h, $27
    dec [hl]
    scf
    ld e, $1f
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rlca
    inc b
    rlca
    rlca
    ld hl, sp-$08
    inc a
    db $fc
    inc c
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    adc b
    ld hl, sp+$58
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$f0], a
    sub b
    ldh a, [$f0]
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ret z

    rst $08
    add sp, -$11
    dec sp
    ccf
    dec d
    rra
    inc c
    rrca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    inc c
    rrca
    ld e, $17
    rra
    rla
    ld e, $1e
    ld [hl], b
    ld [hl], b
    cp b
    ld hl, sp+$18
    ld hl, sp+$10
    ldh a, [rSVBK]
    ldh a, [$90]
    ldh a, [$30]
    ldh a, [$28]
    ld hl, sp+$10
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [$a0], a
    ldh [$e0], a
    ldh [$f0], a
    sub b
    ldh a, [$f0]
    ld bc, $0701
    rlca
    add hl, bc
    rrca
    rla
    rra
    inc e
    rra
    jr jr_020_460b

    ld a, [de]
    rra
    ld [de], a
    rra
    ld [$070f], sp
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    dec b
    rlca

jr_020_45ff:
    rlca
    add b
    add b
    ret nz

    ret nz

    and b
    ldh [$e6], a
    and $56
    or $34

jr_020_460b:
    db $f4
    or h
    db $f4
    sbc h
    db $fc
    jr c, @-$06

    add sp, -$08
    jr nc, @-$0e

    ld [hl], b
    ldh a, [$e0]
    ldh [$a0], a
    ldh [$e0], a
    jr nz, jr_020_45ff

    ldh [$0e], a
    ld c, $1d
    rra
    jr @+$21

jr_020_4626:
    rrca
    rrca
    add hl, bc
    rrca
    inc c
    rrca
    inc d
    rra
    db $10
    rra
    add hl, bc
    rrca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rrca
    add hl, bc
    ld c, $0e
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_4626

    inc de
    di
    rst $10
    rst $30
    xor h
    db $fc
    ld a, b
    ld hl, sp-$50
    ldh a, [$d0]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    ld b, b
    ret nz

    ldh [$a0], a
    ldh [$a0], a
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$090f], sp
    rrca
    rla
    rra
    dec de
    rra
    add hl, bc
    rrca
    ld b, $07
    inc bc
    inc bc
    rlca
    rlca
    dec bc
    rrca
    ld c, $0f
    rrca
    rrca
    ld b, $06

jr_020_4680:
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld hl, sp-$08
    jr c, jr_020_4680

    ld [hl], b
    ldh a, [$90]
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [$28]
    ld hl, sp+$08
    ld hl, sp-$20
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$38]
    add sp, -$10
    ret nc

    ldh [$e0], a
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    dec bc
    rrca
    inc c
    rrca
    jr jr_020_46cd

    ld a, [hl+]
    ccf
    ld [hl+], a
    ccf
    jr c, jr_020_46f3

    ld a, a
    ld a, a
    ld c, a
    ld c, a
    ret z

    rst $08
    rst $08
    rst $08
    rrca
    ld [$0707], sp
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    and b
    ldh [$d0], a
    ldh a, [$30]
    ldh a, [rNR23]

jr_020_46cd:
    ld hl, sp+$54
    db $fc
    ld b, h
    db $fc
    inc e
    db $fc
    ld a, [$fafe]
    cp $96
    or $f0
    ldh a, [$e0]
    ldh [rP1], a
    nop
    nop
    nop
    ld c, $0e
    rra
    rra
    inc e
    rra

jr_020_46e8:
    ld c, $0f
    add hl, bc
    rrca
    ld [$0c0f], sp
    rrca
    inc d
    rra
    db $10

jr_020_46f3:
    rra
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld b, $07
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_46e8

    db $10
    ldh a, [$90]
    ldh a, [$e8]
    ld hl, sp-$28
    ld hl, sp-$70
    ldh a, [$60]
    ldh [$c0], a
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ld [hl], b
    ret nc

    ldh a, [$90]
    ld h, b
    ld h, b
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    rlca

jr_020_4728:
    ld [$080f], sp
    rrca
    jr jr_020_474d

    inc l
    ccf
    daa
    ccf
    ld a, h
    ld a, a
    ccf
    ccf
    dec bc
    rrca
    ld [$0f0f], sp
    rrca
    rrca
    ld [$0707], sp
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    jr nz, jr_020_4728

    db $10
    ldh a, [rNR10]
    ldh a, [rNR23]

jr_020_474d:
    ld hl, sp+$34
    db $fc
    and h
    db $fc
    ld a, b
    ld hl, sp-$05
    rst $38
    db $db
    rst $38
    sub [hl]
    or $f0
    ldh a, [$e0]
    ldh [rP1], a
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc b
    rlca
    dec bc
    rrca
    dec c
    rrca
    inc b
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    dec bc
    rrca
    ld c, $0f
    rrca
    rrca
    ld b, $06

jr_020_4780:
    jr c, jr_020_47ba

    db $fc
    db $fc
    inc e
    db $fc
    jr c, jr_020_4780

    ret z

    ld hl, sp-$78
    ld hl, sp-$68
    ld hl, sp-$6c
    db $fc
    inc b
    db $fc
    db $10
    ldh a, [$e0]
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$38]
    add sp, -$10
    ret nc

    ldh [$e0], a
    ld bc, $0101
    ld bc, $0302
    dec b
    rlca
    ld b, $07
    inc c
    rrca
    dec d
    rra
    ld de, $1c1f
    rra
    ld e, h
    ld a, a
    ld a, a
    ld a, a
    ld c, a
    ld c, a
    ret z

    rst $08

jr_020_47ba:
    rst $08
    rst $08
    rrca
    ld [$0707], sp
    ret nz

    ret nz

    ldh [$e0], a
    ret nc

    ldh a, [$e8]
    ld hl, sp+$18
    ld hl, sp+$0c
    db $fc
    ld a, [hl+]
    cp $22
    cp $0e
    cp $3c
    db $fc
    ld a, [$fafe]
    cp $96
    or $f0
    ldh a, [$e0]
    ldh [rP1], a
    nop
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    rlca
    rlca
    inc b
    rlca
    inc b
    rlca
    ld b, $07
    ld a, [bc]
    rrca
    ld [$080f], sp
    rrca
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld b, $07
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp-$38
    ld hl, sp+$74
    db $fc
    ld l, h
    db $fc
    ld c, b
    ld hl, sp+$30
    ldh a, [$c0]
    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ld [hl], b
    ret nc

    ldh a, [$90]
    ld h, b
    ld h, b
    ld bc, $0101
    ld bc, $0302
    inc b
    rlca
    inc b
    rlca
    inc c
    rrca
    ld d, $1f
    inc de
    rra
    ld a, $3f
    ld e, a
    ld a, a
    ccf
    ccf
    dec bc
    rrca
    ld [$0f0f], sp
    rrca
    rrca
    ld [$0707], sp
    ret nz

    ret nz

    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$0c
    db $fc
    ld a, [de]
    cp $d2
    cp $3c
    db $fc
    db $fc
    db $fc
    ei
    rst $38
    db $db
    rst $38
    sub [hl]
    or $f0
    ldh a, [$e0]
    ldh [rP1], a
    nop
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    inc de
    rra
    ld l, $3f
    ld [hl], $3f
    ld [de], a
    rra
    inc c
    rrca
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    dec bc
    rrca
    ld c, $0f
    rrca
    rrca
    ld b, $06
    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$e0]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$60], a
    ldh [$50], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$e0]
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$38]
    add sp, -$10
    ret nc

    ldh [$e0], a
    rlca
    rlca
    rlca
    rlca
    dec bc
    rrca
    rla
    rra
    jr jr_020_48c9

    jr nc, @+$41

    ld d, h
    ld a, a
    ld b, h
    ld a, a
    ld [hl], b
    ld a, a
    ld e, h
    ld a, a
    ld a, a
    ld a, a
    ld c, a
    ld c, a
    ret z

    rst $08
    rst $08
    rst $08
    rrca
    ld [$0707], sp
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [$60], a

jr_020_48c9:
    ldh [$30], a
    ldh a, [$a8]
    ld hl, sp-$78
    ld hl, sp+$38
    ld hl, sp+$3c
    db $fc
    ld a, [$fafe]
    cp $96
    or $f0
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc e
    inc e
    ccf
    ccf
    jr c, @+$41

    inc e
    rra

jr_020_48e8:
    inc de
    rra

jr_020_48ea:
    ld de, $191f
    rra
    add hl, hl
    ccf
    jr nz, @+$41

    ld [$070f], sp
    rlca
    rrca
    rrca

Call_020_48f8:
    dec bc
    rrca
    ld b, $07
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_020_48e8

    jr nz, jr_020_48ea

    ret nc

    ldh a, [$b0]
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ld [hl], b
    ret nc

    ldh a, [$90]
    ld h, b
    ld h, b
    rlca
    rlca
    rlca
    rlca
    ld [$100f], sp
    rra

jr_020_4928:
    db $10
    rra

jr_020_492a:
    jr nc, jr_020_496b

    ld e, b
    ld a, a
    ld c, a
    ld a, a
    ld hl, sp-$01
    ld e, a
    ld a, a
    ccf
    ccf
    dec bc
    rrca
    ld [$0f0f], sp
    rrca

jr_020_493c:
    rrca
    ld [$0707], sp
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_020_4928

    jr nz, jr_020_492a

    jr nc, jr_020_493c

    ld l, b
    ld hl, sp+$48
    ld hl, sp-$10
    ldh a, [$fc]
    db $fc
    ei
    rst $38
    db $db
    rst $38
    sub [hl]
    or $f0
    ldh a, [$e0]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    inc b
    rlca
    dec b

jr_020_496b:
    rlca
    rrca
    rrca
    dec b
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca

jr_020_4978:
    ld b, $07
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ldh a, [$f0]
    jr nc, jr_020_4978

    ld h, b
    ldh [$a0], a
    ldh [rNR41], a
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$30], a
    ret nc

    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0703
    rlca
    inc b
    rlca

jr_020_49ac:
    ld d, $1f
    ld [de], a
    rra
    inc e
    rra
    inc l
    ccf
    daa
    daa
    ld h, h
    ld h, a
    ld h, a
    ld h, a
    rlca
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    add b
    ret nz

    ldh [$e0], a
    jr nz, jr_020_49ac

    ld l, b
    ld hl, sp+$48
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp-$0c
    db $fc
    xor h
    db $ec
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    rrca
    rrca
    inc c
    rrca
    ld b, $07

jr_020_49ea:
    dec b
    rlca
    inc b
    rlca
    ld [$080f], sp
    rrca
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    inc bc
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    ret nz

    jr nz, jr_020_49ea

    and b
    ldh [$f0], a
    ldh a, [$a0]
    ldh [rLCDC], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld h, b
    ldh [$e0], a
    and b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc b
    rlca

jr_020_4a2a:
    inc b
    rlca

jr_020_4a2c:
    inc d
    rra
    inc de
    rra
    inc a
    ccf
    cpl
    ccf
    rlca
    rlca
    inc b
    rlca
    rlca
    rlca
    rlca
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

jr_020_4a46:
    nop
    ret nz

    jr nz, jr_020_4a2a

    jr nz, jr_020_4a2c

    jr z, jr_020_4a46

    adc b
    ld hl, sp+$70
    ldh a, [$f8]
    ld hl, sp-$0a
    cp $ac
    db $ec
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    dec bc
    rrca
    inc c
    rrca
    ld a, [de]
    rra
    ld a, a
    ld a, a
    jr z, jr_020_4af1

    inc l
    ccf
    rra
    rra
    rrca
    rrca
    add hl, bc
    rrca
    rrca
    rrca
    dec e
    inc de
    ld e, $1e
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    and b
    ldh [$d0], a
    ldh a, [$33]
    di
    ld e, e
    ei
    rst $38
    rst $38
    inc d
    db $fc
    inc [hl]
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    db $10
    ldh a, [$f0]
    ldh a, [$b8]
    ret z

    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_020_4af1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca

jr_020_4b2e:
    rla
    rra
    inc a
    ccf
    cpl
    ccf
    rra
    rra
    dec bc
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    jr nz, jr_020_4b2e

    ld d, b
    ldh a, [$e0]
    ldh [$fc], a
    db $fc
    db $ec
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    dec bc
    rrca
    inc c
    rrca
    ld a, [de]
    rra
    ld a, a
    ld a, a
    jr z, jr_020_4bf1

    inc l
    ccf
    rra
    rra
    rrca
    rrca
    add hl, bc
    rrca
    rrca
    rrca
    dec e
    inc de
    ld e, $1e
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    and b
    ldh [$d0], a
    ldh a, [$33]
    di
    ld e, e
    ei
    rst $38
    rst $38
    inc d
    db $fc
    inc [hl]
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    db $10
    ldh a, [$f0]
    ldh a, [$b8]
    ret z

    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_020_4bf1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    rla
    rra
    inc c
    rrca
    rra
    rra
    cpl
    ccf
    dec sp
    ccf
    rrca
    rrca
    ld b, $07
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    inc l
    db $ec
    ld e, h
    db $fc
    ld hl, sp-$08
    add sp, -$08
    ldh a, [$f0]
    and b
    ldh [$c0], a
    ret nz

    ld b, b
    ret nz

    add b
    add b
    nop
    nop

    db $76, $4c, $79, $4c, $7f, $4c

    add d
    ld c, h
    adc l
    ld c, h
    sub h
    ld c, h
    sbc h
    ld c, h
    or b
    ld c, h
    cp h
    ld c, h
    db $76
    ld c, h
    push bc
    ld c, h
    nop
    rst $38
    db $fd

    db $00, $1e

    ld bc, $ff1e
    nop

    db $02, $ff

    db $fd
    ld [bc], a
    inc c
    inc bc
    inc c
    inc b
    jr jr_020_4c8b

    inc c
    dec b

jr_020_4c8b:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_020_4c94

    jr @-$01

jr_020_4c94:
    nop
    ld a, [bc]
    ld b, $1e
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    inc bc
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    add hl, bc
    ld [$0800], sp
    add hl, bc
    ld [$0a00], sp
    cp $01
    ld [bc], a
    ld [de], a
    inc bc
    ld [de], a
    ld [bc], a
    ld e, $05
    ld [de], a
    db $fd
    ld a, [bc]
    ld e, $0b
    ld e, $ff
    nop

    db $05, $04, $d3, $4c, $f0, $58, $d3, $4c, $f0, $4c, $f0, $4d, $f0, $4e, $f0, $4f

    ldh a, [$50]

    db $f0, $51

    ldh a, [rHDMA2]
    ldh a, [rHDMA3]
    ldh a, [rHDMA4]
    ldh a, [rHDMA5]
    ldh a, [rRP]
    ldh a, [$57]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc

jr_020_4cf4:
    inc b
    rlca
    inc b
    rlca
    ld [$0d0f], sp
    rrca

Call_020_4cfc:
    rrca
    dec bc
    rrca
    ld a, [bc]
    dec a
    scf
    ld c, a
    ld a, [hl]
    ld d, l
    ld [hl], a
    ld [hl+], a
    inc hl
    rlca
    dec b
    dec bc
    rrca
    add hl, bc

jr_020_4d0d:
    rrca
    ld b, $06
    ret nz

    ret nz

    jr nz, jr_020_4cf4

    ld d, b
    ldh a, [$f0]
    ldh a, [$f0]
    sub b
    ret nc

    jr nc, jr_020_4d0d

    ldh a, [$f0]
    ld [hl], b
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    ldh [$60], a
    ldh a, [$d0]
    and b
    ldh [$c0], a
    ret nz

    ld bc, $0201
    inc bc
    dec b
    rlca
    rlca
    ld b, $0f
    inc c
    ld e, $15
    rra
    rla
    rrca
    dec bc
    rla
    inc e
    ccf
    inc l
    dec sp
    ld a, $27
    daa
    ld h, a
    ld h, h
    ld l, a
    ld l, e

jr_020_4d4c:
    inc b
    rlca
    inc bc
    inc bc
    ret c

    ret c

    jr z, jr_020_4d4c

    ld d, b
    ldh a, [$f0]
    or b
    ld hl, sp+$18
    cp h
    ld d, h
    db $fc
    db $f4
    ld hl, sp+$68
    db $f4
    sbc h
    db $f4
    inc e
    xor $3a
    cp $fa
    db $fc
    sbc h
    ldh a, [rSVBK]
    ldh [$e0], a
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld a, [bc]
    rrca

jr_020_4d76:
    rrca
    rrca

jr_020_4d78:
    rrca
    add hl, bc
    dec bc
    inc c
    rrca
    rrca
    rrca
    ld c, $0f
    ld [$080f], sp
    rlca
    inc b
    dec bc
    rrca
    rra
    ld d, $0b
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_4d76

    jr nz, jr_020_4d78

    db $10
    ldh a, [$b0]
    ldh a, [$f0]
    ret nc

    ldh a, [$50]
    cp h
    db $ec
    ld a, [c]
    ld a, [hl]
    xor d
    xor $44
    call nz, $e0e0
    ldh a, [rSVBK]
    ldh a, [$f0]
    ld h, b
    ld h, b
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca

jr_020_4db8:
    jr @+$21

    jr c, @+$31

    jr c, jr_020_4ded

    dec e
    rla
    ld l, d
    ld a, a
    ld [hl], e
    ld e, a

jr_020_4dc4:
    add hl, sp
    ccf
    rrca
    rrca
    rrca
    add hl, bc

jr_020_4dca:
    rra
    ld d, $09
    rrca
    ld b, $06
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    jr nz, jr_020_4db8

    jr nc, jr_020_4dca

jr_020_4dda:
    jr c, jr_020_4dc4

    cp b
    add sp, $70
    ret nc

    jr z, jr_020_4dda

    ld e, e
    ei
    cp a
    rst $30
    rst $38
    rst $20
    ld hl, sp+$38
    ldh [$e0], a
    ret nz

jr_020_4ded:
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc

jr_020_4df4:
    inc b
    rlca
    inc b
    rlca
    ld [$0d0f], sp
    rrca
    rrca
    dec bc
    rrca
    ld a, [bc]
    dec a
    scf
    ld c, a
    ld a, [hl]
    ld d, l
    ld [hl], a
    ld [hl+], a
    inc hl
    rlca
    rlca
    rrca
    ld c, $0f

jr_020_4e0d:
    rrca
    ld b, $06
    ret nz

    ret nz

    jr nz, jr_020_4df4

    ld d, b
    ldh a, [$f0]
    ldh a, [$f0]
    sub b
    ret nc

    jr nc, jr_020_4e0d

    ldh a, [$f0]
    ld [hl], b
    ldh a, [rNR10]
    ldh a, [rNR10]
    and $26
    sub $f6
    db $fc
    ld l, h
    ret nc

    ldh a, [$90]
    ldh a, [$e0]
    ldh [$0d], a
    dec c
    ld a, [bc]
    rrca

jr_020_4e34:
    dec b
    rlca
    rlca
    ld b, $0f
    inc c
    ld e, $15
    rra
    rla
    rrca
    dec bc
    rla
    inc e
    rla
    inc e
    dec de
    ld e, $7f
    ld l, a
    ld a, a
    ld a, h
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_4e34

    ld d, b
    ldh a, [$f0]
    or b
    ld hl, sp+$18
    cp h
    ld d, h
    db $fc
    db $f4
    ld hl, sp+$68
    db $f4
    sbc h
    cp $1a
    xor $3e
    ldh a, [$f0]
    ldh a, [$90]
    ld hl, sp+$68
    sub b
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    inc b
    rlca
    ld a, [bc]
    rrca

jr_020_4e76:
    rrca
    rrca

jr_020_4e78:
    rrca
    add hl, bc
    dec bc
    inc c
    rrca
    rrca
    rrca
    ld c, $0f
    ld [$080f], sp
    ld h, a
    ld h, h
    ld [hl], e
    ld [hl], e
    rra
    ld e, $0f
    dec bc
    dec b
    rlca
    inc bc
    inc bc
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_4e76

    jr nz, jr_020_4e78

    db $10
    ldh a, [$b0]
    ldh a, [$f0]
    ret nc

    ldh a, [$50]
    cp h
    db $ec
    ld a, [c]
    ld a, [hl]
    xor d
    xor $44
    call nz, $a0e0
    ret nc

    ldh a, [$90]
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca

jr_020_4eb8:
    jr jr_020_4ed9

    jr c, @+$31

    ld a, [hl-]
    cpl
    dec e
    rla
    jr z, jr_020_4f01

    dec [hl]
    ccf
    ld a, e
    ld e, a
    ld a, a
    ld c, a
    ccf
    add hl, sp
    rrca
    ld c, $07
    rlca

jr_020_4ece:
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    jr nz, jr_020_4eb8

    inc sp

jr_020_4ed9:
    di
    dec sp
    db $eb
    dec sp
    db $eb

jr_020_4ede:
    db $76
    sub $ac
    db $fc
    sbc h
    db $f4
    jr c, jr_020_4ede

    ldh [$e0], a
    ldh [rNR41], a
    ldh a, [$d0]
    jr nz, jr_020_4ece

    ret nz

    ret nz

    nop
    nop
    ld bc, $0601
    rlca
    inc b
    rlca
    ld [$0d0f], sp
    rrca
    rrca
    dec bc
    ccf
    ld a, [hl-]
    ld c, l

jr_020_4f01:
    ld a, a
    ld d, a
    db $76
    dec h
    daa
    rrca
    rrca
    rrca
    ld c, $0f
    dec bc
    inc b
    rlca
    rlca
    rlca
    nop
    nop
    ldh [$e0], a
    sub b
    ldh a, [rOBP0]
    ld hl, sp-$18
    cp b
    ldh a, [rNR10]
    ret nc

    or b
    ldh a, [$f0]
    ldh a, [rSVBK]
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    add b
    add b
    ret nz

    ld b, b
    or $f6
    sbc [hl]
    sbc [hl]
    nop
    nop
    dec c
    dec c
    ld a, [bc]
    rrca

jr_020_4f36:
    inc b
    rlca
    dec c
    rrca
    rra
    ld d, $1f
    inc d
    rrca
    dec bc
    rla
    dec e
    rrca
    inc c
    dec bc
    ld c, $07
    dec b
    rlca
    ld b, $07
    rlca
    add hl, bc
    rrca
    rrca
    rrca
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_4f36

    ld d, b
    ldh a, [$f8]
    cp b
    db $fc
    inc d
    ld e, h
    or h
    ld hl, sp-$08
    db $f4
    cp h
    ld hl, sp+$58
    ldh a, [$30]
    ldh a, [$d0]
    ldh a, [$b0]
    ldh a, [$f0]
    ret z

    ld hl, sp-$08
    ld hl, sp+$00
    nop
    rlca
    rlca
    add hl, bc
    rrca
    ld [de], a
    rra
    rla
    dec e
    rrca
    ld [$0d0b], sp
    rrca
    rrca
    rrca
    ld c, $0f
    ld [$0407], sp
    inc bc
    inc bc
    ld bc, $0301
    ld [bc], a
    ld l, a
    ld l, a
    ld a, c
    ld a, c
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR41], a
    ldh [rNR10], a
    ldh a, [$b0]
    ldh a, [$f0]
    ret nc

    db $fc
    ld e, h
    or d
    cp $ea
    ld l, [hl]
    and h
    db $e4
    ldh a, [$d0]
    ldh a, [$b0]
    ldh a, [$d0]
    jr c, @-$16

    ldh a, [$f0]
    rlca
    rlca
    inc c
    rrca
    ld [$100f], sp
    rra
    jr jr_020_4fd9

    jr jr_020_4fdb

    inc e
    rla
    inc e
    rla
    ld c, $0b
    dec c
    rrca
    ld b, $07
    dec b
    rlca
    rlca
    ld b, $07
    dec b
    add hl, bc
    rrca
    rrca
    rrca
    add b
    add b
    ld h, b
    ldh [$30], a
    ldh a, [rNR10]
    ldh a, [rNR10]

jr_020_4fd9:
    ldh a, [rSVBK]

jr_020_4fdb:
    ldh a, [$98]
    ld hl, sp-$78
    ld hl, sp-$28
    ld hl, sp-$10
    ldh a, [rNR41]
    ldh [$d0], a
    ldh a, [$f0]
    jr nc, jr_020_4fdb

    ret nc

    ret z

    ld hl, sp-$08
    ld hl, sp+$00
    nop
    ld bc, $0601
    rlca
    inc b
    rlca
    ld [$0d0f], sp
    rrca
    rrca
    dec bc
    ccf
    ld a, [hl-]
    ld c, l
    ld a, a
    ld d, a
    db $76
    dec h
    daa
    rrca
    dec bc
    rrca
    dec c
    rrca
    dec bc
    inc b
    rlca
    rlca
    rlca
    nop
    nop
    ldh [$e0], a
    sub b
    ldh a, [rOBP0]
    ld hl, sp-$18
    cp b
    ldh a, [rNR10]
    ret nc

    or b
    ldh a, [$f0]
    ldh a, [rSVBK]
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    add b
    add b
    ret nz

    ret nz

    and b
    ldh [$e0], a
    ldh [rP1], a
    nop
    dec c
    dec c
    ld a, [bc]
    rrca

jr_020_5036:
    inc b
    rlca
    dec c
    rrca
    rra
    ld d, $1f
    inc d
    rrca
    dec bc
    rla
    dec e
    rrca
    inc c
    dec de
    ld e, $1f
    dec e
    rrca
    inc c
    rlca
    rlca
    add hl, bc
    rrca
    ld c, $0e
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_5036

    ld d, b
    ldh a, [$f8]
    cp b
    db $fc
    inc d
    ld e, h
    or h
    ld hl, sp-$08
    db $f4
    cp h
    ld hl, sp+$58
    ldh a, [$30]
    ret nc

    ldh a, [$b0]
    ldh a, [$f0]
    ldh a, [$c8]
    ld hl, sp+$78
    ld a, b
    nop
    nop
    rlca
    rlca
    add hl, bc
    rrca
    ld [de], a
    rra
    rla
    dec e
    rrca
    ld [$0d0b], sp
    rrca
    rrca
    rrca
    ld c, $0f
    ld [$0c0f], sp
    rlca
    rlca
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR41], a
    ldh [rNR10], a
    ldh a, [$b0]
    ldh a, [$f0]
    ret nc

    db $fc
    ld e, h
    or d
    cp $ea
    ld l, [hl]
    and h
    db $e4
    ldh a, [$d0]
    ldh a, [$b0]
    ldh a, [$d0]
    jr c, @-$16

    ldh a, [$f0]
    rlca
    rlca
    inc c
    rrca
    ld [$100f], sp
    rra
    jr jr_020_50d9

    jr jr_020_50db

    inc e
    rla
    inc e
    rla
    ld c, $0b
    dec c
    rrca
    ld b, $07
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    dec b
    add hl, bc
    rrca
    rrca
    rrca
    add b
    add b
    ld h, b
    ldh [$30], a
    ldh a, [rNR10]
    ldh a, [rNR10]

jr_020_50d9:
    ldh a, [rSVBK]

jr_020_50db:
    ldh a, [$98]
    ld hl, sp-$78
    ld hl, sp-$28
    ld hl, sp-$0d
    di
    daa
    rst $20
    call c, $f0fc
    jr nc, jr_020_50db

    ret nc

    ld c, b
    ld a, b
    ld a, b
    ld a, b
    ld bc, $0601
    rlca
    inc b
    rlca
    ret z

    rst $08
    call $cfcf
    bit 7, a
    ld a, d
    ld c, l
    ld a, a
    ld e, a
    ld a, [hl]
    dec a
    ccf
    rra
    rla
    ld c, $0b
    rrca
    rrca
    rrca
    dec bc
    inc b
    rlca
    rlca
    rlca
    ldh [$e0], a
    sub b
    ldh a, [rOBP0]
    ld hl, sp-$18
    cp b
    ldh a, [rNR10]
    ret nc

    or b
    ldh a, [$f0]
    ldh a, [rSVBK]
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    add b
    add b
    add b
    add b
    dec c
    dec c
    ld a, [bc]
    rrca

jr_020_5134:
    inc b
    rlca
    call $dfcf
    sub $df
    call nc, Call_020_6b6f
    scf
    dec a
    rra
    inc e
    rrca
    ld a, [bc]
    dec b
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    add hl, bc
    rrca
    ld c, $0e
    ret nz

    ret nz

    jr nz, jr_020_5134

    ld d, b
    ldh a, [$f8]
    cp b
    db $fc
    inc d
    ld e, h
    or h
    ld hl, sp-$08
    db $f4
    cp h
    ld hl, sp+$58
    ldh a, [$30]
    ldh a, [$f0]
    ret nc

    ldh a, [$f0]
    ldh a, [$f0]
    or b
    ret z

    ld hl, sp+$78
    ld a, b
    rlca
    rlca
    add hl, bc
    rrca
    ld [de], a
    rra
    rla
    dec e
    rrca
    ld [$0d0b], sp
    rrca
    rrca
    rrca
    ld c, $0f
    ld [$0407], sp
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $8080
    ld h, b
    ldh [rNR41], a
    ldh [rNR13], a
    di
    or e
    di
    or $d6
    db $fc
    ld e, h
    or d
    cp $ea
    ld l, [hl]
    and h
    db $e4
    ldh a, [$f0]
    ldh a, [$90]
    ldh a, [$b0]
    ldh a, [$d0]
    jr c, @-$16

    ldh a, [$f0]
    rlca
    rlca
    inc c
    rrca
    ld [$100f], sp
    rra
    jr jr_020_51d9

    jr jr_020_51db

    inc e
    rla
    inc e
    rla
    ld c, $0b
    dec c
    rrca
    ld b, $07
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    dec b
    add hl, bc
    rrca
    rrca
    rrca
    add b
    add b
    ld h, b
    ldh [$33], a
    di
    inc de
    di
    inc de

jr_020_51d9:
    di
    ld [hl], d

jr_020_51db:
    ld a, [c]
    sbc d
    ld a, [$fe8e]
    call c, $fcfc
    db $f4
    jr z, @-$06

    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [$d0]
    ld c, b
    ld a, b
    ld a, b
    ld a, b
    nop
    nop
    ld bc, $0201
    inc bc
    ld h, d
    ld h, e
    ld h, h
    ld h, a
    inc h
    daa
    inc [hl]
    scf
    dec e
    rra
    dec bc
    rrca
    inc c
    rrca
    ld b, $07
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc

jr_020_520c:
    inc b
    rlca
    rlca
    rlca
    ldh [$e0], a
    jr c, jr_020_520c

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    call nz, Call_000_28fc
    ld hl, sp+$28
    ld hl, sp-$10
    ldh a, [rNR41]
    ldh [$e0], a
    ldh [$c0], a
    ld b, b
    and b
    ldh [$90], a
    ldh a, [$f0]
    ldh a, [rP1]
    nop
    ld bc, $0301

jr_020_5235:
    inc bc
    ld h, d
    ld h, e
    ld h, h
    ld h, a
    ld [hl], $37
    rra
    dec e
    rrca
    dec c
    ld e, $1b
    dec h
    ccf
    ld l, $3f
    inc de
    inc de
    inc bc
    inc bc
    dec b
    rlca
    dec b
    rlca
    inc bc
    inc bc
    ld h, b
    ld h, b
    or b
    ldh a, [rNR10]
    ldh a, [$28]
    ld hl, sp+$78
    ld hl, sp-$08
    ret z

    add sp, -$68
    ld hl, sp+$78
    ld hl, sp-$48
    ld hl, sp+$08
    ldh a, [$90]
    ldh [$e0], a
    ret nc

    ldh a, [$f0]
    jr nc, jr_020_5235

    ld hl, sp+$38
    jr c, jr_020_5274

    inc bc
    inc b
    rlca

jr_020_5274:
    ld a, [bc]
    rrca
    rrca
    dec c
    dec c
    ld a, [bc]
    rrca
    rrca
    rrca
    ld c, $0f
    add hl, bc
    rrca
    ld [$0407], sp
    rlca
    rlca
    inc b
    rlca
    inc bc
    inc bc
    inc bc
    inc bc

jr_020_528c:
    dec b
    rlca

jr_020_528e:
    rlca
    rlca
    ret c

    ret c

    jr z, jr_020_528c

    sub b
    ldh a, [$d3]
    ld [hl], e
    ld l, e
    cp e
    rst $38
    rst $30
    db $fc
    call nz, Call_000_18f8
    ldh a, [$30]
    ldh a, [rSVBK]
    ldh a, [$d0]
    ldh [$e0], a
    ldh [$60], a
    ldh [$a0], a
    jr nz, jr_020_528e

    ldh [$e0], a
    rlca
    rlca
    ld [$0e0f], sp
    rrca

jr_020_52b6:
    rrca
    add hl, bc
    dec bc
    inc c
    rrca
    rrca
    rrca
    ld c, $0f
    ld [$080f], sp
    rlca
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    rlca
    ld b, $09
    rrca
    ld c, $0e
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_52b6

    inc de
    di
    or e
    di
    or $d6
    db $fc
    db $fc
    cp h
    db $ec
    jp nc, $ba7e

    cp $d4
    db $f4
    ldh [$60], a
    ldh [$a0], a
    ret nc

    ld [hl], b
    ret nc

    ldh a, [$60]
    ld h, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc

jr_020_52f6:
    inc b
    rlca
    inc b
    rlca
    ld [$0d0f], sp
    rrca
    rrca
    dec bc
    rrca
    ld a, [bc]
    dec a
    scf
    ld d, l
    ld [hl], a
    ld [hl+], a
    inc hl
    rlca
    dec b
    dec bc
    rrca
    add hl, bc
    rrca
    ld b, $06
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_52f6

    ld d, b
    ldh a, [$f0]
    ldh a, [$f0]
    sub b
    ret nc

    jr nc, @-$0e

    ldh a, [$f0]
    ld [hl], b
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    ldh [$60], a
    ldh a, [$d0]
    and b
    ldh [$c0], a
    ret nz

    nop
    nop
    ld bc, $0201
    inc bc
    dec b
    rlca
    rlca
    ld b, $0f
    inc c
    ld e, $15
    rra
    rla
    rrca
    dec bc
    rla
    inc e
    dec sp
    ld a, $27
    daa
    ld h, a
    ld h, h
    ld l, a
    ld l, e
    inc b
    rlca

jr_020_534e:
    inc bc
    inc bc
    nop
    nop
    ret c

    ret c

    jr z, jr_020_534e

    ld d, b
    ldh a, [$f0]
    or b
    ld hl, sp+$18
    cp h
    ld d, h
    db $fc
    db $f4
    ld hl, sp+$68
    db $f4
    sbc h
    xor $3a
    cp $fa
    db $fc
    sbc h
    ldh a, [rSVBK]
    ldh [$e0], a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld a, [bc]
    rrca

jr_020_5378:
    rrca
    rrca

jr_020_537a:
    rrca
    add hl, bc
    dec bc
    inc c
    rrca
    rrca
    rrca
    ld c, $0f
    ld [$0407], sp
    dec bc
    rrca
    rra
    ld d, $0b
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_5378

    jr nz, jr_020_537a

    db $10
    ldh a, [$b0]
    ldh a, [$f0]
    ret nc

    ldh a, [$50]
    cp h
    db $ec
    xor d
    xor $44
    call nz, $e0e0
    ldh a, [rSVBK]
    ldh a, [$f0]
    ld h, b
    ld h, b
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca

jr_020_53ba:
    jr @+$21

    jr c, jr_020_53ed

    jr c, jr_020_53ef

    dec e
    rla
    ld l, d
    ld a, a
    add hl, sp
    ccf

jr_020_53c6:
    rrca
    rrca
    rrca
    add hl, bc
    rra
    ld d, $09
    rrca
    ld b, $06
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    jr nz, jr_020_53ba

    jr nc, @-$0e

jr_020_53dc:
    jr c, jr_020_53c6

    cp b
    add sp, $70
    ret nc

    jr z, jr_020_53dc

    cp a
    rst $30
    rst $38
    rst $20
    ld hl, sp+$38
    ldh [$e0], a
    ret nz

jr_020_53ed:
    ret nz

    nop

jr_020_53ef:
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    ld b, $07
    rlca
    dec b
    rlca
    dec b
    ld e, $1b
    ld c, a
    ld a, [hl]
    ld d, l
    ld [hl], a
    ld [hl+], a
    inc hl
    rlca
    dec b
    dec bc
    rrca
    add hl, bc
    rrca
    ld b, $06
    ld h, b
    ld h, b
    sub b
    ldh a, [$28]
    ld hl, sp+$78
    ld hl, sp+$78
    ret z

    add sp, -$68
    ld hl, sp-$08
    ld hl, sp+$38
    ld hl, sp-$78
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    ldh [$60], a
    ldh a, [$d0]
    and b
    ldh [$c0], a
    ret nz

    nop
    nop
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    rlca
    ld b, $0f
    ld a, [bc]
    rrca
    dec bc
    rlca
    dec b
    dec bc
    ld c, $3f
    inc l
    dec sp
    ld a, $27
    daa
    ld h, a
    ld h, h
    ld l, a
    ld l, e
    inc b
    rlca
    inc bc
    inc bc
    db $ec
    db $ec
    inc d
    db $fc
    xor b
    ld hl, sp-$08
    ld e, b
    db $fc
    inc c
    ld e, [hl]
    xor d
    cp $fa
    db $fc
    or h
    ld a, [$f44e]
    inc e
    xor $3a
    cp $fa
    db $fc
    sbc h
    ldh a, [rSVBK]
    ldh [$e0], a
    nop
    nop
    ld bc, $0201
    inc bc
    dec b
    rlca
    rlca
    rlca
    rlca
    inc b
    dec b
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    inc b
    rrca
    ld [$0407], sp
    dec bc
    rrca
    rra
    ld d, $0b
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$90]
    ldh a, [$88]
    ld hl, sp-$28
    ld a, b
    ld hl, sp-$18
    ld hl, sp+$28
    sbc $76
    ld a, [c]
    ld a, [hl]
    xor d
    xor $44
    call nz, $e0e0
    ldh a, [rSVBK]
    ldh a, [$f0]
    ld h, b
    ld h, b
    ld bc, $0201
    inc bc

jr_020_54b4:
    inc b
    rlca
    inc b
    rlca
    inc c
    rrca
    inc e

jr_020_54bb:
    rla
    inc e
    rla
    ld c, $0b
    dec [hl]
    ccf
    ld [hl], e
    ld e, a
    add hl, sp
    ccf
    rrca
    rrca
    rrca
    add hl, bc
    rra
    ld d, $09
    rrca
    ld b, $06
    ret nz

    ret nz

    jr nz, jr_020_54b4

    db $10
    ldh a, [rNR10]
    ldh a, [rNR23]
    ld hl, sp+$1c
    db $f4
    ld e, h
    db $f4
    cp b
    add sp, $14
    db $fc
    ld e, e
    ei
    cp a
    rst $30
    rst $38
    rst $20
    ld hl, sp+$38
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    ld bc, $0601
    rlca
    ld [$090f], sp
    rrca
    ld de, $1b1f
    ld e, $1f
    rla
    rra
    inc d
    ld a, e
    ld l, [hl]
    ld c, a
    ld a, [hl]
    ld d, l
    ld [hl], a
    ld [hl+], a
    inc hl
    rlca
    dec b
    dec bc
    rrca
    add hl, bc
    rrca
    ld b, $06
    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [$e0], a
    ldh [$e0], a
    jr nz, jr_020_54bb

    ld h, b
    ldh [$e0], a
    ldh [$e0], a
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    ldh [$60], a
    ldh a, [$d0]
    and b
    ldh [$c0], a
    ret nz

    inc bc
    inc bc
    inc b
    rlca
    ld a, [bc]
    rrca
    rrca
    dec c
    rra
    jr jr_020_5578

    ld a, [hl+]
    ccf
    cpl
    rra
    ld d, $2f
    add hl, sp
    ccf
    inc l
    dec sp
    ld a, $27
    daa
    ld h, a
    ld h, h
    ld l, a
    ld l, e
    inc b
    rlca
    inc bc
    inc bc
    or b
    or b
    ld d, b
    ldh a, [$a0]
    ldh [$e0], a
    ld h, b
    ldh a, [$30]
    ld a, b
    xor b
    ld hl, sp-$18
    ldh a, [$d0]
    add sp, $38
    db $f4
    inc e
    xor $3a
    cp $fa
    db $fc
    sbc h
    ldh a, [rSVBK]
    ldh [$e0], a
    nop
    nop
    ld b, $06
    add hl, bc
    rrca
    inc d
    rra
    ld e, $1f

jr_020_5578:
    ld e, $13

jr_020_557a:
    rla
    add hl, de
    rra
    rra
    rra
    inc e
    rra
    ld de, $080f
    rlca
    inc b
    dec bc
    rrca
    rra
    ld d, $0b
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_020_557a

    ld h, b
    ldh [$e0], a
    and b
    ldh [$a0], a
    ld a, b
    ret c

    ld a, [c]
    ld a, [hl]
    xor d
    xor $44
    call nz, $e0e0
    ldh a, [rSVBK]
    ldh a, [$f0]
    ld h, b
    ld h, b
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    jr nc, jr_020_55f9

    ld [hl], b
    ld e, a
    ld [hl], c
    ld e, a
    ld a, [hl-]
    cpl
    call nc, $73ff
    ld e, a
    add hl, sp
    ccf
    rrca
    rrca
    rrca
    add hl, bc
    rra
    ld d, $09
    rrca
    ld b, $06
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld h, b
    ldh [rSVBK], a
    ret nc

    ld [hl], b
    ret nc

    ldh [$a0], a
    ld d, b
    ldh a, [$5b]
    ei
    cp a
    rst $30
    rst $38
    rst $20
    ld hl, sp+$38
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    nop

jr_020_55f9:
    inc bc
    inc b
    rlca
    rlca
    rlca
    rlca
    ld b, $1d
    dec de
    daa
    ld a, $12
    inc de
    inc bc
    ld bc, $0707
    dec b
    rlca
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    ret nz

    ld h, b
    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [$e0], a
    ldh [$60], a
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ret nz

    ret nz

    ld b, b
    ldh [$e0], a
    add b
    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    ld bc, $0303
    ld [bc], a
    rlca
    inc b
    rrca
    dec bc
    rlca
    rlca
    dec bc
    inc c
    rra
    inc d
    inc de
    inc de
    inc sp
    jr nc, @+$39

    scf
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    db $10
    ldh a, [$60]
    ldh [$e0], a
    and b
    ldh a, [$30]
    ld hl, sp-$18
    ldh a, [$50]
    add sp, -$48
    add sp, $38
    db $fc
    db $f4
    ld hl, sp-$48
    ldh [$60], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    ld b, $07
    rlca
    rlca
    rlca
    dec b

jr_020_567c:
    rlca
    rlca
    rlca
    ld b, $07
    inc b
    rlca
    inc b
    rlca
    rlca
    rrca
    ld a, [bc]
    rlca
    rlca
    dec b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    ret nz

    nop
    ret nz

    jr nz, jr_020_567c

    ldh [$e0], a
    ldh [$60], a
    cp b
    ret c

    db $e4
    ld a, h
    ld c, b
    ret z

    ret nz

    ret nz

    ldh [$60], a
    ldh [$e0], a
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc c
    rrca

jr_020_56bc:
    inc e
    rla
    dec c
    dec bc
    ld [hl], $3f
    dec sp
    cpl
    rlca
    rlca
    rlca
    dec b
    rrca
    ld a, [bc]
    dec b
    rlca
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    nop
    ret nz

    nop
    ret nz

    jr nz, jr_020_56bc

    or b
    ret nc

    ld h, b
    ldh [rNR10], a
    ldh a, [rPCM12]
    or $fe
    adc $f0
    jr nc, @-$3e

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc

jr_020_5736:
    dec b
    rlca
    rlca
    ld b, $0e
    dec c
    ld a, a
    ld a, a
    rra
    rla
    rra
    inc d
    rrca
    inc c
    dec bc
    ld c, $05
    rlca
    rlca
    rlca
    rlca
    inc b
    dec bc
    ld c, $0f
    rrca
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_5736

    ld d, b
    ldh a, [$f3]
    or e
    cp e
    ld e, e
    rst $38
    rst $38
    db $fc
    ld [hl], h
    db $fc
    sub h
    ld hl, sp+$18
    add sp, $38
    ret nc

    ldh a, [$f0]
    ldh a, [$f0]
    sub b
    add sp, -$48
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca

jr_020_57ba:
    inc b
    rlca

jr_020_57bc:
    inc c
    rrca
    ld c, $0b
    dec e
    rra
    add hl, de
    rla
    rrca
    rrca
    rlca
    inc b
    rrca
    dec bc
    inc b
    rlca
    inc bc
    inc bc

jr_020_57ce:
    nop
    nop
    nop
    nop

jr_020_57d2:
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_020_57ba

    jr nz, jr_020_57bc

    jr nc, jr_020_57ce

    ldh a, [$d0]
    jr nc, jr_020_57d2

    ld e, h
    db $fc
    db $fc
    db $ec
    ld hl, sp-$48
    ldh [$60], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc

jr_020_5836:
    dec b
    rlca
    rlca
    ld b, $0e
    dec c
    ld a, a
    ld a, a
    rra
    rla
    rra
    inc d
    rrca
    inc c
    dec bc
    ld c, $05
    rlca
    rlca
    rlca
    rlca
    inc b
    dec bc
    ld c, $0f
    rrca
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_5836

    ld d, b
    ldh a, [$f3]
    or e
    cp e
    ld e, e
    rst $38
    rst $38
    db $fc
    ld [hl], h
    db $fc
    sub h
    ld hl, sp+$18
    add sp, $38
    ret nc

    ldh a, [$f0]
    ldh a, [$f0]
    sub b
    add sp, -$48
    ld a, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca

jr_020_58ba:
    inc b
    rlca
    inc c
    rrca
    rrca
    dec bc
    inc c
    rrca
    ld a, [bc]
    rrca
    rra
    rla
    rra
    dec e
    rlca
    ld b, $03
    inc bc

jr_020_58cc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_020_58ba

    inc l
    db $ec
    inc a
    db $fc
    ld [hl], h
    call nc, $f8b8
    sbc b
    add sp, -$10
    ldh a, [$e0]
    jr nz, @-$0e

    ret nc

    jr nz, jr_020_58cc

    ret nz

    ret nz

    nop
    nop

    db $06, $59, $09, $59, $0f, $59, $12, $59, $1d, $59

    inc h
    ld e, c
    inc l
    ld e, c
    ld b, b
    ld e, c
    ld c, h
    ld e, c
    ld b, $59
    ld d, l
    ld e, c
    nop
    rst $38
    db $fd

    db $00, $1e, $01, $1e, $ff, $00, $02, $ff, $fd, $02

    inc c
    inc bc
    inc c
    inc b
    jr @+$04

    inc c

    db $05, $0c, $fd, $02, $18, $03, $18, $02, $18, $fd, $00

    ld a, [bc]
    ld b, $1e
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    inc bc
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    add hl, bc
    ld [$0800], sp
    add hl, bc
    ld [$0a00], sp
    cp $01
    ld [bc], a
    ld [de], a
    inc bc
    ld [de], a
    ld [bc], a
    ld e, $05
    ld [de], a
    db $fd
    ld a, [bc]
    ld e, $0b
    ld e, $ff
    nop
    inc b
    inc b
    ld h, e
    ld e, c
    add b
    ld h, l
    ld h, e
    ld e, c
    add b
    ld e, c
    add b
    ld e, d
    add b
    ld e, e
    add b
    ld e, h
    add b
    ld e, l
    add b
    ld e, [hl]
    add b
    ld e, a
    add b
    ld h, b
    add b
    ld h, c
    add b
    ld h, d
    add b
    ld h, e
    add b
    ld h, h
    nop
    nop
    nop
    nop
    nop
    ld bc, $1a01
    dec de
    daa
    ccf
    inc h
    ccf
    inc l
    ccf
    rra
    dec de
    rrca
    add hl, bc
    rlca
    ld b, $03
    inc bc
    rlca
    rlca
    rrca
    dec c
    rrca
    dec bc
    ld b, $07
    rrca
    rrca
    ld c, $0e
    ld b, $06
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [rSVBK]
    ldh a, [$f0]
    sub b
    ldh a, [$30]
    ld hl, sp+$28
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$e0], a
    ldh [$60], a
    ldh a, [$d0]
    ld h, b
    ldh [$e0], a
    and b
    sub b
    ldh a, [$60]
    ld h, b
    scf
    scf
    add hl, hl
    ccf
    ld d, b
    ld a, a
    ld d, [hl]
    ld a, a
    ccf
    add hl, sp
    ccf
    ld a, [hl+]
    ccf
    ld [hl+], a
    ld a, a
    ld a, b
    rst $38
    xor h
    rst $38
    ei
    ld d, a
    ld e, a
    ld c, c
    ld c, a
    rst $08
    rst $08
    rst $08
    ret


jr_020_59dc:
    add hl, bc
    rrca
    rlca
    rlca
    ret c

    ret c

    jr z, jr_020_59dc

    inc d
    db $fc
    call nc, $f8fc
    jr c, @-$06

    xor b
    ld hl, sp-$78
    ldh a, [$30]
    ld hl, sp+$68
    ld hl, sp-$48
    call c, Call_000_3cf4
    db $f4
    ld hl, sp-$08
    ldh [$e0], a
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    ld [$0e0f], sp
    rrca
    rrca
    add hl, bc
    rrca
    inc c
    rra
    inc d
    rra
    db $10
    rrca
    ld [$0707], sp
    rrca
    ld a, [bc]
    rra
    rla
    ld c, $0f
    rrca
    rrca
    ld c, $0e
    ld b, $06
    add b
    add b
    ld e, b
    ret c

    db $e4
    db $fc
    inc h
    db $fc
    inc [hl]
    db $fc
    ld hl, sp-$28
    ldh a, [$90]
    ldh [$60], a
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$60], a
    ldh [$a0], a
    ld h, b
    ldh [$d0], a
    or b
    ret nc

    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    dec [hl]
    scf
    ld l, b
    ld a, a
    ld c, b
    ld a, a
    jr nc, jr_020_5a89

    jr c, @+$31

    jr c, jr_020_5a7d

    inc e
    rra
    ld l, a
    ld a, a
    ld a, a
    ld e, e

jr_020_5a54:
    scf
    inc a

jr_020_5a56:
    add hl, bc
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    add hl, bc
    rrca
    rlca
    rlca
    add b
    add b

jr_020_5a62:
    ld e, b
    ret c

    inc l
    db $fc
    inc h
    db $fc
    jr jr_020_5a62

    jr c, jr_020_5a54

    jr c, jr_020_5a56

    ld [hl], b
    ldh a, [$e8]
    ld hl, sp-$05
    cp e
    rst $18
    ld [hl], a
    inc a
    db $f4
    ld hl, sp-$08
    ldh [$e0], a
    nop

jr_020_5a7d:
    nop
    nop
    nop
    ld bc, $1a01
    dec de
    daa
    ccf
    inc h
    ccf
    inc l

jr_020_5a89:
    ccf
    rra
    dec de
    rrca
    add hl, bc
    rlca
    ld b, $03
    inc bc
    inc bc
    inc bc
    rlca
    ld b, $05
    rlca
    ld b, $07
    dec bc
    dec c
    dec bc
    rrca
    ld b, $06
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [rSVBK]
    ldh a, [$f0]
    sub b
    ldh a, [$30]
    ld hl, sp+$28
    ld hl, sp+$08
    ldh a, [rNR10]
    and $e6
    or $56
    db $fc
    db $ec
    ld [hl], b
    ldh a, [$f0]
    ldh a, [rSVBK]
    ld [hl], b
    ld h, b
    ld h, b
    scf
    scf
    add hl, hl
    ccf
    ld d, b
    ld a, a
    ld d, [hl]
    ld a, a
    ccf
    add hl, sp
    ccf
    ld a, [hl+]
    ccf
    ld [hl+], a
    rra
    jr jr_020_5b10

    inc l
    ccf
    dec sp
    ld [hl], a
    ld a, a
    ld sp, hl
    rst $18
    rst $38
    rst $38
    rrca
    rrca

jr_020_5adc:
    ld bc, $0101
    ld bc, $d8d8
    jr z, jr_020_5adc

    inc d
    db $fc
    call nc, $f8fc
    jr c, @-$06

    xor b
    ld hl, sp-$78
    db $fc
    inc a
    cp $6a
    cp $be
    ret nc

    ldh a, [rNR41]
    ldh [$e0], a
    ldh [$e0], a
    jr nz, jr_020_5b1d

    ldh [$c0], a
    ret nz

    ld bc, $0601
    rlca
    ld [$0e0f], sp
    rrca
    rrca
    add hl, bc
    rrca
    inc c
    rra
    inc d
    rra
    db $10

jr_020_5b10:
    rrca
    ld [$6767], sp
    ld [hl], a
    db $76
    rra
    dec de
    ld b, $07
    rlca
    dec b
    add hl, bc

jr_020_5b1d:
    rrca
    ld b, $06
    add b
    add b
    ld e, b
    ret c

    db $e4
    db $fc
    inc h
    db $fc
    inc [hl]
    db $fc
    ld hl, sp-$28
    ldh a, [$90]
    ldh [$60], a
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$b0]
    ldh a, [$d0]
    ld h, b
    ldh [$f0], a
    ldh a, [rSVBK]
    ld [hl], b
    ld h, b
    ld h, b
    inc bc
    inc bc
    dec [hl]
    scf
    ld l, b
    ld a, a
    ld c, b
    ld a, a
    jr nc, jr_020_5b89

    jr c, @+$31

    jr c, @+$31

    inc e
    rra
    cpl
    ccf
    ccf
    dec sp
    ld [hl], a
    ld e, h
    ld a, c
    ld e, a

jr_020_5b58:
    ccf
    ccf
    rrca
    rrca
    ld bc, $0101
    ld bc, $8080

jr_020_5b62:
    ld e, b
    ret c

    inc l
    db $fc
    inc h
    db $fc
    jr jr_020_5b62

    dec sp
    db $eb
    dec sp
    db $eb
    ld [hl], d
    ld a, [c]
    xor $fe
    db $fc
    or h
    ret c

    ld a, b
    jr nz, jr_020_5b58

    ldh [$e0], a
    ldh [rNR41], a
    jr nz, @-$1e

    ret nz

    ret nz

    nop
    nop
    dec c
    dec c

jr_020_5b84:
    rla
    rra
    ld [hl+], a
    ccf
    inc h

jr_020_5b89:
    ccf
    rra
    dec de
    rrca
    add hl, bc
    rlca
    ld b, $03
    inc bc
    rlca
    dec b
    rrca
    ld [$0d0f], sp
    dec bc
    rrca
    rlca
    dec b
    inc b
    rlca
    rlca
    rlca
    ret nz

    ret nz

    jr nz, jr_020_5b84

    and b
    ldh [rNR10], a
    ldh a, [$f0]
    ldh a, [$f0]
    sub b
    ldh a, [$30]
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh [$e0], a
    add b
    add b
    ret nz

    ld b, b
    ldh [$a0], a
    ldh a, [$f0]
    sbc e
    sbc e
    adc a
    adc a
    ld [$1508], sp
    dec e
    ld [hl+], a
    ccf
    inc hl
    ccf
    dec d
    rra
    rrca
    ld c, $0f
    ld a, [bc]
    rrca
    ld [$0607], sp
    rlca
    rlca
    rlca
    dec b
    rlca
    ld b, $07
    rlca
    rlca
    dec b
    add hl, bc
    rrca
    ld c, $0e
    jr nc, @+$32

    add sp, -$08
    or h
    db $fc
    call nc, $fcfc
    inc a
    ld hl, sp+$08
    ld hl, sp-$58
    ld hl, sp-$58
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$d0]
    ldh a, [$b0]
    ld [hl], b
    ldh a, [$f0]
    ret nc

    ld c, b
    ld a, b
    jr c, jr_020_5c38

    inc bc
    inc bc
    inc b
    rlca
    dec b
    rlca
    ld [$0f0f], sp
    rrca
    rrca
    add hl, bc
    rrca
    inc c
    rra
    inc d
    rrca
    ld [$0707], sp
    ld bc, $0301
    ld [bc], a
    rlca
    dec b
    rrca
    rrca
    reti


    reti


jr_020_5c1e:
    pop af
    pop af
    nop
    nop
    or b
    or b
    add sp, -$08
    ld b, h
    db $fc
    inc h
    db $fc
    ld hl, sp-$28
    ldh a, [$90]
    ldh [$60], a
    ret nz

    ret nz

    ldh [$a0], a
    ldh a, [rNR10]
    ldh a, [$b0]

jr_020_5c38:
    ret nc

    ldh a, [$e0]
    and b
    jr nz, jr_020_5c1e

    ldh [$e0], a
    inc e
    inc e
    ld [de], a
    ld e, $23
    ccf
    inc h
    ccf
    jr jr_020_5c69

    inc e
    rla
    ld e, $17
    rra
    dec d
    rrca
    dec bc
    rlca
    ld b, $07
    dec b
    ld b, $07
    dec b
    rlca
    rrca
    dec bc
    inc de
    rra
    rra
    rra
    jr nc, jr_020_5c92

    ret c

    ld hl, sp+$48
    ld hl, sp-$50
    ldh a, [$50]

jr_020_5c69:
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    ldh [$60], a
    ldh [$a0], a
    ld h, b
    ldh [$a0], a
    ldh [$e0], a
    and b
    sub b
    ldh a, [$f0]
    ldh a, [rP1]
    nop
    dec c
    dec c

jr_020_5c84:
    rla
    rra
    ld [hl+], a
    ccf
    inc h
    ccf
    rra
    dec de
    rrca
    add hl, bc
    rlca
    ld b, $07
    rlca

jr_020_5c92:
    rrca
    dec bc
    rrca
    dec c
    ld c, $0f
    dec bc
    rrca
    rlca
    dec b
    inc b
    rlca
    rlca
    rlca
    ret nz

    ret nz

    jr nz, jr_020_5c84

    and b
    ldh [rNR10], a
    ldh a, [$f0]
    ldh a, [$f0]
    sub b
    ldh a, [$30]
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh [$e0], a
    ret nz

    ld b, b
    add b
    add b
    add b
    add b
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ld [$1508], sp
    dec e
    ld [hl+], a
    ccf
    inc hl
    ccf
    dec d
    rra
    rrca
    ld c, $0f
    ld a, [bc]
    rrca
    ld [$0607], sp
    rlca
    dec b
    rra
    dec e
    dec e
    ld e, $0f
    rrca
    rlca
    dec b
    add hl, bc
    rrca
    ld c, $0e
    jr nc, @+$32

    add sp, -$08
    or h
    db $fc
    call nc, $fcfc
    inc a
    ld hl, sp+$08
    ld hl, sp-$58
    ld hl, sp-$58
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$d0]
    ldh a, [$b0]
    ldh a, [$f0]
    ldh a, [$d0]
    ld c, b
    ld a, b
    jr c, jr_020_5d38

    inc bc
    inc bc
    inc b
    rlca
    dec b
    rlca
    ld [$0f0f], sp
    rrca
    rrca
    add hl, bc
    rrca
    inc c
    rra
    inc d
    rrca
    ld [$0707], sp
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0000
    or b
    or b
    add sp, -$08
    ld b, h
    db $fc
    inc h
    db $fc
    ld hl, sp-$28
    ldh a, [$90]
    ldh [$60], a
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$30]
    ldh a, [$b0]

jr_020_5d38:
    ret nc

    ldh a, [$e0]

jr_020_5d3b:
    and b
    jr nz, @-$1e

    ldh [$e0], a
    inc e
    inc e
    ld [de], a
    ld e, $23
    ccf
    inc h
    ccf
    jr jr_020_5d69

    inc e
    rla
    ld e, $17
    rra
    dec d
    rrca
    dec bc
    rlca
    ld b, $03
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    rrca
    dec bc
    ld [de], a
    ld e, $1e
    ld e, $30
    jr nc, jr_020_5d3b

    ld hl, sp+$48
    ld hl, sp-$50
    ldh a, [$50]

jr_020_5d69:
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR44]
    db $e3
    jp $f7c3


    scf
    db $ec
    cp h
    ld [hl], b
    ldh a, [$a0]
    ldh [$e0], a
    and b
    sub b
    ldh a, [$f0]
    ldh a, [rP1]
    nop
    dec c
    dec c

jr_020_5d84:
    rst $10
    rst $18
    ld [c], a
    rst $38
    db $e4
    rst $38
    ld e, a
    ld e, e
    ld l, a
    ld l, c
    scf
    ld [hl], $1f
    dec de
    rrca
    rrca
    dec bc
    ld c, $0f
    rrca
    dec bc
    rrca
    rlca
    dec b
    inc b
    rlca
    rlca
    rlca
    ret nz

    ret nz

    jr nz, jr_020_5d84

    and b
    ldh [rNR10], a
    ldh a, [$f0]
    ldh a, [$f0]
    sub b
    ldh a, [$30]
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh [$e0], a
    ret nz

    ld b, b
    add b
    add b
    add b
    add b
    nop
    nop
    add b
    add b
    add b
    add b
    ld [$1508], sp
    dec e
    ld h, d
    ld a, a
    ld h, e
    ld a, a
    dec [hl]
    ccf
    cpl
    ld l, $3f
    ld a, [hl-]
    rra
    jr jr_020_5df0

    ld e, $0b
    rrca
    rlca
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    dec b
    add hl, bc
    rrca
    ld c, $0e
    jr nc, @+$32

    add sp, -$08
    or h
    db $fc
    call nc, $fcfc
    inc a
    ld hl, sp+$08
    ld hl, sp-$58
    ld hl, sp-$58

jr_020_5df0:
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$50]
    ldh a, [$f0]
    or b
    ldh a, [$f0]
    ret nc

    ld c, b
    ld a, b
    jr c, jr_020_5e38

    inc bc
    inc bc
    inc b
    rlca
    dec b
    rlca
    ld [$0f0f], sp
    rrca
    rrca
    add hl, bc
    rrca
    inc c
    rra
    inc d
    rrca
    ld [$0707], sp
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    or [hl]
    or [hl]
    xor $fe
    ld b, [hl]
    cp $24
    db $fc
    ld hl, sp-$28
    ldh a, [$90]
    ldh [$60], a
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$30]
    ldh a, [$b0]

jr_020_5e38:
    ret nc

    ldh a, [$e0]
    and b
    jr nz, @-$1e

jr_020_5e3e:
    ldh [$e0], a
    inc e
    inc e
    ld [de], a
    ld e, $23
    ccf
    inc h
    ccf
    jr jr_020_5e69

    inc e
    rla
    ld e, $17
    rra
    dec d
    rrca
    dec bc
    rlca
    ld b, $03
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    rrca
    dec bc
    ld [de], a
    ld e, $1e
    ld e, $30
    jr nc, jr_020_5e3e

    ei
    ld c, e
    ei
    or e
    di
    ld d, d

jr_020_5e69:
    ld a, [c]
    ld d, $f6
    inc d
    db $f4
    inc a
    db $fc
    add sp, -$08
    ldh a, [$30]
    ldh [$a0], a
    ld h, b
    ldh [$a0], a
    ldh [$e0], a
    and b
    sub b
    ldh a, [$f0]
    ldh a, [$03]
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ld h, d
    ld h, e
    ld h, h
    ld h, a
    inc [hl]
    scf
    ld e, $1f
    rrca
    add hl, bc
    rrca
    inc c
    rlca
    inc b
    rlca
    rlca
    inc b
    rlca
    rlca
    rlca
    inc b
    rlca
    rlca
    rlca
    nop
    nop
    add b
    add b
    call z, Call_000_36cc
    cp $12
    cp $12
    cp $0c
    db $fc
    ld [$90f8], sp
    ldh a, [$e0]
    ld h, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ldh [$a0], a
    ldh [$a0], a
    sub b
    ldh a, [$f0]
    ldh a, [rP1]
    nop
    ld bc, $1201
    inc de

jr_020_5ec6:
    cpl
    ccf

jr_020_5ec8:
    call nz, $c4ff
    rst $38
    rst $28
    ei
    ccf
    add hl, sp
    rrca
    ld c, $07
    rlca
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld b, $07
    dec bc
    dec c
    dec bc
    rrca
    ld b, $06
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_020_5ec6

    jr nz, jr_020_5ec8

    ld [hl], b
    ldh a, [$f0]
    ret nc

    ldh a, [$b0]
    ld hl, sp+$28
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$e0], a
    ldh [rNR41], a
    ld h, b
    ldh [$e0], a
    ldh [$90], a
    ldh a, [$f0]
    ldh a, [rTMA]
    ld b, $0b
    rrca
    ld [de], a
    rra
    rla
    rra
    rra
    inc e
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld [$0407], sp
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0203
    dec b
    rlca

jr_020_5f1e:
    rlca
    rlca
    nop
    nop
    ret c

    ret c

    ld h, h
    db $fc
    and e
    rst $38
    rst $30
    ld a, a
    rst $38
    xor a
    db $fc
    adc h
    ld hl, sp+$38
    ldh a, [$50]
    ldh a, [$b0]
    ldh [$e0], a
    and b
    ldh [$e0], a
    ldh [$e0], a
    and b
    jr nz, jr_020_5f1e

    ldh [$e0], a
    inc bc
    inc bc
    inc c
    rrca
    ld de, $1c1f
    rra
    ld e, $13
    rra
    add hl, de
    ccf
    jr z, jr_020_5f8e

    ld hl, $121f
    rrca
    rrca
    rrca
    ld a, [bc]
    rrca
    inc c
    rrca
    rrca
    rrca
    dec bc
    inc de
    rra

jr_020_5f5e:
    inc c
    inc c
    nop
    nop
    or b
    or b
    ret z

    ld hl, sp+$4f
    rst $38
    rst $28
    cp a
    rst $30
    scf
    call c, Call_020_70fc
    ldh a, [$a0]
    ldh [$c0], a
    ret nz

    add b
    add b
    ret nz

    ret nz

    ld b, b
    ret nz

    ldh [$a0], a
    jr nz, jr_020_5f5e

    ldh [$e0], a
    nop
    nop
    ld bc, $1a01
    dec de
    daa
    ccf
    inc h
    ccf
    inc l
    ccf
    rra
    dec de

jr_020_5f8e:
    rrca
    add hl, bc
    rlca
    ld b, $03
    inc bc
    rrca
    dec c
    rrca
    dec bc
    ld b, $07
    rrca
    rrca
    ld c, $0e
    ld b, $06
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [rSVBK]
    ldh a, [$f0]
    sub b
    ldh a, [$30]
    ld hl, sp+$28
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$d0]
    ld h, b
    ldh [$e0], a
    and b
    sub b
    ldh a, [$60]
    ld h, b
    nop
    nop
    scf
    scf
    add hl, hl
    ccf
    ld d, b
    ld a, a
    ld d, [hl]
    ld a, a
    ccf
    add hl, sp
    ccf
    ld a, [hl+]
    ccf
    ld [hl+], a
    ld a, a
    ld a, b
    rst $38
    xor h
    ld d, a
    ld e, a
    ld c, c
    ld c, a
    rst $08
    rst $08
    rst $08
    ret


    add hl, bc
    rrca

jr_020_5fde:
    rlca
    rlca
    nop
    nop
    ret c

    ret c

    jr z, jr_020_5fde

    inc d
    db $fc
    call nc, $f8fc
    jr c, @-$06

    xor b
    ld hl, sp-$78
    ldh a, [$30]
    ld hl, sp+$68
    call c, Call_000_3cf4
    db $f4
    ld hl, sp-$08
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    ld [$0e0f], sp
    rrca
    rrca
    add hl, bc
    rrca
    inc c
    rra
    inc d
    rra
    db $10
    rrca
    ld [$0a0f], sp
    rra
    rla
    ld c, $0f
    rrca
    rrca
    ld c, $0e
    ld b, $06
    nop
    nop
    add b
    add b
    ld e, b
    ret c

    db $e4
    db $fc
    inc h
    db $fc
    inc [hl]
    db $fc
    ld hl, sp-$28
    ldh a, [$90]
    ldh [$60], a
    ret nz

    ret nz

    ldh [$60], a
    ldh [$a0], a
    ld h, b
    ldh [$d0], a
    or b
    ret nc

    ldh a, [$60]
    ld h, b
    nop
    nop
    inc bc
    inc bc
    dec [hl]
    scf
    ld l, b
    ld a, a
    ld c, b
    ld a, a
    jr nc, jr_020_608b

    jr c, jr_020_607d

    jr c, jr_020_607f

    inc e
    rra
    ld l, a
    ld a, a
    scf
    inc a

jr_020_6056:
    add hl, bc
    rrca

jr_020_6058:
    rrca
    rrca
    rrca
    add hl, bc
    add hl, bc
    rrca
    rlca
    rlca
    nop
    nop
    add b
    add b

jr_020_6064:
    ld e, b
    ret c

    inc l
    db $fc
    inc h
    db $fc
    jr jr_020_6064

    jr c, jr_020_6056

    jr c, jr_020_6058

    ld [hl], b
    ldh a, [$e8]
    ld hl, sp-$21
    ld [hl], a
    inc a
    db $f4
    ld hl, sp-$08
    ldh [$e0], a
    nop

jr_020_607d:
    nop
    nop

jr_020_607f:
    nop
    nop
    nop
    dec c
    dec c
    inc de
    rra
    ld [de], a
    rra
    ld d, $1f
    rrca

jr_020_608b:
    dec c
    rlca
    inc b
    inc bc
    inc bc
    ld bc, $0701
    rlca

jr_020_6094:
    rrca
    dec c
    rrca
    dec bc
    ld b, $07
    rrca
    rrca
    ld c, $0e
    ld b, $06
    ret nz

    ret nz

    jr nc, jr_020_6094

    adc b
    ld hl, sp+$38
    ld hl, sp+$78
    ret z

    ld hl, sp-$68
    db $fc
    sub h
    db $fc
    inc b
    ld hl, sp-$78
    ldh [$e0], a
    ldh [$60], a
    ldh a, [$d0]
    ld h, b
    ldh [$e0], a
    and b
    sub b
    ldh a, [$60]
    ld h, b
    dec de
    dec de
    inc d
    rra
    jr z, jr_020_6105

    dec hl
    ccf
    rra
    inc e
    rra
    dec d
    rra
    ld de, $3c3f
    ld a, a
    ld d, [hl]
    rst $38
    ei
    ld d, a
    ld e, a
    ld c, c
    ld c, a
    rst $08
    rst $08
    rst $08
    ret


    add hl, bc
    rrca
    rlca
    rlca
    db $ec
    db $ec
    sub h
    db $fc
    ld a, [bc]
    cp $6a
    cp $fc
    sbc h
    db $fc
    ld d, h
    db $fc
    ld b, h
    ld hl, sp+$18
    db $fc
    inc [hl]
    ld hl, sp-$48
    call c, Call_000_3cf4
    db $f4
    ld hl, sp-$08
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b

jr_020_6105:
    rlca
    rlca
    rlca
    rlca
    inc b
    rlca
    ld b, $0f
    ld a, [bc]
    rrca
    ld [$0407], sp
    rlca
    rlca
    rrca
    ld a, [bc]
    rra
    rla
    ld c, $0f
    rrca
    rrca
    ld c, $0e
    ld b, $06
    ret nz

    ret nz

    inc l
    db $ec
    ld [hl], d
    cp $12
    cp $9a
    cp $fc
    ld l, h
    ld hl, sp+$48
    ldh a, [$30]
    ldh [$60], a
    ret nz

    ret nz

    ldh [$60], a
    ldh [$a0], a
    ld h, b
    ldh [$d0], a
    or b
    ret nc

    ldh a, [$60]
    ld h, b
    ld bc, $1a01
    dec de
    inc [hl]
    ccf
    inc h
    ccf
    jr jr_020_6169

    inc e
    rla
    inc e
    rla
    ld c, $0f
    scf
    ccf
    ld a, a
    ld e, e
    scf
    inc a
    add hl, bc
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    add hl, bc
    rrca
    rlca
    rlca
    ret nz

    ret nz

    xor h
    db $ec
    ld d, $fe
    ld [de], a
    cp $0c

jr_020_6169:
    db $fc
    inc e
    db $f4
    inc e
    db $f4
    jr c, @-$06

    db $f4
    db $fc
    ei
    cp e
    rst $18
    ld [hl], a
    inc a
    db $f4
    ld hl, sp-$08
    ldh [$e0], a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc [hl]
    scf
    ld c, [hl]
    ld a, a

jr_020_6186:
    ld c, b
    ld a, a
    ld e, c
    ld a, a
    ccf
    ld [hl], $1f
    ld [de], a
    rrca
    inc c
    rlca
    ld b, $07
    rlca
    rrca
    dec c
    rrca
    dec bc
    ld b, $07
    rrca
    rrca
    ld c, $0e
    ld b, $06
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_6186

    ldh [$e0], a
    ldh [rNR41], a
    ldh [$60], a
    ldh a, [$50]
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [$e0], a
    ldh [$60], a
    ldh a, [$d0]
    ld h, b
    ldh [$e0], a
    and b
    sub b
    ldh a, [$60]
    ld h, b
    ld l, a
    ld l, a
    ld d, d
    ld a, a
    and b
    rst $38
    xor l
    rst $38
    ld a, a
    ld [hl], d
    ld a, a
    ld d, l
    ld a, a
    ld b, l
    rst $38
    ldh a, [rIE]
    ld e, b
    rst $38
    ei
    ld d, a
    ld e, a
    ld c, c
    ld c, a
    rst $08
    rst $08
    rst $08
    ret


    add hl, bc
    rrca
    rlca
    rlca
    or b
    or b
    ld d, b
    ldh a, [$28]
    ld hl, sp-$58
    ld hl, sp-$10
    ld [hl], b
    ldh a, [$50]
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$d0]
    ld hl, sp-$48
    call c, Call_000_3cf4
    db $f4
    ld hl, sp-$08
    ldh [$e0], a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    ld de, $1c1f
    rra
    ld e, $13
    rra
    add hl, de
    ccf
    add hl, hl
    ccf
    jr nz, jr_020_6230

    ld de, $0707
    rrca
    ld a, [bc]
    rra
    rla
    ld c, $0f
    rrca
    rrca
    ld c, $0e
    ld b, $06
    nop
    nop
    or b
    or b
    ret z

    ld hl, sp+$48
    ld hl, sp+$68
    ld hl, sp-$10
    or b
    ldh [rNR41], a
    ret nz

    ret nz

jr_020_6230:
    add b
    add b
    ret nz

    ret nz

    ldh [$60], a
    ldh [$a0], a
    ld h, b
    ldh [$d0], a
    or b
    ret nc

    ldh a, [$60]
    ld h, b
    rlca
    rlca
    ld l, d
    ld l, a
    ret nc

    rst $38
    sub b
    rst $38
    ld h, b
    ld a, a
    ld [hl], b
    ld e, a
    ld [hl], b
    ld e, a
    jr c, jr_020_628f

    rst $18
    rst $38
    ld a, a
    ld e, e
    scf
    inc a
    add hl, bc
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    add hl, bc
    rrca
    rlca
    rlca
    nop
    nop
    or b
    or b
    ld e, b
    ld hl, sp+$48
    ld hl, sp+$30
    ldh a, [rSVBK]
    ret nc

    ld [hl], b
    ret nc

    ldh [$e0], a
    ret nc

    ldh a, [$fb]
    cp e
    rst $18
    ld [hl], a
    inc a
    db $f4
    ld hl, sp-$08
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0e01
    rrca
    inc de
    rra

jr_020_6288:
    db $10
    rra
    inc d
    rra
    rlca
    dec b
    inc bc

jr_020_628f:
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ld [bc], a
    inc bc
    rlca
    rlca
    ld b, $06
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_020_6288

    ld h, b
    ldh [$e0], a
    and b
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    ldh [$e0], a
    ld b, b
    ret nz

    ret nz

    add b
    and b
    ldh [rLCDC], a
    ld b, b
    nop
    nop
    nop
    nop
    dec de
    dec de
    dec d
    rra
    jr z, jr_020_6307

    ld a, [hl+]
    ccf
    rra
    dec e
    rra
    ld [de], a
    ccf
    inc a
    ld a, a
    ld d, h
    ld a, a
    ld a, a
    dec h
    daa
    ld h, a
    ld h, a
    ld h, a
    ld h, l
    dec b
    rlca
    inc bc

jr_020_62dd:
    inc bc

jr_020_62de:
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    db $10
    ldh a, [$28]
    ld hl, sp-$18
    ld hl, sp-$10
    jr nc, jr_020_62dd

    sub b
    ldh [rNR41], a
    ldh a, [$50]
    ldh a, [$b0]
    jr c, jr_020_62de

    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b

jr_020_6307:
    rlca
    ld b, $07
    rlca
    dec b
    rrca
    ld [$080f], sp
    rlca
    inc b
    inc bc
    inc bc
    rrca
    dec bc
    ld b, $07
    rlca
    rlca
    ld b, $06
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    add b
    add b
    ld [hl], b
    ldh a, [$c8]
    ld hl, sp+$08
    ld hl, sp+$28
    ld hl, sp-$20
    and b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ld b, b
    ret nz

    ldh [$a0], a
    ldh [$e0], a
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    add hl, de
    dec de
    inc [hl]
    ccf
    inc h
    ccf
    jr jr_020_636b

    inc e
    rla
    inc c
    rrca
    scf
    ccf
    ccf
    cpl
    dec b
    rlca
    rlca
    rlca
    rlca
    dec b
    dec b
    rlca
    inc bc
    inc bc

jr_020_635e:
    nop
    nop
    nop
    nop
    add b
    add b
    ld [hl], b
    ldh a, [rNR23]
    ld hl, sp+$08
    ld hl, sp+$30

jr_020_636b:
    ldh a, [$30]
    ret nc

    ld h, b
    ldh [$d0], a
    ldh a, [$f6]
    or [hl]
    jr c, jr_020_635e

    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    scf
    add hl, hl
    ccf
    ld d, [hl]
    ld a, a
    ld e, a
    ld a, c
    ccf
    ld a, [hl-]
    ccf
    ld a, [hl+]
    ld a, a
    ld a, a
    ccf
    jr z, jr_020_6412

    inc l
    rra
    dec de
    rla
    rra
    add hl, bc
    rrca
    rrca
    rrca
    ld [de], a
    ld e, $1e
    ld e, $00
    nop
    ret c

    ret c

    jr z, @-$06

    call nc, $f4fc
    inc a
    ei
    cp e
    ei
    xor e
    rst $38
    rst $38
    ld hl, sp+$28
    ld hl, sp+$68
    ldh a, [$b0]
    ret nc

    ldh a, [$30]
    ldh a, [$e0]
    ldh [$90], a
    ldh a, [$f0]
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

jr_020_6412:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0a01
    dec bc
    inc d
    rra
    inc d
    rra
    inc c
    rrca
    ld c, $0b
    rra
    rra
    dec e
    rla
    ld c, $0b
    rlca
    rlca
    rlca
    inc b
    inc b
    rlca
    inc bc
    inc bc

jr_020_645e:
    nop
    nop
    nop
    nop

jr_020_6462:
    nop
    nop

jr_020_6464:
    add b
    add b
    ld d, b
    ret nc

    jr z, jr_020_6462

    jr z, jr_020_6464

    jr nc, jr_020_645e

    ld [hl], b
    ret nc

    ldh a, [$f0]
    cp h
    db $fc
    ld a, h
    call z, $f0f0
    ldh [$a0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    scf
    add hl, hl
    ccf
    ld d, [hl]
    ld a, a
    ld e, a
    ld a, c
    ccf
    ld a, [hl-]
    ccf
    ld a, [hl+]
    ld a, a
    ld a, a
    ccf
    jr z, jr_020_6512

    inc l
    rra
    dec de
    rla
    rra
    add hl, bc
    rrca
    rrca
    rrca
    ld [de], a
    ld e, $1e
    ld e, $00
    nop
    ret c

    ret c

    jr z, @-$06

    call nc, $f4fc
    inc a
    ei
    cp e
    ei
    xor e
    rst $38
    rst $38
    ld hl, sp+$28
    ld hl, sp+$68
    ldh a, [$b0]
    ret nc

    ldh a, [$30]
    ldh a, [$e0]
    ldh [$90], a
    ldh a, [$f0]
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

jr_020_6512:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0a01
    dec bc
    inc d
    rra
    inc d
    rra
    inc c
    rrca
    ld c, $0b
    rrca
    rrca
    dec e
    rra
    ld e, $13
    rrca
    rrca
    rlca
    dec b
    inc bc
    inc bc

jr_020_655c:
    nop
    nop
    nop
    nop
    nop
    nop

jr_020_6562:
    nop
    nop

jr_020_6564:
    add b
    add b
    ld d, b
    ret nc

    jr z, jr_020_6562

    jr z, jr_020_6564

    inc a
    db $fc
    ld a, h
    call c, $fcfc
    cp b
    add sp, $70
    ret nc

    ldh [$e0], a
    ldh [rNR41], a
    jr nz, jr_020_655c

    ret nz

    ret nz

    nop
    nop
    sub [hl]
    ld h, l
    sbc c
    ld h, l
    sbc a
    ld h, l
    and d
    ld h, l
    xor l
    ld h, l
    or h
    ld h, l
    cp h
    ld h, l
    ret nc

    ld h, l
    call c, $9665
    ld h, l
    push hl
    ld h, l
    nop
    rst $38
    db $fd
    nop
    ld e, $01
    ld e, $ff
    nop
    ld [bc], a
    rst $38
    db $fd
    ld [bc], a
    inc c
    inc bc
    inc c
    inc b
    jr jr_020_65ab

    inc c
    dec b

jr_020_65ab:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_020_65b4

    jr @-$01

jr_020_65b4:
    nop
    ld a, [bc]
    ld b, $1e
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    inc bc
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    add hl, bc
    ld [$0800], sp
    add hl, bc
    ld [$0a00], sp
    cp $01
    ld [bc], a
    ld [de], a
    inc bc
    ld [de], a
    ld [bc], a
    ld e, $05
    ld [de], a
    db $fd
    ld a, [bc]
    ld e, $0b
    ld e, $ff
    nop
    inc b
    inc b
    di
    ld h, l
    db $10
    ld [hl], d
    di
    ld h, l
    db $10
    ld h, [hl]
    db $10
    ld h, a
    db $10
    ld l, b
    db $10
    ld l, c
    db $10
    ld l, d
    db $10
    ld l, e
    db $10
    ld l, h
    db $10
    ld l, l
    db $10
    ld l, [hl]
    db $10
    ld l, a
    db $10
    ld [hl], b
    db $10
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$0b0f], sp
    rrca
    inc [hl]
    ccf
    cpl
    dec sp
    cpl
    add hl, sp
    rla
    ld e, $0b
    rrca
    rlca
    ld b, $0f
    dec bc
    inc e
    rla
    rrca
    rrca
    rrca
    rrca
    ld b, $06
    ldh [$e0], a
    db $10
    ldh a, [$38]
    add sp, -$08
    ret z

    db $fc
    cp h
    ldh a, [$d0]
    ldh a, [$30]
    ld hl, sp+$28
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$e0], a
    ldh [$60], a
    ldh a, [$d0]
    ldh [$60], a
    sub b
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    inc b
    rlca

jr_020_6654:
    dec bc
    rrca
    rra
    inc e
    ld l, a
    ld a, e
    ld c, a
    ld a, h
    ccf
    dec sp
    ccf
    ld [hl-], a
    ld a, a
    ld e, b
    ld a, a
    ld a, h
    cpl
    dec hl
    cpl
    cpl
    ld l, b
    ld l, a
    ld h, a
    ld h, a
    inc b
    rlca
    inc bc

jr_020_666f:
    inc bc
    ret nz

    ret nz

    jr nz, jr_020_6654

    ret nc

    ldh a, [$f8]
    jr c, jr_020_666f

    sbc $f2
    ld a, $fc
    call c, Call_020_48f8
    ld hl, sp+$18
    ld hl, sp+$28
    db $fc
    call nc, $f4fc
    sbc b
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [rP1], a
    nop
    rlca
    rlca
    ld [$1c0f], sp
    rla

jr_020_6696:
    rra
    inc de
    ccf
    dec a
    rrca
    dec bc
    rrca
    inc c
    rra
    inc d
    rra
    db $10
    rrca
    ld [$0707], sp
    rrca
    ld a, [bc]
    rra
    rla
    rrca
    rrca
    rrca
    rrca
    ld b, $06
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_6696

    db $10
    ldh a, [$d0]
    ldh a, [$2c]
    db $fc
    db $f4
    call c, $9cf4
    add sp, $78
    ret nc

    ldh a, [$e0]
    ld h, b
    ldh [$e0], a
    ld [hl], b
    ldh a, [$d0]
    or b
    ret nc

    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    inc b
    rlca

jr_020_66d4:
    inc c
    rrca
    rra
    dec de
    ld h, a
    ld a, h
    ld b, e
    ld a, a
    jr nz, jr_020_671d

    jr nc, jr_020_671f

    ld a, h
    ld e, a
    ld a, a
    ld a, e
    rrca
    inc c

jr_020_66e6:
    rrca
    rrca
    ld [$070f], sp
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ret nz

    ret nz

    jr nz, jr_020_66d4

    jr nc, jr_020_66e6

    ld hl, sp-$28
    and $3e
    jp nz, $04fe

    db $fc
    ld [$38f8], sp
    ld hl, sp-$05
    db $db
    rst $38
    scf
    db $fc
    db $f4
    sbc b
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [rP1], a
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$0b0f], sp
    rrca
    inc [hl]
    ccf
    cpl

jr_020_671d:
    dec sp
    cpl

jr_020_671f:
    add hl, sp
    rla
    ld e, $0b
    rrca
    rlca
    ld b, $07
    rlca
    ld c, $0f
    dec bc
    dec c
    dec bc
    rrca
    ld b, $06
    ldh [$e0], a
    db $10
    ldh a, [$38]
    add sp, -$08
    ret z

    db $fc
    cp h
    ldh a, [$d0]
    ldh a, [$30]
    ld hl, sp+$28
    ld hl, sp+$08
    or $16
    and $e6
    db $fc
    ld e, h
    ld hl, sp-$18
    ldh a, [$f0]
    ldh a, [$f0]
    ld h, b
    ld h, b
    inc bc
    inc bc
    inc b
    rlca

jr_020_6754:
    dec bc
    rrca
    rra
    inc e
    ld l, a
    ld a, e
    ld c, a
    ld a, h
    ccf
    dec sp
    rra
    ld [de], a
    rra
    jr jr_020_6782

    inc d
    ccf
    dec hl
    ld a, a
    ld l, a
    ld a, c
    ld a, a
    rrca
    rrca
    rlca
    rlca
    nop

jr_020_676f:
    nop
    ret nz

    ret nz

    jr nz, jr_020_6754

    ret nc

    ldh a, [$f8]
    jr c, jr_020_676f

    sbc $f2
    ld a, $fc
    call c, Call_020_4cfc
    cp $1a

jr_020_6782:
    cp $3e
    ldh a, [$d0]
    ldh a, [$f0]
    db $10
    ldh a, [$e0]
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    rlca
    rlca
    ld [$1c0f], sp
    rla

jr_020_6796:
    rra
    inc de
    ccf
    dec a
    rrca
    dec bc
    rrca
    inc c
    rra
    inc d
    rra
    db $10
    rrca
    ld [$6767], sp
    ld [hl], a
    db $76
    rra
    rra
    rlca
    ld b, $09
    rrca
    ld b, $06
    nop
    nop

jr_020_67b2:
    ret nz

    ret nz

    jr nz, jr_020_6796

    db $10
    ldh a, [$d0]
    ldh a, [$2c]
    db $fc
    db $f4
    call c, $9cf4
    add sp, $78
    ret nc

    ldh a, [$e0]
    ld h, b
    ldh a, [$d0]
    jr c, jr_020_67b2

    ldh a, [$f0]
    ldh a, [$f0]
    ld h, b
    ld h, b
    inc bc
    inc bc
    inc b
    rlca

jr_020_67d4:
    inc c
    rrca
    rra
    dec de
    ld h, a
    ld a, h
    ld b, e
    ld a, a
    jr nz, @+$41

    db $10
    rra
    inc e
    rra
    rra
    dec de
    ccf
    inc l

jr_020_67e6:
    ccf
    cpl
    add hl, de
    rra
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_67d4

    jr nc, jr_020_67e6

    ld hl, sp-$28
    rst $20
    ccf
    jp $05ff


    db $fd
    dec c
    db $fd
    ccf
    ei
    cp $de
    ldh a, [$30]
    ldh a, [$f0]
    db $10
    ldh a, [$e0]
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    scf
    ccf
    ld l, $3b
    cpl
    add hl, sp
    rla
    ld e, $0f
    dec bc

jr_020_6824:
    rra
    ld de, $1b1f
    rla
    rra
    rrca
    dec bc
    inc b
    rlca
    rlca
    rlca
    ret nz

    ret nz

    jr nc, jr_020_6824

    db $10
    ldh a, [$38]
    add sp, -$08
    ret z

    db $fc
    cp h
    ldh a, [$d0]
    ldh a, [$30]
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh [$e0], a
    ret nz

    ld b, b
    ldh [$a0], a
    ld h, b
    ld h, b
    or [hl]
    or [hl]
    sbc [hl]
    sbc [hl]
    ld bc, $0601
    rlca
    ld [$190f], sp
    rra
    ld h, a
    ld a, [hl]
    ld e, a
    ld a, c
    daa
    ld a, $1f
    add hl, de
    rrca
    dec c
    rlca
    ld b, $07
    rlca
    rlca
    dec b
    rlca
    ld b, $07
    rlca
    add hl, bc
    rrca
    rrca
    rrca
    ldh [$e0], a
    jr nc, @-$0e

    ld [$ecf8], sp
    db $fc
    or $1e
    ld a, [$fcee]
    inc e
    ld hl, sp+$28
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$d0]
    ldh a, [$b0]
    ldh a, [rSVBK]
    ret z

    ld hl, sp-$08
    ld hl, sp+$03
    inc bc
    inc c
    rrca
    ld [$1c0f], sp
    rla
    rra
    inc de
    ccf
    dec a
    rrca
    dec bc
    rrca
    inc c
    rra
    inc d
    rrca
    ld [$0707], sp
    inc bc
    ld [bc], a
    rlca
    dec b
    ld b, $06
    ld l, l
    ld l, l

jr_020_68ae:
    ld a, c
    ld a, c
    nop
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [$ec]
    db $fc
    ld [hl], h
    call c, $9cf4
    add sp, $78
    ldh a, [$d0]
    ld hl, sp-$78
    ld hl, sp-$28
    add sp, -$08
    ldh a, [$d0]
    jr nz, jr_020_68ae

    ldh [$e0], a
    inc bc
    inc bc
    inc b
    rlca
    rrca
    dec bc
    rla
    ld e, $19
    rra
    db $10
    rra
    ld [$0c0f], sp
    rrca
    rlca
    rlca
    rlca
    inc b

jr_020_68e4:
    rlca

jr_020_68e5:
    dec b
    ld b, $07
    dec b
    rlca
    rlca
    dec b
    add hl, bc
    rrca
    rrca
    rrca
    ret nz

    ret nz

    jr nc, jr_020_68e4

    ldh a, [$d0]
    db $ec
    inc a
    call nz, $04fc
    db $fc
    ld [$10f8], sp
    ldh a, [$e0]
    ldh [$e0], a
    jr nz, jr_020_68e5

    and b
    ld h, b
    ldh [$a0], a
    ldh [$e0], a
    and b
    sub b
    ldh a, [$f0]
    ldh a, [rP1]
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    scf
    ccf
    ld l, $3b
    cpl
    add hl, sp
    rla
    ld e, $0f
    dec bc

jr_020_6924:
    rra
    inc de
    rra
    dec e
    rla
    ld e, $0f
    dec bc
    inc b
    rlca
    rlca
    rlca
    ret nz

    ret nz

    jr nc, jr_020_6924

    db $10
    ldh a, [$38]
    add sp, -$08
    ret z

    db $fc
    cp h
    ldh a, [$d0]
    ldh a, [$30]
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh [$e0], a
    ret nz

    ld b, b
    add b
    add b
    nop
    nop
    add b
    add b
    add b
    add b
    ld bc, $0601
    rlca
    ld [$190f], sp
    rra
    ld h, a
    ld a, [hl]
    ld e, a
    ld a, c
    daa
    ld a, $1f
    add hl, de
    rrca
    dec c
    rlca
    ld b, $07
    rlca
    rra
    dec e
    rra
    inc e
    rrca
    rrca
    add hl, bc
    rrca
    rrca
    rrca
    ldh [$e0], a
    jr nc, @-$0e

    ld [$ecf8], sp
    db $fc
    or $1e
    ld a, [$fcee]
    inc e
    ld hl, sp+$28
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$d0]
    ldh a, [$b0]
    ldh a, [$f0]
    ld c, b
    ld a, b
    ld a, b
    ld a, b
    inc bc
    inc bc
    inc c
    rrca
    ld [$1c0f], sp
    rla
    rra
    inc de
    ccf
    dec a
    rrca
    dec bc
    rrca
    inc c
    rra
    inc d
    rrca
    ld [$0707], sp
    rlca
    dec b
    inc bc
    inc bc
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [$ec]
    db $fc
    ld [hl], h
    call c, $9cf4
    add sp, $78
    ldh a, [$90]
    ld hl, sp+$08
    ld hl, sp-$68
    add sp, -$08
    ldh a, [$d0]
    jr nz, @-$1e

    ldh [$e0], a
    inc bc
    inc bc
    inc b
    rlca
    rrca
    dec bc
    rla
    ld e, $19
    rra
    db $10
    rra
    ld [$0c0f], sp
    rrca
    rlca
    rlca
    inc bc
    ld [bc], a

jr_020_69e4:
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rlca
    dec b
    add hl, bc
    rrca
    rrca
    rrca
    ret nz

    ret nz

    jr nc, jr_020_69e4

    ldh a, [$d0]
    db $ec
    inc a
    call nz, $04fc
    db $fc
    ld [$13f8], sp
    di
    db $e3
    db $e3
    rst $30
    scf
    db $fc
    xor h
    ld [hl], b
    ldh a, [$a0]
    ldh [$e0], a
    and b
    sub b
    ldh a, [$f0]
    ldh a, [rP1]
    nop
    inc bc
    inc bc
    call nz, $c8c7
    rst $08
    ret z

    rst $08
    ld [hl], a
    ld a, a
    ld l, $3b
    cpl
    add hl, sp
    rla
    ld e, $0f
    dec bc

jr_020_6a24:
    rra
    dec d
    rra
    rra
    rla
    rra
    rrca
    dec bc
    inc b
    rlca
    rlca
    rlca
    ret nz

    ret nz

    jr nc, jr_020_6a24

    db $10
    ldh a, [$38]
    add sp, -$08
    ret z

    db $fc
    cp h
    ldh a, [$d0]
    ldh a, [$30]
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh [$e0], a
    add b
    add b
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ld bc, $0601
    rlca
    ret z

    rst $08
    reti


    rst $18
    rst $20
    cp $5f
    ld a, c
    daa
    ld a, $3f
    add hl, sp
    rra
    dec e
    rla
    ld e, $0f
    dec bc
    rlca
    dec b
    rlca
    rlca
    rlca
    rlca
    add hl, bc
    rrca
    rrca
    rrca
    ldh [$e0], a
    jr nc, @-$0e

    ld [$ecf8], sp
    db $fc
    or $1e
    ld a, [$fcee]
    inc e
    ld hl, sp+$28
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh [$e0], a
    ldh [rNR41], a
    ldh [$e0], a
    ldh a, [$f0]
    ld c, b
    ld a, b
    ld a, b
    ld a, b
    inc bc
    inc bc
    inc c
    rrca
    ld [$1c0f], sp
    rla
    rra
    inc de
    ccf
    dec a
    rrca
    dec bc
    rrca
    inc c
    rra
    inc d
    rrca
    ld [$0707], sp
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    ret nz

    ret nz

    ld h, $e6
    ld d, $f6
    ld e, $fe
    db $ec
    db $fc
    ld [hl], h
    call c, $9cf4
    add sp, $78
    ldh a, [$90]
    ld hl, sp+$08
    ld hl, sp-$68
    add sp, -$08
    ldh a, [$d0]
    jr nz, @-$1e

    ldh [$e0], a
    inc bc
    inc bc
    inc b
    rlca
    rrca
    dec bc
    rla
    ld e, $19
    rra
    db $10
    rra
    ld [$0c0f], sp
    rrca
    rlca
    rlca
    inc bc
    ld [bc], a

jr_020_6ae4:
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rlca
    dec b
    add hl, bc
    rrca
    rrca
    rrca
    ret nz

    ret nz

    jr nc, jr_020_6ae4

    di
    db $d3
    rst $28
    ccf

jr_020_6af8:
    rst $00
    rst $38
    ld b, $fe
    inc c
    db $fc
    jr jr_020_6af8

    ld hl, sp-$18
    ldh a, [$30]
    ldh [$a0], a
    ld h, b
    ldh [$a0], a
    ldh [$e0], a
    and b
    sub b
    ldh a, [$f0]
    ldh a, [rP1]
    nop
    inc bc
    inc bc
    ld b, $07
    rra
    dec e
    inc de
    ld e, $69
    ld l, a
    ld l, b
    ld l, a
    inc [hl]
    scf
    rra
    rra
    rrca
    add hl, bc
    rlca
    inc b
    rlca
    rlca
    inc b
    rlca
    rlca
    rlca
    inc b
    rlca
    rlca
    rlca
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$18
    ld hl, sp-$04
    db $ec

jr_020_6b3a:
    or $1e
    ld [c], a
    cp $0c
    db $fc
    jr jr_020_6b3a

    ldh a, [$f0]
    ret nz

    ld b, b
    ret nz

    ret nz

    add b
    add b
    ret nz

    ret nz

    and b
    ldh [$e0], a
    ldh [rP1], a
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$c80f], sp
    rst $08
    sub $df
    rst $28
    rst $38
    rra
    add hl, de
    rrca
    ld c, $07
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    dec b
    rlca
    dec b
    rlca
    inc bc

Call_020_6b6f:
    inc bc
    ldh [$e0], a
    db $10
    ldh a, [$30]
    ldh a, [$38]
    add sp, $7c
    call c, $f878
    ld hl, sp-$18
    ld hl, sp+$28
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [$e0], a
    and b
    ldh [$e0], a
    ld h, b
    ldh a, [rSVBK]
    ret z

    ld hl, sp+$78
    ld a, b
    inc bc
    inc bc
    inc b
    rlca
    dec bc
    rrca
    rra
    inc e
    ccf
    dec sp
    cpl
    inc a
    rra
    ld a, [de]
    rrca
    ld a, [bc]
    rrca
    ld [$0407], sp

jr_020_6ba4:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    dec b
    rlca

jr_020_6bae:
    rlca
    rlca
    ret nz

    ret nz

    jr nc, jr_020_6ba4

    ret z

    ld hl, sp-$0c
    inc a
    ei
    rst $08
    push af
    ccf
    ei
    ld e, a
    cp $4e
    db $f4
    inc e
    ld hl, sp+$38
    ldh a, [$d0]
    ldh a, [$b0]
    ldh [$e0], a
    ldh [$a0], a
    jr nz, jr_020_6bae

    ldh [$e0], a
    rlca
    rlca
    ld c, $0b
    rra
    ld de, $3f3f
    ld c, $0b
    rrca
    dec c
    rra
    inc d
    rra
    db $10
    rrca
    add hl, bc
    rlca
    rlca
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    add hl, bc
    rrca
    ld c, $0e
    nop
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    sub b
    ldh a, [rHDMA3]
    di
    ld l, e
    db $db
    rst $30
    cp a
    ret z

    ld hl, sp+$70
    ldh a, [$a0]
    ldh [$c0], a
    ret nz

    ld h, b
    ldh [$e0], a
    and b
    ldh a, [$d0]
    sub b
    ldh a, [$60]
    ld h, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$0b0f], sp
    rrca
    inc [hl]
    ccf
    cpl
    dec sp
    cpl
    add hl, sp
    rla
    ld e, $07
    ld b, $0f
    dec bc
    inc e
    rla
    rrca
    rrca
    rrca
    rrca
    ld b, $06
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$38]
    add sp, -$08
    ret z

    db $fc
    cp h
    ldh a, [$d0]
    ldh a, [$30]
    ld hl, sp+$28
    ld hl, sp+$08
    ldh [$e0], a
    ldh [$60], a
    ldh a, [$d0]
    ldh [$60], a
    sub b
    ldh a, [$60]
    ld h, b
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca

jr_020_6c56:
    dec bc
    rrca
    rra
    inc e
    ld l, a
    ld a, e
    ld c, a
    ld a, h
    ccf
    dec sp
    ccf
    ld [hl-], a
    ld a, a
    ld e, b
    cpl
    dec hl
    cpl
    cpl
    ld l, b
    ld l, a
    ld h, a
    ld h, a
    inc b
    rlca
    inc bc
    inc bc
    nop

jr_020_6c71:
    nop
    ret nz

    ret nz

    jr nz, jr_020_6c56

    ret nc

    ldh a, [$f8]
    jr c, jr_020_6c71

    sbc $f2
    ld a, $fc
    call c, Call_020_48f8
    ld hl, sp+$18
    db $fc
    call nc, $f4fc
    sbc b
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [rP1], a
    nop
    nop
    nop
    rlca
    rlca
    ld [$1c0f], sp
    rla

jr_020_6c98:
    rra
    inc de
    ccf
    dec a
    rrca
    dec bc
    rrca
    inc c
    rra
    inc d
    rra
    db $10
    rlca
    rlca
    rrca
    ld a, [bc]
    rra
    rla
    rrca
    rrca
    rrca
    rrca
    ld b, $06
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_6c98

    db $10
    ldh a, [$d0]
    ldh a, [$2c]
    db $fc
    db $f4
    call c, $9cf4
    add sp, $78
    ldh [$60], a
    ldh [$e0], a
    ld [hl], b
    ldh a, [$d0]
    or b
    ret nc

    ldh a, [$60]
    ld h, b
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca

jr_020_6cd6:
    inc c
    rrca
    rra
    dec de
    ld h, a
    ld a, h
    ld b, e
    ld a, a
    jr nz, jr_020_6d1f

    jr nc, jr_020_6d21

    ld a, h
    ld e, a
    rrca
    inc c
    rrca
    rrca

jr_020_6ce8:
    ld [$070f], sp
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_6cd6

    jr nc, jr_020_6ce8

    ld hl, sp-$28
    and $3e
    jp nz, $04fe

    db $fc
    ld [$38f8], sp
    ld hl, sp-$01
    scf
    db $fc
    db $f4
    sbc b
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [rP1], a
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    dec b
    rlca
    ld a, [de]
    rra
    rla
    dec e
    rla

jr_020_6d1f:
    inc e
    dec bc

jr_020_6d21:
    rrca
    dec bc
    rrca
    rlca
    ld b, $0f
    dec bc
    inc e
    rla
    rrca
    rrca
    rrca
    rrca
    ld b, $06
    ld [hl], b
    ld [hl], b
    adc b
    ld hl, sp+$1c
    db $f4
    ld a, h
    db $e4
    cp $de
    ld a, b
    add sp, -$08
    sbc b
    db $fc
    sub h
    db $fc
    inc b
    ldh a, [rNR10]
    ldh [$e0], a
    ldh [$60], a
    ldh a, [$d0]
    ldh [$60], a
    sub b
    ldh a, [$60]
    ld h, b
    ld bc, $0201
    inc bc
    dec b
    rlca
    rrca
    ld c, $37
    dec a
    daa
    ld a, $1f
    dec e
    rra
    add hl, de
    ccf
    inc l
    ld a, a
    ld a, h
    cpl
    dec hl
    cpl
    cpl
    ld l, b
    ld l, a
    ld h, a
    ld h, a
    inc b
    rlca
    inc bc
    inc bc
    ldh [$e0], a
    db $10
    ldh a, [$e8]
    ld hl, sp-$04
    inc e
    ei
    rst $28
    ld sp, hl
    rra
    cp $ee
    db $fc
    inc h
    db $fc
    inc c
    ld hl, sp+$28
    db $fc
    call nc, $f4fc
    sbc b
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld c, $0b
    rrca
    add hl, bc
    rra
    ld e, $07
    dec b
    rlca
    ld b, $0f
    ld a, [bc]
    rrca
    ld [$080f], sp
    rlca
    rlca
    rrca
    ld a, [bc]
    rra
    rla
    rrca
    rrca
    rrca
    rrca
    ld b, $06
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$88]
    ld hl, sp-$18
    ld hl, sp-$6a
    cp $fa
    ld l, [hl]
    ld a, [$f44e]
    inc a
    ret nc

    ldh a, [$e0]
    ld h, b
    ldh [$e0], a
    ld [hl], b
    ldh a, [$d0]
    or b
    ret nc

    ldh a, [$60]
    ld h, b
    ld bc, $0201
    inc bc
    ld b, $07
    rrca
    dec c
    inc sp
    ld a, $21
    ccf
    db $10
    rra
    jr jr_020_6dff

    ld a, $2f
    ld a, a
    ld a, e
    rrca
    inc c
    rrca
    rrca
    ld [$070f], sp
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ldh [$e0], a
    db $10
    ldh a, [rNR23]
    ld hl, sp-$04
    db $ec
    di
    rra
    pop hl
    rst $38
    ld [bc], a
    cp $04

jr_020_6dff:
    db $fc
    inc e
    db $fc
    ei
    db $db
    rst $38
    scf
    db $fc
    db $f4
    sbc b
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [rP1], a
    nop
    ld bc, $0601
    rlca

jr_020_6e14:
    ld [$110f], sp
    rra
    rla
    rra
    ld l, c
    ld a, a
    ld e, a
    db $76
    ld e, a
    ld [hl], d
    cpl
    inc a
    dec bc
    rrca
    rlca
    ld b, $0f
    dec bc
    inc e
    rla
    rrca
    rrca
    rrca
    rrca
    ld b, $06
    ret nz

    ret nz

    jr nz, jr_020_6e14

    ld [hl], b
    ret nc

    ldh a, [$90]

jr_020_6e38:
    ld hl, sp+$78
    ldh [$a0], a
    ldh [$60], a
    ldh a, [$50]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [$e0], a
    ldh [$60], a
    ldh a, [$d0]
    ldh [$60], a
    sub b
    ldh a, [$60]
    ld h, b
    rlca
    rlca
    ld [$170f], sp
    rra
    ccf
    jr c, jr_020_6e38

    rst $30
    sbc a
    ld hl, sp+$7f
    ld [hl], a
    ld a, a
    ld h, h
    rst $38
    or b
    ld a, a
    ld a, h
    cpl
    dec hl
    cpl
    cpl
    ld l, b
    ld l, a
    ld h, a
    ld h, a
    inc b
    rlca
    inc bc
    inc bc
    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [$f0], a
    ld [hl], b
    db $ec
    cp h
    db $e4
    ld a, h
    ld hl, sp-$48
    ldh a, [$90]
    ldh a, [$30]
    ld hl, sp+$28
    db $fc
    call nc, $f4fc
    sbc b
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [rP1], a
    nop
    ld c, $0e
    ld de, $381f
    cpl
    ld a, $27

jr_020_6e98:
    ld a, a
    ld a, e
    ld e, $17
    rra
    add hl, de
    ccf
    add hl, hl
    ccf
    jr nz, jr_020_6eb2

    ld [$0707], sp
    rrca
    ld a, [bc]
    rra
    rla
    rrca
    rrca
    rrca
    rrca
    ld b, $06
    nop
    nop

jr_020_6eb2:
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_020_6e98

    and b
    ldh [$58], a
    ld hl, sp-$18
    cp b
    add sp, $38
    ret nc

    ldh a, [$d0]
    ldh a, [$e0]
    ld h, b
    ldh [$e0], a
    ld [hl], b
    ldh a, [$d0]
    or b
    ret nc

    ldh a, [$60]
    ld h, b
    rlca
    rlca
    ld [$180f], sp
    rra
    ccf
    scf
    rst $08
    ld hl, sp-$79
    rst $38
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    ld hl, sp-$41
    ld a, a
    ld a, e
    rrca
    inc c
    rrca
    rrca
    ld [$070f], sp
    rlca
    inc b
    rlca
    inc bc
    inc bc
    add b
    add b
    ld b, b
    ret nz

    ld h, b
    ldh [$f0], a
    or b
    call z, $847c
    db $fc
    ld [$10f8], sp
    ldh a, [rSVBK]
    ldh a, [$fb]
    db $db
    rst $38
    scf
    db $fc
    db $f4

jr_020_6f08:
    sbc b
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc

jr_020_6f16:
    nop
    inc bc
    inc b
    rlca
    rlca
    rlca
    rla
    rra
    rla
    dec e
    dec bc
    ld c, $07
    rlca
    rlca
    rlca
    inc c
    dec bc
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_6f16

    jr nc, jr_020_6f08

    ldh a, [$d0]
    ld hl, sp-$48
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    ldh [$e0], a
    ret nz

    ld b, b
    and b
    ldh [rLCDC], a
    ld b, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    rlca
    rlca
    rrca
    inc c
    scf
    ccf
    rra
    rra
    rra
    ld a, [de]
    ccf
    inc l
    ccf
    inc a
    rla
    rla
    inc [hl]
    scf
    inc sp
    inc sp
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    ret nz

    ldh [$e0], a
    ldh a, [$30]
    db $ec

Call_020_6f7b:
    db $fc
    ld hl, sp-$08
    ldh a, [$50]
    ldh a, [$30]
    ldh a, [rNR10]
    ld hl, sp-$18
    or b
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    inc c
    dec bc
    rrca
    dec bc

jr_020_6f9a:
    rra
    dec e
    rlca
    inc b
    rrca
    ld [$080f], sp
    rlca
    inc b
    rlca
    ld b, $0f
    dec bc
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    ret nz

    jr nz, jr_020_6f9a

    ldh [$e0], a
    add sp, -$08
    add sp, -$48
    ret nc

    ld [hl], b
    ldh [$e0], a
    ret nz

    ret nz

    ld h, b
    ldh [$e0], a
    and b
    ldh [$e0], a
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    inc b
    rlca

jr_020_6fd8:
    rrca
    rrca
    inc sp
    inc a
    db $10
    rra
    jr jr_020_6fff

    inc a
    cpl
    ccf
    ccf
    rlca
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    ret nz

    jr nz, jr_020_6fd8

    ldh a, [$f0]
    call z, Call_000_083c
    ld hl, sp+$10

jr_020_6fff:
    ldh a, [$30]
    ldh a, [$f6]
    or $f8
    add sp, -$50
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca

jr_020_7056:
    dec bc
    rrca
    rra
    inc e
    ld l, a
    ld a, e
    ld c, a
    ld a, [hl]
    cpl
    ld a, [hl-]
    ld a, a
    ld a, a
    rra
    inc d
    rra
    ld d, $0f
    rrca
    dec bc
    ld c, $0d
    rrca
    inc de
    rra
    ld e, $1e
    nop

jr_020_7071:
    nop
    ret nz

    ret nz

    jr nz, jr_020_7056

    ret nc

    ldh a, [$f8]
    jr c, jr_020_7071

    sbc $f3
    ld a, a
    rst $30
    ld e, a
    rst $38
    rst $38
    ld hl, sp+$28
    ld hl, sp+$68
    ldh a, [$f0]
    ret nc

    ld [hl], b
    or b
    ldh a, [$c8]
    ld hl, sp+$78
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc

jr_020_70d8:
    rlca
    dec b
    rra
    ld e, $11
    rra
    ld [$1e0f], sp
    rla
    rra
    dec e
    rlca
    ld b, $04
    rlca
    rlca
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_70d8

    ldh a, [$d0]
    db $fc
    inc a

Call_020_70fc:
    call nz, Call_000_08fc
    ld hl, sp+$30
    ldh a, [$fc]
    call c, $2cfc
    sub b
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca

jr_020_7156:
    dec bc
    rrca
    rra
    inc e
    ld l, a
    ld a, e
    ld c, a
    ld a, [hl]
    cpl
    ld a, [hl-]
    ld a, a
    ld a, a
    rra
    inc d
    rra
    ld d, $0f
    rrca
    dec bc
    ld c, $0d
    rrca
    inc de
    rra
    ld e, $1e
    nop

jr_020_7171:
    nop
    ret nz

    ret nz

    jr nz, jr_020_7156

    ret nc

    ldh a, [$f8]
    jr c, jr_020_7171

    sbc $f3
    ld a, a
    rst $30
    ld e, a
    rst $38
    rst $38
    ld hl, sp+$28
    ld hl, sp+$68
    ldh a, [$f0]
    ret nc

    ld [hl], b
    or b
    ldh a, [$c8]
    ld hl, sp+$78
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc

jr_020_71d8:
    rlca
    dec b
    rra
    ld e, $11
    rra
    ld [$060f], sp
    rlca
    rrca
    dec c
    rrca
    ld a, [bc]
    inc b
    rlca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_71d8

    ldh a, [$d0]
    db $fc
    inc a
    call nz, Call_000_0cfc
    db $fc
    inc a
    db $f4
    db $fc
    call c, $30f0
    sub b
    ldh a, [$f0]
    ldh a, [$90]
    ldh a, [$60]
    ld h, b
    nop
    nop
    ld h, $72
    add hl, hl
    ld [hl], d
    cpl
    ld [hl], d
    ld [hl-], a
    ld [hl], d
    dec a
    ld [hl], d
    ld b, h
    ld [hl], d
    ld c, h
    ld [hl], d
    ld h, b
    ld [hl], d
    ld l, h
    ld [hl], d
    ld h, $72
    ld [hl], l
    ld [hl], d
    nop
    rst $38
    db $fd
    nop
    ld e, $01
    ld e, $ff
    nop
    ld [bc], a
    rst $38
    db $fd
    ld [bc], a
    inc c
    inc bc
    inc c
    inc b
    jr jr_020_723b

    inc c
    dec b

jr_020_723b:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_020_7244

    jr @-$01

jr_020_7244:
    nop
    ld a, [bc]
    ld b, $1e
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    inc bc
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    add hl, bc
    ld [$0800], sp
    add hl, bc
    ld [$0a00], sp
    cp $01
    ld [bc], a
    ld [de], a
    inc bc
    ld [de], a
    ld [bc], a
    ld e, $05
    ld [de], a
    db $fd
    ld a, [bc]
    ld e, $0b
    ld e, $ff
    nop
    dec b
    inc b
    add e
    ld [hl], d
    and b
    ld a, h
    add e
    ld [hl], d
    and b
    ld [hl], d
    and b
    ld [hl], e
    and b
    ld [hl], h
    and b
    ld [hl], l
    and b
    db $76
    and b
    ld [hl], a
    and b
    ld a, b
    and b
    ld a, c
    and b
    ld a, d
    and b
    ld a, e
    nop
    nop

jr_020_7299:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca

jr_020_72a4:
    ld [$090f], sp
    rrca
    rlca
    rlca
    rrca
    add hl, bc
    rrca
    ld [$0607], sp
    inc bc
    inc bc
    inc b
    rlca
    ld c, $0b
    rra
    rla
    dec de
    ld a, [de]
    rrca
    rrca
    rrca
    rrca
    ld b, $06
    ret nz

    ret nz

    jr nz, jr_020_72a4

    ret nc

    ldh a, [$f0]
    jr nc, jr_020_7299

    ldh a, [$d0]
    ld [hl], b
    ld hl, sp+$28
    ld hl, sp+$18
    ldh a, [rNR10]
    ldh a, [$90]
    ld hl, sp-$18
    ld hl, sp-$08
    ret nz

    ld b, b
    ldh a, [$30]
    ret nc

    ld [hl], b
    ldh [$e0], a
    inc bc
    inc bc
    inc c
    rrca
    inc d
    rra
    rra
    dec de
    rra
    rra
    add hl, sp
    cpl
    ccf
    ld h, $1f
    add hl, de
    ccf
    jr c, jr_020_736a

    ld e, h
    ld a, e
    ld a, a
    ld c, a
    ld c, a
    rst $08

jr_020_72f9:
    ret


    rst $18
    sub $09
    rrca
    rlca
    rlca
    add b
    add b
    ld h, b
    ldh [$d0], a
    ldh a, [$f0]
    jr nc, jr_020_72f9

    ldh a, [$38]
    add sp, -$08
    ret z

    ldh a, [$30]
    ldh [rNR41], a
    ret nc

    ld [hl], b
    cp b
    add sp, -$04
    db $f4
    db $ec
    inc l
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    dec bc
    rrca
    rrca
    inc c
    dec bc
    rrca
    dec bc

jr_020_732b:
    ld c, $1f
    inc d
    rra
    jr jr_020_7340

    ld [$090f], sp
    rlca
    ld b, $07
    dec b
    inc bc
    ld [bc], a
    rrca
    rrca
    rrca
    rrca
    ld b, $06

jr_020_7340:
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$90]
    ldh a, [$e0]
    ldh [$f0], a
    sub b
    ldh a, [rNR10]
    ldh [$60], a
    ret nz

    ret nz

    ld h, b
    ldh [$b0], a
    ldh a, [$f0]
    ldh a, [$e0]
    jr nz, jr_020_732b

    ld [hl], b
    sub b
    ldh a, [$e0]
    ldh [$03], a
    inc bc
    inc c
    rrca
    db $10
    rra
    db $10
    rra
    jr jr_020_7389

jr_020_736a:
    inc a
    daa
    ccf
    inc hl
    rra
    jr jr_020_73a8

    ccf
    ld [hl], b
    ld e, a
    ld a, b
    ld a, a
    rrca
    rrca
    rrca
    add hl, bc
    rra
    rla
    add hl, bc
    rrca
    rlca
    rlca
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [$30]

jr_020_7389:
    ldh a, [$78]
    ret z

    ld hl, sp-$78
    ldh a, [$30]
    ldh [$e0], a
    ld d, b
    ldh a, [$3e]
    xor $fe
    or $ec

jr_020_7399:
    inc l
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    ld bc, $0601
    rlca

jr_020_73a4:
    ld [$090f], sp
    rrca

jr_020_73a8:
    rlca
    rlca
    rrca
    add hl, bc
    rrca
    ld [$0607], sp
    inc bc
    inc bc
    ld b, $07
    dec c
    rrca
    rrca
    rrca
    rlca
    inc b
    dec bc
    ld c, $09
    rrca
    rlca
    rlca
    ret nz

    ret nz

    jr nz, jr_020_73a4

    ret nc

    ldh a, [$f0]
    jr nc, jr_020_7399

    ldh a, [$d0]
    ld [hl], b
    ld hl, sp+$28
    ldh a, [rNR10]
    db $fc
    inc e
    db $fc
    sbc h
    ldh a, [rSVBK]
    ldh [$a0], a
    ret nz

    ld b, b
    ldh a, [$f0]
    ldh a, [$f0]
    ld h, b
    ld h, b
    inc bc
    inc bc
    inc c
    rrca
    inc d
    rra
    rra
    dec de
    rra
    rra
    add hl, sp
    cpl
    ccf
    ld h, $1f
    add hl, de
    rst $08
    ret z

    rst $10
    call c, Call_020_6f7b
    ld a, a
    ld e, a
    ld l, a

jr_020_73f9:
    ld l, c
    rrca
    ld c, $07
    rlca

jr_020_73fe:
    ld bc, $8001
    add b
    ld h, b
    ldh [$d0], a
    ldh a, [$f0]
    jr nc, jr_020_73f9

    ldh a, [$38]
    add sp, -$08
    ret z

    ldh a, [$30]
    ld hl, sp+$38
    call c, $bc74
    db $fc
    ldh [$e0], a
    ldh [rNR41], a
    ldh a, [$d0]
    jr nz, jr_020_73fe

    ret nz

    ret nz

    inc bc
    inc bc
    inc b
    rlca
    dec bc
    rrca
    rrca
    inc c
    dec bc
    rrca
    dec bc
    ld c, $df
    call nc, $d8df
    ld c, a
    ld c, b
    cpl
    add hl, hl

jr_020_7434:
    rra
    rla
    rra
    rra
    inc bc
    ld [bc], a
    rrca
    inc c
    dec bc
    ld c, $07
    rlca
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$90]
    ldh a, [$e0]
    ldh [$f0], a
    sub b
    ldh a, [rNR10]
    ldh [$60], a
    ret nz

    ret nz

    jr nz, jr_020_7434

    ld [hl], b
    ret nc

    ld hl, sp-$18
    ret c

    ld e, b
    ldh a, [$f0]
    ldh a, [$f0]
    ld h, b
    ld h, b
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rra
    db $10
    rra
    jr jr_020_7489

    inc a
    daa
    ccf
    inc hl
    rra
    jr @+$11

    rrca
    inc d
    rra
    jr c, jr_020_74a5

    ld a, a
    ld e, a
    ld l, a
    ld l, c
    rrca
    rrca
    rlca
    rlca

jr_020_747e:
    ld bc, $8001
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [$30]

jr_020_7489:
    ldh a, [$7e]
    adc $fe
    adc [hl]
    db $f4
    inc [hl]
    call c, $1cfc
    db $f4
    inc a
    db $fc
    ldh [$e0], a
    ldh [rNR41], a
    ldh a, [$d0]
    jr nz, jr_020_747e

    ret nz

    ret nz

    nop
    nop
    ld bc, $0201

jr_020_74a5:
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    inc b
    rlca
    rrca
    dec bc
    rrca
    ld [$0507], sp
    ld c, $0b
    rrca
    rrca
    ld [hl], b
    ld [hl], b
    adc b
    ld hl, sp+$04
    db $fc
    ld [hl-], a
    cp $7a
    adc $fc
    db $ec
    db $f4
    inc e
    db $f4
    inc e
    ld hl, sp+$08
    ld hl, sp+$18
    ldh [$a0], a
    ld b, b
    ret nz

    ldh [$a0], a
    ldh a, [$d0]
    ld a, e
    ei
    rst $08
    rst $08
    ld bc, $0601
    rlca
    ld [$0b0f], sp
    rrca
    rrca
    inc c
    rra
    rla
    ld e, $13
    rrca
    dec c
    rlca
    inc b
    dec bc
    ld c, $0b
    rrca
    rlca
    ld b, $07
    rlca
    rrca
    dec c
    inc de
    rra
    rra
    rra
    ret nz

    ret nz

    jr nc, @-$0e

    ld [$28f8], sp
    ld hl, sp-$08
    ret c

    ld hl, sp-$08
    ld c, b
    ld hl, sp-$10
    or b
    ldh a, [$50]
    ld hl, sp+$18
    add sp, $38
    ldh a, [$d0]
    ldh a, [rSVBK]
    ld hl, sp-$08
    db $e4
    cp h
    db $fc
    db $fc
    ld c, $0e
    ld de, $201f
    ccf
    ld c, h
    ld a, a
    ld e, [hl]
    ld [hl], e
    ccf
    scf
    cpl
    jr c, jr_020_755e

    jr c, jr_020_7550

    db $10
    rra
    jr jr_020_753c

    dec b

jr_020_7536:
    ld [bc], a
    inc bc
    rlca
    dec b
    rrca
    dec bc

jr_020_753c:
    sbc $df
    di
    di
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ret nz

jr_020_7550:
    add b
    add b
    ret nz

    ret nz

    jr nz, jr_020_7536

    ldh a, [$d0]
    ldh a, [rNR10]
    ldh [$a0], a
    ld [hl], b
    ret nc

jr_020_755e:
    ldh a, [$f0]
    inc bc
    inc bc
    inc c
    rrca

jr_020_7564:
    db $10
    rra
    db $10
    rra
    inc e
    rra
    rra
    inc de
    rra
    db $10
    rrca
    inc c
    rrca
    dec bc
    dec b
    rlca
    rrca
    dec bc
    rlca
    ld b, $07
    inc b
    rrca
    dec c
    inc de
    ld e, $1f
    rra
    ret nz

    ret nz

    jr nz, jr_020_7564

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$f8]
    add sp, -$08
    ld [$f0f0], sp
    db $10
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$f0]
    ld d, b
    ldh a, [$f0]
    ldh a, [$90]
    ld hl, sp-$28
    ld hl, sp-$08
    nop
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    ld b, $07
    rrca
    rrca
    rrca
    ld a, [bc]
    rlca
    dec b
    ld c, $0b
    rrca
    rrca
    ld [hl], b
    ld [hl], b
    adc b
    ld hl, sp+$04
    db $fc
    ld [hl-], a
    cp $7a
    adc $fc
    db $ec
    db $f4
    inc e
    db $f4
    inc e
    ld hl, sp+$08
    ld hl, sp+$18
    ldh [$a0], a
    ldh [$e0], a
    and b
    ldh [$c0], a
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld bc, $0601
    rlca
    ld [$0b0f], sp
    rrca
    rrca
    inc c
    rra
    rla
    ld e, $13
    rrca
    dec c
    rst $08
    call z, $eeeb

jr_020_75f4:
    ccf
    ccf
    rrca
    dec c
    rlca
    rlca
    ld c, $0f
    inc de
    rra
    ld e, $1e
    ret nz

    ret nz

    jr nc, jr_020_75f4

    ld [$28f8], sp
    ld hl, sp-$08
    ret c

    ld hl, sp-$08
    ld c, b
    ld hl, sp-$10
    or b
    ldh a, [$50]
    ldh a, [rNR10]
    ldh a, [$30]
    ret nc

    ldh a, [$f0]
    ld [hl], b
    ld hl, sp-$08
    db $e4
    cp h
    ld a, h
    ld a, h
    ld c, $0e
    ld de, $201f
    ccf
    ld c, h
    ld a, a
    ld e, [hl]
    ld [hl], e
    ccf
    scf
    cpl
    jr c, jr_020_765e

    jr c, jr_020_7650

    db $10
    rra
    jr @+$09

    dec b
    ld b, $07
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ret nz

jr_020_7650:
    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$f0], a
    ret nc

    ldh a, [rNR10]
    ldh [$a0], a
    ld [hl], b
    ret nc

jr_020_765e:
    ldh a, [$f0]
    inc bc
    inc bc
    inc c
    rrca

jr_020_7664:
    db $10
    rra
    db $10
    rra
    inc e
    rra
    rra
    inc de
    rra
    db $10
    rrca
    inc c
    rrca
    dec bc
    ld b, $07
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    rlca
    rrca
    dec c
    inc de
    ld e, $1f
    rra
    ret nz

    ret nz

    jr nz, jr_020_7664

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$f8]
    add sp, -$08
    ld [$f0f0], sp
    dec hl
    ei
    rra
    rst $38
    db $fc
    db $ec
    ldh a, [$b0]
    ldh a, [$d0]
    ldh a, [$90]
    ld hl, sp-$28
    ld a, b
    ld a, b
    nop
    nop
    ld bc, $0201
    inc bc
    ld h, d
    ld h, e
    ld h, e
    ld h, e
    ld h, a
    ld h, h
    scf
    inc [hl]
    rra
    rra
    rrca
    dec bc
    dec d
    rra
    rra
    ld e, $0f
    dec bc
    rrca
    add hl, bc
    rlca
    dec b
    ld c, $0b
    rrca
    rrca
    ld [hl], b
    ld [hl], b
    adc b
    ld hl, sp+$04
    db $fc
    ld [hl-], a
    cp $7a
    adc $fc
    db $ec
    db $f4
    inc e
    db $f4
    inc e
    ld hl, sp+$08
    ld hl, sp+$18
    ldh [$a0], a
    ld b, b
    ret nz

    add b
    add b
    ret nz

    ld b, b
    ld b, b
    ret nz

    ret nz

    ret nz

    ld bc, $0601
    rlca
    ld [$cb0f], sp
    rst $08
    rst $08
    call z, $d7df
    ld a, [hl]
    ld [hl], e
    cpl
    dec l
    ccf
    inc a
    rla
    ld e, $0f
    dec bc
    ld b, $07
    rlca
    rlca
    rrca
    dec c
    inc de
    rra
    ld e, $1e
    ret nz

    ret nz

    jr nc, @-$0e

    ld [$28f8], sp
    ld hl, sp-$08
    ret c

    ld hl, sp-$08
    ld c, b
    ld hl, sp-$10
    or b
    ldh a, [$50]
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$28
    db $e4
    cp h
    ld a, h
    ld a, h
    ld c, $0e
    ld de, $201f
    ccf
    ld c, h
    ld a, a
    ld e, [hl]
    ld [hl], e
    ccf
    scf
    cpl
    jr c, jr_020_775e

    jr c, jr_020_7750

    db $10
    rra
    jr @+$09

    dec b
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0302
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, [hl]
    add $c6
    add $e6
    ld h, $ec
    inc l
    ld hl, sp-$08

jr_020_7750:
    ld hl, sp-$18
    or b
    ldh a, [$60]
    ldh [$f0], a
    sub b
    ldh a, [rNR10]
    ldh [$a0], a
    ld [hl], b
    ret nc

jr_020_775e:
    ldh a, [$f0]
    inc bc
    inc bc
    inc c
    rrca

jr_020_7764:
    db $10
    rra
    db $10
    rra
    inc e
    rra
    rra
    inc de
    rra
    db $10
    rrca
    inc c
    rrca
    dec bc
    ld b, $07
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    rlca
    rrca
    dec c

jr_020_777c:
    inc de
    ld e, $1f
    rra
    ret nz

    ret nz

    jr nz, jr_020_7764

    db $10
    ldh a, [rNR13]
    di
    inc de
    di
    ei
    db $eb
    cp $0e
    db $fc
    db $fc
    ld e, h
    db $f4
    jr c, jr_020_777c

    ldh a, [$f0]
    ldh a, [$b0]
    ldh a, [$d0]
    ldh a, [$90]
    ld hl, sp-$28
    ld a, b
    ld a, b
    inc bc
    inc bc
    inc b
    rlca
    ret z

    rst $08
    ret z

    rst $08
    call c, $7cd7
    ld [hl], a
    cpl
    dec hl
    ccf
    jr c, jr_020_77d0

    rla
    inc d
    rra

jr_020_77b4:
    rrca
    rrca
    rrca
    ld a, [bc]
    rrca
    add hl, bc
    rlca
    dec b
    rrca
    dec bc
    rrca
    rrca
    ret nz

    ret nz

    jr nc, jr_020_77b4

    ld [$08f8], sp
    ld hl, sp+$18
    ld hl, sp+$78
    add sp, -$08
    xor b
    ldh a, [rNR10]

jr_020_77d0:
    ldh a, [rNR10]
    ldh [$a0], a
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    and b
    ldh [$e0], a
    ldh [rP1], a
    nop
    inc bc
    inc bc
    call nz, $c8c7
    rst $08
    ret z

    rst $08
    ld h, a
    ld h, a
    scf
    inc [hl]
    rra
    inc e
    rrca
    rrca
    rrca
    dec bc
    ld b, $07
    inc bc
    inc bc
    rlca
    inc b
    dec bc
    ld c, $09
    rrca
    rlca
    rlca
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$68
    ld hl, sp-$08
    sbc b
    add sp, -$08
    add sp, -$48
    db $fc
    inc d
    ld hl, sp+$08
    ld hl, sp-$78
    ld a, b
    add sp, -$30
    ldh a, [$f0]
    ld [hl], b
    ld hl, sp-$28
    db $e4
    cp h
    ld a, h
    ld a, h
    rlca
    rlca
    ld [$100f], sp
    rra
    dec l
    ccf
    cpl
    dec sp
    ld e, $1f
    inc de
    rra
    rrca
    dec c
    rrca
    ld a, [bc]
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    dec b
    rlca
    rlca
    dec b
    rlca
    inc bc
    inc bc
    add b
    add b
    ld b, b
    ret nz

    and e
    db $e3
    di
    ld [hl], e
    ei
    db $eb
    ld a, d
    jp z, $96f6

jr_020_784e:
    db $f4
    inc d
    db $ec
    inc l
    db $fc
    inc [hl]
    ld hl, sp+$68
    cp b
    ld hl, sp-$10
    ldh a, [$f0]
    ret nc

    jr nc, jr_020_784e

    ldh a, [$f0]
    rlca
    rlca
    ld [$160f], sp
    rra
    rra
    add hl, de
    rra
    rra
    rla
    dec e
    rla
    inc e
    rrca
    ld [$0407], sp
    rlca
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    inc b
    rrca
    dec c
    inc de
    ld e, $1f
    rra
    add b
    add b
    ld h, b
    ldh [rNR13], a
    di
    ld [hl], e
    di
    di
    sub e
    ld a, [c]
    ld [de], a
    and $66
    db $fc
    ld a, h
    call c, $f8f4
    cp b
    ld e, b
    ld hl, sp-$10
    ldh a, [$f0]
    ret nc

    add sp, -$48
    ret c

    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    ld bc, $0601
    rlca

jr_020_78a6:
    ld [$090f], sp
    rrca
    rlca
    rlca
    rrca
    add hl, bc
    rrca
    ld [$0607], sp
    inc bc
    inc bc
    ld c, $0b
    rra
    rla
    dec de
    ld a, [de]
    rrca
    rrca
    rrca
    rrca
    ld b, $06
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_78a6

    ret nc

    ldh a, [$f0]
    jr nc, @-$2e

    ldh a, [$d0]
    ld [hl], b
    ld hl, sp+$28
    ld hl, sp+$18
    ldh a, [rNR10]
    ld hl, sp-$18
    ld hl, sp-$08
    ret nz

    ld b, b
    ldh a, [$30]
    ret nc

    ld [hl], b
    ldh [$e0], a
    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    inc d
    rra
    rra
    dec de
    rra
    rra
    add hl, sp
    cpl
    ccf
    ld h, $1f
    add hl, de
    ccf
    jr c, jr_020_7970

    ld a, a
    ld c, a
    ld c, a
    rst $08
    ret


    rst $18

jr_020_78fb:
    sub $09
    rrca
    rlca
    rlca
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$d0], a
    ldh a, [$f0]
    jr nc, jr_020_78fb

    ldh a, [$38]
    add sp, -$08
    ret z

    ldh a, [$30]
    ldh [rNR41], a
    cp b
    add sp, -$04
    db $f4
    db $ec
    inc l
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    dec bc
    rrca
    rrca
    inc c
    dec bc

jr_020_792b:
    rrca
    dec bc
    ld c, $1f
    inc d
    rra
    jr jr_020_7942

    ld [$0607], sp
    rlca
    dec b
    inc bc
    ld [bc], a
    rrca
    rrca
    rrca
    rrca
    ld b, $06
    nop
    nop

jr_020_7942:
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$90]
    ldh a, [$e0]
    ldh [$f0], a
    sub b
    ldh a, [rNR10]
    ldh [$60], a
    ret nz

    ret nz

    or b
    ldh a, [$f0]
    ldh a, [$e0]
    jr nz, jr_020_792b

    ld [hl], b
    sub b
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rra
    db $10
    rra
    jr jr_020_798b

    inc a
    daa
    ccf
    inc hl

jr_020_7970:
    rra
    jr jr_020_79aa

    ccf
    ld a, b
    ld a, a
    rrca
    rrca
    rrca
    add hl, bc
    rra
    rla
    add hl, bc
    rrca
    rlca
    rlca
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [$30]

jr_020_798b:
    ldh a, [$78]
    ret z

    ld hl, sp-$78
    ldh a, [$30]
    ldh [$e0], a
    ld a, $ee
    cp $f6
    db $ec
    inc l
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc

jr_020_79aa:
    rlca
    inc b
    rlca
    inc b
    inc bc
    inc bc
    ld bc, $0401
    rlca
    ld c, $0b
    rra
    rla
    dec de
    ld a, [de]
    rrca
    rrca
    rrca
    rrca
    ld b, $06
    ldh [$e0], a
    db $10
    ldh a, [rBCPS]
    ld hl, sp-$08
    sbc b
    add sp, -$08
    add sp, -$48
    db $fc
    inc d
    db $fc
    inc c
    ld hl, sp-$78
    ldh a, [$90]
    ld hl, sp-$18
    ld hl, sp-$08
    ret nz

    ld b, b
    ldh a, [$30]
    ret nc

    ld [hl], b
    ldh [$e0], a
    ld bc, $0601
    rlca
    ld a, [bc]
    rrca
    rrca
    dec c
    rrca
    rrca
    inc e
    rla
    rra
    inc de
    rrca
    inc c
    rra
    inc e
    ld [hl], a
    ld e, h

jr_020_79f4:
    ld a, e
    ld a, a
    ld c, a
    ld c, a
    rst $08
    ret


    rst $18
    sub $09
    rrca
    rlca
    rlca
    ret nz

    ret nz

    jr nc, jr_020_79f4

    ld l, b
    ld hl, sp-$08
    sbc b
    ld hl, sp-$08
    sbc h
    db $f4
    db $fc
    ld h, h
    ld hl, sp-$68
    ldh a, [rNR10]
    ret nc

    ld [hl], b
    cp b
    add sp, -$04
    db $f4
    db $ec
    inc l
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    ld bc, $0201
    inc bc
    dec b
    rlca
    rlca
    ld b, $05
    rlca
    dec b

jr_020_7a2b:
    rlca
    rrca
    ld a, [bc]
    rrca
    inc c
    rlca
    inc b
    rrca
    add hl, bc

jr_020_7a34:
    rlca
    ld b, $07
    dec b
    inc bc
    ld [bc], a
    rrca
    rrca
    rrca
    rrca
    ld b, $06
    ret nz

    ret nz

    jr nc, jr_020_7a34

    adc b
    ld hl, sp-$38
    ld a, b
    ldh a, [$f0]
    ld hl, sp+$48
    ld hl, sp+$08
    ldh a, [$30]
    ldh [$60], a
    ld h, b
    ldh [$b0], a
    ldh a, [$f0]
    ldh a, [$e0]
    jr nz, jr_020_7a2b

    ld [hl], b
    sub b
    ldh a, [$e0]
    ldh [rSB], a
    ld bc, $0706
    ld [$080f], sp
    rrca
    inc c
    rrca
    ld e, $13
    rra
    ld de, $0c0f
    dec de
    rra
    ld [hl], b
    ld e, a

jr_020_7a74:
    ld a, b
    ld a, a
    rrca
    rrca
    rrca
    add hl, bc
    rra
    rla
    add hl, bc
    rrca
    rlca
    rlca
    ret nz

    ret nz

    jr nc, jr_020_7a74

    ld [$08f8], sp
    ld hl, sp+$18
    ld hl, sp+$3c
    db $e4
    db $fc
    call nz, Call_000_18f8
    ldh a, [$f0]
    ld d, b
    ldh a, [$3e]
    xor $fe
    or $ec
    inc l
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    ld de, $131f
    ld e, $0f
    rrca
    rra
    ld [de], a
    rra
    db $10
    rrca
    inc c
    rlca
    ld b, $04
    rlca
    ld c, $0b
    rra
    rla
    dec de
    ld a, [de]
    rrca
    rrca
    rrca
    rrca
    ld b, $06
    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [$e0], a
    ld h, b
    and b
    ldh [$a0], a
    ldh [$f0], a
    ld d, b
    ldh a, [$30]
    ldh [rNR41], a
    ldh a, [$90]
    ld hl, sp-$18
    ld hl, sp-$08
    ret nz

    ld b, b
    ldh a, [$30]
    ret nc

    ld [hl], b
    ldh [$e0], a
    rlca
    rlca
    jr jr_020_7b03

    add hl, hl
    ccf
    ccf
    ld [hl], $3f
    ccf
    ld [hl], d
    ld e, a
    ld a, a
    ld c, l
    ccf
    ld [hl-], a
    ld a, a
    ld [hl], b
    ld [hl], a
    ld e, h
    ld a, e
    ld a, a
    ld c, a
    ld c, a
    rst $08
    ret


    rst $18
    sub $09
    rrca
    rlca
    rlca
    nop
    nop
    ret nz

jr_020_7b03:
    ret nz

    and b
    ldh [$e0], a
    ld h, b
    ldh [$e0], a
    ld [hl], b
    ret nc

    ldh a, [$90]
    ldh [$60], a
    ret nz

    ld b, b
    ret nc

    ld [hl], b
    cp b
    add sp, -$04
    db $f4
    db $ec
    inc l
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    ld [$160f], sp
    rra

jr_020_7b26:
    rra
    add hl, de

jr_020_7b28:
    rla
    rra
    rla

jr_020_7b2b:
    dec e
    ccf
    jr z, jr_020_7b6e

    jr nc, jr_020_7b50

    ld de, $090f
    rlca
    ld b, $07
    dec b
    inc bc
    ld [bc], a
    rrca
    rrca
    rrca
    rrca
    ld b, $06
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_020_7b26

    jr nz, jr_020_7b28

    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ret nz

jr_020_7b50:
    add b
    add b
    ld h, b
    ldh [$b0], a
    ldh a, [$f0]
    ldh a, [$e0]
    jr nz, jr_020_7b2b

    ld [hl], b
    sub b
    ldh a, [$e0]
    ldh [rTAC], a
    rlca
    jr jr_020_7b83

    jr nz, jr_020_7ba5

jr_020_7b66:
    jr nz, jr_020_7ba7

jr_020_7b68:
    jr nc, jr_020_7ba9

    ld a, b
    ld c, a
    ld a, a
    ld b, a

jr_020_7b6e:
    ccf
    jr nc, jr_020_7be0

    ld a, a
    ld [hl], b
    ld e, a
    ld a, b
    ld a, a
    rrca
    rrca
    rrca
    add hl, bc
    rra
    rla
    add hl, bc
    rrca
    rlca
    rlca
    nop
    nop
    ret nz

jr_020_7b83:
    ret nz

    jr nz, jr_020_7b66

    jr nz, jr_020_7b68

    ld h, b
    ldh [$f0], a
    sub b
    ldh a, [rNR10]
    ldh [$60], a
    ret nz

    ret nz

    ld d, b
    ldh a, [$3e]
    xor $fe
    or $ec
    inc l
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0201

jr_020_7ba5:
    inc bc
    inc b

jr_020_7ba7:
    rlca
    dec b

jr_020_7ba9:
    rlca
    inc bc
    inc bc
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    inc bc
    nop
    inc bc
    rrca
    dec bc
    rrca
    ld c, $07
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    ret nz

    ldh [$e0], a
    ldh [rNR41], a
    ldh [$e0], a
    ldh a, [rNR10]
    ldh a, [$30]
    ldh [rNR41], a
    ldh [$a0], a
    ldh a, [$f0]
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [$60], a
    ret nz

    ret nz

    nop
    nop

jr_020_7be0:
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$0f0f], sp
    rrca
    rrca
    rrca
    rra
    ld [de], a
    rrca
    dec c
    rra
    inc e
    dec sp
    inc l
    daa
    daa
    ld h, a
    ld h, l
    ld l, a
    ld l, d
    dec b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ldh [$e0], a
    ldh [rNR41], a
    ldh [$e0], a
    ldh a, [$d0]
    ldh [rNR41], a
    ret nz

    nop
    ldh [$60], a
    ld hl, sp-$18
    ret c

    jr @-$3e

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    rlca
    rlca

jr_020_7c28:
    rlca
    inc b
    rlca
    rlca
    rrca
    ld [$0c0f], sp
    rlca
    inc b
    rlca
    dec b
    inc bc
    ld bc, $0203
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_020_7c28

    and b
    ldh [$c0], a
    ret nz

    ldh [rNR41], a
    ret nz

    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

    ldh [$e0], a
    ret nz

    nop
    ldh [$60], a
    and b
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca

jr_020_7c6a:
    inc c
    rrca

jr_020_7c6c:
    rra
    inc de
    rrca
    inc c
    dec de
    rra
    jr c, jr_020_7ca3

    rlca
    rlca
    rlca
    dec b
    rrca
    dec bc
    dec b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    jr nz, jr_020_7c6a

    jr nz, jr_020_7c6c

    ldh a, [$90]
    ldh [rNR41], a
    ret nz

    ret nz

    ld h, b
    ldh [$fc], a
    db $ec
    ret c

    jr @-$3e

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    or d
    ld a, h
    or l

jr_020_7ca3:
    ld a, h
    cp e
    ld a, h
    cp [hl]
    ld a, h
    ret


    ld a, h
    ret nc

    ld a, h
    ret c

    ld a, h
    db $ec
    ld a, h
    ld hl, sp+$7c
    nop
    rst $38
    db $fd
    nop
    ld e, $01
    ld e, $ff
    nop
    ld [bc], a
    rst $38
    db $fd
    ld [bc], a
    inc c
    inc bc
    inc c
    inc b
    jr jr_020_7cc7

    inc c
    dec b

jr_020_7cc7:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_020_7cd0

    jr @-$01

jr_020_7cd0:
    nop
    ld a, [bc]
    ld b, $1e
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    inc bc
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    add hl, bc
    ld [$0800], sp
    add hl, bc
    ld [$0a00], sp
    cp $01
    ld [bc], a
    ld [de], a
    inc bc
    ld [de], a
    ld [bc], a
    ld e, $05
    ld [de], a
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
