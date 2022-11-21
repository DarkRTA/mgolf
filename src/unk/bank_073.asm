INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $073", ROMX[$4000], BANK[$73]

    db $c7, $76

    ld l, [hl]
    ld [hl], a
    ld b, b
    ld b, b
    ld c, b
    ld b, b
    ld h, d
    ld c, d
    adc a
    ld c, [hl]
    sub b
    ld d, c
    sub $51
    inc e
    ld d, d
    dec e
    ld d, d
    adc b
    ld b, b

    db $a3, $52, $ab, $52, $98, $55, $aa, $56, $b1, $57, $f7, $57

    dec a
    ld e, b

    db $c2, $58, $eb, $52

    daa
    ld e, e
    cpl
    ld e, e
    ld [hl-], a
    ld h, [hl]
    reti


    ld l, l
    pop af
    ld [hl], d
    ccf
    ld [hl], e
    adc e
    ld [hl], e
    call c, Call_073_6f73
    ld e, e
    inc e
    ld d, d

    db $3d, $58

    adc e
    ld [hl], e
    nop
    nop
    nop
    ld [bc], a
    inc d
    inc d
    nop
    nop
    add sp, $29
    ld hl, sp+$46
    rst $08
    add hl, hl
    nop
    nop
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $00
    inc bc
    jp $e206


    ld bc, $0120
    rst $00
    inc bc
    adc $03
    jp $e206


    ld bc, $0a1f
    rst $00
    ld bc, $00cb
    jp Jump_000_0806


    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$ff25], sp
    ld b, d
    ld b, c
    nop
    dec b
    ld bc, $0103
    ld [bc], a
    rst $38
    ld bc, $1102
    ld [de], a
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $deff
    db $fd
    db $fc
    push af
    db $fd
    ld e, a
    db $fd
    cp d
    rst $38
    db $fd
    ld a, [$bef9]
    db $fc
    sub $be
    db $ed
    rst $38
    rrca
    rla
    rlca
    ld d, [hl]
    rla
    rra
    rla
    dec c
    cp $fe
    ldh [rNR31], a
    daa
    scf
    rrca
    rla
    ld [bc], a
    ld [bc], a
    rst $38

Call_073_40c0:
    nop
    ld b, b
    nop
    inc b
    ld b, c
    ld a, e
    ld a, [hl-]
    rst $20
    rst $38
    sbc l
    cp a
    rst $38
    db $eb
    rst $38
    rst $30
    ld h, $99
    rst $38
    adc b
    ld h, [hl]
    rst $38
    ld [$fdff], a
    rst $30
    rst $38
    rst $30
    ld a, a
    db $fd
    db $fd
    ldh a, [$e2]
    adc c
    ld h, a
    ld b, d
    ld d, d
    ld a, a
    nop
    nop
    jr nz, jr_073_40ed

    inc b
    inc b
    nop
    rst $38

jr_073_40ed:
    ld [c], a
    rst $38
    db $10
    db $10
    ld bc, $0c11
    rlca
    inc de
    adc h
    rst $38
    daa
    inc sp
    sbc a
    db $eb
    ld a, a
    sbc a
    ld b, $03
    rst $38
    add hl, de
    ld l, $23
    add hl, sp
    rrca
    db $e3
    rst $38
    dec [hl]
    rst $38
    rst $38
    ld e, a
    rst $38
    or $df
    rst $38
    ld [bc], a
    inc bc
    rst $38
    dec b
    ld a, [bc]
    dec b
    ld b, $13
    dec d
    dec bc
    dec c
    rst $38
    inc de
    dec hl
    rla
    dec de
    cpl
    rla
    ld [hl], d
    xor a
    rst $38
    xor l
    db $db
    ld l, a
    rst $30
    jp c, $55ff

    rst $38
    rst $38
    xor d
    rst $38
    sbc e
    rst $30
    ld l, l
    rst $38
    db $10
    db $10
    cp $ba
    ldh [rDIV], a
    ld bc, $0401
    rla
    inc hl
    cp h
    ld a, a
    sbc e
    db $e3
    ld a, a
    sbc a
    ld [bc], a
    inc bc
    add hl, bc
    ret nz

    ldh [$ef], a
    rra
    rst $20
    ld a, a
    dec sp
    db $dd
    ldh [$f7], a
    rst $18
    cp $ff
    ld [bc], a
    dec bc
    dec b
    ld b, $09
    dec e
    ld b, a
    ld c, e
    rst $18
    rla
    dec de
    rlca
    rla
    rrca
    ld h, b
    ldh [rNR22], a
    rrca
    rst $38
    ld d, e
    ld c, a
    rla
    ld e, a
    cpl
    dec e
    cpl
    ccf
    cp a
    sub [hl]
    cp a
    cp a
    ld a, a
    ld a, a
    rst $30
    ret nc

    ldh [$0e], a
    rst $38
    inc hl
    add hl, de
    rra
    daa
    ld c, e
    ld l, a
    ccf
    ld e, l
    rst $28
    cp a
    bit 7, a
    or a
    sub b
    ldh [rNR12], a
    dec d
    ld d, $ff
    add hl, bc
    dec b
    ld e, e
    ld c, l
    ld h, a
    dec sp
    sbc a
    rst $20
    rst $38
    ld e, a
    sbc a
    sub h
    sub [hl]
    ld c, d
    ld l, d
    and b
    and b
    rst $38
    dec d
    sub l
    ld c, b
    ld c, b
    ld bc, $a011
    and b
    rst $38
    ld c, b
    ld c, b
    ei
    ld a, a
    rst $38
    rst $28
    db $fc
    sbc e
    rst $38
    or [hl]
    ret c

    cp b
    rst $20
    ld b, h
    sbc [hl]
    sub e
    ld [hl], a
    rst $38
    inc h
    db $fc
    cp [hl]
    ld sp, hl
    reti


    rst $00
    add $3f
    rst $38
    inc [hl]
    rst $38
    ret


    ei
    ld [hl+], a
    cp $ce
    cp $f7
    ld a, [de]
    sbc e
    rst $38
    rst $38
    ldh [$fb], a
    xor c
    ld b, [hl]
    rst $18
    rst $38
    sbc c
    rst $30
    xor [hl]
    cp [hl]
    ld hl, $8865
    sbc c
    rst $38
    ld h, d
    sbc l
    sbc c
    ld a, a
    ld h, d
    rst $38
    ld de, $ff5b
    ld c, [hl]
    rst $28
    sub c
    push de
    adc d
    sbc e
    inc d
    ld d, h
    rst $38
    cpl
    rla
    xor a
    rst $30
    dec bc
    xor a
    ld e, a
    ld l, e
    rst $38
    ld e, a
    push hl
    sub a
    rst $18
    cp a
    sbc $7f
    cp a
    rst $38

Jump_073_4204:
    ld h, h
    ld h, [hl]
    inc h
    xor h
    jp nc, Jump_000_00d2

    ld c, b
    rst $38
    sbc b
    sbc b
    jr nz, jr_073_4235

    add b
    sub b
    nop
    ld b, b
    rst $38
    db $f4
    ld [$deee], a
    call $d0d5
    cp d
    rst $38
    call c, $a9b4
    ld a, l
    xor b
    ld d, c
    ld [hl], h
    db $e4
    adc $dc
    ret nz

    ld [bc], a
    ld bc, $8103
    ret nz

    ld a, h
    ret nz

    dec b
    ld a, [bc]
    rst $38
    dec bc

jr_073_4235:
    dec c
    cp e
    rst $38
    ccf
    xor a
    ld a, a
    cp d
    rst $38
    ld a, a
    dec a
    rst $38
    ld a, a
    rst $18
    db $fd
    rst $38
    db $eb
    rst $38
    db $fd
    rst $30
    rla
    ld c, a
    rrca
    rla
    cpl
    ld a, [de]
    rst $38
    cpl
    dec a
    rrca
    cpl
    ld e, a
    ld l, l
    ccf
    ld c, e
    rst $38
    dec a
    ld [hl], a
    ei
    rst $38
    rst $38
    ld l, a
    rst $38
    ld_long a, $ffff
    xor l
    rst $38
    rst $18
    rst $18
    cp $fe
    push af
    rst $38
    db $fc
    ld a, [c]
    nop
    nop
    ld [$0008], sp
    ld [$bbee], sp
    pop hl
    dec h
    daa
    dec bc
    ld e, h
    ret nz

    dec d
    xor $01
    rst $38
    cp e
    xor d
    ld a, l
    dec a
    rst $10
    adc e
    ld a, l
    ld d, [hl]
    rst $38
    rst $38
    dec sp
    xor a
    db $dd
    ld a, a
    cpl
    scf
    ld e, a
    rst $18
    ld h, a
    sbc e
    rst $28
    ccf
    sbc e
    sub b
    push bc
    add a
    adc a
    ld a, a
    rla
    rrca
    daa
    rrca
    ld l, a
    cp a
    rra
    scf
    ldh [$cd], a
    cp a
    inc sp
    ldh [rLCDC], a
    ld b, b
    ld l, $c0
    ld e, h
    ret nz

    nop
    nop
    rst $38
    ld bc, $2001
    jr nz, jr_073_42b5

jr_073_42b5:
    nop
    sbc l
    rst $38
    rst $38
    ld h, h
    db $ec
    db $db
    ei
    sub b
    jp c, Jump_073_4848

    rst $38
    ld sp, $8035
    sub c
    inc b
    ld b, h
    ld d, b
    ld [hl], d
    rst $38
    ld h, h
    db $ec
    sub e
    sub e
    jr nz, jr_073_433b

    ret z

    ret z

    rst $38
    inc h
    inc [hl]
    add b
    add b
    ld [bc], a
    ld [bc], a
    inc b
    ld b, h
    cp a
    nop
    adc b
    sub c
    sub c
    nop
    ld c, d
    adc d
    ldh [rP1], a
    rst $38
    ld b, b
    ld b, b
    inc b
    inc b
    xor h
    xor [hl]
    ld b, c
    ret


    rst $38
    sub d
    sub d
    inc h
    ld h, $11

jr_073_42f5:
    ld de, $8080
    rst $38

jr_073_42f9:
    inc h
    inc h
    add c
    add c
    ld [bc], a
    ld [bc], a
    add hl, bc
    dec e
    rst $38
    add l
    rst $00
    ld [$221b], sp
    daa
    rlca
    xor [hl]
    xor a
    rrca
    ld a, [de]
    inc de
    ld h, l
    jr nc, jr_073_42f5

    ld a, l
    jr nc, jr_073_42f9

    sub l
    rst $38
    rst $38
    ld c, b
    db $fc
    ld [hl], l
    rst $30
    sbc h
    call c, Call_073_7f52
    jp c, Jump_073_6504

    ret nc

    ret c

    xor l
    db $ed
    adc h

Call_073_4327:
    ldh [$fa], a
    or b
    pop hl
    ld b, b
    adc $a0
    jr nz, @-$7a

    add h
    nop
    ld b, b
    rst $38
    or [hl]
    cp a
    ld hl, sp-$11
    db $d3
    reti


    db $d3

jr_073_433b:
    cp a
    rst $38
    db $e4
    push af
    rra
    ld [hl], a
    adc e
    rst $18
    ld e, a
    cp a
    rst $38
    add sp, -$26
    xor $de
    call nc, $d1ed
    db $ed
    rst $38
    sub $ee
    db $ec
    push de
    ldh [$fa], a
    jp hl


    db $dd
    rst $38
    ld d, b
    cp b
    ld c, c
    db $eb
    nop
    ld d, h
    sbc b
    ld a, d
    rst $38
    xor d
    ld a, d
    cp b
    ld e, c
    or b
    db $e4
    ld c, b
    xor c
    rst $28
    jr nz, jr_073_438c

    ld [$a888], sp
    pop bc
    ld [$2008], sp
    rst $38
    jr nz, @-$7e

    sub b
    db $10
    ld e, b
    inc b
    ld b, $00
    rst $38
    ld [$1111], sp
    nop
    ld a, [bc]
    ld [$2108], sp
    rst $38
    dec h
    nop
    ld de, $4404
    inc de

jr_073_438c:
    cpl
    ld l, a
    rst $38
    ld [hl], a
    xor a
    sbc d
    xor a
    ld a, l
    ld c, a
    ld l, a
    ld e, a
    rst $38
    db $ed
    cp a
    res 3, l
    rst $10
    and [hl]
    ld_long a, $ff0a
    db $fd
    db $d3
    ld l, e
    cpl
    push de
    ld d, $bf
    xor e
    ld a, a
    adc $1f
    or a
    db $ed
    ld a, a
    rst $38
    nop
    cp $eb
    rst $38
    ld [hl+], a
    rst $18
    nop
    xor a
    ld d, b
    jp c, $fd25

jr_073_43bc:
    rst $38
    ld b, d
    cp a
    ld [hl+], a
    db $fd
    adc b
    db $eb
    dec d
    rst $30
    rst $38
    push af
    inc bc
    and $0e
    ret c

    add hl, de
    pop hl
    daa
    rst $38
    and [hl]
    ld l, a
    ret z

    ld e, l
    ld c, h
    db $db
    sub b
    cp a

jr_073_43d7:
    rst $38
    db $fd
    inc bc
    ld a, [$fa02]
    ld b, $f4
    dec b

Call_073_43e0:
    rst $38
    db $e4
    dec c
    reti


    dec sp
    ld h, d
    rst $20
    add h
    sbc a
    db $fd
    jr z, jr_073_43bc

    ldh [rP1], a
    jp c, $fd00

    inc b
    ei
    rst $38
    ld hl, $46ff
    and a

jr_073_43f8:
    jr c, jr_073_43f8

    ld c, a
    add sp, -$02
    cp $e1
    sub a
    ret c

    sub a
    ret nc

    cpl
    or b
    ld e, a
    rst $30
    ld h, b
    sbc a
    ret nz

    and b
    push hl
    cp $01
    pop af
    inc bc
    rst $38
    and $0f
    cp b
    ld a, [hl]
    ret z

    ld l, a
    jp z, $ff6d

    ld c, b
    ld [$dd90], a
    sub b
    rst $18
    jr z, jr_073_43d7

    cp a
    ld b, b
    ld l, e
    add b
    rst $30
    rst $38
    nop
    xor [hl]
    ldh [$03], a
    cp $ae
    ldh [$0d], a
    ret


    dec de
    or d
    ld [hl], a
    call nz, $ff6f
    ret


    dec c
    jp nc, $d21b

    dec sp
    db $e4
    scf
    rst $38
    db $e4
    scf
    and [hl]
    ld [hl], l
    ret z

    ld l, a
    ret z

    ld l, a
    db $fd
    ld sp, hl
    add b
    pop hl
    add hl, sp
    pop hl
    rst $20
    ld b, $1f
    add hl, de
    rst $38
    rst $38
    ld [c], a
    db $fd
    db $10
    ld a, [$00fb]
    rst $30
    rst $38
    rlca
    ret c

    rra

jr_073_445f:
    ldh [$78], a
    add a
    rst $20
    ld a, [de]
    sbc a
    sbc l
    ld h, b
    ld a, d
    add b
    db $fd
    jp nc, $d0e0

    pop hl
    rst $30
    rst $38
    inc b
    rst $28
    jr jr_073_4491

    ldh [$ef], a
    nop
    rst $10
    cp $e0
    ldh [rIF], a
    ret c

    jr c, jr_073_445f

    scf
    and a
    ld l, a
    rst $38
    ret z

    ld e, a
    ret z

    ld e, d
    ret z

    ld e, l
    nop
    rst $38
    rst $38
    db $10
    ld a, [$ad00]
    nop

jr_073_4491:
    rst $18
    db $e4
    rst $38

jr_073_4494:
    cp a
    jr jr_073_4494

jr_073_4497:
    inc b
    rra
    ld [c], a
    rst $20
    db $10
    push hl
    rst $28
    rst $38
    ldh a, [rNR31]
    db $fc
    dec b
    ld e, $e3

jr_073_44a5:
    and $4f
    rst $38
    add sp, -$71
    ret z

    cpl
    sbc b
    rla
    jr c, jr_073_4497

    db $fd
    ldh a, [$f6]
    jp Jump_073_6fc8


    ld [$48cd], a
    sbc d
    rst $38
    db $10
    dec a
    ldh [rIE], a
    jr nz, @-$01

    ld [de], a
    db $eb
    rst $38
    nop
    rst $30
    sub e
    cp b
    cpl
    ld h, b
    ld e, a
    ret nz

    cp $38
    rst $20
    ld [$309f], sp
    ld a, a
    ld d, b
    ld l, d
    ld b, h
    ccf
    db $fd
    add b
    rst $38
    jr z, @-$09

    nop
    ldh [$e0], a
    ret nz

    jp $fcff


    ld bc, $07e3
    sbc h
    inc a
    ld h, b
    db $e3
    db $eb
    add e
    sbc a

jr_073_44ed:
    ld d, b
    pop hl

jr_073_44ef:
    sbc b
    ld d, b
    ld [c], a
    jr jr_073_44ef

    ld [c], a
    rst $38
    push af
    nop
    rst $38
    cp $01
    rst $20
    rrca
    ret c

    ld a, a
    ccf
    ld h, b
    ld hl, sp-$79
    rst $20
    jr jr_073_44a5

    ld d, b
    pop hl
    rst $38
    pop bc
    ld sp, hl
    ld b, $c7
    jr c, jr_073_4549

    ret nz

    db $dd
    rst $28
    inc b

jr_073_4513:
    ei
    jr nz, jr_073_4513

    ret nz

    push hl
    cp $01
    rst $38
    ei
    ld bc, $faf9

jr_073_451f:
    pop bc
    rlca
    db $f4
    ld b, $48
    rst $28
    rst $38
    sub b
    jp c, $dd90

    inc h
    xor e
    jr nz, jr_073_44ed

    di
    ld d, b
    ld a, l
    ldh [$c3], a
    ld e, [hl]
    jp $0fe7


    sbc b
    jr c, @+$01

    ld h, b
    rst $20
    add a
    sbc a
    ld [$00ff], sp
    xor a
    rst $38

jr_073_4543:
    jr nz, jr_073_451f

    ld b, b
    db $ed
    rlca
    rst $38

jr_073_4549:
    jr jr_073_4543

    cp [hl]
    ldh a, [$e1]
    dec bc
    sbc h
    inc sp
    ld a, b
    ld b, a
    ld e, [hl]
    ldh [$bf], a
    rst $30
    ret nz

    ld a, a
    add b
    inc [hl]
    pop bc
    sub b
    or a
    inc h
    ld l, a
    rst $38
    ld b, h
    ei
    add b
    rst $38
    ld b, b
    cp a
    ld [bc], a
    ld e, e
    db $fd
    ld [hl+], a
    add b
    ldh [$a5], a
    ld e, d
    ld d, b
    xor l
    sbc d
    ld h, l
    rst $38
    dec h
    jp c, $15aa

    ld d, l
    xor d
    ld l, b
    db $d3
    rst $38
    sbc d
    ld h, l
    ld e, e
    rst $38
    xor a
    rst $38
    ld h, a
    rst $38
    cp $a0
    ld h, e
    db $d3
    db $fd
    ld l, l
    rst $38
    ld c, b
    rst $08
    ld c, b
    rst $38
    rst $18
    sub h
    cp c
    sub b
    cp e
    sub b
    cp a
    ld d, b
    rst $38
    db $fd
    ld c, b
    rst $18
    ld c, d
    rst $08
    sub b
    sbc a
    sub b
    rst $38
    rst $18
    ld c, b
    ld [$6d4a], a
    ld c, b
    ld l, a
    ld d, b
    rst $38
    push af
    sub b
    rst $10
    sub d
    sub a
    ld c, e
    ret z

    ld c, e
    rst $38
    ret c

    sub a
    cp b
    sub a
    or b
    sub a
    or b
    ld d, a
    rst $38
    ret c

    ld c, e
    ret c

    ld c, e
    ret z

    sub a
    sub b
    sub a
    db $fd
    ret c

    inc e
    ret nz

    ld l, b
    ld c, a
    ld l, b
    ld d, a
    ld hl, sp-$61
    rst $30
    ret nc

    sbc a
    sub b
    ret nz

    and e
    cp l
    ld a, [hl]
    jp $9fff


    nop
    jp Jump_000_3c3c


    jp $e0f9


    ld d, d
    ld [c], a
    db $76
    ld a, a
    sbc c
    rst $38
    nop
    sbc c
    ld h, [hl]
    ld h, [hl]
    sbc c
    ld d, b
    ldh [$bf], a
    ld [bc], a
    xor l
    ld [bc], a
    jp c, $fd3c

    ldh [$e4], a
    ei
    cp [hl]
    ldh a, [$e0]
    xor a
    nop
    reti


    db $76
    rst $28
    ldh [$e4], a
    rst $18
    rst $38
    ld bc, $0603
    ld c, $1c
    add hl, sp
    ld sp, hl
    rst $20
    ld a, l
    ld h, $d0
    call nz, Call_073_781b
    ld h, a
    ldh [$df], a
    ld [hl], $e2
    cp $66
    and e
    ld d, b
    xor a
    dec h
    jp c, $b807

    rlca
    rst $38
    db $fd
    and d
    ld e, a
    ldh [rNR22], a
    push hl
    cp d
    ld b, d
    rst $18
    db $fd
    db $fd
    db $fd
    rst $18
    rst $38
    db $fc
    ld h, b
    rst $38
    ld a, l
    rst $30
    rst $38
    rst $28
    rst $28
    db $76
    ld h, b
    rst $38
    xor l
    rst $28
    db $76
    ei
    rst $38
    and $ee
    ldh [$e4], a
    db $eb
    ld [hl], h

Jump_073_4646:
    rst $30
    ld c, b
    rst $38
    rst $38
    add b
    cp e
    db $eb
    rst $38
    ld a, h
    rst $38
    ld d, b
    rst $30
    rst $10
    xor h
    db $eb
    ld h, a
    pop hl
    ld b, b
    or l
    nop
    ei
    rst $38
    ld bc, $02ff
    rst $10
    db $10
    db $ed
    dec b
    rst $38
    rst $38
    inc bc
    rst $38
    ld a, [hl+]
    jp c, $bd08

    dec d
    rst $38
    rst $38
    ld c, $ff
    ld b, l
    rst $30
    ld a, [bc]
    cp $25
    rst $28
    rst $38
    sbc e
    rst $30
    ld e, $ff
    db $76
    cp [hl]
    db $db
    rst $38
    rst $38
    cp $ff
    push af
    push af
    ld l, b
    rst $28
    call nc, $ffff

jr_073_4689:
    cp b
    xor a
    ret nc

    jp c, $fda5

    ld d, d
    rst $38
    rst $38
    ld [bc], a
    ei
    ld b, l
    xor a
    ld d, [hl]
    jp c, $fe22

    rst $38
    dec b
    rst $38
    ld h, $fd
    inc bc
    cp e
    ld bc, $fffd
    cp c
    ei
    ld [hl], h
    rst $10
    ld a, [hl+]
    db $ed
    ld [bc], a
    rst $38
    ei
    jr nz, jr_073_4689

    cp d
    and c
    nop

jr_073_46b2:
    ei
    call c, $faff
    rst $38
    ei
    db $f4
    rst $38
    and $eb
    db $f4
    rst $30
    ld l, b
    rst $28
    rst $38
    jp nc, $e8ff

    pop af
    ld b, b
    ld a, [$adfe]
    ccf
    db $fd
    ld e, e
    rst $18

jr_073_46cd:
    adc b

jr_073_46ce:
    push af
    db $10
    or l
    add d
    ld d, [hl]
    ret nz

    rst $38
    jr jr_073_46b2

    inc a
    and l
    ld a, [hl]
    jp $c366


    rst $30
    ld h, [hl]

jr_073_46df:
    sbc c
    ld b, d
    and d
    add c
    or a
    ld a, b
    adc e
    inc a
    rst $38
    push bc
    ld c, $c5
    ld c, $8b
    inc a
    or a
    ld a, b
    cp $92
    add c
    rst $18
    ld a, $e7
    ld a, [hl]
    inc bc
    adc $33
    ld a, a
    add [hl]
    push af
    ld b, $e7
    inc c
    rst $20
    jr jr_073_4779

    and b
    rst $38
    db $10
    rst $10
    jr c, @-$53

    ld a, h
    rst $00
    ld l, h
    sub e
    db $fd
    ld b, h
    ld [hl], h
    add l
    rst $10
    jr c, jr_073_46df

    inc e
    push hl
    ld c, $ef
    rr h
    rst $10
    jr c, jr_073_477f

    add h
    inc a
    add a
    ld a, h
    db $e3

jr_073_4722:
    rst $30
    inc c
    cp $e0
    inc bc
    ret nz

    ld b, h
    and d
    db $10
    rst $28
    jr jr_073_46cd

    rst $30
    inc c
    rst $28
    jr jr_073_4722

    adc l
    db $e3
    dec e
    and b
    rst $28
    rst $30
    jr c, jr_073_46ce

    ld l, h
    ld [hl], $87
    rst $08
    inc a
    rst $38
    inc b
    ld a, c
    ei
    cp $e0
    inc h
    add c
    ldh a, [rSB]
    rst $20
    rra
    add b
    and h
    rst $18
    sbc h
    ld h, b
    ld a, b
    add b
    ret c

    add b
    and b
    add $38
    rst $38
    inc a
    ret nz

    db $fc
    nop
    and h
    nop
    inc h
    nop
    rst $38
    jr jr_073_4764

jr_073_4764:
    jr jr_073_476f

    dec e
    ld d, $1a
    ld d, $ff
    ccf
    ld l, h
    ld [hl], l
    sbc h

jr_073_476f:
    rst $20
    ld a, d
    sbc l
    ld h, b
    rst $38
    ld l, a
    add b
    cp a
    add hl, bc
    dec e

jr_073_4779:
    ld [de], a
    dec de
    inc de
    rst $38
    ld a, d
    ld h, l

jr_073_477f:
    or $87
    db $e4
    dec de
    sbc b
    ld h, a
    rst $38

jr_073_4786:
    ld [hl], b
    xor a
    ret nz

    ret nz

    rlca
    rst $00
    rra
    sbc b
    rst $38
    jr c, jr_073_47b1

    ld [hl], a
    daa
    ld l, a
    ld c, e
    call c, $cf4f
    ret c

    ld c, a
    ret c

    di
    db $76
    and b
    and b
    add h
    ld e, d
    ret z

    rst $20
    ld e, h
    ret z

    ld e, h
    cp h
    pop hl
    or [hl]
    ldh [$a4], a
    ldh [$fc], a
    rst $28
    jr @-$02

    inc b

jr_073_47b1:
    ld e, $a0
    add l
    rrca
    ret nz

    rst $20
    rst $38
    ld hl, sp+$18
    ld e, $06
    rst $20
    pop hl
    ld sp, hl
    sub b
    db $fd
    ret c

    cp $e0
    call c, $dc90
    and b
    db $f4
    jr nz, jr_073_4786

    and h
    ld b, b
    add b
    ldh [$97], a
    or b
    sbc a
    cp $e0
    xor a
    ld a, l
    or b
    xor d
    add b
    ldh [$9f], a
    ret nz

    cp a
    add b
    ret nz

    db $e3
    rst $38
    ld bc, $0225
    daa
    ld [bc], a
    ld h, $0c
    rra
    ei
    ld de, $b01b
    db $e4
    inc h
    ld bc, $0227
    daa
    rst $38
    inc b
    ld e, $09
    dec e
    ld c, b
    call z, $d848
    ei
    sub b
    cp b
    cp $e1
    ld d, b
    ld hl, sp+$48
    ret c

    ld c, b
    rst $38
    call z, $b890
    adc b
    add sp, $48
    db $ec
    ld c, b
    push de
    ld l, h
    cp $e0
    db $ec
    and h
    ldh [$98], a
    add b
    ld [c], a
    inc a
    inc a
    push hl
    rst $38
    add b
    and b
    db $e3
    and b

jr_073_4821:
    and c
    ld [hl], b
    ld [c], a
    ld h, [hl]
    ld h, [hl]
    rst $38
    adc d
    add b
    and l
    ldh [rLCDC], a
    pop hl
    ld a, a
    nop
    rst $20
    sub b
    push hl
    adc [hl]
    ld [c], a
    dec de
    db $e3
    inc b
    ld e, $90
    push hl
    db $fc
    ld [c], a
    ldh a, [$c1]
    db $ed
    ld [de], a
    ei
    xor a
    ld [de], a
    jp c, $f62c

    cp $e0

Jump_073_4848:
    or h
    sbc b
    ldh [$ec], a
    cp $e0
    and $25
    ld bc, $0627
    rra
    ld [$fd1e], sp
    jp hl


    ld h, b
    ld h, c
    ld a, [hl-]
    db $e4
    ld [hl], $e4
    ld [hl], $a4
    rst $28
    ld [hl], h
    ret z

    ld l, h
    ret z

    ld a, d

Call_073_4866:
    db $e3
    call nc, $b420
    rst $38
    jr nz, jr_073_4821

    ld b, b
    ld h, h
    ld b, b
    ld e, b
    add b
    ret c

    rst $38
    ret z

jr_073_4875:
    ld l, b
    add sp, -$38
    ld c, b
    sbc h
    db $10
    inc [hl]
    and e
    ldh [$e4], a
    and b
    jp Jump_073_4ca1


    ld [hl], b
    add h
    and l
    ld [hl], b
    add e
    sub e
    ld c, [hl]
    or $e0
    ld e, d
    ld e, b
    or l
    ld h, b
    add [hl]
    ldh a, [$e0]
    ld e, e
    dec h
    jr nz, jr_073_4875

    ld h, b
    add l
    sbc e
    rst $30
    ld l, l
    rst $38
    ldh a, [$e5]
    ld d, a
    db $fd
    rst $18
    xor d
    rst $38
    sub e
    rst $38
    ld l, l
    ld a, b
    and b
    sub h
    ld l, l
    rst $38
    add hl, hl
    ld [c], a
    ld h, h
    sub e
    ld a, [de]
    xor l
    dec h
    ld c, d
    rst $38
    ld h, h
    sub e
    ld d, d
    ld l, l
    inc b
    ld a, [$bd48]
    rst $38
    ld a, [bc]
    push de
    dec d
    ld [hl], d

Call_073_48c2:
    ld d, d
    xor a
    dec c
    jp c, Jump_073_64bf

    sub e
    ld e, d
    ld h, l
    ld b, $da
    jr nz, jr_073_4911

    push bc
    db $f4
    jr nz, jr_073_4918

    ldh a, [$0d]
    call c, $e0b6
    xor c
    rst $30
    sbc a
    ei
    rst $38
    ld h, [hl]
    cp a
    rst $38
    ld e, e
    ld a, [hl+]
    rst $38
    ld e, l
    or a
    rst $38
    add b
    cp a
    ld b, b
    rst $38
    ld h, b
    rst $18
    jr nz, @+$01

    rst $38
    and b
    cp a
    jr nz, @+$71

    db $10
    rst $30
    ld d, b
    rst $30
    ld a, [hl]
    ldh a, [$e3]
    and b
    ld a, a
    and b
    ld l, a
    ret nc

    scf
    cp $e1
    rst $38
    db $10
    rst $30
    ld [$08db], sp
    ei
    ld b, h
    rst $38
    rst $38
    and h
    cp l
    ld c, $5b
    ld [bc], a

jr_073_4911:
    or $41
    rst $38
    rst $38
    cp a
    ret nz

    ld e, a

jr_073_4918:
    ld h, b
    ld e, a
    ld h, b
    cpl
    or b
    rst $08
    cpl
    or b
    rla
    ret c

    cp $e1
    ret nz

    ldh [$df], a
    or b
    rst $38
    ld l, a

jr_073_492a:
    ldh [$2f], a
    call nc, $ec33
    dec e
    ld a, [c]
    rst $18
    ld c, $fd
    inc bc
    add b
    cp a
    or d
    pop hl
    jr nz, jr_073_492a

    sbc a
    db $10
    or e

jr_073_493e:
    inc c
    db $ed
    ld [hl+], a
    daa
    ld h, b
    inc bc
    ld b, l
    ld c, $af
    adc $32
    cp a
    ld d, b
    db $10
    ld b, b
    ld bc, $6000

jr_073_4950:
    inc a
    cpl
    ld a, [hl-]
    push hl
    db $dd
    ld [bc], a
    jr c, jr_073_49b8

    ld d, b
    adc b
    ldh [$e3], a
    inc h
    rst $38
    ld sp, hl
    ld c, $ef
    ld sp, $4fbe
    ld [hl], b
    cp a
    rst $38
    ret nz

    ld bc, $06fd
    rst $20
    add hl, sp
    ld a, $c7
    di
    ld hl, sp+$3f

jr_073_4972:
    add $24
    ld h, c
    jr nz, jr_073_493e

    jr c, jr_073_49b1

    rst $00
    ld e, b
    and d
    ld h, b
    ld d, [hl]
    inc hl
    ld l, d
    pop hl
    add sp, $1b
    cp $e2
    rra
    ld e, [hl]
    pop hl
    cp $41
    daa
    jr nz, jr_073_4950

    inc e
    inc e
    db $e3
    db $e3
    add b
    db $fd
    cp a
    push af
    ld b, b
    rst $38
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    add b
    ld a, l
    cp a
    cp $e1
    db $e3
    jp $bf3e


    ld [hl], b
    jr nc, @+$22

    cp $90
    ldh [rIE], a
    ld [$14eb], sp
    rst $30
    add b
    rst $38

jr_073_49b1:
    rst $38
    sub b
    xor a
    ld d, b
    ld e, d
    ld h, l
    db $fd

jr_073_49b8:
    ld b, d
    rst $38
    cp a
    ld b, b
    rst $38
    ret z

    xor e
    sub h
    rst $30
    and b
    and c
    ret nc

    pop af
    cp b
    cp $e1
    and b
    and e
    ldh a, [rSTAT]
    call nc, $d0b9
    cp e
    add hl, sp
    ret nc

    ldh a, [rLY]
    nop
    ld h, c
    rst $10
    cp b
    rst $10
    nop
    ld h, [hl]
    db $10
    ld h, a
    ld bc, $103c
    ld h, d
    jr nz, jr_073_4a4a

    ldh a, [$e2]
    add b
    and e
    ld [hl], b
    and d
    ldh a, [$e4]

jr_073_49eb:
    add b
    jr z, jr_073_49eb

    db $e4
    add b
    jr nz, jr_073_4972

    rst $30
    ld b, b
    ld l, e
    jr z, @-$49

    rst $38
    sub b
    rst $18
    sub b
    db $dd
    ld e, b
    ld [$6dda], a
    rst $38
    ret c

    ld l, a
    add b
    ret c

    ld b, b
    ld a, b
    jr nz, @-$5a

    rst $28
    and b
    db $f4
    or b
    call c, $e0fe
    ret c

    or b
    ret c

    ld a, e
    ld c, b
    db $ec
    ld a, [$d4e0]
    ld h, b
    or h
    ld h, b
    or b
    and h
    cp $a0
    add l
    ret nz

    db $fc
    ld a, b
    inc a
    ld a, $c6
    pop bc
    ld a, l
    ld sp, hl
    sub b
    dec bc
    dec sp
    db $fc
    ret nc

    or a
    and h
    db $10
    ld c, d
    rst $08
    ld c, b
    sbc a
    or b
    ccf
    ld h, b
    add hl, hl
    or b
    adc c
    dec b
    ld e, $ff
    dec bc
    dec e
    dec c
    ld sp, hl
    dec c
    ei
    dec de
    ld d, [hl]
    rst $38
    ld d, d
    or [hl]

jr_073_4a4a:
    ld [de], a
    or $0a
    xor a
    add hl, bc
    db $eb
    ei
    ld c, c
    jp hl


    ld h, b
    ld b, a
    inc b
    jp Jump_000_3c3f


    rst $00
    inc bc
    ei
    nop
    rst $38
    db $ec
    nop
    nop
    nop
    ld h, c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    or $5a
    ld e, e
    rst $38
    ldh [$37], a
    ld e, h
    ld e, l
    ld h, d
    rst $38
    db $e3
    ld e, l
    ld e, h
    pop af
    pop hl
    jp z, $ffe3

    rla
    jr z, jr_073_4aa0

    nop
    ld sp, $3131
    ld c, l
    ccf
    ld d, [hl]
    ld d, [hl]
    ld d, a
    ld c, l
    ld sp, $d85f
    ld [c], a
    and $e4
    ld [hl], b
    xor d
    jp hl


    jp nz, $d9e2

    ldh [$fd], a
    push hl
    ld h, b
    ld e, d
    ld e, d
    ret nz

    db $e4
    ei
    dec d

jr_073_4aa0:
    ld d, $c0
    pop hl
    ld c, l
    ld [hl-], a
    ld l, d
    ld l, l
    ld l, l
    rst $00
    add hl, sp
    ld sp, $995e
    pop hl
    and $e5
    ret nz

    ld [$605a], a
    xor $9b
    ldh [$34], a
    ld a, [hl-]
    ld d, h
    rst $38
    ldh [rHDMA5], a
    ld b, [hl]
    ld c, l
    or $bf
    ldh [$5b], a
    ld e, d
    ld c, d
    db $e3
    ld sp, $2817
    nop
    ld a, [hl-]
    pop bc
    ldh [rOCPD], a
    ret nz

    ldh [rOBP0], a
    ld c, c
    ld h, c
    add c
    ld [c], a
    add b
    ldh a, [$de]
    pop bc
    pop hl
    ld c, l
    dec sp
    ccf
    ld l, h
    rst $38
    pop hl
    jr nc, jr_073_4b12

    push af
    ld [hl-], a
    cp a
    ldh [$5f], a
    ld b, b
    db $e4
    ld sp, $1615
    rrca
    scf
    ld c, l
    ld [hl-], a
    ld l, c
    ret nz

    pop hl
    ld l, d
    ld d, c
    ret nz

    db $e3
    and [hl]
    db $e4
    db $f4
    ld [$c1c9], a
    pop hl
    ld [hl-], a
    jp nz, Jump_073_6ce2

    ld l, h
    ld l, l
    ld l, l
    ld a, [$e1bf]
    ld e, [hl]
    nop
    db $e4
    ld e, [hl]
    ld sp, $3104
    add hl, sp
    add l
    ld l, e

jr_073_4b12:
    ret nz

    db $e3
    add hl, sp
    xor d
    ldh [$27], a
    ldh [rP1], a
    ldh a, [$c1]
    ld [c], a
    ld l, b
    cp h
    rst $38
    ld [c], a
    ret nz

    pop hl
    jr nc, jr_073_4b5e

    ld sp, $4061
    db $e4
    ld e, a
    ld l, a
    ld sp, $4931
    ld c, b
    ret nz

    db $e4
    ld c, b
    ld c, c
    rst $38
    ret nz

    sbc [hl]
    ret nz

    di
    ld a, $32
    ld l, l
    ld l, d
    ret nz

    ld [c], a
    ret c

    ret nz

    ld l, e
    rst $18
    ld l, e
    jr nc, jr_073_4b97

    ld sp, $8061
    call nz, Call_073_615b

Jump_073_4b4b:
    sub a
    ld sp, $6b51
    add b
    db $e4
    ld l, e
    ld a, a
    pop hl
    add b
    jp nc, $ef31

    ld d, d
    ld l, l
    ld l, d
    ld l, d
    cp a
    ld [c], a

jr_073_4b5e:
    ld l, d
    ld l, d
    ld l, e

jr_073_4b61:
    add d
    ret nz

    ldh [$35], a
    ld d, h
    ret nz

    ret nz

    ldh a, [$7f]
    ldh [rNR21], a
    pop bc
    ld b, b
    ldh a, [$39]
    ld a, d
    pop bc
    ldh [$6d], a
    inc b
    ldh [rOCPS], a
    ld l, d
    ld l, c
    ld l, c
    cp a
    pop hl
    ld b, h
    ld d, h
    ret nz

    ld h, $c4
    ld e, [hl]
    add b
    add sp, $7f
    db $e4
    or b
    xor a
    ld e, [hl]
    rra
    jp nz, $c4ba

    pop bc
    ld l, c
    ret nz

    db $e3
    ld d, e
    ld sp, $e661
    and h
    ld e, a

jr_073_4b97:
    sub d
    nop
    push hl
    jr nc, jr_073_4c1b

    db $e3
    nop
    jp nc, $de5f

    and b
    ret


    ret nz

    jr nc, jr_073_4b61

    ld l, l
    ld l, e
    ret nz

    db $e4
    ld d, d
    ld sp, $e631
    and l
    ld e, [hl]
    ret nc

    add b
    ret nz

    cp a
    and $fe
    jp nz, $b040

    ld e, [hl]
    ld bc, $55c0
    ld d, h
    dec de
    ld d, l
    ld b, d
    ret nz

    and $a4
    and h
    ld h, [hl]
    and l
    ld a, a
    ld [c], a
    ld a, [hl]
    push hl
    or b
    ld a, l
    jp nz, $b040

    ld e, c
    ret nz

    ld b, c
    and c
    inc a
    ld b, d
    ld b, b
    ld [c], a
    jr nc, jr_073_4c09

    ld b, d
    ld [hl], d
    add b
    add b
    ld h, $a6
    ld h, c
    ld a, a
    pop hl
    dec a
    db $e4
    or $c0
    db $f4
    ld e, d
    ld e, d
    jp Jump_000_3182


    ld sp, $4647
    add $7a
    ldh [rHDMA5], a
    ld d, h
    pop bc
    ldh [$c0], a
    db $e4
    and [hl]
    add b
    ld h, c
    ld sp, $4983
    ld [hl], $bf
    push hl
    cp l
    and d
    nop
    or c
    and a
    add d
    cp h

jr_073_4c09:
    add c
    and c
    ld hl, sp-$3b
    ldh [$fd], a
    ld [c], a
    ld b, b
    rst $20
    ld sp, $6f70
    ld l, [hl]
    ld c, d
    adc [hl]
    ei
    and c
    ld b, h

jr_073_4c1b:
    ld b, l
    ld c, l
    ccf
    pop bc
    ld b, b
    sub h
    inc a
    add c
    ld h, b
    cp $c0
    rst $28
    ld e, [hl]
    ld sp, $ae70
    add b
    add b
    ld a, b
    rra
    ld a, l
    ld a, h
    ld a, l
    ld a, l
    xor a
    add sp, -$7f
    ld b, b
    sub h
    ld h, [hl]
    add d
    inc h
    inc de
    ldh [$80], a
    db $ed
    ld h, b

Jump_073_4c40:
    pop bc
    ld [c], a
    ld l, e
    db $e3
    and c
    ret nz

    ld sp, hl
    db $e4
    ld h, e
    nop
    ret nz

    db $ed
    pop bc
    jp hl


    ret nz

    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add sp, -$19
    ld c, [hl]
    ld d, a
    ld c, [hl]
    ld c, [hl]
    adc h
    call nz, Call_000_3ca0
    ld b, h
    and c
    inc a
    ld b, c
    ld b, b
    jp hl


    adc h

jr_073_4c78:
    rst $28
    ldh [$ca], a
    db $e3
    add hl, hl
    ld a, [hl+]
    ld b, e
    ld c, l
    ld a, [hl-]
    ld d, h
    adc e
    ld l, [hl]
    ld a, c
    ld h, [hl]
    and c
    add c
    and $46
    ret nz

    db $eb
    pop bc
    ld [c], a
    ld b, d
    ld h, $3c
    ld h, b
    ld l, d
    ld b, d
    cp a
    db $e4
    adc d
    db $e3
    daa
    cp a
    ld [c], a
    ld [hl+], a
    add b
    scf
    ld l, h
    ld l, l
    ld [hl], c

Jump_073_4ca1:
jr_073_4ca1:
    cp a
    pop hl
    xor c
    xor h
    ld h, [hl]
    ld h, l
    add b
    ld [$c1de], a
    db $e4
    ld l, d
    ld l, h
    ld l, h
    ld l, d
    cp a
    db $e3
    ld e, h
    ld e, l
    ld [de], a

jr_073_4cb5:
    ld c, d
    db $e3
    jr nz, jr_073_4c78

    pop hl
    db $e3
    ld h, b
    ld l, d
    and $40
    cp a
    ld [c], a
    ld a, a
    ldh [$ee], a
    jr nc, jr_073_4cb5

    adc h
    ld e, d
    ld e, a
    ld b, h
    add d
    ld l, e
    jr nc, jr_073_4cfe

jr_073_4cce:
    ld hl, sp-$42
    ld h, b
    ld a, [hl]
    pop hl
    ret nz

    ld h, h
    or c
    jr nz, jr_073_4cf8

    ld d, $29
    rla
    ld sp, $6d39
    and a
    ldh [$6c], a
    cp a
    db $e3

Jump_073_4ce3:
    ld a, a
    ldh [rLCDC], a
    ld sp, $5e55
    ret nz

jr_073_4cea:
    db $ed
    dec d
    add b
    db $e4
    jr nz, jr_073_4cf0

jr_073_4cf0:
    jr nz, jr_073_4d45

    ret nz

    ld [c], a
    ld h, d
    and d
    ldh [$83], a

jr_073_4cf8:
    cp $c2
    ret nz

    ld de, $4018

jr_073_4cfe:
    add hl, sp
    jr nc, jr_073_4d41

    db $e3
    dec hl
    ld l, c
    add hl, sp
    or $01
    rla
    ret nz

    add sp, $52
    add e
    jr nz, jr_073_4cce

    ld [c], a
    sub e
    ld c, b
    add h
    cp $c1
    ret nz

    ld [de], a
    ld e, [hl]
    ret c

    jr nz, jr_073_4d57

    ld b, c
    ld l, d
    db $f4
    reti


    jr nz, jr_073_4ca1

    pop hl
    ld d, $40
    push hl
    ld a, [bc]
    dec bc
    ld c, c
    ld c, b
    pop bc
    jr nc, jr_073_4cea

    pop hl
    cp l
    nop
    ld a, a
    db $e3
    add b
    ld de, $c0ff
    ld sp, $d539
    ld h, a
    ld a, l
    ld hl, $8167
    db $e3
    jr z, jr_073_4d40

    ld [c], a

jr_073_4d40:
    or c

jr_073_4d41:
    ld a, [bc]
    ld d, c
    dec bc
    ld h, a

jr_073_4d45:
    pop hl

Jump_073_4d46:
    jp hl


    pop bc
    rst $38
    pop bc
    ld l, l
    ccf
    pop hl
    xor c
    ld b, b
    ld [de], a
    ld h, [hl]
    ld a, a
    nop
    add hl, sp
    ld h, l
    rst $38
    ld [c], a

jr_073_4d57:
    ld b, c
    ld [c], a
    dec hl
    db $10
    ld h, $25
    rlca
    ld b, a
    ld b, [hl]
    ld b, d
    ld h, a
    ld b, b
    cp [hl]
    jp $c23d


    and $44
    add b
    ld l, d
    sub [hl]
    ld b, [hl]
    ld h, c
    ld c, c
    ld c, b
    inc a
    ld hl, $586a
    nop
    ret nz

    db $e3
    or c
    rst $38
    or c
    or c
    nop
    nop
    ld c, l
    ld b, [hl]
    ld [hl], $30
    nop
    and a
    ld [hl+], a
    ld h, h
    ld bc, $e3c1
    ret nz

    ldh a, [$08]
    ld h, b
    ret nz

    ret nz

    inc a
    jr nz, jr_073_4d91

jr_073_4d91:
    pop bc
    ld bc, $c06d
    pop bc
    add b
    push hl
    ld b, h
    ldh [$aa], a
    ld [c], a
    pop bc
    add sp, -$80
    ldh a, [rLY]
    ld b, e
    inc h
    ld e, c
    nop
    nop
    pop bc
    ld l, e
    ld a, [hl]
    and c
    ld b, b
    push hl
    ld d, e
    adc c
    jr nz, @+$48

    ldh [$9f], a
    ld [hl], $6e
    ld a, h
    ld a, l
    ld a, h
    pop bc
    db $e4
    ld b, b
    ldh a, [rNR12]
    push af
    ld de, $f5c0
    ld d, d
    add $c2
    ld [hl-], a
    ld b, a
    ld [hl], b
    xor d
    inc e
    ld a, [hl-]
    ld h, [hl]
    nop
    ldh a, [rNR41]
    ld d, $15
    jp $4021


    and a
    ld b, b
    add sp, -$34
    add [hl]
    ret nz

    ld l, $c1
    xor e
    ld e, b
    cp [hl]
    and $c0
    ldh a, [$28]
    rla
    ld l, a
    ld sp, $8131
    ld [hl], d
    ret nz

    add e
    ld [hl], d
    add c
    add b
    ret z

    ldh [$c0], a
    pop bc
    jp z, Jump_073_6d20

    pop bc
    cp [hl]
    and $80
    ldh a, [rNR41]
    dec hl
    ld sp, $acff
    xor c
    add b
    ld [hl], d
    ld d, l
    ld d, h
    ld d, h
    ld d, l
    ld a, c
    ld [hl], d
    sbc h
    add c
    ld b, b
    jp z, Jump_073_4d46

    ld sp, $6331
    ld hl, $7c04
    push hl
    ret nz

    di
    add c
    rra
    rst $20
    ld a, a
    ldh [rP1], a
    push bc
    jp hl


    and b
    pop af
    and c
    ld bc, $6360
    inc hl
    ld a, [hl-]
    db $e3
    add b
    ld a, [c]
    add c
    ldh [rNR23], a
    ld b, [hl]
    dec de
    add b
    ret nz

    and l
    ld b, $2c
    ld [hl+], a
    ld e, l
    ld e, h
    ld hl, $f826
    pop bc
    ld [hl], b
    ld a, a
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
    add b
    inc bc
    nop
    nop
    nop
    ld h, c
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    or $0a
    dec bc
    rst $38
    jp hl


    di
    dec hl
    dec hl
    pop af
    pop hl
    jp z, Jump_073_4ce3

    ld c, h
    ld c, h
    inc c
    ld a, d
    db $e3
    ldh [rOCPD], a
    rst $18
    ldh [rWX], a
    dec bc
    ld c, e
    ld a, [hl+]
    ret c

    ld [c], a
    ld e, b
    or b
    rst $28
    pop bc
    ld [$e1be], a

jr_073_4ebb:
    ld a, [bc]
    ld a, [bc]
    ret nz

    db $e4
    inc l
    ret nz

    ld [c], a
    dec h
    ld l, e
    rst $38
    ldh [rWX], a
    ret nz

    ldh [$a6], a
    pop hl
    ld a, [hl+]
    ret nz

    pop af
    ld a, a
    db $e3
    ld e, b
    call c, $fee0
    ld [c], a
    ld a, l
    ldh [$0b], a
    ld a, [bc]
    ld c, d
    db $e3
    ld c, e
    add b
    pop hl
    rlca
    ld l, e
    ld l, e
    dec hl
    ret nz

    pop hl
    add sp, -$20
    add b
    db $f4
    ld b, b
    pop hl
    sbc [hl]
    ldh [$ec], a
    ld a, [hl-]
    db $e4
    cp a
    pop hl
    ld c, e
    dec hl
    ret nz

    db $e4
    inc l
    ld c, h
    inc c
    jr z, jr_073_4ebb

    ldh [$c0], a
    ld [c], a
    dec de
    db $e4
    ld a, [hl+]
    ld b, b
    ld a, [c]
    ld l, e
    dec e
    pop hl
    cp a
    rst $20
    sbc [hl]
    ret nz

    push hl
    dec hl
    dec bc
    inc c
    dec hl
    pop bc
    ldh [$80], a
    db $e4
    ld c, e
    inc bc
    dec bc
    ld a, [hl+]
    db $fd
    ret nz

    nop
    pop af
    pop bc
    jp hl


    push de
    pop bc
    sbc d
    push hl
    or l
    ret nz

    nop
    add c
    pop hl
    ld b, b
    db $e3
    ld h, $e1
    ret nz

    di
    sbc h
    pop hl
    add d
    add sp, $7f
    ret nz

    ld b, b
    push hl
    ld bc, $712b
    ret nz

    add b
    db $e4
    ld a, [hl]
    pop bc
    add b
    push de
    db $db
    pop hl
    ld [bc], a
    push hl
    ret nz

    ldh [rP1], a
    ld d, h
    ret nz

    and [hl]
    push hl
    ret nz

    and $e5
    ld [c], a
    ld a, $c1
    add b
    pop af
    ret nz

    rst $20
    cp a
    ld [c], a
    nop
    ret nz

    ldh a, [$28]
    db $e3
    ld a, h
    pop bc
    or b
    xor a
    ld e, l
    ld [c], a
    ret nz

    jp hl


    cp [hl]
    and b
    ret nz

    ld a, [c]
    ld h, b
    ei
    and b
    nop
    pop de
    add c
    and $1d
    pop bc
    ret nz

    ld [$2a4b], a
    ld a, a
    rst $28
    nop
    ld b, b
    or b
    jp c, Jump_000_06c1

    call nz, $ecc0
    cp a
    push bc
    ld a, $e3
    and e
    and d
    add b
    pop de
    ld b, b
    ld b, $a4
    add b
    db $e4
    di
    and c
    nop
    push bc
    cp a
    db $eb
    add b
    or h
    ld a, [bc]
    ld c, b
    and l
    ld a, [bc]
    ld a, [hl-]
    jp Jump_000_006b


    and $2a
    ret nz

    rst $20
    cp a
    push hl
    ld h, $a4
    nop
    or b
    nop
    ld b, $a3
    ld a, [de]
    xor d
    add l
    add d
    ld a, a
    and c
    rra
    push bc
    ld d, l
    add b
    ld b, b
    sbc b
    push bc
    and d
    nop
    ei
    add e
    ret nz

    rst $20
    dec h
    and b
    and [hl]
    add e
    sbc l
    and h
    ld b, b
    sub l
    ld a, [$1660]
    and b
    db $10
    ld a, h
    add h
    ret nz

    and h
    ld [hl], h
    add b
    ld b, h
    add c
    dec hl
    cp e
    ld [c], a
    and d
    and e
    and [hl]
    and h
    nop
    nop
    adc l
    cp h
    ld h, d
    ret nz

    xor $a7
    add d
    ret nz

    ld [c], a
    cp e
    ld h, h
    ret nz

    ld a, [c]
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
    ld a, b
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, -$19
    ld c, d
    ld c, d
    ld c, d
    ld l, d
    add b
    ld b, [hl]
    ld e, $ff
    jr nz, jr_073_5053

    ld l, d
    ld l, d
    ld l, d
    ld b, b
    ld b, h
    and $23
    ld b, c
    ld b, c
    inc b
    and $a1
    ld h, a
    ld b, b
    ld c, e
    nop
    ld d, b
    pop bc
    db $e4
    cp c
    add d
    cp h
    add c
    cp a
    pop hl
    nop
    nop
    ld b, h
    cp a
    ld [c], a
    ld [bc], a
    ld b, c
    ld a, e
    ld b, b
    ld a, l
    and c
    ld h, [hl]
    ld h, [hl]
    add b
    ld [$e4c1], a
    nop
    add a
    ld [hl+], a
    cp a
    ld [c], a
    sbc d
    ld h, $bf
    pop hl
    inc bc
    ld b, d
    ld a, [hl-]
    ld b, c
    cp l
    ld hl, $f1c0
    ld b, e
    ld l, d
    ld a, [bc]
    ld h, d
    and c
    db $fd
    ld b, l
    ld a, [hl-]
    add d
    ld b, b
    inc hl
    ld [$e27e], sp
    add b

jr_073_5053:
    xor b
    inc hl
    ld sp, hl
    ld hl, $821d
    ret nz

    ld d, d
    call z, $bd40
    ld b, l
    or $22
    ld l, h
    nop
    ld [hl+], a
    dec hl
    jp nz, Jump_000_0481

    pop hl
    ld h, l
    ld hl, $11c0
    ld c, [hl]
    ld b, c
    ld e, b
    db $e3
    ld e, d
    inc h
    nop
    ld [c], a
    dec c
    ret nz

    db $e3
    dec h
    ld hl, $93c0
    jr jr_073_50bf

    ret nz

    add sp, -$7f
    db $e4
    ld b, b
    ldh [rSB], a
    inc c
    ld b, b
    jr nz, jr_073_50b3

    ld [hl+], a
    cp e
    nop
    ld a, a
    db $e3
    add b
    ld de, $40fe
    cp e
    jr nz, @+$06

    jp nz, Jump_073_4204

    ld b, $08
    nop
    ldh [$30], a
    db $e4
    ld [$bf00], a
    pop hl
    ret nz

    push af
    inc b
    add c

jr_073_50a6:
    dec bc
    jp nz, Jump_073_4c40

    ld h, $2a
    ld h, a
    inc bc
    cp a
    db $e4
    add b
    ld [hl], h
    and b

jr_073_50b3:
    jp Jump_073_7b04


    ld b, h
    ret nz

    ldh [$08], a
    add d
    pop hl
    jp $ae60


jr_073_50bf:
    ld h, [hl]
    xor c
    ld b, d
    add b
    halt
    rst $18
    and c
    jp nz, $c043

    db $e4
    ld c, c
    and d
    ld [hl], h
    ret nz

    pop bc
    db $ed
    ld b, b
    ld [hl], h
    nop
    swap b
    ld b, b
    rst $20
    adc b
    inc b
    ld a, [hl+]
    ld b, c
    ld b, b
    ld d, [hl]
    inc l
    inc l
    nop
    call $e600
    ld [$02c9], sp
    ld l, c
    ld c, b
    ret nz

    db $f4
    ld c, h
    jp $4021


    jp $c3dc


    ret nz

    call nz, $ae00
    ld hl, $024b
    add e
    ld b, l
    ret nz

    ld [de], a
    reti


    add e
    ld e, [hl]
    ret nz

    jr jr_073_50a6

    ret nz

    jp hl


    nop
    ld b, l
    nop
    xor [hl]
    and h
    cp [hl]
    and $30
    sub c
    dec de
    and b
    sub a
    db $e4
    reti


    add d
    ld b, b
    ret z

    nop
    ld l, e
    ret z

    rst $38
    inc h
    ret nz

    di
    ld b, d
    ld b, e
    ld [hl], $05
    nop
    push bc
    ld [hl-], a
    and h
    ld a, c
    jp nz, Jump_000_3a00

    push hl
    add b
    ld a, [c]
    res 0, c
    ret nz

    and $dc
    ld h, b
    ret nz

    add $be
    ld [hl+], a
    ld hl, $0026
    ccf
    add c
    ld [hl], b
    ld a, a
    rst $38
    rst $38
    rst $38
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
    ld b, b
    inc hl
    nop
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
    ldh [rP1], a
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
    ldh [rP1], a
    nop
    nop
    cp $01
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

    db $00, $00, $00, $00, $3f, $3f, $00, $00, $e0, $7f, $ff, $6b, $58, $1e, $00, $00
    db $00, $00, $00, $78, $1e, $00, $c0, $03, $5e, $7e, $d8, $7d, $92, $7d, $0e, $7d
    db $9c, $7e, $ff, $4b, $5c, $37, $f7, $7d, $08, $25, $08, $25, $08, $25, $08, $25
    db $08, $25, $08, $25, $08, $25, $08, $25, $3f, $4a, $ff, $6b, $ff, $20, $00, $00
    db $1f, $5e, $ff, $6b, $d8, $7c, $00, $00, $ff, $00, $00, $01, $01, $03, $02, $03
    db $02, $ff, $07, $04, $7f, $7c, $7f, $40, $27, $3a, $ff, $00, $00, $80, $80, $c0
    db $40, $c0, $40, $ff, $e0, $20, $fe, $3e, $fe, $02, $e4, $5c, $ff, $00, $00, $07
    db $03, $1f, $0c, $33, $1c, $ff, $26, $39, $7c, $23, $7c, $43, $5e, $61, $ff, $00
    db $00, $e0, $c0, $f8, $30, $cc, $38, $ff, $64, $9c, $3e, $c4, $3e, $c2, $7a, $86
    db $81, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f3, $f2, $13, $ff
    db $1e, $0a, $0f, $08, $0f, $10, $1f, $11, $ff, $1f, $26, $3e, $38, $38, $00, $00
    db $c8, $ff, $78, $50, $f0, $10, $f0, $08, $f8, $88, $ff, $f8, $64, $7c, $1c, $1c
    db $00, $00, $4f, $ff, $70, $4f, $70, $7f, $67, $7a, $3f, $32, $ff, $1f, $10, $1f
    db $18, $0f, $0f, $07, $f2, $ff, $0e, $f2, $0e, $fe, $e6, $5e, $fc, $4c, $7f, $f8
    db $08, $f8, $18, $f0, $f0, $e0, $9e, $ff, $80, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $f6, $f5, $20, $cd, $ce, $ed, $03, $2f, $03, $0f, $0c, $13, $00, $c0, $3c
    db $00, $c2, $f0, $cd, $ee, $e0, $c3, $3a, $3f, $12, $e0, $c0, $08, $0f, $07, $e9
    db $07, $b0, $af, $7e, $e1, $01, $ff, $e0, $03, $02, $3f, $f7, $3e, $3f, $20, $70
    db $e1, $c0, $c0, $e0, $20, $ff, $e0, $20, $f0, $10, $ff, $1f, $ff, $01, $7b, $0e
    db $0e, $5e, $e7, $01, $01, $9f, $9f, $be, $e1, $ff, $00, $00, $60, $60, $f0, $90
    db $f0, $90, $ff, $f8, $08, $ff, $0f, $84, $87, $87, $87, $de, $3c, $e9, $cc, $cf
    db $03, $03, $2c, $e1, $30, $30, $ff, $78, $48, $78, $48, $fc, $84, $81, $81, $ef
    db $42, $c3, $c3, $c3, $1a, $e7, $18, $ff, $66, $f7, $e7, $81, $81, $f6, $e2, $18
    db $3c, $24, $3c, $7d, $24, $35, $a0, $c0, $21, $e1, $e1, $e1, $f8, $c5, $ff, $80
    db $ff, $8c, $ff, $33, $f3, $c0, $c0, $7e, $e8, $c1, $0c, $0c, $1e, $12, $40, $c0
    db $75, $e0, $df, $e0, $90, $f0, $70, $70, $d6, $c3, $20, $3f, $7f, $40, $7f, $46
    db $7f, $99, $f9, $e0, $26, $c2, $d7, $06, $06, $a0, $55, $e0, $10, $ee, $a0, $c8
    db $f8, $ee, $e2, $a1, $00, $00, $14, $f8, $a0, $20, $3f, $23, $e7, $3f, $4c, $7c
    db $ce, $e3, $c0, $ad, $13, $1d, $09, $bf, $0f, $05, $07, $04, $07, $08, $aa, $a0
    db $13, $ff, $1f, $1c, $1c, $f2, $2e, $e4, $3c, $28, $fe, $d4, $a0, $04, $fc, $c4
    db $fc, $32, $3e, $0e, $7f, $0e, $9f, $90, $09, $0e, $04, $07, $8f, $80, $fb, $03
    db $04, $da, $e0, $09, $0f, $ff, $00, $f9, $ff, $97, $f2, $9e, $94, $fc, $04, $fc
    db $02, $ff, $fe, $62, $fe, $99, $9f, $cf, $cf, $cf, $9f, $48, $84, $87, $02, $03
    db $ce, $c1, $da, $e1, $ff, $ff, $87, $ff, $00, $fc, $4b, $79, $cf, $4a, $ff, $fe
    db $02, $fe, $01, $ff, $31, $ff, $00, $7f, $00, $e7, $e7, $e7, $24, $42, $c3, $1c
    db $e3, $ff, $81, $81, $7e, $42, $ff, $c3, $ff, $00, $ff, $7e, $a5, $3c, $e7, $a5
    db $ff, $81, $ff, $fd, $00, $e0, $e0, $00, $00, $f3, $f3, $f3, $12, $df, $21, $e1
    db $40, $c0, $80, $ff, $e0, $1e, $12, $ff, $3f, $21, $ff, $e1, $ff, $00, $3f, $d2
    db $bf, $9e, $f3, $52, $7f, $40, $7f, $fc, $c2, $80, $ff, $f9, $f9, $f9, $09, $90
    db $70, $20, $e0, $ff, $40, $c0, $0f, $09, $0f, $09, $1f, $10, $ff, $ff, $f0, $ff
    db $00, $9f, $e9, $4f, $79, $f3, $29, $3f, $00, $81, $fe, $61, $fc, $7c, $fc, $04
    db $bf, $c8, $b8, $90, $f0, $03, $03, $33, $e0, $04, $ff, $0f, $08, $ff, $f8, $ff
    db $80, $4f, $74, $ef, $27, $3c, $08, $07, $fe, $e1, $0f, $00, $f0, $b7, $00, $10
    db $e0, $fe, $e1, $04, $03, $fe, $e3, $07, $df, $00, $f8, $00, $08, $f0, $fe, $e7
    db $f8, $00, $db, $07, $00, $e4, $e1, $02, $01, $fe, $e5, $03, $00, $ef, $fc, $00
    db $04, $f8, $fe, $e7, $fc, $00, $03, $df, $00, $02, $01, $01, $00, $fe, $e9, $fe
    db $00, $eb, $02, $fc, $fe, $e7, $fe, $e4, $e0, $ff, $00, $81, $0d, $7e, $fe, $e7
    db $ff, $00, $00, $00

    nop

    db $63, $00, $01, $fe, $f0, $ff, $ff, $e7, $e6, $10, $11, $fe, $ef, $00, $ca, $ff
    db $e9, $e8, $80, $ff, $80, $ff, $80, $ff, $80, $ff, $80, $ff, $80, $ff, $00, $80
    db $ff, $80, $ff, $80, $ff, $80, $ff, $ff, $ff, $80, $ff, $ff, $ff, $80, $ff, $00
    db $ff, $ff, $80, $ff, $80, $ff, $80, $ff, $80, $ff, $80, $ff, $80, $ff, $80, $ff
    db $00, $80, $ff, $80, $ff, $80, $ff, $80, $ff, $80, $ff, $ff, $ff, $80, $ff, $ff
    db $ff, $cc, $ff, $ff, $ff, $fe, $20, $20, $dc, $ff, $fa, $f9, $23, $23, $00, $dc
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $f7, $00
    db $00

    nop

    db $01, $0b, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $20, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f8, $f7, $2b, $dd
    db $ff, $c0, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff
    db $ff, $ff, $ff, $f3, $00, $00

    nop

    db $01, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $e0, $00, $00, $00, $01, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $e0, $00, $00, $00, $00, $02, $00, $04
    db $02, $02, $00, $04, $04, $02, $00, $04, $06, $02, $00, $04, $08, $02, $00, $04
    db $0a, $02, $00, $04, $0c, $02, $00, $04, $0e, $02, $00, $04, $20, $02, $00, $04
    db $22, $02, $00, $04, $24, $02, $00, $04, $26, $02, $00, $04, $28, $02, $00, $04
    db $2a, $02, $00, $04, $2c, $02, $00, $04, $2e, $02, $00, $04, $ff, $00, $10, $02
    db $10, $04, $12, $02, $10, $04, $14, $02, $10, $04, $16, $02, $10, $04, $18, $02
    db $10, $04, $1a, $02, $10, $04, $1c, $02, $10, $04, $1e, $02, $10, $04, $30, $02
    db $10, $04, $32, $02, $10, $04, $34, $02, $10, $04, $36, $02, $10, $04, $38, $02
    db $10, $04, $3a, $02, $10, $04, $3c, $02, $10, $04, $3e, $02, $10, $04, $ff, $00
    db $fe, $ff, $00, $00, $01, $01, $03, $02, $03, $02, $ff, $07, $04, $7f, $7c, $7f
    db $40, $27, $3a, $ff, $00, $00, $80, $80, $c0, $40, $c0, $40, $ff, $e0, $20, $fe
    db $3e, $fe, $02, $e4, $5c, $f5, $00, $ff, $e2, $01, $ff, $e0, $03, $02, $3f, $3e
    db $fb, $3f, $20, $f0, $e1, $c0, $c0, $e0, $20, $e0, $ff, $20, $f0, $10, $ff, $1f
    db $ff, $01, $0e, $79, $0e, $de, $e3, $da, $e3, $9f, $9f, $07, $07, $ce, $e1, $ff
    db $60, $60, $f0, $90, $f0, $90, $f8, $08, $bf, $ff, $0f, $84, $87, $87, $87, $de
    db $e7, $00, $df, $00, $cc, $cf, $03, $03, $ac, $e1, $30, $30, $ff, $78, $48, $78
    db $48, $fc, $84, $81, $81, $ef, $42, $c3, $c3, $c3, $bc, $e7, $18, $ff, $66, $f7
    db $e7, $81, $81, $f6, $e2, $18, $3c, $24, $3c, $7d, $24, $75, $e0, $c0, $21, $e1
    db $e1, $e1, $9a, $e5, $ff, $80, $ff, $8c, $ff, $33, $f3, $c0, $c0, $7e, $68, $e1
    db $0c, $0c, $1e, $12, $40, $c0, $75, $e0, $df, $e0, $90, $f0, $70, $70, $56, $e3
    db $20, $3f, $ff, $40, $7f, $46, $7f, $99, $f9, $e0, $e0, $ee, $46, $e1, $06, $06
    db $a0, $55, $e0, $10, $f0, $10, $df, $f0, $c8, $f8, $38, $38, $34, $e1, $14, $1f
    db $ff, $10, $1f, $20, $3f, $23, $3f, $4c, $7c, $fe, $ce, $e3, $13, $1e, $0a, $0f
    db $08, $0f, $10, $df, $1f, $11, $1f, $26, $3e, $de, $e1, $c8, $78, $fd, $50, $d2
    db $e0, $08, $f8, $88, $f8, $64, $7c, $fb, $1c, $1c, $e0, $e0, $1d, $09, $0f, $05
    db $07, $f7, $04, $07, $08, $da, $e0, $13, $1f, $1c, $1c, $ff, $f2, $2e, $e4, $3c
    db $28, $f8, $08, $f8, $ff, $04, $fc, $c4, $fc, $32, $3e, $0e, $0e, $bf, $9f, $90
    db $09, $0e, $04, $07, $bf, $c0, $03, $fd, $04, $da, $e0, $09, $0f, $ff, $00, $f9
    db $97, $ff, $f2, $9e, $94, $fc, $04, $fc, $02, $fe, $ff, $62, $fe, $99, $9f, $cf
    db $cf, $cf, $48, $cf, $84, $87, $02, $03, $be, $c1, $da, $e1, $ff, $87, $ff, $ff
    db $00, $fc, $4b, $79, $cf, $4a, $fe, $ff, $02, $fe, $01, $ff, $31, $ff, $00, $00
    db $bf, $e7, $e7, $e7, $24, $42, $c3, $0c, $e3, $81, $ff, $81, $7e, $42, $ff, $c3
    db $ff, $00, $7e, $ff, $a5, $3c, $e7, $a5, $ff, $81, $ff, $00, $fe, $e0, $e0, $00
    db $00, $f3, $f3, $f3, $12, $21, $ef, $e1, $40, $c0, $80, $ff, $e0, $1e, $12, $3f
    db $ff, $21, $ff, $e1, $ff, $00, $3f, $d2, $9e, $df, $f3, $52, $7f, $40, $7f, $ec
    db $c2, $80, $f9, $ff, $f9, $f9, $09, $90, $70, $20, $e0, $40, $ff, $c0, $0f, $09
    db $0f, $09, $1f, $10, $ff, $ff, $f0, $ff, $00, $9f, $e9, $4f, $79, $29, $f9, $3f
    db $30, $c1, $2e, $c1, $fc, $7c, $fc, $04, $c8, $df, $b8, $90, $f0, $03, $03, $33
    db $e0, $04, $0f, $ff, $08, $ff, $f8, $ff, $80, $4f, $74, $27, $01, $3c, $10, $ee
    db $f0, $cc, $10, $ed, $f0, $cd, $10, $ed, $f0, $ce, $10, $ec, $00, $f0, $cd, $10
    db $ef, $f0, $cb, $10, $f1, $f0, $c9, $10, $ef, $f0, $cb, $10, $ed, $00, $f0, $cd
    db $10, $af, $f0, $8d, $10, $ab, $f0, $8d, $10, $ad, $f0, $8d, $10, $ad, $00, $f0
    db $8d, $10, $ad, $f0, $8d, $10, $af, $f0, $8b, $10, $ad, $f0, $8d, $10, $ad, $00
    db $f0, $8d, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $24, $01, $00, $00, $00

    nop
    nop
    nop
    nop
    ccf
    ccf
    nop
    nop
    nop
    jr nz, jr_073_5b52

    ld d, l
    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    inc sp
    ld bc, $023f
    ld [$a403], a
    ld [bc], a
    rst $38
    ld h, e
    rst $28
    inc bc
    ld [$a403], a
    ld [bc], a
    ld b, b
    ld [hl], c
    ret nz

jr_073_5b52:
    ld a, [hl]
    call nc, $a400
    ld [bc], a
    rst $38
    ld a, a
    ld [$a403], a
    ld [bc], a
    jr nz, jr_073_5b70

    cp a
    nop
    add [hl]
    ccf
    inc h
    ld l, $20
    ld de, $2508
    ld [$0825], sp
    dec h
    ld [$d525], sp

jr_073_5b70:
    nop
    rst $38
    ldh [rTIMA], a
    ei
    ldh [$0b], a
    rst $30
    pop hl
    nop
    ld [bc], a
    db $eb
    nop
    jr z, @-$0f

    ldh [$90], a
    db $eb
    ldh [$f5], a
    nop
    ret z

    cp $e5
    ldh [$80], a
    nop
    db $ec
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    cp $42
    ld hl, sp-$38
    ldh a, [$80]
    ldh [rNR10], a
    rst $28
    ldh [rP1], a
    ret nz

    rst $38
    rst $38
    ld [c], a
    rst $30
    rst $38
    cp h
    ld a, a
    rst $38
    add sp, -$01
    add c
    cp $08
    ldh a, [$f8]
    push hl
    ei
    jr nz, jr_073_5b70

    cp a
    ld [c], a
    nop
    ld a, a
    rst $38
    cpl
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    or a
    ld a, a
    rra
    ld a, a
    rst $38
    rrca
    ld a, a
    ld c, a
    ccf
    rlca
    rra
    ld [bc], a
    rra
    rst $38
    inc de
    rrca
    ld bc, $0b0f
    rlca
    ld bc, $ff07
    nop
    rlca
    inc b
    inc bc
    ld e, h
    rst $38
    nop
    rst $38
    rst $20
    add c
    inc a
    db $10
    db $d3
    db $e3
    add e
    ldh [rNR41], a
    ret nz

    add b
    cp a
    ret nz

    nop
    ldh [$90], a
    ldh [$80], a
    cp $e0
    nop
    ei
    ret nz

    jr nz, @-$5e

    ldh [$7d], a
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    ld a, [$e2da]
    ld [$e063], sp
    and h
    ld hl, sp-$20
    ld hl, sp-$10
    rst $38
    db $fc
    ret nc

    db $fc
    ld a, [c]
    db $fc
    ldh [$fc], a
    or b
    rst $30
    ld hl, sp-$1c
    ld hl, sp-$80
    push hl
    cp [hl]
    rst $38
    db $e3
    rst $38
    rst $38
    ld b, b
    rst $38
    nop
    rst $20
    db $fc
    rst $38
    or $ff
    ld a, a
    db $fc
    rst $38
    ld hl, sp-$02
    add sp, -$02
    ld hl, sp-$08
    ldh [$0b], a
    db $f4
    rst $38
    ld a, b
    ldh [$80], a
    and e
    and $23
    pop hl
    ldh a, [$e0]
    rst $28
    ld [$c0e3], a
    ld b, b
    ldh [$ea], a
    ret nc

    pop hl
    rst $08
    jp hl


    ld [bc], a
    add c
    and b
    rst $38
    pop bc
    add b
    pop bc
    add l
    jp $c3a1


    nop
    ld a, a
    add e
    dec b
    add e
    ld b, b
    add c
    ld b, c
    add b
    ret nz

    ldh [rIE], a
    ret nz

    and b
    ret nz

    ret nz

    ldh [rBCPS], a
    ldh a, [$f1]
    rst $38
    db $fc
    call c, Call_000_1eff
    rst $38
    add b
    ld e, $12
    ld a, [hl]
    call nc, Call_073_48c2
    nop
    ld bc, $5878
    rst $38
    or b
    jp hl


    rst $38
    ld [bc], a
    ld bc, $0300
    nop
    nop
    ld b, b
    ld b, b
    ld a, a
    nop
    jr nz, jr_073_5c82

jr_073_5c82:
    db $10
    ld [$0400], sp
    or d
    ret nz

    ret nz

    and d
    pop bc
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f3]
    jp $e33c


    jp $fd3c


    ldh [$fe], a
    ld [c], a
    db $f4
    pop hl
    dec de
    rst $20
    cpl
    rst $38
    call c, $f11e
    inc a
    db $e3
    ld a, h
    jp Jump_073_7f7c


    jp $9ce3


    jp $18bc


    rst $20
    ld [c], a
    pop hl
    rst $38
    ld a, [de]
    push hl
    ld [de], a
    rst $28
    ld e, a
    cp b
    ld a, a
    ldh [rIE], a
    di
    adc h
    inc de
    rst $28
    rra
    ld hl, sp-$04
    ld h, e
    cp a
    db $fc
    add e
    db $fc
    inc bc
    cp h
    ld b, e
    call nz, $98e1
    rst $38
    rst $20
    db $fc
    ld b, e
    call c, $f863
    daa
    ld l, b
    rst $38
    or a
    ld l, h
    sub e
    db $fc
    inc de
    add sp, $17
    ld hl, sp-$01
    rrca
    sbc $25
    inc a
    rst $00
    ld a, $c3
    ccf
    rst $38
    jp nz, $c13e

    jp $c33d


    dec a
    cp e
    rst $30
    rst $10
    rst $38
    nop
    and b
    jp hl


    jp $c3bc


    cp h
    ret


    ld a, h
    jp nz, $bee0

    pop hl
    ld b, e
    db $f4
    ldh [$a0], a
    pop hl
    nop
    rst $38
    cp a
    db $dd
    db $eb
    rst $38
    nop
    ld a, [hl]
    add c
    add b
    ld [c], a
    db $f4
    rst $38
    rrca
    ldh a, [rNR32]
    db $e3
    inc e
    di
    inc e
    db $e3
    rst $38
    inc c
    di
    ccf
    ret nc

    dec de
    db $f4
    ld d, a
    rst $38
    ld e, a
    xor a
    db $fc
    ld a, [hl]
    pop af
    cp h
    ld [hl], b
    ldh [$fc], a
    ld [hl], b
    ld [c], a
    rst $38
    ei
    rst $38
    sbc $ff
    push af
    rst $38
    xor d
    rst $38
    or a
    ld d, a
    rst $38
    cp a
    ld h, a
    and b
    di
    adc h
    ld hl, sp-$1f
    ld a, h
    db $fd
    db $e3
    ld [hl], b
    rst $20
    rst $28
    rst $38
    rst $10
    ld a, a
    db $ed
    ld a, a
    rst $38
    rst $30
    ccf
    ld l, e
    cp a
    db $76
    sbc a
    ei
    rra
    rst $38
    push af
    rra
    ld a, [$dd0f]
    daa
    ld a, $c7
    di
    ccf
    jp $e06e


    ld [hl], b
    ld [c], a
    db $ed
    rst $38
    db $d3
    inc a
    dec sp
    ld a, [hl]
    add c
    ld [hl], b
    jp hl


    db $e3
    sbc h
    cp h
    inc d
    ldh [rBCPD], a
    ldh [$eb], a
    jp $1063


    ldh [$57], a
    and h
    ldh [$7d], a
    rst $38
    db $d3
    ld sp, hl
    rst $28
    ld c, d
    pop hl
    db $e4
    pop bc
    cp e
    db $f4
    ld e, e
    db $f4
    xor h
    rst $38
    di
    ld l, h
    di
    cp h
    db $e3
    ld l, h
    di
    cp e
    rst $38
    db $f4
    db $db
    db $f4
    cp l
    jp $ffe7


    cp d
    cp a
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    cp $58
    and b
    rst $38
    rst $28
    rst $38
    db $db
    rst $38
    ld l, a
    adc [hl]
    ldh [$af], a
    ld a, a
    or l
    rst $08
    ld a, a
    rst $28
    ld a, a
    ld d, a
    ld b, [hl]
    and b
    ret nc

    jp $e718


    cp $f8
    push hl
    ld d, a
    rst $38
    xor h
    rst $38
    ld [hl], h
    ei
    cp b
    ld l, a
    rst $20
    ld e, b
    rst $20
    db $fc
    dec b
    ldh [$98], a
    rst $20
    ld b, b
    rst $20
    rst $18
    cp d
    rst $38
    db $ec
    di
    sbc b
    ldh [$e0], a
    cp d
    rst $38
    jp hl


    ld l, h
    ld hl, sp-$20
    ret z

    push hl
    rst $28
    ld h, $e0
    ld l, l
    rst $38
    scf
    rst $38
    rst $38
    dec hl
    rst $38
    ld d, $ff
    dec sp
    rst $38
    dec d
    rst $38
    rst $38
    ld a, [de]
    rst $28
    dec [hl]
    rst $08
    ld a, $c7
    dec de
    rst $38
    rst $20
    ld a, [de]
    rst $20
    dec a
    jp $c33f


    add hl, de
    db $db
    rst $20
    rst $10
    db $e4
    add b
    inc l
    db $d3
    and b
    rst $20
    sbc b
    rst $20
    adc d
    ld b, d
    pop hl
    ret c

    and b
    ldh [$bc], a
    sbc $c0
    or b
    pop hl
    ld b, b
    pop hl
    set 7, [hl]
    ld a, b
    and $b0
    rst $38
    ld d, h
    ei
    and h
    ei
    ld a, b
    rst $38
    rst $30
    xor b
    rst $30
    ld h, h
    ei
    or h
    ei
    ret nc

    rst $38
    rst $38
    pop bc
    rst $38
    or a
    rst $38
    ld e, l
    rst $38
    ld [$3e54], a
    ldh [$3a], a
    add c
    rst $38
    sub h
    add b
    ld d, a
    ld a, $e0
    dec [hl]
    ld a, [hl-]
    ldh [$f6], a
    xor [hl]
    ret nz

    rst $38
    rst $10
    ld hl, $ff83
    db $dd
    rst $38
    ld [hl], a
    ld e, h
    sbc h
    ret nz

    call c, $afe1
    rst $38
    rst $18
    adc $e0
    rst $18
    ld hl, sp-$1a
    inc d
    rst $38
    push hl
    sbc $e5
    ld e, a
    jp z, Jump_073_6fe0

    add $e0
    ld hl, sp-$1b
    ldh [$63], a
    jp z, $e1f8

    ld e, a
    sub [hl]
    ldh [$5f], a
    ret nc

    and $c7
    push hl
    ld l, c
    rst $38
    rst $38
    call nc, $81fc
    ldh a, [rDMA]
    ldh [$8b], a
    ret nz

    ld a, a
    ld d, a
    ret nz

    dec e
    add b
    xor a
    add b
    db $fd
    xor a
    ld h, b
    db $fd
    jp c, $8048

    and b
    db $fc
    ld b, c
    ldh a, [$0b]
    ret nz

    ei
    ld d, $00
    ld hl, sp-$1f
    ld a, [bc]
    ret nz

    rla
    nop
    cp l
    rst $30
    nop
    ld l, a
    nop
    push de
    ld h, b
    nop
    ld hl, sp-$02
    db $f4
    rst $38
    cp $d8
    db $fc
    pop af
    db $fc
    ld [c], a
    ld hl, sp-$2f
    rst $38
    ld hl, sp+$63
    ldh a, [$c6]
    ldh a, [$8b]
    ldh [rBGP], a
    rst $38
    ldh [$8f], a
    ret nz

    dec de
    ret nz

    cpl
    add b
    rra
    rst $38
    add b
    scf
    nop
    ld e, a
    nop
    inc h
    inc a
    ld b, d
    cp a
    nop
    xor l
    nop
    rst $30
    nop
    ld a, l
    jp nc, $ffe2

    push af
    nop
    db $ec
    pop hl
    cp a
    db $e4
    ldh [$2f], a
    add b
    cp a
    add b
    rst $18
    ld d, a
    nop
    ccf
    nop
    push af
    ld a, $e0
    ld b, l
    rst $38
    rst $38
    nop
    rst $00
    stop
    ld l, l
    nop
    cp e
    nop
    rst $38
    rst $28
    nop
    rst $20
    ldh a, [rSCX]
    ldh a, [$e5]
    ldh a, [rIE]
    ld b, a
    ldh [$8a], a
    ldh [$c7], a
    ldh [$a5], a
    ldh a, [$eb]
    jp $30f0


    ld h, e
    rst $18
    ld l, $60
    xor l
    rst $38
    ld b, d
    rst $38
    rst $38
    nop
    jp $fffc


    ld a, [$fcff]
    sbc $8c
    ldh [$f8], a
    cp $ec
    cp $f6
    ldh [rIE], a
    rst $38
    rst $38
    add b
    ccf
    add b
    ld a, a
    ret nz

    sbc a
    ret nz

    ld c, a
    rst $38
    ldh [$87], a
    ldh a, [$d5]
    db $fc
    ld l, c
    rst $38
    ccf
    rst $38
    nop
    rrca
    ret nz

    ld b, e
    ldh a, [$a0]
    db $fc
    db $f4
    add $4a
    ldh [rIE], a
    rst $38
    ld b, d
    ldh [$88], a
    db $e4
    add sp, -$1b
    db $e3
    rrca
    rst $38
    and $0f
    rr a
    rst $00
    rra
    adc a
    ccf
    rst $30
    sbc e
    ccf
    cpl
    db $fc
    ld b, b
    cp $00
    cp $00
    rst $38
    db $fc
    ld bc, $01fc
    ld hl, sp+$03

jr_073_5f6f:
    ld sp, hl
    inc bc
    rst $08
    ld a, [c]
    rlca
    pop af
    rlca
    ret nc

    push hl
    inc h
    pop hl
    db $d3
    nop
    ld e, a
    ld b, d
    ld a, [hl]
    cp $00
    rst $38
    ld [c], a
    ldh [$fe], a
    sbc $e0
    rst $08
    db $fc
    ld bc, $01ff
    ld a, [c]
    ldh [$0a], a
    ld [c], a
    inc a
    nop
    rst $30
    nop
    rst $00
    ld b, l
    add h
    ret nz

    push af
    rst $38
    rst $20
    rrca
    rst $28
    ld [c], a
    rrca
    rst $30
    rrca
    add $e1
    di
    rlca
    push hl
    cp a
    rrca
    db $e3
    rrca
    jr jr_073_5f6f

    ld b, d
    ld d, [hl]
    ldh [$f7], a
    ld [$c676], a
    ccf
    ld a, [hl]
    ret nz

    ccf
    add b
    and b
    sbc a
    ld a, a
    scf
    db $fd
    ld a, a
    or $e0
    rst $38
    ld [$5500], sp
    nop
    cp [hl]
    ld [hl], h
    ldh a, [$c0]
    ld l, b
    push hl
    ld e, a
    db $fc
    ret nz

    ld a, a
    nop
    xor a
    db $fc
    ldh [$9d], a
    ccf
    db $f4
    ld [c], a
    ld de, $2a80
    call nc, $f0c0
    push hl
    cp a
    ldh a, [$fa]
    db $e4
    ld l, d
    jp hl


    db $f4
    db $eb
    nop
    add e
    dec de
    db $e4
    dec d
    xor $ff
    dec l
    ret nc

    dec b
    ld a, [$c034]
    ld d, a
    xor d
    rst $18
    and h
    ld a, [bc]
    ld c, e
    add b
    ld b, d
    ldh [rNR41], a
    dec e
    ld [bc], a
    rst $38
    cp h
    inc bc
    sbc b
    ld h, a
    rla
    xor d
    db $e4
    ld a, [bc]
    rst $38
    adc e
    jr nz, @+$24

    nop
    db $dd
    nop
    cp l
    ld b, d
    cp $08
    and c
    ld d, $a9
    add sp, $03
    add l
    ld [hl+], a
    ld a, [hl+]
    rst $38
    rlca
    db $db
    nop
    cp h
    ld b, e
    ccf
    ret nz

    add hl, de
    ei

jr_073_6025:
    and $18
    ld h, b
    and b
    inc a
    jp $e7b8


    ld [$f7ff], sp
    call z, $90fb
    ld l, a
    ld a, [hl+]
    rst $38
    rra
    rst $38
    ldh [$d0], a
    ld bc, $a15a
    ld c, b
    rlca
    ld hl, sp-$09
    rlca
    inc e
    inc bc
    ret nz

    pop hl
    or b
    rrca
    call z, $ff3f
    ld a, c
    add [hl]
    ld [de], a
    rst $28
    dec de
    ldh [$3c], a
    jp $d0fe


    pop hl
    dec a
    ret nz

    ld c, a
    and b
    jr nc, jr_073_6025

    ld d, d
    rst $38
    and c
    ld l, l
    jp nz, $c934

    ld c, b
    or e
    ld a, [de]
    rst $38
    push hl
    dec d
    cp a
    adc $3f
    ld d, [hl]
    cp a
    ld l, l
    rst $38
    cp a
    sbc [hl]
    ld a, a
    ld l, d
    cp a
    dec e
    rst $38
    ld c, [hl]
    rst $38
    cp a
    dec [hl]
    ret nz

    ld c, [hl]
    and c
    ld [hl-], a
    ret


    ld d, a
    rst $38
    and d
    ld a, a
    push bc
    ld [hl-], a
    rst $08
    ld d, l
    cp a
    dec hl
    sbc $90
    add d
    cp h
    ld b, e
    ld e, b
    and a
    nop
    and b
    db $e3
    call nz, $f3ff
    or h
    db $eb
    sbc d
    ld a, a
    rst $28
    ccf
    ld a, [hl-]
    rst $38
    rst $18
    ld c, l
    rst $38
    or h
    rst $38
    ld a, d
    rst $38
    xor b
    ei
    rst $38
    ld [hl], h
    cp [hl]
    add b
    inc hl
    rst $18
    dec b
    rst $38
    ld a, [de]
    cp $70
    add [hl]
    call nc, $bbff
    cp $74
    rst $38
    xor [hl]
    ld a, [$209a]
    xor [hl]
    ld a, [hl-]
    add b
    inc bc
    rst $38
    ld d, d
    db $fc
    xor d
    xor a
    db $fd
    ld [hl], a
    ei
    and d
    or b
    ld h, b
    dec c
    xor h
    ld h, b
    ld a, [bc]
    rst $38
    rst $38
    ld h, a
    adc b
    call Call_000_32bb
    rst $28
    db $eb
    ld a, [$e0de]
    cp $1c
    add b
    cp d
    rst $38
    daa
    ret z

    ld l, l
    rst $38
    sbc e
    ld [hl+], a
    rst $38

jr_073_60e9:
    ld a, e
    rst $38
    or [hl]
    rst $38
    ld e, [hl]
    ei
    rst $38
    cp e
    add h
    ld h, b
    ld c, $bf
    db $dd
    ccf
    ld l, [hl]
    cp e
    cp a
    ld d, a
    ld [hl], b

jr_073_60fc:
    ldh [$6d], a
    cp a
    ld e, $70
    ldh [rHDMA2], a
    rst $38
    db $fd
    xor $f9
    ld c, c
    or $a7
    ld hl, sp+$47
    rst $38
    ldh a, [$b4]
    ret


    ld c, d
    or c
    dec de
    db $e4
    rst $38
    rst $38
    rra
    ld c, d
    cp a
    ld l, c
    sub a
    ld [de], a
    rst $28
    add hl, de
    rst $30
    ld [c], a
    jr c, jr_073_60e9

    nop
    pop hl
    dec hl
    ret nc

    xor d
    ld b, c
    cp a
    cp $01
    xor b
    rlca
    ld a, b
    add a
    db $10
    db $e3

jr_073_6131:
    and c
    rst $38
    ld e, $8c
    ld a, d
    ld d, a
    xor b
    jr c, jr_073_60fc

    dec c
    rst $30
    ldh a, [$3d]
    jp nz, Jump_073_61d8

Jump_073_6141:
    cpl
    sub b
    ld sp, hl
    nop
    rst $38
    adc d
    ld hl, $0728
    ret c

    rlca
    cp h
    ld b, e
    db $fc
    ret z

    ld h, c
    add hl, sp
    and e
    ld [bc], a
    db $fd
    ld bc, $0dfe
    ldh a, [rIE]
    ld [bc], a

Call_073_615b:
    db $fd
    ld a, [hl+]
    ret nc

    dec hl
    sub $f5
    ld a, [bc]
    rst $38
    ld e, a
    add b
    xor c
    ld [bc], a
    ld a, a
    add b
    db $10
    rrca
    rst $38
    ldh [$1f], a
    add b
    ld a, a
    ld d, a
    xor d
    push af
    ld a, [bc]
    cp a
    sbc a
    jr nz, jr_073_6131

    ld [bc], a
    ld h, a
    sbc b
    rrca
    and e
    ld c, d
    rst $38
    or l
    db $f4
    dec bc
    sbc l
    ld [hl+], a
    cp d
    rlca
    ld a, e
    ld e, a
    add b
    inc c
    di
    rlca
    ld hl, sp-$41
    and c
    add b
    sbc [hl]
    nop
    db $ed
    and b
    sbc d
    nop
    ld l, b
    rst $38
    sub b
    pop bc
    rla
    add sp, -$2f
    rst $20
    nop
    ld l, $d1
    add b
    pop hl
    ret nz

    db $e3
    or b
    rrca
    add $fc
    sub b
    call nz, $e3d0
    dec a
    ret nz

    ld e, a
    and b
    inc [hl]
    ret


    rst $10
    ld e, d
    and c
    ld a, l
    sub b
    ret nz

    ld c, h
    sub b
    ret nz

    ld d, l
    cp a
    ei
    adc [hl]
    ld a, a
    sub b
    jp z, $5ac8

    and c
    inc a
    jp $537f


    xor [hl]
    ld [hl], a
    call $bf42
    dec d
    ld l, d
    ld h, b
    cp $6b
    add c
    ret nz

    ccf
    ld b, b

Jump_073_61d8:
    cp a
    ld b, b
    rst $38
    or b
    cp a
    rst $28
    call z, $a4f3
    ei
    dec d
    cp h
    ret nz

    dec b
    xor e
    rst $38
    ld [bc], a
    add hl, hl
    and [hl]
    ld d, e
    or b
    ret nz

    ld [hl], l
    or b
    ret z

    ld [hl], a
    xor e
    adc b
    call z, $cab0
    scf
    or b
    call z, $b04e
    adc $ae
    db $db
    ld sp, hl
    ld a, c
    or b
    ret z

    cp a
    ld e, a
    or b
    jp $e21d


    ei
    ld [$20f7], sp
    pop hl
    dec l
    ret nc

    sbc d
    ld h, c
    ld a, [hl]
    cp e
    add c
    add sp, $30
    and $61
    ld e, $95
    or b
    ret nz

    add hl, sp
    rst $30
    jp nz, $f00f

    rst $38
    ld h, e
    ld d, a
    xor b
    ei
    nop
    cp a
    sbc [hl]
    ld hl, $07a8
    ld [hl], b
    adc a
    rst $28
    ld h, e
    inc c
    rst $38
    rst $30
    reti


    ld l, a
    ld [$63ff], sp
    cp l
    sub $ff
    ld l, e
    ld l, d
    rst $18
    jr nc, @-$1f

    ld d, e
    db $fd
    nop
    rst $38
    rst $38
    ld e, l
    rst $20
    ld [$40ff], sp
    cp a
    ld l, h
    sbc e
    or a
    ld c, b
    call c, Call_073_40c0
    rst $38
    ld b, h
    dec b
    inc a
    dec b
    ld d, l
    ei
    nop
    cp d
    cp [hl]
    add b
    xor e
    nop
    ld e, l
    nop
    ld [$b6fa], a
    add b
    xor [hl]
    or d
    add b
    adc d
    nop
    ld d, h
    nop
    xor d
    cp $f0
    ldh [$aa], a
    nop
    dec d
    nop
    xor b
    nop
    ld d, c
    rst $38
    nop
    ld [$2200], sp
    nop
    sub h
    nop
    add hl, hl
    xor a
    nop
    ld b, h
    nop
    db $10
    db $e4
    ldh [rP1], a
    sub e
    nop
    ld bc, $b4ce
    nop
    jr nz, jr_073_6291

jr_073_6291:
    add b
    xor [hl]
    nop
    cp l
    ldh [rNR23], a
    inc a
    rst $38
    ld a, [hl]
    ld a, [hl]
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    db $fc
    inc a
    rst $38
    cp $80
    ld a, h
    ld h, h
    nop
    nop
    ld [$ff1c], sp
    ld a, $36
    ld a, a
    and [hl]
    ld a, a

jr_073_62b0:
    add h
    ld l, a
    ld b, b
    di
    ld c, $08
    sbc [hl]
    pop hl
    adc h
    and b

jr_073_62ba:
    rlca
    cp $1b
    db $fc
    rst $38
    ld e, $f1
    jr z, jr_073_62ba

    ld a, d
    push hl
    ld [hl], b
    rst $08
    rst $38
    inc a
    rst $38
    ei
    rst $20
    db $fd
    ld b, d
    rst $20
    jr jr_073_62b0

    ld c, d
    or l
    nop
    rst $38
    ld d, h
    sbc [hl]
    and b
    adc [hl]
    di
    rst $38
    sbc d
    rst $20
    ld c, l
    di
    sub a
    jp hl


    rst $00
    ld sp, hl
    ld a, a
    adc a

jr_073_62e5:
    di
    ld e, [hl]
    rst $20
    adc [hl]
    di
    push af
    ld a, [hl-]
    and b
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

    ld [hl], c
    rst $38
    db $f4
    dec sp
    ld sp, hl
    rst $38
    rst $20
    jr jr_073_62e5

    inc h
    rst $38
    rst $20
    inc h
    rst $38
    inc a
    db $db
    inc a
    rst $20

jr_073_632b:
    jr jr_073_632b

    ret nz

    ld b, c
    ld h, a
    sbc d
    call nz, $0b8a
    ret nz

    ld b, d
    rst $38
    and b
    db $10
    ret nz

    jp hl


    add b
    ld h, b
    sub c
    adc e
    rst $38
    ld h, b
    ld d, $a9

jr_073_6343:
    pop hl
    dec bc
    adc d
    daa
    daa
    ccf
    rrca
    xor l
    rra
    sub $3f
    ld a, l
    and [hl]
    add b
    ld d, b
    daa
    rst $38
    inc h
    db $db
    inc c
    rst $30
    ld [hl], $cf
    jr jr_073_6343

    rst $38
    sub $0f
    ld e, c
    and [hl]
    ld b, d
    rrca
    ei
    nop
    cp a
    inc e
    inc bc
    cp a

jr_073_6369:
    nop
    sbc c
    ld h, [hl]
    ld l, b
    ld hl, $cf3d
    jp nz, $e718

    add hl, de
    ld h, b
    inc h
    ld b, b
    add c
    ld d, [hl]
    xor c
    rst $20
    ld [hl+], a
    rst $38
    ld [hl], l
    ret nz

    add h
    or b
    and e
    ld de, $1fef
    ld a, a
    ldh [$3d], a
    rst $00
    inc sp
    rst $08
    dec l
    rst $10
    db $10
    add l
    rst $38
    jr z, jr_073_6369

    ld b, h
    ei
    or h
    rst $38
    ret nc

    rst $38
    rst $38
    ei
    inc e
    db $ed
    ld h, $8b
    ld b, [hl]
    db $db
    ld h, [hl]
    rst $38
    add $4f
    dec bc
    add a
    sbc e
    add a
    or e
    rst $08
    rst $38
    xor a
    sbc a
    and $5f
    cp a
    ld a, [hl]
    db $eb
    inc a
    rst $28
    rst $38
    ld l, $ef
    cpl
    ld d, c
    ld h, b
    ld e, $1c
    rst $38
    rst $38
    ld l, $e7
    ld c, d
    rst $00
    ld e, d
    rst $20
    ld b, a
    rst $08

jr_073_63c6:
    db $fd
    adc e
    ldh [$e4], a
    ld h, [hl]
    rst $18
    ld a, [hl]
    rst $38
    jr z, @+$01

    rst $08
    ld a, $ef
    cpl
    rst $28
    pop hl
    ldh [rLCDC], a
    ret nz

    pop de
    ld l, a
    rst $38
    jr @+$01

    ld h, a
    and l
    and h
    ld h, a
    ld a, [hl]
    rst $38
    xor a
    jr c, jr_073_63c6

    ld b, e
    db $fd
    ret c

    ld [bc], a
    db $db
    dec e
    ldh [$e7], a
    add hl, de
    ld a, [hl]
    dec de
    ldh [$d0], a
    add e
    jr @+$01

    ldh a, [$e3]
    rrca
    pop hl
    call z, $d721
    rst $20
    nop
    db $db
    cp $e0
    add c
    ld hl, sp-$20
    rst $38
    nop
    rst $38
    xor e
    rst $38
    dec b
    cp $ab
    db $fc
    dec c
    ld a, [$b2ff]
    db $fd
    ld d, l
    ld [$d7a8], a
    db $f4
    adc e
    rst $38
    or b
    rrca
    sbc $7f
    add hl, hl
    cp $55
    rst $38
    db $fd
    cp [hl]
    ld a, $e0
    xor d
    rst $38
    ret nz

    rst $38
    sbc b
    ld h, a
    jp nc, $e150

    ld e, b
    ld d, b
    ld b, $10
    ld l, e
    dec hl
    ld d, b
    ld l, b
    inc a
    inc bc
    rst $28
    add h
    ld [hl], e
    or h
    db $eb
    ld e, b
    inc bc
    add hl, de
    rst $20
    rla
    rst $38
    xor $3f
    ret z

    cpl
    ret c

    rra
    ldh a, [$fd]
    ld a, [$00ba]
    jp c, Jump_000_002e

    xor a
    cp $df
    ld hl, sp+$6f
    rst $10
    ld hl, sp-$21
    ldh a, [$d3]
    ld b, b
    inc a
    ld [hl], $61
    ccf
    jp Jump_000_3ebf


    rst $00
    db $dd
    cpl
    jp c, $f02f

    push hl
    dec a
    ld a, a
    jp $c73c


    ret nc

    cpl
    ret c

    cpl
    and e
    jr nz, @+$01

    ld sp, hl
    db $fc
    ei
    cp $e1
    db $f4
    set 4, b
    db $fd
    rst $18
    cp $e1
    cp a
    ld a, a
    ld e, a
    cp a
    rra
    rst $38
    rst $38
    scf
    rst $08
    dec bc
    rst $30
    ld h, e
    rst $38
    db $d3
    sbc a
    rst $38
    sub e
    sbc a
    ld hl, sp-$79
    ret nc

    cpl
    add b
    ld a, a
    rst $38
    adc h
    ld a, a
    sbc d
    ld [hl], e
    ld d, d
    or e
    adc h
    rst $38
    ld a, a
    ldh a, [$ef]
    ld l, l
    di
    ld [bc], a
    db $fd
    ret nz

    ld a, l
    jr nz, @+$01

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

Jump_073_64bf:
    rst $38
    cp $ff
    rst $30
    cp $ad
    db $fc
    ld b, [hl]
    cp $eb
    rst $38
    rst $30
    scf
    rst $38
    adc a
    dec a
    jr nz, jr_073_6550

    ld a, a
    ld l, a
    ld a, a
    rst $18
    ld a, $3f

jr_073_64d7:
    ld a, e
    ld a, a
    rst $38
    ld c, [hl]
    jr nz, jr_073_64d7

    db $fd
    rst $38
    db $fc
    ei

Jump_073_64e1:
    pop hl
    rst $38
    ret nc

    rst $28
    push hl
    rst $18
    ld a, a
    jp z, $e7ff

    rst $18
    ccf
    rst $38
    rra
    jr z, jr_073_64f1

jr_073_64f1:
    ld a, a
    ld d, a
    rst $38
    db $eb
    rst $38
    ld a, a
    rst $38
    db $db
    inc de

jr_073_64fa:
    jr nz, @+$01

    adc e
    rst $38
    ld b, l
    cp a
    sub a
    ld a, a
    dec hl
    rst $38

Jump_073_6504:
    ld e, a
    sbc a
    ld a, a
    dec l
    rst $38
    sbc a
    ld [$75e0], a
    db $10
    jr nz, jr_073_6587

    rst $38
    rst $38
    ld a, [hl]
    ld sp, hl
    nop
    cp $ff
    ld sp, hl
    di
    nop
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
    sub [hl]
    jr nz, jr_073_64fa

    and b
    ld [c], a
    db $fc
    db $e3

jr_073_652f:
    ld sp, $fe08
    cp $e3
    nop
    ld hl, sp-$01
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
    or b
    inc bc
    ld a, a
    rst $38
    jr z, jr_073_652f

    cpl
    rst $18

jr_073_6550:
    rla
    pop af

jr_073_6552:
    rst $28
    call z, $9bea
    pop hl
    adc a
    inc bc
    ldh [$fc], a
    jp $fffc


    add e
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    ldh [$ef], a
    rst $38
    ret nc

    rst $18
    and b
    ld l, $d1
    sub [hl]
    ld l, e
    ld c, h
    rst $38
    or a
    jr z, jr_073_6552

    dec d
    rst $28
    ret nz

    ccf
    add h
    cp a
    ld a, a
    ld a, [bc]
    rst $38
    inc d
    rst $38
    ld a, [hl+]
    and d
    and b
    xor d
    cp [hl]
    sbc [hl]
    and b
    dec bc
    rst $30

jr_073_6587:
    inc bc
    rst $38
    ei
    cp $e0
    rst $38
    ld hl, sp-$04
    ld [c], a
    ld c, a
    ret nz

    ld a, e
    ld [$0ff7], a
    cp $fd
    db $fd
    ccf
    ld a, [$f5fa]
    ldh a, [$ef]
    ret nz

    ld [$ce60], sp
    pop hl
    rst $38
    db $fc
    inc bc
    ld d, h
    xor e
    xor h
    ld d, a
    ld a, [de]
    rst $28
    rst $30
    dec [hl]
    rst $18
    ld a, [hl+]
    ld c, $e0
    rst $38
    rst $38
    ld a, [bc]
    rst $30
    ld d, a
    dec b
    ei
    ld [bc], a
    ld a, [bc]
    add b
    ld a, [hl]
    add b
    ld h, b
    ld a, a
    ld a, h
    ld h, d
    db $ed
    ld d, a
    ld d, h
    ret nz

    sbc $fd
    ld b, l
    ldh [rIE], a
    ld_long $ffff, a
    push de
    rst $38
    sbc $a1
    xor d
    ld d, l
    ld d, [hl]
    xor e
    ld e, a
    dec c
    rst $30
    ld a, [de]
    rst $28
    dec d
    ret c

    ret nz

    ld a, a
    sub b
    ldh [$ea], a
    ret nc

    db $e3
    cp [hl]
    db $ec
    ret nz

    cp a
    ld d, c
    pop hl
    cp $ff
    ld hl, sp-$01
    ld sp, hl
    ldh [$e7], a
    add b
    sbc c
    nop
    and $00
    rst $38
    sbc b
    nop
    pop hl
    nop
    rst $38
    ld a, a
    sbc a
    rra
    rst $38
    add a
    rlca
    add c
    ld bc, $0080
    ld h, b
    nop
    rst $38
    jr jr_073_660c

jr_073_660c:
    add $00
    add a
    nop
    ld e, $00
    rst $38
    ld a, h
    nop
    db $ec
    add b
    call nz, $c580
    add b
    rst $18
    db $fc
    add b
    call nc, $f180
    ld a, [c]
    ldh [$3f], a
    ld bc, $37f7
    ld bc, $fe23
    ldh [$3f], a
    ld bc, $012b
    nop
    nop
    nop
    cp a
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    jp $c5c4


    ld a, [$46e6]
    rst $38
    cp a
    ret nz

    or a
    cp b
    cp e
    cp h
    sbc c
    ld de, $997f
    ld b, [hl]
    cp c
    cp d
    ld b, [hl]
    cp e
    cp h
    ldh a, [$e0]
    db $ec
    db $ec
    pop hl
    db $fc
    rst $20
    pop bc
    jp nz, $ead0

    jp $c6cb


    rst $28
    rst $00
    ret z

    ret


    jp z, $e4fa

    ld b, [hl]
    or a
    cp b
    adc e
    pop bc
    jp nz, $e0c8

    ld b, [hl]
    ret nz

    pop hl
    jp $a3e0


    ldh [$c1], a
    ld e, c
    jp nz, $e1ec

    add sp, -$1f
    cp l
    cp [hl]
    db $fc
    pop hl
    ld b, [hl]
    ret nc

    jp hl


    ld a, [hl]
    call nz, $d1e0
    call z, $cecd
    rst $08
    ret nc

    ld a, [$fce4]
    adc h
    pop hl
    adc e
    ldh [$9a], a
    sbc b
    sub a
    ld de, $9c97
    dec c
    sbc b
    rst $38
    pop hl
    sbc h
    sbc d
    db $ec
    ld [c], a
    xor h
    pop hl
    db $76
    db $e4
    ret nc

    jp hl


    db $ec
    call nz, Call_073_43e0
    jp hl


    cp l
    cp [hl]
    adc h
    ld [c], a
    sbc d
    sub a
    xor b
    rst $38
    ld b, [hl]
    ld de, $4546
    ld c, b
    ld d, e
    ld b, l
    ld b, [hl]
    rrca
    ld b, [hl]
    xor b
    sub a
    sbc d
    ld a, b
    pop hl
    ld [hl], h
    pop hl
    ld a, d
    push hl
    ld a, [de]
    pop hl
    ld hl, sp+$0d
    rst $20
    ld b, e
    add sp, $14
    ld [c], a

jr_073_66cc:
    sbc d
    sbc b
    sbc h
    sub a
    xor b
    db $fd
    xor c
    ret nz

    ldh [rHDMA1], a
    ld e, [hl]
    ld d, h
    ld b, h
    ld b, l
    ld b, [hl]
    ld bc, $bfa9
    ldh [$eb], a
    pop hl
    db $76
    and $f0
    pop bc
    dec c
    jp hl


    ld b, e
    rst $20
    jr nz, jr_073_66cc

    cp $84
    ld [c], a
    ld b, [hl]
    xor c
    ld b, [hl]
    ld b, [hl]
    ld [$4a05], sp
    cpl
    ld d, [hl]
    ld a, [hl+]
    ld h, $34
    db $f4
    pop hl
    sub a
    xor [hl]
    ldh [$a6], a
    pop bc
    jr nc, @+$78

    pop hl
    ld hl, sp-$3d
    dec c
    ld [$c480], a
    cp l
    cp [hl]
    add d
    ld [c], a
    add h
    ldh [$fe], a
    cp a
    ldh [rDMA], a
    ld b, [hl]
    ld b, $06
    ld d, l
    ld e, d
    daa
    rlca
    jr nz, @+$2f

    ld b, e
    dec a
    pop hl
    ld l, c
    pop bc
    ld e, c
    ret nz

    db $76
    pop hl
    ld hl, sp-$3b
    ret z

    add b
    adc $48
    ret nz

    sub [hl]
    pop bc
    sbc c
    ld c, a
    ldh [$82], a
    ldh [$a8], a
    ld b, [hl]
    rst $38
    dec b
    ld [$2d45], sp
    jr nz, @+$22

    ld [hl-], a
    ld c, e
    ld a, l
    ld b, h
    ld [hl], d
    ld [c], a
    xor b
    dec b
    rlca
    inc b
    inc bc
    db $76
    ldh [rNR41], a
    ld a, [hl]
    and $7a
    rst $00
    add [hl]
    push bc
    jr z, @-$3e

    ld c, $c0
    sbc e
    pop de
    db $e3
    ld a, h
    ldh [rIE], a
    ld de, $b446
    inc hl
    inc hl
    or h
    ld e, [hl]
    ld e, h
    cp $86
    ld [c], a
    xor c
    ld b, $95
    sub h
    dec c
    ld [bc], a
    ld b, [hl]
    and c
    ld b, [hl]
    pop hl
    ldh [rPCM12], a
    call nz, $d080
    add d
    pop bc
    sbc d
    ld d, $e0
    xor b
    cp $7c
    pop hl
    dec b

jr_073_677f:
    ld [$3946], sp
    dec [hl]
    dec [hl]
    ld b, b
    rst $30
    ld e, e
    ld b, l
    ld [bc], a
    add [hl]
    pop hl
    ld [bc], a
    rrca
    sub h
    sub e
    rlca
    sub h
    rrca
    dec b
    db $fd
    ret nz

    xor l
    and b
    ld a, [hl]
    pop bc
    add b
    pop de
    jr z, jr_073_677f

    ld sp, hl
    sbc c
    jp nz, $80c1

    ret nz

    ld b, $06
    ld b, l
    ld a, [hl-]
    dec [hl]
    ld a, e
    dec [hl]
    add hl, sp
    or a
    ret nz

    ld bc, $0d00
    rlca
    pop bc
    ldh [rIF], a
    sub d
    sub e
    sub h
    ld b, $bc
    pop bc
    ld e, [hl]
    and c
    add b
    db $d3
    sub [hl]
    and c
    ei
    ld b, [hl]
    sbc c
    jp nz, $a9c1

    ld b, [hl]
    dec b
    rrca
    dec b
    rst $38
    ld [hl], $35
    dec [hl]
    dec [hl]
    ld a, [hl-]
    ld b, l
    ld b, [hl]
    ld [$942d], sp
    rst $38
    pop hl
    sub e
    sub d
    ret nz

    ldh [$08], a
    ld a, e
    jp nz, $a03e

    add h
    add b
    db $d3
    sbc d
    and d
    sbc c
    ld b, h
    ret nz

    add c
    jp nz, $e042

    cp a
    ldh [rSCY], a
    rst $38
    ld b, [hl]
    ld [$9490], sp
    sub e
    sub e
    sub e
    sub d
    ld bc, $8091
    ld [c], a
    inc h
    ret nz

    ld e, a
    ldh [$d3], a
    db $e3
    add b
    adc $82
    and d
    cp a
    ret nz

    or $4f
    pop bc
    ld [$4205], sp
    ldh [$35], a
    dec [hl]
    inc a
    ld b, h
    or e
    ld b, [hl]
    ld b, $82
    db $e3
    ld b, c
    ldh [rIF], a
    dec b
    ld h, l
    pop bc
    sbc c
    ldh [$dc], a
    add b
    dec a
    jp hl


    add b
    rst $00
    nop
    call nz, $a0c1
    xor b
    dec b
    ld [$442b], sp
    inc a
    add b
    ld [c], a
    add hl, sp
    ld [hl], $e0
    sub [hl]
    ld b, c
    ldh [rSB], a
    pop hl
    ld bc, $a808
    and c
    ld a, l
    ret nz

    ld l, b
    add b
    dec a
    add sp, $43
    add a
    add d
    and e
    pop bc
    and c
    ld sp, hl
    xor c
    jp nz, $c0c3

    ld [c], a
    ld b, [hl]
    ld [bc], a
    rlca
    rlca
    dec c
    add [hl]
    cp [hl]
    pop hl
    sub h
    rrca
    ccf
    ret nz

    ld a, [hl]
    jp $b400


    pop bc
    and [hl]
    ld [bc], a
    db $ec
    ld d, l
    ret nz

    nop
    ld [c], a
    ld [hl], $45
    add d
    and d
    inc bc
    inc b
    rrca
    add b
    cp d
    pop bc
    ret nz

    ret nz

    di
    add c
    nop
    or l
    rst $08
    ld h, b
    ld b, d
    jp nz, $c083

    ld [bc], a
    adc a
    ld b, [hl]
    ld a, c
    ld a, d
    ld h, [hl]
    ld bc, $f4e2
    add b
    ld [hl], a
    add c
    ld [bc], a
    rlca
    rrca
    ld bc, $4000
    pop bc
    jp nz, Jump_000_00c1

    or d
    ld l, c
    add c
    pop bc
    and l
    ld a, a
    ld b, $06
    ld b, [hl]
    ld a, c
    ld a, [hl]
    ld [hl], $68
    cp a
    ldh [$fe], a
    nop
    ret nz

    ld b, [hl]
    ld b, [hl]
    ld c, d
    ld h, b
    ld d, h
    ld b, h
    ld b, [hl]
    inc bc
    ld [bc], a
    dec c
    ret nz

    and c
    add d
    jp nz, $b200

    add c
    pop bc
    add d
    ld h, b
    add b
    and b
    db $fd
    xor c
    add h
    add b
    ld a, c
    ld a, [hl]
    add hl, sp
    and [hl]
    dec [hl]
    ld l, d
    cp $00
    jp nz, Jump_073_4646

    ld b, e
    or h
    inc l
    inc l
    or h
    ldh [$3c], a
    ldh [rSB], a
    db $e3
    nop
    or h
    add c
    jp nz, $c100

    xor b
    ld b, [hl]
    xor b
    rst $38
    ld de, $8046
    ld b, [hl]

Jump_073_68e3:
    add hl, sp
    and a
    ld l, h
    ld l, l
    ld a, [hl]
    rst $38
    call nz, $2e45
    jr nz, jr_073_690e

    ld l, $45
    ld a, d
    add h
    pop de
    sbc c
    nop
    or [hl]
    rst $20
    ld b, b
    pop de
    ld b, b
    sbc c
    add b
    add b
    ld de, $bf46
    add d
    add e
    ld b, b
    ld l, h
    ld l, a
    ld l, [hl]
    cp a
    and e
    xor c
    cp a
    ld b, d
    ld hl, $2c23

jr_073_690e:
    ld a, [hl+]
    ld b, h
    xor b
    and e
    ld b, [hl]
    pop bc
    sbc c
    db $76
    ld h, e
    add b
    ld [hl], c
    ld b, d
    and b
    sbc [hl]
    add c
    add h
    ld h, c
    add h
    add l
    di
    add [hl]
    ld [hl], b
    pop bc
    ld [c], a
    cp $81
    ld b, h
    inc a
    inc a
    ld b, h
    inc bc
    ld c, c
    ld d, d
    ld [hl], $e1
    ld bc, $bdc2
    ld c, h
    jp $8847


    ld b, c
    add c
    ld h, d
    pop de
    ld de, $60cd
    nop
    call nz, $80fe
    ld b, l
    rst $30
    add b
    ld b, b
    ld d, e
    nop
    db $f4
    ld b, c
    ld bc, $bda3
    ld c, h
    ld b, $47
    inc de
    ld b, b
    pop bc
    jp nz, $8045

    ld c, e
    ret nz

    sbc [hl]
    ret nz

    and e
    ld h, d
    ld h, e
    ld a, e
    ld a, h
    ld a, b
    push bc
    ld a, $60
    sbc b
    pop bc
    sbc d
    dec sp
    ld b, c
    nop
    ld d, c
    ld e, h
    ld h, d
    inc bc
    ld h, d
    ld b, c
    pop bc
    ld b, l
    scf
    cp l
    jr c, @-$3d

    db $e3
    ld h, a
    ld [hl], $a8
    add hl, sp
    scf
    ret nz

    ld a, $c0
    ld [$4382], a
    adc a
    add b
    ld l, b
    ld b, h
    add b
    inc bc
    ld h, e
    add e
    and b
    ld b, l
    ld [hl], $ff
    ld h, d
    ld h, e
    ld h, l
    ld h, [hl]
    dec [hl]
    jr c, jr_073_69cd

    ld l, c
    ld c, a
    ld [hl], $a8
    xor c
    ld a, [hl-]
    scf
    ret nz

    ret nz

    pop hl
    xor c
    push bc
    add d
    and b
    ld b, e
    adc e
    nop
    ld b, [hl]
    ld b, h
    add e
    ld c, b
    ld b, b
    sub l
    ld h, b
    ld [bc], a
    pop bc
    ldh [$67], a
    rst $30
    dec [hl]
    dec [hl]
    ld l, d
    dec b
    ldh [$80], a
    ld b, l
    xor c
    ld [hl], $01
    dec [hl]
    scf
    ret nz

    ld hl, sp-$5e
    and h
    ld h, b
    ld h, l
    ld hl, $8943
    nop
    ld b, h
    add $24
    add hl, bc
    sbc e

jr_073_69cd:
    add l
    ld b, b
    ld b, h
    and c
    ld b, h
    pop bc
    pop hl
    ret nz

    pop hl
    jr c, @-$3e

    pop bc
    ldh [rDIV], a
    scf
    pop bc
    ld [hl], a
    and d
    sbc e
    ld b, e
    ld h, e
    add b
    ld l, a
    ld l, h
    ld b, h
    add e
    ld b, b
    ld b, h
    and c
    rst $10
    ld b, [hl]
    ld b, d
    ld l, c
    call nz, $6a61
    inc bc
    add b
    add h
    add l
    inc bc
    ld [hl], c
    ld [hl], c
    scf
    jp nz, $a277

    ld b, e
    ld h, e
    add b
    ld [hl], d
    and $02
    and l
    ld h, c
    dec b
    ld [$a01b], sp
    ld b, b
    ret nz

    db $e3
    ld [bc], a
    ld h, c
    add hl, sp
    push bc
    or [hl]
    add c
    ld b, e
    ld h, h
    xor b
    add c
    ld h, h
    nop
    ld c, a
    ld h, l
    ld h, d
    ld de, $0030
    add hl, sp
    add b
    ld [c], a
    ld [hl], l
    ld bc, $0266
    and c
    add hl, sp
    ld h, e
    rst $38
    call nz, $2134
    sbc d
    and c
    cp d
    nop
    nop
    ld d, c
    ld a, [de]
    ld b, e
    ld b, b
    xor b
    add b
    ldh [rLYC], a
    ld a, [hl-]
    ld b, b
    ld [c], a
    ccf
    ld [c], a
    add e
    and b
    ret nz

    ret nz

    add sp, $7d
    pop bc
    ld [hl+], a
    ld bc, $a015
    add b
    db $10
    add d
    ld [hl+], a
    ld b, $06
    rst $28
    xor b
    ld b, d
    ld h, d
    db $76
    ret nz

    db $e3
    ld [hl], $43
    ld b, l
    pop bc
    ld b, c
    add d
    and c
    or [hl]
    ld h, h
    ld a, l
    jp $5700


    add d
    ld [hl+], a
    dec b
    ld [$a9f9], sp
    ld bc, $49e3
    ret nz

    ld c, d
    ld c, a
    dec l
    jr nz, jr_073_6a9e

    add $b5
    and l
    jr c, jr_073_6aad

    inc [hl]
    add c
    nop
    add e
    add b
    inc de
    cp e
    cp h
    cp [hl]
    inc bc
    ld b, c
    ld de, $3946
    ld l, e
    ld l, h
    ld b, h
    ld b, c
    ld [hl], e
    ld a, a
    ld l, [hl]
    ld d, l
    ld d, [hl]
    ld [hl-], a
    jr nz, jr_073_6abe

    ld b, e
    rst $38
    add d
    jp nz, $e57d

    sbc e
    cp l
    xor [hl]
    add b
    ld l, b
    ld b, e
    add c
    ret nz

jr_073_6a9e:
    pop hl
    ld l, [hl]
    ld l, a
    cp $bf
    ldh [$6c], a
    ld l, l
    ld a, [hl-]
    ld c, d
    ld h, b
    ld [hl-], a
    jr nz, jr_073_6b13

    daa

jr_073_6aad:
    ld c, a
    ld d, l
    db $fc
    push bc
    ld [hl], d
    ld hl, $9a97
    cp l
    xor l
    sbc $43
    daa
    cp l
    cp [hl]
    sbc d
    sub a

jr_073_6abe:
    ld b, e
    add c
    ld b, l
    ld [hl], $fb
    ld l, [hl]
    ld [hl], b
    add hl, bc
    pop bc
    add hl, sp
    ld d, l
    ld d, d
    dec l
    ld h, $1f
    ld hl, $554a
    ld b, [hl]
    ld b, d
    ld [hl], l
    add e
    ld [hl], d
    ld h, d
    nop
    add b
    ret nz

    cp l
    xor e
    ld b, e
    ld h, $67
    add c
    ld b, c
    ld h, b
    rst $38
    and b
    inc b
    ld b, e

jr_073_6ae5:
    ld [hl], $45
    cp [hl]
    ld b, l
    add c
    ld a, [hl-]
    ld b, e
    ld a, c
    ld a, d
    ld a, l
    dec [hl]
    ld hl, $803b
    or c
    ld b, e
    ldh [rP1], a
    cp l
    xor e
    nop
    ld c, c
    ccf
    ld b, c
    add d
    add c
    add h
    ld hl, $fd3c
    ld b, h
    ld a, e
    add d
    add hl, sp
    ld a, c
    ld a, [hl]
    ld b, c
    ld a, a
    ld a, l
    ld c, a
    ld [hl], $3b
    ld [hl], $43
    ldh a, [rP1]

jr_073_6b13:
    or c
    nop
    sbc c
    nop
    ld h, c
    ret nc

    nop
    ld d, h
    ccf
    ld b, d
    ld b, a
    nop
    inc b
    ld b, e
    add hl, sp
    cp $01
    ld [hl], $79
    rst $38
    ld a, [hl]
    ld a, [hl+]
    ld h, $2a
    ld a, a
    ld a, l
    ld b, e
    ld [bc], a
    adc a
    rlca
    ld [bc], a
    ld [hl], $3b
    ret nz

    pop hl
    cp l
    add c
    add b
    db $d3
    or a
    ld b, a
    cp b
    cp e
    cp h
    ld bc, $7e20
    and b
    ld b, e
    ld [hl+], a
    ld a, $c0
    ldh [rIE], a
    ld a, [hl-]
    ld a, c
    ld a, [hl]
    dec l
    jr nz, jr_073_6b6f

    daa
    ld b, h
    ld a, a
    add c
    ld b, [hl]
    ld [$0f96], sp
    ld [bc], a
    ld b, e
    nop
    db $e3
    ld b, e
    or a
    cp b
    nop
    ld d, e
    add d
    nop
    ld b, b
    jr nz, jr_073_6ae5

    pop hl
    ld b, b
    ld b, [hl]
    ld h, d
    cp $fa
    ldh [$3e], a
    add b
    ld b, [hl]

jr_073_6b6f:
    ld [hl-], a
    jr nz, jr_073_6b9e

    dec hl
    ld a, a
    add e
    ld l, l
    dec b
    ld c, $94
    sub h
    ld c, $00
    ld b, b
    ret nz

    ld b, b
    ld hl, $823b
    add b
    ret nc

    pop bc
    ld [hl+], a
    ld a, a
    and b
    dec bc
    and l
    ld b, b
    inc a
    rst $38
    dec [hl]
    ld a, [hl-]
    add d
    add e
    dec l
    ld a, [hl+]
    add e
    add a
    rlca
    add l
    add h
    ld b, $ff
    ld bc, $0240
    dec sp

jr_073_6b9e:
    add h
    add b
    ret nc

    and d
    and d
    call c, $2105
    call nz, Call_000_3a05
    dec [hl]
    ld [hl], $77
    ld b, b
    add [hl]
    add l
    sub c
    add h
    nop
    ld hl, $00bf
    ld a, a
    nop
    xor b
    ld a, [hl]
    dec h
    add b
    ld l, l
    sbc d
    rra
    sbc b
    sbc b
    sbc h
    sbc b
    sub a
    rst $10
    nop
    sbc d
    jr nz, jr_073_6c0c

    dec b
    ccf
    add hl, sp
    ld [hl], $03
    inc b
    rlca
    ld [bc], a
    jp nz, $8000

    ld bc, $c044
    nop
    add b
    ldh [$a9], a
    cp a
    nop
    cp l
    ld c, e
    jp $9a43


    push bc
    ldh [$3f], a
    rlca
    inc de
    inc de
    rlca
    inc b
    inc bc
    ld b, h
    ld b, c
    ld c, a
    and d
    cp [hl]
    nop
    ret nz

    dec b
    rrca
    sub l
    sub h
    rrca
    ld b, d
    inc b
    nop
    pop af
    ld bc, $2000
    pop bc
    pop hl
    add b
    ld [hl], c
    sbc d
    sub a
    ld [bc], a
    rrca
    add a
    inc b
    inc bc
    sub a
    jp nz, Jump_073_7f00

jr_073_6c0c:
    ld [bc], a
    rst $38
    and c
    dec b
    ld hl, $0c06
    adc b
    db $e3
    ld b, l
    ldh [$94], a
    dec c
    and l
    ldh [$7e], a
    ld b, d
    nop
    xor a
    add [hl]
    ld h, c
    ld b, b
    ld c, l
    nop
    inc hl
    ld b, b
    rst $38
    ld h, c
    sbc c
    ld [hl+], a
    dec b
    ret nz

    ld c, l
    ld b, c
    ld b, $4b
    nop
    dec b
    sub e

jr_073_6c33:
    rst $38
    ldh [$94], a
    and e
    ldh [$7e], a
    ld b, c
    ccf
    ld b, c
    add d
    call nz, $0680
    ld e, $f2
    ld [bc], a
    sbc c
    ld b, $06
    sub a
    push hl
    jr nz, @-$3e

    jr nz, @-$40

    add b
    ld [$20ae], sp
    ld c, $a0
    add l
    ld bc, $c905
    ret nz

    add d
    ld [c], a
    db $eb
    ld b, b
    jp $c120


    sbc b
    add d
    ld h, c
    sbc b
    ld b, b
    rst $38
    ld h, c
    ld a, [$c726]
    ld [bc], a

jr_073_6c69:
    sbc c
    ld [$0543], sp
    sbc c
    cp h
    ld b, d
    cp [hl]
    add c
    ld l, [hl]
    jr nz, jr_073_6c33

    pop bc
    ld b, b
    ld h, [hl]
    jr nz, jr_073_6c95

    ld [bc], a
    rrca
    ret


    ret nz

    sub h
    sub l
    ld b, $c0
    ld b, l
    ld h, c
    ld a, [de]
    ld b, e
    jr @-$6b

    ld b, e
    cp l
    ld b, [hl]
    ld b, c
    ld b, d
    sbc c
    ld de, $42e5
    inc h
    ld h, b
    ld a, a
    and b

jr_073_6c95:
    or $2e
    jr nz, jr_073_6cde

    ld [hl], $d1
    ld h, e
    ld b, [hl]
    ld [bc], a
    dec c
    ld bc, $008f
    sub [hl]
    dec c
    ld [bc], a
    add a
    ret nz

    ld h, [hl]
    and b
    dec b
    ld h, b
    cp e
    ld de, $56bc
    inc bc
    dec a
    daa
    pop bc
    jp $a711


    ld h, c
    cp h
    ld [hl+], a
    sbc c
    inc bc
    ld bc, $9145
    inc b
    ld b, e
    ret nz

    ld l, h
    pop bc
    ld b, $60
    add a
    and e
    ld b, e
    inc l
    call nz, Call_000_0221
    pop bc
    jp nz, $6708

    ld h, b
    cp h
    ld hl, $00bf
    rst $38
    push af
    dec b
    ld h, c
    add [hl]
    ld a, [bc]
    ld a, [hl]
    rlca
    inc h

jr_073_6cde:
    cp a
    ret nz

    sbc d
    sub a

Jump_073_6ce2:
    ld b, $06
    jr z, jr_073_6c69

    cp [hl]
    jr nz, jr_073_6d49

    ld b, l
    ld b, c
    ld b, c
    scf
    scf
    db $fc
    rst $28
    ld b, l
    ret c

    ld h, [hl]
    db $e4
    jp $804b


    pop bc
    pop bc
    jp nz, $c042

    dec b
    sbc c
    call c, Call_000_0167
    ld a, [hl]
    ld b, c
    ld b, d
    sbc [hl]
    ld h, h
    rst $38
    ldh a, [$9f]
    ld b, d
    ret nz

    inc b
    jp Jump_000_0f80


    ld b, d
    and b
    ld b, d
    jp nz, Jump_000_213e

    nop
    add b
    xor b
    ld b, b
    ld e, a
    ld l, c
    sbc l
    dec [hl]
    dec [hl]
    sbc l
    db $fc

Jump_073_6d20:
    db $ed
    ld l, d
    ld [hl], d
    ret nz

    ld b, b
    pop bc
    ld [bc], a
    add b
    ld c, $c2
    nop
    ld b, d
    jp nz, Jump_000_213e

    ld a, [hl]
    ld b, b
    xor c
    inc bc
    inc hl
    ld c, $fc
    db $ed
    ld l, d
    ld b, d
    xor b
    pop bc
    ld [bc], a
    ld b, e
    db $ec
    call nz, $8180
    ret nz

    ld a, h
    ld b, d
    jp nz, Jump_000_03bc

    sbc e
    ld b, [hl]

jr_073_6d49:
    ld b, b
    ld l, e
    ld [hl], c
    rst $38
    ldh a, [rNR44]
    ld l, l
    ld b, b
    dec b
    and d
    add b
    ret nc

    adc d
    and c
    ld de, $e002
    ld l, d
    ld hl, $7e7e
    ld b, c
    ld b, l
    xor b
    dec a
    jr c, jr_073_6d9c

    dec a
    db $fc
    db $ed
    sbc e
    scf
    ld b, l
    add e
    ld bc, $bebd
    add b
    rst $08
    ld b, [hl]
    ld bc, $0911
    sbc c
    ld b, b
    ld [bc], a
    ld a, [hl]
    ld b, e
    xor c
    inc bc
    jp nz, $edfc

    ld e, [hl]
    and $43
    ld [$800c], a
    ret nz

    ld b, [hl]
    ld bc, $9a11
    ld l, $83
    ld a, [hl]
    ld b, c
    rst $30
    ld h, b
    cp $e1
    nop
    ld [hl], l
    add d
    dec c
    and b
    cp $e5
    add d
    ldh [$86], a
    ld b, c

jr_073_6d9c:
    add [hl]
    ld l, c
    add a
    ld b, e
    or d
    ld h, c
    pop af
    ld de, $44ae
    and d
    add d
    inc hl
    ld [bc], a
    ld b, [hl]
    sbc e
    adc a
    ld b, [hl]
    inc bc
    ld b, [hl]
    adc a
    inc sp
    and e
    ld b, a
    and d
    ldh [rSCX], a
    add [hl]
    ld l, d
    cp l
    ld b, e
    ld [$e1c1], sp
    ld de, $0471
    ld a, [hl]
    and c
    ld h, e
    ld h, c
    ld hl, sp-$80
    sbc c
    adc [hl]
    ld b, [hl]
    rlca
    ld b, [hl]
    adc [hl]
    sbc c
    add $e7
    ldh [rSCY], a
    add [hl]
    ld l, e
    dec a
    inc hl
    nop
    nop
    nop
    ccf
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $fa
    and $f3
    pop hl
    ld b, $f0
    pop hl
    inc c
    dec l
    jp hl


    ldh [$fd], a
    db $e4
    db $fc
    db $ed
    ret nc

    jp hl


    pop de
    db $e3
    inc b
    ld a, [$c2e5]
    push hl
    dec c
    ret nz

    db $e4
    rst $18
    xor $dd
    and $fa
    di
    sub d
    push hl
    cp a
    ld c, l
    ld l, l
    inc c
    ld c, l
    dec c
    ld c, l
    rst $38
    pop hl
    dec l
    ldh [$b8], a
    db $e3
    add d
    db $eb
    xor l
    db $ed
    ld [hl], e
    jp hl


    inc a
    pop hl
    ld l, l
    dec c
    dec bc
    rst $38
    inc c
    dec bc
    dec hl
    ld a, [bc]
    ld l, d
    dec bc
    dec bc
    dec bc
    rlca
    dec c
    ld c, l
    dec l
    ld a, $e7
    ld h, d
    and $0d
    add sp, -$47
    jp hl


    ld hl, sp-$3e
    add hl, sp
    ld c, l
    pop bc
    ldh [$c0], a
    pop hl
    ld c, d
    ld c, d
    ld a, [hl+]
    ret nz

    pop hl
    cp a
    ldh [$d0], a
    db $eb
    pop hl
    db $76
    db $ec
    ccf
    or $84
    pop hl
    dec bc
    db $fd
    ldh [$0c], a
    inc c
    inc hl
    ld a, [bc]
    ld a, [bc]
    add c
    ldh [$f4], a
    pop hl
    dec sp
    ldh [$6d], a

jr_073_6e57:
    push af
    pop hl
    db $76
    pop hl
    ldh a, [rSCX]
    rst $30
    ret z

    call nz, $e084
    cp a
    ldh [$0b], a
    dec bc
    ld l, h
    inc c
    ld bc, $c02a
    db $e3
    or d
    ld [c], a
    or [hl]
    db $e3
    db $76
    ldh [$5a], a
    and $80
    call $c548
    ld a, h
    ld c, a
    ldh [$7f], a
    ld [c], a
    ld l, h
    inc l
    ld l, e
    dec hl
    dec bc
    db $fc
    ret nz

    ld a, $c0
    db $e3
    dec c

jr_073_6e88:
    inc l
    inc c
    inc l
    inc l
    db $76
    ldh [$7e], a
    and $f0
    ld l, c
    pop de
    jr jr_073_6e57

    pop de
    db $e3
    rst $38
    jp nz, Jump_073_4b4b

    ld l, e
    ld l, e
    ld h, l
    ld c, d
    dec sp
    ld [c], a
    dec c
    ret nz

    ldh [$bf], a
    ldh [$0b], a
    dec bc
    push af
    ret nz

    inc c
    ld a, d
    ret nc

    or [hl]
    ret z

    ld c, l
    dec l
    ld [bc], a
    pop hl
    xor h
    and b
    jp nc, $80e0

    ldh [$b7], a
    dec bc
    ld a, [bc]
    ld c, e
    rst $00
    pop hl
    dec c
    inc c
    rst $38
    pop hl
    inc l
    pop bc
    inc c
    db $fd
    ret nz

    ld e, h
    call nz, $d180
    add b
    and e
    ret nz

    db $e3
    dec bc
    inc l
    inc sp
    ld c, h
    dec hl
    ret nz

    pop hl
    or a
    ret nz

    inc l
    inc l
    add e
    ldh [$fe], a
    db $e3
    ld [hl], b
    cp h
    pop bc
    add d
    reti


    jr c, jr_073_6e88

    adc h
    jp nz, $0c2c

    ld c, h
    jp nz, Jump_000_00c4

    call nz, Call_073_7fe5
    pop hl
    ld a, e
    jp nz, $ad4d

    add b
    add $00
    call nz, $c24a
    add c
    ldh [$82], a
    ret nz

    rst $28
    ld c, h
    daa
    pop bc
    ld a, [c]
    and c
    or c
    and l
    add b
    ret nc

    add c
    db $e3
    dec bc
    ld l, c
    inc c
    ret nz

    db $e3
    ld a, l
    ret nz

    ld l, h
    ld a, a
    and $6c
    ld c, h
    dec h
    pop bc
    ret nc

    xor b
    add h
    jp hl


    sub d
    ld b, l
    and e
    sub c
    pop bc
    inc l
    add c
    push hl
    dec bc
    ld l, h
    pop bc
    ld c, h
    ld b, c
    rst $20
    and $a1
    ret nz

    ldh a, [$36]
    and [hl]
    pop bc
    and l
    dec c
    inc l
    rst $30
    ld c, h
    ld l, e
    ld l, e
    add d
    and d
    ld c, e
    dec bc
    dec bc
    ld c, h
    nop
    rst $38
    ldh [$80], a
    jp $e100


    db $e4
    add b
    add b
    push de
    ld bc, $81c2
    and d
    dec d
    pop hl
    ld b, $c0
    ld [c], a
    ld l, e
    ld c, e
    add d
    and d
    cp [hl]
    db $e4
    rst $38
    and b
    ld h, b
    and d
    dec a
    sub h
    ld c, $c1
    and [hl]
    inc l
    inc c
    ld l, h
    dec a
    pop bc
    ld bc, $f4e2
    add b
    ld [hl], a
    add c
    add e
    ld c, h
    ld c, h
    ld a, [hl-]
    ret nz

Call_073_6f73:
    ld l, l
    ret nz

    or h
    add c
    ld b, e
    or $c1
    and l
    inc l
    ld c, b
    sub a
    ret nz

    dec bc
    and l
    cp h
    and c
    ld a, [bc]
    ld [hl], a
    add b
    inc a
    ldh [$6c], a
    ret nz

    and $20
    nop
    or b
    add d
    ld h, h
    add b
    and b
    inc b
    add b
    sub a
    ret nz

    dec hl
    cp a
    rst $20
    db $fc
    ret nz

    adc [hl]
    or h
    and b
    ld c, h
    ld c, h
    ld l, h
    ld a, h
    adc b
    ld a, d
    ld [hl], d
    nop
    call nz, $2d0d
    inc c
    ccf
    add b
    ld l, e
    dec c
    ccf
    push bc
    dec c
    ld [hl], a
    and e
    ld a, d
    add h
    jr nz, @-$4c

    ld h, l
    add b
    ld l, a
    ret nz

    push hl
    inc b
    ld h, b
    jp z, $2b60

    rst $38
    ldh [rSTAT], a
    add h
    rra
    dec hl
    ld c, e

Jump_073_6fc8:
    ld l, e
    ld c, e
    ld l, e
    ret nz

    db $ec
    nop
    cp b
    ld b, h
    ld h, c
    ld [$406b], sp
    pop bc
    push hl
    cp e
    and c
    dec hl
    inc [hl]
    ld h, e
    add b
    ld [c], a
    db $fd
    ld d, e
    adc b

Jump_073_6fe0:
    ld b, [hl]
    ld [hl], b
    add c
    ld h, c
    ld b, b
    ld [c], a
    nop
    jp $c47b


    dec bc
    ld a, [bc]
    ld a, [hl+]
    or $a0
    nop
    ld bc, $c3c6
    ld d, d
    ret nz

    and e
    call nz, $9781
    and c
    add c
    and $76
    ret


    and [hl]
    ld b, b
    nop
    adc l
    ld d, c
    adc c
    ld b, l
    inc bc
    ld h, e
    ld b, c
    pop bc
    ld b, d
    and [hl]
    cp b
    call nz, $a3f7
    and a
    ld b, c
    jr nz, jr_073_7019

    ld e, d
    inc bc
    ld h, d
    sbc b
    add b
    add h

jr_073_7019:
    add h
    add d
    and b
    ld l, e
    ld [hl], $c0
    or a
    and [hl]
    ret nz

    ld b, l
    adc l
    add h
    ld [$c5c2], a
    sbc b
    add b
    ld b, l
    add h
    ld b, b
    ld h, b
    dec c
    ld c, e
    nop
    ld [hl], d
    ld b, b
    or l
    add [hl]
    ld l, l
    inc h
    add b
    ld l, a
    add $27
    ld b, h
    and d
    ld b, d
    rst $20
    ld [hl], h
    ld b, c
    nop
    scf
    add $80
    db $e4
    ld a, a
    ld [hl-], a
    ld b, h
    add $44
    and b
    ld [bc], a
    push hl
    call nz, $c0a1
    ld [c], a
    nop
    dec [hl]
    add l
    ld b, e
    ld h, e
    add b
    ld [hl], d
    call nz, Call_073_4866
    ld h, c
    jp nz, Jump_000_39c7

    add $f4
    ld b, e
    nop
    rst $38
    inc h
    add hl, sp
    push hl
    nop
    ld c, h
    ret nz

    db $e3
    db $d3
    and $80
    call nz, $c5f4
    cp [hl]
    inc l
    add b
    add [hl]
    ld de, $81c3
    sbc e
    ld b, b
    add [hl]
    and [hl]
    ld b, [hl]
    push bc
    nop
    rst $00
    cp l
    call nz, Call_073_790e
    ld c, $35
    ld a, [hl+]
    add b
    ld h, a
    dec bc
    dec c
    ld l, h
    inc c
    rst $00
    add e
    ld b, b
    add h
    db $e3
    ld a, l
    jr nz, @-$76

    and e
    xor $a5
    nop
    ld e, h
    ld [$2c20], sp
    ret nz

    push hl
    add hl, bc
    dec hl
    ld c, e
    and b
    dec a
    jr nz, jr_073_7112

    ld b, l
    db $e3
    ld l, a
    and h
    ret nz

    ld l, a
    inc [hl]
    xor e
    inc c
    inc bc
    and c
    ld b, c
    and $2a
    ld c, d
    ld a, l
    ld b, d
    dec sp
    ld h, b
    rst $30
    add [hl]
    cp l
    xor a
    ld [hl], h
    jp $8148


    ld [hl+], a
    inc c
    call Call_000_2bc4
    dec bc
    ld c, e
    ld a, $01
    rlca
    dec hl
    ld a, [bc]
    ld c, d
    ld [hl], b
    ret


    inc a
    ld bc, $5200
    add d
    ld h, h
    ret nz

    ld [c], a
    ld a, $95
    add d
    dec hl
    dec hl
    ld c, e
    ld a, [hl+]
    ld a, [hl+]
    rlca
    add b
    cp [hl]
    nop
    add b
    ld [hl], b
    ret


    ld a, [hl]
    ld [bc], a
    add d
    db $76
    ld a, [hl]
    ret nz

    ld a, a
    pop bc
    ld [bc], a
    and h
    ld a, $01
    ld c, e
    add c
    ld c, e
    ld e, a
    add b
    ld b, h
    add c
    ld a, [hl-]
    ld h, c
    rst $38
    jp $5700


    ccf
    ld b, c
    ld l, h
    jr nz, @+$41

    ldh [rDIV], a
    ld b, c
    jp z, $ff60

    ld [hl+], a
    cpl
    ld h, c

jr_073_710f:
    dec c
    dec [hl]
    nop

jr_073_7112:
    cp c
    call nz, $8008
    db $e3
    nop
    ld d, e
    rst $38
    ld [hl+], a
    ld l, h
    ld a, [de]
    ld b, b
    cp $c5
    ld b, c
    add c
    cp a
    add c
    inc b
    ld a, [hl]
    ldh [$c1], a
    jr nz, jr_073_7175

    cp e
    and c
    ld b, b
    ld h, a
    db $fc
    inc sp
    ld a, [hl]
    and d
    inc b
    inc hl
    ld [$207e], sp
    ld b, e
    ldh [$be], a
    ld b, b
    dec hl
    ld l, h
    ld b, c
    jr c, jr_073_7140

jr_073_7140:
    ret nz

    db $e4
    ld b, e
    dec [hl]
    ldh [rLCDC], a
    inc hl
    ld e, d
    ld hl, $8300
    add $e1
    ld [hl], d
    ld bc, $6b6b
    dec l
    inc bc
    dec c
    inc l
    nop
    ld hl, $a124
    db $fd
    add l
    add b
    jp nc, Jump_073_6141

    ld a, a
    adc b
    inc c
    ccf
    add d
    jp nz, $2de1

    dec l
    ret nz

    pop hl
    dec h
    and b
    add b
    inc b
    dec sp
    sub h
    inc d
    dec b
    dec h
    ld b, [hl]
    ld b, l

jr_073_7175:
    ld l, e
    add c
    ld h, c
    dec c
    jp nz, Jump_073_7fe0

    rlca
    ld a, e
    ld h, c
    cp $00
    ld d, c
    dec c
    dec c
    ld c, l
    ld c, l
    dec c
    ld c, l
    ld l, l
    jr jr_073_71e3

    nop
    sbc d

jr_073_718d:
    jr nz, jr_073_710f

    ld h, l
    ld l, e
    ld l, e
    ld c, d
    ld [bc], a
    ld b, b
    dec b
    nop
    jr nz, jr_073_71a9

    ld e, a
    ld b, d
    ld c, d
    ret nc

    ld c, b
    ld b, b
    sbc $e3
    ld l, h
    add $00
    ld c, a
    and h
    sla b
    ret nz

jr_073_71a9:
    ld a, [bc]
    db $e3
    ret nz

    push hl
    nop
    jr nz, jr_073_718d

    ld b, d
    rst $38
    ld d, c
    add [hl]
    ldh [$6c], a
    ld l, h
    ld bc, $c20d
    nop
    ld d, a
    ld [hl+], a
    jp z, $0e61

    add c
    call nz, $c3e7
    nop
    ldh [$e0], a
    add b
    ld bc, $4443
    ld [hl], c
    add hl, bc
    ld h, b

jr_073_71ce:
    call nz, $c220
    ld [bc], a
    jp z, Jump_073_7c64

    ld b, c
    ld l, h
    add b
    ld c, e
    nop
    jp nz, Jump_073_68e3

    ldh [rSB], a
    ld b, d
    add d
    ld b, $80

jr_073_71e3:
    ld b, $c0
    db $e4
    ld c, h
    jr nc, jr_073_71ce

    ld hl, $61a0
    jr jr_073_7210

    ccf
    ld b, h
    ld l, h
    ld c, h
    ld b, $e6
    or h
    ld b, c
    jr jr_073_71fc

    db $e4
    ld a, a
    ld b, l
    ld a, h

jr_073_71fc:
    add hl, hl
    inc c
    ld c, h
    ld h, [hl]
    ld h, e
    cp [hl]
    add c
    ld a, $68
    dec b
    ld c, h
    cp a
    ld [c], a
    inc l
    ld b, $e5
    ld b, $66
    ei
    ld l, e

jr_073_7210:
    adc l
    ld bc, $e5a4
    ld hl, sp+$40
    db $e4
    add h
    ret nz

    rrca
    ld [hl+], a
    ld c, h
    ld c, h
    inc l
    inc l
    inc l
    ld [bc], a
    xor e
    pop bc
    dec c
    add h
    ld c, d
    add b
    ld l, e
    add d
    pop bc
    and a
    ld h, c
    cp h
    ld b, l
    add l
    inc hl
    ld h, b
    ld a, [hl]
    push hl
    ld l, h
    pop bc
    ld b, d
    nop
    push bc
    ld b, e
    ld b, a
    inc [hl]
    inc l
    inc l
    dec h
    ld b, d
    jr jr_073_72bf

    and d
    rst $38
    push af
    ret nz

    ld hl, sp+$6d
    inc l

jr_073_7248:
    ld bc, $2ae0
    ld b, e
    adc e
    ld b, [hl]
    jr nz, jr_073_7248

    db $ed
    dec b
    ld h, d
    ld b, e
    dec l
    add b
    pop bc
    dec a
    nop
    inc l
    pop bc
    ret nz

    cp [hl]
    ld b, l
    nop
    ld c, a
    ld c, d
    ld b, e
    ld c, c
    ccf
    or $42
    add $7c
    ld [bc], a
    ld d, e
    add c
    sub [hl]
    nop
    db $fc
    db $ec
    nop
    ccf
    ld hl, sp+$42
    add $7e
    ld b, e
    add b
    push af
    call nz, Call_073_4327
    ld a, [hl+]
    ld a, [bc]
    jp nz, $c142

    ld [hl], b
    nop
    jp hl


    ret nz

    ld a, [c]
    ld h, c
    and b
    inc b
    ld d, e
    dec c
    ld c, l
    inc c
    ld l, d
    ld h, [hl]
    ld h, a
    ld c, l
    dec l
    ld l, e
    inc de
    ld h, e
    db $fc
    db $ec
    ld l, e
    ld c, e
    add $93
    ld hl, sp-$7e
    and h
    ld a, [hl+]
    ld b, e
    db $fc
    inc bc
    dec c
    dec hl
    ld l, e
    ld c, e
    dec hl
    ret nz

    db $fc
    db $e4
    dec sp
    ld h, b
    db $f4
    db $e3
    add $81
    inc b
    and [hl]
    dec a
    db $ec
    ld c, $0e
    ld hl, $040c
    and b
    inc [hl]
    add l
    ld e, e
    ldh [$cb], a
    ld h, d

jr_073_72bf:
    dec hl
    cp c
    nop
    sub $84
    sub b
    ld d, d
    ld h, c
    ld c, b
    add [hl]
    add [hl]
    dec c
    ld [hl], d
    ld bc, $c20c
    add $76
    daa
    ld c, l
    rlca
    dec hl
    dec hl
    ld l, l
    dec c
    jp $e5ea


    ld b, [hl]
    inc d
    add b
    pop hl
    ld sp, hl
    ld c, h
    ld b, $da
    add d
    dec hl
    dec hl
    inc c
    and b
    and [hl]
    ld b, [hl]
    adc e
    add hl, hl
    add b
    jp z, $0000

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
    inc b
    rst $38
    rst $38
    db $f4
    di
    rrca
    rst $38
    ld_long $ffe0, a
    ldh [$ef], a
    db $f4
    di
    ldh [rIE], a
    nop
    ldh [rIE], a
    add b
    and $79
    and $30
    add sp, $00
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
    db $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    pop af
    pop af
    rst $38
    and $d4
    rst $38
    rst $38
    rst $38
    ld b, $f3
    ld a, [c]
    inc de
    inc de
    call c, Call_000_00ef
    nop
    nop
    nop
    ld [bc], a
    nop
    rrca
    ld [bc], a
    ld [bc], a
    nop
    rrca
    inc b
    ld [bc], a
    nop
    rrca
    ld b, $02
    nop
    rrca
    ld [$0002], sp
    rrca
    ld b, $02
    nop
    rrca
    inc b
    ld [bc], a
    nop
    rrca
    ld [bc], a
    ld [bc], a
    nop
    rrca
    rst $38
    nop
    ld a, [bc]
    rrca
    ld [bc], a
    ld e, $19
    rrca
    ld [bc], a
    ld e, $28
    rrca
    ld [bc], a
    ld e, $19
    rrca
    ld [bc], a
    ld e, $ff
    ld bc, $0337
    ld de, $3a1e
    inc bc
    ld de, $ff1e
    ld [bc], a
    dec a
    ld bc, $1e14
    ld a, $01
    inc d
    ld e, $3f
    ld bc, $1e14
    ld a, $01
    inc d
    ld e, $ff
    ld bc, $d5fe
    nop
    rst $38
    ldh [rTIMA], a
    ei
    ldh [$0b], a
    rst $30
    pop hl
    nop
    ld [bc], a
    db $eb
    nop
    jr z, @-$0f

    ldh [$90], a
    db $eb
    ldh [$f5], a
    nop
    ret z

    ld a, [$e0e5]
    add b
    ld [$00e4], a
    nop
    rla
    nop
    ld bc, $d612
    ld [c], a
    ld d, b
    rst $08
    ldh [$e6], a
    pop hl
    ld [$e2da], a
    db $fd
    db $e3
    and $e1
    ld d, a
    cpl
    nop
    inc bc
    ret nz

    ld [c], a
    and b
    xor a
    ldh [$64], a
    xor e
    ldh [$c7], a
    call nc, Call_000_2000
    ret nz

    ld [c], a
    jp z, $9ce1

    pop hl
    ld e, a
    nop
    ld d, l
    ld b, $96
    ld [c], a
    ld b, b
    adc a
    ldh [$b2], a
    adc e
    ldh [$a8], a
    or $e2
    sbc h
    and h
    db $e3
    ld a, h
    pop hl
    cp a
    nop
    inc c
    add b
    ld [c], a
    adc [hl]
    pop hl
    ld e, c
    ld a, [$e06b]
    ld d, b
    add h
    ld [c], a
    add b
    nop
    db $ec
    rst $38
    ld hl, sp-$01
    rst $38
    ldh [$fe], a
    ld b, d
    ld hl, sp-$38
    ldh a, [$80]
    cp a
    ldh [rNR10], a
    ldh [rP1], a
    ret nz

    rst $38
    rst $38
    ld [c], a
    rst $30
    rst $38
    rst $38
    cp h
    rst $38
    add sp, -$01
    add c
    cp $08
    db $ed
    ldh a, [$f8]
    push hl
    jr nz, @-$3e

    ld [hl], c
    db $e3
    ld a, a
    rst $38
    cpl
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    or a
    ld a, a
    rra
    rst $38
    ld a, a
    rrca
    ld a, a
    ld c, a
    ccf
    rlca
    rra
    ld [bc], a
    rst $38
    rra
    inc de
    rrca
    ld bc, $0b0f
    rlca
    ld bc, $07ff
    nop
    rlca
    inc b
    inc bc
    ld e, h
    rst $38
    nop
    rst $28
    rst $38
    add c
    inc a
    db $10
    ld b, h
    and $20
    ret nz

    add b
    cp a
    ret nz

    nop
    ldh [$90], a
    ldh [$80], a
    cp $e0
    nop
    ei
    ret nz

    jr nz, @-$5e

    ldh [$7d], a
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    ld a, [$e2da]
    ld [$c0e3], sp
    and h
    ld hl, sp-$20
    ld hl, sp-$10
    rst $38
    db $fc
    ret nc

    db $fc
    ld a, [c]
    db $fc
    ldh [$fc], a
    or b
    rst $30
    ld hl, sp-$1c
    ld hl, sp-$80
    push hl
    cp [hl]
    rst $38
    db $e3
    rst $38
    rst $38
    ld b, b
    rst $38
    nop
    rst $20
    db $fc
    rst $38
    or $ff
    ld a, a
    db $fc
    rst $38
    ld hl, sp-$02
    add sp, -$02
    ld hl, sp-$08
    ldh [$83], a
    db $f4
    rst $38
    ld a, b
    ldh [$cb], a
    jp $c5e2


    ldh a, [$e0]
    rst $28
    ld [$f1c0], a
    ld b, b
    ldh [$ea], a
    ret nc

    pop hl
    rst $08
    jp hl


    db $ec
    rst $38
    ld sp, hl
    cp $7f
    and $f8
    ld c, b
    ldh a, [$d0]
    ldh [$a8], a
    ld [hl], d
    ldh [$fb], a

jr_073_7509:
    ld b, b
    add b
    db $10
    rst $20
    jp hl


    cp $8e
    ldh a, [$30]
    pop af
    ret nz

    ld hl, sp-$1b
    ld h, d
    pop bc
    db $10
    push hl
    cp a
    ld a, a
    sbc a
    ld a, a
    rst $38
    ld [hl], a
    ccf
    ld e, a
    ccf
    ld c, a
    ccf
    cpl
    rra
    rst $30
    rla
    rrca
    ld [de], a
    inc d
    ldh [$09], a
    rlca
    rla
    inc bc
    rst $38
    dec b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $ff5c
    rst $30
    jp Jump_000_3c3c


    sbc d
    add $00
    nop
    ld b, b
    add b
    rst $18
    ret nz

    add b
    jr nz, jr_073_7509

    and b
    cp $e2
    ld d, b
    add b
    ldh a, [$a0]
    pop hl
    db $10
    db $e3
    jp c, Jump_073_64e1

    pop bc
    xor b
    ldh a, [$ea]
    ldh a, [$df]
    db $f4
    ld hl, sp-$2c
    ld hl, sp-$0c
    inc d
    ldh [$b8], a
    ldh a, [$fb]
    add sp, -$10
    db $10
    jp hl


    ld e, b
    rst $20
    ld h, [hl]
    add c
    db $fc
    rst $38
    rst $38
    rst $30
    cp $fd
    cp $fa
    db $fc
    ld [$fc3b], a
    ld sp, hl
    ld hl, sp-$20
    db $f4
    rst $38

jr_073_757f:
    ld c, b
    ld [hl+], a
    db $eb
    and b
    ldh [$f0], a
    call z, $fba3
    push bc
    pop af
    call $cbe3
    nop
    nop
    db $ed
    cp $ff
    cp $f8
    add sp, -$10
    ld d, d
    ldh [$e8], a
    ret nz

    rst $20
    ret nz

    add b
    ld d, b
    sub $c0
    jr nz, @-$39

    cp l
    cp $ee
    jp $b1f0


    ld a, [de]
    ldh [$f8], a
    push hl
    or d
    and c
    ld d, h
    and c
    rst $38
    ld a, a
    rst $30
    xor a
    ld a, a
    ld a, a
    inc d
    ldh [$b7], a
    rra
    ccf
    rra
    ld a, a

jr_073_75bd:
    cpl
    rra
    ld e, a
    rrca
    rrca
    rlca
    ld a, [bc]
    inc d
    ld [c], a
    rst $38
    dec bc
    ld bc, $0103
    ld [bc], a
    ld bc, $0005
    sub l
    rst $18
    ld [de], a
    ldh [rSCY], a
    sub b
    ld [$0ca0], a
    ld [c], a
    cp $e1
    and b
    ld [hl], h
    jr nc, jr_073_757f

    jr nz, @-$3b

    ei
    jp c, $b0e6

    ldh [$f4], a
    rra
    ret nz

    rst $30
    ret c

    ldh a, [$f8]
    inc d
    ldh [$b4], a
    ldh [$f0], a
    ldh [$fa], a
    jr nz, jr_073_75bd

    ei
    ld [de], a
    ldh [$91], a
    nop
    db $fd
    cp $f6
    rst $38
    db $fc
    cp $fc
    db $fd
    ld hl, sp-$14
    ld hl, sp-$06
    ld b, $f8
    ldh [$f5], a
    cp $78
    push hl
    inc l
    push af
    nop
    and c
    xor $cc
    pop af
    xor d
    rst $38
    ld [bc], a
    add c
    and b
    pop bc
    add b
    pop bc
    add l
    jp $a1ff


    jp $8300


    dec b
    add e
    ld b, b
    add c
    di
    ld b, c
    add b
    ldh [$a0], a
    ld [hl], b
    ret nz

    ret nz

    ldh [rBCPS], a
    ldh a, [rIE]
    pop af
    db $fc
    call c, Call_000_1eff
    rst $38
    add b
    ld e, $fd
    ld [de], a
    ld [hl], h
    add d
    ld c, b
    nop
    ld bc, $5878
    rst $38
    rst $38
    ld b, b
    add c
    add d
    pop bc
    and b
    pop bc
    and c
    jp $85ff


    jp $8304


    ld b, c
    add e
    ld [bc], a
    add c
    or $6d
    add b
    add b
    and b
    ld c, h
    and b
    ret nc

    ldh [$64], a

jr_073_7662:
    ldh a, [$ed]
    ldh a, [$d0]
    ld [c], a
    ld b, c
    ld e, $c6
    add c
    nop
    nop
    jr nc, jr_073_7662

    nop
    add d
    ret nc

    ldh [$a0], a
    xor c
    ld [bc], a
    ld bc, $0300
    nop
    ld [hl], c
    xor c
    pop af
    ldh [$60], a
    add sp, $30
    add e
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
    ccf
    ld bc, $0000
    nop

    push af
    push bc
    push de
    push hl
    ld [$c32f], a
    ld c, a
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
    ld a, c
    ld h, $00
    ld l, a
    add hl, hl
    ld bc, $403a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    cp $fe
    jr nz, jr_073_76f9

    jr jr_073_7769

jr_073_76f9:
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

jr_073_7715:
    inc b
    ld a, [de]
    inc de
    cp $fe
    jr z, jr_073_7751

    cp $ff
    jr nz, jr_073_7715

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
    jr nz, jr_073_7715

jr_073_7751:
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
    ld a, $01
    ld hl, $777d
    call Call_000_23e8
    add sp, $02

jr_073_7769:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld hl, $777d
    call Call_000_2449
    pop hl
    pop de
    pop bc
    pop af
    ret


    rst $30

    db $80, $03

    jr nz, jr_073_7786

    rst $30

    db $00, $03

    ret nz

jr_073_7786:
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

jr_073_7798:
    ld a, [hl]
    cp $ff
    jr z, jr_073_77ba

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
    or a
    jr nz, jr_073_7798

    ld a, b
    call Call_073_77c4
    ld a, c
    cp $04
    jr nz, jr_073_7798

jr_073_77ba:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_073_77c4:
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

jr_073_77da:
    ld a, [$c32f]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $403a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c33c]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_073_7803

    ld hl, sp+$00
    ld c, [hl]
    ld b, $00
    ld hl, $c338
    add hl, bc
    ld a, [hl]
    ld [$c33c], a
    jr jr_073_77da

jr_073_7803:
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

Call_073_781b:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $d800
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_073_790e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_073_7b04:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_073_7c64:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_073_7f00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_073_7f52:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_073_7f7c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_073_7fe0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_073_7fe5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
