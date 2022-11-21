INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $023", ROMX[$4000], BANK[$23]

    ld [de], a
    ld b, b
    inc sp
    ld b, b
    bit 1, b

    db $51, $53, $d1, $59, $51, $60

    pop de
    ld h, [hl]
    ld l, e
    ld [hl], e
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
    jr nc, jr_023_4022

    inc h

jr_023_4022:
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
    ld h, b
    ld c, b
    dec sp
    ld b, b
    ld h, b
    ld b, b
    ld h, b
    ld b, c
    ld h, b
    ld b, c
    ld h, b
    ld b, c
    ld h, b
    ld b, c
    ld h, b
    ld b, c
    ld h, b
    ld b, d
    ld h, b
    ld b, e
    ld h, b
    ld b, h
    ld h, b
    ld b, l
    ld h, b
    ld b, [hl]
    ld h, b
    ld b, a
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    inc b
    rlca
    ld c, d
    ld c, a
    ld [hl], c
    ld a, a
    ld b, b
    ld a, a
    ld sp, $223f
    ccf
    inc de
    rra
    dec c
    rrca
    ld a, [bc]
    rrca
    inc c
    rrca
    rlca
    rlca
    ld e, b
    ld e, b
    xor b
    ld hl, sp+$48
    cp b
    db $f4
    db $fc
    ld [bc], a
    cp $12
    cp $7c
    db $ec
    ld hl, sp-$68
    ld a, b
    ret c

    cp b
    add sp, -$10
    ret nc

    ldh [$60], a
    ldh [$a0], a
    ld h, b
    ldh [rSVBK], a
    ret nc

    ldh a, [$f0]
    dec c
    dec c
    ld a, [bc]
    rrca
    add hl, bc
    ld c, $17
    rra
    add hl, hl
    ccf
    ld [hl+], a
    ccf
    and a
    cp l
    rst $18
    ld a, [$fa8f]
    ld l, a
    ld a, b
    ld d, a
    ld a, h
    ccf
    dec sp
    daa
    dec a
    ld d, $1f
    rrca
    add hl, bc
    rlca
    rlca
    ld h, b
    ld h, b
    and b
    ldh [rNR41], a
    ldh [$d0], a
    ldh a, [$28]
    ld hl, sp-$78
    ld hl, sp-$36
    ld a, d
    or $be
    ld [c], a
    cp [hl]
    db $ec
    inc a
    call nc, $f87c
    cp b
    ret nc

    ld [hl], b
    ldh [$e0], a
    add b
    add b
    nop
    nop
    ld a, [de]
    ld a, [de]
    dec d
    rra
    ld [de], a
    dec e
    cpl
    ccf
    ld b, b
    ld a, a
    ld c, b
    ld a, a
    ld a, $37
    rra
    add hl, de
    ld e, $1b
    dec e
    rla
    rrca
    dec bc
    rlca
    ld b, $07
    dec b
    ld b, $07
    inc c
    rrca
    rrca
    rrca
    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    and b
    ldh [rNR41], a
    ldh [rHDMA2], a
    ld a, [c]
    adc [hl]
    cp $12
    cp $8c
    db $fc
    ld b, h
    db $fc
    ret z

    ld hl, sp-$50
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ret nc

    ldh [$e0], a
    dec c
    dec c
    dec bc
    rrca
    ld a, [bc]
    rrca
    dec d
    ld e, $23
    ccf
    ld sp, $a03f
    cp a
    ret nz

    rst $38
    sub b
    rst $38
    ld h, b
    ld a, a
    ld c, b
    ld a, a
    inc a
    ccf
    inc hl
    ccf
    ld d, $1f
    rrca
    add hl, bc
    rlca
    rlca
    ld h, b
    ld h, b
    and b
    ldh [$a0], a
    ldh [$50], a
    ldh a, [$88]
    ld hl, sp+$18
    ld hl, sp+$0a
    ld a, [$fe06]

jr_023_4150:
    ld [de], a
    cp $0c
    db $fc
    inc h
    db $fc
    jr c, jr_023_4150

    ld d, b
    ldh a, [$e0]
    ldh [$80], a
    add b
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    inc b
    rlca
    ld c, d
    ld c, a
    ld [hl], c
    ld a, a
    ld b, b
    ld a, a
    ld sp, $223f
    ccf
    inc de
    rra
    dec c
    rrca
    ld c, $0f
    ld c, $0b
    rlca
    rlca
    ld e, b
    ld e, b
    xor b
    ld hl, sp+$48
    cp b
    db $f4
    db $fc
    ld [bc], a
    cp $12
    cp $7c
    db $ec
    ld hl, sp-$68
    ld a, b
    ret c

    cp b
    add sp, -$10
    ret nc

    ldh [$60], a
    ldh [$a0], a
    ld h, b
    ldh [$30], a
    ldh a, [$f0]

jr_023_419f:
    ldh a, [$0d]
    dec c
    ld a, [bc]
    rrca
    add hl, bc
    ld c, $17
    rra
    add hl, hl
    ccf
    ld [hl+], a
    ccf
    and a
    cp l
    rst $18
    ld a, [$fa8f]
    ld l, a
    ld a, b
    ld d, a
    ld a, h
    ccf
    dec sp
    rla
    dec e
    ld c, $0f
    inc bc
    inc bc
    ld bc, $6001
    ld h, b
    and b
    ldh [rNR41], a
    ldh [$d0], a
    ldh a, [$28]
    ld hl, sp-$78
    ld hl, sp-$36
    ld a, d
    or $be
    ld [c], a
    cp [hl]
    db $ec
    inc a
    call nc, $f87c
    cp b
    ret z

    ld a, b
    ret nc

    ldh a, [$e0]
    jr nz, jr_023_419f

    ret nz

    ld a, [de]
    ld a, [de]
    dec d
    rra
    ld [de], a
    dec e
    cpl
    ccf
    ld b, b
    ld a, a
    ld c, b
    ld a, a
    ld a, $37
    rra
    add hl, de
    ld e, $1b
    dec e
    rla
    rrca
    dec bc
    rlca
    ld b, $07
    dec b
    ld b, $07
    ld c, $0b
    rrca
    rrca
    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    and b
    ldh [rNR41], a
    ldh [rHDMA2], a
    ld a, [c]
    adc [hl]
    cp $12
    cp $8c
    db $fc
    ld b, h
    db $fc
    ret z

    ld hl, sp-$50
    ldh a, [$50]
    ldh a, [$30]
    ldh a, [$e0]

jr_023_421f:
    ldh [$0d], a
    dec c
    dec bc
    rrca
    ld a, [bc]
    rrca
    dec d
    ld e, $23
    ccf
    ld sp, $a03f
    cp a
    ret nz

    rst $38
    sub b
    rst $38
    ld h, b
    ld a, a
    ld c, b
    ld a, a
    jr c, jr_023_4277

    dec d
    rra
    ld c, $0f
    inc bc
    inc bc
    ld bc, $6001
    ld h, b
    and b
    ldh [$a0], a
    ldh [$50], a
    ldh a, [$88]
    ld hl, sp+$18
    ld hl, sp+$0a
    ld a, [$fe06]
    ld [de], a
    cp $0c
    db $fc
    inc h
    db $fc
    ld a, b
    ld hl, sp-$78
    ld hl, sp-$30
    ldh a, [$e0]
    jr nz, jr_023_421f

    ret nz

    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    inc b
    rlca
    ld c, d
    ld c, a
    ld [hl], c
    ld a, a
    ld b, b
    ld a, a
    ld [hl+], a
    ccf
    inc de

jr_023_4277:
    rra
    dec c
    rrca
    ld a, [bc]
    rrca
    inc c
    rrca
    rlca
    rlca
    nop
    nop
    ld e, b
    ld e, b
    xor b
    ld hl, sp+$48
    cp b
    db $f4
    db $fc
    ld [bc], a
    cp $12
    cp $7c
    db $ec
    ld hl, sp-$68
    ld a, b
    ret c

    ldh a, [$d0]
    ldh [$60], a
    ldh [$a0], a
    ld h, b
    ldh [rSVBK], a
    ret nc

    ldh a, [$f0]
    nop
    nop
    dec c
    dec c
    ld a, [bc]
    rrca
    add hl, bc
    ld c, $17
    rra
    add hl, hl
    ccf
    ld [hl+], a
    ccf
    and a
    cp l
    rst $18
    ld a, [$fa8f]
    ld d, a
    ld a, h
    ccf
    dec sp
    daa
    dec a
    ld d, $1f
    rrca
    add hl, bc
    rlca
    rlca
    nop
    nop
    ld h, b
    ld h, b
    and b
    ldh [rNR41], a
    ldh [$d0], a
    ldh a, [$28]
    ld hl, sp-$78
    ld hl, sp-$36
    ld a, d
    or $be
    ld [c], a
    cp [hl]
    call nc, $f87c
    cp b
    ret nc

    ld [hl], b
    ldh [$e0], a
    add b
    add b
    nop
    nop
    nop
    nop
    ld a, [de]
    ld a, [de]
    dec d
    rra
    ld [de], a
    dec e
    cpl
    ccf
    ld b, b
    ld a, a
    ld c, b
    ld a, a
    ld a, $37
    rra
    add hl, de
    ld e, $1b
    rrca
    dec bc
    rlca
    ld b, $07
    dec b
    ld b, $07
    inc c
    rrca
    rrca
    rrca
    nop
    nop
    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    and b
    ldh [rNR41], a
    ldh [rHDMA2], a
    ld a, [c]
    adc [hl]
    cp $12
    cp $44
    db $fc
    ret z

    ld hl, sp-$50
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ret nc

    ldh [$e0], a
    nop
    nop
    dec c
    dec c
    dec bc
    rrca
    ld a, [bc]
    rrca
    dec d
    ld e, $23
    ccf
    ld sp, $a03f
    cp a
    ret nz

    rst $38
    sub b
    rst $38
    ld c, b
    ld a, a
    inc a
    ccf
    inc hl
    ccf
    ld d, $1f
    rrca
    add hl, bc
    rlca
    rlca
    nop
    nop
    ld h, b
    ld h, b
    and b
    ldh [$a0], a
    ldh [$50], a
    ldh a, [$88]
    ld hl, sp+$18
    ld hl, sp+$0a
    ld a, [$fe06]
    ld [de], a
    cp $24
    db $fc
    jr c, @-$06

    ld d, b
    ldh a, [$e0]
    ldh [$80], a
    add b
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    dec h
    daa
    jr c, jr_023_43af

    jr nz, jr_023_43b1

    ld sp, $223f
    ccf
    inc de
    rra
    dec c
    rrca
    ld a, [bc]
    rrca
    inc c
    rrca
    rlca
    rlca
    xor h
    xor h
    ld d, h
    db $fc
    and h
    call c, $fe7a
    add c
    rst $38
    add hl, bc
    rst $38
    ld a, $f6
    db $fc
    call z, $ec3c
    cp b
    add sp, -$10
    ret nc

    ldh [$60], a
    ldh [$a0], a
    ld h, b
    ldh [rSVBK], a
    ret nc

    ldh a, [$f0]
    ld b, $06
    dec b
    rlca
    inc b
    rlca
    dec bc
    rrca
    inc d
    rra
    ld de, $531f
    ld e, [hl]
    ld l, a

jr_023_43af:
    ld a, l
    ld b, a

jr_023_43b1:
    ld a, l
    ld l, a
    ld a, b
    ld d, a
    ld a, h
    ccf
    dec sp
    daa
    dec a
    ld d, $1f
    rrca
    add hl, bc
    rlca
    rlca
    or b
    or b
    ld d, b
    ldh a, [$90]
    ld [hl], b
    add sp, -$08
    sub h
    db $fc
    ld b, h
    db $fc
    push hl
    cp l
    ei
    ld e, a
    pop af
    ld e, a
    db $ec
    inc a
    call nc, $f87c
    cp b
    ret nc

    ld [hl], b
    ldh [$e0], a
    add b
    add b
    nop
    nop
    dec c
    dec c
    ld a, [bc]
    rrca
    add hl, bc
    ld c, $17
    rra
    jr nz, @+$41

    inc h
    ccf
    rra
    dec de
    rrca
    inc c
    rrca
    dec c
    dec e
    rla
    rrca
    dec bc
    rlca
    ld b, $07
    dec b
    ld b, $07
    inc c
    rrca
    rrca
    rrca
    ld h, b
    ld h, b
    and b
    ldh [$60], a
    ldh [$a0], a
    ldh [$50], a
    ldh a, [rNR10]
    ldh a, [$29]
    ld sp, hl
    rst $00
    rst $38
    add hl, bc
    rst $38
    adc h
    db $fc
    ld b, h
    db $fc
    ret z

    ld hl, sp-$50
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ret nc

    ldh [$e0], a
    ld b, $06
    dec b
    rlca
    dec b
    rlca
    ld a, [bc]
    rrca
    ld de, $181f
    rra
    ld d, b
    ld e, a
    ld h, b
    ld a, a
    ld c, b
    ld a, a
    ld h, b
    ld a, a
    ld c, b
    ld a, a
    inc a
    ccf
    inc hl
    ccf
    ld d, $1f
    rrca
    add hl, bc
    rlca
    rlca
    or b
    or b
    ret nc

    ldh a, [$50]
    ldh a, [$a8]
    ld a, b
    call nz, $8cfc
    db $fc
    dec b
    db $fd
    inc bc
    rst $38

jr_023_4450:
    add hl, bc
    rst $38
    inc c
    db $fc
    inc h
    db $fc
    jr c, jr_023_4450

    ld d, b
    ldh a, [$e0]
    ldh [$80], a
    add b
    nop
    nop
    ld b, $06
    dec b
    rlca
    ld b, $07
    dec b
    rlca
    ld a, [bc]
    rrca
    ld [$940f], sp
    sbc a
    db $e3
    rst $38
    add b
    rst $38
    ld sp, $223f
    ccf
    inc de
    rra
    dec c
    rrca
    ld a, [bc]
    rrca
    inc c
    rrca
    rlca
    rlca
    or b
    or b
    ld d, b
    ldh a, [$90]
    ld [hl], b
    add sp, -$08
    inc b
    db $fc
    inc h
    db $fc
    ld hl, sp-$28
    ldh a, [$30]
    ldh a, [$b0]
    cp b
    add sp, -$10
    ret nc

    ldh [$60], a
    ldh [$a0], a
    ld h, b
    ldh [rSVBK], a
    ret nc

    ldh a, [$f0]
    ld a, [de]
    ld a, [de]
    dec d
    rra
    ld [de], a
    dec e
    cpl
    ccf
    ld d, d
    ld a, a
    ld b, l
    ld a, a
    ld c, a
    ld a, d
    cp a
    push af
    rra
    push af
    ld l, a
    ld a, b
    ld d, a
    ld a, h
    ccf
    dec sp
    daa
    dec a
    ld d, $1f
    rrca
    add hl, bc
    rlca
    rlca
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$50], a
    ldh a, [rNR10]
    ldh a, [$94]
    db $f4
    db $ec
    ld a, h
    call nz, $ec7c
    inc a
    call nc, $f87c
    cp b
    ret nc

    ld [hl], b
    ldh [$e0], a
    add b
    add b
    nop
    nop
    dec [hl]
    dec [hl]
    ld a, [hl+]
    ccf
    dec h
    dec sp
    ld e, [hl]
    ld a, a
    add c
    rst $38
    sub b
    rst $38
    ld a, h
    ld l, a
    ccf
    inc sp
    inc a
    scf
    dec e
    rla
    rrca
    dec bc
    rlca
    ld b, $07
    dec b
    ld b, $07
    inc c
    rrca
    rrca
    rrca
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    and h
    db $e4
    inc e
    db $fc
    inc h
    db $fc
    adc h
    db $fc
    ld b, h
    db $fc
    ret z

    ld hl, sp-$50
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ret nc

    ldh [$e0], a
    ld a, [de]
    ld a, [de]
    rla
    rra
    dec d
    rra
    ld a, [hl+]
    dec a
    ld b, a
    ld a, a
    ld h, d
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    jr nz, @+$01

    ld h, b
    ld a, a
    ld c, b
    ld a, a
    inc a
    ccf
    inc hl
    ccf
    ld d, $1f
    rrca
    add hl, bc
    rlca
    rlca
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [rNR10], a
    ldh a, [$30]
    ldh a, [rNR14]
    db $f4
    inc c
    db $fc

jr_023_4550:
    inc h
    db $fc
    inc c
    db $fc
    inc h
    db $fc
    jr c, jr_023_4550

    ld d, b
    ldh a, [$e0]
    ldh [$80], a
    add b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld bc, $2603
    daa
    add hl, sp
    ccf
    jr nz, jr_023_45b1

    add hl, de
    rra
    dec bc
    rrca
    dec b
    rlca
    ld b, $07
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    sub b
    ldh a, [$50]
    or b
    add sp, -$08
    inc b
    db $fc
    ld a, b
    ret c

    ldh a, [$b0]
    ld [hl], b
    ldh a, [$b0]
    ret nc

    ret nz

    ld b, b
    ret nz

    add b
    ld b, b
    ret nz

    ld h, b
    ldh [$e0], a
    ldh [rP1], a
    nop
    nop
    nop
    dec b
    dec b
    ld b, $07
    dec b
    ld b, $0b
    rrca
    dec d
    rra
    ld d, e
    ld e, l
    ld l, a
    ld a, [hl]
    ld b, a

jr_023_45b1:
    ld a, [hl]
    scf
    inc a
    rra
    rra
    inc de
    dec e
    ld a, [bc]
    rrca
    rlca
    dec b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    add b

jr_023_45c5:
    ret nz

    nop
    ret nz

    ldh [$e0], a
    db $10
    ldh a, [$d4]
    ld [hl], h
    db $ec
    cp h
    call nz, $d8bc
    jr c, jr_023_45c5

    or b
    ldh [$60], a
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
    ld c, $0e
    add hl, bc
    rrca
    ld a, [bc]
    dec c
    rla
    rra
    jr nz, jr_023_462b

    ld e, $1b
    rrca
    dec c
    ld c, $0f
    dec c
    dec bc
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0302
    inc b
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    add b
    ret nz

    ld h, h
    db $e4
    sbc h
    db $fc
    inc h
    db $fc
    sbc b
    ld hl, sp-$30
    ldh a, [$a0]
    ldh [$60], a
    ldh [$60], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    dec b
    dec b
    rlca
    rlca
    ld b, $07
    add hl, bc
    ld c, $13

jr_023_462b:
    rra
    ld d, b
    ld e, a
    ld h, b
    ld a, a
    ld c, b
    ld a, a
    jr nc, jr_023_4673

    inc e
    rra
    inc de
    rra
    ld a, [bc]
    rrca
    rlca
    dec b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    add b
    ret nz

jr_023_4646:
    add b
    ret nz

    ld h, b
    ldh [$90], a
    ldh a, [rNR14]
    db $f4
    inc c
    db $fc
    inc h
    db $fc
    jr @-$06

    jr nc, jr_023_4646

    ld h, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_023_4673:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    rlca
    dec b
    ld b, $0b
    rrca
    jr z, jr_023_475d

    jr nc, jr_023_476f

    inc h
    ccf
    jr jr_023_4753

    ld d, $1f
    add hl, bc
    rrca
    dec bc
    rrca
    rlca
    inc b
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

    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$28], a
    add sp, $18
    ld hl, sp+$48
    ld hl, sp+$30

jr_023_4753:
    ldh a, [$50]
    ldh a, [$60]
    ldh [$c0], a
    ret nz

    add b
    add b
    nop

jr_023_475d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_023_476f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    rlca
    dec b
    ld b, $0b
    rrca
    jr z, jr_023_485d

    jr nc, jr_023_486f

    inc h
    ccf
    jr jr_023_4853

    inc d
    rra
    dec c
    rrca
    rlca
    rlca
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$28], a
    add sp, $18
    ld hl, sp+$48
    ld hl, sp+$30

jr_023_4853:
    ldh a, [$d0]
    ldh a, [rNR41]
    ldh [$a0], a
    ldh [$c0], a
    ld b, b
    add b

jr_023_485d:
    add b
    nop
    nop
    db $76
    ld c, b
    ld a, c
    ld c, b
    ld a, a
    ld c, b
    add d
    ld c, b
    adc l
    ld c, b
    sub h
    ld c, b
    sbc h
    ld c, b
    or b

jr_023_486f:
    ld c, b
    cp h
    ld c, b
    db $76
    ld c, b
    push bc
    ld c, b
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
    jr jr_023_488b

    inc c
    dec b

jr_023_488b:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_023_4894

    jr @-$01

jr_023_4894:
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
    ld h, e
    inc b
    db $db
    ld c, b
    ldh a, [rHDMA2]
    db $d3
    ld c, b
    ld a, b
    ld a, [hl-]
    rst $38
    ld l, e
    add b
    ld [de], a
    nop
    nop
    ldh a, [rOBP0]
    ldh a, [rOBP1]
    ldh a, [rWY]
    ldh a, [rWX]

jr_023_48e3:
    ldh a, [$4c]
    ldh a, [rKEY1]
    ldh a, [$4e]
    ldh a, [rVBK]
    ldh a, [$50]
    ldh a, [rHDMA1]
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $07
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    dec sp
    dec a
    ld h, $3f
    jr z, jr_023_4947

    inc e
    rra
    rla
    rra
    ld a, [bc]
    ld c, $06
    ld b, $20
    jr nz, jr_023_48e3

    ldh a, [$b0]
    ldh a, [$7c]
    call c, $fe42
    ld [bc], a
    cp $62
    cp [hl]
    db $f4
    ld l, h
    ld a, b
    cp b
    ld h, b
    and b
    ldh a, [$30]
    ret z

    ld a, b
    add sp, -$08
    ldh a, [$f0]
    ret nc

    ldh a, [$e0]
    ldh [$03], a
    inc bc
    dec b
    rlca
    rlca
    rlca
    rrca
    dec c
    ld c, $0b
    db $10
    rra
    jr jr_023_4955

    ld [$040f], sp
    rlca
    rra
    rra
    rla
    ld e, $0b

jr_023_4947:
    ld c, $0b
    rrca
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

    ret nz

jr_023_4955:
    ret nz

    ldh [$60], a
    ldh [$a0], a
    db $10
    ldh a, [$30]
    ret nc

    jr nz, @-$1e

    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    and b
    ldh [$a0], a
    ldh [$e0], a
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    inc b
    inc b
    dec bc
    rrca
    dec c
    rrca
    ld a, $3b
    ld b, d
    ld a, a
    ld b, b
    ld a, a
    ld b, [hl]
    ld a, l
    cpl
    ld [hl], $1e
    dec e
    ld c, $0d
    inc de
    ld e, $17
    rra
    ld c, $0f
    dec bc
    rrca
    dec c
    rrca
    rlca
    rlca
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ld h, b
    ldh [$60], a
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$dc], a
    cp h
    ld h, h
    db $fc
    ld [$10f8], sp
    ldh a, [$78]
    ld hl, sp-$18
    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    dec b
    rlca
    dec b
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld de, $1b1f
    rla
    dec bc
    rrca
    dec b
    ld b, $06
    rlca
    add hl, bc
    rrca
    ld [$0f0f], sp
    ld c, $0b
    rrca
    rlca
    rlca

jr_023_49ce:
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld h, b
    ldh [$a0], a
    ldh [$90], a
    ldh a, [$30]
    ret nc

    and b
    ldh [rLCDC], a
    ret nz

    ld h, b
    ldh [$90], a
    ldh a, [rNR10]
    ldh a, [$a0]
    ld h, b
    ldh [$e0], a
    jr nz, jr_023_49ce

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
    ld b, $07
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    dec sp
    dec a
    ld h, $3f
    db $10
    rra
    ld [$1e0f], sp
    rra
    dec de
    rra
    ld c, $0e
    jr nz, jr_023_4a32

    ret nc

    ldh a, [$b0]
    ldh a, [$7c]
    call c, $fe42
    ld [bc], a
    cp $62
    cp [hl]
    db $f4
    ld l, h
    ld a, b
    cp b
    ld [hl], b
    or b
    ret z

    ld a, b
    add sp, -$08
    ld [hl], b
    ldh a, [$d0]
    ldh a, [$b0]
    ldh a, [$e0]
    ldh [$03], a
    inc bc

jr_023_4a32:
    dec b
    rlca
    rlca
    rlca
    rlca
    dec b
    ld c, $0b
    db $10
    rra
    jr jr_023_4a55

    ld [$040f], sp
    rlca
    rlca
    rlca
    dec bc
    ld c, $0b
    ld c, $0d
    rrca
    dec bc
    rrca
    add hl, bc
    rrca
    ld b, $06
    add b
    add b
    ld b, b
    ret nz

    ret nz

jr_023_4a55:
    ret nz

    ret nz

    ld b, b
    ldh [$a0], a
    db $10
    ldh a, [$30]
    ret nc

    jr nz, @-$1e

    ld b, b
    ret nz

    ldh a, [$f0]
    or b
    ldh a, [$a0]
    ldh [$e0], a
    ldh [$a0], a
    ldh [$c0], a
    ret nz

    nop
    nop
    inc b
    inc b
    dec bc
    rrca
    dec c
    rrca
    ld a, $3b
    ld b, d
    ld a, a
    ld b, b
    ld a, a
    ld b, [hl]
    ld a, l
    cpl
    ld [hl], $1e
    dec e
    ld b, $05
    rrca
    inc c
    inc de
    ld e, $17
    rra
    rrca
    rrca
    dec bc
    rrca
    rlca
    rlca
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ld h, b
    ldh [$60], a
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$de], a
    cp [hl]
    ld h, d
    cp $14
    db $fc
    jr c, @-$06

    add sp, -$08
    ld e, b
    ld a, b
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    dec b
    rlca
    dec b
    rlca
    rrca
    rrca

jr_023_4ab8:
    dec bc
    rrca
    ld de, $1b1f
    rla
    dec bc
    rrca
    dec b
    ld b, $0c
    rrca
    inc de
    rra

jr_023_4ac6:
    db $10
    rra

jr_023_4ac8:
    dec bc
    inc c
    rrca
    rrca
    add hl, bc
    rrca
    ld b, $06
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld h, b
    ldh [$a0], a
    ldh [$90], a
    ldh a, [$30]
    ret nc

    and b
    ldh [rLCDC], a
    ret nz

    ret nz

    ret nz

    jr nz, jr_023_4ac6

    jr nz, jr_023_4ac8

    ldh [$e0], a
    and b
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0302
    dec e
    ld e, $13
    rra

jr_023_4b06:
    ld [$040f], sp
    rlca
    rlca
    rlca
    inc b
    rlca
    rlca
    rlca
    db $10
    db $10
    ld l, b
    ld a, b
    ret c

    ld hl, sp-$44
    db $ec
    ld [bc], a
    cp $61
    cp a
    pop af
    ld l, a
    ld [hl], d
    cp [hl]
    db $ec
    xor h
    ldh [$e0], a
    jr nz, jr_023_4b06

    ld d, b
    ldh a, [$d0]
    ldh a, [$30]
    jr nc, jr_023_4ab8

    adc e
    add a
    add a
    ld bc, $0201
    inc bc
    dec b
    rlca
    rlca
    ld b, $0b
    dec c
    ld [$0e0f], sp
    dec bc
    ld b, $05
    ld b, $07
    rrca
    rrca
    dec d
    rra
    inc d
    rra
    ld a, [bc]
    rrca
    rlca
    rlca
    dec bc
    rrca
    rrca
    rrca
    ret nz

    ret nz

    and b
    ldh [$e0], a
    ldh [$e0], a
    and b
    ret nc

    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [$e0], a
    ldh [$e0], a
    ld h, b
    and b
    ldh [$a0], a
    ldh [$e0], a
    ldh [$90], a
    ldh a, [$f0]
    ldh a, [$08]
    ld [$1e16], sp
    dec de
    rra
    dec a
    scf
    ld b, b
    ld a, a
    add [hl]
    db $fd
    adc a
    or $4e
    ld a, l
    scf
    dec [hl]
    rlca
    rlca
    inc b
    rlca
    ld a, [bc]
    rrca
    dec bc
    rrca
    inc c
    inc c
    pop de
    pop de
    pop hl
    pop hl
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    cp b
    ld a, b
    ret z

    ld hl, sp+$10
    ldh a, [rNR41]
    ldh [$e0], a
    ldh [rNR41], a
    ldh [$e0], a
    ldh [$03], a
    inc bc
    dec b
    rlca
    dec b
    rlca
    rlca
    rlca
    add hl, bc
    rrca
    ld [$0d0f], sp
    dec bc
    dec c
    dec bc
    ld b, $07
    dec b
    rlca
    ld b, $07
    inc b
    rlca
    inc b
    rlca
    rlca
    rlca
    add hl, bc
    rrca
    rrca
    rrca
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [$e0], a
    ldh [$60], a
    ldh [$b8], a
    ld a, b
    ret z

    ld hl, sp+$10
    ldh a, [$e0]
    and b
    ldh [$60], a
    ret nc

    ldh a, [$f0]
    ldh a, [rP1]
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    ld bc, $0d01
    dec c
    rrca
    rrca
    ld e, $1f
    inc de
    rra
    add hl, bc
    rrca
    inc b
    rlca
    rlca
    rlca
    inc b
    rlca
    rlca
    rlca
    db $10
    db $10
    ld l, b
    ld a, b
    ret c

    ld hl, sp-$44
    db $ec
    ld [bc], a
    cp $61
    cp a
    pop af
    ld l, a
    ld [hl], d
    cp [hl]
    db $ec
    xor h
    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    add b
    add b
    add b
    add b
    ld bc, $0201
    inc bc
    dec b
    rlca
    rlca
    ld b, $0b
    dec c
    ld [$0e0f], sp
    dec bc
    ld h, [hl]
    ld h, l
    ld h, [hl]
    ld h, a
    dec sp
    ccf
    dec de
    rra
    ld d, $1f
    dec bc
    rrca
    rlca
    ld b, $0b
    rrca
    ld c, $0e
    ret nz

    ret nz

    and b
    ldh [$e0], a
    ldh [$e0], a
    and b
    ret nc

    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$e0], a
    ldh [$90], a
    ldh a, [$f0]
    ldh a, [$08]
    ld [$1e16], sp
    dec de
    rra
    dec a
    scf
    ld b, b
    ld a, a
    add [hl]
    db $fd
    adc a
    or $4e
    ld a, l
    scf
    dec [hl]
    ld b, $07
    dec b
    rlca
    dec b
    rlca
    inc bc
    inc bc
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    or b
    or b
    ld [hl], b
    ldh a, [$f8]
    ld a, b
    adc b
    ld hl, sp+$10
    ldh a, [rNR41]
    ldh [$e0], a
    ldh [rNR41], a
    ldh [$e0], a
    ldh [$03], a
    inc bc
    dec b
    rlca
    dec b
    rlca
    rlca
    rlca
    add hl, bc
    rrca
    ld [$0d0f], sp
    dec bc
    dec c
    dec bc
    ld b, $07
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc b
    rlca
    inc b
    rlca
    rlca
    rlca
    add hl, bc
    rrca
    rrca
    rrca
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [$e6], a
    and $56
    or $7c
    db $fc
    adc b
    ld hl, sp+$10
    ldh a, [$e0]
    and b
    ldh [$60], a
    ret nc

    ldh a, [rSVBK]
    ld [hl], b
    nop
    nop
    nop
    nop
    ld bc, $3101
    ld sp, $3333
    dec de
    dec de
    rrca
    rrca
    dec bc
    rrca
    ld b, $07
    dec e
    rra

jr_023_4d04:
    inc de
    rra
    ld [$040f], sp
    rlca
    rlca
    rlca
    inc b
    rlca
    rlca
    rlca
    db $10
    db $10
    ld l, b
    ld a, b
    ret c

    ld hl, sp-$44
    db $ec
    ld [bc], a
    cp $61
    cp a
    pop af
    ld l, a
    ld [hl], d
    cp [hl]
    db $ec
    db $ec
    jr nz, jr_023_4d04

    ret nz

    ret nz

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
    ld bc, $0201
    inc bc
    dec b
    rlca
    rst $00
    add $cb
    call $cfc8
    ld l, [hl]
    ld l, e
    ld a, $3d
    ld d, $1f
    rrca
    rrca
    ld a, [de]
    rra
    dec d
    rra
    rrca
    ld c, $07
    ld b, $0b
    rrca
    ld c, $0e
    ret nz

    ret nz

    and b
    ldh [$e0], a
    ldh [$e0], a
    and b
    ret nc

    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$e0], a
    ldh [$90], a
    ldh a, [$f0]
    ldh a, [$08]
    ld [$1e16], sp
    dec de
    rra
    dec a
    scf
    ld b, b
    ld a, a
    add [hl]
    db $fd
    adc a
    or $4e
    ld a, l
    dec [hl]
    scf
    rlca
    ld b, $03
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    add b
    add b
    adc h
    adc h
    call z, $cccc
    call z, $9898
    ldh a, [$f0]
    and b
    ldh [$78], a
    ld hl, sp-$78
    ld hl, sp+$10
    ldh a, [rNR41]
    ldh [$e0], a
    ldh [rNR41], a
    ldh [$e0], a
    ldh [$03], a
    inc bc
    dec b
    rlca
    dec b
    rlca
    rlca
    rlca
    add hl, bc
    rrca
    ld [$0d0f], sp
    dec bc
    dec c
    dec bc
    ld b, $07
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    rlca
    inc b
    rlca
    rlca
    rlca
    add hl, bc
    rrca
    rrca
    rrca
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    jp $e3c3


    db $e3
    db $e3
    db $e3
    xor [hl]
    xor $b4
    db $fc
    adc b
    ld hl, sp-$08
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [$e0]
    and b
    ldh [$60], a
    ret nc

    ldh a, [rSVBK]
    ld [hl], b
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    ld h, a
    ld h, a
    ld h, a
    ld h, a
    dec [hl]
    scf
    dec de
    rra
    rrca
    ld c, $04
    rlca
    dec de
    rra
    db $10
    rra

jr_023_4e08:
    ld c, $09
    rlca
    rlca

jr_023_4e0c:
    inc b
    rlca
    rlca
    rlca
    ret nz

    ret nz

    and b
    ldh [$a0], a
    ldh [rNR23], a
    ld hl, sp+$04
    db $fc
    inc [hl]
    call c, $ac74
    ld a, b
    cp b
    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    jr nz, jr_023_4e08

    ldh [$e0], a
    jr nz, jr_023_4e0c

    and b
    ldh [$c0], a
    ret nz

    nop
    nop
    ld bc, $0101
    ld bc, $0706
    ld h, [hl]
    ld h, a
    ld [hl], d
    ld [hl], e
    ld e, $1f
    ld a, [bc]
    rrca
    ld b, $07
    ld a, [bc]
    rrca

jr_023_4e44:
    inc a
    ccf
    ld hl, $163f
    rra
    add hl, bc
    rrca
    dec bc
    rrca
    ld b, $06
    ld b, b
    ld b, b
    and b
    ldh [$78], a
    ld hl, sp-$1c
    cp h
    ld [bc], a
    cp $c2
    ld a, [hl]
    db $e4
    call c, Call_023_78f8
    ldh [$e0], a
    jr nz, jr_023_4e44

    ret nz

    ret nz

    ret nz

    ld b, b
    and b
    ldh [$e0], a
    ldh [$90], a
    ldh a, [$f0]
    ldh a, [$03]
    inc bc
    dec b
    rlca
    rrca
    dec c
    db $10
    rra

jr_023_4e78:
    jr nz, jr_023_4eb9

    ld hl, $113e
    rra
    rrca
    ld c, $03
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    dec b
    ld b, $07
    ld b, $05
    rlca
    dec b
    rlca

jr_023_4e8e:
    inc bc
    inc bc
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ld b, b
    jr nz, jr_023_4e78

    and [hl]
    and $e6
    and [hl]
    call z, $f8cc
    ld hl, sp+$50
    ldh a, [$f8]
    ld hl, sp-$58
    ld a, b
    sub b
    ld [hl], b
    jr nz, @-$1e

    ldh [$e0], a
    jr nz, jr_023_4e8e

    ldh [$e0], a
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    ld e, $1f
    daa
    dec a
    ld b, b

jr_023_4eb9:
    ld a, a
    ld b, e
    ld a, [hl]
    daa
    dec sp
    rra
    ld e, $07
    rlca
    inc b
    rlca
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc b
    rlca
    ld b, $07
    add hl, bc
    rrca
    rrca
    rrca
    nop
    nop
    add b
    add b
    add b
    add b
    ld h, b
    ldh [$63], a
    db $e3
    ld b, e
    jp $e666


    db $ec
    db $ec
    ld e, b
    ld hl, sp-$48
    ld hl, sp+$48
    ld hl, sp+$10
    ldh a, [rNR41]
    ldh [$d0], a
    ldh a, [$b0]
    ldh a, [$60]
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
    inc bc
    ld b, $07
    ld b, $07
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    dec b
    rlca
    ld h, $3f
    jr z, jr_023_4f47

    inc e
    rra
    rla
    rra
    ld a, [bc]
    ld c, $06
    ld b, $00
    nop
    jr nz, jr_023_4f34

    ret nc

    ldh a, [$b0]
    ldh a, [$7c]
    call c, $fe42
    ld [bc], a
    cp $62
    cp [hl]
    db $f4
    ld l, h
    ld a, b
    cp b
    ldh a, [$30]
    ret z

    ld a, b
    add sp, -$08
    ldh a, [$f0]
    ret nc

    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc bc
    inc bc

jr_023_4f34:
    dec b
    rlca
    rlca
    rlca
    rrca
    dec c
    ld c, $0b
    db $10
    rra
    jr jr_023_4f57

    ld [$040f], sp
    rlca
    rla
    ld e, $0b

jr_023_4f47:
    ld c, $0b
    rrca
    rrca
    rrca
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

    ret nz

jr_023_4f57:
    ret nz

    ldh [$60], a
    ldh [$a0], a
    db $10
    ldh a, [$30]
    ret nc

    jr nz, @-$1e

    ld b, b
    ret nz

    ret nz

    ret nz

    and b
    ldh [$a0], a
    ldh [$e0], a
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    inc b
    inc b
    dec bc
    rrca
    dec c
    rrca
    ld a, $3b
    ld b, d
    ld a, a
    ld b, b
    ld a, a
    ld b, [hl]
    ld a, l
    cpl
    ld [hl], $1e
    dec e
    inc de
    ld e, $17
    rra
    ld c, $0f
    dec bc
    rrca
    dec c
    rrca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ld h, b
    ldh [$60], a
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$64], a
    db $fc
    ld [$10f8], sp
    ldh a, [$78]
    ld hl, sp-$18
    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    inc bc
    inc bc
    dec b
    rlca
    dec b
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld de, $1b1f
    rla
    dec bc
    rrca
    dec b
    ld b, $09
    rrca
    ld [$0f0f], sp
    ld c, $0b
    rrca
    rlca
    rlca

jr_023_4fce:
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

    ld h, b
    ldh [$a0], a
    ldh [$90], a
    ldh a, [$30]
    ret nc

    and b
    ldh [rLCDC], a
    ret nz

    sub b
    ldh a, [rNR10]
    ldh a, [$a0]
    ld h, b
    ldh [$e0], a
    jr nz, jr_023_4fce

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0302
    dec sp
    dec a
    ld h, $3f
    jr z, jr_023_5047

    inc e
    rra
    rla
    rra
    ld a, [bc]
    ld c, $06
    ld b, $10
    db $10
    ld l, b
    ld a, b
    ret c

    ld hl, sp-$42
    xor $21
    rst $38
    ld bc, $31ff
    rst $18
    ld a, d
    or [hl]
    cp h
    call c, $a060
    ldh a, [$30]
    ret z

    ld a, b
    add sp, -$08
    ldh a, [$f0]
    ret nc

    ldh a, [$e0]
    ldh [rSB], a
    ld bc, $0302
    inc bc
    inc bc
    rlca
    ld b, $07
    dec b
    ld [$0c0f], sp
    dec bc
    inc b
    rlca
    ld [bc], a
    inc bc
    rra
    rra
    rla
    ld e, $0b

jr_023_5047:
    ld c, $0b
    rrca
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    and b
    ldh [$e0], a
    ldh [$f0], a
    or b
    ld [hl], b
    ret nc

    ld [$18f8], sp
    add sp, $10
    ldh a, [rNR41]
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    and b
    ldh [$a0], a
    ldh [$e0], a
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    ld [bc], a
    ld [bc], a
    dec b
    rlca
    ld b, $07
    rra
    dec e
    ld hl, $203f
    ccf
    inc hl
    ld a, $17
    dec de
    rrca
    ld c, $0e
    dec c
    inc de
    ld e, $17
    rra
    ld c, $0f
    dec bc
    rrca
    dec c
    rrca
    rlca
    rlca
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ld h, b
    ldh [$30], a
    ldh a, [$30]
    ldh a, [rNR41]
    ldh [$a0], a
    ld h, b
    ld d, b
    ldh a, [$dc]
    cp h
    ld h, h
    db $fc
    ld [$10f8], sp
    ldh a, [$78]
    ld hl, sp-$18
    ld hl, sp+$70
    ld [hl], b
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    rlca
    rlca
    dec b
    rlca
    ld [$0d0f], sp
    dec bc
    dec b
    rlca
    ld [bc], a
    inc bc
    ld b, $07
    add hl, bc
    rrca
    ld [$0f0f], sp
    ld c, $0b
    rrca
    rlca
    rlca

jr_023_50ce:
    nop
    nop
    ret nz

    ret nz

    and b
    ldh [$a0], a
    ldh [$b0], a
    ldh a, [$d0]
    ldh a, [$c8]
    ld hl, sp-$68
    add sp, -$30
    ldh a, [$a0]
    ld h, b
    ld h, b
    ldh [$90], a
    ldh a, [rNR10]
    ldh a, [$a0]
    ld h, b
    ldh [$e0], a
    jr nz, jr_023_50ce

    ret nz

    ret nz

    nop
    nop
    ld bc, $0701
    rlca
    ld b, $07
    inc c
    rrca
    inc c
    rrca
    inc b
    rlca
    dec b
    ld b, $0a
    rrca
    dec sp
    dec a
    ld h, $3f
    jr z, jr_023_5147

    inc e
    rra
    rla
    rra
    ld a, [bc]
    ld c, $06
    ld b, $40
    ld b, b
    and b
    ldh [$60], a
    ldh [$f8], a
    cp b
    add h
    db $fc
    inc b
    db $fc
    call nz, $e87c
    ret c

    ldh a, [rSVBK]
    ld h, b
    and b
    ldh a, [$30]
    ret z

    ld a, b
    add sp, -$08
    ldh a, [$f0]
    ret nc

    ldh a, [$e0]
    ldh [rTAC], a
    rlca
    ld a, [bc]
    rrca
    rrca
    rrca
    rra
    ld a, [de]
    dec e
    rla
    jr nz, jr_023_517b

jr_023_513c:
    jr nc, jr_023_516d

    db $10
    rra
    ld [$1f0f], sp
    rra
    rla
    ld e, $0b

jr_023_5147:
    ld c, $0b
    rrca
    rrca
    rrca
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
    ret nz

    ret nz

    ret nz

    ld b, b
    jr nz, jr_023_513c

    ld h, b
    and b
    ld b, b
    ret nz

    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    and b
    ldh [$a0], a
    ldh [$e0], a
    ldh [rNR41], a

jr_023_516d:
    ldh [$c0], a
    ret nz

    ld [$1608], sp
    ld e, $1b
    rra
    ld a, l
    ld [hl], a
    add h
    rst $38
    add b

jr_023_517b:
    rst $38
    adc h
    ei
    ld e, [hl]
    ld l, l
    dec a
    dec sp
    ld c, $0d
    inc de
    ld e, $17
    rra
    ld c, $0f
    dec bc
    rrca
    dec c
    rrca
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
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    call c, $64bc
    db $fc
    ld [$10f8], sp
    ldh a, [$78]
    ld hl, sp-$18
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld e, $1f
    rla
    rra
    inc hl
    ccf

jr_023_51bc:
    ld [hl], $2f
    rla
    rra
    ld a, [bc]
    dec c
    ld b, $07
    add hl, bc
    rrca
    ld [$0f0f], sp
    ld c, $0b
    rrca
    rlca
    rlca

jr_023_51ce:
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ld b, b
    ret nz

    jr nz, jr_023_51bc

    ld h, b
    and b
    ld b, b
    ret nz

    add b
    add b
    ld h, b
    ldh [$90], a
    ldh a, [rNR10]
    ldh a, [$a0]
    ld h, b
    ldh [$e0], a
    jr nz, jr_023_51ce

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
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $1f03
    dec e
    inc d
    rra
    inc c
    rrca
    dec bc
    rrca
    ld b, $06
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    and b
    ldh [$78], a
    ld hl, sp+$44
    db $fc
    ld b, h
    cp h
    add sp, $58
    ld [hl], b
    or b
    ld b, b
    add b
    ret nc

    ld [hl], b
    ret nc

    ldh a, [$e0]
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    rlca
    dec b
    ld b, $07
    inc c
    dec bc

jr_023_523e:
    inc b
    rlca
    nop
    inc bc
    rrca
    rrca
    rlca
    ld b, $07
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
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    add b
    jr nz, jr_023_523e

    nop
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    add b
    ret nz

    add b
    ret nz

    ret nz

    ret nz

    nop
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
    dec b
    rlca
    ld e, $1f
    ld [hl+], a
    ccf
    ld [hl+], a
    dec a
    rla
    ld a, [de]
    ld c, $0d
    ld b, $05
    dec bc
    rrca
    ld b, $07
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
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    ret nz

    ld hl, sp-$48
    db $10
    ldh a, [rNR41]
    ldh [rSVBK], a
    ldh a, [$d0]
    ldh a, [$60]
    ld h, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0103
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    dec bc

jr_023_52be:
    rlca
    rlca
    ld bc, $0202
    inc bc
    inc b
    rlca

jr_023_52c6:
    rlca
    ld b, $07
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
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    ret nz

    jr nz, jr_023_52be

    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_023_52c6

    add b
    ld b, b
    ret nz

    ret nz

    nop
    ret nz

    ret nz

    ret nz

    nop
    nop
    ld [bc], a
    ld d, e
    dec b
    ld d, e
    dec bc
    ld d, e
    ld c, $53
    add hl, de
    ld d, e
    jr nz, jr_023_534f

    jr z, @+$55

    inc a
    ld d, e
    ld c, b
    ld d, e
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
    jr jr_023_5317

    inc c
    dec b

jr_023_5317:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_023_5320

    jr @-$01

jr_023_5320:
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

jr_023_534f:
    ld [de], a
    db $fd

    db $06, $04, $59, $53, $70, $59, $59, $53, $70, $53, $70, $54, $70, $54, $70, $54

    ld [hl], b
    ld d, h
    ld [hl], b
    ld d, h

    db $70, $55

    ld [hl], b
    ld d, [hl]
    ld [hl], b
    ld d, a
    ld [hl], b
    ld e, b
    nop
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    inc de
    inc e
    rla
    jr @+$3e

    inc hl
    jr c, @+$29

    jr c, @+$29

    inc a

jr_023_537f:
    inc hl
    rla
    add hl, de
    rla
    add hl, de
    rrca
    rrca
    inc bc
    ld [bc], a
    rlca
    dec b
    rrca
    rrca
    dec bc
    rrca
    rlca
    rlca
    ret nz

    ret nz

    or b
    ld [hl], b
    ret z

jr_023_5395:
    jr c, jr_023_537f

    jr jr_023_5395

    inc b

jr_023_539a:
    ld a, h
    or h
    ld a, b
    ret z

    ld hl, sp-$68

jr_023_53a0:
    ld hl, sp+$18
    ld hl, sp+$08
    ldh a, [$90]
    ldh [$e0], a
    jr nc, jr_023_539a

    add sp, -$08
    ret c

    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    ld c, $0d
    ld e, $11
    rla
    jr jr_023_53e0

    jr c, jr_023_53ea

    inc sp
    ccf
    inc h

jr_023_53be:
    ccf
    ld a, [hl+]
    rra
    ld a, [de]
    rra
    jr jr_023_5404

    inc l
    dec sp
    ccf
    rlca
    ld b, $07
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ret nz

    ret nz

    jr nc, @-$0e

    jr jr_023_53be

    jr c, jr_023_53a0

    db $fc
    inc b
    db $f4
    call z, Call_000_2cf4
    db $f4
    ld e, h

jr_023_53e0:
    ld hl, sp+$58
    ldh a, [rNR10]
    ld hl, sp+$38
    call c, $dcf4
    ld [hl], h

jr_023_53ea:
    ld hl, sp-$08
    ldh [$e0], a
    add b
    add b
    inc bc
    inc bc
    dec c
    ld c, $11
    ld e, $13
    inc e
    ccf
    jr nz, jr_023_5439

    dec l
    ld e, $13
    rra

jr_023_53ff:
    add hl, de
    rra
    jr jr_023_5422

    db $10

jr_023_5404:
    rrca
    add hl, bc
    rlca
    ld b, $0f
    dec c
    rra
    rra
    rla
    rra
    ld c, $0e
    ret nz

    ret nz

    ldh a, [$30]
    ret z

jr_023_5415:
    jr c, jr_023_53ff

    jr jr_023_5415

    inc b
    ld a, h
    add h
    inc a
    call nz, $c43c
    cp b
    ret z

jr_023_5422:
    add sp, -$68
    ldh a, [$f0]
    and b
    ldh [$e0], a
    ldh [$d0], a
    ldh a, [$90]
    ldh a, [$e0]
    ldh [$03], a
    inc bc
    inc c
    rrca
    jr jr_023_544d

    jr jr_023_544f

    inc a

jr_023_5439:
    inc hl
    ccf
    jr nz, jr_023_546c

    jr nc, jr_023_546e

    jr nc, jr_023_5460

    db $10
    ld e, $19
    ld a, $2d
    dec sp
    ccf
    inc b
    rlca

jr_023_544a:
    rlca
    rlca
    inc b

jr_023_544d:
    rlca
    inc bc

jr_023_544f:
    inc bc
    ret nz

    ret nz

    ld [hl], b
    or b
    ld a, b
    adc b
    ld a, b
    adc b
    db $e4
    inc e
    db $e4
    inc e

jr_023_545c:
    db $f4
    inc c

jr_023_545e:
    db $fc
    inc b

jr_023_5460:
    jr jr_023_544a

    jr jr_023_545c

    jr c, jr_023_545e

    call c, $1cf4
    db $f4
    ld hl, sp-$08

jr_023_546c:
    ldh [$e0], a

jr_023_546e:
    add b
    add b
    inc bc
    inc bc
    rrca
    inc c
    inc de
    inc e
    rla
    jr @+$3e

    inc hl
    jr c, @+$29

    jr c, @+$29

    inc a

jr_023_547f:
    inc hl
    rla
    add hl, de
    rla
    add hl, de
    rrca
    rrca
    dec b
    rlca
    rlca
    rlca
    dec bc
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    ret nz

    ret nz

    or b
    ld [hl], b
    ret z

jr_023_5495:
    jr c, jr_023_547f

    jr jr_023_5495

    inc b
    ld a, h
    or h
    ld a, b
    ret z

    ld hl, sp-$68

jr_023_54a0:
    ld hl, sp+$18
    ld hl, sp+$08
    ldh a, [$90]
    ldh [$60], a
    ldh a, [$b0]
    ld hl, sp-$08
    add sp, -$08
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    ld c, $0d
    ld e, $11
    rla
    jr jr_023_54e0

    jr c, jr_023_54ea

    inc sp
    ccf
    inc h

jr_023_54be:
    ccf
    ld a, [hl+]
    rra
    ld a, [de]
    rrca
    ld [$1c1f], sp
    dec sp
    cpl
    dec sp
    ld l, $1f
    rra
    rlca
    rlca

jr_023_54ce:
    ld bc, $c001
    ret nz

    jr nc, @-$0e

    jr jr_023_54be

    jr c, jr_023_54a0

    db $fc
    inc b
    db $f4
    call z, Call_000_2cf4
    db $f4
    ld e, h

jr_023_54e0:
    ld hl, sp+$58
    ld hl, sp+$18
    db $fc
    inc [hl]
    call c, $e0fc
    ld h, b

jr_023_54ea:
    ldh [$e0], a
    jr nz, jr_023_54ce

    ret nz

    ret nz

    inc bc
    inc bc
    dec c
    ld c, $11
    ld e, $13
    inc e
    ccf
    jr nz, jr_023_5539

    dec l
    ld e, $13
    rra

jr_023_54ff:
    add hl, de
    rra
    jr jr_023_5522

    db $10
    rrca
    add hl, bc
    rlca
    rlca
    inc c
    rrca
    rla
    rra
    dec de
    rra
    ld c, $0e
    ret nz

    ret nz

    ldh a, [$30]
    ret z

jr_023_5515:
    jr c, jr_023_54ff

    jr jr_023_5515

    inc b
    ld a, h
    add h
    inc a
    call nz, $c43c
    cp b
    ret z

jr_023_5522:
    add sp, -$68
    ldh a, [$f0]
    ldh [$60], a
    ldh [$a0], a
    ldh a, [$f0]
    ret nc

    ldh a, [$e0]
    ldh [$03], a
    inc bc
    inc c
    rrca
    jr jr_023_554d

    jr @+$19

    inc a

jr_023_5539:
    inc hl
    ccf
    jr nz, @+$31

    jr nc, @+$31

    jr nc, jr_023_5560

    db $10
    ld c, $09
    ld e, $1d
    dec sp
    cpl
    jr c, jr_023_5579

jr_023_554a:
    rra
    rra
    rlca

jr_023_554d:
    rlca
    ld bc, $c001
    ret nz

    ld [hl], b
    or b
    ld a, b
    adc b
    ld a, b
    adc b
    db $e4
    inc e
    db $e4
    inc e

jr_023_555c:
    db $f4
    inc c
    db $fc
    inc b

jr_023_5560:
    jr jr_023_554a

    jr jr_023_555c

    inc a
    db $f4
    call c, Call_000_20fc
    ldh [$e0], a
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    inc de
    inc e
    rla

jr_023_5579:
    jr @+$3e

    inc hl
    jr c, @+$29

    jr c, @+$29

    inc a

jr_023_5581:
    inc hl
    rla
    add hl, de
    rrca
    rrca
    inc bc
    ld [bc], a
    rlca
    dec b
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

    or b
    ld [hl], b
    ret z

jr_023_5597:
    jr c, jr_023_5581

    jr jr_023_5597

    inc b
    ld a, h
    or h
    ld a, b
    ret z

    ld hl, sp-$68

jr_023_55a2:
    ld hl, sp+$18
    ldh a, [$90]
    ldh [$e0], a
    jr nc, @-$0e

    add sp, -$08
    ret c

    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    inc bc
    inc bc
    ld c, $0d
    ld e, $11
    rla
    jr jr_023_55e2

    jr c, jr_023_55ec

    inc sp
    ccf
    inc h

jr_023_55c0:
    ccf
    ld a, [hl+]
    rra
    ld a, [de]
    ccf
    inc l

jr_023_55c6:
    dec sp
    ccf
    rlca
    ld b, $07
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_023_55c6

    jr jr_023_55c0

    jr c, jr_023_55a2

    db $fc
    inc b
    db $f4
    call z, Call_000_2cf4
    db $f4
    ld e, h

jr_023_55e2:
    ld hl, sp+$58
    ld hl, sp+$38
    call c, $dcf4
    ld [hl], h
    ld hl, sp-$08

jr_023_55ec:
    ldh [$e0], a
    add b
    add b
    nop
    nop
    inc bc
    inc bc
    dec c
    ld c, $11
    ld e, $13
    inc e
    ccf
    jr nz, jr_023_563b

    dec l
    ld e, $13
    rra

jr_023_5601:
    add hl, de
    rra
    jr jr_023_5614

    add hl, bc
    rlca
    ld b, $0f
    dec c
    rra
    rra
    rla
    rra
    ld c, $0e
    nop
    nop
    ret nz

    ret nz

jr_023_5614:
    ldh a, [$30]
    ret z

jr_023_5617:
    jr c, jr_023_5601

    jr jr_023_5617

    inc b
    ld a, h
    add h
    inc a
    call nz, $c43c
    cp b
    ret z

    ldh a, [$f0]
    and b
    ldh [$e0], a
    ldh [$d0], a
    ldh a, [$90]
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc bc
    inc bc
    inc c
    rrca
    jr jr_023_564f

    jr jr_023_5651

    inc a

jr_023_563b:
    inc hl
    ccf
    jr nz, jr_023_566e

    jr nc, jr_023_5670

    jr nc, jr_023_5662

    db $10
    ld a, $2d
    dec sp
    ccf
    inc b
    rlca
    rlca
    rlca

jr_023_564c:
    inc b
    rlca
    inc bc

jr_023_564f:
    inc bc
    nop

jr_023_5651:
    nop
    ret nz

    ret nz

    ld [hl], b
    or b
    ld a, b
    adc b
    ld a, b
    adc b
    db $e4
    inc e
    db $e4
    inc e

jr_023_565e:
    db $f4
    inc c
    db $fc
    inc b

jr_023_5662:
    jr jr_023_564c

    jr c, jr_023_565e

    call c, $1cf4
    db $f4
    ld hl, sp-$08
    ldh [$e0], a

jr_023_566e:
    add b
    add b

jr_023_5670:
    ld bc, $0701
    ld b, $09
    ld c, $0b
    inc c
    ld e, $11
    inc e
    inc de
    inc e
    inc de
    ld e, $11
    dec bc
    inc c
    rla
    add hl, de
    rrca
    rrca
    inc bc
    ld [bc], a
    rlca
    dec b
    rrca
    rrca
    dec bc
    rrca
    rlca
    rlca
    ldh [$e0], a
    ret c

    jr c, @-$1a

    inc e
    db $f4
    inc c
    ld a, [hl]
    add d

jr_023_569a:
    ld a, $da
    inc a
    db $e4
    ld a, h
    call z, $8cfc
    ld hl, sp+$08
    ldh a, [$90]
    ldh [$e0], a
    jr nc, jr_023_569a

    add sp, -$08
    ret c

    ld hl, sp+$70
    ld [hl], b
    ld bc, $0701
    ld b, $0f
    ld [$0c0b], sp
    inc de
    inc e
    rla
    add hl, de
    rra
    ld [de], a
    rra
    dec d
    rrca
    dec c
    rra
    jr jr_023_5704

    inc l
    dec sp
    ccf
    rlca
    ld b, $07
    rlca

jr_023_56cc:
    inc b
    rlca
    inc bc
    inc bc
    ldh [$e0], a
    jr jr_023_56cc

    inc c
    db $f4
    sbc h
    ld h, h
    cp $02
    ld a, [$fae6]
    ld d, $fa
    ld l, $fc
    inc l
    ldh a, [rNR10]
    ld hl, sp+$38
    call c, $dcf4
    ld [hl], h
    ld hl, sp-$08
    ldh [$e0], a
    add b
    add b
    ld bc, $0601
    rlca
    ld [$090f], sp
    ld c, $1f
    db $10
    rra
    ld d, $0f
    add hl, bc
    rrca
    inc c
    rrca
    inc c
    rra
    db $10

jr_023_5704:
    rrca
    add hl, bc
    rlca
    ld b, $0f
    dec c
    rra
    rra
    rla
    rra
    ld c, $0e
    ldh [$e0], a
    ld hl, sp+$18
    db $e4
    inc e
    db $f4
    inc c
    cp $02
    ld a, $c2
    ld e, $e2
    sbc [hl]
    ld [c], a
    call c, $e864
    sbc b
    ldh a, [$f0]
    and b
    ldh [$e0], a
    ldh [$d0], a
    ldh a, [$90]
    ldh a, [$e0]
    ldh [rSB], a
    ld bc, $0706
    inc c
    dec bc
    inc c
    dec bc
    ld e, $11
    rra
    db $10
    rla
    jr @+$19

    jr jr_023_5750

    ld [$191e], sp
    ld a, $2d
    dec sp
    ccf
    inc b
    rlca
    rlca
    rlca
    inc b
    rlca
    inc bc
    inc bc

jr_023_5750:
    ldh [$e0], a
    jr c, @-$26

    inc a
    call nz, $c43c
    ld [hl], d
    adc [hl]
    ld a, [c]
    ld c, $fa
    ld b, $fe
    ld [bc], a
    adc h
    ld [hl], h
    jr @-$06

    jr c, @-$06

    call c, $1cf4
    db $f4
    ld hl, sp-$08
    ldh [$e0], a
    add b
    add b
    rlca
    rlca
    rra
    jr jr_023_579c

    jr c, jr_023_57a6

    jr nc, jr_023_57f2

    ld b, [hl]
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld a, c
    ld b, a
    cpl
    ld [hl-], a
    rla
    add hl, de
    rrca
    rrca
    inc bc
    ld [bc], a
    rlca
    dec b
    rrca
    rrca
    dec bc
    rrca
    rlca
    rlca
    add b

jr_023_5791:
    add b
    ld h, b
    ldh [$90], a
    ld [hl], b
    ret nc

    jr nc, jr_023_5791

    ld [$68f8], sp

jr_023_579c:
    ldh a, [$90]
    ldh a, [$30]
    ldh a, [$30]
    ld hl, sp+$08
    ldh a, [$90]

jr_023_57a6:
    ldh [$e0], a
    jr nc, @-$0e

    add sp, -$08
    ret c

    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    inc e
    dec de
    inc a
    inc hl
    ld l, $31
    ld c, a
    ld [hl], b
    ld e, a
    ld h, a
    ld a, a
    ld c, b
    ld a, a
    ld d, h
    ccf
    inc [hl]
    rra
    jr jr_023_5804

    inc l
    dec sp
    ccf
    rlca
    ld b, $07
    rlca
    inc b
    rlca
    inc bc
    inc bc
    add b
    add b
    ld h, b
    ldh [$30], a
    ret nc

    ld [hl], b
    sub b
    ld hl, sp+$08
    add sp, -$68
    add sp, $58
    add sp, -$48
    ldh a, [$b0]
    ldh a, [rNR10]
    ld hl, sp+$38
    call c, $dcf4
    ld [hl], h
    ld hl, sp-$08
    ldh [$e0], a
    add b
    add b
    rlca
    rlca

jr_023_57f2:
    dec de
    inc e
    inc hl
    inc a
    daa
    jr c, jr_023_5878

    ld b, b
    ld a, h
    ld e, e
    inc a
    daa
    ld a, $33
    ccf
    ld sp, $101f

jr_023_5804:
    rrca
    add hl, bc
    rlca
    ld b, $0f
    dec c
    rra
    rra
    rla
    rra
    ld c, $0e
    add b

jr_023_5811:
    add b
    ldh [$60], a
    sub b
    ld [hl], b
    ret nc

    jr nc, jr_023_5811

    ld [$08f8], sp
    ld a, b
    adc b
    ld a, b
    adc b
    ld [hl], b
    sub b
    add sp, -$68
    ldh a, [$f0]
    and b
    ldh [$e0], a
    ldh [$d0], a
    ldh a, [$90]
    ldh a, [$e0]
    ldh [rTAC], a
    rlca
    jr @+$21

    jr nc, @+$31

    jr nc, @+$31

    ld a, c
    ld b, [hl]
    ld a, a
    ld b, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld a, $21
    ld e, $19
    ld a, $2d
    dec sp
    ccf
    inc b
    rlca
    rlca
    rlca
    inc b
    rlca
    inc bc
    inc bc
    add b
    add b
    ldh [$60], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ret z

    jr c, @-$36

    jr c, @-$16

    jr @-$06

    ld [$d030], sp
    jr @-$06

    jr c, @-$06

    call c, $1cf4

jr_023_5869:
    db $f4
    ld hl, sp-$08
    ldh [$e0], a
    add b
    add b
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    dec bc
    inc c

jr_023_5878:
    dec bc
    inc c
    inc e
    inc de
    inc e
    inc de
    inc e
    inc de
    dec bc
    dec c
    dec bc
    dec c
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0707
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

jr_023_5893:
    ret nz

    and b
    ld h, b
    ret nc

    jr nc, jr_023_5869

    jr nc, jr_023_5893

    ld [$d070], sp
    ldh a, [$b0]
    ldh a, [$30]
    ldh a, [rNR10]
    ret nz

    ret nz

    jr nz, @-$1e

jr_023_58a8:
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
    ld b, $05

jr_023_58b6:
    ld c, $09
    dec bc
    inc c
    inc de
    inc e
    rra
    db $10
    rra
    ld d, $0f
    ld c, $0f
    inc c
    rra
    rra
    inc bc
    ld [bc], a
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

    jr nz, jr_023_58b6

    jr nc, jr_023_58a8

    jr nc, @-$2e

    ld hl, sp+$08
    add sp, $18
    add sp, $78
    ldh a, [rSVBK]
    ldh [rNR41], a
    ld hl, sp-$18
    ld hl, sp+$68

jr_023_58e8:
    ldh a, [$f0]
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec b
    ld b, $09
    ld c, $0b
    inc c
    rra
    db $10
    ld c, $0b
    rrca
    dec c
    rrca
    inc c
    rrca
    ld [$0203], sp
    rlca
    dec b
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

jr_023_5913:
    ret nz

    ldh [rNR41], a
    ret nc

    jr nc, @-$2e

    jr nc, jr_023_5913

    ld [$c838], sp
    jr c, jr_023_58e8

    or b
    ret nc

    ret nc

    or b
    add b
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
    inc b
    rlca
    inc c
    dec bc
    inc c
    dec bc
    inc e
    inc de
    rla
    jr jr_023_5956

    jr jr_023_5950

    ld [$0d0e], sp
    rra

jr_023_5945:
    rra
    nop
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop

jr_023_5950:
    nop
    nop
    ret nz

    ret nz

jr_023_5954:
    ld h, b
    and b

jr_023_5956:
    ld [hl], b

jr_023_5957:
    sub b
    ld [hl], b
    sub b
    ret z

    jr c, jr_023_5945

    jr jr_023_5957

    ld [$d030], sp
    jr nc, jr_023_5954

    ld hl, sp-$18
    jr c, jr_023_5950

    ldh a, [$f0]
    ret nz

    ret nz

    add b
    add b
    nop
    nop

    db $82, $59, $85, $59

    adc e
    ld e, c
    adc [hl]
    ld e, c
    sbc c
    ld e, c

    db $a0, $59

    xor b
    ld e, c
    cp h
    ld e, c
    ret z

    ld e, c
    nop
    rst $38
    db $fd

    db $00, $1e, $01, $1e, $ff, $00

    ld [bc], a
    rst $38
    db $fd
    ld [bc], a
    inc c
    inc bc
    inc c
    inc b
    jr jr_023_5997

    inc c
    dec b

jr_023_5997:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr @+$04

    jr @-$01

    db $00, $0a, $06, $1e, $00, $0a, $fe, $01

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

    db $05, $04, $d9, $59, $f0, $5f, $d9, $59, $f0, $59, $f0, $5a, $f0, $5a, $f0, $5a

    ldh a, [$5a]
    ldh a, [$5a]

    db $f0, $5b

    ldh a, [$5c]
    ldh a, [$5d]

    db $f0, $5e

    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$0f0f], sp
    rrca
    dec c
    rrca
    inc c
    rlca
    ld b, $05
    rlca
    ld c, $0f
    inc de
    rra
    ld [hl], $3f
    jr c, @+$31

    rra
    rra
    rra
    rra
    rla
    rra
    ld c, $0e
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$30]
    ld hl, sp+$18
    db $fc
    ld h, h
    ld hl, sp+$38
    ldh a, [$90]
    ld [hl], b
    ldh a, [$f8]
    add sp, $30
    ldh a, [$e0]
    ldh [$f0], a
    ret nc

    sub b
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$181f], sp
    ccf
    ld a, [hl+]
    ccf
    ld hl, $161f
    ld a, a
    ld a, e
    rst $28
    cp h
    ld l, e
    ld a, a
    rla
    ld e, $19
    rra
    rra
    rra
    rrca
    rrca
    dec c
    dec bc
    ld b, $06
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [$30]
    ld hl, sp-$58
    ld hl, sp+$08
    ldh a, [$d0]
    ldh a, [$b0]
    add sp, $78
    and h
    db $fc
    sbc $fa
    ld [hl], $f6
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
    inc b
    rrca
    ld [$080f], sp
    rrca
    inc c
    rra
    jr jr_023_5abc

    ld h, $1f
    inc e
    rrca
    add hl, bc
    ld b, $07
    inc c
    rrca
    rrca
    dec bc
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld b, $06
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$b0]
    ldh a, [$30]
    ldh [$60], a
    and b
    ldh [$d0], a
    ldh a, [$58]
    ld hl, sp-$24
    db $f4
    jr @-$06

    ldh a, [$f0]
    add sp, -$08
    ret c

    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$181f], sp
    ccf
    inc l
    ccf
    cpl

jr_023_5abc:
    rra
    rla
    ld a, a
    ld a, a
    add sp, -$41
    ld h, a
    ld a, a
    db $10
    rra
    jr @+$21

    rra
    rra
    dec c
    dec bc
    rrca
    rrca
    ld b, $06
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [$30]
    ld hl, sp+$68

jr_023_5ada:
    ld hl, sp-$18
    ldh a, [$d0]
    ldh a, [$f0]
    jr z, jr_023_5ada

    call z, $1efc
    ld a, [$fc3c]
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
    inc b
    rrca
    ld [$0f0f], sp
    rrca
    dec c
    rrca
    inc c
    rlca
    ld b, $05
    rlca
    dec bc
    rrca
    ld a, [de]
    rra
    dec sp
    cpl
    jr jr_023_5b27

    rrca
    rrca
    rla
    rra
    dec de
    rra
    ld c, $0e
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$30]
    ld hl, sp+$18
    db $fc
    ld h, h
    ld hl, sp+$38
    ldh a, [$90]
    ld h, b
    ldh [$30], a
    ldh a, [$f0]

jr_023_5b27:
    ret nc

    ldh [$e0], a
    ldh a, [$f0]
    ret nc

    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$181f], sp
    ccf
    ld a, [hl+]
    ccf
    ld hl, $161f
    rra
    dec de
    cpl
    inc a
    ld c, e
    ld a, a
    rst $30
    cp [hl]
    reti


    rst $18
    rrca
    rrca
    rlca
    rlca
    ld bc, $0001
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [$30]
    ld hl, sp-$58
    ld hl, sp+$08
    ldh a, [$d0]
    db $fc
    cp h
    xor $7a
    xor h
    db $fc
    ret nc

    ldh a, [$30]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [$a0], a
    ld h, b
    ret nz

    ret nz

    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$080f], sp
    rrca
    inc c
    rra
    jr jr_023_5bbc

    ld h, $1f
    inc e
    rrca
    add hl, bc
    ld c, $0f
    rra
    rla
    inc c
    rrca
    rlca
    rlca
    rrca
    dec bc
    add hl, bc
    rrca
    ld b, $06
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$b0]
    ldh a, [$30]
    ldh [$60], a
    and b
    ldh [rSVBK], a
    ldh a, [$c8]
    ld hl, sp+$6c
    db $fc
    inc e
    db $f4
    ld hl, sp-$08
    ld hl, sp-$08
    add sp, -$08
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$181f], sp
    ccf
    inc l
    ccf
    cpl

jr_023_5bbc:
    rra
    rla
    rra
    rra
    jr z, jr_023_5c01

    ld b, a
    ld a, a
    ldh a, [$bf]
    ld a, b
    ld a, a
    rrca
    rrca
    rlca
    rlca
    ld bc, $0001
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [$30]
    ld hl, sp+$68
    ld hl, sp-$18
    ldh a, [$d0]
    db $fc
    db $fc
    ld l, $fa
    call z, Call_000_10fc
    ldh a, [$30]
    ldh a, [$f0]
    ldh a, [$a0]
    ld h, b
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$0f0f], sp
    rrca
    dec c
    rrca
    inc c
    rlca
    ld b, $05

jr_023_5c01:
    rlca
    ld c, $0f
    ld [hl], $3f
    jr c, jr_023_5c37

    rra
    rra
    rra
    rra
    rla
    rra
    ld c, $0e
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]

jr_023_5c18:
    ldh a, [rNR10]
    ldh a, [$30]
    ld hl, sp+$18
    db $fc
    ld h, h
    ld hl, sp+$38
    ldh a, [$90]
    ld hl, sp-$18
    jr nc, jr_023_5c18

    ldh [$e0], a
    ldh a, [$d0]
    sub b
    ldh a, [$60]
    ld h, b
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca

jr_023_5c37:
    ld [$181f], sp
    ccf
    ld a, [hl+]
    ccf
    ld hl, $161f
    ld a, a
    ld a, e
    rst $28
    cp h
    rla
    ld e, $19
    rra
    rra
    rra
    rrca
    rrca
    dec c
    dec bc
    ld b, $06
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [$30]
    ld hl, sp-$58
    ld hl, sp+$08
    ldh a, [$d0]
    ldh a, [$b0]
    add sp, $78
    sbc $fa
    ld [hl], $f6
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
    rlca
    inc b
    rrca
    ld [$080f], sp
    rrca
    inc c
    rra
    jr jr_023_5cbe

    ld h, $1f
    inc e
    rrca
    add hl, bc
    inc c
    rrca
    rrca
    dec bc
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld b, $06
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$b0]
    ldh a, [$30]
    ldh [$60], a

jr_023_5ca0:
    and b
    ldh [$d0], a
    ldh a, [$dc]
    db $f4
    jr jr_023_5ca0

    ldh a, [$f0]
    add sp, -$08
    ret c

    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$181f], sp
    ccf
    inc l
    ccf
    cpl

jr_023_5cbe:
    rra
    rla
    ld a, a
    ld a, a
    add sp, -$41
    db $10
    rra
    jr jr_023_5ce7

    rra
    rra
    dec c
    dec bc
    rrca
    rrca
    ld b, $06
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [$30]
    ld hl, sp+$68

jr_023_5cdc:
    ld hl, sp-$18
    ldh a, [$d0]
    ldh a, [$f0]
    jr z, jr_023_5cdc

    ld e, $fa
    inc a

jr_023_5ce7:
    db $fc
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rlca
    rlca
    rlca
    ld b, $07
    ld b, $03
    inc bc
    ld [bc], a
    inc bc
    rlca
    rlca
    inc de
    rra
    ld [hl], $3f
    jr c, jr_023_5d37

    rra
    rra
    rra
    rra
    rla
    rra
    ld c, $0e
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp-$78
    ld hl, sp-$68
    db $fc
    inc c
    cp $32
    db $fc
    sbc h
    ld a, b
    ret z

    ld [hl], b
    ldh a, [$f8]
    add sp, $30
    ldh a, [$e0]
    ldh [$f0], a
    ret nc

    sub b
    ldh a, [$60]
    ld h, b
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rrca

jr_023_5d37:
    inc c
    rra
    dec d
    rra
    db $10
    rrca
    dec bc
    ccf
    dec a
    ld [hl], a
    ld e, [hl]
    ld l, e
    ld a, a
    rla
    ld e, $19
    rra
    rra
    rra
    rrca
    rrca
    dec c
    dec bc
    ld b, $06
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$18
    db $fc
    ld d, h
    db $fc
    add h
    ld hl, sp+$68
    ld hl, sp-$28
    db $f4
    inc a
    and h
    db $fc
    sbc $fa
    ld [hl], $f6
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    rlca
    ld b, $0f
    inc c
    rra
    inc de
    rrca
    ld c, $07
    inc b
    ld b, $07
    inc c
    rrca
    rrca
    dec bc
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld b, $06
    ldh [$e0], a
    ldh a, [rNR10]
    ld hl, sp+$08
    ld hl, sp+$78
    ld hl, sp+$58
    ld hl, sp+$18
    ldh a, [$30]
    ret nc

    ld [hl], b

jr_023_5da0:
    add sp, -$08
    ld e, b
    ld hl, sp-$24
    db $f4
    jr jr_023_5da0

    ldh a, [$f0]
    add sp, -$08
    ret c

    ld hl, sp+$70
    ld [hl], b
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rrca
    inc c
    rra
    ld d, $1f
    rla
    rrca
    dec bc
    ccf
    ccf
    ld [hl], h
    ld e, a
    ld h, a
    ld a, a
    db $10
    rra
    jr @+$21

    rra
    rra
    dec c
    dec bc
    rrca
    rrca
    ld b, $06
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ld hl, sp+$18
    db $fc
    inc [hl]
    db $fc
    db $f4
    ld hl, sp-$18
    ld hl, sp-$08
    inc d
    db $fc
    call z, $1efc
    ld a, [$fc3c]
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
    ld [$101f], sp
    rra
    ld e, $1f
    ld a, [de]
    rra
    jr jr_023_5e0c

    inc c
    dec bc
    ld c, $1d
    rra
    inc de
    rra
    ld [hl], $3f
    jr c, jr_023_5e37

    rra
    rra
    rra
    rra

jr_023_5e0c:
    rla
    rra
    ld c, $0e
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$60], a
    ldh a, [$30]
    ld hl, sp-$38
    ldh a, [rSVBK]
    ldh [rNR41], a
    ld [hl], b
    ldh a, [$f8]
    add sp, $30
    ldh a, [$e0]
    ldh [$f0], a
    ret nc

    sub b
    ldh a, [$60]
    ld h, b
    rlca
    rlca
    rrca
    ld [$101f], sp
    ccf

jr_023_5e37:
    jr nc, @+$81

    ld d, l
    ld a, a
    ld b, d
    ccf
    dec l
    rst $38
    rst $30
    rst $18
    ld a, b
    ld l, e
    ld a, a
    rla
    ld e, $19
    rra
    rra
    rra
    rrca
    rrca
    dec c
    dec bc
    ld b, $06
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [$60], a
    ldh a, [$50]
    ldh a, [rNR10]
    ldh [$a0], a
    ldh [$60], a
    ret nc

    ldh a, [$a4]
    db $fc
    sbc $fa
    ld [hl], $f6
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
    ld [$101f], sp
    rra
    ld de, $191f
    ccf
    jr nc, jr_023_5efc

    ld c, h
    ccf
    add hl, sp
    rra
    inc de
    ld b, $07
    inc c
    rrca
    rrca
    dec bc
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld b, $06
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [$e0], a
    ldh [$60], a
    ldh [$60], a
    ret nz

    ret nz

    ld b, b
    ret nz

jr_023_5ea0:
    and b
    ldh [$58], a
    ld hl, sp-$24
    db $f4
    jr jr_023_5ea0

    ldh a, [$f0]
    add sp, -$08
    ret c

    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    rrca
    ld [$101f], sp
    ccf
    jr nc, jr_023_5f38

    ld e, b
    ld a, a
    ld e, a
    ccf
    cpl
    rst $38
    rst $38
    ret nc

    ld a, a
    ld h, a
    ld a, a
    db $10
    rra
    jr jr_023_5ee7

    rra
    rra
    dec c
    dec bc
    rrca
    rrca
    ld b, $06
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [$60], a
    ldh a, [$d0]
    ldh a, [$d0]
    ldh [$a0], a
    ldh [$e0], a
    ld d, b
    ldh a, [$cc]
    db $fc
    ld e, $fa
    inc a

jr_023_5ee7:
    db $fc
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
    inc bc
    nop
    rlca
    inc b
    rlca
    rlca
    rlca
    dec b

jr_023_5efc:
    inc bc
    ld [bc], a
    ld bc, $0603
    rlca
    dec bc
    rrca
    inc e
    rla
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
    ret nz

    ret nz

    ret nz

    nop
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ld hl, sp+$48
    ldh a, [$30]
    ldh [$a0], a
    ld h, b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ld b, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    rlca
    inc b

jr_023_5f38:
    rrca
    inc c
    rra
    ld d, $0f
    ld a, [bc]
    ccf
    ccf
    ld [hl], a
    ld e, h
    scf
    ccf
    dec c
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
    ret nz

    ld b, b
    ret nz

    nop
    ldh [rNR41], a
    ldh a, [$90]
    ldh [$e0], a
    ldh [$a0], a
    ret nc

    ld [hl], b
    adc b
    ld hl, sp+$2c
    db $ec
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
    inc bc
    inc bc
    inc bc
    nop
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rra
    ld [de], a
    rrca
    inc c
    rlca
    dec b
    ld [bc], a
    inc bc
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

    ret nz

    nop
    ldh [rNR41], a
    ldh [$e0], a
    ldh [$a0], a
    ret nz

    ld b, b
    add b
    ret nz

    ldh [$e0], a
    ld [hl], b
    ldh a, [$30]
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
    inc bc
    nop
    rlca
    inc b
    rrca
    inc c
    rra
    inc d
    rrca
    dec bc
    ccf
    ccf
    ld [hl], h
    ld e, a
    inc sp
    ccf
    inc c
    rrca
    rrca
    rrca
    dec b
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
    ret nz

    ld b, b
    ret nz

    nop
    ldh [rNR41], a
    ldh a, [$50]
    ldh [$e0], a
    ldh [$e0], a
    db $10
    ldh a, [$d8]
    ld hl, sp+$38
    ld hl, sp-$40
    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop

    db $02, $60, $05, $60

    dec bc
    ld h, b
    ld c, $60
    add hl, de
    ld h, b

    db $20, $60

    jr z, @+$62

    db $3c, $60

    ld c, b
    ld h, b
    nop
    rst $38
    db $fd

    db $00, $1e, $01, $1e, $ff, $00

    ld [bc], a
    rst $38
    db $fd
    ld [bc], a
    inc c
    inc bc
    inc c
    inc b
    jr jr_023_6017

    inc c
    dec b

jr_023_6017:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr @+$04

    jr @-$01

    db $00, $0a, $06, $1e, $00, $0a, $fe, $01

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

    db $00, $0a, $09, $08, $00, $08, $09, $08, $00, $0a, $fe, $01

    ld [bc], a
    ld [de], a
    inc bc
    ld [de], a
    ld [bc], a
    ld e, $05
    ld [de], a
    db $fd

    db $06, $04, $59, $60, $70, $66, $59, $60, $70, $60, $70, $61, $70, $61, $70, $61

    ld [hl], b
    ld h, c
    ld [hl], b
    ld h, c

    db $70, $62

    ld [hl], b
    ld h, e
    ld [hl], b
    ld h, h
    ld [hl], b
    ld h, l
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
    rrca
    rrca
    rrca
    rrca
    dec bc
    ld c, $1f
    ld e, $1b
    dec de
    ld [bc], a
    inc bc
    rlca
    dec b
    dec b
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    dec bc
    ld b, $06
    ldh [$e0], a
    sub b
    ldh a, [$b8]
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    ld hl, sp-$38
    ld hl, sp+$58
    ld hl, sp+$18
    ld hl, sp+$08
    ldh a, [$90]
    ld l, b
    ld hl, sp+$38
    ld hl, sp-$10
    ldh a, [$f8]
    add sp, -$08
    ret c

    ld [hl], b
    ld [hl], b
    rlca
    rlca
    inc c
    rrca
    dec bc
    rrca
    rra
    ld e, $1f
    ld e, $1f
    jr jr_023_60fc

    ld a, [hl+]
    ld a, a
    ld h, d
    ld a, a
    ld a, b
    ld e, a
    ld l, h
    dec sp
    ccf
    dec bc
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    ld b, $06
    ret nz

    ret nz

    ld h, b
    ldh [$a0], a

jr_023_60d5:
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$f0]
    jr nc, jr_023_60d5

    xor b
    db $fc
    adc h
    db $fc
    inc a
    ret nc

    ld [hl], b
    cp b
    add sp, -$4c
    db $fc
    db $ec
    db $ec
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    add hl, de
    rra
    dec a
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    inc de

jr_023_60fc:
    rra
    ld a, [de]
    rra
    jr jr_023_6120

    db $10
    rrca
    add hl, bc
    rrca
    rrca
    rla
    dec e
    rra
    rra
    rra
    rra
    rra
    rla
    ld c, $0e
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ret nc

    ld [hl], b
    ld hl, sp+$78

jr_023_6120:
    ret c

    ret c

    ld h, b
    ldh [$50], a
    ldh a, [rSVBK]
    ldh a, [$e0]
    ldh [$f0], a
    ret nc

    ldh a, [$b0]
    ld h, b

jr_023_612f:
    ld h, b
    rlca
    rlca
    inc c
    rrca
    dec bc
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    cpl
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, e
    inc d
    rra
    jr c, jr_023_6175

    ld e, h
    ld a, a
    ld l, a
    ld l, a
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    ld h, b
    ldh [$a0], a
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e8]
    ld hl, sp-$04
    db $fc
    db $fc
    cp h
    ld [hl], h
    db $ec
    jr c, @-$06

    ld h, b
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    jr nz, jr_023_612f

    ret nz

    inc bc
    inc bc
    rlca
    rlca
    rlca

jr_023_6175:
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    dec bc
    ld c, $1f
    ld e, $1b
    dec de
    ld b, $07
    ld a, [bc]
    rrca
    ld c, $0f
    rlca
    rlca
    rrca
    dec bc
    rrca
    dec c
    ld b, $06
    ldh [$e0], a
    sub b
    ldh a, [$b8]
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    ld hl, sp-$38
    ld hl, sp+$58
    ld hl, sp+$18
    ld hl, sp+$08
    ldh a, [$90]
    ldh a, [$f0]
    add sp, -$48
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$18
    ld [hl], b

jr_023_61af:
    ld [hl], b
    rlca
    rlca
    inc c
    rrca
    dec bc
    rrca
    rra
    ld e, $1f
    ld e, $1f
    jr jr_023_61fc

    ld a, [hl+]
    ld a, a
    ld h, d
    ld a, a
    ld a, b
    rla
    inc e
    dec sp
    cpl
    ld e, e
    ld a, [hl]
    ld l, a
    ld l, a
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    ld h, b
    ldh [$a0], a

jr_023_61d5:
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$f0]
    jr nc, jr_023_61d5

    xor b
    db $fc
    adc h
    db $fc
    inc a
    db $f4
    ld l, h
    cp b
    ld hl, sp-$60
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    jr nz, jr_023_61af

    ret nz

    rlca
    rlca
    add hl, de
    rra
    dec a
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    inc de

jr_023_61fc:
    rra
    ld a, [de]
    rra
    jr jr_023_6220

    db $10
    rrca
    add hl, bc
    ld d, $1f
    inc e
    rra
    rrca
    rrca
    rra
    rla
    rra
    dec de
    ld c, $0e
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ret nc

    ld [hl], b
    ld hl, sp+$78

jr_023_6220:
    ret c

    ret c

    ld b, b
    ret nz

    ldh [$a0], a
    and b
    ldh [$e0], a
    ldh [$f0], a
    ldh a, [$f0]
    ret nc

    ld h, b
    ld h, b
    rlca
    rlca
    inc c
    rrca
    dec bc
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    cpl
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, e
    ld e, h
    ld l, a
    jr c, jr_023_6285

    inc c
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    ld b, $06
    ret nz

    ret nz

    ld h, b
    ldh [$a0], a
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e8]
    ld hl, sp-$04
    db $fc
    db $fc
    cp h
    ld d, b
    ldh a, [$38]
    add sp, $74
    db $fc
    db $ec
    db $ec
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
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    dec bc
    ld c, $1f
    ld e, $1b
    dec de
    rlca

jr_023_6285:
    dec b
    dec b
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    dec bc
    ld b, $06
    nop
    nop
    ldh [$e0], a
    sub b
    ldh a, [$b8]
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    ld hl, sp-$38
    ld hl, sp+$58
    ld hl, sp+$18
    ld hl, sp+$08
    ld l, b
    ld hl, sp+$38
    ld hl, sp-$10
    ldh a, [$f8]
    add sp, -$08
    ret c

    ld [hl], b
    ld [hl], b
    nop
    nop
    rlca
    rlca
    inc c
    rrca
    dec bc
    rrca
    rra
    ld e, $1f
    ld e, $1f
    jr jr_023_62fe

    ld a, [hl+]
    ld a, a
    ld h, d
    ld a, a
    ld a, b
    dec sp
    ccf
    dec bc
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    ld b, $06
    nop
    nop
    ret nz

    ret nz

    ld h, b
    ldh [$a0], a

jr_023_62d7:
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$f0]
    jr nc, jr_023_62d7

    xor b
    db $fc
    adc h
    db $fc
    inc a
    cp b
    add sp, -$4c
    db $fc
    db $ec
    db $ec
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    add hl, de
    rra
    dec a
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    inc de

jr_023_62fe:
    rra
    ld a, [de]
    rra
    jr jr_023_6322

    db $10
    rrca
    rrca
    rla
    dec e
    rra
    rra
    rra
    rra
    rra
    rla
    ld c, $0e
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ret nc

    ld [hl], b
    ld hl, sp+$78

jr_023_6322:
    ret c

    ret c

    ld d, b
    ldh a, [rSVBK]
    ldh a, [$e0]
    ldh [$f0], a
    ret nc

    ldh a, [$b0]
    ld h, b

jr_023_632f:
    ld h, b
    nop
    nop
    rlca
    rlca
    inc c
    rrca
    dec bc
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    cpl
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, e
    jr c, jr_023_6375

    ld e, h
    ld a, a
    ld l, a
    ld l, a
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

    ld h, b
    ldh [$a0], a
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e8]
    ld hl, sp-$04
    db $fc
    db $fc
    cp h
    jr c, @-$06

    ld h, b
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    jr nz, jr_023_632f

    ret nz

    ld bc, $0301
    inc bc
    inc bc

jr_023_6375:
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    rlca
    rrca
    rrca
    dec c
    dec c
    ld [bc], a
    inc bc
    rlca
    dec b
    dec b
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    dec bc
    ld b, $06
    ldh a, [$f0]
    ret z

    ld hl, sp-$24
    db $fc
    cp $fe
    cp $fe
    db $fc
    db $e4
    db $fc
    inc l
    db $fc
    inc c
    db $fc
    add h
    ldh a, [$90]
    ld l, b
    ld hl, sp+$38
    ld hl, sp-$10
    ldh a, [$f8]
    add sp, -$08
    ret c

    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    ld b, $07
    dec b
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc c
    rra
    dec d
    ccf
    ld sp, $3c3f
    ld e, a
    ld l, h

jr_023_63c4:
    dec sp
    ccf
    dec bc
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    ld b, $06
    ldh [$e0], a
    jr nc, jr_023_63c4

    ret nc

    ldh a, [$f8]
    ld a, b
    ld hl, sp+$78
    ld hl, sp+$18
    db $fc
    ld d, h
    cp $46
    cp $1e
    ret nc

    ld [hl], b
    cp b
    add sp, -$4c
    db $fc
    db $ec
    db $ec
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    inc c
    rrca
    ld e, $1f
    rra
    rra
    rra
    rra
    rrca
    add hl, bc
    rrca
    dec c
    rrca
    inc c
    rrca
    ld [$090f], sp
    rrca
    rrca
    rla
    dec e
    rra
    rra
    rra
    rra
    rra
    rla
    ld c, $0e
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    add sp, $38
    db $fc
    inc a
    db $ec
    ld l, h
    ld h, b
    ldh [$50], a
    ldh a, [rSVBK]
    ldh a, [$e0]
    ldh [$f0], a
    ret nc

    ldh a, [$b0]
    ld h, b

jr_023_642f:
    ld h, b
    inc bc
    inc bc
    ld b, $07
    dec b
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rla
    rra
    ccf
    ccf
    ccf
    dec a
    inc d
    rra

jr_023_6444:
    jr c, jr_023_6475

    ld e, h
    ld a, a
    ld l, a
    ld l, a
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    ldh [$e0], a
    jr nc, jr_023_6444

    ret nc

    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$0c
    db $fc

jr_023_645e:
    cp $fe
    cp $de
    ld [hl], h
    db $ec
    jr c, jr_023_645e

    ld h, b
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    jr nz, jr_023_642f

    ret nz

    rlca
    rlca
    rrca
    rrca

jr_023_6474:
    rrca

jr_023_6475:
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rla
    inc e
    ccf
    inc a
    scf
    ld [hl], $02
    inc bc
    rlca
    dec b
    dec b
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    dec bc
    ld b, $06
    ret nz

    ret nz

    jr nz, jr_023_6474

    ld [hl], b
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp-$10
    sub b
    ldh a, [$b0]
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [$90]
    ld l, b
    ld hl, sp+$38
    ld hl, sp-$10
    ldh a, [$f8]
    add sp, -$08
    ret c

    ld [hl], b
    ld [hl], b
    rrca
    rrca
    jr jr_023_64d3

    rla
    rra
    ccf
    dec a
    ccf
    dec a
    ccf
    jr nc, jr_023_653c

    ld d, l
    rst $38
    push bc
    rst $38
    ldh a, [$5f]
    ld l, h
    dec sp
    ccf
    dec bc
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    ld b, $06
    add b
    add b
    ret nz

jr_023_64d3:
    ret nz

    ld b, b
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$60], a
    ldh a, [$50]
    ld hl, sp+$18
    ld hl, sp+$78
    ret nc

    ld [hl], b
    cp b
    add sp, -$4c
    db $fc
    db $ec
    db $ec
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    rrca
    rrca
    inc sp
    ccf
    ld a, e
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    daa
    ccf
    inc [hl]
    ccf
    jr nc, jr_023_6540

    ld hl, $090f
    rrca
    rrca
    rla
    dec e
    rra
    rra
    rra
    rra
    rra
    rla
    ld c, $0e
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [$f0], a
    ldh a, [$b0]
    or b
    ld h, b
    ldh [$50], a
    ldh a, [rSVBK]
    ldh a, [$e0]
    ldh [$f0], a
    ret nc

    ldh a, [$b0]
    ld h, b

jr_023_652f:
    ld h, b
    rrca
    rrca
    jr jr_023_6553

    rla
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf

jr_023_653c:
    ld e, a
    ld a, a
    rst $38
    rst $38

jr_023_6540:
    rst $38
    rst $30
    inc d
    rra
    jr c, jr_023_6575

    ld e, h
    ld a, a
    ld l, a
    ld l, a
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    add b
    add b
    ret nz

jr_023_6553:
    ret nz

    ld b, b
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nc

    ldh a, [$f8]
    ld hl, sp-$08
    ld a, b
    ld [hl], h
    db $ec
    jr c, @-$06

    ld h, b
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    jr nz, jr_023_652f

    ret nz

    nop
    nop
    inc bc
    inc bc
    inc bc

jr_023_6575:
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $0f
    ld c, $0f
    rrca
    ld [bc], a
    inc bc
    ld bc, $0303
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

    and b
    ldh [$b0], a
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp-$10
    ld [hl], b
    ldh a, [$30]
    ldh a, [rNR10]
    ldh [$a0], a
    jr nc, @-$0e

    ldh [$e0], a
    ldh a, [$d0]
    ldh a, [$f0]
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
    rlca
    rlca
    rrca
    ld c, $0f
    ld c, $1f
    ld d, $3f
    ld [hl-], a
    ccf
    inc a
    cpl
    inc [hl]
    rlca
    ld b, $07
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

    ld b, b
    ret nz

    add b
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$90]
    ld hl, sp-$68
    ld hl, sp+$38
    ldh [$60], a
    xor b
    ld hl, sp-$28
    ret c

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
    dec c
    rrca
    dec e
    rra
    rra
    rra
    rra
    rra
    rrca
    ld c, $0f
    inc c
    rrca
    ld [$0507], sp
    dec bc
    dec c
    rrca
    rrca
    rrca
    rrca
    rrca
    dec bc
    ld b, $06
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$60], a
    ldh a, [rSVBK]
    ldh a, [$f0]
    ld b, b
    ret nz

    ld h, b
    ldh [$c0], a
    ret nz

    ldh [$e0], a
    ldh [$a0], a
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
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rla
    rra
    ccf
    ccf
    ccf
    ccf
    ld [$2c0f], sp
    ccf
    scf
    scf
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

    ld b, b
    ret nz

    add b
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ret nc

    ldh a, [$f8]
    ld hl, sp-$08
    cp b
    ld l, b
    ret c

    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    ret nz

    ret nz

    nop
    nop

    db $82, $66, $85, $66

    adc e
    ld h, [hl]
    adc [hl]
    ld h, [hl]
    sbc c
    ld h, [hl]

    db $a0, $66

    xor b
    ld h, [hl]
    cp h
    ld h, [hl]
    ret z

    ld h, [hl]
    nop
    rst $38
    db $fd

    db $00, $1e, $01, $1e, $ff, $00

    ld [bc], a
    rst $38
    db $fd
    ld [bc], a
    inc c
    inc bc
    inc c
    inc b
    jr jr_023_6697

    inc c
    dec b

jr_023_6697:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr @+$04

    jr @-$01

    db $00, $0a, $06, $1e, $00, $0a, $fe, $01

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
    dec b
    inc b
    reti


    ld h, [hl]
    nop
    ld [hl], e
    reti


    ld h, [hl]
    nop
    ld h, a
    nop
    ld l, b
    nop
    ld l, c
    nop
    ld l, d
    nop
    ld l, e
    nop
    ld l, h
    nop
    ld l, l
    nop
    ld l, [hl]
    nop
    ld l, a
    nop
    ld [hl], b
    nop
    ld [hl], c
    nop
    ld [hl], d
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec bc
    ld c, $0b
    ld c, $05
    rlca
    rlca
    rlca
    dec b
    rlca
    rrca

jr_023_6715:
    dec bc
    ld c, $0b
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld b, $06
    ldh [$e0], a
    db $10
    ldh a, [$28]
    ld hl, sp+$78
    ret c

    ld a, b
    ret z

    ld hl, sp-$68
    ld hl, sp+$18
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$68
    ld a, b
    add sp, $30
    ldh a, [$f0]
    ldh a, [$e8]
    jr c, jr_023_6715

    ld hl, sp-$10
    ldh a, [$03]
    inc bc
    inc b
    rlca

jr_023_6744:
    ld a, [bc]
    rrca
    rrca
    dec c
    rra
    jr jr_023_678a

    ld a, [hl+]
    ccf
    ld [hl+], a
    rra
    jr jr_023_6770

    jr @+$41

    inc l
    dec sp
    ccf
    ld l, [hl]
    ld l, a
    ld l, a
    ld l, c
    rra
    ld d, $09
    rrca
    rlca
    rlca
    ret nz

jr_023_6761:
    ret nz

    jr nz, jr_023_6744

    ret nc

    ldh a, [$f0]

jr_023_6767:
    jr nc, jr_023_6761

    jr jr_023_6767

    ld d, h
    db $fc
    ld b, h
    ld hl, sp+$18

jr_023_6770:
    ldh a, [rNR10]
    add sp, $38
    call c, Call_000_3cf4
    db $f4
    ld hl, sp-$28
    ldh a, [$f0]
    ldh [$e0], a
    nop
    nop
    rlca
    rlca
    ld [$1c0f], sp
    rra
    ld e, $13
    ld e, $13

jr_023_678a:
    rra
    add hl, de
    rra
    jr jr_023_67ae

    db $10
    rra
    ld de, $0b0e
    rrca
    dec c
    ld e, $13
    rrca
    rrca
    rra
    ld a, [de]
    rla
    rra
    ld c, $0e
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$d0]
    ld [hl], b
    ret nc

    ld [hl], b

jr_023_67ae:
    and b
    ldh [$e0], a
    ldh [$60], a
    ldh [$30], a
    ldh a, [$30]
    ldh a, [$e0]
    ldh [$d0], a
    ld [hl], b
    or b
    ldh a, [$e0]
    ldh [$03], a
    inc bc
    inc b
    rlca

jr_023_67c4:
    ld [$080f], sp
    rrca
    jr jr_023_67e9

    jr c, @+$31

    jr c, @+$31

    inc e
    rla
    inc e
    rra
    dec sp
    cpl
    jr c, jr_023_6815

    rrca
    rrca

jr_023_67d8:
    rrca
    add hl, bc
    rra
    ld d, $09
    rrca
    rlca
    rlca
    ret nz

    ret nz

jr_023_67e2:
    jr nz, jr_023_67c4

    db $10
    ldh a, [rNR10]
    ldh a, [rNR23]

jr_023_67e9:
    ld hl, sp+$1c
    db $f4
    inc e
    db $f4
    jr c, jr_023_67d8

    jr nc, jr_023_67e2

    ret z

    ld hl, sp+$1c
    db $f4
    db $fc
    db $f4
    cp $de
    or $f6
    ldh [$e0], a
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
    dec bc
    ld c, $0b
    ld c, $05
    rlca
    rlca
    rlca
    ld b, $07
    inc c

jr_023_6815:
    rrca
    inc c
    rrca
    rlca
    rlca
    dec bc
    ld c, $0d
    rrca
    rlca
    rlca
    ldh [$e0], a
    db $10
    ldh a, [$28]
    ld hl, sp+$78
    ret c

    ld a, b
    ret z

    ld hl, sp-$68
    ld hl, sp+$18
    ld hl, sp+$08
    ei
    adc e
    ld [hl], e
    db $d3
    db $f4
    or h
    ld a, b
    ret z

    ldh a, [$f0]
    ld hl, sp+$58
    add sp, -$08
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    inc b
    rlca

jr_023_6844:
    ld a, [bc]
    rrca
    rrca
    dec c
    rra
    jr jr_023_688a

    ld a, [hl+]
    ccf
    ld [hl+], a
    ccf
    jr c, jr_023_68c0

    ld l, b
    ld [hl], a
    ld a, h
    dec sp
    cpl
    inc a
    cpl
    rra
    dec de
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    ret nz

jr_023_6861:
    ret nz

    jr nz, jr_023_6844

    ret nc

    ldh a, [$f0]

jr_023_6867:
    jr nc, jr_023_6861

    jr jr_023_6867

    ld d, h
    db $fc
    ld b, h
    ld hl, sp+$18
    ld hl, sp+$18
    db $fc
    inc [hl]
    call c, Call_023_70fc
    ldh a, [$f0]
    sub b
    ld hl, sp+$68
    sub b
    ldh a, [$e0]
    ldh [rTAC], a
    rlca
    ld [$1c0f], sp
    rra
    ld e, $13
    ld e, $13

jr_023_688a:
    rra
    add hl, de
    rra
    jr jr_023_68ae

    db $10
    rst $18
    ret nc

    rst $08
    ret


    ld a, $37
    inc e
    rra
    rrca
    rrca
    rla
    inc e
    dec de
    ld e, $0f
    rrca
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$d0]
    ld [hl], b
    ret nc

    ld [hl], b

jr_023_68ae:
    and b
    ldh [$e0], a
    ldh [$a0], a
    ldh [$f0], a
    ret nc

    ld [hl], b
    ret nc

    ldh [$e0], a
    ldh a, [rSVBK]
    ret nc

    ldh a, [$60]
    ld h, b

jr_023_68c0:
    inc bc
    inc bc
    inc b
    rlca

jr_023_68c4:
    ld [$080f], sp
    rrca
    jr jr_023_68e9

    jr c, @+$31

    jr c, jr_023_68fd

    inc e
    rla
    inc c
    rrca
    inc de
    rra
    jr c, jr_023_6905

    ccf
    cpl
    rra
    dec de
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_023_68c4

    db $10
    ldh a, [rNR10]
    ldh a, [rNR23]

jr_023_68e9:
    ld hl, sp+$1c
    db $f4
    inc e
    db $f4
    ld a, $ee
    ld a, $fe
    call c, $1cf4
    db $fc
    ldh a, [$f0]
    ldh a, [$90]
    ld hl, sp+$68
    sub b

jr_023_68fd:
    ldh a, [$e0]
    ldh [rSB], a
    ld bc, $0302
    inc b

jr_023_6905:
    rlca
    ld [$080f], sp
    rrca
    add hl, bc
    rrca
    dec bc
    ld c, $07
    ld b, $03
    inc bc
    ld b, $07
    inc c
    rrca
    ld e, $17
    rra
    inc de
    rrca
    add hl, bc
    ld c, $0b
    rlca
    rlca
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$28
    ld hl, sp+$78
    ret c

    ld a, b
    ret z

    ld hl, sp-$68
    ld hl, sp+$18
    ld hl, sp+$08
    ldh a, [$90]
    ld h, b
    ldh [rLCDC], a
    ret nz

    ldh [$a0], a
    ld h, b
    ld h, b
    sub [hl]
    sub [hl]
    adc [hl]
    adc [hl]
    inc bc
    inc bc
    inc b
    rlca

jr_023_6944:
    ld [$090f], sp
    rrca
    rla
    ld e, $0f
    inc c
    rra
    dec d
    rra
    ld de, $0c0f
    rrca
    ld c, $0b
    rrca
    rlca
    dec b
    rlca
    ld b, $07
    dec b
    add hl, bc
    rrca
    rrca
    rrca
    ret nz

    ret nz

    jr nz, jr_023_6944

    db $10
    ldh a, [$50]
    ldh a, [$f0]
    or b
    ldh a, [rNR10]
    ld hl, sp+$28
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh a, [$30]
    ret nc

    ldh a, [$f0]
    ret nc

    ldh [$a0], a
    ldh [$a0], a
    ret nc

    ldh a, [$f0]
    ldh a, [rTAC]
    rlca
    ld [$100f], sp
    rra

jr_023_6986:
    inc d
    rra
    ld e, $1b
    ld e, $13
    rra
    add hl, de
    rra
    jr jr_023_69b0

    db $10
    rrca
    add hl, bc
    ld b, $07
    ld [bc], a
    inc bc
    rlca
    dec b
    ld b, $06
    ld l, c
    ld l, c
    ld [hl], c
    ld [hl], c
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_023_6986

    db $10
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$d0]
    ld [hl], b
    ldh [$60], a

jr_023_69b0:
    ret nz

    ret nz

    ld h, b
    ldh [$30], a
    ldh a, [$78]
    add sp, -$08
    ret z

    ldh a, [$90]
    ld [hl], b
    ret nc

    ldh [$e0], a
    inc bc
    inc bc
    inc c
    rrca
    ld [$100f], sp
    rra
    db $10
    rra
    jr c, jr_023_69fb

    jr c, jr_023_69fd

    inc e
    rla
    dec bc
    rrca
    db $10
    rra
    ld [$0f0f], sp
    rrca
    rrca
    add hl, bc
    rrca

jr_023_69db:
    dec bc
    inc de
    rra
    rra
    rra
    add b
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [$60], a
    ldh [$a0], a
    ldh [rNR10], a
    ldh a, [rNR41]
    ldh [$e0], a
    ldh [$e0], a
    jr nz, jr_023_69db

jr_023_69fb:
    and b
    sub b

jr_023_69fd:
    ldh a, [$f0]
    ldh a, [rSB]
    ld bc, $0302
    inc b
    rlca
    ld [$080f], sp
    rrca
    add hl, bc
    rrca
    dec bc
    ld c, $07
    ld b, $03
    inc bc
    inc b
    rlca
    ld c, $0f
    rra
    dec e
    rra
    rra
    rrca
    add hl, bc
    ld c, $0b
    rlca
    rlca
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$28
    ld hl, sp+$78
    ret c

    ld a, b
    ret z

    ld hl, sp-$68
    ld hl, sp+$18
    ld hl, sp+$08
    ldh a, [$90]
    ld h, b
    ldh [rLCDC], a
    ret nz

    add b
    add b
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

jr_023_6a44:
    ld [$090f], sp
    rrca
    rla
    ld e, $0f
    inc c
    rra
    dec d
    rra
    ld de, $0c0f
    dec bc
    ld c, $0f
    dec bc
    rra
    inc e
    rra
    rra
    rlca
    dec b
    add hl, bc
    rrca
    ld c, $0e
    ret nz

    ret nz

    jr nz, jr_023_6a44

    db $10
    ldh a, [$50]
    ldh a, [$f0]
    or b
    ldh a, [rNR10]
    ld hl, sp+$28
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh a, [$30]
    ret nc

    ldh a, [$a0]
    ldh [$e0], a
    ldh [$e0], a
    and b
    sub b
    ldh a, [$f0]
    ldh a, [rTAC]
    rlca
    ld [$100f], sp
    rra

jr_023_6a86:
    inc d
    rra
    ld e, $1b
    ld e, $13
    rra
    add hl, de
    rra
    jr jr_023_6ab0

    db $10
    rrca
    add hl, bc
    ld b, $07
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $8080
    ld b, b
    ret nz

    jr nz, jr_023_6a86

    db $10
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$d0]
    ld [hl], b
    ldh [$60], a

jr_023_6ab0:
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld a, b
    add sp, -$08
    ret z

    ldh a, [$90]
    ld [hl], b
    ret nc

    ldh [$e0], a
    inc bc
    inc bc
    inc c
    rrca
    ld [$100f], sp
    rra
    db $10
    rra
    jr c, @+$31

    jr c, jr_023_6afd

    inc e
    rla
    dec bc
    rrca
    ld [$040f], sp
    rlca
    rlca
    rlca
    rrca
    add hl, bc
    rrca
    dec bc
    ld [de], a
    ld e, $1e
    ld e, $80
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh [$60], a
    ldh [$a0], a
    ldh [rNR10], a
    ldh a, [$38]
    add sp, -$04
    db $fc
    db $ec
    ld l, h
    ldh [$a0], a
    sub b

jr_023_6afd:
    ldh a, [$f0]
    ldh a, [rSB]
    ld bc, $0302
    inc b
    rlca
    ld [$c80f], sp
    rst $08
    ret


    rst $08
    ld c, e
    ld c, [hl]
    daa
    ld h, $1b
    dec de
    dec e
    rla
    add hl, bc
    rrca
    ld e, $17
    rra
    inc de
    rrca
    add hl, bc
    ld c, $0b
    rlca
    rlca
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$28
    ld hl, sp+$78
    ret c

    ld a, b
    ret z

    ld hl, sp-$68
    ld hl, sp+$18
    ld hl, sp+$08
    ldh a, [$90]
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
    inc bc
    inc bc
    inc b
    rlca

jr_023_6b44:
    ld [$090f], sp
    rrca
    rla
    ld e, $cf
    call z, $d5df
    ld e, a
    ld d, c
    cpl
    inc l
    rra
    ld d, $0f
    add hl, bc
    rrca
    rrca
    rlca
    rlca
    rlca
    dec b
    add hl, bc
    rrca
    ld c, $0e
    ret nz

    ret nz

    jr nz, jr_023_6b44

    db $10
    ldh a, [$50]
    ldh a, [$f0]
    or b
    ldh a, [rNR10]
    ld hl, sp+$28
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh a, [$30]
    ret nc

    ldh a, [$e0]
    ldh [$e0], a
    ldh [$e0], a
    and b
    sub b
    ldh a, [$f0]
    ldh a, [rTAC]
    rlca
    ld [$100f], sp
    rra

jr_023_6b86:
    inc d
    rra
    ld e, $1b
    ld e, $13
    rra
    add hl, de
    rra
    jr jr_023_6bb0

    db $10
    rrca
    add hl, bc
    dec b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $8080
    ld b, b
    ret nz

    jr nz, jr_023_6b86

    inc de
    di
    inc de
    di
    sub d
    ld a, [c]
    call nc, $e874
    ld l, b

jr_023_6bb0:
    ret nc

    ret nc

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$18
    ld hl, sp-$38
    ldh a, [$90]
    ld [hl], b
    ret nc

    ldh [$e0], a
    inc bc
    inc bc
    inc c
    rrca
    ld [$100f], sp
    rra
    db $10
    rra
    jr c, @+$31

    jr c, jr_023_6bfd

    inc e
    rla
    dec bc
    rrca
    ld [$040f], sp
    rlca
    rlca
    rlca
    rrca
    add hl, bc
    rrca
    dec bc
    ld [de], a
    ld e, $1e
    ld e, $80
    add b
    ld b, b
    ret nz

    jr nz, @-$1e

    inc de
    di
    inc de
    di
    inc de
    di
    ld h, $e6
    ld l, h
    db $ec
    sbc h
    db $f4
    ld [$30f8], sp
    ldh a, [$e0]
    ldh [$e0], a
    ld h, b
    ldh [$a0], a
    sub b

jr_023_6bfd:
    ldh a, [$f0]
    ldh a, [rSB]
    ld bc, $0706

jr_023_6c04:
    inc b
    rlca
    ret z

    rst $08
    ret z

    rst $08
    ld c, b
    ld c, a
    inc h
    daa
    dec de
    rra
    db $10
    rra
    ld [$070f], sp
    rlca

jr_023_6c16:
    rrca
    ld [$0507], sp
    dec bc
    rrca
    add hl, bc
    rrca

jr_023_6c1e:
    ld b, $06
    ret nz

    ret nz

    jr nz, jr_023_6c04

    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [$30]
    ldh a, [$c0]
    ret nz

    jr nz, @-$1e

    jr nz, jr_023_6c16

    ret nz

    ret nz

    ret nz

    ld b, b
    ldh [$a0], a
    jr nz, jr_023_6c1e

    ldh [$e0], a
    ld bc, $0601
    rlca
    inc b
    rlca
    ld l, b
    ld l, a
    ld l, c
    ld l, a
    dec hl
    ld l, $17
    ld d, $0f
    rrca
    rrca
    dec bc
    dec b
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rlca
    ld b, $0f
    add hl, bc
    ld c, $0b
    rlca
    rlca
    ldh [$e0], a
    db $10
    ldh a, [$28]
    ld hl, sp+$78
    ret c

    ld a, b
    ret z

    ld hl, sp-$68
    ld hl, sp+$18
    ld hl, sp+$08
    ldh a, [$90]
    ld h, b
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    ret nz

    ret nz

    ldh [$a0], a
    sub b
    ldh a, [rSVBK]
    ld [hl], b
    rlca
    rlca
    ld [$150f], sp
    rra
    rra
    ld a, [de]
    rra
    db $10
    rra
    inc d
    rra
    inc d
    rra
    db $10
    rrca
    ld [$0707], sp
    dec b
    rlca
    ld b, $07
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    add b
    add b
    ld h, b
    ldh [$a0], a
    ldh [$d6], a
    db $76
    or $36
    or $96
    db $f4
    sub h
    add sp, $28
    ldh a, [rSVBK]
    ldh a, [$d0]
    ldh [$a0], a
    ld h, b
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    rlca
    rlca
    ld [$100f], sp
    rra
    inc d
    rra
    ld e, $1b
    ld e, $13
    rra
    add hl, de
    rra
    jr jr_023_6cf0

    db $10
    rrca
    add hl, bc
    ld b, $07
    inc b
    rlca
    rlca
    dec b
    rrca
    add hl, bc
    inc de
    rra

jr_023_6cde:
    inc e
    inc e
    add b
    add b
    ld h, b
    ldh [rNR41], a
    ldh [rNR13], a
    di
    inc de
    di
    sub e
    di

Call_023_6cec:
    jp nc, $f472

    ld [hl], h

jr_023_6cf0:
    cp b
    add sp, $10
    ldh a, [$b0]
    ldh a, [$60]
    ldh [$c0], a
    ret nz

    ret nz

    ld b, b
    jr nz, jr_023_6cde

    ldh [$e0], a
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
    dec bc
    ld c, $0b
    ld c, $05
    rlca
    rlca
    rlca
    rrca

jr_023_6d15:
    dec bc
    ld c, $0b
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld b, $06
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$28]
    ld hl, sp+$78
    ret c

    ld a, b
    ret z

    ld hl, sp-$68
    ld hl, sp+$18
    ld hl, sp+$08
    ld hl, sp+$08
    ld a, b
    add sp, $30
    ldh a, [$f0]
    ldh a, [$e8]
    jr c, jr_023_6d15

    ld hl, sp-$10
    ldh a, [rP1]
    nop
    inc bc
    inc bc
    inc b
    rlca

jr_023_6d46:
    ld a, [bc]
    rrca
    rrca
    dec c
    rra
    jr jr_023_6d8c

    ld a, [hl+]
    ccf
    ld [hl+], a
    rra
    jr jr_023_6d72

    jr @+$3d

    ccf
    ld l, [hl]
    ld l, a
    ld l, a
    ld l, c
    rra
    ld d, $09
    rrca
    rlca
    rlca
    nop
    nop
    ret nz

jr_023_6d63:
    ret nz

    jr nz, jr_023_6d46

    ret nc

    ldh a, [$f0]

jr_023_6d69:
    jr nc, jr_023_6d63

    jr jr_023_6d69

    ld d, h
    db $fc
    ld b, h
    ld hl, sp+$18

jr_023_6d72:
    ldh a, [rNR10]
    call c, Call_000_3cf4
    db $f4
    ld hl, sp-$28
    ldh a, [$f0]
    ldh [$e0], a
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$1c0f], sp
    rra
    ld e, $13
    ld e, $13

jr_023_6d8c:
    rra
    add hl, de
    rra
    jr jr_023_6db0

    db $10
    rra
    ld de, $0d0f
    ld e, $13
    rrca
    rrca
    rra
    ld a, [de]
    rla
    rra
    ld c, $0e
    nop
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$d0]
    ld [hl], b
    ret nc

    ld [hl], b

jr_023_6db0:
    and b
    ldh [$e0], a
    ldh [$30], a
    ldh a, [$30]
    ldh a, [$e0]
    ldh [$d0], a
    ld [hl], b
    or b
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc bc
    inc bc
    inc b
    rlca

jr_023_6dc6:
    ld [$080f], sp
    rrca
    jr jr_023_6deb

    jr c, @+$31

    jr c, jr_023_6dff

    inc e
    rla
    inc e
    rra
    jr c, jr_023_6e15

    rrca
    rrca
    rrca
    add hl, bc

jr_023_6dda:
    rra
    ld d, $09
    rrca
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

jr_023_6de4:
    jr nz, jr_023_6dc6

    db $10
    ldh a, [rNR10]
    ldh a, [rNR23]

jr_023_6deb:
    ld hl, sp+$1c
    db $f4
    inc e
    db $f4
    jr c, jr_023_6dda

    jr nc, jr_023_6de4

    inc e
    db $f4
    db $fc
    db $f4
    cp $de
    or $f6
    ldh [$e0], a
    nop

jr_023_6dff:
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    dec b
    rlca
    dec b
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    rrca

jr_023_6e15:
    dec bc
    ld c, $0b
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld b, $06
    ldh a, [$f0]
    ld [$14f8], sp
    db $fc
    inc a
    db $ec
    cp h
    db $e4
    db $fc
    ld c, h
    db $fc
    inc c
    db $fc
    add h
    db $fc
    add h
    ld hl, sp-$68
    ld a, b
    add sp, $30
    ldh a, [$f0]
    ldh a, [$e8]
    jr c, jr_023_6e15

    ld hl, sp-$10
    ldh a, [rSB]
    ld bc, $0302
    dec b
    rlca
    rlca
    ld b, $0f
    inc c
    rra
    dec d
    rra
    ld de, $0c0f
    rrca
    inc c
    ccf
    inc l
    dec sp
    ccf
    ld l, [hl]
    ld l, a
    ld l, a
    ld l, c
    rra
    ld d, $09
    rrca
    rlca
    rlca
    ldh [$e0], a
    db $10
    ldh a, [rBCPS]
    ld hl, sp-$08
    sbc b
    db $fc
    inc c
    cp $2a
    cp $22
    db $fc
    inc c
    ld hl, sp+$08
    add sp, $38
    call c, Call_000_3cf4
    db $f4
    ld hl, sp-$28
    ldh a, [$f0]
    ldh [$e0], a
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld c, $0f
    rrca
    add hl, bc
    rrca
    add hl, bc
    rrca
    inc c
    rrca
    inc c
    rrca
    ld [$080f], sp
    ld c, $0b
    rrca
    dec c
    ld e, $13
    rrca
    rrca
    rra
    ld a, [de]
    rla
    rra
    ld c, $0e
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$48
    ld hl, sp-$18
    cp b
    add sp, $38
    ret nc

    ld [hl], b
    ldh a, [$f0]
    ld h, b
    ldh [$30], a
    ldh a, [$30]
    ldh a, [$e0]
    ldh [$d0], a
    ld [hl], b
    or b
    ldh a, [$e0]
    ldh [rSB], a
    ld bc, $0302
    inc b
    rlca
    inc b
    rlca
    inc c
    rrca
    inc e
    rla
    inc e
    rla
    ld c, $0b
    ld c, $0f
    dec sp
    cpl
    jr c, jr_023_6f15

    rrca
    rrca
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
    ld hl, sp+$0c
    db $fc

jr_023_6eea:
    ld c, $fa
    ld c, $fa
    inc e
    db $f4
    jr jr_023_6eea

    ret z

    ld hl, sp+$1c
    db $f4
    db $fc
    db $f4
    cp $de
    or $f6
    ldh [$e0], a
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    ld [de], a
    rra
    rla
    dec e
    rla
    inc e
    dec bc
    ld c, $0f
    ld c, $05
    rlca
    rrca

jr_023_6f15:
    dec bc
    ld c, $0b
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld b, $06
    ret nz

    ret nz

    jr nz, @-$1e

    ld d, b
    ldh a, [$f0]
    or b
    ldh a, [$90]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ld hl, sp-$68
    ld a, b
    add sp, $30
    ldh a, [$f0]
    ldh a, [$e8]
    jr c, jr_023_6f15

    ld hl, sp-$10
    ldh a, [rTAC]
    rlca
    ld [$150f], sp
    rra
    rra
    ld a, [de]
    ccf
    jr nc, jr_023_6fca

    ld d, h
    ld a, a
    ld b, h
    ccf
    jr nc, @+$41

    jr nc, jr_023_6f92

    inc l
    dec sp
    ccf
    ld l, [hl]
    ld l, a
    ld l, a
    ld l, c
    rra
    ld d, $09
    rrca
    rlca
    rlca
    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [$e0], a
    ld h, b
    ldh a, [$30]
    ld hl, sp-$58
    ld hl, sp-$78
    ldh a, [$30]
    ldh [rNR41], a
    add sp, $38
    call c, Call_000_3cf4
    db $f4
    ld hl, sp-$28
    ldh a, [$f0]
    ldh [$e0], a
    nop
    nop
    rrca
    rrca
    db $10
    rra
    jr c, jr_023_6fc5

jr_023_6f86:
    inc a
    daa

jr_023_6f88:
    dec a
    daa

jr_023_6f8a:
    ccf
    ld [hl-], a
    ccf
    jr nc, jr_023_6fce

    ld hl, $233f

jr_023_6f92:
    ld c, $0b
    rrca
    dec c
    ld e, $13
    rrca
    rrca
    rra
    ld a, [de]
    rla
    rra
    ld c, $0e
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_023_6f86

    jr nz, jr_023_6f88

    jr nz, jr_023_6f8a

    and b
    ldh [$a0], a
    ldh [rLCDC], a
    ret nz

    ret nz

    ret nz

    ld h, b
    ldh [$30], a
    ldh a, [$30]
    ldh a, [$e0]
    ldh [$d0], a
    ld [hl], b
    or b
    ldh a, [$e0]
    ldh [rTAC], a
    rlca
    ld [$100f], sp

jr_023_6fc5:
    rra

jr_023_6fc6:
    db $10
    rra

jr_023_6fc8:
    jr nc, jr_023_7009

jr_023_6fca:
    ld [hl], b
    ld e, a
    ld [hl], b
    ld e, a

jr_023_6fce:
    jr c, jr_023_6fff

    jr c, jr_023_7011

    dec sp
    cpl

jr_023_6fd4:
    jr c, jr_023_7015

jr_023_6fd6:
    rrca
    rrca
    rrca
    add hl, bc

jr_023_6fda:
    rra
    ld d, $09
    rrca
    rlca
    rlca
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_023_6fc6

    jr nz, jr_023_6fc8

    jr nc, jr_023_6fda

    jr c, jr_023_6fd4

    jr c, jr_023_6fd6

    ld [hl], b
    ret nc

    ld h, b
    ldh [$c8], a
    ld hl, sp+$1c
    db $f4
    db $fc
    db $f4
    cp $de
    or $f6
    ldh [$e0], a
    nop

jr_023_6fff:
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc

jr_023_7006:
    inc b
    rlca
    inc b

jr_023_7009:
    rlca
    dec b
    rlca
    rlca
    ld b, $01
    inc bc
    inc bc

jr_023_7011:
    inc bc
    ld bc, $0603

jr_023_7015:
    rlca

jr_023_7016:
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

    jr nz, jr_023_7006

    db $10
    ldh a, [rSVBK]
    ldh a, [rSVBK]

jr_023_702b:
    ret nc

    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$b0]
    jr nz, jr_023_7016

    ldh [$e0], a
    ret nc

    jr nc, jr_023_702b

    ldh a, [$e0]
    ldh [rP1], a
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    ld b, $07
    rlca
    dec b
    rrca
    inc c
    rra
    ld [de], a
    rrca
    inc c
    rrca
    inc c
    rra
    inc d
    ld [hl], $37
    scf
    dec [hl]
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

    ldh [$e0], a
    ldh [rNR41], a
    ldh a, [$30]
    ld hl, sp+$48
    ldh a, [$30]
    ldh [rNR41], a
    ret nc

    jr nc, jr_023_70ad

    add sp, -$10
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
    rrca

jr_023_7088:
    ld c, $0b

jr_023_708a:
    ld c, $0b
    rrca
    inc c
    rrca
    ld [$090f], sp
    ld b, $07
    ld c, $0b

jr_023_7096:
    rlca
    rlca
    rrca
    ld c, $0b
    rrca
    ld b, $06
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    ret nz

    jr nz, jr_023_7088

    jr nz, jr_023_708a

    and b
    ldh [$e0], a

jr_023_70ad:
    ld h, b
    add b
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    jr nz, jr_023_7096

    ret nz

    ret nz

    ldh [$60], a
    and b
    ldh [$c0], a
    ret nz

    nop
    nop

jr_023_70c0:
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    inc b
    rlca

jr_023_70c8:
    inc b
    rlca

jr_023_70ca:
    inc c
    rrca
    inc e
    rla
    inc c
    dec bc
    inc c
    rrca

jr_023_70d2:
    rra
    rla
    rlca
    rlca

jr_023_70d6:
    rlca
    dec b
    rrca
    ld a, [bc]
    dec b
    rlca

jr_023_70dc:
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

    jr nz, jr_023_70c8

    jr nz, jr_023_70ca

    jr nc, jr_023_70dc

    jr c, jr_023_70d6

    jr nc, jr_023_70c0

    jr nz, jr_023_70d2

    ret nc

    ldh a, [$f8]
    add sp, -$04
    db $fc
    db $ec
    db $ec
    ret nz

    ret nz

Call_023_70fc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_023_71c8:
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    ld c, $0b
    ld c, $0f
    dec e
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
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_023_71c8

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$38]
    add sp, $20
    ldh [$d0], a
    ldh a, [$38]
    add sp, -$04
    call c, Call_023_6cec
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_023_72c8:
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    ld c, $0b
    ld b, $07
    dec b
    rlca
    ld c, $0b
    rrca
    dec c
    inc bc
    inc bc
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

    jr nz, jr_023_72c8

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$3c]
    db $ec
    inc a
    db $fc
    call c, Call_023_78f4
    ld hl, sp-$10
    sub b
    ld hl, sp+$68
    sub b
    ldh a, [$60]
    ld h, b
    nop
    nop
    ld d, $73
    add hl, de
    ld [hl], e
    rra
    ld [hl], e
    ld [hl+], a
    ld [hl], e
    dec l
    ld [hl], e
    inc [hl]
    ld [hl], e
    inc a
    ld [hl], e
    ld d, b
    ld [hl], e
    ld e, h
    ld [hl], e
    ld d, $73
    ld h, l
    ld [hl], e
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
    jr jr_023_732b

    inc c
    dec b

jr_023_732b:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_023_7334

    jr @-$01

jr_023_7334:
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
    ld h, e
    inc b
    ld a, e
    ld [hl], e
    sub b
    ld a, c
    ld [hl], e
    ld [hl], e
    ld a, b
    ld a, [hl-]
    rst $38
    ld l, e
    add b
    ld [de], a
    nop
    nop
    sub b
    ld [hl], e
    sub b
    ld [hl], h
    sub b
    ld [hl], h
    sub b
    ld [hl], h
    sub b
    ld [hl], h
    sub b
    ld [hl], h
    sub b
    ld [hl], l
    sub b
    db $76
    sub b
    ld [hl], a
    sub b
    ld a, b
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    rlca
    dec b
    rlca
    ld b, $07
    ld b, $07
    rlca
    ld [$1c0f], sp
    rla
    rra
    rla
    rrca
    inc c
    rra
    rra
    rra
    rla
    inc c
    inc c
    add b
    add b
    ldh [$60], a
    ldh a, [$90]
    ld hl, sp+$08
    ld hl, sp+$18
    ld hl, sp+$08
    db $fc
    sub h
    ld hl, sp+$28
    ld hl, sp+$48
    ldh a, [$90]
    ldh [$a0], a
    ldh [$e0], a
    ret nz

    ret nz

    ldh [$a0], a
    ldh [$e0], a
    ret nz

    ret nz

    ld bc, $0301
    ld [bc], a
    rlca
    dec b
    rrca
    ld [$0a0f], sp
    rra
    jr jr_023_741c

    ld a, [hl+]
    ccf
    dec h
    rra
    jr jr_023_7422

    inc l
    dec sp
    ld a, $6f
    ld l, a
    ld l, a
    ld l, b
    rrca
    rrca
    rrca
    add hl, bc
    rlca
    rlca
    add b
    add b
    ret nz

    ld b, b
    ldh [$a0], a
    ldh a, [rNR10]
    ldh a, [$50]
    ld hl, sp+$18
    db $fc
    ld d, h
    db $fc
    and h
    ld hl, sp+$18
    add sp, $38
    call c, $fc74
    db $fc
    ldh a, [$90]
    ldh a, [$f0]
    ldh [$e0], a
    nop
    nop
    ld bc, $0701
    ld b, $0f
    add hl, bc
    rra
    db $10
    rra
    jr jr_023_743a

    db $10

jr_023_741c:
    ccf
    add hl, hl
    rra
    inc d
    rra
    ld [de], a

jr_023_7422:
    rrca
    add hl, bc
    rlca
    dec b
    rlca
    rlca
    inc bc
    ld [bc], a
    rlca
    rlca
    rlca
    dec b
    inc bc
    inc bc
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a

jr_023_743a:
    ldh [$a0], a
    ldh [$60], a
    ldh [$60], a
    ldh [$e0], a
    sub b
    ldh a, [$50]
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$90]
    ld hl, sp-$58
    ld hl, sp-$28
    jr nc, jr_023_7480

    ld bc, $0301
    ld [bc], a
    rlca
    ld b, $0f
    add hl, bc
    rrca
    ld [$181f], sp
    ccf
    jr z, @+$41

    inc h
    rra
    rra
    jr c, jr_023_7493

    jr c, jr_023_74a5

    inc c
    rrca
    rrca
    dec bc
    rrca
    rrca
    rrca
    add hl, bc
    rlca
    rlca
    add b
    add b
    ret nz

    ld b, b
    ldh [$60], a
    ldh a, [$90]
    ldh a, [rNR10]
    ld hl, sp+$18

jr_023_747c:
    db $fc
    inc d
    db $fc
    inc h

jr_023_7480:
    ld hl, sp-$08
    jr z, jr_023_747c

    inc e
    db $f4
    inc a
    db $fc
    or $d6
    or $f6
    ldh [$e0], a
    nop
    nop
    ld bc, $0301

jr_023_7493:
    ld [bc], a
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    rlca
    dec b
    rlca
    ld b, $07
    ld b, $07
    rlca
    add hl, bc
    rrca
    ld a, [bc]

jr_023_74a5:
    rrca
    rrca
    ld c, $0f
    add hl, bc
    rra
    dec d
    rra
    dec de
    inc c
    inc c
    add b
    add b
    ldh [$60], a
    ldh a, [$90]
    ld hl, sp+$08
    ld hl, sp+$18
    ld hl, sp+$08
    db $fc
    sub h
    ld hl, sp+$28
    ld hl, sp+$48
    ldh a, [$90]
    ldh [$a0], a
    ldh [$e0], a
    ret nz

    ld b, b
    ld hl, sp-$08
    ld hl, sp-$48
    ret nz

    ret nz

    ld bc, $0301
    ld [bc], a
    rlca
    dec b
    rrca
    ld [$0a0f], sp
    rra
    jr jr_023_751c

    ld a, [hl+]
    ccf
    dec h
    rra
    jr jr_023_74fa

    inc e
    dec sp
    ld l, $3f
    ccf
    cpl
    add hl, hl
    ld l, a
    ld l, a
    ld h, a
    ld h, a
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [$a0], a
    ldh a, [rNR10]
    ldh a, [$50]

jr_023_74fa:
    ld hl, sp+$18
    db $fc
    ld d, h
    db $fc
    and h
    ld hl, sp+$18
    db $fc
    inc [hl]
    call c, $f07c
    ldh a, [$f0]
    db $10
    ldh a, [$f0]
    ldh a, [$90]
    ldh [$e0], a
    ld bc, $0701
    ld b, $0f
    add hl, bc
    rra
    db $10
    rra
    jr jr_023_753a

    db $10

jr_023_751c:
    ccf
    add hl, hl
    rra
    inc d
    rra
    ld [de], a
    rrca
    add hl, bc
    rlca
    dec b
    rlca
    rlca
    rlca
    rlca
    rra
    dec e
    rra
    ld e, $03
    inc bc
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a

jr_023_753a:
    ldh [$a0], a
    ldh [$60], a
    ldh [$60], a
    ldh [$e0], a
    db $10

jr_023_7543:
    ldh a, [$38]
    add sp, -$08
    add sp, -$10
    jr nc, jr_023_7543

    ld a, b
    ld hl, sp-$18
    jr nc, jr_023_7580

    ld bc, $0301
    ld [bc], a
    rlca
    ld b, $0f
    add hl, bc
    rrca
    ld [$181f], sp
    ccf
    jr z, jr_023_759e

    inc h
    rra
    rra
    inc d
    rra
    jr c, jr_023_7595

    inc a
    ccf
    rrca
    dec bc
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [$60], a
    ldh a, [$90]
    ldh a, [rNR10]
    ld hl, sp+$18
    db $fc
    inc d
    db $fc
    inc h

jr_023_7580:
    ld hl, sp-$08
    inc e
    db $f4
    ld e, $fe
    ld [hl], $f6
    ldh a, [$d0]
    ldh a, [$f0]
    ldh a, [$90]
    ldh [$e0], a
    nop
    nop
    ld bc, $0301

jr_023_7595:
    ld [bc], a
    inc bc
    inc bc
    rlca
    inc b
    rlca
    inc b
    rlca
    dec b

jr_023_759e:
    rlca
    ld b, $07
    ld b, $07
    rlca
    inc e
    rla
    rra
    rla
    rrca
    inc c
    rra
    rra
    rra
    rla
    inc c
    inc c
    nop
    nop
    add b
    add b
    ldh [$60], a
    ldh a, [$90]
    ld hl, sp+$08
    ld hl, sp+$18
    ld hl, sp+$08
    db $fc
    sub h
    ld hl, sp+$28
    ld hl, sp+$48
    ldh [$a0], a
    ldh [$e0], a
    ret nz

    ret nz

    ldh [$a0], a
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    dec b
    rrca
    ld [$0a0f], sp
    rra
    jr jr_023_761e

    ld a, [hl+]
    ccf
    dec h
    rra
    jr jr_023_7620

    ld a, $6f
    ld l, a
    ld l, a
    ld l, b
    rrca
    rrca
    rrca
    add hl, bc
    rlca
    rlca
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [$a0], a
    ldh a, [rNR10]
    ldh a, [$50]
    ld hl, sp+$18
    db $fc
    ld d, h
    db $fc
    and h
    ld hl, sp+$18
    call c, $fc74
    db $fc
    ldh a, [$90]
    ldh a, [$f0]
    ldh [$e0], a
    nop
    nop
    nop
    nop
    ld bc, $0701
    ld b, $0f
    add hl, bc
    rra
    db $10
    rra
    jr jr_023_763c

    db $10

jr_023_761e:
    ccf
    add hl, hl

jr_023_7620:
    rra
    inc d
    rra
    ld [de], a
    rlca
    dec b
    rlca
    rlca
    inc bc
    ld [bc], a
    rlca
    rlca
    rlca
    dec b
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [rNR41], a

jr_023_763c:
    ldh [$a0], a
    ldh [$60], a
    ldh [$60], a
    ldh [$e0], a
    ld d, b
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$90]
    ld hl, sp-$58
    ld hl, sp-$28
    jr nc, jr_023_7680

    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    ld b, $0f
    add hl, bc
    rrca
    ld [$181f], sp
    ccf
    jr z, jr_023_76a0

    inc h
    rra
    rra
    jr c, jr_023_76a5

    inc c
    rrca
    rrca
    dec bc
    rrca
    rrca
    rrca
    add hl, bc
    rlca
    rlca
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [$60], a
    ldh a, [$90]
    ldh a, [rNR10]
    ld hl, sp+$18
    db $fc
    inc d

jr_023_7680:
    db $fc
    inc h
    ld hl, sp-$08
    inc e
    db $f4
    inc a
    db $fc
    or $d6
    or $f6
    ldh [$e0], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0203
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc

jr_023_76a0:
    inc bc
    inc bc
    ld [$1c0f], sp

jr_023_76a5:
    rla
    rra
    rla
    rrca
    inc c
    rra
    rra
    rra
    rla
    inc c
    inc c
    ret nz

    ret nz

    ldh a, [$30]
    ld hl, sp-$38
    db $fc
    inc b
    db $fc
    inc c
    db $fc
    add h
    cp $4a
    db $fc
    inc d
    db $fc
    and h
    ldh a, [$90]
    ldh [$a0], a
    ldh [$e0], a
    ret nz

    ret nz

    ldh [$a0], a
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    rlca
    dec b
    rrca
    inc c
    rra
    dec d
    rra
    ld [de], a
    rrca
    inc c
    ccf
    inc l
    dec sp
    ld a, $6f
    ld l, a
    ld l, a
    ld l, b
    rrca
    rrca
    rrca
    add hl, bc
    rlca
    rlca
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [$d0]
    ld hl, sp+$08
    ld hl, sp+$28
    db $fc
    inc c
    cp $2a
    cp $d2
    db $fc
    inc c
    add sp, $38
    call c, $fc74
    db $fc
    ldh a, [$90]
    ldh a, [$f0]
    ldh [$e0], a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    ld [$0c0f], sp
    rrca
    ld [$141f], sp
    rrca
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    add hl, bc
    rlca
    dec b
    rlca
    rlca
    inc bc
    ld [bc], a
    rlca
    rlca
    rlca
    dec b
    inc bc
    inc bc
    ret nz

    ret nz

    ldh [rNR41], a
    ldh [$e0], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$50]
    ldh a, [$b0]
    ldh a, [$30]
    ldh a, [rSVBK]
    sub b
    ldh a, [$50]
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$90]
    ld hl, sp-$58
    ld hl, sp-$28
    jr nc, jr_023_7780

    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    inc b
    rlca
    inc b
    rrca
    inc c
    rra
    inc d
    rra
    ld [de], a
    rrca
    rrca
    jr c, jr_023_7793

    jr c, jr_023_77a5

    inc c
    rrca
    rrca
    dec bc
    rrca
    rrca
    rrca
    add hl, bc
    rlca
    rlca
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [$30]
    ld hl, sp-$38
    ld hl, sp+$08
    db $fc
    inc c

jr_023_777c:
    cp $0a
    cp $12

jr_023_7780:
    db $fc
    db $fc
    jr z, jr_023_777c

    inc e
    db $f4
    inc a
    db $fc
    or $d6
    or $f6
    ldh [$e0], a
    nop
    nop
    inc bc
    inc bc
    rlca

jr_023_7793:
    inc b
    rlca
    rlca
    rrca
    ld [$080f], sp
    rrca
    ld a, [bc]
    rrca
    dec c
    rrca
    inc c
    rrca
    ld c, $08
    rrca
    inc e

jr_023_77a5:
    rla
    rra
    rla
    rrca
    inc c
    rra
    rra
    rra
    rla
    inc c
    inc c
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [rNR10]
    ld hl, sp+$28
    ldh a, [$50]
    ldh a, [$90]
    ldh a, [$90]
    ldh [$a0], a
    ldh [$e0], a
    ret nz

    ret nz

    ldh [$a0], a
    ldh [$e0], a
    ret nz

    ret nz

    inc bc
    inc bc
    rlca
    inc b
    rrca
    dec bc
    rra
    db $10
    rra
    inc d
    ccf
    jr nc, @+$81

    ld d, h
    ld a, a
    ld c, e
    ccf
    jr nc, jr_023_7822

    inc l
    dec sp
    ld a, $6f
    ld l, a
    ld l, a
    ld l, b
    rrca
    rrca
    rrca
    add hl, bc
    rlca
    rlca
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [$a0], a
    ldh a, [$30]
    ld hl, sp-$58
    ld hl, sp+$48
    ldh a, [$30]
    add sp, $38
    call c, $fc74
    db $fc
    ldh a, [$90]
    ldh a, [$f0]
    ldh [$e0], a
    nop
    nop
    inc bc
    inc bc
    rrca
    inc c
    rra
    inc de
    ccf
    jr nz, jr_023_7858

    jr nc, jr_023_785a

    ld hl, $527f
    ccf
    jr z, jr_023_7860

    dec h

jr_023_7822:
    rrca
    add hl, bc
    rlca
    dec b
    rlca
    rlca
    inc bc
    ld [bc], a
    rlca
    rlca
    rlca
    dec b
    inc bc
    inc bc
    nop
    nop
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

    ret nz

    ret nz

    ret nz

    sub b
    ldh a, [$50]
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$90]
    ld hl, sp-$58
    ld hl, sp-$28
    jr nc, jr_023_7880

    inc bc
    inc bc
    rlca
    inc b
    rrca
    inc c
    rra
    inc de

jr_023_7858:
    rra
    db $10

jr_023_785a:
    ccf
    jr nc, @+$81

    ld d, b
    ld a, a
    ld c, b

jr_023_7860:
    ccf
    ccf
    jr c, @+$31

    jr c, jr_023_78a5

    inc c
    rrca
    rrca
    dec bc
    rrca
    rrca
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

    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [$30]

jr_023_787c:
    ld hl, sp+$28
    ld hl, sp+$48

jr_023_7880:
    ldh a, [$f0]
    jr z, jr_023_787c

    inc e
    db $f4
    inc a
    db $fc
    or $d6
    or $f6
    ldh [$e0], a
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc b
    rlca
    rrca

jr_023_78a5:
    dec bc
    rlca
    inc b
    rrca
    rrca
    rrca
    dec bc
    inc b
    inc b
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ldh [$a0], a
    ldh a, [rNR10]
    ldh a, [$30]
    ld hl, sp-$58
    ldh a, [rNR10]
    ldh a, [$50]
    ldh [$a0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    ld bc, $0407
    rlca
    ld b, $1f
    ld d, $1f
    ld de, $0c0f
    rra
    inc d
    scf
    scf
    scf
    inc [hl]
    rlca
    rlca
    rlca
    dec b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    add b
    add b

Call_023_78f4:
    ret nz

    ld b, b
    ret nz

    add b

Call_023_78f8:
    ldh [rNR41], a
    ldh [$60], a
    ld hl, sp+$68
    ld hl, sp-$78
    ldh a, [$30]
    ret nc

    jr nc, @-$06

    ld hl, sp-$20
    and b
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    dec b
    rrca
    ld [$0c0f], sp
    rra
    dec d
    rrca
    ld [$0a0f], sp
    rlca
    dec b
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    nop
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    and b
    ldh [$e0], a
    ld h, b
    ldh [$a0], a
    ldh a, [$90]
    ldh a, [$f0]
    jr nz, jr_023_796e

    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    dec b
    rlca
    inc b
    rra
    inc d
    rra
    db $10
    rrca
    rrca
    inc e
    rla
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    inc bc
    inc bc

jr_023_796e:
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
    ldh [$a0], a
    ldh [rNR41], a
    ld hl, sp+$28
    ld hl, sp+$08
    ldh a, [$f0]
    db $10
    ldh a, [$38]
    ld hl, sp-$14
    db $ec
    db $ec
    db $ec
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    and d
    ld a, c
    and l
    ld a, c
    xor e
    ld a, c
    xor [hl]
    ld a, c
    cp c
    ld a, c
    ret nz

    ld a, c
    ret z

    ld a, c
    call c, $e879
    ld a, c
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
    jr jr_023_79b7

    inc c
    dec b

jr_023_79b7:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_023_79c0

    jr @-$01

jr_023_79c0:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
