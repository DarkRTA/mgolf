; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $075", ROMX[$4000], BANK[$75]

    ld [$2040], sp
    ld e, b
    scf
    ld h, b
    inc bc
    db $76
    jr nz, jr_075_404a

    db $10
    ld b, [hl]
    ld b, b
    ld c, e
    jr nz, jr_075_4060

    ret nz

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
    ld c, a
    rst $38
    rst $38
    rst $38
    nop
    cp $ea
    ldh a, [$eb]
    inc bc
    pop hl
    ldh [rIE], a
    nop
    ld l, $2e
    inc a
    inc a
    ccf
    ccf
    rra
    rra
    rra
    ccf
    scf
    ld sp, hl
    jp hl


    ldh a, [$e1]
    cp $e9
    ldh a, [$e9]
    rst $38
    rlca
    rlca
    add hl, de
    rra
    rst $38
    rst $38
    ld e, h
    ld e, h

jr_075_404a:
    rst $38
    ld a, b
    ld a, b
    ld a, [hl]
    ld a, [hl]
    ld a, $3e
    ld a, [hl]
    ld l, [hl]
    ld l, a
    ld a, [c]
    jp nc, $f0f0

    and b
    ld [$f907], a
    ldh [$e0], a
    rst $38
    rst $38

jr_075_4060:
    ld e, h
    rst $38
    ld a, b
    rst $38
    ld a, [hl]
    rst $38
    ld a, $3f
    rst $38
    ld l, [hl]
    rst $38
    jp nc, $f0ff

    or d
    db $eb
    or b
    ldh [$fe], a
    cp $ec
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ldh [rIE], a
    ccf
    call z, $d07f
    ld a, a
    call z, $9f7f
    rst $38
    di
    ld hl, sp-$08
    inc e
    db $fc
    ld [bc], a
    cp $02
    rst $38
    cp $61
    rst $38
    ld de, $c0ff
    rst $38
    ldh [$f5], a
    ccf
    ld [hl], d
    jp hl


    add b
    rst $38
    ldh [rNR41], a
    ccf
    ld b, b
    ld a, a
    rst $38
    ld e, b
    ld a, a
    and l
    rst $38
    add b
    rst $38
    sbc c

jr_075_40aa:
    rst $38
    rst $38
    ccf
    and $3f
    rst $28
    jr c, jr_075_40aa

    inc b
    db $fc
    rst $30
    add $fe
    inc hl
    scf
    ldh [$81], a
    rst $38
    pop bc
    ld a, a
    ei
    pop bc
    ld a, a
    ld [de], a
    and $c0
    ccf
    ld hl, sp+$07
    cp $eb
    add a
    ld sp, hl
    ld [bc], a
    db $ec
    add b
    ld a, [c]
    jp z, $ff01

    inc bc
    rst $18
    ldh [$3f], a
    ret nz

    ld a, a
    ret c

    or b
    ld [c], a
    sub b
    rst $38
    ld l, a
    add hl, bc
    rst $38

Jump_075_40e0:
    ccf

Call_075_40e1:
    rst $38

Jump_075_40e2:
    jp z, $fce0

    rst $00
    or b
    ld [c], a
    push af
    ld bc, $e0ae
    ld bc, $c4f2
    ret nz

    ret nz

    jr c, @-$06

    cp a
    ld b, $fe
    rlca
    db $fd
    adc h
    ei
    ld [c], a
    set 4, b
    ld d, l
    ldh [$a2], a
    pop bc
    ld a, a
    cp $e0
    ccf
    cp $e0
    rra
    cp $e0
    cp b
    xor b
    db $e4
    rst $00
    ldh [$ee], a
    jp $f79f


    adc h
    xor b
    ldh [rNR10], a
    cp a
    rst $38
    adc e
    rst $38
    db $f4
    rst $38
    adc a
    ld c, d
    ldh [$e0], a
    db $eb
    cp a
    ret nz

    adc e
    ret nz

    add b
    add a
    ret nz

    db $10
    rst $38
    ld [c], a
    db $ec
    or $e1
    rst $38
    ld [c], a
    ld b, b
    ret nz

    cp $e1
    add b
    add b
    nop
    rst $38
    nop
    ld bc, $0201
    inc bc
    add [hl]
    rlca
    adc c
    rst $38
    rrca
    push de
    dec de
    reti


    rla
    pop hl
    ccf
    pop hl
    rst $38
    ccf
    add hl, de
    rst $38
    ld [de], a
    rst $38
    ld hl, $16ff
    cp a
    rst $38
    adc b
    rst $38
    ld h, b
    rst $38
    rra
    ld a, [bc]
    ldh [$81], a
    ei
    rst $38
    rlca
    cpl
    ret nz

    ld b, [hl]
    rst $38
    jr nz, @+$01

    ld h, l
    rst $38
    rst $38
    add [hl]
    rst $38
    dec c
    rst $38
    ld c, a
    rst $38
    ld a, h
    rst $38
    rst $20
    or b
    rst $08
    ldh [$df], a
    ldh a, [$bf]
    ldh [rIE], a
    rra
    ret nz

    cp a
    ret nz

    ld a, a
    rst $38
    ldh [$1f], a
    ld a, a
    ld hl, sp+$47
    cp h
    inc bc
    cp $03
    cp $7b
    pop hl
    rst $38
    ld bc, $ffff
    rlca
    ld a, [$720f]
    rra
    rst $38
    ld [hl], l
    dec de
    dec l
    inc sp
    add hl, hl
    scf
    ld hl, $f73f
    ld hl, $183f
    or b
    ld [c], a
    ld d, [hl]
    rst $38
    jp hl


    cp a
    cp a
    rst $38
    sbc $ff
    and b
    rst $38
    sbc $b0
    pop hl
    ld b, b
    rst $38
    rst $38
    ld h, $ff
    ldh [rIE], a
    push hl
    ccf
    rst $20
    rst $38
    rst $38
    db $ed
    ld a, a
    ld a, h
    rst $30
    ld l, h
    di
    ld hl, sp-$09
    rst $20
    cp b
    rst $38
    xor h
    ldh [$9f], a
    ld h, b
    rst $18
    ldh [rIE], a
    cp a
    jr @-$06

    call nz, $e23c
    ld e, $22
    db $fd
    sbc $2d
    pop hl
    add hl, bc
    rst $38
    dec b
    rst $38
    rrca
    nop
    sub a

jr_075_41e2:
    rrca
    nop
    rlca
    cp $e0
    inc bc
    cp $e0
    ld d, h
    pop hl
    ld hl, sp-$02
    ld b, b
    ret nz

    pop hl
    ccf
    ld [c], a
    ccf
    jp nz, $e27f

jr_075_41f7:
    cp a
    rst $38
    inc de
    rst $38
    db $d3
    rst $38
    ret z

    or d
    ldh [rNR41], a
    cp $10
    ldh [$1f], a
    rst $38
    jr c, jr_075_41f7

    ld [hl], b
    rst $18
    rst $38
    rst $28
    sbc a
    ld b, $fe
    inc bc
    jp z, $18e0

    rst $38
    ld hl, sp-$01
    rst $28
    ld [hl], d
    rst $18
    db $e3
    cp a
    db $ed
    ccf
    ld a, h
    ei
    ld a, h
    add d
    ld h, [hl]
    ldh [$31], a
    rst $38
    ld b, c
    rst $38
    pop bc
    cp $4e
    ret nz

    pop hl
    rst $38
    db $e3
    ccf
    rst $20
    ccf
    db $e3
    ei
    ccf
    pop af
    cp $a0
    ret nc

    ld l, a
    ret nz

    ld a, a
    ret nz

    db $eb
    ld a, a
    add b
    ld h, $c0
    ld b, b
    ld h, a
    ldh [$df], a
    rst $38
    adc $ff
    ei
    rst $08
    ld sp, hl
    ld h, a
    db $fc
    dec b
    cp $0b
    rst $38
    cp $0f
    db $fc
    ld [hl], a
    db $fd
    add a
    db $fd
    rlca
    cp a
    db $fd
    rst $38
    ld hl, sp-$01
    jr z, jr_075_41e2

Jump_075_4260:
    ld b, $c0
    adc b

jr_075_4263:
    cp $54
    ret nz

    ld d, d
    db $fd
    jr nz, @+$01

    or b
    rst $38
    ldh a, [$fd]
    ld a, a
    sub l
    pop bc
    ld b, l
    rst $38

jr_075_4273:
    dec h
    rst $38
    rla
    cp $77
    dec de
    cp $13
    cp $e0
    dec hl
    ccf
    ld sp, $e01a
    rst $38
    ld e, b
    ld h, a
    ld e, b
    ld h, a
    ld d, b
    ld l, a
    ld b, b
    ld a, a
    ld e, a
    ld b, b
    ld a, a
    cp a
    ldh [$9f], a
    jr nz, jr_075_4273

    ldh [$f9], a
    add b
    rst $38
    call c, $eff7
    ei
    rst $38
    db $fc
    add $ff
    db $dd
    rrca
    jr jr_075_4263

    ld [hl], e
    cp $83
    sbc $c0
    cpl
    db $fc
    rst $38
    rst $38
    rst $28
    jp nz, $ccff

    ccf
    ret c

    cp a
    rst $38
    pop de
    cp $f3
    ld a, h
    db $e3
    ld a, h
    ldh [rIE], a
    db $fd
    ldh a, [rNR34]
    ldh [rLYC], a
    rst $38
    cpl
    rst $38
    ld e, $fe
    rst $38
    ld a, [de]
    cp $12
    cp $32
    cp $7a
    cp $bf
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $ec01
    add a
    cpl
    rst $38
    db $fd
    rra
    ld sp, hl
    rrca
    ld sp, hl
    sbc a

jr_075_42e0:
    pop af
    ld a, a
    rst $30
    ld h, c
    ccf
    ld bc, $c210
    add b
    rst $28
    db $10
    rst $00
    rst $38
    jr c, @-$2f

    jr nc, jr_075_42e0

    jr c, @+$01

    ld b, h
    rst $38
    rst $38
    add d
    rst $38
    add e
    pop af
    ccf
    db $e3
    ld a, $e7
    ld a, a
    dec a
    rst $20
    ld a, $ff
    inc e
    rst $38
    ld b, $6b
    and c
    rst $38
    ld a, [c]
    cp [hl]
    ld a, [$fd2e]
    inc d
    ld sp, hl
    ld [$fbfd], sp
    cp $e0
    rst $30
    db $10
    rst $20
    ldh [$e1], a
    ld a, a
    rst $18
    and d
    rst $38
    sbc a
    rst $38
    and c
    ld [hl], $c2
    add d
    rst $38
    rst $38
    ret nz

    ld a, a
    ld a, e
    cp $c7
    rst $00
    ret nz

    ret nz

    rst $38
    cp b
    cp b
    call nz, $0ffc
    rst $38
    dec de
    rst $38
    ccf
    inc bc
    cp $c7
    cp $e7
    sbc e
    dec [hl]
    and c
    ld c, b
    add b
    rst $30
    adc [hl]
    rst $38
    db $e4
    reti


    ret nz

    ccf
    db $fc
    sbc a
    ldh a, [$b8]
    ld e, h
    and b
    add sp, -$3f
    db $e4

jr_075_4352:
    pop bc
    xor e
    cp $07
    ld [c], a
    add b
    ld a, [bc]
    cp $60
    ldh [$32], a
    cp $4c
    db $fc
    jr c, jr_075_4352

    ld h, c
    ei
    ld a, a
    or a
    or d
    ldh [$98], a
    rst $20
    adc c
    rst $30
    and d
    cp $3e
    and b
    ld h, b
    ld a, a
    rst $38
    rst $28
    rst $38
    jp $dfff


    ld hl, sp-$39
    db $fc
    rrca
    db $fc
    or d
    pop hl
    rlca
    cp $af
    db $e3
    rst $18
    di
    adc l
    sub l
    ret nz

    ld a, c
    or d
    db $e4
    add c
    rst $38
    cp $ff
    ldh a, [$3f]
    and $79
    call z, Call_075_7ef3
    or [hl]
    and c
    add b
    rst $38
    jp $067f


    cp $5e
    ret nz

    cp $9c
    ret nz

    dec sp
    cp $e3
    cp $1f
    db $fc
    rst $20
    db $fd
    ldh [$9a], a
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$bf]
    nop
    ld hl, sp+$00
    db $fc
    nop
    cp $12
    ret nz

jr_075_43bd:
    rrca
    sbc a
    ld bc, $0107
    rlca
    inc bc
    rst $38
    push hl
    inc e
    ldh [$e0], a
    di
    rst $38
    db $fc
    xor d
    ld h, b
    db $fd
    ld [c], a
    rst $28
    rst $38
    cp $06
    rst $38
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh a, [$d0]
    or b
    ldh a, [rTAC]
    ret c

    ld hl, sp-$18
    cp $e0
    ldh [$a1], a
    ld hl, sp-$7f
    ldh a, [$81]
    add sp, -$7f
    rst $38
    ldh [$3f], a
    ld a, b
    rra
    ld a, $07
    rra
    ld bc, $cacc
    and c
    adc $a0

jr_075_43f9:
    nop
    rlca
    jr nc, jr_075_43bd

    ld a, [de]
    ldh [rIE], a
    db $fd
    db $e3
    add hl, sp
    db $fd
    ld e, a
    and e
    sbc e
    add d
    db $76
    ld h, c
    cp $cf
    ld a, [hl]
    ld e, e
    rst $38
    ld a, l
    inc a
    add b
    rst $20
    ccf
    ld c, h
    ld h, b
    ld a, a
    ld c, b
    ld h, b
    cp l
    cp $fe
    ldh [$fc], a
    ldh a, [$c0]
    ldh a, [$72]
    ldh [$e0], a
    ld a, [$e06c]
    ret nz

    ld h, [hl]
    ldh [$80], a
    nop
    jr @+$21

    add [hl]
    rst $20
    rlca
    pop bc
    ld bc, $e760
    or d
    db $e3
    ccf
    ccf
    inc bc
    add c
    ld bc, $c059
    cp $e0
    or d
    jp hl


    or b
    pop hl
    dec l
    add b
    or d
    db $e3
    rst $38
    dec a
    cp $ff
    ldh [$fc], a
    db $fc
    rst $08
    ret nz

    ld h, b
    db $eb
    ld [c], a
    ld b, l
    push af
    ccf
    jr z, jr_075_43f9

    inc bc
    dec b
    ld h, b
    inc bc
    inc bc
    add e
    inc bc
    cp a
    pop bc
    ld bc, $01e1
    pop af
    ld bc, $e300
    di
    db $eb
    rst $38
    rst $30
    cp $e4
    ei
    cp $e0
    db $fd
    rst $38
    ret nc

    rst $28
    ldh a, [$d0]
    ldh a, [$d1]
    cp $e0
    db $eb
    ld hl, sp-$15
    cp a
    ld hl, sp-$09
    db $fc
    rst $30
    db $fc
    rst $38
    call c, $fcc0
    ld d, b
    call nc, Call_075_5ac0
    pop hl
    ld e, [hl]
    pop hl
    jp nz, $c045

    cp [hl]
    ret nz

    db $fc
    add [hl]
    ld b, b
    rst $38
    cp $03
    ld a, [hl]
    inc bc
    dec a
    rlca
    dec e
    rrca
    xor a
    dec bc
    rrca
    dec de
    rra
    rst $38
    pop hl

jr_075_44a8:
    db $fd
    cp h
    ldh [$fe], a
    ld a, [hl]
    ld l, e
    ld b, b
    db $fd
    db $fd
    db $fc
    db $fc
    ld hl, sp-$08
    ret nz

    ld b, b
    sbc l
    db $fc
    pop af
    pop hl
    ld a, a
    rst $38
    cp a
    ld c, $a0
    ld a, [bc]
    ldh [$7f], a
    ld a, [hl]
    cp $60
    nop
    add e
    add b
    rst $00
    ret nz

    rst $28
    ld [hl], e
    and c
    rst $38
    ld hl, sp-$01
    ld hl, sp+$02
    inc bc
    add d
    inc bc
    push bc
    ld a, a
    rlca
    db $ed
    rrca
    ei
    rrca
    ei
    rra
    rst $38
    ld h, b
    db $f4
    ret nz

    and $75
    ldh [$fc], a
    ldh a, [$80]
    ldh a, [$fc]
    db $fc
    cp $f2
    ret nz

    and $7f
    rst $38
    ldh [rSVBK], a
    ld [c], a
    add b
    ld hl, sp-$40
    ldh a, [$cf]
    ldh [$f0], a
    ldh a, [$f8]
    rst $38
    ldh [$28], a
    ldh [$03], a
    inc b
    ccf
    rlca
    ld [$080f], sp
    rrca
    rrca
    db $fc
    ldh [$c9], a
    pop hl
    ld e, l
    rst $38
    cp b
    ld h, b
    ld c, $ff
    ld e, $e7
    jr nz, @+$10

    jp hl


    jp nz, $dda8

    ld h, b

jr_075_451e:
    ld sp, hl
    jr nz, @-$17

    ld hl, $d302
    jr nz, jr_075_4529

    jr nz, jr_075_44a8

    ccf

jr_075_4529:
    db $fc
    ret c

    ld b, c
    adc a
    and e
    rst $38
    rst $10
    rra
    rst $30
    rra
    or $ef
    rra
    db $f4
    rra
    ld a, [$e07e]
    db $fc
    rlca
    rst $38
    ei
    rst $38
    ldh a, [rIE]
    ldh [rNR23], a
    ld hl, sp+$08
    ld hl, sp+$0c
    sbc a
    ld hl, sp-$04
    ld hl, sp+$0e
    ld hl, sp-$5e
    jr nz, jr_075_451e

    ld b, b
    ldh a, [$aa]
    ld b, b
    ld b, b
    ldh [$c5], a
    ld b, b
    and b
    ld b, [hl]
    ret nz

    db $fc
    adc d
    ldh [$a8], a
    rst $38
    ld hl, sp+$68
    ld hl, sp+$28
    ld hl, sp-$30
    ldh a, [rNR41]
    cp $89
    add b
    scf
    rra
    rla
    rra
    ld d, $1f
    inc d
    rr a
    ld a, [bc]
    cp $c0
    inc b
    ret nz

    ldh [$9d], a
    add b
    ldh a, [$1f]
    rst $38
    ld hl, sp+$0f
    ld hl, sp+$0b
    ld hl, sp-$05
    ld hl, sp+$09
    cp d
    ret nz

    ldh [$3f], a
    rst $38
    ldh [$30], a
    ccf

jr_075_4590:
    jr nz, jr_075_4590

    ldh [$3f], a
    db $eb
    ccf
    ld h, b
    ld b, $c0
    di
    ld a, [bc]
    ldh [$af], a
    ld hl, sp+$6f
    adc a
    ld hl, sp+$2f
    ld hl, sp-$21
    xor c
    ldh [$98], a
    and c
    xor $c1
    ld bc, $9040
    ld h, d
    adc b
    ld h, c
    jr nc, @+$22

    daa
    ld h, e
    ld a, [$20e5]

jr_075_45b7:
    jr nz, jr_075_45b7

    ld a, h
    jp nz, Jump_075_7ac2

    pop bc
    ld hl, sp+$20
    jr nz, @-$05

    and d
    ei
    or $c2
    db $ec
    ld bc, $f8f0
    ld b, [hl]
    jp nz, $a7a0

    jp nz, Jump_000_03e5

    ld bc, $010f
    ccf
    ld a, [bc]
    sub [hl]
    add sp, -$03
    xor $a0
    pop bc
    sbc [hl]
    and b
    ld [c], a
    ld bc, $e970
    ret nc

    call nz, Call_000_30a4
    daa
    add $80
    ret nz

    ret nz

    add hl, bc
    call nz, $f9e2
    or b
    and b
    pop hl
    xor d
    ret nz

    ldh [$81], a
    and h
    db $e4
    rlca
    and d
    ldh [$1f], a
    and b
    ldh [$7f], a
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
    nop
    ldh a, [$e1]
    ld a, a
    cp $e0
    ccf
    ld a, a
    nop
    ccf
    ld bc, $011f
    ld b, c
    ld bc, $e8e0
    rst $18
    ld [hl], b
    ld hl, sp-$20
    ld a, [$d0f8]
    ldh [rSB], a
    ld a, a
    call c, $e0fe
    ldh [$e2], a
    rra
    ld h, a
    ld a, a
    ret nz

    ldh [rSVBK], a
    cp $ff
    ldh [$fe], a
    ld hl, sp-$04
    ld hl, sp-$04
    cp b
    ld hl, sp-$59
    ld c, b
    jp nz, $e0c0

    db $e4
    jp nz, Jump_000_3fe0

    ld [c], a
    ldh [$80], a
    jp c, $e0a1

    rst $38
    ld [c], a
    ldh [$fe], a
    cp b
    ldh [$e0], a
    ld c, b
    ld hl, sp-$01
    ret nz

    ld [c], a
    ldh [$c2], a
    nop
    ld [c], a
    nop
    ldh a, [$fe]
    cp $e0
    ldh [rP1], a
    pop hl
    nop
    rst $00
    nop
    rst $08
    rst $38
    nop
    ld b, e
    ld bc, HeaderCartridgeType
    rrca
    ld bc, $bf0f
    nop
    rlca
    ld bc, $1f9f
    rst $20
    ret nc

    ldh [$f2], a
    rst $28
    ld [hl], b
    ld [c], a
    ldh [$f8], a
    rst $38
    pop hl
    cp b
    jp hl


    ld c, b
    rst $30
    rst $00
    ret nz

    rst $28
    ret nc

    jp hl


    ld bc, $01c7
    adc $ef
    inc bc
    ld b, e
    nop
    ld b, a
    adc b
    ld [c], a
    add b
    rst $38
    nop
    rst $38
    rst $38
    inc bc
    rst $38
    ld h, h
    rst $38
    ld a, [$faf8]
    cp $88
    ldh [$f0], a
    ret nz

    ldh [$e0], a
    ld de, $17f0
    rst $38
    ldh a, [$8f]
    ld hl, sp-$3e
    nop
    db $e3
    ld bc, $eff1
    ld bc, $03f2
    ld [c], a
    cp $e0
    call nz, $cc07
    ei
    rlca
    add b
    jp c, Jump_000_04e0

    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    rst $38
    ld h, [hl]
    rst $38
    rst $38
    db $dd
    rst $38
    sbc c
    ld [c], a
    rst $38
    ldh [rNR12], a
    ldh a, [$90]
    ldh a, [$08]
    ld hl, sp+$08
    rst $28
    ld hl, sp+$05
    db $fc
    rlca
    cp $e0
    jp $e301


    call z, $e0d2
    ret nc

    pop hl
    db $e4
    rlca
    ret nc

    pop hl
    jp nc, Jump_075_66eb

    rst $38
    rst $30
    ld [de], a
    ldh a, [$92]
    jp nc, Jump_000_04e2

    db $fc
    dec b
    db $fd
    ld l, a
    rlca
    cp $07
    db $fc
    add b
    ldh [rP1], a
    rrca
    cp $e0
    rst $28
    ld [hl], a
    ld [hl], b
    rst $38
    adc b
    and a
    ldh [rSC], a
    rst $38
    ld bc, $ffff
    ld bc, $037e
    ld a, [hl]
    inc bc
    ld a, $03
    ld a, a
    inc a
    rlca
    inc e
    rlca
    ld b, h
    rlca
    nop
    ld l, b
    ldh [$fd], a
    ld h, a
    ret nz

    add sp, $1f
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$7b
    adc a
    ld hl, sp-$6c
    pop hl
    rlca
    db $fc
    dec b
    db $fc
    ld c, c
    ldh [$fe], a
    sub b
    jp z, Jump_000_03fe

    cp $03
    ld a, h
    rlca
    ld a, h
    rst $38
    rlca
    inc a
    rlca
    jr c, jr_075_476a

    jr @+$11

    ld b, h
    db $fc
    ld d, b
    ldh [$86], a
    push hl
    ld c, b
    rst $38
    add h
    rst $38
    ld e, b
    rst $38
    db $fd

jr_075_476a:
    rrca
    add $e4
    rlca
    db $fc
    rra
    db $fc
    inc bc
    cp $ff
    dec de
    cp $fc
    rlca
    ld hl, sp+$0f
    ld a, b
    rrca
    rst $30
    ld a, h
    rlca
    ccf
    adc $e0
    inc e
    rlca
    ld b, d
    inc bc
    cp d
    ret c

    push hl
    jr nz, jr_075_47c2

    pop bc
    rst $38
    ld b, b
    rst $38
    ret c

    push hl
    add e
    ld a, a
    cp $17
    db $fd
    rra
    ld a, [$f417]
    sub b
    and $ff
    ld [hl], b
    db $fc
    adc b
    db $fc
    inc b
    cp $02
    ld hl, sp-$05
    rrca
    ld hl, sp-$3e
    ldh [$7f], a
    inc bc
    dec a
    rlca
    dec a
    cp a
    rlca
    ld e, $03
    ld b, d
    inc bc
    ret z

    sbc d
    ld [c], a
    inc hl
    rst $30
    rst $38
    rst $38
    db $fc
    ld [hl], $e0
    ret nz

    ccf
    rst $38

jr_075_47c2:
    rra
    rst $38
    db $fd
    rlca
    db $fd
    sbc e
    cp $83
    rst $38
    sub a
    ld a, a
    db $fc
    sbc a
    ld hl, sp-$61
    rst $30
    add hl, de
    rst $38
    ld e, $e0
    rst $38
    dec h
    rst $38
    xor l
    rst $38
    ei
    db $fd
    ccf
    jp hl


    rst $38
    ccf
    ret


    rst $38
    ld b, l
    rst $38
    ld c, b
    rrca
    ld c, b
    rst $38
    rrca
    inc c
    rlca
    rrca
    rlca
    inc b
    rlca
    add h
    or e
    rlca
    ld [c], a
    ret z

    ret nz

    add d
    db $eb
    nop
    rst $38
    add d
    and $fc
    cp a
    rra
    ei
    dec d
    rst $30
    jr @+$01

    db $10
    add $e0
    ld a, a
    cp c
    ld hl, sp+$47
    db $fc
    ld b, e
    cp $47
    call c, $ffc0
    inc c
    rlca
    ld c, $03
    ld b, $03
    add a
    ld bc, $e2ef
    inc bc
    db $f4
    rlca
    add $e7
    ret nz

    rst $38
    jr nc, @-$27

    rst $38
    rrca
    rst $38
    add $e2
    ld hl, sp-$36
    ret nz

    ld hl, sp+$3f
    rst $28
    rst $38
    reti


    rst $38
    db $10
    ret nz

    rst $20
    nop
    pop hl
    ret nz

    rst $38
    daa
    ldh [$7f], a
    ld hl, sp+$42
    inc bc

jr_075_4840:
    ld b, a
    ld bc, $0ef7
    inc bc
    inc c
    add b
    ldh [$88], a
    rrca
    add sp, $0f
    rst $38
    db $fc
    rrca
    nop
    rst $38
    ldh [rIE], a
    jr @+$01

    push af
    rlca
    inc e
    ret nz

    nop
    ld [hl], e
    jp nz, $fd1f

    scf
    db $fd
    rst $20
    db $d3
    cp $a1
    ld c, $c0
    ld h, a
    ret nz

    rst $38
    jp $fdff


    cp $40
    push hl
    rst $38
    pop hl
    rst $38
    ld h, c
    rst $38
    ld de, $ffef
    ld b, e
    ld bc, $c246
    ldh [$0c], a
    rlca
    ld [$0f8f], sp
    adc b
    rrca
    db $ec
    db $f4
    ret nz

    adc d
    db $e3
    ret nz

    db $e3
    inc b
    cp [hl]
    xor [hl]
    and b
    jr nc, @+$01

    ret nc

    rst $38
    jr c, jr_075_4840

    ldh [rSTAT], a
    cp e
    rst $38
    ld hl, $e0fe
    add e
    cp $45
    or $e0
    ld b, c
    cp $c4
    ldh [$d1], a
    rst $38
    jp $fffe


    db $fc
    rst $08
    sbc a
    ret nz

    rst $38
    ld bc, $03fe
    rst $00
    and c
    cp b
    pop bc
    db $fc
    sub b
    cp h
    ldh [$82], a
    db $e3
    sbc h
    and c
    ret nz

    jp hl


    ldh a, [$94]
    ldh [$c0], a
    ld [c], a
    rst $38
    ld a, a
    ld b, e
    cp $81
    rst $38
    and c
    rst $38
    pop bc
    cp $e0
    ccf
    db $fd
    rst $38
    rst $38
    set 7, a
    cp c
    add b
    pop bc
    add $e1
    rst $38
    ld hl, sp+$0f
    db $fd
    rrca
    cp $0b
    adc a
    add hl, bc
    call c, $e18c
    add h
    push hl
    ldh a, [rIE]
    ld hl, sp-$04
    ret nz

    cp b
    rst $28
    or a
    ld [hl], b
    rst $18
    jr nz, @-$7c

    ldh [$81], a
    rst $38
    push hl
    and b
    cp $7f
    ld b, a
    db $fc
    add e
    cp $a3
    cp $c1
    ld b, d
    ldh [$bf], a
    ld sp, hl
    rra
    db $fd
    rrca
    db $fd
    rst $00
    ret z

    pop hl
    rst $38
    rst $30
    dec bc
    rst $38
    add hl, bc
    dec hl
    and b
    inc b
    ei
    ld [bc], a
    add e
    db $d3
    ld bc, $7900
    and b
    ld a, e
    add b
    ldh [$f1], a
    add b
    add b
    rst $38
    rst $08
    ld [hl], e
    rst $38
    ld bc, $5c03
    and b
    cp c
    ldh [rSTAT], a
    rst $38
    rst $38
    add l
    cp $82
    cp $02
    cp $02
    pop bc
    rst $18
    rst $38
    db $e3
    cp $ff
    sbc h
    jr nc, @-$7c

    nop
    rra
    rst $20
    nop
    ld b, c
    nop
    adc d
    pop hl
    jp nz, $ffe3

    ld [bc], a
    ld sp, hl
    ccf
    ld bc, $0082
    adc b
    rst $38
    ld [hl], b
    dec b
    ret nz

    or l
    add b
    or $c2
    ld [c], a
    rst $38
    add c
    ret nz

    pop hl
    rrca

jr_075_4960:
    ld sp, hl
    cp $f6
    sbc h
    jp nz, $c2e3

    ret nz

    add b
    rst $38
    add b
    ldh a, [$64]
    ret nz

    ld [c], a
    call $0ffb
    xor $82
    ldh [$f7], a
    inc b
    rst $20
    inc b
    db $e3
    ccf
    ld [bc], a
    rst $00
    ld bc, $00cf
    nop
    inc d
    ldh [$c0], a
    ldh [$ed], a
    rlca
    ret nz

    db $e4
    add b
    inc bc
    ld [hl], h
    ret nz

    rrca
    ld sp, hl
    rst $38
    ld d, l
    push af
    dec b
    ldh [rSC], a
    ld [c], a
    add b
    rrca
    ldh [$80], a
    inc bc
    ld d, a
    add b
    rst $38
    ld b, l
    rst $38
    pop de
    cp a
    ld a, $e3
    nop
    di
    ld a, e
    nop
    rst $00
    add $e0
    di
    ld [bc], a
    pop af
    ld bc, $8500
    db $e3
    cp $1f
    rla
    ldh [$c6], a
    ld [c], a
    ld e, e
    add b
    ccf
    rst $30
    rra
    rst $28
    rlca
    cp $ff
    ei
    xor d
    add b
    inc bc
    cp $0e
    rst $28
    rst $38
    ld a, [hl]
    rst $38
    cp $62
    ld h, b
    sub e
    rst $38
    and e
    rst $38
    rst $38
    xor e
    rst $38
    xor $3f
    jr c, jr_075_4960

    nop
    cp $c0
    pop hl
    rst $38
    add c
    ld a, a
    ld b, b
    ccf
    jr nz, jr_075_4a03

    ccf
    rra
    rla
    rra
    xor a
    ccf
    rst $28
    cp $e0
    ld e, d
    ld [c], a
    di
    ld a, [hl]
    cp $ff
    ldh [$95], a
    ld h, c
    rst $28
    rst $38
    ld a, a
    ld b, b
    ld c, l
    ld a, a
    ld [c], a
    ld [c], a
    cpl
    ccf
    ldh [$e6], a
    ld [c], a

jr_075_4a03:
    add sp, -$61
    db $db
    add c
    cp $20
    ld h, e
    ld bc, $033e
    ld e, $03
    ld b, e
    inc bc
    ld e, [hl]
    push hl
    ld h, b
    rra
    rst $28
    ld a, a
    sbc a
    cp h
    pop bc
    rst $38
    cp h
    db $e3
    cp [hl]
    sub $e6
    rst $38
    rra
    rra
    ld a, a
    ccf
    nop
    pop hl
    cp $ff
    add b
    cp $c0
    db $fc
    ldh [$fc], a
    ldh a, [$f8]
    rst $38
    ldh a, [$f2]
    ldh a, [$ef]
    ccf
    rst $18
    ld a, a
    rst $18
    cp a
    ld a, a
    cp a
    rst $38
    cp [hl]
    cp $be
    ld h, d
    pop hl
    ld a, a
    cp $ac
    pop hl
    rst $28
    rst $38
    ld [hl], a
    ccf
    scf
    rra
    ccf
    add a
    rra
    ccf
    ccf
    ret nc

    ldh [$78], a
    ret nz

    ret nc

    ld [c], a
    cp $e0
    ld hl, sp+$47
    ret nz

    add d
    add b
    ld e, h
    pop hl
    adc $e1
    jp z, $bfe3

    ld a, [hl]
    ldh [$b0], a
    ld a, [$fce1]
    rst $20
    ldh a, [$62]
    sbc [hl]
    ldh [$fc], a
    add b
    ret nc

    pop hl
    jp nz, $c081

    jp nc, $fceb

    rst $28
    and b
    db $e4
    jp nc, $d0e0

    db $e3
    ret nz

    ld b, b

jr_075_4a84:
    nop
    ld bc, $ee0f
    add b
    or b
    add b
    inc c
    ld h, b
    ld b, b
    db $e3
    ld [hl], b
    and c
    scf
    ld b, d
    ld sp, $f1e4
    ld hl, sp+$70
    and b
    ld h, a
    ld b, c
    ld h, e
    ld b, c
    ld [c], a
    ldh [$e2], a
    ret nz

    ld a, a
    jr nc, jr_075_4a84

    db $10
    ldh a, [rNR10]
    ldh a, [$f1]
    ret nc

    ld b, b
    jp $ffff


    jr nc, jr_075_4b12

    ret nz

    jp hl


    ld l, $40
    ret nz

    jp hl


    jp nz, Jump_000_00c0

    ret nc

    xor $50
    ld b, b
    sub b
    rst $20
    ld a, $e0
    nop
    and d
    rst $10
    ld [hl+], a
    or e
    jr nz, jr_075_4ae4

    pop hl
    adc c
    cp b
    sub b
    add sp, -$40
    ldh [$e0], a
    sub b
    jp hl


    ret nc

    pop hl
    jp nc, Jump_000_03e1

    add sp, $23
    ret nz

    and e
    ld hl, $c1ec
    ldh [rDIV], a
    add b
    ldh a, [rIE]
    rst $08

jr_075_4ae4:
    rst $20
    rst $38
    ldh a, [$3f]
    add b
    jp nz, $a08e

    rst $38
    add b
    cp a
    ld c, [hl]
    cp $e0
    sbc a
    add b
    pop bc
    db $f4
    ld [c], a
    ldh a, [$e9]
    nop
    rst $38
    db $ec
    ld e, a
    jp $c780


    add b
    adc a
    cp $e0
    add a
    cp $e0
    rst $20
    db $e3
    add b
    di
    call nz, $b0e2
    call nz, $f880
    add b

jr_075_4b12:
    ld a, a
    add d
    add b
    jp nz, $e280

    add b
    ldh a, [$fe]
    ldh [rNR22], a
    ldh [$80], a
    pop hl
    sub $e0
    rst $08
    ldh a, [$ec]
    nop
    db $e4
    ld l, $40
    dec de
    rlca
    nop
    and b
    and c
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
    rst $38
    rst $38
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    ld b, $fa
    cp $e0
    inc bc
    ldh a, [$e2]
    nop
    rst $38
    add b
    rst $38
    ldh [$0b], a
    rst $38
    ret nz

    cp $e0
    add b
    ldh a, [$e4]
    sbc $e7
    ldh [$e3], a
    sbc $e6
    rst $38
    di
    nop
    rrca
    nop
    ld a, c
    nop
    ld h, c
    nop
    rst $38
    ld b, c
    nop
    inc bc
    nop
    rlca
    nop
    rra
    ld bc, $ffff
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    rst $30
    call z, $927f
    cp e
    ldh [$0c], a
    rst $38
    rst $38
    ldh [rIE], a
    rra
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    ld h, a
    db $fc
    rst $38
    sub e
    cp $03
    cp $61
    rst $38
    rst $08
    nop
    rst $38
    ldh a, [rP1]
    sbc [hl]
    nop
    add [hl]
    nop
    add d
    nop
    ccf
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    add [hl]
    pop hl
    adc $e9
    db $ec
    add [hl]
    pop hl
    adc $e7
    ld [bc], a
    cp $b0
    db $e3
    call z, $d27f
    ei
    ld a, a
    add b
    or b
    add sp, $67
    db $fc
    sub a
    db $fc
    inc bc
    ld hl, sp-$50
    ld [c], a
    ld b, h
    ldh [$fe], a
    pop hl
    rlca
    ld sp, hl
    rrca
    ei
    rrca
    rst $38
    ld hl, sp+$0f
    db $fc
    rlca
    ld e, $f3
    ld e, $f7
    push af
    dec c
    dec [hl]
    ldh [$08], a
    ld sp, $a1e0
    rst $38
    sbc a
    rst $38
    rst $38
    pop af
    sbc a
    pop af
    rst $18
    ld h, c
    rst $38
    pop bc
    rst $38
    db $dd
    ld hl, $e0fc
    ld a, [bc]
    rst $38
    ld a, [c]
    ld b, d
    push hl
    ret nz

    ccf
    ld a, a
    ldh [$bf], a
    ldh [$3f], a
    ldh [$7f], a
    ret nz

    ret nz

    db $e4
    sub $be
    and $0c
    rst $38
    cp [hl]
    pop hl
    dec a
    cp [hl]
    db $e4
    sbc a
    rst $38
    add l
    ld h, c
    cp [hl]
    ld [c], a
    ld a, c
    cp [hl]
    db $e4
    ret nz

    and $be
    and $d2
    rst $20
    ld h, $df
    rst $38
    cp a
    rst $38
    cp a
    ldh [$d2], a
    rst $20
    ret


    rst $38
    ld l, a
    ld a, [$faff]
    rrca
    sub b
    db $ec
    ldh [$0b], a
    ldh [$c0], a
    ei
    jr nz, jr_075_4c86

    sbc $c1
    pop bc
    ld a, a
    db $e3
    ld a, [hl]
    add a
    rst $38
    cp $80
    rst $38
    ld b, c
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    cp a
    ld hl, sp-$61
    rst $30
    rra
    ldh a, [$1f]
    ld sp, hl
    rst $28
    rrca
    inc bc
    rst $38
    inc b
    cp $e0
    ld c, $fb
    ld a, $ff
    di
    rst $18
    pop af
    rra
    ldh a, [$3f]
    ldh [$b0], a
    cp $c0
    ret nz

    ld [$0ff8], sp
    ld hl, sp+$05
    db $fc
    dec b
    rst $38
    db $fc
    adc a
    db $fc
    jp nz, $0ffe

    inc bc
    di

jr_075_4c86:
    rst $38
    inc bc
    inc e
    rlca
    add sp, $0f
    or b
    rra
    or b
    xor a
    ccf
    ret nc

    ld a, a
    ld d, b
    ld [$c1c0], a
    ret nz

    ldh [$60], a
    ccf
    rst $38
    jr c, @+$01

    rra
    rst $30
    rra
    adc $e0
    ret nz

    push hl
    rst $38
    ccf
    ld sp, hl
    rst $08
    ld sp, hl
    rrca
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [$c0]
    ld c, a
    ret nz

    jr c, @-$1e

    daa
    ldh [rIE], a
    dec e
    ldh a, [$0d]
    ld hl, sp-$71
    ld hl, sp-$3c
    db $fc
    rst $38
    inc c
    rlca
    di
    inc bc
    dec e
    ld bc, $02e7
    rst $30
    cp a
    rlca
    cp b
    ld d, [hl]
    ret nz

    db $10
    rra
    sbc a
    ldh a, [$ef]
    sbc a
    ld hl, sp-$71
    rst $38
    ld [hl], d
    ldh [rIE], a
    jr nz, @+$01

    rst $38
    inc e
    rst $38
    rrca
    ei
    ld a, [c]
    rra
    di
    cp a
    rst $30
    ld [c], a
    rst $38
    dec b
    di
    and b
    rrca
    db $fd
    scf
    db $fc
    rst $38
    rst $08
    ld hl, sp+$70
    ret nz

    xor a
    ldh [rNR23], a
    ldh a, [$fd]
    rla
    jp nz, Jump_000_05e0

    db $fc
    add e
    cp $b9
    rst $38
    or $80
    ldh [rSB], a
    rra
    add b
    ldh [$b3], a
    inc e
    or [hl]
    add hl, de
    ld l, a
    db $e4
    dec sp
    jr nz, jr_075_4d52

    ld b, a
    ldh [$f0], a
    rst $08
    jp nz, $ffe6

    rrca
    ld hl, sp-$05
    rst $18
    ld a, [c]
    rra
    push hl
    rst $38
    rst $28
    rlca
    rst $38
    rrca
    db $fc
    jp nz, $ffe1

    ld sp, $ff90
    ldh a, [$1f]
    ld hl, sp+$24
    call c, $ee13
    add e
    rst $28
    cp $f1
    ld a, a
    add c
    sub a
    and b
    add e
    cp $83
    cp a
    cp $97
    cp $d3
    rst $38
    add e
    or $e2
    add a
    jp hl


    cp $d5
    ldh [$3e], a
    pop bc
    inc bc

jr_075_4d50:
    push de
    and b

jr_075_4d52:
    sub b
    rst $38
    add b
    di
    ld a, a
    ld b, b
    adc d
    and b
    sub b
    and e
    ld h, c
    rst $38
    ld [de], a
    rst $38
    rst $38
    ld [bc], a
    cp $04
    add e
    cp $82
    cp $d2
    db $d3
    cp $96
    ld a, [$fee0]
    pop hl
    ld a, [$c0d0]
    add b
    rst $38
    push af
    push bc
    jp nz, $81e0

    cp $e0
    and b
    rst $38
    ld b, b
    ld a, a
    xor $dc
    ret nz

    ldh a, [$9f]
    ldh a, [$c5]
    ret nz

    ldh a, [rIE]
    pop hl
    push af
    rst $38
    jr nc, jr_075_4d50

    db $10
    cp $e2
    add hl, de
    rst $38
    ld [c], a
    rst $38
    rst $30
    ld [bc], a
    db $fd
    inc b
    ret nz

    db $e3
    sbc [hl]
    cp $fe
    ld h, d
    db $eb
    rst $38
    ld e, l
    call $81e2
    inc c
    pop hl
    ld h, b
    ccf
    ld b, b
    call $fe7f
    db $e3
    ld b, c
    ld a, a
    res 4, b
    and d
    ret nz

    cpl
    ld hl, sp-$41
    rst $08
    ld hl, sp+$4f
    ld hl, sp+$5f
    ldh a, [$0a]
    and b
    ld [hl], b
    rst $38
    rst $38
    add hl, bc
    cp $0b
    rst $38
    dec c
    rst $38
    ld a, [de]
    db $db
    rst $38
    ld [hl], c
    sbc a
    ldh [rNR41], a
    pop bc
    db $e3
    add b
    ld [bc], a
    cp $ff
    ld b, $fc
    add [hl]
    db $fc
    adc b
    ld hl, sp-$10
    ld [hl], b
    rst $38
    ld hl, sp+$40
    ldh a, [$3f]
    jr z, jr_075_4e24

    ld c, b
    ld a, a
    rst $10
    ld d, h
    ld a, e
    ld d, b
    jp nz, Jump_075_40e2

    ret nz

    ld [c], a
    ld e, a
    ld hl, sp-$01
    cpl
    db $fc
    cpl
    ld hl, sp-$01
    pop af
    rrca
    db $fc
    xor e
    inc bc
    rst $38
    call nz, $12e2
    sub c
    and b
    ldh [$af], a
    ret nz

    inc hl
    rst $30
    rst $38
    ld [hl+], a
    inc bc
    inc a
    and b
    add [hl]
    db $fc
    sbc [hl]
    ld hl, sp-$01
    ld [c], a
    ld h, b
    ret nz

    ld b, b
    ldh [$80], a
    ld hl, sp-$80
    ld a, a
    add a
    cp $c1
    ld a, a
    ret nz

    ld a, a
    jp nz, $c002

jr_075_4e24:
    ccf
    ldh [$3f], a
    ld [$f73f], a
    rra
    ld [hl], a
    pop hl
    ld a, h
    add b
    ld e, d
    ld a, c
    add b
    ld a, a
    ld sp, hl
    ld [c], a
    cp $04
    add e
    ret nz

    cp $fe
    ldh [$d7], a
    rst $38
    rst $38
    db $fc
    ld a, [$c6e2]
    db $76
    ldh [rNR14], a
    rst $38
    ld a, l
    adc h
    jp hl


    and b
    ld [$a8ff], sp
    rst $38
    ret nc

    call nz, Call_075_6de1
    ld [$e0c6], a
    rst $38
    rra
    ld a, b
    add e
    ld a, a
    ldh [$c2], a
    db $e3
    dec d
    cp a
    db $fc
    ld [c], a
    cp a
    ret nz

    ldh [$fe], a
    rst $38
    ldh [$ae], a
    db $e3
    xor b
    ld [c], a
    sbc a
    and c
    rst $38
    ld l, d
    rst $38
    inc l
    ld [$4ac0], a
    add h
    ld [c], a
    sbc [hl]
    add h
    and b
    ldh a, [$1f]
    db $fc
    rrca
    ld c, $80
    jr c, @-$7c

    ccf
    ld sp, hl
    ldh a, [rWY]
    pop hl
    cp e
    add c
    pop bc
    rst $38
    pop af
    ld a, a
    jp Jump_075_7f95


    rst $10
    add b
    inc hl
    call nz, $f1c0
    cp [hl]
    and $89
    add c
    add b
    ld a, $0c
    add [hl]
    add b

jr_075_4e9f:
    ldh [$3f], a
    ld hl, sp+$1f
    ld hl, $fac0
    add l
    db $fd
    nop
    di
    ld h, e
    call z, $f0ff
    ld a, a
    rst $38
    ld a, a
    ld bc, $fedf
    ldh [$bb], a
    ldh [$36], a
    ldh [$34], a
    db $e3
    jr z, jr_075_4e9f

    ret nc

    add l
    cp b
    db $e3
    rst $38
    ret nz

    rrca
    rrca
    di
    ld bc, $011d
    and $fb
    inc bc
    cp d
    cp $e0
    push hl
    rlca
    dec e
    rlca
    rst $38
    cpl
    rst $38
    ld a, [hl]
    cp $7e
    ld c, [hl]
    pop hl
    cp $10
    ldh [$fe], a
    pop hl
    or $32
    db $e4
    cp a
    rst $38
    or d
    pop hl
    rst $18
    ld a, a
    ldh a, [$e0]
    ld a, a
    rst $08
    nop
    cp b
    nop
    rst $20
    add b
    db $dd
    cp $e0
    cp a
    rst $20
    ret nz

    ld hl, sp-$40
    rrca
    nop
    ld b, b
    ld h, l
    cp e
    add e
    ld bc, $b6e7
    ldh [$0c], a
    pop hl
    db $fc
    db $e3
    adc b
    db $e3
    db $fc
    pop bc
    ld e, a
    di
    ld a, a
    ld e, a
    ld [hl], h
    ldh [$ee], a
    pop hl
    rst $38
    rst $38
    ldh a, [$80]
    ld l, a
    rst $08
    add b
    cp b
    add b
    ret nz

    db $e4
    add b
    cp b
    ld d, d
    ld h, b
    ldh a, [rP1]
    ld l, h
    ld c, d
    ld [c], a
    ld b, [hl]
    pop hl
    or [hl]
    db $e3
    rst $38
    rst $38
    rst $18
    rst $38
    sbc a
    xor a
    cp a
    xor a
    cp a
    rst $18
    ld hl, sp-$20
    ld l, b
    pop bc
    ldh a, [$3b]
    ret nz

    rst $08
    adc d
    ldh [$e7], a
    ret nz

    db $dd
    cp $e0
    ret nz

    ldh [$c1], a
    add b
    jp nc, $d0e5

    push hl
    jp nc, $d0e3

    ld a, [c]
    sub b
    ld [c], a
    ei
    rrca
    rst $30
    rra
    rra
    ld [hl], b
    adc [hl]
    and b
    ld h, b
    ccf
    ccf
    ccf
    ei
    jr nz, jr_075_4fa1

    ld a, [hl+]
    jp nz, Jump_075_7ffc

    cp $3f
    cp $e5
    daa
    inc e
    ret nz

    inc bc
    ld a, [de]
    ret nz

    call z, $bcc1
    rst $38
    ld hl, sp-$05
    rst $38
    ret z

    sub l
    jp nz, $ffff

    rst $28
    ldh [$f0], a
    rst $38
    ldh a, [rNR34]
    ldh a, [$0e]
    ld hl, sp+$0a
    ld hl, sp-$08
    rst $30
    ld hl, sp+$08
    ld hl, sp+$52
    ld b, b
    ld bc, $010f
    ld a, c
    rst $38
    ld bc, $0362
    ld b, d
    inc bc
    inc bc
    inc bc
    ld b, $14
    ld h, d
    ld b, b
    jp c, Jump_000_07a1

jr_075_4fa1:
    ld d, c
    ld b, b
    ld [bc], a
    ld b, a
    ld b, d
    add $a3
    add hl, de
    add b
    ld [$4051], a
    sbc a
    ld c, l
    ld b, b
    rst $38
    and b
    ld b, c
    add b

jr_075_4fb4:
    ld e, [hl]
    ret nz

    ld a, a
    ld h, $e0
    ld [hl+], a
    ldh [$e0], a
    ldh [rNR41], a
    db $e4
    and b
    cp $60
    ld b, h
    ld bc, $0141
    inc bc
    ld bc, $0107
    jp nz, $a3d8

    add c
    dec e
    ld b, d
    ret nz

    rst $20
    add hl, bc
    and c
    ret nz

    add sp, $00
    sbc [hl]
    rst $38
    add b
    ld b, [hl]
    ret nz

    ld b, d
    ret nz

    ret nz

    ret nz

    ld h, b
    ld hl, $fec0
    xor b
    ld a, [$fee5]
    ld b, a
    jr z, jr_075_4fb4

    add b
    sbc b
    push bc
    ldh [rLYC], a
    ldh a, [$58]
    push bc
    rst $38
    db $ed
    ld a, b
    call nz, $c06a
    ldh a, [$80]
    sbc [hl]
    add b
    db $e3
    add [hl]
    add b
    ld a, b
    dec h
    cp b
    dec h
    and d
    db $ec
    nop
    add d
    add b
    add e
    ret nz

    add b
    ret z

    add c
    ld a, d
    push hl
    sbc b
    inc h
    add b
    and [hl]
    or b
    dec hl
    rst $38
    ld bc, $00ff
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
    rst $38
    rst $38
    nop
    rst $38
    ld [hl], h
    rst $38
    inc a
    rst $38
    db $fc
    ccf
    rst $38
    ld hl, sp-$01
    db $ec
    rst $38
    sub a
    ldh a, [$e2]
    cp $e7
    ld c, l
    ret nz

    ldh a, [$ea]
    inc a
    jp $e0d1


    ldh [$ea], a
    nop
    rst $38
    db $ed
    ld a, a
    dec a
    nop
    ei
    nop
    rlca
    nop
    or a
    cp $e0
    rst $38
    rst $28
    nop
    rra
    ld bc, $01ff
    rst $38
    rra
    rst $38
    ld hl, sp+$3f
    ret nz

    ld a, a
    add $7f
    adc c
    rst $38
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    rlca
    db $fc
    ccf
    ldh a, [rIE]
    rrca
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    inc sp
    cp $ff
    dec bc
    cp $33
    cp $f9
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
    nop
    db $fd
    ld hl, sp-$7a
    ldh [$3f], a
    inc bc
    cp $07
    ld b, $07
    rst $38
    db $fc
    rst $08
    db $fc
    ld l, a
    db $fc
    rst $38
    db $fc
    rst $08
    rst $38
    ld hl, sp-$01
    inc c
    rst $38
    db $eb
    rst $38
    add d
    rst $38
    rst $30
    cp c
    rst $38

jr_075_50b4:
    jr nz, jr_075_50b4

    ldh [rTIMA], a
    rst $38
    ld [bc], a
    rst $38
    ei
    rst $38
    ret nz

    cp [hl]
    pop hl
    add a
    db $fc
    ld b, a
    db $fc
    ld c, a
    rst $18
    ld a, [$f29f]
    ld a, a
    db $e4
    sub b
    ld [c], a
    inc bc
    or [hl]
    ccf
    rlca
    or [hl]
    rlca
    db $ec
    rst $08
    ld a, h
    call z, Call_075_5ce0
    pop hl
    rla
    inc c
    rst $38
    ld l, e
    call z, $99e0
    call z, Call_000_3ae2
    db $e3
    call z, Call_000_33e5
    ld b, e
    cp $6e
    ldh [rOCPS], a
    ldh [$fe], a
    inc bc
    cp $e1
    ld h, d
    ldh [$eb], a
    nop
    rlca
    ld sp, hl
    ldh [$c0], a
    ld e, c
    ldh [$c0], a
    rst $38
    ld [$fffb], sp
    ld b, a
    ld de, $f9e0
    rst $28
    ld sp, $90ff
    ld a, $f4
    ldh [$d1], a
    rst $38
    daa
    rst $38
    ld sp, hl
    ld b, c
    ldh [$f2], a
    jp nz, $8079

    ld b, e
    ldh [$ea], a
    call nz, $bff8
    ld hl, sp-$51
    ld b, c
    ldh [$fb], a
    rlca
    rst $38
    cp [hl]
    db $e4
    nop
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ldh a, [$df]
    rst $30
    rrca
    rst $38
    rst $08
    rst $38
    rlca
    rst $38
    rst $38
    and b
    rst $38
    rst $38
    adc h
    db $fd
    inc e
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    db $fd
    rst $38
    pop af
    rst $38
    db $e3
    adc h
    sbc c
    ldh [$d2], a
    set 7, a
    nop
    inc l
    pop hl
    cp h
    jp hl


    inc l
    pop hl
    nop
    cp $c6
    ldh [rIF], a
    ld hl, sp-$31
    ei
    rlca
    rst $38
    pop bc
    rst $38
    rst $38
    adc a
    cp $3f
    ld a, [c]
    db $fd
    call nz, Call_000_2fff
    ld e, $fd
    ld a, a
    ld sp, hl
    cp [hl]
    ldh [$c1], a
    ld h, d
    ret nz

    ld d, b
    jp nz, Jump_000_07ff

    jr c, jr_075_5186

    db $10
    rra
    jr nz, jr_075_51ba

    jr nz, @+$01

    ccf
    ldh [$7f], a
    ret nz

    ld a, a
    ldh [$3f], a
    ret c

    rst $38

jr_075_5186:
    rst $38
    rra
    rst $30
    ld c, $fb
    rlca
    db $fd
    rlca
    ei
    db $fc
    inc de
    dec [hl]
    ldh [rTAC], a
    db $fc
    rrca
    ld hl, sp-$01
    di
    rst $38
    inc e
    xor $e0
    ld c, l
    ldh [rP1], a
    db $fc
    nop
    di
    cp $84
    ret nz

    call z, $8800
    add b
    ld e, b
    ret nz

    ld e, b
    cp l
    ret nz

    xor [hl]
    ret nz

    rlca
    ret c

    rra
    ldh [$c6], a
    ldh [rLCDC], a
    db $fd
    ld a, a

jr_075_51ba:
    cp $e1
    ret nz

jr_075_51bd:
    rst $38
    ldh a, [rIE]
    rra
    rst $38
    xor a
    ld c, $ff
    rlca
    db $fd
    db $fd
    pop bc
    ld b, e
    call nz, Call_000_3ce4
    or a
    rst $38
    ld e, $f7
    call nz, $f7e1
    ld [$e4c0], sp
    add b
    rst $18
    ld c, h
    ret nz

    jr z, jr_075_51bd

    cp b
    cp $e0
    cp $03
    ld [hl], e
    ccf
    ld bc, $e980
    db $ed
    and c
    ldh [$7f], a
    ld hl, sp-$80
    and $f8
    or a
    pop bc
    add b
    jp hl


    ld e, [hl]
    ldh [$3f], a
    ld [hl], b
    ld a, a
    call nz, $f7ff
    add a
    rst $38
    add c
    ret


    jp nz, $fc07

    rst $00
    db $fc
    rst $38
    daa
    db $fc
    ccf
    db $fc
    ld l, a
    ld hl, sp-$21
    ld hl, sp-$05
    rst $18
    ldh a, [$2b]
    ldh [rSB], a
    rst $30
    ld [$1ce3], sp
    rst $38
    di
    inc c
    rst $30
    inc e
    rst $38
    ld [hl+], a
    rst $38
    ld b, c
    rst $38
    rst $38
    pop bc
    inc a
    ldh [$bf], a
    ldh [$90], a
    ldh a, [rIE]
    sbc l
    ldh a, [$cd]
    ld hl, sp-$71
    ld hl, sp-$78
    ld hl, sp-$29
    sbc a
    ldh a, [rSVBK]
    ld e, [hl]
    ldh [$84], a
    jp nz, $c0e6

    ld a, a
    rst $18
    inc hl
    cp $37
    db $fc
    cpl
    jp nz, $f3e3

    ld a, a
    rst $30
    ld hl, sp+$1f
    ldh a, [$c4]
    ld [c], a
    inc c
    rst $38
    ld [de], a
    rst $38
    db $fd
    ld h, c
    db $d3
    ret nz

    ld b, c
    rst $38
    ld b, c
    call c, $df70
    rst $38
    ld [hl], b
    ret nc

    ld [hl], b
    call $8df8
    ld hl, sp-$69
    rst $18
    ldh a, [$98]
    ldh a, [rIE]
    ld h, b
    add b
    db $e3
    ret nz

    ld a, a
    cp c
    add b
    cp d
    ld [c], a
    add b
    rst $20
    cpl
    ld hl, sp+$5f
    add b
    ldh [rIE], a
    db $fd
    ld sp, hl
    sub b
    pop hl
    and b
    ldh [$9d], a
    ldh a, [$dd]
    ldh a, [$fe]
    sub b
    ld [c], a
    ld hl, sp-$40
    ld a, a
    ldh a, [$3f]
    db $fc
    rrca
    call c, $a065
    ld d, h
    and c
    inc bc
    db $fc
    rlca
    ld b, c
    ldh [$f0], a
    rra
    rst $38
    ld hl, sp-$71
    ei
    dec c
    rst $38
    dec bc
    rst $38
    rla
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    ld e, h
    ldh [rTAC], a
    rst $38
    ccf
    add hl, bc

jr_075_52ad:
    and c
    adc $05
    and c
    rst $30
    rst $38
    sbc a
    sbc h
    ldh [rNR24], a
    ret nz

    ld hl, sp-$01
    ld a, a
    ret z

    rst $38
    ret nc

    rst $38
    ldh [rIE], a
    ret nz

    jp nz, $ace6

    call nz, Call_000_1fe0
    and b
    nop
    rrca
    jr c, jr_075_52ad

    rrca
    jp nz, Jump_000_1be0

    sbc $c4
    ldh [$f7], a
    rst $18
    db $eb
    rrca
    jp nz, $cfeb

    rst $38
    ld h, d
    scf
    and b
    cp b
    call nz, $fee5
    pop hl
    and l
    and c
    ldh a, [$7f]
    cp e
    and b
    or d
    cp [hl]
    db $e4
    rra
    ldh [$80], a
    cp [hl]
    jp hl


    rst $38
    ld [hl], b
    adc $ec
    inc bc
    sbc $40
    adc e
    db $eb
    rst $08
    ei
    rrca

Call_075_52fe:
    cp $e1
    rst $30
    rra
    rst $38
    rst $30
    rra
    rst $28
    ccf
    rst $28
    ccf
    rst $08
    rst $38
    push de
    rst $28
    cp $e4
    rst $18
    cp $e0
    cp a
    ret nc

    add b
    db $fc
    ret nz

    rst $38
    di
    add b
    rst $28
    add b
    call z, $8880
    nop
    ld bc, $fe98
    ldh [$b0], a
    and h
    ret nz

    rst $20
    jp nz, $c0e6

    db $e3
    jp nz, $bee9

    pop hl
    ld l, d
    ret nz

    ldh [$80], a
    ret nz

    ld [c], a
    nop
    ret nz

    db $e3
    rst $30
    rra
    sub b
    db $eb
    ld a, [c]
    and b
    add sp, -$80
    and b
    pop hl
    nop
    add h
    ld bc, $01b7
    rst $28
    dec a
    ld bc, $8000
    rst $38
    rst $38
    ld a, a
    rst $38
    dec d
    ld [c], a
    sub a
    ld h, c
    ld [hl], c
    ld b, b
    sub e
    ld h, b
    ld l, [hl]
    ldh [$97], a
    ld h, b
    ld [hl], b
    rst $38
    ld a, b
    add a
    ld h, b
    ld sp, hl
    ld [hl], b
    add e
    ld h, b
    nop
    add b
    ret nz

    jr nz, @-$1e

    dec e
    ldh a, [rIE]
    dec e
    ldh a, [$f7]
    ldh a, [rNR23]
    ldh a, [rIE]
    rst $38
    ld bc, $d0df
    db $ec
    ld h, b
    ld h, b
    add d
    add c
    db $fc
    ldh a, [rBCPS]
    db $e3
    ld d, d
    ld h, a
    jr z, jr_075_53e9

    db $fc
    ld a, b
    ld [c], a
    cp $e0
    cp h
    add b
    rst $18
    add b
    ldh [$80], a
    di
    db $ed
    add b
    jr jr_075_53fb

    ld l, b
    ld h, l
    inc sp
    ld bc, $0113
    ld a, l
    dec de
    cp $e0
    ccf
    ld bc, $01fb
    rlca
    ld e, d
    ldh [$1f], a
    db $ed
    add b
    rst $30
    add b
    ld hl, sp-$62
    add sp, $48
    ld h, d
    cp $48
    ld [bc], a
    ld h, b
    ld l, h
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
    rst $38
    nop
    cp b
    nop
    ld [hl], h
    nop
    db $f4
    nop
    db $e4
    rst $38

jr_075_53e9:
    nop
    ld bc, $0601
    rlca
    ld hl, sp+$1f
    ldh [$f7], a
    ccf
    ret nz

    ld a, a
    jp nz, Jump_000_07e0

    ld hl, sp+$3f
    ret nz

jr_075_53fb:
    xor $cb
    ld [c], a
    ld [$18ff], sp
    jp nz, $80e3

    ld a, a
    ret nz

    rst $38
    ccf
    ldh [$1f], a
    db $f4
    dec bc
    cp $05
    rst $38
    ld a, a
    add e
    nop
    add a
    nop
    rst $00
    nop
    db $e3
    cp [hl]
    ldh [rDIV], a
    xor b
    db $e3
    ret nz

    db $e3
    nop
    adc [hl]
    ldh [$98], a
    db $ec
    adc d
    ld [c], a
    jp c, Jump_075_7ce5

    push hl
    rst $38
    inc b
    nop
    ret nz

    ld a, a
    add b
    rst $38
    add c
    rst $38
    rst $38
    ld [c], a
    ld a, a
    ret nz

    ld a, a
    ldh [$3f], a
    ldh [$3f], a
    rst $38
    pop af
    rra
    inc a
    rst $38
    db $76
    rst $38
    push hl
    rst $38
    rst $38

jr_075_5445:
    ld h, e
    rst $38
    ld a, $ff
    ccf
    pop af
    rst $38
    xor $ff
    ccf
    rst $38
    sub e
    rst $38
    xor d
    rst $38
    ld a, [hl+]
    rst $38
    rst $30
    ld l, d
    rst $38

jr_075_5459:
    db $fc
    add h
    ldh [$80], a
    rst $38
    ret nz

    ld a, a
    db $fc
    add [hl]
    pop hl
    add h
    ldh [$fe], a
    rra
    or $1f
    cp $3f
    sub a

jr_075_546c:
    db $ec
    ccf
    db $e4
    ld [hl-], a
    db $ec
    rlca

jr_075_5472:
    jr c, jr_075_5459

    ld l, b
    pop hl
    rst $38
    db $fc
    and h
    ldh [$08], a
    push hl
    ld [hl], h
    nop
    db $fc
    jr c, jr_075_5445

    db $fc
    add e
    ld [bc], a
    cp $6a
    db $ed
    ret nc

    jp hl


    jr c, jr_075_546c

    ret nc

    rst $20
    jr c, jr_075_5472

    pop af
    rst $38
    rra
    ld sp, hl
    rrca
    ld hl, sp+$0f
    inc c
    rrca
    or $ff
    rlca
    dec b
    rlca
    rlca
    ld b, $67
    inc b
    rlca
    rst $28
    rst $38
    inc sp
    rst $38
    adc c
    db $76
    pop hl
    rst $38
    ldh [$3f], a
    rst $38
    rst $18
    ld a, a
    ret


    ld a, a
    jp $c1ff


    rst $38
    rst $38
    adc b
    rst $38
    inc c
    rst $38
    rra
    di
    ld a, h
    rst $20
    rst $08
    ld hl, sp-$71
    cp $1f
    scf
    ldh [$fe], a
    ldh [$f8], a
    add b
    rst $38
    ld h, l
    ret nz

    inc l
    ldh [rNR32], a
    ldh a, [rNR23]
    ldh a, [$5d]
    ld hl, sp-$3e
    ldh [$fc], a
    rrca
    ld [$e0bc], sp
    ld [$e0fa], sp
    ei
    ld h, h
    rlca
    add e
    pop bc
    ld bc, $02ff
    rst $38
    adc h
    rst $38
    rst $38
    ld a, b
    rst $38
    add hl, de
    rst $38
    ld a, [bc]
    rst $38
    ld [de], a
    ccf
    cp $f9
    rst $38
    ld b, $ff
    inc bc
    db $ec
    ldh [$a0], a
    pop bc
    ld sp, hl
    inc b
    ld d, d
    pop bc
    and d
    ret nz

    ld a, b
    ret nz

    push hl
    ret nz

    call z, $c09f
    db $ec
    ldh [$b8], a
    ldh [$d8], a
    push bc
    ld b, b
    jp $f565


    ld bc, $c098
    inc bc
    ld a, $c4
    ld b, b
    rst $38
    and b
    rst $38
    ld d, l
    db $10
    sbc b
    ret nz

    ldh [rBCPD], a
    ret nz

    inc b
    ld a, [de]
    ret nz

    inc bc
    pop bc
    ldh [$fd], a
    ld [bc], a
    sbc b
    call nz, $e540
    and b
    db $fc
    cp b
    db $fc
    ld d, a
    inc b
    ld hl, sp+$08
    ret nz

    db $eb
    ld h, h
    ld a, [hl]
    rst $00
    inc bc
    ld c, e
    ldh [$87], a
    db $10
    rst $38
    add b
    ld e, b
    add $96
    db $e4
    ld e, b
    push bc
    ldh a, [$a3]
    ld hl, sp-$01
    ld b, b
    ld [hl], a
    inc b
    rst $30
    inc b
    rst $20
    inc b
    rlca
    ld h, a
    ld b, $07
    inc b
    ld h, e
    ldh [$a0], a
    ldh [$f7], a
    ld a, $fb
    and b
    ld [$e3c0], a
    nop
    sub b
    pop hl
    ldh a, [$da]
    and b
    db $e4
    ccf
    push hl
    rst $38
    ccf
    ld [$f23f], a
    rst $38
    ld_long a, $ff0f
    ei
    rlca
    dec bc
    rrca
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    inc b
    rst $38
    db $fc
    rlca
    db $fc
    ld c, a
    db $fc
    ld b, a
    db $fc
    ld [hl], h
    rst $38
    rlca
    or $03
    push hl
    ld bc, $0101
    dec b
    ld sp, hl
    ld bc, $e009
    db $fc
    ldh [$9c], a
    rst $38
    ld a, h
    rst $28
    ld a, b
    rst $18
    rst $18
    ld hl, sp-$61
    rst $38
    adc a
    ld a, b
    and e
    inc bc
    rst $38
    rst $38
    rlca
    rst $38
    rra
    db $fd
    rst $38
    db $e3
    db $fd
    rrca
    cp l
    ld sp, hl
    sub [hl]
    ret nz

    ld sp, hl
    rrca
    inc sp
    ldh a, [$15]
    ret nz

    add d
    sbc [hl]
    db $dd
    ret nz

    dec b
    rst $38
    ld d, a
    db $fd
    cp $e0
    inc e
    ldh [rLCDC], a
    ld b, d
    ld a, $a0
    db $10
    sbc l
    ret nz

    ld [$9ae0], sp
    and b
    jp Jump_000_02c1


    pop de
    jp nz, $e4fc

    ret nz

    jr z, @-$5e

    db $10
    rst $38
    ld c, b
    rst $38
    xor b
    di
    db $fd
    db $10
    add b
    and l
    ld [hl], l
    ld bc, $07f7
    rst $28
    ld [$07af], sp
    inc b
    rlca
    ld [bc], a
    or e
    ret nz

    dec b
    sub a
    ret nz

    ld b, b
    ei
    rst $38
    ld [hl], b
    ld b, a
    and b
    db $10
    rst $38
    jr nz, @+$01

    sub b
    ld c, a
    rst $38
    ld d, e
    ld hl, sp+$20
    add c
    jp nz, $81fe

    inc b
    inc sp
    and b
    rst $38
    ldh [rDIV], a
    nop
    db $e3
    and b
    rst $30
    db $10
    rst $20
    rst $20
    and b
    db $e3
    ld b, b
    ld h, [hl]
    and [hl]
    and d
    pop hl
    ld [bc], a
    rst $38
    inc bc
    cp l
    cp $67
    ldh [$fd], a
    rlca
    ei
    rrca

jr_075_5629:
    xor [hl]
    call nz, $fec0
    cp b
    add b
    rst $38

jr_075_5630:
    rst $18
    rst $38

jr_075_5632:
    db $e3
    rst $38
    ld_long a, $ff0b
    rst $30
    ld de, $31f5
    db $f4

jr_075_563c:
    jr nc, jr_075_5632

    ldh a, [$7f]
    db $f4
    ldh a, [$f5]
    pop af
    di
    ld a, [c]
    rlca
    jr jr_075_5629

    rst $28
    rlca
    db $fc
    add a
    db $fc
    ld e, a
    and b
    and h
    rst $38
    sbc h
    add sp, -$09
    and b
    jr jr_075_563c

    sbc d
    add [hl]
    ret nz

    ld d, d
    ld [c], a
    ld bc, $83fe
    rst $28
    cp $83
    rst $38
    db $e3
    reti


    ldh [rIF], a
    ld a, [$e71f]
    ld hl, sp-$01
    ld e, a
    or c
    pop hl
    ld h, l
    add b
    rra
    rst $38
    ld sp, hl
    ld a, e
    cp a
    ld b, c
    nop
    and b
    pop bc
    rst $38
    db $e3
    cp $c2
    ldh [$fd], a
    add b
    ld h, h
    add h
    ld bc, $03fe
    db $fc
    rlca
    rst $38
    call c, $e0a5
    jr nc, jr_075_5630

    db $fc
    db $fc
    add e
    di
    ret nz

    add hl, de
    rst $38
    xor l
    pop hl
    jp nc, $ffe0

    cp $2c
    and c
    rst $38
    or $80
    db $fc
    ld a, d
    cp [hl]
    ld [c], a
    rst $18
    push af
    ldh [$7f], a
    ret nz

    cp a
    ldh [$c3], a
    add d
    ld h, c
    ldh [rOCPD], a
    and b
    ld d, a
    add e
    cp [hl]
    add sp, $28
    add c
    db $fc
    ld a, h
    cp [hl]
    rst $20
    rst $00
    di
    nop
    ld a, a
    cp [hl]
    ld [$8332], a
    cp [hl]
    rst $20
    ei
    rrca
    rst $18
    rst $30
    rra
    rst $30
    rra
    rla
    db $fc
    ldh [$0b], a
    rrca
    cp a
    dec b
    rlca
    ld h, l
    rlca
    rst $30
    rst $38
    cp $e3
    ei
    rst $30
    rst $38
    ei
    rst $30
    cp $e0
    rst $38
    rst $30
    ld a, [c]
    rst $38
    ld [hl], a
    db $f4
    rst $38
    push af
    cp $e0
    ld a, [c]
    rst $38
    ld hl, sp-$02
    ldh [$fd], a
    db $fc
    ld [hl], d
    jp nz, $ff83

    ld b, c
    rst $38
    ld d, l
    rst $38
    rst $18
    sub l
    cp $a6
    ld hl, sp-$28
    ld b, d
    ld [c], a
    rlca
    add hl, bc
    ld a, [$e0ba]
    rla
    cp d
    ldh [$7f], a
    rra
    ei
    rst $38
    cp h
    db $fc
    rst $10
    ld [c], a
    push de
    pop hl
    cp $f3
    rst $38
    pop hl
    rst $08
    rst $38
    cp a
    cpl
    rst $38
    rla
    rst $38
    rrca
    cp $c8
    jp Jump_075_658f


    ld hl, sp-$70
    xor e
    cp b
    sub d
    ld h, b
    di
    add c
    dec b
    ld bc, $6550
    ccf
    cp $fe
    ld a, a
    rst $38
    cp a
    cp $18
    ldh [$80], a
    jp nz, $bf91

    ld a, h
    ret nz

    db $f4
    pop hl
    ld a, [$bfe3]
    ldh a, [$e0]
    push af
    jp nz, $bf82

    rst $38
    ld de, $a5ff
    rst $38
    xor c
    ld e, e
    ldh [$fd], a
    add sp, -$4f
    and b
    cp [hl]
    ldh [$c0], a
    ldh [rSB], a
    ret nz

    push hl
    rst $38
    rst $38
    ld a, a
    add c
    cp $c8
    pop hl
    adc l
    jp $e1c0


    cp [hl]
    jp hl


    scf
    add b
    ret nz

    ld_long $ff79, a
    rrca
    rst $38
    rra
    pop hl
    ccf
    nop
    ccf
    ld b, b
    ld h, a
    ld a, a
    rst $38
    ld a, a
    dec bc
    pop bc
    ld [$ffe0], sp
    or $82
    ld h, b
    adc c
    ld b, h
    or a
    ld b, b
    ld h, d
    add b
    rst $38
    add hl, sp
    pop hl
    add hl, de
    and b
    ld h, c
    and b
    rst $38
    jp c, $8038

    rst $38
    nop
    ld h, l
    add b
    ld hl, sp+$44
    jp Jump_075_7fff


    ld d, [hl]
    ret nz

    ld [c], a
    ld b, b
    ld a, a
    ret nz

    ld [c], a
    ld a, a
    add d
    ld b, b
    ldh a, [$da]
    pop bc
    rst $38
    sbc a
    db $fc
    ld a, a
    ld hl, sp-$71
    ld hl, sp+$7f
    ldh a, [$f2]
    ld [hl], d
    ld b, b
    ld [hl], b
    add d
    ld c, e
    ret nz

    ld c, h
    rst $38
    ld [hl], l
    ld bc, $01f5
    ld bc, $84d0
    or b
    db $e3
    cp $e2
    inc d
    pop hl
    inc d
    ret nz

    or b
    ldh [$ad], a
    pop hl
    adc $fd
    jp hl


    rst $30
    rst $38
    pop af
    and $a0
    cp $e1
    jp Jump_000_20fe


    sub l
    ret nz

    sbc $c0
    ret nc

    db $ed
    adc $eb
    ret nc

    jp hl


    cp a
    ret nc

    ldh [$b3], a
    and d

jr_075_57ee:
    jr nc, jr_075_57ee

    or $2a
    ldh [$30], a
    and l
    ld b, b
    add d
    dec b
    ld bc, $4025
    db $fd
    ld [$e5ff], a
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
    scf
    di
    ld bc, $1407
    add b
    ld h, l
    ld bc, $e538
    ldh a, [$2c]
    ld bc, $00ff
    nop
    nop
    ld [hl], b
    ld e, b
    db $e4
    ld e, b
    ld h, b
    ld e, c
    call nc, $0059
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and $59
    ld c, a
    ld e, d
    cp a
    ld e, d
    ld l, $5b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld e, e
    inc de
    ld e, h
    add e
    ld e, h
    db $f4
    ld e, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld e, l
    jp nc, Jump_000_3f5d

    ld e, [hl]
    xor e
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp l
    ld e, [hl]
    rra
    ld e, a
    ld a, [hl]
    ld e, a
    jp c, Jump_000_005f

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    dec l
    dec l
    dec c
    rst $38
    db $e4
    or $fc
    reti


    push hl
    ret c

    rst $28
    cp [hl]
    ldh [$f7], a
    ld l, l
    ld l, l
    ld c, l
    cp c
    pop hl
    ld c, l
    ld c, l
    ld c, l
    ld l, a
    rst $38
    ld l, [hl]
    nop
    nop
    ld bc, $0302
    inc bc
    ld l, h
    rst $38
    ld l, l
    ld [hl], b
    ld [hl], d
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    rst $38
    ld [$7147], sp
    ld [hl], b
    ld [$1716], sp
    jr @+$01

    add hl, de
    ld a, [de]
    ld [hl], l
    add hl, bc
    ld [hl], c
    ld a, c
    ld [$ff25], sp
    ld h, $27
    jr z, jr_075_58da

    ld b, a
    add hl, bc
    ld a, b
    ld [hl], c
    rst $38
    ld b, e
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_075_58c6

    ld d, [hl]
    rst $38
    ld [hl], b
    ld [hl], h
    add hl, bc
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]

jr_075_58c6:
    ld b, a
    rst $38
    ld d, [hl]
    ld [$7073], sp
    ld [hl], a
    ld d, d
    ld d, e
    ld d, h
    rst $38
    ld d, l
    ld d, [hl]
    ld d, a
    db $76
    ld [hl], c
    ld l, a
    inc bc
    inc bc
    ld a, a

jr_075_58da:
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    nop
    nop
    ld l, l
    nop
    nop
    nop
    rla
    dec l
    dec l
    dec c
    rst $38
    db $e4
    dec l
    push af
    and $ec
    db $e4
    and $e0
    ld [hl], b
    ld [c], a
    jp hl


    jp c, $e2e4

    rst $28
    cp [hl]
    ldh [$6d], a
    ld l, l
    ld c, l
    cp c
    pop hl

Call_075_58ff:
    rst $38
    ld c, l
    ld c, l
    ld c, l
    ld l, l
    ld l, h
    inc bc
    inc b
    dec b
    rst $38
    nop
    nop
    nop
    ld l, [hl]
    ld l, a
    ld [hl], c
    ld b, a
    inc c
    rst $38
    dec c
    ld c, $0f
    db $10
    add hl, bc
    ld [hl], d
    ld [hl], b
    ld [hl], c
    rst $38
    add hl, bc
    dec de
    inc e
    dec e
    ld e, $1f
    ld d, $08
    rst $38
    ld [hl], b
    ld a, b
    add hl, bc
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $ff
    ld [hl], d
    ld [$7079], sp
    ld d, [hl]
    add hl, sp
    ld a, [hl-]
    dec sp
    rst $38
    inc a
    dec a
    ld [$7143], sp
    ld [hl], e
    ld [$ff48], sp
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld b, e
    add hl, bc
    ld [hl], h
    ld [hl], c
    rst $38
    db $76
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld d, d
    ld [hl], a
    rst $38
    ld [hl], b
    ld l, l
    nop
    nop
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    rlca
    inc bc
    inc bc
    ld l, a
    nop
    nop
    nop
    rlca
    dec l
    dec l
    dec c
    rst $38
    db $e4
    or $fc
    reti


    push hl
    ret c

    rst $28
    cp [hl]
    ldh [$f7], a
    ld l, l
    ld l, l
    ld c, l
    cp c
    pop hl
    ld c, l
    ld c, l
    ld c, l
    ld l, a
    rst $38
    ld l, [hl]
    nop
    ld b, $07
    inc bc
    inc bc
    inc bc
    ld l, h
    rst $38
    ld l, l
    ld [hl], b
    ld [hl], d
    ld de, $1312
    inc d
    dec d
    rst $38
    ld [$7147], sp
    ld [hl], b
    ld [$2120], sp
    ld [hl+], a
    rst $38
    inc hl
    inc h
    ld [hl], l
    add hl, bc
    ld [hl], c
    ld a, c
    ld [$ff2f], sp
    jr nc, jr_075_59d0

    ld [hl-], a
    inc sp
    ld b, a
    add hl, bc
    ld a, b
    ld [hl], c
    rst $38
    ld b, e
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    add hl, bc
    ld d, [hl]
    rst $38
    ld [hl], b
    ld [hl], h
    add hl, bc
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    rst $38
    ld d, [hl]
    ld [$7073], sp
    ld [hl], a
    ld d, d
    ld e, h
    ld e, l
    rst $38
    ld e, [hl]
    ld e, a
    ld d, a
    db $76
    ld [hl], c
    ld l, a
    inc bc
    inc bc
    ld a, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    nop
    nop

jr_075_59d0:
    ld l, l
    nop
    nop
    nop
    ld de, $ff0d
    rst $38
    rst $38
    rst $38
    jp hl


    add sp, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, $00
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
    rst $28
    pop hl
    ret nz

    rst $38
    pop hl
    rst $20
    db $e3
    or $e5
    db $eb
    push hl
    or $e9
    ld [c], a
    ldh a, [rBCPD]
    nop
    cp $ff
    db $e4
    ld l, c
    ld l, h
    rlca
    rlca
    rlca
    ld [$fe09], sp
    ei
    ldh [$6c], a
    ld l, l
    rla
    rla
    inc d
    dec d
    ld d, $ff
    rla
    rla
    rla
    ld l, l
    ld l, [hl]
    rlca
    rlca
    inc hl
    rst $38
    inc h
    dec h
    ld h, $07
    rlca
    ld l, [hl]
    ld l, d
    rla
    rst $38
    rla
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $17
    rla
    ld l, d
    sbc $d8
    ldh [rSCX], a
    ld b, h
    ld b, l
    ld b, [hl]
    ret c

    db $e3
    ld c, a
    ld d, b
    ei
    ld d, c
    ld d, d
    ret c

    ldh [$6f], a
    ld [hl], b
    ld [hl], b
    ld e, h
    ld e, l
    rra
    ld e, [hl]
    ld e, a
    ld [hl], b
    ld [hl], b
    ld l, a
    nop
    nop
    nop
    cpl
    dec c
    dec c
    dec l
    dec c
    db $fc
    pop hl
    dec l
    ld sp, hl
    ldh [$f6], a
    and $80
    db $ed
    pop hl
    db $eb
    ld [c], a
    or $e8
    db $eb
    push hl
    or $e9
    sub $e3
    ld [c], a
    ld [$df69], a
    nop
    nop
    nop
    ld bc, $fb02
    ldh [rBCPD], a
    ld l, h
    rst $38
    rlca
    rlca
    ld a, [bc]
    dec bc
    inc c
    rlca
    rlca
    rlca
    rst $38
    ld l, h
    ld l, l
    rla
    rla
    jr jr_075_5a9e

    ld a, [de]
    rla
    rst $38
    rla
    rla
    ld l, l
    ld l, [hl]
    rlca
    rlca
    daa
    jr z, @+$01

    add hl, hl
    ld a, [hl+]
    rlca
    rlca
    ld l, [hl]
    ld l, d
    rla
    rla
    ld a, a
    scf
    jr c, jr_075_5ad6

    ld a, [hl-]

jr_075_5a9e:
    rla
    rla
    ld l, d
    ret c

    ldh [$ef], a
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ret c

    db $e3
    rla
    ld d, e
    ld d, h
    db $fd
    ld d, l
    ret c

    ldh [$6f], a
    ld [hl], b
    ld [hl], b
    ld h, b
    ld h, c
    ld e, [hl]
    rrca
    ld h, d
    ld [hl], b
    ld [hl], b
    ld l, a
    nop
    nop
    nop
    cpl

Call_075_5ac0:
    dec c
    dec c
    dec l
    dec c
    db $fc
    pop hl
    dec l
    ld sp, hl
    ldh [$f6], a
    and $80
    db $ed
    pop hl
    db $eb
    ld [c], a
    or $e8
    db $eb
    push hl
    ret c

    db $eb

jr_075_5ad6:
    jp $e2e4


    rst $20
    ld l, c
    rst $18
    nop
    nop
    nop
    inc bc
    inc b
    ei
    ldh [rBCPD], a
    ld l, h
    rst $38
    rlca
    rlca
    dec c
    ld c, $0f
    rlca
    rlca
    rlca
    rst $38
    ld l, h
    ld l, l
    rla
    rla
    dec de
    inc e
    dec e
    ld e, $ff
    rla
    rla
    ld l, l
    ld l, [hl]
    rlca
    rlca
    dec hl
    inc l
    rst $38
    dec l
    ld l, $07
    rlca
    ld l, [hl]
    ld l, d
    rla
    rla
    ld a, a
    dec sp
    inc a
    dec a
    ld a, $17
    rla
    ld l, d
    ret c

    ldh [$f7], a
    rlca
    ld c, e
    ld c, h
    ret c

    db $e4
    rla
    ld d, [hl]
    ld d, a
    ld e, b
    cp $d8
    ldh [$6f], a
    ld [hl], b
    ld [hl], b
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    rlca
    ld [hl], b
    ld [hl], b
    ld l, a
    nop
    nop
    nop
    cpl
    dec c
    dec c
    dec l
    dec c
    db $fc
    pop hl
    dec l
    ld sp, hl
    ldh [$f6], a
    pop hl
    nop
    ldh a, [$e0]
    di
    ldh [$f7], a
    db $e3
    cp $e2
    or $e5
    ld [c], a
    rst $20
    adc $e7
    sub $e3
    ld a, [hl]
    ld [c], a
    ld [$0069], a
    nop
    nop
    dec b
    ld b, $fb
    ldh [rIE], a
    ld l, c
    ld l, h
    rlca
    rlca
    db $10
    ld de, $1312
    rst $38
    rlca
    rlca
    ld l, h
    ld l, l
    rla
    rla
    rra
    jr nz, @+$01

    ld hl, $1722
    rla
    ld l, l
    ld l, [hl]
    rlca
    rlca
    rst $38
    cpl
    jr nc, jr_075_5ba6

    ld [hl-], a
    rlca
    rlca
    ld l, [hl]
    ld l, d
    rst $38
    rla
    rla
    ccf
    ld b, b
    ld b, c
    ld b, d
    rla
    rla
    sbc l
    ld l, d
    ret c

    ldh [rTAC], a
    ld c, l
    ld c, [hl]
    ei
    ldh [$d8], a
    pop hl
    rla
    rst $30
    ld e, c
    ld e, d
    ld e, e
    ret c

    ldh [$6f], a
    ld [hl], b
    ld [hl], b
    ld h, e
    ccf
    ld h, a
    ld l, b
    ld h, [hl]
    ld [hl], b
    ld [hl], b
    ld l, a
    nop
    nop
    nop
    adc a
    dec c
    dec c

jr_075_5ba6:
    dec l
    dec c
    db $fc
    ld [c], a
    ld sp, hl
    pop hl
    db $fd
    pop hl
    dec l
    pop bc
    dec l
    or $e5
    push af
    ldh [$e9], a
    push hl
    db $ec
    and $e2
    db $f4
    ld c, l
    ld c, l
    cp $c4
    db $e3
    ld c, l
    ld l, l
    ld h, e
    ld h, h
    nop
    nop
    ld bc, $02ff
    nop
    nop
    ld h, h
    ld h, e
    ld h, l
    ld h, [hl]
    ld [$05ff], sp
    ld b, $07
    ld [$6608], sp
    ld h, l
    ld l, b
    rst $38
    ld l, c
    ld l, d
    dec c
    ld c, $0f
    db $10
    ld l, d
    ld l, c
    rst $38
    ld l, b
    ld l, e
    ld l, h
    ld d, b
    jr jr_075_5c02

    ld a, [de]
    dec de
    rst $30
    ld d, b
    ld l, h
    ld l, e
    ld [c], a
    ldh [$28], a
    add hl, hl
    ld a, [hl+]
    dec hl
    sbc $e2
    db $e3
    jr c, jr_075_5c33

    ld a, [hl-]
    dec sp
    ld [c], a
    db $e3
    ld c, b
    ld c, c
    ei
    ld c, d

jr_075_5c02:
    ld c, e
    ld [c], a
    ldh [$63], a
    ld h, h
    ld l, l
    ld d, a
    ld e, b
    rra
    ld e, c
    ld e, d
    ld l, l
    ld h, h
    ld h, e
    nop
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
    pop bc
    dec l
    or $e5
    push af
    ldh [$e9], a
    push hl
    db $ec
    and $e2
    db $f4
    ld c, l
    ld c, l
    cp $c4
    db $e3
    ld c, l
    ld l, l
    ld h, e

jr_075_5c33:
    ld h, h
    nop
    nop
    ld bc, $02ff
    nop
    nop
    ld h, h
    ld h, e
    ld h, l
    ld h, [hl]
    ld [$05ff], sp
    ld b, $07
    ld [$6608], sp
    ld h, l
    ld l, b
    rst $38
    ld l, c
    ld l, d
    dec c
    ld c, $0f
    db $10
    ld l, d
    ld l, c
    rst $38
    ld l, b
    ld l, e
    ld l, h
    ld d, b
    inc e
    dec e
    ld e, $1f
    rst $30
    ld d, b
    ld l, h
    ld l, e
    ld [c], a
    ldh [$2c], a
    dec l
    ld l, $2f
    sbc $e2
    db $e3
    inc a
    dec a
    ld a, $3f
    ld [c], a
    db $e3
    ld c, h
    ld c, l
    ei
    ld c, [hl]
    ld c, a
    ld [c], a
    ldh [$63], a
    ld h, h
    ld l, l
    ld e, e
    ld e, h
    rra
    ld e, l
    ld e, [hl]
    ld l, l
    ld h, h
    ld h, e
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
    add c
    dec l
    rst $28
    pop hl
    db $fd
    ld [c], a
    or $e1
    di
    db $e3
    db $ec
    and $e2
    db $f4
    ld c, l
    db $fd
    ld c, l
    rst $08
    db $e3
    ld c, l
    ld l, l
    ld h, e
    ld h, h
    nop
    nop
    rst $38
    inc bc
    inc b
    nop
    nop
    ld h, h
    ld h, e
    ld h, l
    ld h, [hl]
    rst $38
    ld [$0908], sp
    ld a, [bc]
    ld [$6608], sp
    ld h, l
    rst $38
    ld l, b
    ld l, c
    ld l, d
    ld de, $1312
    inc d
    ld l, d
    rst $38
    ld l, c
    ld l, b
    ld l, e
    ld l, h
    ld d, b
    jr nz, jr_075_5ceb

    ld [hl+], a
    rst $28
    inc hl
    ld d, b
    ld l, h
    ld l, e
    ld [c], a
    ldh [$30], a
    ld sp, $bd32
    inc sp
    ld [c], a
    db $e3
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld [c], a
    db $e3
    ld d, b

Call_075_5ce0:
    rst $30
    ld d, c
    ld d, d
    ld d, e
    ld [c], a
    ldh [$63], a
    ld h, h
    ld l, l
    ld e, a
    ccf

jr_075_5ceb:
    ld h, b
    ld h, c
    ld h, d
    ld l, l
    ld h, h
    ld h, e
    nop
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
    pop bc
    dec l
    or $e5
    push af
    ldh [$e9], a
    push hl
    db $ec
    and $e2
    db $f4
    ld c, l
    ld c, l
    cp $c4
    db $e3
    ld c, l
    ld l, l
    ld h, e
    ld h, h
    nop
    nop
    ld bc, $02ff
    nop
    nop
    ld h, h
    ld h, e
    ld h, l
    ld h, [hl]
    ld [$05ff], sp
    dec bc
    inc c
    ld [$6608], sp
    ld h, l
    ld l, b
    rst $38
    ld l, c
    ld l, d
    dec c
    dec d
    ld d, $17
    ld l, d
    ld l, c
    rst $38
    ld l, b
    ld l, e
    ld l, h
    ld d, b
    inc h
    dec h
    ld h, $27
    rst $30
    ld d, b
    ld l, h
    ld l, e
    ld [c], a
    ldh [$34], a
    dec [hl]
    ld [hl], $37
    sbc $e2
    db $e3
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld [c], a
    db $e3
    ld d, b
    ld d, h
    ei
    ld d, l
    ld d, [hl]
    ld [c], a
    ldh [$63], a
    ld h, h
    ld l, l
    ld e, a
    ld h, b
    rra
    ld h, c
    ld h, d
    ld l, l
    ld h, h
    ld h, e
    nop
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
    dec l
    or $e5
    and $e5
    db $eb
    ld [c], a
    ld [c], a
    ei
    ld c, l
    ld c, l
    call nz, $ffe3
    ld c, l
    ld l, l
    ld c, e
    inc b
    nop
    nop
    ld bc, $ff02
    nop
    nop
    inc b
    ld c, e
    ld c, h
    ld c, l
    add hl, bc
    ld b, $ff
    rlca
    ld [$0909], sp
    ld c, l
    ld c, h
    ld c, [hl]
    ld c, a
    rst $38
    rla
    db $10
    ld de, $1312
    rla
    ld c, a
    ld d, b
    rst $38
    ld d, c
    ld d, d
    ld b, b
    dec de
    inc e
    dec e
    ld e, $40
    ld a, e
    ld d, d
    ld d, c
    ld [c], a
    ldh [rNR52], a
    daa
    jr z, jr_075_5ddd

    ld [c], a
    db $e3
    rst $28
    ld sp, $3332
    inc [hl]
    ld [c], a
    db $e3
    inc a
    dec a
    ld a, $fd
    ccf
    ld [c], a
    ldh [rWX], a
    inc b
    ld d, e
    ld b, [hl]
    ld b, a
    ld c, b
    rrca
    ld c, c
    ld d, e
    inc b
    ld c, e
    nop
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

jr_075_5ddd:
    dec l
    ld h, c
    dec l
    or $e5
    and $e5
    db $eb
    ld [c], a
    ld [c], a
    ei
    ld c, l
    ld c, l
    call nz, Call_075_7fe3
    ld c, l
    ld l, l
    ld c, e
    inc b
    nop
    nop
    inc bc
    db $fc
    ldh [rIE], a
    inc b
    ld c, e
    ld c, h
    ld c, l
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    rst $38
    add hl, bc
    add hl, bc
    ld c, l
    ld c, h
    ld c, [hl]
    ld c, a
    rla
    inc d
    rst $38
    dec d
    ld d, $17
    rla
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    rst $38
    ld b, b
    rra
    jr nz, jr_075_5e37

    ld [hl+], a
    ld b, b
    ld d, d
    ld d, c
    sbc $e2
    ldh [$2a], a
    dec hl
    inc l
    dec l
    ld [c], a
    db $e3
    dec [hl]
    ld [hl], $7b
    scf
    jr c, @-$1c

    db $e3
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld [c], a
    ldh [rIE], a
    ld c, e
    inc b
    ld d, e
    ld b, [hl]
    ld c, d
    ld c, b

jr_075_5e37:
    ld c, c
    ld d, e
    inc bc
    inc b
    ld c, e
    nop
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
    dec l
    or $e5
    and $e5
    db $eb
    ld [c], a
    ld [c], a
    ei
    ld c, l
    ld c, l
    call nz, Call_075_7fe3
    ld c, l
    ld l, l
    ld c, e
    inc b
    nop
    nop
    inc b
    db $fc
    pop hl
    rst $38
    ld c, e
    ld c, h
    ld c, l
    add hl, bc
    dec c
    ld c, $0f
    add hl, bc
    rst $38
    add hl, bc
    ld c, l
    ld c, h
    ld c, [hl]
    ld c, a
    rla
    jr jr_075_5e8e

    rst $38
    ld a, [de]
    rla
    rla
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld b, b
    ld a, a
    inc hl
    inc h
    dec h
    ld e, $40
    ld d, d
    ld d, c
    ld [c], a
    ldh [$ef], a
    ld l, $2f
    jr z, jr_075_5ebd

    ld [c], a

jr_075_5e8e:
    db $e3
    add hl, sp
    ld a, [hl-]
    inc sp
    cp l
    dec sp
    ld [c], a
    db $e3
    ld b, b
    ld b, h
    ld a, $45
    ld [c], a
    ldh [rWX], a
    rst $38
    inc b
    ld d, e
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld d, e
    inc b
    ld bc, $004b
    nop
    nop
    ld de, $ff0d
    rst $38
    rst $38
    rst $38
    jp hl


    add sp, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, $00
    nop
    nop

jr_075_5ebd:
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
    ld h, d
    ld bc, $0002
    ld bc, $fcfe
    pop hl
    ld h, d
    ld h, e
    add hl, bc
    ld b, $03
    inc b
    dec b
    rst $38
    ld b, $07
    ld [$6664], sp
    inc de
    ld de, $ff0a
    dec bc
    inc c
    dec c
    ld de, $6712
    ld h, e
    add hl, bc
    rst $38
    ld c, d
    inc d
    dec d
    ld d, $17
    jr nz, jr_075_5f01

    ld h, h
    sbc $e2
    ldh [rNR50], a
    dec h
    ld h, $27

jr_075_5f01:
    ld [c], a
    db $e3
    inc sp
    inc [hl]
    ld a, e
    dec [hl]
    ld [hl], $e2
    db $e3
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld [c], a
    ldh [rIE], a
    ld h, d
    ld bc, $535a
    ld d, h
    ld d, l
    ld d, [hl]
    ld l, b
    inc bc
    ld bc, $0062
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
    ld h, d
    ld bc, $0002
    ld bc, $fc7e
    pop hl
    ld h, d
    ld h, e
    add hl, bc
    ld b, $07
    ld [$e1fc], sp
    rst $38
    ld h, h
    ld h, [hl]
    inc de
    ld de, $0f0e
    db $10
    ld de, $11ff
    ld [de], a
    ld h, a
    ld h, e
    add hl, bc
    ld c, d
    jr jr_075_5f6d

    rst $18
    ld a, [de]
    dec de
    jr nz, jr_075_5f61

    ld h, h
    ld [c], a
    ldh [$28], a
    add hl, hl
    ld a, e
    ld a, [hl+]
    dec hl

jr_075_5f61:
    ld [c], a
    db $e3
    scf
    jr c, @+$3b

    ld a, [hl-]
    ld [c], a
    db $e3
    rst $28
    ld b, a
    ld c, b
    ld c, c

jr_075_5f6d:
    ld c, d
    ld [c], a
    ldh [$62], a
    ld bc, $7f5a
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld l, b
    ld bc, $0062
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
    ld h, d
    ld bc, $0002
    ld bc, $fc7e
    pop hl
    ld h, d
    ld h, e
    add hl, bc
    ld b, $07
    ld [$e1fc], sp
    cp a
    ld h, h
    ld h, [hl]
    inc de
    ld de, $1211
    db $fc
    pop hl
    ld h, a
    rst $38
    ld h, e
    add hl, bc
    ld c, d
    inc e
    dec e
    ld e, $1f
    jr nz, @-$43

    ld [$e264], sp
    pop hl
    inc l
    dec l
    ld l, $e2
    db $e3
    dec sp
    rst $30
    inc a
    dec a
    ld a, $e2
    db $e3
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    cp $e2
    ldh [$62], a
    ld bc, $5b5a
    ld e, h
    ld e, l
    ld e, [hl]
    rlca
    ld l, b
    ld bc, $0062
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
    ld h, d
    ld bc, $0002
    ld bc, $fc7e
    pop hl
    ld h, d
    ld h, e
    add hl, bc
    ld b, $07
    ld [$e1fc], sp
    cp a
    ld h, h
    ld h, [hl]
    inc de
    ld de, $1211
    db $fc
    pop hl
    ld h, a
    rst $38
    ld h, e
    add hl, bc
    ld c, d
    jr nz, jr_075_602e

    ld [hl+], a
    inc hl
    jr nz, jr_075_608c

    ld [$e264], sp
    ldh [$2f], a
    jr nc, jr_075_6049

    ld [hl-], a
    ld [c], a
    db $e3
    rst $28
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld [c], a
    db $e3
    ld c, a
    ld d, b
    ld d, c
    db $fd
    ld d, d
    ld [c], a
    ldh [$62], a
    ld bc, $5b5a
    ld e, a

jr_075_602e:
    ld h, b
    rrca
    ld h, c
    ld l, b
    ld bc, $0062
    nop
    nop
    ld d, b
    ld h, b
    nop
    ld h, l
    ld h, b
    ld l, c
    sub b
    ld l, l
    ld d, b
    ld [hl], d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_075_6049:
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
    cp $e9
    cp $d2
    db $eb
    add b
    add b
    rrca
    nop
    rrca
    nop
    rlca
    jp z, $e0fe

    inc bc
    cp $e0
    ld bc, $e0fe
    jp nc, $ffeb

    nop
    ldh a, [rIE]
    db $ed
    or d
    pop hl
    and b
    jp hl


    add d
    pop hl
    ret nz

    add b
    ldh [$80], a

jr_075_608c:
    rst $38
    ldh a, [$80]
    ld hl, sp-$80
    db $fc
    add b
    cp $80
    db $fd
    rst $38
    cp $ec
    nop
    nop
    add b
    nop
    ret nz

    nop
    rst $38
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    ei
    cp $00
    ldh [$e5], a
    cp a
    add b
    adc a
    add b
    add e

jr_075_60b2:
    ld a, [bc]
    ld b, l
    ldh [$3f], a
    add b
    ldh [$03], a
    and b
    db $ec
    ld c, [hl]
    pop hl
    add sp, -$13
    add d
    db $e4
    jr nz, @+$23

    pop hl
    ld e, b
    ld [c], a
    ld d, b
    pop hl
    ld c, b
    pop hl
    db $10
    ldh [rSB], a
    cp $e9
    jr nc, jr_075_60b2

    ret nz

    ld [$00e1], sp
    pop hl
    ld hl, sp-$3f
    ccf
    pop hl
    ret nc

    ld [$e0d2], a
    db $fd
    ld bc, $f9ff
    ld bc, $01f1
    pop hl
    ld bc, $01c1
    ld d, a
    add c
    ld bc, $6cff
    ldh [$fc], a
    ld h, h
    ldh [$f0], a
    ld e, h
    ldh [$f5], a
    ret nz

    ld d, h
    ldh [rSB], a
    rst $38
    db $e4
    inc bc
    ld bc, $010f

jr_075_6100:
    add hl, hl
    ccf
    and [hl]
    ldh [rIE], a
    push bc
    inc bc
    ret c

    ret nz

    ccf
    or [hl]
    ret nz

    ld hl, sp-$1b
    cp $aa
    jp z, $fc03

    rrca
    ldh a, [$1f]
    ldh [$3f], a
    rst $30
    call nz, $c37f
    adc a
    ld [c], a
    add b
    add b
    ld h, b
    ldh [rIE], a
    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    cp $bf
    jp Jump_000_0707


    jr jr_075_6151

    inc h
    ccf
    ld b, e
    rst $30
    ld a, a
    ld b, b
    ld a, a
    ld [hl], d
    call nz, Call_000_3fc0
    ldh a, [rIF]
    rra
    ld hl, sp-$79
    db $fc
    rlca
    db $fc
    cp [hl]
    db $ed
    adc a
    jp $e7be


    cp $42
    ret z

    ld sp, $4ffe

jr_075_6151:
    db $fc
    ld c, a
    rst $38
    rlca
    rst $38
    ld hl, sp+$1f
    db $e4
    ccf
    jp $c07f


    ld a, a
    rst $38
    ret nz

    rst $38
    ldh [$bf], a
    ld hl, sp-$61
    ret nz

    ret nz

    push af
    jr nc, jr_075_6100

    ldh [$84], a
    sub [hl]
    ldh [rTAC], a
    rst $38
    ld c, $fb
    ei
    ld a, $f3
    ld c, a
    rst $00
    ld [$d408], sp
    call c, $dd24
    db $fc
    ld h, h
    ldh [rTAC], a
    ld hl, sp+$0f
    cp $e1
    db $fc
    rlca
    cp a
    cp $03
    rst $38
    ld bc, $ffc0
    ret z

    db $e3
    ld a, a
    rst $38
    rst $00
    ccf
    ldh [$1f], a
    ld hl, sp+$07
    rst $38
    rlca
    ei
    rst $38
    ld b, $c8
    ld [c], a
    db $fc
    rst $00
    ld hl, sp+$0f
    ldh a, [$7b]
    ccf
    pop bc
    or d
    and b
    ld b, b
    ret nz

    jr nz, @-$1e

    cp $e1
    rst $30
    ld b, b
    ret nz

    add b
    ld b, d
    ret nz

    inc bc
    inc bc
    inc b
    rlca
    adc $fe
    pop hl
    ld [bc], a
    inc bc
    ld bc, $c2f4
    adc d
    db $e3
    rst $38
    add a
    sbc l
    ld a, a
    jp nz, $87e0

    rst $38
    ldh a, [$c0]
    ldh [$8a], a
    pop hl
    cp $fd
    jp $c0fe


    ccf
    jp Jump_000_1fff


    cp $ff
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$61], a
    ldh [$2d], a
    add b
    add [hl]
    and d
    ld bc, $7efe
    ld [$80c3], a
    ldh [$7e], a
    db $eb
    db $fd
    ld b, $7e
    ld [$2ffc], a
    cp $67
    rst $38
    cp l
    rst $38
    rst $38
    db $e4
    rst $38
    or d
    rst $38
    xor [hl]
    rst $38
    jp $fffb


    ld [hl], c
    sub [hl]
    rst $20
    rst $38
    rst $18
    rst $38
    ld d, [hl]
    rst $38
    db $fd
    call z, $e596
    ld e, $fe
    cp $f6
    rst $38
    push de
    rst $38
    rst $38
    ld h, a
    ld l, $fe
    ld l, c
    rst $38
    cp e
    cp a
    rst $38
    ld b, l
    ld a, a
    ei
    rst $38
    add d
    cp $42
    ld a, [hl]
    rst $38
    db $f4
    cp h
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ld a, a
    ld [bc], a
    ei
    ld a, a
    ld bc, $a500
    ret nz

    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ld e, a
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    ld hl, $ffff
    inc de
    rst $38
    ld a, b
    rlca
    rst $38
    ccf
    cp $ff

jr_075_6250:
    rst $38
    db $f4
    rst $38
    dec b
    cp $0e
    ld hl, sp+$48
    ld hl, sp+$37
    sbc b
    cp $36
    ld d, d
    pop bc
    add c
    add b
    or b
    and a
    and d
    and b
    cp a
    ld bc, $0283
    add e
    ld [bc], a
    pop bc
    ld [c], a

jr_075_626d:
    and b
    db $e3
    and a
    inc bc
    db $e3
    ld [bc], a
    adc d
    db $e3
    ret nz

    ldh [$61], a
    inc de
    ldh [$2b], a
    rst $30
    rst $38
    jr z, @+$01

    adc d

Jump_075_6280:
    pop hl
    ld h, [hl]
    rst $38
    inc b
    rst $38
    cp a
    dec c
    rst $38
    ld a, [hl]
    db $d3
    cp $d3
    jr nc, jr_075_6250

    cp $ca
    ld [$fca0], sp
    cp d
    and d
    ld hl, sp-$60
    and d
    add b
    ldh [rSC], a
    ccf
    rst $10
    ld [bc], a
    ccf
    ld bc, $8180
    rlca
    sub b
    ret nz

    ld hl, sp+$7f
    cp $44
    ldh [rLCDC], a
    rst $38
    jr nz, @+$01

    pop hl
    rst $38
    inc de
    call $8ec1
    ret nz

    ccf
    db $fc
    cp d
    ldh [$be], a
    ldh [$fe], a
    ld c, [hl]
    ld l, e
    ld hl, sp-$68
    sbc a
    add c
    add c
    ld a, [hl]
    ldh [$83], a
    add b
    jr nc, jr_075_626d

    rst $38

jr_075_62ca:
    ld hl, $10ff
    ld a, a
    db $10
    ld a, a
    ld [$ff3f], sp
    inc b
    ccf
    ld [bc], a
    rra
    ld bc, $011f
    rst $38
    rst $38
    ld b, c
    rst $38
    and b
    rst $38
    ld h, e
    cp $33
    rst $38
    rst $38
    ld e, b
    rst $30
    sbc h
    di
    rra
    ei
    ld l, $ff
    rst $30
    dec b
    rst $38
    ld a, [bc]
    ld [hl], b
    ldh [$9c], a
    rst $38
    ld [hl-], a
    rst $18
    rst $38
    ld [hl], c
    sbc a
    ldh a, [$bf]
    jp hl


    db $fc
    inc c
    ld hl, sp-$01
    ld [$10f1], sp
    pop hl
    jr nz, jr_075_62ca

    ld b, b
    add e
    rst $28
    add b
    add a
    add b
    rlca
    ld [hl-], a
    add b
    rrca
    ld bc, $f707
    ld [bc], a
    rlca
    inc bc
    ld c, e
    pop bc
    rrca
    ld [$111f], sp
    cp $ca
    ld [c], a
    ld c, $ff
    ld h, $ff
    and d
    rst $38
    ld b, e
    jp c, $c0fa

    ret nz

    jp z, $ffe3

    jp z, $e03e

    ld b, $fd
    rst $38
    dec b
    cp $07
    rrca
    nop
    adc a
    add b
    sbc a
    ei
    add b
    rst $18
    ld h, d
    pop hl
    jr nz, @+$01

    ret nc

    ccf
    ldh a, [rIE]
    rst $30
    ld b, $f7
    ld b, $ff
    add hl, bc
    rst $38
    ld [$fffb], sp
    db $10
    cp $e2
    rrca
    rst $38
    inc e
    ei
    rra
    db $eb
    ei
    ld e, $c0
    ldh [$c2], a
    ret nz

    ldh [$c0], a
    ld a, a
    ld b, b
    rst $38
    pop de
    ld a, a
    pop hl
    rst $38
    and e
    cp $f3
    cp $fb
    rst $38
    inc c
    cp [hl]
    pop hl
    rst $38
    dec b
    ldh a, [rP1]
    ldh a, [$f7]
    add b
    ldh [rLCDC], a
    rst $08
    and c
    ldh a, [rNR10]
    ldh a, [rNR10]
    rst $38
    ldh [$e0], a
    rrca
    ld bc, $070f
    rlca
    ld b, $ff
    rrca

jr_075_638c:
    ld a, [bc]
    rrca
    ld a, [bc]
    rra
    ld de, $101f
    cp e
    rra
    db $10
    add c
    ret nz

    inc l
    ei
    cpl
    cp [hl]
    ldh [rNR21], a
    rst $38
    rst $38
    ld [de], a
    rst $38
    ld h, e
    rst $38
    ret nz

    cp $3e
    rst $18
    di
    ld a, a
    db $d3
    rst $38
    pop de
    push af
    ret nz

    pop hl
    ccf
    adc a
    db $e3
    ld a, $ff
    ld e, $80
    ld h, c
    add b
    db $e4
    adc [hl]
    db $e3
    and [hl]
    ld a, [$e296]
    ld b, b
    cp $e2
    ld a, a
    add b
    rst $38
    cp $ca
    ld hl, sp-$45
    add b
    cp $e5
    or b
    add b
    rra
    db $10
    cp a
    jr nz, @+$01

    ld [hl], a
    ld [hl+], a
    rst $38
    dec de
    ld e, h
    ldh [rTAC], a
    db $fd
    ld bc, $60b0
    reti


    ret nz

    cp $40
    dec e
    ld h, b
    inc b
    rst $38
    inc hl
    and b
    rst $38
    add c
    rst $28
    rst $38
    db $fc
    rlca
    db $fd
    ld h, e
    ret nz

    ld [bc], a
    rst $38
    ld b, l
    ei
    rst $38
    add l
    xor $e0
    inc bc
    cp $df
    ldh a, [$3e]
    rra
    ldh [$fc], a
    ret nz

    ld hl, sp-$80
    jr nz, jr_075_638c

    ld [c], a
    ld b, c
    and $41
    ld c, h
    jp c, $1cc0

    add b
    ld bc, $6d00
    add b
    sbc d
    ldh [$80], a
    ret nz

    and $f6
    ld h, $c0
    db $fc
    ld b, $fe
    ldh [rSCY], a
    cp $82
    cp $ad
    ld [bc], a
    cp $e0
    rrca
    rrca
    ld b, b
    ld h, c
    pop hl
    ret nc

    ld h, b
    ld sp, hl
    db $ec
    ret z

    ld h, b
    sub b
    ld [c], a
    ldh [$9f], a
    sub b
    add sp, -$03
    dec b
    db $fc
    rst $38
    inc c
    push hl
    db $fc
    dec b
    db $fc
    ld b, e
    cp $83
    dec de
    cp $03
    cp $e0
    rst $38
    ldh [$b0], a
    ld l, e
    ld [hl+], a
    ret nz

    sbc b
    ld h, b
    di
    pop hl
    ld bc, $6500
    sub [hl]
    add sp, -$02
    rst $38
    add h
    rst $38
    di
    add h
    inc b
    sub [hl]
    ldh [$c6], a
    db $e4
    cp $7f
    ld b, d
    ld a, a
    ld sp, hl
    ld b, d
    ldh a, [rLCDC]
    adc [hl]
    add b
    ld [$080f], sp
    rrca
    rrca
    ld hl, sp-$04
    ldh [$32], a
    ld b, b
    jp c, Jump_075_7fe0

    db $e4
    rra
    db $fc
    rla
    di
    db $fc
    rst $38
    sbc d
    ldh [$f0], a
    pop hl
    ld a, a
    ld b, e
    ld a, h
    ld c, a
    rst $18
    ld [hl], b
    ld a, a
    ld d, b
    ld a, a
    ld a, a
    or d
    ld h, c
    rst $38
    inc bc
    db $f4

jr_075_6495:
    ld b, b
    ret nz

    adc [hl]
    add e
    rst $38
    db $fc
    pop hl
    rst $38
    ret nz

    nop
    di
    ld a, [$840e]
    rst $38
    db $fc
    pop hl
    rst $38
    cp $fe
    db $fc
    add h
    ld a, a
    ld a, h
    db $e4
    inc e
    db $fc
    inc d
    db $fc
    db $fc
    jr z, jr_075_6495

    cp $f0
    pop hl
    rst $38
    ld b, e
    db $fc
    ld c, a
    ldh a, [$7f]
    ret nc

    dec sp
    ld a, a
    rst $38
    cp h
    ld h, b
    rst $38
    rst $38
    db $fc
    ld b, b
    ret nz

    ld c, $83
    ld a, l
    ldh [$0a], a
    add b
    rst $38
    rst $38
    ccf
    inc bc
    inc c
    add d
    and $ef
    rlca
    rlca
    rst $38
    rst $38
    add h
    db $e3
    ld a, a
    db $fc
    add a
    xor a
    db $fc
    dec sp
    ld hl, sp-$3f
    sub h
    ret nz

    ld a, l
    add h
    ld [c], a
    ld a, h
    cp a
    ld a, a
    ld b, e
    ld a, a
    jr c, jr_075_6530

    ld a, a
    ldh [$e0], a
    add e
    inc bc
    add b
    ld c, a
    add d
    rst $20
    ld [hl], h
    ret nz

    nop
    nop
    nop
    nop
    ld e, a
    rst $38
    nop
    rst $38
    nop
    ld a, a
    cp $e0
    ccf
    cp $e0
    rst $20
    rra
    nop
    ld b, c
    ld a, [c]
    ldh [$ee], a
    ldh [$03], a
    db $fc
    rrca
    rst $38
    ldh a, [$1f]
    ldh [$3f], a
    call nz, $c37f
    ld a, a
    cp $f0
    ld [c], a
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$6f
    rlca
    db $fc
    dec b
    db $fc
    ret nc

    db $eb

jr_075_6530:
    ld b, e
    inc bc
    ret nz

    ldh [rIE], a
    ld bc, $07fe
    ld hl, sp+$0f
    ld a, [c]
    rra
    pop hl
    rst $18
    ccf
    ldh [$7f], a
    ldh [rIE], a
    or b
    ldh [$c0], a
    ccf
    cp [hl]
    call nc, $c3e2
    cp $03
    cp $03
    ldh a, [$e1]
    nop
    ld h, c
    cp $ae
    add sp, -$70
    db $e3
    xor [hl]
    push hl
    or b
    db $ed
    ld e, e
    dec de
    add d
    db $eb
    cp c
    ret nz

    or b
    pop hl
    add d
    and $87
    db $fc
    rlca
    or b
    db $e4
    cp $fb
    nop
    db $fc
    cp $e0
    ld hl, sp+$00
    add d
    add b
    ld b, e
    rst $18
    inc bc
    ld b, h
    rlca
    ld [$fe0f], sp
    pop hl
    add h
    rlca
    rst $38
    ld [c], a
    inc bc
    di
    ld bc, $ffc0
    ret nz

    rst $38
    rst $38
    ldh [$bf], a
    ld hl, sp-$61
    ld a, a

Jump_075_658f:
    rst $00

jr_075_6590:
    ccf
    ldh [rIE], a
    rra

jr_075_6594:
    ld hl, sp+$07
    rst $38
    rlca
    rst $38
    ld b, $ff
    rst $38
    ld c, $fb
    ld a, $f3
    db $fc
    rst $00
    ld hl, sp+$0f
    rst $38
    ldh a, [$3f]
    pop bc
    rst $38
    jp nz, Jump_075_6280

    ret nz

    rst $38
    jr nc, jr_075_6590

    jr nc, @-$1e

    jr nz, jr_075_6594

    ld h, c
    ret nz

    rst $38
    rst $00
    add b
    rst $08
    nop
    ld b, h
    rlca
    ld b, h
    rlca
    rst $38
    inc c
    rlca
    ld c, $03
    rlca
    ld bc, $0087
    rst $38
    db $e3
    nop
    di
    nop
    ld [hl], b
    rst $18
    ld a, h
    rst $08
    ei
    ccf
    db $e3
    ld [de], a
    ldh [$fc], a
    add e
    rst $38
    ldh [$7f], a
    rst $38
    ld hl, sp+$7f
    rlca
    db $fd
    rra
    ld sp, hl
    rst $38
    pop hl
    or $1e
    ldh [$1f], a
    pop hl
    or h
    ldh [$1f], a
    rst $38
    ld [hl+], a
    ldh [rIE], a
    ld [de], a
    ldh a, [rNR10]
    ldh a, [$30]
    ldh [$60], a
    ret nz

    ld a, a
    pop hl
    add b
    rst $00
    nop
    rst $08
    nop
    jp $e490


    ld a, e
    rst $38
    add a
    call c, $f8c0
    rst $30
    rst $38
    add a
    sub b
    db $e4
    di
    cp $c3
    cp h
    ret nz

    sub b
    ldh [$7c], a
    daa
    ld a, h
    daa
    rst $38
    inc e
    rla
    ld e, $13
    ld a, a
    ld l, a
    rst $38
    xor b
    rst $28
    rst $38
    call nc, $b8ff
    call nc, $87e7
    rst $38
    ldh a, [$f7]
    rst $38
    rst $38
    rst $18
    call nc, $c3e7
    rst $38
    rra
    cp $df
    rst $38
    or $42
    ret nz

    ld [hl+], a
    ld h, d
    ldh [rSVBK], a
    ret nz

    ld l, a
    ldh [$80], a
    pop hl

jr_075_6643:
    nop
    and b
    pop hl
    rst $38
    ld [bc], a
    cp $e2
    db $fd
    ld bc, $e410
    nop
    ret nz

    rst $38

jr_075_6651:
    ld hl, sp-$01
    rst $38
    rst $38
    ld e, a
    rst $38
    ld b, b
    rst $38
    ldh [$3f], a
    ld hl, $ff1f
    inc de
    ld a, a
    ld a, b
    rlca
    rst $38
    ccf
    cp $ff
    rst $38
    db $f4
    rst $38
    dec b
    cp $0e
    db $fc
    ld c, b
    ld hl, sp-$79
    sbc b
    cp $36
    ld d, d
    pop bc
    ld d, b
    ret nz

    jr nc, jr_075_6643

    ret nc

    ret nz

    ld c, $ff
    rst $38
    ld de, $25ff
    rst $38
    ld h, $ff
    ld c, h
    rst $38
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    and b
    ld a, a
    ld h, c
    rst $38
    ccf
    jr nc, jr_075_6651

    sub e
    sbc a
    sbc b
    rst $38
    db $fc
    rst $28
    rst $38
    cp $ff
    di
    sbc h
    ldh [rDIV], a
    rst $38
    ld b, a
    cp a
    db $fc
    adc h
    cp $1e
    rst $38
    ld h, l
    jp nz, Jump_075_40e0

    jp z, $e0a2

    add b
    ldh a, [$a8]
    ld bc, $e0fe
    ld a, d
    pop hl
    inc b
    rst $38
    rst $38
    inc b
    adc a
    ld [$cff8], sp
    db $fc
    rra
    rst $38
    rst $38
    daa
    rst $38
    dec bc
    rst $38
    ld l, $ff
    sbc l
    rst $38
    ld a, a
    ld [hl], b
    rst $38
    ld [hl], e
    rrca
    cp $1f
    rst $38
    cp h
    ldh [$7d], a
    db $e4
    ld a, [hl]
    ldh [rTMA], a
    ld hl, sp+$48
    cp $9e
    ret nc

    and e
    cp [hl]
    ret nz

    add sp, $69
    rst $38
    jr nc, @+$01

    ld [$e0fe], sp
    inc b
    rst $38

Jump_075_66eb:
    rst $38
    ld [bc], a
    ld sp, hl
    ld bc, $0082
    rst $38
    sub $fb
    rst $38
    call z, $e042
    ld hl, $60ff
    rst $38
    ld d, e
    rst $38
    rst $38
    sbc b
    rst $38
    sub h
    rst $38
    push de
    rst $38
    ld h, [hl]
    sbc $82
    ldh [$09], a
    cp $4e
    db $fc
    ld b, d
    pop hl
    ld d, c
    jp nz, Jump_000_00ff

    db $e3
    ld bc, $02f3
    di
    inc bc
    rst $20
    ld a, a
    inc b
    rst $20
    inc b
    rst $08
    ld [$11df], sp
    sbc $e0
    ld [hl], a
    inc de
    rst $38
    ld a, [bc]
    ld b, [hl]
    ldh [$a2], a
    rst $38
    ld b, e
    ld a, [bc]
    ldh [rIE], a
    ret nz

    rst $38
    ld d, c

jr_075_6733:
    rst $38
    sub b
    rst $38
    xor c
    rst $38
    push af
    jp z, $e04e

    ld b, $0a
    ldh [rTAC], a
    ld b, e
    nop

jr_075_6742:
    rst $00
    rst $38
    add b
    adc a
    add b
    rst $08
    ld b, b
    rst $20
    jr nz, jr_075_6733

    rst $38
    jr nz, jr_075_6742

    ret nc

    inc sp
    ldh a, [rIE]
    ld c, l
    rst $38
    rst $38
    ld b, [hl]
    rst $38
    jr c, @+$01

jr_075_675a:
    db $10
    rst $38
    db $10
    rst $28
    rst $30
    ld [$07c7], sp
    ret nz

    ret nz

    db $db
    rst $38
    rst $10
    rst $38
    rst $38
    ld d, d
    rst $38
    ld h, d
    rst $38
    ld h, e
    rst $38
    ldh [rIE], a
    db $fd
    jr nz, jr_075_675a

    ldh [$c8], a
    rst $38
    ld e, b
    rst $38
    inc h
    rst $38
    push af
    dec b
    rst $20
    and b
    rlca
    and h
    ret nz

    inc bc
    jp $c780


    rst $38
    ld b, b
    rst $08
    ld b, b
    rst $28
    and b
    rst $30
    db $10
    rst $30
    rst $38
    db $10
    ei
    add sp, $1b
    ld hl, sp-$31
    ld [$7fef], sp
    ld [$07f7], sp
    pop af
    ld bc, $00e0
    add b
    call nz, Call_075_58ff
    rst $38
    sub a
    rst $38
    dec hl
    rst $38
    and $7f
    ld a, l
    ld h, d
    add b
    ld [c], a
    ld b, b
    rst $38
    ld sp, $d0ff
    add b
    and $fc
    ld a, [hl]
    ldh [$80], a
    ld [$f310], a
    ret nc

    jp nz, $e200

    di
    nop
    ldh a, [$fe]
    ldh [$c0], a
    and $93
    ld a, a
    ld c, d
    ccf
    ld e, a
    ld h, $3f
    ld [hl+], a
    ccf
    inc hl
    xor b
    jp nz, Jump_075_4260

    add sp, $52
    ld b, b
    pop hl
    rrca
    add b
    ldh [rSCY], a
    ldh [$ef], a
    ld b, d
    ldh [$f7], a
    jp nz, $fee0

    ld b, b
    ldh [rNR10], a
    rst $38
    jr nz, @+$81

    ld [hl+], a
    ld a, a
    dec de
    ccf
    ccf
    add hl, bc
    ccf
    rlca
    rra
    ld bc, $8070
    db $fd
    add b
    db $dd
    add b
    ld e, e
    add b
    inc b
    rst $38
    inc bc
    ld [hl], a
    ret nz

    add c
    rst $38
    rst $30
    db $fc
    rlca
    db $fd
    or l
    pop bc
    rst $38
    ld b, l
    rst $38
    add l
    cp $ee
    ldh [$03], a
    cp $df
    ldh a, [$3f]
    ldh [$fe], a
    rst $30
    ret nz

    cp $80
    ldh [$a5], a
    rst $00
    ld a, a
    ret nz

    ld a, a
    rst $30
    add h
    rst $38
    add d
    sub $e0
    pop bc
    ld a, a
    pop hl
    ccf
    rst $30
    cp a
    ccf
    rst $38
    ld c, c
    pop bc
    rst $38
    ld b, d
    rst $38
    add h
    db $fc
    ld hl, sp-$80
    ld [hl], d
    add b
    cp $4f
    ld hl, sp-$61
    ldh a, [$3e]
    ld a, a
    ldh [$7e], a
    ret nz

    ld a, h
    ret nz

    db $fc
    add b
    or b
    and c
    xor $00
    add [hl]
    ld bc, HeaderManufacturerCode
    sub b
    ld [c], a
    ld b, b
    rst $38
    ld a, a
    sbc h
    cp a
    and b
    sub b
    and $fe
    rlca
    db $fc
    db $d3
    ret nz

    cp [hl]
    pop hl
    add l
    ld e, [hl]
    set 0, b
    inc bc
    cp $3f
    ldh a, [$c0]
    pop hl
    cp $c2
    ldh [$a0], a
    ld [hl], b
    and e
    ret nz

    ld h, h
    jp nz, $c0e0

    ldh [$c0], a
    ld h, b
    rst $18
    jp nz, $feeb

    cp $c2
    db $eb
    rst $38
    cp $43
    nop
    ld b, a
    ld bc, $ff0e
    inc bc
    inc c
    rlca
    inc b
    rlca
    add a
    rlca
    db $e4
    db $fc
    ld sp, $c380
    and b
    jp nz, $f23e

    ld c, $fe
    ld a, [bc]
    ld hl, sp-$1c
    ldh [$e0], a
    ldh [$b4], a
    and b
    ld a, a
    ld b, e
    ld a, h
    ld c, a
    ld [hl], b
    ld l, a
    ld a, a
    ld d, b
    ld a, a
    rst $38
    ld [hl], $e0
    rst $38
    rst $38
    ret nc

    ldh [$fb], a
    nop
    rrca
    adc $e0
    ld b, $03
    add a
    inc bc
    ld [c], a
    cp [hl]
    or c
    ld h, b
    rst $38
    ld h, c
    rst $38
    pop af
    rra
    ld b, c
    ret nz

    dec b
    ld a, [$e0c5]
    ld bc, $e0c1
    ld a, a
    ld b, d
    ld a, a
    ld e, a
    ld h, b
    jp $407f


    cp $e0
    ret nc

    and $a2
    ldh [$ee], a
    ld h, c
    adc a
    rrca
    ei
    add sp, $0f
    ld h, l
    and b
    cp $fe
    add h
    ld a, h
    db $e4
    cp a
    inc e
    db $fc
    inc d
    db $fc
    db $fd
    db $fc
    dec [hl]
    ldh [rIE], a
    rst $30
    cp $42
    cp $92
    ld [c], a
    ld a, $fe
    jp $d8fe


    sub b
    add b
    ld a, a
    pop hl
    ld de, $80e1
    cp a
    cp $e0
    sbc a
    add b
    di
    pop bc
    add b
    ld l, [hl]
    ldh [$a0], a
    ld l, c
    nop
    jp nz, $e280

    add e
    add b
    ldh a, [$fe]
    ldh [rSVBK], a
    add b
    ld d, [hl]
    ret nz

    ld [hl], b
    db $e4
    cp $e0
    rlca
    xor l
    nop
    ret nc

    ld h, c
    rst $38
    rst $38
    ld b, b
    pop bc
    adc a
    ld a, [hl]
    and b
    add a
    ld l, $fe
    ldh [$e3], a
    add b
    di
    or h
    ld [c], a
    cp $fe
    ldh [$e0], a
    ret nz

    ld e, a
    add b
    ld hl, sp-$80
    add d
    add b
    ret nz

    db $eb
    rst $08
    sub h
    ld [c], a
    ld [bc], a
    sub b
    jp hl


    nop
    rst $38
    db $ec
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    rst $38
    nop
    cp $e8
    ld bc, $03fe
    ld e, l
    nop
    rst $38
    ld e, l
    nop
    ld h, a
    nop
    cp e
    inc bc
    call z, $ff07
    ld hl, sp+$0f
    ld hl, sp-$01
    jr @+$01

    cp d
    nop
    rst $38
    cp d
    nop
    and $e0
    dec e
    ld hl, sp+$07
    cp $8d
    ld bc, $e0d5
    ld [$d0ff], sp
    ld [$e0c4], a
    ret nc

    jp hl


    sub b
    ei
    rra
    ldh a, [$d0]
    rst $20
    db $fc
    inc bc
    cp $81
    rst $38
    ld sp, hl
    ld [hl], c
    ret nc

    db $ed
    and b
    ldh [$5f], a
    inc bc
    ld l, h
    rrca
    or b
    rst $38
    rra
    ldh [$3f], a
    call nz, $c37f
    ld a, a
    ret nz

    ld a, [hl]
    and b
    pop hl
    add b
    ld h, [hl]
    ldh [rNR33], a
    ldh a, [$0b]
    adc $e0
    ld d, a
    dec b
    db $fc
    rlca
    and b
    db $ed
    add b
    sub b
    db $ec
    rlca
    ret nz

    ldh [rIE], a
    rlca
    ld a, b
    rra
    and b
    ccf
    ret nz

    ld a, a
    adc b
    di
    rst $38
    add a
    pop hl
    ldh [$60], a
    ld [c], a
    ret nz

    dec a
    ldh [rNR13], a
    rst $38
    ldh a, [rIF]
    ld hl, sp+$09
    ld hl, sp+$0f
    rst $38

jr_075_69e3:
    ld c, $7f
    inc bc
    ld a, [c]
    inc bc
    ld e, $03
    rst $20
    ld bc, $e248
    rst $38
    nop
    dec e
    nop
    jr c, jr_075_69e3

    inc a
    rst $20
    rra
    rst $38
    di
    rrca
    ld hl, sp-$79
    cp $c1
    ld a, a
    ldh a, [$df]
    ld a, a
    db $fc
    ld a, a
    inc b
    rst $38
    cp $e1
    ret nz

    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    add b
    ld a, a
    inc bc
    ldh [rSVBK], a
    ret nz

    rst $38
    ld c, a
    ret nz

    ld a, b

jr_075_6a18:
    ret nz

    rst $20
    ret nz

    cp l

jr_075_6a1c:
    ldh a, [$bd]
    adc l
    rrca
    ldh [$08], a
    ld hl, sp+$0f
    ld bc, $e1c0
    and $df
    inc bc
    cp e
    ld bc, $01bb
    ret nz

    pop hl
    db $10
    rst $38
    jp c, $e5be

    rlca
    jr nc, jr_075_6a18

    ldh [$7f], a
    reti


    jp nz, $87ff

    rst $30
    cp $ff
    ld a, c
    jp nc, $c7c0

    jr c, @+$01

    ldh a, [$bf]
    add b
    rst $08
    add b
    ld hl, sp-$20
    or a
    jp nz, Jump_000_0de0

    cp a
    ld hl, sp+$17
    ldh a, [$38]
    ldh [$0c], a
    ret z

    ret nz

    jr jr_075_6a1c

    rrca
    add sp, $0f
    cp h
    rlca
    cp d
    ld a, d
    ldh [$1f], a
    rst $38
    ld [bc], a
    ret nz

    rst $38
    ldh [$bf], a
    ld hl, sp-$61
    ld a, a
    cp a
    rst $00
    ccf
    ldh [$1f], a
    ld hl, sp+$07
    adc b
    ldh [rTMA], a
    rst $38
    rst $38
    ld c, $fb
    ld a, $f3
    db $fc
    rst $00
    ld hl, sp-$41
    rrca
    ldh a, [$3f]
    pop bc
    rst $38
    rlca
    add b
    ldh [$2f], a
    rst $38
    ldh [$38], a
    ldh [$27], a
    ldh [$5d], a
    ret nz

    db $dd
    rst $38
    add b
    ld h, a
    nop
    cp b
    nop
    add hl, bc
    rrca
    ld sp, hl
    rst $28
    rrca
    add hl, de
    rrca
    db $e4
    jp nz, $bbe0

    ld bc, $ffe7
    ld bc, $011d
    ret nz

    ld a, a
    ldh a, [$3f]
    rst $38
    rst $38
    rrca
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    rst $38

jr_075_6ab9:
    ldh [rIE], a
    rst $38
    rst $38
    cp a
    inc e
    rst $30
    ld a, h
    rst $20
    db $fc
    rst $38
    add a
    ld hl, sp+$1f
    pop hl
    ld a, a
    add a
    cp $3f
    ld e, a
    db $fc
    rst $38
    db $ec
    ldh a, [$80]
    ld b, b
    ld [c], a
    add b
    ld c, b
    jp $b8ff


    nop
    di
    nop
    rrca
    nop
    ld a, c
    nop
    rst $38
    ld h, c
    nop
    ld b, c
    nop
    inc bc
    nop
    rlca
    nop
    rst $38
    rra
    nop
    rst $38
    ld h, e
    rst $38
    ld l, a
    rst $38
    inc h
    rst $38
    rst $38
    jr nz, @+$01

    jr c, @-$1f

    jr jr_075_6ab9

    inc [hl]
    rst $38
    ld a, a
    ccf
    add b
    rst $38
    ldh a, [rIE]
    rst $38

jr_075_6b03:
    rra
    ei
    rst $38
    ld [bc], a
    cp $e0
    ld h, $fd
    jr jr_075_6b03

    db $10
    rst $38
    rra
    ldh a, [rSVBK]
    ldh [$9e], a
    add b
    add [hl]
    nop
    rst $38
    add d
    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    cp a
    ld hl, sp+$5f
    rst $38
    sbc a
    rst $38
    adc b
    rst $18
    ret nz

jr_075_6b29:
    jr nc, jr_075_6b29

    ret nc

    ldh [rNR32], a
    ld a, a
    ld h, [hl]
    nop
    rst $38
    add e
    rst $38
    ei
    rst $38
    ld a, [hl]
    ret nc

    ldh [rDIV], a
    rst $38
    sub h
    db $fd
    ld l, b
    rst $38
    or $10
    ld c, a
    ret nz

    ldh a, [$80]
    sbc [hl]
    nop
    ld a, [hl]
    ret nc

    rst $20
    di
    ld [bc], a
    rrca
    ld [bc], a
    ld a, c
    ld bc, $e790
    cp a
    ld hl, sp-$01
    rst $38
    ld e, a
    rst $38
    ld b, b
    ld d, l
    ldh [rNR43], a
    rst $38
    rst $18
    ld de, $38bf
    rst $38
    call c, $fe3f
    rst $38
    rst $38
    db $f4
    rst $38
    dec b

jr_075_6b6a:
    rst $38
    ld c, $ff
    adc b
    rst $38
    di
    ret nc

    db $fd
    jr nz, jr_075_6b6a

    ld [hl], b
    rst $08
    add b
    cp $c0
    xor $05
    ld a, a
    inc b
    ld h, e
    inc bc
    ld h, a
    ld h, h
    rst $38
    rst $30
    sub h
    rst $30
    sub h
    ld a, a
    ld c, l
    rst $38
    xor l
    ei
    rst $38
    sbc b
    ld a, [bc]
    ret nz

    ld b, d
    rst $38
    ret z

    rst $38
    and a
    cp $55
    ldh [$d8], a
    rst $38
    xor d
    rst $38
    call Call_000_09ff
    rst $38
    rst $38
    ld [de], a
    rst $38
    sbc h

jr_075_6ba3:
    di
    jr nz, jr_075_6ba3

    ld a, b
    rst $38
    cp $b6
    ld a, a
    ld h, e

jr_075_6bac:
    rst $38
    pop bc
    rst $38
    add c
    cp $fe
    ldh [$fd], a
    rst $38
    add [hl]

jr_075_6bb6:
    rst $38
    add h
    rst $38
    add d
    rst $38
    ld a, [$7ae0]
    ret nz

    and $c0

jr_075_6bc1:
    db $dd

jr_075_6bc2:
    ld b, b
    rst $38
    di
    jr nz, jr_075_6bb6

    jr nz, jr_075_6bc2

    jr nz, jr_075_6bac

    jr nz, jr_075_6bc1

    ld h, c
    jp nz, $e3fe

    inc bc
    ld a, [de]
    pop hl
    db $fd
    add a
    cp $07
    xor $f6
    ldh [$c8], a
    rst $38
    jr c, jr_075_6c12

    and b
    db $10
    rst $38
    jr nc, @+$01

    ld a, [$6ef8]
    db $fc
    cp $bc
    rst $38
    ld e, $ab
    rst $38
    ld [hl], $75
    ret nz

    dec b
    ld a, a
    ret nz

    ld bc, $e224
    rlca
    ld a, [$a025]
    db $10
    ldh [$e0], a
    ld [$1ff7], sp
    ld sp, hl
    rrca
    cp e
    rst $38
    ld h, $d0
    ret nz

    ldh [rIE], a
    sub b
    ld de, $28a0
    rst $38
    cp d
    ld hl, sp-$02

jr_075_6c12:
    call nc, Call_075_52fe
    rst $38
    ld c, l
    jp z, $e070

    ld [$e078], sp
    rrca
    ld h, [hl]
    xor b
    cp $e1
    nop
    rst $38
    rst $38
    daa
    rst $38
    ld a, $ff
    ld d, h
    rst $38
    ld d, e
    rst $38
    db $fd
    ld l, $d3
    add b
    rlca
    rst $38
    nop
    rst $30
    ld e, a
    di
    rst $38
    ld e, a
    ei
    adc [hl]
    rst $38
    ld b, [hl]
    rst $38
    ld h, d
    rst $38
    db $fd
    jp $e1dc


    rst $18
    ld [hl], c
    sbc a
    ldh a, [$bf]
    jp hl


    dec sp
    rst $38
    jp z, $a089

    ld b, $fd
    dec b
    ld [hl], h
    ldh [$c6], a
    db $e3
    sbc l
    ld b, b
    ld l, [hl]
    ret nz

    jr nz, @+$01

    ret nc

    ld a, [hl+]
    ret nz

    ld c, [hl]

jr_075_6c60:
    ret nz

    dec e
    ld hl, sp+$56
    and b
    sbc b
    add c
    db $10
    pop bc
    rst $38
    ld b, e

jr_075_6c6b:
    cp a
    ld [c], a
    cp a
    cp a
    ld hl, sp-$41
    ldh [$bf], a
    ldh a, [$8f]
    ld c, e
    ret nz

    rst $38
    ld a, a
    rst $38
    pop hl
    jr nz, jr_075_6c60

    ldh [$e7], a
    ld h, b
    dec b
    ret nz

    rst $30
    ld b, b
    rst $38
    ret nz

    pop de
    add b
    ret nz

    ldh a, [rP1]
    rst $08
    ld a, [$a0da]
    ld h, a
    adc b
    add h
    cp b
    nop
    rrca
    ld bc, $71f3
    ld bc, $e5c0
    db $10
    and c
    ld e, l
    add b
    rrca
    cp $a3
    call c, $ffc0
    ld b, c
    cp [hl]
    di
    adc h
    rst $38
    rst $38
    ld a, a
    db $fd
    ei
    rrca
    db $fd
    rst $28
    ldh [rIF], a
    db $fc
    ld a, a
    ld hl, sp+$5f
    ld a, a
    ldh a, [$5f]
    ldh a, [rIE]
    ldh a, [rIF]
    rlca
    ret nc

    ldh [$7c], a
    and [hl]
    and b
    jr nz, jr_075_6c6b

    rst $38
    ld d, b
    rst $38
    ccf
    ldh [$93], a
    add [hl]
    rst $18
    rst $38
    rst $38
    ld hl, sp+$1f
    add sp, -$6f
    ret nz

    dec bc
    cp $ff
    ld a, a
    db $fc
    ld l, a
    ld hl, sp+$4f
    ld hl, sp-$01
    ld hl, sp-$20
    ld h, b
    db $e3
    ret nc

    add sp, -$3b
    add b
    ld l, e
    add l
    ret nc

    pop hl
    db $fc
    rlca
    db $fd
    xor $ae
    add b
    ld [bc], a
    rst $38
    ld h, l
    cp $e0
    ld b, e
    rst $38
    rst $38
    ccf
    cp $d0
    ldh a, [$2f]
    ldh [$f8], a
    ld [hl], b
    or [hl]
    cpl
    ldh [$3f], a
    ld h, c
    rst $38
    rst $08
    ldh a, [$df]
    ldh [$7e], a
    add c
    cpl
    ldh [$3c], a
    rra
    ldh [rNR32], a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$7b], a
    ldh [$fc], a
    pop hl
    sub d
    ldh [$e1], a
    ld e, a
    ld [c], a
    pop hl
    ld e, [hl]
    add b
    ld a, a
    ldh [$e2], a
    inc b
    ldh [$9f], a
    ccf
    ldh a, [rVBK]
    ld hl, sp+$7f
    ld hl, sp-$31
    db $fc
    ldh [$ef], a
    ret nz

    rra
    jr nz, @+$01

    ccf
    pop bc
    ld a, a
    add e
    pop bc
    ld a, b
    pop hl
    rst $18
    ret nz

    ld c, $e2
    ldh [$8f], a
    ld hl, sp-$71
    ld d, [hl]
    ldh [$fc], a
    ldh [rNR51], a
    and b
    jp hl


    ld [c], a
    call nz, $e9fe
    ld c, [hl]
    ld l, l
    rst $38
    ret nz

    set 2, d
    push hl
    jr c, @-$7d

    cp b
    add b
    sub a
    rst $20
    add b
    db $dd
    cp $e0
    rst $20
    or $e0
    ld e, b
    and d
    add b
    rst $38
    add [hl]
    add b
    add d
    add b
    ret nz

    add b
    ldh [$80], a
    ld bc, $acf8
    rst $20
    ret nc

    ld b, h
    ld c, b
    ret


    sbc b
    ld h, c
    adc b
    adc [hl]
    xor b
    ld b, h
    rst $38
    db $ed
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    rst $38
    nop
    cp $e8
    ld bc, $03fe
    call z, $ff00
    adc b
    nop
    sbc a
    rlca
    sbc b
    rra
    ldh [$7f], a
    db $fd
    add b
    push hl
    ldh [rNR10], a
    rst $38
    inc sp
    nop
    ld de, $ff00
    add hl, de
    nop
    reti


    ret nz

    dec a
    ldh [rNR31], a
    ldh a, [$8f]
    rra
    rst $38
    jr @+$01

    ret nc

    ld [$e0c4], a
    ret nc

    push hl
    and b
    cp a
    ccf
    ret nz

    ld a, a
    add c
    rst $38
    adc [hl]
    ret nc

    ld [$f70f], a
    ld hl, sp+$0f
    rst $38
    or b
    pop hl
    sbc e
    inc bc
    sbc h
    rrca
    rst $38
    or b
    rra
    ldh [$3f], a
    call nz, $c37f
    ld a, a
    cp $b0

Call_075_6de1:
    pop hl
    sbc c
    add b
    ld a, c
    ldh [rNR33], a
    ldh a, [$0b]
    sbc a
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    or b
    db $ec
    add b
    ldh [$89], a
    rst $38
    ld bc, $079e
    sbc b
    rrca
    or d
    rra
    pop hl
    rst $28
    ccf
    ldh [$7f], a
    ldh [$80], a
    ldh [$d1], a
    ret nz

    add hl, sp
    rst $38
    ldh a, [$09]
    ld hl, sp+$05
    db $fc
    jp Jump_000_03fe


    rst $38
    cp $03
    rst $38
    cp $03
    ld a, $03
    adc $ff
    inc bc
    rst $30
    inc bc
    dec a
    rrca
    ld de, $101f
    or $fe
    ldh [rNR41], a
    rst $38
    cp $e1
    inc bc
    rst $38
    rst $38
    db $fc
    db $fc
    ld b, d
    ldh [$33], a
    ldh [rNR32], a
    rst $30
    inc a
    rst $20
    ld hl, sp-$31
    rst $38
    ldh a, [$1f]
    pop hl
    ld a, a
    add e
    cp $0f
    cp $ff
    ccf
    cp $7f
    ret nz

    ld a, h
    ret nz

    ld [hl], e
    ret nz

    db $eb
    rst $28
    add b
    jr z, @-$1d

    sbc b
    cp $e0
    rst $38
    ld bc, $bf3f
    ld bc, $07cf
    db $fd
    rrca
    ld sp, $e0c2
    jr @-$07

    rrca
    inc e
    rlca
    ld bc, $80e1
    rst $38
    pop hl
    ld a, a
    rst $38
    rst $38
    sbc [hl]
    rst $38
    add b
    ld a, a
    db $e3
    inc e
    rst $38
    push af
    ld [$e6be], sp
    ldh [$30], a
    ldh [rTAC], a
    cp $ff
    add b
    ld a, [hl]
    ret nz

    pop hl
    ld l, a
    ret nz

    call z, $8880
    add b
    ret nz

    ld [c], a
    rst $28
    inc bc
    inc a
    rlca
    ret z

    daa
    ldh [$38], a
    rrca
    inc d
    rst $38
    rlca
    ld a, [de]
    inc bc
    add hl, de
    ld bc, $ffc0
    ret nz

    rst $38
    rst $38
    ldh [$bf], a
    ld hl, sp-$61
    ld a, a
    rst $00
    ccf
    rst $38
    ldh [$1f], a
    ld hl, sp+$07
    rst $38
    rlca
    rst $38
    ld b, $ff
    rst $38
    ld c, $fb
    ld a, $f3
    db $fc
    rst $00
    ld hl, sp-$21
    rrca
    ldh a, [$3f]
    pop bc
    rst $38
    ret nz

    pop hl
    inc sp
    ldh [$7f], a
    cpl
    ldh [$2c], a
    ldh [rOBP0], a
    ret nz

    sbc b
    cp [hl]
    ldh [rIE], a
    db $fc
    rlca
    inc a
    rlca
    call z, $f607
    inc bc
    ei
    inc sp
    ld bc, $c1a8
    add hl, de
    nop
    ld [hl], b
    rst $18
    ld a, h
    rst $38
    rst $08
    ccf
    db $e3
    rra
    ldh a, [rIF]
    db $fc
    add e
    rst $38
    rst $38
    ldh [$7f], a
    ld hl, sp+$7f
    rlca
    db $fd
    rra
    rst $38
    ld sp, hl
    rst $38
    pop hl
    cp $07
    ld hl, sp+$1f
    pop hl
    cp $b4
    ldh [$1f], a
    rst $38
    ccf
    ldh [rNR32], a
    ldh a, [rNR13]
    rst $18
    ldh a, [$2f]
    ldh [$4c], a
    ret nz

    add b
    db $e3
    jr c, jr_075_6f1b

    rst $38
    cp $07
    rlca
    ld bc, $00b7
    or a
    nop
    rst $30
    rst $28
    nop
    rra
    ret nc

    ret nz

jr_075_6f1b:
    ld bc, $0fff
    rst $38
    rst $28
    rst $38
    ld hl, sp-$01
    ld b, b
    cp $e0
    ld h, h
    rst $38
    ret c

    rst $38
    rst $28
    jr z, @+$01

    add $ff
    or $ff
    inc h
    rst $28
    rst $38
    inc b
    rst $38
    inc e
    ld d, e
    ret nz

    inc l
    rst $38
    db $fc
    ld a, a
    cp h
    nop
    rst $18
    nop
    ldh [rP1], a
    db $ed
    cp $e0
    rst $30
    rst $30
    nop
    ld hl, sp+$14
    ret nz

    ld a, $03
    ei
    ld bc, $07b9
    jp nz, $c0e0

    db $e4
    nop
    nop
    rst $38
    ld e, h
    ldh [$7e], a
    cp $c0
    ldh [rNR41], a
    rst $38
    add hl, hl
    rst $38
    ld d, $ef
    ld [$1fbf], sp
    ld a, [$f9ff]
    rst $38
    ld de, $c0af
    inc c
    cp $13
    ret nz

    jr c, @+$01

    ld h, [hl]
    ccf
    ld [bc], a
    ei
    ld [bc], a
    and a
    rlca
    ld [bc], a
    or a
    adc [hl]
    ldh [$d0], a
    db $e3
    ret nz

    sub e
    ldh [rIE], a
    db $fd
    ld e, a
    sub b
    ldh [$e0], a
    rst $38
    ld hl, $13ff
    rst $38
    rst $38
    ld a, b
    rlca
    rst $38
    ccf
    cp $ff
    db $f4
    rst $38
    rst $38
    dec b
    rst $38
    ld c, $ff
    ld c, b
    rst $38
    sbc b
    rst $38
    db $dd
    ld [hl], $90
    ldh [$80], a
    ldh [$80], a
    sub b
    rst $20
    dec a
    nop
    ei
    ei
    nop
    sub b
    pop hl
    cp a
    rra
    rst $38
    ld [hl+], a
    ld a, a
    rst $38
    ld c, [hl]
    rst $38
    ld b, e
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    ld a, a
    and b
    rst $38
    ld h, c
    rst $38
    jr nc, @+$01

    sub e
    ret nc

    ldh [$7f], a
    db $fc
    rst $38
    cp $ff
    di
    rst $38
    ld [bc], a
    ld d, b
    ldh [rIE], a
    ld b, a
    rst $38
    adc h
    rst $38
    ld e, $e7
    ld a, l
    cp h
    ccf
    add b
    rst $18
    ld b, b
    ldh [rLCDC], a
    db $ed
    cp [hl]
    ldh [$50], a
    db $e3
    cp [hl]
    and [hl]
    ldh [$08], a
    rst $38
    ld a, [bc]
    rst $38
    add hl, bc
    ld [hl], b
    ldh [rTAC], a
    sbc $54
    and c
    rst $28
    and a
    ld a, [$80f3]
    ldh [$aa], a
    rst $38
    ld a, a
    call nz, $84ff
    rst $38
    ld b, h

jr_075_7004:
    rst $38
    inc a
    db $10
    ldh [$d7], a
    add e
    rst $38
    add c
    cp $e0
    cp a
    xor h
    ldh [rNR42], a
    rst $38
    push af
    ld b, c
    ld [$26e0], sp
    sbc d
    ldh [$99], a
    rst $38
    adc e
    rst $38
    rst $38
    and [hl]
    rst $38
    ld e, b
    rst $38
    jr c, jr_075_7004

    rra
    or [hl]
    ld a, a
    ccf
    rst $38
    ld e, l
    rst $38
    cp b
    rst $38
    db $ec
    rst $10
    and d
    sub a
    ld h, b
    cp a
    pop hl
    xor e
    and b
    ret nz

    ld b, [hl]
    ldh [$e0], a
    pop bc
    ld [$9f88], sp
    ret nz

    ld bc, $fec1
    db $e3
    ret nz

    cp d
    jp nz, $80fa

    ld [hl], b
    ldh [$03], a
    ld a, [$c0be]
    inc b
    di
    and b
    ld de, $9cf7
    di
    rra
    db $eb
    ei
    ld c, $ac
    ldh [$a2], a
    ld b, h
    ldh [rLCDC], a
    rst $38
    ret nz

    rst $38
    rst $18
    ld [hl], c
    sbc a
    ldh a, [$bf]
    jp hl


    rst $38
    jp z, $9e1e

    ret nz

    ld b, $ff
    dec b
    cp $6c
    pop hl
    ret nz

    pop hl
    ret nz

    pop bc
    rst $38
    jr nz, @+$01

    ret nc

    ccf
    ldh a, [rIE]
    ld c, a
    rst $38
    jp hl


    ld b, d
    adc b
    ret nz

    and h
    pop hl

jr_075_7087:
    inc b
    ld c, [hl]
    pop hl
    ei
    rst $18
    rst $38
    ld a, a
    rst $10
    rst $38
    ld d, d
    rst $38
    ld h, d
    rst $38
    ld h, e
    adc $c0
    ld a, a
    jr nz, @+$01

    jr c, @-$2f

    ld hl, sp-$21
    ld a, b
    ld h, b
    ret nz

    and l
    dec b
    rst $10
    and b
    rlca
    sbc b
    ld [c], a
    call nz, Call_075_40e1
    xor $c0
    db $10
    cp $93
    add b
    add sp, $1f
    ld hl, sp-$01
    nop
    ccf
    nop
    ld sp, hl
    rst $08
    ld d, h
    ret nz

    adc b
    add e
    add hl, de
    nop
    rst $28
    inc b
    rst $30
    push hl
    rlca
    sbc d
    ldh [rTAC], a
    dec b
    and b
    ld bc, $03a1
    rst $38
    ld a, [$4577]
    rst $38
    dec e
    sub c
    ret nz

    dec c
    rst $38
    pop af
    dec de
    ret nz

    sbc [hl]
    rst $38
    ldh [rP1], a
    db $fc
    nop
    di
    db $f4
    and b
    jr nz, jr_075_7087

    add b
    rst $28
    sbc b
    add b
    rst $38
    rlca
    ret nz

    db $eb
    rst $38
    or b
    rst $28
    ei
    ccf
    ldh [$fe], a
    ldh [$e6], a
    ccf
    ld a, [c]
    rra
    pop af
    cp e
    rra
    rst $38
    ld a, d
    add b
    db $ec
    rst $38
    ld [hl], c
    inc c
    ret nz

    adc e
    rst $28
    cp $4f
    rst $38
    ld sp, $e1c0
    add b
    db $fc
    add b
    db $fc
    ret nz

    and $e0

jr_075_7113:
    add c
    db $10
    ccf
    jr nz, @+$01

    ld [hl+], a
    rst $38
    ld a, a
    dec de
    ccf
    add hl, bc
    rla
    rlca
    add hl, de
    ld bc, $e0c0
    xor c
    ret nz

    dec a
    and b
    db $db
    ld h, b
    inc b
    sbc h
    add b
    ld bc, $c097
    db $fc
    ei
    rlca
    db $fd
    and e
    and b
    ld [bc], a
    rst $38
    ld b, l
    rst $38
    add l
    cp $8a
    add b
    inc bc
    cp $df
    ldh a, [$3c]
    ldh [$f3], a
    cp $a0
    adc b
    rst $00
    ld a, a
    ret nz

    ld a, a
    add h
    rst $38
    add d
    cp $6d
    ret nz

    pop bc
    ld a, a
    pop hl
    ccf
    rst $38
    ccf
    rst $38
    ld [$c2b7], a
    ld b, d
    ld d, e
    ret nz

    ld b, $5a
    add c
    cp $4f
    ld hl, sp+$3f
    sbc h
    ldh a, [$33]
    ldh [$6f], a
    ret nz

    jr nc, jr_075_7113

    ldh [$a5], a
    inc a
    jr nc, @-$5a

    and b
    ld h, c
    inc bc
    db $fc
    rlca
    ld hl, sp-$3b
    ld h, c
    pop bc
    ld h, c
    rst $38
    rst $38
    rst $38
    add [hl]
    rst $38
    add e
    ld a, a
    db $e3
    rra
    ld a, [c]
    sub l
    and b
    rst $38
    rst $38
    ret nz

    rrca
    ldh [$3b], a
    rst $20
    ld a, a
    add e
    jp c, $c00d

    rst $38
    dec bc
    ret nz

    rst $38
    ld a, a
    rst $38
    ret nz

    inc b
    rst $38
    or e
    cp $81
    dec sp
    ld h, d
    ld h, l
    ld h, c
    rst $38
    rst $38
    db $10
    and h
    add b
    rst $38
    db $ed
    add b
    rst $30
    add b
    ld hl, sp-$80
    rst $38
    rst $38
    cp $80
    and b
    inc bc
    inc b
    rlca
    cp b
    rrca
    cp b
    rrca
    rst $30
    rst $28
    rrca
    jr @-$4e

    pop hl
    cp $ff
    add h
    ld a, a
    ld e, a
    db $e4
    rra
    db $fc
    rla
    db $fc
    dec [hl]
    ldh [$fc], a
    ldh a, [$e2]
    rst $38
    ld b, e
    db $fc
    ld c, a
    ldh a, [$7f]
    ret nc

    ld a, a
    rst $38
    db $fc
    ld b, [hl]
    ldh [$c0], a
    ld [c], a
    add b
    ld h, b
    ret nz

    dec l
    ldh [$2d], a
    rst $18
    ldh [$f7], a
    ldh [$38], a

jr_075_71eb:
    ldh [$c0], a
    ld [c], a
    nop
    rlca
    rst $38
    ld bc, $03b6
    or [hl]
    inc bc
    rst $28
    inc bc
    ld e, $28
    sbc c
    ld h, b
    ld b, [hl]
    and b
    cp c
    ret nz

    dec b
    rrca
    and b
    rst $38
    rst $10
    and b
    ld a, a
    ret nz

    rrca
    ld b, d
    rst $38
    ld e, a
    ldh [$0c], a
    ldh [$c4], a
    ldh [$c0], a
    ld [c], a
    xor [hl]
    pop bc
    add h

jr_075_7216:
    cp $ea
    adc $4d
    rst $38
    ld d, b
    ret z

    ld [hl], b
    ld h, c
    jp nc, Jump_075_78e6

    ret nz

    add b
    add b
    ld e, b
    ld h, b
    sbc b
    ld h, c
    jr c, jr_075_71eb

    ld hl, sp-$80
    cp b
    add c
    jr c, jr_075_7216

    xor h
    and $33
    ld l, a
    ld bc, $0113
    dec de
    cp $e0
    ccf
    ld bc, $8038
    rlca
    ld bc, $01b7
    ld b, b
    ld b, a
    ret z

    xor e
    xor b
    call z, $461a
    rst $38
    db $ed
    nop
    nop
    nop
    ei
    rst $38
    nop
    cp $e2
    db $10
    rst $38
    jr z, @+$01

    inc l
    rst $38
    rst $38
    ld [hl], l
    rst $38
    sub $e5
    nop
    rst $08
    inc bc
    rst $38
    xor h
    rrca
    or b
    rra
    and e
    ccf
    rst $08
    ld a, h
    rst $38
    rst $18
    ld [hl], b
    rst $38
    db $e3
    di
    nop
    add [hl]
    add b
    rst $38

jr_075_7276:
    ld h, h
    ldh [rNR14], a
    ldh a, [$8c]
    ld hl, sp-$1c
    ld a, h
    rst $28
    push af
    dec e
    db $fd
    adc l
    ret nc

    db $e4
    jr nc, jr_075_7276

    ld a, $3f
    db $eb
    ld a, a
    set 7, a
    dec h
    rst $38
    ret nz

    db $e4
    ld_long a, $ffe6
    push hl
    nop
    call z, $ac00
    nop
    cp b
    nop
    rst $38
    add e
    inc bc
    adc h
    rrca
    ret nc

    rra
    db $e3
    ccf
    rst $38
    di
    nop
    ld b, $00
    inc b
    nop
    ld h, h
    nop
    or a
    db $f4
    add b
    ld [hl], h
    cp d
    ldh [$88], a
    ld hl, sp-$20
    and $00
    cp a
    add a
    inc bc
    call z, $f00f
    rra
    ldh [$e5], a
    ld [hl], h
    sbc $de
    ldh [$64], a
    ldh [rNR10], a
    ldh a, [$e0]
    add sp, $00
    rst $00
    rst $30
    inc bc
    db $ec
    rrca
    ldh [$e8], a
    nop
    db $e4
    add b
    ld h, b
    rst $38
    ldh [rIE], a
    xor c
    rst $38
    and b
    rst $38
    ld d, a
    ld a, b
    rst $38
    ld c, a
    rst $38
    daa
    ccf
    inc sp
    rra
    add hl, de
    ld a, a
    rst $38
    ld de, $8ffc
    ldh a, [rIE]
    add e
    rst $38
    rra
    db $fd
    rst $38
    rst $38
    ldh [$f3], a
    rst $38
    ld a, [c]
    rst $38
    ld c, h
    ld a, a
    cp a
    db $e3
    rra
    ld_long a, $ff87
    ldh a, [$f0]
    pop hl
    sbc a
    rst $38
    rst $38
    sbc l
    rst $38
    ld h, l
    add c
    rst $38
    add e
    cp $ff
    rst $20
    db $fc
    inc h
    db $fc
    call $fcf8
    ld hl, sp-$11
    db $fc
    adc b
    ld hl, sp+$10
    db $10
    db $e3
    inc b
    nop
    rst $38
    ld a, a
    inc c
    rra
    inc de
    ld e, $17
    ld a, a
    daa
    ld a, [de]
    ld [c], a
    db $ed
    ld h, e
    cp d
    ldh [$bf], a
    jp $e2ba


jr_075_7335:
    db $e4
    ld a, h
    rst $30
    ld a, a
    inc e
    rst $38
    adc h
    ld a, a
    ld [c], a
    rra
    ei
    cp d
    db $e4
    cp $e0
    jp nz, Jump_000_00f8

    push hl
    ldh [$9c], a
    ldh a, [$5c]
    rst $20
    ldh a, [$c8]
    ld hl, sp-$40
    push hl
    jr z, jr_075_7335

    dec c
    dec c
    ld a, [hl]
    di
    inc de
    db $e3
    ret c

    jp $e4be


    rrca
    rst $38
    adc h
    ld hl, sp-$37
    rst $20
    cp [hl]
    push hl
    ld a, b
    ldh [$e1], a
    ret nz

    rst $20
    add sp, -$40
    db $ec
    ldh [$93], a
    sbc b
    ldh a, [$c0]
    jp hl


    add sp, -$3f
    ldh a, [$dc]
    ret nz

    ld a, h
    jp hl


    inc d
    set 6, b
    adc a
    cp [hl]
    jp hl


    cp $c0
    jp hl


    xor b
    pop bc
    ld a, a
    add hl, bc
    rst $38
    rst $38
    ld [$04e7], sp
    rlca
    inc b
    rlca
    ld [bc], a
    ei
    rst $38
    ld bc, $e0fe
    nop
    rst $38
    ld hl, $e0ff
    rst $38
    rst $38
    ld h, c
    rst $38
    ld d, c
    rst $38
    sub c
    rst $38
    ld [$f7ff], sp

jr_075_73a6:
    ld e, $fb
    xor a
    rst $38
    add hl, bc
    rst $38
    ld c, $ff
    rst $38
    inc c
    rst $38
    inc d
    rst $38
    ld [de], a
    rst $38
    ld [hl-], a
    rst $38
    rst $18
    di
    cp [hl]
    ld [$10f3], a
    rst $20
    jr nz, @+$01

    rst $20
    jr nz, jr_075_73a6

    ld b, b
    ld hl, sp-$80
    rst $38
    add b
    or $14
    pop bc
    ld a, a
    inc hl
    inc d
    ret nz

    ld de, $191f
    rra
    rst $18
    ld de, $23ff
    rst $38
    ld [hl+], a
    db $fc
    ldh [$f7], a
    rst $38
    rst $30
    ld a, [hl]
    rst $38
    call z, $e0ba
    jr nz, @+$01

    db $e3
    rst $38
    rst $38
    sub h
    rst $38
    inc de
    cp $df
    rst $38
    db $fd
    rst $38
    db $fd
    ld [hl], a
    cp d
    ldh [$09], a
    rst $38
    adc [hl]
    rst $38
    ld d, e
    rst $38
    rst $38
    sub c
    adc e
    ld hl, sp+$17
    ldh a, [rNR22]
    ldh a, [$33]
    rst $38
    ldh a, [rNR23]
    ldh a, [rIE]
    add sp, -$01
    adc b
    rst $38
    rst $38
    adc b
    ld a, l
    rla
    rst $38
    daa
    rst $38
    ld [hl+], a
    rra
    ld e, l
    ld de, $e0c0
    add hl, de
    rst $38
    ld de, $e0be
    rst $38
    cp [hl]
    db $eb
    ld e, a
    cp $ff
    rst $38
    rst $18
    cp $be
    pop hl
    add hl, hl
    db $76
    ldh [rIE], a
    adc a
    cp $52
    ld d, e
    ldh a, [$cf]
    ld hl, sp-$71
    cp e
    ld hl, sp+$13
    ret nz

    ldh [$3f], a
    ldh a, [$1f]
    cp h
    ldh [$7d], a
    rst $38
    dec c
    cp $13
    db $fd
    rla
    ccf
    daa
    ccf
    ret


    ld [hl+], a
    jp nz, $bce0

    ldh [rIF], a
    ld b, [hl]
    pop bc
    ld a, h
    add sp, -$1d
    rst $38
    db $dd
    db $fc
    cp [hl]
    ldh [rIE], a
    db $fd

jr_075_745c:
    cp $be
    pop hl
    add hl, hl
    rst $38
    rst $38
    adc a
    db $e3
    ldh [$97], a
    ldh a, [$57]
    ldh a, [$cb]
    rst $28
    ld hl, sp-$78
    ld hl, sp+$1f
    ret nz

    ldh [$3f], a
    ldh a, [rIE]
    rst $38
    ld l, [hl]
    rst $38
    ld h, d
    cp a
    ld [hl+], a
    cp a
    ld [hl+], a
    rst $38
    rst $30
    ld b, e
    rst $38
    ld b, b
    cp $e2
    ld l, d
    cp $0c
    db $fc
    or l
    ld [$e0fe], sp
    inc b
    cp $e3
    rst $38
    ld b, h
    add sp, -$20
    ld b, e
    ei
    rst $38
    inc a
    ld l, b
    and [hl]
    ld [$86ff], sp
    rst $38
    and e
    ei
    rst $38
    ld [c], a
    adc $e6
    ld [hl-], a
    rst $38

jr_075_74a4:
    ld [hl], d
    rst $38

jr_075_74a6:
    db $eb
    di
    cp $4e
    adc $e5
    ret nc

    ldh [rDIV], a
    rst $38
    add h
    rst $38
    db $dd
    ld a, b
    jr c, jr_075_745c

    inc hl
    rst $38
    inc h
    and [hl]
    ldh [rSTAT], a
    rst $38
    rst $10
    ld b, [hl]
    rst $38
    jr c, jr_075_74a6

    add d
    rla
    cp [hl]
    ldh [$8c], a
    rst $38
    rst $10
    and a
    rst $38
    and $8c
    db $e4
    pop de
    and [hl]
    ret nz

    ld [hl], d
    rst $38
    daa
    set 7, [hl]
    adc $8c
    db $e3
    db $ec
    ret nz

    ld c, b
    cp [hl]
    ldh [$bc], a
    rst $20
    xor c
    ld de, $c086
    cp h
    pop hl
    jr nz, jr_075_74a4

    ldh [rBGP], a
    cp h
    ldh [$94], a
    cp d
    cp [hl]
    ldh [rNR21], a
    add $c0
    xor a
    rst $38
    and $90
    ret nz

    ld b, e
    xor $ac
    ret nz

    ret nc

    rst $38
    db $d3
    ld h, d
    ret nz

    ld [$cfff], a
    ld hl, sp+$4a
    pop hl
    db $ec
    pop bc
    cp h
    xor $00
    dec b
    ld bc, $01f3
    db $db
    rlca
    ld bc, $81c8
    rst $38
    ld a, a
    ld b, a
    pop bc
    inc b
    rst $38
    db $fd
    inc bc
    ld de, $87c0
    rst $38
    rst $38
    ld a, d
    db $fc
    db $fc
    ld a, a
    inc bc
    cp $03
    cp $01
    rst $38
    add c
    ld bc, $cfc0
    jp $fffe


    cp h
    ld [hl], b
    and [hl]
    ret nc

    ldh [rTIMA], a
    ld bc, $d09e
    ldh [rLCDC], a
    rst $38
    ld a, [hl]
    add c
    adc $e8
    xor $c0
    inc b
    ld a, c
    rst $38
    call z, $cee2
    db $e4
    ld b, b
    rst $38
    ld h, b
    rst $18
    xor h
    ldh [$6c], a
    xor [hl]
    and $ba
    pop bc
    ld [hl], b
    adc a
    ret nc

    db $eb
    inc e
    db $e3
    ret nc

    and $bf
    ld [hl], h
    nop
    push af
    ld bc, $03e6
    adc a
    and c
    rst $38
    rst $30
    rlca
    db $fc
    rlca
    sbc c
    add b
    ld b, d
    rst $38
    jp nz, Jump_000_3f3f

    ld [c], a
    rra
    cp $0b
    cp $ff
    ld a, b
    ldh [$89], a
    add b
    xor a
    add h
    rst $38
    add a
    ld hl, sp+$7c
    add b
    and b
    ld a, [hl]
    add b
    add b
    db $fc
    ld a, d
    add b
    ld c, b
    add d
    add b
    ld h, e
    ret nz

    ld a, b
    ret nz

    rst $38
    ld d, a
    ret nz

    ld a, a
    ret nz

    ld l, c
    add b
    ld a, d
    ret nc

    db $ec
    cp h
    ret nc

    db $eb
    nop
    ret


    ld [c], a
    cp $e9
    xor [hl]
    ld l, l
    sbc [hl]
    ld h, d
    nop
    and a
    ld l, [hl]
    add e
    ret nz

    add a
    ret c

    ld h, d
    ld h, e
    nop
    db $e3
    ld e, [hl]
    add b
    jp nc, $d8e3

    ld h, d
    nop
    nop
    ld e, $81
    db $fc
    jp nz, $a2e3

    ld [$80f8], a
    push hl
    add b
    call z, $ff80
    xor h
    add b
    cp b
    add b
    add e
    add b
    add a
    add b
    adc a
    rst $00
    add b
    db $e3
    add b
    cp d
    add d
    db $fc
    and $88
    jp $ff05


    ld bc, $0165
    ld [hl], l
    ld bc, $01f5
    push hl
    inc de
    ld bc, $9e01
    add c
    ld e, $68
    inc b
    sub b
    db $ed
    jr c, @-$78

    adc b
    push hl
    nop
    add b
    db $ec
    ld [c], a
    ld c, h
    jr c, @-$77

    ld c, b
    push hl
    rst $38
    db $ed
    nop
    nop
    nop
    ld d, e
    db $76
    rst $00
    db $76
    ld b, h
    ld [hl], a
    cp d
    ld [hl], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $78
    sub c
    ld a, b
    or $78
    ld e, c
    ld a, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld a, c
    inc l
    ld a, d
    sbc b
    ld a, d
    ld a, [bc]
    ld a, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], a
    ld a, e
    and $7b
    ld d, c
    ld a, h
    cp l
    ld a, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $7d
    adc l
    ld a, l
    db $ec
    ld a, l
    ld c, e
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc l
    dec c
    rst $38
    pop hl
    ld c, l
    ld c, l
    ld c, l
    ld hl, sp-$1e
    ei
    db $e3
    dec l
    ldh [$f6], a
    ldh a, [$e2]
    pop af
    adc $e8
    pop bc
    db $e4
    cp b
    ldh [rP1], a
    ld bc, $ff02
    ld [bc], a
    ld [bc], a
    ld c, $0e
    ld c, $0f
    db $10
    inc bc
    rst $38
    inc b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $11
    rst $38
    add hl, bc
    inc bc
    ld b, $07
    dec b
    jr jr_075_76a0

    ld b, $ff
    ld [de], a
    dec b
    add hl, bc
    ld [$0406], sp
    ld [hl+], a
    inc hl
    rst $38
    inc h
    dec h
    ld de, $1305
    add hl, bc
    ld a, [bc]
    ld b, $ff
    ld sp, $3332
    inc [hl]
    dec b

jr_075_76a0:
    inc d
    inc bc
    dec bc
    rst $38
    dec b
    ld a, [bc]
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    inc d
    ld b, $ff
    dec d
    inc bc
    inc c
    dec c
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    rst $38
    ld d, $17
    add hl, bc
    nop
    ld c, $0e
    ld e, l
    ld e, [hl]
    rra
    ld e, a
    ld h, b
    ld [bc], a
    ld [bc], a
    stop
    nop
    nop
    cp a
    dec l
    dec l
    ld l, l
    ld l, l
    ld l, l
    dec l
    rst $38
    pop hl
    dec c
    inc b
    ld a, [$f6e2]
    db $e4
    dec c
    rst $38
    ldh [$f3], a
    db $e4
    or $e3
    db $ec
    rst $30
    jp $fce1


    cp h
    ldh [$ce], a
    db $e3
    ld l, l
    db $10
    rrca
    ld c, $0e
    ld c, $ff
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0900
    ld de, $ff06
    ld b, $06
    dec b
    dec b
    dec b
    inc b
    inc bc
    add hl, bc
    rst $38
    dec b
    ld [de], a
    ld b, $1a
    dec de
    dec b
    rlca
    ld b, $ff
    inc bc
    inc de
    dec b
    ld de, $2726
    jr z, jr_075_7739

    rst $38
    inc b
    ld b, $08
    inc bc
    inc d
    dec b
    dec [hl]
    ld [hl], $ff
    scf
    jr c, jr_075_7723

    ld a, [bc]
    add hl, bc
    dec d
    ld b, $14
    rst $38

jr_075_7723:
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld a, [bc]
    dec b
    dec bc
    add hl, bc
    rst $38
    rla
    ld d, $53
    ld d, h
    ld d, l
    ld a, [bc]
    dec c
    inc c
    rst $38
    inc bc
    db $10
    ld [bc], a
    ld [bc], a

jr_075_7739:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    rlca
    ld c, $0e
    nop
    nop
    nop
    nop
    sbc l
    dec c
    rst $38
    pop hl
    ld c, l
    ld c, l
    ld c, l
    ld hl, sp-$1e
    ei
    db $e3
    dec l
    ret nz

    or $ed
    db $e3
    jp hl


    ld [c], a
    add sp, -$32
    add sp, -$3f
    db $e4
    cp b
    ldh [rP1], a
    ld bc, $02ff
    ld [bc], a
    ld [bc], a
    ld c, $0e
    ld c, $0f
    db $10
    rst $38
    inc bc
    inc b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $ff
    ld de, $0309
    ld b, $07
    dec b
    inc e
    dec e
    rst $38
    ld b, $12
    dec b
    add hl, bc
    ld [$0406], sp
    ld a, [hl+]
    rst $38
    dec hl
    inc l
    dec h
    ld de, $1305
    add hl, bc
    ld a, [bc]
    rst $38
    ld b, $39
    ld a, [hl-]
    dec sp
    inc a
    dec b
    inc d
    inc bc
    rst $38
    dec bc
    dec b
    ld a, [bc]
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    inc d
    rst $38
    ld b, $15
    inc bc
    inc c
    dec c
    ld d, [hl]
    ld d, a
    ld e, b
    rst $38
    ld e, c
    ld d, $17
    add hl, bc
    nop
    ld c, $0e
    ld e, l
    ccf
    ld e, [hl]
    ld e, a
    ld h, b
    ld [bc], a
    ld [bc], a
    stop
    nop
    nop
    sbc l
    dec c
    rst $38
    pop hl
    ld c, l
    ld c, l
    ld c, l
    ld hl, sp-$1e
    ei
    db $e3
    dec l
    ldh [$f6], a
    ldh a, [$e2]
    pop af
    adc $e8
    pop bc
    db $e4
    cp b
    ldh [rP1], a
    ld bc, $ff02
    ld [bc], a
    ld [bc], a
    ld c, $0e
    ld c, $0f
    db $10
    inc bc
    rst $38
    inc b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $11
    rst $38
    add hl, bc
    inc bc
    ld b, $07
    ld e, $1f
    jr nz, jr_075_7810

    rst $38
    ld [de], a
    dec b
    add hl, bc
    ld [$0406], sp
    dec l
    ld l, $ff
    cpl
    jr nc, jr_075_780d

    dec b
    inc de
    add hl, bc
    ld a, [bc]
    ld b, $ff
    dec a
    ld a, $3f
    ld b, b
    dec b
    inc d
    inc bc
    dec bc
    rst $38
    dec b
    ld a, [bc]

jr_075_780d:
    inc b
    ld c, l
    ld c, [hl]

jr_075_7810:
    ld de, $0614
    rst $38
    dec d
    inc bc
    inc c
    dec c
    ld e, d
    ld e, e
    ld e, h
    inc d
    rst $38
    ld d, $17
    add hl, bc
    nop
    ld c, $0e
    ld h, l
    ld h, [hl]
    rra
    ld h, a
    ld l, b
    ld [bc], a
    ld [bc], a
    stop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $eb
    add sp, -$1e
    push hl
    pop hl
    ret nz

    rst $38
    pop hl
    db $dd
    db $e3
    or $e5
    db $eb
    push hl
    or $ee
    cp d
    pop hl
    ld d, b
    ld d, c
    xor $ff
    db $e4
    ld d, b
    ld d, h
    dec [hl]
    rst $38
    db $e4
    ld d, h
    ld d, l
    nop
    rst $28
    nop
    nop
    ld bc, $fb02
    ldh [rHDMA5], a
    ld d, [hl]
    dec [hl]
    rst $38
    dec [hl]
    inc c
    dec c
    ld c, $0f
    dec [hl]
    dec [hl]
    ld d, [hl]
    rst $38
    ld d, a
    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    nop
    ld a, e
    nop
    ld d, a
    ret c

    ldh [$29], a
    ld a, [hl+]
    dec hl
    inc l
    ret c

    db $e3
    rst $28
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ret c

    ldh [rHDMA2], a
    ld d, e
    ld d, e
    ld a, a
    ld b, a
    ld c, b
    ld c, c
    ld b, a
    ld d, e
    ld d, e
    ld d, d
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $eb
    add sp, -$1e
    push hl
    pop hl
    ret nz

    rst $38
    pop hl
    db $dd
    db $e3
    or $e5
    db $eb
    push hl
    or $ee
    cp d
    pop hl
    ld d, b
    ld d, c
    xor $ff
    db $e4
    ld d, b
    ld d, h
    dec [hl]
    rst $38
    db $e4
    ld d, h
    ld d, l
    nop

jr_075_78b8:
    rst $38
    nop
    inc bc
    inc b
    dec b
    inc bc
    nop
    nop
    ld d, l
    rst $38
    ld d, [hl]

jr_075_78c3:
    dec [hl]
    dec [hl]
    db $10
    ld de, $1312
    dec [hl]
    rst $38
    dec [hl]
    ld d, [hl]
    ld d, a
    nop
    nop
    ld e, $1f
    jr nz, jr_075_78c3

    ld hl, $0000
    ld d, a
    ret c

    ldh [$2d], a
    ld l, $2f
    cp l
    jr nc, jr_075_78b8

    db $e3
    nop
    dec a
    ld a, $3f
    ret c

Jump_075_78e6:
    ldh [rHDMA2], a
    rst $38
    ld d, e
    ld d, e
    ld c, d
    ld c, e
    ld c, h
    ld c, d
    ld d, e
    ld d, e
    ld bc, $0052
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $eb
    add sp, -$1e
    push hl
    pop hl
    ret nz

    rst $38
    pop hl
    db $dd
    db $e3
    or $e5
    db $eb
    push hl
    or $ee
    cp d
    pop hl
    ld d, b
    ld d, c
    xor $ff
    db $e4
    ld d, b
    ld d, h
    dec [hl]
    rst $38
    db $e4
    ld d, h
    ld d, l
    nop
    rst $28
    nop
    nop
    ld b, $07
    ei
    ldh [rHDMA5], a
    ld d, [hl]
    dec [hl]
    rst $38
    dec [hl]
    inc c
    inc d
    dec d
    rrca
    dec [hl]
    dec [hl]
    ld d, [hl]
    rst $38
    ld d, a
    nop
    nop
    ld [hl+], a
    inc hl
    inc h
    dec h
    nop
    ld a, e
    nop
    ld d, a
    ret c

    ldh [$31], a
    ld [hl-], a
    inc sp
    inc [hl]
    ret c

    db $e3
    rst $28
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ret c

    ldh [rHDMA2], a
    ld d, e
    ld d, e
    ld a, a
    ld c, l
    ld c, [hl]
    ld c, c
    ld b, a
    ld d, e
    ld d, e
    ld d, d
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $eb
    rst $38
    pop hl
    db $ec
    ldh [$c0], a
    rst $30
    db $e4
    db $db
    ld [c], a
    or $e5
    ld [c], a
    rst $20
    or $ec
    cp d
    pop hl
    ld d, b
    ld d, c
    xor $ff
    db $e4
    ld d, b
    ld d, h
    dec [hl]
    rst $38
    db $e4
    ld d, h
    ld d, l
    nop
    rst $38
    nop
    ld [$0a09], sp
    dec bc
    nop
    nop
    ld d, l
    rst $38
    ld d, [hl]

jr_075_798b:
    dec [hl]
    dec [hl]
    ld d, $17
    jr jr_075_79aa

    dec [hl]
    rst $38
    dec [hl]
    ld d, [hl]
    ld d, a
    nop
    nop
    ld h, $27
    jr z, jr_075_798b

    dec e
    nop
    nop
    ld d, a
    ret c

    pop hl
    ld [hl], $37
    jr c, @-$20

    ret c

    db $e3
    ld b, h
    ld b, l

jr_075_79aa:
    ld b, [hl]
    inc a
    ret c

    ldh [rHDMA2], a
    ld d, e
    rst $38
    ld d, e
    ld b, a
    ld c, a
    ld c, h
    ld c, d
    ld d, e
    ld d, e
    ld d, d
    nop
    nop
    nop
    rrca
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$fbe0]
    pop hl
    rst $30
    ldh [rP1], a
    ldh a, [$e1]
    db $ed
    db $e3
    or $e4
    db $ed
    ldh [$e2], a
    ld [c], a
    push af
    db $e3
    db $ec
    db $e4
    ld [c], a
    ld [$4dfb], a
    ld c, l
    cp e
    db $e3
    ld c, l
    ld l, l
    ld c, l
    ld c, [hl]
    ld c, a
    ei
    ld c, a
    ld c, [hl]
    db $fc
    pop hl
    ld c, l
    ld d, b
    ld d, e
    dec e
    dec e
    db $fd
    ld d, e
    db $fc
    pop hl

jr_075_79f2:
    ld d, b
    ld d, c
    ld d, h
    inc bc
    nop
    ld bc, $02ff
    nop
    inc bc
    ld d, h
    ld d, c
    ld d, d
    ld d, l
    dec sp
    ld a, a
    dec c
    ld c, $0f
    db $10
    dec sp
    ld d, l
    ld d, d
    ld [c], a
    pop hl
    rst $30
    ld e, $1f
    jr nz, jr_075_79f2

    db $e3
    inc bc
    dec hl
    inc l
    inc bc
    sbc $e2
    db $e3
    jr c, jr_075_7a53

    ld a, [hl-]
    dec sp
    ld [c], a
    ldh [rKEY1], a
    ld c, [hl]
    rst $38
    ld b, [hl]
    ld b, [hl]
    ld b, a
    ld c, b
    ld b, [hl]
    ld b, [hl]
    ld c, [hl]
    ld c, l
    nop
    nop
    nop
    rrca
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$fbe0]
    pop hl
    rst $30
    ldh [$88], a
    ldh a, [$e1]
    db $fd
    ld [c], a
    or $e6
    dec l
    db $ec
    pop hl
    jp hl


    db $e3
    ld [c], a
    di
    ld c, l
    db $fd
    ld c, l
    cp e
    db $e3
    ld c, l
    ld l, l
    ld c, l
    ld c, [hl]
    ld c, a
    ld c, a
    db $fd

jr_075_7a53:
    ld c, [hl]
    db $fc
    pop hl
    ld c, l
    ld d, b
    ld d, e
    dec e
    dec e
    ld d, e
    cp $fc
    pop hl
    ld d, b
    ld d, c
    ld d, h
    inc bc
    inc bc
    inc b
    dec b
    rst $38
    inc bc
    inc bc
    ld d, h
    ld d, c
    ld d, d
    ld d, l
    dec sp
    ld de, $12bf
    inc de
    inc d
    dec sp
    ld d, l
    ld d, d
    ld [c], a
    pop hl
    ld hl, $22bb
    inc hl
    ld [c], a
    db $e3
    dec l
    ld l, $2f
    ld [c], a
    db $e4
    inc a
    rst $30
    dec a
    ld a, $3b
    ld [c], a
    ldh [rKEY1], a
    ld c, [hl]
    ld b, [hl]
    ld b, [hl]
    ccf
    ld c, c
    ld c, d
    ld b, [hl]
    ld b, [hl]
    ld c, [hl]
    ld c, l
    nop
    nop
    nop
    rrca
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$fbe0]
    pop hl
    rst $30
    ldh [$08], a
    ldh a, [$e1]
    db $fd
    ld [c], a
    or $e6
    dec l
    db $ec
    pop hl
    jp hl


    db $e3
    ld [c], a
    rst $28
    db $e3
    ldh [$f7], a
    dec l
    ld c, l
    ld c, l
    cp e
    db $e3
    ld c, l
    ld l, l
    ld c, l
    ld c, [hl]
    rst $30
    ld c, a
    ld c, a

Jump_075_7ac2:
    ld c, [hl]
    db $fc
    pop hl
    ld c, l
    ld d, b
    ld d, e
    dec e
    ei
    dec e
    ld d, e
    db $fc
    pop hl
    ld d, b
    ld d, c
    ld d, h
    inc bc
    ld b, $ff
    rlca
    ld [$0309], sp
    ld d, h
    ld d, c
    ld d, d
    ld d, l
    rst $38
    dec sp
    dec d
    ld d, $17
    jr jr_075_7b1e

    ld d, l
    ld d, d
    sbc $e2
    ldh [rNR50], a
    dec h
    ld h, $27
    ld [c], a
    db $e3
    jr nc, jr_075_7b21

    ld a, e
    ld [hl-], a
    inc sp
    ld [c], a
    db $e3
    ccf
    ld b, b
    ld b, c
    inc a
    ld [c], a
    ldh [rIE], a
    ld c, l
    ld c, [hl]
    ld b, [hl]
    ld b, [hl]
    ld c, e
    ld c, h
    ld b, [hl]
    ld b, [hl]
    inc bc
    ld c, [hl]
    ld c, l
    nop
    nop
    nop
    rrca
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$fbe0]
    pop hl
    rst $30
    ldh [$88], a
    ldh a, [$e1]
    db $fd
    ld [c], a
    or $e6

jr_075_7b1e:
    dec l
    db $ec
    pop hl

jr_075_7b21:
    reti


    db $e4
    ld [c], a
    ld a, [c]
    ld c, l
    db $fd
    ld c, l
    cp e
    db $e3
    ld c, l
    ld l, l
    ld c, l
    ld c, [hl]
    ld c, a
    ld c, a
    db $fd
    ld c, [hl]
    db $fc
    pop hl
    ld c, l
    ld d, b
    ld d, e
    dec e
    dec e
    ld d, e
    cp $fc
    pop hl
    ld d, b
    ld d, c
    ld d, h
    inc bc
    ld a, [bc]
    dec bc
    inc c
    rst $38
    inc bc
    inc bc
    ld d, h
    ld d, c
    ld d, d
    ld d, l
    dec sp
    add hl, de
    cp a
    ld a, [de]
    dec de
    inc e
    dec sp
    ld d, l
    ld d, d
    ld [c], a
    ldh [$28], a
    ld a, e
    add hl, hl
    ld a, [hl+]
    ld [c], a
    db $e4
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld [c], a
    db $e3
    rst $28
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld [c], a
    ldh [rKEY1], a
    ld c, [hl]
    ld b, [hl]
    ld a, a
    ld b, [hl]
    ld c, e
    ld c, h
    ld b, [hl]
    ld b, [hl]
    ld c, [hl]
    ld c, l
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
    ld a, [$f5e2]
    ldh [$2d], a
    nop
    ei
    pop hl
    cp $e1
    db $ed
    db $e4
    db $f4
    db $e3
    db $ec
    db $e4
    ld [c], a
    rst $20
    ret


    push hl
    ld [c], a
    db $e3
    ei
    ld c, l
    ld c, l
    cp e
    db $e3
    ld c, l
    ld l, l
    ld d, l
    ld d, [hl]
    ld d, a
    ei
    ld d, a
    ld d, [hl]
    db $fc
    pop hl
    ld d, l
    ld e, b
    ld e, h
    ld e, $1e
    db $fd
    ld e, h
    db $fc
    pop hl
    ld e, b
    ld e, c
    ld e, l
    inc bc
    nop
    ld bc, $02ff
    nop
    inc bc
    ld e, l
    ld e, e
    ld e, d
    ld e, [hl]
    add hl, sp
    ld a, a
    dec bc
    inc c
    dec c
    ld c, $39
    ld e, [hl]
    ld e, d
    ld [c], a
    ldh [$f7], a
    dec de
    inc e
    dec e
    ld [c], a
    db $e4
    ld a, [hl+]
    dec hl
    inc l
    inc bc
    sbc $e2
    db $e3
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld [c], a
    ldh [rHDMA5], a
    ld d, [hl]
    rst $38
    ld c, b
    ld c, b
    ld c, c
    ld c, d
    ld c, b
    ld c, b
    ld d, [hl]
    ld d, l
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
    ld a, [$f5e2]

jr_075_7bf0:
    ldh [$2d], a
    ret nz

    ei
    pop hl
    cp $e3
    rst $20
    db $e3
    or $e2
    db $ec
    push hl
    ld [c], a
    db $f4
    ld c, l
    ld c, l
    cp $cb
    db $e3
    ld c, l
    ld l, l
    ld d, l
    ld d, [hl]
    ld d, a
    ld d, a
    ld d, [hl]
    ld a, [hl]
    db $fc
    pop hl
    ld d, l
    ld e, b
    ld e, h
    ld e, $1e
    ld e, h
    db $fc
    pop hl
    rst $38
    ld e, b
    ld e, c
    ld e, l
    inc bc
    inc bc
    inc b

jr_075_7c1d:
    dec b
    inc bc
    rst $38
    inc bc
    ld e, l
    ld e, e
    ld e, d
    ld e, [hl]
    add hl, sp
    rrca
    db $10
    rst $18
    ld de, $3912
    ld e, [hl]
    ld e, d
    ld [c], a
    ldh [$1f], a
    jr nz, jr_075_7bf0

    ld hl, $e4e2
    dec l
    ld l, $2f
    jr nc, jr_075_7c1d

    db $e3
    dec a
    rst $30
    ld a, $3f
    ld b, b
    ld [c], a
    ldh [rHDMA5], a
    ld d, [hl]
    ld c, b
    ld c, b
    ccf
    ld c, e
    ld c, h
    ld c, l
    ld c, b
    ld d, [hl]
    ld d, l
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
    ld a, [$f5e2]
    ldh [$2d], a
    ret nz

    ei
    pop hl
    cp $e3
    rst $20
    db $e3
    or $e2
    db $ec
    push hl
    ld [c], a
    db $f4
    ld c, l
    ld c, l
    cp $cb
    db $e3
    ld c, l
    ld l, l
    ld d, l
    ld d, [hl]
    ld d, a
    ld d, a
    ld d, [hl]
    ld a, [hl]
    db $fc
    pop hl
    ld d, l
    ld e, b
    ld e, h
    ld e, $1e
    ld e, h
    db $fc
    pop hl
    rst $38
    ld e, b
    ld e, c
    ld e, l
    inc bc
    inc bc
    ld b, $07
    inc bc
    rst $38
    inc bc
    ld e, l
    ld e, e
    ld e, d
    ld e, [hl]
    add hl, sp
    inc de
    inc d
    rst $18
    dec d
    ld d, $39
    ld e, [hl]
    ld e, d
    ld [c], a
    ldh [rNR43], a
    inc hl
    ld a, e
    inc h
    dec h
    ld [c], a
    db $e3
    ld sp, $3332
    inc [hl]
    ld [c], a
    db $e3
    rst $28
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld [c], a
    ldh [rHDMA5], a
    ld d, [hl]
    ld c, b
    ld a, a
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld c, b
    ld d, [hl]
    ld d, l
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
    ld a, [$f5e2]
    ldh [$2d], a
    nop
    ei
    pop hl
    cp $e1
    db $ed
    db $e4
    db $f4
    db $e3
    db $ec
    db $e4
    ld [c], a
    rst $20
    ret


    push hl
    ld [c], a
    db $e3
    ei
    ld c, l
    ld c, l
    cp e
    db $e3
    ld c, l
    ld l, l
    ld d, l
    ld d, [hl]
    ld d, a
    ei

Jump_075_7ce5:
    ld d, a
    ld d, [hl]
    db $fc
    pop hl
    ld d, l
    ld e, b
    ld e, h
    ld e, $1e
    db $fd
    ld e, h
    db $fc
    pop hl
    ld e, b
    ld e, c
    ld e, l
    inc bc
    ld [$ff09], sp
    ld a, [bc]

jr_075_7cfa:
    ld [$5d03], sp
    ld e, e
    ld e, d
    ld e, [hl]
    add hl, sp
    ld a, a
    rla
    jr jr_075_7d1e

    ld a, [de]
    add hl, sp
    ld e, [hl]
    ld e, d
    ld [c], a
    ldh [$ef], a
    ld h, $27
    jr z, jr_075_7d39

    ld [c], a
    db $e3
    dec [hl]
    ld [hl], $37
    cp l
    jr c, jr_075_7cfa

    db $e3
    add hl, sp
    ld b, l
    ld b, [hl]
    ld b, a
    ld [c], a

jr_075_7d1e:
    ldh [rHDMA5], a
    rst $38
    ld d, [hl]
    ld c, b
    ld d, d
    ld d, e
    ld d, h
    ld d, d
    ld c, b
    ld d, [hl]
    ld bc, $0055
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

jr_075_7d39:
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, c
    ld a, [hl]
    db $fc
    pop hl
    ld c, b
    ld c, [hl]
    ld d, d
    ld d, e
    ld d, l
    ld d, [hl]
    db $fc
    pop hl
    rst $38
    ld d, b
    ld c, a
    ld d, h
    inc b
    nop
    ld bc, $0302
    rst $38
    inc b
    ld d, a
    ld d, c
    ld c, [hl]
    ld d, d
    ld a, [de]
    dec bc
    inc c
    rst $18
    dec c
    ld c, $17
    ld d, [hl]
    ld d, b
    ld [c], a
    ldh [rNR31], a
    inc e
    ld a, e
    dec e
    ld e, $e2
    db $e3
    inc b
    dec hl
    inc l
    inc b
    ld [c], a
    db $e3
    rst $28
    add hl, sp
    ld a, [hl-]
    dec sp
    ld a, [de]
    ld [c], a
    ldh [rOBP0], a
    ld c, c
    ld c, h
    ld a, a
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld c, l
    ld c, c
    ld c, b
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
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, c
    ld a, [hl]
    db $fc
    pop hl
    ld c, b
    ld c, [hl]
    ld d, d
    ld d, e
    ld d, l
    ld d, [hl]
    db $fc
    pop hl
    rst $38
    ld d, b
    ld c, a
    ld d, h
    inc b
    inc b
    dec b
    ld b, $04
    rst $38
    inc b
    ld d, a
    ld d, c
    ld c, [hl]
    ld d, d
    ld a, [de]
    rrca
    db $10
    rst $18
    ld de, $1712
    ld d, [hl]
    ld d, b
    ld [c], a
    ldh [$1f], a
    jr nz, jr_075_7e48

    ld hl, $e222
    db $e3
    dec l
    ld l, $2f
    jr nc, @-$1c

    db $e3
    rst $28
    inc a
    dec a
    ld a, $1a
    ld [c], a
    ldh [rOBP0], a
    ld c, c
    ld c, h
    ld a, a
    ld b, d
    ld b, [hl]
    ld b, a
    ld b, l
    ld c, l
    ld c, c
    ld c, b
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
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, c
    ld a, [hl]
    db $fc
    pop hl
    ld c, b
    ld c, [hl]
    ld d, d
    ld d, e
    ld d, l
    ld d, [hl]
    db $fc
    pop hl
    rst $38
    ld d, b
    ld c, a
    ld d, h
    inc b
    inc b
    rlca
    ld [$ff04], sp
    inc b
    ld d, a
    ld d, c
    ld c, [hl]
    ld d, d
    ld a, [de]
    inc de
    inc d
    rst $18
    dec d
    ld d, $17
    ld d, [hl]
    ld d, b
    ld [c], a
    ldh [rNR44], a
    inc h
    ld a, e
    dec h
    ld h, $e2
    db $e3
    ld sp, $3332
    inc [hl]
    ld [c], a
    db $e3
    rst $28
    inc a
    ccf
    ld a, $1a
    ld [c], a
    ldh [rOBP0], a
    ld c, c
    ld c, h
    ld a, a
    ld b, d
    ld b, [hl]
    ld b, a
    ld b, l
    ld c, l
    ld c, c
    ld c, b

jr_075_7e48:
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
    ld c, b
    ld c, c

jr_075_7e60:
    ld c, d
    ld c, e
    ld c, c
    ld a, [hl]
    db $fc
    pop hl
    ld c, b
    ld c, [hl]
    ld d, d
    ld d, e
    ld d, l
    ld d, [hl]
    db $fc
    pop hl
    rst $38
    ld d, b
    ld c, a
    ld d, h
    inc b
    inc b
    add hl, bc
    ld a, [bc]

jr_075_7e76:
    inc b
    rst $38
    inc b
    ld d, a
    ld d, c
    ld c, [hl]
    ld d, d
    ld a, [de]
    rla
    jr jr_075_7e60

    add hl, de
    ld a, [de]
    rla
    ld d, [hl]
    ld d, b
    ld [c], a
    ldh [$27], a
    jr z, jr_075_7f06

    add hl, hl
    ld a, [hl+]
    ld [c], a
    db $e3
    dec [hl]
    ld [hl], $37
    jr c, jr_075_7e76

    db $e3
    rst $30
    inc a
    ld b, b
    ld b, c
    ld [c], a
    pop hl
    ld c, b
    ld c, c
    ld c, h
    ld b, d
    ccf
    ld b, [hl]
    ld b, a
    ld b, l
    ld c, l
    ld c, c
    ld c, b
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

Call_075_7ef3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_075_7f06:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_075_7f95:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_075_7fe0:
    rst $38
    rst $38
    rst $38

Call_075_7fe3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_075_7ffc:
    rst $38
    rst $38
    rst $38

Jump_075_7fff:
    rst $38
