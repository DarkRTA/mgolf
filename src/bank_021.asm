; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $021", ROMX[$4000], BANK[$21]

    ld [de], a
    ld b, b
    inc sp
    ld b, b
    or c
    ld c, d
    db $31
    ld d, l

    db $b1, $5f, $31, $6a

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
    jr nc, jr_021_4022

    inc h

jr_021_4022:
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


    ld b, $04
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
    inc bc
    inc bc
    inc b
    rlca

jr_021_4054:
    ld [$100f], sp
    rra
    ld de, $131f
    rra
    rrca
    dec c
    rrca
    ld c, $05
    rlca
    rlca

jr_021_4063:
    rlca
    rrca
    ld a, [bc]
    rra
    rla
    inc e
    rra
    rrca
    rrca
    dec bc
    rrca
    ld b, $06
    ret nz

    ret nz

    jr nz, jr_021_4054

    ld d, b
    ldh a, [$d0]
    ldh a, [$e8]
    jr c, jr_021_4063

    ld a, b
    ld hl, sp+$58
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [$e0], a
    ldh a, [$50]
    ldh a, [$f0]
    ld h, b
    ldh [$d0], a
    ldh a, [$b0]
    ldh a, [$e0]
    ldh [rTAC], a
    rlca
    ld a, [bc]
    rrca

jr_021_4094:
    ld [de], a
    rra
    rla
    dec e
    rla
    inc e
    rra
    ld a, [de]
    rra
    ld [de], a
    rrca
    ld [$1c17], sp
    ccf
    dec hl
    ccf
    inc a
    dec hl
    cpl
    ld h, h
    ld h, a
    ld h, a
    ld h, a
    inc b
    rlca
    inc bc
    inc bc
    ret nz

    ret nz

    jr nz, jr_021_4094

    db $10
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$30
    ld [hl], b
    ret nc

    ld [hl], b
    ldh [$60], a
    ldh a, [$f0]
    ld hl, sp+$28
    call c, Call_000_2cf4
    db $ec
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    inc bc
    inc bc
    inc b
    rlca

jr_021_40d4:
    ld [$080f], sp
    rrca
    db $10
    rra
    db $10
    rra
    ld de, $131f
    ld e, $0b
    ld c, $07
    rlca
    inc bc
    ld [bc], a
    rlca
    dec b
    ld b, $07
    rrca
    rrca
    dec bc
    rrca
    rlca
    rlca
    ret nz

    ret nz

    jr nz, jr_021_40d4

    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$48
    ld hl, sp-$10
    or b
    ldh a, [rSVBK]
    and b
    ldh [$f0], a
    ldh a, [$f8]
    xor b
    ld hl, sp-$08
    jr nc, @-$0e

    add sp, -$28
    ret c

    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    inc d
    rra
    inc c
    rrca
    ld c, $0b
    rlca
    dec b
    rrca
    rrca
    rra
    inc d
    dec sp
    cpl
    inc [hl]
    scf
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $8080
    ld h, b
    ldh [$50], a
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$28
    ld hl, sp+$70
    ret nc

    db $fc
    cp h
    db $fc
    call nc, Call_000_38f8
    ret nc

    ldh a, [$e0]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    inc bc
    inc bc
    inc b
    rlca

jr_021_4154:
    ld [$100f], sp
    rra
    ld de, $131f
    rra
    rrca
    dec c
    rrca
    ld c, $05
    rlca
    rrca

jr_021_4163:
    rrca
    rra
    dec d
    rra
    rra
    inc c
    rrca
    rla
    dec de
    dec de
    rra
    ld c, $0e
    ret nz

    ret nz

    jr nz, jr_021_4154

    ld d, b
    ldh a, [$d0]
    ldh a, [$e8]
    jr c, jr_021_4163

    ld a, b
    ld hl, sp+$58
    ldh a, [rNR10]
    ldh [rNR41], a
    call z, $cccc
    ld c, h
    ldh a, [$b0]
    ld h, b
    ldh [$f0], a
    ldh a, [$d0]
    ldh a, [$e0]
    ldh [rTAC], a
    rlca
    ld a, [bc]
    rrca

jr_021_4194:
    ld [de], a
    rra
    rla
    dec e
    rla
    inc e
    rra
    ld a, [de]
    rra
    ld [de], a
    rrca
    ld [$1c17], sp
    ld l, a
    ld l, a
    ld a, a
    ld [hl], h
    dec sp
    cpl
    inc [hl]
    scf
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $c0c0
    jr nz, jr_021_4194

    db $10
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$30
    ld [hl], b
    ret nc

    ld [hl], b
    ld hl, sp+$78
    db $fc
    call nc, Call_000_3cfc
    ret nc

    ldh a, [rNR41]
    ldh [$e0], a
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    inc bc
    inc bc
    inc b
    rlca

jr_021_41d4:
    ld [$080f], sp
    rrca
    db $10
    rra
    db $10
    rra
    ld de, $731f
    ld a, [hl]
    ld l, e
    ld l, [hl]
    cpl
    cpl
    rra
    ld a, [de]
    rrca
    rrca
    ld b, $07
    dec bc
    ld c, $0d
    rrca
    rlca
    rlca
    ret nz

    ret nz

    jr nz, jr_021_41d4

    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$48
    ld hl, sp-$10
    or b
    ldh a, [rSVBK]
    and b
    ldh [$e0], a
    ldh [$f0], a
    ld d, b
    ld hl, sp-$18
    jr c, @-$06

    ldh a, [$f0]
    ret nc

    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    inc b
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    inc d
    rra
    inc c
    rrca
    ld c, $0b
    ccf
    dec a
    ccf
    dec hl
    rra
    inc e
    dec bc
    rrca
    rlca
    rlca
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    add b
    add b
    ld h, b
    ldh [$50], a
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$28
    ld hl, sp+$70
    ret nc

    ldh [$a0], a
    ldh a, [$f0]
    ld hl, sp+$28
    call c, Call_000_2cf4
    db $ec
    ret nz

    ret nz

    add b
    add b
    add b
    add b
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
    rlca
    ld b, $07
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rrca
    ld c, $09
    rrca
    ld b, $07
    rlca
    dec b
    inc b
    rlca
    rlca
    rlca
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$24
    db $fc
    ld h, h
    db $fc
    db $f4
    sbc h
    db $f4
    cp h
    ld hl, sp+$28
    ld hl, sp-$78
    ldh a, [$90]
    ldh [$e0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh a, [$f0]
    sbc e
    sbc e
    adc a
    adc a
    inc bc
    inc bc
    inc b
    rlca
    ld [$110f], sp
    rra
    inc de
    ld e, $1f
    inc e
    rra
    dec d
    rrca
    add hl, bc
    rla
    inc e
    rrca
    ld c, $1f
    dec de
    rla
    dec e
    rrca
    ld c, $0f
    dec bc
    inc de
    rra
    rra
    rra
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$38
    ld a, b
    ret z

    ld a, b
    add sp, $38
    ldh a, [$30]
    ldh a, [rSVBK]
    ldh a, [$d0]
    ldh a, [$b0]
    ld h, b
    ldh [$e0], a
    and b
    sub b
    ldh a, [$f0]
    ldh a, [rTAC]
    rlca
    ld [$100f], sp
    rra

jr_021_42d6:
    jr nz, jr_021_4317

    jr nz, jr_021_4319

    jr nz, @+$41

    ld hl, $133f
    ld e, $17
    dec e
    rrca
    dec c
    rlca
    rlca
    rlca
    dec b
    dec b
    rlca
    rrca
    rrca
    reti


    reti


jr_021_42ee:
    pop af
    pop af
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_021_42d6

    db $10
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$e0]
    ld h, b
    ldh [$e0], a
    ld b, b
    ret nz

    ret nz

    ret nz

    ldh a, [rSVBK]
    sub b
    ldh a, [$60]
    ldh [$e0], a
    and b
    jr nz, jr_021_42ee

    ldh [$e0], a
    inc bc
    inc bc
    inc b
    rlca
    ld [$100f], sp

jr_021_4317:
    rra
    inc d

jr_021_4319:
    rra
    ld e, $1b
    rra
    dec de
    rrca
    inc c
    dec bc
    rrca
    rrca
    ld c, $0f
    dec bc
    inc b
    rlca
    inc bc
    inc bc
    rlca
    ld b, $09
    rrca
    rrca
    rrca
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$18
    ld hl, sp+$38
    add sp, -$10
    ret nc

    ldh a, [$30]
    ldh a, [$d0]
    add sp, -$08
    ld [$f0f8], sp
    ldh a, [$f0]
    or b
    ret z

    ld hl, sp-$08
    ld hl, sp+$00
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    add hl, bc
    rrca
    rlca
    ld b, $07
    rlca
    ld e, $1f
    rra
    dec e
    rrca
    ld c, $0b
    rrca
    rlca
    rlca
    rlca
    dec b
    inc b
    rlca
    rlca
    rlca
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$24
    db $fc
    ld h, h
    db $fc
    db $f4
    sbc h
    db $f4
    cp h
    ld hl, sp+$28
    ld hl, sp-$78
    ldh a, [$90]
    ldh [$e0], a
    ld h, b
    and b
    ret nz

    ret nz

    nop
    nop
    add b
    add b
    add b
    add b
    inc bc
    inc bc
    inc b
    rlca
    ld [$110f], sp
    rra
    inc de
    ld e, $1f
    inc e
    rra
    dec d
    rrca
    add hl, bc
    rst $10
    call c, $feff
    ccf
    scf
    dec e
    rra
    rrca
    rrca
    rrca
    dec bc
    ld [de], a
    ld e, $1e
    ld e, $80
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$38
    ld a, b
    ret z

    ld a, b
    add sp, $38
    ldh a, [$30]
    ldh a, [rSVBK]
    ldh [$a0], a
    ret nc

    ld [hl], b
    ldh [$e0], a
    ldh [$a0], a
    sub b
    ldh a, [$f0]
    ldh a, [rTAC]
    rlca
    ld [$100f], sp
    rra

jr_021_43d6:
    jr nz, jr_021_4417

    jr nz, jr_021_4419

    jr nz, @+$41

    ld hl, $133f
    ld e, $17
    dec e
    rrca
    dec c
    rlca
    rlca
    rlca
    dec b
    rrca
    dec bc
    rrca
    rrca
    ld bc, $0101
    ld bc, $0000
    ret nz

    ret nz

    jr nz, jr_021_43d6

    db $10
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$e0]
    ld h, b
    ldh [$e0], a
    ld e, b
    ret c

    ld hl, sp-$08
    ldh a, [rSVBK]
    sub b
    ldh a, [$60]
    ldh [$e0], a
    and b
    jr nz, @-$1e

    ldh [$e0], a
    inc bc
    inc bc
    inc b
    rlca
    ld [$100f], sp

jr_021_4417:
    rra
    inc d

jr_021_4419:
    rra
    ld e, $1b
    rra
    dec de
    rrca
    inc c
    dec bc
    ld c, $0f
    dec c
    rrca
    dec bc
    inc b
    rlca
    rlca
    rlca
    rlca
    ld b, $09
    rrca
    rrca
    rrca
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$18
    ld hl, sp+$38
    add sp, -$10
    ret nc

jr_021_4440:
    di
    ld [hl], e
    rst $38
    xor a
    db $fc
    db $f4
    jr jr_021_4440

    ldh a, [$f0]
    ldh a, [$b0]
    ld c, b
    ld a, b
    ld a, b
    ld a, b
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld l, b
    ld l, a
    ld l, b
    ld l, a
    ld l, c
    ld l, a
    scf
    ld [hl], $1f
    rra
    ld c, $0b
    dec b
    rlca
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $07
    rlca
    dec b
    inc b
    rlca
    rlca
    rlca
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$24
    db $fc
    ld h, h
    db $fc
    db $f4
    sbc h
    db $f4
    cp h
    ld hl, sp+$28
    ld hl, sp-$78
    ldh a, [$90]
    ldh [$60], a
    ret nz

    ret nz

    add b
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    add b
    add b
    inc bc
    inc bc
    inc b
    rlca
    ld [$d10f], sp
    rst $18
    db $d3
    sbc $df
    call c, Call_021_555f
    ld a, a
    ld a, c
    scf
    inc a
    ccf
    ld l, $1b
    rra
    rra
    ld e, $0f
    rrca
    rrca
    dec bc
    ld [de], a
    ld e, $1e
    ld e, $80
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$38
    ld a, b
    ret z

    ld a, b
    add sp, $38
    ldh a, [$30]
    ldh a, [rSVBK]
    ldh [$e0], a
    ret nc

    ld [hl], b
    ldh [$e0], a
    ldh [$a0], a
    sub b
    ldh a, [$f0]
    ldh a, [rTAC]
    rlca
    ld [$100f], sp
    rra

jr_021_44d6:
    jr nz, jr_021_4517

    jr nz, jr_021_4519

    jr nz, @+$41

    ld hl, $133f
    ld e, $17
    dec e
    rrca
    dec c
    rrca
    rrca
    rrca
    add hl, bc
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_021_44d6

    ld d, $f6
    ld d, $f6
    sub [hl]
    or $ec
    ld l, h
    ld hl, sp-$08
    ld [hl], b
    ldh a, [$f0]
    ret nc

    ldh a, [rSVBK]
    sub b
    ldh a, [$60]
    ldh [$e0], a
    and b
    jr nz, @-$1e

    ldh [$e0], a
    inc bc
    inc bc
    inc b
    rlca
    ld [$100f], sp

jr_021_4517:
    rra
    inc d

jr_021_4519:
    rra
    ld e, $1b
    rra
    dec de
    rrca
    inc c
    dec bc
    ld c, $07
    rlca
    rlca
    rlca
    inc b
    rlca
    inc bc
    inc bc
    rlca
    ld b, $09
    rrca
    rrca
    rrca
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$0b]
    ei
    dec bc
    ei
    dec de
    ei
    ld a, $ee
    db $fc
    call c, $f4fc
    ld hl, sp+$48
    ld hl, sp-$08
    ld [$f0f8], sp
    ldh a, [$f0]
    or b
    ld c, b
    ld a, b
    ld a, b
    ld a, b
    inc bc
    inc bc
    inc b
    rlca

jr_021_4554:
    ret z

    rst $08
    ret z

    rst $08
    ret z

    rst $08
    ld l, b
    ld l, a
    inc a
    ccf
    ld e, $17
    rrca
    dec c
    rlca
    inc b
    rrca
    ld c, $09
    rrca
    rlca
    rlca
    rlca
    dec b
    inc b
    rlca
    rlca
    rlca
    ret nz

    ret nz

    jr nz, jr_021_4554

    jr nc, @-$0e

    ld c, b
    ld hl, sp+$08
    ld hl, sp+$18
    ld hl, sp+$38
    add sp, $78
    ld hl, sp-$18
    cp b
    ldh a, [rSVBK]
    ret nz

    ld b, b
    ldh [$e0], a
    ret nz

    ret nz

    and b
    ld h, b
    and b
    ldh [$e0], a
    ldh [$03], a
    inc bc
    inc b
    rlca
    ret z

    rst $08
    ret nc

    rst $18
    ret nc

    rst $18
    ld [hl], c
    ld a, a
    inc sp
    ccf
    rra
    dec e
    rra
    ld d, $0d
    rrca
    rlca
    rlca
    dec bc
    rrca
    rrca
    rrca
    rla
    dec e
    inc de
    rra
    ld c, $0e
    add b
    add b
    ld h, b
    ldh [rNR10], a

jr_021_45b5:
    ldh a, [rOBP0]
    ld hl, sp-$38
    ld hl, sp-$18
    jr c, jr_021_45b5

    ld e, b
    ld hl, sp+$58
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [$d0]
    ldh [rNR41], a
    ldh [$e0], a
    ldh [$a0], a
    sub b
    ldh a, [$f0]
    ldh a, [$03]
    inc bc
    inc c
    rrca
    db $10
    rra
    jr z, jr_021_4617

    jr z, @+$41

    inc a
    scf
    ld e, $1b
    rra
    add hl, de
    rra
    ld de, $090f
    rlca
    rlca
    rrca
    inc c
    dec bc
    rrca
    rlca
    dec b
    dec b
    rlca

jr_021_45ee:
    inc bc
    inc bc
    add b
    add b
    ld b, b
    ret nz

    inc hl
    db $e3
    inc de
    di

jr_021_45f8:
    inc de
    di
    ld d, $f6
    inc a
    db $fc
    jr z, jr_021_45f8

    ld a, b
    ld hl, sp-$08
    xor b
    ldh a, [rSVBK]
    ret nc

    ldh a, [$60]
    ldh [$e0], a
    and b
    jr nz, jr_021_45ee

    ldh [$e0], a
    inc bc
    inc bc
    inc b
    rlca
    ld [$100f], sp

jr_021_4617:
    rra
    ld de, $131f
    ld e, $17
    inc e
    rrca
    dec c
    ld c, $0f
    rlca
    dec b
    inc bc
    ld [bc], a
    dec b
    rlca
    inc bc
    inc bc
    rlca
    ld b, $09
    rrca
    rrca
    rrca
    add b
    add b
    ld h, b
    ldh [rNR13], a
    di
    dec bc
    ei
    dec bc
    ei
    adc [hl]
    cp $94
    db $f4
    db $fc
    db $fc
    ret c

    ld hl, sp-$08
    ld l, b
    ldh a, [$f0]
    sub b
    ldh a, [$f0]
    ldh a, [$e8]
    ret c

    sbc b
    ld hl, sp-$10
    ldh a, [rP1]
    nop
    inc bc
    inc bc
    inc b
    rlca

jr_021_4656:
    ld [$100f], sp
    rra
    ld de, $131f
    rra
    rrca
    dec c
    rrca
    ld c, $05
    rlca
    rrca

jr_021_4665:
    ld a, [bc]
    rra
    rla
    inc e
    rra
    rrca
    rrca
    dec bc
    rrca
    ld b, $06
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_021_4656

    ld d, b
    ldh a, [$d0]
    ldh a, [$e8]
    jr c, jr_021_4665

    ld a, b
    ld hl, sp+$58
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh a, [$50]
    ldh a, [$f0]
    ld h, b
    ldh [$d0], a
    ldh a, [$b0]
    ldh a, [$e0]
    ldh [rP1], a
    nop
    rlca
    rlca
    ld a, [bc]
    rrca

jr_021_4696:
    ld [de], a
    rra
    rla
    dec e
    rla
    inc e
    rra
    ld a, [de]
    rra
    ld [de], a
    rrca
    ld [$1c17], sp
    ccf
    inc a
    dec hl
    cpl
    ld h, h
    ld h, a
    ld h, a
    ld h, a
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_021_4696

    db $10
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$30
    ld [hl], b
    ret nc

    ld [hl], b
    ldh [$60], a
    ld hl, sp+$28
    call c, Call_000_2cf4
    db $ec
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca

jr_021_46d6:
    ld [$080f], sp
    rrca
    db $10
    rra
    db $10
    rra
    ld de, $131f
    ld e, $0b
    ld c, $03
    ld [bc], a
    rlca
    dec b
    ld b, $07
    rrca
    rrca
    dec bc
    rrca
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_021_46d6

    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$48
    ld hl, sp-$10
    or b
    ldh a, [rSVBK]
    and b
    ldh [$f8], a
    xor b
    ld hl, sp-$08
    jr nc, @-$0e

    add sp, -$28
    ret c

    ld hl, sp+$70
    ld [hl], b
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
    inc d
    rra
    inc c
    rrca
    ld c, $0b
    rlca
    dec b
    rra
    inc d
    dec sp
    cpl
    inc [hl]
    scf
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    add b
    add b
    ld h, b
    ldh [$50], a
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$28
    ld hl, sp+$70
    ret nc

    db $fc
    cp h
    ld hl, sp+$38
    ret nc

    ldh a, [$e0]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    add hl, bc
    rrca
    rlca
    ld b, $07
    rlca
    ld [bc], a
    inc bc
    rlca
    rlca
    rrca
    ld a, [bc]
    rra
    rla
    inc e
    rra
    rrca
    rrca
    dec bc
    rrca
    ld b, $06
    ldh [$e0], a
    db $10
    ldh a, [$28]
    ld hl, sp+$68
    ld hl, sp-$0c
    sbc h
    db $f4
    cp h
    db $fc
    xor h
    ld hl, sp+$08
    ldh a, [$90]
    ldh [$e0], a
    ldh a, [$50]
    ldh a, [$f0]
    ld h, b
    ldh [$d0], a
    ldh a, [$b0]
    ldh a, [$e0]
    ldh [$03], a
    inc bc
    dec b
    rlca
    add hl, bc
    rrca
    dec bc
    ld c, $0b
    ld c, $0f
    dec c
    rrca
    add hl, bc
    rlca
    inc b
    dec bc
    ld c, $3f
    dec hl
    ccf
    inc a
    dec hl
    cpl
    ld h, h
    ld h, a
    ld h, a
    ld h, a
    inc b
    rlca
    inc bc
    inc bc
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp-$7c
    db $fc
    call nz, $c47c
    ld a, h
    add sp, $38
    add sp, $38
    ldh a, [$30]
    ldh a, [$f0]
    ld hl, sp+$28
    call c, Call_000_2cf4
    db $ec
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc b
    rlca
    ld [$080f], sp
    rrca
    ld [$090f], sp
    rrca
    dec b
    rlca
    rlca
    rlca
    inc bc
    ld [bc], a
    rlca
    dec b
    ld b, $07
    rrca
    rrca
    dec bc
    rrca
    rlca
    rlca
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    inc b
    db $fc

jr_021_47fa:
    inc h
    db $fc
    ld hl, sp-$28
    ld hl, sp+$38
    ret nc

    ld [hl], b
    ldh a, [$f0]
    ld hl, sp-$58
    ld hl, sp-$08
    jr nc, jr_021_47fa

    add sp, -$28
    ret c

    ld hl, sp+$70
    ld [hl], b
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    ld a, [bc]
    rrca
    ld b, $07
    rlca
    dec b
    inc bc
    ld [bc], a
    rrca
    rrca

jr_021_4824:
    rra
    inc d
    dec sp
    cpl

jr_021_4828:
    inc [hl]
    scf
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $c0c0
    jr nc, jr_021_4824

    jr z, @-$06

    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc d
    db $fc
    jr c, jr_021_4828

    cp $de
    db $fc
    call nc, Call_000_38f8
    ret nc

    ldh a, [$e0]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    rlca
    rlca
    ld [$100f], sp
    rra
    ld hl, $233f
    ld a, $27
    ld a, $1f
    ld a, [de]
    rra
    inc e
    dec bc
    ld c, $07
    rlca
    rrca
    ld a, [bc]
    rra
    rla
    inc e
    rra
    rrca
    rrca
    dec bc
    rrca
    ld b, $06
    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [$a0], a
    ldh [$d0], a
    ld [hl], b
    ret nc

    ldh a, [$f0]
    or b
    ldh [rNR41], a
    ret nz

    ld b, b
    ldh [$e0], a
    ldh a, [$50]
    ldh a, [$f0]
    ld h, b
    ldh [$d0], a
    ldh a, [$b0]
    ldh a, [$e0]
    ldh [rIF], a
    rrca
    inc d
    rra
    inc h
    ccf

jr_021_4896:
    ld l, $3b
    cpl
    add hl, sp
    ccf
    dec [hl]
    ccf
    inc h
    rra
    db $10
    cpl
    jr c, jr_021_48e2

    dec hl
    ccf
    inc a
    dec hl
    cpl
    ld h, h
    ld h, a
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

    jr nz, jr_021_4896

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$a0]
    ldh [$a0], a
    ldh [$c0], a
    ret nz

    ldh a, [$f0]
    ld hl, sp+$28
    call c, Call_000_2cf4
    db $ec
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    rlca
    rlca
    ld [$100f], sp
    rra

jr_021_48d6:
    db $10
    rra
    jr nz, @+$41

    jr nz, @+$41

    inc hl
    ccf
    daa
    inc a
    rla
    dec e

jr_021_48e2:
    rlca
    rlca
    inc bc
    ld [bc], a
    rlca
    dec b
    ld b, $07
    rrca
    rrca
    dec bc
    rrca
    rlca
    rlca
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_021_48d6

    db $10
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$e0]
    ld h, b
    ldh [$e0], a
    ld b, b
    ret nz

    ldh a, [$f0]
    ld hl, sp-$58
    ld hl, sp-$08
    jr nc, @-$0e

    add sp, -$28
    ret c

    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    ld [$100f], sp
    rra
    jr nz, jr_021_4957

    jr nz, @+$41

    jr z, jr_021_495b

    jr jr_021_493d

    inc e
    rla
    rrca
    dec bc
    rrca
    rrca
    rra
    inc d
    dec sp
    cpl
    inc [hl]
    scf
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    ret nz

    ret nz

    and b
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$50]

jr_021_493d:
    ldh a, [$e0]
    and b
    ld hl, sp+$78
    db $fc
    call nc, Call_000_38f8
    ret nc

    ldh a, [$e0]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    inc b

jr_021_4957:
    rlca
    ld [$090f], sp

jr_021_495b:
    rrca
    rlca
    dec b
    rlca
    ld b, $01
    inc bc
    inc bc
    inc bc
    rrca
    dec bc
    inc c
    rrca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a

jr_021_496d:
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
    ldh [$d0], a
    jr nc, jr_021_496d

    ld [hl], b
    ldh [rNR41], a
    ret nz

    nop
    ret nz

    ret nz

    ldh [$e0], a
    ld b, b
    ret nz

    ldh [$e0], a
    and b
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $07
    ld a, [bc]
    rrca

jr_021_4998:
    dec bc
    dec c
    dec bc
    inc c
    rrca
    ld a, [bc]
    rlca
    inc b

jr_021_49a0:
    dec bc
    inc c
    rra
    rla
    rla
    rla
    jr nc, @+$35

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

    jr nz, jr_021_4998

    db $10
    ldh a, [$90]
    ldh a, [$e0]
    ld h, b
    ldh [$60], a
    ret nz

    ld b, b
    ldh [$e0], a
    ld hl, sp-$18
    jr jr_021_49a0

    ret nz

    ret nz

    add b
    add b
    add b
    add b
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

jr_021_49d8:
    inc b
    rlca
    ld [$090f], sp
    rrca
    dec bc
    ld c, $07
    ld b, $03
    inc bc
    inc bc
    ld bc, $0302

jr_021_49e8:
    rlca
    rlca
    rlca
    rlca
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

    jr nz, jr_021_49d8

    db $10
    ldh a, [rNR10]
    ldh a, [$e0]
    and b
    ldh [$60], a
    add b
    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    jr nz, jr_021_49e8

    ret nc

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
    inc b
    rlca
    ld [$080f], sp
    rrca
    inc b
    rlca
    ld b, $07
    inc bc
    ld bc, $0707
    rra
    rla
    jr @+$1d

    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld h, b
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$60]
    ldh [$f8], a
    cp b
    ld hl, sp-$18
    ldh [$e0], a
    ret nz

    ret nz

    nop
    ret nz

    nop
    ret nz

    ret nz

    ret nz

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
    jr jr_021_4a77

    inc c
    dec b

jr_021_4a77:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_021_4a80

    jr @-$01

jr_021_4a80:
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
    ld c, d
    ret nc

    ld d, h
    cp c
    ld c, d
    ret nc

    ld c, d
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
    ret nc

    ld d, b
    ret nc

    ld d, c
    ret nc

    ld d, d
    ret nc

    ld d, e
    nop
    nop
    nop
    rlca
    rlca
    rrca
    dec c
    inc bc
    inc bc
    ld [bc], a
    inc bc

jr_021_4ad8:
    inc b
    rlca
    dec b
    rlca
    ld b, $07
    ld c, $0f
    ld de, $221f
    ccf
    cpl
    ccf
    rra
    inc e
    rlca
    rlca
    dec bc
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

    jr nz, jr_021_4ad8

    db $10
    ldh a, [$30]
    ldh a, [$88]
    ld hl, sp+$10
    ldh a, [rNR23]
    ld hl, sp-$4c
    db $fc
    ret c

    ld a, b
    ldh [rNR41], a
    ldh [$e0], a
    ret nc

    ldh a, [$90]
    ldh a, [$e0]
    ldh [$03], a
    inc bc
    rlca
    ld b, $03
    inc bc
    inc b
    rlca
    ld [$1a0f], sp
    rra
    add hl, hl
    ccf
    ld h, b
    ld a, a
    sbc b
    rst $38
    xor e
    rst $38
    ld [hl], h
    ld a, a
    ld l, a
    ld l, e
    rst $08
    call z, $cfcf
    add hl, bc
    rrca
    rlca
    rlca
    add b
    add b
    ret nz

    ret nz

    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    or b
    ldh a, [$28]
    ld hl, sp+$08
    ld hl, sp+$38
    ld hl, sp-$5c
    db $fc
    ld b, d
    cp $fa
    cp [hl]
    db $ec
    ld l, h
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
    inc b
    rlca
    ld [$0c0f], sp
    rrca
    ld de, $091f
    rrca
    ld a, [bc]
    rrca
    inc c
    rrca
    inc e
    rla
    rrca
    dec bc
    rlca
    rlca
    dec bc
    rrca
    rrca
    rrca
    ld b, $06
    ldh [$e0], a
    ldh a, [$b0]
    ret nz

    ret nz

    ld b, b
    ret nz

    jr nz, @-$1e

    and b
    ldh [$60], a
    ldh [$d0], a
    ldh a, [rBCPS]
    ld hl, sp+$68
    ld hl, sp+$30
    ldh a, [rNR41]
    ldh [$e0], a
    ldh [$d0], a
    ldh a, [$90]
    ldh a, [$e0]
    ldh [$03], a
    inc bc
    rlca
    rlca
    inc bc
    ld [bc], a
    rlca
    rlca
    dec bc
    rrca
    jr jr_021_4bbb

    ld l, b
    ld a, a
    cp h
    rst $38
    adc a
    rst $38
    ld b, a
    ld a, h
    ccf
    jr c, jr_021_4bb6

    inc c
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    add b
    add b
    ret nz

    ret nz

    add b
    add b

jr_021_4bb6:
    ret nz

    ret nz

    and b
    ldh [$30], a

jr_021_4bbb:
    ldh a, [$28]
    ld hl, sp+$48
    ld hl, sp-$08
    ld hl, sp-$3c
    ld a, h
    ld [c], a
    ld a, $fa
    ld a, [hl]
    xor $ee
    and $e6
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    rrca
    dec c
    inc bc
    inc bc
    ld [bc], a
    inc bc

jr_021_4bd8:
    inc b
    rlca
    dec b
    rlca
    ld b, $07
    dec bc
    rrca
    ld d, $1f
    ld d, $1f
    rrca
    dec c
    rlca
    inc b
    rlca
    rlca
    dec bc
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

    jr nz, jr_021_4bd8

    db $10
    ldh a, [$30]
    ldh a, [$88]
    ld hl, sp-$6a
    or $56
    or $3c
    db $fc
    ld [$d0f8], sp
    ldh a, [$e0]
    ldh [$d0], a
    ldh a, [$f0]
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    rlca
    ld b, $03
    inc bc
    inc b
    rlca
    ld [$1a0f], sp
    rra
    add hl, hl
    ccf
    ldh [rIE], a
    ld hl, sp-$01
    ld c, e
    ld a, a
    call nz, $bfff
    ei
    ld l, a
    ld l, h
    rrca
    rrca
    rlca
    rlca

jr_021_4c2e:
    ld bc, $8001
    add b
    ret nz

    ret nz

    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    or b
    ldh a, [$28]
    ld hl, sp+$0c
    db $fc
    ld [hl-], a
    cp $aa
    cp $5c
    db $fc
    ldh [$a0], a
    ldh [$60], a
    ldh [$e0], a
    jr nz, jr_021_4c2e

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
    ld [$0c0f], sp
    rrca
    ld [hl], c
    ld a, a
    ld l, b
    ld l, a
    jr c, jr_021_4ca1

    dec l
    ccf
    dec de
    ld e, $07
    inc b
    rlca
    rlca
    dec bc
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    ldh [$e0], a
    ldh a, [$b0]
    ret nz

    ret nz

    ld b, b
    ret nz

    jr nz, @-$1e

    and b
    ldh [$60], a
    ldh [rSVBK], a
    ldh a, [$88]
    ld hl, sp+$44
    db $fc
    db $f4
    db $fc
    add sp, $28
    ldh [$e0], a
    ret nc

    ldh a, [$f0]
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    rlca
    rlca
    inc bc
    ld [bc], a
    rlca
    rlca
    dec bc
    rrca
    jr jr_021_4cbb

    jr z, jr_021_4cdd

    inc h
    ccf
    ccf

jr_021_4ca1:
    ccf
    ld b, a
    ld a, h
    adc a
    ld hl, sp-$41
    db $fc
    ld l, a
    ld l, a
    rrca
    rrca
    rlca
    rlca

jr_021_4cae:
    ld bc, $8001
    add b
    ret nz

    ret nz

    add b
    add b
    add $c6
    and [hl]
    and $34

jr_021_4cbb:
    db $f4
    inc l
    db $fc
    ld a, d
    cp $e2
    cp $c4
    ld a, h
    ld hl, sp+$38
    ldh [$60], a
    ldh [$e0], a
    ldh [$e0], a
    jr nz, jr_021_4cae

    ret nz

    ret nz

    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0302
    ld [bc], a
    inc bc
    inc bc

jr_021_4cdd:
    inc bc
    rlca
    dec b
    ld c, $0b
    ld e, $13
    ld e, $1b
    rra
    rra
    rrca
    rrca
    ld c, $0e
    add hl, bc
    rrca
    rrca
    rrca
    ldh [$e0], a
    ret nz

    ld b, b
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp+$58
    ld hl, sp+$08
    ld hl, sp-$70
    ldh a, [$50]
    ldh a, [$60]
    ldh [rNR41], a
    ldh [$a0], a
    ldh [rSVBK], a
    ld [hl], b
    dec de
    dec de
    rrca
    rrca
    inc bc
    inc bc
    rlca
    ld b, $03
    inc bc
    ld [bc], a
    inc bc

jr_021_4d18:
    inc b
    rlca
    ld [$150f], sp
    rra
    db $10
    rra
    inc l
    ccf
    inc h
    ccf
    ld [de], a
    rra
    add hl, bc
    rrca
    inc c
    rrca
    ld c, $0f
    inc de
    rra
    rra
    rra
    ret nz

    ret nz

    add b
    add b
    ret nz

    ret nz

    jr nz, jr_021_4d18

    db $10
    ldh a, [rNR10]
    ldh a, [$58]
    ld hl, sp-$68
    ld hl, sp+$14
    db $fc
    inc h
    db $fc
    jr z, @-$06

    ret z

    ld hl, sp-$30
    ldh a, [$b0]
    ldh a, [$c8]
    ld hl, sp-$08
    ld hl, sp+$07
    rlca
    inc bc
    ld [bc], a
    rlca
    rlca
    ld [$100f], sp
    rra
    ld de, $1a1f
    rra
    db $10
    rra
    add hl, bc
    rrca
    ld a, [bc]
    rrca
    ld b, $07
    inc b
    rlca
    dec b
    rlca
    ld c, $0e
    ret c

    ret c

    ldh a, [$f0]
    add b
    add b
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ldh [$a0], a
    ld [hl], b
    ret nc

    ld a, b
    ret z

    ld a, b
    ret c

    ld hl, sp-$08
    ldh a, [$f0]
    ld [hl], b
    ld [hl], b
    sub b
    ldh a, [$f0]
    ldh a, [$03]
    inc bc
    ld bc, $0301
    inc bc
    inc b
    rlca

jr_021_4d98:
    ld [$140f], sp
    rra
    rla
    rra
    dec de
    ld e, $23
    ld a, $27
    inc a
    rla
    dec e
    rrca
    rrca
    rlca
    rlca
    rrca
    rrca
    ld [de], a
    ld e, $1e
    ld e, $c0
    ret nz

    ldh [$60], a
    ret nz

    ret nz

    jr nz, jr_021_4d98

    db $10
    ldh a, [rNR10]
    ldh a, [$28]
    ld hl, sp-$0c
    call c, $1cf4
    db $f4
    inc e
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ret z

    ld hl, sp-$08
    ld hl, sp+$01
    ld bc, $0303
    ld bc, $0101
    ld bc, $0302
    ld [bc], a
    inc bc
    rlca
    rlca
    add hl, bc
    rrca
    add hl, bc
    rrca
    ld a, h
    ld [hl], a
    ld a, h
    ld a, a
    rra
    rra
    ld c, $0f
    rrca
    rrca
    add hl, bc
    rrca
    rrca
    rrca
    ldh [$e0], a
    ret nz

    ld b, b
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp+$58
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [$90]
    ldh a, [$a0]
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    ld b, $03
    inc bc
    ld [bc], a
    inc bc

jr_021_4e18:
    inc b
    rlca
    ld [$150f], sp
    rra
    jr nc, jr_021_4e5f

    inc l
    ccf
    db $f4
    rst $38
    and $ff
    ld [hl], a
    ld a, l
    ld e, $1f
    inc c
    rrca
    rla
    rra
    ld e, $1e
    ret nz

    ret nz

    add b
    add b
    ret nz

    ret nz

    jr nz, jr_021_4e18

    db $10
    ldh a, [rNR10]
    ldh a, [$58]
    ld hl, sp-$68
    ld hl, sp+$10
    ldh a, [$30]
    ldh a, [$28]
    ld hl, sp-$38
    ld hl, sp+$30
    ldh a, [$f0]
    ldh a, [$c8]
    ld hl, sp+$78
    ld a, b
    rlca
    rlca
    inc bc
    ld [bc], a
    rlca
    rlca
    ld [$100f], sp
    rra
    ld de, $1a1f
    rra
    db $10

jr_021_4e5f:
    rra
    add hl, bc
    rrca
    dec bc
    rrca
    inc b
    rlca
    inc c
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    and b
    ldh [$f0], a
    ret nc

    db $fc
    inc c
    db $fc
    sbc h
    ld hl, sp-$08
    ldh a, [$f0]
    ld [hl], b
    ld [hl], b
    sub b
    ldh a, [$f0]
    ldh a, [$03]
    inc bc
    ld bc, $0301
    inc bc
    inc b
    rlca

jr_021_4e98:
    ld [$140f], sp
    rra
    inc d
    rra
    rra
    rra
    rla
    inc e
    rla
    inc e
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    ld c, $0e
    ld [de], a
    ld e, $1e
    ld e, $c0
    ret nz

    ldh [$60], a
    ret nz

    ret nz

    jr nz, jr_021_4e98

    db $10
    ldh a, [$30]
    ldh a, [$c8]
    ld hl, sp-$3c
    ld a, h
    call nz, $eb7c
    dec sp
    rst $38
    cp a
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ld c, b
    ld a, b
    ld a, b
    ld a, b
    ld bc, $0301
    inc bc
    pop bc
    pop bc
    pop bc
    pop bc
    jp nz, Jump_021_7ec3

    ld a, a
    cpl
    dec sp
    scf
    ccf
    ld [hl-], a
    ccf
    add hl, hl
    ccf
    jr jr_021_4f05

    inc e
    rra
    rrca
    rrca
    ld c, $0e
    add hl, bc
    rrca
    rrca
    rrca
    ldh [$e0], a
    ret nz

    ld b, b
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp+$58
    ld hl, sp+$08
    ld hl, sp-$70
    ldh a, [$90]
    ldh a, [$60]

jr_021_4f05:
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    ld b, $c3
    jp $c3c2


jr_021_4f18:
    add h
    add a
    ret z

    rst $08
    ld [hl], l
    ld a, a
    ld d, b
    ld a, a
    ld a, h
    ld a, a
    inc l
    ccf
    ld [de], a
    rra
    add hl, de
    rra
    inc c
    rrca
    rrca
    rrca
    ld [de], a
    ld e, $1e
    ld e, $c0
    ret nz

    add b
    add b
    ret nz

    ret nz

    jr nz, jr_021_4f18

    db $10
    ldh a, [rNR10]
    ldh a, [$58]
    ld hl, sp-$68
    ld hl, sp+$10
    ldh a, [$30]
    ldh a, [$50]
    ldh a, [$90]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ldh a, [$c8]
    ld hl, sp+$78
    ld a, b
    rlca
    rlca
    inc bc
    ld [bc], a
    rlca
    rlca
    ld [$100f], sp
    rra
    ld de, $1a1f
    rra
    db $10
    rra
    add hl, bc
    rrca
    dec bc
    ld c, $05
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
    add b
    add b
    ret nz

    ret nz

    add e
    add e
    add e
    add e
    ld b, e
    jp $de5e


    db $e4
    db $fc
    xor b
    ld hl, sp-$08
    ret c

    ld hl, sp+$08
    ld hl, sp+$18
    ld hl, sp-$08
    ldh a, [$f0]
    ld [hl], b
    ld [hl], b
    sub b
    ldh a, [$f0]
    ldh a, [$03]
    inc bc
    ld bc, $0301
    inc bc
    inc b
    rlca
    ld [$140f], sp
    rra
    dec d
    rra
    rrca
    ld c, $0f
    inc c
    rrca
    inc c
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld c, $0e
    ld [de], a
    ld e, $1e
    ld e, $c0
    ret nz

    ldh [$60], a
    jp Jump_000_23c3


jr_021_4fb7:
    db $e3
    ld de, $73f1
    di
    sbc [hl]
    cp $92
    cp $d4
    ld a, h
    call nz, $e87c
    jr c, jr_021_4fb7

    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [rOBP0]
    ld a, b
    ld a, b
    ld a, b
    inc bc
    inc bc
    rlca
    ld b, $c3
    jp $c7c4


jr_021_4fd8:
    call nz, Call_021_68c7
    ld l, a
    inc a
    ccf
    ld d, $1f
    rra
    dec e
    rrca
    ld [$0c0f], sp
    rrca
    rrca
    rrca
    rrca
    ld c, $0f
    add hl, bc
    rrca

jr_021_4fee:
    rrca
    rrca
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    jr nz, jr_021_4fd8

    jr nz, @-$1e

    db $10
    ldh a, [$50]
    ldh a, [rSVBK]
    ldh a, [$e8]
    cp b
    add sp, $38
    ldh a, [$30]
    ldh [$e0], a
    ret nz

    ret nz

    ld b, b
    ret nz

    jr nz, jr_021_4fee

    ldh [$e0], a
    inc b
    inc b
    ld c, $0e
    ld a, a
    ld a, e
    ld h, [hl]
    ld h, a

jr_021_5018:
    ld [hl], h
    ld [hl], a
    dec e
    rra
    ld c, $0f
    ld b, $07
    dec b
    rlca
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    rlca
    dec bc
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

    jr nz, jr_021_5018

    db $10
    ldh a, [rNR10]
    ldh a, [$a8]
    ld hl, sp+$18
    ld hl, sp+$68
    ld hl, sp-$68
    ld hl, sp-$7c
    db $fc
    db $e4
    ld a, h
    ld hl, sp-$08
    ldh a, [$f0]
    ret z

    ld hl, sp+$78
    ld a, b
    ld c, $0e
    ld e, $1a
    rrca
    rrca
    ld [$100f], sp
    rra
    ld de, $141f
    rra
    ld a, [bc]
    rrca
    ld [$050f], sp
    rlca
    rlca
    rlca
    inc b
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    inc bc
    inc bc
    jp $a3c3


    db $e3
    ld h, $e6
    ld l, h
    db $ec
    inc [hl]
    db $fc
    xor b
    ld hl, sp+$48
    ld hl, sp-$68
    ld hl, sp+$30
    ldh a, [rSVBK]
    ldh a, [$f0]
    ldh a, [$90]
    ldh a, [$f0]
    ldh a, [rP1]
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    ld b, $07
    ld [$0c0f], sp
    rrca
    dec bc
    rrca
    ld c, $0f
    ld [$090f], sp
    rrca
    rlca
    rlca
    rrca
    rrca
    inc de
    rra
    ld e, $1e
    ld [hl], b
    ld [hl], b
    ld a, b
    ld e, b
    db $e3
    db $e3
    inc hl
    db $e3
    inc de
    di

jr_021_50ba:
    ld d, [hl]
    or $3c
    db $fc
    db $f4
    db $fc
    jr z, jr_021_50ba

    ld l, b
    ld hl, sp-$10
    or b
    ldh [$e0], a
    ldh a, [$f0]
    ret nc

    ldh a, [$90]
    ldh a, [$60]
    ld h, b
    nop
    nop
    rlca
    rlca
    rrca
    dec c
    inc bc
    inc bc
    ld [bc], a
    inc bc

jr_021_50da:
    inc b
    rlca
    dec b
    rlca
    ld b, $07
    ld c, $0f
    ld de, $2f1f
    ccf
    rra
    inc e
    rlca
    rlca
    dec bc
    rrca
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

    jr nz, jr_021_50da

    db $10
    ldh a, [$30]
    ldh a, [$88]
    ld hl, sp+$10
    ldh a, [rNR23]
    ld hl, sp-$28
    ld a, b
    ldh [rNR41], a
    ldh [$e0], a
    ret nc

    ldh a, [$90]
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc bc
    inc bc
    rlca
    ld b, $03
    inc bc
    inc b
    rlca
    ld [$1a0f], sp
    rra
    add hl, hl
    ccf
    ld h, b
    ld a, a
    sbc b
    rst $38
    ld [hl], h
    ld a, a
    ld l, a
    ld l, e
    rst $08
    call z, $cfcf
    add hl, bc
    rrca
    rlca
    rlca
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    or b
    ldh a, [$28]
    ld hl, sp+$08
    ld hl, sp+$38
    ld hl, sp+$42
    cp $fa
    cp [hl]
    db $ec
    ld l, h
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
    inc bc
    inc bc
    inc b
    rlca
    ld [$0c0f], sp
    rrca
    ld de, $091f
    rrca
    ld a, [bc]
    rrca
    inc e
    rla
    rrca
    dec bc
    rlca
    rlca
    dec bc
    rrca
    rrca
    rrca
    ld b, $06
    nop
    nop
    ldh [$e0], a
    ldh a, [$b0]
    ret nz

    ret nz

    ld b, b
    ret nz

    jr nz, @-$1e

    and b
    ldh [$60], a
    ldh [$d0], a
    ldh a, [rBCPS]
    ld hl, sp+$30
    ldh a, [rNR41]
    ldh [$e0], a
    ldh [$d0], a
    ldh a, [$90]
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc bc
    inc bc
    rlca
    rlca
    inc bc
    ld [bc], a
    rlca
    rlca
    dec bc
    rrca
    jr jr_021_51bd

    ld l, b
    ld a, a
    cp h
    rst $38
    adc a
    rst $38
    ccf
    jr c, jr_021_51b6

    inc c
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    nop
    nop
    add b
    add b
    ret nz

    ret nz

jr_021_51b6:
    add b
    add b
    ret nz

    ret nz

    and b
    ldh [$30], a

jr_021_51bd:
    ldh a, [$28]
    ld hl, sp+$48
    ld hl, sp-$08
    ld hl, sp-$1e
    ld a, $fa
    ld a, [hl]
    xor $ee
    and $e6
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    rlca
    ld b, $01
    ld bc, $0101
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ld [$220f], sp
    ccf
    cpl
    ccf
    rra
    inc e
    rlca
    rlca
    dec bc
    rrca
    rrca
    rrca
    ld b, $06
    add b
    add b
    add b
    add b
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp-$68
    ld hl, sp+$44
    db $fc
    ld [$8cf8], sp
    db $fc
    or h
    db $fc
    ret c

    ld a, b
    ldh [rNR41], a
    ldh [$e0], a
    ret nc

    ldh a, [$90]
    ldh a, [$e0]
    ldh [rSB], a
    ld bc, $0303
    ld bc, $0201
    inc bc

jr_021_5218:
    inc b
    rlca
    dec c
    rrca
    inc d
    rra
    jr nc, jr_021_525f

    ld c, h
    ld a, a
    xor e
    rst $38
    ld [hl], h
    ld a, a
    ld l, a
    ld l, e
    rst $08
    call z, $cfcf
    add hl, bc
    rrca
    rlca
    rlca
    ret nz

    ret nz

    ldh [$60], a
    ret nz

    ret nz

    jr nz, jr_021_5218

    db $10
    ldh a, [$58]
    ld hl, sp-$6c
    db $fc
    inc b
    db $fc
    inc e
    db $fc
    and h
    db $fc
    ld b, d
    cp $fa
    cp [hl]
    db $ec
    ld l, h
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc

jr_021_5258:
    inc b
    rlca
    ld b, $07
    ld [$040f], sp

Jump_021_525f:
jr_021_525f:
    rlca
    dec b
    rlca
    inc c
    rrca
    inc e
    rla
    rrca
    dec bc
    rlca
    rlca
    dec bc
    rrca
    rrca
    rrca
    ld b, $06
    ld [hl], b
    ld [hl], b
    ld a, b
    ld e, b
    ldh [$e0], a
    jr nz, jr_021_5258

    db $10
    ldh a, [$50]
    ldh a, [$b0]
    ldh a, [$e8]
    ld hl, sp+$34
    db $fc
    ld l, b
    ld hl, sp+$30
    ldh a, [rNR41]
    ldh [$e0], a
    ldh [$d0], a
    ldh a, [$90]
    ldh a, [$e0]
    ldh [rSB], a
    ld bc, $0303
    ld bc, $0301
    inc bc
    dec b
    rlca
    inc c
    rrca
    inc [hl]
    ccf
    ld e, [hl]
    ld a, a
    ld b, a
    ld a, a
    ld b, a
    ld a, h
    ccf
    jr c, jr_021_52b6

    inc c
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    ret nz

    ret nz

    ldh [$e0], a
    ret nz

    ld b, b

jr_021_52b6:
    ldh [$e0], a
    ret nc

    ldh a, [rNR23]
    ld hl, sp+$14
    db $fc
    inc h
    db $fc
    db $fc
    db $fc
    call nz, $e27c
    ld a, $fa
    ld a, [hl]
    xor $ee
    and $e6
    ret nz

    ret nz

    nop
    nop
    ld c, $0e
    ld e, $1a
    rlca
    rlca
    inc b
    rlca
    ld [$0a0f], sp
    rrca
    dec c
    rrca
    inc e
    rra
    ld [hl+], a
    ccf
    ld [hl+], a
    ccf
    cpl
    ccf
    rra
    inc e
    rlca
    rlca
    dec bc
    rrca
    rrca
    rrca
    ld b, $06
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    ld h, b
    ldh [rNR10], a
    ldh a, [rNR41]
    ldh [$30], a
    ldh a, [$b4]
    db $fc
    ret c

    ld a, b
    ldh [rNR41], a
    ldh [$e0], a
    ret nc

    ldh a, [$90]
    ldh a, [$e0]
    ldh [rTAC], a
    rlca
    rrca
    dec c
    rlca
    rlca
    ld [$100f], sp
    rra
    dec [hl]
    ccf
    ld d, d
    ld a, a
    ret nz

    rst $38
    jr nc, @+$01

    xor e
    rst $38
    ld [hl], h
    ld a, a
    ld l, a
    ld l, e
    rst $08
    call z, $cfcf
    add hl, bc
    rrca
    rlca
    rlca
    nop
    nop
    add b
    add b
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld h, b
    ldh [$50], a
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ldh a, [$a4]
    db $fc
    ld b, d
    cp $fa
    cp [hl]
    db $ec
    ld l, h
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    ld bc, $0101
    ld bc, $0707
    ld [$100f], sp
    rra
    add hl, de
    rra
    ld [hl+], a
    ccf
    inc de
    rra
    inc d
    rra
    inc c
    rrca
    inc e
    rla
    rrca
    dec bc
    rlca
    rlca
    dec bc
    rrca
    rrca
    rrca
    ld b, $06
    ret nz

    ret nz

    ldh [$60], a
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    and b
    ldh [$d0], a
    ldh a, [rBCPS]
    ld hl, sp+$30
    ldh a, [rNR41]
    ldh [$e0], a
    ldh [$d0], a
    ldh a, [$90]
    ldh a, [$e0]
    ldh [rTAC], a
    rlca
    rrca
    rrca
    rlca
    dec b
    rrca
    rrca
    rla
    rra
    jr nc, jr_021_53db

    ret nc

    rst $38
    ld a, b
    rst $38
    rra
    rst $38
    ld b, a
    ld a, h
    ccf
    jr c, jr_021_53b6

    inc c
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    nop
    nop
    add b
    add b
    nop
    nop

jr_021_53b6:
    add b
    add b
    ld b, b
    ret nz

    ld h, b
    ldh [$50], a
    ldh a, [$90]
    ldh a, [$f0]
    ldh a, [$c4]
    ld a, h
    ld [c], a
    ld a, $fa
    ld a, [hl]
    xor $ee
    and $e6
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    dec b
    inc bc
    inc bc
    ld [bc], a
    inc bc
    nop

jr_021_53db:
    inc bc

jr_021_53dc:
    ld [bc], a
    inc bc
    ld b, $07
    add hl, bc
    rrca
    ld [de], a
    rra
    rrca
    inc c
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
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    ret nz

    jr nz, jr_021_53dc

    sub b
    ldh a, [rNR41]
    ldh [$30], a
    ldh a, [$a8]
    ld hl, sp-$40
    nop
    ret nz

    ret nz

    ldh [$e0], a
    and b
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    nop
    inc bc
    inc b
    rlca
    dec d
    rra
    jr nc, jr_021_545f

    ld c, h
    ld a, a
    ld d, a
    ld a, a
    scf
    scf
    ld h, a
    ld h, h
    ld h, a
    ld h, a
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
    ret nz

    ret nz

    add b
    add b
    ld b, b
    ret nz

    nop
    ret nz

    db $10
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [$88]
    ld hl, sp-$0c
    cp h
    ret c

    ld e, b
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
    add hl, bc
    rrca
    dec b

jr_021_545f:
    rlca
    ld b, $07
    inc b
    rlca
    rlca
    rlca
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

    ldh [$a0], a
    ret nz

    ret nz

    ld b, b
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    ldh [$e0], a
    ld d, b
    ldh a, [$50]
    ldh a, [rP1]
    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    and b
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    rlca
    inc [hl]
    ccf
    ld e, h
    ld a, a
    ld b, a
    ld a, a
    inc hl
    inc a
    rlca
    inc b
    rlca
    rlca
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
    add b
    add b
    ret nz

    ret nz

    add b
    add b
    ret nz

    ret nz

    add b
    ret nz

    db $10
    ldh a, [$50]
    ldh a, [$f0]
    ldh a, [$c8]
    ld a, b
    db $f4
    ld a, h
    call c, $ccdc
    call z, $c0c0
    nop
    nop
    nop
    nop
    ld [c], a
    ld d, h
    push hl
    ld d, h
    db $eb
    ld d, h
    xor $54
    ld sp, hl
    ld d, h
    nop
    ld d, l
    ld [$1c55], sp
    ld d, l
    jr z, jr_021_5537

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
    jr jr_021_54f7

    inc c
    dec b

jr_021_54f7:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_021_5500

    jr @-$01

jr_021_5500:
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
    rlca
    inc b
    add hl, sp
    ld d, l
    ld d, b
    ld e, a

jr_021_5537:
    add hl, sp
    ld d, l
    ld d, b
    ld d, l
    ld d, b
    ld d, [hl]
    ld d, b
    ld d, a
    ld d, b
    ld e, b
    ld d, b
    ld e, c
    ld d, b
    ld e, d
    ld d, b
    ld e, e
    ld d, b
    ld e, h
    ld d, b
    ld e, l
    ld d, b
    ld e, [hl]
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rra
    inc e
    inc de
    rra
    ld [$070f], sp
    rlca
    rlca
    dec b
    rlca

Call_021_555f:
    dec b
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    ld b, $0f
    ld a, [bc]
    rra
    rla
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    ldh a, [$f0]
    ld [$f8f8], sp
    ld hl, sp-$08
    ld [$fcfc], sp
    ld [bc], a
    cp $fc
    db $fc
    ldh a, [$50]
    ldh a, [rNR10]
    ldh a, [$30]
    ld hl, sp-$18
    ld hl, sp+$78
    ret nc

    ldh a, [$28]
    ld hl, sp-$28
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    ld [$3f0f], sp
    scf
    ld c, a
    ld a, b
    ld h, a
    ld a, a
    jr c, jr_021_55db

    ccf
    cpl
    ccf
    ld a, [hl+]
    ld a, a
    ld e, b
    ld a, a
    ld a, h
    cpl
    dec hl
    cpl
    cpl
    ld l, c
    ld l, a
    ld l, a
    ld l, a
    add hl, bc
    rrca
    rlca
    rlca
    ret nz

    ret nz

    jr nz, @-$1e

    ld hl, sp-$28
    db $e4
    inc a
    call z, Call_000_38fc
    ld hl, sp-$08
    add sp, -$08
    xor b
    ldh a, [$30]

jr_021_55c2:
    ld hl, sp+$68
    db $fc
    and h
    db $fc
    db $f4
    jr c, jr_021_55c2

    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    rrca
    rrca
    db $10
    rra
    rra
    rra
    rra
    db $10
    ccf
    ccf
    ld b, b

jr_021_55db:
    ld a, a
    ccf
    ccf
    rrca
    ld a, [bc]
    rrca
    ld [$0407], sp
    rlca
    rlca
    rlca
    dec b
    rrca
    dec bc
    ld e, $1f
    rla
    rra
    ld c, $0e
    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp+$38
    ret z

    ld hl, sp+$10
    ldh a, [$e0]
    ldh [$e0], a
    and b
    ldh [$a0], a
    ret nz

    ld b, b
    ldh [$e0], a
    ldh a, [$50]
    ldh a, [rSVBK]
    and b
    ldh [$50], a
    ldh a, [$b0]
    ldh a, [$e0]
    ldh [rTAC], a
    rlca
    rrca
    rrca
    ccf
    jr nc, jr_021_5666

    ld a, a
    ld [hl], b
    ld a, a
    ccf
    ccf
    ccf
    cpl
    ccf
    dec hl
    ld a, a
    ld e, h
    ld a, a
    ld a, b
    rrca
    ld [$0f0f], sp
    rrca
    rrca
    add hl, bc
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp+$18
    db $e4
    db $fc
    inc e
    db $fc
    ld hl, sp-$08
    ld hl, sp-$18
    ld hl, sp-$58
    ldh a, [rSVBK]
    ld hl, sp+$28
    db $fc
    inc h
    db $fc
    db $fc
    inc a
    db $fc
    db $ec
    db $ec
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rra
    inc e
    inc de
    rra
    ld [$070f], sp
    rlca
    rlca
    dec b
    rlca
    dec b
    inc bc
    ld [bc], a
    rlca
    rlca
    rrca
    ld a, [bc]

jr_021_5666:
    rrca
    ld c, $05
    rlca
    ld a, [bc]
    rrca
    dec c
    rrca
    rlca
    rlca
    ldh a, [$f0]
    ld [$f8f8], sp
    ld hl, sp-$08
    ld [$fcfc], sp
    ld [bc], a
    cp $fc
    db $fc
    ldh a, [$50]
    or $16
    and $26
    db $ec
    db $ec
    ld hl, sp-$48
    ldh a, [$d0]
    ld a, b
    ld hl, sp-$18
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    ld [$3f0f], sp
    scf
    ld c, a
    ld a, b
    ld h, a
    ld a, a
    jr c, jr_021_56db

    ccf
    cpl
    ccf
    ld a, [hl+]
    ld a, a
    ld a, b
    ld a, a
    ld l, h
    ld a, a
    ld l, e
    ld a, a
    ld a, a
    add hl, hl
    cpl

jr_021_56aa:
    rrca
    rrca
    rlca
    rlca

jr_021_56ae:
    ld bc, $c001
    ret nz

    jr nz, @-$1e

    ld hl, sp-$28
    db $e4
    inc a
    call z, Call_000_38fc
    ld hl, sp-$08
    add sp, -$08
    xor b
    db $fc
    inc [hl]
    db $fc
    ld a, h
    ldh [$a0], a
    ldh [$e0], a
    jr nz, jr_021_56aa

    ldh [$e0], a
    jr nz, jr_021_56ae

    ret nz

    ret nz

    rrca
    rrca
    db $10
    rra
    rra
    rra
    rra
    db $10
    ccf
    ccf
    ld b, b

jr_021_56db:
    ld a, a
    ld a, a
    ld a, a
    ld l, a
    ld l, d
    ccf
    jr c, jr_021_5702

    inc e
    rra
    rla
    rrca
    ld c, $0b
    rrca
    inc d
    rra
    dec de
    rra
    ld c, $0e
    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp+$38
    ret z

    ld hl, sp+$10
    ldh a, [$e0]
    ldh [$e0], a
    and b
    ldh [$a0], a
    ret nz

    ld b, b

jr_021_5702:
    ret nz

    ret nz

    ldh [$60], a
    ldh a, [$50]
    ld hl, sp-$18
    ld hl, sp-$08
    ret nc

    ldh a, [$e0]
    ldh [rTAC], a
    rlca
    rrca
    rrca
    ccf
    jr nc, jr_021_5766

    ld a, a
    ld [hl], b
    ld a, a
    ccf
    ccf
    ccf
    cpl
    ccf
    dec hl
    rra
    inc e
    ccf
    jr z, jr_021_57a4

    ld c, b
    ld a, a
    ld a, a
    add hl, sp
    ccf
    rrca
    rrca

jr_021_572c:
    rlca
    rlca

jr_021_572e:
    ld bc, $c001
    ret nz

    ldh [$e0], a
    ld hl, sp+$18
    db $e4
    db $fc
    inc e
    db $fc
    db $fc
    db $fc
    ld hl, sp-$18
    ld hl, sp-$58
    db $fc
    ld [hl], h
    db $fc
    inc a
    ldh [rNR41], a
    ldh [$e0], a
    ldh [$e0], a
    jr nz, jr_021_572c

    jr nz, jr_021_572e

    ret nz

    ret nz

    nop
    nop
    ld bc, $0301
    inc bc
    rrca
    ld c, $09
    rrca
    ld b, $07
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0301
    ld [bc], a

jr_021_5766:
    inc bc
    ld [bc], a
    dec b
    rlca
    dec b
    rlca

jr_021_576c:
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ret nz

    ret nz

    jr c, jr_021_576c

    add h
    db $fc
    db $e4
    ld a, h
    db $fc
    sbc h
    ld a, h
    db $e4
    sbc [hl]
    cp $e1
    rst $38
    cp $be
    ld hl, sp+$08
    ldh a, [$90]
    ldh [$e0], a
    ldh [$a0], a
    ldh a, [$d0]
    ld a, e
    ei
    rst $08
    rst $08
    rlca
    rlca
    ld [$380f], sp
    ccf
    ld e, [hl]
    ld [hl], a
    ld c, a
    ld a, c
    daa
    ld a, $11
    rra
    inc e
    rra
    rra
    rla
    rrca
    inc c

jr_021_57a4:
    rrca
    ld a, [bc]
    rrca
    dec c
    dec bc
    ld c, $0f
    rrca
    inc de
    rra

jr_021_57ae:
    rra
    rra
    ret nz

    ret nz

    jr nz, @-$1e

    jr jr_021_57ae

    inc [hl]
    db $fc
    db $f4
    call c, Call_000_3ce4
    ret z

    ld hl, sp+$18
    ld hl, sp-$08
    add sp, -$10
    jr nc, @-$0e

    ld d, b
    ldh a, [$b0]
    ret nc

    ldh a, [$f0]
    ldh a, [rOBP0]
    ld a, b
    ld a, b
    ld a, b
    inc bc
    inc bc
    inc e
    rra
    ld hl, $273f
    ld a, $3f
    add hl, sp
    ld a, $27
    ld a, c
    ld a, a
    add a
    rst $38
    ld a, a
    ld a, l
    rra
    db $10
    rrca
    add hl, bc
    rlca
    rlca
    rlca
    dec b
    dec bc
    rrca
    sbc $df
    di
    di
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh a, [rSVBK]
    sub b
    ldh a, [$60]
    ldh [$c0], a
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    and b
    ldh [$a0], a
    ldh [rLCDC], a
    ret nz

    ret nz

    ret nz

    rlca
    rlca
    rrca
    ld [$0f0f], sp
    jr @+$21

    inc hl
    ccf
    ld c, a
    ld a, a
    ld e, a
    ld [hl], a
    cpl
    ld a, [hl-]
    rra
    rra
    rlca
    inc b
    rrca
    ld a, [bc]
    rrca
    dec bc
    inc b
    rlca
    rlca
    rlca
    add hl, bc
    rrca
    rrca
    rrca
    ldh [$e0], a
    ldh a, [rNR10]
    ldh a, [$f0]
    ld [$e4f8], sp
    db $fc
    db $f4
    db $fc
    ld hl, sp-$08
    ldh a, [$d0]
    ldh a, [$30]
    ldh a, [$30]
    ld hl, sp+$28
    ld hl, sp-$08
    sub b
    ldh a, [$f0]
    ldh a, [$c8]
    ld hl, sp-$08
    ld hl, sp+$00
    nop
    ld bc, $0301
    inc bc
    rrca
    ld c, $09
    rrca
    ld b, $07
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0f01
    ld c, $0f
    rrca
    rlca
    rlca
    dec b
    rlca

jr_021_586c:
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ret nz

    ret nz

    jr c, jr_021_586c

    add h
    db $fc
    db $e4
    ld a, h
    db $fc
    sbc h
    ld a, h
    db $e4
    sbc [hl]
    cp $e1
    rst $38
    cp $be
    ld hl, sp+$08
    ldh a, [$90]
    ldh a, [$f0]
    ldh a, [$50]
    ret nc

    ldh a, [$60]
    ldh [$c0], a
    ret nz

    rlca
    rlca
    ld [$380f], sp
    ccf
    ld e, [hl]
    ld [hl], a
    ld c, a
    ld a, c
    daa
    ld a, $11
    rra
    inc e
    rra
    rra
    rla
    rrca
    inc c
    rst $08

jr_021_58a5:
    jp z, $e7e7

    dec e
    rra
    rrca
    rrca
    ld [de], a
    ld e, $1e
    ld e, $c0
    ret nz

    jr nz, @-$1e

    jr @-$06

    inc [hl]
    db $fc
    db $f4
    call c, Call_000_3ce4
    ret z

    ld hl, sp+$18
    ld hl, sp-$08
    add sp, -$10
    jr nc, jr_021_58a5

    ld h, b
    ldh [$a0], a
    ret nc

    ld [hl], b
    ldh a, [$f0]
    ld c, b
    ld a, b
    ld a, b
    ld a, b
    inc bc
    inc bc
    inc e
    rra
    ld hl, $273f
    ld a, $3f
    add hl, sp
    ld a, $27
    ld a, c
    ld a, a
    add a
    rst $38
    ld a, a
    ld a, l
    rra
    db $10
    rrca
    add hl, bc
    rrca
    ld c, $0f
    dec bc

jr_021_58ea:
    rla
    rra
    ld c, $0f
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh a, [rSVBK]
    sub b
    ldh a, [$60]
    ldh [$c0], a
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh a, [$f0]
    ldh a, [rSVBK]
    ret nz

    ret nz

    jr nz, jr_021_58ea

    and b
    ldh [rLCDC], a
    ret nz

    ret nz

    ret nz

    rlca
    rlca
    rrca
    ld [$0f0f], sp
    jr @+$21

    inc hl
    ccf
    ld c, a
    ld a, a
    ld e, a
    ld [hl], a
    cpl
    ld a, [hl-]
    rra
    ld e, $07
    inc b
    rlca
    inc b
    rlca
    rlca
    inc b
    rlca
    rlca
    rlca
    add hl, bc
    rrca
    rrca
    rrca
    ldh [$e0], a
    ldh a, [rNR10]
    ldh a, [$f0]
    ld [$e4f8], sp
    db $fc
    db $f4
    db $fc
    ld hl, sp-$08
    ldh a, [$d0]
    ldh a, [rSVBK]
    ei
    dec hl
    rst $38
    scf
    cp $fe
    sbc b
    ld hl, sp-$10
    ldh a, [rOBP0]
    ld a, b
    ld a, b
    ld a, b
    nop
    nop
    ld bc, $0301
    inc bc
    ld l, a
    ld l, [hl]
    ld l, c
    ld l, a
    ld h, [hl]
    ld h, a
    inc sp
    inc sp
    rra
    ld e, $0f
    ld a, [bc]
    rrca
    rrca
    ld c, $0b
    rlca
    rlca
    inc b
    rlca
    dec b
    rlca

jr_021_596c:
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ret nz

    ret nz

    jr c, jr_021_596c

    add h
    db $fc
    db $e4
    ld a, h
    db $fc
    sbc h
    ld a, h
    db $e4
    sbc [hl]
    cp $e1
    rst $38
    cp $be
    ld hl, sp+$08
    ldh a, [$90]
    ldh a, [rSVBK]
    ldh a, [$b0]
    ldh [$e0], a
    ld b, b
    ret nz

    ret nz

    ret nz

    rlca
    rlca
    ld [$380f], sp
    ccf
    sbc $f7
    rst $08
    ld sp, hl
    rst $20
    cp $51
    ld e, a
    ld a, h
    ld a, a
    ccf
    scf
    ccf
    inc a
    ccf

jr_021_59a5:
    ld l, $17
    rra
    rrca
    dec c
    rrca
    rrca
    ld [de], a
    ld e, $1e
    ld e, $c0
    ret nz

    jr nz, @-$1e

    jr @-$06

    inc [hl]
    db $fc
    db $f4
    call c, Call_000_3ce4
    ret z

    ld hl, sp+$18
    ld hl, sp-$08
    add sp, -$10
    jr nc, jr_021_59a5

    ld h, b
    ldh [$a0], a
    ret nc

    ld [hl], b
    ldh a, [$f0]
    ld c, b
    ld a, b
    ld a, b
    ld a, b
    inc bc
    inc bc
    inc e
    rra
    ld hl, $273f
    ld a, $3f
    add hl, sp
    ld a, $27
    ld a, c
    ld a, a
    add a
    rst $38
    ld a, a
    ld a, l
    rra
    db $10
    rrca
    add hl, bc
    rlca
    ld b, $07
    rlca

jr_021_59ea:
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    or $76
    sub [hl]
    or $66
    and $cc
    call z, Call_021_78f8
    ldh a, [$50]
    ldh [$e0], a
    ret nz

    ld b, b
    ret nz

    ret nz

    jr nz, jr_021_59ea

    and b
    ldh [rLCDC], a
    ret nz

    ret nz

    ret nz

    rlca
    rlca
    rrca
    ld [$0f0f], sp
    jr jr_021_5a37

    inc hl
    ccf
    ld c, a
    ld a, a
    ld e, a
    ld [hl], a
    cpl
    ld a, [hl-]
    rra
    rra
    rlca
    inc b
    rlca
    inc b
    rlca
    rlca
    dec b
    rlca
    rlca
    rlca
    add hl, bc
    rrca
    rrca
    rrca
    ldh [$e0], a
    ldh a, [rNR10]
    ldh a, [$f0]
    dec bc

jr_021_5a37:
    ei
    rst $20
    rst $38

jr_021_5a3a:
    push af
    db $fd
    ei
    ei
    cp $de
    cp $fa
    db $fc
    ld d, h
    db $fc
    inc l
    ld hl, sp-$08
    jr nc, jr_021_5a3a

    ldh a, [$f0]
    ld c, b
    ld a, b
    ld a, b
    ld a, b
    nop
    nop
    ld bc, $0301
    inc bc
    rst $18
    rst $18
    ret nc

    rst $18
    set 1, a
    ld h, a
    ld h, l
    ccf
    dec a
    rra
    rla
    rrca
    ld a, [bc]
    rlca
    inc b
    rlca
    rlca
    inc b
    rlca
    dec b
    rlca

jr_021_5a6c:
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ldh [$e0], a
    jr jr_021_5a6c

    db $e4
    db $fc
    db $f4
    sbc h
    ld a, h
    db $fc
    adc [hl]
    cp $f1
    rst $38
    cp $fe
    ld hl, sp-$18
    ldh a, [$50]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$e0], a
    and b
    ldh [$d0], a
    ldh a, [$f0]
    ldh a, [$03]
    inc bc
    rlca
    rlca
    rra
    inc e
    ld [hl], e
    ld a, a
    ld l, b
    ld l, a
    ld [hl], a
    ld [hl], a
    rra
    inc e
    rrca
    ld c, $07
    dec b
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld b, $07
    dec bc
    rrca
    dec c
    rrca
    rlca
    rlca
    ldh a, [$f0]
    ld [$f8f8], sp
    ld hl, sp-$08
    ld [$fcfc], sp
    ld [bc], a
    cp $fc
    db $fc
    ld hl, sp-$58
    ld hl, sp+$08
    ld hl, sp-$68
    ld hl, sp-$18
    ldh a, [$50]
    ldh a, [$f0]
    ldh a, [$f0]
    ld c, b
    ld a, b
    ld a, b
    ld a, b
    rlca
    rlca
    jr jr_021_5af3

    inc hl
    ccf
    cpl
    inc a
    ccf
    inc sp
    ccf
    cpl
    ccf
    ld a, [hl-]
    ld e, a
    ld a, b
    ld a, a
    ld [hl], b
    rrca
    ld [$0707], sp
    rlca
    inc b
    rlca
    rlca
    dec bc
    rrca
    ld a, [bc]
    rrca
    rlca
    rlca
    nop
    nop
    add b

jr_021_5af3:
    add b
    ldh [$e0], a
    sub e
    di
    db $d3
    di
    db $e3
    db $e3
    or $b6
    db $fc
    cp h
    add sp, $78
    ld hl, sp-$28
    ld hl, sp-$58
    ldh a, [$f0]
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    ret nz

    ret nz

    rrca
    rrca
    rra
    inc e
    rra
    inc de
    inc e
    rra
    inc sp
    ccf
    ld c, a
    ld a, l
    ld a, a
    ld [hl], l
    rrca
    ld [$080f], sp
    rlca
    dec b
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    rlca
    rlca
    add hl, bc
    rrca
    rrca
    rrca
    ret nz

    ret nz

    ldh [rNR41], a
    db $fc
    db $fc
    rlca
    rst $38
    db $db
    ei
    db $e3
    ld h, e
    and $66
    db $fc
    db $fc
    add sp, -$48
    ldh a, [rSVBK]
    ldh [$a0], a
    ldh [$e0], a
    ld [hl], b
    ldh a, [$e8]
    ld hl, sp+$58
    ld a, b
    ld [hl], b
    ld [hl], b
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rra
    inc e
    inc de
    rra
    ld [$070f], sp
    rlca
    rlca
    dec b
    rlca
    dec b
    inc bc
    ld [bc], a
    rlca
    ld b, $0f
    ld a, [bc]
    rra
    rla
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    ldh a, [$f0]
    ld [$f8f8], sp
    ld hl, sp-$08
    ld [$fcfc], sp
    ld [bc], a
    cp $fc
    db $fc
    ldh a, [$50]
    ldh a, [rNR10]
    ld hl, sp-$18
    ld hl, sp+$78
    ret nc

    ldh a, [$28]
    ld hl, sp-$28
    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    rlca
    rlca
    ld [$3f0f], sp
    scf
    ld c, a
    ld a, b
    ld h, a
    ld a, a
    jr c, jr_021_5bdd

    ccf
    cpl
    ccf
    ld a, [hl+]
    ld a, a
    ld e, b
    cpl
    dec hl
    cpl
    cpl
    ld l, c
    ld l, a
    ld l, a
    ld l, a
    add hl, bc
    rrca
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    ld hl, sp-$28
    db $e4
    inc a
    call z, Call_000_38fc
    ld hl, sp-$08
    add sp, -$08
    xor b

jr_021_5bc2:
    ldh a, [$30]
    db $fc
    and h
    db $fc
    db $f4
    jr c, jr_021_5bc2

    ldh [$e0], a
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
    rra
    rra
    rra
    db $10
    ccf
    ccf
    ld b, b

jr_021_5bdd:
    ld a, a
    ccf
    ccf
    rrca
    ld a, [bc]
    rrca
    ld [$0707], sp
    rlca
    dec b
    rrca
    dec bc
    ld e, $1f
    rla
    rra
    ld c, $0e
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp+$38
    ret z

    ld hl, sp+$10
    ldh a, [$e0]
    ldh [$e0], a
    and b
    ldh [$a0], a
    ret nz

    ld b, b
    ldh a, [$50]
    ldh a, [rSVBK]
    and b
    ldh [$50], a
    ldh a, [$b0]
    ldh a, [$e0]
    ldh [rP1], a
    nop
    rlca
    rlca
    rrca
    rrca
    ccf
    jr nc, jr_021_5c68

    ld a, a
    ld [hl], b
    ld a, a
    ccf
    ccf
    ccf
    cpl
    ccf
    dec hl
    ld a, a
    ld e, h
    rrca
    ld [$0f0f], sp
    rrca
    rrca
    add hl, bc
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp+$18
    db $e4
    db $fc
    inc e
    db $fc
    ld hl, sp-$08
    ld hl, sp-$18
    ld hl, sp-$58
    ldh a, [rSVBK]
    db $fc
    inc h
    db $fc
    db $fc
    inc a
    db $fc
    db $ec
    db $ec
    ret nz

    ret nz

    nop
    nop
    ld bc, $0301
    inc bc
    rrca
    ld c, $09
    rrca
    inc b
    rlca
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0301
    inc bc
    rlca
    ld b, $0f
    ld a, [bc]

jr_021_5c68:
    rra
    rla
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    ld hl, sp-$08
    add h
    db $fc
    db $fc
    ld a, h
    db $fc
    add h
    ld a, [hl]
    cp $81
    rst $38
    cp $fe
    ld hl, sp-$58
    ld hl, sp+$08
    ldh a, [$30]
    ld hl, sp-$18
    ld hl, sp+$78
    ret nc

    ldh a, [$28]
    ld hl, sp-$28
    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    inc b
    rlca
    rra
    dec de
    daa
    inc a
    inc sp
    ccf
    inc e
    rra
    rra
    rla
    rra
    dec d
    ccf
    inc l
    ld a, a
    ld a, h
    cpl
    dec hl
    cpl
    cpl
    ld l, c
    ld l, a
    ld l, a
    ld l, a
    add hl, bc
    rrca
    rlca
    rlca
    ldh [$e0], a
    db $10
    ldh a, [$fc]
    db $ec
    ld a, [c]
    ld e, $e6
    cp $1c
    db $fc
    db $fc
    db $f4
    db $fc
    ld d, h
    ld hl, sp+$18

jr_021_5cc2:
    ld hl, sp+$68
    db $fc
    and h
    db $fc
    db $f4
    jr c, jr_021_5cc2

    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    ld [$0f0f], sp
    rrca
    rrca
    ld [$1f1f], sp
    jr nz, jr_021_5d1b

    rra
    rra
    rlca
    dec b
    rlca
    inc b
    rlca
    inc b
    rlca
    rlca
    rlca
    dec b
    rrca
    dec bc
    ld e, $1f
    rla
    rra
    ld c, $0e
    ldh [$e0], a
    ld [hl], b
    ldh a, [$fc]
    sbc h
    db $e4
    ld a, h
    adc b
    ld hl, sp+$70
    ldh a, [$f0]
    ret nc

    ldh a, [$50]
    ldh [rNR41], a
    ldh [$e0], a
    ldh a, [$50]
    ldh a, [rSVBK]
    and b
    ldh [$50], a
    ldh a, [$b0]
    ldh a, [$e0]
    ldh [$03], a
    inc bc
    rlca
    rlca
    rra
    jr jr_021_5d3e

    ccf
    jr c, jr_021_5d59

    rra

jr_021_5d1b:
    rra
    rra
    rla
    rra
    dec d
    ccf
    ld l, $7f
    ld a, b
    rrca
    ld [$0f0f], sp
    rrca
    rrca
    add hl, bc
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    ldh [$e0], a
    ldh a, [$f0]
    db $fc
    inc c
    ld a, [c]
    cp $0e
    cp $fc
    db $fc
    db $fc
    db $f4

jr_021_5d3e:
    db $fc
    call nc, Call_000_38f8
    ld hl, sp+$28
    db $fc
    inc h
    db $fc
    db $fc
    inc a
    db $fc
    db $ec
    db $ec
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    ld c, $0f
    ccf
    add hl, sp
    daa
    ld a, $11

jr_021_5d59:
    rra
    ld c, $0f
    rrca
    dec bc
    rrca
    ld a, [bc]
    rlca
    inc b
    inc bc
    inc bc
    rlca
    ld b, $0f
    ld a, [bc]
    rra
    rla
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    ldh [$e0], a
    db $10
    ldh a, [$f0]
    ldh a, [$f0]
    db $10
    ld hl, sp-$08
    inc b
    db $fc
    ld hl, sp-$08
    ldh [$a0], a
    ldh [rNR41], a
    ldh a, [$30]
    ld hl, sp-$18
    ld hl, sp+$78
    ret nc

    ldh a, [$28]
    ld hl, sp-$28
    ld hl, sp+$70
    ld [hl], b
    rrca
    rrca
    db $10
    rra
    ld a, a
    ld l, a
    sbc a
    ldh a, [$cf]
    rst $38
    ld [hl], b
    ld a, a
    ld a, a
    ld e, a
    ld a, a
    ld d, l
    rst $38
    or b
    ld a, a
    ld a, h
    cpl
    dec hl
    cpl
    cpl
    ld l, c
    ld l, a
    ld l, a
    ld l, a
    add hl, bc
    rrca
    rlca
    rlca
    add b
    add b
    ld b, b
    ret nz

    ldh a, [$b0]
    ret z

    ld a, b
    sbc b
    ld hl, sp+$70
    ldh a, [$f0]
    ret nc

    ldh a, [$50]
    ldh [$60], a

jr_021_5dc2:
    ld hl, sp+$68
    db $fc
    and h
    db $fc
    db $f4
    jr c, jr_021_5dc2

    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    rra
    rra
    ld hl, $3f3f
    ld a, $3f
    ld hl, $7f7e
    add c
    rst $38
    ld a, a
    ld a, a
    rra
    dec d
    rra
    db $10
    rlca
    inc b
    rlca
    rlca
    rlca
    dec b
    rrca
    dec bc
    ld e, $1f
    rla
    rra
    ld c, $0e
    add b
    add b
    ret nz

    ret nz

    ldh a, [rSVBK]
    sub b
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    ldh [$e0], a
    ldh a, [$50]
    ldh a, [rSVBK]
    and b
    ldh [$50], a
    ldh a, [$b0]
    ldh a, [$e0]
    ldh [rIF], a
    rrca
    rra
    rra
    ld a, a
    ld h, b
    sbc a
    rst $38
    ldh [rIE], a
    ld a, a
    ld a, a
    ld a, a
    ld e, a
    ld a, a
    ld d, a
    rst $38
    cp b
    ld a, a
    ld a, b
    rrca
    ld [$0f0f], sp
    rrca
    rrca
    add hl, bc
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    add b
    add b
    ret nz

    ret nz

    ldh a, [$30]
    ret z

    ld hl, sp+$38
    ld hl, sp-$10
    ldh a, [$f0]
    ret nc

    ldh a, [$50]
    ldh [$e0], a
    ld hl, sp+$28
    db $fc
    inc h
    db $fc
    db $fc
    inc a
    db $fc
    db $ec
    db $ec
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
    rrca
    inc c
    dec bc
    rrca
    inc b
    rlca
    inc bc
    ld bc, $0103
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    ld b, $0f
    dec bc
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$f0]
    ldh a, [$f0]
    db $10
    ld hl, sp-$08
    ld hl, sp-$08
    ldh [$60], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [rSVBK]
    ldh [$e0], a
    db $10
    ldh a, [$f0]
    ldh a, [$60]
    ld h, b
    nop
    nop
    nop
    nop
    inc bc

jr_021_5e93:
    inc bc
    inc b
    rlca
    rra
    dec de
    daa
    inc a
    inc sp
    ccf
    rra
    rla
    rra
    ld d, $3f
    inc l
    ccf
    inc a
    rla
    rla
    dec [hl]
    scf
    scf
    scf
    dec b
    rlca
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

    ldh a, [$f0]

jr_021_5eb8:
    ret z

    jr c, jr_021_5e93

    ld hl, sp-$10
    ret nc

    ldh a, [$90]
    ldh [rNR41], a
    ldh a, [$50]
    ld hl, sp-$18
    jr nc, jr_021_5eb8

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
    rlca
    rlca
    ld [$0f0f], sp
    rrca
    rrca
    ld [$1f1f], sp
    rra
    rra
    rlca
    ld b, $07
    inc b
    inc bc
    nop
    inc bc
    ld bc, $0707
    ld c, $0f
    dec bc
    rrca
    ld b, $06
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ldh a, [$30]
    ret nc

    ldh a, [rNR41]
    ldh [$c0], a
    add b
    ret nz

    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ldh [$60], a
    add b
    ret nz

    ld h, b
    ldh [$a0], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rra
    jr jr_021_5f40

    ccf
    jr c, jr_021_5f5b

    rra
    rla
    rra
    rla
    ccf
    inc l
    ccf
    inc a
    rlca
    rlca
    rlca
    rlca
    dec b
    rlca
    dec b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ldh a, [$30]
    ret z

    ld hl, sp+$38
    ld hl, sp-$10
    ret nc

    ldh a, [$90]

jr_021_5f40:
    ldh [$60], a
    ldh a, [rNR10]
    ld hl, sp-$08
    jr c, jr_021_5f40

    ret c

    ret c

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld h, d
    ld e, a
    ld h, l
    ld e, a
    ld l, e
    ld e, a
    ld l, [hl]
    ld e, a
    ld a, c
    ld e, a
    add b

jr_021_5f5b:
    ld e, a
    adc b
    ld e, a
    sbc h
    ld e, a
    xor b
    ld e, a
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
    jr jr_021_5f77

    inc c
    dec b

jr_021_5f77:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_021_5f80

    jr @-$01

jr_021_5f80:
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

    db $06, $04, $b9, $5f, $d0, $69, $b9, $5f, $d0, $5f, $d0, $60, $d0, $61, $d0, $62

    ret nc

    ld h, e

    db $d0, $64

    ret nc

    ld h, l
    ret nc

    ld h, [hl]
    ret nc

    ld h, a
    ret nc

    ld l, b
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$090f], sp
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    add hl, de
    rra
    jr jr_021_5ff0

    ld c, $05
    rlca
    ld b, $07
    rrca
    dec bc
    rra
    ld d, $1f
    rra
    dec c
    rrca
    ld b, $06

jr_021_5ff0:
    ret nz

    ret nz

    ldh [$a0], a
    ld [hl], b
    ldh a, [$c8]
    ld hl, sp-$10
    or b
    ld hl, sp+$38
    db $fc
    ld h, h
    ld hl, sp+$38
    ldh a, [rNR10]
    ldh a, [$b0]
    ld a, b
    add sp, -$10
    ldh a, [$e0]
    ld h, b
    ldh a, [$30]
    ret nc

    ld [hl], b
    ldh [$e0], a
    rlca
    rlca
    dec bc
    ld c, $14
    rra
    inc de
    rra
    rra
    ld e, $3f
    ld a, [hl-]
    ld a, a
    ld d, h
    ld a, a
    ld b, a
    ccf
    inc sp
    cpl
    inc a
    ld a, e
    ld e, a
    ld a, [hl]
    ld a, a
    rst $08
    ret


    rst $18
    sub $09
    rrca
    rlca
    rlca
    ret nz

    ret nz

    and b
    ldh [$50], a
    ldh a, [$90]
    ldh a, [$f0]
    ldh a, [$f8]
    cp b
    db $fc
    ld d, h
    db $fc
    call nz, $98f8
    ldh a, [rSVBK]
    xor b
    ld hl, sp+$7c
    db $f4
    db $fc
    and h
    ld hl, sp-$08
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    rlca
    dec b

jr_021_6054:
    ld c, $0f
    inc de
    rra
    rrca
    dec c
    rra

jr_021_605b:
    inc e
    ccf
    ld h, $1f
    inc e
    rrca
    ld [$0507], sp
    ld [bc], a
    inc bc
    rlca
    dec b
    rrca
    ld a, [bc]
    rrca
    rrca
    dec c
    rrca
    rlca
    rlca
    ret nz

    ret nz

    jr nz, jr_021_6054

    db $10
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    sbc b
    ld hl, sp+$18
    ldh a, [rSVBK]
    or b
    ldh a, [$38]
    add sp, -$08
    ld hl, sp-$20
    jr nz, jr_021_605b

    ld [hl], b
    ret nc

    ldh a, [$60]
    ld h, b
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    jr jr_021_60b9

    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ccf
    ccf
    ld a, h
    ld e, a
    ld l, e
    ld a, a
    ld e, $1f
    rrca
    add hl, bc
    rra
    ld d, $09
    rrca
    rlca
    rlca
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [$30]

jr_021_60b9:
    ldh a, [$f8]
    ld hl, sp-$04
    db $f4
    db $fc
    db $e4
    ld hl, sp-$08
    ld [hl], b
    ldh a, [$a8]
    ld hl, sp+$7c
    db $f4
    cp $be
    and $e6
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$090f], sp
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    add hl, de
    rra
    jr jr_021_60f0

    ld c, $0d
    rrca
    inc e
    rla
    rra
    rra
    rlca
    inc b
    dec bc
    ld c, $0b
    rrca
    ld b, $06

jr_021_60f0:
    ret nz

    ret nz

    ldh [$a0], a
    ld [hl], b
    ldh a, [$c8]
    ld hl, sp-$10
    or b
    ld hl, sp+$38
    db $fc
    ld h, h
    ld hl, sp+$38
    ldh a, [rNR10]
    db $ec
    xor h
    ld c, h
    call z, $a8e8
    ld hl, sp+$58
    ldh a, [$f0]
    or b
    ldh a, [$e0]
    ldh [rTAC], a
    rlca
    dec bc
    ld c, $14
    rra
    inc de
    rra
    rra
    ld e, $3f
    ld a, [hl-]
    ld a, a
    ld d, h
    ld a, a
    ld b, a
    ccf
    inc sp
    rst $18
    call c, $ffeb
    ld a, h
    ld e, a
    ld a, a
    ld c, e
    ccf
    ld a, $07
    rlca

jr_021_612e:
    ld bc, $c001
    ret nz

    and b
    ldh [$50], a
    ldh a, [$90]
    ldh a, [$f0]
    ldh a, [$f8]
    cp b
    db $fc
    ld d, h
    db $fc
    call nz, $98f8
    add sp, $78
    cp h
    db $f4
    db $fc
    db $fc
    ldh [rNR41], a
    ldh a, [$d0]
    jr nz, jr_021_612e

    ret nz

    ret nz

    inc bc
    inc bc
    rlca
    dec b

jr_021_6154:
    ld c, $0f
    inc de
    rra
    rrca
    dec c
    rra
    inc e
    ccf
    ld h, $7f
    ld a, h
    ld l, a
    ld l, b
    ccf
    dec a
    ld e, $17
    rrca
    rrca
    rlca
    ld b, $0f
    inc c
    dec bc
    ld c, $07
    rlca
    ret nz

    ret nz

    jr nz, jr_021_6154

    db $10
    ldh a, [$90]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    sbc b
    ld hl, sp+$18
    ldh a, [rSVBK]
    and b
    ldh [$60], a
    ldh [$f0], a
    ret nc

    ld hl, sp+$68
    ld hl, sp-$08
    ldh a, [$f0]
    ld h, b
    ld h, b
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    jr jr_021_61b9

    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ccf
    ccf
    inc e
    rra
    dec hl
    ccf
    ld a, h
    ld e, a
    ld a, a
    ld a, e
    rrca
    ld c, $07
    rlca

jr_021_61ae:
    ld bc, $c001
    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [$30]

jr_021_61b9:
    ldh a, [$f8]
    ld hl, sp-$02
    or $fe
    and $fc
    db $fc
    ld a, h
    db $f4
    xor h
    db $fc
    ldh a, [$f0]
    ldh [rNR41], a
    ldh a, [$d0]
    jr nz, jr_021_61ae

    ret nz

    ret nz

    inc bc
    inc bc
    inc b
    rlca

jr_021_61d4:
    ld [$0e0f], sp
    rrca
    rrca
    rrca
    rra
    rra
    rra
    add hl, de
    rrca
    ld [$0607], sp
    dec b
    rlca
    ld [$1d0f], sp
    rla
    rra
    dec de
    rra
    rla
    add hl, bc
    rrca
    rrca
    rrca
    ret nz

    ret nz

    jr nz, jr_021_61d4

    ld [hl], b
    ret nc

    ld [hl], b
    ldh a, [$c8]
    ld hl, sp-$10
    or b
    ld hl, sp+$38
    db $fc
    inc h
    ld hl, sp+$78
    ldh a, [$30]
    ldh [$e0], a
    ldh [$a0], a
    ldh a, [$d0]
    jr nc, jr_021_623c

    dec de
    dec de
    rrca
    rrca
    rlca
    rlca
    ld [$110f], sp
    rra
    ld d, $1f
    add hl, de
    rra
    rra
    rra
    ccf
    add hl, hl
    ccf
    ld [hl+], a
    rra
    dec de
    rra
    rra
    ld d, $1f
    rrca
    dec c

jr_021_6228:
    rrca
    dec bc
    rrca
    dec c
    inc de
    rra
    rra
    rra
    ret nz

    ret nz

    and b
    ldh [$d0], a
    ld [hl], b
    jr nc, jr_021_6228

    ret nc

    ldh a, [$f8]
    ld a, b

jr_021_623c:
    ld hl, sp+$58
    ld hl, sp+$28
    ldh a, [$f0]
    ldh a, [$f0]
    ret nc

    ldh a, [$60]
    ldh [$e0], a
    and b
    ldh [$60], a
    sub b
    ldh a, [$f0]
    ldh a, [$03]
    inc bc
    inc b
    rlca

jr_021_6254:
    ld c, $0b
    ld c, $0f
    inc de
    rra
    rrca
    dec c
    rra
    inc e
    ccf
    inc h
    rra
    ld e, $0f
    inc c
    rlca
    rlca
    rlca
    dec b
    rrca
    dec bc
    dec c
    dec c
    jp c, $f3db

    di
    ret nz

    ret nz

    jr nz, jr_021_6254

    db $10
    ldh a, [rSVBK]
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$08
    sbc b
    ldh a, [rNR10]
    ldh [$60], a
    and b
    ldh [rNR10], a
    ldh a, [$b8]
    add sp, -$08
    ret z

    ld hl, sp-$18
    sub b
    ldh a, [$f0]
    ldh a, [rTAC]
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    rra
    rra
    rra
    rra
    ccf
    cpl
    ccf
    daa
    rra
    rra
    inc c
    rrca
    inc d
    rra
    rra
    rra
    rrca
    add hl, bc
    rrca

jr_021_62ab:
    dec bc
    inc de
    rra
    rra
    rra
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$08
    add sp, -$10
    ldh a, [rSVBK]
    ldh a, [$50]
    ldh a, [$e0]
    ldh [$e0], a
    jr nz, jr_021_62ab

    and b
    sub b
    ldh a, [$f0]
    ldh a, [$03]
    inc bc
    inc b
    rlca

jr_021_62d4:
    ld [$0e0f], sp
    rrca
    rrca
    rrca
    rra
    rra
    rra
    add hl, de
    rrca
    ld [$0607], sp
    rlca
    rlca
    ld c, $0f
    rra
    rla
    rra
    dec de
    rra
    rla
    add hl, bc
    rrca
    rrca
    rrca
    ret nz

    ret nz

    jr nz, jr_021_62d4

    ld [hl], b
    ret nc

    ld [hl], b
    ldh a, [$c8]
    ld hl, sp-$10
    or b
    ld hl, sp+$38
    db $fc
    inc h
    ld hl, sp+$78
    ldh a, [$30]
    ldh [$e0], a
    ld h, b
    and b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$110f], sp
    rra
    ld d, $1f
    add hl, de
    rra
    rra
    rra
    ccf
    add hl, hl
    ccf
    ld [hl+], a
    rra
    dec de
    rst $18
    rst $18
    di
    rst $38
    ld a, l
    ld [hl], a

jr_021_6328:
    rra
    rra
    rrca
    dec c
    ld [de], a
    ld e, $1e
    ld e, $c0
    ret nz

    and b
    ldh [$d0], a
    ld [hl], b
    jr nc, jr_021_6328

    ret nc

    ldh a, [$f8]
    ld a, b
    ld hl, sp+$58
    ld hl, sp+$28
    ldh a, [$f0]
    ldh [$e0], a
    and b
    ldh [$e0], a
    ld h, b
    ldh [$a0], a
    ldh [$60], a
    sub b
    ldh a, [$f0]
    ldh a, [$03]
    inc bc
    inc b
    rlca

jr_021_6354:
    ld c, $0b
    ld c, $0f
    inc de
    rra
    rrca
    dec c
    rra
    inc e
    ccf
    inc h
    rra
    ld e, $0f
    dec c
    ld a, [bc]
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    ret nz

    ret nz

    jr nz, jr_021_6354

    db $10
    ldh a, [rSVBK]
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$08
    sbc b
    ldh a, [rNR10]
    ldh [$60], a
    or b
    ldh a, [rNR10]
    ldh a, [$38]
    add sp, -$08
    ret z

    ld hl, sp-$18
    sub b
    ldh a, [$f0]
    ldh a, [rTAC]
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    rra
    rra
    rra
    rra
    ccf
    cpl
    ccf
    daa
    rra
    rra
    inc c
    rrca
    ld [$0f0f], sp
    rrca
    rrca
    add hl, bc
    rrca

jr_021_63ab:
    dec bc
    ld [de], a
    ld e, $1e
    ld e, $c0
    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$08
    add sp, -$10
    ldh a, [rPCM12]
    or $be
    xor $fe
    cp $f0
    jr nc, jr_021_63ab

    and b
    sub b
    ldh a, [$f0]
    ldh a, [$03]
    inc bc
    inc b
    rlca

jr_021_63d4:
    ret z

    rst $08
    adc $cf
    rst $08
    rst $08
    ld e, a
    ld e, a
    ccf
    add hl, sp
    ccf
    jr c, jr_021_6420

    ld l, $1b
    rra
    rrca
    ld c, $1d
    rla
    rra
    dec de
    rra
    rla
    add hl, bc
    rrca
    rrca
    rrca
    ret nz

    ret nz

    jr nz, jr_021_63d4

    ld [hl], b
    ret nc

    ld [hl], b
    ldh a, [$c8]
    ld hl, sp-$10
    or b
    ld hl, sp+$38
    db $fc
    inc h
    ld hl, sp+$78
    ldh a, [$30]
    ldh [$e0], a
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
    rlca
    rlca
    ld [$710f], sp
    ld a, a
    db $76
    ld a, a
    ld a, c
    ld a, a
    ld e, a
    ld e, a
    ld a, a
    ld l, c
    ld a, a
    ld h, d

jr_021_6420:
    ld a, a
    ld e, e
    scf
    ccf
    rra
    dec e

jr_021_6426:
    rrca
    rrca

jr_021_6428:
    rrca
    ld a, [bc]
    rrca
    dec c
    ld [de], a
    ld e, $1e
    ld e, $c0
    ret nz

    and b
    ldh [$d0], a
    ld [hl], b
    jr nc, jr_021_6428

    ret nc

    ldh a, [$f8]
    ld a, b
    ld hl, sp+$58
    ld hl, sp+$28
    ldh a, [$f0]
    ldh [$e0], a
    jr nz, jr_021_6426

    ldh [$e0], a
    ldh [rNR41], a
    ldh [$60], a
    sub b
    ldh a, [$f0]
    ldh a, [$03]
    inc bc
    inc b
    rlca

jr_021_6454:
    ld c, $0b
    ld c, $0f
    inc de
    rra
    rrca
    dec c
    rra
    inc e
    ccf
    ld h, $1f
    inc e
    rrca
    dec c
    ld b, $07
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0302
    inc bc
    inc bc
    ret nz

    ret nz

    jr nz, jr_021_6454

    ld d, $f6
    db $76
    or $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$68
    ldh a, [rNR10]
    ldh [$60], a
    and b
    ldh [rNR10], a
    ldh a, [$38]
    add sp, -$08
    ret z

    ld hl, sp-$18
    sub b
    ldh a, [$f0]
    ldh a, [rTAC]
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    rra
    rra
    rra
    rra
    ccf
    cpl
    ccf
    daa
    rra
    rra
    inc b
    rlca
    add hl, bc
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    dec bc
    inc de
    rra

jr_021_64ae:
    ld e, $1e
    ret nz

    ret nz

    jr nz, @-$1e

    jr jr_021_64ae

    inc e
    db $fc
    db $fc
    db $fc
    db $f4
    db $f4
    db $fc
    db $fc
    db $fc
    db $ec
    db $fc
    db $fc
    or h
    db $fc
    ld a, b
    ret c

    ldh a, [$f0]
    ldh [$60], a
    ldh [$a0], a
    sub b
    ldh a, [$f0]
    ldh a, [$03]
    inc bc
    inc b
    rlca

jr_021_64d4:
    ret z

    rst $08
    ret c

    rst $18
    cp $ef
    ld a, a
    ld l, a
    ccf
    ccf
    ccf
    cpl
    dec d
    rra
    ld [$0c0f], sp
    rrca
    rra
    inc de
    rra
    inc d
    rra
    rla
    rrca
    rrca
    rrca
    rrca
    ret nz

    ret nz

    jr nz, jr_021_64d4

    db $10
    ldh a, [rNR10]
    ldh a, [$28]
    ld hl, sp-$08
    ld hl, sp-$08
    add sp, -$08
    ret z

    ldh a, [$b0]
    ldh [$e0], a
    and b
    ldh [$c0], a
    ret nz

    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ret nz

    inc bc
    inc bc
    inc b
    rlca

jr_021_6514:
    ld l, b
    ld l, a
    ld a, b
    ld a, a
    ld a, h
    ld a, a
    rrca
    rrca
    rra
    add hl, de
    rra
    jr jr_021_6530

    ld c, $07
    rlca
    inc b
    rlca
    rlca
    rlca
    rrca
    ld [$1d17], sp
    rla
    rra
    ld c, $0e

jr_021_6530:
    ret nz

    ret nz

    jr nz, jr_021_6514

    ld [hl], b
    ret nc

    ld c, b
    ld hl, sp-$68
    ld hl, sp-$04
    db $f4
    db $fc
    inc h
    ld hl, sp+$78
    ld hl, sp+$68
    ldh a, [$f0]
    ld d, b
    ldh a, [$e0]
    ldh [$e0], a
    and b
    ldh [$e0], a
    sub b
    ldh a, [rSVBK]
    ld [hl], b
    inc bc
    inc bc
    rlca
    ld b, $0b
    rrca
    inc c
    rrca
    dec bc
    rrca
    rrca
    ld c, $1f
    dec de
    rra
    inc d
    rrca
    rrca
    rlca
    rlca
    inc b
    rlca
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    dec b
    rlca
    rlca
    rlca
    ret nz

    ret nz

    and b
    ldh [$d6], a
    or $36
    or $f6
    or $fc
    xor h
    db $fc
    inc c
    db $f4
    call c, $e8f8
    ld hl, sp-$58
    ldh a, [$f0]
    or b
    ldh a, [$f0]
    ret nc

    ldh a, [$f0]
    sub b
    ldh a, [rSVBK]
    ld [hl], b
    rlca
    rlca
    ld [$180f], sp
    rra
    daa
    ccf
    ccf
    ccf
    ccf
    inc [hl]
    ld a, a
    ld c, b
    ld a, a
    ld a, e
    ld a, $33
    rra
    rra
    rla
    dec e
    rra
    ld e, $0f
    dec c
    rrca
    add hl, bc
    inc de
    ld e, $1f
    rra
    ret nz

    ret nz

    jr nz, @-$1e

    ld d, $f6
    ld d, $f6
    sub $f6
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$a0], a
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$a0], a
    ldh a, [$f0]
    sub b
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$090f], sp
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    add hl, de
    rra
    jr jr_021_65f2

    ld c, $06
    rlca
    rrca
    dec bc
    rra
    ld d, $1f
    rra
    dec c
    rrca
    ld b, $06
    nop
    nop

jr_021_65f2:
    ret nz

    ret nz

    ldh [$a0], a
    ld [hl], b
    ldh a, [$c8]
    ld hl, sp-$10
    or b
    ld hl, sp+$38
    db $fc
    ld h, h
    ld hl, sp+$38
    ldh a, [rNR10]
    ld a, b
    add sp, -$10
    ldh a, [$e0]
    ld h, b
    ldh a, [$30]
    ret nc

    ld [hl], b
    ldh [$e0], a
    nop
    nop
    rlca
    rlca
    dec bc
    ld c, $14
    rra
    inc de
    rra
    rra
    ld e, $3f
    ld a, [hl-]
    ld a, a
    ld d, h
    ld a, a
    ld b, a
    ccf
    inc sp
    ld a, e
    ld e, a
    ld a, [hl]
    ld a, a
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

    ret nz

    and b
    ldh [$50], a
    ldh a, [$90]
    ldh a, [$f0]
    ldh a, [$f8]
    cp b
    db $fc
    ld d, h
    db $fc
    call nz, $98f8
    xor b
    ld hl, sp+$7c
    db $f4
    db $fc
    and h
    ld hl, sp-$08
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    dec b

jr_021_6656:
    ld c, $0f
    inc de
    rra
    rrca
    dec c
    rra
    inc e
    ccf
    ld h, $1f
    inc e
    rrca
    ld [$0302], sp
    rlca
    dec b
    rrca
    ld a, [bc]
    rrca
    rrca
    dec c
    rrca

jr_021_666e:
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_021_6656

    db $10
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    sbc b
    ld hl, sp+$18
    ldh a, [rSVBK]
    jr c, jr_021_666e

    ld hl, sp-$08
    ldh [rNR41], a
    ret nc

    ld [hl], b
    ret nc

    ldh a, [$60]
    ld h, b
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    jr jr_021_66bb

    ccf
    ccf
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ccf
    ccf
    ld l, e
    ld a, a
    ld e, $1f
    rrca
    add hl, bc
    rra
    ld d, $09
    rrca
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [$30]

jr_021_66bb:
    ldh a, [$f8]
    ld hl, sp-$04
    db $f4
    db $fc
    db $e4
    ld hl, sp-$08
    xor b
    ld hl, sp+$7c
    db $f4
    cp $be
    and $e6
    ret nz

    ret nz

    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca
    inc c
    rrca
    inc c
    rlca
    rlca
    dec b
    rlca
    ld b, $07
    rrca
    dec bc
    rra
    ld d, $1f
    rra
    dec c
    rrca

jr_021_66ee:
    ld b, $06
    ldh [$e0], a
    ld [hl], b
    ret nc

    jr c, jr_021_66ee

    db $e4
    db $fc
    ld hl, sp-$28
    db $fc
    sbc h
    cp $b2
    db $fc
    inc e
    ld hl, sp+$08
    ldh a, [$b0]
    ld a, b
    add sp, -$10
    ldh a, [$e0]
    ld h, b
    ldh a, [$30]
    ret nc

    ld [hl], b
    ldh [$e0], a
    inc bc
    inc bc
    dec b
    rlca
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    rrca
    rrca
    rra
    dec e
    ccf
    ld a, [hl+]
    ccf
    inc hl
    rra
    add hl, de
    cpl
    inc a
    ld a, e
    ld e, a
    ld a, [hl]
    ld a, a
    rst $08
    ret


    rst $18
    sub $09
    rrca

jr_021_672e:
    rlca
    rlca
    ldh [$e0], a
    ret nc

    ld [hl], b
    jr z, jr_021_672e

    ret z

    ld hl, sp-$08
    ld a, b
    db $fc
    ld e, h
    cp $2a
    cp $e2
    db $fc
    call z, Call_021_70f0
    xor b
    ld hl, sp+$7c
    db $f4
    db $fc
    and h
    ld hl, sp-$08
    ret nz

    ret nz

    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    rlca
    add hl, bc
    rrca
    rlca
    ld b, $0f

jr_021_675b:
    ld c, $1f
    inc de
    rrca
    ld c, $07
    inc b
    rlca
    dec b
    ld [bc], a
    inc bc
    rlca
    dec b
    rrca
    ld a, [bc]
    rrca
    rrca
    dec c
    rrca
    rlca
    rlca
    ldh [$e0], a
    sub b
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$08
    ld hl, sp-$08
    ld a, b
    db $fc
    ld c, h
    db $fc
    inc c
    ld hl, sp+$38
    or b
    ldh a, [$38]
    add sp, -$08
    ld hl, sp-$20
    jr nz, jr_021_675b

    ld [hl], b
    ret nc

    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    inc c
    rrca
    rra
    rra
    ccf
    cpl
    ccf
    daa
    rra
    rra
    ld a, h
    ld e, a
    ld l, e
    ld a, a
    ld e, $1f
    rrca
    add hl, bc
    rra
    ld d, $09
    rrca
    rlca
    rlca
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$18
    ld hl, sp-$04
    db $fc
    cp $fa
    cp $f2
    db $fc
    db $fc
    ld [hl], b
    ldh a, [$a8]
    ld hl, sp+$7c
    db $f4
    cp $be
    and $e6
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    add hl, bc
    rrca
    db $10
    rra
    inc de
    rra
    rra
    rra
    rra
    ld e, $3f
    ld [hl-], a
    ccf
    jr nc, jr_021_6800

    inc e
    dec b
    rlca
    ld b, $07
    rrca
    dec bc
    rra
    ld d, $1f
    rra
    dec c
    rrca
    ld b, $06
    add b
    add b
    ret nz

    ld b, b
    ldh [$e0], a
    sub b
    ldh a, [$e0]
    ld h, b
    ldh a, [rSVBK]
    ld hl, sp-$38
    ldh a, [rSVBK]

jr_021_6800:
    ldh [rNR41], a
    ldh a, [$b0]
    ld a, b
    add sp, -$10
    ldh a, [$e0]
    ld h, b
    ldh a, [$30]
    ret nc

    ld [hl], b
    ldh [$e0], a
    rrca
    rrca
    rla
    dec e
    jr z, jr_021_6855

    daa
    ccf
    ccf
    dec a
    ld a, a
    ld [hl], l
    rst $38
    xor b
    rst $38
    adc a
    ld a, a
    ld h, a
    cpl
    inc a
    ld a, e
    ld e, a
    ld a, [hl]
    ld a, a
    rst $08
    ret


    rst $18
    sub $09
    rrca
    rlca
    rlca
    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [rNR41], a
    ldh [$e0], a
    ldh [$f0], a
    ld [hl], b
    ld hl, sp-$58
    ld hl, sp-$78
    ldh a, [$30]
    ldh a, [rSVBK]
    xor b
    ld hl, sp+$7c
    db $f4
    db $fc
    and h
    ld hl, sp-$08
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    ld c, $0b
    inc e

jr_021_6855:
    rra

jr_021_6856:
    ld h, $3f

jr_021_6858:
    rra
    dec de
    ccf

jr_021_685b:
    add hl, sp
    ld a, a
    ld c, l
    ccf
    jr c, jr_021_6880

    db $10
    rlca
    dec b
    ld [bc], a
    inc bc
    rlca
    dec b
    rrca
    ld a, [bc]
    rrca
    rrca
    dec c
    rrca
    rlca
    rlca
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_021_6856

    jr nz, jr_021_6858

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$30]
    ldh a, [$30]

jr_021_6880:
    ldh [$e0], a
    or b
    ldh a, [$38]
    add sp, -$08
    ld hl, sp-$20
    jr nz, jr_021_685b

    ld [hl], b
    ret nc

    ldh a, [$60]
    ld h, b
    rrca
    rrca
    db $10
    rra
    jr nz, jr_021_68d5

jr_021_6896:
    jr nz, jr_021_68d7

jr_021_6898:
    jr nc, jr_021_68d9

    ld a, a
    ld a, a
    rst $38
    cp a
    rst $38
    sbc a
    ld a, a
    ld a, a
    ld a, h
    ld e, a
    ld l, e
    ld a, a
    ld e, $1f
    rrca
    add hl, bc
    rra
    ld d, $09
    rrca
    rlca
    rlca
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_021_6896

    jr nz, jr_021_6898

    ld h, b
    ldh [$f0], a
    ldh a, [$f8]
    add sp, -$08
    ret z

    ldh a, [$f0]
    ld [hl], b
    ldh a, [$a8]
    ld hl, sp+$7c

Call_021_68c7:
    db $f4
    cp $be
    and $e6
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop

jr_021_68d5:
    inc bc
    inc b

jr_021_68d7:
    rlca
    dec b

jr_021_68d9:
    rlca
    rlca
    rlca
    rrca
    dec c
    rrca
    inc c
    rlca
    ld b, $01
    inc bc
    rlca
    rlca
    rrca
    ld a, [bc]
    rrca
    rrca
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

    ret nz

    add b
    ld h, b
    ldh [$d0], a
    ldh a, [$e0]
    and b
    ld hl, sp+$48
    ldh a, [$30]
    ldh [rNR41], a
    ldh [$a0], a
    ldh [$e0], a
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [$60], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    ld b, $08
    rrca
    dec bc
    rrca
    rrca
    ld c, $3f
    jr z, jr_021_695e

    inc hl
    rra
    dec de
    rla
    inc e
    ld a, $3f
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
    ret nz

    ret nz

    add b
    ret nz

    ld h, b
    ldh [$a0], a
    ldh [$e0], a
    ldh [$f8], a
    ld l, b
    ld hl, sp-$38
    ldh a, [$b0]
    ldh [$60], a
    ld a, b
    add sp, -$08
    adc b
    ldh a, [$f0]
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
    inc bc
    ld bc, $0706

jr_021_6958:
    dec bc
    rrca

jr_021_695a:
    rlca
    dec b
    rra
    ld [de], a

jr_021_695e:
    rrca
    inc c
    rlca
    inc b
    inc bc
    ld bc, $0103
    rlca
    ld b, $07
    rlca
    dec b
    rlca
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

    jr nz, jr_021_6958

    jr nz, jr_021_695a

    ldh [$e0], a
    ldh a, [$b0]
    ldh a, [$30]
    ldh [$60], a
    and b
    ldh [$f0], a
    ldh a, [$c0]
    nop
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
    inc b
    rlca
    ld [$080f], sp
    rrca

jr_021_699a:
    inc c
    rrca

jr_021_699c:
    ccf
    cpl
    ccf
    daa
    rra
    rra
    inc a
    cpl
    ld c, $0f
    rlca
    dec b
    rrca
    ld a, [bc]
    dec b
    rlca
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

    jr nz, @-$1e

    jr nz, jr_021_699a

    jr nz, jr_021_699c

    ld hl, sp-$18
    ld hl, sp-$38
    ldh a, [$f0]
    ld h, b
    ldh [$78], a
    add sp, -$04
    cp h
    call z, $c0cc
    ret nz

    nop
    nop
    nop
    nop

    db $e2, $69

    push hl
    ld l, c

    db $eb, $69, $ee, $69

    ld sp, hl
    ld l, c
    nop
    ld l, d
    ld [$1c6a], sp
    ld l, d
    jr z, @+$6c

    nop
    rst $38
    db $fd
    nop
    ld e, $01
    ld e, $ff
    nop

    db $02, $ff, $fd, $02

    inc c
    inc bc
    inc c
    inc b
    jr @+$04

    inc c

    db $05, $0c, $fd, $02

    jr @+$05

    jr jr_021_6a00

    jr @-$01

jr_021_6a00:
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

    db $63, $04, $41, $6a, $60, $74, $39, $6a, $78, $3a, $ff, $6b, $80, $12, $00, $00

    ld h, b
    ld l, d
    ld h, b
    ld l, e

    db $60, $6c, $60, $6d

    ld h, b
    ld l, [hl]

    db $60, $6f

    ld h, b
    ld [hl], b
    ld h, b
    ld [hl], c
    ld h, b
    ld [hl], d
    ld h, b
    ld [hl], e
    nop
    nop
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
    ld [$0f0f], sp
    rrca
    rrca
    rrca
    rra
    ld [de], a
    rra
    ld [de], a
    rrca
    inc c
    rrca
    ld c, $07
    rlca
    ld b, $07
    rrca
    dec bc
    rra
    ld d, $0f
    rrca
    dec c
    rrca
    ld b, $06
    ret nz

    ret nz

    ldh [$a0], a
    ld h, b
    ldh [$90], a
    ldh a, [$e0]
    ld h, b
    ldh a, [rSVBK]
    ld hl, sp-$38
    ldh a, [$f0]
    ldh a, [rSVBK]
    ldh [rNR41], a
    ldh a, [$f0]
    ld hl, sp-$18
    ldh a, [rSVBK]
    ldh [rNR41], a
    ldh [$60], a
    ret nz

    ret nz

    rlca
    rlca
    dec bc
    ld c, $14
    rra
    dec de
    rra
    rra
    ld e, $3f
    ld a, [hl+]
    ccf
    inc h
    ccf
    scf
    cpl
    dec sp
    ld a, a
    ld e, h
    ld a, e
    ld a, a
    rst $08
    rst $08
    rst $08
    ret


    rra
    ld d, $09
    rrca
    ld b, $06
    ret nz

    ret nz

    and b
    ldh [$50], a
    ldh a, [$b0]
    ldh a, [$f0]
    ldh a, [$f8]
    xor b
    ld hl, sp+$48
    ldh a, [$d0]
    add sp, -$48
    add sp, $78
    cp h
    db $f4
    ld a, h
    db $e4
    ld hl, sp-$08
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    dec b

jr_021_6ae4:
    ld b, $07
    add hl, bc
    rrca
    rlca
    ld b, $0f
    ld c, $1f
    inc de
    rrca
    rrca
    rrca
    ld c, $07
    inc b
    inc bc
    inc bc
    rlca
    dec b
    rrca
    dec bc
    rlca
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ret nz

    ret nz

    jr nz, jr_021_6ae4

    db $10
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    ld c, b
    ld hl, sp+$48
    ldh a, [$30]
    ldh a, [rSVBK]
    ldh [$e0], a
    ld h, b
    ldh [$f0], a
    ldh a, [$f0]
    jr nc, @-$06

    adc b
    ld hl, sp-$28
    or b
    or b
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    db $10
    rra
    jr c, jr_021_6b5b

    ccf
    cpl
    rra
    rla
    cpl
    ccf
    db $76
    ld e, a
    ld a, b
    ld a, a
    ld c, $0f
    rrca
    add hl, bc
    rra
    ld d, $09
    rrca
    ld b, $06
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$38]
    add sp, -$08
    add sp, -$10
    ret nc

    db $eb
    ei
    set 7, e
    ld a, $f6
    ld a, h
    db $e4
    ld hl, sp-$08
    ret nz

jr_021_6b5b:
    ret nz

    nop
    nop
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
    rra
    ld [de], a
    rrca
    inc c
    rrca
    ld c, $07
    rlca
    ld b, $07
    rrca
    rrca
    rrca
    inc c
    rra
    ld de, $1b1f

jr_021_6b7e:
    dec c
    dec c
    ret nz

    ret nz

    ldh [$a0], a
    ld h, b
    ldh [$90], a
    ldh a, [$e0]
    ld h, b
    ldh a, [rSVBK]
    ld hl, sp-$38
    ldh a, [$f0]
    ldh a, [rSVBK]
    and $26
    add $c6
    db $ec
    xor h
    ld hl, sp-$28
    ldh [$e0], a
    jr nz, jr_021_6b7e

    ret nz

    ret nz

    rlca
    rlca
    dec bc
    ld c, $14
    rra
    dec de
    rra
    rra
    ld e, $3f
    ld a, [hl+]
    ccf
    inc h
    rra
    rla
    rst $28
    ei
    rst $28
    db $fc
    ld a, e
    ld e, a
    ld a, l
    ld c, a
    ccf
    ccf
    rlca
    ld b, $01
    ld bc, $0000
    ret nz

    ret nz

    and b
    ldh [$50], a
    ldh a, [$b0]
    ldh a, [$f0]
    ldh a, [$f8]
    xor b
    ld hl, sp+$48
    ld hl, sp-$28
    add sp, -$48
    db $fc
    ld [hl], h
    cp h
    db $fc
    ldh [$e0], a
    ldh [rNR41], a
    ldh a, [$d0]
    jr nz, @-$1e

    ret nz

    ret nz

    inc bc
    inc bc
    rlca
    dec b

jr_021_6be4:
    ld b, $07
    add hl, bc
    rrca
    rlca
    ld b, $0f
    ld c, $1f
    inc de
    rrca
    rrca
    rrca
    ld c, $67
    ld h, h
    ld l, a
    ld l, a
    ccf
    scf
    rrca
    ld c, $07
    inc b
    rlca
    ld b, $03
    inc bc
    ret nz

    ret nz

    jr nz, jr_021_6be4

    db $10
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    ld c, b
    ld hl, sp+$48
    ldh a, [$30]
    ldh a, [rSVBK]
    ldh [$e0], a
    ld h, b
    ldh [$f0], a
    ret nc

    ld hl, sp+$68
    ldh a, [$f0]
    or b
    ldh a, [$60]
    ld h, b
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    db $10
    rra
    jr c, @+$31

    ccf
    cpl
    rra
    rla
    cpl
    ccf
    ld h, $3f
    ld a, b
    ld e, a
    ld a, b
    ld c, a
    ccf
    ccf
    rlca
    ld b, $01
    ld bc, $0000
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$3b]
    db $eb
    ei
    db $eb
    ld a, [c]
    jp nc, $faea

    sbc $f6
    inc a
    db $fc
    ldh [$e0], a
    ldh [rNR41], a
    ldh a, [$d0]
    jr nz, @-$1e

    ret nz

    ret nz

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
    rra
    ld [de], a
    rrca
    inc c
    rrca
    ld c, $05
    rlca
    ld [$1d0f], sp
    rla
    rra
    inc de
    rra
    dec de
    inc e
    rla
    rrca
    rrca
    ret nz

    ret nz

    ldh [$a0], a
    ld h, b
    ldh [$90], a
    ldh a, [$e0]
    ld h, b
    ldh a, [rSVBK]
    ld hl, sp-$38
    ldh a, [$f0]
    ldh a, [rSVBK]
    ldh [rNR41], a
    ret nz

    ret nz

    ldh [$a0], a
    ldh a, [$d0]
    jr nc, jr_021_6ccc

    sbc e
    sbc e
    adc a
    adc a
    rlca
    rlca
    ld [$110f], sp
    rra
    ld [de], a
    rra
    inc e
    rra
    rra
    rra
    ccf
    add hl, hl
    ccf
    ld [hl+], a
    rra
    rla
    rra
    dec de
    rla
    rra
    rrca
    dec c

jr_021_6cb8:
    rlca
    ld b, $0f
    dec c
    inc de
    rra
    rra
    rra
    ret nz

    ret nz

    and b
    ldh [$d0], a
    ld [hl], b
    jr nc, jr_021_6cb8

    ret nc

    ldh a, [$f8]
    ld a, b

jr_021_6ccc:
    ld hl, sp+$58
    ld hl, sp+$28
    ldh a, [$f0]
    ldh a, [$f0]
    and b
    ldh [$e0], a
    ld h, b
    ret nz

    ret nz

    ldh [$60], a
    sub b
    ldh a, [$f0]
    ldh a, [$03]
    inc bc
    rlca
    dec b

jr_021_6ce4:
    ld b, $07
    add hl, bc
    rrca
    rlca
    ld b, $0f
    ld c, $1f
    inc de
    rrca
    rrca
    rrca
    ld c, $07
    inc b
    inc bc
    inc bc
    rlca
    dec b
    rrca
    dec bc
    inc c
    inc c
    reti


    reti


    pop af
    pop af
    ret nz

    ret nz

    jr nz, jr_021_6ce4

    db $10
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    ld c, b
    ld hl, sp+$48
    ldh a, [$30]
    ldh a, [rSVBK]
    and b
    ldh [rNR10], a
    ldh a, [$b8]
    add sp, -$08
    ret z

    ld hl, sp-$28
    jr c, @-$16

    ldh a, [$f0]
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    inc c
    rrca
    rra
    rla
    rra
    inc de
    rrca
    add hl, bc
    rlca
    rlca
    inc b
    rlca
    dec b
    rlca
    rlca
    ld b, $07
    inc b
    rlca
    dec b
    add hl, bc
    rrca
    rrca
    rrca
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$38

jr_021_6d49:
    ld hl, sp-$04
    db $f4
    db $fc
    db $f4
    cp b
    ld hl, sp+$30
    ldh a, [rNR10]
    ldh a, [$d0]
    ldh a, [$f0]
    jr nc, jr_021_6d49

    ret nc

    ldh a, [$90]
    ret z

    ld hl, sp-$48
    cp b
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
    rra
    ld [de], a
    rrca
    inc c
    rrca
    ld c, $05
    rlca
    dec bc
    rrca
    ld e, $17
    rra
    inc de
    rra
    dec de
    inc e
    rla
    rrca
    rrca
    ret nz

    ret nz

    ldh [$a0], a
    ld h, b
    ldh [$90], a
    ldh a, [$e0]
    ld h, b
    ldh a, [rSVBK]
    ld hl, sp-$38
    ldh a, [$f0]
    ldh a, [rSVBK]
    ldh [rNR41], a
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    nop
    nop
    add b
    add b
    add b
    add b
    inc bc
    inc bc
    inc c
    rrca
    ld de, $121f
    rra
    inc e
    rra
    rra
    rra
    ccf
    add hl, hl
    ccf
    ld [hl+], a
    rra
    rla
    rrca
    dec bc
    rrca
    rrca
    rra
    ld e, $1f
    rra
    rrca
    dec c
    inc de
    rra
    inc e
    inc e
    ret nz

    ret nz

    and b
    ldh [$d0], a
    ld [hl], b
    jr nc, @-$0e

    ret nc

    ldh a, [$f8]
    ld a, b
    ld hl, sp+$58
    ld hl, sp+$28
    ldh a, [$f0]
    ldh a, [$f0]
    ld h, b
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    ldh [$60], a
    sub b
    ldh a, [rSVBK]
    ld [hl], b
    inc bc
    inc bc
    rlca
    dec b

jr_021_6de4:
    ld b, $07
    add hl, bc
    rrca
    rlca
    ld b, $0f
    ld c, $1f
    inc de
    rrca
    rrca
    rra
    ld e, $1f
    dec e
    ld a, [bc]
    rrca
    rlca
    rlca
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $c0c0
    jr nz, jr_021_6de4

    db $10
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    ld c, b
    ld hl, sp+$48
    ldh a, [$30]
    ldh a, [rSVBK]
    and b
    ldh [rNR10], a
    ldh a, [$38]
    add sp, -$08
    ret z

    ld hl, sp-$28
    jr c, @-$16

    ldh a, [$f0]
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    inc c
    rrca
    rra
    rla
    rra
    inc de
    rrca
    add hl, bc
    rlca
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    dec b
    add hl, bc
    rrca
    ld c, $0e
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$38

jr_021_6e49:
    ld hl, sp-$04
    db $f4
    db $fc
    db $f4
    ei
    ei
    or e
    di
    ld d, $f6
    call z, $f8fc
    jr c, jr_021_6e49

    ret nc

    ldh a, [$90]
    ld c, b
    ld a, b
    jr c, jr_021_6e98

    inc bc
    inc bc
    inc b
    rlca
    ld [$cf0f], sp
    rst $08
    rst $08
    rst $08
    rst $18
    jp nc, Jump_021_525f

    ld l, a
    ld l, h
    ccf
    ld a, $1b
    rra
    rrca
    ld c, $1d
    rla
    rra
    inc de
    rra
    dec de
    inc e
    rla
    rrca
    rrca
    ret nz

    ret nz

    ldh [$a0], a
    ld h, b
    ldh [$90], a
    ldh a, [$e0]
    ld h, b
    ldh a, [rSVBK]
    ld hl, sp-$38
    ldh a, [$f0]
    ldh a, [rSVBK]
    ldh [rNR41], a
    ret nz

    ret nz

    ld b, b
    ret nz

jr_021_6e98:
    ret nz

    ret nz

    nop
    nop
    add b
    add b
    add b
    add b
    rlca
    rlca
    ld [$110f], sp
    rra
    jp nc, $dddf

    rst $18
    rst $18
    rst $18
    ld a, a
    ld l, c
    ld a, a
    ld h, d
    ccf
    scf
    ccf
    dec hl
    dec e
    rla
    rrca
    rrca

jr_021_6eb8:
    rrca
    rrca
    rrca
    add hl, bc
    inc de
    rra
    inc e
    inc e
    ret nz

    ret nz

    and b
    ldh [$d0], a
    ld [hl], b
    jr nc, jr_021_6eb8

    ret nc

    ldh a, [$f8]
    ld a, b
    ld hl, sp+$58
    ld hl, sp+$28
    ldh a, [$f0]
    ldh a, [$f0]
    ld h, b
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ldh [$60], a
    sub b
    ldh a, [rSVBK]
    ld [hl], b
    inc bc
    inc bc
    rlca
    dec b

jr_021_6ee4:
    ld b, $07
    add hl, bc
    rrca
    rlca
    ld b, $0f
    ld c, $1f
    inc de
    rrca
    rrca
    rrca
    ld c, $07
    dec b
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $c0c0
    jr nz, jr_021_6ee4

    db $10
    ldh a, [$f6]
    or $f6
    or $fe
    ld c, [hl]
    ld hl, sp+$48
    ldh a, [$30]
    ldh a, [rSVBK]
    and b
    ldh [rNR10], a
    ldh a, [$38]
    add sp, -$08
    ret z

    ld hl, sp-$28
    jr c, @-$16

    ldh a, [$f0]
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    inc c
    rrca
    rra
    rla
    rra
    inc de
    rrca
    add hl, bc
    rlca
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca
    dec b
    add hl, bc
    rrca
    ld c, $0e
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$0b
    ei
    dec sp

jr_021_6f49:
    ei
    rst $38
    rst $30
    db $fc
    db $f4
    db $fc
    db $ec
    cp b
    ld hl, sp+$08
    ld hl, sp-$30
    ldh a, [$f0]
    jr nc, jr_021_6f49

    ret nc

    ldh a, [$90]
    ld c, b
    ld a, b
    jr c, jr_021_6f98

    inc bc
    inc bc
    inc b
    rlca

jr_021_6f64:
    ret z

    rst $08
    ret z

    rst $08
    sbc $df
    ld a, a
    ld [hl], a
    ccf
    scf
    rra
    rra
    dec d
    rra
    ld [$0e0f], sp
    rrca
    rlca
    dec b
    rrca
    ld a, [bc]
    rrca
    dec bc
    rrca
    rrca
    rlca
    rlca
    ret nz

    ret nz

    jr nz, jr_021_6f64

    db $10
    ldh a, [rNR10]
    ldh a, [$28]
    ld hl, sp-$08
    ld hl, sp-$08
    add sp, -$08
    ret z

    ldh a, [$f0]
    ld d, b
    ldh a, [$60]
    ldh [rLCDC], a
    ret nz

jr_021_6f98:
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ret nz

    ld bc, $0201
    inc bc
    call nz, $c6c7
    rst $00
    rst $20
    rst $20
    ccf
    add hl, sp
    rra
    add hl, de
    rrca
    ld c, $07
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rlca
    inc b
    rlca
    ld b, $0b
    rrca
    ld a, [bc]
    ld c, $06
    ld b, $e0
    ldh [rSVBK], a
    ret nc

    ld l, b
    ld hl, sp-$78
    ld hl, sp-$04
    db $f4
    db $fc
    inc h
    ld hl, sp+$78
    ld hl, sp+$68
    ldh a, [$f0]
    ld d, b
    ldh a, [$e0]
    ldh [$e0], a
    and b
    ldh [$e0], a
    ldh [$e0], a
    sub b
    ldh a, [rSVBK]
    ld [hl], b
    inc bc
    inc bc
    rlca
    ld b, $0b
    rrca
    inc c
    rrca
    rrca
    rrca
    rra
    ld a, [de]
    rra
    inc d
    rra
    rra
    rrca
    rrca
    rlca
    ld b, $07
    rlca
    inc b
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    rlca
    rlca
    ret nz

    ret nz

    and b
    ldh [$d3], a
    di
    inc sp
    di
    db $d3
    di
    ld a, [$feaa]
    ld e, [hl]

jr_021_700e:
    db $fc
    call nc, $b8f8
    ld hl, sp+$78
    ldh a, [$d0]
    ldh a, [$f0]
    ld [hl], b
    ret nc

    ldh a, [$d0]
    jr nc, jr_021_700e

    ldh [$e0], a
    rlca
    rlca
    inc c
    rrca
    db $10
    rra
    rra
    rra
    ccf
    ld a, [hl-]
    ccf
    inc h
    rra
    ld e, $1f
    dec e
    rrca
    add hl, bc
    rrca
    rrca
    dec b
    rlca
    rlca
    rlca
    rlca
    ld b, $07
    inc b
    add hl, bc
    ld c, $0f
    rrca
    add b
    add b
    ld b, b
    ret nz

    inc hl
    db $e3
    and e
    db $e3
    rst $20
    ld h, a
    db $ec
    ld l, h
    ld hl, sp-$08
    ld [hl], b
    ldh a, [$a0]
    ldh [$c0], a
    ret nz

    ret nz

    ld b, b
    ldh [$a0], a
    ldh [$e0], a
    ldh a, [$d0]
    sub b
    ldh a, [rSVBK]
    ld [hl], b
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
    rra
    ld [de], a
    rrca
    inc c
    rrca
    ld c, $06
    rlca
    rrca
    dec bc
    rra
    ld d, $0f
    rrca
    dec c
    rrca
    ld b, $06
    nop
    nop
    ret nz

    ret nz

    ldh [$a0], a
    ld h, b
    ldh [$90], a
    ldh a, [$e0]
    ld h, b
    ldh a, [rSVBK]
    ld hl, sp-$38
    ldh a, [$f0]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ld hl, sp-$18
    ldh a, [rSVBK]
    ldh [rNR41], a
    ldh [$60], a
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    dec bc
    ld c, $14
    rra
    dec de
    rra
    rra
    ld e, $3f
    ld a, [hl+]
    ccf
    inc h
    ccf
    scf
    cpl
    dec sp
    ld a, e
    ld a, a
    rst $08
    rst $08
    rst $08
    ret


    rra
    ld d, $09
    rrca
    ld b, $06
    nop
    nop
    ret nz

    ret nz

    and b
    ldh [$50], a
    ldh a, [$b0]
    ldh a, [$f0]
    ldh a, [$f8]
    xor b
    ld hl, sp+$48
    ldh a, [$d0]
    add sp, -$48
    cp h
    db $f4
    ld a, h
    db $e4
    ld hl, sp-$08
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
    dec b

jr_021_70e6:
    ld b, $07
    add hl, bc
    rrca
    rlca
    ld b, $0f
    ld c, $1f
    inc de

Call_021_70f0:
    rrca
    rrca
    rrca
    ld c, $03
    inc bc
    rlca
    dec b
    rrca
    dec bc
    rlca
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_021_70e6

    db $10
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    ld c, b
    ld hl, sp+$48
    ldh a, [$30]
    ldh a, [rSVBK]
    ld h, b
    ldh [$f0], a
    ldh a, [$f0]
    jr nc, @-$06

    adc b
    ld hl, sp-$28
    or b
    or b
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    db $10
    rra
    jr c, jr_021_715d

    ccf
    cpl
    rra
    rla
    cpl
    ccf
    ld a, b
    ld a, a
    ld c, $0f
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

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$38]
    add sp, -$08
    add sp, -$10
    ret nc

    db $eb
    ei
    ld a, $f6
    ld a, h
    db $e4
    ld hl, sp-$08
    ret nz

    ret nz

    nop

jr_021_715d:
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
    rlca
    rrca
    add hl, bc
    rrca
    add hl, bc
    rlca
    ld b, $07
    rlca
    rlca
    rlca
    ld b, $07

jr_021_7176:
    rrca
    dec bc
    rra
    ld d, $0f
    rrca
    dec c
    rrca
    ld b, $06
    ldh [$e0], a
    ld [hl], b
    ret nc

    jr nc, jr_021_7176

    ret z

    ld hl, sp-$10
    or b
    ld hl, sp+$38
    db $fc
    ld h, h
    ld hl, sp+$78
    ld hl, sp+$38
    ldh [rNR41], a
    ldh a, [$f0]
    ld hl, sp-$18
    ldh a, [rSVBK]
    ldh [rNR41], a
    ldh [$60], a
    ret nz

    ret nz

    inc bc
    inc bc
    dec b
    rlca
    ld a, [bc]
    rrca
    dec c
    rrca
    rrca
    rrca
    rra
    dec d
    rra
    ld [de], a
    rra
    dec de
    rla
    dec e
    ld a, a
    ld e, h
    ld a, e
    ld a, a
    rst $08
    rst $08
    rst $08
    ret


    rra
    ld d, $09
    rrca

jr_021_71be:
    ld b, $06
    ldh [$e0], a
    ret nc

    ld [hl], b
    jr z, jr_021_71be

    ret c

    ld hl, sp-$08
    ld a, b
    db $fc
    ld d, h
    db $fc
    inc h
    ld hl, sp-$18
    db $f4
    call c, Call_021_78e8
    cp h
    db $f4
    ld a, h
    db $e4
    ld hl, sp-$08
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    inc b
    rlca
    inc bc
    inc bc
    rlca
    rlca
    rrca
    add hl, bc
    rlca
    rlca
    rlca
    rlca
    rlca
    inc b
    inc bc
    inc bc
    rlca
    dec b
    rrca
    dec bc
    rlca
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ldh [$e0], a
    sub b
    ldh a, [$08]
    ld hl, sp-$08
    ld hl, sp-$08
    ld a, b
    db $fc
    inc h
    db $fc
    and h
    ld hl, sp-$68
    ld hl, sp+$38
    ldh [$e0], a
    ld h, b
    ldh [$f0], a
    ldh a, [$f0]
    jr nc, @-$06

    adc b
    ld hl, sp-$28
    or b
    or b
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    ld [$1c0f], sp
    rla
    rra
    rla
    rrca
    dec bc
    rla
    rra
    db $76
    ld e, a
    ld a, b
    ld a, a
    ld c, $0f
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
    ld hl, sp+$1c
    db $f4
    db $fc
    db $f4
    ld hl, sp-$18
    push af
    db $fd
    set 7, e
    ld a, $f6
    ld a, h
    db $e4
    ld hl, sp-$08
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
    db $10
    rra
    rra
    rra

jr_021_7268:
    rra
    ld e, $3f
    inc h
    ccf
    dec h
    rra
    add hl, de
    rra
    inc e
    rlca
    rlca
    ld b, $07
    rrca
    dec bc
    rra
    ld d, $0f
    rrca
    dec c
    rrca
    ld b, $06
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    jr nz, jr_021_7268

    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$90]
    ldh [$e0], a
    ldh [$e0], a
    ldh [rNR41], a
    ldh a, [$f0]
    ld hl, sp-$18
    ldh a, [rSVBK]
    ldh [rNR41], a
    ldh [$60], a
    ret nz

    ret nz

    rrca
    rrca
    rla
    dec e
    jr z, jr_021_72e5

    scf
    ccf
    ccf
    dec a
    ld a, a
    ld d, l
    ld a, a
    ld c, b
    ld a, a
    ld l, a
    ld e, a
    ld [hl], a
    ld a, a
    ld e, h
    ld a, e
    ld a, a
    rst $08
    rst $08
    rst $08
    ret


    rra
    ld d, $09
    rrca
    ld b, $06
    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [$60], a
    ldh [$e0], a
    ldh [$f0], a
    ld d, b
    ldh a, [$90]
    ldh [$a0], a
    ret nc

    ld [hl], b
    add sp, $78
    cp h
    db $f4
    ld a, h
    db $e4
    ld hl, sp-$08
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    ld c, $0b
    inc c

jr_021_72e5:
    rrca

jr_021_72e6:
    inc de
    rra
    rrca
    dec c
    rra
    inc e
    ccf
    ld h, $1f
    ld e, $1f
    inc e
    rlca
    inc b
    inc bc
    inc bc
    rlca
    dec b
    rrca
    dec bc
    rlca
    rlca
    inc b
    rlca
    inc bc
    inc bc
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_021_72e6

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$90]
    ldh a, [$90]
    ldh [$60], a
    ldh [$e0], a
    ldh [$e0], a
    ld h, b
    ldh [$f0], a
    ldh a, [$f0]
    jr nc, @-$06

    adc b
    ld hl, sp-$28
    or b
    or b
    rrca
    rrca
    db $10
    rra
    jr nz, jr_021_7365

jr_021_7326:
    jr nz, jr_021_7367

jr_021_7328:
    jr nz, jr_021_7369

jr_021_732a:
    ld [hl], b
    ld e, a
    ld a, a
    ld e, a
    ccf
    cpl
    ld e, a
    ld a, a
    db $76
    ld e, a
    ld a, b
    ld a, a
    ld c, $0f
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

    jr nz, jr_021_7326

    jr nz, jr_021_7328

    jr nz, jr_021_732a

    ld [hl], b
    ret nc

    ldh a, [$d0]
    ldh [$a0], a
    sub $f6
    set 7, e
    ld a, $f6
    ld a, h
    db $e4
    ld hl, sp-$08
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

jr_021_7365:
    inc bc
    inc b

jr_021_7367:
    rlca
    rlca

jr_021_7369:
    rlca
    rlca
    rlca
    rrca
    ld a, [bc]
    rlca
    inc b
    rlca
    ld b, $03
    inc bc
    rlca
    rlca
    rrca
    ld a, [bc]
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

    ret nz

    add b
    ld b, b
    ret nz

    and b
    ldh [$c0], a
    ld b, b
    ldh a, [$d0]
    ldh [$e0], a
    ldh [$60], a
    ret nz

    nop
    ldh a, [$d0]
    ldh [$60], a
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    ld b, $08
    rrca
    rrca
    rrca
    rrca
    ld c, $1f
    db $10
    rra
    dec de
    rla
    rra
    ccf
    inc l
    ld h, a
    ld h, a
    ld h, a
    ld h, l
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

    add b
    ret nz

    ld h, b
    ldh [$a0], a
    ldh [$e0], a
    ldh [$f0], a
    ld d, b
    ldh [$e0], a
    ret nc

    or b
    ret nc

    ld [hl], b
    ld a, b
    ret z

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
    inc bc
    inc bc
    inc bc
    ld bc, $0302

jr_021_73e8:
    dec b
    rlca
    inc bc
    ld [bc], a
    rrca
    dec bc
    rlca
    rlca
    rlca
    ld b, $03
    nop
    inc bc
    ld bc, $0707
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

    jr nz, jr_021_73e8

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$50]
    ldh [rNR41], a
    ldh [$60], a
    ret nz

    ret nz

    ldh [$e0], a
    ldh [rNR41], a
    ldh a, [$90]
    ldh a, [$f0]
    and b
    and b
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

jr_021_742a:
    ld [$1f0f], sp
    rla
    rrca
    dec bc
    rla
    rra
    ld a, [hl-]
    cpl
    ld b, $07
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

    jr nz, @-$1e

    jr nz, jr_021_742a

    jr nz, @-$1e

    ldh a, [$d0]
    ldh [$e0], a
    sub $f6
    sub $f6
    ld a, b
    ret z

    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop

    db $72, $74

    ld [hl], l
    ld [hl], h

    db $7b, $74, $7e, $74, $89, $74

    sub b
    ld [hl], h
    sbc b
    ld [hl], h
    xor h
    ld [hl], h
    cp b
    ld [hl], h
    nop
    rst $38
    db $fd
    nop
    ld e, $01
    ld e, $ff
    nop

    db $02, $ff

    db $fd
    ld [bc], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_021_78e8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_021_78f8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_021_7ec3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
