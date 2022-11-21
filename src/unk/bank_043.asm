INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $043", ROMX[$4000], BANK[$43]

    ld [$1240], sp
    ld d, a
    ei
    ld e, a
    ld e, [hl]
    ld [hl], e
    jr nz, jr_043_404a

    ldh a, [rLY]
    ld d, b
    ld c, c
    ld d, b
    ld c, l
    add b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    rst $38
    rst $38
    rst $38
    nop
    cp $ea
    rst $38
    nop
    rst $38
    ld_long $ffa7, a
    rst $38
    add b
    rst $38
    ld [$e1d0], a
    ld a, a
    cp $e0
    ccf
    ld d, d
    cp $e0
    rra
    cp $e0
    ret nc

    pop hl
    ld bc, $e0fe
    inc bc
    cp $e0
    add hl, bc
    rlca
    cp $e0
    or b

jr_043_404a:
    ldh [rSB], a
    cp $e9
    or d
    db $eb
    or b
    ldh [$fe], a
    push af
    ld a, a
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

    ld a, a
    add d
    push hl
    rst $38
    add b
    add b
    ld h, b
    ldh [rNR23], a
    ld hl, sp+$04
    db $fc
    ld a, h
    ld h, d
    db $ec
    or b
    and $0e
    ld c, $31
    ccf
    ret nz

    ld b, l
    pop hl
    db $ec
    ld d, c
    and $ce
    pop hl
    db $10
    ldh a, [rHDMA2]
    db $eb
    add b
    add b
    rrca
    inc bc
    nop
    rrca
    ld l, b
    ld [c], a
    ld h, b
    pop hl
    ld e, b
    pop hl
    ldh a, [$e1]
    ld c, b
    pop hl
    ld b, b
    pop hl
    ldh [$38], a
    pop hl
    ld d, d
    db $eb
    ld b, h
    ldh [$ee], a
    push hl
    and $e1
    ld [bc], a
    rst $38
    dec b
    rst $38
    add c
    rst $38
    inc de
    cp $33
    cp $39
    rst $28
    rst $38
    cp a
    or $ff
    ldh [rIE], a
    ld a, $ff
    push bc
    rst $38
    jp nz, $f1fe

    ccf
    pop af
    rra
    pop af
    ccf
    rst $38
    ld a, [$fe5e]
    ld b, $fe
    cp $ff
    ld b, l
    rst $28
    cp $03
    db $fc
    rlca
    cp $e1
    cp $03
    cp $ff
    inc bc
    rst $38
    rlca
    rst $38
    ld [$ff07], sp
    ld c, a
    rst $38
    ld hl, sp-$31
    ld hl, sp-$19
    cp h
    rst $38
    reti


    rst $38
    rst $38
    add b
    rst $38
    ei
    rst $38
    sub l
    ld [$c5f8], sp
    rst $38
    db $fd
    push bc
    ld a, l
    add $ff
    rst $28
    ld a, a
    db $fc
    rra
    rra
    db $fc
    rst $38
    db $fc
    rla
    sub d
    pop bc
    ret nz

    ret


    sub d
    pop bc
    cp $c0
    ret


    add b
    add b

Call_043_40ff:
    ld b, b
    ret nz

    ld b, c
    ret nz

    and c
    rst $38
    ldh [rHDMA3], a
    ldh a, [$b3]
    ldh a, [$57]
    ldh a, [rNR22]
    rst $18
    ldh a, [rIE]
    ld a, [bc]
    rst $38
    add hl, bc
    db $fc
    ld [c], a
    inc de
    rst $38
    rst $38
    ld hl, $22ff
    rst $38
    ld b, d
    rst $38
    ld b, l
    rst $38
    ld a, a
    and d
    rst $38
    ld e, h
    rst $38
    ld b, h
    rst $38
    jp nz, $e0f0

    ld a, l
    inc h
    ld [$46e0], a
    rst $38
    adc b
    rst $38
    ld [hl], b
    ld a, b
    ldh [$7f], a
    add [hl]
    ld hl, sp+$08
    ld hl, sp+$48
    ldh a, [$90]
    ld d, d
    jp $40be


    ret z

    rla
    rst $38
    add hl, hl
    rst $38
    ld h, $fc
    ldh [rNR51], a
    rst $38
    rst $38
    ld c, a
    rst $38
    add h
    rst $38
    adc h
    rst $38
    dec d
    cp a
    rst $38
    adc d
    rst $38
    ld [hl], c
    rst $38
    ld de, $e0a8
    add h
    cp a
    rst $38
    sbc a
    ei
    ld c, [hl]
    cp $1f
    and $e0
    ret z

    rst $38
    rst $38
    add hl, de
    rst $38
    ld de, $32fe
    cp $22
    ei
    db $fc
    ld h, h
    ld [de], a
    pop bc
    ret nz

    add b
    ldh [$80], a
    ldh a, [$7f]
    add b
    ld hl, sp-$80
    db $fc
    add b
    cp $80
    ld [hl-], a
    pop bc
    rst $38
    db $fd
    ld bc, $01f9
    pop af
    ld bc, $01e1
    rst $38
    pop bc
    ld bc, $0181
    cpl
    ldh [$cf], a
    ret nz

    ei
    sbc a
    add b
    ret nz

    ret z

    ld b, l
    rst $38
    ld b, b
    ld a, a
    jr nz, @-$0f

    ld a, a
    add hl, de
    ccf
    rlca
    ldh a, [$a4]
    ld hl, sp-$61
    db $f4
    rst $38
    adc a
    ld a, [$f90f]
    ld b, $ff
    jp nc, $ffff

    ld [c], a
    ccf
    pop hl
    ccf
    ldh a, [$30]
    ld hl, sp+$58
    rst $38
    db $e4
    cp h
    ld [c], a
    ld a, $c1
    rst $38
    sub c
    rst $38
    rst $28
    adc e
    cp $6b
    sbc [hl]
    db $10
    rst $20
    add e
    add b
    rst $00
    or a
    ld b, b
    rst $20
    jr nz, @-$2c

    and c
    ld a, a
    ld bc, $a8b0
    dec bc
    cp [hl]
    db $76
    ldh [$03], a
    db $fc
    rst $20
    cp $1f
    xor h
    call nz, $ffe4
    ld a, a
    pop de
    ccf
    ld [$ec3f], a
    rla
    rst $38
    rst $30
    inc d

jr_043_41f0:
    rst $38
    ld [$a0db], sp
    db $fc
    db $f4
    ret z

    ld a, b
    ld a, a
    add l
    db $fc
    add l
    db $fc
    dec bc
    ld hl, sp+$13
    ld [c], a
    ret nz

    ei
    daa
    ldh [$d6], a
    and b
    nop
    ret nz

    nop
    ldh [rP1], a
    ld a, a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $34
    and b
    push de
    cp $f8
    ldh [$f8], a
    ldh a, [$e0]
    ldh [$e8], a
    ldh [$80], a
    nop
    ld sp, hl
    ldh [$ac], a
    and b
    cp $e1
    rst $38
    ld a, a
    ei
    ld l, [hl]
    rst $38
    rst $38
    ld l, a
    rst $38
    ld b, b
    rrca
    db $fc
    rlca
    rst $38
    rlca
    rst $38
    cp $07
    db $fc
    ei
    cp $a1
    rst $38
    pop af
    rst $18
    rst $38
    ld sp, hl
    rrca
    rst $38
    db $10
    cp $e2
    jr nz, @+$01

    rst $20
    ld b, b
    cp a
    add b
    jr z, jr_043_41f0

    ret nc

    and d
    ld bc, $0107
    ld [hl], e
    inc bc
    ld [bc], a
    cp $e3
    ld [hl+], a
    ret nz

    rst $38
    rst $38
    inc bc
    add sp, -$5e
    push af
    ld [bc], a
    ld a, l
    ldh [$03], a
    db $d3
    add c
    add b
    rst $38
    ld h, b
    rst $38
    ld a, a
    db $fc
    rst $18
    rst $30
    ld a, a
    rst $38
    dec e
    rst $38
    ldh a, [$c0]
    rst $30
    ld c, a
    ret nz

    ld e, a
    cp $e0
    ld a, a
    ret nz

    cp a
    add b

Jump_043_427f:
    ld hl, sp-$02
    pop hl
    ld a, [bc]
    ret nz

    db $fc
    ld [c], a
    cp a
    add b
    adc a
    add b
    add e
    ld a, [$80c5]
    ld bc, $e4ff
    inc bc
    ld bc, $010f
    ccf
    add sp, -$10
    add d
    ld d, b
    jp hl


    and [hl]
    ldh [rLCDC], a
    ret nz

    ret nz

    ld b, [hl]
    ld a, a
    ld b, e
    rst $38
    ld a, a
    ld b, d
    ld a, a
    ld b, d
    rst $38
    add d
    rst $38
    call nz, $faff
    ld c, $fa
    ld c, $fd
    call nz, $84fd
    ld a, h
    ld d, h
    ret nz

    db $fc
    ldh [$7f], a
    ld b, d
    inc bc
    ld [bc], a
    add c
    adc b
    ret nz

    push hl
    pop hl
    add b
    ret nz

    ld a, [$a09e]
    sbc h
    and b
    inc b
    rst $38
    inc c
    rst $18
    di
    ld e, $e3
    ld a, $c7
    adc c
    and b
    rrca
    ld hl, sp-$01
    rrca
    ld hl, sp-$01
    add b
    ld a, a
    ld b, b
    ccf
    ld hl, $fe96
    pop hl
    ld a, a
    ld b, c
    cp $e1
    rst $38
    ld c, h
    ret nz

    nop
    jp hl


    ccf
    ld d, d
    nop
    and b
    inc bc
    add b
    sub b
    add sp, -$13
    inc bc
    ret c

    add b
    ccf
    or $60
    db $fc
    ld hl, sp-$1b
    ld [$3e65], a
    rlca
    ld [$080f], sp
    rrca
    db $fd
    rrca
    db $fc
    ld [c], a
    rlca
    rlca
    rst $38
    rst $38
    ccf
    db $e4
    rst $38
    rra
    db $f4
    rrca
    ld a, [$fee7]
    rla

jr_043_4318:
    cp $bf
    rst $28
    cp $f3
    cp $ff
    rst $38
    adc d
    ldh [rVBK], a
    sbc a
    ld hl, sp-$61
    add sp, -$41
    ret nc

    or a
    ld h, b
    db $e3
    ld h, c
    inc bc
    rst $38
    nop
    adc a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    cp e
    ldh [rIE], a
    db $fc
    pop hl
    rst $38
    ccf
    ld bc, $e980
    rst $38
    rst $38
    rst $38
    rra
    ldh a, [$ef]
    ldh [$c7], a
    nop
    rst $20
    rst $08
    nop
    inc sp
    nop
    dec bc
    ret z

    ld h, b
    ret nz

    pop hl
    rst $38
    adc a
    and $c0
    ldh [rIE], a
    sub b
    ret nz

    db $e4
    add d
    ld l, c
    inc bc
    inc bc
    inc c
    call Call_043_620f
    ld l, d
    add b
    ld a, a
    db $10
    ret nz

    db $e4
    rst $20
    jr nc, jr_043_43ad

    ld a, e
    ld b, b
    ld a, a
    db $e4
    jp hl


    rra
    ld hl, sp+$07
    db $fc
    ld b, d
    ld h, e
    and b
    adc d
    jp $e1f8


    call c, Call_000_3ce1
    adc c
    call c, $c3e1
    inc a
    add h
    ei
    rst $30
    ld e, [hl]
    rst $38
    ld b, $d4
    jp hl


    inc bc
    ld [bc], a
    rlca
    dec b
    ld a, [c]
    db $e4
    jp hl


    rst $38
    jr nz, jr_043_4318

    db $ec

jr_043_4399:
    pop hl
    rrca
    ld a, [bc]
    rrca
    add hl, bc
    sbc $fc

jr_043_43a0:
    pop hl
    rra
    inc de
    ccf
    ld hl, $60fc
    pop bc
    rst $38
    ld sp, hl
    ld c, l
    ld a, h
    add l

jr_043_43ad:
    ldh a, [$e0]
    cp $ff
    dec b

jr_043_43b2:
    rst $38
    ld h, [hl]
    ld b, $7c
    add e
    rst $38
    add [hl]
    ld e, l
    and b
    rst $18
    and e
    ld hl, sp-$5f
    xor b
    ld b, d
    call nz, Call_043_67e9
    ld a, $22
    ld a, [hl]

jr_043_43c7:
    ld b, b
    adc b
    ld c, d
    ret nz

    daa
    ld e, $40
    add [hl]
    ld a, [c]
    call nz, $c8e2
    ld sp, hl
    ret nz

    cp [hl]
    and e
    jr c, jr_043_43a0

    ld a, h
    jp Jump_043_7edf


    db $e3
    ld a, [hl]
    pop de
    ld a, [hl]
    call z, $40e4
    rst $38
    rst $38
    jr nz, jr_043_43c7

    add hl, de
    rst $20
    rlca
    ldh [rP1], a
    ccf
    or a
    inc h
    rra
    inc de
    sbc h
    adc c
    rst $38
    ld c, b
    push bc
    ret nz

    jr nc, jr_043_4399

    rst $38
    ld e, b
    rst $20
    cp h

Jump_043_43fe:
    db $e3
    sbc h
    add d
    ld [hl-], a
    ld b, c
    cp $fc
    db $fc
    add d
    ld a, [$f881]
    add b
    ld a, a
    ld b, l
    ld a, a
    ld b, b
    cp a
    cp a
    jr nz, jr_043_43b2

    add hl, de
    rst $00
    rlca
    jp c, $e081

    rst $10
    nop
    rst $38
    ld sp, hl
    ld h, b
    add a
    ld [hl+], a
    rst $00
    and b
    rst $38
    ld a, $bf
    pop af
    ld e, a
    ldh [$bf], a
    ldh [$3f], a
    ld h, b
    add c
    adc a
    rst $38
    rst $38
    ld h, a
    sbc h
    db $eb
    ld a, [hl]
    rst $38
    sbc [hl]
    cp $ff
    add h
    cp $c4
    db $fc
    inc h
    db $fc
    inc b
    ld hl, sp-$69
    adc b
    ld hl, sp-$10
    call c, Call_000_20e1
    sbc b
    ret nz

    cp $e1
    ld a, a
    rst $20
    ld a, a
    ld a, e
    ld l, [hl]
    inc a
    add c
    cp h
    adc c
    ldh a, [rLCDC]
    ldh a, [$f7]
    jr nz, @-$0e

    db $10
    cp $e1
    ldh [rNR41], a
    ret nz

    ld b, b
    ld a, e
    add b
    add b
    call nc, Call_043_7fe9
    ld l, a
    ld a, a
    ld b, b
    db $e3
    ld b, d
    ld a, $bb
    add c
    db $fc
    cp a
    db $ec
    rst $38
    db $ec
    ld b, d
    and b
    call nz, $df22
    rra
    ld bc, $020f
    rlca
    sbc [hl]
    add b
    ld bc, $f601
    call c, $ffe1
    ret nz

    call nc, Call_000_0340
    cp $06
    db $fc
    rst $20
    inc e
    db $fc
    inc b
    ld l, h
    add c
    db $fc
    add c
    rst $38
    add a
    rst $38
    sbc a
    ld b, c
    rst $38
    ld sp, $21ff
    add a
    pop hl
    inc e
    ld h, b
    ld b, e
    cp e
    cp $42
    cp $e0
    add d
    db $fc
    add h
    nop
    and b
    inc b
    rst $18
    cp $c4
    cp $84
    db $fc
    cp $e2
    cp $42
    ld h, a
    pop bc
    ld bc, $7ef3
    ld b, b
    rst $30
    add b

Call_043_44c0:
Jump_043_44c0:
    rrca
    rst $38

jr_043_44c2:
    db $fc
    pop hl
    rst $38
    rst $38
    db $fc
    inc b
    db $fc
    call nz, $f23e
    ld l, $3f
    ld a, [$fe16]
    cp $fe
    ld [bc], a
    ld h, b
    and b
    cp d
    ldh [$ee], a
    ld h, b
    xor d
    db $fc
    nop
    ldh a, [$9e]
    ld b, b
    jr nz, jr_043_44c2

    jr nz, jr_043_44ff

    ldh [$e0], a
    db $fc
    ldh [rIE], a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    rst $38
    rst $38
    rst $38
    nop
    cp $fe
    ldh [$fc], a
    cp $e0
    xor a
    ld hl, sp+$00
    add d

jr_043_44ff:
    nop
    ldh a, [$e0]
    add b
    cp $e1
    cp a
    cp [hl]
    cp $e0
    sbc a
    add b
    pop bc
    add b
    nop
    rst $38
    db $ec
    jp nz, Jump_000_00ef

    ld [c], a
    nop
    ldh a, [$fe]
    ldh [$e0], a
    nop
    pop hl
    rst $38
    nop
    rst $00
    nop
    rst $08
    nop
    ld b, e
    nop
    ld b, a
    ei
    nop
    rrca
    cp $e0
    rlca
    nop
    adc a
    rrca
    ldh a, [$f7]
    ccf
    ret nz

    ld a, a
    ldh [$e8], a
    ret nz

    scf
    ldh a, [rIF]

jr_043_4538:
    db $fd
    ld hl, sp-$20
    db $e4
    ld bc, $0706
    sbc b
    rra
    ldh [$fe], a
    ldh [$e7], a
    ret nz

    jr nc, jr_043_4538

    dec c
    db $fc
    inc bc
    cp $7f
    pop hl
    rst $38
    jp $c780


    add b
    adc a
    cp $e0
    db $fd
    add a
    cp $e0
    db $e3
    add b
    di
    add b
    rst $38
    nop
    rst $30
    rst $38
    ld bc, $fe7f
    ldh [$3f], a
    nop
    ccf
    nop
    rst $38
    rra
    ld bc, $0243
    add e
    rst $38
    daa
    db $fc
    rst $38
    ld l, a
    ld hl, sp+$67
    db $fc
    rst $38
    call c, $fbff
    rst $38
    rst $38
    add h
    rst $38
    or l
    rst $00
    db $fc
    db $e3
    ld a, $ff
    pop hl
    ld a, a
    pop af
    sbc a
    ld hl, sp+$0f
    ld hl, sp-$01
    rst $08
    ld hl, sp+$1f
    db $fd
    rst $08
    ret nc

    ldh [rLCDC], a
    db $e3
    add b
    db $fc
    daa
    add b
    ld hl, sp-$80
    ld b, b
    ldh [$f0], a
    ldh [$7f], a
    cp $e0
    ret nz

    ldh [rIE], a
    ld bc, $021f
    ld b, a
    dec b
    adc c
    rst $38
    sbc c
    rst $38
    rst $38
    sbc h
    rst $30
    rst $18
    ld a, e
    rst $38
    ldh a, [rIE]
    ld a, a
    rra
    rst $38
    ld [c], a
    rst $38
    ld [hl+], a
    ld hl, sp+$1f
    add $e0
    rst $38
    sbc a
    db $fd
    cpl
    rst $38
    inc bc
    rst $38
    ld a, a
    rst $38
    or a
    and d
    rst $38
    and e
    ld [de], a
    pop hl
    cp $80
    nop
    db $e4
    add b
    add e
    jp nz, $f040

    db $e4
    or d
    ldh [$b0], a
    ld [c], a
    ld [hl], b

Jump_043_45e0:
    pop hl
    or b
    push hl
    nop
    rst $38
    rra
    nop
    ld b, c
    nop
    ld b, e
    ld [bc], a
    ld a, a
    ld a, [hl-]
    rst $38
    ld a, a
    ld d, [hl]
    ld a, a
    ld d, l
    ld a, a
    ld d, h
    rst $38
    ld d, [hl]
    rst $38
    rst $38
    ld l, e
    rst $38
    ld d, l
    rst $38
    jp z, $b1ff

Jump_043_45ff:
    rst $28
    rst $38
    sub b
    rst $38
    adc d
    ld h, h
    ldh [rVBK], a
    ld sp, hl
    ld c, a
    rst $38
    rst $38
    ld h, $ff

jr_043_460d:
    rla
    rst $38
    rst $20
    rst $38
    add hl, bc
    ei
    rst $38
    ld [$e0ee], sp
    inc e
    di
    db $10
    di
    jr nz, @+$01

    ld b, a
    inc b
    ld b, a
    dec b
    rrca
    inc b
    rrca
    add hl, bc
    rst $38
    rra
    db $10
    sbc a
    ld de, $21ff
    rst $38
    ld [hl+], a
    xor a
    rst $38
    pop de
    rst $38
    ld l, $88
    ldh [$e1], a
    call z, $12e0
    rst $38
    rst $08
    add hl, bc
    rst $38

jr_043_463d:
    db $fc
    rst $38
    ld b, h
    rst $38
    jr c, jr_043_463d

    ld [$43e0], a
    inc h
    ldh [rNR50], a
    ei
    ret z

    ei
    jr jr_043_460d

    jp nz, $e240

    ld b, b
    ldh a, [$80]
    and b
    rst $00
    jp nz, $80f7

    ld [c], a
    add b
    ldh a, [$e0]
    add b
    ldh [$80], a
    pop hl
    cp $d6
    ret nz

    rst $08
    add b
    rst $38
    ld l, c
    rst $38
    ld e, c
    rst $38
    rst $38
    ld b, a
    cp $44
    cp $22
    rst $38
    inc hl
    rst $38
    rst $38
    jr nz, @-$5f

    db $10

jr_043_4678:
    rst $38
    db $10
    rst $38
    jr jr_043_46ec

    rst $38
    ccf
    ld b, a
    ld a, l
    add e
    rst $38
    add hl, de
    rst $38
    and c
    rst $38
    rst $38
    and b
    rst $38
    rst $38
    ld b, b
    rst $38
    ldh a, [$ee]
    rst $38
    jr c, jr_043_4678

    cp h
    ld b, d
    cp $49
    rst $38
    ld b, a
    rst $30
    rst $38
    or a
    call z, $eb40
    pop bc
    add b
    rst $38
    jr nz, @-$10

    adc $e0
    inc c
    rst $38
    inc bc
    db $10
    push bc
    rst $08
    ld a, d
    rst $00
    rst $38
    ld a, l
    add a
    db $fc
    add e
    rst $38
    ld l, c
    ld a, a
    ld sp, $1fff
    db $10
    rra
    ld d, b
    rra
    rst $38
    inc l
    di
    rst $38
    ld e, [hl]
    pop af
    sbc a
    ld h, b
    rst $38
    ld c, b
    rst $38
    ld b, l

jr_043_46c8:
    rra
    rst $38
    or l
    rst $08
    rlca
    cp $b0
    jp $a1f0


    and [hl]
    ldh [$e7], a
    jr nz, jr_043_46c8

    db $10
    ld [c], a
    and e
    ldh [$a7], a
    rst $18
    db $10
    rst $28
    rst $30
    ld [$07f7], sp
    ldh a, [$a7]
    ret nz

    ld a, a
    ret nz

    rst $38
    rst $38
    ld b, b
    ld a, a

jr_043_46ec:
    ld b, b
    ld a, a
    ld a, a
    ld a, a
    ei
    ld l, [hl]
    rst $38
    rst $38
    ld l, a
    rst $38
    ld b, b
    rlca
    db $fc
    inc bc
    rst $38

jr_043_46fb:
    rst $38
    inc bc
    cp $03
    cp $ff
    cp $b1
    rst $38
    rst $38
    ld sp, hl
    rst $28
    ld sp, hl
    rrca
    jp $e740


    jr nz, jr_043_46fb

    rst $28
    cp $e0
    rst $00
    ld b, b
    db $10
    ret nz

    nop
    di
    nop
    rst $38
    ld h, b
    ccf
    ld h, b
    ccf
    jr nz, @+$41

    ccf
    ccf
    cpl
    dec a
    scf
    cp a
    scf
    ld h, h

jr_043_4727:
    ldh [rNR41], a
    jp nc, $d0e0

    ldh [rIE], a
    db $fd
    rst $38
    ret nc

    ld a, a
    ld hl, sp-$01
    db $fc
    rlca
    xor a
    db $fd
    rlca
    ei
    adc b
    or h
    ret nz

    db $10
    ret nc

    ldh [$c0], a
    ld a, [$a2e0]
    nop
    jr nz, jr_043_4727

    ld b, b
    rst $38
    ld b, [hl]
    rst $38
    ld b, e
    ei
    cp $42
    cp $e0
    add d
    cp $84
    ei
    ld c, $cf
    ei
    ld c, $ff
    call nz, $a0e6
    cp $e2
    ld a, a
    ld b, d
    adc $20
    ldh [rNR44], a
    rst $38
    ld de, $c0ea
    cp $e2
    sbc a
    db $10
    ccf
    db $fd
    rlca
    rst $38
    ld h, d
    rst $38
    add d
    cp $e0
    sbc $e3
    rst $38
    ld b, d
    ld b, e
    ld bc, $0347
    inc c
    rlca
    ld [$0fff], sp
    ld [$8f0f], sp
    rrca
    add sp, $0f
    rst $38
    rst $38
    rst $38
    cp $04
    cp $c4
    ld a, $f2
    ld l, $f3
    ld a, [$5e16]
    ldh [$5a], a
    ldh [rIE], a
    ld a, a
    ld b, c
    ld a, a
    cp a
    ld c, a
    ld hl, sp-$61
    add sp, -$41
    ret nc

    rst $30
    add d

jr_043_47a7:
    rst $38
    db $fd
    rst $38
    db $10
    and b
    add b
    ld [hl], b
    ret nz

jr_043_47af:
    jr nc, @-$1e

jr_043_47b1:
    jr nz, jr_043_4832

    ldh [$e1], a
    ldh [$27], a
    ldh [rIE], a
    rst $38
    db $10
    and a
    rst $30
    add a
    nop
    db $e3
    jp nc, $df80

    db $10
    rst $38
    dec a
    sbc a
    jp $827f


    rst $38
    add c
    or a
    add b
    db $fc
    pop hl
    rst $38
    scf
    pop bc
    ld a, a
    rst $08
    ret nz

    push hl
    ret nz

    ld a, a
    ret nz

    ldh [rLCDC], a
    jp z, $b07c

    ld [c], a
    ret nz

    add d
    rst $20
    rlca
    rst $28
    ld a, [bc]
    rst $08
    cp $e0
    ld a, h
    ret nz

    add l
    nop
    and b
    add a
    ld hl, sp-$61
    ldh [$bf], a
    and b
    adc b
    rra
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    add b
    xor d
    ldh a, [$80]
    jr nc, jr_043_47a7

    rst $20
    ld [hl], b
    rst $38
    ld a, [c]
    ld l, $a1
    jr nc, jr_043_47b1

    inc hl
    rst $38
    cp $fe
    jr nc, jr_043_47af

    ld a, [bc]
    rst $38
    ld d, $7f
    ld a, [hl+]
    ld a, a
    daa
    rst $38
    ccf
    inc [hl]
    ccf
    dec hl
    rra
    db $10
    ld e, a
    dec e
    rst $38
    pop bc
    rst $38
    sub e
    cp $b3
    cp $b9
    rst $28
    rst $38
    rst $38
    ld h, a
    rst $38
    ld a, l
    rst $38
    jp nz, Jump_043_5aff

    rst $38

jr_043_4832:
    db $e3
    cp $f1
    rra
    ldh a, [$3f]
    ld hl, sp+$4f
    dec a
    db $fc
    and l
    ldh [$fc], a
    rrca
    cp $e7
    ret nz

    add d
    cp $80
    rst $38
    ld a, h
    ret nz

    ld a, h

jr_043_484a:
    ret nz

    ld a, b
    ret nz

    add d
    add b
    rra
    ld b, a
    dec b
    ld b, a
    inc b
    rrca
    ld c, [hl]
    and d
    and h
    and b
    ld c, [hl]
    and c
    ld d, a
    ld hl, $d2ff
    ld c, [hl]
    and b
    and c
    ret nz

    add b
    sub d
    ld d, b
    and b
    ld a, a
    inc a
    rst $38
    ld b, d
    rst $38
    inc h
    rst $38
    ld a, [hl-]
    ld d, b
    and a
    rst $38
    ld c, a
    add hl, bc
    ld c, a
    add hl, bc
    rrca
    add hl, bc
    rrca
    inc b
    rst $38
    rlca
    inc b
    add a
    inc b
    db $e3
    ld [bc], a
    di
    ld [bc], a
    xor a
    rst $38
    ld h, l
    rst $38
    ld e, b
    jp $c5a0


    ret c

    ldh [$67], a
    rst $38
    db $fc
    ld h, a
    rst $38
    inc sp
    rst $38
    dec bc
    rst $38
    di
    ei
    rst $38
    inc b
    cp $e0
    ld b, l
    rst $38
    adc [hl]
    ei
    adc b
    add e
    di
    db $10
    jr nc, jr_043_484a

    ret nz

    ld h, [hl]
    xor $80
    ld l, [hl]
    and [hl]
    ld [hl], b
    and d
    ld a, [$c7ff]
    ld a, l
    rst $00
    ld a, h
    add e
    rst $38
    jp hl


    rst $38
    ld l, [hl]
    ld [hl], b
    and h
    ld [bc], a
    rst $38
    ld bc, $e1fe
    db $fd
    ld bc, $6460
    rst $38
    jr c, @+$01

    inc d
    rst $28
    dec sp
    rst $08
    ld sp, hl
    ld b, $fb
    rst $38
    sub d
    ld b, c
    add b
    and c
    rst $38
    rst $38
    jr nc, @+$01

    rst $38
    ld e, b
    and $bc
    ld [c], a
    ld a, $c1
    rst $38
    sub c
    sbc a
    rst $38
    adc e
    cp $6b
    sbc [hl]
    ld d, b
    adc c
    ld b, b
    ld h, b
    ld b, b
    ld sp, hl
    ld h, b
    ld [hl], h
    and b
    ld [hl], b
    xor c
    rrca
    db $fc
    rlca
    rst $38
    rlca
    rst $38
    cp $07
    db $fc
    ei
    cp $a1

jr_043_48fd:
    rst $38
    pop af
    ccf
    rst $38
    ld sp, hl
    rrca
    db $e3
    jr nz, jr_043_48fd

    cp h
    add b
    ld [hl], b
    and a
    xor $a0
    and d
    add [hl]
    rst $38
    add e
    cpl
    ret nz

    add c
    rst $38
    ld b, c
    db $db
    rst $38
    ld b, b
    and b
    xor e
    rst $38
    jp nz, Jump_043_6210

    ld bc, $7f0e
    inc bc
    ld b, $03
    add a
    inc bc
    ld [c], a
    inc bc
    jp nz, $ff40

    ld b, b
    rst $38
    db $fc
    dec bc
    cp $05
    rst $38
    rrca
    ld l, a
    rst $38
    ld hl, sp-$01
    rlca
    nop
    pop bc
    ld b, c
    rst $38
    ret nz

    xor d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    di
    nop
    dec e
    nop
    and $00
    push af
    cp d
    cp $e0
    and $f6
    ldh [rIE], a
    rst $38
    rst $38
    nop
    cp $fe
    jp hl


Jump_043_4967:
    di
    nop
    rrca
    nop
    ld a, c
    nop
    ld h, c
    rst $38
    nop
    ld b, c
    nop
    inc bc
    nop
    rlca
    nop
    rra
    db $fd
    ld bc, $e2e2
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

    rst $18
    ld a, a
    add c
    rst $38
    inc de
    cp $d2
    ld [c], a
    add b
    ld a, a
    rst $38
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    jp $f1fe


    rst $38
    ccf
    rst $08
    nop
    ldh a, [rP1]
    sbc [hl]
    nop
    add [hl]
    rst $38
    nop
    add d
    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp-$02
    or h
    and $f0
    nop
    rst $08
    nop
    cp b
    nop
    ld h, a
    and l
    inc bc
    and d
    push hl
    rrca
    and [hl]
    ldh [$88], a
    ldh [$80], a
    sbc b
    and $03
    cp a
    call z, $b00f
    ccf
    ld b, b
    ld a, a
    add d
    push hl
    adc a
    ld a, a
    add b
    ld [hl], e
    ldh [rNR33], a
    ld hl, sp+$06
    db $fc
    ret nz

    jp hl


    rst $28
    cp e
    inc bc
    ld l, h
    rrca
    ret nz

    jp hl


    sbc l
    add b
    ld h, [hl]
    rst $20
    ldh [rIE], a
    ld bc, $e0fe
    ld c, [hl]
    db $e3
    ld bc, $02ff
    rst $38
    rst $38
    ld [bc], a
    inc sp
    cp $39
    rst $28
    cp a
    or $ff
    rst $38
    ldh [rIE], a
    cp $ff
    ld b, l
    rst $38
    push bc
    rst $38
    rst $38
    ld [hl+], a
    pop af
    rra
    pop af
    ccf
    ld a, [$bb5e]
    rst $38
    ld b, $f0
    ld [c], a
    ld b, [hl]
    rst $38
    adc b
    ld [hl+], a
    ld [$7080], a
    cp $e0
    ld [de], a
    push hl
    cp b
    pop hl
    ld [hl+], a
    ldh [$5c], a
    rrca
    ld [hl], b
    ld a, d
    ldh [rNR32], a
    ld h, $e1
    or [hl]
    db $e3
    ld a, d
    ldh [rNR30], a
    ld a, d
    ldh [rNR52], a
    pop hl
    or [hl]
    pop hl
    add e
    ei
    ld e, [hl]
    ld [c], a
    set 0, [hl]
    jp hl


    ld a, h
    db $e3
    add $e7
    ld a, h
    ld [c], a
    ld b, c
    ret


    jp nz, $e7c6

    ld a, h
    pop hl
    dec b
    call z, $92ed
    rst $20
    dec sp
    xor $cf
    cp e
    cp $ff
    db $e4
    sub d
    pop hl
    call z, $0fe9
    ld [bc], a
    rst $38
    di
    ld bc, $1c1d
    cp $2a
    rst $38
    ld d, l
    rst $38
    rst $38
    ld c, e
    rst $38
    ld b, l
    ld a, a
    ld b, d
    rst $38
    inc e
    rst $38
    rst $38
    ld b, h
    rst $38
    jp nz, Jump_000_21ff

    rst $38
    inc h
    rst $38
    rst $38
    inc de
    rst $38
    jr @+$01

    inc d
    rst $38
    ld [hl], b
    cp $18
    ldh [$86], a
    rst $38
    ld [$48ff], sp
    rst $38
    sub b
    cp a
    rst $38
    jr nc, @+$01

    ld e, b
    ldh a, [$80]
    sbc b
    jp nz, $e500

    ld e, l
    cp $e0
    ld h, a
    adc [hl]
    ret nz

    sbc b
    jp nz, $e701

    ld [bc], a
    dec l
    cp e
    cp $e0
    rst $20
    ld bc, $c020
    add sp, -$1a
    push bc
    or [hl]
    db $e4
    ld [hl], c
    add [hl]
    and $c6
    or [hl]
    ld [c], a
    ld e, b
    jp $80e7


    db $dd
    cp $e0
    sbc [hl]
    ret nz

    ld [c], a
    ld [bc], a
    di
    ld [bc], a
    rra
    add $e0
    ldh [$a6], a
    call $c6fe
    and $21
    rst $38
    daa
    cp $13
    rst $38
    ld h, [hl]
    call c, $e5c6
    ld a, h
    ldh [$c8], a
    rst $38
    sub b
    add b
    ldh [$80], a
    cp b
    inc h
    add $e0
    add b
    add sp, $01
    ret nz

    ldh [$80], a
    pop hl
    ld bc, $a2a0
    db $ec
    ret nz

    sub b
    cp h
    ld [$c1ec], a
    cp h
    add sp, -$28
    and d
    add b
    add b

jr_043_4ae8:
    pop hl
    ld b, b
    db $e3
    rst $38
    ld e, a
    ld [hl+], a
    ccf
    ld [hl+], a
    ld a, a
    inc hl
    cp $e1
    ccf
    or $e0
    rst $38
    ccf
    jr nz, @+$01

    ld a, [hl-]
    rst $08
    ld sp, hl
    ld b, $ff
    rst $18
    ld [de], a
    rst $38
    and d
    rst $38
    and c
    dec de
    ret nz

    ret nz

    rst $38
    rst $38
    rst $20
    cp h
    db $e3
    ld a, $c1
    rst $38
    sub c
    rst $38
    rst $38
    adc e
    cp $6b
    sbc [hl]
    rrca
    db $fc
    rlca
    db $fd
    cp $80
    and c
    cp [hl]
    jr c, jr_043_4ae8

    db $fc
    and d
    cp $d2
    di
    cp $aa
    db $fc
    ldh [rLCDC], a
    and a
    rra
    inc e
    ccf
    ld a, [hl+]
    ei
    ld a, a
    ld d, a
    add $c0
    inc hl
    cp $13
    cp $1b
    sbc a
    rst $38
    dec [hl]
    rst $08
    ld a, d
    adc a
    or [hl]
    ldh [$c6], a
    ret nz

    adc b
    cp $c6
    ret nz

    cp b
    rst $30
    ld e, h
    db $e3
    cp [hl]
    db $e3
    ld a, $d9
    pop hl
    ld a, [c]
    add b
    db $10
    and [hl]
    ld bc, $4607
    ldh [rIE], a
    add hl, de
    ld e, [hl]
    sbc h
    ret nz

    ld a, [hl-]
    rst $08
    ld a, c
    add [hl]
    adc h
    ldh [rNR43], a
    adc h
    ldh [$f8], a
    sbc h
    pop bc
    adc h
    jp hl


    db $10
    xor b
    add b
    ldh [rLCDC], a
    ld hl, sp+$20
    ldh a, [$ec]
    jp nz, $e8cc

    db $ec
    pop bc
    call z, $ffe9
    ld de, $0eff
    cp $9e
    adc c
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld a, a
    ld a, a
    ei
    rst $18
    ld l, [hl]
    rst $38
    ld l, a
    rst $38
    ld b, b
    cp $e1
    rlca
    cp $ff
    rlca
    db $fd
    cp $fc
    cp l
    db $ec
    rst $38
    db $ec
    ld [hl], a
    rst $38
    inc b
    db $fd
    cp $e0
    db $eb
    ld a, [hl]
    rst $38
    db $fc
    add [hl]
    db $ec
    ld h, [hl]
    add d
    ld_long a, $ffa0
    ld b, d
    ld b, d
    ret nz

    ld hl, $10ff
    cp d
    ld a, [bc]
    ret nz

    rlca
    ld l, h
    pop hl
    ldh [$7f], a
    ret nz

    cp $e2
    rst $38
    rst $10
    rst $38
    ei
    ld l, [hl]
    ld hl, sp-$3c
    db $fc
    cp b
    ld [c], a
    rst $38
    cp a
    db $fd
    rst $28
    inc e
    and d
    ld b, b
    rst $38
    jr nz, @+$01

    ldh a, [$1f]
    ld e, a
    ldh a, [$8f]
    ld hl, sp+$4f
    ld hl, sp-$24
    add b
    inc b
    cp $e0
    dec e
    ld [$e2fe], sp
    db $10
    rst $38
    ld de, $e4c4
    add hl, bc
    add b
    ld a, h
    db $e3

jr_043_4bee:
    ld a, [$c0bc]
    rst $38
    ld a, h
    ldh [$fc], a
    ei
    cp $a1
    rst $38
    ld c, a
    pop af
    rst $38
    ld sp, hl
    rrca
    sbc d
    ldh [$fe], a
    pop hl
    jr nz, jr_043_4c66

    ldh [$c8], a
    ld d, h
    add e
    sbc d
    add d
    cp h
    and $10
    add b
    rst $20
    add d

jr_043_4c10:
    ldh [$ee], a
    rst $38
    dec b
    ld l, a
    ld a, b
    call nz, $beff
    push hl
    add h
    ld [c], a
    cp h
    add sp, $08
    add h
    sub b
    ld h, d
    ld a, [$a070]
    ld bc, $806c
    ld b, e
    cp $42
    cp $42
    ld l, a
    rst $38
    add d
    rst $38
    add h
    ld h, [hl]
    pop hl
    db $fd
    call nz, $e0f8
    ld a, [bc]
    cp $e3
    ld b, d
    sub $a0
    ld b, c
    ret z

    ld h, h
    jr nc, jr_043_4bee

    add $e0
    jr nc, @-$5c

    ret


    ld [bc], a
    ret nz

    ldh [$c8], a
    pop bc
    add b
    or $c1
    ld [bc], a
    add b
    inc d
    rst $38
    xor a
    inc c
    cp $ef
    rst $38
    sbc h
    ld h, c
    jr nz, @-$19

    and b
    add b
    rst $38
    rst $38
    ld d, b
    rst $38
    ld hl, $f888

jr_043_4c66:
    ld e, a
    ld hl, sp-$15
    ld hl, sp-$10
    jr nc, jr_043_4c10

    rst $20
    ld h, [hl]
    and b
    rra
    ld de, $5fff
    inc d
    rra
    ld a, [bc]
    rst $20
    rlca
    db $10
    ld h, [hl]
    ld b, b
    cp e
    and b
    rst $20
    add $ff
    ld b, e
    xor h
    ret nz

    ld a, h
    ld [c], a
    ei
    ld c, $fb
    di
    ld c, $ff
    ld a, h
    add sp, -$30
    ldh [rNR11], a
    rra
    inc d
    rst $28
    ld d, e
    ld a, [bc]
    cp a
    adc $e0
    ret nc

    db $e4
    ld b, b
    ret nc

    ldh [$c3], a
    ret nc

    push hl
    rst $38
    di
    ld bc, $070e
    ld a, b
    rrca
    ld l, b
    rrca
    cp a
    ld c, b
    rrca
    rrca
    rrca
    ld [$c20f], sp
    ld b, b
    jp nz, Jump_000_3fff

    ld a, [$fe17]
    dec bc
    cp $17
    db $fc
    rst $28
    rst $28
    ld hl, sp+$0f
    ld hl, sp-$4e
    ld b, b
    adc a
    ldh a, [$bf]
    rst $38
    ret nc

    rst $38
    and b
    rst $38
    ret nc

    ld a, a
    rst $28
    ccf
    rst $28
    ldh [$3f], a
    rst $38

jr_043_4cd4:
    rst $38
    ldh [rLCDC], a
    ret nz

    ld a, $e0
    rst $38
    ld h, $e0
    ld [hl+], a
    ldh [$e0], a
    ldh [rNR41], a
    ldh [$be], a
    add d
    ld b, b
    ld bc, $030f
    ld a, h
    rlca
    ret nz

    add sp, $04
    rst $18
    rst $38
    call nz, $f23f
    cpl
    cp h
    ldh [rIE], a
    cp $fb
    inc bc
    cp $72
    ld b, b
    ld b, c
    rst $38
    ld c, a
    ld hl, sp-$61
    push hl
    add sp, -$44
    ldh [rIE], a
    ld d, c
    ld h, b
    ret nz

    ld [c], a
    add b
    ld e, [hl]
    ret nz

    adc b
    ret nz

    rst $20
    jp hl


    ld [c], a
    cp $e8
    nop
    rst $38
    db $ec
    ld [c], a
    push hl
    ld l, b
    add e
    rst $20
    add sp, -$70
    ld b, [hl]
    ld a, b
    push bc
    add sp, -$3b
    rst $08
    sbc $e0
    sbc [hl]
    add b
    add [hl]
    reti


    add b
    ld hl, sp+$25
    ld [$8245], sp
    add b
    jr z, jr_043_4cd4

    add b
    ld hl, sp+$30
    sbc h
    and $f8
    inc h
    call c, Call_000_1026
    ld c, e
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
    rst $38
    rst $38
    rst $38
    ccf
    nop
    rst $08
    nop
    rst $30
    nop
    rst $18
    inc sp
    nop
    ld de, $1900
    cp $e0
    rst $38
    rst $38
    ei
    rst $38
    nop
    cp $e9
    dec a
    nop
    ei
    nop
    rlca
    cp e
    nop
    or a
    cp $e0
    rst $28
    nop
    rra
    and $e9
    rrca
    rst $18
    ldh a, [$3f]
    ret nz

    ld a, a
    add e
    jp nc, $c0e7

    ccf
    rst $18
    ldh a, [rIF]
    ld hl, sp-$39
    db $fc
    jp nz, $fce7

    nop
    rst $28
    rst $30
    rlca
    ld hl, sp+$1f
    or d
    rst $20
    ccf
    nop
    rst $38
    db $fc
    sbc $e0
    and d
    and $03
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$fd], a
    ccf
    sub d
    and $f0
    rrca
    db $fc
    inc bc
    cp $f1
    rst $38
    rst $38
    rst $38
    ld bc, $03fe
    cp $03
    db $fc
    db $fd
    rlca
    cp $e1
    cp $03
    rst $38
    ld bc, $fe13
    rst $38
    add hl, de
    rst $38
    ccf
    rst $28
    ld a, a
    ret nz

    ld a, a
    cp $ff
    ld a, a
    push hl
    rst $38
    call nz, $a1ff
    db $e3
    ld a, $ff
    di
    ld a, $f3
    ld e, [hl]
    db $fd
    inc c
    db $fd
    ld a, h
    cp a
    rst $38
    and [hl]
    rst $38
    and l
    rst $38
    ld c, l
    ld d, d
    db $eb
    rst $38

Call_043_4de3:
Jump_043_4de3:
    ld [hl], l
    jr c, jr_043_4e28

    db $e4
    ld bc, $e3b8
    cp $03
    ldh [$5a], a
    ldh [rIE], a
    adc b
    rst $38
    add hl, bc
    rst $38
    inc c
    rst $38
    ccf
    di
    db $fd
    ccf
    sub c
    ldh [rTAC], a
    db $fc
    db $e3
    cp $f1
    sbc a
    rst $38
    ld sp, hl
    rra
    db $fd
    sub a
    rst $38
    xor [hl]
    rst $38
    ld b, $fb
    rst $38
    cp a
    ret nz

    db $ec
    nop
    ret


    ld a, a
    reti


    ld a, a
    rst $38
    call c, $bf77
    inc sp
    cp a
    ld a, $ff
    ld h, l
    cp $a0
    ldh [$b2], a
    ld hl, sp+$0f
    ld hl, sp+$1f
    db $fc
    and a

jr_043_4e28:
    rst $38
    cp $83
    cp $7f
    cp $a7
    rst $38
    inc hl
    rst $38
    rst $38
    add l
    ldh [$3f], a
    pop bc
    ld a, a
    sub e
    cp $ff
    or e
    cp $b9
    rst $28
    rst $38
    db $76
    rst $38
    ld h, b
    rst $38
    rst $38
    db $fd
    rlca
    db $fc
    jp $f1fe


    ccf
    ccf
    ldh a, [$1f]
    ldh a, [$3f]
    db $fc
    ld e, a
    ld c, d
    ldh [rLCDC], a
    ldh [$bf], a
    ccf
    ld [bc], a
    rst $08
    ld [bc], a
    rst $30
    ld bc, $c6b0
    sbc [hl]
    rst $38
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    ld b, h
    rst $38
    db $e3
    rst $38
    cp $23
    rst $38
    ld de, $18ff
    rst $38
    dec [hl]
    rst $38
    rst $38
    dec h
    rst $38
    ld b, [hl]
    rst $38
    add h
    rst $38
    ret z

    rst $38
    ld a, a
    ret z

    rst $38
    sub b
    rst $38
    inc a
    rst $00
    ld a, h
    rst $38
    add d
    cp $d3
    cp $ab
    cp $d2
    ld a, [hl]
    ccf
    and d
    ld a, $fc
    ld e, h
    db $fc
    ld b, h
    ret nz

    ldh [rSVBK], a
    pop bc
    rst $30
    ld bc, $0133
    ld [hl], b
    jp $f27f


    rst $38
    jp nc, $ffff

    ret z

    rst $38
    daa
    rst $38
    jr nz, @+$01

    and b
    db $eb
    rst $38
    ld [hl], d
    cp [hl]
    ldh [rHDMA2], a
    cp $e0
    and [hl]
    rst $38
    ld a, [de]
    rst $28
    rst $38
    inc de
    rst $38
    and d
    xor d
    ldh [$e4], a
    rst $38
    add b
    rst $38
    db $fc
    add b
    di
    add b
    rst $28
    add b
    call z, $f700
    adc b
    nop
    sbc b
    cp $e0
    rst $38
    ld [hl+], a
    ld a, a
    ld b, c
    rst $38
    rst $38
    ld c, e
    rst $38
    ld d, l
    ld a, a
    ld c, d
    ld a, l
    ld b, h
    rst $38
    ccf
    ld a, [hl+]
    ccf
    ld [hl+], a
    rst $38
    xor h
    rst $38
    and h
    rst $28
    rst $38
    ld h, d
    rst $38
    ld hl, $e0d0
    db $10
    rst $38
    ld [$ffff], sp
    inc a
    rst $38
    ld a, c
    rst $38
    ld [bc], a
    rst $38
    add d
    cp a
    rst $38
    ld [hl+], a
    rst $38
    rst $00
    rst $38
    inc b
    ldh a, [$e0]

jr_043_4f02:
    jr jr_043_4f02

    jr nz, @-$3a

    ld bc, $01b7
    rst $28
    ld bc, $021f
    cp $e4
    ldh [$34], a
    rst $08
    ld a, e
    adc a
    ld sp, hl
    ld b, $ff
    db $fd
    ld [de], a
    db $dd
    ldh [$a1], a
    rst $38
    ret nz

    ld a, a

Call_043_4f1f:
    di
    ld e, a
    rst $38
    pop hl
    cp a
    db $e3
    ld a, $c3
    cp $97
    cp $bf
    adc a
    ld sp, hl
    ld l, a
    sbc b
    rrca
    ld hl, sp+$5e
    ldh [$c4], a
    rst $38
    ld hl, sp+$08
    db $fd
    ld [$10fd], sp
    rst $30
    ldh [$f5], a
    ld hl, sp-$20
    xor l
    ld bc, $c0ae
    ld [$1cff], sp
    rst $20
    rst $38
    ld a, $c7
    ld a, l
    add e
    rst $38
    adc c
    rst $38
    pop de
    rst $30
    ld a, a
    ret nc

    ld a, a
    sbc h
    pop hl
    rst $30
    inc a
    di
    ld e, [hl]
    rst $30
    pop hl
    rst $38
    ld c, b
    ei
    ret nz

    or l
    rst $08
    cp h
    nop
    rst $18
    rst $18
    nop
    ldh [rP1], a
    db $ed
    cp $e0
    rst $30
    add b
    rst $38
    ld hl, sp-$40
    rst $38
    inc a
    rst $08
    ld a, [$fd87]
    rst $38
    rst $00
    ld a, h
    jp $e97f


    ld a, a
    pop af
    sbc a
    cp $ba
    ret nz

    rra
    rst $38
    inc l
    di
    sbc $f1
    sbc a
    or l
    ld h, b
    jp nc, Jump_043_45e0

    jp nc, $03e0

    cp $d0
    db $e4
    add b
    rst $38
    db $ed
    add b
    rst $30
    ld b, b
    ld hl, sp+$40
    rst $38
    ld b, b
    ld [$a870], a
    ld bc, $e090
    ld a, [hl-]
    ld a, [hl+]
    ldh [rNR23], a
    rst $28
    inc a
    rst $20
    rst $08
    ld a, d
    add a
    ld c, [hl]
    db $e4
    ld a, [de]
    ldh [$38], a
    rst $20
    ld a, h
    rst $38
    db $e3
    cp [hl]
    pop bc
    rst $38
    sub c
    rst $38
    adc e
    cp $bb
    ld l, e
    sbc [hl]
    ld [de], a
    ldh [rDIV], a
    rst $38
    rrca
    ld sp, $21e0
    sbc $0c
    ldh [rNR51], a
    rst $38
    ld [hl+], a
    ret nz

    or l
    and b
    ret nz

    ld a, a
    cp a
    rst $38
    rst $38
    db $dd
    rst $30
    rst $38
    rst $30
    ld h, [hl]
    ret nz

    ld b, b
    rst $30
    rlca
    db $fc
    dec b
    cp $e0
    db $fd
    db $fc
    db $dd
    ld [hl], h
    db $eb
    rst $38
    db $f4
    and $c0
    ld bc, $c0de
    ld b, d
    rst $38
    sub h
    db $eb
    rst $38
    adc e
    call c, Call_043_44c0
    or d
    and c
    ldh a, [$3f]
    ldh [rIE], a
    ld a, a
    and b
    cp a
    and b
    ccf
    cp a
    ccf
    db $fd
    sbc a
    scf
    rst $38
    scf
    rst $38
    jr nz, jr_043_507b

    and b
    ld l, c
    and b
    inc bc
    rst $38
    cp $ff
    cp $df
    db $76

jr_043_501a:
    rst $38
    or $ff
    rst $28
    ld [bc], a
    db $e3
    ld a, [hl]
    pop bc
    ld b, h
    ldh [$d1], a
    rst $38
    db $e3
    rst $00
    ld a, $ff
    inc e
    add $81
    adc e
    and d
    ld [c], a
    ldh [$bb], a
    rst $28
    db $eb
    rst $38
    rst $28
    sub [hl]

jr_043_5037:
    ret nz

    ld [bc], a
    ld [bc], a
    ret nz

    jr nz, @+$01

    ld [hl], b
    rst $38
    adc a
    ld hl, sp-$79
    db $fc
    ld d, a
    db $fc
    and a
    db $fc
    ei
    rst $00
    ld a, h
    or $a0
    adc d
    rst $38
    add [hl]
    rst $38
    add e
    cp d
    db $fc
    and b
    ld a, h
    sub [hl]
    add d
    inc a
    jp $c07e


    pop hl
    pop bc
    ld d, l
    ld a, a
    cp [hl]
    db $e4
    inc e

jr_043_5062:
    ld [hl], b
    adc d

jr_043_5064:
    ld bc, $a2c2
    ld b, c
    ld c, [hl]
    ret nz

    ld e, d
    cp $e3
    inc b
    ld h, d
    add b
    ldh [$1f], a
    ld [hl], $c1
    inc c
    jr nc, jr_043_5037

    db $fd
    jr nz, jr_043_5064

    and b

jr_043_507b:
    add b
    db $fc
    ld b, b
    di
    ld b, b

jr_043_5080:
    rst $28
    rst $38
    ld b, b
    call z, $e840
    jr nz, jr_043_5080

    jr nz, jr_043_5062

    ld de, $9870
    add c
    jr nc, jr_043_501a

    call c, Call_000_23e1
    nop
    ret nz

    cp d
    pop hl
    cp b
    pop hl
    ld l, $1c
    pop bc
    ld h, d
    rst $38
    jp nz, $e01a

    ld b, d
    and [hl]
    ld [c], a
    ld a, [c]
    and c
    db $f4
    ld a, [c]
    pop hl
    sbc d
    pop hl
    ld hl, $a0d8
    jr c, @-$02

    nop
    di
    ld d, b
    inc d
    add b
    or b
    and [hl]
    adc h
    ret nz

    ld d, b
    and b
    ld b, e
    ret nc

    ld [c], a
    add d
    ld c, b
    and b
    push hl
    inc b
    ret z

    and b
    call nz, $a040
    cp $e3
    ld b, d
    ccf
    ld [bc], a
    rst $38
    ei
    inc bc
    inc b
    rlca
    cp b
    rrca
    cp b
    rrca
    rst $28
    rst $28
    rrca
    jr @+$11

    jp nz, Jump_000_0460

    rst $38
    jp nz, Jump_000_3f9f

    ld a, [c]
    cpl
    ld a, [$de17]
    ret nz

    jp c, $ffc0

    cp $02
    ret nz

    rra
    db $f4
    rra
    ld hl, sp+$0f
    db $fc
    rlca
    db $db
    rst $38
    inc bc
    and [hl]
    ld h, b
    rst $38
    cp h
    push de
    add b
    db $10
    ldh a, [$bf]
    dec e
    ldh a, [$2d]
    ldh [$f7], a
    ret nz

    ret nz

    and b
    rst $38
    db $eb
    dec a
    ld bc, $eec0
    call nz, $eac0

jr_043_5112:
    ld b, c
    rst $38
    ld b, a
    ld e, a
    ld hl, sp-$61
    add sp, -$41
    ret nc

    ld h, a
    ld h, b
    add b
    ld h, e
    ld h, b
    cp [hl]
    ret nz

    and b
    add b
    ld h, b
    ret nz

    dec l
    ldh [$c0], a
    ldh [$e0], a
    xor e
    jr c, @-$1e

    ld d, d
    ld h, b
    jr nz, jr_043_5112

    db $ec
    add b
    ldh [$ec], a
    ld b, c
    inc hl
    rst $38
    ld c, a
    ret nz

    jp hl


    cp c
    ld [c], a
    cp $e8
    nop
    rst $38
    db $ec
    ld [c], a
    rst $20
    ld hl, sp-$58
    add e
    ld b, b
    ld l, c
    ret c

    ld b, c
    call z, $8880
    add b
    sbc b
    call nz, $e0fe
    sbc b
    pop hl
    ldh [rOCPS], a
    and b
    ret z

    ld b, l
    ret c

    ld b, l
    inc sp
    ld bc, $13f7
    ld bc, $fe1b
    ldh [$3f], a
    ld bc, $01fb
    add hl, de
    rlca
    xor d
    add b
    ld c, b
    and b
    add b
    ld hl, sp-$72
    add sp, -$48
    ld c, l
    ldh a, [$88]
    ld bc, $f000
    pop bc
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    inc b
    nop
    scf
    di
    nop
    ld b, $fa
    ldh [$64], a
    nop
    ldh a, [$e3]
    db $fc
    add sp, -$02
    ldh [$e2], a
    ld hl, sp+$00
    push hl
    nop
    call z, $ac00
    xor e
    nop
    cp b
    ldh [$e1], a
    add b
    cp $e9
    nop
    rst $38
    db $ec
    ld [hl], h
    cpl
    nop
    db $f4
    nop
    db $e4
    db $eb
    ldh [rDIV], a
    cp d
    db $eb
    xor h
    db $e3
    rst $30
    ld [bc], a
    ei
    inc bc
    and d
    db $eb
    inc b
    nop
    add e
    nop
    sbc a
    add a
    nop
    rst $00
    nop
    db $e3
    sbc [hl]
    ldh [$d2], a
    rst $28
    rst $38
    rst $10
    inc bc
    ei
    ld b, e
    ld [hl], d
    db $eb
    add h
    add h
    ld [$80ff], a
    ei
    ld hl, sp-$80
    ld d, d
    and $06
    db $fd
    rlca
    cp $03
    rst $38
    rst $38
    ld bc, $43e6
    xor $63
    sbc $73
    rst $38
    xor h
    ccf
    and b
    ccf
    ret nz

    rst $38
    inc bc
    rst $38
    rst $38
    daa
    db $fc
    di
    add b
    add [hl]
    add b
    add a
    add e
    rst $38
    ld h, [hl]
    and $1a
    cp $04
    db $fc
    add d
    cp $6b
    pop af
    ld a, a
    ld [hl+], a
    db $ec
    ldh a, [$c2]
    push hl
    rst $38
    rlca
    pop de
    ldh [rIE], a
    ld bc, $0bff
    rst $20
    ld h, e
    rst $38
    ld [hl], e
    cp a
    rst $30
    ccf
    cp a
    ccf
    add sp, -$40
    rst $38
    rst $38
    pop hl
    rst $38
    ei
    pop bc
    di
    jp nz, $e6e0

    and $fe
    cp $fc
    sbc a
    db $fc
    cp $fe
    rst $38
    rrca
    jp c, $c2e0

    db $eb
    ldh [rIE], a
    push hl
    add b
    call z, $ac80
    add b
    cp b
    add b
    rst $38
    add e
    add b
    add a
    add b
    rst $00
    add b
    db $e3
    add b
    ld hl, sp-$48
    push bc
    ld hl, sp-$3b
    ld a, [$09ce]
    cp $07
    db $fd
    rlca
    rst $38
    rlca
    ld [bc], a
    rst $30
    dec b
    rlca
    dec b
    rrca
    add hl, bc
    rst $38
    ld a, a
    ld de, $fc27
    or e
    cp $ff
    ld l, h
    rst $38
    rst $38
    db $fd
    rst $38
    ld b, d
    rst $38
    jp c, Jump_043_45ff

    rst $38
    rst $38
    ld a, b
    ldh a, [$1f]
    pop af
    rra
    ld_long a, $ff8f
    db $fc
    rst $38
    db $fc
    rlca
    rst $38
    rst $20
    rst $38
    ld a, [bc]
    rst $38
    rst $38
    ldh a, [$3f]
    ldh [rIE], a
    ret nz

    ld a, a
    ret nz

    rst $38
    jr c, @-$1e

    dec h
    ldh [$2c], a
    ldh [$fc], a
    ret nc

    rst $28
    ld hl, sp-$78
    rst $38
    dec b
    ld [$0de0], a
    rrca
    dec bc
    rst $38
    rst $38
    dec de
    rra
    rla
    ccf
    scf
    ld a, a
    daa
    rst $38
    rst $38
    jp nz, $c0ff

    rst $38
    sbc [hl]
    rst $38
    cp [hl]
    cp [hl]
    cp $e0
    cp h
    rst $38
    sbc c
    rst $38
    add e
    jr c, @-$1e

    rlca
    rst $38
    rst $38
    di
    rst $38
    ld a, [$fbff]
    rst $38
    ld a, e
    db $eb
    rst $38
    inc sp
    ldh a, [$e0]
    ret nz

    ldh [$e0], a
    ld b, b
    ld hl, sp-$60
    rst $38
    push hl
    ld h, b
    db $fc

jr_043_52d5:
    sub b
    db $fc
    jr z, jr_043_52d5

    call z, Call_000_22fc
    jp $c730


    ld a, a
    ld hl, $43ff
    cp $46
    rst $38
    ld a, a
    ld b, c
    ccf
    jr nz, @+$01

    db $10
    rst $38
    ld [$fafa], sp
    ret nz

    ld c, b
    ld a, d
    ldh [$c7], a
    db $fc
    daa
    db $fc
    and a
    cp a
    db $fc
    ld [hl], a
    sbc a
    ei
    rrca
    db $fc
    ld [de], a
    ret nz

    dec b
    cp $e2
    ret nz

    adc c
    rst $38
    adc d
    rst $38
    sbc [hl]
    di
    cp [hl]
    rst $38
    pop hl
    ld a, a
    rst $38
    add h
    rst $38
    inc b
    rst $38
    call nz, $ffef
    inc b
    ld hl, sp+$08
    ret nc

    ldh [rNR41], a
    rst $38
    ret nz

    rst $38
    ld a, l
    ld l, l
    cp $46
    rst $38
    ld [hl], e
    ccf
    add hl, sp
    rst $28
    rra
    inc e
    rst $38
    ld c, $bc
    jp nz, $ffe0

    push hl
    rst $28
    rst $38
    scf
    rst $38
    or a
    xor b
    and b
    ld c, e
    rst $38
    inc a
    cp $62
    ldh [rIF], a
    rst $38
    ld c, [hl]
    rst $38

jr_043_5344:
    ret c

    rst $38
    reti


    cp $98
    and b
    and b
    rst $38
    ld a, c
    rst $38
    add a
    rst $38
    db $e4
    rst $38
    cp a
    ld h, $ff
    ld h, [hl]
    rst $38
    call z, Call_000_18f8
    dec sp
    rst $38
    ld [hl], b
    call nc, $80e0
    cp $03
    ld c, d
    pop bc
    adc h
    and a
    rst $38
    rrca
    ei
    ld b, $ff
    ld [de], a
    rst $38
    and d
    rst $38
    rst $38
    pop bc
    ld a, a
    pop bc
    ld a, a
    ret nz

    ld a, a
    rst $38
    ld a, a
    rst $38
    ldh [$bf], a
    ret nz

    rst $38
    sub c
    rst $38
    adc d
    cp $7f
    ld h, h
    sbc h
    inc b
    db $fc
    inc b
    db $fc
    db $fc
    ld [hl], b
    pop hl
    ret nc

    inc c
    rst $00
    ld d, [hl]
    and c
    jp nz, Jump_000_3eea

    ret nz

    cp $7e
    ldh [$fe], a
    rst $38
    ld e, a
    ld b, b
    rst $38
    ld a, [hl]
    rst $38
    ld h, b
    db $f4
    ldh [$c6], a
    jr nz, jr_043_5344

    xor c
    rrca
    ld b, d
    ret nz

    push bc
    pop hl
    inc c
    ld a, [hl-]
    ret nz

    call nz, $e3da
    rlca
    rst $28
    ld [bc], a
    di
    ld [bc], a
    rlca
    cp $e0
    ld h, l
    ld bc, $d7fb
    ld l, [hl]
    rst $38
    rst $28
    sub h
    and d
    rlca
    ld [bc], a
    ldh [rNR23], a
    rst $38
    ld e, a
    inc b
    cp h
    db $ec
    rst $38
    xor $f8
    and b
    add b
    xor d
    ret nz

    daa
    jr nz, @+$01

    jr nc, @-$42

    ldh [$d0], a
    jp Jump_000_1880


    push bc
    xor e
    and b
    ld a, a
    ld b, $ff
    dec b
    rlca
    inc b
    rst $30
    ld b, $c0
    ldh [rIE], a
    rlca
    ld h, a
    rlca
    rst $38
    cp d
    rst $38
    jr c, @+$01

    push af
    sub d
    cp d
    add b
    ldh a, [$30]
    ldh [$78], a
    rst $38

jr_043_53fa:
    jr c, jr_043_53fa

    ld e, a
    cp d
    rst $38
    dec sp
    rst $38
    sbc e
    add $a0
    inc a
    ld [bc], a
    ldh [$e1], a
    ld a, a
    ld c, $e0
    or d
    add c
    ld e, b
    and b
    ret c

    and l
    ld [hl], a
    ld [bc], a
    rst $30
    rst $38
    inc bc
    db $e4
    rlca
    ld [$080f], sp
    rrca
    rst $38
    rst $30
    rrca
    ld hl, sp+$0f
    add d
    add b
    inc b
    rst $38
    db $e4
    ccf
    ccf
    ld a, [c]
    cpl
    ld a, [$fe17]
    rst $38
    push af
    ret nz

    ld [hl], d
    add b
    rst $38
    ld b, c
    rst $38
    ld c, a
    ld hl, sp-$61
    add sp, -$41
    ret nc

    or $97
    add d
    rst $38
    rst $38
    ldh [$80], a
    add b
    ld b, a
    ret nz

    inc hl
    rst $18
    ldh [$38], a
    ldh [rIE], a
    ldh [$f4], a
    and b
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    ld e, $ff
    inc e
    rra
    ld a, [de]
    rra
    rst $18
    dec d
    rst $38
    ld a, [de]
    rst $38
    dec c
    ld b, d
    add b
    sbc h
    rst $38
    and a
    xor h
    rst $38
    ld c, h
    sbc [hl]
    ret nz

    or d
    pop bc
    ret nz

    ld [hl-], a
    add b
    ld h, a
    rst $38
    rst $38
    ld c, a
    rst $38
    sbc a
    rst $38
    xor a
    rst $38
    sub l
    rst $28
    rst $38
    jp z, Jump_043_75ff

    ret nz

    db $e3
    rst $00
    ret nz

    db $e3
    ld b, e
    ldh [$f8], a
    ret nz

    ldh [$ee], a
    ret nz

    or b
    pop hl
    sub b
    adc c
    rst $38
    ld d, b
    add e
    rst $38
    ld [$1e08], sp
    ld d, $ff
    ld a, [hl+]
    rst $38
    dec [hl]
    db $fc
    db $fc
    ldh [rSC], a
    add l
    ld b, c
    rst $38
    ld h, c
    sbc $73
    db $ec
    or c
    ccf
    ld a, [c]
    ld h, h
    ld a, h
    and b
    cp $e1
    ld h, [hl]
    and $64
    add a
    rst $38
    rst $20
    ld b, e
    rst $38
    ld h, e
    ld e, $e0
    jp nc, $8069

    db $ec
    db $ec
    db $f4
    jp nz, Jump_000_2a6b

    add b
    ld bc, $e9fe
    dec b
    ld bc, $26ff
    rst $28
    db $fd
    ld b, a
    cp $47
    ld d, $a0
    ld e, a
    cp $8b
    rra
    db $fc
    adc a
    rst $38
    adc e
    ldh [$58], a
    add b
    db $eb
    add b
    cp $e0
    rst $38
    inc e
    rst $30
    sbc a
    di
    rst $38
    rst $38
    dec de
    cp $ff
    ld b, $fc
    ld [c], a
    cp $f9
    rra
    ld hl, sp+$0f
    ld e, a
    ld hl, sp-$71
    db $fc
    daa
    db $fd
    ld d, b
    add l
    ret nz

    ld hl, sp-$7e
    ld d, a
    ret nc

    rst $38
    xor b
    add [hl]
    ld [c], a
    ld bc, $8025
    rlca
    or $83
    ld c, e
    rst $38
    ccf
    sbc d
    ret nz

    pop af
    ld d, [hl]
    add b
    ld hl, sp-$7f
    add b
    or $80
    sbc a
    db $fc
    cp $fc
    rst $38
    rra
    ld d, [hl]
    add d
    ld l, $81
    di
    ld a, h
    ld b, d
    db $e3
    and $e2
    push de
    rst $38
    ld [$f5ff], a
    jr c, @+$67

    xor $88
    ld h, l
    di
    ld bc, $6a07
    ldh [$65], a
    ld bc, $7f75
    ld bc, $01f5
    push hl
    ld bc, $0101
    ld d, $a0
    cp $14
    and b
    ld a, a
    ld d, [hl]
    rst $38
    ld b, [hl]
    ld a, a
    ld b, e
    ld a, $7d
    ld [hl+], a
    ld [c], a
    add b
    and b
    rst $38
    and $ff
    ld sp, $a024
    db $dd
    ld [bc], a
    ld h, [hl]
    ret nz

    db $e3
    db $fc
    daa
    ld a, $a0
    or a
    rst $38
    rst $18
    ld b, [hl]
    rst $38
    ld a, [hl-]
    rst $38
    ld [hl+], a
    ret c

    add c
    ccf
    db $e4
    rst $38
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    sub $fe
    jp nz, $ffff

    ld [c], a
    db $fc
    ld b, h
    cp $42
    cp [hl]
    ld [hl+], a
    cp $dc
    ld h, b
    add hl, de
    rst $38
    inc de
    ccf
    daa
    rst $38
    ld c, a
    ccf
    ld a, a
    ld l, l
    ld a, $26
    ld a, a
    inc sp
    ld h, [hl]
    adc b
    and $81
    ld [hl], c
    cpl
    ld l, b
    add b
    ld h, [hl]
    add l
    and $81
    db $ec
    rst $38
    db $eb
    ld b, d
    ldh [rIE], a
    sub c
    cp $be
    rst $38
    ld [hl-], a
    cp $72
    cp $e7
    ld h, [hl]
    cp $ce
    add sp, $45
    ld [hl], b
    ld b, l
    ld a, a
    db $10
    rst $38
    cp a
    db $10
    rst $28
    ld [$0707], sp
    ld b, $d8
    add h
    db $fc
    ld a, a
    rst $30
    rst $38
    ld [hl], e
    sbc a
    ld hl, sp+$0f
    cp $d8
    add c
    rst $38
    ld [bc], a
    rst $38
    ld a, [c]
    rst $38
    ccf
    add sp, -$01
    rst $08
    ld a, a
    di
    ld e, $e1
    ld a, a
    pop hl
    cp a
    pop bc
    ret c

    add b
    rst $28
    ld_long $ff9e, a
    ld h, c
    pop de
    add b
    ld bc, $06ff
    ld a, [$80a0]
    ldh [rNR52], a
    ld b, c
    ld a, a
    add hl, de
    rst $38
    inc e
    rst $28
    rst $18
    ld c, $07
    rlca
    rlca
    inc bc
    sub $84
    rst $38
    rst $38
    rst $20
    ld [hl], a
    rst $38
    res 1, b
    ldh [rNR43], a
    ld h, c
    cp $ff
    jp $ffbf


    ld sp, hl
    rst $38
    rst $18
    rst $38
    cp c
    ld [hl], $c0
    rst $38
    db $eb

jr_043_560e:
    rst $38
    ld [hl], c
    sub $80
    ld a, [hl]
    or h
    ld h, b
    jr c, jr_043_560e

    ld [hl], b
    xor b
    ret nc

    and b
    or d
    pop bc
    xor h
    add l
    ld [bc], a
    inc c
    add b
    ld [$8020], sp
    add hl, de
    ld e, a
    rst $20
    inc a
    ld sp, hl
    adc a
    db $fd
    sub $41
    ld [bc], a
    call nc, $fe40
    nop
    add c
    cp b
    rlca
    db $fc
    ld b, $fc
    add h
    db $fc
    ccf
    call nz, $b4fc
    db $fc
    rst $38
    ld l, a
    ld d, $a1
    ld a, [c]
    xor c
    ld d, d
    ld a, d
    add b
    jr nz, @+$6e

    add d
    ld d, d
    pop bc
    ld b, $fe
    db $e4
    ld hl, sp+$28
    ld h, b
    push de
    ld hl, sp+$4a
    ret nz

    sub e
    cp d
    ld h, b
    or $f2
    ldh [$3c], a
    cp $5f
    ld b, h
    db $fc
    inc a
    db $fc
    ld b, h
    and b
    ld b, b
    add $c8
    ld h, d
    or $82
    dec hl
    add b
    jp Jump_043_62f8


    ld b, b
    ld a, a
    pop hl
    ld a, a
    rst $38
    ld e, [hl]
    ld a, a
    ld hl, $7e3f
    ld e, $ff
    and a
    pop af
    ld a, a
    jr @-$5d

    db $ec
    ld b, b
    ld hl, sp+$64
    add b
    rst $38
    ld h, h
    rst $38
    sub l
    inc e
    ld h, b
    ld [c], a
    inc c
    and h
    ld b, b
    rrca
    ld l, h
    ld h, b
    adc $c0
    ld hl, sp-$01
    db $10
    db $fd
    ld [$38fc], sp
    call nz, $02fc
    db $fd
    cp $88
    ld [c], a
    ld c, $3f
    ld a, $ff
    ld a, a
    ld a, a
    ld e, a
    ld a, l
    rst $38
    xor c
    rst $38
    pop de
    ldh [$80], a
    ld h, b
    and $60
    ld a, [$8152]
    jr nc, jr_043_56db

    add b
    ldh [rIE], a
    add c
    rst $38
    ld a, h
    ld a, [hl+]
    jr z, jr_043_5704

    ld c, $bc
    ldh [$79], a
    ret z

    ld b, b
    rst $20
    or d
    ld b, b
    ret c

    add b
    ccf
    ld hl, sp+$60
    push hl
    ldh [$cc], a
    ret nz

    jr z, jr_043_5718

    jr nc, jr_043_5707

    db $e3

jr_043_56db:
    rst $38
    ld a, [$20fc]
    ld c, [hl]
    ld l, b
    di
    ldh [rNR31], a
    cp $e7
    rst $20
    db $fc
    dec de
    ld hl, sp-$60
    add b
    jp nc, $ab03

    rst $38
    rst $10
    adc a
    rst $38
    db $eb
    ld a, [hl]
    ld a, [hl]
    ret nc

    push hl
    ld l, d
    add d
    or d
    add hl, bc
    db $db
    xor d
    jr z, jr_043_5740

    db $db
    ld [hl], h
    and d
    ld d, l

jr_043_5704:
    ldh [$60], a
    rst $38

jr_043_5707:
    ret z

    inc h
    ret nz

    nop
    sub b
    jp nz, $800f

    nop
    nop
    nop
    ld h, d
    ld d, a
    ret nc

    ld d, a
    ld d, l
    ld e, b

jr_043_5718:
    jp SerialTransferCompleteInterrupt


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld e, c
    or d
    ld e, c
    inc e
    ld e, d
    adc b
    ld e, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [c]
    ld e, d
    ld e, [hl]
    ld e, e
    jp z, Jump_000_375b

    ld e, h
    nop
    nop
    nop
    nop
    nop
    nop

jr_043_5740:
    nop
    nop
    and [hl]
    ld e, h
    rla
    ld e, l
    adc d
    ld e, l
    db $fc
    ld e, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], d
    ld e, [hl]
    jp nc, Jump_000_345e

    ld e, a
    sbc c
    ld e, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret


    dec c
    rst $38
    rst $38
    db $e3
    ld [c], a
    dec l
    rst $30
    xor $cc
    jp hl


    ld c, l
    ld c, l
    db $fd
    ld c, l
    ld sp, hl
    db $e4
    ld [bc], a
    inc bc
    nop
    nop
    nop
    ld bc, $01ff
    ld bc, $0504
    dec c
    ld c, $07
    rlca
    rst $38
    ld [$0609], sp
    ld b, $0f
    db $10
    dec c
    ld b, $ff
    rla
    ld de, $1312
    ld b, $18
    rlca
    db $10
    rst $38
    ld hl, $0e06
    ld a, [de]
    dec de
    inc e
    dec e
    rrca
    rst $38
    rlca
    ld [hl+], a
    db $10
    inc l
    ld b, $24
    dec h
    ld h, $ff
    daa
    rlca
    dec l
    dec c
    dec [hl]
    rlca
    inc l
    ld c, $ff
    ld l, $2f
    jr nc, @+$2f

    ld b, $36
    dec c
    ld a, $ff
    ccf
    scf
    jr c, jr_043_57f6

    dec l
    ld b, b
    ld b, c
    db $10
    rst $38
    ld [bc], a
    ld bc, $4201
    ld b, e
    ld b, h
    ld b, l
    nop
    inc bc
    nop
    dec b
    nop
    nop
    nop
    sub a
    dec l
    dec l
    dec c
    rst $38
    ld [c], a
    dec l
    rst $38
    ldh [$f6], a
    and $0d
    nop
    db $eb
    ld [c], a
    ld sp, hl
    ldh [$f6], a
    rst $20
    db $ed
    db $e3
    push af
    db $e4
    call z, $e2e1
    pop hl
    rst $30
    db $e3
    xor $c5
    ldh [$6d], a
    ld c, l
    ld c, l
    cp c
    pop hl
    ld c, l

jr_043_57f6:
    ld c, l
    ld l, l
    rst $38
    dec b
    inc b
    ld bc, $0101
    nop
    nop
    nop
    rst $38
    inc bc
    ld [bc], a
    db $10
    rrca
    ld b, $06
    ld c, c
    ld c, d
    rst $38
    rlca
    rlca
    ld c, $0d
    db $10
    rlca
    jr jr_043_5860

    rst $38
    ld c, [hl]
    ld c, a
    rlca
    rla
    ld b, $0d
    ld [hl+], a
    rlca
    rst $38
    rrca
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld c, $06
    ld hl, $0dff
    dec l
    rlca
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld b, $ff
    inc l
    db $10
    ld [hl], $06
    dec l
    rrca
    ld h, d
    ld h, e
    rst $38
    ld h, h
    inc l
    rlca
    dec [hl]
    db $10
    ld b, c
    ld b, b
    ld h, a
    rst $38
    ld l, b
    ld l, c
    inc l
    ccf
    ld a, $0d
    dec b
    nop
    rst $38
    nop
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld bc, $0201
    nop
    nop
    nop
    ret


    dec c
    rst $38
    rst $38
    db $e3
    ld [c], a
    dec l
    rst $30
    xor $cc
    jp hl


jr_043_5860:
    ld c, l
    ld c, l
    db $fd
    ld c, l
    ld sp, hl
    db $e4
    ld [bc], a
    inc bc
    nop
    nop
    nop
    ld bc, $01ff
    ld bc, $0504
    dec c
    ld c, $07
    rlca
    rst $38
    ld a, [bc]
    dec bc
    inc c
    ld b, $0f
    db $10
    dec c
    ld b, $ff
    rla
    rlca
    inc d
    dec d
    ld d, $19
    rlca
    db $10
    rst $38
    ld hl, $0e06
    rlca
    ld e, $1f
    jr nz, jr_043_58b3

    rst $38
    rlca
    ld [hl+], a
    db $10
    inc l
    ld b, $28
    add hl, hl
    ld a, [hl+]
    rst $38
    dec hl
    rlca
    dec l
    dec c
    dec [hl]
    rlca
    inc l
    ld sp, $32ff
    inc sp
    inc [hl]
    dec l
    ld b, $36
    dec c
    ld a, $ff
    ccf
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld b, b
    ld b, c

jr_043_58b3:
    db $10
    rst $38
    ld [bc], a
    ld bc, $4601
    ld b, a
    ld c, b
    ld b, l
    nop
    inc bc
    nop
    dec b
    nop
    nop
    nop
    sub a
    dec l
    dec l
    dec c
    rst $38
    ld [c], a
    dec l
    rst $38
    ldh [$f6], a
    and $0d
    nop
    db $eb
    ld [c], a
    ld sp, hl
    ldh [$f6], a
    rst $20
    db $ed
    db $e3
    push af
    db $e4
    call z, $dbe0
    pop hl
    call z, $eee3
    add $e1
    ld l, l
    ld c, l
    ld c, l
    cp c
    pop hl
    ld c, l
    ld c, l
    ld l, l
    rst $38
    dec b
    inc b
    ld bc, $0101
    nop
    nop
    nop
    rst $38
    inc bc
    ld [bc], a
    db $10
    rrca
    ld b, $06
    ld c, e
    ld c, h
    rst $38
    rlca
    rlca
    ld c, $0d
    db $10
    rlca
    jr jr_043_5956

    rst $38
    ld [de], a
    ld d, c
    rlca
    rla
    ld b, $0d
    ld [hl+], a
    rlca
    rst $38
    rrca
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld c, $06
    ld hl, $0dff
    dec l
    rlca
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld b, $ff
    inc l
    db $10
    ld [hl], $06
    dec l
    rrca
    ld h, l
    ld h, [hl]
    rst $38
    ld c, $2c
    rlca
    dec [hl]
    db $10
    ld b, c
    ld b, b
    dec l
    rst $38
    ld l, d
    ld l, e
    inc l
    ccf
    ld a, $0d
    dec b
    nop
    rst $38
    nop
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld bc, $0201
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $e1
    ld a, [c]
    ld [c], a
    or $e4
    add b

jr_043_5956:
    and $e0
    push hl
    pop hl
    rst $30
    ld [c], a
    db $db
    ld [c], a
    or $e5
    ld [c], a
    rst $20
    adc $f0
    ld bc, $00fd
    rst $38
    db $e4
    ld bc, $0308
    inc bc
    inc bc
    ld b, $fd
    rlca
    ei
    ldh [$08], a
    ld de, $1212
    dec c
    ld c, $ff
    rrca
    db $10
    ld [de], a
    ld [de], a
    ld de, $031a
    inc bc
    rst $38
    ld d, $17
    jr jr_043_59a0

    inc bc
    inc bc
    ld a, [de]
    inc hl
    rst $38
    ld [de], a
    ld [de], a
    rra
    jr nz, jr_043_59b2

    ld [hl+], a
    ld [de], a
    ld [de], a
    db $dd
    inc hl
    ret c

    pop hl
    jr z, jr_043_59c3

    ld a, [hl+]
    ret c

    db $e3
    ld [de], a
    dec l
    db $fd

jr_043_59a0:
    ld l, $fb
    ldh [rNR11], a
    ld [hl], $33
    inc sp
    inc sp
    inc [hl]
    rra
    dec [hl]
    ld [hl-], a
    inc sp
    inc sp
    ld [hl], $00
    nop
    nop

jr_043_59b2:
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $e1
    ld a, [c]
    ld [c], a
    or $e4
    add b
    and $e0
    push hl

jr_043_59c3:
    pop hl
    rst $30
    ld [c], a
    db $db
    ld [c], a
    or $e5
    ld [c], a
    rst $20
    adc $f0
    ld bc, $00fd
    rst $38
    db $e4
    ld bc, $0308
    inc bc
    inc bc
    ld b, $fd
    rlca
    ei
    ldh [$08], a
    ld de, $1212
    ld a, [hl-]
    dec sp
    rst $38
    inc a
    db $10
    ld [de], a
    ld [de], a
    ld de, $031a
    inc bc
    rst $38
    ld b, c
    ld b, d
    ld b, e
    add hl, de
    inc bc
    inc bc
    ld a, [de]
    inc hl
    rst $38
    ld [de], a
    ld [de], a
    ld c, b
    ld c, c
    ld hl, $1222
    ld [de], a
    db $dd
    inc hl
    ret c

    pop hl
    jr z, jr_043_5a2d

    ld a, [hl+]
    ret c

    db $e3
    ld [de], a
    dec l
    db $fd
    ld l, $fb
    ldh [rNR11], a
    ld [hl], $33
    inc sp
    inc sp
    inc [hl]
    rra
    dec [hl]
    ld [hl-], a
    inc sp
    inc sp
    ld [hl], $00
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $e1
    ld a, [c]
    ld [c], a
    or $e4
    add b
    and $e0
    push hl

jr_043_5a2d:
    pop hl
    rst $30
    ld [c], a
    db $db
    ld [c], a
    or $e5
    ld [c], a
    rst $20
    adc $f0
    ld bc, $00fd
    rst $38
    db $e4
    ld bc, $0308
    inc bc
    scf
    jr c, @+$01

    add hl, sp
    inc bc
    inc bc
    inc bc
    ld [$1211], sp
    ld [de], a
    rst $38
    dec a
    ld a, $3f
    ld b, b
    ld [de], a
    ld [de], a
    ld de, $ff1a
    inc bc
    inc bc
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    inc bc
    inc bc
    rst $38
    ld a, [de]
    inc hl
    ld [de], a
    ld [de], a
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    rst $30
    ld [de], a
    ld [de], a
    inc hl
    ret c

    ldh [$03], a
    ld c, [hl]
    ld c, a
    ld d, b
    xor $d8
    db $e3
    ld [de], a
    ld d, c
    ld d, d
    ei
    ldh [rNR11], a
    ld [hl], $33
    rst $38
    inc sp
    ld d, e
    ld d, h
    ld d, l
    ld [hl-], a
    inc sp
    inc sp
    ld [hl], $00
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $e1
    ld a, [c]
    ld [c], a
    or $e4
    add b
    and $e0
    push hl
    pop hl
    rst $30
    ld [c], a
    db $db
    ld [c], a
    or $e5
    ld [c], a
    rst $20
    adc $f0
    ld bc, $00fd
    rst $38
    db $e4
    ld bc, $0308
    inc bc
    inc bc
    inc b
    db $fd
    dec b
    ei
    ldh [$08], a
    ld de, $1212
    add hl, bc
    ld a, [bc]
    rst $38
    dec bc
    inc c
    ld [de], a
    ld [de], a
    ld de, $031a
    inc bc
    rst $30
    inc de
    inc d
    dec d
    rst $20
    ldh [rNR30], a
    inc hl
    ld [de], a
    ld [de], a
    ld a, a
    dec de
    inc e
    dec e
    ld e, $12
    ld [de], a
    inc hl
    ret c

    ldh [$ef], a
    inc h
    dec h
    ld h, $27
    ret c

    db $e3
    ld [de], a
    dec hl
    inc l
    cp $fb
    ldh [rNR11], a
    ld [hl], $33
    inc sp
    cpl
    jr nc, jr_043_5b1b

    rrca
    ld [hl-], a
    inc sp
    inc sp
    ld [hl], $00
    nop
    nop
    adc a
    dec c
    dec c
    dec l
    dec c
    db $fc
    ld [c], a
    ld sp, hl
    pop hl
    db $fd
    pop hl
    dec l
    ld h, c

Jump_043_5aff:
    dec l
    or $e5
    push af
    ldh [$ec], a
    xor $e2
    db $f4
    ld c, l
    ld c, l
    call nz, Call_043_7fe3
    ld c, l
    ld l, l
    ld e, h
    ld bc, $0000
    ld bc, $e1fc
    rst $38
    ld e, h
    ld e, [hl]
    ld e, a
    dec b

jr_043_5b1b:
    ld [bc], a
    inc bc
    inc b
    dec b
    rst $38
    dec b
    ld e, a
    ld e, [hl]
    ld h, b
    ld h, c
    inc de
    inc c
    dec c
    rst $38
    ld c, $0f
    inc de
    ld h, c
    ld h, b
    ld h, d
    ld h, e
    ld c, d
    ld a, a
    ld a, [de]
    dec de
    inc e
    dec e
    ld c, d
    ld h, e
    ld h, d
    ld [c], a
    ldh [$ef], a
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld [c], a
    db $e3
    scf
    jr c, @+$3b

    cp l
    ld a, [hl-]
    ld [c], a
    db $e3
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld [c], a
    ldh [$5c], a
    rst $38
    ld bc, $5464
    ld d, l
    ld d, [hl]
    ld d, a
    ld h, h
    ld bc, $5c01
    nop
    nop
    nop
    rst $08
    dec c
    dec c
    dec l
    dec c
    db $fc
    ld [c], a
    ld sp, hl
    db $e4
    dec c
    dec l
    pop bc
    dec l
    rst $28
    pop hl
    db $fd
    ld [c], a
    or $e6
    db $ec
    rst $20
    ld [c], a
    db $f4
    ld c, l
    ld c, l
    cp $cf
    db $e3
    ld c, l
    ld l, l
    ld e, h
    ld bc, $0000
    ld bc, $fcfe
    pop hl
    ld e, h
    ld e, [hl]
    ld e, a
    dec b
    dec b
    ld b, $07
    rst $38
    dec b
    dec b
    ld e, a

jr_043_5b8f:
    ld e, [hl]
    ld h, b
    ld h, c
    inc de
    db $10
    rst $38
    ld de, $1312
    inc de
    ld h, c
    ld h, b
    ld h, d
    ld h, e
    rst $38
    ld c, d
    ld e, $1f
    jr nz, jr_043_5bc4

    ld c, d
    ld h, e
    ld h, d
    xor $e2
    ldh [$2e], a
    cpl
    jr nc, jr_043_5b8f

    db $e4
    dec sp
    inc a
    dec a
    cp l
    ld a, $e2
    db $e3
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld [c], a
    ldh [$5c], a
    rst $38
    ld bc, $5864
    ld e, c
    ld e, d
    ld e, e
    ld h, h

jr_043_5bc4:
    ld bc, $5c01
    nop
    nop
    nop
    rst $08
    dec c
    dec c
    dec l
    dec c
    db $fc
    ld [c], a
    ld sp, hl
    db $e4
    dec c
    dec l
    pop bc
    dec l
    rst $28
    pop hl
    db $fd
    ld [c], a
    or $e6
    db $ec
    rst $20
    ld [c], a
    db $f4
    ld c, l
    ld c, l
    cp $cf
    db $e3
    ld c, l
    ld l, l
    ld e, h
    ld bc, $0000
    ld bc, $fcfe
    pop hl
    ld e, h
    ld e, [hl]
    ld e, a
    dec b
    dec b
    ld [$ff09], sp
    dec b
    dec b
    ld e, a
    ld e, [hl]
    ld h, b
    ld h, c
    inc de
    inc d
    rst $38
    dec d
    ld d, $13
    inc de
    ld h, c
    ld h, b
    ld h, d
    ld h, e
    rst $38
    ld c, d
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld c, d
    ld h, e
    ld h, d
    sbc $e2
    ldh [$31], a
    ld [hl-], a
    inc sp
    inc [hl]
    ld [c], a
    db $e3
    ccf
    ld b, b
    ld a, e
    ld b, c
    ld b, d
    ld [c], a
    db $e3
    ld c, a
    ld d, b
    ld d, c
    ld c, d
    ld [c], a
    ldh [rIE], a
    ld e, h
    ld bc, $5864
    ld e, c
    ld e, d
    ld e, e
    ld h, h
    inc bc
    ld bc, $005c
    nop
    nop
    rst $08
    dec c
    dec c
    dec l
    dec c
    db $fc
    ld [c], a
    ld sp, hl
    db $e4
    dec c
    dec l
    add c
    dec l
    rst $28
    pop hl
    db $fd
    ld [c], a
    or $e6
    db $ec
    and $e3
    ldh [$e2], a
    ld a, [c]
    ld c, l
    db $fd
    ld c, l
    rst $08
    db $e3
    ld c, l
    ld l, l
    ld e, h
    ld bc, $0000
    db $fd
    ld bc, $e1fc
    ld e, h
    ld e, [hl]
    ld e, a
    dec b
    dec b
    ld a, [bc]
    rst $38
    dec bc
    dec b
    dec b
    ld e, a
    ld e, [hl]
    ld h, b
    ld h, c
    inc de
    rst $38
    rla
    jr jr_043_5c8b

    inc de
    inc de
    ld h, c
    ld h, b
    ld h, d
    rst $38
    ld h, e
    ld c, d
    ld h, $27
    jr z, jr_043_5ca7

    ld c, d
    ld h, e
    cp l
    ld h, d
    ld [c], a
    ldh [rSC], a
    dec [hl]
    ld [hl], $02
    ld [c], a
    db $e3
    ld b, e

jr_043_5c8b:
    rst $30
    ld b, h
    ld b, l
    ld b, [hl]
    ld [c], a
    db $e3
    ld d, d
    ld d, e
    ld d, c
    ld c, d
    cp $e2
    ldh [$5c], a
    ld bc, $5864
    ld e, c
    ld e, d
    ld e, e
    rlca
    ld h, h
    ld bc, $005c
    nop
    nop
    adc a

jr_043_5ca7:
    dec c
    dec c
    dec l
    dec c
    db $fc
    ld [c], a
    db $fd
    db $e3
    ld a, [c]
    ldh [$2d], a
    add b
    rst $28
    pop hl
    db $fd
    ld [c], a
    and $e4
    ldh [$e1], a
    ld [c], a
    db $e4
    or $e3
    ld [c], a
    rst $28
    ld c, l
    db $fd
    ld c, l
    rst $08
    db $e3
    ld c, l
    ld l, l
    ld c, a
    ld bc, $0000
    db $fd
    ld bc, $e1fc
    ld c, a
    ld d, c
    ld d, d
    ld [bc], a
    ld [bc], a
    inc bc
    rst $38
    inc b
    ld [bc], a
    ld [bc], a
    ld d, d
    ld d, c
    ld d, e
    ld d, h
    db $10
    rst $38
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    db $10
    ld d, h
    ld d, l
    ld d, [hl]
    rst $38
    ld d, a
    dec a
    dec d
    ld d, $17
    jr jr_043_5d2d

    ld d, a
    cp l
    ld d, [hl]
    ld [c], a
    ldh [rNR41], a
    ld hl, $2322
    ld [c], a
    db $e3
    ld l, $f7
    cpl
    jr nc, jr_043_5d10

    ld [c], a
    db $e3
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    cp $e2
    ldh [rVBK], a
    ld bc, $4458
    ld b, l
    ld b, [hl]
    ld b, a

jr_043_5d10:
    rlca
    ld e, b
    ld bc, $004f
    nop
    nop
    adc a
    dec c
    dec c
    dec l
    dec c
    db $fc
    ld [c], a
    db $fd
    db $e3
    ld a, [c]
    ldh [$2d], a
    nop
    rst $28
    pop hl
    db $fd
    ld [c], a
    and $e4
    ldh [$e1], a
    ld [c], a

jr_043_5d2d:
    db $e4
    or $e3
    ld [c], a
    db $eb
    adc $e1
    ei
    ld c, l
    ld c, l
    rst $08
    db $e3
    ld c, l
    ld l, l
    ld c, a
    ld bc, $fb00
    nop
    ld bc, $e1fc
    ld c, a
    ld d, c
    ld d, d
    ld [bc], a
    ld [bc], a
    rst $38
    dec b
    ld b, $02
    ld [bc], a
    ld d, d
    ld d, c
    ld d, e
    ld d, h
    rst $38
    db $10
    dec c
    ld c, $0f
    db $10
    db $10
    ld d, h
    ld d, l
    rst $38
    ld d, [hl]
    ld d, a
    dec a
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec a
    ld a, e
    ld d, a
    ld d, [hl]
    ld [c], a
    ldh [rNR50], a
    dec h
    ld h, $27
    ld [c], a
    db $e3
    rst $28
    ld sp, $3332
    inc [hl]
    ld [c], a
    db $e3
    dec a
    ld a, $3f
    db $fd
    dec a
    ld [c], a
    ldh [rVBK], a
    ld bc, $4858
    ld c, c
    ld c, d
    rrca
    ld c, e
    ld e, b
    ld bc, $004f
    nop
    nop
    adc a
    dec c
    dec c
    dec l
    dec c
    db $fc
    ld [c], a
    db $fd
    db $e3
    ld a, [c]
    ldh [$2d], a
    add b
    rst $28
    and $e6
    db $e4
    db $ec
    db $e4
    add sp, -$1e
    ld a, [$e6e5]
    push hl
    db $d3
    db $e3
    dec l
    ei
    ld c, l
    ld c, l
    db $dd
    db $e3
    ld c, l
    ld l, l
    ld c, a
    ld bc, $fb00
    nop
    ld bc, $e1fc
    ld c, a
    ld d, c
    ld d, d
    ld [bc], a
    ld [bc], a
    rst $38
    rlca
    ld [$0202], sp
    ld d, d
    ld d, c
    ld d, e
    ld d, h
    rst $38
    db $10
    inc c
    ld de, $0912
    db $10
    ld d, h
    ld d, l
    rst $38
    ld d, [hl]
    ld d, a
    dec a
    dec e
    ld e, $1f
    dec d
    dec a
    ld a, e
    ld d, a
    ld d, [hl]
    ld [c], a
    ldh [rNR44], a
    jr z, jr_043_5e06

    ld a, [hl+]
    ld [c], a
    db $e3
    rst $28
    db $10
    jr nc, jr_043_5e19

    ld [hl], $e2
    db $e3
    inc a
    dec sp
    ld b, b
    db $fd
    ld b, c
    ld [c], a
    ldh [rVBK], a
    ld bc, $4758
    ld b, [hl]
    ld c, h
    rrca
    ld c, l
    ld e, b
    ld bc, $004f
    nop
    nop
    rst $08
    dec c
    dec c
    dec l
    dec c
    db $fc
    ld [c], a
    db $fd
    ld [c], a
    dec l

jr_043_5e06:
    dec l
    nop
    db $fc
    pop hl
    rst $28
    ldh [$ec], a
    ld [c], a
    and $e2
    rst $38
    pop hl
    db $ec
    ld [c], a
    ret c

    db $e3
    ld [c], a
    db $e3
    db $ec

jr_043_5e19:
    ldh a, [$e7]
    jp z, Jump_043_4de3

    ld c, l
    call Call_043_4de3
    ld l, l
    ld c, a
    rst $28
    ld bc, $0000
    ld bc, $e1fc
    ld c, a
    ld d, c
    ld d, d
    rst $38
    ld [bc], a
    ld [bc], a
    ld b, $05
    ld [bc], a
    ld [bc], a
    ld d, d
    ld d, c
    rst $38
    ld d, e
    ld d, h
    db $10
    db $10
    inc de
    inc d

jr_043_5e3e:
    dec c
    db $10
    rst $38
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    dec a
    inc e
    dec de
    ld a, [de]
    rst $28
    add hl, de
    dec a
    ld d, a
    ld d, [hl]
    ld [c], a
    ldh [$2b], a
    inc l
    dec l
    cp l
    inc h
    ld [c], a
    db $e3
    scf
    inc sp
    ld [hl-], a
    jr c, jr_043_5e3e

    db $e3
    dec a
    rst $30
    ld b, d
    ld b, e
    dec a
    ld [c], a
    ldh [rVBK], a
    ld bc, $4858
    ccf
    ld c, c
    ld c, [hl]
    ld c, e
    ld e, b
    ld bc, $004f
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    inc bc
    ld bc, $0002
    ld bc, $fc7e
    pop hl
    inc bc
    dec bc
    rlca
    ld [$0605], sp
    db $fc
    ldh [rIE], a
    ld b, l
    ld b, [hl]
    inc d
    dec d
    ld d, $0c
    dec c
    ld c, $ff
    rrca
    ld d, $4f
    ld d, b
    dec bc
    rlca
    rra
    rla
    cp a
    jr jr_043_5ec3

    ld a, [de]
    ld e, c
    ld b, l
    ld b, [hl]
    ld [c], a
    ldh [rNR41], a
    rst $30
    ld hl, $2322
    ld [c], a
    db $e3
    jr z, jr_043_5ee2

    ld a, [hl+]
    dec hl
    sbc $e2
    db $e3
    cpl
    jr nc, @+$33

    ld [hl-], a
    ld [c], a

jr_043_5ec3:
    ldh [$03], a
    ld bc, $3fff
    scf
    jr c, jr_043_5f04

    ld a, [hl-]
    ld [hl], d
    ld bc, $0003
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af

jr_043_5ee2:
    ret c

    and $6d
    inc bc
    ld bc, $0002
    ld bc, $fcfe
    pop hl
    inc bc
    dec bc
    rlca
    ld [$0905], sp
    ld a, [bc]
    rst $38
    ld [$4505], sp
    ld b, [hl]
    inc d
    dec d
    ld d, $10
    rst $38
    ld de, $1312
    ld d, $4f
    ld d, b

jr_043_5f04:
    dec bc
    rlca
    rst $38
    rra
    dec de
    inc e
    dec e
    ld e, $59
    ld b, l
    ld b, [hl]
    sbc $e2
    ldh [rNR50], a
    dec h
    ld h, $27
    ld [c], a
    db $e3
    inc l
    dec l
    ld a, e
    ld l, $16
    ld [c], a
    db $e3
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $e2
    ldh [rIE], a
    inc bc
    ld bc, $3b3f
    inc a
    dec a
    ld a, $72
    inc bc
    ld bc, $0003
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    ld hl, sp-$1e
    push af
    ret c

    pop hl
    push de
    pop hl
    ld c, l
    ld l, l
    inc bc
    ld bc, $fb02
    nop
    ld bc, $e1fc
    inc bc
    dec bc
    rlca
    ld [$ff40], sp
    ld b, c
    ld b, d
    ld [$4505], sp
    ld b, [hl]
    inc d
    dec d
    rst $38
    ld d, $47
    ld c, b
    ld c, c
    ld c, d
    ld d, $4f
    ld d, b
    rst $38
    dec bc
    rlca
    rra
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld e, c
    ld a, e
    ld b, l
    ld b, [hl]
    ld [c], a
    ldh [$5a], a
    ld e, e
    ld e, h
    ld e, l
    ld [c], a
    db $e3
    rst $28
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld [c], a
    db $e3
    ld l, d
    ld l, e
    ld l, h
    db $fd
    ld l, l
    ld [c], a
    ldh [$03], a
    ld bc, $723f
    ld bc, $0f73
    ld [hl], h
    ld [hl], d
    ld bc, $0003
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    inc bc
    ld bc, $0002
    ld bc, $fcfe
    pop hl
    inc bc
    dec bc
    rlca
    ld [$4305], sp
    ld b, h
    rst $38
    ld [$4505], sp
    ld b, [hl]
    inc d
    dec d
    ld d, $4b
    rst $38
    ld c, h
    ld c, l
    ld c, [hl]
    ld d, $4f
    ld d, b
    dec bc
    rlca
    rst $38
    rra
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld b, l
    ld b, [hl]
    sbc $e2
    ldh [$5e], a
    ld e, a
    ld h, b
    ld h, c
    ld [c], a
    db $e3
    ld h, [hl]
    ld h, a
    ld a, e
    ld l, b
    ld l, c
    ld [c], a
    db $e3
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [c], a
    ldh [rIE], a
    inc bc
    ld bc, $753f
    db $76
    ld [hl], a
    ld a, b
    ld [hl], d
    inc bc
    ld bc, $0003
    nop
    nop
    db $10
    ld h, b
    ldh [$65], a
    ld b, b
    ld l, d
    ret nc

    ld l, l
    ldh [rSVBK], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $30
    rst $38
    rst $38
    add b
    rst $38
    ld_long $ffff, a
    rst $38
    nop
    dec d
    ld a, a
    cp $e0
    ccf
    cp $e0
    rra
    cp $e0
    ldh a, [$e1]
    cp $ea
    ld d, e
    rst $38
    nop
    rst $38
    ld [$e1f0], a
    ld bc, $e0fe
    inc bc
    cp $e0
    ret


    rlca
    cp $e0
    ret nz

    ldh [rSB], a
    cp $ea
    ret nz

    db $e3
    ld bc, $7ffe
    inc bc
    db $fc
    rlca
    db $fc
    rlca
    ld hl, sp+$0f
    or b
    ld [c], a
    rst $08
    ld a, b
    add a
    cp $01
    or c
    push hl
    or b
    and $e0
    ldh [$6f], a
    sbc b
    ld hl, sp+$04
    db $fc
    and d
    db $eb
    nop
    nop
    ld h, d
    db $eb
    rra
    add b
    add b
    rrca
    nop
    rrca
    sbc b
    ld [c], a
    sub b
    pop hl
    adc b
    pop hl
    ld hl, sp+$62
    db $ec
    ld d, h
    db $e3
    sub d
    ld [c], a
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh a, [$cd]
    rra
    ld b, d
    ldh [$7c], a

jr_043_607f:
    add e
    sub d
    ldh [$90], a
    pop hl
    ld c, $ff
    ei
    rra
    pop af
    ld b, d
    db $e3
    ret nz

    ret nz

    jr nc, jr_043_607f

    ld [$9206], sp
    ldh [$84], a
    db $fc
    or b
    pop hl
    jr @-$1d

    db $10
    pop hl
    ld [$42e1], sp
    db $ec
    ld sp, hl
    ld bc, $e1ba
    or [hl]
    ldh [$1f], a
    ld hl, sp+$1f
    db $fc
    rra
    db $fd
    db $f4
    cp $e0
    rlca
    rst $38
    rra
    ld hl, sp+$3f
    ldh [rIE], a
    ld a, a
    ret nz

    ld a, a
    jp $84ff


    rst $38
    add b
    rst $38
    rst $38
    add b
    ld [bc], a
    cp $c2
    cp $e5
    ccf
    rst $38
    rst $38
    dec de
    db $fc
    sub a
    ld hl, sp+$4f
    ld hl, sp+$0f
    ldh a, [$b1]
    ldh [rOBP0], a
    db $ec
    jp nz, $b0c1

    ret


    ldh a, [$1f]
    ldh a, [$3f]
    rst $30
    ld hl, sp+$3f
    add sp, -$02
    ldh [$e4], a
    ccf
    db $f4
    rra
    rst $28
    ld a, [$3f1f]
    ldh [$b2], a
    ldh [$c7], a
    ld a, a
    ret z

    ei
    ld a, a
    ret nz

    or d
    ldh [$83], a
    rst $38
    add h
    jp z, $ff7e

    cp $36
    ld sp, hl
    cpl
    pop af
    sbc a
    pop af
    rra
    ccf
    ld sp, hl
    rra
    db $fd
    sbc a
    db $fd
    rla
    sub d
    pop bc
    and b
    ret


    rst $38
    ld a, [$fe0f]
    rrca
    rst $38
    rlca
    rst $38
    dec b
    cp $fe
    ldh [$03], a
    cp $03
    rst $38
    ccf
    rst $38
    add c
    rst $38
    rst $38
    add d
    rst $38
    db $10
    rst $38
    nop
    rst $20
    jr @+$01

    db $eb
    inc d
    di
    adc h
    rst $38
    ret nz

    cp $cf
    ei
    cp $0b
    and $e0
    ld [bc], a
    cp $0e
    ei
    rra
    rst $08
    rst $20
    inc h
    rst $08
    ld c, b
    ld [hl+], a
    pop bc
    ld c, [hl]
    pop bc
    ldh a, [$f0]
    cp a
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [$60], a
    ld [de], a
    pop bc
    ret nz

    rst $38
    add b
    ldh [$80], a
    ldh a, [$80]
    ld hl, sp-$80
    db $fc
    ld a, a
    add b
    cp $80
    rst $38
    rrca
    rst $38
    ld a, [bc]
    cp $e0
    rst $18
    ld b, $fd
    rlca
    rst $38
    ld [bc], a
    ld d, $c2
    and b
    rst $38
    rst $38
    add b
    jp $db3c


    inc h
    db $eb
    inc d
    rst $30
    rst $38
    adc b
    rst $38
    ld h, c
    rst $38
    inc e
    cp $06
    db $fc
    rst $38
    inc b
    db $fc
    inc e
    db $f4
    inc a
    ret z

    ld c, b
    adc a
    rst $18
    adc a
    sbc a
    sub b
    cp a
    and d
    ld h, h
    set 0, b
    ret nz

    cp $12
    pop bc
    db $fd
    ld bc, $01f9
    pop af
    ld bc, $ffe1
    ld bc, $01c1
    add c
    ld bc, $20ff
    rst $38
    rst $38
    inc e
    rst $38
    ld h, e
    rst $38
    sbc b
    rst $38
    ldh [rIE], a
    rst $38
    sub d
    rst $38
    ld h, [hl]
    rst $38
    ld c, d
    rst $38
    ld [hl], b
    rst $38
    rst $38
    ld l, $ff
    inc a
    rst $38
    inc a
    di
    ld e, a
    ldh a, [rIE]
    ld e, a
    ldh a, [$df]
    ldh [rIE], a
    rst $08
    ret z

    rst $18
    rst $38
    ld e, b
    rst $38
    ld l, h
    rst $38
    ld h, h
    rst $18
    ld a, [c]
    rrca
    cp $35
    ldh [$e9], a
    ld sp, hl
    ld hl, sp+$18
    cp $66
    cp $ff
    ld a, [hl-]
    db $fc

jr_043_61e1:
    ld c, h
    cp $b6
    cp $da
    db $f4

jr_043_61e7:
    rst $30
    call nc, $b0b0
    ld c, $c0
    nop
    ret nz

    nop
    ldh [rIE], a
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $ff
    nop
    rst $38
    inc a
    ei
    ld c, [hl]
    db $fd

Jump_043_6201:
    add a
    cp $f5
    add e
    jr jr_043_61e7

    ld b, c
    or h
    ldh [$7c], a
    rst $38
    db $e3
    rst $38
    rst $38

Call_043_620f:
    ld h, d

Jump_043_6210:
    cp a
    ld [c], a
    ld a, a
    push bc
    rst $38
    adc c
    rst $38
    rst $38
    add hl, bc

jr_043_6219:
    rst $38
    ld de, $19ff
    ret nz

    ld b, b
    ret nz

    and a
    ld b, b
    add c
    add b
    add b
    xor b
    call z, $fce0
    call nz, $f0e0
    jp c, $e0bc

    ret nz

    or h
    ldh [rIE], a
    inc sp
    jr nc, jr_043_61e1

    rst $20
    ccf
    ei
    rst $38
    rra
    cp $e0
    ccf
    rst $38
    ld a, a
    rst $18
    ld a, a
    ccf
    adc a
    rst $38
    add a
    rst $38
    ld hl, sp-$08
    and $c0

jr_043_624b:
    db $fd
    ld [c], a
    ccf
    ld hl, sp-$08
    add sp, -$08
    ret z

    ld hl, sp+$2c

jr_043_6255:
    pop bc
    jr z, jr_043_6219

    rst $18
    cp a
    add b
    adc a
    add b
    add e
    sub b
    xor c
    ld bc, $4f03
    ld bc, $0302
    ld [bc], a
    adc [hl]
    pop bc
    call nz, $ffe0
    cp e
    ldh [$7d], a
    rrca
    rst $20
    add b
    ccf
    rst $38
    cp $3e
    ldh [rIE], a
    db $e4
    db $dd
    and b
    and c
    ret nz

    ldh [$e0], a
    ld bc, $e4ff
    inc bc
    ld bc, $0fe7
    ld bc, $f63f
    add b
    ld d, b
    xor c
    rrca
    rrca
    rla
    xor c
    ld e, $9f
    add c
    jr jr_043_6255

    add d
    ld c, d
    ret nz

    add [hl]
    cp $e1
    ld [$f8b5], sp
    rst $38
    ldh [$08], a
    cp $e1
    ldh a, [rNR10]
    cp $e1
    ccf
    ld [c], a
    jr nz, jr_043_624b

    inc bc
    and b
    adc c
    add d
    add h
    add sp, -$1b
    ld [bc], a
    inc bc
    add c
    db $ed
    ld bc, $c9e0
    ld a, a
    add $00
    ret nz

    add c
    ld a, a
    ld b, c
    rst $38
    ccf
    jr nz, @+$41

    db $10
    ccf
    ld hl, $637f
    rst $38
    ldh [rNR41], a
    ldh a, [rNR10]
    pop af
    db $10
    ld sp, hl
    ld [$fbff], sp
    adc b
    ei
    adc b
    rst $30

jr_043_62d8:
    sub b
    rst $30
    db $10
    ret z

    ld d, d
    add l
    add d
    ldh [$2c], a
    add b
    rst $38
    ld hl, sp-$1a
    ld a, [hl+]
    add l
    cpl
    ld a, [hl-]
    ld a, a
    xor a
    ld a, [hl-]
    rst $28

jr_043_62ed:
    dec sp
    rst $28
    jr c, jr_043_62d8

jr_043_62f1:
    ld l, d
    and b
    ld a, [$a075]
    ccf
    ld a, [c]

Jump_043_62f8:
    and b

jr_043_62f9:
    ld [hl], e
    rst $38
    inc h
    rst $38
    add $be

Jump_043_62ff:
    sbc [hl]
    ret nz

    call nz, $cc5f
    ld e, e
    adc $2b
    pop hl
    pop hl
    rst $38
    jr nz, jr_043_62ed

    jr nz, jr_043_62f1

    ldh [$e3], a
    jr nz, jr_043_62f9

    cp h
    cp $e0
    ld h, b
    ldh [$03], a
    rlca
    rlca
    dec b
    cp $e0
    ld [bc], a
    ld l, e
    inc bc
    ld bc, $8122
    sub l
    ld a, b
    ret nz

    ld a, e
    rst $00
    ld b, l
    and b
    rst $30
    rst $38
    rst $38
    inc bc
    inc h
    pop hl
    ldh a, [$fe]
    db $10
    db $fc
    xor e
    ld a, b
    add h
    inc de
    add b
    rst $38
    db $fc
    pop hl
    rst $38
    sub b
    db $ec
    rst $38
    cp a
    jr nz, jr_043_6382

    jr nc, jr_043_6384

    rra
    rra
    jp nz, Jump_043_4967

    rst $38
    rst $08
    adc c
    adc a
    jp z, $ea0f

    rrca
    ld a, $ff
    rrca
    dec bc
    rrca
    inc b
    rlca
    rst $38
    rst $38
    rst $28
    rst $38
    ld h, b
    xor $e0
    inc e
    ldh a, [rNR23]
    ldh a, [rNR13]
    jp $fff0


    push de
    add b
    db $d3
    pop bc
    and b
    ld h, b
    add [hl]
    ret nz

    inc b
    rlca
    ld e, a
    inc b
    rlca
    ld [$080f], sp
    ret nz

    ld h, b
    pop bc
    ld l, a
    ld h, h
    di
    rlca
    rst $38
    ld l, c
    add b

jr_043_6382:
    sbc $e1

jr_043_6384:
    nop
    rst $38
    ldh [$9f], a
    cp a
    ld hl, sp+$07
    db $fc
    inc bc
    cp $c3
    db $76
    add b
    jr jr_043_6382

    rra
    inc e
    rra
    inc d
    cp $e0
    ld [de], a
    rra
    ld a, [bc]
    ld e, a
    rrca
    dec c
    rrca
    rlca
    rlca
    sub c
    add b
    db $e3
    sub l
    add b
    ld a, $4e
    add c
    pop bc
    ld a, a
    jp nz, $d0ff

    ld d, [hl]
    add a
    sub $83
    ret nz

    ld [hl+], a
    ld h, b
    ld c, $c4
    ld b, $c2
    sub $c1
    sub h
    ldh [$96], a
    pop hl
    db $10

jr_043_63c1:
    rra
    ld a, $fe
    pop hl
    ldh [$e0], a
    jr jr_043_63c1

    ld b, $97
    add b
    cp [hl]
    ld h, e
    dec a
    ld e, $f2
    ld b, a
    ret nz

    ccf
    ldh a, [rIF]
    adc d
    ldh [$f5], a
    pop bc
    ld sp, hl
    inc bc
    add sp, -$60
    ld c, $c0
    inc bc
    rlca
    inc b
    rrca
    ld [$ffff], sp
    ld e, h
    rst $38
    inc hl
    rst $38
    ld hl, $a1ff
    rst $28
    rst $38
    jp Jump_000_04ff


    pop de
    ldh [$3c], a
    rst $38
    ld [c], a
    xor a
    rst $38
    sbc [hl]
    ei
    ld c, $f4
    ldh [$03], a
    xor $80
    ld e, b
    call nc, $a040
    or d
    ld b, a
    ret nz

    call nc, Call_000_2080
    sbc d
    pop hl
    jr nc, jr_043_644f

    rst $30
    add hl, sp
    ccf
    add hl, hl
    cp $e0
    dec h
    ccf
    dec d
    rra
    cp e
    ld a, a
    pop hl
    ld a, [hl]
    and d
    rlca
    rst $38
    ld [$4288], sp
    inc bc
    sbc a
    add a
    db $fc
    bit 7, [hl]
    rst $38
    xor $68
    db $fd
    ret nz

    ld [$07f7], sp
    inc b
    inc bc
    db $dd
    and [hl]
    rst $38
    ld a, h
    di
    sbc a
    sbc $ac
    ld h, b

jr_043_643d:
    rra
    ldh [rIE], a
    daa
    xor b
    ret nz

    rra
    rra
    rst $38
    rst $38
    ld h, [hl]
    rst $18
    ldh a, [rIF]
    ld sp, hl
    rrca
    cp $9f

jr_043_644f:
    rst $28
    ld hl, sp-$01
    ld hl, sp-$01
    cp h
    ret nz

    ld [hl], b
    add b
    ld b, b
    db $fc
    jr z, jr_043_643d

    ld a, [hl-]
    ld b, l
    rra
    ld e, $0f
    ld c, $0f
    ld a, [bc]
    xor a
    rrca
    ld a, [bc]
    rlca
    ld b, $3e
    ret nz

    ld [bc], a
    ld b, b
    ld b, b
    inc b
    ld a, [$804e]
    nop
    ld c, $85
    ld a, a
    ld h, c
    db $fd
    rla
    rst $38
    ld a, l
    ld b, $46
    ldh [rNR32], a
    rst $30
    inc a
    rst $38
    ld c, b
    jr nz, @+$63

    db $fc
    ld a, h
    ld b, d
    ld l, h
    add b
    jp $c403


    rlca
    jp hl


    rrca
    ld a, a
    ei
    ld e, $3f
    ccf
    ld a, a
    ld a, a
    ld e, a
    add $82
    inc a
    ld [hl], $a4
    sbc h
    pop hl
    ld hl, sp-$11
    ld hl, sp-$31
    sub c
    ld b, b
    adc [hl]
    ldh [rIE], a
    ld [$0000], sp
    inc e

jr_043_64ac:
    inc e
    cp [hl]
    ld [hl+], a
    rst $38
    rst $38
    ld b, e
    rst $38
    ld b, d
    rst $38
    ld b, l
    rst $38
    ld b, a
    rst $38
    cp a
    ld e, c
    rra
    inc e
    ccf
    inc a
    ld a, e
    ld a, $80
    db $fc
    db $ed
    add a
    ld [hl], b
    ld b, c
    pop af
    rra
    call z, $c040
    rst $38
    ld [hl], b
    rst $38
    cp a
    add sp, $1f
    db $f4
    rrca
    db $fc
    rst $28
    ld a, [$effb]
    ld a, [$21a2]
    cp $18
    cp $2c
    cp $f7
    ld [hl-], a
    rst $38
    ld d, c
    cp $e0
    ret


    rst $28
    dec a
    rst $28
    rst $38
    dec a
    rst $00
    ld a, [hl]
    jp $c17e


    ld a, a
    ld [c], a
    rst $20
    ld a, $fe
    inc e
    nop
    add b
    sub $83
    ld b, $ff
    ld b, $bf

jr_043_6500:
    ei
    adc d
    ld [hl], e

jr_043_6503:
    ld [hl], e
    rlca
    inc b
    add sp, -$40
    ld [$1074], sp

jr_043_650b:
    ld h, b
    cp $e1
    jr nz, jr_043_64ac

    ld h, b
    jr nz, @+$01

    jr nc, jr_043_6503

    ld [c], a
    ld d, d
    and b
    ret nz

    db $fd
    adc b
    jr nz, jr_043_650b

    ld b, b
    sbc a
    ld h, b
    add e
    rst $38
    rst $30
    ldh [$5e], a
    ld e, [hl]
    add c
    rst $38
    ei
    rst $38
    or $74
    ld h, b
    ret nz

    ret z

    ld h, b
    ei
    call c, $94bf
    ld b, b
    rst $38
    adc c
    cp $82
    db $fc
    rst $28
    ld e, h
    ldh [$e0], a
    ret nz

    ld [c], a
    ld h, d
    add b
    nop
    rlca
    rst $38
    ld b, $07
    dec b
    add a
    inc b
    adc a
    inc c
    set 1, a
    ld c, $c9
    rrca
    jp hl


    ld a, b
    and b

jr_043_6554:
    xor d
    pop hl
    cp $20
    rst $38
    cp $20
    db $fc
    jr nz, @-$02

    ld h, b
    ld hl, sp-$20
    rst $38
    jr jr_043_6554

    cp $03
    ld a, [hl]
    inc bc
    ccf
    ld bc, $1fd1
    adc d
    ld [hl+], a
    adc [hl]
    ld hl, $60c7
    add $8c
    ld b, b
    add b
    rst $38
    rst $10
    ld h, b
    rst $18
    jr jr_043_6500

    ldh [rHDMA1], a
    jr jr_043_65e0

    db $10
    cp $df
    ld [$84fe], sp
    cp $42
    cp $e0
    add d
    db $fc
    rst $38
    call nz, $0ffa
    ld a, [hl]
    rrca
    dec sp
    rrca
    inc e
    rst $28
    rlca
    rst $08
    inc bc
    db $f4
    ld b, d
    ld h, c
    rst $38
    db $10
    ldh a, [rIE]
    ld de, $f3f0
    ldh a, [rNR22]
    ldh a, [$ec]
    ldh [$ad], a
    ret nc

    ld [hl], d
    ld h, c
    rst $38
    db $fc
    ld h, $60
    ret nz

    jp nz, $c008

    rst $00
    nop
    pop af
    ld bc, $4136
    inc [hl]
    ld b, b
    sbc e
    and c
    rst $38
    cp $3f
    adc d
    db $fd
    adc l
    rst $38
    sbc a
    db $e3
    inc de
    ld h, b
    reti


    ld h, c
    ld a, l
    rst $38
    ld h, b
    ld h, b
    pop af
    db $10
    ei
    ld a, b
    add a
    ld a, e
    ld b, b
    dec c
    db $fc
    ld [hl], a
    ld b, b
    rst $38
    rst $38
    nop
    nop
    nop
    nop

jr_043_65e0:
    xor a
    rst $38
    rst $38
    rst $38
    add b
    cp $e1
    cp a
    cp $e0
    sbc a
    or a
    add b
    pop bc
    add b
    ldh a, [$e0]
    nop
    cp $fe
    ldh [$fc], a
    sbc $fe
    ldh [$f8], a
    nop
    add d
    nop
    rst $38
    db $ed
    jp $d780


    rst $00
    add b
    adc a
    cp $e0
    add a
    cp $e0
    db $e3
    add b
    ld a, a
    di
    add b
    jp nz, $e200

    nop
    ldh a, [$fe]
    ldh [rIE], a
    ldh [rP1], a
    pop hl
    nop
    rst $00
    nop
    rst $08
    nop
    cp $f0
    db $ec
    ld bc, $0043
    ld b, a
    nop
    rrca
    nop
    rst $38
    rrca
    rrca
    ld [hl-], a
    ccf
    call nz, $847f
    rst $38
    rst $38
    inc b
    rst $38
    jp nz, $fe00

    inc a
    jp $f9ff


    nop
    cp $e6
    ldh [$e3], a
    adc a
    add b
    ld b, a
    ret nz

    ld b, a
    ld e, a
    ret nz

    inc hl
    ldh [$33], a
    ldh [$72], a
    pop hl
    cp $fe
    ldh [$bd], a
    db $fc
    cp $e0
    ld hl, sp-$80
    add d
    add b
    push de
    pop hl
    ld a, a
    ld a, [$e0fe]
    ccf
    cp $e0
    rra
    nop
    ld b, c
    nop
    rst $38
    xor a
    ld bc, $03fe
    ld a, [hl]
    cp $e0
    ld a, $fe
    ldh [rNR34], a
    rst $20
    inc bc
    ld b, c
    ld bc, $e7b6
    xor h
    db $e3
    ccf
    ldh [$3f], a
    db $eb
    ldh [$3e], a
    cp $e0
    inc a
    cp $e0
    ld a, b
    ret nz

    ld b, d
    cp a
    ret nz

    jp nz, $e280

    add b
    ldh a, [$fe]
    ldh [$e0], a
    ld a, e
    add b
    pop hl
    ld b, [hl]
    ldh [$cf], a
    add b
    ld b, e
    ld bc, $e270
    rst $38
    nop
    rlca
    nop
    add a
    nop
    db $e3
    nop
    di
    ei
    nop
    nop
    ld bc, $c0e0
    ld a, a
    ldh [$7f], a
    ret nc

    rst $38

jr_043_66b1:
    ld a, a
    db $ec
    cpl
    add $07
    rst $18
    dec e
    ld bc, $ffff
    inc bc
    cp $03
    cp $07
    rst $38
    ld e, $7f
    ei
    ccf
    push hl
    ld a, e

jr_043_66c7:
    ld hl, sp-$01
    cp h
    ret nz

    add sp, -$08
    jr nz, jr_043_66b1

    jp nc, $d0c3

    rst $00
    ei
    cpl
    ld hl, sp+$4f
    ld a, b
    cp a
    ld c, a
    ld hl, sp-$71
    ei
    adc a
    rst $38
    cp $e1
    sbc a
    rst $38
    rst $18
    ld a, [c]
    rra
    pop af
    rra
    ldh a, [rIF]
    ld hl, sp-$01
    rst $08
    db $fc
    rst $28
    ei
    ei
    ld a, [c]
    rst $38
    cp $fe
    dec d
    ld [c], a
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    rst $38
    db $10
    pop hl
    jr nz, jr_043_66c7

    ld bc, $01e3
    rst $38
    di
    ld [bc], a
    di
    ld [bc], a
    db $e3
    inc bc
    db $e3
    ld [bc], a
    rst $38
    rst $00
    inc b
    rst $08
    inc b
    rst $38
    ld e, a
    rst $38
    rra
    sbc $fe
    ldh [$3f], a
    rst $20
    ccf
    jp $e078


    rst $38
    ld a, a
    rst $38
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    ld sp, hl
    rst $38
    ld hl, sp-$09
    rst $20
    db $fc
    jp $e076


    rst $38
    cp $c3
    ld b, b
    jp $80c7


    ldh [$c1], a
    sub b
    ret nz

    ld d, b
    ld [c], a
    cp l
    ret nz

    ld [bc], a
    ld a, a
    db $fd
    ld bc, $c8f0
    ld b, c
    rst $38
    ld b, e
    cp $c2
    cp $ff
    ld b, d
    db $fc
    ld b, h
    db $fc
    add h
    db $fc
    add h
    cp $f7
    add h
    rst $38

jr_043_675a:
    add d
    cp $e0
    jp nz, Jump_043_427f

    ld a, a
    ld a, a
    ld b, d
    ccf
    ld hl, $213f
    ld a, a
    ld hl, $eb00
    pop af
    rst $38
    sub b
    call nz, $e500
    ldh a, [$e4]
    inc bc
    dec c
    rlca
    dec b
    rst $38
    rlca
    add a
    rlca
    db $e4
    rlca
    rst $38
    rst $38
    ld a, [$f8ff]
    ld a, [$f888]
    adc b
    ld hl, sp-$08
    ld [$f83f], sp
    ld sp, hl
    ld hl, sp+$0f
    ld hl, sp-$01
    ld d, b
    ret nz

    jr nz, jr_043_675a

    rst $18
    ld bc, $03c6
    call z, $3007
    ret nz

    rlca
    inc e
    ccf
    rra
    ld a, $3f
    ldh [rIE], a
    add c
    ld a, [hl-]
    jp nz, $c000

    cp a
    ldh [rNR23], a
    ld hl, sp+$06
    cp $01
    inc l
    ret nz

    ldh [$fb], a
    rst $38
    ld hl, sp-$60
    jp hl


    add b
    ld h, e
    ret nz

    ld [hl], e
    ret nz

    cp $e0
    and e
    di
    inc bc
    db $e4
    rlca
    add sp, $0f
    ret z

    rst $38
    rrca
    call nc, Call_043_4f1f
    rrca
    ld d, b
    rra
    ldh [$fe], a
    di
    ret nz

    nop
    rst $38
    inc e
    rst $38
    ld a, [hl]
    db $e3
    rst $38
    rst $38
    add c
    jp nz, $6280

    ldh [rNR10], a
    ldh a, [$08]
    sbc a
    ld hl, sp+$04
    db $fc
    dec b
    db $fc

Call_043_67e9:
    add [hl]
    pop bc
    or b
    and l
    db $e3
    ld a, [$e0ce]
    ret z

    adc $e0
    ld b, e
    nop
    ld c, a
    rrca
    db $10
    db $ec
    adc $e8
    sub b
    and b
    add b
    ld [hl], b
    adc $e2
    dec b
    db $fc

jr_043_6804:
    rlca
    cp [hl]
    adc $e0
    db $fc
    rlca
    ld hl, sp+$0f
    ld a, b
    cp $e0

jr_043_680f:
    jr c, jr_043_680f

    cp $e0
    jr jr_043_6824

    ld b, h
    rlca
    ld bc, $31ff
    rst $38
    rst $38
    ld a, a
    adc $7f
    ld a, [c]
    rrca
    db $fc
    rrca
    rst $38

jr_043_6824:
    ld hl, sp+$1f
    ld hl, sp+$7f
    ld hl, sp-$04
    ccf
    cp $dd
    rrca
    ld sp, $77c0
    rst $38
    dec bc
    daa
    ret nz

    di
    rst $38
    cp l
    ld l, e
    ldh [$a5], a
    ld a, h
    ret nz

    ld a, h
    ret nz

    and b
    and b
    nop
    rst $38
    rst $38
    dec de
    rst $20
    dec a
    ld h, e
    ld a, $63
    ld a, $ff
    daa
    ld a, $2f
    ld a, $2f
    ld a, [hl-]
    ld e, a
    jr jr_043_6804

    rst $38
    ld bc, $78ff
    ld e, c
    and b
    nop
    ld a, d
    ret nz

    ld l, b
    rst $38
    rst $38
    ld [hl], b
    rst $38
    ld bc, $ff03
    add a
    rst $38
    db $fd
    add l
    cp $e0
    ret


    ld a, a
    bit 7, [hl]
    rst $10
    ld a, [hl]
    ld [hl], e
    db $fd
    ld a, h
    ld b, l
    and c
    ldh [$80], a
    ret nz

    db $fc
    and b
    cp $e0
    rst $38
    cp h
    cp $9a
    db $f4
    rra
    rst $38
    dec de
    ld h, a
    ld a, [de]
    cp [hl]
    ldh [rNR44], a
    cp [hl]
    ld [c], a
    ld l, a
    ld a, [hl-]
    jp hl


    ret nz

    cp [hl]
    ld [$a0b2], a
    cp $be
    ld [$0744], a
    ld b, [hl]
    inc bc
    ld c, $03
    rrca
    db $fd
    ld bc, $a580
    rst $38
    adc b
    rst $38
    or b

jr_043_68a7:
    rst $38
    sub b
    rst $38
    rst $38
    ret c

    rst $28
    ld hl, sp-$01
    inc a
    rst $18
    jr @+$01

    rst $08
    add hl, bc
    rst $38
    ld [hl-], a
    rst $38
    inc bc
    rst $38
    ld bc, $e7ff
    add hl, de
    rst $28
    ld [de], a
    rst $38
    ld b, $ff
    inc c
    rst $38
    di
    ldh a, [rVBK]
    ld [$0e4f], sp
    dec bc
    rrca
    ei
    rrca
    inc b
    ret nc

    and $00
    ldh a, [rIF]
    push af
    ld a, [bc]
    ei

jr_043_68d8:
    ei
    add h
    xor [hl]
    and b
    ld sp, $2fff
    rst $10
    ld a, h
    rst $38
    rst $38
    ld d, h
    rst $38
    inc d
    rst $38
    jr jr_043_68d8

    add hl, sp
    rst $28
    rst $10
    ld d, [hl]
    sbc a
    sbc b
    ld a, a
    ret nz

    nop
    cp $82
    ld a, [$e0fe]
    jp nz, $e0fa

    ld [de], a
    db $fd
    inc a
    rst $00
    ld b, b
    ld a, a
    rst $08
    add b
    ld e, a
    jr jr_043_6954

    ld [$be0f], sp
    ldh [$a3], a
    rlca
    inc b
    ret nz

    and h
    ld d, a
    ret nz

    cp [hl]
    jp hl


jr_043_6912:
    rst $38
    cp [hl]
    push hl
    dec sp
    ccf
    rst $10
    ld d, d
    db $e3
    add d
    di
    add d
    jr nc, jr_043_68a7

    ret nc

    and c
    cp a
    ldh a, [$fe]
    ccf
    pop af
    ld e, a
    ld [hl], c
    cp $e0
    ld a, l
    ld a, a
    ld e, a
    ld a, a
    ld e, a
    ld a, a
    ld c, a
    ld a, a
    cpl
    ld d, h
    ldh [$fb], a
    ld [$fefe], sp
    ldh [$fd], a
    add l
    rst $38
    add [hl]
    rst $38
    ld [hl], a
    call nz, $c0ff
    jp nc, Jump_043_44c0

    rst $38
    add h
    or $e0

jr_043_694a:
    rst $38
    add h
    rst $38
    jr @+$01

    jr nz, jr_043_6912

    ld b, b
    rst $08
    rst $38

jr_043_6954:
    ld a, b
    rst $08
    ld a, b
    ld b, a
    ld a, h
    ld h, e
    ccf
    jr nc, jr_043_69dc

    ccf
    jr c, jr_043_697f

    rra
    rra
    ld e, a
    rra
    or b
    ret nz

    rst $38
    ld [bc], a
    cp $1c
    cp $f0
    inc a
    ldh a, [$fc]
    rst $38
    ldh [$f8], a
    ldh [$e2], a
    ldh [$d7], a
    ld a, h
    rst $08
    ld a, l
    ld a, b
    rst $08
    add b
    ld a, b
    daa
    inc a

jr_043_697f:
    ccf
    ld a, $e0
    ld [c], a
    rst $38
    jp nz, Jump_043_62ff

    rst $18
    ld [hl], e
    rst $38
    inc a
    rst $38
    ld [hl], l
    jr nc, @+$28

    add b
    ld [bc], a
    ld b, b
    and b
    ld l, b
    rst $38
    ld [$e2fe], sp
    rst $30
    ld c, b
    rst $38
    ldh a, [rNR10]
    add c
    ld a, a
    cpl
    ld e, a
    rra
    cp l
    ccf
    rst $38
    ldh [$2f], a
    ccf
    rst $00
    ld a, a
    ldh [$82], a
    ldh [rIE], a
    rst $38
    pop af
    cp $fe
    db $fc
    db $fc
    adc $fe
    jp hl


    add a
    ld e, b
    add b
    ldh [$80], a
    add b
    jr nc, jr_043_694a

    ld e, a
    rra
    ld a, a
    sbc $d1
    pop hl
    ccf
    ld a, a
    ld a, a
    call c, $e2d0
    ld [c], a
    ldh [rIE], a
    ld a, [c]
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp+$18
    ld hl, sp+$3d
    dec c
    ret nc

jr_043_69d9:
    and b
    rst $38
    db $fc

jr_043_69dc:
    ld a, [$f0c8]
    db $eb
    ret nz

    add d
    add hl, sp
    ld b, d
    cp $e1
    ret nz

    add h
    ld b, c
    rst $38
    ld b, c
    ld a, [c]
    ld [c], a
    or b
    add b
    xor a
    ld hl, sp-$78
    ld a, [$4d88]
    ld h, b
    inc b
    jr nz, jr_043_69d9

    add d
    or $ae
    add e
    ld a, a
    ld hl, $60c0
    ld bc, $010f
    rrca
    rst $38
    inc bc
    ld b, $03
    add a
    inc bc
    ld [c], a
    inc bc
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ldh a, [$f2]
    db $10
    ldh a, [rNR10]
    ldh a, [$fe]
    db $fd
    ldh [$f1], a
    ldh a, [rNR22]
    ldh a, [rIE]
    rst $38
    ld e, a
    cp a
    rra
    ld e, a
    ld de, $111f
    rra
    db $fd
    ldh [$9f], a
    rlca
    rra
    ldh a, [$1f]
    ret nz

    add h
    ld e, $a0
    ldh [$e5], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    rst $38
    rst $38
    rst $38
    add b
    cp $ea
    rst $38
    rst $38
    nop
    cp $fe
    ld [$cfff], a
    nop
    cp b
    nop
    ld h, a
    nop
    push bc
    ld e, l
    cp $e0
    ld h, a
    or $e0
    rst $38
    db $ed
    jp nz, $f0e5

    add b
    cp a
    rst $08
    add b
    cp b
    add b
    rst $20
    add b
    jp nz, $0fe5

    rst $38
    nop
    di
    nop
    dec e
    nop
    and $00
    rst $08
    rst $38
    nop
    ldh a, [rP1]
    sbc [hl]
    nop
    add [hl]
    nop
    add d
    cp a
    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp-$16
    ldh [rIF], a
    rst $38
    nop
    ld a, c
    nop
    ld h, c
    ld bc, $0746
    ld [$0fdf], sp
    db $10
    rra
    db $10
    rra
    sub d
    ldh [rNR34], a
    pop hl
    push af
    ld a, a
    ret


    push hl
    inc bc
    add d
    push hl
    ldh [$9f], a
    ld hl, sp+$07
    rst $38
    db $fc
    inc bc
    cp $02
    cp $dd
    add b
    db $dd
    ld a, [$e0aa]
    cp b
    and d
    ldh [$f0], a
    add b
    sbc [hl]
    add b
    add [hl]
    cpl
    add b
    cp d
    nop
    cp d
    xor d
    ldh [rNR33], a
    cp b
    push hl
    ld d, h
    db $eb
    or $46
    ldh [$e0], a
    ccf
    cp $e3
    db $e4
    ccf
    db $f4
    rra
    rst $38
    ld a, [$fe1f]
    rrca
    rlca
    db $fc
    rrca
    ld hl, sp-$41
    rra
    ldh a, [$1f]
    pop af
    ccf
    ld [c], a
    rst $20
    ldh [$e1], a
    rst $38
    ld a, a
    jp nz, $ffc1

    push hl
    ccf
    rst $38
    dec de
    rst $28
    db $fd
    rst $10
    ld sp, hl
    rrca
    cp $e0
    rst $28
    rst $38
    adc $7f
    add d
    add b
    ret nz

    add b
    ldh [$80], a
    ld hl, sp-$04
    add $7f
    ld b, c
    nop
    inc bc
    nop
    rlca
    nop
    rra
    db $fc
    add $f9
    ldh a, [$3e]
    ldh [rP1], a
    jp hl


    rrca
    dec bc
    rst $38
    add hl, bc
    rra
    rst $38
    ld [$05e7], sp
    cp a
    rlca
    cp l
    rlca
    and $ff
    ld [bc], a
    dec e
    nop
    ld a, a
    pop bc
    rst $38
    ret z

    rst $38
    rst $30
    ld b, b
    pop af
    ld c, $ba
    ret nz

    ld b, b
    rst $38
    ld sp, $dfff
    rra
    rst $38
    jp z, Jump_000_02ff

    cp $e0
    inc d
    rst $38
    cp a
    inc a
    rst $30
    ld e, h
    rst $38
    adc b
    rst $38
    db $10
    pop hl
    ld bc, $7bff
    ld [bc], a
    ld h, e
    ld [bc], a
    ld b, a
    inc b
    rlca
    inc b
    db $fd
    rrca
    add $e0
    rst $38
    pop de
    xor $3f
    ret nz

    ld a, a
    rst $20
    adc [hl]
    rst $38
    sbc a
    add a
    ret nz

    db $fd
    ld [c], a
    ld h, b
    rst $38
    sub b
    rst $38
    ld a, a
    ret z

    ccf
    add sp, $3f
    add sp, -$05
    add sp, -$41
    db $fd
    ret z

    cp $88
    rst $38
    inc b
    ret nz

    ldh [rSB], a
    ld c, d
    ld a, h
    jp nz, $fe01

    ld [c], a
    ld a, a
    cp $e2
    ret nc

    ldh [$0e], a
    ld [hl], e
    pop bc
    rst $38
    rst $38
    cp $84
    cp $c4
    cp $c4
    db $fd
    rst $38
    db $ec
    ccf
    ld a, [c]
    rra
    or $1f
    pop af
    rst $38
    sbc a
    pop af
    rrca
    ld bc, $01f3
    sbc b
    pop bc
    add sp, -$3b
    rst $38
    rst $30
    inc c
    rst $38
    ld [$e088], sp
    adc b
    rst $38
    xor b
    rst $38
    db $fd
    ld b, h
    cp $e0
    ld b, [hl]
    rst $38
    ld de, $36ff
    rst $28
    sub a
    inc l
    rst $18
    ld b, b
    ld h, d
    ldh [rNR41], a
    cp $e1
    ld [hl], b
    set 7, a
    db $fd
    rst $38
    ld [hl], b

jr_043_6bc4:
    jp nz, Jump_043_6201

    inc bc
    ld b, d
    inc bc
    inc bc
    di
    inc bc

jr_043_6bcd:
    ld b, $81
    ret nz

    sub b
    ldh [rLYC], a
    rst $38
    push hl
    rra
    ld a, a
    db $fd
    rla
    db $fd
    rst $38
    db $fd
    rlca
    db $fd
    ld [c], a
    and b
    rst $38
    ldh a, [rIE]
    db $10
    rst $38
    inc a
    jp Jump_043_43fe


    sbc a
    cp $ff
    cp $83
    cp $4b
    pop hl
    ldh a, [$a9]
    cp d
    cp l
    ld [bc], a
    ret nz

    db $e3
    ld h, [hl]
    rlca
    ld c, b
    rrca
    jr nc, jr_043_6bc4

    ld a, $f5
    pop bc
    cp l
    and [hl]
    rlca
    jr nc, jr_043_6bcd

    ldh a, [$0b]
    ld hl, sp+$05
    rst $30
    db $fc
    ld [bc], a
    cp $00
    pop bc
    ld a, a
    rlca
    ld l, b
    rrca
    rst $38
    ld d, b
    rra
    jr nz, @+$41

    jr nz, jr_043_6c5a

    ld b, b
    ld a, a
    ld hl, sp-$6e
    and b
    ld d, $c1
    set 0, b
    nop
    rst $38
    inc e
    rst $38
    ccf
    db $fd
    db $e3
    add d
    and h
    add b
    ld l, a
    ldh [rNR13], a
    ldh a, [$0d]
    rst $30
    ld hl, sp+$0e
    ld hl, sp-$40
    and l
    jp nz, $e040

    and b
    rst $38
    ldh [rLCDC], a
    ld hl, sp+$00
    rst $08
    dec b
    ld a, [c]
    ld [bc], a
    xor a
    sbc [hl]
    ld [$1096], sp
    or b
    and h
    jr @-$5e

    xor h
    jr jr_043_6ccc

    ld [bc], a
    push bc
    db $e4
    rst $18
    ret nz

    ld a, [$fd1f]

jr_043_6c5a:
    rrca
    ld [bc], a
    res 7, a
    ld a, a
    pop bc
    jp nz, $e1fe

    ccf
    add e
    ret nz

    ld d, e
    db $fd
    db $fd
    ld [bc], a
    ret nz

    ld sp, hl
    rst $08
    rst $38
    rst $08
    ret nz

    ld a, a
    rst $30
    ret nz

    ld a, a
    ret nc

    cp $e2
    ret


    ld a, a
    jp hl


    ccf
    ei

jr_043_6c7c:
    push af
    ccf
    pop af
    ldh [$c0], a
    rst $38
    adc a
    rst $38
    sub b
    ei
    rst $38
    add e
    ld a, b
    jp nz, $860f

    db $fc
    cp $7c
    rst $38
    ld a, [$f74e]
    cp $ff
    cp c
    rst $38
    db $d3
    inc de
    rst $38
    ld a, l
    xor d
    ret nz

    ld [c], a
    adc e
    add b
    ret nc

    and $06
    and c
    ret nc

    and $ff
    rst $38
    cp $ef
    dec sp
    rst $28
    dec a
    rst $30
    cp l
    ei
    rst $38
    inc l
    cp $e0
    ld d, h
    rst $38
    ld l, b
    rst $38
    sbc b
    cp [hl]
    jr z, jr_043_6c7c

    sub h
    rst $38
    ld h, h
    rst $38
    ld [$e8d0], sp
    rlca
    rst $28

jr_043_6cc5:
    rst $38
    dec bc
    rst $38
    rlca
    ret nc

    add sp, -$43

jr_043_6ccc:
    rst $30
    dec a
    rst $38
    rst $38
    inc l
    rrca
    rrca
    rst $38
    dec bc
    rra
    ld [$eff7], sp
    add hl, bc
    cp a
    sbc [hl]
    and b
    push hl
    rlca
    rra
    ld [bc], a
    ld d, h
    and d
    and h
    sbc b
    add c
    ret nz

    and b
    and b
    add hl, de
    ld sp, hl
    and b
    ld a, [bc]
    sbc [hl]
    and b
    rst $38
    ld [de], a
    rst $38
    inc [hl]
    rst $38
    ld a, h
    rst $30
    rst $18
    rst $38
    db $fd
    adc b
    ld h, b
    xor h
    add b
    rra
    rra
    rst $38
    dec d
    rra
    rst $38
    inc d
    rst $38
    inc d
    cp a
    ld c, $bb
    rrca
    and $7d
    inc b
    ldh a, [$a0]
    ld b, b
    rst $38
    nop
    rst $00
    jr c, jr_043_6cc5

    and h
    rst $30

jr_043_6d17:
    jp Jump_000_39ff


    ld [hl], h
    ldh [rNR42], a
    rst $38
    ld e, d
    rst $38
    ld e, a
    ld a, h
    rst $18

jr_043_6d23:
    db $f4
    ld a, a
    db $ec
    inc h
    ret nz

    ret nz

    ld c, b
    add l
    ld a, a
    db $dd
    ld b, b
    db $dd
    ld b, b
    rst $20
    ld b, b
    ld hl, sp-$28
    and c
    ld a, a
    nop
    add a
    ld a, b
    rst $10
    jr z, jr_043_6d23

    jr @-$2e

    db $e4
    rst $38
    ld c, $fb
    add hl, bc
    rst $38
    ld e, c
    rst $38
    ld [hl], c
    rst $18
    rst $18
    ld a, [c]
    ld a, a
    ld [c], a
    rst $38

jr_043_6d4d:
    cp $d0
    ldh [rNR10], a
    rst $28
    cp a
    jr nz, jr_043_6d4d

    ldh [$e7], a

jr_043_6d57:
    jr nz, @-$01

    cp $e0
    rst $20
    rst $38
    jr nz, jr_043_6d57

    jr nz, @+$01

    ld h, [hl]
    rst $38
    sbc e
    ld a, a
    rst $38
    adc $3f
    ld [$e53f], a
    rst $38
    and $ff
    rst $38
    ret


    rst $38
    ret nz

    rst $08
    ld b, b
    ldh a, [rNR41]
    cp $ff
    db $10
    or $50
    ld a, [c]
    ret nc

    ldh [rNR41], a
    ldh [$fd], a
    ret nz

    xor b
    add b
    ld bc, $86ff
    ld a, a
    ret c

    ccf
    rst $38
    ldh [$2f], a
    ldh [$f3], a
    ldh [$dd], a
    ret nz

    and $b8
    jr c, jr_043_6d17

    ldh a, [rOCPS]
    sub d
    ld h, b
    add e
    ld a, a
    call c, $e8e0
    ld b, b
    db $fc
    jr jr_043_6d23

    ret nc

    ld l, b
    cp a
    and c
    cp $d2
    cp $fc
    rst $38
    db $fd
    ldh [$33], a
    ldh a, [$1f]
    ldh a, [rNR24]
    ldh a, [rIE]
    pop af
    ldh a, [$ba]
    add b
    ld a, [$e6c0]
    ldh [$0e], a
    ldh a, [$e7]
    pop af
    db $10
    db $e3
    ld a, b
    ldh [rNR41], a
    and a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    rst $38
    rst $38
    rst $38
    add b
    cp $ea
    rst $38
    rst $38
    nop
    cp $fe
    ld [$fcff], a
    nop
    di
    nop
    rst $28
    nop
    rra
    call z, $8800
    nop
    sbc b
    cp $e0
    rst $38
    db $ed
    jp nz, $bfe7

    db $fc
    add b
    di
    add b
    rst $28
    add b
    jp nz, Jump_000_3fe7

    rst $38
    nop
    rst $08
    nop
    rst $30
    nop
    cp h
    nop
    rst $18
    rst $28
    nop
    ldh [rP1], a
    db $ed
    cp $e0
    rst $30
    nop
    ld hl, sp-$02
    and [hl]
    ldh [$3d], a
    nop
    ei
    nop
    rlca
    nop
    or a
    rst $38
    nop
    or a
    ld bc, $03ee
    inc e
    rlca
    db $fc
    cp l
    rlca
    sub d
    ldh [rIF], a
    ldh a, [$3f]
    ret nz

    adc e
    ldh [rSB], a
    rst $28
    rst $38
    ld c, $ff
    ld a, $82
    pop hl
    ret nz

    ld a, a
    ldh a, [$9f]
    rst $38
    ld hl, sp+$0f
    cp $03
    ld [hl], a
    ld [c], a
    ret nz

    ld [$7f80], a
    ld a, a
    ret nz

    call z, $8880
    add b
    sbc b
    cp $e0
    rst $38
    cp h
    add b
    rst $18
    add b
    ldh [$80], a
    db $ed
    add b
    rra
    inc sp
    nop
    ld de, $1900
    cp $e0
    xor b
    push hl
    ld b, d
    db $ec
    rst $30
    nop
    ld hl, sp+$0f
    cp $e1
    ld sp, hl
    rrca
    db $fd
    rlca
    ei
    db $fd
    rlca
    xor l
    ldh [rSB], a
    ld a, a
    ld sp, hl
    rst $38
    pop hl
    cp a
    rst $38
    ret nz

    rst $38
    ret c

    rst $38
    and h
    ld [$9ee0], sp
    rst $38
    rst $38
    xor h
    nop
    rst $38
    jr @+$01

    db $fc
    rst $20
    rst $38
    db $fc
    sbc a
    ldh [$7f], a
    ldh [$3f], a
    ldh a, [$3f]
    cp a
    db $fc
    ccf
    ld a, a
    ret nz

    ccf
    ldh [$fe], a
    rst $20
    ld a, a
    cp a
    ret nz

    inc sp
    ld bc, $0113
    dec de
    cp $e0
    ccf
    rst $38
    ld bc, $01fb
    rlca
    ld bc, $01b7
    db $ed
    xor a
    add b
    rst $30
    add b
    ld hl, sp-$32
    ret z

    or a
    db $e4
    ret nz

    rra
    ld hl, sp-$32
    jp z, $cbd0

    ld hl, sp-$40
    ld bc, $01cf
    rst $30
    ld bc, $5876
    push hl
    rst $38
    sbc b
    sub b
    ret nz

    nop
    rst $08
    jr nc, @-$74

    ret nz

    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    ld e, $fe
    inc hl
    cp $ff
    dec de
    cp $13
    rst $38
    scf
    rst $28
    ld a, $ff
    ld a, a
    ld a, b
    rst $38
    or b
    rst $38
    jr nz, @+$81

    ret nz

    cp b
    jp nz, $90fc

    add $d0
    jp nz, $b701

    ld [bc], a
    or a
    inc b
    rst $28

jr_043_6ef6:
    rst $38
    inc b
    rra
    inc b
    rst $38

jr_043_6efb:
    dec b
    rst $38
    inc bc
    rst $38
    rst $38
    ld b, $ff
    adc b
    rst $38
    ld [hl], b
    rst $38
    jr nz, @+$01

    ld a, a
    pop hl
    cp $47
    ld hl, sp+$3f
    rst $38
    ldh [$ba], a
    ldh [rIE], a
    jr nc, @+$01

    jr nc, jr_043_6ef6

    ld [hl], b
    sbc a
    ldh a, [$2f]
    sbc a
    ldh [rPCM34], a
    ret nz

    rst $38
    ld [bc], a
    or a
    ret nz

    nop
    jp hl


    rst $38
    ld a, a
    cp a
    cp a
    cp a
    ccf
    cp a
    ccf
    cp b
    add hl, hl
    ld [c], a
    rst $38
    rst $38
    ccf
    or e
    add b
    pop de
    ret nz

    ld sp, hl
    ldh [rIE], a
    ld sp, hl
    ldh [$3d], a
    ldh a, [rNR31]
    ldh a, [rNR22]
    ldh a, [$db]
    rst $30
    ldh a, [$c4]
    pop hl
    rst $38

jr_043_6f48:
    jr z, jr_043_6f48

    ldh [rNR50], a
    rst $38

jr_043_6f4d:
    rst $38
    inc d
    rst $38
    ld a, [bc]
    rst $38
    ld b, $f7
    ld b, b
    rst $28
    xor a
    ld b, b
    rst $18
    ld b, b
    rst $38
    cp $e1
    jr nz, jr_043_6efb

    ldh [$30], a
    ld a, [$cc40]
    rst $38
    add b
    ldh [rSC], a
    rst $38
    ld e, $e1
    ccf
    ld sp, hl
    pop hl
    or h
    ldh [$b0], a
    ldh [rIE], a
    rst $38
    ld hl, sp-$09
    inc a
    rst $38
    rst $20
    ld a, $eb
    cp $17
    db $fc
    rst $38
    ld hl, sp+$4f
    rra
    ldh a, [rIE]
    rst $38
    jr nz, jr_043_6f4d

    add sp, -$3f
    ld bc, $e274
    xor e
    ld bc, $1efe
    pop bc
    ld a, a
    push hl
    and c
    rlca
    and d
    and c
    ldh a, [$5f]
    rrca
    db $fc
    rlca
    cp $0f
    db $10
    ret nz

    ret nz

    ld b, e

jr_043_6fa2:
    ldh [$e6], a
    ldh [$a8], a
    add b
    ld a, b
    add h
    ret nz

    ret nz

    add sp, $01
    rra
    ld bc, $4e6c
    pop bc
    jp nz, $0fe9

    rst $38
    jp nz, $e0eb

    ccf
    and b
    and [hl]
    ld a, a
    add b
    ld [hl], a
    ret nz

    jr c, jr_043_6fa2

    rra
    ldh a, [rNR41]
    call nz, $dc37
    rst $38
    and b
    jr nz, @-$3b

    cp $03
    cp $e3
    and c
    and b
    sbc $e8
    jp nz, $ff0f

    rra
    ld hl, sp+$17
    ret nz

    rst $20
    ld a, a
    rst $10
    jp hl


    ld a, a
    ldh [$f8], a
    and b
    ld c, c
    inc de
    pop bc
    and $3f
    rst $28
    rst $38
    add hl, sp
    rst $38
    daa
    ld b, c
    ldh [$1f], a
    ld hl, sp+$0f
    ld h, d
    ei

jr_043_6ff4:
    ldh [$f0], a
    call $fca2
    db $e4
    jp nz, $ffeb

    nop
    jp nz, $cbeb

    rst $38
    ld e, [hl]
    jp nz, $feeb

    ret nz

    ldh [$c2], a
    jp hl


    rrca
    ld hl, sp+$7e
    nop
    rst $00
    inc de
    inc bc
    rra
    inc b
    rra
    add hl, bc
    nop
    ret z

    push hl
    ldh [$3c], a
    ret nz

    cp [hl]
    ret c

    add l
    sbc b
    and b
    ld [bc], a
    dec de
    inc bc
    rst $28
    add hl, de
    ld bc, $5eff
    ld [hl], b
    add c
    di
    db $ec
    ei
    ld a, a
    inc d
    rst $38
    ld [$c8ff], sp
    rst $38
    rst $38
    rst $10
    jp nz, Jump_000_0dff

    rst $38
    add hl, de
    cp $33
    rst $28
    ccf
    rst $38
    rst $38
    inc e
    rst $38
    sbc b
    rrca
    ld hl, sp+$1c
    ldh a, [rNR13]
    and $16
    ret nz

    call z, $a0c0
    and [hl]
    sbc b
    add c
    ld bc, $0233
    or c
    inc de
    jp nz, $c0e0

    ldh [$c2], a
    ld [$16ff], a
    jp nz, $ffeb

    rst $38
    ld [hl], b
    rra
    ldh a, [rNR32]
    ldh a, [$33]
    ldh [$ef], a
    db $fd
    ret nz

    jr nc, jr_043_6ff4

    ccf
    ld [$08ff], sp
    rrca
    ld [$b7ff], sp
    rlca
    or a
    ld [bc], a
    rst $28
    ld [bc], a
    rra
    ld [bc], a
    xor [hl]
    jp nz, $e3a0

    rst $38
    ld b, [hl]
    adc b
    ldh [$50], a
    and b
    and b
    ld b, c
    rst $18
    cp $87
    ld hl, sp-$61
    dec a
    ld [$02a1], sp
    or a
    ld d, a
    inc bc
    or a
    inc bc
    ldh [$e2], a
    ld bc, $e0ae
    jr c, jr_043_70e7

    and b
    ld a, l
    add b
    ld a, [hl+]
    ret nz

    adc a
    ldh a, [$7f]
    db $fc
    rst $38
    db $76
    and b
    ld h, [hl]
    add d
    and h
    ccf
    ldh [$80], a
    and c
    ret nc

    ldh [rSC], a
    rlca
    jp nc, Jump_043_78e0

    or b
    ld [c], a
    db $76
    and c
    jp nc, $f8e8

    rst $38
    db $fc
    ld a, a
    jp nc, $9fe7

    ccf
    ldh [rVBK], a
    ret nz

    rst $30
    cp b
    ldh [$50], a
    adc h
    rst $38
    inc b
    ld d, d
    and c
    ld d, b
    and a
    rst $38
    ld a, [c]
    ld [c], a
    ld b, b
    and a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    rst $38
    rst $38
    rst $38
    add b
    cp $ea

jr_043_70e7:
    rst $38
    rst $38
    nop
    db $fc
    cp $ea
    ldh a, [$e2]
    ld hl, sp+$00
    push hl
    nop
    call z, $f700
    xor h
    nop
    cp b
    ldh a, [$e4]
    inc b
    nop
    di
    nop
    call $fa06
    ldh [$64], a
    nop
    rst $38
    db $ed
    or d
    db $eb
    ld hl, sp-$80
    cp $b2
    db $eb
    inc b
    nop
    add e
    nop
    add a
    nop
    rst $00
    di
    nop
    db $e3
    xor [hl]
    ldh [$98], a
    db $e3
    ld [hl], h
    nop
    db $f4
    nop
    rst $38
    rst $20
    inc bc
    inc b
    rlca
    ld [$f00f], sp
    rra
    rst $28
    ldh a, [$1f]
    ldh [$3f], a
    add d
    ldh [$f8], a
    rlca
    db $fc
    rst $30
    inc bc
    rst $38
    ld [bc], a
    ld a, c
    ldh [rNR32], a
    rst $38
    ccf
    db $e3
    cp $72
    db $e4
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$2b
    inc c
    ld hl, sp-$30
    pop hl
    db $e4
    adc d
    ldh [rDIV], a
    ld e, d
    db $eb
    ld c, h
    db $e4
    ld a, [$e0aa]
    ld bc, $e9fe
    dec b
    ld bc, $80e5
    call z, $80ff
    xor h
    add b
    cp b
    add b
    add e
    add b
    add a
    rra
    add b
    rst $00
    add b
    db $e3
    add b
    ld c, b
    push hl
    cp b
    push hl
    cp d
    db $ed
    ld a, a
    ldh [$3f], a
    ldh [$3f], a
    ldh a, [$7f]
    ret nc

    cp $e0
    rst $38
    ret


    ld a, a
    jp hl


    ccf
    push af
    ccf
    ld a, a
    ret nz

    cp a
    ld a, a
    ret nz

    rst $38
    adc a
    rst $38
    sub b
    jp c, Jump_000_07c0

jr_043_7191:
    rst $38
    rst $38
    dec bc
    rst $38
    rlca
    sub a
    db $fc
    cp $6c
    rst $38
    ld a, [c]
    ld e, [hl]
    ld [c], a
    ld a, $e2
    ld a, $f2
    cp [hl]
    rst $08
    ld a, [$fa3e]
    ld l, $e8
    push bc
    jr z, jr_043_7191

    di
    ld bc, $07fd
    adc d
    ldh [$65], a
    ld bc, $0175
    push af
    ld bc, $e5cf
    ld bc, $0101
    ld l, b
    push hl
    ret nz

    add $1f
    rst $38
    rst $38
    dec d
    rst $38
    inc d
    rrca
    inc c
    ei
    ld c, $07
    db $fd
    dec b
    ret nz

    pop bc
    rst $38
    ld b, b
    rst $38
    nop
    rst $08

jr_043_71d5:
    jr nc, jr_043_71d5

    adc h
    jp nz, $ff01

    jp Jump_000_39ff


    db $fc
    inc c
    ccf
    rst $38
    ld [$38ff], sp
    rst $28
    ld a, b
    adc [hl]
    ldh [$c8], a
    jp z, $90fe

    push bc
    ld [hl], l
    ld bc, $02f7
    rst $28
    inc c
    rra
    rst $38
    db $10
    ccf
    jr nz, @+$01

    ld b, c
    rst $38
    ld b, [hl]
    rst $38
    cp a
    ld hl, $f1ff
    rst $28
    ld a, b
    rst $20
    ld c, h
    ldh [$c0], a
    ei
    ld a, a
    add b
    pop bc
    ldh [$ef], a
    ld a, a
    rst $38
    ret nz

    rst $38
    db $fc
    dec a
    ldh [$d4], a
    pop bc
    rst $08
    ld hl, sp-$01
    ldh a, [$f4]
    ldh a, [$cb]
    rst $38
    ld de, $e0b0
    inc b
    or c
    ret nz

    cp $e3
    ld bc, $fdff
    ccf
    ld c, $c0
    ccf
    rst $38
    ccf
    rst $20
    cp a
    pop hl
    ei
    cp a
    ret nz

    inc bc
    ret nz

    ei
    add sp, -$02
    db $e4
    cp $ff
    or $fe
    ld a, [$f2de]
    adc a
    ld sp, hl
    rrca
    ld a, a
    ld sp, hl
    cp $fa
    rst $38
    add d
    rst $38
    add e
    cp $e0
    rst $38
    add l
    rst $38
    call nz, $e4ff
    rst $38
    ld b, h
    rst $38
    ld e, l
    ld b, h
    ld [hl], b
    ld [c], a
    inc b
    rst $38
    add h
    cp $e0
    ld b, d
    cp $e0
    push af
    ld [hl+], a
    ld b, b
    call z, Call_043_40ff
    pop bc
    push hl

jr_043_726d:
    ld bc, $0302
    cp a
    ld b, $03
    rst $38
    inc bc
    cp $03
    or d
    and b
    ld a, h
    cp $ca
    ldh [$f4], a
    rrca
    db $fc
    rrca
    db $fc
    rst $38
    db $fc
    ld l, e
    rlca
    db $fc
    and d
    and b
    ld a, $5c
    ldh [rNR11], a
    rst $38
    inc h
    ret nz

    ld a, [$e2fc]
    rst $38
    nop
    pop bc
    rst $30
    ldh a, [$8b]
    ld hl, sp-$78
    sbc a
    ld hl, sp-$01
    ld hl, sp+$0f
    ld hl, sp-$40
    db $e3
    jr nc, jr_043_726d

    rst $38
    xor $90
    jp nz, $ff88

    add a
    ld l, d
    and b
    nop
    rst $38
    add hl, bc
    cp [hl]
    sub b
    jp z, $fa3e

    cp [hl]
    ld a, [$702e]
    ret nz

    ret z

jr_043_72bc:
    rst $08
    rst $38
    add [hl]
    rst $38
    add c
    ldh [$e5], a
    or b
    bit 4, l
    ld bc, $b09e
    pop bc
    rst $18
    jr nz, jr_043_72bc

    db $10
    xor h
    ret nz

    or b
    pop bc
    ld sp, hl
    ld [$ccb0], a
    ldh [rSVBK], a
    call z, $ee38

jr_043_72db:
    ldh [$d0], a
    ccf
    add sp, $49
    rra
    ld [hl], h
    ldh [$d0], a
    ret nz

    ld sp, hl
    ld h, b
    db $e3
    ld h, b
    and h
    ld a, b
    ld a, [bc]
    ldh [$7f], a
    inc e
    ld [hl], a
    ld [bc], a
    rst $30
    inc b
    rst $28
    ld [$c090], sp
    or a
    ld hl, $26ff
    ld [hl], $e1
    rst $28
    ld a, c
    sub d
    push bc
    add c
    rst $38
    rst $38
    rst $00
    ld a, a
    rst $38
    ccf
    ld a, a
    ret nc

    cp a
    rst $38
    jp hl


    rra
    ld sp, hl
    rrca
    ld a, [$fecf]
    rst $28
    rst $38
    ei
    rst $38

jr_043_7317:
    pop af

jr_043_7318:
    rst $38
    pop hl
    ei
    ret z

    rst $38
    ld a, a
    jr jr_043_7317

    db $10
    di
    db $10
    ld hl, sp+$08
    ld a, [hl-]
    ldh [$f7], a
    ret z

    rst $38
    jr nc, jr_043_7318

    pop hl
    cp $f6
    db $fc
    ld hl, sp-$49
    call nc, $8cf0
    ld b, d
    and b
    ld hl, sp-$08
    ld [hl+], a
    ret nz

    adc b
    adc [hl]
    xor b
    ret nz

    inc h
    rst $38
    jr jr_043_72db

    add h
    ld h, d
    pop bc
    ld h, b
    ret


    cp a
    cp $60
    set 7, a
    ld [c], a
    cp $f4
    db $fc
    ld hl, sp-$0c
    dec c
    ldh a, [$c0]
    push hl
    db $fc
    ld [$cb70], sp
    nop
    nop
    nop
    xor [hl]
    ld [hl], e
    inc e
    ld [hl], h
    sbc a
    ld [hl], h
    dec c
    ld [hl], l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    ld [hl], l
    ei
    ld [hl], l
    ld h, [hl]
    db $76
    ret nc

    halt
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $77
    sbc [hl]
    ld [hl], a
    ld [$7478], sp
    ld a, b
    ld [c], a
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    ld a, c
    cp [hl]
    ld a, c
    ld l, $7a
    sbc [hl]
    ld a, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $7b
    ld l, h
    ld a, e
    call Call_000_2e7b
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret


    dec c
    rst $38
    rst $38
    db $e3
    ld [c], a
    dec l
    rst $30
    xor $cc
    jp hl


    ld c, l
    ld c, l
    db $fd
    ld c, l
    ld sp, hl
    db $e4
    nop
    ld bc, $0202
    ld [bc], a
    inc bc
    rst $38
    inc bc
    inc bc
    inc b
    dec b
    ld a, [bc]
    dec bc
    inc c
    dec c
    rst $38
    ld c, $0f
    add hl, bc
    add hl, bc
    db $10
    ld de, $090a
    rst $38
    ld d, $17
    jr jr_043_73f5

    add hl, bc
    ld a, [de]
    inc c
    ld de, $1fff
    add hl, bc
    dec bc
    jr nz, jr_043_7407

    ld [hl+], a
    inc hl
    db $10
    rst $38
    inc c
    inc h
    ld de, $0929
    ld d, $2a
    dec hl
    rst $38
    inc l
    inc c

jr_043_73f5:
    dec l
    ld a, [bc]
    ld sp, $290c
    ld [hl-], a
    rst $38
    inc sp
    inc [hl]
    db $10
    dec l
    add hl, bc
    dec [hl]
    ld a, [bc]
    add hl, sp
    rst $38
    ld a, [hl-]
    dec sp

jr_043_7407:
    inc a
    dec a
    dec l
    ld a, $3f
    ld de, $00ff
    inc bc
    inc bc
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    nop
    nop
    nop
    sub a
    dec l
    dec l
    dec c
    rst $38
    ld [c], a
    dec l
    rst $38
    ldh [$f6], a
    and $0d
    nop
    db $eb
    ld [c], a
    ld sp, hl
    ldh [$f6], a
    rst $20
    rst $30
    jp hl


    call $dbe1
    pop hl
    call z, $c6e3
    pop hl
    rst $30
    ld l, l
    ld c, l
    ld c, l
    cp b
    pop hl
    ld c, l
    ld c, l
    ld l, l
    dec b
    rst $38
    inc b
    inc bc
    ld c, d
    ld c, e
    ld c, h
    ld [bc], a
    ld [bc], a
    ld bc, $00ff
    ld de, $0910
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    rst $38
    inc c
    dec bc
    ld a, [bc]
    ld de, $1a0c
    ld d, h
    ld d, l
    rst $38
    ld d, [hl]
    ld d, a
    ld d, $09
    ld a, [bc]
    inc h
    inc c
    db $10
    rst $38
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    dec bc
    add hl, bc
    rra
    ld a, [bc]
    rst $38
    dec l
    inc c
    ld h, d
    ld h, e
    ld h, h
    ld d, $09
    add hl, hl
    rst $38
    ld de, $0935
    dec l
    ld l, c
    ld l, d
    ld l, e
    dec bc
    rst $38
    add hl, hl
    inc c
    ld sp, $3f11
    ld a, $2d
    ld [hl], b
    rst $38
    ld [hl], c
    add hl, hl
    ld a, [hl-]
    add hl, sp
    ld a, [bc]
    dec b
    ld [bc], a
    ld [bc], a
    ld a, a
    ld b, [hl]
    ld [hl], l
    db $76
    ld [hl], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret


    dec c
    rst $38
    rst $38
    db $e3
    ld [c], a
    dec l
    rst $30
    xor $cc
    jp hl


    ld c, l
    ld c, l
    db $fd
    ld c, l
    ld sp, hl
    db $e4
    nop
    ld bc, $0602
    rlca
    ld [$03ff], sp
    inc bc
    inc b
    dec b
    ld a, [bc]
    dec bc
    inc c
    ld [de], a
    rst $38
    inc de
    inc d
    dec d
    add hl, bc
    db $10
    ld de, $090a
    rst $38
    ld d, $1b
    inc e
    dec e
    ld e, $1a
    inc c
    ld de, $1fff
    add hl, bc
    dec bc
    dec h
    ld h, $27
    jr z, @+$12

    rst $38
    inc c
    inc h
    ld de, $0929
    ld l, $2f
    jr nc, @+$01

    ld a, [de]
    inc c
    dec l
    ld a, [bc]
    ld sp, $290c
    ld [hl], $ff
    scf
    jr c, jr_043_7500

    dec l
    add hl, bc
    dec [hl]
    ld a, [bc]
    add hl, sp
    rst $38
    ld a, [hl-]
    ld b, b
    ld b, c
    ld b, d
    dec l
    ld a, $3f
    ld de, $00ff

jr_043_7500:
    inc bc
    inc bc
    ld b, a
    ld c, b
    ld c, c
    ld b, [hl]
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    nop
    nop
    nop
    sub a
    dec l
    dec l
    dec c
    rst $38
    ld [c], a
    dec l
    rst $38
    ldh [$f6], a
    and $0d
    nop
    db $eb
    ld [c], a
    ld sp, hl
    ldh [$f6], a
    rst $20
    db $ed
    db $e3
    push af
    add sp, -$1e
    pop hl
    jp $c6e2


    pop hl
    rst $30
    ld l, l
    ld c, l
    ld c, l
    cp c
    pop hl
    ld c, l
    ld c, l
    ld l, l
    dec b
    rst $38
    inc b
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $00ff
    ld de, $0910
    ld d, c
    ld d, d
    ld d, e
    inc c
    rst $38
    inc c
    dec bc
    ld a, [bc]
    ld de, $1a0c
    ld e, b
    ld e, c
    rst $38
    ld e, d
    inc c
    ld d, $09
    ld a, [bc]
    inc h
    inc c
    db $10
    rst $38
    ld e, a
    ld h, b
    ld h, c
    inc c
    dec bc
    add hl, bc
    rra
    ld a, [bc]
    rst $38
    dec l
    inc c
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    add hl, bc
    add hl, hl
    rst $38
    ld de, $0935
    dec l
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    rst $38
    add hl, hl
    inc c
    ld sp, $3f11
    ld a, $72
    ld [hl], e
    rst $38
    ld [hl], h
    add hl, hl
    ld a, [hl-]
    add hl, sp
    ld a, [bc]
    dec b
    ld [bc], a
    ld [bc], a
    ld a, a
    ld a, b
    ld a, c
    ld a, d
    ld [hl], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $e1
    rst $38
    pop hl
    or $ea
    ret nz

    db $ed
    db $e4
    db $db
    db $e4
    db $d3
    db $e3
    ret c

    db $ec
    call nz, $d1e6
    pop hl
    dec l
    nop
    db $fd
    ld bc, $e4ff
    nop
    inc bc
    inc b
    inc b
    dec b
    ld b, $ff
    rlca
    ld [$0404], sp
    inc bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    rst $38
    dec bc
    inc c
    inc c
    dec c
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld c, $ff
    inc b
    inc b
    rrca
    db $10
    ld de, $0412
    inc b
    rst $38
    ld c, $13
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc d
    dec d
    ld d, $f7
    ld a, [bc]
    ld a, [bc]
    inc de
    ret c

    ldh [rNR22], a
    jr jr_043_75fc

    ld a, [de]
    xor $d8
    db $e3
    dec de
    inc e
    dec e
    rst $20
    ldh [$09], a
    ld e, $1f
    rst $38
    rra
    jr nz, jr_043_7614

    ld hl, $1f20
    rra
    ld e, $00
    nop
    nop
    rla

jr_043_75fc:
    dec c
    dec c
    dec l

Jump_043_75ff:
    cp $e3
    dec l
    or $e1
    rst $38
    pop hl
    or $ea
    ret nz

    db $ed
    db $e4
    db $db
    db $e4
    db $d3
    db $e3
    ret c

    db $ec
    call nz, $d1e6

jr_043_7614:
    pop hl
    dec l
    nop
    db $fd
    ld bc, $e4ff
    nop
    inc bc
    inc b
    inc b
    ld [hl+], a
    inc hl
    rst $38
    inc h
    dec h
    inc b
    inc b
    inc bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    rst $38
    inc l
    dec l
    ld l, $2f
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld c, $ff
    inc b
    inc b
    scf
    jr c, @+$3b

    inc b
    inc b
    inc b
    rst $38
    ld c, $13
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, d
    ld b, e
    ld b, h
    rst $30
    ld a, [bc]
    ld a, [bc]
    inc de
    ret c

    ldh [rDIV], a
    ld c, d
    ld c, e
    ld c, h
    xor $d8
    db $e3
    ld a, [bc]
    ld d, b
    dec e
    rst $20
    ldh [$09], a
    ld e, $1f
    rst $38
    rra
    jr nz, jr_043_767f

    ld hl, $1f20
    rra
    ld e, $00
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $e1
    ld a, [c]
    ld [c], a
    or $e4
    add b
    and $e0
    push hl
    pop hl
    rst $30
    ld [c], a
    db $db
    db $e4
    db $d3
    db $e3
    ret c

jr_043_767f:
    db $ec
    adc $eb
    nop
    db $fd
    ld bc, $e4ff
    nop
    inc bc
    inc b
    inc b
    ld h, $27
    rst $38
    jr z, jr_043_7694

    inc b
    inc b
    inc bc
    add hl, bc

jr_043_7694:
    ld a, [bc]
    ld a, [bc]
    rst $38
    jr nc, jr_043_76ca

    ld [hl-], a
    inc sp
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld c, $ff
    inc b
    inc b
    ld a, [hl-]
    dec sp
    inc a
    dec a
    inc b
    inc b
    ld a, a
    ld c, $13
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, l
    ld b, [hl]
    ei
    ldh [$dd], a
    inc de
    ret c

    ldh [rDIV], a
    ld c, l
    ld c, [hl]
    ret c

    db $e4
    ld a, [bc]
    ld d, c
    db $fd
    ld d, d
    rst $20
    ldh [$09], a
    ld e, $1f
    rra
    ld d, e
    ld d, h
    rra
    ld d, l
    ld d, [hl]

jr_043_76ca:
    rra
    rra
    ld e, $00
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $e1
    ld a, [c]
    ld [c], a
    or $e9
    ldh [$ed], a
    pop hl
    db $dd
    and $f6
    db $e4
    ret c

    pop af
    rst $10
    push hl
    dec l
    nop
    ld bc, $fffe
    db $e4
    nop
    inc bc
    inc b
    inc b
    add hl, hl
    ld a, [hl+]
    dec hl
    rst $38
    inc b
    inc b
    inc b
    inc bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    inc [hl]
    rst $38
    dec [hl]
    ld [hl], $0a
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld c, $04
    rst $38
    inc b
    ld a, $3f
    ld b, b
    ld b, c
    inc b
    inc b
    ld c, $fd
    inc de
    pop af
    ldh [rBGP], a
    ld c, b
    ld c, c
    ld a, [bc]
    ld a, [bc]
    inc de
    xor $d8
    ldh [rDIV], a
    ld c, l
    ld c, a
    ret c

    db $e4
    ld a, [bc]
    ld d, c
    ld d, d
    cp $d8
    pop hl
    ld e, $1f
    rra
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    rlca
    rra
    rra
    ld e, $00
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$fde1]
    pop hl
    dec l
    ld h, c
    dec l
    or $e5
    push af
    ldh [$ec], a
    xor $e2
    db $f4
    ld c, l
    ld c, l
    call nz, Call_043_7fe3
    ld c, l
    ld l, l
    nop
    ld bc, $0202
    ld bc, $e1fc
    rst $38
    nop
    inc b
    dec b
    ld b, $07
    ld [$0609], sp
    rst $38
    ld b, $05

jr_043_7766:
    inc b
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $ff
    rrca
    inc c
    inc c
    dec bc
    ld a, [bc]
    db $10
    ld de, $7f12
    inc de
    inc d
    dec d
    ld [de], a
    ld [de], a
    ld de, $e210
    ldh [rPCM34], a
    ld d, $17
    jr jr_043_7766

    db $e4
    add hl, de
    ld a, [de]
    dec de
    ld [c], a
    db $e4
    rst $30
    inc e
    dec e
    ld e, $e2
    pop hl
    nop
    ld bc, $201f
    ccf
    ld hl, $1f22
    rra
    ld bc, $0000
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$fde1]
    pop hl
    dec l
    ld h, c
    dec l
    or $e5
    push af
    ldh [$ec], a
    xor $e2
    db $f4
    ld c, l
    ld c, l
    call nz, Call_043_7fe3
    ld c, l
    ld l, l
    nop
    ld bc, $0202
    ld bc, $e1fc
    rst $38
    nop
    inc b
    dec b
    ld b, $24
    dec h
    ld h, $06
    rst $38
    ld b, $05
    inc b
    ld a, [bc]
    dec bc
    inc c
    dec l
    ld l, $ff
    cpl
    inc c
    inc c
    dec bc
    ld a, [bc]
    db $10
    ld de, $7f12
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld [de], a
    ld de, $e210
    ldh [$ef], a
    ld d, $17
    ld b, h
    ld b, l
    ld [c], a
    db $e3
    add hl, de
    ld a, [de]
    ld c, d
    sbc $e2
    db $e4
    inc e
    dec e
    ld c, h
    ld [de], a
    ld [c], a
    ldh [rP1], a
    ld bc, $1fff
    jr nz, @+$23

    ld [hl+], a
    rra
    rra
    ld bc, $0000
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$fde1]
    pop hl
    dec l
    ld h, c
    dec l
    or $e5
    push af
    ldh [$ec], a
    xor $e2
    db $f4
    ld c, l
    ld c, l
    call nz, Call_043_7fe3
    ld c, l
    ld l, l
    nop
    ld bc, $0202
    ld bc, $e1fc
    rst $38
    nop
    inc b
    dec b
    ld b, $27
    jr z, jr_043_785d

    ld a, [hl+]
    rst $38
    ld b, $05
    inc b
    ld a, [bc]
    dec bc
    inc c
    jr nc, @+$33

    rst $38
    ld [hl-], a
    inc sp
    inc c
    dec bc
    ld a, [bc]
    db $10
    ld de, $7f12
    dec a
    ld a, $3f
    ld b, b
    ld [de], a
    ld de, $e210
    ldh [$ef], a
    ld d, $17
    ld b, [hl]
    ld b, a
    ld [c], a
    db $e3
    add hl, de
    ld a, [de]
    ld c, e
    cp l
    inc c

jr_043_785d:
    ld [c], a
    db $e3
    inc e
    dec e
    ld c, h
    ld [de], a
    ld [c], a
    ldh [rP1], a
    rst $38
    ld bc, $201f
    ld hl, $1f22
    rra
    ld bc, $0001
    nop
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$fde1]
    pop hl
    dec l
    ld h, c
    dec l
    or $e5
    push af
    ldh [$ec], a
    xor $e2
    db $f4
    ld c, l
    ld c, l
    call nz, $ffe3
    ld c, l
    ld l, l
    nop
    ld bc, $0202
    ld bc, $ff01
    inc hl
    ld [bc], a
    ld bc, $0400
    dec b
    ld b, $27
    rst $38
    jr z, jr_043_78cc

    dec hl
    ld b, $05
    inc b
    ld a, [bc]
    dec bc
    rst $38
    inc c
    jr nc, jr_043_78e1

    dec [hl]
    ld [hl], $0c
    dec bc
    ld a, [bc]
    rst $38
    db $10
    ld de, $3d12
    ld b, c
    ld b, d
    ld b, e
    ld [de], a
    ld a, e
    ld de, $e210
    ldh [rNR21], a
    rla
    ld c, b
    ld c, c
    ld [c], a
    db $e3
    rst $28
    add hl, de
    ld a, [de]
    ld c, e
    inc c
    ld [c], a

jr_043_78cc:
    db $e3
    inc e
    dec e
    ld c, h
    db $fd
    ld [de], a
    ld [c], a
    ldh [rP1], a
    ld bc, $201f
    ld hl, $0f22
    rra
    rra
    ld bc, $0000

Jump_043_78e0:
    nop

jr_043_78e1:
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$fde1]
    pop hl
    dec l
    ld h, c
    dec l
    or $e5
    push af
    ldh [$ec], a
    xor $e2
    db $f4
    ld c, l
    ld c, l
    call nz, Call_043_7fe3
    ld c, l
    ld l, l
    nop
    ld bc, $0202
    ld bc, $e1fc
    rst $38
    nop
    inc b
    dec b
    ld b, $27
    jr z, jr_043_7937

    inc l
    rst $38
    ld b, $05
    inc b
    ld a, [bc]
    dec bc
    inc c
    jr nc, jr_043_794f

    rst $38
    jr c, jr_043_7951

    inc c
    dec bc
    ld a, [bc]
    db $10
    ld de, $7f12
    dec a
    ld b, c
    ld b, d
    ld b, e
    ld [de], a
    ld de, $e210
    ldh [$ef], a
    ld d, $17
    ld c, b
    ld c, c
    ld [c], a
    db $e3
    add hl, de
    ld a, [de]
    ld c, e
    cp l
    inc c

jr_043_7937:
    ld [c], a
    db $e3
    inc e
    dec e
    ld c, h
    ld [de], a
    ld [c], a
    ldh [rP1], a
    rst $38
    ld bc, $201f
    ld hl, $1f22
    rra
    ld bc, $0001
    nop
    nop
    nop
    adc a

jr_043_794f:
    dec c
    dec c

jr_043_7951:
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$fde1]
    pop hl
    dec l
    pop bc
    dec l
    or $e5
    db $ed
    and $ec
    add sp, -$1e
    db $ed
    call nz, $2de2
    dec l
    ei
    ld c, l
    ld c, l
    cp d
    db $e3
    ld c, l
    ld l, l
    nop
    ld bc, $fb02
    ld [bc], a
    ld bc, $e1fc
    nop
    inc b
    dec b
    ld b, $07
    rst $38
    ld [$0a09], sp
    ld b, $05
    inc b
    dec bc
    inc c
    rst $38
    dec c
    ld c, $0f
    db $10
    ld de, $0c0d
    ld [de], a
    rst $38
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_043_79af

    dec d
    ld a, e
    inc d
    inc de
    ld [c], a
    ldh [rNR30], a
    dec de
    inc e
    ld b, $e2
    db $e3
    rst $28
    dec e
    ld e, $1f
    dec c
    ld [c], a
    db $e3
    dec d
    jr nz, @+$23

    db $fd
    dec d
    ld [c], a

jr_043_79af:
    ldh [rP1], a
    ld bc, $2222
    inc hl
    inc h
    rrca
    ld [hl+], a
    ld [hl+], a
    ld bc, $0000
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$fde1]
    pop hl
    dec l
    pop bc
    dec l
    or $e5
    db $ed
    and $ec
    add sp, -$1e
    db $ed
    call nz, $2de2
    dec l
    ei
    ld c, l
    ld c, l
    cp d
    db $e3
    ld c, l
    ld l, l
    nop
    ld bc, $fb02
    ld [bc], a
    ld bc, $e1fc
    nop
    inc b
    dec b
    ld b, $07
    rst $38
    ld [$0a09], sp
    ld b, $05
    inc b
    dec bc
    inc c
    rst $38
    dec c
    ld c, $2d
    db $10
    ld de, $0c0d
    ld [de], a
    rst $38
    inc de
    inc d
    dec d
    ld [hl], $37
    jr jr_043_7a1f

    dec d
    ld a, e
    inc d
    inc de
    ld [c], a
    ldh [rLCDC], a
    ld b, c
    inc e
    ld b, $e2
    db $e3
    rst $28
    ld c, b
    ld c, c
    rra
    dec c
    ld [c], a
    db $e3
    dec d
    jr nz, @+$23

    db $fd
    dec d
    ld [c], a

jr_043_7a1f:
    ldh [rP1], a
    ld bc, $2222
    inc hl
    inc h
    rrca
    ld [hl+], a
    ld [hl+], a
    ld bc, $0000
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$fde1]
    pop hl
    dec l
    pop bc
    dec l
    or $e5
    db $ed
    and $ec
    add sp, -$1e
    db $ed
    call nz, $2de2
    dec l
    ei
    ld c, l
    ld c, l
    cp d
    db $e3
    ld c, l
    ld l, l
    nop
    ld bc, $fb02
    ld [bc], a
    ld bc, $e1fc
    nop
    inc b
    dec b
    ld b, $25
    rst $38
    ld h, $27
    jr z, jr_043_7a67

    dec b
    inc b
    dec bc
    inc c
    rst $38
    dec c

jr_043_7a67:
    ld l, $2f
    jr nc, jr_043_7a9c

    dec c
    inc c
    ld [de], a
    rst $38
    inc de
    inc d
    dec d
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    dec d
    ld a, e
    inc d
    inc de
    ld [c], a
    ldh [rSCY], a
    ld b, e
    ld b, h
    ld b, $e2
    db $e3
    rst $28
    dec c
    ld c, d
    rra
    dec c
    ld [c], a
    db $e3
    dec d
    jr nz, @+$23

    db $fd
    dec d
    ld [c], a
    ldh [rP1], a
    ld bc, $2222
    inc hl
    inc h
    rrca
    ld [hl+], a
    ld [hl+], a
    ld bc, $0000

jr_043_7a9c:
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$fde1]
    pop hl
    dec l
    pop bc
    dec l
    or $e5
    db $ed
    and $ec
    add sp, -$1e
    db $ed
    call nz, $2de2
    dec l
    ei
    ld c, l
    ld c, l
    cp d
    db $e3
    ld c, l
    ld l, l
    nop
    ld bc, $fb02
    ld [bc], a
    ld bc, $e1fc
    nop
    inc b
    dec b
    ld b, $29
    rst $38
    ld a, [hl+]
    dec hl
    inc l
    ld b, $05
    inc b
    dec bc
    inc c
    rst $38
    dec c
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    dec c
    inc c
    ld [de], a
    rst $38
    inc de
    inc d
    dec d
    inc a
    dec a
    ld a, $3f
    dec d
    ld a, e
    inc d
    inc de
    ld [c], a
    ldh [rLYC], a
    ld b, [hl]
    ld b, a
    ld b, $e2
    db $e3
    rst $28
    dec c
    ld c, d
    rra
    dec c
    ld [c], a
    db $e3
    dec d
    jr nz, jr_043_7b1d

    db $fd
    dec d
    ld [c], a
    ldh [rP1], a
    ld bc, $2222
    inc hl
    inc h
    rrca
    ld [hl+], a
    ld [hl+], a
    ld bc, $0000
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a

jr_043_7b1d:
    push af
    ret c

    and $6d
    nop
    ld bc, $0302
    ld bc, $fcfe
    pop hl
    nop
    dec b
    ld b, $07
    ld [$0a09], sp
    rst $38
    rlca
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $12ff
    inc de
    db $10
    db $10
    inc d
    dec d
    dec b
    ld b, $ff
    ld d, $17

jr_043_7b45:
    jr @+$1b

    ld d, $1a
    inc c
    dec c
    xor $e2
    ldh [rNR31], a
    inc e
    dec e
    ld [c], a
    db $e4
    ld e, $1f
    jr nz, jr_043_7b45

    ld [c], a
    db $e4
    ld a, [de]
    ld hl, $e222
    pop hl
    nop
    ld bc, $7f23
    inc h
    dec h
    ld h, $27
    jr z, jr_043_7b69

    nop

jr_043_7b69:
    nop
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    nop
    ld bc, $0302
    ld bc, $fcfe
    pop hl
    nop
    dec b
    ld b, $07
    ld [$0a09], sp
    rst $38
    rlca
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $29ff
    ld a, [hl+]
    db $10
    db $10
    inc d
    dec d
    dec b
    ld b, $ff
    ld d, $17
    jr jr_043_7bbe

    ld d, $1a
    inc c
    dec c
    sbc $e2
    ldh [rNR31], a
    inc e
    jr nc, jr_043_7be1

    ld [c], a
    db $e3
    ld e, $1f
    cp e
    ld [hl], $37
    ld [c], a
    db $e3
    ld a, [de]
    ld hl, $e23b
    pop hl

jr_043_7bbe:
    nop
    rst $38
    ld bc, $2423
    dec h
    ld h, $27
    jr z, @+$03

    ld bc, $0000
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    nop

jr_043_7be1:
    ld bc, $0302
    ld bc, $fcfe
    pop hl
    nop
    dec b
    ld b, $07
    ld [$0a09], sp
    rst $38
    rlca
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $2bff
    ld a, [hl+]
    db $10
    db $10
    inc d
    dec d
    dec b
    ld b, $ff
    ld d, $2c
    dec l
    ld l, $2f
    ld a, [de]
    inc c
    dec c
    sbc $e2
    ldh [$32], a
    inc sp
    inc [hl]
    dec [hl]
    ld [c], a
    db $e3
    jr c, @+$3b

    cp l
    ld a, [hl-]
    ld [c], a
    db $e4
    ld a, [de]
    ld hl, $163b
    ld [c], a
    ldh [rP1], a
    rst $38
    ld bc, $2423
    dec h
    ld h, $27
    jr z, @+$03

    ld bc, $0000
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    nop
    ld bc, $0302
    ld bc, $fcfe
    pop hl
    nop
    dec b
    ld b, $07
    ld [$0a09], sp
    rst $38
    rlca
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $12ff
    inc de
    db $10
    db $10
    inc d
    dec d
    dec b
    ld b, $ff
    ld d, $17
    jr jr_043_7c80

    ld d, $1a
    inc c
    dec c
    sbc $e2
    ldh [rNR31], a
    inc e
    jr nc, jr_043_7ca3

    ld [c], a
    db $e3
    ld e, $1f
    cp e
    ld [hl], $37
    ld [c], a
    db $e3
    ld a, [de]
    ld hl, $e23b
    pop hl

jr_043_7c80:
    nop
    rst $38
    ld bc, $2423
    dec h
    ld h, $27
    jr z, @+$03

    ld bc, $0000
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

jr_043_7ca3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_043_7edf:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_043_7fe3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_043_7fe9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
