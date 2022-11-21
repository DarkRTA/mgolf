; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $053", ROMX[$4000], BANK[$53]

    inc d
    ld b, b
    ld d, c
    ld c, a
    sub c
    ld e, [hl]
    ld b, c
    ld l, [hl]
    sbc d
    ld a, c
    ld c, h
    ld b, a
    ld a, [hl]
    ld d, [hl]
    ld sp, $0966
    ld a, [hl]

    db $bc, $7e

    ld e, $40
    ld c, [hl]
    ld b, b
    ld hl, sp+$43
    ld hl, sp+$45
    add $46
    xor a
    nop
    rst $38
    ld bc, $038a
    inc b
    ld [bc], a
    rst $38
    ld d, e
    rst $28
    inc bc
    adc d
    inc bc
    inc b
    ld [bc], a
    ld b, b
    ld c, c
    add b
    ld a, [hl]
    ld l, [hl]
    nop
    inc b
    ld [bc], a
    rst $38
    ld a, a
    adc d
    inc bc
    inc b
    ld [bc], a
    nop
    dec c
    sbc a
    nop
    db $e4
    ld h, e
    ld [c], a
    ld hl, $0d00
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    adc a
    jp $c33c


    inc a
    db $fd
    ldh [$fe], a
    ld [c], a
    db $f4
    pop hl
    ld d, a
    rst $38
    rst $38
    xor a
    db $fc
    ld a, [hl]
    pop af
    cp h
    db $e3
    ld a, h
    rst $38
    jp $c3fc


    db $e3
    sbc h
    jp $fbbc


    rst $38
    rst $38
    sbc $ff
    push af
    rst $38
    xor d
    rst $38
    ld d, a
    ld a, a
    rst $38
    cp a
    ld hl, sp-$01
    ldh [$f3], a
    adc h
    ld hl, sp-$1f
    rst $38
    ld a, h
    db $e3
    db $fc
    add e
    db $fc
    inc bc
    cp h
    ld b, e
    cp $c4
    pop hl
    rst $28
    rst $38
    rst $10
    ld a, a
    db $ed
    ld a, a
    rst $30
    rst $38
    ccf
    ld l, e
    cp a
    db $76
    sbc a
    ei
    rra
    push af
    rst $38
    rra
    ld a, [$dd0f]
    daa
    ld a, $c7
    ccf
    rst $38
    jp $c33e


    ccf
    pop bc
    jp $c33d


    ld a, a
    dec a
    db $ed
    rst $38
    db $d3
    inc a
    ld a, [hl]
    add c
    and b
    rst $20
    rst $38
    jp $e3bc


    sbc h
    cp h
    jp $c37c


    push de
    cp h
    cp $e0
    ld h, e
    and b
    ldh [$57], a
    and h
    ldh [$7d], a
    rst $38
    rst $28
    db $d3
    rst $28
    rst $38
    nop
    add b
    db $e3
    cp e
    db $f4
    ld e, e
    rst $38
    db $f4
    xor h
    di
    ld l, h
    di
    cp h
    db $e3
    ld l, h
    rst $38
    di
    cp e
    db $f4
    db $db
    db $f4
    cp l
    jp $ffe7


    rst $38
    cp d
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    cp $ff
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    ld l, a
    cp $8e
    ldh [$af], a
    ld a, a

Jump_053_40ff:
    or l

Jump_053_4100:
    ld a, a
    rst $28
    ld a, a
    ld d, a
    ld e, h
    xor $e2
    db $fd
    pop hl
    db $dd
    rst $38
    ld [hl], a
    ld e, h
    ldh [rHDMA5], a
    ldh [$e0], a
    rra
    xor a
    rst $38
    rst $18
    rst $38
    or a
    db $fc
    ldh [$f8], a
    push hl
    rst $38
    push hl
    ld l, $de
    push hl
    ld e, a
    rst $38
    cp a
    cp [hl]
    ldh [$bf], a
    ld hl, sp-$1a
    cp a
    db $e3
    jp z, $e1f8

    ld e, a
    ret z

    ldh [$5f], a
    ret nc

    and $c7
    push hl
    db $fd
    rst $38
    rst $30
    rst $30
    rst $38
    jp c, $c0fe

    xor a
    cp $df
    ld hl, sp-$01
    ld l, a
    ld hl, sp-$21
    ldh a, [rP1]
    rst $38
    inc bc
    rst $38

jr_053_414a:
    rst $38
    rlca
    cp $1b
    db $fc
    ld e, $f1
    jr z, jr_053_414a

    rst $38
    ld a, d
    push hl
    ld [hl], b
    rst $08
    inc a
    rst $38
    ei
    rst $20
    rst $38
    db $fd
    ld b, d
    rst $20
    jr jr_053_41ac

    or l
    nop
    rst $38
    rst $38
    ld d, h
    rst $38
    cp e
    rst $38
    adc [hl]
    di
    sbc d
    rst $20
    rst $38
    ld c, l
    di
    sub a
    jp hl


    rst $00
    ld sp, hl
    adc a
    di
    rst $38
    ld e, [hl]
    rst $20
    adc [hl]
    di
    push af
    rst $38
    xor b
    rst $38
    rst $38
    ldh [rIE], a
    adc d
    push af
    ld d, a
    add sp, -$73
    ld a, [c]
    rst $38
    add hl, de
    rst $20
    adc a
    di
    rst $18
    sbc c
    sbc a
    ld c, l
    rst $38
    daa
    rla
    and e
    di
    db $db
    pop hl
    xor $f1
    rst $38
    or h
    ei
    ld b, c
    rst $38
    rst $18
    sbc a
    sbc h
    ld c, a
    rst $38
    ld h, $17
    and d
    di
    jp c, $eee1

jr_053_41ac:
    ld [hl], c
    rst $30
    db $f4
    dec sp
    ld sp, hl
    add b
    xor $ff
    db $fc
    cp $f9
    rst $38
    db $fc
    ei
    cp $e1
    db $f4
    set 4, b
    rst $18
    cp $fe
    pop hl
    cp a
    ld a, a
    ld e, a
    cp a
    rra
    rst $38
    scf
    rst $38
    rst $08
    dec bc
    rst $30
    ld h, e
    rst $38
    db $d3
    sbc a
    sub e
    rst $38
    sbc a
    ld hl, sp-$79
    ret nc

    cpl
    add b
    ld a, a
    adc h
    rst $38
    ld a, a
    sbc d
    ld [hl], e
    ld d, d
    or e
    adc h
    rst $38
    ldh a, [rIE]
    rst $28
    ld l, l
    di
    ld [bc], a
    db $fd
    ret nz

    ccf
    add b
    rst $38
    ld a, a
    ld [bc], a
    rst $38
    ld d, $ff
    ld bc, $17ff
    rst $38
    rst $38
    add sp, -$09
    pop af
    rst $38
    cp $fe
    rst $38
    rst $38
    cp $f7
    cp $ad
    db $fc
    ld b, [hl]
    cp $eb
    rst $28
    rst $38
    scf
    rst $38
    adc a
    cp d
    ret nz

    ld a, a
    ld a, a
    ld l, a
    rst $18
    ld a, a
    ld a, $3f
    ld a, e
    ld a, a
    and c
    ldh [rIE], a
    ld a, [$fdff]
    db $fc
    ei
    pop hl
    rst $38
    ret nc

    rst $28
    push hl
    rst $38
    rst $18
    jp z, $e7ff

    rst $18
    ccf
    rst $38
    rra
    cp [hl]
    sbc $c0
    ld d, a
    rst $38
    db $eb
    rst $38
    ld a, a
    sub h
    ret nz

    rst $38
    rst $38
    rst $38
    adc e
    rst $38
    ld b, l
    cp a
    sub a
    ld a, a
    dec hl
    cp a
    rst $38
    sbc a
    ld a, a
    dec l
    rst $38
    sbc a
    ld [$75e0], a
    ld l, e
    rst $38
    ld a, [$c07a]
    ld a, [hl]
    db $76
    ret nz

    cp $ff
    ld d, d
    pop hl
    rst $20
    push hl
    rst $38
    di
    and b
    pop hl
    sbc h
    ldh [$ee], a
    cp $5e
    adc e
    cp $fb
    jp nc, $cfc0

    and b
    ld [c], a
    db $fc
    db $e3

jr_053_426e:
    or c
    ret z

    cp $fe
    sub l
    ldh [$f8], a
    rst $38
    ldh a, [$fb]
    rst $20
    push af
    res 7, a
    ld a, [c]
    adc l
    pop af
    ld c, $f0
    rrca
    cp $e1
    add sp, -$13
    rla
    ccf
    jp $ff7f


    jr z, jr_053_426e

jr_053_428d:
    cpl
    rst $18
    rla
    cp b
    cpl
    push bc
    jp z, Jump_000_1ee7

    jp $fce0


    jp $a18c


    db $fc
    rst $38
    inc bc
    rst $38
    ldh [$ef], a
    ret nc

    rst $18
    and b
    ld l, $ff
    pop de
    sub [hl]
    ld l, e
    ld c, h
    or a
    jr z, jr_053_428d

    dec d
    rst $38
    rst $28
    ret nz

    ccf
    add h
    ld a, a
    ld a, [bc]
    rst $38
    inc d
    di
    rst $38
    ld a, [hl+]
    call c, $fea0
    and c
    dec bc
    rst $30
    inc bc
    rst $38
    or l
    ei
    cp $e0
    rst $38
    db $fc
    ld [c], a
    rst $38
    ret nz

    cpl
    set 6, a
    rst $38
    rrca
    cp $fd
    db $fd
    ld a, [$f5fa]
    ldh a, [$ef]
    rst $28
    ret nz

    rst $38
    add b
    adc $e2
    db $fc
    inc bc
    ld d, h
    rst $38
    xor e
    xor h
    ld d, a
    ld a, [de]
    rst $28
    dec [hl]
    rst $18
    ld a, [hl+]
    cp $0e
    ldh [rIE], a
    rst $38
    ld a, [bc]
    rst $30
    dec b
    ei
    ld [bc], a
    dec hl
    db $fd
    nop
    ld e, $e0
    cp $fe
    ret nz

    cp $88
    and b
    xor $80
    rst $30
    cp $de
    db $fd
    ld b, l
    ldh [rIE], a
    ld [$d5ff], a
    rst $38
    rst $38
    sbc $a1
    xor d
    ld d, l
    ld d, [hl]
    xor e
    dec c
    cpl
    rst $30
    ld a, [de]
    rst $28
    dec d
    or [hl]
    and b
    ld a, a
    sub b
    ldh [$d0], a
    db $e3
    dec d
    cp [hl]
    db $ec
    ret nz

    cp a
    ld e, h
    and b
    nop
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    xor $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_053_44c3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
    ld h, [hl]
    rst $38
    db $e4
    sbc c
    sub [hl]
    sub [hl]
    ld h, [hl]
    sub [hl]
    di
    ldh [$e3], a
    ld de, $ff99
    ldh [$f0], a
    pop hl
    rst $20
    db $e4
    ld l, c
    sub c
    ld l, c
    dec e
    sub c
    di
    ldh [$99], a
    ld h, [hl]
    ld l, c
    cp $e0
    rst $38
    ldh a, [$d1]
    db $e4
    sbc b
    db $dd
    ld [c], a
    reti


    pop hl
    xor $e3
    ld de, $c811
    pop hl
    call nz, Call_000_11e1
    ld c, h
    rst $38
    ldh [$ad], a
    pop hl
    sbc c
    ld de, $e3fe
    ldh a, [$ef]
    sub c
    and $e1
    db $fc
    ret c

    ld [c], a
    db $e3
    ld [c], a
    add hl, de
    add hl, de
    sbc c
    add hl, de
    sub [hl]
    sbc c
    ld a, a
    ld h, [hl]
    ld de, $1117
    ld [hl], a
    rla
    ld [hl], a
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld_long a, $fff9
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    or $00
    nop
    nop
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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

Call_053_46fe:
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    ld d, b
    ld b, a
    ld d, b
    ld c, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_053_4b00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_053_4b4b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_053_4d2d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_053_4f00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $5b
    ld c, a
    adc e
    ld c, a
    ld a, [hl+]
    ld d, e
    ld a, [hl+]
    ld d, l
    ld hl, sp+$55
    ld de, $7f19
    ld a, [hl-]
    ld [$8003], a
    ld [bc], a
    rst $38
    ld a, a
    di
    inc bc
    db $ec
    inc bc
    add b
    ld [bc], a
    add b
    ld a, [hl]
    ld c, $7f
    inc [hl]
    ld hl, $0280
    rst $38
    ld a, a
    ld [$8003], a
    ld [bc], a
    jr nz, jr_053_4f94

    db $76
    ld bc, $239f
    ret nz

    ld [hl-], a
    jr nz, jr_053_4f9c

    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    adc a
    jp $c33c


    inc a
    db $fd
    ldh [$fe], a
    ld [c], a

jr_053_4f94:
    db $f4
    pop hl
    ld d, a
    rst $38
    rst $38
    xor a
    db $fc
    ld a, [hl]

jr_053_4f9c:
    pop af
    cp h
    db $e3
    ld a, h
    rst $38
    jp $c3fc


    db $e3
    sbc h
    jp $fbbc


    rst $38
    rst $38
    sbc $ff
    push af
    rst $38
    xor d
    rst $38
    ld d, a
    ld a, a
    rst $38
    cp a
    ld hl, sp-$01
    ldh [$f3], a
    adc h
    ld hl, sp-$1f
    rst $38
    ld a, h
    db $e3
    db $fc
    add e
    db $fc
    inc bc
    cp h
    ld b, e
    cp $c4
    pop hl
    rst $28
    rst $38
    rst $10
    ld a, a
    db $ed
    ld a, a
    rst $30
    rst $38
    ccf
    ld l, e
    cp a
    db $76
    sbc a
    ei
    rra
    push af
    rst $38
    rra
    ld a, [$dd0f]
    daa
    ld a, $c7
    ccf
    rst $38
    jp $c33e


    ccf
    pop bc
    jp $c33d


    ld a, a
    dec a
    db $ed
    rst $38
    db $d3
    inc a
    ld a, [hl]
    add c
    and b
    rst $20
    rst $38
    jp $e3bc


    sbc h
    cp h
    jp $c37c


    push de
    cp h
    cp $e0
    ld h, e
    and b
    ldh [$57], a
    and h
    ldh [$7d], a
    rst $38
    rst $28
    db $d3
    rst $28
    rst $38
    nop
    add b
    db $e3
    cp e
    db $f4
    ld e, e
    rst $38
    db $f4
    xor h
    di
    ld l, h
    di
    cp h
    db $e3
    ld l, h
    rst $38
    di
    cp e
    db $f4
    db $db
    db $f4
    cp l
    jp $ffe7


    rst $38
    cp d
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    cp $ff
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    ld l, a
    cp $8e
    ldh [$af], a
    ld a, a
    or l
    ld a, a
    rst $28
    ld a, a
    ld d, a
    ld e, h
    xor $e2
    db $fd
    pop hl
    db $dd
    rst $38
    ld [hl], a
    ld e, h
    ldh [rHDMA5], a
    ldh [$e0], a
    rra
    xor a
    rst $38
    rst $18
    rst $38
    or a
    db $fc
    ldh [$f8], a
    push hl
    rst $38
    push hl
    ld l, $de
    push hl
    ld e, a
    rst $38
    cp a
    cp [hl]
    ldh [$bf], a
    ld hl, sp-$1a
    cp a
    db $e3
    jp z, $e1f8

    ld e, a
    ret z

    ldh [$5f], a
    ret nc

    and $c7
    push hl
    db $fd
    rst $38
    rst $30
    rst $30
    rst $38
    jp c, $c0fe

    xor a
    cp $df
    ld hl, sp-$01
    ld l, a
    ld hl, sp-$21
    ldh a, [rSC]
    rst $38
    rlca
    db $fd
    rst $38
    rlca
    db $fc
    ld d, $fd
    dec a
    xor $3a
    rst $20
    rst $38
    or a
    add sp, $68
    rst $30
    call z, $eeff
    cp e
    rst $38
    rst $38
    sbc c
    cp e
    ld d, l
    sbc c
    ld h, [hl]
    ld d, l
    xor $ff
    ld h, [hl]
    rst $38
    xor $ff
    sbc a
    rst $20
    rst $20
    ld sp, hl
    xor a
    adc $f3
    inc a
    rst $08
    ld hl, sp-$1b
    cp $48
    ldh [$f8], a
    rst $38
    rst $38
    db $e3
    db $fc
    ld sp, hl
    rst $38
    jp nz, Jump_000_1dfd

    rst $38
    ld [c], a
    set 7, h
    rst $18
    sub d
    sbc l
    ld c, e
    dec h
    rst $38
    rla
    and d
    di
    db $db
    pop hl
    xor $f1
    ld [hl], h
    rst $38
    ei
    sbc c
    rst $38
    sub $9f
    sbc [hl]
    ld c, a
    dec h
    rst $28
    ld d, $a3
    ld a, [c]
    jp c, $e0f0

    or h
    ei
    ld e, c
    cp $80
    xor $ef
    ldh a, [$b8]
    rst $00
    ld d, $f9
    db $fc
    rst $38
    db $e3
    db $db
    rst $20
    di
    adc $e6
    sbc $8f
    rst $38
    rst $38
    ld a, a
    rst $38
    ld d, e
    rst $28
    sbc c
    rst $20
    ld sp, hl
    rst $38
    rst $38
    xor [hl]
    rst $18
    ld e, a
    ld h, a
    ld c, e
    ld [hl], a
    rst $20
    rst $38
    ei
    sbc a
    ld sp, hl
    cp l
    ld sp, hl
    rst $38
    rst $38
    cp $fe
    rst $38
    ldh [rIE], a
    cp $fd
    db $fd
    rst $38
    cp $f1
    cpl
    rst $38
    sbc c
    sbc a
    cp l
    add hl, hl
    ldh [$7f], a
    rst $38
    ldh [$fa], a
    pop hl
    inc a
    ld [$e4e3], a
    db $e3
    ld hl, sp-$08
    cp $fe
    ld [$e4e3], a
    db $e3
    rst $38
    rra
    rra
    ld a, a
    ld a, a
    db $ec
    di
    adc a
    rst $38
    rst $38
    ld a, c
    rst $38
    add sp, -$09
    di
    rst $28
    add $fe
    db $eb
    sbc $fe
    ldh a, [$c1]
    ld h, a
    ld [hl], d
    ret nz

    db $fd
    rst $38
    rst $08
    rst $38
    rst $38
    ld h, a
    ld a, a
    rst $30
    rst $38
    ei
    rst $38
    db $fd
    rst $00
    ld sp, hl
    ei
    ei
    sbc e
    jp $e09e


    sbc b
    ldh [$fb], a
    rst $38
    sub c
    cp a
    set 0, l
    ld [$e4e8], a
    db $e4
    ei
    call c, $bde1
    rst $00
    rst $18
    cp $81
    pop bc
    db $fc
    rst $38
    ld hl, sp-$02
    ld hl, sp-$0a
    ldh a, [$f7]
    cp $f0
    db $fc
    db $fc
    ld [c], a
    sbc a
    rra
    rst $08
    rrca
    rst $38
    sbc a
    rra
    sbc a
    rra
    rra
    rra
    sbc h
    inc e
    rrca
    ld e, $1e
    inc e
    inc e
    adc a
    rst $00
    ld d, b
    ldh [$fe], a
    pop hl
    sub l
    ld [c], a
    cp $4e
    ld [c], a
    db $fc
    cp $fe
    db $ed
    pop hl
    db $fc
    ldh a, [rIE]
    ld l, b
    nop
    call c, $0810
    nop
    adc h
    nop
    rst $38
    ld [$3400], sp
    jr nz, jr_053_51d0

    nop
    ld e, $1e
    rst $38
    dec a
    dec a
    ld [hl], $06
    ld h, e
    inc bc
    add $86
    rst $38
    ld h, a
    rlca
    ld b, a
    rlca
    ld h, a
    rlca
    ccf
    ccf
    ei
    ld a, a
    ccf

jr_053_51d0:
    rst $38
    pop hl
    cp a
    cp a
    rra
    rra
    sbc a
    rst $38
    sbc a
    ld e, a
    ld e, a
    ld a, [$e1c0]
    pop bc
    pop af
    rst $38
    pop bc
    db $e3
    jp $8083


    and $c0
    adc h
    rst $38
    adc b
    sub b
    sub b
    or b
    and b
    xor c
    and c
    ldh a, [rIE]
    ldh [$e1], a
    pop hl
    ld [hl], d
    ld h, d
    pop bc
    pop bc
    ld [c], a
    rst $38
    ld [c], a
    push de

jr_053_51fe:
    push de
    ld b, a
    rlca
    rst $00
    rlca
    push bc
    rst $38
    inc b
    add a
    nop
    ld c, l
    ld [$0082], sp
    inc b
    rst $38
    nop
    sub b
    db $10
    rst $38
    rst $38
    sbc a
    sbc a
    rst $08
    rst $38
    rrca
    add a
    rlca
    ld c, e
    dec bc
    add a
    rlca
    inc bc
    rst $38
    inc bc
    dec b
    dec b
    adc d
    adc d
    ld d, l
    ld d, l
    cp [hl]
    rst $28
    cp [hl]
    db $eb
    rst $38
    pop af
    inc c
    and d
    ei
    rst $38
    db $eb
    xor c
    db $eb
    xor d
    ret nz

    xor d
    and b
    push bc
    db $fc
    add b
    ld e, l
    jr nz, jr_053_51fe

    ld [hl+], a
    ld a, a
    ld [hl+], a
    ld d, l
    ld d, l
    cp a
    cp a
    ld l, e
    ld a, a
    ldh [$e1], a
    db $fd
    rst $10
    ldh [$c0], a
    inc hl
    inc hl
    ld d, l
    ld d, l
    cp e
    cp e
    dec d
    rst $38
    add b
    and d
    ld [hl], a
    ld h, b
    and b
    nop
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    xor $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
    ld h, [hl]
    rst $38
    db $e4
    sbc c
    sub [hl]
    sub [hl]
    ld h, [hl]
    sub [hl]
    di
    ldh [$e3], a
    ld de, $ff99
    ldh [$f0], a
    pop hl
    rst $20
    db $e4
    ld l, c
    sub c
    ld l, c
    dec e
    sub c
    di
    ldh [$99], a
    ld h, [hl]
    ld l, c
    cp $e0
    rst $38
    ldh a, [$d1]
    db $e4
    sbc b
    db $dd
    ld [c], a
    reti


    pop hl
    xor $e3
    ld de, $c811
    pop hl
    call nz, Call_000_11e1
    ld c, h
    rst $38
    ldh [$ad], a
    pop hl
    sbc c
    ld de, $e3fe
    ldh a, [$ef]
    sub c
    and $e1
    db $fc
    ret c

    ld [c], a
    db $e3
    ld [c], a
    add hl, de
    add hl, de
    sbc c
    add hl, de
    sub [hl]
    sbc c
    ld a, a
    ld h, [hl]
    ld de, $1117
    ld [hl], a
    rla
    ld [hl], a
    rst $38
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld_long a, $fff9
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    or $00
    nop
    nop
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    sub b
    ld d, [hl]
    sub b
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_053_56c9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_053_579f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $9b
    ld e, [hl]
    bit 3, [hl]
    db $db
    ld h, d
    db $db
    ld h, h
    xor e
    ld h, l
    xor [hl]
    nop
    ld e, a
    ld [hl+], a
    inc l
    inc bc
    inc d
    ld bc, $7fff
    or b
    inc bc
    inc l
    inc bc
    inc d
    ld bc, $7c8a
    sub h
    ld a, l
    adc h
    nop
    inc d
    ld bc, $7fff
    inc l
    inc bc
    inc d
    ld bc, $046a
    ld [hl], h
    nop
    ccf
    ld bc, $02bf
    ld l, d
    inc b
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    adc a
    jp $c33c


    inc a
    db $fd
    ldh [$fe], a
    ld [c], a
    db $f4
    pop hl
    ld d, a
    rst $38
    rst $38
    xor a
    db $fc
    ld a, [hl]
    pop af
    cp h
    db $e3
    ld a, h
    rst $38
    jp $c3fc


    db $e3
    sbc h
    jp $fbbc


    rst $38
    rst $38
    sbc $ff
    push af
    rst $38
    xor d
    rst $38
    ld d, a
    ld a, a
    rst $38
    cp a
    ld hl, sp-$01
    ldh [$f3], a
    adc h
    ld hl, sp-$1f
    rst $38
    ld a, h
    db $e3
    db $fc
    add e
    db $fc
    inc bc
    cp h
    ld b, e
    cp $c4
    pop hl
    rst $28
    rst $38
    rst $10
    ld a, a
    db $ed
    ld a, a
    rst $30
    rst $38
    ccf
    ld l, e
    cp a
    db $76
    sbc a
    ei
    rra
    push af
    rst $38
    rra
    ld a, [$dd0f]
    daa
    ld a, $c7
    ccf
    rst $38
    jp $c33e


    ccf
    pop bc
    jp $c33d


    ld a, a
    dec a
    db $ed
    rst $38
    db $d3
    inc a
    ld a, [hl]
    add c
    and b
    rst $20
    rst $38
    jp $e3bc


    sbc h
    cp h
    jp $c37c


    push de
    cp h
    cp $e0
    ld h, e
    and b
    ldh [$57], a
    and h
    ldh [$7d], a
    rst $38
    rst $28
    db $d3
    rst $28
    rst $38
    nop
    add b
    db $e3
    cp e
    db $f4
    ld e, e
    rst $38
    db $f4
    xor h
    di
    ld l, h
    di
    cp h
    db $e3
    ld l, h
    rst $38
    di
    cp e
    db $f4
    db $db
    db $f4
    cp l
    jp $ffe7


    rst $38
    cp d
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    cp $ff
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    ld l, a
    cp $8e
    ldh [$af], a
    ld a, a
    or l
    ld a, a
    rst $28
    ld a, a
    ld d, a
    ld e, h
    xor $e2
    db $fd
    pop hl
    db $dd
    rst $38
    ld [hl], a
    ld e, h
    ldh [rHDMA5], a
    ldh [$e0], a
    rra
    xor a
    rst $38
    rst $18
    rst $38
    or a
    db $fc
    ldh [$f8], a
    push hl
    rst $38
    push hl
    ld l, $de
    push hl
    ld e, a
    rst $38
    cp a
    cp [hl]
    ldh [$bf], a
    ld hl, sp-$1a
    cp a
    db $e3
    jp z, $e1f8

    ld e, a
    ret z

    ldh [$5f], a
    ret nc

    and $c7
    push hl
    db $fd
    rst $38
    rst $30
    rst $30
    rst $38
    jp c, $c0fe

    xor a
    cp $df
    ld hl, sp-$01
    ld l, a
    ld hl, sp-$21
    ldh a, [$03]
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rrca

Jump_053_5fc9:
    rst $38
    ld a, [de]
    rst $38
    ld [hl], $fd
    ld hl, $dffe
    ld hl, sp-$09
    xor l
    di
    rst $38
    ld h, d
    ldh [rHDMA2], a
    db $fd
    rst $18
    ld d, l
    xor d
    jr nz, @-$1f

    ld a, [bc]
    ld e, d
    ldh [$af], a
    rst $38
    rst $38
    add e
    rst $38
    ld c, l
    rst $30
    sub e
    rst $28
    ld c, a
    rst $30
    rst $38
    and e
    rst $38
    ret


    rst $30
    and a
    ei
    ret


    rst $30
    db $fd
    or $be
    ldh [$ea], a
    rst $38
    or b
    rst $38
    db $eb
    db $fc
    rst $38
    ld b, c
    cp $a8
    rst $30
    ld b, $fb
    db $dd
    sbc e
    rst $38
    sbc l
    ld c, a
    daa
    rla
    and e
    di
    db $db
    pop hl
    rst $38
    xor $f1
    or h
    ei
    reti


    rst $38
    jp c, Jump_053_579f

    sbc l
    ld c, a
    ld h, $f0
    ld [c], a
    ld l, [hl]
    ldh a, [$e0]
    ld sp, hl
    add b
    xor $7f
    rst $38
    nop
    rst $18
    nop
    cp $00
    ei
    ld a, [$fde0]
    ld a, a
    ld_long a, $ffe0
    nop
    xor [hl]
    nop
    rst $30
    nop
    rst $38
    db $dd
    nop
    ld l, e
    nop
    sub $00
    cp e
    nop
    rst $30
    rst $28
    nop
    ld [hl], l
    xor $e0
    rst $38
    nop
    db $db
    inc h
    rst $38
    cp $01
    push af
    ld a, [bc]
    jp c, $f425

    dec bc
    rst $38
    add sp, $17
    add sp, $17
    or c
    ld c, [hl]
    jp hl


    ld d, $ff
    jp nc, Jump_053_632c

    sbc h
    ret nc

    ld l, $e9
    ld d, $ff
    or h
    ld c, e
    rst $28
    db $10
    ld a, l
    add d
    rst $10
    jr z, @+$01

    xor d
    ld d, l
    ld b, l
    cp d
    add b
    ld a, a
    jr @-$17

    rst $38
    ld l, [hl]
    add c
    ld a, [hl]
    cp l
    jr @-$17

    add b
    ld a, a
    rst $38
    ld b, l
    cp d
    xor d
    ld d, l
    rst $10
    jr z, jr_053_6109

    add d
    rst $38
    rst $28
    db $10
    ld e, a

jr_053_6091:
    add b
    rla
    ldh [$83], a
    ld a, b
    rst $38
    ld d, c
    xor h
    xor e
    ld d, h
    ldh a, [$0e]
    xor c
    ld d, [hl]
    rst $38
    db $f4
    dec bc
    db $f4
    dec bc
    xor c
    ld d, [hl]
    pop af
    ld c, $ff
    xor d
    ld d, h
    ld d, d
    xor h
    add h
    ld a, b
    jr jr_053_6091

    rst $38
    ld l, b
    add b
    ld a, a
    cp a
    rra
    rst $28
    add a
    ld a, a
    cp a
    ld d, e
    xor a
    xor e
    ld d, l
    pop af
    rrca
    ldh [$e1], a
    ld d, a
    rst $38
    nop
    adc [hl]
    nop
    rla
    nop
    adc d
    nop
    rlca
    rst $38
    nop
    ld c, d
    ld b, b
    dec b
    nop
    ld [bc], a
    nop
    sub b
    cp a
    nop
    adc b
    nop
    ld de, $8001
    db $fc
    ldh [$c0], a
    rst $38
    ld b, b
    ld de, $0201
    ld [bc], a
    ld b, l
    ld b, b
    ld [bc], a
    rst $38
    nop
    ld b, b
    ld b, b
    and d
    and b
    ld b, b
    ld b, b
    and b
    ld a, a
    and b
    ld d, l
    ld d, l
    ld [$41ea], a
    ld b, c
    db $ec
    ldh [rIE], a
    ld b, l
    inc hl
    inc hl
    ld b, l
    ld b, l
    xor e
    xor e
    ld d, a
    rst $38
    ld d, a
    rst $38
    rst $38

jr_053_6109:
    sub b
    nop
    adc c
    nop
    ld de, $00ff
    add e
    nop
    ld [de], a
    nop
    rst $00
    ld b, b
    dec e
    rst $38
    nop
    ld [hl], a
    nop
    cp $ff
    cp $fe
    db $f4
    cp a
    ld a, [$f2f6]
    pop af
    or $fe
    db $fc
    ldh [$f4], a
    rst $18
    ld a, [$7fff]
    ccf
    ld a, a
    db $fc
    ldh [rIE], a
    rst $38
    rst $38
    ld a, a
    cpl
    rst $30
    db $eb
    ld h, a
    inc hl
    rst $28
    ld sp, hl
    rst $38
    cp $fe
    cp $eb
    or $ee
    and $e3
    dec sp
    xor $fe
    db $fc
    ldh [$e8], a
    or $ff
    db $ec
    ldh [$fc], a
    ld [c], a
    rst $28
    ld b, a
    inc de
    rst $28
    rst $00
    ret c

    ldh [$f5], a
    ld a, [$fefc]
    cp l
    pop hl
    cp $dd
    cp $f3
    db $fc
    ld d, l
    ld [$f2fb], a
    db $fd
    call nz, Call_000_3fe3
    rst $38
    rst $30
    ld a, a
    ld a, $fc
    ld c, h
    and b
    cp b
    ldh [rIE], a
    ld a, [$fdfa]
    db $fd
    cp $ef
    db $fc
    db $fd
    ld a, [$32fc]
    jp nz, $dfff

    cp a
    cp a
    ld a, a
    ld c, a

jr_053_6188:
    ccf
    rst $18
    ccf
    sbc a
    db $e4
    ldh [$ef], a
    ld l, a
    rst $38
    ld e, a
    ccf
    cp $7f
    pop hl
    db $fd
    cp $a6
    and b
    db $fd
    cp $d8
    ldh [rIE], a
    db $fc
    xor a
    sbc a
    ld l, a
    rra
    or a
    rst $00
    ld a, a
    rra
    db $ec
    and c
    ld a, a
    rst $08
    ret c

    ldh [$f9], a
    db $fd
    cp $c8
    db $e3
    cp $fe
    rst $28
    cp $7e
    db $fd
    rst $18
    or $ff
    sbc a
    rst $38
    cpl
    ld a, d
    and b
    rst $18
    ccf
    rst $18
    rst $20
    sbc a
    rst $28
    rra
    call $e2d8
    rst $08
    rst $10
    rst $38
    db $e3
    db $db
    add e
    cp e
    ret


    or c
    pop hl
    sub l
    rst $28
    ld [hl], $00
    and c
    add c
    ld l, a
    and c
    rst $28
    rst $08
    rst $08
    rst $38
    rst $38
    sub a
    and a
    db $db
    and e
    sbc a
    db $e3
    ccf
    rst $38
    ld b, e
    ei
    ei
    cp $fe
    ld a, a
    ld a, [hl]
    ld hl, sp-$01
    ldh a, [$a6]
    sbc d
    pop hl
    add c
    daa
    daa
    rst $38
    rst $38
    rst $38
    sub c
    ld b, c
    ld b, d
    add b
    db $e3
    jr nz, jr_053_6188

    rst $30
    nop
    or e
    or e
    adc [hl]
    ldh [$fe], a
    cp a
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_053_632c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
    ld h, [hl]
    rst $38
    db $e4
    sbc c
    sub [hl]
    sub [hl]
    ld h, [hl]
    sub [hl]
    di
    ldh [$e3], a
    ld de, $ff99
    ldh [$f0], a
    pop hl
    rst $20
    db $e4
    ld l, c
    sub c
    ld l, c
    dec e
    sub c
    di
    ldh [$99], a
    ld h, [hl]
    ld l, c
    cp $e0
    rst $38
    ldh a, [$d1]
    db $e4
    sbc b
    db $dd
    ld [c], a
    reti


    pop hl
    xor $e3
    ld de, $c811
    pop hl
    call nz, Call_000_11e1
    ld c, h
    rst $38
    ldh [$ad], a
    pop hl
    sbc c
    ld de, $e3fe
    ldh a, [$ef]
    sub c
    and $e1
    db $fc
    ret c

    ld [c], a
    db $e3
    ld [c], a
    add hl, de
    add hl, de
    sbc c
    add hl, de
    sub [hl]
    sbc c
    ld a, a
    ld h, [hl]
    ld de, $1117
    ld [hl], a
    rla
    ld [hl], a
    rst $38
    rst $38
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
    ldh a, [$ef]
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    nop
    nop
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
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
    ld b, b
    ld h, [hl]
    ld b, b
    ld l, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_053_673f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_053_67fd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_053_6b2d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_053_6de1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $49
    ld l, [hl]
    adc d
    ld [hl], d
    sbc h
    ld [hl], a
    cp e
    ld [hl], a
    ccf
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $ff
    db $e3
    or $ef
    cpl
    dec l
    dec c
    ld c, l
    ld c, l
    sbc $e0
    dec l
    or $e0
    db $fc
    ldh [rSC], a
    call nc, Call_000_0ef3
    pop bc
    db $e3
    cp e
    pop hl
    or $ed
    cp a
    pop hl
    and e
    ldh [$c0], a
    rst $20
    nop
    call nc, $a7f2
    push af
    adc c
    ld [c], a
    ret nz

    db $e3
    cp c
    ldh [$c0], a
    db $e3
    ld e, c
    ld a, [c]
    add l
    pop af
    jr c, jr_053_6ef4

    db $e4
    add b
    ldh [$fe], a
    pop hl
    ld c, l
    ld c, l
    dec l
    ld a, a
    add sp, $4f
    db $eb
    ldh a, [rP1]
    db $f4
    rst $08
    ldh [$8b], a
    ldh [$c5], a
    pop hl
    ld c, l
    ld c, l
    ld l, l
    ld l, e
    ldh [$bd], a
    ldh [$be], a
    ld [c], a
    add hl, sp
    db $e4
    nop
    cp $c9
    jp $0d2d


    ld l, l
    add c
    ld c, e
    ld a, a
    db $e3
    xor a
    db $e3
    xor a
    ret nz

    nop
    rst $38
    ld d, c
    ld [c], a
    ret


    jp $ff0d


    ld l, l
    dec bc
    dec c
    dec c
    ld a, [bc]
    ld l, e
    ld l, e
    ld a, [bc]
    add c
    ld a, [bc]
    inc a
    pop hl
    add b
    push hl
    nop
    db $fd
    inc c
    db $e3
    daa
    pop bc
    pop bc
    ld [c], a
    ld a, [bc]
    dec sp
    ld c, d
    ld a, [bc]
    db $fc
    ldh [$0d], a
    ld c, e
    ld c, e
    db $fc
    ret nz

    cp c
    jp Jump_000_00e6


    ei
    dec l
    dec l
    dec c
    pop bc
    ret z

    jp nz, Jump_053_4b4b

    dec c
    ld a, c
    dec bc
    jp $fde0


    pop hl
    dec c
    ld c, e
    dec c
    ld c, e
    cp h

jr_053_6ef4:
    ret nz

    ret nz

    db $fd
    ld [c], a
    nop
    db $fd
    or b
    and b
    jp z, Jump_000_03c1

    ldh [$c0], a
    ldh [$2a], a
    ld a, [hl+]
    sbc a
    dec bc
    dec bc
    dec hl
    dec bc
    dec hl
    cp $c2
    ld [$2dc4], a
    ld l, b
    nop
    db $fd
    ret nz

    pop bc
    ld b, d
    ldh [rWX], a
    add b
    ldh [$0d], a
    dec bc
    rst $38
    db $e4
    ret nz

    ld l, l
    pop bc
    ld a, [hl+]
    db $e3
    nop
    call c, $a02e
    pop bc
    ret nz

    jp nz, Jump_000_0de4

    dec c
    ld e, e
    dec hl
    dec bc
    cp c
    ldh [rOCPD], a
    ld l, e
    rst $30
    and c
    ld l, l
    ret nz

    push hl
    ld [$d700], sp
    ld e, l
    ld [c], a
    add c
    ret nz

    ld c, l
    ld b, h
    ldh [$8b], a
    pop bc
    add l
    push hl
    inc [hl]
    jp nz, Jump_000_35e0

    push bc
    nop
    rst $10
    inc h
    db $e3
    ld b, $e0
    adc e
    ldh [$0a], a
    ld a, [bc]
    ld l, d
    ld [$e143], sp
    add h
    ldh [$7c], a
    and e
    ld l, l
    ld b, l
    jp $e540


    nop
    or e
    sub d
    add c
    ld a, [hl]
    rst $00
    ret nz

    ld l, e
    ld l, e
    ld c, e
    ld a, [bc]
    ld l, d
    ld a, [bc]
    add $c0
    dec d
    dec bc
    jp Jump_053_6de1


    ld [hl], b
    ldh [rKEY1], a
    ei
    add b
    sub l
    add h
    nop
    cp c
    ld l, d
    add hl, bc
    jp $ff6b


    ldh [rWY], a
    adc b
    ret nz

    ld a, [bc]
    dec bc
    add c
    and b
    ld b, b
    adc d
    jp $81f4


    inc d
    add l
    nop
    or [hl]
    sbc a
    call nz, $e1c1
    dec hl
    adc b
    jp Jump_053_4100


    and b
    jp z, Jump_053_44c3

    and e
    nop
    sbc l
    sub d
    add e
    add c
    ldh [rOBP1], a
    jp $e105


    ret nz

    ld b, h
    add c
    ret nz

    and $00
    sbc c
    ld e, [hl]
    add d
    ld d, h
    add c
    add b
    ldh [$0d], a
    dec bc
    ld a, [hl]
    add a
    and b
    dec bc
    ld l, e
    ld a, [bc]
    ld l, d
    dec bc
    ld l, e
    inc b
    add c
    add b
    ld [hl], c
    add e
    add l
    adc a
    nop
    adc c
    ld h, a
    and e
    adc c
    and d
    adc a
    jp nz, $c086

    ld c, e
    rrca
    ld a, [hl+]
    ld a, [hl+]
    ld c, e
    ld l, e
    ld b, h
    ld h, d
    ld c, c
    and [hl]
    nop
    sbc e
    ld b, l
    pop bc
    or h
    inc de
    add b
    ld [bc], a
    ldh [$0d], a
    ld c, h
    and b
    ld c, e
    ld l, e
    ld b, h
    pop bc
    ld l, l
    nop
    sbc $5b
    nop
    ld l, e
    inc c
    and b
    adc [hl]
    and b
    ld c, c
    ldh [$0c], a
    and b
    rst $30
    jp $834f


    inc h
    sbc $56
    adc a
    ld l, e
    dec l
    ld b, a
    and c
    ld b, l
    ret nz

    ld a, [bc]
    ret nz

    and $ca
    and d
    ld [hl], b
    sbc $57
    nop
    db $eb
    add [hl]
    and c
    ld b, d
    ret nz

    dec hl
    ld a, [hl+]
    ld a, [hl+]
    ld b, d
    ret nz

    add e
    dec hl
    ld c, e
    add c
    push hl
    sbc $5b
    inc d
    ld b, a
    ret nz

    db $e3
    sub d
    ld h, b
    ld l, d
    ld c, $03
    ret nz

    ld a, [bc]
    dec hl
    dec hl
    jp z, $8280

    ret nz

    ld a, [bc]
    call nc, Call_053_4f00
    sbc $81
    jp Jump_053_6b2d


    dec hl
    ld a, [bc]
    ld b, c
    pop hl
    dec bc
    dec hl
    add hl, bc
    dec hl
    cp b
    and c
    ld c, e
    ld h, d
    ld c, l

Jump_053_704d:
    nop
    rst $38
    ld [hl+], a
    add e
    ld d, d
    ld b, c
    ret nz

    ldh [rTMA], a
    ld [$4ba1], sp
    ld l, e
    dec b
    ld h, b
    ld sp, hl
    add b
    dec hl
    call nz, $ff00
    ld c, c
    ld h, b
    ld b, h
    ld c, b
    ld h, d
    push bc
    add b
    dec c
    ld b, a
    ret nz

    inc b
    and b
    ld a, [hl]
    jp nz, $ac4d

    jp nz, $f200

    ld b, d
    nop
    db $fd
    ld d, l
    ld [hl+], a
    ccf
    ldh [$c2], a
    and e
    ld c, e
    ld h, h
    ld a, $e1
    dec sp
    inc h
    ld b, b
    ld a, e
    db $f4
    nop
    and $62
    ld h, h
    ret nz

    push hl
    ld a, [bc]
    ld h, c
    add hl, bc
    ld h, b
    ld c, e
    add h
    jr nz, jr_053_7095

jr_053_7095:
    nop
    ld b, h
    nop
    cp $c2
    add h
    ld a, [hl]
    add b
    ld a, [bc]
    ld h, c

jr_053_709f:
    ld a, [$bba3]
    jp Jump_000_22ef


    jr nc, jr_053_709f

    jp nz, $b900

    cp $a2
    add d
    add c
    ld l, e
    ld c, e
    ld a, a
    db $e3
    ld a, h

jr_053_70b3:
    add d
    add b
    ld a, d
    jp nz, $412b

    dec [hl]
    ld hl, $e1be
    nop
    sub a
    ld a, $c3
    pop bc
    ld h, b
    ld c, e
    inc b
    cp a
    pop hl
    db $fc
    ld h, d
    dec c
    jp $c440


    ld [hl+], a
    ld l, e
    ld b, e
    nop
    sbc e
    cp a
    add d
    nop
    cp a
    db $e4
    ld a, l
    ldh [$bb], a
    ld h, b
    inc sp
    pop hl
    ldh a, [$61]
    inc a
    pop hl
    or $b4
    add l
    jr z, jr_053_70e6

jr_053_70e6:
    ld d, h
    jp nz, $e3cf

    cp a
    push hl
    ld sp, hl
    and d
    add b
    inc bc
    pop hl
    ld b, d
    nop
    ld a, [hl-]
    ld b, l
    inc hl
    nop
    ld c, b
    add d
    ld b, d
    ld hl, $a0bb
    ret nz

    db $e3
    add b

Jump_053_7100:
    add $00
    sbc e
    add [hl]
    nop
    db $fd
    and d
    inc b
    ld b, $a1
    ld bc, $0b21
    cp b
    pop bc
    jr c, jr_053_70b3

    ld [hl], b
    ldh [$60], a
    pop bc
    and h
    ld hl, $7b40
    call Call_053_4b00
    jp nc, $bd81

    jp $e349


    ld a, [$2bc1]
    ld l, [hl]
    jp nz, $f700

    ld b, h
    and $02
    nop
    ld [hl], $7e
    db $e4
    ld d, b

jr_053_7131:
    ld [c], a
    ld a, b

jr_053_7133:
    ld h, d
    push af
    and e
    ld l, [hl]
    pop bc
    nop
    cp c
    and h
    nop
    ld e, d
    ld e, [hl]
    pop bc
    cp e
    ld b, h
    scf
    jp $807b


    db $76
    ld b, h
    inc a
    jp nz, Jump_053_7100

    add d
    nop
    ld sp, hl
    ei
    add h
    ld hl, sp+$26
    cp h
    and e
    cp d
    and e
    ld [hl], h
    add d
    ld [hl], c
    ld l, a
    nop
    nop
    dec hl
    sbc $02
    ld c, a
    add h
    ret nz

    ld b, b
    ld a, b
    and d
    rst $30
    and b
    ret nz

    and $00
    jp c, $9d00

    ld l, d
    jr c, jr_053_7131

    ld [hl], l
    jr nz, jr_053_7133

    db $ec
    ld a, e
    ld sp, $52a7
    cp b
    and c
    ld b, d
    jr nz, jr_053_717d

jr_053_717d:
    ret nz

    and $7e
    pop bc
    ld a, [$00a1]
    db $db
    or $a8
    adc [hl]
    and b
    ld [hl], h
    and d
    ld b, b
    db $e3
    nop
    pop af
    and c
    cp h
    ld [hl+], a
    or a
    inc h
    nop
    or l
    or $a6
    or a
    ld [bc], a
    inc sp
    and c
    ret nz

    rst $28
    ld bc, $002d
    rst $38
    or a
    and d
    ld [hl], h
    ld h, c
    cp l
    push bc
    or c
    and c
    or e
    ld b, d
    ldh a, [rSC]
    nop
    nop
    rst $38
    ld [hl], l
    adc b
    cp [hl]
    and l
    or e
    ld b, b
    db $dd
    ld b, d
    add c
    ld [c], a
    nop
    rst $38
    push af
    add e
    nop
    ret nz

    db $e4
    ccf
    call nz, $0535
    nop
    rst $38
    ld a, [c]
    ld b, h
    or d
    ld h, d
    or $61
    ret nz

    jp hl


    nop
    nop
    rst $38
    sub l
    ld [hl+], a
    dec sp
    call nz, $e2bf
    ld [hl], h
    ld [bc], a
    ld a, l
    add d
    ei
    add h
    nop
    rst $18
    nop
    ld [hl], a
    and d
    ld [hl], d
    ld h, d
    or h
    jr nz, @+$36

    ld hl, $2172
    sbc c
    ld [bc], a
    nop
    rst $38
    ld c, $29
    inc c
    scf
    add b
    ei
    add h
    dec bc
    dec hl
    dec [hl]
    ld b, b
    db $fd
    add h
    nop
    db $dd
    db $ec
    ld h, l
    inc b
    dec hl
    ld b, d
    pop bc
    push hl
    dec bc
    cp l
    add e
    nop
    rst $38
    sub e
    rlca
    ret nz

    ldh a, [rP1]
    rst $38
    cp b
    ld [hl], c
    ld h, [hl]
    ld c, a
    ld b, b
    add d
    jr nz, jr_053_7244

    dec hl
    dec bc
    cpl
    jr nz, jr_053_724b

    db $10

jr_053_721f:
    xor d
    ld bc, $c2ff
    nop
    rst $38
    db $ec
    jp z, $c06b

    ldh [rIE], a
    call nz, Call_053_67fd
    nop
    nop
    rst $38
    ldh a, [rNR51]
    pop bc
    ret z

    add b
    pop hl
    nop
    rst $38
    ld [hl], c
    jp z, Jump_000_22b0

    jr c, @+$42

    inc b
    ld [hl], l
    ld h, b
    ld h, $01

jr_053_7244:
    ld l, l
    ld a, e
    ld de, $f800
    dec sp
    and h

jr_053_724b:
    push af
    jr nz, jr_053_724b

    pop hl
    db $10
    pop bc
    ldh [$31], a
    ld [bc], a
    nop
    rst $38
    ld a, e
    xor d
    ld c, l
    ld [hl], h
    ld b, d
    ld a, h
    jr nz, jr_053_721f

    ldh [rNR10], a
    nop
    cp a
    ld a, e
    ld l, e
    db $76
    ld h, e
    jr z, jr_053_728a

    ld l, l
    ld b, c
    ld b, h
    nop
    rst $38
    ld [hl], c
    and [hl]
    nop
    or d
    ld b, e
    ld [hl-], a
    and l
    db $eb
    add h
    inc h
    ld b, b
    nop
    rst $38
    nop
    push hl
    sub c
    ld hl, $23ae
    nop
    ld l, h
    ld b, e
    ld [$0083], a
    ld b, a
    nop
    nop
    nop

jr_053_728a:
    rst $38
    call c, $a0dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $eb
    db $e3
    db $e4
    or $f1
    and b
    rst $38
    ldh [$d0], a
    pop de
    and b
    ld a, a
    and b
    ret c

    reti


    and b
    and b
    sub $d7
    call nc, $fff1
    push hl
    and $e7
    and b
    add sp, -$17
    ld [$fbeb], a
    db $ec
    and b
    or $f0
    sub $d7
    and b
    push af
    or $3f
    jp nc, $a0d3

    and b
    jp c, $bcdb

    pop hl
    call nc, $f8f1
    add l
    or $67
    ldh [$89], a
    pop hl
    db $ed
    xor $d4
    push de
    rst $28
    add c
    and b
    cp c
    ldh [$bc], a
    ldh [$59], a
    pop af
    add l
    push af
    ld [hl], c
    ld [c], a
    adc c
    ldh [$f0], a
    rst $38
    pop af
    ld a, [c]
    di
    db $f4
    sbc a
    sbc l
    sbc l
    and d
    pop hl
    sbc a
    ld e, c
    di
    nop
    or $05
    ldh [$8b], a
    ldh [$9f], a
    and d
    sbc l
    ld a, [hl]
    rst $38
    ldh [$9c], a
    ld b, [hl]
    or d
    or d
    sbc h
    sbc a
    db $fd
    pop bc
    pop af
    and b
    ld c, a
    db $ed
    nop
    push af
    ret


    jp nz, $9fa0

    sbc h
    ld b, [hl]
    rst $38
    ld a, c
    ld a, d
    ld a, e
    ld a, e
    ld a, e
    ld a, h
    ld a, l
    or d
    ld h, e
    or d
    sbc [hl]
    cp c
    jp nz, $ff00

    add l
    ld [c], a
    and b
    and b
    ret


    pop bc
    cp $c1
    pop hl
    ld a, [hl]
    ld d, b
    ld b, [hl]
    ld b, [hl]
    ld d, b
    ld d, b
    ld a, a
    add c
    ld a, l
    ld a, a
    pop hl
    cp c
    pop bc
    nop
    rst $38
    ld c, e
    pop bc
    ret


    jp nz, $e2c1

    ld c, d
    rst $38
    ld e, l
    ld d, l
    ld b, a
    ld e, l
    ld e, l
    ld d, l
    add c
    ld b, [hl]
    ld h, c
    ld b, [hl]
    ld a, $e0
    cp c
    ret nz

    nop
    cp $0c
    ret nz

    sub $d7
    ret


    jp nz, $9eff

    ld b, [hl]
    ld b, [hl]
    add b
    ld b, [hl]
    ld c, a
    ld h, c
    ld d, l
    scf
    ld d, e
    ld d, h
    ld h, c
    ret nz

    ldh [$b2], a
    ld b, [hl]
    ld a, $e0
    ld h, l
    ld [c], a
    ldh a, [rP1]
    db $fd
    pop de
    and d
    inc bc
    ld [c], a
    ret nz

    ldh [rHDMA5], a
    ld d, d
    ld a, [hl+]
    cpl
    ld c, a
    inc l
    ld sp, $8c2b
    cp $c3
    ld [$a0c2], a
    nop
    db $fd
    or $d1
    and c
    sbc a
    and d
    pop bc
    ldh [rDMA], a
    add d
    add e
    scf
    rst $30
    jr c, jr_053_73b7

    jr nz, @+$01

    ldh [rSCY], a
    add c
    or d
    or d
    ld sp, $b3a1
    and e
    nop
    call c, $c15b
    push af
    or $83
    pop hl
    ld c, d
    ret nz

    rst $38
    add l
    add a
    ld [hl], d
    ld l, h
    ld hl, $2f2f
    inc l
    rlca
    dec hl
    add e
    add h
    ld a, $c0
    or e
    and h
    nop

jr_053_73b7:
    ret c

    rrca
    and b
    inc d
    and c
    db $fd
    sbc a
    dec c
    ret nz

    ld b, [hl]
    ld d, b
    or d
    or d
    or d
    scf
    rst $18
    jr c, jr_053_7437

    ld [hl], b
    ld [hl], c
    adc b
    rst $38
    ldh [$87], a
    add l
    ret nz

    rst $38
    and b
    or e
    and d
    nop
    ld sp, hl
    ret nc

    add c
    inc d
    and b
    add e
    ld [c], a
    ld d, c
    ld e, a
    rst $38
    ld d, d
    or d
    ld [hl], $35
    dec [hl]
    dec sp
    jr c, jr_053_741f

    dec c
    sbc h
    cp h
    and c
    sbc l
    sbc a
    pop bc
    and d
    cp l
    jp $b600


    sub d
    add d
    sbc $44
    ld [c], a
    ld c, d
    ld d, d
    ld d, e
    ld d, e
    pop bc
    ldh [$36], a
    or d
    ld bc, $c69c
    ldh [$87], a
    jp $807a


    nop
    cp l
    ret


    and c
    dec b
    ld [c], a
    ret nz

    ldh [$9f], a
    ld [hl], $3b
    swap l
    ld a, [hl-]
    jp z, Jump_000_3dc0

    add c
    push af
    and c
    or $74

jr_053_741f:
    add b
    ld a, d
    add c
    nop
    jp c, $8392

    and c
    pop bc
    pop hl
    ld b, l
    rla
    scf
    jr c, @+$37

    rst $38
    ldh [$39], a
    ld [$3da2], sp
    add c
    db $fd
    ld h, b

jr_053_7437:
    db $f4
    nop
    sbc a
    ret


    and l
    ld b, [hl]
    ld b, $e1
    dec [hl]
    dec [hl]
    jr c, @+$39

    add b
    add hl, bc
    and c
    dec a
    add e
    db $fd
    ld h, b
    nop
    sbc e
    adc b
    and d
    rla
    add c
    adc c
    and b
    or d
    rst $38
    ld [hl], $bb
    dec [hl]
    swap l
    ld [hl], $47
    ld d, d
    add c
    ld b, l
    adc e
    and b
    adc d
    call nz, $8e85
    nop
    adc e
    rst $18
    call nz, $828c
    or d
    rst $38
    or d
    cp e
    cp e
    dec [hl]
    dec [hl]
    ld a, [hl-]
    ld b, l
    ld d, h
    pop bc
    ld d, e
    ret nz

    ldh [$8a], a
    add $00
    sbc a
    ld b, l
    pop bc
    ld b, $c1
    ld b, [hl]
    add hl, sp
    ld a, a
    cp e
    rst $08
    rst $08
    dec [hl]
    add hl, sp
    ld b, l
    ld b, l
    res 0, c
    ld hl, sp+$04
    ld h, b
    sbc $58
    ld a, [bc]
    adc h
    sbc a
    sbc h
    or d
    or d
    ld b, l
    rst $38
    ld c, b
    ld d, e
    ld a, $cf
    call z, $bbce
    or d
    push bc
    or d
    ccf
    and b
    sbc [hl]
    inc b
    ld h, d
    sbc $56
    nop
    db $eb
    and b
    and b
    ld a, l
    sbc [hl]
    set 4, b
    ld b, l
    ld c, e
    ld h, c
    ld a, $ce
    ret nz

    db $e4
    ldh [$8a], a
    ld h, b
    sbc $59
    nop
    db $eb
    sub c
    ld b, b
    ret nz

    ld [c], a
    ld d, l
    ld d, d
    ld a, [hl-]
    adc d
    ret nz

    ldh [$3a], a
    add c
    pop hl
    and c
    add l
    ld hl, sp+$00
    ld l, h
    ld a, [de]
    ld b, d
    sbc [hl]
    cp $4c
    ldh [rWY], a
    ld d, d
    add hl, sp
    rst $08
    call z, $cecb
    ld bc, $ba3e
    and c
    ld c, e
    ld h, b
    dec sp
    ld b, b
    nop
    rst $38
    ld a, [bc]
    add c
    ld b, $a4
    ld b, c
    db $e3
    rrca
    call z, Call_000_3ece
    xor [hl]
    ld b, b
    add b
    jp z, $c440

    ld hl, $ff00
    db $fc
    adc a
    ld b, b
    inc e
    ld b, b
    and b
    and b
    and c
    ld b, [hl]
    ld b, h
    ld c, l
    dec a
    ld d, d
    ld bc, $cde0
    rst $08
    ld a, [hl-]
    xor a
    cp a
    pop hl
    ret nz

    jp Jump_053_7bf8


    ld hl, $ff00
    ld d, l
    ld hl, $469e
    ld b, l
    ld b, e
    or d
    add hl, sp
    add hl, sp
    ld b, d
    ret nz

    pop bc
    and b
    xor a
    xor [hl]
    xor [hl]
    dec bc
    ld h, h
    or d
    ld b, d
    ld hl, sp+$00
    cp $c3
    add h
    add hl, bc
    add b
    cp e
    rst $08
    call $cfcd
    ld b, b
    cp a
    ldh [$7d], a
    ldh [$08], a
    ld b, c
    ld a, e
    inc h
    nop
    db $fc
    ld d, l
    inc hl
    sbc [hl]
    ret nz

    ld [c], a
    ld h, [hl]
    rst $38
    ret nz

    call z, Call_000_00cf
    and b
    cp a
    pop hl
    sbc l
    sbc a
    ret z

    ld h, h
    add sp, $00
    cp h
    and d
    ld h, e
    ld [bc], a
    and c
    or d
    ld b, b
    ret nz

    call z, $cbcc
    ld b, $7f
    add b
    ld [hl], $af
    cp e
    jp Jump_000_00b8


    jp nz, Jump_000_0062

    cp e
    cp $a2
    jr nz, jr_053_757b

    ld h, c
    ccf
    ret nz

    ld a, a
    ld [c], a
    ccf
    add b
    db $f4

jr_053_757b:
    ld h, c
    sbc h
    ld [bc], a
    jr nz, jr_053_75eb

    ld b, h
    ld e, b
    nop
    sbc e
    call c, $c7e0
    ld b, d
    ld b, l
    ld [hl], $bf
    pop hl
    adc $fe
    ld h, b
    ld b, b
    cp d
    and d
    call nz, $c222
    ld h, d
    nop
    cp h
    ld b, a
    ld b, d
    cp a
    db $e4
    call $e27f
    add l
    inc a
    ld a, [$4682]
    pop bc
    ld b, $00
    ld a, [hl-]
    adc l
    ld [bc], a
    ld a, $e2
    ld b, [hl]
    ld [$4086], sp
    inc a
    ldh [$3e], a
    ldh [$39], a
    cp c
    add d
    add b
    ld [bc], a
    nop
    ld a, a
    cp l
    ld h, d
    add b
    ld b, b
    ld h, d
    ld b, h
    ld b, b
    ld a, l
    ldh [$fe], a
    ret nz

    cp $40
    ld a, [c]
    ld [c], a
    add b
    nop
    jp c, $db61

    add c
    jr nz, jr_053_75d2

jr_053_75d2:
    dec sp
    cp $c6

jr_053_75d5:
    cp a
    ld [c], a
    dec [hl]
    jr c, jr_053_75d5

    ld b, b
    dec c
    ld [hl], $3f
    db $e3
    ld b, [hl]
    sbc [hl]
    cp b
    and b
    add c
    ld [hl+], a
    nop
    ld e, d
    cp $c6
    ld [hl-], a
    ret nc

jr_053_75eb:
    nop
    ld b, l
    add d
    ld b, b
    cp $20
    jr c, jr_053_762a

    pop bc
    pop hl
    jp nz, $9000

    add c
    dec h
    nop
    jr c, @+$56

    and b
    db $dd
    nop
    sbc a
    rst $08
    ld hl, $00c2
    add hl, sp
    ld bc, $f536
    and b
    dec sp
    add $b9
    and e
    nop
    db $fc
    dec sp
    and c
    or a
    add d
    ld [hl], l

jr_053_7615:
    add d
    rrca
    ld a, [hl-]
    ld [hl], $b2
    add hl, sp
    dec sp
    pop bc
    scf
    ld h, b
    cp c
    and e
    nop
    ld e, e
    jr c, jr_053_76a0

    add b
    db $dd
    dec b
    or [hl]
    and e

jr_053_762a:
    add hl, sp
    dec [hl]
    ld [hl], $37
    ld b, d
    cp d
    and d
    add b
    or e
    ld h, b
    ld e, a
    ld b, b
    nop
    ld a, e
    ld d, e
    ld b, [hl]
    or h
    ld h, c
    cp b
    and c
    cp e
    ld hl, $1935
    dec [hl]
    or h
    ld h, d
    dec [hl]
    ld b, b
    ret c

    reti


    nop
    jp c, Jump_000_08f6

    ld d, h
    jr nz, jr_053_75d2

    ld hl, sp+$21
    ld b, l
    ld bc, $c0e1
    rst $20
    ld a, $20
    nop
    db $db
    jr @+$69

    push af
    dec b
    or $38
    jr nz, jr_053_7615

    ld bc, $80e2
    ld [c], a
    ld a, [hl]
    pop bc
    or $61
    nop
    db $db
    ld [$2971], sp
    inc [hl]
    ld b, c
    ld a, a
    db $e4
    ld a, $eb
    ld h, c
    di
    ld b, h
    nop
    reti


    or $28
    nop
    ld [hl], l
    add d
    ld a, d
    and b
    ld a, a
    ld [c], a
    ret nz

    and $7b
    adc [hl]
    and a
    ld d, h
    ld [hl], l
    add l
    ld a, [c]
    jr nz, jr_053_768f

jr_053_768f:
    or [hl]
    ld bc, $c03f
    di
    inc hl
    ld a, e
    adc [hl]
    ld [hl+], a
    ld d, [hl]
    ld [hl], l
    add a
    cp [hl]
    and [hl]
    ld [hl-], a
    ld b, c
    nop

jr_053_76a0:
    and d
    and b
    ld [hl], c
    ld c, d
    nop
    ld hl, sp+$77
    and c
    di
    ld [bc], a
    ccf
    ret z

    cp $82
    nop
    rst $38
    add b
    ld [hl], c
    ld [bc], a
    ld [hl], a
    and c
    or h
    add c
    ei
    and c
    rst $38
    and h
    cp $85
    nop
    rst $18

jr_053_76bf:
    db $e4
    nop
    adc h
    ld b, h
    ld sp, $ba61
    and b
    ld a, a
    and h
    and d
    and e
    nop
    rst $38
    ld c, $20
    ld [hl], a
    and h
    ld [bc], a
    ld [hl], d
    ld h, e
    ccf
    rst $38
    add d
    di
    jr nz, jr_053_76bf

    add e
    nop
    rst $38
    db $ec
    ld h, h
    or d
    ld h, d
    ld l, $6e
    nop
    ld b, e
    ld b, c
    ld b, e
    db $fd
    ldh [rLYC], a
    or d
    ld hl, $4079
    ld [hl], b
    nop
    rst $38

jr_053_76f1:
    sub e
    dec b
    xor [hl]
    ld [bc], a
    db $76
    ld h, b
    dec sp
    dec [hl]
    dec sp
    db $fd
    ldh [$83], a
    ld [hl], $45
    db $fd
    add d
    nop
    rst $38
    or $86
    ld a, [$3681]
    ld h, b
    inc a
    dec sp
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    inc a
    ld b, h
    pop af
    inc bc
    nop
    rst $38
    db $fc
    db $ec
    ld b, $7e
    pop bc
    or d
    ld b, d
    dec [hl]
    ld l, c
    and e
    dec [hl]
    rra
    dec [hl]
    and e
    ld l, d
    dec [hl]
    ld b, d
    db $fd
    add e
    nop
    rst $38
    nop
    add sp, -$80
    xor a
    jr nz, jr_053_76f1

    ldh [$fb], a
    ld h, c
    ret nz

    ld [c], a
    nop
    rst $38
    nop
    db $ec
    ld l, a
    jr nz, jr_053_7781

    rla
    inc a
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    ld b, b
    ld [c], a
    nop
    rst $38
    nop
    db $eb
    ld [bc], a
    ld [hl], c
    ld b, b
    ld b, l
    ret nz

    add $79
    inc hl
    nop
    rst $38
    db $ec
    rlca
    dec sp
    and d
    ld b, b
    push bc
    sub b
    cp $43
    nop
    rst $38
    db $ec
    ld h, $10
    and e
    sbc a
    ld [hl], h
    ld b, c
    add c
    add b
    sbc l
    ld b, b
    cp a
    ld b, b
    ret nz

    add c
    nop
    rst $38
    db $ec
    ld h, l
    ld c, $45
    cpl
    ld b, d
    sbc a
    ld [hl+], a
    ld hl, $be00
    inc hl
    nop
    rst $38
    or $43
    or d

jr_053_7781:
    ld b, e
    adc e
    ld h, d
    ld [hl+], a
    ld [bc], a
    cp [hl]
    dec h
    nop
    rst $38
    jr nc, jr_053_7807

    add l
    sub c
    ld hl, $618b
    ld [$d8c1], sp
    reti


    ld h, d
    ld b, l
    nop
    daa
    nop
    nop
    nop
    pop bc
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
    nop
    nop
    dec c
    add b
    cp $e0
    nop
    ld b, b
    ret c

    push hl
    rst $30
    and $ff
    rst $38
    rst $38
    rst $30
    nop
    nop
    nop
    ld bc, $2700
    inc b
    ld bc, $2801
    inc b
    ld bc, $2802
    dec b
    ld bc, $2903
    dec b
    ld bc, $2904
    ld b, $01
    dec b
    ld a, [hl+]
    ld [$0601], sp
    ld a, [hl+]
    add hl, bc
    ld bc, $2b07
    add hl, bc
    ld bc, $2a08
    ld a, [bc]
    ld bc, $2b09
    ld a, [bc]
    ld bc, $1d0a
    dec bc
    ld bc, $1e0b
    dec bc
    ld bc, $2a0c
    dec bc
    ld bc, $1c0d
    inc c
    ld bc, $1d0e
    inc c
    ld bc, $1e0f
    inc c
    ld bc, $1d10
    dec c
    ld bc, $2111
    ld c, $01
    ld [de], a
    jr nz, jr_053_7816

jr_053_7807:
    ld bc, $2113
    rrca
    ld bc, $2014
    db $10
    ld bc, $1715
    ld de, $1601
    rra

jr_053_7816:
    ld de, $1701
    jr nz, @+$13

    ld bc, $1618
    ld [de], a
    ld bc, $1819
    ld [de], a
    ld bc, $151a
    inc de
    ld bc, $161b
    inc de
    ld bc, $171c
    inc de
    ld bc, $181d
    inc de
    ld bc, $171e
    inc d
    ld bc, $111f
    dec d
    ld bc, $1220
    dec d
    ld bc, $1a21
    dec d
    ld bc, $1b22
    dec d
    ld bc, $1c23
    dec d
    ld bc, $1024
    ld d, $01
    dec h
    ld de, $0116
    ld h, $1a
    ld d, $01
    daa
    dec de
    ld d, $01
    jr z, jr_053_787a

    ld d, $01
    add hl, hl
    db $10
    rla
    ld bc, $112a
    rla
    ld bc, $1b2b
    rla
    ld bc, $102c
    jr jr_053_7872

    dec l
    dec de

jr_053_7872:
    ld a, [de]
    ld bc, $142e
    dec de
    ld [bc], a
    cpl
    inc e

jr_053_787a:
    dec de
    ld bc, $1330
    inc e
    ld bc, $1431
    inc e
    ld bc, $1532
    inc e
    ld bc, $1633
    inc e
    ld [bc], a
    inc [hl]
    dec e
    inc e
    ld [bc], a
    dec [hl]
    ld e, $1c
    ld bc, $1336
    dec e
    ld bc, $1437
    dec e
    ld bc, $1538
    dec e
    ld bc, $1639
    dec e
    ld [bc], a
    ld a, [hl-]
    rra
    dec e
    ld bc, $143b
    ld e, $01
    inc a
    dec d
    ld e, $02
    dec a
    jr nz, @+$20

    ld bc, $153e
    rra
    ld bc, $213f
    jr nz, jr_053_78bd

    ld b, b

jr_053_78bd:
    ld hl, $0121
    ld b, c
    ld [hl+], a
    ld hl, $4201
    daa
    ld hl, $4301
    jr @+$24

    ld bc, $2244
    ld [hl+], a
    ld bc, $2345
    ld [hl+], a
    ld bc, $2746
    ld [hl+], a
    ld bc, $2847
    ld [hl+], a
    ld bc, $1848
    inc hl
    ld bc, $1949
    inc hl
    ld bc, $1a4a
    inc hl
    ld bc, $224b
    inc hl
    ld bc, $234c
    inc hl
    ld bc, $264d
    inc hl
    ld bc, $274e
    inc hl
    ld bc, $284f
    inc hl
    ld bc, $2950
    inc hl
    ld bc, $1951
    inc h
    ld bc, $1a52
    inc h
    ld bc, $1b53
    inc h
    ld bc, $2354
    inc h
    ld bc, $2855
    inc h
    ld bc, $1a56
    dec h
    ld bc, $1e57
    dec h
    ld bc, $1f58
    dec h
    ld bc, $2759
    dec h
    ld bc, $1f5a
    ld h, $01
    ld e, e
    jr nz, @+$28

    ld bc, $205c
    daa
    ld bc, $1e5d
    ld a, [hl+]
    ld bc, $1e5e
    dec hl
    ld bc, $1f5f
    dec hl
    ld bc, $2960
    dec hl
    ld bc, $1d61
    inc l
    ld bc, $1e62
    inc l
    ld bc, $1f63
    inc l
    ld bc, $2864
    inc l
    ld bc, $2965
    inc l
    ld bc, $2a66
    inc l
    ld bc, $1e67
    dec l
    ld bc, $1f68
    dec l
    ld bc, $2069
    dec l
    ld bc, $286a
    dec l
    ld bc, $296b
    dec l
    ld bc, $2a6c
    dec l
    ld bc, $1f6d
    ld l, $01
    ld l, [hl]
    add hl, hl
    ld l, $01
    ld l, a
    inc hl
    inc [hl]
    ld bc, $2270
    dec [hl]
    ld bc, $2371
    dec [hl]
    ld bc, $2472
    dec [hl]
    ld bc, $2273
    ld [hl], $01
    ld [hl], h
    inc hl
    ld [hl], $01
    ld [hl], l
    inc h
    ld [hl], $01
    db $76
    inc hl
    scf
    rst $38
    rst $38
    rst $38
    and d
    ld a, c
    add a
    ld a, e
    db $eb
    ld a, l
    ld b, $7e
    ccf
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $fa
    rst $38
    db $f4
    rst $30
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld hl, sp+$5b
    rst $38
    db $f4
    ld hl, sp-$5f
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld b, e
    rst $38
    ld a, [$80ff]
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec a
    rst $38
    nop
    ld a, [$80ff]
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, e
    rst $38
    ld_long a, $ffff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    dec a
    rst $38
    ld a, [$80ff]
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld b, e
    rst $38
    ld b, e
    ld [c], a
    db $fd
    jp hl


    add b
    rst $18
    and a
    ldh a, [rSB]
    ldh [$c4], a
    db $e4
    rst $38
    rst $38
    nop
    ret nz

    push af
    db $dd
    rst $18
    ld b, e
    push af
    jp $80e5


    ld [c], a
    scf
    or $ad
    db $f4
    add [hl]
    db $e3
    ldh a, [$3d]
    push hl
    ei
    and $49
    rst $38
    ret nz

    jp hl


    ld c, l
    dec c
    ld c, l
    ld c, l
    jp Jump_053_4d2d


    cp $c4
    ret nz

    db $f4
    ld b, e
    rst $30
    pop bc
    and b
    ld l, l
    dec bc
    adc e
    ld c, e
    ld c, l
    cp l
    ldh [$2d], a
    or $c8
    add b
    rst $18
    ld b, l
    add $6d
    rst $28
    ld c, e
    ld c, e
    ld c, e
    dec bc
    db $fc
    ldh [rWX], a
    ld c, l
    dec l
    jr nc, jr_053_7a89

    rst $38
    db $ed
    xor l
    pop bc
    db $e3
    db $fd
    db $e4
    ld l, l
    dec c
    ld a, [hl-]
    push hl
    add b
    rst $18
    ld [hl], $95
    db $e4
    dec c
    ld c, l
    pop bc
    rst $20
    ld c, e
    ld l, l
    or b
    and a
    add b
    db $dd
    cp d
    sbc b
    push bc
    dec l
    ret nz

    pop hl
    dec hl
    dec bc
    dec bc
    ccf
    pop hl
    dec c
    ld [hl], b
    ret nz

    pop hl
    ld de, $c09f
    rst $20
    ld b, c
    ld [c], a
    dec bc
    ld c, e
    ld l, e
    ret nz

    ldh [$1f], a
    dec hl
    dec bc
    ld c, e
    dec bc
    ld l, l
    ld sp, $43c6
    rst $38
    db $10
    push bc
    cp [hl]
    ld b, c
    pop hl

jr_053_7a89:
    ld l, e
    ld l, e
    dec bc
    dec bc
    ld l, e
    ret nz

    jp Jump_053_704d


    cp [hl]
    push bc
    add b
    rst $18
    dec a
    db $e4
    add h
    ret nz

    ld l, e
    ld l, e
    ld c, e
    pop bc
    pop hl
    jr nz, jr_053_7b20

    jp nz, $ff43

    ld b, b
    res 0, b
    ld [c], a
    ccf
    push bc
    dec bc
    ccf
    jp nz, $df80

    ld d, $ca
    adc b
    ld c, l
    dec l
    add b
    ret z

    dec c
    cp $c2
    add b
    rst $18
    inc bc
    add $1e
    add b
    jp nz, Jump_000_0d0b

    dec c
    dec l
    ld a, a
    pop bc
    ld a, b
    and b
    dec a
    and h
    inc d
    dec a
    rst $38
    ret nz

    add sp, $0b
    ret


    and c
    dec l
    jp nz, $c0e3

    and c
    nop
    cp a
    ld [$a9bd], sp
    nop
    pop bc
    adc c
    ldh [rKEY1], a
    add h
    db $e3
    nop
    cp a
    cp l
    xor l
    ret nz

    db $e3
    add b
    db $fc
    ld l, b
    ld b, e
    rst $38
    ld a, l
    xor e
    cp a
    ret nz

    ret nz

    rst $38
    nop
    ld d, [hl]
    rst $38
    add d
    ld c, l
    ld b, c
    dec l
    ld c, c
    ld hl, sp-$80
    ld a, [hl]
    ccf
    rst $20
    rst $38
    rst $38
    ld b, b
    ld [hl], c
    ld l, l
    add hl, bc
    call nz, $5000
    rst $18
    ld b, $52
    add b
    jp $b5c9


    nop
    cp a
    ret nz

    jp nz, Jump_053_5fc9

    ret nz

    sub [hl]
    jr nc, jr_053_7b67

    and b
    ret nz

    rst $38
    add b
    inc d

jr_053_7b20:
    sbc h
    pop hl
    ld c, l
    dec l
    add $a8
    add b
    rst $18
    ld [$d080], sp
    ret


    ld e, a
    nop
    ld e, d
    ld c, l
    ret nz

    and e
    ld b, e
    rst $38
    ld a, d
    inc d
    ccf
    ld [c], a
    inc b
    add [hl]
    jp c, Jump_000_1c80

    ld c, l
    ld c, c
    add h
    rst $38
    rst $38
    ret nz

    rst $38
    dec a
    rst $38
    cp l
    or b
    nop
    inc c
    ld d, l
    add b
    rst $18
    cp $06
    ret


    ld e, a
    dec a
    add hl, sp
    call z, Call_053_673f
    ld sp, hl
    add h
    and [hl]
    nop
    add b
    rst $18
    ld a, [hl-]
    ld d, h
    ld d, a
    rst $38
    ld a, [$be3c]
    rst $38
    ld h, c
    cp $80

jr_053_7b67:
    rst $18
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, e
    rst $38
    ld a, [$80ff]
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    dec a
    rst $38
    ld c, a
    ld sp, hl
    db $f4
    ld [bc], a
    add b
    ld h, l
    nop
    nop
    nop
    ccf
    and b
    and b
    and b
    call c, $dedd
    ld a, [$f4ff]
    push af
    ccf
    db $e4
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    ld a, [$f4ff]
    push af
    ccf
    ld [$e6e5], a
    rst $20
    add sp, -$17
    ld a, [$f4ff]
    push af
    nop
    ld e, e
    rst $38
    ld a, [$5bfb]
    rst $38
    ld a, [$5bfb]
    rst $38
    ld a, [$5bfb]
    rst $38
    add b
    rst $18
    nop
    ld d, l
    rst $38
    add b
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    nop
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    add b
    rst $18
    ld e, e
    rst $38
    nop
    add b
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    ld c, a
    ld [$e9fd], a
    add b
    rst $18
    adc h
    ld d, l
    db $ed
    cp a
    pop hl
    sub $d7
    ld a, [$80e3]
    rst $18
    ld h, a

Jump_053_7bf8:
    ld a, [c]
    and b
    rra
    ret c

    reti


    and b
    ret nc

    pop de
    ld a, [$80e0]
    rst $18
    ld b, e
    ldh a, [$3e]
    add $e0
    jp c, $a0db

    jp nc, $fad3

    ldh [$bb], a
    ldh [$60], a
    scf
    push af
    ld b, e
    db $f4
    ld b, [hl]
    ldh [$c6], a
    ldh [$3e], a
    ret nz

    call nc, Call_000_39d5
    ret nz

    ret nz

    push af
    ld [c], a
    inc sp
    pop hl
    add b
    rst $18
    ld a, [hl+]
    and h
    ld b, [hl]
    ldh [$c6], a
    ldh [$9f], a
    sbc l
    inc hl
    sbc l
    sbc a
    cp e
    db $e3
    or $c0
    inc sp
    ldh [$a0], a
    add b
    rst $18
    add [hl]
    call nz, Call_053_46fe
    ldh [$a0], a
    sbc a
    and d
    sbc h
    ld b, [hl]
    ld b, [hl]
    sbc h
    rlca
    sbc l
    sbc l
    and d
    cp h
    ldh [$f6], a
    ret nz

    inc sp
    ldh [$80], a
    rst $18
    add [hl]
    push bc
    ld [hl-], a
    add h
    and b
    sbc a
    jp nz, $fee0

    db $e3
    sbc h
    sbc a
    or b
    ld [c], a
    add b
    rst $18
    jr c, @+$6f

    add [hl]
    adc d
    ret nz

    pop bc
    rst $20
    ld b, [hl]
    ld b, [hl]
    sbc [hl]
    ld a, [c]
    and d
    add b
    rst $18
    ld l, b
    inc c
    and d
    dec bc
    pop bc
    adc d
    ret nz

    sbc [hl]
    pop bc
    rst $20
    ld b, [hl]
    sbc [hl]
    ld a, a
    rst $00
    ldh a, [$80]
    db $dd
    dec bc
    jp nz, $c18a

    ret nz

    pop hl
    ld b, l
    ld b, e
    ld b, e
    ld b, l
    add b
    ld b, b
    ld [c], a
    ld a, [hl-]
    ret nz

    or h
    and d
    add b
    rst $18
    push bc
    jp nz, $a088

    ld [bc], a
    ld [c], a
    dec l
    rla
    cpl
    cpl
    ld a, [hl+]
    cp a
    ldh [$9e], a
    ld a, [hl-]
    pop bc
    add c
    pop bc
    add b
    rst $18
    jr c, jr_053_7cfb

    add e
    adc b
    and b
    ld b, c
    ld [c], a
    dec l
    jr nz, jr_053_7cd4

    ret nz

    pop hl
    ret nz

    ret nz

    ret nc

    ld l, [hl]
    jp $df80


    ld b, $a3
    adc b
    and b
    and c
    add e
    pop bc
    ld b, l
    dec hl
    pop bc
    dec hl
    ld b, b
    pop hl
    cp a
    db $e3
    add b
    rst $18
    ld b, $a8
    pop bc
    jp z, $4646

jr_053_7cd4:
    ld h, c
    and c
    ld hl, sp-$7f
    add b
    rst $18
    ld c, c
    add e
    adc d
    add b
    ret nc

    pop de
    ld b, c
    ret


    ld h, b
    rst $38
    and c
    ld [hl-], a
    and e
    add b
    rst $18
    adc d
    add e
    ld b, b
    jp $9d9c


    cp l
    and d
    add c
    sbc h
    dec sp
    and c
    dec a
    and d
    add b
    rst $18
    jr nc, jr_053_7d3c

jr_053_7cfb:
    adc d
    add b
    ld b, b
    jp Jump_000_009e


    ld a, h
    and c
    jp nz, Jump_000_33e2

    add h
    add b
    rst $18
    cp l
    and a
    ret nz

    ld [c], a
    cp [hl]
    add b
    cp a
    add b
    nop
    db $fc
    ld h, b
    or [hl]
    ld h, b
    nop
    cp a
    cp l
    xor d
    add b
    ld [c], a
    add $e3
    db $fc
    ld h, b
    add e
    pop hl
    ld [$df80], sp
    cp l
    xor b
    pop bc
    add c
    sbc [hl]
    add $e4
    db $fc
    ld h, b
    ld [hl], b
    add c
    add b
    rst $18
    inc b
    inc c
    ld b, a
    ld c, c
    ld h, b
    sbc [hl]
    adc b
    add b
    add $e3

jr_053_7d3c:
    nop
    ld e, a
    jp $bf4e


    add e
    or c
    sbc [hl]
    cp [hl]
    ld b, c
    nop
    ld e, a
    xor d
    ret nc

    call nc, $85d5
    pop bc
    sbc a
    nop
    cp [hl]
    ld b, c
    nop
    ld e, a
    ld b, $52
    add b
    jp $6178


    nop
    ld e, a
    ld b, $4d
    ld [$3041], sp
    ret nz

    jp nz, Jump_053_56c9

    add b
    ld a, e
    push de
    and c
    sbc a
    sbc h
    jp z, $c983

    or e
    inc c
    add b
    dec de
    ld c, $41
    sbc a
    sbc h
    ld c, d
    ld h, b
    db $fc
    inc hl
    add b
    rst $18
    add b
    jp nc, $ca00

    add h
    add b
    rst $18
    add b
    jp nc, Jump_053_40ff

    adc b
    ld h, d
    add b
    rst $18
    dec a
    inc [hl]
    ccf
    ld [c], a
    ld b, h
    add [hl]
    ret c

    add b
    ld e, $9e
    ld c, c
    ld b, b
    ld b, e
    ei
    add b
    dec de
    sbc a
    ld b, h
    jr nz, jr_053_7d9f

jr_053_7d9f:
    ld b, e
    ei
    add b
    ld a, [de]
    ei
    rst $20
    add b
    rst $18
    dec a
    jr nc, @+$12

    ld b, d
    ret


    ld d, [hl]
    add b
    dec e
    nop
    ret z

    and e
    call z, $8022
    rst $18
    dec a
    ld a, [c]
    ld a, [hl]
    ld bc, $a184
    add b
    rst $18
    dec a
    or $00
    ld hl, sp+$20
    add b
    rst $18
    ld h, a
    ld hl, sp+$43
    cp $80
    ret c

    ld a, [$00ff]
    cp c
    ld a, [$00ff]
    nop
    cp e
    ld a, [$00ff]
    cp a
    ld a, [$00ff]
    cp d
    ld a, [$00ff]
    cp e
    ld a, [$04ff]
    add b
    rst $18
    ld a, [$a0ff]
    nop
    nop
    nop
    pop bc
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
    nop
    nop
    ld bc, $fe80
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, $00
    nop
    nop
    rst $38
    rst $38
    rst $38
    push af
    push bc
    push de
    push hl
    ld a, $ff
    ld b, $01
    ld hl, $c330
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $0401
    rst $18
    ld a, [bc]
    inc de
    ld de, $4000
    ld h, $00
    add hl, de
    ld e, a
    ld d, $00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    cp $fe
    jr nz, jr_053_7e43

    jp Jump_053_7eb7


jr_053_7e43:
    add sp, -$02
    ld de, $c332
    push hl
    ld hl, sp+$02
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    ld d, h
    ld e, l
    ld b, $ff
    ld c, $03
    xor a
    ld hl, $c330
    ld [hl], a
    ld hl, $c338
    ld [hl], a
    inc hl

jr_053_7e5f:
    inc b
    ld a, [de]
    inc de
    cp $fe
    jr z, jr_053_7e9b

    cp $ff
    jr nz, jr_053_7e5f

    inc b
    ld a, b
    inc a
    ld [hl], a
    push de
    push hl
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    ld [de], a
    inc de
    inc de
    push hl
    ld hl, sp+$04
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    pop de
    ld a, [de]
    inc a
    inc de
    push hl
    push de
    ld d, a
    ld a, $04
    sub c
    ld hl, $c330
    ld e, a
    ld a, d
    ld d, $00
    add hl, de
    add hl, de
    inc hl
    ld [hl], a
    pop de
    pop hl
    inc hl
    dec c
    jr nz, jr_053_7e5f

jr_053_7e9b:
    ld a, c
    or a
    jr z, jr_053_7ead

    ld a, $ff
    dec hl
    ld [hl], a
    push hl
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    dec de
    dec de
    ld [de], a

jr_053_7ead:
    ld a, $01
    ld hl, $7ecb
    call Call_000_23e8
    add sp, $02

Jump_053_7eb7:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld hl, $7ecb
    call Call_000_2449
    pop hl
    pop de
    pop bc
    pop af
    ret


    rst $30
    add b
    inc bc
    jr nz, jr_053_7ed4

    rst $30
    nop
    inc bc
    ret nz

jr_053_7ed4:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $00
    ld hl, $c338

jr_053_7ee6:
    ld a, [hl]
    cp $ff
    jr z, jr_053_7f0f

    push hl
    ld l, c
    ld h, $00
    add hl, hl
    ld de, $c330
    add hl, de
    inc hl
    ld a, [hl]
    dec a
    ld [hl], a
    pop hl
    inc hl
    ld b, c
    inc c
    ld d, a
    ld a, c
    cp $04
    jr z, jr_053_7f0f

    ld a, d
    or a
    jr nz, jr_053_7ee6

    ld a, b
    call Call_053_7f19
    ld a, c
    cp $04
    jr nz, jr_053_7ee6

jr_053_7f0f:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_053_7f19:
    push af
    push bc
    push de
    push hl
    push af
    add sp, -$01
    ld hl, sp+$00
    ld [hl], a
    ld h, $00
    ld l, a
    add hl, hl
    ld bc, $c330
    add hl, bc
    ld a, [hl]
    ld [$c33c], a

jr_053_7f2f:
    ld hl, $0401
    rst $18
    ld a, [bc]
    inc de
    ld de, $4000
    ld h, $00
    add hl, de
    ld e, a
    ld d, $00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c33c]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_053_7f61

    ld hl, sp+$00
    ld c, [hl]
    ld b, $00
    ld hl, $c338
    add hl, bc
    ld a, [hl]
    ld [$c33c], a
    jr jr_053_7f2f

jr_053_7f61:
    ld b, a
    inc hl
    ld c, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld a, [hl]
    push af
    push bc
    ld l, e
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $b000
    add hl, de
    push hl
    ld l, b
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld b, h
    ld c, l
    ld hl, $0400
    rst $18
    ld a, [bc]
    inc de
    ld de, $4000
    ld h, $00
    add hl, de
    ld e, a
    ld d, $00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    pop de
    pop bc
    call Call_000_0468
    ld a, [$c33c]
    add $04
    ld [$c33c], a
    pop af
    ld d, a
    add sp, $01
    pop af
    ld h, $00
    ld l, a
    add hl, hl
    ld bc, $c330
    add hl, bc
    ld a, [$c33c]
    ld [hl+], a
    ld [hl], d
    pop hl
    pop de
    pop bc
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
