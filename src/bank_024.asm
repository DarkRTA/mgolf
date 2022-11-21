; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $024", ROMX[$4000], BANK[$24]

    ld [de], a
    ld b, b
    inc sp
    ld b, b
    or c
    ld c, d
    ld sp, $b151
    ld d, a
    db $31
    ld e, [hl]

    db $c1, $64

    ld b, c
    ld l, e
    pop bc
    ld [hl], c
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
    jr nc, jr_024_4022

    inc h

jr_024_4022:
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


    dec b
    inc b
    dec sp
    ld b, b
    ld d, b
    ld c, d
    dec sp
    ld b, b
    ld d, b
    ld b, b
    ld d, b
    ld b, c
    ld d, b
    ld b, d
    ld d, b
    ld b, e
    ld d, b
    ld b, h
    ld d, b
    ld b, l
    ld d, b
    ld b, [hl]
    ld d, b
    ld b, a
    ld d, b
    ld c, b
    ld d, b
    ld c, c
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc c
    rrca
    inc d
    rra
    rra
    dec de
    rrca
    add hl, bc
    rlca
    inc b
    rlca
    rlca
    add hl, bc
    rrca
    ld [de], a
    rra
    ccf
    cpl
    ccf
    ccf
    rra
    rra
    rla
    rra
    ld c, $0e
    ret nz

    ret nz

    jr nz, @-$1e

    ld [hl], b
    ret nc

    ld [hl], b
    ldh a, [$c8]
    ld hl, sp+$30
    ldh a, [$f8]
    ret c

    db $fc
    call nc, Call_000_38f8
    ld hl, sp+$18
    db $fc
    sub h
    ld hl, sp-$08
    ldh a, [$f0]
    add sp, -$08
    ret c

    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    dec b
    rlca
    dec de
    ld e, $27
    ccf
    ld l, b
    ld a, a
    rst $30
    cp a
    ld a, a
    ld e, d
    ccf
    inc a
    ld a, a
    db $76
    rst $28
    cp e
    rst $38
    db $fc
    ld e, e
    ld e, a
    ld e, a
    ld e, a
    rst $08
    rst $08
    ret


    rst $08
    ld b, $06
    add b
    add b
    ld b, b
    ret nz

    or b
    ldh a, [$c8]
    ld hl, sp+$2c
    db $fc
    sbc $fa
    db $fc
    or h
    ld hl, sp+$78
    ld hl, sp-$28
    db $f4
    cp h
    db $fc
    ld a, h
    cp [hl]
    ld a, [$f6f6]
    ldh [$e0], a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld c, $0b
    ld c, $0f
    inc de
    rra
    inc c
    rrca
    rra
    dec de
    ccf
    dec hl
    rra
    inc e
    rra
    add hl, de
    ld c, $0f
    inc e
    rla

jr_024_40e8:
    rra
    rra
    rra
    rra
    rla
    rra
    ld c, $0e
    nop
    nop

jr_024_40f2:
    add b
    add b
    ld b, b
    ret nz

    jr nc, jr_024_40e8

    jr z, jr_024_40f2

    ld hl, sp-$28
    ldh a, [$90]
    ldh [rNR41], a
    ldh [$e0], a
    ld e, b
    ld hl, sp+$5c
    db $f4
    db $fc
    db $fc
    ldh a, [$f0]
    add sp, -$08
    ret c

    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    inc b
    rlca
    jr @+$21

    jr nz, jr_024_4157

    jr nz, jr_024_4159

    ld [hl], b
    ld e, a
    ld a, b
    ld e, a
    ccf
    cpl
    rst $38
    rst $38
    rst $28
    cp e
    ld [hl], h
    ld a, a

jr_024_4126:
    dec de
    rra
    rra
    rra
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    add b
    add b
    ld b, b
    ret nz

    jr nc, jr_024_4126

    ld [$08f8], sp
    ld hl, sp+$1c
    db $f4
    inc a
    db $f4
    ld hl, sp-$18
    ld hl, sp-$08
    add sp, -$48
    ld d, a
    rst $38
    cp a
    ei
    or $f6
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc c

jr_024_4157:
    rrca
    inc d

jr_024_4159:
    rra
    rra
    dec de
    rrca
    add hl, bc
    rlca
    inc b
    rlca
    rlca
    ld a, [de]
    rra
    ld a, [hl-]
    cpl
    ccf
    ccf
    rrca
    rrca
    rla
    rra
    dec de
    rra
    ld c, $0e

jr_024_4170:
    ret nz

    ret nz

    jr nz, @-$1e

    ld [hl], b
    ret nc

    ld [hl], b
    ldh a, [$c8]
    ld hl, sp+$30
    ldh a, [$f8]
    ret c

    db $fc
    call nc, Call_000_3bfb
    ei
    sbc e
    ld [hl], h
    db $f4
    jr c, jr_024_4170

    ld hl, sp-$08
    ld hl, sp-$08
    add sp, -$08
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    dec b
    rlca
    dec de
    ld e, $27
    ccf
    ld l, b
    ld a, a
    rst $30
    cp a
    ld a, a
    ld e, d
    ccf
    inc a
    rst $38
    or $df
    ei
    ld a, a
    ld a, h
    ei
    cp a
    rst $18
    rst $18
    rrca
    rrca
    ld bc, $0001
    nop
    add b
    add b
    ld b, b
    ret nz

    or b
    ldh a, [$c8]
    ld hl, sp+$2c
    db $fc
    sbc $fa
    db $fc
    or h
    ld hl, sp+$78
    db $fc
    call c, $baee
    cp $7e
    or b
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    inc bc
    inc bc
    inc b
    rlca
    ld c, $0b
    ld c, $0f
    inc de
    rra
    inc c
    rrca
    rra
    dec de
    rst $38
    db $eb
    rst $18
    call c, Call_024_787f
    ccf
    add hl, hl
    rra
    rra

jr_024_41e8:
    rrca
    rrca
    rla
    rra
    dec de
    rra
    ld c, $0e
    nop
    nop

jr_024_41f2:
    add b
    add b
    ld b, b
    ret nz

    jr nc, jr_024_41e8

    jr z, jr_024_41f2

    ld hl, sp-$28
    ldh a, [$90]
    ldh [rNR41], a
    ldh [$e0], a
    sub b
    ldh a, [rOBP0]
    ld hl, sp-$04
    db $f4
    db $fc
    db $fc
    ld hl, sp-$08
    add sp, -$08
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    inc b
    rlca
    jr @+$21

    jr nz, jr_024_4257

    jr nz, jr_024_4259

    ld [hl], b
    ld e, a
    ld a, b
    ld e, a
    ccf
    cpl
    ccf
    ccf
    cpl
    dec sp
    ld d, h
    ld a, a

jr_024_4226:
    ei
    cp a
    rst $18
    rst $18
    rrca
    rrca
    ld bc, $0001
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nc, jr_024_4226

    ld [$08f8], sp
    ld hl, sp+$1f
    rst $30
    ccf
    rst $30
    ld a, [$feea]
    cp $ee
    cp d
    ld e, h
    db $fc
    or b
    ldh a, [$f0]
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
    dec b

jr_024_4257:
    rlca
    inc bc

jr_024_4259:
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    dec b
    rlca
    ld a, [bc]
    rrca
    inc e
    rra
    ld e, $1f

jr_024_4266:
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    ld [$0f0f], sp
    rrca
    jr c, @+$3a

    call nz, Call_000_0cfc
    db $fc
    inc a
    db $f4
    call z, $f2fc
    ld a, [hl]
    db $fc
    ld e, h
    ld hl, sp+$28
    db $fc
    or h
    ld a, b
    ret c

    jr nz, jr_024_4266

    and b
    ldh [$f0], a
    ret nc

    jr nc, jr_024_42bc

    adc e
    adc e
    add a
    add a
    nop
    nop
    ld bc, $0e01
    rrca
    db $10
    rra
    dec sp
    cpl
    inc a
    daa
    rra
    rla
    rrca
    dec bc
    rrca
    add hl, bc
    rla
    inc e
    inc de
    rra
    add hl, bc
    rrca
    rrca
    ld c, $0f
    rrca
    inc de
    rra
    rra
    rra
    ldh [$e0], a
    db $10
    ldh a, [rBCPS]
    ld hl, sp-$18
    cp b
    ld hl, sp-$08
    inc b
    db $fc

jr_024_42bc:
    ld hl, sp-$08
    ld hl, sp+$18
    ldh a, [$b0]
    ld hl, sp-$28
    add sp, $38
    ret nc

    ldh a, [$f0]
    or b
    ldh a, [$f0]
    adc b
    ld hl, sp-$08
    ld hl, sp+$1c
    inc e
    inc hl
    ccf
    jr nc, jr_024_4315

jr_024_42d6:
    inc a
    cpl
    inc sp
    ccf
    ld c, a
    ld a, [hl]
    ccf
    ld a, [hl-]
    rra
    inc d
    ccf
    dec l
    ld e, $1b
    inc b
    rlca
    dec b
    rlca
    rrca
    dec bc
    inc c
    inc c
    pop de
    pop de
    pop hl
    pop hl
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_024_42d6

    and b
    ldh [$c0], a
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    and b
    ldh [$50], a
    ldh a, [$38]
    ld hl, sp+$78
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [rTAC]
    rlca
    ld [$100f], sp

jr_024_4315:
    rra
    inc d
    rra
    ld e, $1b
    ccf
    dec sp
    rra
    inc d
    rrca
    rrca
    add hl, bc
    rrca
    ld de, $171f
    rra
    rrca
    rrca
    rlca
    rlca
    rrca
    rrca
    ld de, $1f1f
    rra
    nop
    nop
    add b
    add b
    ld [hl], b
    ldh a, [$08]
    ld hl, sp+$0c
    db $fc

jr_024_433a:
    db $fc
    db $f4

jr_024_433c:
    ld hl, sp-$08
    ldh a, [$f0]
    jr z, jr_024_433a

    jr z, jr_024_433c

    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ret z

    ld hl, sp-$08
    ld hl, sp+$00
    nop
    inc bc
    inc bc
    inc b
    rlca
    dec b
    rlca
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    rlca
    add hl, sp
    ccf
    add hl, sp
    ccf
    ld e, $1f
    rra
    dec e
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    ld [$0f0f], sp
    rrca
    jr c, jr_024_43aa

    call nz, Call_000_0cfc
    db $fc
    inc a
    db $f4
    call z, $f2fc
    ld a, [hl]
    db $fc
    ld e, h
    ld hl, sp+$28
    db $fc
    inc [hl]
    ld hl, sp-$28
    and b
    ldh [$e0], a
    ld h, b
    ret nz

    ret nz

    nop
    nop
    add b
    add b
    add b
    add b
    nop
    nop
    ld bc, $0e01
    rrca
    db $10
    rra
    dec sp
    cpl
    inc a
    daa
    rra
    rla
    rst $08
    set 1, a
    ret


    ld d, a
    ld e, h
    ccf
    ccf
    rra
    dec d
    rrca
    rrca

jr_024_43aa:
    rrca
    rrca
    ld [de], a
    ld e, $1e
    ld e, $e0
    ldh [rNR10], a
    ldh a, [rBCPS]
    ld hl, sp-$18
    cp b
    ld hl, sp-$08
    inc b
    db $fc
    ld hl, sp-$08
    ld hl, sp+$18
    ldh a, [$b0]
    ldh a, [$f0]
    ret nc

    ldh a, [$30]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$88]
    ld hl, sp-$08
    ld hl, sp+$1c
    inc e
    inc hl
    ccf
    jr nc, jr_024_4415

jr_024_43d6:
    inc a
    cpl
    inc sp
    ccf
    ld c, a
    ld a, [hl]
    ccf
    ld a, [hl-]
    rra
    inc d
    ccf
    dec l
    ld e, $1b
    inc b
    rlca
    dec b
    rlca
    inc bc
    inc bc
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    ret nz

    ret nz

    jr nz, jr_024_43d6

    and b
    ldh [$c0], a
    ld b, b
    ret nz

    ld b, b
    ldh [$e0], a
    sbc h
    db $fc
    call z, Call_024_78fc
    ld hl, sp+$78
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [rTAC]
    rlca
    ld [$100f], sp

jr_024_4415:
    rra
    inc d
    rra
    ld e, $1b
    ccf
    dec sp
    rra
    inc d
    rrca
    add hl, bc
    ld c, $0f
    ld a, [bc]
    rrca
    dec bc
    rrca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    ld de, $1f1f
    rra
    nop
    nop
    add b
    add b
    ld [hl], b
    ldh a, [$08]
    ld hl, sp+$0c
    db $fc
    db $fc
    db $f4
    ld hl, sp-$08
    set 7, e
    ld b, a
    rst $38
    ld d, h
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld c, b
    ld a, b
    ld a, b
    ld a, b
    nop
    nop
    inc bc
    inc bc
    ld h, h
    ld h, a
    ld h, l
    ld h, a
    ld h, e
    ld h, d
    inc sp
    ld [hl-], a
    rra
    rra
    dec e
    rla
    rla
    rra
    ld e, $1b
    ld e, $1f
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    ld [$0f0f], sp
    rrca
    jr c, jr_024_44aa

    call nz, Call_000_0cfc
    db $fc
    inc a
    db $f4
    call z, $f2fc
    ld a, [hl]
    db $fc
    ld e, h
    ld hl, sp+$28
    db $fc
    inc [hl]
    ld hl, sp-$68
    ld h, b
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    nop
    add b
    add b
    add b
    add b
    nop
    nop
    ld bc, $6e01
    ld l, a
    ld [hl], b
    ld a, a
    ld a, e
    ld l, a
    inc a
    daa
    ccf
    scf
    ccf
    dec hl
    rra
    add hl, de
    rra
    ld d, $09
    rrca
    inc c
    rrca
    rrca
    rrca

jr_024_44aa:
    rrca
    rrca
    ld [de], a
    ld e, $1e
    ld e, $e0
    ldh [rNR10], a
    ldh a, [rBCPS]
    ld hl, sp-$18
    cp b
    ld hl, sp-$08
    inc b
    db $fc
    ld hl, sp-$08
    ld hl, sp+$18
    ldh a, [$b0]
    ldh a, [$d0]
    ldh [$e0], a
    and b
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$88]
    ld hl, sp-$08
    ld hl, sp+$1c
    inc e
    inc hl
    ccf
    jr nc, jr_024_4515

    inc a
    cpl
    inc sp
    ccf
    ld c, a
    ld a, [hl]
    ccf
    ld a, [hl-]
    rra
    inc d
    ccf
    dec l
    rra
    add hl, de
    ld b, $07
    inc bc
    inc bc
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0000
    ret nz

    ret nz

    ld h, $e6
    and [hl]
    and $c6
    ld b, [hl]
    call c, $f85c
    add sp, -$68
    ld hl, sp+$08
    ld hl, sp-$48
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [rTAC]
    rlca
    ld [$100f], sp

jr_024_4515:
    rra
    inc d
    rra
    ld e, $1b
    ccf
    dec sp
    rra
    inc d
    rrca
    add hl, bc
    ld c, $0b
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    ld de, $1f1f
    rra
    nop
    nop
    add b
    add b
    db $76
    or $0e
    cp $0e
    cp $fc
    db $f4
    db $fc
    db $fc
    sbc h
    db $f4
    adc b
    ld hl, sp-$58
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [rOBP0]
    ld a, b
    ld a, b
    ld a, b
    ld bc, $0601
    rlca
    ld [$d80f], sp
    rst $18
    ret c

    rst $18
    call c, Call_024_7cd7
    ld a, a
    dec sp
    cpl
    inc d
    rra
    inc d
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    ld c, $0f
    add hl, bc
    rrca

jr_024_456e:
    rrca
    rrca
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$1c
    db $f4
    inc e
    db $f4
    ld a, h
    db $e4
    ld hl, sp-$28
    ld [hl], b
    ldh a, [$50]
    ldh a, [$d0]
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    ld b, b
    ret nz

    jr nz, jr_024_456e

    ldh [$e0], a
    nop
    nop
    ld bc, $0201
    inc bc
    call z, $d3cf
    rst $18
    db $fc
    rst $28
    ld a, a
    ld h, a
    ccf
    inc sp
    rra
    dec de
    rrca
    inc c
    dec bc
    rrca
    inc c
    rrca
    rrca
    rrca
    rla
    rra
    add hl, de
    rra
    ld c, $0e
    ret nz

    ret nz

    jr nz, @-$1e

    ld [hl], b
    ret nc

    ld [hl], b
    ldh a, [$88]
    ld hl, sp+$70
    ldh a, [$f8]
    xor b
    ldh a, [$30]
    ldh a, [$f0]
    ldh a, [rNR10]
    ldh a, [$30]
    ret nc

    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$88]
    ld hl, sp-$08
    ld hl, sp+$07
    rlca
    ld a, [bc]
    rrca
    rla
    dec e
    ld d, $1f
    add hl, hl
    ccf
    scf
    ccf
    ccf
    inc l
    rra
    dec e
    rra
    inc de
    rrca
    inc c
    dec bc
    rrca
    ld c, $0f
    rrca
    rrca
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

    and b
    ldh [$5b], a
    ei

jr_024_45f8:
    ei
    db $eb
    ei
    xor e
    or $f6
    db $fc
    sbc h
    ld hl, sp+$28
    ldh a, [rSVBK]
    ldh a, [$d0]
    jr nc, jr_024_45f8

    ldh a, [$f0]
    ldh a, [$f0]
    db $10
    ldh a, [$f0]
    ldh a, [rTMA]
    ld b, $09
    rrca
    jr jr_024_4635

    inc e
    rla
    rra
    rra
    cpl
    ld a, [hl-]
    ccf
    ld [hl], $1f
    inc e
    rrca
    ld [$0707], sp
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    ld de, $1f1f
    rra
    nop
    nop
    add b
    add b
    ld h, b

jr_024_4635:
    ldh [$73], a
    db $d3
    ei
    sbc e
    db $eb
    cp e
    or $36
    db $fc
    ld a, h
    ld hl, sp-$18
    ld hl, sp-$48
    add sp, -$08
    ldh a, [$f0]
    ldh a, [$f0]
    add sp, -$08
    sbc b
    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc c
    rrca
    inc d
    rra
    rra
    dec de
    rrca
    add hl, bc
    rlca
    inc b
    rlca
    rlca
    ld [de], a
    rra
    ccf
    cpl
    ccf
    ccf
    rra
    rra
    rla
    rra
    ld c, $0e
    nop
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    ld [hl], b
    ret nc

    ld [hl], b
    ldh a, [$c8]
    ld hl, sp+$30
    ldh a, [$f8]
    ret c

    db $fc
    call nc, Call_000_38f8
    db $fc
    sub h
    ld hl, sp-$08
    ldh a, [$f0]
    add sp, -$08
    ret c

    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    inc bc
    inc bc
    dec b
    rlca
    dec de
    ld e, $27
    ccf
    ld l, b
    ld a, a
    rst $30
    cp a
    ld a, a
    ld e, d
    ccf
    inc a
    ld a, a
    db $76
    rst $38
    db $fc
    ld e, e
    ld e, a
    ld e, a
    ld e, a
    rst $08
    rst $08
    ret


    rst $08
    ld b, $06
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    or b
    ldh a, [$c8]
    ld hl, sp+$2c
    db $fc
    sbc $fa
    db $fc
    or h
    ld hl, sp+$78
    ld hl, sp-$28
    db $fc
    ld a, h
    cp [hl]
    ld a, [$f6f6]
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
    rlca
    ld c, $0b
    ld c, $0f
    inc de
    rra
    inc c
    rrca
    rra
    dec de
    ccf
    dec hl
    rra
    inc e
    ld c, $0f
    inc e
    rla
    rra
    rra

jr_024_46ea:
    rra
    rra
    rla
    rra
    ld c, $0e
    nop
    nop
    nop
    nop

jr_024_46f4:
    add b
    add b
    ld b, b
    ret nz

    jr nc, jr_024_46ea

    jr z, jr_024_46f4

    ld hl, sp-$28
    ldh a, [$90]
    ldh [rNR41], a
    ldh [$e0], a
    ld e, h
    db $f4
    db $fc
    db $fc
    ldh a, [$f0]
    add sp, -$08
    ret c

    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    jr @+$21

    jr nz, jr_024_4759

    jr nz, jr_024_475b

    ld [hl], b
    ld e, a
    ld a, b
    ld e, a
    ccf
    cpl
    rst $38
    rst $38
    ld [hl], h
    ld a, a
    dec de
    rra

jr_024_4728:
    rra
    rra
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nc, jr_024_4728

    ld [$08f8], sp
    ld hl, sp+$1c
    db $f4
    inc a
    db $f4
    ld hl, sp-$18
    ld hl, sp-$08
    ld d, a
    rst $38
    cp a
    ei
    or $f6
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    ld a, [bc]

jr_024_4759:
    rrca
    rrca

jr_024_475b:
    dec c
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    inc bc
    add hl, bc
    rrca
    ld [de], a
    rra
    ccf
    cpl
    ccf
    ccf
    rra
    rra
    rla
    rra
    ld c, $0e
    ld h, b
    ld h, b
    sub b
    ldh a, [$38]
    add sp, $38
    ld hl, sp+$64
    db $fc
    sbc b
    ld hl, sp-$04
    db $ec
    cp $6a
    db $fc
    sbc h
    ld hl, sp+$18
    db $fc
    sub h
    ld hl, sp-$08
    ldh a, [$f0]
    add sp, -$08
    ret c

    ld hl, sp+$70
    ld [hl], b
    ld bc, $0201
    inc bc
    dec c
    rrca
    inc de
    rra
    inc [hl]
    ccf
    ld a, e
    ld e, a
    ccf
    dec l
    rra
    ld e, $3f
    dec sp
    rst $28
    cp e
    rst $38
    db $fc
    ld e, e
    ld e, a
    ld e, a
    ld e, a
    rst $08
    rst $08
    ret


    rst $08
    ld b, $06
    ret nz

    ret nz

    and b
    ldh [$d8], a
    ld a, b
    db $e4
    db $fc
    ld d, $fe
    rst $28
    db $fd
    cp $5a
    db $fc
    inc a
    db $fc
    ld l, h
    db $f4
    cp h
    db $fc
    ld a, h
    cp [hl]
    ld a, [$f6f6]
    ldh [$e0], a
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    rlca
    dec b

jr_024_47d6:
    rlca
    rlca
    add hl, bc
    rrca
    ld b, $07
    rrca
    dec c
    rra
    dec d
    rrca
    ld c, $1f
    add hl, de
    ld c, $0f
    inc e
    rla
    rra
    rra
    rra
    rra
    rla
    rra
    ld c, $0e

jr_024_47f0:
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_024_47d6

    jr jr_024_47f0

    sub h
    db $fc
    ld a, h
    db $ec
    ld hl, sp-$38
    ldh a, [$90]
    ldh a, [rSVBK]
    ld e, b
    ld hl, sp+$5c
    db $f4
    db $fc
    db $fc
    ldh a, [$f0]
    add sp, -$08
    ret c

    ld hl, sp+$70
    ld [hl], b
    ld bc, $0201
    inc bc

jr_024_4814:
    inc c
    rrca
    db $10
    rra
    db $10
    rra
    jr c, @+$31

    inc a
    cpl
    rra
    rla
    ld a, a
    ld a, a
    rst $28
    cp e
    ld [hl], h
    ld a, a
    dec de
    rra
    rra
    rra
    rrca
    rrca
    add hl, bc
    rrca

jr_024_482e:
    ld b, $06
    ret nz

    ret nz

    jr nz, jr_024_4814

    jr jr_024_482e

    inc b
    db $fc
    inc b
    db $fc
    ld c, $fa
    ld e, $fa
    db $fc
    db $f4
    db $fc
    db $fc
    add sp, -$48
    ld d, a
    rst $38
    cp a
    ei
    or $f6
    ldh [$e0], a
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    jr @+$21

    add hl, hl
    ccf
    ld a, $37
    rra
    inc de
    rrca
    add hl, bc
    rrca
    ld c, $09
    rrca
    ld [de], a
    rra
    ccf
    cpl
    ccf
    ccf
    rra
    rra
    rla
    rra
    ld c, $0e
    add b
    add b
    ld b, b
    ret nz

    ldh [$a0], a
    ldh [$e0], a
    sub b
    ldh a, [$60]
    ldh [$f0], a
    or b
    ld hl, sp-$58
    ldh a, [rSVBK]
    ld hl, sp+$18
    db $fc
    sub h
    ld hl, sp-$08
    ldh a, [$f0]
    add sp, -$08
    ret c

    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    ld a, [bc]
    rrca
    scf
    dec a
    ld c, a
    ld a, a
    ret nc

    rst $38
    rst $28
    ld a, a
    rst $38
    or l
    ld a, a
    ld a, b
    rst $38
    db $ed
    rst $28
    cp e
    rst $38
    db $fc
    ld e, e
    ld e, a
    ld e, a
    ld e, a
    rst $08
    rst $08
    ret


    rst $08
    ld b, $06
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$90], a
    ldh a, [$58]
    ld hl, sp-$44
    db $f4
    ld hl, sp+$68
    ldh a, [$f0]
    ldh a, [$b0]
    db $f4
    cp h
    db $fc
    ld a, h
    cp [hl]
    ld a, [$f6f6]
    ldh [$e0], a
    nop
    nop
    nop
    nop
    ld b, $06
    add hl, bc
    rrca
    inc e
    rla
    inc e
    rra
    ld h, $3f
    add hl, de
    rra
    ccf
    scf
    ld a, a
    ld d, [hl]
    ccf
    add hl, sp
    rra
    add hl, de
    ld c, $0f
    inc e
    rla
    rra
    rra
    rra
    rra
    rla
    rra
    ld c, $0e
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$50], a
    ldh a, [$f0]
    or b
    ldh [rNR41], a
    ret nz

    ld b, b
    ret nz

    ret nz

    ld e, b
    ld hl, sp+$5c
    db $f4
    db $fc
    db $fc
    ldh a, [$f0]
    add sp, -$08
    ret c

    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    ld [$300f], sp
    ccf
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ldh [$bf], a
    ldh a, [$bf]
    ld a, a
    ld e, a
    rst $38
    rst $38
    rst $28
    cp e
    ld [hl], h
    ld a, a
    dec de
    rra
    rra
    rra
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [$38]
    add sp, $78
    add sp, -$10
    ret nc

    ldh a, [$f0]
    add sp, -$48
    ld d, a
    rst $38
    cp a
    ei
    or $f6
    ldh [$e0], a
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
    ld [$070f], sp
    dec b
    inc bc
    nop
    inc bc
    inc bc
    dec b
    rlca
    rra
    rla
    rra
    rra
    rrca
    rrca
    dec bc
    rrca
    ld b, $06
    nop
    nop
    nop
    nop
    ret nz

jr_024_4973:
    ret nz

    nop

jr_024_4975:
    ret nz

    ld h, b
    ldh [$60], a
    ldh [$d0], a
    ldh a, [$f0]
    ldh a, [$f8]
    add sp, -$10
    jr nc, jr_024_4973

    jr nc, jr_024_4975

    ldh a, [$e0]
    ldh [$d0], a
    ldh a, [$f0]
    ldh a, [$60]
    ld h, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0f03
    ld c, $13
    rra
    inc [hl]
    ccf
    ccf
    ld l, $1f
    inc e
    ccf
    ld a, [hl-]
    ld [hl], a
    ld e, a
    cpl
    cpl
    cpl
    cpl
    ld h, a
    ld h, a
    ld h, l
    ld h, a
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

    and b
    ldh [$d0], a
    ldh a, [rNR23]
    ld hl, sp-$08
    xor b
    ldh a, [rSVBK]
    ldh a, [$f0]
    add sp, -$48
    cp h
    db $f4
    db $ec
    db $ec
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
    inc bc
    inc bc
    nop
    inc bc
    ld b, $07
    ld b, $07

jr_024_49da:
    dec bc
    rrca
    rrca
    rrca
    rra
    rla
    rrca
    inc c
    rrca
    dec c
    inc c
    dec bc
    rrca
    rrca
    rrca
    rrca
    dec bc
    rrca
    ld b, $06
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

    jr nz, jr_024_49da

    db $10
    ldh a, [$e0]
    and b
    ret nz

    nop
    ret nz

    ret nz

    ld [hl], b
    ldh a, [$f8]
    ld hl, sp-$20
    ldh [$d0], a
    ldh a, [$f0]
    ldh a, [$60]
    ld h, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    inc c
    rrca

jr_024_4a18:
    db $10
    rra
    db $10
    rra
    inc a
    cpl
    rra
    rla
    ld a, a
    ld a, a
    ld [hl], a
    ld e, a
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
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

    jr nz, jr_024_4a18

    db $10
    ldh a, [rNR10]
    ldh a, [$38]
    add sp, -$10
    ret nc

    ldh a, [$f0]
    ret nc

    or b
    cp [hl]
    or $ec
    db $ec
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld c, d
    ld h, l
    ld c, d
    ld l, e
    ld c, d
    ld l, [hl]
    ld c, d
    ld a, c
    ld c, d
    add b
    ld c, d
    adc b
    ld c, d
    sbc h
    ld c, d
    xor b
    ld c, d
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
    jr jr_024_4a77

    inc c
    dec b

jr_024_4a77:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_024_4a80

    jr @-$01

jr_024_4a80:
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
    ld b, $04
    cp c
    ld c, d
    ret nc

    ld d, b
    cp c
    ld c, d
    ret nc

    ld c, d
    ret nc

    ld c, e
    ret nc

    ld c, e
    ret nc

    ld c, e
    ret nc

    ld c, e
    ret nc

    ld c, e
    ret nc

    ld c, h
    ret nc

    ld c, l
    ret nc

    ld c, [hl]
    ret nc

    ld c, a
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    dec bc
    rrca
    db $10
    rra
    inc d
    dec de
    jr nz, @+$41

    jr nz, @+$41

    db $10
    rra
    db $10
    rra
    jr c, jr_024_4b17

    ld a, $2f
    rra
    rla
    ld c, $0e
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ret nc

    ldh a, [$08]
    ld hl, sp+$28
    ret c

    inc h
    call c, $dc24
    ld [$08f8], sp
    ld hl, sp+$18
    ld hl, sp+$7c
    db $e4
    db $fc
    add h
    ld hl, sp-$78
    ld [hl], b
    ld [hl], b
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rlca

jr_024_4b17:
    inc b
    dec bc
    rrca
    db $10
    rra
    ld d, $19
    ld h, $39
    ld h, $39
    db $10
    rra
    db $10
    rra
    ld c, $0f
    rra
    ld de, $111f
    rra
    rra
    ld c, $0e
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ret nc

    ldh a, [$08]
    ld hl, sp+$68
    sbc b
    ld h, h
    sbc h
    ld h, h
    sbc h
    ld [$08f8], sp
    ld hl, sp+$10
    ldh a, [$78]
    add sp, -$08
    adc b
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    dec bc
    rrca
    db $10
    rra
    inc d
    dec de
    inc h
    dec sp
    inc h
    dec sp
    db $10
    rra
    db $10
    rra
    jr c, jr_024_4b97

    ld a, $3f
    rra
    rra
    inc c
    inc c
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ret nc

    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    ld [$08f8], sp
    ld hl, sp+$18
    ld hl, sp+$7c
    db $e4
    db $fc
    add h
    ld hl, sp-$78
    ld [hl], b
    ld [hl], b
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rlca

jr_024_4b97:
    inc b
    dec bc
    rrca
    db $10
    rra
    inc d
    dec de
    jr nz, @+$41

    jr nz, @+$41

    db $10
    rra
    db $10
    rra
    ld [$0e0f], sp
    rrca
    rra
    ld de, $1f1f
    ld c, $0e
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ret nc

    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    ld [$08f8], sp
    ld hl, sp+$10
    ldh a, [$78]
    add sp, -$08
    ret z

    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    dec bc
    rrca
    db $10
    rra
    inc d
    dec de
    jr nz, @+$41

    jr nz, @+$41

    db $10
    rra
    db $10
    rra
    jr jr_024_4c07

    ld a, $27
    ccf
    ld hl, $111f
    ld c, $0e
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ret nc

    ldh a, [$08]
    ld hl, sp+$28
    ret c

    inc h
    call c, $dc24
    ld [$08f8], sp
    ld hl, sp+$1c

jr_024_4c07:
    db $f4
    ld a, h
    db $fc
    ld hl, sp-$08
    jr nc, jr_024_4c3e

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    dec bc
    rrca
    db $10
    rra
    ld d, $19
    ld h, $39
    ld h, $39
    db $10
    rra
    db $10
    rra
    ld [$1e0f], sp
    rla
    rra
    ld de, $0e0e
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ret nc

    ldh a, [$08]
    ld hl, sp+$68
    sbc b

jr_024_4c3e:
    ld h, h
    sbc h
    ld h, h
    sbc h
    ld [$08f8], sp
    ld hl, sp+$70
    ldh a, [$f8]
    adc b
    ld hl, sp-$78
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    dec bc
    rrca
    db $10
    rra
    inc d
    dec de
    inc h
    dec sp
    inc h
    dec sp
    db $10
    rra
    db $10
    rra
    jr jr_024_4c87

    ld a, $27
    ccf
    ld hl, $111f
    ld c, $0e
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ret nc

    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    ld [$08f8], sp
    ld hl, sp+$1c

jr_024_4c87:
    db $f4
    ld a, h
    db $f4
    ld hl, sp-$18
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    dec bc
    rrca
    db $10
    rra
    inc d
    dec de
    jr nz, jr_024_4cdf

    jr nz, @+$41

    db $10
    rra
    db $10
    rra
    ld [$1e0f], sp
    rla
    rra
    inc de
    ld c, $0e
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ret nc

    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    ld [$08f8], sp
    ld hl, sp+$10
    ldh a, [rSVBK]
    ldh a, [$f8]
    adc b
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    dec bc
    rrca
    db $10
    rra
    inc d

jr_024_4cdf:
    dec de
    jr nz, @+$41

    jr nz, @+$41

    db $10
    rra
    jr c, jr_024_4d17

    ld a, $2f
    rra
    rla
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ret nc

    ldh a, [$08]
    ld hl, sp+$28
    ret c

    inc h
    call c, $dc24
    ld [$18f8], sp
    ld hl, sp+$7c
    db $e4
    db $fc
    add h
    ld hl, sp-$78
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca

jr_024_4d17:
    inc b
    rlca
    inc b
    dec bc
    rrca
    db $10
    rra
    ld d, $19
    ld h, $39
    ld h, $39
    db $10
    rra
    ld c, $0f
    rra
    ld de, $111f
    rra
    rra
    ld c, $0e
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ret nc

    ldh a, [$08]
    ld hl, sp+$68
    sbc b
    ld h, h
    sbc h
    ld h, h
    sbc h
    ld [$10f8], sp
    ldh a, [$78]
    add sp, -$08
    adc b
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    dec bc
    rrca
    db $10
    rra
    inc d
    dec de
    inc h
    dec sp
    inc h
    dec sp
    db $10
    rra
    jr c, jr_024_4d97

    ld a, $3f
    rra
    rra
    inc c
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ret nc

    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    ld [$18f8], sp
    ld hl, sp+$7c
    db $e4
    db $fc
    add h
    ld hl, sp-$78
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca

jr_024_4d97:
    inc b
    rlca
    inc b
    dec bc
    rrca
    db $10
    rra
    inc d
    dec de
    jr nz, jr_024_4de1

    jr nz, jr_024_4de3

    db $10
    rra
    ld [$0e0f], sp
    rrca
    rra
    ld de, $1f1f
    ld c, $0e
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ret nc

    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    ld [$10f8], sp
    ldh a, [$78]
    add sp, -$08
    ret z

    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    rlca
    ld [$0a0f], sp
    dec c
    db $10
    rra
    db $10

jr_024_4de1:
    rra
    db $10

jr_024_4de3:
    rra
    db $10
    rra
    jr c, jr_024_4e17

    ld a, $2f
    rra
    rla
    ld c, $0e
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    add sp, -$08
    inc b
    db $fc
    inc d
    db $ec
    ld [de], a
    xor $12
    xor $08
    ld hl, sp+$08
    ld hl, sp+$18
    ld hl, sp+$7c
    db $e4
    db $fc
    add h
    ld hl, sp-$78
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc

jr_024_4e17:
    ld [bc], a
    dec b
    rlca
    ld [$0b0f], sp
    inc c
    inc de
    inc e
    inc de
    inc e
    db $10
    rra
    db $10
    rra
    ld c, $0f
    rra
    ld de, $111f
    rra
    rra
    ld c, $0e
    nop
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    add sp, -$08
    inc b
    db $fc
    inc [hl]
    call z, $ce32
    ld [hl-], a
    adc $08
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [$78]
    add sp, -$08
    adc b
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    rlca
    ld [$0a0f], sp
    dec c
    ld [de], a
    dec e
    ld [de], a
    dec e
    db $10
    rra
    db $10
    rra
    jr c, jr_024_4e97

    ld a, $3f
    rra
    rra
    inc c
    inc c
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    add sp, -$08
    inc b
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $08
    ld hl, sp+$08
    ld hl, sp+$18
    ld hl, sp+$7c
    db $e4
    db $fc
    add h
    ld hl, sp-$78
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc

jr_024_4e97:
    ld [bc], a
    dec b
    rlca
    ld [$0a0f], sp
    dec c
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    ld [$0e0f], sp
    rrca
    rra
    ld de, $1f1f
    ld c, $0e
    nop
    nop
    ldh [$e0], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    add sp, -$08
    inc b
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $08
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [$78]
    add sp, -$08
    ret z

    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    ld [$080f], sp
    rla
    rra
    jr nz, @+$41

    jr z, jr_024_4f15

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    db $10
    rra
    db $10
    rra
    jr c, @+$31

    ld a, $2f
    rra
    rla
    ld c, $0e
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    and b
    ldh [rNR10], a
    ldh a, [$50]
    or b
    ld c, b
    cp b
    ld c, b
    cp b
    ld [$08f8], sp
    ld hl, sp+$18

jr_024_4f07:
    ld hl, sp+$7c

jr_024_4f09:
    db $e4
    db $fc
    add h
    ld hl, sp-$78
    ld [hl], b
    ld [hl], b
    nop
    nop
    rlca
    rlca
    rrca

jr_024_4f15:
    ld [$080f], sp
    rla
    rra
    jr nz, @+$41

    inc l
    inc sp
    ld c, h
    ld [hl], e
    ld c, h
    ld [hl], e
    db $10
    rra
    db $10
    rra
    ld c, $0f
    rra
    ld de, $111f
    rra
    rra
    ld c, $0e
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    and b
    ldh [rNR10], a
    ldh a, [$d0]
    jr nc, jr_024_4f07

    jr c, jr_024_4f09

    jr c, jr_024_4f4b

    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [$78]
    add sp, -$08

jr_024_4f4b:
    adc b
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    ld [$080f], sp
    rla
    rra
    jr nz, @+$41

    jr z, jr_024_4f95

    ld c, b
    ld [hl], a
    ld c, b
    ld [hl], a
    db $10
    rra
    db $10
    rra
    jr c, @+$31

    ld a, $3f
    rra
    rra
    inc c
    inc c
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    and b
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$18
    ld hl, sp+$7c
    db $e4
    db $fc
    add h
    ld hl, sp-$78
    ld [hl], b
    ld [hl], b
    nop
    nop
    rlca
    rlca
    rrca

jr_024_4f95:
    ld [$080f], sp
    rla
    rra
    jr nz, jr_024_4fdb

    jr z, jr_024_4fd5

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    db $10
    rra
    db $10
    rra
    ld [$0e0f], sp
    rrca
    rra
    ld de, $1f1f
    ld c, $0e
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    and b
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [$78]
    add sp, -$08
    ret z

    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc

jr_024_4fd5:
    inc bc
    inc bc
    nop
    inc bc
    nop
    rlca

jr_024_4fdb:
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    ld [$1c0f], sp
    rla
    ld e, $17
    rrca
    dec bc
    ld b, $06
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

    ret nz

    nop
    ret nz

    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [$30]
    ldh a, [$78]
    ret z

    ld hl, sp-$78
    ldh a, [$90]
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    nop
    rlca
    rlca
    ld a, [bc]
    dec c
    ld [de], a
    dec e
    ld [de], a
    dec e
    ld [$060f], sp
    rlca
    rrca
    add hl, bc
    rrca
    add hl, bc
    rrca
    rrca
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ret nz

    nop
    ret nz

    nop
    ldh [$e0], a
    ld d, b
    or b
    ld c, b
    cp b
    ld c, b
    cp b
    db $10
    ldh a, [rNR41]
    ldh [rSVBK], a
    ret nc

    ldh a, [$90]
    ld h, b
    ld h, b
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
    nop
    inc bc
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    ld [$1c0f], sp
    rla
    ld e, $1f
    rrca
    rrca
    inc b
    inc b
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

    ret nz

    nop
    ret nz

    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [$30]
    ldh a, [$78]
    ret z

    ld hl, sp-$78
    ldh a, [$90]
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    ld [$040f], sp
    rlca
    ld b, $07
    rrca
    add hl, bc
    rrca
    rrca
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ret nz

    nop
    ret nz

    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [rNR41]
    ldh [rSVBK], a
    ret nc

    ldh a, [$d0]
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    ld [c], a
    ld d, b
    push hl
    ld d, b
    db $eb
    ld d, b
    xor $50
    ld sp, hl
    ld d, b
    nop
    ld d, c
    ld [$1c51], sp
    ld d, c
    jr z, jr_024_5133

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
    jr jr_024_50f7

    inc c
    dec b

jr_024_50f7:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_024_5100

    jr @-$01

jr_024_5100:
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
    ld b, $04

jr_024_5133:
    add hl, sp
    ld d, c
    ld d, b
    ld d, a
    add hl, sp
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, d
    ld d, b
    ld d, d
    ld d, b
    ld d, d
    ld d, b
    ld d, d
    ld d, b
    ld d, d
    ld d, b
    ld d, e
    ld d, b
    ld d, h
    ld d, b
    ld d, l
    ld d, b
    ld d, [hl]
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    inc e
    rra
    ld hl, $233f
    ccf
    rra
    dec e
    rrca
    ld [$0607], sp

jr_024_5164:
    inc bc
    inc bc
    rlca
    inc b
    rlca
    dec b
    ld c, $0f
    rrca
    dec bc
    ld b, $06
    ldh [$e0], a
    jr nc, jr_024_5164

    ld [hl], b
    ret nc

    ld a, h
    db $fc
    add d
    cp $fc
    db $fc
    ldh a, [$30]
    ld hl, sp+$28
    db $fc
    inc b
    db $fc
    inc h
    ld hl, sp+$18
    ldh a, [$f0]
    ldh [$a0], a
    ld [hl], b
    ret nc

    ldh a, [$90]
    ld h, b
    ld h, b
    rlca
    rlca
    add hl, bc
    rrca

jr_024_5194:
    inc de
    ld e, $27
    ccf
    jr z, jr_024_51d9

    ld d, a
    ld a, a
    ld e, a
    ld a, d
    ccf
    dec hl
    ccf
    inc h
    rra
    inc d
    ccf
    dec hl
    ccf
    ccf
    inc c
    rrca
    rrca
    dec bc
    rrca
    add hl, bc
    ld b, $06
    ret nz

    ret nz

    jr nz, jr_024_5194

    sub b
    ldh a, [$c8]
    ld hl, sp+$28
    ld hl, sp-$2c
    db $fc
    db $f4
    cp h
    ld hl, sp-$58
    ld hl, sp+$48
    ldh a, [$50]
    ldh a, [$b0]
    ld hl, sp-$18
    ld a, b
    add sp, -$10
    or b
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    inc c
    rrca
    ld c, $0b
    ld a, $3f

jr_024_51d8:
    ld b, c

jr_024_51d9:
    ld a, a
    ccf
    ccf
    rrca
    inc c
    rra
    inc d
    ccf
    jr nz, jr_024_5222

    inc h
    rra
    add hl, de
    rlca
    ld b, $0f
    add hl, bc
    ld c, $0f
    rrca
    dec bc
    ld b, $06
    add b
    add b

jr_024_51f2:
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_024_51d8

    jr c, jr_024_51f2

    add h
    db $fc
    call nz, $f8fc
    cp b
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$f0]
    ldh a, [$b0]
    ldh [$e0], a
    ld [hl], b
    ret nc

    ldh a, [$90]
    ld h, b
    ld h, b
    rlca
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_024_5257

    jr nz, jr_024_5259

    ld b, e
    ld a, a
    ld b, b
    ld a, a
    jr nc, jr_024_525f

    jr c, @+$31

jr_024_5222:
    rra
    rra
    ccf
    inc h
    ccf
    ccf
    inc c
    rrca

jr_024_522a:
    rrca
    dec bc
    rrca
    add hl, bc
    ld b, $06
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp-$7c
    db $fc
    inc b
    db $fc
    jr @-$06

    jr c, jr_024_522a

    ldh a, [$f0]
    ldh a, [$50]
    ld hl, sp-$18
    ld a, b
    add sp, -$10
    or b
    ret nz

    ret nz

    nop
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc b

jr_024_5257:
    rlca
    inc e

jr_024_5259:
    rra
    ld hl, $233f
    ccf
    rra

jr_024_525f:
    dec e
    rrca
    ld [$0607], sp

jr_024_5264:
    rrca
    rrca
    rrca
    dec c
    rlca
    rlca
    ld c, $0b
    rrca
    add hl, bc
    ld b, $06
    ldh [$e0], a
    jr nc, jr_024_5264

    ld [hl], b
    ret nc

    ld a, h
    db $fc
    add d
    cp $fc
    db $fc
    ldh a, [$30]
    ld hl, sp+$28
    db $fc
    inc b
    db $fc
    inc h
    ld hl, sp-$68
    ldh [$60], a
    ldh a, [$90]
    ld [hl], b
    ldh a, [$f0]
    ret nc

    ld h, b
    ld h, b
    rlca
    rlca
    add hl, bc
    rrca

jr_024_5294:
    inc de
    ld e, $27
    ccf
    jr z, jr_024_52d9

    ld d, a
    ld a, a
    ld e, a
    ld a, d
    ccf
    dec hl
    ccf
    inc h
    rra
    inc d
    rra
    dec de
    ccf
    cpl
    inc a
    cpl
    rra
    dec de
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_024_5294

    sub b
    ldh a, [$c8]
    ld hl, sp+$28
    ld hl, sp-$2c
    db $fc
    db $f4
    cp h
    ld hl, sp-$58
    ld hl, sp+$48
    ldh a, [$50]
    ld hl, sp-$58
    ld hl, sp-$08
    ld h, b
    ldh [$e0], a
    and b
    ldh [rNR41], a
    ret nz

    ret nz

    rlca
    rlca
    inc c
    rrca
    ld c, $0b
    ld a, $3f

jr_024_52d8:
    ld b, c

jr_024_52d9:
    ld a, a
    ccf
    ccf
    rrca
    inc c
    rra
    inc d
    ccf
    jr nz, jr_024_5322

    inc h
    rra
    jr jr_024_52f6

    rrca
    rlca
    dec b
    ld c, $0b
    rrca
    add hl, bc
    ld b, $06
    add b
    add b

jr_024_52f2:
    ld b, b
    ret nz

    ld b, b
    ret nz

jr_024_52f6:
    jr nz, jr_024_52d8

    jr c, jr_024_52f2

    add h
    db $fc
    call nz, $f8fc
    cp b
    ldh a, [rNR10]
    ldh [$60], a
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [$a0], a
    ld [hl], b
    ldh a, [$f0]
    ret nc

    ld h, b
    ld h, b
    rlca
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_024_5357

    jr nz, jr_024_5359

    ld b, e
    ld a, a
    ld b, b
    ld a, a
    jr nc, jr_024_535f

    jr c, jr_024_5351

jr_024_5322:
    rra
    rra
    rra
    inc d
    ccf
    cpl
    inc a
    cpl

jr_024_532a:
    rra
    dec de
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp-$7c
    db $fc
    inc b
    db $fc
    jr @-$06

    jr c, jr_024_532a

    ldh a, [$f0]
    ld hl, sp+$48
    ld hl, sp-$08
    ld h, b
    ldh [$e0], a
    and b
    ldh [rNR41], a
    ret nz

    ret nz

    nop

jr_024_5351:
    nop
    ld bc, $0201
    inc bc
    ld [bc], a

jr_024_5357:
    inc bc
    inc b

jr_024_5359:
    rlca
    inc e
    rra
    ld hl, $233f

jr_024_535f:
    ccf
    rra
    dec e
    rrca
    ld [$0303], sp

jr_024_5366:
    rlca
    inc b
    rlca
    dec b
    ld c, $0f
    rrca
    dec bc
    ld b, $06
    nop
    nop
    ldh [$e0], a
    jr nc, jr_024_5366

    ld [hl], b
    ret nc

    ld a, h
    db $fc
    add d
    cp $fc
    db $fc
    ldh a, [$30]
    ld hl, sp+$28
    db $fc
    inc b
    ld hl, sp+$18
    ldh a, [$f0]
    ldh [$a0], a
    ld [hl], b
    ret nc

    ldh a, [$90]
    ld h, b
    ld h, b
    nop
    nop
    rlca
    rlca
    add hl, bc
    rrca

jr_024_5396:
    inc de
    ld e, $27
    ccf
    jr z, jr_024_53db

    ld d, a
    ld a, a
    ld e, a
    ld a, d
    ccf
    dec hl
    ccf
    inc h
    ccf
    dec hl
    ccf
    ccf
    inc c
    rrca
    rrca
    dec bc
    rrca
    add hl, bc
    ld b, $06
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_024_5396

    sub b
    ldh a, [$c8]
    ld hl, sp+$28
    ld hl, sp-$2c
    db $fc
    db $f4
    cp h
    ld hl, sp-$58
    ld hl, sp+$48
    ldh a, [$b0]
    ld hl, sp-$18
    ld a, b
    add sp, -$10
    or b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    inc c
    rrca
    ld c, $0b
    ld a, $3f

jr_024_53da:
    ld b, c

jr_024_53db:
    ld a, a
    ccf
    ccf
    rrca
    inc c
    rra
    inc d
    ccf
    jr nz, jr_024_5404

    add hl, de
    rlca
    ld b, $0f
    add hl, bc
    ld c, $0f
    rrca
    dec bc
    ld b, $06
    nop
    nop
    add b
    add b

jr_024_53f4:
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_024_53da

    jr c, jr_024_53f4

    add h
    db $fc
    call nz, $f8fc
    cp b
    ldh a, [rNR10]

jr_024_5404:
    ldh a, [$f0]
    ldh a, [$b0]
    ldh [$e0], a
    ld [hl], b
    ret nc

    ldh a, [$90]
    ld h, b
    ld h, b
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    jr nz, @+$41

    jr nz, jr_024_545b

    ld b, e
    ld a, a
    ld b, b
    ld a, a
    jr nc, jr_024_5461

    jr c, @+$31

    ccf
    inc h
    ccf
    ccf
    inc c
    rrca
    rrca
    dec bc

jr_024_542c:
    rrca
    add hl, bc
    ld b, $06
    nop
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp-$7c
    db $fc
    inc b
    db $fc
    jr @-$06

    jr c, jr_024_542c

    ldh a, [$50]
    ld hl, sp-$18
    ld a, b
    add sp, -$10
    or b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0302
    ld c, $0f
    db $10

jr_024_545b:
    rra
    ld de, $0f1f
    ld c, $07

jr_024_5461:
    inc b
    rlca
    ld b, $03
    inc bc
    rlca
    inc b
    rlca
    dec b
    ld c, $0f

jr_024_546c:
    rrca
    dec bc
    ld b, $06
    ldh a, [$f0]
    jr jr_024_546c

    jr c, @-$16

    ld a, $fe
    ld b, c
    rst $38
    cp $fe
    ld hl, sp-$68
    db $fc
    sub h
    cp $02
    db $fc
    inc h
    ld hl, sp+$18
    ldh a, [$f0]
    ldh [$a0], a
    ld [hl], b
    ret nc

    ldh a, [$90]
    ld h, b
    ld h, b
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    rrca
    inc de
    rra
    inc d
    rra
    dec hl
    ccf
    cpl
    dec a
    rra
    dec d
    rra
    ld [de], a
    rra
    inc d
    ccf
    dec hl
    ccf
    ccf
    inc c
    rrca
    rrca
    dec bc
    rrca
    add hl, bc
    ld b, $06
    ldh [$e0], a
    sub b
    ldh a, [$c8]
    ld a, b
    db $e4
    db $fc
    inc d
    db $fc
    ld [$fafe], a
    ld e, [hl]
    db $fc
    call nc, Call_000_24fc
    ldh a, [$50]
    ldh a, [$b0]
    ld hl, sp-$18
    ld a, b
    add sp, -$10
    or b
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    ld b, $07

jr_024_54d4:
    rlca
    dec b

jr_024_54d6:
    rra
    rra
    jr nz, jr_024_5519

    rra
    rra
    rlca
    ld b, $0f
    ld a, [bc]
    rra
    db $10
    ccf
    inc h
    rra
    add hl, de
    rlca
    ld b, $0f
    add hl, bc
    ld c, $0f
    rrca
    dec bc
    ld b, $06
    ret nz

    ret nz

    jr nz, jr_024_54d4

    jr nz, jr_024_54d6

    db $10
    ldh a, [$9c]
    db $fc
    jp nz, $e2fe

    ld a, [hl]
    db $fc
    ld e, h
    ld hl, sp+$08
    ldh [$60], a
    ldh a, [$f0]
    ldh a, [$b0]
    ldh [$e0], a
    ld [hl], b
    ret nc

    ldh a, [$90]
    ld h, b
    ld h, b
    inc bc
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    db $10

jr_024_5519:
    rra
    ld hl, $203f
    ccf
    jr jr_024_553f

    inc e
    rla
    rra
    rra
    ccf
    inc h
    ccf
    ccf
    inc c
    rrca
    rrca
    dec bc
    rrca
    add hl, bc
    ld b, $06
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    jp nz, $02fe

    cp $0c

jr_024_553f:
    db $fc
    inc e
    db $f4
    ldh a, [$f0]
    ldh a, [$50]
    ld hl, sp-$18
    ld a, b
    add sp, -$10
    or b
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    inc b
    rlca
    ld [$390f], sp
    ccf
    ld b, e
    ld a, a
    ld b, a
    ld a, [hl]
    ccf
    ld a, [hl-]
    rra
    db $10
    rlca
    ld b, $03
    inc bc
    rlca
    inc b
    rlca
    dec b
    ld c, $0f
    rrca
    dec bc
    ld b, $06
    ret nz

    ret nz

    ld h, b
    ldh [$e0], a
    and b
    ld hl, sp-$08
    inc b
    db $fc
    ld hl, sp-$08
    ldh [$60], a
    ldh a, [$50]
    ld hl, sp+$08
    db $fc
    inc h
    ld hl, sp+$18
    ldh a, [$f0]
    ldh [$a0], a
    ld [hl], b
    ret nc

    ldh a, [$90]
    ld h, b
    ld h, b
    rrca
    rrca
    ld [de], a
    rra
    daa
    dec a

jr_024_5596:
    ld c, a
    ld a, a
    ld d, b
    ld a, a
    xor a
    rst $38
    cp a
    push af
    ld a, a
    ld d, a
    ld a, a
    ld c, b
    rra
    inc d
    ccf
    dec hl
    ccf
    ccf
    inc c
    rrca
    rrca
    dec bc
    rrca
    add hl, bc
    ld b, $06
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_024_5596

    sub b
    ldh a, [$50]
    ldh a, [$a8]
    ld hl, sp-$18
    ld a, b
    ldh a, [$50]
    ldh a, [$90]
    ldh a, [$50]
    ldh a, [$b0]
    ld hl, sp-$18
    ld a, b
    add sp, -$10
    or b
    ret nz

    ret nz

    nop
    nop
    rrca
    rrca
    jr jr_024_55f3

    inc e
    rla
    ld a, h
    ld a, a
    add d
    rst $38
    ld a, a
    ld a, a
    rra
    add hl, de
    ccf
    add hl, hl
    ld a, a
    ld b, b
    ccf
    inc h
    rra
    add hl, de
    rlca
    ld b, $0f
    add hl, bc
    ld c, $0f
    rrca
    dec bc
    ld b, $06
    nop
    nop
    add b

jr_024_55f3:
    add b
    add b
    add b
    ld b, b
    ret nz

    ld [hl], b
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$10
    ld [hl], b
    ldh [rNR41], a
    ldh [$60], a
    ldh a, [$f0]
    ldh a, [$b0]
    ldh [$e0], a
    ld [hl], b
    ret nc

    ldh a, [$90]
    ld h, b
    ld h, b
    rrca
    rrca
    db $10
    rra
    jr nz, jr_024_5655

jr_024_5616:
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add a
    rst $38
    add b
    rst $38
    ld h, b
    ld a, a
    ld [hl], b
    ld e, a
    rra
    rra
    ccf
    inc h
    ccf
    ccf
    inc c
    rrca
    rrca
    dec bc
    rrca
    add hl, bc
    ld b, $06
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_024_5616

    db $10
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$30
    ldh a, [rSVBK]
    ret nc

    ldh a, [$f0]
    ldh a, [$50]
    ld hl, sp-$18
    ld a, b
    add sp, -$10
    or b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0201

jr_024_5655:
    inc bc

jr_024_5656:
    ld [bc], a
    inc bc
    nop
    inc bc
    inc c
    rrca
    inc de
    rra
    rrca
    dec c
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    nop
    inc bc
    ld bc, $0706
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

    jr nz, jr_024_5656

    ld h, b
    ldh [$78], a
    ld hl, sp-$7c
    db $fc
    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$08
    ldh [$e0], a
    ret nz

    add b
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
    dec b
    rlca
    dec bc
    ld c, $13
    rra
    inc d
    rra
    cpl
    ld a, $1f
    rla
    rra
    db $10
    rrca
    ld [$1f1f], sp
    inc b
    rlca
    rlca
    rlca
    rlca
    dec b
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

    and b
    ldh [$d0], a
    ldh a, [rNR10]
    ldh a, [$e8]
    cp b
    ldh a, [$90]
    ldh a, [$50]
    ldh [$60], a
    ldh a, [$d0]
    ld [hl], b
    ret nc

    ldh [$a0], a
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
    inc b
    rlca
    ld b, $07
    ld e, $1f
    ld hl, $073f
    inc b
    rrca
    ld [$101f], sp
    rra
    db $10
    inc bc
    ld [bc], a
    rlca
    dec b
    ld b, $07
    rlca
    rlca

jr_024_56ec:
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

    ld b, b
    ret nz

    nop
    ret nz

    jr nc, jr_024_56ec

    ret z

    ld hl, sp-$10
    or b
    ldh [rNR41], a
    ret nz

    ld b, b
    ldh [$a0], a
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
    inc b
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    jr nz, jr_024_575d

    jr jr_024_573f

    inc e
    rla
    rrca
    rrca
    rra
    rra
    inc b
    rlca
    rlca
    rlca
    rlca
    dec b
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

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$30

jr_024_573f:
    ldh a, [$30]
    ret nc

    ldh [$e0], a
    ldh a, [$d0]
    ld [hl], b
    ret nc

    ldh [$a0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld h, d
    ld d, a
    ld h, l
    ld d, a
    ld l, e
    ld d, a
    ld l, [hl]
    ld d, a
    ld a, c
    ld d, a
    add b
    ld d, a
    adc b

jr_024_575d:
    ld d, a
    sbc h
    ld d, a
    xor b
    ld d, a
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
    jr jr_024_5777

    inc c
    dec b

jr_024_5777:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_024_5780

    jr @-$01

jr_024_5780:
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
    inc b
    inc b
    cp c
    ld d, a
    ret nc

    ld e, l
    cp c
    ld d, a
    ret nc

    ld d, a
    ret nc

    ld e, b
    ret nc

    ld e, b
    ret nc

    ld e, b
    ret nc

    ld e, b
    ret nc

    ld e, b
    ret nc

    ld e, c
    ret nc

    ld e, d
    ret nc

    ld e, e
    ret nc

    ld e, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    add hl, bc
    rrca
    db $10
    rra
    db $10
    rra
    ld hl, $213f
    ccf
    ld h, $3f
    ld d, d
    ld a, a
    ld a, a
    ld a, a
    ld e, a
    ld [hl], d
    ccf
    ccf
    ld h, b
    ld h, b
    sub b
    ldh a, [$88]
    ld hl, sp+$1c
    db $f4
    cp h
    db $e4
    db $fc
    ld l, h
    db $fc
    inc h
    cp $c2
    ld a, $e2
    ccf
    jp hl


    ld a, $ee
    inc a
    db $f4
    ret c

    ld hl, sp-$10
    ld [hl], b
    ldh a, [$50]
    ldh [$e0], a
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld a, [bc]
    rrca
    rra
    dec e
    ccf
    ld a, [hl+]
    ccf
    jr z, @+$61

    ld [hl], d
    ld e, a
    ld [hl], c
    adc a
    ld sp, hl
    sbc a
    rst $38
    rst $10
    db $fc
    di
    cp a
    ld a, l
    ld a, a
    ld e, $12
    inc c
    inc c
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [$f0], a
    ld [hl], b
    ld hl, sp-$58
    ld hl, sp+$28
    ld hl, sp-$68
    db $f4
    inc e
    db $e4
    inc a
    ld [c], a
    cp $d2
    ld a, [hl]
    sbc [hl]
    cp $fe
    ld a, [c]
    ld l, h
    ld l, h
    nop
    nop
    ld b, $06
    add hl, bc
    rrca
    ld de, $381f
    cpl
    dec a
    daa
    ccf
    ld [hl], $3f
    inc h
    ld a, a
    ld b, e
    ld a, h
    ld b, a
    db $fc
    sub a
    ld l, b
    ld a, a
    jr @+$21

    dec a
    cpl
    rra
    dec de
    rrca
    add hl, bc
    rlca
    rlca
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$90], a
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    add h
    db $fc
    jp nz, Jump_024_63fe

    cp a
    rst $38
    db $fd
    cp $b2
    call c, Call_000_01dc
    ld bc, $0302
    inc b
    rlca
    ld [$180f], sp
    rra
    jr c, jr_024_58cb

    jr nc, jr_024_58dd

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    sub b
    rst $38

jr_024_58a4:
    ret c

    rst $38

jr_024_58a6:
    ldh a, [$bf]
    ld [hl], d
    ld a, a

jr_024_58aa:
    rra
    rra
    ld e, $12
    inc c
    inc c
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

jr_024_58b8:
    jr nc, jr_024_58aa

    jr c, jr_024_58a4

    jr c, jr_024_58a6

    jr jr_024_58b8

    inc b
    db $fc
    inc b
    db $fc
    ld [de], a
    cp $32
    cp $5e
    cp $fe

jr_024_58cb:
    ld a, [c]
    ld l, h
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    add hl, bc

jr_024_58dd:
    rrca
    db $10
    rra
    db $10
    rra
    jr nz, jr_024_5923

    ld hl, $433f
    ld a, a
    add $fd
    rst $38
    cp a
    ld a, a
    ld c, l
    dec sp
    dec sp
    ld h, b
    ld h, b
    sub b
    ldh a, [$88]
    ld hl, sp+$1c
    db $f4
    cp h
    db $e4
    db $fc
    ld l, h
    db $fc
    inc h
    cp $c2

jr_024_5900:
    ld a, $e2
    ccf
    jp hl


    ld d, $fe
    jr jr_024_5900

    cp h
    db $f4
    ld hl, sp-$28
    ldh a, [$90]
    ldh [$e0], a
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld a, [bc]
    rrca
    rra
    dec e
    ccf
    ld a, [hl+]
    ccf
    jr z, jr_024_595e

    ld [hl-], a
    ld e, a
    ld [hl], c
    ld c, a

jr_024_5923:
    ld a, c
    adc [hl]
    rst $38
    sbc a
    ei
    rst $30
    db $fc
    rst $38
    sbc a
    ld l, h
    ld l, h
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [$f0], a
    ld [hl], b
    ld hl, sp-$58
    ld hl, sp+$28
    db $f4
    sbc h
    db $f4
    inc e
    ld [c], a
    ld a, $f2
    cp $f6
    cp [hl]
    sbc $7a
    db $fc
    db $fc
    ldh a, [$90]
    ld h, b
    ld h, b
    ld b, $06
    add hl, bc
    rrca
    ld de, $381f
    cpl
    dec a
    daa
    ccf
    ld [hl], $3f
    inc h

jr_024_595e:
    ld a, a
    ld b, e
    ld a, h
    ld b, a
    db $fc
    sub a
    ld a, h
    ld [hl], a
    inc a
    cpl
    dec de
    rra
    rrca
    ld c, $0f
    ld a, [bc]
    rlca
    rlca
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$90], a
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp-$7c
    db $fc
    add h
    db $fc
    ld h, h
    db $fc
    ld c, d
    cp $fe
    cp $fa
    ld c, [hl]
    db $fc
    db $fc
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$180f], sp
    rra
    jr c, @+$31

    jr c, @+$31

    jr nc, jr_024_59df

    ld b, b
    ld a, a
    ld b, b
    ld a, a

jr_024_59a4:
    sub b
    rst $38
    sbc b
    rst $38
    db $f4
    rst $38

jr_024_59aa:
    rst $38
    sbc a
    ld l, h
    ld l, h
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

jr_024_59b6:
    jr nz, @-$1e

    jr nc, jr_024_59aa

    jr c, jr_024_59a4

    jr jr_024_59b6

    inc b
    db $fc
    inc b
    db $fc
    ld [de], a
    cp $36
    cp $1e
    ld a, [$fc9c]
    ldh a, [$f0]
    ldh a, [$90]
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    add hl, bc

jr_024_59df:
    rrca
    db $10
    rra
    db $10
    rra
    ld hl, $263f
    ccf
    ld d, d
    ld a, a
    ld a, a
    ld a, a
    ld e, a
    ld [hl], d
    ccf
    ccf
    nop
    nop
    ld h, b
    ld h, b
    sub b
    ldh a, [$88]
    ld hl, sp+$1c
    db $f4
    cp h
    db $e4
    db $fc
    ld l, h
    db $fc
    inc h
    cp $c2
    ld a, $e2
    ld a, $ee
    inc a
    db $f4
    ret c

    ld hl, sp-$10
    ld [hl], b
    ldh a, [$50]
    ldh [$e0], a
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld a, [bc]
    rrca
    rra
    dec e
    ccf
    ld a, [hl+]
    ccf
    jr z, @+$61

    ld [hl], d
    ld e, a
    ld [hl], c
    sbc a
    rst $38
    rst $10
    db $fc
    di
    cp a
    ld a, l
    ld a, a
    ld e, $12
    inc c
    inc c
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [$f0], a
    ld [hl], b
    ld hl, sp-$58
    ld hl, sp+$28
    ld hl, sp-$68
    db $f4
    inc e
    ld [c], a
    cp $d2
    ld a, [hl]
    sbc [hl]
    cp $fe
    ld a, [c]
    ld l, h
    ld l, h
    nop
    nop
    nop
    nop
    ld b, $06
    add hl, bc
    rrca
    ld de, $381f
    cpl
    dec a
    daa
    ccf
    ld [hl], $3f
    inc h
    ld a, a
    ld b, e
    ld a, h
    ld b, a
    ld l, b
    ld a, a
    jr @+$21

    dec a
    cpl
    rra
    dec de
    rrca
    add hl, bc
    rlca
    rlca
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

    ld b, b
    ret nz

    and b
    ldh [$90], a
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp-$7c
    db $fc
    jp nz, Jump_024_63fe

    cp a
    rst $38
    db $fd
    cp $b2
    call c, Call_000_00dc
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$180f], sp
    rra
    jr c, jr_024_5acd

    jr nc, @+$41

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ret c

    rst $38

jr_024_5aa6:
    ldh a, [$bf]

jr_024_5aa8:
    ld [hl], d
    ld a, a
    rra
    rra

jr_024_5aac:
    ld e, $12
    inc c
    inc c
    nop
    nop

jr_024_5ab2:
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

jr_024_5aba:
    jr nc, jr_024_5aac

    jr c, jr_024_5aa6

    jr c, jr_024_5aa8

    jr jr_024_5aba

    inc b
    db $fc
    ld [de], a
    cp $32
    cp $5e
    cp $fe
    ld a, [c]
    ld l, h

jr_024_5acd:
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0302
    inc b
    rlca
    ld [$080f], sp
    rrca
    ld hl, $213f
    ccf
    ld h, $3f
    ld d, d
    ld a, a
    ld a, a
    ld a, a
    ld e, a
    ld [hl], d
    ccf
    ccf
    jr nc, @+$32

    ld c, b
    ld a, b
    call nz, $0efc
    ld a, [$f25e]
    cp $b6
    cp $92
    ld a, a
    pop hl
    rra
    pop af
    ccf
    jp hl


    ld a, $ee
    inc a
    db $f4
    ret c

    ld hl, sp-$10
    ld [hl], b
    ldh a, [$50]
    ldh [$e0], a
    nop
    nop
    ld bc, $0201
    inc bc

jr_024_5b16:
    dec b
    rlca
    rrca
    ld c, $1f
    dec d
    rra
    inc d
    cpl
    add hl, sp
    cpl
    jr c, jr_024_5ab2

    ld sp, hl
    sbc a
    rst $38
    rst $10
    db $fc
    di
    cp a
    ld a, l
    ld a, a
    ld e, $12
    inc c
    inc c
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_024_5b16

    ld d, b
    ldh a, [$f8]
    cp b
    db $fc
    ld d, h
    db $fc
    inc d
    db $fc
    ld c, h
    ld a, [$e48e]
    inc a
    ld [c], a
    cp $d2
    ld a, [hl]
    sbc [hl]
    cp $fe
    ld a, [c]
    ld l, h
    ld l, h
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$1c0f], sp
    rla

jr_024_5b58:
    ld e, $13
    rra
    dec de
    rra
    ld [de], a
    ccf
    ld hl, $233e
    db $fc
    sub a
    ld l, b
    ld a, a
    jr @+$21

    dec a
    cpl
    rra
    dec de
    rrca
    add hl, bc
    rlca
    rlca
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    jr nz, jr_024_5b58

    and b
    ldh [$d0], a
    ld [hl], b
    ret z

    ld a, b
    add h
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    add h
    db $fc
    jp nz, Jump_024_63fe

    cp a
    rst $38
    db $fd
    cp $b2
    call c, Call_000_00dc
    nop
    ld bc, $0201
    inc bc

jr_024_5b96:
    inc b
    rlca
    inc c
    rrca
    inc e
    rla
    jr jr_024_5bbd

    jr nz, jr_024_5bdf

    jr nz, @+$41

    sub b
    rst $38
    ret c

    rst $38
    ldh a, [$bf]
    ld [hl], d
    ld a, a
    rra
    rra
    ld e, $12
    inc c
    inc c
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_024_5b96

    db $10
    ldh a, [rNR23]
    ld hl, sp+$1c
    db $f4
    inc e

jr_024_5bbd:
    db $f4
    inc c
    db $fc
    ld [bc], a
    cp $04
    db $fc
    ld [de], a
    cp $32
    cp $5e
    cp $fe
    ld a, [c]
    ld l, h
    ld l, h
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    inc b
    rlca
    dec b
    rlca
    dec bc
    ld c, $13
    ld e, $21

jr_024_5bdf:
    ccf
    jr nz, jr_024_5c21

    ld hl, $213f
    ccf
    ld h, $3f
    ld d, d
    ld a, a
    ld a, a
    ld a, a
    ld e, a
    ld [hl], d
    ccf
    ccf
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [$38]
    add sp, $78
    ret z

    ld hl, sp-$28
    ld hl, sp+$48
    db $fc
    add h
    ld a, h
    call nz, $e93f
    ld a, $ee
    inc a
    db $f4
    ret c

    ld hl, sp-$10
    ld [hl], b
    ldh a, [$50]
    ldh [$e0], a
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    ld [$150f], sp
    rra
    ccf
    ld a, [hl-]
    ld a, a
    ld d, l
    ld a, a
    ld d, b
    cp a
    push hl
    cp a

jr_024_5c21:
    ld [c], a
    adc a
    ld sp, hl
    sbc a
    rst $38
    rst $10
    db $fc
    di
    cp a
    ld a, l
    ld a, a
    ld e, $12
    inc c
    inc c
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ldh [$e0], a
    ldh a, [$50]
    ldh a, [$50]
    ldh a, [$30]
    add sp, $38
    db $e4
    inc a
    ld [c], a
    cp $d2
    ld a, [hl]
    sbc [hl]
    cp $fe
    ld a, [c]
    ld l, h
    ld l, h
    nop
    nop
    inc c
    inc c
    ld [de], a
    ld e, $23
    ccf
    ld [hl], b
    ld e, a
    ld a, d
    ld c, a
    ld a, a
    ld l, l
    ld a, a
    ld c, c

jr_024_5c5e:
    cp $87
    ld hl, sp-$71
    db $fc
    sub a
    ld l, b
    ld a, a
    jr @+$21

    dec a
    cpl
    rra
    dec de
    rrca
    add hl, bc
    rlca
    rlca
    nop
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

    jr nz, jr_024_5c5e

    db $10
    ldh a, [rNR10]
    ldh a, [rDIV]
    db $fc
    add h
    db $fc
    jp nz, Jump_024_63fe

    cp a
    rst $38
    db $fd
    cp $b2
    call c, Call_000_02dc
    ld [bc], a
    dec b
    rlca
    ld [$100f], sp
    rra
    jr nc, jr_024_5cd9

    ld [hl], b
    ld e, a
    ld h, b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    sub b
    rst $38
    ret c

    rst $38
    ldh a, [$bf]
    ld [hl], d
    ld a, a
    rra
    rra
    ld e, $12
    inc c
    inc c

jr_024_5cb0:
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld h, b
    ldh [rSVBK], a
    ret nc

    ld [hl], b
    ret nc

    jr nc, jr_024_5cb0

    ld [$04f8], sp
    db $fc
    ld [de], a
    cp $32
    cp $5e
    cp $fe
    ld a, [c]
    ld l, h
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201

jr_024_5cd9:
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    ld [$080f], sp
    rrca
    ld de, $121f
    rra
    ld a, [hl+]
    ccf
    ccf
    ccf
    cpl
    ld a, [hl-]
    rra
    rra

jr_024_5cee:
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    and b
    ldh [$90], a
    ldh a, [$38]
    add sp, -$48
    ret z

Call_024_5cfc:
    ld hl, sp+$08
    db $fc
    call nz, $c43c
    ld a, $d2
    jr c, jr_024_5cee

    ldh a, [$f0]
    ldh [$60], a
    ldh [$60], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    nop
    inc bc
    ld b, $07
    rrca
    dec c
    rra
    inc d
    cpl
    ld a, [hl-]
    cpl
    add hl, sp
    ld b, a
    ld a, l
    ld l, e
    ld a, h
    ld a, e
    ld e, a
    dec a

jr_024_5d29:
    ccf
    ld c, $0a
    inc b
    inc b
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

    add b
    ret nz

    ldh [$60], a
    ldh a, [rNR10]
    ldh a, [$b0]
    add sp, $38
    ret z

    jr c, jr_024_5d29

    ld a, h
    cp h
    db $fc
    db $fc
    db $e4
    ld e, b
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    add hl, bc
    rrca
    inc e
    rla
    dec e
    inc de
    rra
    db $10
    ccf
    inc hl
    inc a
    inc hl
    ld a, h
    ld c, e
    inc c
    rrca
    dec e
    rla
    rrca
    rrca
    rlca
    dec b
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
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp-$3c
    db $fc
    ld b, [hl]
    cp [hl]
    cp $fa
    db $fc
    and h
    ld hl, sp-$08

jr_024_5d8e:
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    nop
    inc bc
    inc b
    rlca
    inc c
    rrca

jr_024_5d9c:
    jr @+$21

    jr nz, jr_024_5ddf

    jr nz, @+$41

    ld c, b
    ld a, a
    ld a, b
    ld e, a
    ld a, [hl-]
    ccf
    rrca
    rrca
    ld c, $0a
    inc b
    inc b
    nop
    nop

jr_024_5db0:
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

    jr nz, jr_024_5d9c

    jr nc, jr_024_5d8e

    jr nc, jr_024_5db0

    ld [$08f8], sp
    ld hl, sp+$24
    db $fc
    ld a, h
    db $fc
    db $fc
    db $e4
    ld e, b
    ld e, b
    nop
    nop
    nop
    nop
    ld [c], a
    ld e, l
    push hl
    ld e, l
    db $eb
    ld e, l
    xor $5d
    ld sp, hl
    ld e, l
    nop
    ld e, [hl]
    ld [$1c5e], sp

jr_024_5ddf:
    ld e, [hl]
    jr z, jr_024_5e40

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
    jr jr_024_5df7

    inc c
    dec b

jr_024_5df7:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_024_5e00

    jr @-$01

jr_024_5e00:
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
    ld h, e
    inc b
    ld b, c
    ld e, [hl]
    ld h, b
    ld h, h
    add hl, sp
    ld e, [hl]
    ld a, b
    ld a, [hl-]
    rst $38
    ld l, e
    add b
    ld [de], a
    nop

jr_024_5e40:
    nop
    ld h, b
    ld e, [hl]
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld h, b
    ld h, b
    ld h, c
    ld h, b
    ld h, d
    ld h, b
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0a0b
    rra
    rla
    rra
    dec e
    db $e3
    cp $f3
    cp [hl]
    ld a, a
    ld l, l
    ld d, a
    ld a, l
    ld a, a
    ld a, e
    ld a, l
    ld b, a
    ld a, c
    ld a, a
    ld d, e
    ld a, a
    sub a
    db $fd
    rst $28
    rst $28
    ldh [$e0], a
    ldh a, [$50]
    ld hl, sp+$58
    ret c

    add sp, $34
    db $fc
    ld l, $fe
    sbc a
    push af
    cp l
    db $eb
    cp d
    xor $5e
    or $3e
    ld a, [$ecbc]
    ldh a, [$f0]
    ld [hl], b
    ret nc

    ldh [$e0], a
    nop
    nop
    ld bc, $6701
    ld h, [hl]
    ld a, a
    ld e, d
    dec a
    daa
    rra
    ld a, [de]
    dec l
    ccf
    ld d, [hl]
    ld a, e
    cp a
    db $e4
    cp a
    jp hl


    sbc $f7
    rst $38
    cp e
    ld [hl], a
    ld e, h
    dec sp
    ccf
    ccf
    cpl
    ld e, $1e
    nop
    nop
    nop
    nop
    call z, $fccc
    or h
    ld a, b
    ret z

    ldh a, [$b0]
    ld l, b
    ld hl, sp-$2c
    cp h
    ld a, [$fe4e]
    ld l, $fe
    jp c, $bcec

    ret c

    ld a, b
    adc b
    ld hl, sp-$28
    ld hl, sp-$08
    xor b
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rrca
    ld a, [bc]
    rra
    ld a, [de]
    dec de
    rla
    inc l
    ccf
    ld [hl], h
    ld a, a
    ld sp, hl
    xor a
    cp l
    rst $10
    ld e, l
    ld [hl], a
    ld a, c
    ld l, a
    ld a, [hl]
    ld e, a
    scf
    scf
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    rlca
    dec b
    rlca
    rlca
    nop
    nop
    add b
    add b
    add b
    add b
    ret nc

    ld d, b
    ld hl, sp-$18
    ld hl, sp-$48
    rst $00
    ld a, a
    rst $08
    db $fd
    ld a, [hl]
    or $2a
    cp $fe
    cp $fe
    and d
    ld a, [hl]
    cp $2a
    cp $79
    rst $38
    add a
    add a
    ld bc, $6301
    ld h, d
    ld a, a
    ld e, [hl]
    dec a
    daa
    rra
    rra
    cpl
    ld a, [hl-]
    ld e, a
    ld [hl], a
    cp l
    rst $28
    cp a
    ld [$effd], a
    rst $38
    or a
    ld a, a
    ld e, b
    ccf
    ccf
    inc a
    cpl
    dec e
    rra
    ld b, $06
    nop
    nop
    adc h
    adc h
    db $fc
    db $f4
    ld a, b
    ret z

    ldh a, [$f0]
    add sp, -$48
    db $f4
    call c, $ee7a
    cp $ae
    ld a, [hl]
    ld [$dcfc], a
    ld hl, sp+$38
    ret z

    ld hl, sp-$08
    ld hl, sp-$08
    xor b
    ld [hl], b
    ld [hl], b
    nop
    nop
    ld bc, $0101
    ld bc, $0a0b
    rra
    rla
    rra
    dec e
    db $e3
    cp $f3
    cp a
    ld a, [hl]
    ld l, a
    ld d, h
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld b, l
    ld a, [hl]
    ld a, a
    ld d, h
    ld a, a
    sbc [hl]
    rst $38
    pop hl
    pop hl
    ldh [$e0], a
    ldh a, [$50]
    ld hl, sp+$58
    ret c

    add sp, $34
    db $fc
    ld l, $fe
    sbc a
    push af
    cp l
    db $eb
    cp d
    xor $9e
    or $7e
    ld a, [$ecec]
    ld b, b
    ret nz

    ld b, b
    ret nz

    ldh [$a0], a
    ldh [$e0], a
    ld bc, $6701
    ld h, [hl]
    ld a, a
    ld e, d
    dec a
    daa
    rra
    ld a, [de]
    dec l
    ccf
    ld d, [hl]
    ld a, e
    cp a
    db $e4
    rst $38
    jp hl


    cp $b7
    ld l, a
    ld a, e
    scf
    inc a
    inc hl
    ccf
    scf
    ccf
    ld a, $2a
    inc e
    inc e
    nop
    nop
    call z, $fccc
    or h
    ld a, b
    ret z

    ldh a, [$b0]
    ld l, b
    ld hl, sp-$2c
    cp h
    ld a, [$fa4e]
    ld l, $f6
    sbc $fe
    cp d
    call c, $b874
    ld hl, sp-$08
    add sp, -$10
    ldh a, [rP1]
    nop
    rlca
    rlca
    rrca
    ld a, [bc]
    rra
    ld a, [de]
    dec de
    rla
    inc l
    ccf
    ld [hl], h
    ld a, a
    ld sp, hl
    xor a
    cp l
    rst $10
    ld e, l
    ld [hl], a
    ld a, d
    ld l, a
    ld a, h
    ld e, a
    dec a
    scf
    rrca
    rrca
    ld c, $0b
    rlca
    rlca
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nc

    ld d, b
    ld hl, sp-$18
    ld hl, sp-$48
    rst $00
    ld a, a
    rst $08
    ld a, l
    cp $b6
    ld [$febe], a
    sbc $be
    ld [c], a
    sbc [hl]
    cp $ca
    cp $e9
    cp a
    rst $30
    rst $30
    ld bc, $6301
    ld h, d
    ld a, a
    ld e, [hl]
    dec a
    daa
    rra
    rra
    cpl
    ld a, [hl-]
    ld e, a
    ld [hl], a
    cp l
    rst $28
    rst $38
    ld [$affd], a
    ld a, a
    ld [hl], a
    ccf
    jr c, jr_024_6060

    ccf
    ld a, $3f
    ccf
    dec hl
    inc e
    inc e
    nop
    nop
    adc h
    adc h
    db $fc
    db $f4
    ld a, b
    ret z

    ldh a, [$f0]
    add sp, -$48
    db $f4
    call c, $ee7a
    ld a, [$7eae]
    xor $fe
    jp c, Jump_000_34fc

    ld hl, sp-$08
    ld a, b
    add sp, $70
    ldh a, [$c0]
    ret nz

jr_024_6060:
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0a0b
    rra
    rla
    rra
    dec e
    db $e3
    cp $f3
    cp [hl]
    ld a, a
    ld l, l
    ld a, a
    ld a, e
    ld a, l
    ld b, a
    ld a, c
    ld a, a
    ld d, e
    ld a, a
    sub a
    db $fd
    rst $28
    rst $28
    nop
    nop
    ldh [$e0], a
    ldh a, [$50]
    ld hl, sp+$58
    ret c

    add sp, $34
    db $fc
    ld l, $fe
    sbc a
    push af
    cp l
    db $eb
    cp d
    xor $3e
    ld a, [$ecbc]
    ldh a, [$f0]
    ld [hl], b
    ret nc

    ldh [$e0], a
    nop
    nop
    nop
    nop
    ld bc, $6701
    ld h, [hl]
    ld a, a
    ld e, d
    dec a
    daa
    rra
    ld a, [de]
    dec l
    ccf
    ld d, [hl]
    ld a, e
    cp a
    db $e4
    cp a
    jp hl


    rst $38
    cp e
    ld [hl], a
    ld e, h
    dec sp
    ccf
    ccf
    cpl
    ld e, $1e
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $fccc
    or h
    ld a, b
    ret z

    ldh a, [$b0]
    ld l, b
    ld hl, sp-$2c
    cp h
    ld a, [$fe4e]
    ld l, $ec
    cp h
    ret c

    ld a, b
    adc b
    ld hl, sp-$28
    ld hl, sp-$08
    xor b
    ld [hl], b
    ld [hl], b
    nop
    nop
    rlca
    rlca
    rrca
    ld a, [bc]
    rra
    ld a, [de]
    dec de
    rla
    inc l
    ccf
    ld [hl], h
    ld a, a
    ld sp, hl
    xor a
    cp l
    rst $10
    ld e, l
    ld [hl], a
    ld a, [hl]
    ld e, a
    scf
    scf
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    rlca
    dec b
    rlca
    rlca
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nc

    ld d, b
    ld hl, sp-$18
    ld hl, sp-$48
    rst $00
    ld a, a
    rst $08
    db $fd
    ld a, [hl]
    or $fe
    cp $fe
    and d
    ld a, [hl]
    cp $2a
    cp $79
    rst $38
    add a
    add a
    nop
    nop
    ld bc, $6301
    ld h, d
    ld a, a
    ld e, [hl]
    dec a
    daa
    rra
    rra
    cpl
    ld a, [hl-]
    ld e, a
    ld [hl], a
    cp l
    rst $28
    cp a
    ld [$b7ff], a
    ld a, a
    ld e, b
    ccf
    ccf
    inc a
    cpl
    dec e
    rra
    ld b, $06
    nop
    nop
    nop
    nop
    adc h
    adc h
    db $fc
    db $f4
    ld a, b
    ret z

    ldh a, [$f0]
    add sp, -$48
    db $f4
    call c, $ee7a
    cp $ae
    db $fc
    call c, Call_000_38f8
    ret z

    ld hl, sp-$08
    ld hl, sp-$08
    xor b
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    rrca
    dec bc
    rrca
    ld c, $71
    ld a, a
    ld a, c
    ld e, a
    ccf
    ld [hl], $57
    ld a, l
    ld a, a
    ld a, e
    ld a, l
    ld b, a
    ld a, c
    ld a, a
    ld d, e
    ld a, a
    sub a
    db $fd
    rst $28
    rst $28
    ld [hl], b
    ld [hl], b
    ld hl, sp-$58
    db $fc
    xor h
    db $ec
    ld [hl], h
    sbc d
    cp $97
    rst $38
    rst $08
    ld a, d
    sbc $75
    db $dd
    rst $30
    ld e, [hl]
    or $3e
    ld a, [$ecbc]
    ldh a, [$f0]
    ld [hl], b
    ret nc

    ldh [$e0], a
    nop
    nop
    nop
    nop
    inc sp
    inc sp
    ccf
    dec l
    ld e, $13
    rrca
    dec c
    ld d, $1f
    dec hl
    dec a
    ld e, a
    ld [hl], d
    ld e, a
    ld [hl], h
    sbc $f7
    rst $38
    cp e
    ld [hl], a
    ld e, h
    dec sp
    ccf
    ccf
    cpl
    ld e, $1e
    nop
    nop
    add b
    add b
    and $66
    cp $5a
    cp h
    db $e4
    ld hl, sp+$58
    or h
    db $fc
    ld l, d
    sbc $fd
    daa
    rst $38
    sub a
    cp $da
    db $ec
    cp h
    ret c

    ld a, b
    adc b
    ld hl, sp-$28
    ld hl, sp-$08
    xor b
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    rlca
    dec b
    rrca
    dec c
    dec c
    dec bc
    ld d, $1f
    ld a, [hl-]
    ccf
    ld a, h
    ld d, a
    ld e, [hl]
    ld l, e
    ld l, $3b
    ld a, c
    ld l, a
    ld a, [hl]
    ld e, a
    scf
    scf
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    rlca
    dec b
    rlca
    rlca
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add sp, -$58
    ld a, h
    db $f4
    ld a, h
    call c, $bfe3
    rst $20
    cp $bf
    ei
    ld a, [hl+]
    cp $fe
    cp $fe
    and d
    ld a, [hl]
    cp $2a
    cp $79
    rst $38
    add a
    add a
    nop
    nop
    ld sp, $3f31
    cpl
    ld e, $13
    rrca
    rrca
    rla
    dec e
    cpl
    dec sp
    ld e, [hl]
    ld [hl], a
    ld e, a
    ld [hl], l
    db $fd
    rst $28
    rst $38
    or a
    ld a, a
    ld e, b
    ccf
    ccf
    inc a
    cpl
    dec e
    rra
    ld b, $06
    add b
    add b
    add $46
    cp $7a
    cp h
    db $e4
    ld hl, sp-$08
    db $f4
    ld e, h
    ld a, [$bdee]
    rst $30
    rst $38
    ld d, a
    ld a, [hl]
    ld [$dcfc], a
    ld hl, sp+$38
    ret z

    ld hl, sp-$08
    ld hl, sp-$08
    xor b
    ld [hl], b
    ld [hl], b
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    rla
    dec d
    ld a, $2f
    ld a, $3b
    rst $00
    db $fd
    rst $20
    ld a, l
    rst $38
    db $db
    ld d, a
    ld a, l
    ld a, a
    ld a, e
    ld a, l
    ld b, a
    ld a, c
    ld a, a
    ld d, e
    ld a, a
    sub a
    db $fd
    rst $28
    rst $28
    ret nz

    ret nz

    ldh [$a0], a
    ldh a, [$b0]
    or b
    ret nc

    ld l, b
    ld hl, sp+$5c
    db $fc
    ld a, $ea
    ld a, d
    sub $74
    call c, $f65e
    ld a, $fa
    cp h
    db $ec
    ldh a, [$f0]
    ld [hl], b
    ret nc

    ldh [$e0], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    rst $08
    call $b5ff
    ld a, d
    ld c, a
    ccf
    dec [hl]
    ld e, d
    ld a, a
    xor l
    rst $30
    ld a, a
    ret z

    ld a, a
    jp nc, $f7de

    rst $38
    cp e
    ld [hl], a
    ld e, h
    dec sp
    ccf
    ccf
    cpl
    ld e, $1e
    nop
    nop
    nop
    nop
    sbc b
    sbc b
    ld hl, sp+$68
    ldh a, [$90]
    ldh [$60], a
    ret nc

    ldh a, [$a8]
    ld a, b
    db $f4
    sbc h
    db $fc
    ld e, h
    cp $da
    db $ec
    cp h
    ret c

    ld a, b
    adc b
    ld hl, sp-$28
    ld hl, sp-$08
    xor b
    ld [hl], b
    ld [hl], b
    ld c, $0e
    rra
    dec d
    ccf
    dec [hl]
    scf
    ld l, $59
    ld a, a
    jp hl


    rst $38
    di
    ld e, [hl]
    ld a, e
    xor a
    cp d
    rst $28
    ld a, c
    ld l, a
    ld a, [hl]
    ld e, a
    scf
    scf
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    rlca
    dec b
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    and b
    ldh a, [$d0]
    ldh a, [rSVBK]
    adc [hl]
    cp $9e
    ld a, [$ecfc]
    ld a, [hl+]
    cp $fe
    cp $fe
    and d
    ld a, [hl]
    cp $2a
    cp $79
    rst $38
    add a
    add a
    ld [bc], a
    ld [bc], a
    rst $00
    push bc
    rst $38
    cp l
    ld a, d
    ld c, a
    ccf
    ccf
    ld e, a
    ld [hl], l
    cp a
    rst $28
    ld a, d
    rst $18
    ld a, a
    push de
    db $fd
    rst $28
    rst $38
    or a
    ld a, a
    ld e, b
    ccf
    ccf
    inc a
    cpl
    dec e
    rra
    ld b, $06
    nop
    nop
    jr @+$1a

    ld hl, sp-$18
    ldh a, [$90]
    ldh [$e0], a
    ret nc

    ld [hl], b
    add sp, -$48
    db $f4
    call c, Call_024_5cfc
    ld a, [hl]
    ld [$dcfc], a
    ld hl, sp+$38
    ret z

    ld hl, sp-$08
    ld hl, sp-$08
    xor b
    ld [hl], b
    ld [hl], b
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0607
    rrca
    dec bc
    ld [hl], e
    ld a, [hl]
    ld a, e
    ld e, [hl]
    ccf
    dec [hl]
    dec hl
    dec a
    dec a
    inc hl
    dec a
    ccf
    dec hl
    ccf
    ld c, e
    ld a, l
    ld [hl], a
    ld [hl], a
    nop
    nop
    nop
    nop
    ret nz

    ret nz

jr_024_6384:
    ldh [$60], a
    ldh a, [rSVBK]
    ldh a, [$d0]
    jr z, jr_024_6384

    cp [hl]
    ld [$d6ba], a
    or h
    call c, $ec7c
    cp b
    ret c

    ldh [$e0], a
    ld h, b
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3301
    ld [hl-], a
    ccf
    ld l, $1d
    inc de
    rrca
    ld c, $2a
    ccf
    ld e, a
    ld [hl], b
    ld e, a
    ld [hl], l
    ld l, [hl]
    ld a, e
    dec sp
    inc l
    rra
    rra
    rra
    rla
    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret c

    ret c

    ld hl, sp-$58
    ld [hl], b
    ret nc

    ldh [$a0], a
    add sp, -$48
    db $f4
    ld e, h
    db $fc
    inc e
    db $fc
    db $f4
    ldh a, [rSVBK]
    sub b
    ldh a, [$f0]
    ldh a, [$f0]
    sub b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    ld b, $0f
    ld c, $0f
    dec bc
    inc d
    rra
    ld a, l
    ld d, a
    ld e, l
    ld l, e
    dec l
    dec sp
    dec a
    scf
    dec de
    dec de
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0303

Jump_024_63fe:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ldh [$60], a
    ldh a, [$d0]
    adc $7e
    sbc $fa
    ld a, h
    db $ec
    inc d
    db $fc
    db $fc
    add h
    ld a, h
    db $fc
    inc d
    db $fc
    ld [hl], d
    cp $8e
    adc [hl]
    nop
    nop
    nop
    nop
    ld bc, $3301
    ld [hl-], a
    ccf
    ld l, $1d
    inc de
    rrca
    rrca
    cpl
    dec sp
    ld e, l
    ld [hl], a
    ld e, a
    db $76
    ld a, l
    ld [hl], a
    ccf
    inc l
    rra
    rra
    inc e
    rla
    dec c
    rrca
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    sbc b
    sbc b
    ld hl, sp-$18
    ld [hl], b
    ret nc

    ldh [$e0], a
    add sp, -$08
    ld [hl], h
    call c, $9cfc
    ld a, h
    call nc, $30f0
    ret nc

    ldh a, [$f0]
    ldh a, [$f0]
    sub b
    ld h, b
    ld h, b
    nop
    nop
    ld [hl], d
    ld h, h
    ld [hl], l
    ld h, h
    ld a, e
    ld h, h
    ld a, [hl]
    ld h, h
    adc c
    ld h, h
    sub b
    ld h, h
    sbc b
    ld h, h
    xor h
    ld h, h
    cp b
    ld h, h
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
    jr jr_024_6487

    inc c
    dec b

jr_024_6487:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_024_6490

    jr @-$01

jr_024_6490:
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

    db $07, $04, $c9, $64, $e0, $6a, $c9, $64, $e0, $64, $e0, $65, $e0, $65, $e0, $65

    ldh [$65], a
    ldh [$65], a
    ldh [$66], a
    ldh [$67], a
    ldh [rBCPS], a
    ldh [rBCPD], a
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    ld [$0e0f], sp
    rrca
    rrca
    add hl, bc
    rrca
    add hl, bc
    rlca
    inc b
    rlca
    ld b, $0f
    dec c
    rra
    dec d
    rra
    dec e
    rrca
    inc c
    rlca
    rlca
    dec bc
    rrca
    add hl, bc
    rrca
    ld b, $06
    ldh [$e0], a
    ldh a, [$d0]
    ldh a, [$90]
    ldh a, [$b0]
    ldh a, [$d0]
    ret nc

    ld [hl], b
    ld hl, sp+$28
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh a, [$90]
    ldh [$60], a
    ldh a, [$90]
    ldh a, [$f0]
    add sp, -$08
    ld hl, sp-$08
    jr nc, jr_024_6550

    rrca
    rrca
    rra
    ld e, $17
    inc e
    rra
    ld e, $3d
    dec hl
    add hl, sp
    cpl
    rra
    ld e, $3f
    ld a, [hl+]
    ld a, a
    ld l, c
    ld a, a
    ld [hl], h

jr_024_6534:
    rrca
    dec bc
    rrca
    ld a, [bc]
    rrca
    inc c
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    ldh [$e0], a
    ldh a, [$f0]
    ret nc

    ld [hl], b
    ldh a, [$f0]
    cp b
    ld l, b
    jr c, jr_024_6534

    ldh a, [$f0]
    ldh a, [$b0]

jr_024_6550:
    ld hl, sp+$28
    ld hl, sp+$58
    db $fc
    or h
    db $ec
    xor h
    ldh [$60], a
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    rrca
    dec bc
    rrca
    add hl, bc
    rrca
    dec c
    rrca
    dec bc
    dec bc
    ld c, $1f
    inc d
    rra
    inc d
    rrca
    ld [$090f], sp
    rra
    ld d, $0f
    inc c
    rrca
    rrca
    rla
    rra
    inc de
    rra
    inc c
    inc c
    ldh [$e0], a
    ldh a, [$f0]
    db $10
    ldh a, [rSVBK]
    ldh a, [$f0]
    sub b
    ldh a, [$90]
    ldh [rNR41], a
    ldh [$60], a
    ldh [$a0], a
    ldh a, [$50]
    ldh a, [rSVBK]
    ldh a, [$50]
    ldh a, [$b0]
    ret nc

    ldh a, [$f0]
    ldh a, [$60]
    ld h, b
    rrca
    rrca
    rra
    rra
    rla
    rra
    db $10
    rra
    jr c, @+$31

    jr c, @+$31

    inc e
    rra
    ccf
    dec hl
    ld a, a
    ld l, b
    ld a, a
    ld [hl], h
    rrca
    dec bc
    rrca
    ld [$0c0f], sp
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    ldh [$e0], a
    ldh a, [$f0]
    ret nc

    ldh a, [rNR10]
    ldh a, [$38]
    add sp, $38
    add sp, $70
    ldh a, [$f0]
    or b
    ld hl, sp+$28
    ld hl, sp+$58
    db $fc
    or h
    db $ec
    inc l
    ldh [$60], a
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    rrca
    rrca
    ld [$0e0f], sp
    rrca
    rrca
    add hl, bc
    rrca
    add hl, bc
    rlca
    inc b
    rlca
    ld b, $07
    dec b
    rrca
    ld a, [bc]
    rrca
    ld c, $0f
    ld a, [bc]
    rrca
    dec c
    dec bc
    rrca
    rrca
    rrca
    ld b, $06
    ldh [$e0], a
    ldh a, [$d0]
    ldh a, [$90]
    ldh a, [$b0]
    ldh a, [$d0]
    ret nc

    ld [hl], b
    ld hl, sp+$28
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh a, [$90]
    ld hl, sp+$68
    ldh a, [$30]
    ldh a, [$f0]
    add sp, -$08
    ret z

    ld hl, sp+$30
    jr nc, jr_024_6630

    rrca
    rra
    ld e, $17
    inc e
    rra
    ld e, $3d
    dec hl
    add hl, sp
    cpl
    rra
    ld e, $1f
    ld a, [de]

jr_024_6630:
    ccf
    add hl, hl
    ccf
    inc [hl]

jr_024_6634:
    ld a, a
    ld e, e
    ld l, a
    ld l, d
    rrca
    inc c
    rrca
    rrca
    rlca
    rlca

jr_024_663e:
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ret nc

    ld [hl], b
    ldh a, [$f0]
    cp b
    ld l, b
    jr c, jr_024_6634

    ldh a, [$f0]
    ld hl, sp-$58
    db $fc
    inc l
    db $fc
    ld e, h
    ldh [$a0], a
    ldh [$a0], a
    ldh [$60], a
    ldh [$e0], a
    jr nz, jr_024_663e

    ret nz

    ret nz

    rlca
    rlca
    rrca
    dec bc
    rrca
    add hl, bc
    rrca
    dec c
    rrca
    dec bc
    dec bc
    ld c, $1f
    inc d
    rra
    inc d
    rrca
    ld [$090f], sp
    rlca
    ld b, $0f
    add hl, bc
    rrca
    rrca
    rla
    rra
    rra
    rra
    inc c
    inc c
    ldh [$e0], a
    ldh a, [$f0]
    db $10
    ldh a, [rSVBK]
    ldh a, [$f0]
    sub b
    ldh a, [$90]
    ldh [rNR41], a
    ldh [$60], a
    ldh a, [$b0]
    ld hl, sp-$58
    ld hl, sp-$48
    ldh a, [$30]
    ldh [$e0], a
    ret nc

    ldh a, [$90]
    ldh a, [$60]
    ld h, b
    rrca
    rrca
    rra
    rra
    rla
    rra
    db $10
    rra
    jr c, @+$31

    jr c, @+$31

    inc e
    rra
    rra
    dec de
    ccf
    jr z, @+$41

    inc [hl]
    ld a, a
    ld e, e
    ld l, a
    ld l, b
    rrca
    inc c
    rrca
    rrca
    rlca
    rlca

jr_024_66be:
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ret nc

    ldh a, [rNR10]
    ldh a, [$38]
    add sp, $38
    add sp, $70
    ldh a, [$f8]
    xor b
    db $fc
    inc l
    db $fc
    ld e, h
    ldh [$a0], a
    ldh [rNR41], a
    ldh [$60], a
    ldh [$e0], a
    jr nz, jr_024_66be

    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    rrca
    rrca
    ld [$0e0f], sp
    rrca
    rrca
    add hl, bc
    rrca
    add hl, bc
    rlca
    inc b
    rlca
    ld b, $0f
    dec c
    rra
    dec e
    rrca
    inc c
    rlca
    rlca
    dec bc
    rrca
    add hl, bc
    rrca
    ld b, $06
    nop
    nop
    ldh [$e0], a
    ldh a, [$d0]
    ldh a, [$90]
    ldh a, [$b0]
    ldh a, [$d0]
    ret nc

    ld [hl], b
    ld hl, sp+$28
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh [$60], a
    ldh a, [$90]
    ldh a, [$f0]
    add sp, -$08
    ld hl, sp-$08
    jr nc, jr_024_6750

    nop
    nop
    rrca
    rrca
    rra
    ld e, $17
    inc e
    rra
    ld e, $3d
    dec hl
    add hl, sp
    cpl
    rra
    ld e, $3f
    ld a, [hl+]
    ld a, a
    ld l, c
    rrca
    dec bc

jr_024_6736:
    rrca
    ld a, [bc]
    rrca
    inc c
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ret nc

    ld [hl], b
    ldh a, [$f0]
    cp b
    ld l, b
    jr c, jr_024_6736

    ldh a, [$f0]

jr_024_6750:
    ldh a, [$b0]
    ld hl, sp+$28
    db $fc
    or h
    db $ec
    xor h
    ldh [$60], a
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    dec bc
    rrca
    add hl, bc
    rrca
    dec c
    rrca
    dec bc
    dec bc
    ld c, $1f
    inc d
    rra
    inc d
    rrca
    ld [$161f], sp
    rrca
    inc c
    rrca
    rrca
    rla
    rra
    inc de
    rra
    inc c
    inc c
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    db $10
    ldh a, [rSVBK]
    ldh a, [$f0]
    sub b
    ldh a, [$90]
    ldh [rNR41], a
    ldh [$60], a
    ldh [$a0], a
    ldh a, [rSVBK]
    ldh a, [$50]
    ldh a, [$b0]
    ret nc

    ldh a, [$f0]
    ldh a, [$60]
    ld h, b
    nop
    nop
    rrca
    rrca
    rra
    rra
    rla
    rra
    db $10
    rra
    jr c, @+$31

    jr c, jr_024_67dd

    inc e
    rra
    ccf
    dec hl
    ld a, a
    ld l, b
    rrca
    dec bc
    rrca
    ld [$0c0f], sp
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ret nc

    ldh a, [rNR10]
    ldh a, [$38]
    add sp, $38
    add sp, $70
    ldh a, [$f0]
    or b
    ld hl, sp+$28
    db $fc
    or h
    db $ec
    inc l
    ldh [$60], a
    ldh [$e0], a
    ret nz

jr_024_67dd:
    ret nz

    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    inc b
    rlca
    rlca
    rlca
    rlca
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    ld b, $1f
    dec d
    rra
    dec e
    rrca
    inc c
    rlca
    rlca
    dec bc
    rrca
    add hl, bc
    rrca
    ld b, $06
    ldh a, [$f0]
    ld hl, sp-$18
    ld a, b
    ret z

    ld a, b
    ret c

    ld hl, sp-$18
    add sp, -$48
    db $fc
    inc d
    db $fc
    inc d
    ld hl, sp-$78
    ldh a, [$90]
    ldh [$60], a
    ldh a, [$90]
    ldh a, [$f0]
    add sp, -$08
    ld hl, sp-$08
    jr nc, jr_024_6850

    rlca
    rlca
    rrca
    rrca
    dec bc
    ld c, $0f
    rrca
    ld e, $15
    inc e
    rla
    rrca
    rrca
    rra
    dec d
    ccf
    inc [hl]
    ld a, a
    ld [hl], h
    rrca
    dec bc
    rrca
    ld a, [bc]
    rrca
    inc c
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    ldh a, [$f0]
    ld hl, sp+$78
    add sp, $38
    ld hl, sp+$78
    call c, $9cb4
    db $f4
    ld hl, sp+$78
    ld hl, sp+$58

jr_024_6850:
    db $fc
    sub h
    ld hl, sp+$58
    db $fc
    or h
    db $ec
    xor h
    ldh [$60], a
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    rlca
    dec b
    rlca
    inc b
    rlca
    ld b, $07
    dec b
    dec b
    rlca
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    rlca
    inc b
    rrca
    add hl, bc
    rra
    ld d, $0f
    inc c
    rrca
    rrca
    rla
    rra
    inc de
    rra
    inc c
    inc c
    ldh a, [$f0]
    ld hl, sp-$08
    adc b
    ld hl, sp-$48
    ld hl, sp-$08
    ret z

    ld hl, sp+$48
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [$50]
    ldh a, [$50]
    ldh a, [rSVBK]
    ldh a, [$50]
    ldh a, [$b0]
    ret nc

    ldh a, [$f0]
    ldh a, [$60]
    ld h, b
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld [$1c0f], sp
    rla
    inc e
    rla
    ld c, $0f
    rra
    dec d
    ccf
    inc [hl]
    ld a, a
    ld [hl], h
    rrca
    dec bc
    rrca
    ld [$0c0f], sp
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    ldh a, [$f0]
    ld hl, sp-$08
    add sp, -$08

jr_024_68c6:
    ld [$1cf8], sp
    db $f4
    inc e
    db $f4
    jr c, jr_024_68c6

    ld hl, sp-$28
    db $fc
    inc d
    ld hl, sp+$58
    db $fc
    or h
    db $ec
    inc l
    ldh [$60], a
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    rrca
    rrca
    rra
    rra
    ld de, $1d1f
    rra
    rra
    inc de
    rra
    ld [de], a
    rrca
    ld [$0c0f], sp
    rra
    ld a, [de]
    rra
    dec d
    rra
    dec e
    rrca
    inc c
    rlca
    rlca
    dec bc
    rrca
    add hl, bc
    rrca
    ld b, $06
    ret nz

    ret nz

    ldh [$a0], a
    ldh [rNR41], a
    ldh [$60], a
    ldh [$a0], a
    and b
    ldh [$f0], a
    ld d, b
    ldh a, [$50]
    ldh [rNR41], a
    ldh a, [$90]
    ldh [$60], a
    ldh a, [$90]
    ldh a, [$f0]
    add sp, -$08
    ld hl, sp-$08
    jr nc, jr_024_6950

    rra
    rra
    ccf
    dec a
    cpl
    jr c, jr_024_6966

    dec a
    ld a, e
    ld d, [hl]
    ld [hl], d
    ld e, a
    ccf
    dec a
    ld a, a
    ld d, l
    rst $38
    jp nc, Jump_024_747f

    rrca
    dec bc
    rrca
    ld a, [bc]
    rrca
    inc c
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    ret nz

    ret nz

    ldh [$e0], a
    and b
    ldh [$e0], a
    ldh [rSVBK], a
    ret nc

    ld [hl], b
    ret nc

    ldh [$e0], a
    ldh [$60], a

jr_024_6950:
    ldh a, [$50]
    ld hl, sp+$58
    db $fc
    or h
    db $ec
    xor h
    ldh [$60], a
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    rrca
    rrca
    rra
    rla
    ld e, $13

jr_024_6966:
    ld e, $1b
    rra
    rla
    rla
    dec e
    ccf
    jr z, jr_024_69ae

    jr z, jr_024_6990

    ld de, $090f
    rra
    ld d, $0f
    inc c
    rrca
    rrca
    rla
    rra
    inc de
    rra
    inc c
    inc c
    ret nz

    ret nz

    ldh [$e0], a
    jr nz, jr_024_6966

    ldh [$e0], a
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ld b, b
    ret nz

    ret nz

jr_024_6990:
    ret nz

    ld b, b
    ldh a, [$50]
    ldh a, [rSVBK]
    ldh a, [$50]
    ldh a, [$b0]
    ret nc

    ldh a, [$f0]
    ldh a, [$60]
    ld h, b
    rra
    rra
    ccf
    ccf
    cpl
    ccf
    jr nz, jr_024_69e7

    ld [hl], b
    ld e, a
    ld [hl], b
    ld e, a
    jr c, jr_024_69ed

jr_024_69ae:
    ld a, a
    ld d, a
    rst $38
    ret nc

    ld a, a
    ld [hl], h
    rrca
    dec bc
    rrca
    ld [$0c0f], sp
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    ret nz

    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [rSVBK], a
    ret nc

    ld [hl], b
    ret nc

    ldh [$e0], a
    ldh [$60], a
    ldh a, [$50]
    ld hl, sp+$58
    db $fc
    or h
    db $ec
    inc l
    ldh [$60], a
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    inc b

jr_024_69e7:
    rlca
    ld b, $07
    rlca
    dec b
    inc bc

jr_024_69ed:
    nop
    inc bc
    ld [bc], a
    rlca
    dec b
    rrca
    add hl, bc
    rlca
    inc b
    inc bc
    inc bc
    rlca
    rlca
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

    ldh [$e0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$e0], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$e0], a
    ret nc

    ldh a, [$f0]
    ldh a, [rNR41]
    jr nz, jr_024_6a1f

jr_024_6a1f:
    nop
    nop
    nop
    rlca
    rlca
    rrca
    ld c, $0b
    inc c
    rrca
    ld c, $1d
    rla
    rrca
    ld c, $1f
    ld d, $3f
    dec [hl]
    ccf
    jr c, jr_024_6a3c

    ld b, $07
    inc b
    rlca
    rlca
    dec b
    rlca

jr_024_6a3c:
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$60], a
    ldh [$e0], a
    or b
    ld d, b
    ldh [$e0], a
    ldh [$a0], a
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ret c

    sbc b
    ret nz

    ld b, b
    ret nz

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
    rlca
    rlca
    rlca
    dec b

jr_024_6a68:
    rlca
    dec b
    rlca
    rlca
    rrca
    ld [$080f], sp
    rlca
    inc b
    rlca
    dec b
    rlca
    inc b
    rlca
    rlca
    dec bc
    rrca
    dec bc
    rrca
    inc b
    inc b
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    jr nz, jr_024_6a68

    ld h, b
    ldh [$e0], a
    and b
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    add b
    ldh [$60], a
    ldh [$60], a
    ldh [$a0], a
    ldh [$e0], a
    ldh [$e0], a

jr_024_6a9c:
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld [$1c0f], sp
    rla
    inc c
    rrca
    rra
    rla
    ccf
    inc [hl]
    ccf
    jr c, jr_024_6abc

    inc b
    rlca
    inc b
    rlca
    rlca
    dec b
    rlca

jr_024_6abc:
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    jr nz, @-$1e

    jr nc, jr_024_6a9c

    ld h, b
    ldh [$e0], a
    and b
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ret c

    jr @-$3e

    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop

    db $f2, $6a, $f5, $6a

    ei
    ld l, d
    cp $6a
    add hl, bc
    ld l, e
    db $10
    ld l, e
    jr jr_024_6b59

    inc l
    ld l, e
    jr c, jr_024_6b5d

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
    jr jr_024_6b07

    inc c
    dec b

jr_024_6b07:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_024_6b10

    jr @-$01

jr_024_6b10:
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
    inc b
    inc b
    ld c, c
    ld l, e
    ld h, b
    ld [hl], c
    ld c, c
    ld l, e
    ld h, b
    ld l, e
    ld h, b
    ld l, h
    ld h, b
    ld l, h
    ld h, b
    ld l, h
    ld h, b
    ld l, h
    ld h, b
    ld l, h
    ld h, b
    ld l, l
    ld h, b
    ld l, [hl]

jr_024_6b59:
    ld h, b
    ld l, a
    ld h, b
    ld [hl], b

jr_024_6b5d:
    nop
    nop
    nop
    ld bc, $0701
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, $3f
    dec e
    rra
    ld c, $0f
    dec bc
    rrca
    rlca
    ld b, $03
    ld [bc], a
    rlca
    rlca
    rrca
    dec bc
    rrca
    rrca
    ld b, $06
    ldh [$e0], a
    ldh a, [$f0]

jr_024_6b84:
    ld hl, sp-$08
    ret c

    ld hl, sp-$70
    ldh a, [$b0]
    ldh a, [$a8]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$70
    ldh a, [$f0]
    ldh a, [$d8]
    ld l, b
    ldh a, [$f0]
    jr c, jr_024_6b84

    ld hl, sp-$28
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    dec e
    rra
    jr c, jr_024_6be9

    ld a, d
    ld a, a
    ld l, d
    ld a, a
    jr nz, jr_024_6bef

    jr jr_024_6bd1

    inc l
    ccf
    ccf
    dec sp
    rla
    inc e
    inc de
    rra
    rrca
    rrca
    rrca
    add hl, bc
    ld b, $06
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$38]
    ld hl, sp-$44
    db $fc
    xor h
    db $fc
    ld [$30f8], sp

jr_024_6bd1:
    ldh a, [rSVBK]
    ldh a, [$e8]
    cp b
    ld hl, sp+$78
    cp b
    add sp, -$30
    ret nc

    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    dec de
    rra
    add hl, bc

jr_024_6be9:
    rrca
    dec c
    rrca
    dec d
    rra
    db $10

jr_024_6bef:
    rra
    db $10
    rra
    add hl, bc
    rrca
    rla
    rra
    rrca
    inc c
    dec bc
    rrca
    ld e, $17
    rra
    rra
    ld c, $0e
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    ld a, h
    db $fc
    cp b
    ld hl, sp+$70
    ldh a, [$e0]
    ldh [$c0], a
    ld b, b
    and b
    ldh [$e0], a
    and b
    ld [hl], b
    ret nc

    ldh a, [$90]
    ld h, b
    ld h, b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cpl
    ccf
    rra
    rra
    cpl
    dec sp
    ccf
    inc a
    inc de
    rra
    db $10
    rra
    rrca
    rrca
    rrca
    add hl, bc
    ld b, $06
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    add sp, -$08
    ldh a, [$f0]
    ldh a, [$b0]
    add sp, $78
    cp b
    ld hl, sp-$08
    add sp, -$30
    ret nc

    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    rrca
    rrca
    rrca
    rrca
    rra

jr_024_6c69:
    rra
    ccf
    ccf
    ld a, $3f
    dec e
    rra
    ld c, $0f
    rlca
    rlca
    inc bc
    ld [bc], a
    dec b
    rlca
    rlca
    dec b
    ld c, $0b
    rrca
    add hl, bc
    ld b, $06
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ret c

    ld hl, sp-$70
    ldh a, [$b0]
    ldh a, [$a8]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$70
    ldh a, [$e8]
    ld hl, sp-$10
    jr nc, jr_024_6c69

    ldh a, [$78]
    add sp, -$08
    ld hl, sp+$70

jr_024_6c9f:
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    dec e
    rra
    jr c, jr_024_6ce9

    ld a, d
    ld a, a
    ld l, d
    ld a, a
    jr nz, jr_024_6cef

    jr jr_024_6cd1

    inc e
    rra
    cpl
    dec sp
    ccf
    inc a
    dec sp
    cpl
    rla
    rla
    ld bc, $0001
    nop
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$38]
    ld hl, sp-$44
    db $fc
    xor h
    db $fc
    ld [$30f8], sp

jr_024_6cd1:
    ldh a, [rBCPS]
    ld hl, sp-$08
    cp b
    ret nc

    ld [hl], b
    sub b
    ldh a, [$e0]
    ldh [$e0], a
    jr nz, jr_024_6c9f

    ret nz

    rlca
    rlca
    rrca
    rrca
    rra
    rra
    dec de
    rra
    add hl, bc

jr_024_6ce9:
    rrca
    dec c
    rrca
    dec d
    rra
    db $10

jr_024_6cef:
    rra
    db $10
    rra
    add hl, bc
    rrca
    rrca
    rrca
    dec de
    ld d, $0f
    rrca
    inc e
    rla
    rra
    dec de
    ld c, $0e
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    ld a, h
    db $fc
    cp b
    ld hl, sp+$70
    ldh a, [$d0]
    ldh a, [$e0]
    ld h, b
    ret nz

    ld b, b
    ldh [$e0], a
    ldh a, [$d0]
    ldh a, [$f0]
    ld h, b

jr_024_6d1f:
    ld h, b
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cpl
    ccf
    rra
    rra
    rra
    dec de
    cpl
    inc a
    dec sp
    ccf
    ld a, $2f
    rla
    rla
    ld bc, $0001
    nop
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    add sp, -$08
    ldh a, [$f0]
    add sp, -$48
    ld hl, sp+$78
    sub b
    ldh a, [rNR10]
    ldh a, [$e0]
    ldh [$e0], a
    jr nz, jr_024_6d1f

    ret nz

    nop
    nop
    ld bc, $0701
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, $3f
    dec e
    rra
    ld c, $0f
    rlca
    ld b, $03
    ld [bc], a
    rlca
    rlca
    rrca
    dec bc
    rrca
    rrca
    ld b, $06
    nop
    nop
    ldh [$e0], a

jr_024_6d84:
    ldh a, [$f0]
    ld hl, sp-$08
    ret c

    ld hl, sp-$70
    ldh a, [$b0]
    ldh a, [$a8]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$10
    ldh a, [$d8]
    ld l, b
    ldh a, [$f0]
    jr c, jr_024_6d84

    ld hl, sp-$28
    ld [hl], b
    ld [hl], b
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    dec e
    rra
    jr c, jr_024_6deb

    ld a, d
    ld a, a
    ld l, d
    ld a, a
    jr nz, jr_024_6df1

    jr jr_024_6dd3

    ccf
    dec sp
    rla
    inc e
    inc de
    rra
    rrca
    rrca
    rrca
    add hl, bc
    ld b, $06
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$38]
    ld hl, sp-$44
    db $fc
    xor h
    db $fc
    ld [$30f8], sp

jr_024_6dd3:
    ldh a, [$e8]
    cp b
    ld hl, sp+$78
    cp b
    add sp, -$30
    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    dec de
    rra
    add hl, bc

jr_024_6deb:
    rrca
    dec c
    rrca
    dec d
    rra
    db $10

jr_024_6df1:
    rra
    db $10
    rra
    rla
    rra
    rrca
    inc c
    dec bc
    rrca
    ld e, $17
    rra
    rra
    ld c, $0e
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    ld a, h
    db $fc
    cp b
    ld hl, sp+$70
    ldh a, [$c0]
    ld b, b
    and b
    ldh [$e0], a
    and b
    ld [hl], b
    ret nc

    ldh a, [$90]
    ld h, b
    ld h, b
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cpl
    ccf
    rra
    rra
    ccf
    inc a
    inc de
    rra
    db $10
    rra
    rrca
    rrca
    rrca
    add hl, bc
    ld b, $06
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    add sp, -$08
    ldh a, [$f0]
    add sp, $78
    cp b
    ld hl, sp-$08
    add sp, -$30
    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ld c, $0f
    rlca
    rlca
    dec bc
    rrca
    rlca
    ld b, $03
    ld [bc], a
    rlca
    rlca
    rrca
    dec bc
    rrca
    rrca
    ld b, $06
    ldh a, [$f0]
    ld hl, sp-$08

jr_024_6e84:
    db $fc
    db $fc
    db $ec
    db $fc
    ret z

    ld hl, sp-$28
    ld hl, sp+$54
    db $fc
    add h
    db $fc
    inc b
    db $fc
    sub b
    ldh a, [$f0]
    ldh a, [$d8]
    ld l, b
    ldh a, [$f0]
    jr c, jr_024_6e84

    ld hl, sp-$28
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    inc e
    rra
    dec a
    ccf
    dec [hl]
    ccf
    db $10
    rra
    inc c
    rrca
    inc l
    ccf
    ccf
    dec sp
    rla
    inc e
    inc de
    rra
    rrca
    rrca
    rrca
    add hl, bc
    ld b, $06
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    cp b
    ld hl, sp+$1c
    db $fc

jr_024_6eca:
    ld e, [hl]
    cp $56
    cp $04
    db $fc
    jr jr_024_6eca

    ld [hl], b
    ldh a, [$e8]
    cp b
    ld hl, sp+$78
    cp b
    add sp, -$30
    ret nc

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    dec c
    rrca
    inc b
    rlca
    ld b, $07
    ld a, [bc]
    rrca
    ld [$080f], sp
    rrca
    add hl, bc
    rrca
    rla
    rra
    rrca
    inc c
    dec bc
    rrca
    ld e, $17
    rra
    rra
    ld c, $0e
    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc

jr_024_6f0a:
    cp $fe
    cp [hl]
    cp $5c
    db $fc
    jr c, jr_024_6f0a

    ldh [$e0], a
    ret nz

    ld b, b
    and b
    ldh [$e0], a
    and b
    ld [hl], b
    ret nc

    ldh a, [$90]
    ld h, b
    ld h, b
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    rla
    rra
    rrca
    rrca
    cpl
    dec sp
    ccf
    inc a
    inc de
    rra
    db $10
    rra
    rrca
    rrca
    rrca
    add hl, bc
    ld b, $06
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    cp $fe
    db $f4
    db $fc
    ld hl, sp-$08
    ldh a, [$b0]
    add sp, $78
    cp b
    ld hl, sp-$08
    add sp, -$30
    ret nc

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, l
    ld a, a
    ld a, [hl-]
    ccf
    inc e
    rra
    dec bc
    rrca
    rlca
    ld b, $03
    ld [bc], a
    rlca
    rlca
    rrca
    dec bc
    rrca
    rrca
    ld b, $06
    ret nz

    ret nz

    ldh [$e0], a

jr_024_6f84:
    ldh a, [$f0]
    or b
    ldh a, [rNR41]
    ldh [$60], a
    ldh [$50], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$f0]
    ldh a, [$d8]
    ld l, b
    ldh a, [$f0]
    jr c, jr_024_6f84

    ld hl, sp-$28
    ld [hl], b
    ld [hl], b
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, [hl-]
    ccf
    ld [hl], b
    ld a, a
    push af
    rst $38
    push de
    rst $38
    ld b, b
    ld a, a
    jr nc, jr_024_6ff1

    inc l
    ccf
    ccf
    dec sp
    rla
    inc e
    inc de
    rra
    rrca
    rrca
    rrca
    add hl, bc
    ld b, $06
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ld [hl], b
    ldh a, [$78]
    ld hl, sp+$58
    ld hl, sp+$10
    ldh a, [$60]
    ldh [rSVBK], a
    ldh a, [$e8]
    cp b
    ld hl, sp+$78
    cp b
    add sp, -$30
    ret nc

    nop
    nop
    nop
    nop
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    scf
    ccf
    inc de
    rra
    dec de
    rra
    ld a, [hl+]
    ccf
    ld hl, $203f

jr_024_6ff1:
    ccf
    add hl, bc
    rrca
    rla
    rra
    rrca
    inc c
    dec bc
    rrca
    ld e, $17
    rra
    rra
    ld c, $0e
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld [hl], b
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$c0], a
    ld b, b
    and b
    ldh [$e0], a
    and b
    ld [hl], b
    ret nc

    ldh a, [$90]
    ld h, b
    ld h, b
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    ld a, a
    ccf
    ccf
    cpl
    dec sp
    ccf
    inc a
    inc de
    rra
    db $10
    rra
    rrca
    rrca
    rrca
    add hl, bc
    ld b, $06
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ret nc

    ldh a, [$e0]
    ldh [$f0], a
    or b
    add sp, $78
    cp b
    ld hl, sp-$08
    add sp, -$30
    ret nc

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rlca
    rlca

jr_024_706a:
    rrca
    rrca
    ld e, $1f
    dec c
    rrca
    ld b, $07
    rlca
    rlca
    inc bc
    ld [bc], a
    inc bc
    inc bc
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

    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    and b
    ldh [$90], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$a0]
    ldh [$f0], a
    ld d, b
    ldh [$e0], a
    jr nc, jr_024_706a

    ldh a, [$f0]
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    dec c
    rrca
    inc e
    rra
    ld [hl], $3f
    db $10
    rra
    inc c
    rrca
    inc d
    rra
    dec bc
    inc c
    dec bc
    rrca
    rlca
    rlca
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ld h, b
    ldh [$30], a
    ldh a, [$98]
    ld hl, sp+$10
    ldh a, [rNR41]
    ldh [$60], a
    ldh [$f0], a
    ld [hl], b
    or b
    ret nc

    ldh [$e0], a
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
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    dec b
    rlca
    add hl, bc
    rrca
    ld [$080f], sp
    rrca
    dec b
    rlca
    rlca
    inc b
    rlca
    rlca
    ld c, $0b
    rrca
    rrca
    ld b, $06
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ld a, b
    ld hl, sp-$50
    ldh a, [$60]
    ldh [$c0], a
    ret nz

    add b
    ret nz

    ret nz

    add b
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
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    rla
    rra
    rrca
    rrca
    rla
    rra
    dec bc
    rrca
    ld [$070f], sp
    rlca
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ret nc

    ldh a, [$e0]
    ldh [$e0], a
    and b
    or b
    ldh a, [$f0]
    ret nc

    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], d
    ld [hl], c
    ld [hl], l
    ld [hl], c
    ld a, e
    ld [hl], c
    ld a, [hl]
    ld [hl], c
    adc c
    ld [hl], c
    sub b
    ld [hl], c
    sbc b
    ld [hl], c
    xor h
    ld [hl], c
    cp b
    ld [hl], c
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
    jr jr_024_7187

    inc c
    dec b

jr_024_7187:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_024_7190

    jr @-$01

jr_024_7190:
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
    ld b, $04
    ret


    ld [hl], c
    ldh [rPCM34], a
    ret


    ld [hl], c
    ldh [$71], a
    ldh [$72], a
    ldh [$72], a
    ldh [$72], a
    ldh [$72], a
    ldh [$72], a
    ldh [$73], a
    ldh [$74], a
    ldh [$75], a
    ldh [rPCM12], a
    nop
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    ld de, $171f
    rra
    rra
    add hl, de
    rra
    ld a, [de]
    rla
    inc e
    rrca
    ld c, $05
    rlca

jr_024_71f6:
    ld c, $0b
    rra
    dec de
    rra
    ld e, $17
    rra
    dec c
    dec c
    ret nz

    ret nz

    jr nz, @-$1e

    jr nc, jr_024_71f6

    ldh a, [$d0]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ret nc

    ldh a, [$f8]
    ld l, b
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh a, [$d0]
    ldh [$e0], a
    ret nz

    ret nz

    and b
    ldh [$e0], a
    ldh [rTAC], a
    rlca
    ld [$100f], sp
    rra
    rla
    rra
    rra
    jr jr_024_724a

    jr @+$3d

    cpl
    ccf
    ld l, $3f
    add hl, sp
    ld a, a
    ld e, b
    ld [hl], a
    ld a, h
    ld c, a
    ld c, a
    rst $08
    ret


    rst $18
    sub $09
    rrca
    ld b, $06
    ld b, b
    ld b, b
    and b
    ldh [$90], a
    ldh a, [$d0]

jr_024_7247:
    ld [hl], b
    ret nc

    ld [hl], b

jr_024_724a:
    ldh a, [$30]
    ld a, b
    add sp, -$08
    add sp, -$08
    jr c, jr_024_7247

    inc a
    call c, $fc7c
    db $f4
    add sp, -$58
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
    add hl, bc
    rrca
    rrca
    ld c, $0f
    ld [$080f], sp
    dec bc
    rrca
    rra
    ld d, $0f
    ld [$080f], sp
    rlca
    inc b
    inc bc
    inc bc
    rlca
    inc b
    inc bc
    inc bc
    dec b
    rlca
    rlca
    rlca
    ldh [$e0], a
    sub b
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$18
    ld hl, sp-$08
    sbc b
    ld hl, sp+$58
    add sp, $38
    ldh a, [rSVBK]
    cp b
    ld hl, sp+$58
    ld hl, sp-$10
    ldh a, [$e8]
    cp b
    ret z

    ld hl, sp-$50
    or b
    dec b
    dec b
    ld a, [bc]
    rrca

jr_024_72a4:
    ld [de], a
    rra
    ld [de], a
    rra
    db $10
    rra
    db $10
    rra
    jr c, jr_024_72dd

    jr c, jr_024_72df

    inc a
    ccf
    ld [hl], e
    ld e, a
    ld a, b
    ld a, a
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

    jr nz, jr_024_72a4

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$38]
    add sp, $38
    add sp, $70
    ldh a, [$ae]
    cp $3e
    or $fc
    db $f4
    add sp, -$58
    ret nz

    ret nz

    nop

jr_024_72dd:
    nop
    nop

jr_024_72df:
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    ld de, $171f
    rra
    rra
    add hl, de
    rra
    ld a, [de]
    rla
    inc e
    rrca
    ld c, $1d
    rra

jr_024_72f6:
    ld a, [de]
    rra
    rrca
    rrca
    rla
    dec e
    inc de
    rra
    dec c
    dec c
    ret nz

    ret nz

    jr nz, @-$1e

    jr nc, jr_024_72f6

    ldh a, [$d0]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ret nc

    ldh a, [$f8]
    ld l, b
    ldh a, [rNR10]
    ld hl, sp+$18
    ld hl, sp+$38
    ret nc

    ret nc

    ldh [rNR41], a
    ldh [$e0], a
    and b
    ldh [$e0], a
    ldh [rTAC], a
    rlca
    ld [$100f], sp
    rra
    rla
    rra
    rra
    jr jr_024_734a

    jr @+$3d

    cpl
    ccf
    ld l, $ff
    ld sp, hl
    rst $18
    ld hl, sp+$77
    ld a, h
    ld a, a
    ld e, a
    cpl
    dec hl
    rlca
    ld b, $01
    ld bc, $0000
    ld b, b
    ld b, b
    and b
    ldh [$90], a
    ldh a, [$d0]
    ld [hl], b
    ret nc

    ld [hl], b

jr_024_734a:
    ldh a, [$30]
    ld a, b
    add sp, -$08

jr_024_734f:
    add sp, -$08
    jr c, jr_024_734f

    inc [hl]
    call c, $e07c
    ldh [$e0], a
    jr nz, @-$0e

    ret nc

    jr nz, @-$1e

    ret nz

    ret nz

    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    rrca
    rrca
    ld c, $0f
    ld [$080f], sp
    dec bc
    rrca
    rra
    ld d, $0f
    ld [$383f], sp
    scf
    inc [hl]
    rrca
    dec bc
    rlca
    rlca
    inc bc
    ld [bc], a
    dec b
    rlca
    rlca
    rlca
    ldh [$e0], a
    sub b
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$18
    ld hl, sp-$08
    sbc b
    ld hl, sp+$58
    add sp, $38
    ldh a, [rSVBK]
    and b
    ldh [rSVBK], a
    ret nc

    ld hl, sp-$28
    ld hl, sp+$78
    add sp, $78
    or b
    or b
    dec b
    dec b
    ld a, [bc]
    rrca

jr_024_73a4:
    ld [de], a
    rra
    ld [de], a
    rra
    db $10
    rra
    db $10
    rra
    jr c, @+$31

    jr c, jr_024_73df

    inc e
    rra
    dec hl
    ccf
    ld a, b
    ld e, a
    ld a, a
    ld e, a
    cpl
    dec hl
    rlca
    ld b, $01
    ld bc, $0000
    ret nz

    ret nz

    jr nz, jr_024_73a4

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$3e]
    xor $3e
    xor $7c
    db $fc
    sbc h
    db $f4
    inc a
    db $fc
    ldh [$e0], a
    ldh [rNR41], a
    ldh a, [$d0]
    jr nz, @-$1e

    ret nz

jr_024_73df:
    ret nz

    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    ld de, $171f
    rra
    rra
    add hl, de
    rra
    ld a, [de]
    rla
    inc e
    dec b
    rlca
    ld c, $0b

jr_024_73f8:
    rra
    dec de
    rra
    ld e, $17
    rra
    dec c
    dec c
    nop
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    jr nc, jr_024_73f8

    ldh a, [$d0]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ret nc

    ldh a, [$f8]
    ld l, b
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh a, [$d0]
    ldh [$e0], a
    ret nz

    ret nz

    and b
    ldh [$e0], a
    ldh [rP1], a
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    rla
    rra
    rra
    jr jr_024_744c

    jr @+$3d

    cpl
    ccf

jr_024_7431:
    ld l, $3f
    add hl, sp
    ld [hl], a
    ld a, h
    ld c, a
    ld c, a
    rst $08
    ret


    rst $18
    sub $09
    rrca
    ld b, $06
    nop
    nop
    ld b, b
    ld b, b
    and b
    ldh [$90], a
    ldh a, [$d0]
    ld [hl], b
    ret nc

    ld [hl], b

jr_024_744c:
    ldh a, [$30]
    ld a, b
    add sp, -$08
    add sp, -$08
    jr c, jr_024_7431

    ld a, h
    db $fc
    db $f4
    add sp, -$58
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
    inc b
    rlca
    add hl, bc
    rrca
    rrca
    ld c, $0f
    ld [$080f], sp
    dec bc
    rrca
    rra
    ld d, $0f
    ld [$0407], sp
    inc bc
    inc bc
    rlca
    inc b
    inc bc
    inc bc
    dec b
    rlca
    rlca

Jump_024_747f:
    rlca
    nop
    nop
    ldh [$e0], a
    sub b
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$18
    ld hl, sp-$08
    sbc b
    ld hl, sp+$58
    add sp, $38
    cp b
    ld hl, sp+$58
    ld hl, sp-$10
    ldh a, [$e8]
    cp b
    ret z

    ld hl, sp-$50
    or b
    nop
    nop
    dec b
    dec b
    ld a, [bc]
    rrca

jr_024_74a6:
    ld [de], a
    rra
    ld [de], a
    rra
    db $10
    rra
    db $10
    rra
    jr c, jr_024_74df

    jr c, jr_024_74e1

    inc a
    ccf
    ld a, b
    ld a, a
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
    ret nz

    ret nz

    jr nz, jr_024_74a6

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$38]
    add sp, $38
    add sp, $70
    ldh a, [$3e]
    or $fc
    db $f4
    add sp, -$58
    ret nz

    ret nz

    nop
    nop
    nop

jr_024_74df:
    nop
    inc bc

jr_024_74e1:
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    ld [$0b0f], sp
    rrca
    rrca
    inc c
    rrca
    dec c
    dec bc
    ld c, $0f
    ld c, $05
    rlca
    ld c, $0b
    rra
    dec de
    rra
    ld e, $17
    rra
    dec c
    dec c
    ldh [$e0], a
    db $10
    ldh a, [rNR23]
    ld hl, sp+$78
    add sp, -$08
    adc b
    ld hl, sp-$78
    add sp, -$08
    db $fc
    inc [hl]
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh a, [$d0]
    ldh [$e0], a
    ret nz

    ret nz

    and b
    ldh [$e0], a
    ldh [$03], a
    inc bc
    inc b
    rlca
    ld [$0b0f], sp
    rrca
    rrca
    inc c
    rrca
    inc c
    dec e
    rla
    rra
    rla
    rra
    inc e
    ld a, a
    ld e, b
    ld [hl], a
    ld a, h
    ld c, a
    ld c, a
    rst $08
    ret


    rst $18
    sub $09
    rrca
    ld b, $06
    and b
    and b
    ld d, b
    ldh a, [rOBP0]
    ld hl, sp-$18
    cp b
    add sp, $38
    ld hl, sp+$18
    cp h
    db $f4
    db $fc
    ld [hl], h
    db $fc
    sbc h
    db $f4
    inc a
    call c, $fc7c
    db $f4
    add sp, -$58
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    rlca
    rlca
    rlca
    inc b
    rlca
    inc b
    dec b
    rlca
    rrca
    dec bc
    rlca
    inc b
    rrca
    ld [$0407], sp
    inc bc
    inc bc
    rlca
    inc b
    inc bc
    inc bc
    dec b
    rlca
    rlca
    rlca
    ldh a, [$f0]
    ld c, b
    ld hl, sp-$7c
    db $fc
    call nz, $c47c
    ld a, h
    db $f4
    ld a, h
    db $fc
    call z, $2cfc
    db $f4
    inc e
    ldh a, [rSVBK]
    cp b
    ld hl, sp+$58
    ld hl, sp-$10
    ldh a, [$e8]
    cp b
    ret z

    ld hl, sp-$50
    or b
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    add hl, bc
    rrca
    add hl, bc
    rrca
    ld [$080f], sp
    rrca
    inc e
    rla
    inc e
    rla
    ld e, $1f
    ld [hl], e
    ld e, a
    ld a, b
    ld a, a
    rrca
    rrca
    rrca
    add hl, bc
    rra
    ld d, $09
    rrca
    ld b, $06
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$1c
    db $f4
    inc e
    db $f4
    jr c, @-$06

    xor [hl]
    cp $3e
    or $fc
    db $f4
    add sp, -$58
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rrca
    rrca
    db $10
    rra
    jr nz, @+$41

    ld hl, $233f
    ld a, $2f
    ld a, $3f
    inc sp
    ccf
    inc [hl]
    cpl
    jr c, jr_024_7602

    ld c, $05
    rlca
    ld c, $0b
    rra
    dec de
    rra
    ld e, $17
    rra
    dec c
    dec c
    add b
    add b

jr_024_7602:
    ld b, b
    ret nz

    ld h, b
    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [rNR41], a
    and b
    ldh [$f0], a
    ret nc

    ldh [rNR41], a
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh a, [$d0]
    ldh [$e0], a
    ret nz

    ret nz

    and b
    ldh [$e0], a
    ldh [$0e], a
    ld c, $11
    rra
    ld hl, $2f3f
    ld a, $3f
    jr nc, @+$41

    jr nc, jr_024_76a3

    ld e, a
    ld a, a
    ld e, l
    ld a, a
    ld [hl], d
    ld a, a
    ld e, b
    ld [hl], a
    ld a, h
    ld c, a
    ld c, a
    rst $08
    ret


    rst $18
    sub $09
    rrca
    ld b, $06
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    and b
    ldh [$a0], a
    ldh [$e0], a
    ld h, b
    ldh a, [$d0]
    ldh a, [$d0]
    ldh a, [rSVBK]
    db $f4
    inc a
    call c, $fc7c
    db $f4
    add sp, -$58
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    add hl, bc
    rrca

jr_024_7664:
    ld [de], a
    rra
    rra
    dec e
    rra
    ld de, $111f
    rla
    rra
    ccf
    inc l
    rra
    db $10
    rrca
    ld [$0407], sp
    inc bc
    inc bc
    rlca
    inc b
    inc bc
    inc bc
    dec b
    rlca
    rlca

jr_024_767f:
    rlca
    ret nz

    ret nz

    jr nz, jr_024_7664

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$d0]
    ldh a, [$f0]
    jr nc, jr_024_767f

    or b
    ret nc

    ld [hl], b
    ldh a, [rSVBK]
    cp b
    ld hl, sp+$58
    ld hl, sp-$10
    ldh a, [$e8]
    cp b
    ret z

    ld hl, sp-$50
    or b
    dec bc
    dec bc
    inc d

jr_024_76a3:
    rra
    inc h
    ccf

jr_024_76a6:
    inc h
    ccf

jr_024_76a8:
    jr nz, jr_024_76e9

jr_024_76aa:
    jr nz, jr_024_76eb

jr_024_76ac:
    ld [hl], b
    ld e, a
    ld [hl], b
    ld e, a
    ld a, b
    ld a, a
    ld [hl], e
    ld e, a
    ld a, b
    ld a, a
    rrca
    rrca
    rrca
    add hl, bc
    rra
    ld d, $09
    rrca
    ld b, $06
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_024_76a6

    jr nz, jr_024_76a8

    jr nz, jr_024_76aa

    jr nz, jr_024_76ac

    ld [hl], b
    ret nc

    ld [hl], b
    ret nc

    ldh [$e0], a
    xor [hl]
    cp $3e
    or $fc
    db $f4
    add sp, -$58
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
    inc b
    rlca
    ld [$080f], sp

jr_024_76e9:
    rrca
    add hl, bc

jr_024_76eb:
    rrca
    rrca
    dec c
    rrca
    ld c, $0b
    inc c
    rlca
    ld b, $06
    rlca
    rrca
    rrca
    rrca
    ld c, $0b
    rrca
    dec b
    dec b
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    ret nz

    jr nz, @-$1e

    ldh [$e0], a
    ldh [rNR41], a
    ldh [$e0], a
    ldh a, [$50]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ret nz

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
    ld [$0b0f], sp
    rrca
    rrca
    inc c
    rra
    rla
    rra
    ld d, $1f
    dec e
    ccf
    inc l
    daa
    daa
    ld h, a
    ld h, l
    ld l, a
    ld l, d
    dec b
    rlca
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    add b
    ret nz

    and b
    ldh [$e0], a
    ld h, b
    ldh [$60], a
    ld [hl], b
    ret nc

    ldh a, [$d0]
    ldh a, [$30]
    add sp, $38
    ld hl, sp-$18
    ret nc

    sub b
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
    inc bc
    inc bc
    nop
    inc bc
    dec b
    rlca
    rlca
    ld b, $07
    inc b
    rlca
    rlca
    rrca
    ld a, [bc]
    rlca
    inc b
    rlca

jr_024_7773:
    inc b
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    and b
    ldh [rNR10], a
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$f0]
    or b
    ldh a, [rSVBK]
    ret nc

    jr nc, jr_024_7773

    ld h, b
    ld [hl], b
    ldh a, [$e0]
    ldh [$d0], a
    or b
    ret nc

    ldh a, [$a0]
    and b

jr_024_779e:
    nop
    nop

jr_024_77a0:
    nop
    nop
    ld bc, $0601
    rlca
    ld a, [bc]
    rrca

jr_024_77a8:
    ld a, [bc]
    rrca

jr_024_77aa:
    ld [$1c0f], sp
    rla
    inc e
    rla
    inc e
    rra
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
    ret nz

    ret nz

    nop
    ret nz

    jr nz, jr_024_77a8

    jr nz, jr_024_77aa

    jr nz, @-$1e

    jr nc, jr_024_779e

    jr nc, jr_024_77a0

    ld h, b
    ldh [$9c], a
    db $fc
    ld hl, sp-$18
    ret nc

    sub b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [c]
    ld [hl], a
    push af
    ld [hl], a
    ei
    ld [hl], a
    cp $77
    add hl, bc
    ld a, b
    db $10
    ld a, b
    jr jr_024_7866

    inc l
    ld a, b
    jr c, jr_024_786a

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
    jr jr_024_7807

    inc c
    dec b

jr_024_7807:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_024_7810

    jr @-$01

jr_024_7810:
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

jr_024_7866:
    rst $38
    rst $38
    rst $38
    rst $38

jr_024_786a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_024_787f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_024_78fc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_024_7cd7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
