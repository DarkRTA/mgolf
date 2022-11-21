INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]

    db $10
    ld b, b

    db $d0, $46

    ld d, b
    ld c, l
    ld d, b
    ld d, h
    db $10
    ld e, h
    ldh a, [$62]
    ret nc

    ld l, d
    ld d, b
    ld [hl], d
    jr nc, jr_014_4052

    ret nc

    ld b, b
    ld d, b
    ld b, c
    ret nc

    ld b, c
    sub b
    ld b, d
    ld d, b
    ld b, e
    ldh a, [rSCX]
    ld [hl], b
    ld b, h
    db $10
    ld b, l
    sub b
    ld b, l
    jr nc, jr_014_406c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    rlca
    add hl, de
    rra
    daa
    ccf
    ld e, $1f
    ld b, $07
    inc bc
    inc bc
    rlca
    inc b
    rlca
    rlca
    dec bc
    rrca

jr_014_4052:
    rla
    rra
    rla
    rra
    cpl
    ccf
    cpl
    ccf
    ccf
    ccf
    cpl
    ccf
    ld hl, $3c3f
    ccf
    inc de
    rra
    rra
    rra
    rra
    inc de
    rra
    rra
    db $76
    ld a, a

jr_014_406c:
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop

jr_014_4074:
    nop
    nop
    ld b, $06
    ld a, a
    ld a, a
    adc a
    rst $38
    ld b, $fe
    ld bc, $3fff
    rst $38
    pop af
    rst $38
    db $ed
    rst $38
    ld b, [hl]
    ld a, [$f68e]
    ld bc, $82ff
    cp $cc
    ld [hl], h
    ld hl, sp-$08
    jr nz, jr_014_4074

    ld [hl], b
    ldh a, [$f0]
    ldh a, [$90]
    ldh a, [$88]
    ld hl, sp-$38
    ld hl, sp-$1c
    db $fc
    sub [hl]
    sbc [hl]
    adc a
    adc a

jr_014_40a4:
    pop bc
    pop bc
    and b
    ldh [$e0], a
    ld h, b
    jr c, jr_014_40a4

    rst $38
    rst $38
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc $ce
    ld [hl], l
    ld a, e
    ccf
    ccf
    cp $fe
    nop
    nop
    nop
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
    inc b
    rlca
    add hl, de
    rra
    daa
    ccf
    ld e, $1f
    ld b, $07
    inc bc
    inc bc
    rlca
    inc b
    rlca
    rlca
    dec bc
    rrca
    ld d, $1f
    ld d, $1f
    cpl
    ccf
    ld l, $3f
    ld a, $3f
    ld l, $3f
    ld hl, $3c3f
    ccf
    inc de
    rra
    rra
    rra
    rra
    inc de
    rra
    rra
    db $76
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld a, a
    ld a, a
    adc a
    rst $38
    ld b, $fe
    ld bc, $3fff
    rst $38
    pop af
    rst $38
    db $ed
    rst $38
    ld b, [hl]
    ld a, [$f68e]
    ld bc, $82ff
    cp $cc
    ld [hl], h
    ld hl, sp-$08
    ld h, b
    ldh [$e0], a
    ldh [$e0], a
    ldh [$50], a
    ldh a, [$50]
    ldh a, [rNR41]
    ldh [rSVBK], a
    ldh a, [$d8]
    add sp, -$08
    ld hl, sp-$10
    ldh a, [$a0]
    ldh [$e0], a
    ld h, b
    jr c, @-$06

    db $fc
    db $fc
    ld hl, sp-$08
    nop
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
    ld [$080f], sp
    rrca
    inc sp
    ccf
    ld c, a
    ld a, a
    inc a
    ccf
    dec c
    rrca
    ld b, $07
    rrca
    add hl, bc
    rrca
    ld c, $77
    ld a, a
    ei
    cp a
    push de
    rst $38
    ld hl, sp-$09
    ld e, e
    ld [hl], a
    ld a, a
    ld a, a
    ccf
    ccf
    daa
    ccf
    dec a
    ccf
    inc de
    rra
    rra
    rra
    rra
    inc de
    rra
    rra
    db $76
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    cp $fe
    ld e, $fe
    inc c
    db $fc
    ld [bc], a
    cp $7e
    cp $e2
    cp $da
    cp $8c
    db $f4
    inc e
    db $ec
    ld [bc], a
    cp $04
    db $fc
    sbc b
    add sp, -$10
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b

jr_014_41c4:
    ret nz

    ret nz

    and b
    ldh [$e0], a
    ld h, b
    jr c, jr_014_41c4

    db $fc
    db $fc
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$080f], sp
    rrca
    inc sp
    ccf
    ld c, a
    ld a, a
    inc a
    ccf
    dec c
    rrca
    add [hl]
    add a
    rst $08
    ret


    ld d, a
    sbc $ef
    rst $38
    ld c, [hl]
    ld a, e
    cp a
    di
    cp a
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    cpl
    ccf
    daa
    ccf
    dec a
    ccf
    inc de
    rra
    rra
    rra
    rra
    inc de
    rra
    rra
    db $76
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    cp $fe
    ld e, $fe
    inc c
    db $fc
    ld [bc], a
    cp $7e
    cp $e2
    cp $da
    cp $8c
    db $f4
    inc e
    db $ec
    ld [bc], a
    cp $04
    db $fc
    sbc b
    add sp, -$10
    ldh a, [$e0]
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b

jr_014_4284:
    ret nz

    ret nz

    and b
    ldh [$e0], a
    ld h, b
    jr c, jr_014_4284

    db $fc
    db $fc
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    rrca
    dec bc
    dec bc
    rrca
    rrca
    rrca
    ld b, $06
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$080f], sp
    rrca
    inc sp
    ccf
    ld c, a
    ld a, a
    inc a
    ccf
    db $ed
    rst $28
    sbc [hl]
    rst $38
    cp a
    rst $20
    ei
    xor $31
    rst $38
    ld l, d
    rst $38
    rst $18
    rst $38
    ld e, a
    ld a, a
    ld c, a
    ld a, a
    ccf
    ccf
    cpl
    ccf
    daa
    ccf
    dec a
    ccf
    inc de
    rra
    rra
    rra
    rra
    inc de
    rra
    rra
    db $76
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    cp $fe
    ld e, $fe
    inc c
    db $fc
    ld [bc], a
    cp $7e
    cp $e2
    cp $da
    cp $8c
    db $f4
    inc e
    db $ec
    ld [bc], a
    cp $04
    db $fc
    sbc b
    add sp, -$10
    ldh a, [$60]
    ldh [$a0], a
    ldh [rLCDC], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b

jr_014_4344:
    ret nz

    ret nz

    and b
    ldh [$e0], a
    ld h, b
    jr c, jr_014_4344

    db $fc
    db $fc
    ld hl, sp-$08
    nop
    nop
    nop
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
    inc b
    rlca
    add hl, de
    rra
    daa
    ccf
    ld e, $1f
    ld b, $07
    inc bc
    inc bc
    rlca
    inc b
    dec bc
    rrca
    rla
    rra
    cpl
    ccf
    ld l, $3f
    ld e, [hl]
    ld a, a
    ld e, a
    ld a, a
    ccf
    ccf
    cpl
    ccf
    inc a
    ccf
    inc de
    rra
    rrca
    rrca
    rrca
    inc c
    rrca
    rrca
    db $76
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld a, a
    ld a, a
    adc a
    rst $38
    ld b, $fe
    ld bc, $3fff
    rst $38
    pop af
    rst $38
    db $ed
    rst $38
    ld b, [hl]
    ld a, [$f68e]
    ld bc, $82ff
    cp $cc
    ld [hl], h
    ld hl, sp-$08
    ldh [$a0], a
    ld d, b
    ldh a, [$e8]
    ld hl, sp-$28
    ld hl, sp-$74
    db $fc
    call nz, $b4fc
    cp h
    adc [hl]
    adc [hl]

jr_014_43c4:
    jp $a1c3


    pop hl
    ldh [$60], a
    jr c, jr_014_43c4

    rst $38
    rst $38
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc $ce
    ld [hl], l
    ld a, e
    ccf
    ccf
    cp $fe
    nop
    nop
    nop
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
    inc b
    rlca
    ld [$080f], sp
    rrca
    inc d
    rra
    inc de
    rra
    ld [$0f0f], sp
    rrca
    rra
    inc e
    rla
    rra
    ld l, $3f
    ld l, $3f
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld a, a
    ld a, a
    ld c, a
    ld a, a
    ld b, b
    ld a, a
    jr c, jr_014_4461

    cpl
    ccf
    inc e
    rra
    rra
    ld d, $2e
    ccf
    ld a, l
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    cp $fe
    ld c, $fe
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $04
    db $fc
    inc e
    db $fc
    db $76
    cp $a2
    cp $a4
    db $fc
    ret z

    ld hl, sp-$0a
    or $67
    push hl
    xor e
    rst $28
    cp $fe
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    add b
    add b
    add b
    add b
    add b

jr_014_4461:
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ld b, b
    ld b, b
    ret nz

    cp b
    ld hl, sp-$04
    db $fc
    ld hl, sp-$08
    nop
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
    rlca
    dec b
    dec b
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc b
    adc a
    adc b
    adc a
    sub b
    sbc a
    db $10
    rra
    sbc h
    sbc a
    db $d3
    rst $18
    ld a, h
    ld a, a
    ld a, a
    ld c, a
    ld a, a
    ld e, c
    daa
    ld a, $2f
    ccf
    cpl
    ccf
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld a, a
    ld a, a
    ld c, a
    ld a, a
    ld d, b
    ld a, a
    jr c, jr_014_4501

    daa
    ccf
    inc e
    rra
    rra
    ld d, $26
    ccf
    ld a, l
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop

jr_014_44d4:
    nop
    nop
    ld [hl], b
    ld [hl], b
    ld hl, sp-$08
    jr jr_014_44d4

    ld [$04f8], sp
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [$d8f8], sp
    ld hl, sp+$28
    ld hl, sp-$38
    ld hl, sp-$70
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b

jr_014_4501:
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ld b, b
    ld b, b
    ret nz

    cp b
    ld hl, sp-$04
    db $fc
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    inc c
    rrca
    ld [$300f], sp
    ccf
    ldh a, [$df]
    ld hl, sp-$71
    ld [hl], h
    ld e, a
    and d
    rst $38
    sub a
    rst $38
    sbc [hl]
    ei
    xor a
    db $fd
    ld e, a
    ld a, [hl]
    ld e, a
    ld a, a
    cpl
    ccf
    cpl
    ccf
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld a, a
    ld a, a

jr_014_453c:
    ld b, a
    ld a, a
    ld c, b
    ld a, a
    inc a
    ccf
    daa
    ccf
    inc e
    rra
    rra
    ld d, $25
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    jr nz, jr_014_453c

    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$18
    ld hl, sp+$30
    ldh a, [$d0]
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    ldh a, [$f0]
    ret c

    add sp, -$08
    ld hl, sp-$10
    ldh a, [$80]
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ld b, b
    and b
    ldh [$f8], a
    ld hl, sp-$04
    db $fc
    ld hl, sp-$08
    nop
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
    inc b
    rlca
    add hl, de
    rra
    daa
    ccf
    ld e, $1f
    ld b, $07
    inc bc
    inc bc
    rlca
    inc b
    rlca
    rlca
    dec bc
    rrca
    rla
    rra
    rla
    rra
    cpl
    ccf
    cpl
    ccf
    ccf
    ccf
    cpl
    ccf
    ld hl, $383f
    ccf
    ld de, $1f1f
    rra
    rra
    inc de
    rra
    rra
    db $76
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop

jr_014_45d6:
    ld b, $06
    ld a, a
    ld a, a
    adc a
    rst $38
    ld b, $fe
    ld bc, $3fff
    rst $38
    pop af
    rst $38
    db $ed
    rst $38
    ld b, [hl]
    ld a, [$f68e]
    ld bc, $82ff
    cp $cc
    ld [hl], h
    ld hl, sp-$48
    ldh [$e0], a
    jr nz, jr_014_45d6

    ld [hl], b
    ldh a, [$f0]
    ldh a, [$90]
    ldh a, [$88]
    ld hl, sp-$3c
    db $fc
    or h
    cp h
    adc [hl]
    adc [hl]

jr_014_4604:
    jp $a1c3


    pop hl
    ldh [$60], a
    jr c, jr_014_4604

    rst $38
    rst $38
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $b6cc
    ld a, [$7e62]
    db $fc
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
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc b
    rlca
    add hl, de
    rra
    daa
    ccf
    ld e, $1f
    ld b, $07
    inc bc
    inc bc
    rlca
    inc b
    dec bc
    rrca
    rla
    rra
    inc d
    rra
    dec l
    ccf
    cpl
    ccf
    cpl
    ccf
    ccf
    ccf
    daa
    ccf
    jr c, jr_014_46a1

    ld de, $0f1f
    rrca
    rrca
    add hl, bc
    ccf
    ccf
    ld a, e
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld a, a
    ld a, a
    adc a
    rst $38
    ld b, $fe
    ld bc, $3fff
    rst $38
    pop af
    rst $38
    db $ed
    rst $38
    ld b, [hl]
    ld a, [$f68e]
    ld bc, $82ff
    cp $cc
    ld [hl], h
    ld hl, sp-$48
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    adc b

jr_014_46a1:
    ld hl, sp-$3c
    db $fc

jr_014_46a4:
    or $fe
    xor e
    db $eb
    ldh [$60], a
    jr c, jr_014_46a4

    rst $38
    rst $38
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $b6cc
    ld a, [$7e62]
    db $fc
    db $fc
    nop
    nop

    db $f0, $46, $90, $47, $10, $48, $90, $48, $30, $49, $d0, $49

    ld [hl], b
    ld c, d

    db $f0, $4a, $90, $4b, $10, $4c, $b0, $4c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0302
    inc bc
    inc bc
    ld e, $1f
    cpl
    ld a, [hl-]
    daa
    ld a, $19
    add hl, de
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    rrca
    add hl, bc
    rrca
    ld [de], a
    rra
    ld [de], a
    rra
    ld [hl+], a
    ccf
    ld a, [hl-]
    ccf
    ccf
    daa
    ccf
    ld hl, $233f
    rra
    ld de, $111f
    rra
    ld de, $111f
    ccf
    ld hl, $273e
    ld a, e
    ld e, l
    ld h, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    ld [hl], h
    ld [hl], h

jr_014_4734:
    adc d
    cp $01
    rst $38
    dec e
    rst $38
    ld a, $e2
    ld a, [$fec6]
    ld a, [hl]
    or $9e
    ld a, a
    adc l
    rst $38
    inc bc
    db $fc
    add h
    ld hl, sp-$38
    ld [hl], b
    ldh a, [$c0]
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_014_4734

    ldh [$e0], a
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [$90]
    ld hl, sp-$78
    ld a, h
    ld l, h
    ld d, $16
    inc bc
    inc bc
    ld bc, $8001
    add b
    add b
    add b
    db $fc
    db $fc
    rst $38
    rst $38
    db $fc
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
    add b
    add b
    adc $ce
    ld [hl], l
    ld a, e
    ccf
    ccf
    cp $fe
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
    inc bc
    inc bc
    ld e, $1f
    cpl
    ld a, [hl-]
    daa
    ld a, $19
    add hl, de
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    rrca
    ld a, [bc]
    rrca
    inc d
    rra
    inc d
    rra
    dec h
    ccf
    dec sp
    ld a, $3f
    inc h
    ccf
    ld [hl+], a
    ccf
    inc hl
    rra
    ld de, $111f
    rra
    ld de, $111f
    ccf
    ld hl, $273e
    ld a, e
    ld e, l
    ld h, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    ld [hl], h
    ld [hl], h
    adc d
    cp $01
    rst $38
    dec e
    rst $38
    ld a, $e2
    ld a, [$fec6]
    ld a, [hl]
    or $9e
    ld a, a
    adc l
    rst $38
    inc bc
    db $fc
    add h
    ld hl, sp-$38
    ld [hl], b
    ldh a, [$a0]
    ldh [$a0], a
    ldh [$60], a
    ldh [$e0], a
    ldh [$f0], a
    ld d, b
    ldh a, [$50]
    ldh [rNR41], a
    ldh [$60], a
    ld hl, sp+$78
    db $ec
    db $fc
    db $fc
    ld a, h
    ld hl, sp-$08
    add b
    add b
    add b
    add b
    add b
    add b
    db $fc
    db $fc
    cp $fe
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0302
    inc bc
    inc bc
    ld e, $1f
    cpl
    ld a, [hl-]
    daa
    ld a, $19
    add hl, de
    inc bc
    inc bc
    dec b
    rlca
    jr c, jr_014_486b

    ld a, c
    ld e, a
    ld e, [hl]
    ld a, a
    ld a, a
    ld a, c
    ccf
    dec a
    ld a, $2f
    ccf
    ld hl, $223f
    ccf
    ld [hl+], a
    rra
    ld de, $111f
    rra
    ld de, $111f
    ccf
    ld hl, $273e
    ld a, e
    ld e, l
    ld h, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    ld [hl], h
    ld [hl], h
    adc d
    cp $01
    rst $38
    dec e
    rst $38
    ld a, $e2
    ld a, [$fec6]
    ld a, [hl]
    or $9e
    ld a, a
    adc l
    rst $38
    inc bc
    db $fc
    add h
    ld a, b
    ret z

    or b

jr_014_486b:
    ldh a, [$50]
    ldh a, [$d0]
    ldh a, [$e0]
    ld h, b
    ldh [rNR41], a
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    db $fc
    db $fc
    cp $fe
    db $fc
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
    inc bc
    inc bc
    rlca
    dec b
    dec b
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
    inc b
    rlca
    rlca
    rlca
    xor l
    xor [hl]
    rst $18
    push af
    adc $fd
    or e
    or d
    push bc
    rst $00
    ld a, d
    ld a, a
    ld a, $27
    ccf
    dec [hl]
    ld a, a
    ld l, h
    ld a, e
    ld c, a
    ld a, b
    ld c, a
    ld a, h
    ld e, a
    ccf
    inc hl
    ccf
    inc h
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    rra
    ld de, $111f
    rra
    ld de, $213f
    ld a, $27
    ld a, e
    ld e, l
    ld h, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    add sp, -$18
    inc d
    db $fc
    ld [bc], a
    cp $3a
    cp $7c
    call nz, $8cf4
    db $fc
    db $fc
    db $ec
    inc a
    cp $1a
    cp $06
    ld hl, sp+$08
    ldh a, [$90]
    ldh [$e0], a
    db $10
    ldh a, [$90]
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    db $fc
    db $fc
    cp $fe
    db $fc
    db $fc
    inc c
    inc c
    ld e, $16
    ld d, $1e
    ld e, $1e
    inc c
    inc c
    ld b, $06
    inc bc
    inc bc
    ld bc, $0001
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    rlca
    rlca
    db $ed
    xor $ff
    sub l
    xor $bd

jr_014_4964:
    ld b, a
    ld a, [hl]
    rst $28
    cp a
    rst $38
    sbc c
    rst $38
    jr jr_014_4964

    dec a
    db $e3
    cp a
    ld h, b
    ld a, a
    jr nc, jr_014_49b3

    inc a
    cpl
    ccf
    inc hl
    ccf
    inc h
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    rra
    ld de, $111f
    rra
    ld de, $213f
    ld a, $27
    ld a, e
    ld e, l
    ld h, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    add sp, -$18
    inc d
    db $fc
    ld [bc], a
    cp $3a
    cp $7c
    call nz, $8cf4
    db $fc
    db $fc
    db $ec
    inc a
    cp $1a
    cp $06
    ld hl, sp+$08
    ldh a, [$90]
    ldh [$e0], a
    db $10
    ldh a, [rNR10]
    ldh a, [$a0]
    ldh [rLCDC], a

jr_014_49b3:
    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    db $fc
    db $fc
    cp $fe
    db $fc
    db $fc
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
    inc bc
    inc bc
    ld e, $1f
    cpl
    ld a, [hl-]
    daa
    ld a, $19
    add hl, de
    ld bc, $0201
    inc bc
    dec b
    rlca
    dec bc
    rrca
    ld c, $0f
    inc d
    rra
    inc d
    rra
    inc a
    cpl
    ld a, $27
    ccf
    inc hl
    rra
    ld de, $111f
    rra
    ld de, $111f
    ccf
    ld hl, $273e
    ld a, e
    ld e, l
    ld h, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ld [hl], h
    ld [hl], h
    adc d
    cp $01
    rst $38
    dec e
    rst $38
    ld a, $e2
    ld a, [$fec6]
    ld a, [hl]
    or $9e
    ld a, a
    adc l
    rst $38
    inc bc
    db $fc
    add h
    ld hl, sp-$38
    ld [hl], b
    ldh a, [$c0]
    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ld h, b
    ldh [$50], a
    ldh a, [$f8]
    xor b
    ld hl, sp+$18
    ld hl, sp-$78
    ld a, h
    ld b, h
    ld a, $36
    dec bc
    dec bc
    ld bc, $8001
    add b
    add b
    add b
    db $fc
    db $fc
    rst $38
    rst $38
    db $fc
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
    add b
    add b
    adc $ce
    ld [hl], l
    ld a, e
    ccf
    ccf
    cp $fe
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
    inc b
    rlca
    inc b
    rlca
    dec b
    rlca
    ld c, $0f
    rla
    dec e
    inc de
    ld e, $0f
    rrca
    inc b
    rlca
    dec bc
    rrca
    ld [$100f], sp
    rra
    db $10
    rra
    jr nz, jr_014_4ad3

    jr c, jr_014_4ad5

    ld a, $27
    ccf
    ld hl, $283f
    rra
    inc d
    rra
    inc d
    rra
    ld d, $1f
    inc d
    ccf
    inc h
    ccf
    jr c, jr_014_4ad8

    dec sp
    ld a, h
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    add sp, -$18
    inc d
    db $fc
    ld [bc], a
    cp $1a
    cp $3c
    db $f4
    ld [hl], h
    call z, $fcfc
    db $f4
    ld e, h
    ld a, h
    adc h
    cp h
    ld b, h
    ld hl, sp+$08
    ldh a, [$90]
    ld h, b
    ldh [$cc], a
    call z, $f63e
    ld [hl], $fe
    ld e, [hl]

jr_014_4ad3:
    cp $6c

jr_014_4ad5:
    db $ec
    ret nz

    ret nz

jr_014_4ad8:
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ld b, b
    ret nz

    ret nz

    and b
    ld h, b
    inc e
    db $fc
    cp $fe
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add d
    add e
    call nz, $c4c7
    rst $00
    call nz, $83c7
    add e
    push bc
    rst $00
    ld h, h
    ld h, a
    ccf
    ccf
    inc d
    rra
    inc hl
    ccf
    db $10
    rra
    db $10
    rra
    db $10
    rra
    jr nz, jr_014_4b73

    inc a
    ccf
    ccf
    inc hl
    ccf
    jr nz, jr_014_4b7a

    inc l
    ccf
    inc h
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld h, $7f
    ld e, h
    ld h, a
    ld a, l
    ld a, [hl]
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    add sp, -$18
    inc d
    db $fc
    ld [bc], a
    cp $1a
    cp $1c
    db $f4
    inc [hl]
    db $ec
    ld a, h
    db $fc
    cp h
    db $ec
    db $fc
    ld b, h
    db $fc
    and h
    ret c

    xor b
    ldh a, [$d0]
    ld h, b
    ldh [$90], a
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [rLCDC], a

jr_014_4b73:
    ret nz

    ld b, b
    ret nz

    add b
    add b
    add b
    add b

jr_014_4b7a:
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ret nc

    ldh a, [$9c]
    ld a, h
    cp $fe
    db $fc
    db $fc
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc b
    rlca
    jr c, jr_014_4bdb

    ld c, b
    ld a, a
    ld e, h
    ld a, a
    cp $b3
    rst $38
    sub c
    rst $38
    sbc e
    rst $20
    cp a
    ld b, l
    ld a, a
    ld [hl+], a
    ccf
    ld de, $101f
    rra
    db $10
    rra
    db $10
    rra
    inc e
    rra
    ccf
    inc hl
    ccf
    jr nz, jr_014_4bfa

    inc h
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld h, $7f
    ld e, l
    ld h, d
    ld a, a
    ld a, [hl]
    ld a, a
    rst $38
    rst $38

jr_014_4bce:
    ld a, a
    ld a, a
    nop
    nop
    ldh [$e0], a

jr_014_4bd4:
    jr jr_014_4bce

    ld [$04f8], sp
    db $fc
    inc b

jr_014_4bdb:
    db $fc
    inc b
    db $fc
    ld [$e8f8], sp
    ld hl, sp+$1c
    db $f4
    sbc h
    db $f4
    ld hl, sp+$68
    or $b6
    ld a, l
    rst $18
    cp a
    ei
    rra
    rst $38
    ld l, $ee
    jr nz, jr_014_4bd4

    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b

jr_014_4bfa:
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [$30]
    ldh a, [$d0]
    or b
    ld [hl], b
    call c, $fefc
    cp $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0302
    inc bc
    inc bc
    ld e, $1f
    cpl
    ld a, [hl-]
    daa
    ld a, $19
    add hl, de
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    rrca
    add hl, bc
    rrca
    ld [de], a
    rra
    ld [de], a
    rra
    ld [hl+], a
    ccf
    ld a, [hl-]
    ccf
    ccf
    daa
    ccf
    ld hl, $233f
    rra
    ld de, $111f
    rra
    ld de, $111f
    ccf
    ld hl, $273e
    ld a, e
    ld e, l
    ld h, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    ld [hl], h
    ld [hl], h

jr_014_4c54:
    adc d
    cp $01
    rst $38
    dec e
    rst $38
    ld a, $e2
    ld a, [$fec6]
    ld a, [hl]
    or $9e
    ld a, a
    adc l
    rst $38
    inc bc
    db $fc
    add h
    ld hl, sp-$38
    ld [hl], b
    ldh a, [$c0]
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_014_4c54

    ldh [$e0], a
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [$90]
    ld hl, sp-$78
    ld a, h
    ld l, h
    ld d, $16
    inc bc
    inc bc
    ld bc, $8001
    add b
    add b
    add b
    db $fc
    db $fc
    rst $38
    rst $38
    db $fc
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
    add b
    add b
    xor $ee
    ld e, e
    ld a, l
    ld sp, $fe3f
    cp $00
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
    ld bc, $0302
    inc bc
    inc bc
    ld e, $1f
    cpl
    ld a, [hl-]
    daa
    ld a, $19
    add hl, de
    ld bc, $0201
    inc bc
    dec b
    rlca
    dec bc
    rrca
    ld c, $0f
    inc d
    rra
    inc d
    rra
    inc a
    cpl
    ld a, $27
    ccf
    inc hl
    rra
    ld de, $111f
    rra
    ld de, $111f
    ccf
    ld hl, $273e
    ld a, e
    ld e, l
    ld h, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ld [hl], h
    ld [hl], h
    adc d
    cp $01
    rst $38
    dec e
    rst $38
    ld a, $e2
    ld a, [$fec6]
    ld a, [hl]
    or $9e
    ld a, a
    adc l
    rst $38
    inc bc
    db $fc
    add h
    ld hl, sp-$38
    ld [hl], b
    ldh a, [$c0]
    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ld h, b
    ldh [$50], a
    ldh a, [$f8]
    xor b
    ld hl, sp+$18
    ld hl, sp-$78
    ld a, h
    ld b, h
    ld a, $36
    dec bc
    dec bc
    ld bc, $8001
    add b
    add b
    add b
    db $fc
    db $fc
    rst $38
    rst $38
    db $fc
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
    add b
    add b
    xor $ee
    ld e, e
    ld a, l
    ld sp, $fe3f
    cp $00
    nop
    ld [hl], b
    ld c, l
    db $10
    ld c, [hl]
    sub b
    ld c, [hl]
    db $10
    ld c, a
    ret nc

    ld c, a
    ld [hl], b
    ld d, b
    jr nc, jr_014_4daf

    ret nc

    ld d, c
    ld [hl], b
    ld d, d
    ldh a, [rHDMA2]
    sub b
    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    rlca
    ld [$080f], sp
    rrca
    rlca
    rlca
    inc b
    rlca
    dec b
    rlca
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    ld b, $09
    rrca
    ld [$070f], sp
    rlca
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    rlca
    rlca
    inc b
    rlca
    rlca
    dec sp
    ccf
    ld a, a
    ld a, a
    ccf

jr_014_4daf:
    ccf
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
    ld [hl], b
    ldh a, [rOBP0]
    ld hl, sp+$4c
    db $fc
    sbc [hl]
    ld a, [c]
    ld a, $e6
    ld a, $e2
    cp [hl]
    and $ff
    ld b, l
    rst $38
    add c
    cp $02
    db $fc
    call nz, Call_000_38f8
    ldh a, [rSVBK]
    ldh a, [$90]
    ld hl, sp-$78
    ld hl, sp-$48
    ld hl, sp-$38
    ld a, h
    call nz, $e43c
    cp $e2
    rst $18
    ld e, e
    push hl
    push hl
    ret nc

    ldh a, [$f0]
    or b
    ld e, $fe
    rst $38
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc $ce
    ld [hl], l
    ld a, e
    ccf
    ccf
    cp $fe
    nop
    nop
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
    inc b
    rlca
    ld [$080f], sp
    rrca
    rlca
    rlca
    inc b
    rlca
    dec b
    rlca
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    ld b, $07
    rlca
    add hl, bc
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    rlca
    rlca
    inc b
    rlca
    rlca
    dec sp
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
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
    ld [hl], b
    ldh a, [rOBP0]
    ld hl, sp+$4c
    db $fc
    sbc [hl]
    ld a, [c]
    ld a, $e6
    ld a, $e2
    cp [hl]
    and $ff
    ld b, l
    rst $38
    add c
    cp $02
    db $fc
    call nz, Call_000_38f8
    ldh a, [$f0]
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$68
    ldh a, [$b0]
    ldh a, [rNR10]
    ld hl, sp-$48
    db $ec
    db $f4
    db $fc
    ld a, h
    ld hl, sp-$08
    ret nc

    ldh a, [$f0]
    or b
    ld e, $fe
    rst $38
    rst $38
    cp $fe
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
    inc b
    rlca
    ld [$080f], sp
    rrca
    rlca
    rlca
    inc b
    rlca
    dec b
    rlca
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $1b1b
    cpl
    ld a, $3f
    cpl
    dec a
    ccf
    rra
    ld a, [de]
    dec c
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    rlca
    rlca
    inc b
    rlca
    rlca
    dec sp
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
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
    ld [hl], b
    ldh a, [rOBP0]
    ld hl, sp+$4c
    db $fc
    sbc [hl]
    ld a, [c]
    ld a, $e6
    ld a, $e2
    cp [hl]
    and $ff
    ld b, l
    rst $38
    add c
    cp $02
    db $fc
    call nz, Call_000_38f8
    ldh a, [$f0]
    ld hl, sp+$48
    ld hl, sp-$58
    ldh a, [$50]
    ldh [$60], a
    and b
    ldh [rNR41], a
    ldh [$f0], a
    ldh a, [$f0]
    ld d, b
    ldh [$e0], a
    ret nc

    ldh a, [$f0]
    or b
    ld e, $fe
    rst $38
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    rrca
    ld [$100f], sp
    rra
    ld de, $0e1f
    rrca
    ld [$0b0f], sp
    rrca
    rlca
    inc b
    rst $00
    push bc
    ld h, e
    ld [c], a
    db $e3
    ld h, e
    rst $20
    and $ff
    db $fd
    rra
    dec de
    dec e
    ld d, $0b
    rrca
    dec c
    rrca
    ld [$070f], sp
    rlca
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    rlca
    rlca
    inc b
    rlca
    rlca
    dec sp
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    sub b
    ldh a, [$98]
    ld hl, sp+$3c
    db $e4
    ld a, h
    call z, $c47c
    ld a, h
    call z, $8afe
    cp $02
    db $fc
    inc b
    ld hl, sp-$78
    ldh a, [rSVBK]
    ldh [$e0], a
    ldh a, [$90]
    ldh a, [$d0]
    ldh [rNR41], a
    ldh [$e0], a
    jr nz, @-$1e

    jr nz, @-$1e

    ldh a, [$f0]
    ldh a, [$50]
    ldh [$e0], a
    ret nc

    ldh a, [$f0]
    or b
    ld e, $fe
    rst $38
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc c
    rrca
    ld [$900f], sp
    sbc a
    pop de
    rst $18
    adc $cf
    ret z

    rst $08
    adc e
    adc a
    rst $00
    call nz, $6567
    ccf
    ld a, $13
    rra
    rla
    inc e
    ccf
    inc l
    ccf
    ld a, [hl+]
    rra
    add hl, de
    rrca
    ld c, $09
    rrca
    ld [$070f], sp
    rlca
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    rlca
    rlca
    inc b
    rlca
    rlca
    dec sp
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    sub b
    ldh a, [$98]
    ld hl, sp+$3c
    db $e4
    ld a, h
    call z, $c47c
    ld a, h
    call z, $8afe
    cp $02
    db $fc
    inc b
    ld hl, sp-$78
    ldh a, [$f0]
    ldh [$60], a
    ldh a, [$90]
    ldh a, [rNR10]
    ldh a, [$b0]
    ldh [$e0], a
    jr nz, @-$1e

    jr nz, @-$1e

    ldh a, [$d0]
    ldh a, [$50]
    ldh [$e0], a
    ret nc

    ldh a, [$f0]
    or b
    ld e, $fe
    rst $38
    rst $38
    cp $fe
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    ld b, $07
    inc b
    dec bc
    rrca
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    rlca
    ld b, $07
    rlca
    dec sp
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop

jr_014_50b6:
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr c, jr_014_50b6

    inc h
    db $fc
    ld [hl+], a
    cp $47
    db $fd
    adc a
    ei
    rra
    pop af
    rst $18
    di
    rst $38
    ld [hl+], a
    rst $38
    ld b, b
    rst $38
    add c
    cp $e2
    db $fc
    sbc h
    ldh a, [rSVBK]
    ldh a, [$50]
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$28
    ld a, h
    db $e4
    cp $e2
    cp $32
    rst $38
    sbc e
    push af
    push de
    ldh a, [$b0]
    ld e, $fe
    rst $38
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc $ce
    ld [hl], l
    ld a, e
    ccf
    ccf
    cp $fe
    nop
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
    dec b
    rlca
    inc bc
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    dec bc
    rrca
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    dec b
    rlca
    rlca
    dec b
    rlca
    dec sp
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
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
    ld [hl], b
    ldh a, [$88]
    ld hl, sp+$0c
    db $fc
    ld a, [bc]
    cp $92
    cp $66
    cp $0e
    ld a, [$f96f]
    rst $38
    sub c
    cp $a2
    db $fc
    db $e4
    ld sp, hl
    add hl, sp
    di
    jp nc, Jump_000_2bfa

    rst $38
    ld d, a
    db $fc
    inc h
    ret c

    ld hl, sp+$20
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    jr nz, @-$0e

    sub b
    ldh a, [$f0]
    ldh a, [$b0]
    ld e, $fe
    rst $38
    rst $38
    cp $fe
    add b
    add b
    ret nz

    ret nz

    ret nz

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
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec bc
    rrca
    adc h
    adc a
    call nz, $c8c7
    rst $08
    ret z

    rst $08
    ret z

    rst $08
    ld h, h
    ld h, a
    ld [hl-], a
    inc sp
    rra
    dec e
    rrca
    ld a, [bc]
    rra
    dec d
    rra
    inc d
    rrca
    ld [$080f], sp
    rlca
    rrca
    ld [$0a0f], sp
    rrca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    rlca
    dec b
    rlca
    rlca
    dec b
    rlca
    dec sp
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call c, Call_000_22dc
    cp $22
    cp $12
    cp $0c
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc c
    db $fc
    inc e
    db $f4
    cp b
    add sp, -$10
    ld [hl], b
    ld hl, sp-$28
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [$e0], a
    jr nz, @-$1e

    ldh [$e0], a
    ldh [$a0], a
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$f0]
    ldh a, [$b0]
    ld e, $fe
    rst $38
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    inc de
    rra
    ld [hl+], a
    ccf
    inc h
    ccf
    jr jr_014_52a1

    inc d
    rra
    ld [hl+], a
    ccf
    ld [hl], a
    ld e, l
    ld a, a
    ld c, b
    ld a, a
    ld c, l
    ld a, a
    ld e, e
    ccf
    inc h
    rra
    inc de
    rra
    db $10
    rrca
    ld [$080f], sp
    rlca
    rrca
    ld [$0a0f], sp
    rrca
    rlca
    rlca
    rlca

jr_014_52a1:
    rlca
    rlca
    dec b
    rlca
    dec b
    rlca
    rlca
    dec b
    rlca
    ccf
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    inc c
    jp nc, Jump_000_31de

    rst $38
    ld de, $0eff
    cp $04
    db $fc
    inc b
    db $fc
    ld [$88f8], sp
    ld hl, sp-$30
    ld [hl], b
    db $fc
    cp h
    ld a, [$fe6e]
    cp d
    db $fc
    inc e
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$f0]
    sbc b
    ld hl, sp+$6e
    cp $ff
    rst $38
    cp $fe
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
    inc b
    rlca
    ld [$080f], sp
    rrca
    rlca
    rlca
    inc b
    rlca
    dec b
    rlca
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    ld b, $09
    rrca
    ld [$070f], sp
    rlca
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    rlca
    rlca
    inc b
    rlca
    rlca
    ld a, [hl-]
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
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
    ld [hl], b
    ldh a, [rOBP0]
    ld hl, sp+$4c
    db $fc
    sbc [hl]
    ld a, [c]
    ld a, $e6
    ld a, $e2
    cp [hl]
    and $ff
    ld b, l
    rst $38
    add c
    cp $02
    db $fc
    call nz, Call_000_38f8
    ldh a, [$f0]
    ldh a, [$90]
    ld hl, sp-$78
    ld hl, sp-$48
    ld hl, sp-$38
    ld a, h
    call nz, $e43c
    cp $e2
    sbc $5a
    rst $20
    rst $20
    pop de
    pop af
    ldh a, [$b0]
    ld e, $fe
    rst $38
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call c, $b6dc
    ld a, [$7e62]
    db $fc
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
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b
    dec bc
    ld c, $09
    rrca
    inc b
    rlca
    inc bc
    inc bc
    rlca
    inc b
    rlca
    rlca
    rlca
    inc b
    rlca
    rlca
    ld a, [hl-]
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop

jr_014_53d6:
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr c, jr_014_53d6

    inc h
    db $fc
    ld h, $fe
    ld c, a
    ld sp, hl
    sbc a
    di
    rra
    pop af
    rst $18
    di
    rst $38
    ld [hl+], a
    rst $38
    ld b, b
    rst $38
    add c
    cp $e2
    db $fc
    sbc h
    ldh a, [rSVBK]
    ldh a, [$d0]
    ld hl, sp-$78
    ld hl, sp-$68
    ld hl, sp-$18
    ld a, h
    call nz, $e2fe
    cp $a2
    rst $38
    ei
    push de
    push af
    ld hl, sp-$48
    ld e, $fe
    rst $38
    rst $38
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    call c, $b6dc
    ld a, [$7e62]
    db $fc
    db $fc
    nop
    nop
    ld [hl], b
    ld d, h
    jr nc, jr_014_54a9

    ret nc

    ld d, l
    ld [hl], b
    ld d, [hl]
    jr nc, jr_014_54b1

    ldh a, [$57]
    or b
    ld e, b
    ld d, b
    ld e, c
    db $10
    ld e, d
    sub b
    ld e, d
    ld d, b
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
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
    add hl, bc
    rrca
    ld [$080f], sp
    rrca
    rlca
    rlca
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    inc b
    rlca

jr_014_54a9:
    inc b
    rra
    rra
    inc a
    ccf
    rra
    rra
    nop

jr_014_54b1:
    nop
    inc e
    inc e
    inc hl
    ccf
    ld b, b
    ld a, a
    ld h, e
    ld a, a
    rst $38
    call c, $e93f
    rra
    db $fc
    cpl
    ei
    ld a, a
    sub $7f
    push bc
    rst $38
    pop bc
    cp [hl]
    ld [c], a
    ld a, h
    db $fc
    ldh [$a0], a
    ld [hl], b
    sub b
    ldh a, [$90]
    ld hl, sp-$78
    ld hl, sp-$08
    ld a, b
    ret z

    ld a, h
    call nz, $e4fc
    cp [hl]
    and d
    sbc $5a
    rst $00
    ld b, a
    add c
    add c
    add b
    add b
    ldh [$e0], a
    ret nc

    ldh a, [$7c]
    cp h
    rra
    rst $38
    db $fc
    db $fc
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
    ret nz

    ld b, b

Call_014_54fc:
    ret nz

    ret nz

    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    ld l, [hl]
    ld l, [hl]
    dec [hl]
    dec sp
    rra
    rra
    cp $fe
    nop
    nop
    nop
    nop
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
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    rlca
    ld b, $07
    ld b, $0b
    ld c, $09
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    rra
    rra
    inc a
    ccf
    rra
    rra
    nop
    nop
    inc e
    inc e
    inc hl
    ccf
    ld b, b
    ld a, a
    ld h, e
    ld a, a
    rst $38
    call c, $e93f
    rra
    db $fc
    cpl
    ei
    ld a, a
    sub $7f
    push bc
    rst $38
    pop bc
    cp [hl]
    ld [c], a
    ld a, h

jr_014_558b:
    db $fc
    or b

jr_014_558d:
    ldh a, [$d0]
    ld [hl], b
    ret nc

    jr nc, jr_014_558b

    jr z, jr_014_558d

    ld l, b
    add sp, -$48
    add sp, $38
    ldh a, [$90]
    ldh a, [$90]
    cp $7e
    rst $10
    ld e, e
    sbc a
    sbc a
    adc [hl]
    adc [hl]
    ldh [$e0], a
    ret nc

    ldh a, [$7c]
    cp h
    ld e, $fe
    db $fc
    db $fc
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
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    inc sp
    inc sp
    ld a, h
    ld e, a
    ld e, l
    ld a, a
    ld a, a
    ld a, e
    inc e
    rla
    inc c
    rrca
    inc de
    rra
    ld de, $081f
    rrca
    dec bc
    rrca
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    rra
    rra
    inc a
    ccf
    rra
    rra
    nop
    nop
    inc e
    inc e
    inc hl
    ccf
    ld b, b
    ld a, a

jr_014_5618:
    ld h, e
    ld a, a
    rst $38
    call c, $e93f
    rra
    db $fc
    cpl
    ei
    ld a, a
    sub $7f
    push bc
    rst $38
    pop bc
    ld a, $e2
    db $fc
    db $fc
    ldh a, [$50]
    ldh a, [$90]
    ldh a, [$90]
    ldh [$a0], a
    ldh [$e0], a
    jr nz, jr_014_5618

    and b
    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [$60], a
    ldh [$60], a
    ldh [$a0], a
    ret nz

    ret nz

    ldh [$e0], a
    ret nc

    ldh a, [$7c]
    cp h
    ld e, $fe
    db $fc
    db $fc
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
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    dec bc
    rrca
    adc b
    adc a
    ret z

    rst $08
    call nz, $c4c7
    rst $00
    add d
    add e
    db $d3
    db $d3
    ld a, [hl]
    ld l, a
    ld a, a
    ld b, l
    ld a, [hl-]
    cpl
    ld [hl], c
    ld e, a
    dec sp
    ld l, $1f
    inc e
    inc de
    rra
    ld de, $081f
    rrca
    dec bc
    rrca
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    rra
    rra
    inc a
    ccf
    rra
    rra
    nop
    nop
    jr c, jr_014_570c

    ld b, [hl]
    ld a, [hl]
    add c
    rst $38
    rst $00
    rst $38
    rst $38
    cp b
    ld a, a
    db $d3
    ccf
    ld hl, sp+$5f
    or $ff
    xor l
    cp $8a
    cp $82
    ld a, h
    call nz, $f8f8
    ldh a, [$90]
    ldh a, [rNR10]
    ldh [$a0], a
    ret nz

    ld b, b
    and b
    ldh [rNR41], a
    ldh [$a0], a
    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh a, [$50]
    ldh a, [$50]
    ldh [$a0], a
    ret nz

    ret nz

    ldh [$e0], a
    ret nc

    ldh a, [$7c]
    cp h

jr_014_570c:
    ld e, $fe
    db $fc
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
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
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
    inc bc
    inc bc
    rlca
    dec b
    dec b
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add h
    add h
    adc e
    adc a
    ld [$880f], sp
    adc a
    call nz, $74c7
    ld [hl], a
    ld a, [hl]
    ld c, a
    ld [hl], e
    ld e, a
    scf
    dec a
    ld a, $2b
    ld a, a
    ld c, l
    ld a, e
    ld e, [hl]
    ld sp, $1c3f
    rra
    inc de
    rra
    ld de, $081f
    rrca
    dec bc
    rrca
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    rra
    rra
    inc a
    ccf
    rra
    rra
    nop
    nop
    jr c, jr_014_57cc

    ld b, [hl]
    ld a, [hl]
    add c
    rst $38
    rst $00
    rst $38
    rst $38
    cp b
    ld a, a
    db $d3
    ccf
    ld hl, sp+$5f
    or $ff
    xor l
    cp $8a
    cp $82
    ld a, h
    call nz, $f8f8
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ret nz

    ld b, b
    ret nz

    and b
    ldh [rNR41], a
    ldh [$a0], a
    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh a, [$50]
    ldh a, [$50]
    ldh [$a0], a
    ret nz

    ret nz

    ldh [$e0], a
    ret nc

    ldh a, [$7c]
    cp h

jr_014_57cc:
    ld e, $fe
    db $fc
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
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
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
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    ld b, $07
    add hl, bc
    rrca
    ld [$080f], sp
    rrca
    rlca
    rlca
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    dec b
    rlca
    rlca
    rlca
    rlca
    rra
    rra
    inc a
    ccf
    rra
    rra
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc hl
    ccf
    ld b, b
    ld a, a
    ld h, e
    ld a, a
    rst $38
    call c, $e93f
    rra
    db $fc
    cpl
    ei
    ld a, a
    sub $7f
    push bc
    rst $38
    pop bc
    cp [hl]
    ld [c], a
    db $fc
    db $fc
    ld [hl], b
    sub b
    ldh a, [$90]
    ld hl, sp-$78
    ld hl, sp-$08
    ld a, b
    ret z

    ld a, h
    call nz, $e4fc
    cp $22
    cp $12
    rst $38
    sbc a
    pop hl
    and c
    ldh [$e0], a
    ldh [rNR41], a
    ret nc

    ldh a, [$7c]
    cp h
    rra
    rst $38
    db $fc
    db $fc
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
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    ld l, [hl]
    ld l, [hl]
    dec [hl]
    dec sp
    rra
    rra
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    add hl, bc
    rrca
    ld [$040f], sp
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0302
    inc b
    rlca
    inc b
    rlca
    ld [$0e0f], sp
    rrca
    add hl, bc
    rrca
    ld [$0a0f], sp
    rrca
    rlca
    rlca
    rlca
    dec b
    rlca
    dec b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    dec b
    rlca
    rlca
    dec bc
    rrca
    rra
    rra
    inc a
    ccf
    rra
    rra
    nop
    nop
    jr c, jr_014_592c

    add $fe
    add c
    rst $38
    inc bc
    rst $38

jr_014_58fa:
    adc a
    db $fd
    rst $38
    ld [hl], b
    rst $38
    sbc c
    ld h, a
    cp $0f
    ei
    ld a, $f2
    cp $c2
    db $fc
    inc h
    ld hl, sp-$08
    db $10
    ldh a, [$3b]
    db $eb

jr_014_5910:
    ld a, a
    call $cf7d
    cp $f6
    jr c, jr_014_5910

    jr nz, jr_014_58fa

    ldh [$e0], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [rSVBK]
    ldh [rNR41], a
    ldh a, [$f0]
    ld a, h
    cp h

jr_014_592c:
    ld e, $fe
    db $fc
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
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
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
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    pop bc
    pop bc
    pop bc
    pop bc
    rst $00
    rst $00
    adc c
    adc a
    ret z

    rst $08
    ld l, b
    ld l, a
    inc [hl]
    scf
    ld e, $1f
    rra
    inc de
    ld e, $17
    add hl, de
    rra
    db $10
    rra
    ld [$080f], sp
    rrca
    ld c, $0f
    add hl, bc
    rrca
    ld [$0a0f], sp
    rrca
    rlca
    rlca
    rlca
    dec b
    rlca
    dec b
    rlca
    ld b, $07
    ld b, $07
    dec b
    rlca
    rlca
    add hl, bc
    rrca
    rra
    rra
    ld a, $3f
    rra
    rra
    nop
    nop
    jr nc, jr_014_59e4

    call z, $02fc
    cp $06
    cp $8f
    db $fd
    rst $38
    ld a, c
    rst $38

jr_014_59bf:
    call z, $fb3f
    ld b, $fe
    ld c, $fa
    adc $fa
    inc a
    db $f4
    ret c

    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [rNR10]

jr_014_59d1:
    ldh a, [rNR41]
    ldh [$e0], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$e0], a
    ldh [$e0], a
    jr nz, jr_014_59bf

    jr nz, jr_014_59d1

    sub b
    ldh a, [$90]

jr_014_59e4:
    ldh a, [$f0]
    ldh a, [$90]
    ldh a, [$f0]
    cp h
    call c, $fe0e
    db $fc
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
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc e
    rra
    ld l, $3b
    ld b, a
    ld a, l
    rst $28
    cp [hl]
    rst $38
    sbc c
    ld a, a
    ld c, c
    ld a, a
    ld b, a
    dec a
    daa
    ld a, [hl-]
    cpl
    ld de, $101f
    rra
    ld [$080f], sp
    rrca
    rrca
    rrca
    ld [$080f], sp
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    rlca
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    rlca
    rlca
    dec b
    rlca
    rlca
    add hl, bc
    rrca
    rra
    rra
    ccf
    ccf
    rra
    rra
    nop
    nop

jr_014_5a52:
    ldh [$e0], a

jr_014_5a54:
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$1c
    db $f4
    cp $ee
    push af
    ccf
    jp nz, $84fe

    db $fc
    ret z

    ld a, b
    ldh a, [$b0]
    cp $de
    ld a, e
    db $fd
    ccf
    rst $38
    ld e, $fe
    jr nz, jr_014_5a52

    jr nz, jr_014_5a54

    ldh [$e0], a
    jr nz, @-$1e

    jr nz, @-$1e

    ldh [$e0], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$e0], a
    ldh a, [$90]
    ldh a, [$f0]
    cp b
    ret c

    xor b
    ld hl, sp-$04
    db $fc
    cp $fe
    db $fc
    db $fc
    nop
    nop
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
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
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
    add hl, bc
    rrca
    ld [$080f], sp
    rrca
    rlca
    rlca
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    rra
    rra
    inc a
    ccf
    rra
    rra
    nop
    nop
    inc e
    inc e
    inc hl
    ccf
    ld b, b
    ld a, a
    ld h, e
    ld a, a
    rst $38
    call c, $e93f
    rra
    db $fc
    cpl
    ei
    ld a, a
    sub $7f
    push bc
    rst $38
    pop bc
    cp [hl]
    ld [c], a
    ld a, h
    db $fc
    ldh [$a0], a
    ld [hl], b
    sub b
    ldh a, [$90]
    ld hl, sp-$78
    ld hl, sp-$08
    ld a, b
    ret z

    ld a, h
    call nz, $e4fc
    cp [hl]
    and d
    sbc $5a
    rst $00
    ld b, a
    add c
    add c
    add b
    add b
    ldh [$e0], a
    ret nc

    ldh a, [$7c]
    cp h
    rra
    rst $38
    db $fc
    db $fc
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
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    ld l, [hl]
    ld l, [hl]
    ld e, e
    ld a, l
    ld sp, $fe3f
    cp $00
    nop
    nop
    nop
    nop
    nop
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
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    ld b, $07
    add hl, bc
    rrca
    ld [$080f], sp
    rrca
    rlca
    rlca
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    dec b
    rlca
    rlca
    rlca
    rlca
    rra
    rra
    inc a
    ccf
    rra
    rra
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc hl
    ccf
    ld b, b
    ld a, a
    ld h, e
    ld a, a
    rst $38
    call c, $e93f
    rra
    db $fc
    cpl
    ei
    ld a, a
    sub $7f
    push bc
    rst $38
    pop bc
    cp [hl]
    ld [c], a
    db $fc
    db $fc
    ld [hl], b
    sub b
    ldh a, [$90]
    ld hl, sp-$78
    ld hl, sp-$08
    ld a, b
    ret z

    ld a, h
    call nz, $e4fc
    cp $22
    cp $12
    rst $38
    sbc a
    pop hl
    and c
    ldh [$e0], a
    ldh [rNR41], a
    ret nc

    ldh a, [$7c]
    cp h
    rra
    rst $38
    db $fc
    db $fc
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
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ret nz

    ld l, [hl]
    ld l, [hl]
    ld e, e
    ld a, l
    ld sp, $fe3f
    cp $00
    nop
    jr nc, jr_014_5c6e

    ret nc

    ld e, h
    ld d, b
    ld e, l
    ldh a, [$5d]
    or b
    ld e, [hl]
    ld d, b
    ld e, a
    ldh a, [$5f]
    ld [hl], b
    ld h, b
    db $10
    ld h, c
    or b
    ld h, c
    ld d, b
    ld h, d
    nop
    nop
    nop
    nop
    nop
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
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rlca
    inc b
    rlca
    dec b
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    ld b, $09
    rrca
    ld [de], a
    rra
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld sp, $7d3f
    ld c, a
    ld a, a
    ld b, e
    ld a, [hl]
    ld b, [hl]
    ld a, $22
    ld a, $22
    ld a, $22
    ld a, [hl]
    ld b, [hl]
    ld a, a
    ld b, e
    ld a, [hl]
    ld h, a
    ld a, e
    ld e, l
    ld l, b
    ld a, a
    rst $38
    rst $38

jr_014_5c6e:
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop

jr_014_5c74:
    ldh a, [$f0]
    inc c
    db $fc
    ld [hl-], a
    cp $7a
    adc $fc
    add h
    db $fc
    adc h
    db $fc
    db $fc
    db $fc
    sub h
    cp $0a
    cp $02
    db $fc
    inc c
    ldh a, [$90]
    ldh [$e0], a
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_014_5c74

    ldh [$e0], a
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [$90]
    ld hl, sp-$78
    ld a, h
    ld l, h
    ld e, $1e
    inc bc
    inc bc
    ld bc, $8001
    add b
    add b
    add b
    db $fc
    db $fc
    rst $38
    rst $38
    db $fc
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
    add b
    add b
    adc $ce
    ld [hl], l
    ld a, e
    ccf
    ccf
    cp $fe
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
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rlca
    inc b
    rlca
    dec b
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    ld b, $09
    rrca
    add hl, de
    rra
    add hl, hl
    ccf
    cpl
    ccf
    ccf
    add hl, sp
    ld a, a
    ld c, b
    ld a, a
    ld b, h
    ld a, a
    ld b, [hl]
    ccf
    inc hl
    ccf
    inc hl
    ccf
    ld [hl+], a
    ld a, a
    ld b, a
    ld a, a
    ld b, e
    ld a, [hl]
    ld h, a
    ld a, e
    ld e, l
    ld l, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    inc c
    db $fc
    ld [hl-], a
    cp $7a
    adc $fc
    add h
    db $fc
    adc h
    db $fc
    db $fc
    db $fc
    sub h
    cp $0a
    cp $02
    db $fc
    inc c
    ldh a, [$90]
    ldh [$60], a
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ldh [$a0], a
    ldh [$e0], a
    ret nc

    ld [hl], b
    ldh a, [$30]
    ld hl, sp+$78
    call nc, $fc6c
    db $fc
    jr c, jr_014_5d7c

    nop
    nop
    add b
    add b
    add b
    add b
    db $fc
    db $fc
    cp $fe
    db $fc
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
    ld bc, $0101
    ld bc, $0101
    nop
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
    inc b
    rlca

jr_014_5d7c:
    inc b
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rst $00
    call nz, Call_014_65e7
    ld h, e
    ld [c], a
    ld l, a
    rst $28
    di
    cp $63
    ld a, a
    ld a, $3f
    ld a, [hl]
    ld d, e
    ld a, a
    ld l, c
    ld a, [hl]
    ld [hl], e
    ld a, h
    ld c, a
    ld a, [hl]
    ld b, a
    ld a, a
    ld b, a
    ccf
    dec h
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ld a, a
    ld b, a
    ld a, a
    ld b, e
    ld a, [hl]
    ld h, a
    ld a, e
    ld e, l
    ld l, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    inc c
    db $fc
    ld [hl-], a
    cp $7a
    adc $fc
    add h
    db $fc
    adc h
    db $fc
    db $fc
    db $fc
    sub h
    cp $0a
    cp $02
    db $fc
    inc c
    ldh a, [$90]
    ldh [$e0], a
    and b
    ldh [$d0], a
    ldh a, [$d0]
    ld [hl], b
    ldh [$a0], a
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
    nop
    nop
    add b
    add b
    add b
    add b
    db $fc
    db $fc
    cp $fe
    db $fc
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
    ld b, $06
    ld c, $0a
    ld a, [bc]
    ld c, $0e
    ld c, $06
    ld b, $03
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$080f], sp
    rrca
    add hl, bc
    rrca
    dec b
    rlca
    rlca
    rlca
    rrca
    add hl, bc
    rrca
    ld a, [bc]
    rst $20
    db $e4
    rst $38
    jp c, $cdff

    or $9f
    db $e3
    ld a, a
    di
    ld a, $cf
    db $fc
    ld [hl], e
    ld a, [hl]
    ld a, a
    ld c, a
    ld a, a
    ld b, e
    ld a, a
    ld b, l
    ld a, a
    ld b, h
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ld a, a
    ld b, a
    ld a, a
    ld b, e
    ld a, [hl]
    ld h, a
    ld a, e
    ld e, l
    ld l, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a

jr_014_5e70:
    nop
    nop
    nop
    nop
    ldh [$e0], a
    jr jr_014_5e70

    ld h, h
    db $fc
    db $f4
    sbc h
    ld hl, sp+$08
    ld hl, sp+$18
    ld hl, sp-$08
    ld hl, sp+$28
    db $fc
    inc d
    db $fc
    inc b
    ld hl, sp+$18
    ldh [rNR41], a
    ret nz

    ret nz

    and b
    ldh [$e0], a
    ld h, b
    ldh [$60], a
    ret nz

    ret nz

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
    db $fc
    db $fc
    cp $fe
    db $fc
    db $fc
    nop
    nop
    jr @+$1a

    jr c, jr_014_5ede

    jr z, jr_014_5ef0

    jr c, jr_014_5ef2

    jr jr_014_5ed4

    inc c
    inc c
    ld b, $06
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop

jr_014_5ed4:
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    add hl, bc
    rrca

jr_014_5ede:
    dec b
    rlca
    rlca
    rlca
    rst $08
    ret


    rst $28
    xor d
    rst $30
    inc d
    db $eb
    cp [hl]
    rst $00
    ld a, a
    rst $30
    inc a
    rst $28
    inc a

jr_014_5ef0:
    rst $20
    cp [hl]

jr_014_5ef2:
    ld h, c
    ld a, a
    ld [hl], b
    ld a, a
    ld a, h
    ld c, a
    ld a, a
    ld b, e
    ld a, a
    ld c, l
    ld a, a
    ld b, h
    ccf
    ld [hl+], a
    ccf
    ld [hl+], a
    ld a, a
    ld b, a
    ld a, a
    ld b, e
    ld a, [hl]
    ld h, a
    ld a, e
    ld e, l
    ld l, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a

jr_014_5f10:
    nop
    nop
    nop
    nop
    ldh [$e0], a
    jr jr_014_5f10

    ld h, h
    db $fc
    db $f4
    sbc h
    ld hl, sp+$08
    ld hl, sp+$18
    ld hl, sp-$08
    ld hl, sp+$28
    db $fc
    inc d
    db $fc
    inc b
    ld hl, sp+$18
    ldh [rNR41], a
    ret nz

    ret nz

    ldh [$60], a
    and b
    ldh [$a0], a
    ldh [$c0], a
    ret nz

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
    db $fc
    db $fc
    cp $fe
    db $fc
    db $fc
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
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rlca
    inc b
    rlca
    dec b
    inc bc
    ld [bc], a
    rlca
    dec b
    dec bc
    ld c, $11
    rra
    jr nz, jr_014_5fb1

    ld [hl+], a
    ccf
    inc hl
    ccf
    ld a, e
    ld e, [hl]
    ld a, a
    ld b, [hl]
    ld a, a
    ld d, c
    ccf
    jr z, @+$41

    jr z, jr_014_5fc0

    inc l
    ccf
    jr z, jr_014_5fc4

    jr nc, jr_014_5fc6

    ccf
    ld a, [hl+]
    dec a
    ld a, [hl]
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    inc c
    db $fc
    ld [hl-], a
    cp $7a
    adc $7c
    call nz, $8cfc
    db $fc
    db $fc
    db $fc
    sub h
    cp $0a
    cp $02
    db $fc
    inc c
    ldh a, [$90]
    ldh [$e0], a
    ld b, b

jr_014_5fb1:
    ret nz

    ld h, b
    ldh [$f0], a
    ret nc

    ld hl, sp+$48
    db $f4
    inc a
    db $fc
    inc c
    db $fc
    call nz, Call_014_64fc

jr_014_5fc0:
    sbc $56
    adc e
    adc e

jr_014_5fc4:
    add c
    add c

jr_014_5fc6:
    ld b, b
    ret nz

    ret nz

    ret nz

    ld a, h
    db $fc
    rst $38
    rst $38
    db $fc
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
    add b
    add b
    adc $ce
    ld [hl], l
    ld a, e
    ccf
    ccf
    cp $fe
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
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    rlca
    dec b
    rlca
    dec b
    inc bc
    inc bc
    rlca
    ld b, $09
    rrca
    db $10
    rra
    db $10
    rra
    jr nz, jr_014_6053

    jr nz, jr_014_6055

    ld a, b
    ld e, a
    ld a, a
    ld b, a
    ld a, a
    ld d, b
    ccf
    jr z, jr_014_605e

    inc l
    ccf
    jr z, jr_014_6062

    jr z, jr_014_6064

    jr nc, jr_014_6066

    ccf
    ld a, [hl+]
    dec a
    ld a, [hl]
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop

jr_014_6032:
    nop
    nop
    nop
    nop
    ldh [$e0], a
    jr jr_014_6032

    inc b
    db $fc
    ld [bc], a
    cp $1a
    cp $3c
    db $e4
    ld a, $e6
    ld a, $fe
    db $fc
    call nc, Call_014_54fc
    ld hl, sp-$58
    ldh a, [$50]
    ldh [$e0], a
    db $10
    ldh a, [rNR10]

jr_014_6053:
    ldh a, [$b0]

jr_014_6055:
    ldh a, [$f6]
    sub $fd
    adc e
    rst $38
    rst $08
    cp $7e

jr_014_605e:
    ret nz

    ld b, b
    ret nz

    ld b, b

jr_014_6062:
    add b
    add b

jr_014_6064:
    add b
    add b

jr_014_6066:
    ld b, b
    ret nz

    ret nz

    ret nz

    ld a, h
    db $fc
    cp $fe
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    ld b, $06
    ld c, $0e
    ld c, $0a
    ld a, [bc]
    ld c, $06
    ld b, $03
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    add c
    add c
    jp Jump_014_63c2


    ld h, d
    inc sp
    inc sp
    ccf
    ld l, $19
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    jr nz, jr_014_60f3

    jr nc, jr_014_60f5

    ld a, h
    ld c, a
    ld a, a
    ld b, e
    ld a, a
    ld c, b
    ccf
    jr z, jr_014_60fe

    ld h, $3f
    inc h
    ccf
    jr z, jr_014_6104

    ld l, $7b
    ld e, l
    ld l, [hl]
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_014_6110

    call nz, $02fc
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    add c
    rst $38
    adc [hl]
    cp $fe
    ld [hl], d
    db $fc
    sub h
    ld hl, sp+$58
    ldh a, [$f0]
    db $10
    ldh a, [rNR10]
    ldh a, [rNR41]

jr_014_60f3:
    ldh [rLCDC], a

jr_014_60f5:
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b

jr_014_60fe:
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b

jr_014_6104:
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ld a, h
    db $fc
    cp $fe
    db $fc
    db $fc

jr_014_6110:
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0203
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3201
    inc sp
    ld c, h
    ld a, a
    adc h
    rst $38
    sbc $f3
    cp $77
    xor $2f
    rst $38
    ld [hl], a
    rst $38
    dec e
    rst $28
    ccf
    rst $00
    db $fc
    ld b, e
    ld a, a
    jr nc, @+$41

    jr nz, @+$41

    jr nz, jr_014_6191

    jr nz, @+$41

    jr nc, jr_014_6195

    ld a, a
    ld c, a
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    ld l, $3f
    inc h
    ccf
    inc h
    ccf
    inc h
    ccf
    dec hl
    ld a, l
    ld e, [hl]

jr_014_6168:
    ld l, l
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_014_6168

    ld [$08f8], sp
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$18
    ld hl, sp+$38
    add sp, -$10
    ret nc

    ldh [$e0], a

jr_014_6188:
    ret nz

    ret nz

    ldh [$e0], a
    jr nc, @-$0e

    jr c, jr_014_6188

    ld e, h

jr_014_6191:
    call nc, $de56
    sbc [hl]

jr_014_6195:
    sbc [hl]
    adc h
    adc h
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

    cp h
    db $fc
    cp $fe
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc

Jump_014_61c2:
    rlca
    inc b
    rlca
    dec b
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    ld b, $09
    rrca
    ld [de], a
    rra
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    ld sp, $7d3f
    ld c, a
    ld a, a
    ld b, e
    ld a, [hl]
    ld b, [hl]
    ld a, $22
    ld a, $22
    ld a, $22
    ld a, [hl]
    ld b, [hl]
    ld a, a
    ld b, e
    ld a, [hl]
    ld h, a
    ld a, e
    ld e, l
    ld l, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop

jr_014_61f4:
    ldh a, [$f0]
    inc c
    db $fc
    ld [hl-], a
    cp $7a
    adc $fc
    add h
    db $fc
    adc h
    db $fc
    db $fc
    db $fc
    sub h
    cp $0a
    cp $02
    db $fc
    inc c
    ldh a, [$90]
    ldh [$e0], a
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_014_61f4

    ldh [$e0], a
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [$90]
    ld hl, sp-$78
    ld a, b
    ld l, b
    inc e
    inc e
    ld b, $06
    inc bc
    inc bc
    add c
    add c
    add b
    add b
    db $fc
    db $fc
    rst $38
    rst $38
    db $fc
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
    call z, $b6cc
    ld a, [$7e62]
    db $fc
    db $fc
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
    inc b
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rlca
    inc b
    rlca
    dec b
    inc bc
    ld [bc], a
    rlca
    dec b
    dec bc
    ld c, $11
    rra
    jr nz, jr_014_62b1

    ld [hl+], a
    ccf
    inc hl
    ccf
    ld a, e
    ld e, [hl]
    ld a, a
    ld b, [hl]
    ld a, a
    ld d, c
    ccf
    jr z, @+$41

    inc h
    ccf
    jr z, @+$41

    jr z, jr_014_62c4

    jr nc, jr_014_62c6

    ccf
    ld a, [hl+]
    dec a
    ld a, [hl]
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    inc c
    db $fc
    ld [hl-], a
    cp $7a
    adc $7c
    call nz, $8cfc
    db $fc
    db $fc
    db $fc
    sub h
    cp $0a
    cp $02
    db $fc
    inc c
    ldh a, [$90]
    ldh [$e0], a
    ld b, b

jr_014_62b1:
    ret nz

    ld h, b
    ldh [$f0], a
    ret nc

    ld hl, sp+$48
    db $f4
    inc a
    db $fc
    inc c
    db $fc
    call nz, Call_014_64fc
    call c, $8e54
    adc [hl]

jr_014_62c4:
    add e
    add e

jr_014_62c6:
    ld b, c
    pop bc
    ret nz

    ret nz

    ld a, h
    db $fc
    rst $38
    rst $38
    db $fc
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
    call z, $b6cc
    ld a, [$7e62]
    db $fc
    db $fc
    nop
    nop
    db $10
    ld h, e
    ret nc

    ld h, e
    ld [hl], b
    ld h, h
    db $10
    ld h, l
    or b
    ld h, l
    ld [hl], b
    ld h, [hl]
    jr nc, jr_014_6365

    ldh a, [$67]
    or b
    ld l, b
    ld d, b
    ld l, c
    db $10
    ld l, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
    rlca
    rlca
    rrca
    rrca
    rla
    rra
    ld de, $0c1f
    rrca
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    rlca
    rlca
    rlca
    inc b
    rra
    rra
    inc a
    ccf
    rra
    rra
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld h, e
    ld a, a
    add b
    rst $38
    jr @+$01

    inc e
    rst $30
    rrca
    rst $38
    xor a
    ld hl, sp-$01
    sub $7f

jr_014_6365:
    ld b, l
    ld a, a
    ld h, c
    ld a, a
    ld d, e
    cp h
    db $ec
    ld [hl], b
    ldh a, [$f0]
    sub b
    ldh a, [$90]
    ldh a, [$90]
    ld hl, sp-$38
    ld hl, sp-$38
    db $fc
    db $e4
    ld a, h
    call nz, $f4fc
    adc $4e

jr_014_6380:
    jp $8143


    add c
    add b
    add b
    ldh [$e0], a
    ret nc

    ldh a, [$7c]
    cp h
    rra
    rst $38
    db $fc
    db $fc
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

    jr nz, jr_014_6380

    and b
    ldh [$a0], a
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    add b
    add b
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

Jump_014_63c2:
    add b
    add b
    ret nz

    ret nz

    ld l, [hl]
    ld l, [hl]
    dec [hl]
    dec sp
    rra
    rra
    cp $fe
    nop
    nop
    nop
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
    ld bc, $0101
    nop
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
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    ld b, $09
    rrca
    ld de, $101f
    rra
    ld c, $0f
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    rlca
    rlca
    rlca
    inc b
    rra
    rra
    inc a
    ccf
    rra
    rra
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld h, e
    ld a, a
    add b
    rst $38
    jr @+$01

    inc e
    rst $30
    rrca
    rst $38
    xor a
    ld hl, sp-$01
    sub $7f
    ld b, l
    ld a, a
    ld h, c
    rst $38
    db $d3
    cp h
    db $ec
    ret c

    ld a, b
    call c, $dc74
    ld [hl], h
    call c, $fc74
    inc [hl]
    db $fc
    inc a
    db $f4
    sbc h
    ld a, h
    call z, $dcfc
    cp $6e

jr_014_6440:
    db $fd
    ld a, e
    rst $08
    rst $08
    add [hl]
    add [hl]
    ldh [$e0], a
    ret nc

    ldh a, [$7c]
    cp h
    ld e, $fe
    db $fc
    db $fc
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

    jr nz, jr_014_6440

    and b
    ldh [$a0], a
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    add b
    add b
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
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1708], sp
    rra
    rra
    inc d
    rla
    dec e
    rra
    dec e
    rrca
    ld c, $07
    rlca
    rrca
    ld c, $11
    rra
    ld [$060f], sp
    rlca
    rlca
    dec b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    rlca
    rlca
    rlca
    inc b
    rra
    rra
    inc a
    ccf
    rra
    rra
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld h, e
    ld a, a
    add b
    rst $38
    jr @+$01

    inc e
    rst $30
    rrca
    rst $38
    xor a
    ld hl, sp-$01
    sub $7f
    ld b, l

jr_014_64c6:
    ld a, a
    ld h, c
    rst $38
    db $d3
    cp h
    db $ec
    jr jr_014_64c6

    inc e
    db $f4
    cp h
    db $e4
    ld hl, sp+$78
    ret nc

    ld [hl], b
    sub b
    ldh a, [rBCPS]
    ld hl, sp+$10
    ldh a, [$f0]
    ldh a, [$f0]
    ld d, b

jr_014_64e0:
    ldh a, [$50]
    ldh [$a0], a
    ret nz

    ret nz

    ldh [$e0], a
    ret nc

    ldh a, [$7c]
    cp h
    ld e, $fe
    db $fc
    db $fc
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

Call_014_64fc:
    ld b, b
    ret nz

    jr nz, jr_014_64e0

    and b
    ldh [$a0], a
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    add b
    add b
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
    ld bc, $0201
    inc bc
    ld b, d
    ld b, e
    and d
    db $e3
    pop hl
    and c
    and c
    pop hl
    ldh [$e0], a
    ld [hl], e
    ld [hl], e
    rra
    dec e
    rrca
    rrca
    rlca
    ld b, $0f
    add hl, bc
    rrca
    add hl, bc
    rlca
    ld b, $0b
    ld c, $11
    rra
    ld [$060f], sp
    rlca
    rlca
    dec b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    rlca
    rlca
    rlca
    inc b
    rra
    rra
    inc a

jr_014_654d:
    ccf
    rra
    rra
    nop
    nop
    nop
    nop
    jr c, jr_014_658e

    add $fe
    ld bc, $30ff
    rst $38
    jr c, jr_014_654d

    ld e, $ff
    ld e, a
    pop af
    rst $38
    xor l
    cp $8b
    cp $c3
    rst $38
    and a
    ld sp, hl
    ld e, c
    db $fc
    ld [hl], h
    sbc h
    db $f4
    inc e
    db $f4
    cp b
    ld hl, sp-$08
    ld l, b
    ld hl, sp-$68
    ld l, b
    ld hl, sp+$10
    ldh a, [$f0]
    ldh a, [$f0]
    ld d, b
    ldh a, [$50]
    ldh [$a0], a
    ret nz

    ret nz

    ldh [$e0], a
    ret nc

    ldh a, [$7c]
    cp h
    ld e, $fe

jr_014_658e:
    db $fc
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
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
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
    ld bc, $0201
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add c
    add c
    add d
    add e
    add d
    add e
    add d
    add e
    pop bc
    pop bc
    ld h, c
    ld h, c
    scf
    scf
    rra

Call_014_65e7:
    add hl, de
    ld c, $0b
    ld c, $0f
    rrca
    add hl, bc
    ld e, $13
    rra
    inc de
    rrca
    rrca
    rlca
    rlca
    add hl, bc
    rrca
    ld [$060f], sp
    rlca
    rlca
    dec b
    rlca
    inc b
    rlca
    ld b, $07
    inc b
    rlca
    inc b
    rlca
    rlca
    rlca
    inc b
    rra
    rra
    inc a

jr_014_660d:
    ccf
    rra
    rra
    nop
    nop
    nop
    nop
    jr c, jr_014_664e

    add $fe
    ld bc, $30ff
    rst $38
    jr c, jr_014_660d

    ld e, $ff
    ld e, a
    pop af
    rst $38
    xor l
    cp $8b
    cp $c3
    ccf
    rst $20
    cp c
    ld sp, hl
    ld hl, sp-$38
    ld a, h
    call nz, $e4bc
    ld hl, sp-$08
    ldh a, [$f0]
    add sp, -$08
    ret z

    ld hl, sp+$10
    ldh a, [$f0]
    ldh a, [$f0]
    ld d, b
    ldh a, [$90]
    ldh [$a0], a
    ret nz

    ret nz

    ldh [$e0], a
    ret nc

    ldh a, [$7c]
    cp h
    ld e, $fe

jr_014_664e:
    db $fc
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
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
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
    ld bc, $0101
    ld bc, $0101
    nop
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
    ld [bc], a
    inc bc
    rlca
    rlca
    rrca
    rrca
    inc de
    rra
    add hl, bc
    rrca
    inc c
    rrca
    rrca
    dec bc
    rrca
    ld a, [bc]
    rlca
    dec b
    rlca
    ld b, $07
    ld b, $07
    dec b
    rlca
    ld b, $1d
    rra
    ld a, $3f
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld h, e
    ld a, a
    add b
    rst $38
    jr @+$01

    inc e
    rst $30

jr_014_66c0:
    rrca
    rst $38
    xor a
    ld hl, sp-$01
    sub $7f
    ld b, l
    ld a, a
    ld h, c
    rst $38
    db $d3
    inc a
    db $fc
    jr nc, jr_014_66c0

    ld a, b
    ret z

    ld a, b
    ret z

    db $fc
    sub h
    db $fc
    sub h
    ld a, [$7e8e]
    sub $fe
    ld a, [c]
    xor $2a
    rst $20
    daa

jr_014_66e2:
    pop bc
    ld b, c
    ret nz

    ld b, b
    ldh [$e0], a
    ret nc

    ld [hl], b
    db $fc
    cp h
    rra
    rst $38
    db $fc
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
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_014_66e2

    and b
    ldh [$a0], a
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    add b
    add b
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
    add b
    add b
    ret nz

    ret nz

    ld l, [hl]
    ld l, [hl]
    dec [hl]
    dec sp
    rra
    rra
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    rlca
    rlca
    rrca
    rrca
    inc de
    rra
    ld [$0c0f], sp
    rrca
    rrca
    dec bc
    rrca
    add hl, bc
    rlca
    dec b
    rlca
    ld b, $07
    ld b, $07
    dec b
    rlca
    ld b, $1d
    rra
    ld a, $3f
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld h, e
    ld a, a
    add b
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    rlca
    db $fd
    add d
    rst $38
    add a
    rst $38
    ld c, a
    ld a, d
    ld a, a
    ld a, c
    rst $38
    pop hl
    sbc [hl]
    cp $08
    ld hl, sp+$1c
    db $f4
    cp h
    db $e4
    db $fc
    db $e4
    db $fc
    db $f4
    rst $38
    rst $30
    ld e, $fd
    rst $20
    rst $20
    db $e3
    inc hl
    ldh [rNR41], a

jr_014_67a2:
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [$e0], a
    ret nc

    ld [hl], b
    db $fc
    cp h
    ld e, $fe
    db $fc
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
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_014_67a2

    and b
    ldh [$a0], a
    ldh [$c0], a
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
    add b
    add b
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
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ld b, b
    ld b, c
    pop bc
    pop bc
    pop bc
    ret nz

    ret nz

    ld h, b
    ld h, b
    jr nc, jr_014_6858

    rra
    rra
    rrca
    ld a, [bc]
    rlca
    dec b
    rlca
    dec b
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld c, $11
    rra
    db $10
    rra
    inc c
    rrca
    rrca
    dec bc
    rlca
    dec b
    rlca
    dec b
    rlca
    dec b
    rlca
    rlca
    rlca
    ld b, $07
    rlca
    ld e, $1f
    ccf
    ccf
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e

jr_014_6858:
    ld h, e
    ld a, a
    add b
    rst $38
    add b
    rst $38
    ld bc, $03ff

jr_014_6861:
    cp $81
    rst $38
    add c
    rst $38
    ld h, a
    ld a, [hl]
    rst $38
    ret c

    cp a
    db $e3
    inc e
    db $fc
    inc c
    db $fc
    inc e
    db $f4
    ld hl, sp-$18
    ldh a, [$30]
    ldh [$a0], a
    ld h, b
    ldh [rNR10], a
    ldh a, [$e0]
    ldh [$e0], a
    jr nz, jr_014_6861

    and b
    ldh [rNR41], a
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    cp h
    ld a, h
    sbc [hl]
    cp $fc
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
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    add b
    add b
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
    ld bc, $0d01
    dec c
    inc de
    rra
    inc hl
    ld a, $37
    inc a
    ld a, a
    ld c, h
    ld a, a
    ld c, a
    rst $30
    sub h
    rst $38
    adc [hl]
    ld a, a
    ld b, c
    ld a, $33
    inc c
    rrca
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    dec bc
    rrca
    db $10
    rra
    db $10
    rra
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    add hl, bc
    rlca
    dec b
    rlca
    rlca
    rlca
    dec b
    rlca
    rlca
    dec e
    rra
    ccf
    ccf
    rra
    rra
    nop
    nop
    nop
    nop
    jr c, jr_014_692e

    call nz, $02fc
    cp $03
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    jp $c7ff


    db $fd
    rst $28
    ld sp, hl
    cp $be
    ld hl, sp-$28
    inc a
    db $fc
    ld c, $fa
    dec de
    rst $38
    rst $28
    rst $28
    and $e6
    ldh [$e0], a
    ret nc

    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$e0]
    ld h, b
    ldh [rNR41], a
    ldh [$e0], a
    ldh [rNR41], a
    ldh [$e0], a
    and b
    ld h, b
    ld e, h
    db $fc
    sbc $fe

jr_014_692e:
    db $fc
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
    add b
    add b
    add b
    add b
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
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
    rlca
    rlca
    rrca
    rrca
    rla
    rra
    ld de, $0c1f
    rrca
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    rlca
    rlca
    rlca
    inc b
    rra
    rra
    inc a
    ccf
    rra
    rra
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld h, e
    ld a, a
    add b
    rst $38
    jr @+$01

    inc e
    rst $30
    rrca
    rst $38
    xor a
    ld hl, sp-$01
    sub $7f
    ld b, l
    ld a, a
    ld h, c
    ld a, a
    ld d, e
    cp h
    db $ec
    ld [hl], b
    ldh a, [$f0]
    sub b
    ldh a, [$90]
    ldh a, [$90]
    ld hl, sp-$38
    ld hl, sp-$38
    ld hl, sp-$18
    ld a, h
    call nz, $e4fc
    call c, $ce54
    ld c, [hl]
    add e
    add e
    add c
    add c
    ldh [$e0], a
    ret nc

    ldh a, [$7c]
    cp h
    rra
    rst $38
    db $fc
    db $fc
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

    jr nz, @-$1e

    and b
    ldh [$a0], a
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    add b
    add b
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
    add b
    add b
    call z, $b6cc
    ld a, [$7e62]
    db $fc
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
    ld bc, $0101
    ld bc, $0101
    nop
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
    ld [bc], a
    inc bc
    rlca
    rlca
    rrca
    rrca
    inc de
    rra
    add hl, bc
    rrca
    inc c
    rrca
    rrca
    dec bc
    rrca
    ld a, [bc]
    rlca
    dec b
    rlca
    ld b, $07
    ld b, $07
    dec b
    rlca
    ld b, $1d
    rra
    ld a, $3f
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    ld h, e
    ld a, a
    add b
    rst $38
    jr @+$01

    inc e
    rst $30

jr_014_6a60:
    rrca
    rst $38
    xor a
    ld hl, sp-$01
    sub $7f
    ld b, l
    ld a, a
    ld h, c
    rst $38
    db $d3
    inc a
    db $fc
    jr nc, jr_014_6a60

    ld a, b
    ret z

    ld a, b
    ret z

    db $fc
    sub h
    db $fc
    sub h
    ld a, [$7e8e]
    add $fe
    ld a, [c]
    cp $32
    xor $2a

jr_014_6a82:
    rst $00
    ld b, a
    pop bc
    ld b, c
    ldh [$e0], a
    ret nc

    ld [hl], b
    db $fc
    cp h
    rra
    rst $38
    db $fc
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
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_014_6a82

    and b
    ldh [$a0], a
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    add b
    add b
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
    add b
    add b
    call z, $b6cc
    ld a, [$7e62]
    db $fc
    db $fc
    nop
    nop
    ldh a, [rOCPS]
    or b
    ld l, e
    ld d, b
    ld l, h
    ldh a, [$6c]
    sub b
    ld l, l
    jr nc, jr_014_6b4a

    ldh a, [$6e]
    sub b
    ld l, a
    jr nc, jr_014_6b52

    ret nc

    ld [hl], b
    sub b
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    inc c
    rra
    ld de, $233e
    ld a, h
    ld b, a
    ld a, h
    ld b, a
    db $fc
    add a
    cp $83
    rst $38
    pop bc
    cp a
    ldh [$9f], a
    ld sp, hl
    ld c, [hl]
    ld a, [hl]
    ld e, [hl]
    ld a, [hl]
    cpl
    ccf
    cpl
    ccf
    daa
    ccf
    ld l, $3e
    ld e, a
    ld a, a
    ld e, [hl]
    ld a, a
    ld [hl], e
    ld a, l
    ld h, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    ld h, b
    ld h, b
    ldh [$e0], a
    ld [hl], b
    ld d, b
    jr c, jr_014_6b72

    ld b, h
    ld a, h
    add d
    cp $86
    cp $03
    db $fd
    ld h, a
    ei
    sub b
    rst $38
    and d
    rst $38
    ld b, c
    rst $38

jr_014_6b4a:
    daa
    rst $38
    ld [de], a
    cp $12
    cp $1c
    db $fc

jr_014_6b52:
    ld [$c8f8], sp
    ld hl, sp-$7c
    db $fc
    ld b, h
    ld a, h
    ld b, h
    ld a, h
    ld [hl+], a
    ld a, $1a
    ld e, $06
    ld b, $03
    inc bc
    ld bc, $8001
    add b
    add b
    add b
    db $fc
    db $fc
    rst $38
    rst $38
    db $fc
    db $fc
    nop
    nop

jr_014_6b72:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    adc $ce
    ld [hl], l
    ld a, e
    ccf
    ccf
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rra
    add hl, de
    daa
    ld a, $23
    ld a, $41
    ld a, a
    ld b, c
    ld a, a
    pop hl
    cp a
    pop af
    sbc a
    ldh a, [$9f]
    ld hl, sp-$31
    cp b
    rst $28
    sbc [hl]
    rst $30
    ld c, a
    ld a, a
    ld e, [hl]
    ld a, a
    ld l, $3f
    cpl
    ccf
    daa
    ccf
    ld l, $3e
    ld e, a
    ld a, a
    ld e, [hl]
    ld a, a
    ld [hl], e
    ld a, l
    ld h, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    ld h, b
    ld h, b
    ldh [$e0], a
    ld [hl], b
    ld d, b
    jr c, jr_014_6c32

    ld b, h
    ld a, h
    add d
    cp $86
    cp $03
    db $fd
    ld h, a
    ei
    sub b
    rst $38
    and d
    rst $38
    pop bc
    ld a, a
    rst $20
    ld a, a
    jp nc, $f27e

    ld a, $ec
    cp h
    ld b, h
    db $fc
    ld b, h
    db $fc
    ld c, b
    ld hl, sp+$38
    ld hl, sp+$78
    add sp, $78
    add sp, -$50
    ldh a, [$fe]
    cp $17
    dec de
    rra
    rra
    adc [hl]
    adc [hl]
    add b
    add b
    db $fc
    db $fc
    rst $38
    rst $38
    db $fc
    db $fc
    nop
    nop

jr_014_6c32:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    ccf
    dec a
    ld b, a
    ld a, l
    add a
    db $fd
    add e
    cp $83
    cp $c1
    rst $38
    and $bf
    cp $9f
    cp $db
    cp e
    rst $28
    sbc a
    rst $38
    ld b, h
    ld a, a
    ld e, [hl]
    ld a, a
    cpl
    ccf
    cpl
    ccf
    daa
    ccf
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld e, [hl]
    ld a, a
    ld [hl], e
    ld a, l
    ld h, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    ld h, b
    ld h, b
    ldh [$e0], a
    ld [hl], b
    ld d, b
    jr c, jr_014_6cd2

    ld b, h
    ld a, h
    add d
    cp $86
    cp $03
    db $fd
    ld h, a
    ei
    sub b
    rst $38
    and d
    rst $38
    pop bc
    rst $38
    and a
    rst $38
    jp nc, $f27e

    cp [hl]
    db $ec
    db $fc
    ld b, h
    db $fc
    ld h, h
    db $fc
    ld a, b
    ret c

    ld a, b
    ret z

    ldh a, [$90]
    ldh [$e0], a
    add b
    add b
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
    db $fc
    db $fc
    cp $fe
    db $fc
    db $fc
    nop
    nop

jr_014_6cd2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $c3c2
    ld a, [hl]
    rst $38
    rst $00
    ld a, l
    ld b, a
    db $fd
    rst $28
    ld sp, hl
    ccf
    ld sp, hl
    rra
    db $fc
    dec de
    cp $ab
    rst $38
    rst $20
    db $fc
    cp a
    ld hl, sp-$71
    db $fc
    ld e, a
    ld a, a
    ld c, a
    ld a, a
    cpl
    ccf
    cpl
    ccf
    daa
    ccf
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld e, [hl]
    ld a, a
    ld [hl], e
    ld a, l
    ld h, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$a0], a
    ld [hl], b
    ld [hl], b
    adc b
    ld hl, sp+$04
    db $fc
    inc c
    db $fc
    ld b, $fa
    adc $f6
    ld hl, $45ff
    rst $38
    add d
    cp $4e
    cp $e4
    db $fc
    call c, $847c
    db $fc
    adc b
    ld hl, sp-$38
    ld a, b
    ldh a, [rSVBK]
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
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
    db $fc
    db $fc
    cp $fe
    db $fc
    db $fc
    ld [bc], a
    ld [bc], a
    rlca
    dec b
    dec b
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
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    add b
    add b
    ret nz

    ret nz

    ld h, c
    ld h, c
    ld d, c
    ld [hl], c
    ld c, d
    ld a, e
    ld b, [hl]
    ld a, a
    xor a
    ld sp, hl
    rra
    ld hl, sp+$0f
    ld a, [$f71f]
    cp $e3
    cp $83
    rst $38
    pop bc
    rst $38
    pop hl
    sbc a
    ldh a, [$8f]
    ld sp, hl
    sub a
    rst $38
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld e, [hl]
    ld a, a
    ld [hl], e
    ld a, l
    ld h, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$a0], a
    ld [hl], b
    ld [hl], b
    adc b
    ld hl, sp+$04
    db $fc
    inc c
    db $fc
    ld b, $fa
    adc $f6
    ld hl, $85ff
    rst $38
    jp nz, $2efe

    cp $14
    db $fc
    inc d
    db $fc
    jr @-$06

    db $10
    ldh a, [$e0]
    ldh [$80], a
    add b
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
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
    db $fc
    db $fc
    cp $fe
    db $fc
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
    ld bc, $0301
    inc bc
    rrca
    dec c
    rra
    db $10
    ccf
    jr nz, jr_014_6eca

    ld b, c
    ld a, [hl]
    ld b, e
    db $fc
    add a
    db $fc
    add a
    db $fc
    rst $00
    cp [hl]
    di
    adc [hl]
    rst $38
    ld b, d
    ld a, a
    ld e, e
    ld a, a
    dec hl
    ccf
    dec a
    ccf
    dec e
    rra
    dec de
    rra
    dec sp
    ccf
    ccf
    ccf
    ld sp, $7c3e
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ldh [$e0], a
    ld [hl], b
    ld d, b
    jr c, jr_014_6eb4

    ld b, h
    ld a, h
    add d
    cp $06
    cp $03
    db $fd
    rla
    ei
    xor b
    rst $38
    pop af
    ld a, a
    pop hl
    rst $38
    daa
    rst $38
    ld [de], a
    cp $12
    cp $1c
    db $fc
    inc h
    db $fc
    inc [hl]
    db $fc
    ld c, $fa
    ld b, $fe
    add $fe
    ld [c], a
    cp $da
    sbc $c7
    rst $00
    add c
    add c
    ld b, b
    ret nz

    ret nz

    ret nz

    ld a, h
    db $fc
    rst $38
    rst $38
    db $fc
    db $fc
    nop
    nop
    nop
    nop

jr_014_6eb4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b

jr_014_6eca:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc $ce
    ld [hl], l
    ld a, e
    ccf
    ccf
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f01
    rrca
    rla
    dec e
    rra
    jr jr_014_6f48

    jr nz, jr_014_6f4a

    jr nz, jr_014_6f8c

    ld b, b
    ld a, a
    ld b, b
    rst $38
    add c
    rst $38
    pop bc
    cp a
    ldh a, [$8f]
    rst $38
    ld b, e
    ld a, a
    ld e, e
    ld a, a
    dec l
    ccf
    cpl
    ccf
    dec a
    ccf
    dec sp
    ccf
    dec sp
    ccf
    ccf
    ccf
    add hl, hl
    ld a, $7e
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    jr nc, jr_014_6f66

    ld [hl], b
    ld [hl], b
    jr c, jr_014_6f62

    jr c, jr_014_6f74

    ld e, h
    ld a, h
    add d
    cp $02
    cp $01
    rst $38
    add hl, bc
    rst $38
    sub l
    rst $38

jr_014_6f48:
    reti


    ld a, a

jr_014_6f4a:
    ld a, [c]
    ld a, $f2
    ld a, [hl]
    adc h
    db $fc
    ld [$08f8], sp
    ld hl, sp-$78
    ld hl, sp-$7c
    db $fc
    call nz, $ebfc
    ei
    sbc $dd
    rst $08
    rst $08
    rst $00
    rst $00

jr_014_6f62:
    add b
    add b
    add b
    add b

jr_014_6f66:
    ld b, b
    ret nz

    ret nz

    ret nz

    ld a, h
    db $fc
    cp $fe
    db $fc
    db $fc
    nop
    nop
    nop
    nop

jr_014_6f74:
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

jr_014_6f8c:
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld c, $0a
    ld a, [bc]
    ld c, $0e
    ld c, $06
    ld b, $03
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fd
    db $fd
    ld d, e
    ld a, a
    ld h, a
    ld a, l
    add a
    db $fc
    sbc a
    ld hl, sp+$7f
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    ret nz

    cp a
    ldh a, [$8f]
    rst $38
    ld d, e
    ld a, a
    ld a, e
    ld a, a
    ld e, l
    ld a, a
    ld e, a
    ld a, a
    dec l
    ccf
    dec l
    ccf
    cpl
    ccf
    dec a
    ld a, $27
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    jr jr_014_700e

    jr c, jr_014_7030

    jr jr_014_7012

    ld a, h
    ld [hl], h
    sbc h
    db $fc
    ld [bc], a
    cp $02
    cp $02
    cp $86
    cp $c2
    ld a, [hl]
    db $f4
    inc a
    db $fc
    inc e
    add sp, $38

jr_014_700e:
    ret z

    ld a, b
    ret z

    ld a, b

jr_014_7012:
    ldh a, [rSVBK]
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld h, b
    ldh [$bc], a
    db $fc
    cp $fe
    db $fc
    db $fc

jr_014_7030:
    nop
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
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_014_708e

    ld a, h
    ld b, h
    rst $38
    rst $08
    ld sp, $13ff
    rst $38
    ccf
    rst $38
    ld c, h
    rst $38
    ld b, $ff
    rrca
    ld sp, hl
    rrca
    ld hl, sp-$61
    ldh a, [$7f]
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ld e, a
    ld a, a
    ld b, e
    ld a, a
    ld c, a
    ld a, a
    ld l, a
    ld a, a
    ld l, a
    ld a, a
    ccf
    ccf
    ld l, $3f
    ld l, $3f
    cpl
    ccf
    ld a, $3f
    daa
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38

jr_014_708e:
    ld a, a
    ld a, a
    nop
    nop
    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ldh [$e0], a
    ldh [$a0], a
    ldh [$e0], a
    ld h, b
    ldh [$90], a
    ldh a, [$d0]
    ldh a, [rBCPS]
    ld hl, sp+$38
    ld hl, sp-$04
    db $fc
    ld [$ef3e], a
    dec a
    rst $28
    ccf
    di
    inc sp
    ret nz

    ld b, b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    and b
    ldh [$bc], a
    db $fc
    cp $fe
    db $fc
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
    ld bc, $0301
    inc bc
    rrca
    inc c
    rra
    ld de, $233e
    ld a, h
    ld b, a
    ld a, h
    ld b, a
    db $fc
    add a
    cp $83
    rst $38
    pop bc
    cp a
    ldh [$9f], a
    ld sp, hl
    ld c, [hl]
    ld a, [hl]
    ld e, [hl]
    ld a, [hl]
    cpl
    ccf
    cpl
    ccf
    daa
    ccf
    ld l, $3e
    ld e, a
    ld a, a
    ld e, [hl]
    ld a, a
    ld [hl], e
    ld a, l
    ld h, b
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    ld h, b
    ld h, b
    ldh [$e0], a
    ld [hl], b
    ld d, b
    jr c, jr_014_7152

    ld b, h
    ld a, h
    add d
    cp $86
    cp $03
    db $fd
    ld h, a
    ei
    sub b
    rst $38
    and d
    rst $38
    ld b, c
    rst $38
    daa
    rst $38
    ld [de], a
    cp $12
    cp $1c
    db $fc
    ld [$c8f8], sp
    ld hl, sp-$7c
    db $fc
    ld b, h
    ld a, h
    ld b, h
    ld a, h
    ld [hl+], a
    ld a, $1a
    ld e, $06
    ld b, $03
    inc bc
    ld bc, $8001
    add b
    add b
    add b
    db $fc
    db $fc
    rst $38
    rst $38
    db $fc
    db $fc
    nop
    nop

jr_014_7152:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b
    call z, $b6cc
    ld a, [$7e62]
    db $fc
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
    ld bc, $0301
    inc bc
    rrca
    dec c
    rra
    db $10
    ccf
    jr nz, jr_014_722a

    ld b, c
    ld a, [hl]
    ld b, e
    db $fc
    add a
    db $fc
    add a
    db $fc
    rst $00
    cp [hl]
    di
    adc [hl]
    rst $38
    ld b, d
    ld a, a
    ld e, e
    ld a, a
    dec hl
    ccf
    dec a
    ccf
    dec a
    ccf
    dec sp
    ccf
    dec sp
    ccf
    ccf
    ccf
    ld sp, $7c3e
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ldh [$e0], a
    ld [hl], b
    ld d, b
    jr c, jr_014_7214

    ld b, h
    ld a, h
    add d
    cp $06
    cp $03
    db $fd
    rla
    ei
    xor b
    rst $38
    pop af
    ld a, a
    pop hl
    rst $38
    daa
    rst $38
    ld [de], a
    cp $12
    cp $1c
    db $fc
    inc h
    db $fc
    inc [hl]
    db $fc
    ld c, $fa
    ld b, $fe
    add $fe
    ld [c], a
    cp $da
    sbc $87
    add a
    add c
    add c
    ld b, b
    ret nz

    ret nz

    ret nz

    ld a, h
    db $fc
    rst $38
    rst $38
    db $fc
    db $fc
    nop
    nop
    nop
    nop

jr_014_7214:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    add b

jr_014_722a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    call z, $b6cc
    ld a, [$7e62]
    db $fc
    db $fc
    nop
    nop
    ld [hl], b
    ld [hl], d
    jr nc, jr_014_72c7

    ret nc

    ld [hl], e
    ld [hl], b
    ld [hl], h
    jr nc, @+$77

    ldh a, [$75]
    or b
    db $76
    ld [hl], b
    ld [hl], a
    jr nc, jr_014_72da

    ret nc

    ld a, b
    sub b
    ld a, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    inc b
    rrca
    ld [$111f], sp
    rra
    add hl, de
    daa
    ld a, $21
    ccf
    jr nz, @+$41

    ld de, $101f
    rra
    ld [$0f0f], sp
    rrca
    rra
    ld de, $131f
    dec e
    ld e, $34
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    nop
    jr jr_014_72ce

    daa
    ccf
    ldh [rIE], a
    ld a, b
    rst $18
    ccf
    rst $20
    sbc a
    ld hl, sp-$19
    rst $38
    ld hl, sp+$3f
    rst $38
    ld d, a
    rst $38

jr_014_72c7:
    add l
    rst $38
    pop bc
    ld a, a
    jp $e4bc


jr_014_72ce:
    ld hl, sp+$78
    ldh a, [$b0]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$90]

jr_014_72da:
    ld hl, sp-$78
    ld a, h
    call nz, $c4fc
    cp [hl]
    or [hl]
    adc a
    adc a

jr_014_72e4:
    add c
    add c
    ld b, b
    ret nz

    ret nz

    ret nz

    ld a, h
    db $fc
    rst $38
    rst $38
    db $fc
    db $fc
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
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    jr nz, jr_014_72e4

    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc $ce
    ld [hl], l
    ld a, e
    ccf
    ccf
    cp $fe
    nop
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
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    dec b
    rrca
    ld a, [bc]
    rra
    ld [de], a
    rra
    dec de
    daa
    ld a, $23
    ld a, $21
    ccf
    db $10
    rra
    db $10
    rra
    ld [$0f0f], sp
    rrca
    rra
    ld de, $131f
    dec e
    ld e, $34
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    nop
    jr jr_014_738e

    daa
    ccf
    ldh [rIE], a
    ld a, b
    rst $18
    ccf
    rst $20
    sbc a
    ld hl, sp-$19
    rst $38
    ld hl, sp+$3f
    rst $38
    ld d, a
    rst $38
    add l
    rst $38
    pop bc
    ld a, a
    jp $e4bc


jr_014_738e:
    ld hl, sp+$78
    db $fc
    inc [hl]
    db $fc
    inc h
    ld hl, sp-$08
    ld hl, sp+$68
    ld hl, sp+$28
    ld hl, sp+$18
    add sp, -$48
    db $fc
    sbc h
    cp $de
    cp l
    cp e

jr_014_73a4:
    adc a
    adc a
    ld b, [hl]
    add $c0
    ret nz

    ld a, h
    db $fc
    cp $fe
    db $fc
    db $fc
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
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    jr nz, jr_014_73a4

    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$1b1f], sp
    rra
    inc d
    rra
    ld e, $2b
    ccf
    cpl
    dec sp
    dec hl
    ld a, $17
    rra
    inc de
    rra
    add hl, bc
    rrca
    rrca
    rrca
    rra
    ld de, $131f
    dec e
    ld e, $34
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    nop
    jr jr_014_742e

    daa
    ccf
    ldh [rIE], a
    ld a, b
    rst $18
    ccf
    rst $20
    sbc a
    ld hl, sp-$19
    rst $38
    ld hl, sp+$3f
    rst $38
    ld d, a
    rst $38
    add l
    rst $38
    pop bc
    ld a, a
    jp $e4fc


jr_014_742e:
    ld hl, sp+$78
    ld hl, sp-$58
    db $fc
    and h
    db $fc
    or h
    db $fc
    ld l, h
    ld hl, sp+$68
    ret nc

    ldh a, [$d0]
    ld [hl], b
    ldh [$e0], a
    ld b, b
    ret nz

    add b
    add b

jr_014_7444:
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ret nz

    ld a, h
    db $fc
    cp $fe
    db $fc
    db $fc
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
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    jr nz, jr_014_7444

    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
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
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $8101
    add c
    add e
    add d
    add e
    add d
    add c
    add c
    pop bc
    pop bc
    ld h, [hl]
    ld h, a
    ccf
    add hl, sp
    rra
    ld e, $3f
    ld sp, $517f
    ld a, [hl]
    ld l, e
    ld a, $3f
    inc hl
    ccf
    inc hl
    ccf
    ld de, $101f
    rra
    ld [$0f0f], sp
    rrca
    rra
    ld de, $131f
    dec e
    ld e, $34
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    nop
    jr nc, jr_014_7506

    ld c, [hl]
    ld a, [hl]
    pop bc
    rst $38
    pop af
    cp a
    ld a, a
    rst $08

jr_014_74de:
    ccf
    pop af
    rst $08
    rst $38
    ldh a, [$7f]
    rst $38
    xor a
    cp $0a
    cp $82
    cp $86

jr_014_74ec:
    ld a, b
    ret z

    or b
    ldh a, [$f8]
    ret z

    jr c, jr_014_74ec

    jr c, jr_014_74de

    ld [hl], b
    ret nc

    ldh [$e0], a
    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$a0], a
    ldh [$c0], a
    ret nz

    add b
    add b

jr_014_7506:
    ld b, b
    ret nz

    ret nz

    ret nz

    ld a, h
    db $fc
    cp $fe
    db $fc
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
    add b
    add b
    ld b, b
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
    ld [$1408], sp
    inc e
    inc e
    inc d
    inc d
    inc e
    inc e
    inc e
    inc c
    inc c
    ld b, $06
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $8283
    di
    ld a, [c]
    ld a, c
    ld c, c
    ld a, a
    ld b, a
    ld a, d
    ld l, a
    ld [hl], c
    ld e, a
    ld sp, hl
    adc a
    rst $38
    sbc [hl]
    ld a, a
    ld [hl], c
    ccf
    jr c, jr_014_759e

    ld a, $21
    ccf
    inc hl
    ccf
    ld de, $101f
    rra
    ld [$0f0f], sp
    rrca
    rra
    ld de, $131f
    dec e
    ld e, $34
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    nop
    jr nc, jr_014_75c6

    ld c, [hl]
    ld a, [hl]
    pop bc
    rst $38
    pop af
    cp a
    ld a, a
    rst $08

jr_014_759e:
    ccf
    pop af
    rst $08
    rst $38
    ldh a, [$7f]
    rst $38
    xor a
    cp $0a
    cp $82
    cp $86
    ld hl, sp-$38
    ldh a, [$30]
    ld hl, sp+$28
    ld hl, sp+$28
    ldh a, [$d0]
    ldh [$60], a
    ret nz

    ret nz

    ld b, b
    ret nz

    jr nz, jr_014_759e

    and b
    ldh [$a0], a
    ldh [$c0], a
    ret nz

    add b
    add b

jr_014_75c6:
    ld b, b
    ret nz

    ret nz

    ret nz

    ld a, h
    db $fc
    cp $fe
    db $fc
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
    add b
    add b
    ld b, b
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
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp
    rra
    ld de, $3d2f
    inc hl
    ccf
    add hl, hl
    ccf
    jr z, jr_014_765d

    inc d
    rra
    ld d, $1f
    rrca
    dec c
    rrca
    inc c
    rrca
    rrca
    ld a, [bc]
    rrca
    ccf
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_014_7650

    daa
    ccf
    ldh [rIE], a
    ld a, b
    rst $18
    ccf
    rst $20
    sbc a
    ld hl, sp-$19
    rst $38
    ld hl, sp+$3f
    rst $38
    ld d, a
    rst $38
    add l
    rst $38
    pop bc
    ld a, a
    jp $e4bc


jr_014_7650:
    ld hl, sp-$08
    ldh a, [$b0]
    ldh a, [rNR10]
    ld hl, sp+$28
    ld hl, sp-$08
    db $fc
    inc d
    db $fc

jr_014_765d:
    adc h
    cp $c2
    ld a, [hl]
    ld [c], a
    rst $18
    db $db
    rst $00
    rst $00

jr_014_7666:
    and b
    ldh [$e0], a
    ld h, b
    inc a
    db $fc
    rst $38
    rst $38
    db $fc
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
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    jr nz, jr_014_7666

    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    adc $ce
    ld [hl], l
    ld a, e
    ccf
    ccf
    cp $fe
    nop
    nop
    nop
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
    ld bc, $0101
    nop
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
    rlca
    dec b
    rrca
    ld [$080f], sp
    rra
    db $10
    rra
    db $10
    cpl
    inc a
    inc hl
    ccf
    jr z, @+$41

    jr z, jr_014_771d

    inc d
    rra
    ld [de], a
    rra
    rrca
    rrca
    dec bc
    ld c, $0f
    rrca
    dec c
    ld c, $3f
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    inc hl
    ccf
    ldh [rIE], a
    ld [hl], b
    rst $18
    inc a
    rst $28
    sbc a
    di
    rst $08
    db $fc
    di
    rst $38
    db $fc
    rst $38
    rst $38
    rst $28
    rst $38
    xor c
    ld a, [hl]
    jp nz, $e4bc

    ld hl, sp+$78
    ldh a, [$30]
    ld hl, sp+$48
    ld hl, sp+$48
    ld hl, sp-$68
    ld hl, sp-$18
    ld a, e

jr_014_771d:
    srl [hl]
    db $fd
    cpl
    rst $28
    and a
    rst $20
    ret nz

    ld b, b
    and b
    ldh [$60], a
    ldh [$3c], a
    db $fc
    cp $fe
    db $fc
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
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ldh [$e0], a
    jr nz, @-$1e

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
    add b
    add b
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
    ld [$1c08], sp
    inc d
    inc d
    inc e
    inc e
    inc e
    ld c, $0e
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0000
    ld bc, $8301
    add d
    jp Jump_014_61c2


    ld h, c
    ld sp, $3f31
    cpl
    rra
    add hl, de
    rra
    db $10
    rrca
    ld [$101f], sp
    rra
    jr jr_014_77de

    ld a, $21
    ccf
    inc h
    ccf
    inc l
    ccf
    ld [de], a
    rra
    inc de
    rra
    rrca
    rrca
    dec c
    dec bc
    ld c, $0f
    dec bc
    rrca
    ccf
    ccf
    ld a, a

jr_014_77cd:
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    inc e
    db $e3
    rst $38
    ld [hl], b
    rst $18

jr_014_77dc:
    jr c, jr_014_77cd

jr_014_77de:
    sbc [hl]
    rst $30
    rst $08
    ld sp, hl
    rst $20
    cp $f9

jr_014_77e5:
    rst $38
    cp $7f
    rst $38
    ccf
    rst $38
    add l
    ld a, [hl]
    ld [$fc9c], a
    ldh a, [rSVBK]
    ld hl, sp+$08
    ld hl, sp+$28
    ldh a, [$30]
    ldh [$e0], a
    jr nz, jr_014_77dc

    jr nz, jr_014_77de

    db $10
    ldh a, [$d0]
    ldh a, [$f0]
    jr nc, jr_014_77e5

    ldh [$a0], a
    ld h, b
    and b
    ldh [$dc], a
    db $fc
    cp $fe
    db $fc
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
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    and b
    ldh [rNR41], a
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
    ld bc, $0101
    ld bc, $0101
    nop
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
    inc [hl]
    scf
    ld c, a
    ld a, a
    ld b, a
    ld a, h
    ld c, a
    ld a, d
    rst $38
    or c
    rst $38
    sub c
    rst $38
    dec sp
    rst $38
    scf
    rst $38
    dec e
    rst $38
    xor a
    ld a, h
    ld b, a
    ccf
    inc hl
    rra
    db $10
    rra
    db $10
    rra

jr_014_7875:
    db $10
    rra
    jr jr_014_7890

    rra
    db $10
    rra
    inc de
    rra
    ld de, $111f
    rra
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    rrca
    add hl, bc
    rrca
    ccf
    ccf
    ld a, a
    ld a, a
    ccf
    ccf

jr_014_7890:
    nop
    nop
    nop
    nop
    ldh [$e0], a
    jr jr_014_7890

    inc b
    db $fc
    inc c
    db $fc
    cp $f6
    ld sp, hl
    rrca
    pop af
    rst $38
    ld [bc], a
    cp $fc
    db $fc
    db $fc
    db $e4
    ld hl, sp-$28
    ldh [$a0], a
    ret nz

    ret nz

    ld h, b

jr_014_78af:
    ldh [$f0], a
    ldh a, [$f8]
    jr z, @-$16

    jr c, jr_014_78af

    jr c, @-$0e

    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp+$08
    ld hl, sp-$30
    ldh a, [$f0]
    jr nc, jr_014_7875

    ld [hl], b
    ret nc

    ldh a, [$d0]
    ldh a, [$fc]
    db $fc
    cp $fe
    db $fc
    db $fc
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
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    inc b
    rrca
    ld [$111f], sp
    rra
    add hl, de
    daa
    ld a, $21
    ccf
    jr nz, @+$41

    ld de, $101f
    rra
    add hl, bc
    rrca
    rrca
    ld c, $0f
    add hl, bc
    rrca
    add hl, bc
    ld c, $0f
    ld a, [hl-]
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    nop
    jr jr_014_792e

    daa
    ccf
    ldh [rIE], a
    ld a, b
    rst $18
    ccf
    rst $20
    sbc a
    ld hl, sp-$19
    rst $38
    ld hl, sp+$3f
    rst $38
    ld d, a
    rst $38
    add l
    rst $38
    pop bc
    ld a, a
    jp $e4bc


jr_014_792e:
    ld hl, sp+$78
    ldh a, [$b0]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$90]
    ld hl, sp-$78
    ld a, h
    call nz, $c4fc
    cp h
    or h
    adc [hl]
    adc [hl]

jr_014_7944:
    jp $a1c3


    pop hl
    ldh [$60], a
    inc a
    db $fc
    rst $38
    rst $38
    db $fc
    db $fc
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
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    jr nz, jr_014_7944

    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $b6cc
    ld a, [$7e62]
    db $fc
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
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$101f], sp
    rra
    ld de, $3d2f
    inc hl
    ccf
    add hl, hl
    ccf
    jr z, jr_014_79fd

    inc d
    rra
    ld d, $1f
    rrca
    dec c
    rrca
    inc c
    rrca
    rrca
    ld a, [bc]
    rrca
    ccf
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_014_79f0

    daa
    ccf
    ldh [rIE], a
    ld a, b
    rst $18
    ccf
    rst $20
    sbc a
    ld hl, sp-$19
    rst $38
    ld hl, sp+$3f
    rst $38
    ld d, a
    rst $38
    add l
    rst $38
    pop bc
    ld a, a
    jp $e4bc


jr_014_79f0:
    ld hl, sp-$08
    ldh a, [$b0]
    ldh a, [rNR10]
    ld hl, sp+$28
    ld hl, sp-$08
    db $fc
    inc d
    db $fc

jr_014_79fd:
    adc h
    cp $c2
    ld a, [hl]
    ld [c], a
    sbc $da
    rst $00
    rst $00

jr_014_7a06:
    and c
    pop hl
    ldh [$60], a
    inc a
    db $fc
    rst $38
    rst $38
    db $fc
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
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    jr nz, jr_014_7a06

    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call z, $b6cc
    ld a, [$7e62]
    db $fc
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
