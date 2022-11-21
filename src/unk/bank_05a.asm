INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05a", ROMX[$4000], BANK[$5a]

    ld a, [de]
    ld b, b
    inc h
    ld b, l
    rst $28
    ld c, c
    cp d
    ld c, [hl]
    ld h, d
    ld d, e
    rst $30
    ld d, a
    ld h, c
    ld e, h
    reti


    ld h, b
    and a
    ld h, l
    cp [hl]
    ld l, d
    ld [hl], l
    ld l, a
    ld d, l
    ld [hl], h
    ld d, d
    ld a, c
    ld [hl+], a
    ld b, b
    ld d, d
    ld b, b
    ld [$f043], sp
    ld b, h
    db $ec
    dec hl
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    nop
    add hl, bc
    and l
    ld b, e
    xor $37
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    ccf
    ld a, a
    rla
    ld e, [hl]
    ld de, $2249
    dec sp
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
    ld [$0825], sp
    dec h
    rst $38
    dec bc
    dec bc
    inc c
    inc c
    inc l
    inc l
    dec bc
    dec hl
    or a
    dec bc
    ld a, [bc]
    dec bc
    rst $38
    ld [c], a
    inc l
    inc c
    rst $38
    ldh [$4c], a
    add e
    ld c, h
    ld c, h
    ld a, [$fde1]
    ld [c], a
    ld hl, sp-$1c
    di
    push hl
    db $fc

Call_05a_4072:
    pop af
    inc l
    inc bc
    inc l
    ld c, h
    cp a
    ldh [rIE], a
    db $e4
    cp a
    db $e4
    db $fd
    and $b5
    db $e3
    ei

Jump_05a_4082:
    and $3a
    ret nz

    di
    inc l
    add e
    ldh [rWX], a
    dec bc
    ld l, e
    ei
    pop hl
    ld a, [hl]
    ld [c], a
    ret nc

    jp Jump_05a_7ee6


    ld [c], a
    cp l
    push hl
    ld a, a

Jump_05a_4098:
    or $0c
    ld a, a
    ldh [$0b], a
    ld l, e
    add c
    ld l, e
    ret nz

    pop hl
    cp a
    db $e3
    add c
    push hl
    ld b, d
    rst $20
    dec sp
    push hl
    ld a, $f4
    inc c
    nop
    pop bc
    ldh [$3d], a
    ld [c], a
    cp a
    pop hl
    nop
    db $e3
    add e
    ld [c], a
    cp h
    db $e4
    dec sp
    db $e4
    cp $c3
    nop
    db $dd
    jp nz, $e6f9

    db $eb

jr_05a_40c4:
    jp $e582


    cp $e1
    xor [hl]
    ret nz

    push de
    jp $e50f


    ret nc

    pop bc
    db $eb
    cp d
    adc $94
    ret nz

    ld b, e
    pop hl
    ld l, e
    pop bc
    db $e4
    ld c, e
    ld c, e
    nop
    adc e
    add $80
    add $72
    call nz, $d07e
    sbc a
    jp nz, $e105

    add c
    and $c0
    ld [c], a
    nop
    ld c, c
    db $e4
    add b
    push bc
    add h
    rst $00
    jr c, jr_05a_40c4

    ld a, [bc]
    ret nz

    add h
    pop hl
    ld b, c
    jp $e340


Jump_05a_40ff:
    add c
    dec hl
    pop bc
    push bc
    rst $38
    call nz, $c2f3
    ld a, [$e8e3]
    and l
    rlca
    db $eb
    ld c, e
    nop
    add l
    jp nz, $a3c0

    nop
    db $e4
    rst $38
    and $f4
    xor c
    xor h
    and d
    ld a, [$49ac]
    ret nz

    add b
    ld a, l
    db $e3
    ret nz

    and $6e
    and c
    jp nc, $c0e6

    call $e374
    add e
    ret z

    dec hl
    nop
    add h
    db $e3
    ld a, [hl]
    and $bf
    and b
    ld l, $a0
    rst $10
    rst $20
    ld c, b
    and [hl]
    ld b, c
    and $38
    xor e
    add hl, bc
    ld c, e
    ld b, e
    db $e4
    dec a
    add sp, $6b
    ld b, a
    and a
    ld bc, $7acb
    pop de
    adc [hl]
    and b
    ld b, $7e
    db $ec
    ld l, e
    ld l, e
    jp nc, $ff86

    rst $00
    ld l, l
    rst $20
    xor l
    add d
    ld c, $a0
    db $e4
    cp d
    and h
    ld [$2ba0], sp
    inc a
    ldh [$fc], a
    rst $00
    ld l, e
    ld l, e
    ld a, [bc]
    ldh [rLCDC], a
    and a
    pop bc
    add l
    ld [de], a
    ret z

    adc $85
    ret nz

    and $0b
    dec bc
    dec hl
    nop
    rst $00
    and l
    pop bc
    db $e3
    add b
    and d
    pop bc
    adc e
    ld a, [hl]
    push hl
    ld [hl], l
    add h
    add c
    rst $20
    ld d, [hl]
    ret


    db $10
    ei
    add sp, $09
    add $79
    and h
    ld [hl], $8a
    ld c, h
    ret nz

    db $ec
    ld h, e
    and [hl]
    adc h
    adc l
    nop
    ld a, c
    add d
    ld a, [hl]
    rst $20
    ld l, [hl]

Jump_05a_41a0:
    add h

Jump_05a_41a1:
    ld sp, hl
    ld l, h
    push de
    ld l, b
    adc h
    adc e
    dec b
    xor b
    cp b
    db $e4
    inc b
    scf
    push hl
    jp nz, Jump_000_2cc1

    ld a, c
    add l
    sbc b
    ld l, d
    adc h
    adc c
    adc [hl]
    ld h, [hl]
    or [hl]
    xor d
    nop
    inc hl
    ld h, c
    ret nz

    jp hl


    dec d
    ld l, c
    adc h
    adc l
    ld [$b7a5], sp
    ld l, b
    dec [hl]
    ld h, h
    cp a
    jp z, $dc00

    add a
    adc h
    adc d
    rlca
    ld h, [hl]
    or a
    ld l, l

jr_05a_41d5:
    ld a, a
    call $6615
    adc h
    adc e
    call z, Call_000_0086
    or a
    ld l, [hl]
    nop
    adc h
    inc hl
    and [hl]
    adc h
    adc e
    adc $44
    or a
    ld l, a
    add b
    di
    adc h
    adc [hl]
    nop
    adc h
    ld c, b
    sbc a
    jp z, $ab40

    ld d, l
    ld c, b
    adc h
    adc [hl]
    ld c, c
    ld b, l
    dec hl
    jp hl


    ld bc, $00a4
    cp $af
    db $d3
    and e
    adc h
    adc b
    ld h, e
    xor d
    or a
    ld l, d
    ret nz

    jp hl


    add d
    add sp, -$74
    adc h
    nop
    ld a, d
    ld h, $01
    jp z, $a340

    add d
    ld c, e
    dec d
    bit 1, l
    ld a, [hl+]
    or a
    ld [hl], c
    ret nz

    db $eb
    nop
    db $eb
    add $4d
    inc [hl]
    dec hl
    db $ed
    cp d
    dec c
    nop
    call z, $878c
    add e
    ld [$cbe6], a
    nop
    add l
    jr z, jr_05a_41d5

    ld b, l
    ld a, d
    ret


    adc l
    ld a, [bc]
    ld a, b
    dec c
    add a
    ld h, c
    jp $bd80


    jp hl


    nop
    ld d, [hl]
    ld b, l
    sub [hl]
    ld l, e
    sub b
    and h
    or a
    ld l, h
    ld b, a
    ld h, d
    ret nz

    ld l, b
    ld d, h
    ld c, e
    rst $30
    ld [$0000], a
    rst $00
    or a
    ld l, b
    ld [$c162], sp
    ld [$5354], a
    and l
    xor [hl]
    call nz, $8168
    jp hl


    nop
    ld [c], a
    ret nc

    ld [$2b48], sp
    rst $28
    ld a, h
    rrca
    ld l, a
    daa
    or h
    pop af
    dec hl
    db $ec
    ld [bc], a
    adc l
    nop
    jr nc, jr_05a_42e8

    ld h, l
    rst $08
    pop bc
    ld c, h
    ret nz

    db $ed
    rst $30
    or $fe
    and l
    db $eb
    ld l, e
    rst $38
    rst $38
    nop
    ld l, d
    xor e
    ld [hl], a
    dec c
    rst $38
    rst $38
    ld h, b
    inc b
    ldh [rSCY], a
    ret nz

    adc a
    rst $00
    rst $38
    db $fd
    adc $00
    ld l, a
    ret


    ret nz

    rst $38
    add b
    rst $20
    db $fc
    ld h, [hl]
    db $eb
    ld l, b
    ret nz

    rst $38
    ld b, b
    xor $24
    inc h
    nop
    cpl
    ld h, $ff
    rst $38
    and d
    adc e
    ld hl, sp+$05
    ld b, e
    jr nc, jr_05a_42f4

    call c, $85bc
    add l
    rst $38
    nop
    inc sp
    cp $cd
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    reti


    or e
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    scf
    db $eb
    call c, $ffff
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

jr_05a_42e8:
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

jr_05a_42f4:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, c
    ld [hl], e
    nop
    nop
    nop
    rst $38
    ld sp, $1131
    ld [de], a
    ld [de], a
    ld de, $6031
    rst $38
    ld e, e
    ld e, d
    ld e, e
    ld e, e
    ld e, h
    ld e, l
    ld sp, $9f31
    rrca
    jr nz, jr_05a_433e

    jr nz, jr_05a_4320

jr_05a_4320:
    rst $38
    rst $38
    rst $20
    and $11
    ccf
    ld [de], a
    ld hl, $2222
    ld hl, $bf15
    ldh [$c2], a
    pop hl
    ldh a, [$fe]
    ldh [$bf], a
    ldh [$ca], a
    rst $38
    add sp, -$19
    ld hl, $1022
    jr nz, @+$01

jr_05a_433e:
    jr nz, jr_05a_4350

    rla
    ld sp, $6231
    ld sp, $0f31
    ld b, a
    ld d, [hl]
    ld d, a
    ld c, l
    ld a, [hl]
    pop hl
    jp z, $e8ff

jr_05a_4350:
    rst $20
    ld d, c
    ldh [$fc], a
    ld c, [hl]
    ldh [$7f], a
    ldh [$31], a
    ld c, l
    ld b, [hl]
    ld [hl], $30
    jr nc, jr_05a_4350

    ld [hl-], a
    cp a
    pop hl
    jp z, $c0ff

    db $ed
    jr z, jr_05a_437d

    ld sp, $434d
    ld [hl-], a
    jr nc, @+$01

    pop hl
    cp a
    pop hl
    jp z, $80ff

    db $ed
    rrca
    pop bc
    ldh [$7f], a
    ld l, d
    jr nc, @+$32

    ld l, l

jr_05a_437d:
    ld l, d
    ld l, b
    ld l, b
    ld a, [hl]
    ldh [$fc], a
    jp z, Jump_05a_40ff

    db $ec
    rrca
    ld sp, $3247
    ld l, l
    ld l, d
    and b
    pop bc
    ldh [$c0], a
    ldh [$bf], a
    ldh [$ca], a
    rst $38
    add sp, -$19
    dec b
    rst $38
    ldh [rIF], a
    db $fd
    ld b, a
    dec b
    ldh [$6d], a
    jr nc, @+$32

    ld l, d
    ld l, d
    ld l, l
    dec b
    ld l, h
    rst $38
    ldh [$39], a
    jp z, $e8ff

    rst $20
    ld c, h
    ret nz

    jp nz, Jump_05a_44e0

    ldh [$5f], a
    jr nc, jr_05a_43e8

    ld l, c
    ld l, c
    ld l, l
    ret nz

    ld [c], a
    ld d, e
    jp z, Jump_05a_64ff

    ret nz

    add sp, -$77
    pop bc
    ld l, l
    ld b, e
    ldh [$c0], a
    pop hl
    ld l, e
    ld l, e
    cp h
    pop bc
    inc b
    add b
    rst $38
    jp hl


    add sp, -$50
    ret z

    pop bc
    cp a
    db $e3
    ret nz

    db $e4
    nop
    rst $38
    ld [$29e9], a
    ld a, e
    add h
    db $e3
    ld a, [hl]
    pop hl
    ld l, e
    ld b, b
    ldh [$6d], a

jr_05a_43e8:
    cp $a1
    jp z, $a6ff

    add sp, -$19
    ld a, c
    ld [hl], c
    cp a
    rst $20
    ret nz

    ret nz

    ld l, l
    cp a
    and b
    ld h, b
    inc h
    jp z, $e8ff

    rst $20
    add b
    cp a
    db $eb
    pop bc
    pop hl
    ld e, e
    jp z, $c0ff

    add sp, $6f
    add b

Call_05a_440a:
    ld a, c
    ld l, [hl]
    ld [hl], $3d
    push hl
    ld [hl], $46
    pop bc
    pop hl
    ld sp, hl
    ld e, d
    jp z, $c0ff

    jp hl


    add b
    add b
    ld l, a
    ld a, h
    ld a, h
    rst $38
    ld a, l
    ld d, a
    ld d, [hl]
    ld d, [hl]
    ld d, a
    ld d, a
    ld b, a
    ld sp, $3700
    add d
    jp z, $ffff

    rst $38
    rst $38
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

Jump_05a_44c0:
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

Call_05a_44e0:
Jump_05a_44e0:
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
    di
    nop
    nop
    nop
    and l
    nop
    rst $38
    push hl
    ld [hl-], a
    or $e6
    rst $30
    rst $20
    dec [hl]
    db $ec
    xor $37
    db $ec
    jp c, $c7f0

    add sp, $33
    ld sp, $f2e0
    ld [hl], $30
    scf
    cp a
    ld h, $20
    daa
    db $10
    ld d, $17
    jp nz, Jump_000_34f6

    rst $38
    ld [hl], $32
    jr nc, jr_05a_454f

    ld sp, $3133
    inc sp
    nop
    and b
    ei
    rst $38
    rst $28
    nop
    nop
    nop
    inc l
    ld b, l
    ld e, h
    ld b, l
    ld a, [$bb47]
    ld c, c
    db $ec
    dec hl
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    nop
    add hl, bc
    and l
    ld b, e
    xor $37
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    ccf
    ld a, a
    rla
    ld e, [hl]
    ld de, $2249
    dec sp
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05a_454f:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld a, l
    inc c
    rst $38
    db $e4
    dec bc
    dec bc
    ld l, e
    ld l, e
    ld c, e
    rst $38
    ld [c], a
    rra
    dec bc
    dec bc
    ld c, h
    inc c
    ld c, h
    rst $38
    ldh [$e6], a
    ldh [$fc], a
    ldh [$e0], a
    ld sp, hl
    pop hl
    ld hl, sp-$1e
    rst $30
    ld [c], a
    db $fc
    rst $28
    sub $e3
    dec hl
    dec hl
    ld l, e
    add d
    rst $38
    pop hl
    dec bc
    cp d
    ldh [$bf], a
    ldh [$e8], a
    db $e3
    db $fd
    and $b5
    db $e3
    ld c, h
    ld h, e
    inc c
    inc l
    cp [hl]
    pop af
    call $cae0
    pop hl
    ld l, e
    ld l, e
    cp l
    ld [c], a
    ld b, d
    ld a, [c]
    pop hl
    ld c, e
    add b
    ldh [$c0], a
    rst $20
    ld [hl], h
    ldh [$b2], a
    db $e4
    inc l
    ret nz

    ld a, [c]
    jr jr_05a_45ff

    ldh [$c2], a
    db $e3
    ld a, [hl]
    and $2b
    ld c, e
    ld d, h
    db $e3
    ld a, [hl]

jr_05a_45b8:
    db $e3
    db $fc
    db $e3
    adc h
    ld b, b
    pop hl
    ret nz

    di
    dec bc
    dec hl
    add e
    pop hl
    ret nz

    and $fc
    ret nz

    ld l, e
    nop
    ld b, b
    pop hl
    add d
    and $40
    add sp, -$05
    push bc
    jr c, jr_05a_45b8

    ld sp, $c0e3
    rst $20
    cp b
    ld [c], a
    add d
    cp e
    ret nz

    dec bc
    nop
    db $e3
    ld [c], a
    jp $c7d9


    or e
    call nz, $cdb8
    dec bc
    nop
    add $c0
    ld bc, $fbe2
    jp nz, $e2f8

    ret nz

    jp nz, $e6c1

    ld a, a
    ret z

    cp b
    pop de
    nop
    ret nz

    ldh [$8a], a
    pop bc

jr_05a_45ff:
    add c
    ldh [$c6], a
    ret nz

    ld b, e
    pop bc
    ret nz

    pop hl
    pop de
    db $e4
    ret nz

    call nz, Call_000_3f84
    db $eb
    cp b
    call z, $c60b
    ld [c], a
    ld b, c
    pop hl
    pop bc
    pop hl
    ret nz

    ld [c], a
    ld l, h
    nop
    ld [bc], a
    pop hl
    ld a, $c4
    add c
    pop bc
    dec [hl]
    call nz, $a5f8
    ret nz

    push af
    jp nz, Jump_05a_41a1

    push hl
    nop
    ld c, $c3
    cp $e4
    ld [hl], l
    rst $00
    cp l
    add $b4
    and a
    call z, $8ea0
    and b
    ld b, c
    ret nz

    nop
    add h
    and h
    add c
    pop hl
    rst $10
    and d
    adc l
    rst $20
    ld a, [c]
    add sp, -$08
    and $b4
    and [hl]
    ret nz

    pop hl
    add c
    ld c, e
    ret nz

    push hl
    ld a, [hl]
    and d
    push bc
    add $8d
    and $3f
    and a
    scf
    xor a
    dec bc
    ld hl, $c96b
    pop bc
    add b
    db $e4
    di
    ldh [rSCY], a
    pop bc
    inc l
    ld [de], a
    push bc
    ret nz

    and l
    nop
    ld b, b
    call nz, $a8fc
    ld b, b
    xor b
    jp z, Jump_05a_4082

    ld [c], a
    ld b, b
    and e
    rst $18
    and h
    dec b
    and l
    nop
    ld a, l
    jp $e7be


    cp l
    and e
    rst $38

jr_05a_4684:
    ldh [rP1], a
    push hl
    adc [hl]
    add c
    ld a, [hl]
    ldh [$81], a
    push hl
    ld b, b
    ld b, b
    jp hl


    ld b, c
    and l
    ld a, a
    and l
    dec l
    and h
    ret nz

    jp hl


    dec bc
    call nz, $c84b
    and c
    nop
    pop bc
    add d
    add d
    add l
    ret nz

    db $ed
    ld a, b
    xor c
    add c
    rst $20
    ld e, c
    db $ec
    ld b, $86
    inc de
    add a
    nop
    call nc, $f7e8
    ld h, [hl]
    ret nz

    jp hl


    ld d, $89
    ld c, $e7
    jp z, $c265

    ld l, l

jr_05a_46bd:
    jr c, jr_05a_4684

    jr nz, jr_05a_46bd

    ld a, [$62d4]
    jp nz, $3071

    add h
    jp nz, Jump_000_2cc1

    or c
    ld h, h
    ld [hl+], a
    add h
    nop
    ld a, [de]
    rst $00
    ld c, b
    ld h, d
    call nc, $bf60
    call nz, $69c2
    ld [hl], a
    ld h, [hl]
    ret nz

    jp hl


    ccf
    ld a, [c]
    nop
    ld h, b
    ret nz

    ld d, b
    ld h, b
    jp nz, $fc6d

    ld b, a
    db $eb
    jp z, $f140

    jp $bde0


    pop hl
    nop
    jp nz, $8c69

    rst $00
    ld b, h
    ldh [$c0], a
    ei
    add a
    ld b, b
    ret nz

    db $e4
    jp z, $85d2

    ld hl, sp+$00
    ld a, a
    rst $20
    ld a, a
    ld l, b
    ld b, c
    ld c, a
    ccf
    jp z, $cabc

    call nc, $c289
    ld l, e
    add b
    or e
    nop
    ret nz

    di
    rst $38
    daa
    jp nz, $2a68

    adc b
    push af
    add hl, hl
    and a
    cpl
    ld d, l
    ld h, [hl]
    jp nz, Jump_000_006a

    cp a
    ld c, c
    or l
    daa
    xor e
    jr nc, @-$6a

    ld b, [hl]
    jp nz, $c06b

    ld l, d
    ret nz

    rst $18
    add h
    ld b, l
    nop
    ld c, c
    ld b, [hl]
    or b
    jr z, jr_05a_47af

    jp z, Jump_000_0ee7

    db $d3
    ld b, [hl]
    jp nz, $bc6b

    ld a, [hl+]
    inc [hl]
    rlc b
    call nc, Call_000_3f70
    ld c, d
    push bc
    di
    ld l, d
    adc e
    call nc, $926d
    ld b, [hl]
    ld a, [bc]
    xor b
    ld a, [hl+]
    adc c
    nop
    sub d
    call $6dd4
    adc e
    ld l, c
    ld e, c
    adc [hl]
    ld bc, $d4b4
    ld l, c
    rst $10
    xor [hl]
    xor e
    ld l, e
    nop
    ld a, e
    rst $18
    ld a, [de]
    ldh a, [$ba]
    ld h, $c0
    rst $38
    and a
    ld [hl], l
    ld [bc], a
    rst $18
    add a
    di
    scf
    ld l, c
    nop
    ld [bc], a
    sbc e
    ld [hl], l
    xor l
    ld a, d
    rrca
    ret nz

    rst $38
    ld sp, hl
    ld h, [hl]
    ld a, d
    ld de, $ffff
    adc $ca
    nop
    ld a, d
    dec c
    rst $38
    rst $38
    ld h, [hl]
    xor h
    ld a, d
    rrca
    rst $38
    rst $38
    ret nc

    dec hl
    ld a, d
    inc c
    rst $38
    rst $38
    nop
    and [hl]
    add h
    ld a, d
    ld [de], a
    rst $38
    rst $38
    and [hl]
    sbc h
    rst $38
    rst $38
    and [hl]
    sbc h
    rst $38
    rst $38
    and [hl]
    sbc d
    nop
    rst $38
    rst $38

jr_05a_47af:
    and [hl]
    sbc e
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    rst $38
    rst $38
    ld [hl], e
    ccf
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    scf
    or $dc
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

Jump_05a_47e0:
    rst $38
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, d
    ld [hl], e
    nop
    nop

jr_05a_47f9:
    nop
    db $fd
    jr nz, @+$01

    ld [c], a
    ld a, [bc]
    dec bc
    ld sp, $4731
    ld b, [hl]
    rst $38
    ld d, h
    ld d, l
    ld d, h
    ld d, h
    dec sp
    ld c, l
    ld sp, $c931
    nop
    rst $38
    rst $38
    rst $20
    and $05
    rst $38
    ldh [$c2], a
    db $e3
    ld [hl], $6a
    sbc e
    ld l, d
    jr nc, @+$01

    ldh [$32], a
    ld c, l
    ret nz

    rst $38
    jp hl


    add sp, $31
    ld e, h
    rst $38
    ld [c], a
    jp nz, $6de0

    ld l, l
    ld l, d
    cp a
    db $e3
    add hl, sp
    ret nz

    rst $38
    ld h, d
    jp hl


    add sp, $60
    jp nz, $c1e5

    pop hl
    ld a, [hl]
    ld [c], a
    ld b, d
    inc a
    jp z, $feff

    add sp, -$19
    ld e, e
    ld h, c
    ld sp, $4849
    ld l, d
    ld l, d
    ret nc

    ret nz

    push hl
    dec a
    ldh [$c0], a
    rst $38
    ret nz

    db $ec
    add hl, sp
    ld b, a

jr_05a_4856:
    ldh [$6d], a
    ld l, l
    ld h, e
    jr nc, jr_05a_488c

    cp a
    db $e4
    ld b, b
    rst $38
    add b
    db $eb
    ld c, c
    ld c, b
    add $e1
    add sp, -$40
    push hl
    ret nz

    rst $18
    ld b, b
    db $ed
    add hl, sp
    adc d
    ret nz

Call_05a_4870:
    ld l, d
    ld l, c
    ld l, c
    jr nz, jr_05a_47f9

    ret nz

    ei
    ret nz

    pop bc
    pop hl
    ret nz

    rst $38
    ret nz

    xor $69
    ret nz

    pop hl
    cp h
    ret nz

    dec h
    ld l, l
    pop bc
    pop hl
    dec d

jr_05a_4888:
    jp z, $c0ff

    ret


jr_05a_488c:
    ld d, b
    ret nz

    db $e4
    pop bc
    pop hl
    bit 6, a
    xor a
    jr nc, jr_05a_4856

    rla
    jp z, $e8ff

    rst $20
    ld e, a
    ld sp, $af73
    ld [hl], c
    add b
    ld [c], a
    add d
    pop hl
    ld l, l
    add e
    and c
    add c
    ldh [$f9], a
    ld d, $ca
    rst $38
    add sp, -$19
    ld e, [hl]
    ld sp, $7981
    ld [hl], c
    ld [hl], $c0
    push hl
    ld [hl], a
    ld a, c
    ret nz

    ldh [rNR22], a
    jr z, jr_05a_4888

    rst $38
    add b
    xor b
    rst $18
    xor h
    xor c
    add b
    ld a, c
    ld [hl], c
    add b
    db $e4
    add e
    add b
    and $80
    ldh [$2b], a
    inc l
    jp z, Jump_05a_40ff

    xor b
    add c
    add b
    add b
    nop
    cp a
    ld [c], a
    add c
    ld [c], a
    ret nz

    rst $38
    xor $ed
    add c
    ldh [$bf], a
    db $e3
    add c
    ld [c], a
    ret nz

    rst $38
    ld hl, sp-$12
    db $ed
    add c
    pop hl
    ld a, [hl]
    pop hl
    ld l, [hl]
    ld d, h
    ld d, h
    ld l, [hl]
    ld a, c
    nop
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, [$0000]
    nop
    and l
    nop
    rst $38
    push hl
    ld [hl-], a
    or $e6
    rst $30
    rst $20
    dec [hl]

Call_05a_49c5:
    db $ec
    xor $37
    db $ec
    jp c, $c7f0

    add sp, $33
    ld sp, $f2e0
    ld [hl], $30
    scf
    cp a
    ld h, $20
    daa
    db $10
    ld d, $17
    jp nz, Jump_000_34f6

    rst $38
    ld [hl], $32
    jr nc, jr_05a_4a1a

    ld sp, $3133
    inc sp
    nop
    and b
    ei
    rst $38
    rst $28
    nop
    nop
    nop
    rst $30
    ld c, c
    daa
    ld c, d
    cp a
    ld c, h
    add [hl]
    ld c, [hl]
    db $ec
    dec hl
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    nop
    add hl, bc
    and l
    ld b, e
    xor $37
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    ccf
    ld a, a
    rla
    ld e, [hl]
    ld de, $2249
    dec sp
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05a_4a1a:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    db $dd
    inc c
    rst $38
    and $4c
    inc c
    dec bc
    rst $38
    ldh [rOCPD], a
    ld l, e
    inc bc
    dec bc
    dec bc
    db $f4
    ldh [rIE], a
    ldh [$ed], a
    ld [c], a
    db $fd
    pop hl
    ld hl, sp-$1d
    rst $30
    ld [c], a
    nop
    db $fc
    push af
    ret nc

    pop hl
    ret nz

    ld [c], a
    pop bc
    pop hl
    ret nz

    ldh [$d0], a
    ld [c], a
    db $fd
    push hl
    or l
    db $e3
    rst $00
    ld c, h
    inc c
    inc l
    cp [hl]
    rst $30
    add [hl]
    pop hl
    add d
    ld [c], a
    ld c, e
    ld c, e
    ld de, $c02b
    and $7a
    rst $38
    ret c

    db $e4
    dec hl
    call z, Call_05a_44e0
    push hl
    cp [hl]
    pop hl
    add sp, $4b
    and $7a
    rst $38
    add [hl]
    push hl
    ld l, e
    add [hl]
    ldh [rWX], a
    ld l, e
    ld c, e
    ld h, b
    or $e3
    di
    jp nz, $e54a

    dec a
    db $e3
    or d

Jump_05a_4a84:
    and $2c
    inc l
    jr c, @-$19

    adc b
    ld sp, $86e3
    rst $20
    inc a
    and $2b
    ld b, c
    push hl
    ld hl, sp-$39
    ldh a, [$e5]
    ld c, h
    nop
    ret nz

    pop hl
    ld b, $f0
    jp z, $83c1

    pop hl
    ld hl, sp-$3e
    ret nz

jr_05a_4aa4:
    pop hl
    ld l, l
    push bc
    add d
    db $e4
    inc b
    cp d
    ret z

    add $cd
    ld c, h
    ld c, h
    jp nz, $c1fe

    ld a, [$c0c4]
    ldh [$50], a
    add $10
    ld c, e
    jp $c645


    jr c, jr_05a_4aa4

    ld b, h
    call z, $c00b
    ret nz

    adc c
    pop bc
    cp e
    add $50
    ld [bc], a
    pop hl
    jp z, $b7e9

    push hl
    ld sp, hl
    or e
    inc l
    ld b, l
    ldh [$2b], a
    cp h
    pop hl
    ld h, b
    ld a, a
    db $e3
    ret nz

    and e
    ld a, $c6
    ret nz

    add $3f
    push af
    inc c
    inc l
    ld a, $e0
    ld [bc], a
    ld a, $c3
    dec hl
    scf
    ret nz

    add c
    and b
    nop
    db $e3
    adc e
    call nz, $c681
    dec [hl]
    call nz, $8834
    call nz, $a8b4
    inc l
    ld a, a
    ldh [$0b], a
    dec hl
    jp nz, $7ac3

    ld [c], a
    ld b, b
    ret nz

Jump_05a_4b07:
    jp nz, $e54b

    ld h, [hl]
    and d
    or a
    and e
    ld [hl], l
    call nz, $ae46
    inc l
    cp [hl]
    ld [c], a
    jr nz, @+$41

    add $82
    and l
    adc $c9
    inc bc
    and h
    ret nz

    ret nc

    dec bc
    cp a
    db $e3
    cp [hl]
    and $80
    adc d
    add $45
    and [hl]
    cp e
    add h
    rst $38
    and l
    ld d, b
    ldh [$4c], a
    pop hl
    ld hl, sp-$5b
    dec bc
    nop
    cp a
    pop hl
    ldh a, [$e1]
    ret z

    add h
    adc e
    jp z, $e53f

    ld sp, $ffc6
    push bc
    ret nz

    jp hl


    nop
    ld a, [hl]
    pop hl
    ld b, h
    add e
    ld [$0e8b], a
    add $81
    call nz, $a578
    add c
    ld [$e8df], a
    nop
    sub c
    jp hl


    dec b
    ret z

    add c
    and $39
    adc b
    ret nz

    add sp, $5b
    sub l
    ret z

    ld l, e
    dec a
    rst $20
    nop
    ld b, l
    jp z, $a71a

    sub d
    adc b
    ld e, c
    and h
    ret z

    ld l, e
    adc [hl]
    jp hl


    jp nz, Jump_05a_79c2

    add [hl]
    nop
    ld e, h
    rst $00
    ld h, d
    add c
    ld e, d
    add l
    ld c, [hl]
    adc e
    rst $38
    adc h
    ret nz

    jp hl


    ld h, c
    rst $20
    ld h, d
    add d
    nop
    ld hl, sp-$18
    ld c, [hl]
    add a
    rst $38
    adc h
    rst $38
    call $8962
    ld e, d
    add a
    ld c, [hl]
    adc c
    rst $38
    adc e
    nop
    cp a
    call z, $8661
    ld h, d
    add l
    ld e, d
    adc c
    push af
    push bc
    rst $38
    adc c
    add c
    ld d, b
    add [hl]
    call z, $8200
    ld h, a
    cp $a6
    rst $38
    adc b
    add b
    xor d
    sbc $e7
    add hl, sp
    ld b, [hl]
    add a
    ld b, h
    adc l
    ld l, d
    nop
    rst $38
    adc c
    ret nz

    db $ec
    db $db
    ld [hl+], a
    ld h, d
    add l
    ld hl, sp-$1a
    ld c, a
    db $eb
    rst $38
    adc d
    ld c, l
    add c
    nop
    sbc l
    or d
    adc l
    ld c, e
    ld c, [hl]
    add a
    rst $38
    adc l
    ret nz

    ld [$935b], a
    ld d, c
    dec h
    ret nz

    rst $00
    nop
    ld [hl], a
    ld c, b
    db $76
    inc l
    ld e, e
    sub c
    ld d, c
    ld hl, $e7f3
    rst $38
    adc e
    dec a
    xor e
    ld e, e
    sub h
    nop
    rla
    ld b, h
    di
    call nz, $8aff
    jp nz, Jump_05a_5b10

    adc [hl]
    adc c
    and e
    ret


    adc b
    rst $38
    adc e
    nop
    ld b, b
    rst $28
    ld e, e
    adc h
    ld a, b
    xor c
    ld a, d
    inc c
    add c
    ld h, c
    ld a, [hl]
    ret z

    ld e, a
    and [hl]
    ld e, e
    adc d
    nop
    dec bc
    and $75
    ld c, b
    nop
    inc h
    ld b, c
    xor l
    db $76
    ld c, c
    xor c
    ld [$679c], a
    nop
    dec l
    nop
    jp nz, $198a

    ld b, a
    rst $10
    ld l, $00
    inc [hl]
    jp nz, $d78d

    inc [hl]
    nop
    ccf
    sub e
    ld c, e
    nop
    rst $10
    dec [hl]
    nop
    ld l, $01
    db $ec
    ld c, e
    adc c
    ld a, h
    xor d
    nop
    dec [hl]
    ld [bc], a
    adc e
    and l
    add hl, bc
    nop
    ld a, h
    xor e
    add hl, hl
    or $bf

Jump_05a_4c4b:
    or b
    ld a, h
    or d
    nop
    ccf
    ld b, b
    ld [$8ed8], a
    nop
    ccf
    nop
    ld b, b
    ld [$8ed8], a
    nop
    ld [hl-], a
    ld b, b
    ld hl, sp-$28
    adc h
    nop
    inc [hl]
    cp $fa
    ld h, h
    call Call_000_2900
    di
    rst $38
    rst $38
    nop
    scf
    rst $38
    rst $38
    add hl, hl
    db $fc
    rst $38
    rst $38
    add hl, hl
    cp $ff
    rst $38
    nop
    rst $38
    rst $38
    sub [hl]
    rst $38
    rst $38
    rst $38
    ld sp, $ff11
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    add hl, sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, e
    ld [hl], l
    nop
    nop
    nop
    db $ed
    jr nz, @+$01

    rst $20
    nop
    ld sp, $e0ff
    ld [hl], b
    xor [hl]
    add b
    and e
    add b
    nop
    rst $38
    rst $38
    rst $20
    and $c0
    db $e3
    dec b
    rst $38
    pop hl
    rrca
    sbc b
    pop bc
    db $e4
    ret nz

    rst $38
    ret nz

    db $ec
    ld a, [bc]
    dec bc
    add [hl]
    pop hl

Call_05a_4ce2:
    add d
    pop hl
    inc a
    ld h, a
    ld d, l
    ld l, [hl]
    ld a, b
    ret nz

    rst $38
    ld [$05e9], a
    dec b
    jp nz, $ffe7

    ld c, l
    ld b, l
    ld b, d
    ld l, l
    jr nc, @+$46

    ld l, [hl]
    ld a, b
    ld hl, sp-$36
    rst $38
    add sp, -$19
    push bc
    push hl
    ld b, [hl]
    ld d, l
    ld d, h
    ld d, l
    ld b, h
    ld a, a
    jr nc, jr_05a_4d70

    ld l, d
    ld l, l
    jr nc, jr_05a_4d3d

    add e
    jp z, Jump_05a_4eff

    ret nz

    db $ed
    ld c, l
    ld [hl-], a
    ld l, l
    call nz, $bfe3
    pop hl
    ld d, d
    jp z, Jump_000_26ff

    add b
    db $ec
    inc [hl]
    ld [hl-], a
    add a
    pop hl
    cp a
    push hl
    ld d, e
    jp z, Jump_05a_40ff

    add sp, -$7b
    inc b
    jp z, Jump_05a_44c0

    add a
    db $e3
    ld a, [hl]
    db $e4
    add b
    rst $38
    jp hl


    add sp, $29
    ld l, e
    ld hl, $c015

jr_05a_4d3d:
    ldh [$67], a
    cp a
    add sp, $30
    add hl, sp
    jp z, Jump_05a_4eff

Call_05a_4d46:
    add sp, -$19
    dec hl
    inc l
    rla
    ld b, b
    ld [c], a
    dec b
    ldh [rLY], a
    ret nz

    jp Jump_000_32b3


    ld c, l
    jp z, $c0ff

    jp hl


    ld d, $15
    ret nz

    pop bc
    ld h, a
    rst $18
    ld [hl], $46
    ld c, l
    ld c, l
    ld b, l
    ld [hl], a
    ldh [$32], a
    ld c, l
    jp hl


    ld sp, $ffca
    add b
    jp hl


    jr z, jr_05a_4def

jr_05a_4d70:
    ldh [$31], a
    ld c, l
    ld d, a
    sbc l
    ld b, a
    cp $a3
    ld b, [hl]
    ld c, l
    ld sp, $ffc0
    nop
    ld [$6728], a
    ld d, $12
    ld de, $a580
    cp $81
    ld de, $ca12
    rst $38
    db $ec
    ret nz

    xor b
    cp a
    ldh [rNR43], a
    ld hl, $e7be
    ld de, $2112
    pop af
    ld [hl+], a
    jp z, $80ff

    xor c
    ld a, [hl]
    ldh [rNR41], a
    ld [hl+], a
    ld hl, $fe01
    add e
    add b
    add hl, hl
    inc d
    inc d
    inc d
    ld hl, $1022
    reti


    jr nz, @-$34

    rst $38
    ld b, b
    xor d
    add hl, hl
    daa
    add h
    add e
    ld sp, $072b
    inc h
    inc h
    inc h
    scf
    add d
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

jr_05a_4def:
    rst $38
    rst $38
    rst $38
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
    ld a, [c]
    nop
    nop
    nop
    and l
    nop
    rst $38
    push hl
    ld [hl-], a
    or $e6
    rst $30
    rst $20
    dec [hl]
    db $ec
    xor $37
    db $ec
    jp c, $c7f0

    add sp, $33
    ld sp, $f2e0
    ld [hl], $30
    scf
    cp a
    ld h, $20
    daa
    db $10
    ld d, $17
    jp nz, Jump_000_34f6

    rst $38
    ld [hl], $32
    jr nc, jr_05a_4ee5

    ld sp, $3133
    inc sp
    nop
    and b
    ei
    rst $38
    rst $28
    nop
    nop
    nop
    jp nz, $f24e

    ld c, [hl]
    ld d, [hl]
    ld d, c
    ld l, $53
    db $ec
    dec hl
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    nop
    add hl, bc
    and l
    ld b, e
    xor $37
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    ccf
    ld a, a
    rla
    ld e, [hl]
    ld de, $2249
    dec sp
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05a_4ee5:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld a, l
    inc c
    rst $38
    ldh [$0b], a
    dec bc
    dec bc
    ld l, e

jr_05a_4efa:
    ld c, e
    ei
    ldh [rPCM34], a
    ld c, h

Jump_05a_4eff:
    ld c, h
    ld c, h
    ld a, [c]
    ld [c], a
    inc c
    ld c, h
    inc c
    push af
    ld [c], a
    jr jr_05a_4efa

    ldh [$ef], a
    pop hl
    ld [$0ce2], a
    inc l
    rst $30
    add sp, -$02
    db $eb
    pop bc
    pop hl
    dec bc
    ld l, e
    ld c, e
    cp a
    ldh [$2c], a
    ret nz

    push hl
    xor e
    pop hl
    set 4, d
    rst $30
    ld [c], a
    ld d, b
    or d
    ldh [$f7], a
    db $eb
    ret nz

    xor $c1
    ldh [$2b], a
    cp a
    ldh [$2b], a
    ret nz

    add sp, $48
    add a
    ld [c], a
    cp b
    db $e4
    ld l, c
    ld [c], a
    inc l
    rst $30
    and $80
    ld [$c14c], a
    db $e3
    dec c
    dec bc
    ret nz

    ldh [rWX], a
    dec hl
    call c, $80e1
    ld [c], a
    adc h
    pop hl
    db $fc
    db $e3
    nop
    ccf
    and $49
    pop hl
    ret nz

    ldh a, [rDIV]
    ldh [$03], a
    ld [c], a
    pop bc
    ldh [$fd], a
    ret nz

    ld a, [c]
    jp $c140


    and $b8
    db $e3
    ld b, c
    db $ed
    rst $38
    call nz, $c3f8
    ret nz

    pop hl
    dec hl
    add d
    ld [c], a
    inc bc
    dec bc
    ld l, e
    ret nz

    add sp, -$02
    db $e4
    db $76
    db $e4
    rst $28
    call nz, $e4f7
    add b
    xor $0d
    dec hl
    pop bc
    ld [c], a
    ld c, e
    dec hl
    add $c2
    ld [hl], e
    ret nz

    add b
    pop bc
    cp [hl]
    rst $00
    nop
    ret nz

    db $db
    ld b, b
    pop hl
    ld a, a
    ldh [$c1], a
    ldh [$c0], a
    pop hl
    ccf
    ret nz

    ld a, c
    ldh [rKEY1], a
    jp $be10


    call nz, $c5c0
    rst $30
    rst $20
    ld b, b
    jp z, $8a2c

    ldh [rDMA], a
    pop hl

jr_05a_4fae:
    nop
    pop hl
    jr nc, jr_05a_4fae

    and c
    ld a, [hl-]
    db $e3
    ld b, h
    and $40
    sbc $2c
    ld c, h
    ld [bc], a
    pop bc
    pop bc
    pop bc
    adc h
    cp h
    and b
    cp a
    ld [c], a
    dec bc
    ld a, [bc]
    ret nz

    and e
    ld a, l
    push bc
    add b
    db $fc
    inc l
    nop
    add e
    and c
    add e
    jp nz, $c0fd

    ld [hl-], a
    ld [c], a
    add b
    db $e3
    dec sp
    db $e4
    ld a, a
    and a
    rst $30
    jp hl


    jr nz, @+$7d

    xor c
    add b
    ret nz

    pop bc
    db $e3
    cp h
    pop bc
    ld [hl], h
    ret nz

    ld a, [bc]
    ret nz

    xor $fd
    ei
    add e
    ld c, h
    ld c, e
    add b
    ret nz

    cp h
    db $e4
    rst $30
    pop hl
    ld b, b
    and h
    ld h, h
    ld [c], a
    inc l
    ld h, b
    inc de
    xor [hl]
    ret nz

    pop af
    ccf
    jp $a2bb


    inc a
    ret nz

    dec hl
    dec hl
    adc h
    db $fc
    nop
    or [hl]
    add b
    and [hl]
    ld [$c0be], a
    cp $a1
    ld bc, $7cc0
    call nz, $fc8d
    ret nz

    ldh a, [rP1]
    cp l
    and b
    ld a, [hl-]
    jp nz, $a138

    ret nz

    cp $27
    ld [$85da], a
    jp nc, Jump_05a_4a84

    and e
    nop
    nop
    sub e
    ld b, b
    add a
    ret nz

    jp hl


    db $d3
    ld l, d
    adc $64
    db $d3
    ld h, d
    nop
    adc l
    ld [hl], d
    reti


    nop
    db $d3
    ld [hl], b
    nop
    adc [hl]
    ld a, a
    adc b
    ld h, a
    jp nz, Jump_05a_6878

    db $d3
    ld [hl], c
    nop
    adc [hl]
    nop
    and a
    nop
    ret nz

    ld [$e505], a
    db $d3
    ld l, h
    nop
    adc a
    or $49
    and $a7
    rla
    and a
    db $d3
    ld l, h
    nop
    nop
    adc [hl]
    nop
    db $d3
    push de
    ld h, [hl]
    db $d3
    ld l, l
    nop
    adc a
    add $d4
    db $d3
    ld [hl], d
    nop
    sub b
    nop
    add b
    or h
    ld e, l
    add h
    db $d3
    ldh a, [$31]
    ld b, e
    ld c, c
    ld c, a
    ret nz

    rst $28
    db $d3
    ld l, a
    add $64
    nop
    nop
    adc c
    dec bc
    adc d
    ld b, b
    db $eb
    db $d3
    ld [hl], d
    ld c, $47
    ld b, b
    ld l, [hl]
    ld l, c
    adc c
    ld d, h
    ld h, $00
    db $d3
    db $ed
    ld c, $c9
    add b
    inc l
    dec a
    add hl, hl
    ret nz

    db $ed
    reti


    sub e
    add b
    db $ec
    xor h
    sbc e
    nop
    sub l
    ld [hl], a
    ld [hl], d
    ld a, a
    rst $28
    adc l
    cp $75
    ret nz

    rst $38
    cp [hl]
    ld a, d
    ld d, h
    db $fd
    add b
    db $fc
    nop
    ld bc, $15ce
    call z, $fc17
    ld [bc], a
    ld l, d
    dec d
    ld d, c
    ld a, [$9588]
    db $dd
    dec d
    ld e, d
    nop
    cp c
    db $ec
    or l
    sub a
    ld b, d
    reti


    ld [hl], l
    ld l, a
    dec d
    rst $18
    and d
    ld c, c
    ld [hl], l
    ld l, a
    ret nz

    rst $38
    nop
    adc l
    xor c
    ld [hl], l
    ld [hl], d
    rst $38
    rst $38
    cp h
    ld b, h
    and d
    ld [hl], c
    rst $38
    rst $38
    sbc l
    dec b
    ld [hl], b
    ld b, h
    nop
    ld [hl], l
    ld a, a
    ccf
    ld sp, hl
    ld [hl], l
    ld [hl], a
    add hl, de
    dec sp
    inc bc
    add h
    and d
    ld l, a
    rst $38
    rst $38
    ld b, b
    jp hl


    nop
    ld h, b
    or b
    rst $38
    rst $38
    inc c
    adc b
    ld h, b
    or b
    rst $38
    rst $38
    pop de
    ld h, $60
    cp d
    rst $38
    rst $38
    nop
    ld h, b
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    ld [hl], h
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    sbc e
    jr nc, @+$01

    rst $38
    rst $38
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
    nop
    cp a
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
    ld [$0000], a
    nop
    rst $38
    jr nz, jr_05a_5179

    jr nz, @+$17

    ld sp, $3131
    ld c, l
    db $ed
    ld c, l
    ei
    ldh [rNR22], a
    jr z, @-$0c

    ldh [rP1], a
    ld sp, $b931
    nop
    rst $38
    rst $38
    rst $20
    and $20
    jr nz, jr_05a_517f

    pop bc
    pop hl
    ld [hl-], a
    ld c, l
    ld [hl-], a
    cp a

jr_05a_5179:
    ldh [$15], a
    ld d, $c0
    rst $38
    ret nz

jr_05a_517f:
    rst $28
    dec c
    pop bc
    pop hl
    jp Jump_000_3067


    cp a
    pop hl
    ld a, a
    pop hl
    ret nz

    rst $38
    db $eb
    ld [$0f05], a
    ld b, $c1
    db $e3
    jr nc, @+$69

    ld a, [hl]
    ldh [$7f], a
    pop hl
    ret nz

    rst $38
    db $eb
    ld [$e004], a
    ei
    ld sp, $c139
    pop hl
    ld l, d
    ld l, l
    add hl, sp
    ld sp, $8f31
    dec hl
    inc l
    jr nz, jr_05a_51c6

    ret nz

    rst $38
    ret nz

    xor $c1
    ld [c], a
    jr nc, @-$61

    ld d, d
    ret nz

    ld [c], a
    dec d
    ld sp, $ca5e
    rst $38
    add b
    db $eb
    ld c, c
    dec h
    ld c, b
    pop bc
    pop hl
    ld h, a

jr_05a_51c6:
    ret nz

    ld [c], a
    or d
    ret nz

    ld e, a
    jp z, Jump_05a_40ff

    db $eb
    db $fc
    ld a, a
    ldh [$c1], a
    ldh [rOCPS], a
    ld d, e
    ld sp, $2931
    ld hl, $0d4f
    ld sp, $5b60
    jp z, $e8ff

    rst $20
    ld de, $e73f
    sbc e
    ld c, b
    ld c, c
    di
    pop bc
    ld h, b
    ld e, e
    ret nz

    rst $38
    jp hl


    add sp, $16
    and $c2
    and b
    ld c, c
    ld c, b
    nop
    ld [c], a
    dec a
    jp nz, Jump_05a_5b5e

    ld e, e
    sbc c
    ld e, d
    jp z, $e8ff

    rst $20
    jr z, jr_05a_521d

    ret nz

    pop bc
    pop bc
    ld [c], a
    ld h, a
    adc l
    jr nc, jr_05a_528c

    ret nz

    ld e, a
    ld e, e
    add b
    rst $38
    add b
    xor d
    db $10
    ret nz

    add hl, sp
    ld e, [hl]
    pop bc
    db $e3
    ld l, d
    ld l, l

jr_05a_521d:
    add e
    ld [hl], b
    ld [bc], a
    ldh [$5a], a
    ret nz

    rst $38
    or $80
    xor h
    ld c, l
    ld [hl-], a
    pop bc
    db $e3
    ld c, b
    add h
    xor c
    xor h
    db $ec
    nop
    rst $38
    nop
    or b
    ld c, l
    ld [hl-], a
    rst $38
    and d
    add e
    add b
    add b
    rra
    add c
    ld sp, $5d31
    ld e, h
    jp z, $c0ff

    adc c
    add b
    add c
    ei
    ld c, l
    ld [hl-], a
    ret nz

    and b
    ld c, b
    add h
    add b
    add b
    xor [hl]
    pop hl
    ld [hl], b
    ld [hl], e
    add b
    jp z, $c0ff

    ld [$a04e], a
    ld sp, $464d
    rrca
    ld d, l
    ld d, l
    ld [hl], d
    add b
    rst $38
    ldh [$bf], a
    pop hl
    jp z, $ffff

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

jr_05a_528c:
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
    di
    nop
    nop
    nop
    and l
    nop
    rst $38
    push hl
    ld [hl-], a
    or $e6
    rst $30
    rst $20
    dec [hl]
    db $ec
    xor $37
    db $ec
    jp c, $c7f0

    add sp, $33
    ld sp, $f2e0
    ld [hl], $30
    scf
    cp a
    ld h, $20
    daa
    db $10
    ld d, $17
    jp nz, Jump_000_34f6

    rst $38
    ld [hl], $32
    jr nc, jr_05a_538d

    ld sp, $3133
    inc sp
    nop
    and b
    ei
    rst $38
    rst $28
    nop
    nop
    nop
    ld l, d
    ld d, e
    sbc d
    ld d, e
    pop hl
    ld d, l
    jp $ec57


    dec hl
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    nop
    add hl, bc
    and l
    ld b, e
    xor $37
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    ccf
    ld a, a
    rla
    ld e, [hl]
    ld de, $2249
    dec sp
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05a_538d:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    or l
    inc c
    rst $38
    db $e4
    dec bc
    rst $38
    ld [c], a
    dec hl
    dec hl
    ld hl, sp-$1f
    inc c
    ld sp, $ea4c
    ldh [$fc], a
    pop hl
    db $fd
    and $4c
    ld c, h
    ldh a, [$eb]
    and $e9
    ld a, d
    db $e4
    ldh [$0c], a
    ret z

    pop hl
    ld l, e
    dec bc
    dec bc
    ld c, e
    cp [hl]
    db $e3
    nop
    ld [$b8e5], a
    pop hl
    cp c
    ld [c], a
    ld hl, sp-$1f
    db $f4
    push hl
    cp c
    db $ec
    adc b
    db $e3
    add d
    ldh [rTIMA], a
    ld l, e
    ret nz

    pop hl
    ld c, e
    cp [hl]
    ldh [$c0], a
    pop hl
    adc [hl]
    db $e3
    db $fd
    db $e4
    or l
    db $e3
    rlca
    ld c, h
    inc c
    inc l
    ret nz

    ld hl, sp-$3e
    pop hl
    dec a
    pop hl
    ret nz

    xor $47
    db $e3
    ld e, d
    ld b, b
    pop hl
    inc l
    ret nz

    di
    ld l, e
    ld l, e
    adc d
    ldh [rWX], a
    pop bc
    db $e4
    adc a
    dec bc
    dec hl
    dec bc
    ld l, h
    inc b
    push hl
    ld a, [hl]
    db $e3
    ld b, a
    push hl
    ld c, h
    inc b
    ret nz

    db $e4
    push hl
    ret nz

    inc l
    call z, $f9c3
    db $e3
    add a
    push hl
    ret nz

    and $cf
    call nz, $8200
    push hl
    ld b, b
    add sp, -$3c
    ld [c], a
    cp c
    call $ecc0
    add c
    ld [c], a
    call Call_05a_7bc4
    ret


    nop
    ld a, a
    call nz, $ef3c
    adc c
    pop bc
    cp [hl]
    push bc
    call nz, Call_05a_49c5
    rst $00
    inc [hl]
    and $7f
    jp $c080


    ld a, [c]
    ccf
    jp hl


    add e
    rst $20
    ret nz

    ret z

    ccf
    rst $20
    jp hl


    xor l
    jp $2ba0


    ld bc, $856b
    call nz, $c001
    adc b
    add sp, -$42
    push hl
    ret z

    and c
    dec [hl]
    call nz, $f1c2
    inc bc
    inc c
    inc c
    add l
    ret nz

    cp l
    add $47
    db $ec
    rst $38
    push hl
    ld [hl], l
    add $6b
    and e
    nop
    add c
    jp nz, $c47c

    ld c, b
    and b
    cp a
    ld [c], a
    ld [bc], a
    jp $ac67


    add hl, sp
    xor c
    ld a, [c]
    db $eb
    ld [bc], a
    add b
    xor d
    ld c, e
    dec bc
    and d
    rlca
    and c
    ld c, d
    and h
    db $fd
    ret z

    or $85
    ret nz

    push bc
    ld b, $40
    or d
    ld l, e
    dec hl
    pop bc
    and d
    ld b, l
    and c
    db $f4
    add e
    sub e
    call nz, $e644
    inc b
    cp a
    adc e
    jr c, @-$3b

    inc l
    cp d
    and h
    jp nz, Jump_000_03a8

    and e
    rst $30
    add b
    inc a
    rst $38
    ld [bc], a
    ret nz

    ld a, [c]
    ld a, [bc]
    cp [hl]
    pop hl
    ld sp, $40a1
    sub a
    ld a, $a5
    add c
    and $9e
    add [hl]
    nop
    ld hl, sp-$19
    ld c, e
    xor c
    ld b, b
    adc l
    ret nz

    ldh a, [$95]
    rst $30
    ld b, b
    sub b
    ld a, [$9570]
    rst $30
    nop
    ld b, b
    sub b
    ld a, [$c185]
    pop bc
    db $fd
    and [hl]
    push de
    ld [hl], h
    ld b, b
    sub d
    ld a, [$c084]
    ld a, [c]
    nop
    sub l
    db $ec
    ld b, b
    sub d
    rst $18
    and l
    ld b, b
    add $d5
    ld a, b
    ld b, b
    sub b
    add hl, hl

jr_05a_54e8:
    add [hl]
    ld a, a
    rst $00
    nop
    push de
    db $76
    ld b, b
    sub c
    ld a, e
    add e
    rst $30
    ld c, h
    push de
    ld [hl], e
    ld b, b
    sub d
    cp d
    ld h, h
    add b
    ld [$d500], a
    ld [hl], h
    ld b, b
    sub d
    cp d
    ld h, h
    ld b, b
    add sp, -$2b
    ld [hl], a
    ld b, b
    sub e
    ld sp, hl
    ld l, l
    push de
    ld [hl], a
    nop
    ld b, b
    sub c
    db $76
    jr nc, jr_05a_54e8

    ld [hl], l
    ld b, b
    sub e
    scf
    sub d
    sub l
    or $40
    adc [hl]
    rst $30
    ld c, b
    nop
    sbc d
    ld c, d
    push de
    ld [hl], d
    adc $85
    or a
    jp nc, $09a5

    sub l
    di
    jp z, $2246

    di
    nop
    ld h, e
    dec bc
    push de
    jr @-$07

    ld d, d
    ld bc, $00c9
    or [hl]
    rst $30
    ld e, b
    nop
    adc d
    push de
    ld [de], a
    nop
    adc d
    xor c
    rst $30
    ld c, a
    add c
    jp hl


    nop
    cp c
    push hl
    sub h
    ld b, d
    xor d
    push de
    inc de
    push hl
    db $fd
    nop
    dec sp
    rst $08
    nop
    xor h
    cp d
    add hl, de
    ld b, d
    adc c
    push de
    add hl, de
    push hl
    sub e
    ret nz

    db $eb
    sbc $b6
    nop
    jp Jump_000_00bf


    cp e
    jp Jump_000_00bf


    cp d
    sbc $22
    ld a, d
    sub h
    nop
    cp a
    cp d
    rra
    nop
    nop
    cp h
    ld h, b
    ld b, b
    cp d
    add hl, de
    rst $38
    rst $38
    ld b, b
    and $29
    inc h
    ld e, l
    and [hl]
    rst $38
    rst $38
    nop
    dec h
    adc e
    ld h, $45
    inc bc
    sub d
    jp nz, Jump_05a_64fa

    ld h, h
    ret nz

    add sp, -$01
    rst $38
    inc sp
    db $f4
    nop
    ld c, a
    ld c, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    rst $38
    rst $38
    db $d3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    scf
    ldh a, [$dc]
    rst $38
    rst $38
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
    nop
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld e, c
    ld [hl], e
    nop
    nop
    nop
    db $dd
    jr nz, @+$01

    ld [c], a
    ld a, [bc]
    dec bc
    ld sp, $e2ff
    ld e, l
    ld e, h
    dec h
    ld e, e
    rst $38
    ldh [rP1], a
    rst $38
    rst $38
    rst $20
    and $05
    rst $38
    ldh [$c2], a
    db $e3
    rrca
    ld b, a
    ld d, [hl]
    ld d, a
    ld b, a
    cp [hl]
    db $e3
    jp z, $e8ff

    rst $20
    adc b
    db $e3

jr_05a_5607:
    cp $82
    ldh [$3c], a
    ld [hl], $6d
    jr nc, @+$38

    ld b, [hl]
    ld c, l
    rst $08
    ld sp, $6231
    ld h, d
    jp z, $c0ff

    xor $47
    ld b, [hl]
    ld a, a
    ld b, d
    ld l, l
    ld l, l
    jr nc, jr_05a_5652

    jr nc, jr_05a_565d

    jr c, jr_05a_5607

    db $fc
    jp z, $80ff

    add sp, $47
    ld b, [hl]
    ld d, h
    ld d, l
    ld d, h
    ld d, h
    rst $30

jr_05a_5632:
    ld [hl], $69
    ld l, l
    rst $38
    ldh [$30], a
    jr nc, @+$54

    ld sp, $15e7
    inc d
    inc d
    jp z, $e8ff

    rst $20
    scf
    ld [hl], $6a
    or $ff
    ldh [$30], a
    jr nc, @-$3e

    db $e4
    ld d, e
    ld sp, $2417
    ld c, c

jr_05a_5652:
    inc h
    jp z, $e8ff

    rst $20
    add hl, sp
    call nz, $bfe0
    pop hl
    ld l, d

jr_05a_565d:
    add b
    pop hl
    ld a, a
    ld l, l
    ld [hl], $3c
    dec d
    ld d, $20
    jr nz, jr_05a_5632

    rst $38
    ld a, [c]
    add sp, -$19
    ld d, e
    add h
    ldh [$bf], a
    db $e3
    ld l, b
    ld b, d
    ld d, l
    ld b, [hl]
    rst $08
    ld b, a
    ld sp, $2817
    ret nz

    rst $38
    ld [$52e9], a
    ld h, a
    inc e
    cp a
    push hl
    call nz, $11c1
    ld [de], a
    ld [hl+], a
    rst $28
    and b
    jp z, $e8ff

    rst $20
    di
    add e
    ld h, a
    ld [bc], a
    pop hl
    dec a
    ldh [$30], a
    ld [hl-], a
    ld c, l
    ld de, $1263
    ld hl, $e1c1
    ret nz

    rst $38
    jp hl


    add sp, $79
    ld [hl], c
    cp a
    ld [c], a
    ld e, $c1
    pop hl
    ld sp, $222b
    db $10
    ld [hl], c
    and d
    jp z, $e8ff

    rst $20
    ld [hl], c
    add b
    cp a
    ldh [$7d], a
    pop hl
    pop bc
    ldh [$31], a
    dec hl
    inc l
    ld [hl-], a
    and e
    db $fc
    jp z, $c0ff

    add sp, -$80
    ld a, c
    ld l, [hl]
    ld [hl], $30
    ld b, h
    inc sp
    ld l, [hl]
    xor a
    rst $38
    add b
    ld b, b
    db $e3
    ld a, [bc]
    dec bc
    jp z, $c0ff

    jp hl


    rst $38
    add b
    add b
    ld l, a
    ld a, h
    ld a, c
    add b
    and c
    ld sp, $62c1
    cp [hl]
    ld [c], a
    or [hl]
    add c
    jp z, $c0ff

    db $eb
    cp h
    pop hl
    and c
    ld h, c
    ld b, a
    ld e, e
    ld e, h
    ld e, l
    ld a, h
    add h
    jp z, $c0ff

    ld a, [c]
    ld e, d
    cp [hl]
    pop hl
    nop
    add b
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $30
    nop
    nop
    nop
    and l
    nop
    rst $38
    push hl
    ld [hl-], a
    or $e6
    rst $30
    rst $20
    dec [hl]
    db $ec
    xor $37
    db $ec
    jp c, $c7f0

    add sp, $33
    ld sp, $f2e0
    ld [hl], $30
    scf
    cp a
    ld h, $20
    daa

jr_05a_57e0:
    db $10
    ld d, $17
    jp nz, Jump_000_34f6

    rst $38
    ld [hl], $32

Call_05a_57e9:
    jr nc, jr_05a_5822

    ld sp, $3133
    inc sp
    nop
    and b
    ei
    rst $38
    rst $28
    nop
    nop
    nop
    rst $38
    ld d, a
    cpl
    ld e, b
    ld c, b
    ld e, d
    dec l
    ld e, h
    db $ec
    dec hl
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    nop
    add hl, bc
    and l
    ld b, e
    xor $37
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    ccf
    ld a, a
    rla
    ld e, [hl]
    ld de, $2249
    dec sp
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05a_5822:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $38
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld c, d
    ld l, d
    ld l, d
    di
    ld l, d
    ld a, [bc]
    rst $38
    db $e3
    or $e1
    inc c
    inc c
    ld c, h
    inc c
    sub h
    rst $38
    rst $38
    db $e4
    db $e3
    dec bc
    rst $38
    pop hl
    dec hl
    cp a
    ldh [$c0], a
    and $0a
    or a
    ld l, d
    inc c
    inc l
    ret nz

    ld [c], a
    inc l
    inc l
    pop bc
    rst $38
    inc c
    jr nz, jr_05a_57e0

    ldh [$bf], a
    db $e3
    add b
    push hl
    ld a, [hl]
    ldh [$c0], a
    db $e3
    inc l
    ret nz

    jp hl


    or h
    or $7d
    ld l, e
    ld a, a
    ldh [rOCPD], a
    dec bc
    ld c, e
    dec hl
    ld c, d
    ld b, b
    db $e4
    ret nc

    ccf
    pop hl
    ret nz

    push hl
    pop bc
    jp hl


    ret nz

    rst $30
    ld l, e
    rst $38
    ldh [rWX], a
    ld c, e
    add hl, bc
    ld c, e
    scf
    ld [c], a
    ld [hl], $e2
    ld l, d
    nop
    db $e3
    add c
    or $29
    db $e4
    ld [hl+], a
    db $e3
    ld a, $c1
    ldh [$0b], a
    ld l, e
    dec hl
    dec hl
    dec hl
    cp [hl]
    ldh [$fd], a
    pop hl
    jr @-$09

    jp nz, $ef0a

    push af
    rst $10
    dec bc
    ld l, e
    add [hl]
    ldh [$c0], a
    ldh [$fd], a
    pop hl
    ld [bc], a
    or h
    ret nz

    ld c, e
    ld [hl], $e0
    ret nz

    ld [c], a
    ld [bc], a
    ldh [$c1], a
    rst $18
    add b
    call nz, $e5c3
    nop
    db $76
    pop bc
    push af
    pop bc
    ret nz

    db $ed
    or h
    ld sp, hl
    adc $e0
    add c
    ld [c], a
    add [hl]
    ldh [$fe], a
    jp Jump_05a_4b07


    dec bc
    ld c, e
    ld b, d
    rst $28
    ret nz

    ld sp, hl
    ld b, l
    db $e3
    cp [hl]
    add $b5
    ret nz

    inc b
    ld c, d
    rst $38
    add sp, -$19
    dec hl
    ld c, l
    ldh [$c1], a
    db $e3
    ld a, [hl]
    call nz, $e07f
    jp z, $80ff

    ld a, h
    push bc
    ret nz

    ld [c], a
    rst $00
    pop bc
    add e
    jp $c4fd


    pop bc
    rst $38
    add sp, -$19
    ld c, e
    nop
    add c
    ld [c], a
    ld c, b
    db $e3
    ld a, a
    db $e4
    ret nz

    rst $38
    ret nz

    db $ed
    add d
    push bc
    ret nz

    rst $38
    xor [hl]
    adc $13
    ld a, [bc]
    ld c, e
    call nz, $bea1
    ld [$c06b], a
    rst $38
    ld [c], a
    and a
    call nz, $a4e1
    ld b, h
    and c
    ld a, l
    rst $20
    ld l, e
    add b
    rst $18
    and h
    adc b
    ld c, h
    dec d
    add c
    ld c, h
    nop
    rst $38
    ldh [$fb], a
    ld [c], a
    db $fc
    db $e3
    ret nz

    rst $38
    ld h, h
    adc b
    jp nc, $c2e2

    ldh [$fb], a
    db $e3
    db $10
    db $fc
    db $e3
    rst $38
    rst $38
    and $87
    dec d
    add d
    ld c, h
    adc $60
    ei
    pop hl
    db $fc
    db $e3
    nop
    jp z, $e4ff

    ld h, c
    pop hl
    add e
    sub l
    ld h, d
    dec sp
    ld [c], a
    ret nz

    rst $38
    ret nz

    or $10
    add e
    nop
    ret nz

    xor $7e
    sub a
    ld h, d
    adc b
    ld b, b
    db $e3

jr_05a_5966:
    ei
    push bc
    nop
    jp hl


    ld a, $98
    ret nz

    rst $38
    ld b, b
    ret nz

    ld e, a
    ret nz

    jp z, $f100

    ret nz

    ld hl, sp-$5e
    ld h, a
    nop
    and $08
    rst $38
    add sp, $00
    adc d
    rst $38
    ret nz

    rst $28
    dec bc
    ld a, a
    ld b, c
    sub c
    ret nz

    ret


    ret nz

    rst $38
    ret nz

    pop af
    rst $38
    rst $38
    nop
    inc sp
    rst $38
    call c, $c0ff
    rst $38
    rst $38
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
    ld c, h
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    ret nz

    sbc h
    jp nz, $c0ff

    sbc e
    pop bc
    rst $38
    db $db
    rst $38
    nop
    ret nz

    rst $38
    ld e, d
    xor d
    inc e
    ld h, d
    ld d, c
    ld h, d
    ld bc, $ecff
    db $eb
    and d
    ld b, h
    ld d, [hl]

jr_05a_59c1:
    ld h, [hl]
    nop
    ret nz

    rst $38
    ld b, b
    db $eb
    and [hl]
    ld b, d
    db $fd
    db $e3
    ret


    rst $38
    ret nz

    pop af
    dec hl
    ld b, d
    cp [hl]
    db $e3
    nop
    rst $38
    rst $38
    ccf
    pop af
    jr c, jr_05a_59c1

    db $d3
    rst $38
    pop bc
    di
    rst $18
    ld [hl+], a
    ld a, a
    rst $38
    cp [hl]
    rst $10
    jr nz, jr_05a_5966

    rst $38
    ld b, c
    ld hl, sp+$1f
    inc hl
    add b
    rst $38
    di
    ld bc, $9b2c
    rst $28
    push bc
    and $00
    ret nz

    rst $38
    scf
    ld hl, $f7c0
    add d
    rst $38
    sbc e
    di
    call $ffbf
    rst $38
    rst $38
    rst $38
    nop
    sub [hl]
    rst $38
    ld [hl], l
    ld e, a
    rst $38
    rst $38
    rst $38
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
    nop
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $00
    nop
    nop
    rst $38
    ld e, e
    ld e, e
    ld e, d
    ld e, e
    ld e, e
    adc h
    ld c, [hl]
    ld c, [hl]
    inc sp
    ld c, [hl]
    adc b
    rst $38
    db $e3
    or $e0
    adc e
    nop
    rst $38
    rst $38
    rst $20
    and $3f
    ld e, e
    ld e, e
    ld e, e
    ld e, h
    ld e, l
    ld h, b
    cp a
    ldh [$c0], a
    and $f3
    adc e
    ld c, [hl]
    jp z, $e8ff

    rst $20
    ld e, d
    ld e, h
    ld e, l
    ld sp, $3133
    ld sp, $e0bf
    add b
    push hl
    adc e
    ld c, [hl]
    ret nz

    rst $38
    jp hl


    add sp, $7d
    ld e, a
    jp nz, Jump_05a_47e0

    ld d, [hl]
    ld b, a
    ld h, b
    adc h
    ld b, b
    db $e4
    ld hl, sp-$3f
    ldh [$c0], a
    rst $38
    jp hl


    add sp, $5e
    ld sp, $464d
    ld [hl], $1f
    jr nc, @+$38

    ld b, [hl]
    ld b, a
    ld h, d
    rst $38
    ld [c], a
    ld [hl], $e1
    ret nz

    rst $38
    sbc $e9
    add sp, $31
    ld c, l
    ld [hl-], a
    jr nc, @+$01

    ldh [$6d], a
    ld [hl], $87
    ld b, [hl]
    sub a
    sbc [hl]
    rst $38
    ldh [$36], a
    pop hl
    ret nz

    rst $38
    ret nz

    jp hl


    add hl, sp
    cp $c2
    pop hl
    ld l, l
    ld h, a
    ld l, d
    ld l, l
    sbc c
    sbc b
    sbc h
    adc a

jr_05a_5ac7:
    sbc h
    sbc h
    sub [hl]
    sub a
    or h
    ret nz

    jp z, $80ff

    add sp, $52
    db $fc
    pop bc
    db $e4
    ld a, d
    ldh [$67], a
    ld h, a
    ld l, d
    sbc c
    sbc d
    scf
    ld h, e
    ld h, b
    adc h
    jp z, $80ff

    db $eb
    pop bc
    ld [c], a
    ld l, h
    ld l, h
    ret nz

    pop hl
    sbc a
    jr nc, jr_05a_5b1d

    add hl, sp
    ld sp, $ca5f
    rst $38
    nop
    add sp, $49
    add hl, sp
    ld c, b
    pop bc
    db $e4
    ret nz

    db $e4
    ld c, b
    ld c, c
    ld e, [hl]
    jp z, $80ff

    ret


    add e
    add hl, sp
    jr nc, jr_05a_5ac7

    db $e3
    add b
    ld [c], a
    ld a, a
    ld [c], a
    jp z, Jump_000_00ff

    ret


    ld c, l

Jump_05a_5b10:
    sub c
    ld [hl-], a
    inc b
    ldh [$c0], a
    pop hl
    ccf
    db $e4
    ld d, d
    ret nz

    rst $38
    ld b, b
    xor c

jr_05a_5b1d:
    ld e, [hl]
    add a
    ld sp, $3651
    ld a, $c1
    ccf
    and $80
    rst $38
    nop
    xor d
    ld e, a
    rst $08
    ld sp, $6fa1
    ld l, [hl]
    cp [hl]
    ld [c], a
    ld a, a
    jp nz, Jump_000_3230

    ld sp, hl
    ld c, l
    ret nz

    rst $38
    nop
    xor c
    ld e, e
    ld h, c
    and c
    add b
    add b
    ld [$e4be], sp
    ccf
    ret nz

    pop bc
    ldh [$60], a
    jp z, $80ff

    adc c
    ret nz

    pop hl
    cp [hl]
    pop hl
    dec d
    ld d, h
    rst $38
    pop hl
    dec sp
    pop bc
    ldh [$5b], a
    jp z, $ffff

    rst $38
    rst $38

Jump_05a_5b5e:
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
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    ld a, [c]
    or h
    or l
    rst $38
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    inc bc
    cp [hl]
    cp a
    jp nc, $ffff

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

Jump_05a_5be0:
    rst $38
    rst $38
    rst $38
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
    db $f4
    nop
    nop
    nop
    and l
    nop
    rst $38
    push hl
    ld [hl-], a
    or $e6
    rst $30
    rst $20
    dec [hl]
    db $ec
    xor $37
    db $ec
    jp c, $c7f0

    add sp, $33
    ld sp, $f2e0
    ld [hl], $30
    scf
    cp a
    ld h, $20
    daa
    db $10
    ld d, $17
    jp nz, Jump_000_34f6

    rst $38
    ld [hl], $32
    jr nc, jr_05a_5c8c

    ld sp, $3133
    inc sp
    nop
    and b
    ei
    rst $38
    rst $28
    nop
    nop
    nop
    ld l, c
    ld e, h
    sbc c
    ld e, h
    jp c, $a55e

    ld h, b
    db $ec
    dec hl
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    nop
    add hl, bc
    and l
    ld b, e
    xor $37
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    ccf
    ld a, a
    rla
    ld e, [hl]
    ld de, $2249
    dec sp
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05a_5c8c:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $18
    inc c
    inc c
    dec bc
    dec bc
    ld c, h
    rst $38
    pop hl
    inc l
    inc l
    add hl, bc
    inc c
    cp $e1
    rst $38
    ldh [$0b], a
    ei
    ldh [$ed], a
    ld [c], a
    ld sp, hl
    pop hl
    push af
    ldh [$96], a
    ld a, [c]
    pop hl
    inc l
    inc l
    ld a, [c]
    ldh [$0c], a
    call c, $ffe0
    rst $28
    dec bc
    nop
    rst $38
    ldh [$d1], a
    db $e3
    ld [c], a
    db $e4
    ret nz

    ldh [$c4], a
    ldh [$c0], a
    db $e4
    cp d
    pop hl
    cp c
    push hl
    nop
    ret nz

    rst $30
    ld a, h

jr_05a_5cd4:
    db $e3
    sbc a
    ldh [$80], a
    db $e3
    sub h
    pop hl
    adc $e3
    rst $30
    db $e3
    or d
    ldh [rP1], a
    add a
    ldh a, [$c1]
    jp hl


    ld a, h
    db $e3
    ld [hl], b
    db $e4
    jp z, $bde4

    push hl
    jr c, jr_05a_5cd4

    ld b, d
    ldh [$3e], a
    ld b, b
    ldh a, [$0b]
    dec bc
    ld l, e
    ld l, e
    ld c, e
    rst $38
    ldh [$3a], a
    pop hl
    nop
    ld [bc], a
    db $e3
    ret nz

    ldh [rSTAT], a
    ld [c], a
    ld a, $e2
    ccf
    add sp, -$40
    and $fb
    call nz, $c3f4
    ld e, $c1
    ldh [$0b], a
    dec bc
    dec hl
    dec hl
    cp a
    ldh [$bd], a
    ld [c], a
    inc sp
    ld [c], a
    nop
    ld c, l
    db $e4
    ld c, c
    ld [c], a
    or l
    db $e4
    ld b, c
    or $c1
    pop hl
    ret nz

    ldh [$fe], a
    ldh [$7c], a
    ld [c], a
    add b
    ld a, b
    ld [c], a
    add b
    push bc
    ld a, h
    add $26
    db $e4
    ret nz

    ld a, [c]
    add c
    pop bc
    ret nz

    pop hl
    ld l, e
    inc bc
    ld l, e
    dec hl
    ret nz

    pop hl
    ld a, b
    pop hl
    adc $c6
    cp [hl]
    call nz, $d9c0
    add d
    jp nz, $c01a

    db $e3
    ld l, e
    dec a
    db $e3
    ld c, e
    ld c, e
    adc $c5
    cp [hl]
    call nz, $c5c0
    ld b, b
    inc b
    push bc
    ld a, [$44aa]
    db $e3
    jp $fde0


    pop hl
    db $fd
    jp Jump_05a_4c4b


    jp $c000


    and l
    ld b, b
    adc $c0
    db $eb
    push bc
    db $e4
    ld a, e
    pop bc
    db $f4
    jp nz, $c0b2

    add c
    and b
    ld bc, $c52c
    and e
    ld a, l
    jp $ec80


    ld a, h
    ret z

    ret nz

    rst $20
    inc a
    pop bc
    dec a
    pop hl
    nop
    add b
    jp nz, $a075

    ld b, c
    and a
    ld b, b
    add $42
    push hl
    ld a, [hl-]
    xor d
    ld b, l
    db $e4
    db $fd
    and c
    nop
    ret nz

    pop hl
    ld [hl], c
    jp nz, $a30d

    ret nz

    jp hl


    ld [bc], a
    ld [$8afa], a
    jp z, $c1e3

    ld [c], a
    nop
    ld b, b
    ld [c], a
    or a
    and b
    nop
    ld [c], a
    sub e
    ld a, [c]
    ld a, e
    ldh a, [$4e]
    ret nz

    pop bc
    push hl
    cp a
    and e
    nop
    or b
    and b
    ld [de], a
    cp b
    ld a, l
    push bc
    ld [hl], d
    add [hl]
    call Call_000_08a0
    pop bc
    ld b, $c1
    inc a
    and c
    nop
    ld b, b
    db $e4
    add l
    add h
    ld a, $97
    ld [hl-], a
    add [hl]
    and l
    and l
    inc d
    and l
    ld c, [hl]
    add h
    ld a, $9f
    nop
    or $66
    push de
    ld a, b
    ld a, $99
    ld [hl], d
    add l
    sub a
    ld hl, sp+$3e
    sbc d
    ld [hl-], a
    add h
    push de
    ld a, b
    nop
    ld a, $97
    dec a
    xor $d5
    ld [hl], d
    dec bc
    ld h, a
    ld a, a
    ld a, b
    push de
    ld a, b
    dec bc
    ld h, a
    ld a, $9a
    nop
    push de
    ld [hl], a
    dec bc
    ld h, a
    cp $59
    push de
    db $76
    db $76
    db $eb
    ccf
    ld sp, hl
    push de
    ld [hl], e
    bit 1, b
    nop
    ld a, [hl]
    ld d, a
    push de
    ld a, b
    ld b, c
    add sp, -$80
    ld hl, sp-$2b
    ld [hl], a
    inc c
    ld c, d
    ld b, b
    rst $30
    push de
    ld [hl], a
    nop
    cp c
    sbc [hl]
    sbc e
    ld [hl+], a
    push de
    db $76
    adc d
    ld e, b
    nop
    db $ec
    push de
    ld [hl], h
    ret nz

    rst $38
    xor b
    ld [hl], a
    nop
    add b
    rst $38
    sbc h
    cp $c0
    rst $38
    db $db
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
    ld a, [hl+]
    ld e, d
    dec e
    sbc h
    ld a, c
    ld a, [hl]
    ld e, e
    cp b
    nop
    ld [c], a
    ld [hl], b
    rst $38
    rst $38
    sbc [hl]
    adc a
    ld [de], a
    rst $18
    sbc d
    cp d
    ld a, a
    rst $38
    ld e, e
    or a
    ld [c], a
    ld l, l
    nop
    sbc d
    rst $18
    ld [hl], b
    add l
    ld [c], a
    ld [hl], e
    call nz, $fcfc
    db $e3
    ld [c], a
    ld a, c
    or b
    ld d, [hl]
    xor a
    ld h, h
    nop
    ld a, [hl]
    ld [c], a
    ld [c], a
    ld [hl], a
    xor a
    ld a, d
    cp d
    add sp, -$1e
    db $76
    push de
    ret c

    ld l, l
    ld b, c
    ld l, c
    ld h, e
    nop
    adc l
    cp a
    ld a, [hl-]
    cp $ff
    rst $38
    ld l, b
    inc de
    cp a
    rst $38
    sub l
    add $4f
    or d
    ccf
    db $eb
    nop
    rst $38
    rst $38
    ld sp, hl
    ret nc

    ret nz

    rst $38
    scf
    ld_long a, $ffdc
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
    nop
    or e
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
    nop
    nop
    nop
    rst $38
    jr nz, jr_05a_5edd

jr_05a_5edd:
    ld sp, $1131
    ld [de], a
    ld hl, $3b22
    inc hl
    jr nz, @+$01

    push hl
    nop
    ld sp, $ff00
    rst $38
    rst $20
    and $27
    jr nz, jr_05a_5efe

    ld sp, $e0ff
    cp [hl]
    jp hl


    inc c
    ret nz

    rst $38
    ret nz

    jp hl


    sub c
    ld a, [de]

jr_05a_5efe:
    ret nz

    pop hl
    ld a, h
    ld [c], a
    ld a, l
    db $e4
    ld a, [de]
    ret nz

    rst $38
    jp hl


    add sp, $0f
    ret nz

    pop bc
    db $e3
    ld a, h
    ld [c], a
    inc a
    ld [c], a
    rst $28
    ldh [$ca], a
    rst $38
    add sp, -$19
    ld sp, $bf31
    ld c, l
    ld a, [hl-]
    ld d, h
    ld d, l
    ld b, [hl]
    ld b, a
    ld a, [hl-]
    pop hl
    rlca
    adc a
    inc bc
    inc bc
    inc bc
    rlca
    ld sp, $cae0
    rst $38
    ret nz

    add sp, $4d
    rst $38
    ld [hl-], a
    ld l, d
    ld l, b
    ld l, d
    ld l, d
    ld [hl], $46
    ld d, [hl]
    ret nz

    cp l
    ld [c], a
    inc sp
    ld [c], a
    jp z, $e8ff

    rst $20
    pop bc
    ldh [$c0], a
    pop hl
    ld l, d
    ld l, l
    adc l
    ld l, e
    cp l
    ldh [$57], a
    ld d, a
    ld a, b
    ld [c], a
    jp z, $e8ff

    rst $20
    add hl, sp
    db $fd
    ld l, l
    ret nz

    ld [c], a
    ld l, l
    ld l, e
    ld l, l
    ld l, l
    ld l, e
    jr nc, jr_05a_5f9e

    jr nc, @+$6f

    ld [hl], $46
    ld d, a
    ld c, l
    ret nz

    rst $38
    jp hl


    add sp, -$49
    ld d, d
    ld l, h
    ld l, h
    ld b, b
    ldh [$6d], a
    ld l, e
    ret nz

    ldh [$6d], a
    inc c
    ret nz

    ldh [$b2], a
    ldh [$3d], a
    ld c, l
    jp z, $c0ff

    add sp, -$38
    ldh [$fd], a
    and $72
    cp a
    db $e3
    add hl, sp
    jp z, $c0ff

    ldh a, [$6c]
    ld l, h
    ld l, h
    ld a, [hl]
    db $e4
    ld bc, $ca52
    rst $38
    add b
    rst $28
    pop bc
    ldh [$39], a
    ldh [$3d], a
    ld [c], a
    add b
    rst $38

jr_05a_5f9e:
    jp hl


    add sp, -$77
    add e
    add d
    push hl
    cp c
    jp $be6d


    ret nz

    nop
    rst $38
    jp hl


    add sp, $79
    sub c
    ld [hl], c
    ld b, e
    ld [c], a
    ld a, $c0
    ld sp, hl
    and [hl]
    ld h, d
    jp z, $e8ff

    rst $20
    add b
    call c, $e1bf
    pop bc
    ld [c], a
    ld l, d
    ld l, b
    ld [hl], $79
    and c
    ld e, l
    ld e, h
    ld sp, hl
    ld e, e
    jp z, $c0ff

    add sp, -$80
    ld a, c
    ld l, [hl]
    ld d, l
    ld d, h
    sbc a
    ld d, h
    ld d, h
    dec sp
    ld d, [hl]
    ld d, a
    ld a, [hl]
    and c
    jp nz, Jump_05a_5be0

    nop
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $f4
    nop
    nop
    nop
    and l
    nop
    rst $38
    push hl
    ld [hl-], a
    or $e6
    rst $30
    rst $20
    dec [hl]
    db $ec
    xor $37
    db $ec
    jp c, $c7f0

    add sp, $33
    ld sp, $f2e0
    ld [hl], $30
    scf
    cp a
    ld h, $20
    daa
    db $10
    ld d, $17
    jp nz, Jump_000_34f6

    rst $38
    ld [hl], $32
    jr nc, jr_05a_6104

    ld sp, $3133
    inc sp
    nop
    and b
    ei
    rst $38
    rst $28
    nop
    nop
    nop

Call_05a_60d9:
    pop hl
    ld h, b
    ld de, $9061
    ld h, e
    ld [hl], e
    ld h, l
    db $ec
    dec hl
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    nop
    add hl, bc
    and l
    ld b, e
    xor $37
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    ccf
    ld a, a
    rla
    ld e, [hl]
    ld de, $2249
    dec sp
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05a_6104:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    dec d
    dec bc
    rst $38
    ldh [$4c], a
    rst $38
    ldh [$0c], a
    rst $38
    ld [$e0f0], a
    db $fd
    ld [c], a
    inc c
    ld sp, hl
    ldh [$f2], a
    db $e4
    inc l
    inc l
    db $dd
    pop hl
    ld a, [$d4e3]
    jp hl


    ret nz

    pop hl
    nop
    cp [hl]
    db $e3
    db $fc
    db $e3
    xor $e1
    cp [hl]
    db $e3
    xor e
    ld [c], a
    db $fc
    ld [c], a
    or b
    pop hl
    ret nz

    push af
    inc bc
    inc l
    inc l
    cp [hl]
    db $e3
    ld a, [$8be9]
    ldh [$82], a
    db $e4
    cp c
    ld [c], a
    ld [hl], b
    db $e3
    ldh a, [rPCM12]
    ld [c], a
    ld a, [$c0e5]
    jp hl


    cp [hl]
    add sp, $6b
    ld l, e
    ld c, e
    ld c, e

jr_05a_615b:
    ld b, c
    ld c, e
    add b
    pop hl
    call nc, Call_000_38ec
    db $e4
    jp nz, Jump_05a_7eef

    ld [c], a
    ld l, h
    rst $00
    ldh [$80], a
    pop bc
    db $e4
    cp $e0
    cp a
    ldh [$fb], a
    push bc
    sub c
    push hl
    jr c, jr_05a_615b

    ld [bc], a
    db $e4
    inc l
    pop bc
    inc l
    ld b, [hl]
    db $e4
    db $fd
    add $ca
    pop hl
    call nz, $80e2
    ld [c], a
    ld c, e
    ld c, e
    nop
    rst $00
    jp $c4c0


    ccf
    rst $20
    ret nz

    db $ec
    adc [hl]
    push bc
    rst $00
    db $e4
    add e
    ld [c], a
    ld a, h
    ld [c], a
    nop
    ret nz

    ldh [$7e], a
    call nz, $c181
    ld [hl], l
    call nz, $cacc
    pop bc
    db $eb
    dec c
    ldh [$c5], a
    pop hl
    inc b
    ret nz

    db $e3
    rst $38
    ret nz

    dec hl
    adc [hl]
    jp $c66f


    inc sp
    jp $f4c0


    dec b
    ldh [$2e], a
    call $2bc0
    dec hl
    dec hl
    cp h
    ld [c], a
    dec bc
    jp nz, $c0c0

    ldh [rP1], a
    adc $c6
    jp hl


    and h
    ret nz

    ret c

    pop bc
    pop hl
    ret nz

    add sp, -$4b
    jp nz, $c6ce

    cp [hl]
    call nz, $c000
    push bc
    ret nz

    di
    ld a, [hl]
    and c
    ret nz

    db $ec
    adc e
    and e
    ret nz

    and l
    ld b, b
    pop de
    add e
    add $31
    dec hl
    pop bc
    add sp, $3a
    jp $a280


    ld c, h
    inc l
    push bc
    and e
    db $76
    call nz, $8060
    rst $30
    rlca
    ldh [$80], a
    ld [c], a
    ld b, e
    ld [c], a
    jp nz, $0ba2

    ld l, e
    ld c, l
    and c
    add c
    inc l
    ld b, c
    and a
    ld b, b
    add $c0
    or c
    push bc
    ret nz

    ld b, b
    pop hl
    ld a, a
    jp nz, Jump_000_000b

    ld [hl], e
    pop hl

jr_05a_6218:
    dec sp
    ret nz

    adc [hl]
    db $e4
    ret nz

    jp hl


    ld c, d
    or b
    ret nz

    add l
    add h
    ret nz

    add c
    pop hl
    inc bc
    ld l, e
    dec hl
    ret nz

    ldh [$79], a
    db $e3
    rst $10
    ld a, [c]
    ret nz

    or $c2
    call nz, $e03d
    ld c, $79
    ldh [$0b], a
    dec bc
    ld a, [bc]
    ret nz

    add c
    jr @-$4d

    xor d
    di
    ld b, $85
    nop
    ld d, l
    and l
    jp z, Jump_000_01c4

    sub e
    ld l, d
    pop af
    call nc, $c9f7
    ld h, a
    ld bc, $6a85
    di
    nop
    push de
    ld [hl], e
    ret


    ld l, c
    ld bc, $5886
    ld h, l
    pop bc
    pop bc
    ld a, c
    add e
    push de
    db $76
    db $f4
    db $eb
    nop
    ld l, [hl]
    rst $20
    ret nz

    db $ec
    push de
    db $76
    db $f4

jr_05a_626d:
    ld [$8401], a
    jr c, jr_05a_6218

    ld l, c
    call Call_05a_70d5
    nop
    db $f4
    ld [$65c1], a
    add b
    add sp, -$7f
    push hl
    push de

jr_05a_6280:
    db $76

jr_05a_6281:
    ret


    ld l, b
    ld [hl], $6a
    ld d, [hl]
    ld c, h
    nop
    push de
    ld [hl], l
    db $f4
    ld [$edc0], a
    add b
    add sp, -$2b
    db $76
    ret


    ld l, b
    add b
    ld l, h
    rst $38
    xor a
    nop

jr_05a_6299:
    push de

jr_05a_629a:
    ld [hl], b
    ret nz

    rst $08
    ld a, $73
    push de
    ld [hl], l
    ret


    ld l, e
    ret nz

    ld hl, sp+$54
    or a
    rst $38
    adc $00
    jr c, jr_05a_629a

    add b
    xor b
    inc c
    cp d
    jp c, $8088

    adc $55
    dec h
    jr c, jr_05a_626d

    xor c
    inc c
    nop
    cp a
    rst $28
    adc a
    dec bc
    dec c
    cpl
    ld h, a
    inc c
    cp l
    sub d
    jr c, jr_05a_6281

    add b
    ldh a, [rP1]
    adc b
    nop
    res 5, e
    jr c, jr_05a_6280

    sbc e
    add e
    cp b
    ld c, d
    ret nz

    ld l, b
    push bc
    ld h, [hl]
    jr c, @-$48

    cp b
    ld d, b
    nop
    pop bc
    ld l, b
    ld d, l
    dec h
    jr c, jr_05a_6299

    cp b
    ld d, c
    cp h
    add hl, bc
    add [hl]
    ld h, e
    dec c
    dec a
    cp b
    ld d, e
    nop
    sbc d
    xor c
    jr c, @-$47

    cp a
    ld d, c
    ld b, $8a
    ld [bc], a
    ld h, h
    dec c
    inc sp
    db $eb
    pop de
    ld b, b
    ld [$5500], a
    inc h
    dec c
    ld [hl], $23
    sub b
    add l
    ld l, d
    ld d, l
    inc hl
    dec c
    ld [hl], $eb
    rst $10
    nop
    ld b, l
    nop
    add c
    ld b, e
    dec c
    inc [hl]
    db $eb
    rst $18
    cp b
    db $ec
    dec c
    inc l
    inc hl
    sub h
    cpl
    or a
    dec c
    inc l
    nop
    db $eb
    jp nc, $f380

    and c
    scf
    ld b, b
    xor l
    pop hl
    add hl, de
    ld [hl], b
    rst $00
    adc b
    ld b, c
    db $eb
    call nc, $c100
    ld hl, sp-$48
    pop bc
    ld a, [hl+]
    ret z

    ld b, b
    or d
    pop bc
    ld sp, hl
    ld e, c
    inc h
    ld a, [hl+]
    call nz, $be40
    nop
    ld a, [hl-]
    cp $ff
    rst $38
    dec h
    ld d, d
    cp a
    rst $38
    ld [hl], l
    ld c, [hl]
    ld [$3f4a], a
    db $ec
    rst $38
    rst $38
    nop
    ld sp, hl
    ret nc

    ret nz

    rst $38
    scf
    ld_long a, $ffdc
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
    nop
    or e
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
    nop
    nop
    nop
    ld a, l
    ld sp, $e0ff
    ld de, $2112
    jr z, @+$22

    rst $38
    and $87
    ld a, [bc]
    dec bc
    nop
    rst $38
    rst $38
    rst $20
    and $c0
    pop hl
    cp [hl]
    pop hl
    dec b
    sbc [hl]
    rst $38
    db $e4
    ld a, [bc]
    dec bc
    ld sp, $ca31
    rst $38

jr_05a_63b1:
    add sp, -$19
    ld [de], a
    ld h, c
    ld de, $e3be
    ld a, [$cae9]
    rst $38
    add sp, -$19
    ld [hl+], a
    ld hl, $e8be
    sbc a
    ld b, a
    ld b, [hl]
    ld d, h
    dec sp
    ld c, l
    ret nz

    rst $38
    ld [$20e9], a
    rst $30
    jr nz, jr_05a_63f1

    add hl, hl
    rst $00
    ldh [rRP], a
    ld d, [hl]
    ld d, a
    ld d, [hl]
    rst $38
    ld d, a
    ld b, [hl]
    ld [hl], $6c
    ld l, h
    ld l, h
    ld [hl-], a
    ld c, l
    inc [hl]
    ret nz

    rst $38
    ret nz

    ld [$890e], a
    ldh [$36], a
    jr nc, jr_05a_63b1

    ldh [$fd], a
    pop hl
    sbc a
    jr nc, @+$32

jr_05a_63f1:
    jr nc, jr_05a_6425

    ld c, l
    jp z, $80ff

    add sp, $0e
    cp a
    ld c, l
    ld b, [hl]
    ld [hl], $6a
    ld l, d
    ld l, l
    cp a
    db $e3
    jr nc, jr_05a_6476

    cp b
    pop hl
    add hl, sp
    jp z, $e8ff

    rst $20
    ld c, $4d
    ld [hl-], a
    adc d
    ldh [$7e], a
    cp a
    push hl
    jr nc, jr_05a_6445

    ld l, d
    ld l, b
    ld l, b
    ld d, d
    jp z, Jump_05a_7aff

    ld b, b
    ret z

    add hl, sp
    ld b, l
    ldh [$30], a
    ld l, c
    ld l, c
    ld l, e

jr_05a_6425:
    ld a, $e1
    sub a
    jr nc, jr_05a_6495

    ld l, d
    ccf
    ldh [rHDMA3], a
    jp z, $e8ff

    rst $20
    scf
    ld a, c
    ld b, d
    ld a, [bc]
    pop hl
    ret nz

    and $69
    jr nc, @+$6e

    jr nc, jr_05a_647e

    rst $38
    jp nz, $e8e9

    add hl, sp
    adc $c0

jr_05a_6445:
    ld c, d
    ldh [rIE], a
    jp $e2c0


    ld [hl], $37
    call c, $ffca
    ret nz

    jp hl


    ld l, b
    ld l, b
    ld l, b
    ld bc, $6be6
    ld l, c
    ld h, a
    ld [hl], $3b
    ld b, a
    ld b, b
    rst $18
    jp hl


    add sp, $4d
    ld [hl-], a
    ret nz

    ldh [$dd], a
    ld l, b
    add c
    pop bc
    ld [hl], $55
    ld a, [hl-]
    ld a, [$47a0]
    ld sp, $31c3
    ld h, b
    jp z, Jump_000_00ff

jr_05a_6476:
    xor b
    cp a
    ldh [$09], a
    ret nz

    ld l, h
    ld l, h
    rst $28

jr_05a_647e:
    ld [hl], c
    ld l, a
    add b
    and c
    or e
    add c
    ld e, l
    ld e, h
    ld e, e
    db $ec
    jp z, $c0ff

    adc c
    ld c, l
    ld [hl-], a
    res 4, b
    ld l, h
    ld [hl], c
    ld a, c
    ret


    add b

jr_05a_6495:
    ret nz

    pop hl
    jp nz, Jump_05a_5be0

    ret nz

    rst $38
    add b
    adc e
    xor a
    ld l, [hl]
    rst $20
    ld d, h
    ld d, h
    ld l, [hl]
    pop bc
    ldh [$80], a
    ldh [$60], a
    ld e, e
    ld e, e
    ld bc, $c05a
    rst $38
    rst $38
    rst $38
    rst $38
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

Jump_05a_64fa:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05a_64ff:
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
    push af
    nop
    nop
    nop
    and l
    nop
    rst $38
    push hl
    ld [hl-], a
    or $e6
    rst $30
    rst $20
    dec [hl]
    db $ec
    xor $37
    db $ec
    jp c, $c7f0

    add sp, $33
    ld sp, $f2e0
    ld [hl], $30
    scf
    cp a
    ld h, $20
    daa
    db $10
    ld d, $17
    jp nz, Jump_000_34f6

    rst $38
    ld [hl], $32
    jr nc, jr_05a_65d2

    ld sp, $3133
    inc sp
    nop
    and b
    ei
    rst $38
    rst $28
    nop
    nop
    nop
    xor a
    ld h, l
    rst $18
    ld h, l
    ld a, b
    ld l, b
    adc d
    ld l, d
    db $ec
    dec hl
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    nop
    add hl, bc
    and l
    ld b, e
    xor $37
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    ccf
    ld a, a
    rla
    ld e, [hl]
    ld de, $2249
    dec sp
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05a_65d2:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    db $eb
    ld a, [bc]
    dec bc
    rst $38
    ldh [rOCPD], a
    ei
    pop hl
    dec bc
    dec bc
    dec hl
    ld [hl], a
    dec bc
    ld c, e
    dec bc
    ldh a, [$e1]
    inc c
    inc c
    ld c, h
    rst $38
    ldh [$81], a
    inc c
    ld sp, hl
    ldh [$fd], a
    ld [c], a
    ld hl, sp-$1d
    db $f4
    push hl
    db $fc
    db $ec
    jp z, $6be1

    rst $38
    ld l, e
    dec hl
    dec hl
    dec bc
    dec hl
    dec hl
    dec hl
    ld c, e
    ld e, l
    ld c, e
    cp l
    ldh [$0b], a
    dec bc
    ld a, [bc]
    call Call_05a_4ce2
    db $fd
    and $0e
    or l
    db $e3
    ld c, h
    inc c
    inc l
    ret nz

    di
    add c
    ldh [$c4], a
    ldh [$c0], a
    pop hl
    add e

Jump_05a_6628:
    dec hl
    ld c, e
    ld a, h
    ldh [$be], a
    ldh [$c0], a
    jp hl


    cp c
    ldh [$b2], a
    db $e4
    inc l
    ld [$f6c0], sp
    add h
    pop hl
    add b
    pop hl
    ld l, e
    cp a
    pop hl
    inc a
    ldh [rWX], a
    db $e4
    ld a, [hl]
    ld [c], a
    sbc d
    ld b, a
    push hl
    ld c, h
    ret nz

    db $f4
    inc l
    inc l
    ret nz

    db $e4
    ld a, [hl-]
    ldh [rWX], a
    ld b, b
    rst $38
    pop hl
    ret nz

    pop hl
    ld b, $e1
    add d
    db $e4
    ld b, b
    add sp, $00
    push hl
    inc l
    ld sp, hl
    db $eb
    dec b
    inc l
    cp $c2
    ld l, e
    ret nz

    push hl
    cp a
    ldh [$cd], a
    call nz, $e6fa
    pop af
    call nz, $c214
    ret nc

    ld l, b
    ld [c], a
    ld c, h
    ld b, l
    pop hl
    ld l, e
    inc b
    ldh [$80], a
    ld [c], a
    ld a, e
    ret nz

    nop
    db $e3
    rst $20
    or a
    push hl
    ld a, a
    call nz, $f3c0
    ld a, $e0
    add h
    pop bc
    inc b
    ld [c], a
    ret nz

    pop hl
    stop
    ld [c], a
    ret nz

    ret z

    ccf
    rst $20
    ld a, [hl]
    di
    inc l
    db $fc
    jp nz, $e343

    ret nz

    push hl
    nop
    cp [hl]
    push hl
    add c
    pop bc
    dec [hl]
    call nz, $f4c1
    cp e
    push bc
    ret nz

    push hl
    ret nz

    and e
    cp $a2
    ld [$e4fe], sp
    ld [hl], l
    add $bf
    ld hl, sp+$4c
    ccf
    pop hl
    pop bc
    db $e4
    nop
    jp nz, $c5ce

    nop
    adc h
    and h
    ret nz

    ret z

    add c
    jp nz, $c47c

    jp hl


    push bc
    ld a, [hl-]
    ret nz

    ld b, d
    and $c0
    and h
    ld [hl], b
    ld c, l
    and a
    rst $38
    and l
    dec sp
    or d
    ld d, $a4
    inc c
    dec hl
    ld c, e
    add [hl]
    and c
    add [hl]
    db $fc
    add c
    dec bc
    ld l, h
    sub e
    call nz, $e644
    ld b, b
    add $3b
    or b
    dec bc
    ld bc, $d60b
    add c
    ret z

    ld [c], a
    nop
    and c
    ld bc, $ffe3
    add [hl]
    ld a, l
    add $ad
    push hl
    ld [bc], a
    dec sp
    and b
    inc l
    ret nz

    and b
    adc l
    ret nz

    cp d
    and h
    rrca
    ld [c], a
    adc b
    db $e3
    db $76
    add c
    nop
    cp $80
    add c
    ldh [$8d], a
    add l
    ld c, c
    add sp, $34
    and h
    ei
    add h
    ret nz

    rst $20
    res 4, b
    jr nz, jr_05a_6768

    and c
    ret nz

    add sp, -$16
    add $c0
    db $eb
    db $d3
    push bc
    ld c, h
    add c
    ld [$8e15], a
    nop
    xor e
    rst $00
    ld c, l
    and [hl]
    dec sp
    xor h
    ret nz

    db $ec
    dec d
    adc b
    sub l
    add $c0
    add d
    dec sp
    or l
    ld b, b
    or a
    ld l, [hl]
    dec d
    add a
    ld [de], a
    add $be
    ld l, l
    ld a, d
    adc e
    cp h
    pop bc
    inc l
    ld a, c
    add h
    nop
    dec d
    adc c
    adc d
    adc b
    pop bc
    ret z

    dec sp
    xor l
    ld a, h
    jp $e5c0


    dec d
    adc c
    db $10
    ld l, c
    nop
    ccf
    add l
    dec sp
    xor a
    ret nz

jr_05a_6768:
    db $e4
    rst $38
    rst $00
    dec d
    adc b
    ld b, b
    db $ec
    db $10
    db $ec
    cp e
    and h
    nop
    adc l
    add e
    cp a
    ret z

    pop bc
    db $eb
    adc e
    ld b, [hl]
    adc a
    and [hl]
    dec sp
    xor e
    ld a, c
    ld c, e
    dec d
    adc d
    nop
    ret nz

    ret


    db $fc
    ld h, h
    jp z, Jump_000_3b40

    xor a
    add b
    xor b
    dec d
    sub l
    jp z, Jump_000_3b48

jr_05a_6794:
    xor h
    nop
    ret nz

    db $eb
    dec d
    sub l
    jp z, Jump_000_3b4a

    xor e
    ld b, c
    adc c
    dec d
    sbc e
    jp z, Jump_000_3b45

    xor e
    nop
    ret nz

    db $ed
    dec d
    sub d
    ld c, c
    ld a, [hl+]
    or a
    ld [hl], e
    inc d
    xor d
    dec d
    adc a
    jp z, $a247

    di
    nop
    rst $38
    adc h
    dec d
    adc [hl]
    jp z, $b747

    ld l, a
    dec b
    call $9015
    adc a
    xor b
    or a
    ld [hl], b
    nop
    ld b, b
    rst $28
    dec d
    adc h
    cp h
    ld c, d
    or a
    ld l, [hl]
    add hl, bc
    jr nz, jr_05a_6794

    db $dd
    adc a
    xor c
    or a
    ld l, [hl]
    nop
    ret nz

    ld l, d
    push de
    ld d, e
    adc a
    xor e
    ld a, d
    inc c
    ld [bc], a
    xor e
    push de
    ld d, c
    adc a
    xor h
    ld a, d
    inc c
    nop
    jp nz, $d58a

    ld d, d
    inc de
    jp hl


    ld a, d
    ld a, [de]
    ret nz

    sub $8f
    xor d
    ld a, d
    ld a, [bc]
    ld bc, $006e
    and a
    inc d
    ld a, d
    dec d
    ld [bc], a
    adc a
    ret nz

    db $f4
    ld a, d
    rra
    cp a
    db $fc
    ld a, d
    rra
    dec hl
    jr jr_05a_680d

jr_05a_680d:
    ld a, d
    ld a, [de]
    rst $38
    rst $38
    ld h, l
    sbc d
    rst $38
    rst $38
    sbc b
    jr nz, jr_05a_6892

    inc d
    rst $38
    rst $38
    ld b, b
    db $eb
    nop
    jp Jump_05a_4098


    rst $38
    and l
    or d
    rst $38
    rst $38
    ld h, l
    sbc [hl]
    rst $38
    rst $38
    ld [hl], e
    set 1, l
    cp a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    reti


    or e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    scf
    db $eb
    call c, $ffff
    rst $38
    rst $38
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
    nop
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld e, e
    ld d, e
    nop
    nop
    nop

Jump_05a_6878:
    rst $38
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld sp, $564d
    ld d, a
    rst $38
    ld d, [hl]
    ld d, [hl]
    ld d, a
    ld d, a
    ld c, e
    ld sp, $5b5e
    sbc a
    ld e, d
    ld e, e
    ld e, e
    ld e, e
    nop
    rst $38
    rst $38

jr_05a_6892:
    rst $20
    and $5b
    rst $38
    ld e, e
    ld h, c
    ld sp, $324d
    ld l, e
    ld l, e
    jr nc, @+$81

    ld l, c
    ld l, e
    ld l, e
    ld [hl], $49
    ld sp, $c160
    ldh [$f9], a
    ld e, d
    jp z, $e8ff

    rst $20
    ld h, d
    ld h, d
    ld sp, $3931
    db $fd
    ld l, e
    ret nz

    db $e3
    ld l, e
    add hl, sp
    ld sp, $5d31
    ld e, h
    call nc, $ff80
    ld [$31e9], a
    rst $38
    ldh [rHDMA3], a
    ret nz

    db $e4
    ld l, l
    dec [hl]
    push hl
    ld b, a
    pop af
    ldh [$5f], a
    ret nz

    rst $38
    jp hl


    add sp, $12
    ld de, $fb31
    ld sp, $8052
    pop hl
    jr nc, jr_05a_6947

    ld l, l
    ld l, h
    ld l, h
    rst $00
    ld [hl], $46
    ld b, a
    db $fc
    ret nz

    jp z, $e8ff

    rst $20
    inc h
    ld hl, $29ff
    ld sp, $3039
    ld l, l
    ld l, l
    ld l, l
    jr nc, @+$01

    ld l, d
    ld l, d
    ld l, h
    ld l, h
    ld l, h
    ld l, d
    ld [hl], $3c
    di
    ld sp, $ca5f
    rst $38
    add sp, -$19
    jr nz, jr_05a_6927

    ld d, $15
    rst $38
    ld c, l
    ld b, [hl]
    ld [hl], $6d
    ld l, l
    ld l, h
    jr nc, jr_05a_6942

    rst $38
    ld l, b
    ld l, b
    ld l, b
    jr nc, jr_05a_6948

    ld d, e
    ld sp, $fc5e
    jp z, $c0ff

    jp hl


    jr z, jr_05a_6939

    ld sp, $4731
    ld b, [hl]
    db $eb

jr_05a_6927:
    ld b, d
    ld l, h
    cp a
    ldh [$30], a
    ld a, [hl]
    ldh [rHDMA2], a
    ld sp, $6c31
    jp z, $80ff

    jp hl


    jr nz, @+$23

    db $fc

jr_05a_6939:
    pop bc
    ld d, e
    ld l, b
    ld b, d
    ldh [$c8], a
    db $fd
    pop hl
    ret nz

jr_05a_6942:
    rst $38

jr_05a_6943:
    ret nz

    db $ed
    jr nz, jr_05a_6943

jr_05a_6947:
    pop bc

jr_05a_6948:
    ret nz

jr_05a_6949:
    db $e4
    ld l, b
    ld l, b
    or b
    inc a
    ret nz

    jp z, $c0ff

    db $eb
    db $fc
    pop bc
    add hl, sp
    ld h, l
    ld [bc], a
    ldh [rBCPS], a
    rst $08
    ld l, b
    ld h, l
    ld c, b
    ld c, c
    ret nz

    rst $38
    ld [$21e9], a
    jr z, @-$40

    ld a, [hl]
    pop hl
    jr z, jr_05a_6981

    xor a
    ld [hl], c
    ld h, l
    rst $38
    pop hl
    jr nc, jr_05a_6949

    cp l
    and b
    ret nz

    rst $38
    jp hl


    add sp, $11
    ld [de], a
    cp [hl]
    pop hl
    ld a, [bc]
    dec bc
    rst $38
    and c
    ld a, c
    ld l, [hl]

jr_05a_6981:
    ld [hl], $30
    jr nc, jr_05a_69bb

    ld l, [hl]
    rst $08
    xor a
    ld sp, $1531
    jp z, $80ff

    xor c

jr_05a_698f:
    ld de, $ff12
    ld b, $07
    ld sp, $a131
    add b
    add b
    ld l, a
    rst $38
    ld a, h
    ld a, l
    ld l, a
    add b
    and c
    ld sp, $1731
    add h
    jp z, $e8ff

    rst $20
    ld e, l
    ccf
    and c
    dec sp
    and b
    ret nz

    ldh [$fe], a
    ld [c], a
    and c
    rst $00
    ld sp, $1615
    jp z, $80ff

    adc b
    ld b, c

jr_05a_69bb:
    add b
    ld e, l
    ld e, h
    dec c
    ld h, b
    ret nz

    add sp, $17
    jr z, jr_05a_698f

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
    rst $38
    rst $38
    di
    nop
    nop
    nop
    and l
    nop
    rst $38
    push hl
    ld [hl-], a
    or $e6
    rst $30
    rst $20
    dec [hl]
    db $ec
    xor $37
    db $ec
    jp c, $c7f0

    add sp, $33
    ld sp, $f2e0
    ld [hl], $30
    scf
    cp a
    ld h, $20
    daa
    db $10
    ld d, $17
    jp nz, Jump_000_34f6

    rst $38
    ld [hl], $32
    jr nc, jr_05a_6ae9

    ld sp, $3133
    inc sp
    nop
    and b
    ei
    rst $38
    rst $28
    nop
    nop
    nop
    add $6a
    or $6a
    ld d, h
    ld l, l
    ld b, c
    ld l, a
    db $ec
    dec hl
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    nop
    add hl, bc
    and l
    ld b, e
    xor $37
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    ccf
    ld a, a
    rla
    ld e, [hl]
    ld de, $2249
    dec sp
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05a_6ae9:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    cp e
    ld a, [bc]
    dec bc
    rst $38
    and $2b
    ld c, d
    ld l, d
    rst $38
    db $e3
    inc c
    ld e, $ff
    ld [c], a
    ld c, h
    ld c, h
    inc c
    ld c, h
    or $e3
    ld a, [$c1f9]
    ldh [rTAC], a
    ld l, e
    ld l, e
    ld c, e
    rst $38
    ld [c], a
    cp a
    and $c1
    db $e3
    cp [hl]
    ld [c], a
    or l
    pop hl
    db $fd
    inc l
    ret nz

    ld a, [$6b6b]
    ld l, e
    dec hl
    dec hl
    ld c, e
    rra
    ld c, e
    ld l, e
    ld l, e
    dec bc
    ld l, e
    ld a, [hl]
    push hl
    add l
    ldh [$c5], a
    ld [c], a
    ld a, [bc]
    ld a, [hl]
    ldh [$2c], a
    jp Jump_000_2ce0


    ld a, [$6be2]
    db $e3
    or h
    xor $c8
    ldh [$79], a
    dec bc
    ret nz

    ldh [$ba], a
    ldh [rOCPD], a
    dec bc
    ld c, e
    ld c, e
    dec a
    db $e3
    inc b
    add e
    ld [c], a
    ld b, b
    ld [c], a
    inc l
    ret nz

    ld [c], a
    ld a, [$f8e2]
    pop hl
    or h
    db $eb
    add hl, de
    ld [c], a
    ld bc, $062b
    ld [c], a
    cp a
    db $e3
    ld a, d
    ldh [$fc], a
    jp nz, $e247

    ld b, b
    ld [c], a
    add a
    ld [c], a
    sub b
    pop bc
    db $e4
    ld [hl], h
    db $e3
    di
    push hl
    add hl, hl
    push hl
    dec hl
    cp a
    db $e4
    ld a, a
    db $e4
    ld c, e
    ld bc, $bb6b
    ret nz

    ld b, b
    add sp, -$3f
    db $e3
    ret nz

    db $e4
    or h
    add sp, -$40
    rst $00
    inc bc
    ldh [rDIV], a
    add h
    pop bc
    ret nz

    push hl
    dec hl
    cp a
    ldh [$8a], a
    call nz, $d07f
    add c
    add sp, $65
    call nz, $c330
    pop hl
    add e
    jp nz, $c3f7

    db $fc
    ret nz

    ld l, e
    ld c, d
    ld c, b
    jp $c57f


    inc b
    call z, Call_000_2aef
    ret


    ld a, [hl+]
    add d
    ldh [$3c], a
    pop hl
    cp b
    pop bc
    or [hl]
    pop bc
    ld [hl], $e0
    ld hl, $042b
    pop bc
    ccf
    rst $20
    adc h
    jp hl


    add b
    rst $28
    ld a, [hl+]
    cp a
    ld [c], a
    db $fd
    ld [c], a
    ld b, $bf
    db $e4
    dec bc
    ld l, e
    ret z

    and b
    jp $c0a1


    or b
    ret nz

    pop af
    ld a, [hl]
    pop hl
    nop
    ret nz

    and $bf
    ld [c], a
    add b
    jp $e2bb


    ld a, a
    or l
    xor h
    and [hl]
    ret nz

    ldh [$bf], a
    ld [c], a
    nop
    ret nz

    push hl
    ld sp, $c0a1
    rst $10
    nop
    ldh a, [$bf]
    push hl
    ret nz

    db $eb
    rst $38
    and l
    ret nz

    rst $38
    nop
    cp a
    push hl
    ret nz

    jp nz, $83b3

    ld b, d
    and e
    add b
    rst $38
    ret nz

    rst $20
    cp a
    db $eb
    rst $00
    add l
    nop
    cp a
    rst $38
    ret nz

    and $39
    ret nz

    db $76
    and e
    ret nz

    db $e3
    ld a, [hl]
    sbc a
    ld h, $85
    ld d, a
    jp nz, $9400

    call nz, $e3f8
    add l
    add h
    ld a, [hl]
    sub l
    cp e
    push af
    xor b
    db $ed
    ld a, [hl]
    sub c
    ldh a, [$8b]
    nop
    call nc, Call_05a_57e9
    db $ec
    nop
    add d
    ld a, [hl]
    adc a
    pop af
    ret nc

    push de
    ld [hl], h
    ld a, [hl]
    sub e
    ldh a, [$91]
    nop
    push de
    ld [hl], d
    ld a, [hl]
    sub h
    or b
    sub b
    push de
    ld [hl], e
    rst $38
    and h
    ld a, [hl]
    adc l
    pop af
    or b
    push de
    ld [hl], e
    nop
    ld a, [hl]
    sub h
    or c
    or [hl]
    sub $ae
    ld a, [hl]
    sub h
    ret nz

    ret nc

    ld d, a
    di
    ld a, [hl]
    sub e
    ld l, a
    sub c
    nop
    ld d, a
    ld sp, hl
    ld l, c
    ldh a, [$80]
    rst $28
    push de
    ld [hl], h
    ld a, [hl]
    sub c
    rst $28
    ld [hl], b
    push de
    ld [hl], l
    ld a, [hl]
    sub d
    nop
    xor a
    db $76
    sub $d0
    db $ed
    add l
    ret nz

    cp $d5
    ld [hl], l
    db $fd
    jr z, @-$7e

    reti


    push de
    ld [hl], h
    nop
    add e
    ldh a, [rP1]
    db $f4
    ld d, a
    pop af
    cp $06
    sub e
    pop af
    add h
    sub d
    ret nz

    xor $7e
    dec b
    nop
    rst $18
    ld h, e
    reti


    sbc d
    push de
    sub e
    ei
    ld b, a
    ld [hl], a
    ld h, h
    jr nc, @-$6e

    ld d, a
    and d
    ld d, e
    scf
    nop
    add d
    and $d9
    sub [hl]
    ld d, $a3
    ld d, e
    inc sp
    ret nc

    ld h, [hl]
    ld a, d
    ld b, [hl]
    ld e, b
    ld [hl], d
    ld d, e
    ld [hl], $00
    dec [hl]
    ld l, d
    xor [hl]
    dec d
    rst $10
    ld b, e
    ld d, e
    ld [hl-], a
    dec sp
    ld h, $a8
    ld c, d
    ld l, [hl]
    inc d
    ld h, l
    db $f4
    nop
    add c
    rst $00
    ld e, e
    ld hl, sp+$7e
    or [hl]
    ldh [rLY], a
    db $fc
    ld [c], a
    ld e, e
    push af
    ld d, e
    ld [hl], $4e
    ld b, e
    nop
    ld b, $c4
    jr jr_05a_6d34

    jp nz, Jump_05a_6628

    di
    ld [hl], $43
    xor [hl]
    dec d
    dec de
    push hl
    sub e
    rrca
    ld bc, $be2c
    add l
    ld a, b
    add a
    rst $28
    rra
    ld b, b
    pop af
    add hl, hl
    inc h
    ld e, e
    or $27
    add hl, sp
    nop
    push af
    ld b, a
    reti


    sub e
    jp nz, $b6fb

    inc b
    ld [hl-], a
    sub c
    rst $38
    rst $38
    ld [hl], e
    set 1, l
    or b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    sbc c
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    scf
    xor $dc
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_05a_6d34:
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
    nop
    cp a
    rst $38

Call_05a_6d47:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld e, $73
    nop
    nop
    nop
    rst $18
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld sp, $e3ff
    ld h, b
    adc h
    push hl
    ld c, [hl]
    rst $38
    db $e3
    nop
    rst $38
    rst $38
    rst $20
    and $5b
    ld h, b
    ld sp, $4dff
    ld a, [hl-]
    ld d, h
    ld d, l
    ld d, h
    ld d, l
    ld a, [hl-]
    sub a
    ld hl, sp-$41
    and $ca
    rst $38
    add sp, -$19
    ld h, b
    ld c, l
    ld a, [hl-]
    ld b, h
    jr nc, @+$81

    jr nc, jr_05a_6dee

    ld h, l
    ld h, a
    ld h, a
    sub h
    sub l
    ld a, [hl]
    push hl
    cp h
    jp z, $e8ff

    rst $20
    ld c, l
    ld [hl-], a
    ld l, h
    ld l, h
    ret nz

    ldh [rOCPS], a
    ccf
    ld l, d
    ld l, d
    ld h, a
    sub c
    sub [hl]
    sub a
    dec a
    db $e3
    jp z, $e6ff

    add sp, -$19
    ld d, c
    ld l, h
    rst $38
    ldh [$bf], a
    ld [c], a
    ld h, a
    sub e
    add [hl]
    ld h, e
    add [hl]

jr_05a_6dae:
    sub l
    db $fc
    jp nz, $ffca

    add b
    jp hl


    ld l, b
    ld l, b
    ld a, [hl]
    pop hl
    ld a, l
    ld l, l
    ld a, a
    ldh [$9d], a
    add [hl]
    add [hl]
    sbc h
    sub l
    cp e
    ret nz

    ld hl, sp-$36
    rst $38
    add sp, -$19
    jp nz, $99c0

    ld l, b
    ld l, b
    ld l, b
    jr nc, jr_05a_6dde

    ld l, l
    cp a
    ldh [$94], a
    add [hl]
    rst $38
    ldh [$bf], a
    ldh [$ca], a
    rst $38
    ret nz

    ret z

jr_05a_6dde:
    ld l, a
    ld sp, $9531
    sbc h
    rst $38
    ldh [$93], a
    ld l, l
    rst $38
    ldh [$7f], a
    sbc c
    sbc b
    sbc h
    add [hl]

jr_05a_6dee:
    add [hl]
    sub d
    adc h
    jp z, $faff

    add sp, -$19
    adc [hl]
    cp a
    ldh [$97], a
    sub [hl]
    add [hl]
    add [hl]
    sub c
    cp $c0
    pop hl
    ld l, l
    jr nc, jr_05a_6e34

    sbc c
    sbc b
    sub b

jr_05a_6e07:
    ld h, b
    db $f4
    jp z, $e8ff

    rst $20
    ld c, a
    cp a
    pop hl
    sbc a
    add [hl]
    add [hl]
    sbc l
    dec e
    ld l, d
    cp a
    db $e4
    jr nc, jr_05a_6dae

jr_05a_6e1a:
    sub d
    jp z, $c0ff

    add sp, -$41
    ld [c], a
    sbc a
    sub b
    add [hl]
    sbc l
    ld h, a
    ld l, d
    cp [hl]
    ld [c], a
    cp a
    ldh [$50], a
    adc b
    jp z, $c0ff

    jp hl


    ld a, [hl]
    pop hl
    sub d

jr_05a_6e34:
    ret nz

    ld [c], a
    ld a, l
    ldh [$32], a
    pop bc
    ld d, c
    jr c, jr_05a_6e07

    rst $38
    ret nz

    ld [$e13d], a
    sub l
    add [hl]
    sub e
    ld a, a
    ldh [$36], a
    ret nz

    adc a
    ld l, h
    ld l, h
    ld c, b
    ld c, c
    jp z, $c0ff

    db $eb
    cp a
    ld [c], a
    sub c
    inc sp
    ld h, a
    ld l, d
    jr c, jr_05a_6e1a

    or d
    and b
    add hl, sp
    ld sp, $ffca
    ret nz

    db $ec
    xor $7e
    ld [c], a
    sub h
    ld h, a
    ld h, l
    rst $38
    ldh [$6c], a
    ld [hl], $37
    add sp, -$40
    rst $38
    ret nz

    xor $7a
    pop bc
    sub a
    ld a, c
    add d
    ld b, [hl]
    ld b, a
    ld sp, $c000
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

Call_05a_6eaf:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $f4
    nop
    nop
    nop
    and l
    nop
    rst $38
    push hl
    ld [hl-], a
    or $e6
    rst $30
    rst $20
    dec [hl]
    db $ec
    xor $37
    db $ec
    jp c, $c7f0

    add sp, $33
    ld sp, $f2e0
    ld [hl], $30
    scf
    cp a
    ld h, $20
    daa
    db $10
    ld d, $17
    jp nz, Jump_000_34f6

    rst $38
    ld [hl], $32
    jr nc, jr_05a_6fa0

    ld sp, $3133
    inc sp
    nop
    and b
    ei
    rst $38
    rst $28
    nop
    nop
    nop
    ld a, l
    ld l, a
    xor l
    ld l, a
    ld e, d
    ld [hl], d
    ld hl, $ec74
    dec hl
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    nop
    add hl, bc
    and l
    ld b, e
    xor $37
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    ccf
    ld a, a
    rla
    ld e, [hl]
    ld de, $2249
    dec sp
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05a_6fa0:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld l, a
    inc c
    ld c, h
    inc c
    inc l
    cp $e0
    inc c
    dec bc
    rst $38
    ldh [rIE], a
    inc c
    inc c
    inc c
    inc l
    ld c, d
    ld l, d
    ld l, d
    ld l, d
    inc bc
    inc c
    ld c, h
    rst $38
    ldh [$f3], a
    ldh [$fc], a
    ldh [$f9], a
    pop hl
    ld hl, sp-$1e
    db $f4
    db $e3
    ld h, b
    jp hl


    ld [c], a
    db $fd
    ld [$e1d5], a
    jp nc, $c0e1

    db $e4
    inc c
    dec hl
    cp a
    ldh [rP1], a
    jp hl


    ld [c], a
    db $fd
    and $b5
    db $e3
    sbc c
    pop hl
    ld sp, hl
    and $bb
    add sp, -$78
    pop hl
    db $fc
    push hl
    ld h, b
    ldh a, [$e2]
    cp a
    ldh [$c0], a
    add sp, -$47
    ldh [$b2], a
    db $e4
    inc l
    inc l
    ld sp, hl
    push hl
    adc h
    ret nz

    or $78
    db $e3
    dec hl
    ld c, d
    ld h, a
    db $e4
    ld c, e
    db $e3
    ld b, a
    push hl
    inc l
    ld sp, hl
    inc l
    ld sp, hl
    db $e4
    add b
    db $ed
    ld l, e
    ld l, e
    ld c, e
    ld l, e
    ld c, e
    dec bc
    ld c, e
    ld c, e
    ld [hl], a
    rst $20
    dec hl
    ld b, $e1
    add d
    db $e4
    ld b, b
    add sp, -$55
    db $e4
    nop
    call c, $fcc0
    jp $e337


    pop bc
    ldh [$3d], a

jr_05a_7030:
    ld [c], a
    cp [hl]
    jp hl


    ld bc, $73ea
    and $38
    ld sp, hl
    rst $20
    cp h
    ret


    pop bc
    ldh [$2b], a
    dec hl
    dec hl
    cp [hl]
    db $eb
    pop bc
    rst $28

jr_05a_7045:
    jr jr_05a_70c6

    rst $10
    pop bc
    ld [c], a
    ret nz

    ldh [rWX], a
    ld c, e
    jr c, jr_05a_7030

    ld a, [hl-]
    db $e4
    ld b, c
    ld [c], a
    ld h, b
    add $c1
    ret nz

    jp nz, $c67f

    jr c, jr_05a_7045

    ld a, [hl-]
    rst $00
    dec hl
    ld c, e
    add c
    push hl
    ld h, b
    scf
    pop hl
    ld hl, sp-$3d
    adc h
    push hl
    dec b
    add $41
    rst $30
    inc c
    dec hl
    cp a
    ldh [rP1], a
    call nz, $80c1
    pop hl
    ld hl, sp-$3d
    ld hl, sp-$5d
    ld c, c
    push bc
    ld a, h
    call nz, $e8f9
    nop
    db $ec
    inc b
    cp a
    ldh [$c0], a
    db $eb
    ld c, e
    ret nz

    push bc
    ret nc

    add sp, -$40
    jp z, $a1b7

    cp d
    and [hl]
    dec d
    ld l, e
    cp a
    ldh [$0b], a
    ret nz

    ret nz

    dec hl
    nop
    ldh [$b4], a
    ld [c], a
    dec [hl]
    ret nz

    jr nc, jr_05a_70a3

jr_05a_70a3:
    ld [$a43a], a
    ccf
    and a
    cp [hl]
    xor e
    inc l
    inc l
    add d
    jp nz, $e03b

    add b
    ret nz

    ldh [$f8], a
    and c
    ld b, b
    db $e4
    nop
    and $fe
    add e
    ld b, b
    ret z

    ret nz

    db $ed
    inc l
    ld [hl], c
    inc l
    res 4, d
    ld a, a
    pop bc

jr_05a_70c6:
    cp b
    and c
    ld l, e
    dec hl
    dec bc
    call nz, Call_000_0084
    pop bc
    ret


    ld [hl], c
    xor c
    jp z, $bee4

Call_05a_70d5:
    add sp, -$3f
    and b
    cp a
    and c
    ld b, e
    pop hl
    or c
    and c
    nop
    ret nz

    xor l
    add a
    adc b
    rst $28
    add h
    ret nz

    jp hl


    dec h
    and b
    ld a, [hl]
    and h
    rst $30
    pop bc
    add c
    ldh [rP1], a
    ld b, b
    jp $8860


    add b
    adc b
    ld [hl], $83
    add c
    add sp, -$6a
    ret z

    adc [hl]
    call nz, $c64e
    nop
    add b
    adc l
    or $87
    ret nz

    ld [$70d5], a
    add h
    adc c
    add b
    adc b
    or a
    and [hl]
    cp [hl]
    ld l, h
    nop
    push de
    ld l, [hl]
    add d
    rst $20
    add b
    adc e
    inc l
    add h
    adc h
    pop bc
    ld c, e
    ld h, d
    ret nz

    ld [$68d5], a
    nop
    ld a, a
    and [hl]
    sbc h
    jp hl


    ld [hl], a
    add a
    ret nz

    db $eb
    push de
    ld [hl], b
    pop bc
    add sp, $2a
    jp hl


    db $fd
    ld b, a
    nop
    cp a
    ret


    push de
    ld [hl], c
    ret nz

    ret


    cp a
    ld l, l
    ld b, b
    adc $91
    adc b
    call c, $8b68
    ld b, [hl]
    nop
    add b
    add [hl]
    cp [hl]
    xor d
    ld a, c
    ld c, l
    ld d, l
    db $ec
    adc e
    ld b, [hl]
    add a
    adc d
    cp $46
    ret nz

    xor e
    nop
    ld de, $d5c8
    ld l, e
    sub d
    ld b, [hl]
    or d
    ld h, h
    rst $30
    ld b, [hl]
    nop
    ld [$4756], a
    ld d, l
    add sp, $00
    sub h
    rst $20
    add $2a
    ld a, $84
    add h
    ret z

    cp h
    daa
    push de
    ld l, d
    or [hl]
    ret z

    db $eb
    rst $08
    nop
    ei
    dec hl
    db $db
    dec h
    dec d
    call z, $a9b7
    db $eb
    bit 7, h
    dec hl
    ld [hl+], a
    daa
    ld d, l
    db $ec
    nop
    ld de, $2224
    rst $28
    inc a
    add hl, hl
    ld [hl+], a
    inc h
    ld d, l
    db $ec
    jp z, $2229

    rst $28
    rst $38
    sub c
    nop
    adc [hl]
    add [hl]
    cp a
    xor b
    call z, $f729
    ld c, d
    add b
    jp hl


    ret nz

    db $d3
    or $ec
    ld [hl+], a
    db $ec
    nop
    jp Jump_000_3d80


    db $eb
    ret nz

    rst $10
    ld [hl+], a
    pop af
    ld b, c
    ld l, d
    sbc [hl]
    di
    adc e
    ld c, b
    ld [hl+], a
    ldh a, [rP1]
    add d
    xor e
    ret nz

    pop de
    or $e8
    ld a, c
    rrca
    add c
    ld [$d2c0], a
    sub d
    ld c, e
    ld sp, hl
    ld l, a
    nop
    add b
    ld l, h
    rst $38
    ei
    ld sp, hl
    ld l, h
    add b
    db $ed
    ret nz

    or $f4
    ld c, b
    xor $ab
    ld b, b
    db $ec
    nop
    adc b
    rst $30
    and h
    sub d
    rst $38
    rst $38
    and h
    sbc e
    rst $38
    rst $38
    and $04
    and h
    sbc c
    rst $38
    rst $38
    nop
    and h
    sbc d
    rst $38
    rst $38
    sbc e
    add c
    and h
    sub e
    rst $38
    rst $38
    ld b, b
    db $ec
    and h
    adc l
    rst $38
    rst $38
    nop
    db $e4
    ld l, e
    ld [hl], $28
    ret nz

    rst $38
    and [hl]
    xor [hl]
    ret nz

    db $eb
    rst $38
    rst $38
    ld [hl], e
    call nc, $bfcd
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    reti


    or e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    scf
    db $eb
    call c, $ffff
    rst $38
    rst $38
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
    nop
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld e, c
    ld [hl], e
    nop
    nop
    nop
    ld [hl], a
    dec hl
    db $10
    jr nz, @+$01

jr_05a_725f:
    ldh [rNR50], a
    nop
    ld sp, $e0ff
    rst $38
    add hl, hl
    inc d
    inc d
    add hl, hl
    adc h
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld e, c
    nop
    rst $38
    rst $38
    rst $20
    and $11
    dec b
    rst $38
    ld [c], a
    rrca
    ret nz

    pop hl
    rra
    dec hl
    jr z, jr_05a_72a3

    nop
    ld h, b
    cp a
    ldh [$ca], a
    rst $38
    add sp, -$19
    ld a, h
    adc b
    pop hl
    db $fc
    push hl
    dec hl
    jr z, @+$22

    nop
    ld sp, $e0bf
    jr nc, jr_05a_725f

    rst $38
    ret nz

    di
    ld [hl], h
    ldh [$78], a
    ldh [$60], a
    adc h
    jp z, $80ff

    jp hl


    ld a, a

jr_05a_72a3:
    ld c, l
    ld a, [hl-]
    ld d, h
    ld d, l
    ld d, h
    ld b, [hl]
    ld b, a
    ld [hl], a
    rst $20
    ld a, c
    ld h, b
    jp z, Jump_05a_40ff

    add sp, $4d
    ld [hl-], a
    jr nc, jr_05a_731e

    rst $38
    ldh [$a1], a
    ld [hl], $be
    add sp, -$36
    rst $38
    add sp, -$19
    pop bc
    ldh [rOCPS], a
    rst $38
    ld [c], a
    jr nc, @-$06

    cp [hl]
    rst $20
    jp z, $e8ff

    rst $20
    add hl, sp
    jr nc, jr_05a_7339

    ld l, c
    ld l, d
    rrca
    ld l, l
    ld l, l
    ld l, d
    ld l, c
    rst $38
    ldh [$7c], a
    push hl
    jp z, $c0ff

    db $eb
    xor a
    ld l, l
    jr nc, @+$32

    ld l, l
    ret nz

    pop hl
    jr nc, jr_05a_7364

    ldh [rKEY1], a
    ret z

    ret nz

    rst $38
    ld b, b
    db $ed
    ret z

    ldh [$30], a
    ld a, d

jr_05a_72f3:
    ldh [$c0], a

jr_05a_72f5:
    pop hl
    jr nc, @+$32

    ld hl, $bf32
    ldh [$ca], a
    rst $38
    ret nz

    set 0, b
    jp hl


    ld l, c
    cp a
    ldh [$ca], a
    rst $38
    ld h, [hl]
    ld b, b
    adc $54
    ld [hl], $ff
    ret nz

    jr c, jr_05a_72f3

    ld [hl-], a
    ld c, l
    jp z, $f6ff

    add sp, -$19
    ld [de], a
    ld de, $a106
    and b
    add b
    ld l, a

jr_05a_731e:
    ld [hl], c
    ret c

    cp b
    push bc
    ret nz

    rst $38
    ld [$22e9], a
    ld hl, $e1be
    and b
    add b
    scf
    add b
    ld a, c
    ld [hl], c
    jr c, jr_05a_72f5

    ld [hl], c
    xor a
    ld b, b
    rst $38
    jp hl


    add sp, $1f

jr_05a_7339:
    jr nz, @+$22

    ld [hl+], a
    ld hl, $c001
    pop hl
    cp a
    ldh [$b8], a
    and b
    rst $08
    ld l, d
    ld [hl], c
    ld a, c
    and c
    ret nz

    rst $38
    ret nz

    ld [$2020], a
    cp $c0
    db $e3
    add b
    ld a, c
    ld l, [hl]
    ld d, h
    ld d, l
    ld l, [hl]
    ld a, c
    ld bc, $c080
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05a_7364:
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
    push af
    nop
    nop
    nop
    and l
    nop
    rst $38
    push hl
    ld [hl-], a
    or $e6
    rst $30
    rst $20
    dec [hl]
    db $ec
    xor $37
    db $ec
    jp c, $c7f0

    add sp, $33
    ld sp, $f2e0
    ld [hl], $30
    scf
    cp a
    ld h, $20
    daa
    db $10
    ld d, $17
    jp nz, Jump_000_34f6

    rst $38
    ld [hl], $32
    jr nc, jr_05a_7480

    ld sp, $3133
    inc sp
    nop
    and b
    ei
    rst $38
    rst $28
    nop
    nop
    nop
    ld e, l
    ld [hl], h
    adc l
    ld [hl], h
    inc sp
    ld [hl], a
    ld e, $79
    db $ec
    dec hl
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    nop
    add hl, bc
    and l
    ld b, e
    xor $37

jr_05a_7469:
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    ccf
    ld a, a
    rla
    ld e, [hl]
    ld de, $2249
    dec sp
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05a_7480:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld c, e
    ld a, [bc]
    dec bc
    rst $38
    db $e3
    inc c
    rst $38
    db $e4
    db $f4
    ld [c], a
    ld c, h
    rst $38
    ldh [$c0], a
    rst $28
    ldh [$fc], a
    ldh [$f9], a
    pop hl
    ld hl, sp-$1e
    rst $30
    ld [c], a
    db $fc
    ldh a, [$0b]
    dec bc
    jr z, jr_05a_7469

    db $e3
    sub $e3
    ret nz

    ld [c], a
    ld a, [bc]
    push bc
    pop hl
    ld c, h
    db $fd
    and $b5
    db $e3
    inc a
    cp h
    push af
    add c
    pop hl
    ld l, e
    dec bc
    ld c, e
    dec bc
    adc l
    db $e4
    add b
    ldh [$a1], a
    dec hl
    ld [hl], h
    pop hl
    jp Jump_05a_7ee6


    ld [c], a
    or d
    pop hl
    inc l
    ret nz

    or $6b
    xor a
    ld l, e
    dec hl
    ld c, e
    ld c, e
    cp [hl]
    db $e3
    ld c, h
    ld b, b
    pop hl
    dec hl
    db $10
    ld c, e
    db $e3
    ld a, [hl]
    ld [c], a
    add a
    db $e3
    ld b, b
    pop hl
    inc l
    cp h
    ld [c], a
    ld b, b
    ldh a, [$c1]
    ldh [rNR23], a
    rst $38
    ldh [$be], a
    ldh [$bb], a
    ldh [rOCPD], a
    dec bc
    ld [hl], l
    ldh [$f4], a
    ret nz

    add d
    and $90
    ld b, b
    db $eb
    ret nz

    db $e3
    cp d
    db $e4
    or e
    db $e3
    ld l, e
    ld b, d
    ldh [$c0], a
    pop hl
    dec hl
    ld bc, $b72b
    pop bc
    ld a, [$76e0]
    ldh [$c5], a
    jp $e6fa


    pop af
    call nz, $d3bc
    ld sp, $816b
    db $e3
    cp a
    db $e3
    cp d
    ld [c], a
    ld c, e
    ld c, e
    jp z, $b7e6

    push hl
    nop
    ld a, b
    push hl
    ld a, e
    ret nc

    add e
    db $e4
    dec a
    ldh [$f9], a
    ret nz

    or e
    ldh [$80], a
    pop hl
    ld d, b
    jp $c000


    push bc
    ld a, a
    db $db
    ld b, e
    db $e3
    dec a
    ldh [$c4], a
    pop hl
    ld [hl], e
    ldh [$b6], a
    jp nz, $c40e

    ld h, b
    add c
    jp $c435


    dec sp
    call nz, $f280
    pop bc
    db $e3
    ld l, e
    ld c, e
    ret nz

    ld [c], a
    nop
    db $f4
    and h
    ld [hl], c
    jp nz, $a3b7

    cp [hl]
    push hl
    cp h
    or c
    add l
    pop hl
    ret nz

    push hl
    ld a, a
    ld [c], a
    nop
    ld [hl], h
    and h
    ld b, $c5
    ret nz

    rst $08
    dec sp
    jp nz, $c636

    jp z, $c0c2

    push hl
    jp $e0e1


    inc [hl]
    and e
    ld b, $c7
    ld a, [hl-]
    and h
    ret nz

    push bc
    db $fd
    xor l
    dec bc
    ld c, e
    dec hl
    ld e, c
    ld c, e
    ld b, h
    jp nz, $e23e

    dec bc
    ld l, e
    add hl, sp
    ret nz

    ld l, h
    ld [de], a
    and e
    adc b
    ld b, h
    and $72
    and $c0
    jp nc, $830b

    and b
    cp h
    add b
    cp e
    ldh [$2b], a
    nop
    jp nz, Jump_05a_41a0

    push hl
    dec b
    and [hl]
    ld a, l
    jp $c540


    or c
    adc b
    ld [hl], h
    and h
    add a
    pop hl
    ld [$e1c0], sp
    ld c, b
    and c
    ld hl, sp-$1d
    ld l, h
    ld c, $c7
    ret z

    adc b
    cp b
    add $b1
    add l
    nop
    ret nz

    rst $20
    add [hl]
    and d
    db $fc
    rst $20
    ld d, a
    push bc
    ret nz

    db $eb
    db $ed
    add e
    or c
    adc c
    ld h, [hl]
    and a
    nop
    ld e, h
    db $e4
    ld d, b
    push hl
    inc de
    ret z

    cp h
    xor $b1
    add a
    dec h
    and a
    call nc, $c772
    ld l, b
    nop
    rst $38
    ld h, l
    or c
    adc h
    xor a
    ld h, [hl]
    call nc, Call_05a_4870
    xor e
    cp a
    add [hl]
    or c
    adc d
    ld a, [hl]
    add sp, $00
    call nc, $166e
    db $ed
    or c
    push bc
    jr nc, jr_05a_766d

    di
    ld h, e
    call nc, $c775
    ld l, c
    ccf
    rst $20
    nop
    jr nc, jr_05a_7677

    rst $38
    rst $00
    call nc, $f370
    db $eb
    ld bc, $b1a5
    adc d
    ld [hl], h
    ld h, a
    call nc, Call_000_0070
    rst $00
    ld l, e
    or l
    ld c, b
    or c
    add a
    ld [hl], b
    ld c, h
    adc h
    call z, Call_05a_4d46
    or c
    adc a
    db $f4
    ld b, h
    nop
    call nc, $f373
    db $eb
    or c
    sub d
    ret nz

    and $d4
    ld [hl], c
    rst $00
    ld l, h
    or d
    ld h, [hl]
    ld [hl], d
    db $eb
    nop
    dec de
    ld h, a
    call nc, $c76e
    ld l, h
    ld [hl], a
    ld b, h
    or c
    adc c
    cp a
    xor h
    call nc, $c76c
    ld l, a
    nop
    or c
    adc a
    sbc c
    ld c, b
    call nc, Call_000_076d
    dec hl
    ld a, h
    and l
    add hl, sp
    ld [hl-], a
    call nc, Call_05a_4072
    xor [hl]
    nop
    ld e, b
    jp hl


    or [hl]
    ld c, $d4
    ld [hl], c
    inc sp
    xor c

jr_05a_766a:
    ld [hl], d
    db $ec
    dec b

jr_05a_766d:
    ret nc

    call nc, Call_000_076d
    ld a, [hl+]
    inc b
    ret z

    ld l, h
    dec l
    ld [bc], a

jr_05a_7677:
    inc l
    jp nz, $d489

    ld l, a
    rlca
    dec l
    ld a, c
    ld [$e2c0], sp
    ld bc, $c02c
    rst $20
    ld d, h
    inc sp
    dec h
    db $eb
    ld a, c
    add hl, bc
    ret nz

    db $e4
    add e
    set 1, h
    ret nc

    nop
    rlca
    ld a, [hl+]
    ld a, [hl-]
    ld a, [hl+]
    ret nz

    db $ec
    add b
    or e
    or d
    ld l, d
    ld a, a
    reti


    add b
    or h
    or e
    jp hl


    nop
    and l
    adc l
    ld [bc], a
    ldh [$b9], a
    ld a, [hl+]
    ld d, h
    cpl
    ld d, [hl]
    adc e
    pop af
    xor l
    ret nz

    db $ec
    add b
    or a
    nop
    cp c
    jr z, jr_05a_766a

    adc d
    add b
    cp [hl]
    rlca
    inc l
    ret z

    ld a, b
    ld d, h
    inc [hl]
    ret z

    ld [hl], a
    pop bc
    ldh a, [rP1]
    add b
    or b
    ld d, [hl]
    adc e
    and l
    adc e
    ld b, b
    di
    ld d, h
    ld l, $25
    push af
    rst $38
    ld sp, hl
    inc sp
    or e
    nop
    ret z

    ld [hl], l
    rst $38
    rst $38
    ld a, c
    ld [de], a
    rst $38
    rst $38
    dec h
    ei
    rst $38
    rst $38
    ld e, h
    rst $08
    adc l
    xor l
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    rst $38
    rst $38
    or [hl]
    ld h, b
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    scf
    rst $28
    call c, $ffff
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
    nop
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld e, e
    ld [hl], e
    nop
    nop
    nop
    ei
    ld e, d
    ld e, e
    rst $38
    ldh [$5c], a
    ld e, l
    ld sp, $2c2b
    db $fd
    jr nz, @+$01

    pop hl
    nop
    ld sp, $5b61
    ld e, e
    nop
    db $fc
    rst $38
    rst $38
    rst $20
    and $5b
    ld e, e
    ld e, d
    ld e, e
    ld h, b
    ld sp, $312f
    ld sp, $282b
    ret nz

    and $5a
    jp z, $c0ff

    jp hl


    rst $38
    ld e, e
    ld h, b
    ld c, l
    ld d, [hl]
    ld b, a
    ld sp, $1211
    dec a
    ld hl, $e1be
    nop
    ld sp, $6031
    add b
    rst $38
    add b
    ld [$60bf], a
    ld c, l
    ld [hl-], a
    jr nc, jr_05a_77af

    ld b, [hl]
    cp [hl]
    pop hl
    dec b
    rla
    dec b
    dec b
    rrca
    ld [hl], l
    ldh [$60], a
    jp z, Jump_05a_40ff

    add sp, -$3f
    pop hl
    rst $38
    jr nc, @+$6f

    ld l, l
    ld [hl], $46
    sub a
    sbc [hl]
    sbc [hl]
    sub a
    sbc [hl]
    sub a
    ld d, [hl]
    ld [hl], l
    ldh [$31], a
    jp z, $e8ff

    rst $20
    ld e, a
    di
    ld sp, $c239
    ldh [$fe], a
    ldh [$30], a
    sub h
    add [hl]
    add [hl]
    ccf
    add [hl]
    sub h
    ld l, l
    ld l, h

jr_05a_77af:
    ld [hl], $3c
    ret nz

    rst $38
    jp hl


    add sp, $77
    ld e, [hl]
    ld c, c
    ld c, b
    pop bc
    db $e3
    ld l, d
    ld l, d
    sub c
    pop bc
    ldh [$9f], a
    ld l, l
    ld l, h
    ld l, l
    ld c, b
    ld c, c
    jp z, $e8ff

    rst $20
    ld sp, $50f9
    add c
    ld [c], a
    pop bc
    ldh [$6d], a
    sub e
    sub h
    ld l, d
    ld l, e
    sbc a
    ld l, e
    jr nc, jr_05a_7845

    ld l, e
    ld d, c
    jp z, $c0ff

    add sp, $51
    adc b
    pop bc
    push hl
    ld a, h
    pop hl
    add b
    pop hl
    ld l, l
    ret nz

    rst $38
    add b
    jp hl


    ld b, b
    pop hl
    jr nc, jr_05a_7854

    ld l, c
    ld l, c
    ld a, e
    push hl
    ld b, b
    rst $38
    nop
    db $ec
    ld sp, $c039
    and $72
    ei
    pop bc
    ld l, d
    ret nz

    rst $18
    add b
    call z, Call_05a_6eaf
    ld [hl], $c0
    push hl
    rst $08
    ld l, l
    jr nc, @+$32

    ld [hl-], a
    ld b, b
    rst $18
    nop
    call z, $a9ac
    cp a
    ld l, a
    ld l, [hl]
    ld d, l
    ld d, h
    ld d, h
    ld [hl], $3b
    jp nz, $cf71

    xor a
    ld sp, $1531
    jp z, Jump_000_00ff

    xor c
    ld h, c
    add c
    db $fd
    add b
    rst $38
    pop hl
    ld l, a
    ld l, [hl]
    ld [hl], $6d
    ld [hl], $6e
    sbc a
    ld a, c
    and c
    ld sp, $1731
    jp z, $c0ff

    ld [$fca1], a
    ret nz

    ld [c], a
    cp [hl]
    ldh [$7c], a

jr_05a_7845:
    ld l, a
    add b
    add b
    and c
    ld sp, $15e3
    ld d, $ca
    rst $38
    ret nz

    ld a, [c]
    ld a, c
    ld [c], a
    and c

jr_05a_7854:
    ld sp, $0117
    jr z, @-$34

    rst $38
    rst $38
    rst $38
    rst $38
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
    di
    nop
    nop
    nop
    and l
    nop
    rst $38
    push hl
    ld [hl-], a
    or $e6
    rst $30
    rst $20
    dec [hl]
    db $ec
    xor $37
    db $ec
    jp c, $c7f0

    add sp, $33
    ld sp, $f2e0
    ld [hl], $30
    scf
    cp a
    ld h, $20
    daa
    db $10
    ld d, $17
    jp nz, Jump_000_34f6

    rst $38
    ld [hl], $32
    jr nc, jr_05a_797d

    ld sp, $3133
    inc sp
    nop
    and b
    ei
    rst $38
    rst $28
    nop
    nop
    nop
    ld e, d
    ld a, c
    adc d
    ld a, c
    sub d
    ld a, e
    ld h, c
    ld a, l
    db $ec
    dec hl
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    nop
    add hl, bc
    and l
    ld b, e
    xor $37
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    ld e, d
    ld a, l
    cp a
    ld a, [hl]
    ld [hl], h
    db $10
    ld [hl+], a
    dec sp
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05a_797d:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld e, a
    ld a, [hl+]
    ld c, d
    ld c, d
    ld c, d
    ld a, [bc]
    rst $38
    db $ec
    inc c
    rst $38
    ldh [$f9], a
    dec bc
    ei
    pop hl
    db $fc
    add sp, $2c
    ld c, h
    inc c
    ld c, h
    ld c, h
    ld c, c
    ld c, h
    db $eb
    db $ec
    rst $10
    ldh [rWY], a
    cp a
    ldh [$c0], a
    db $ec
    ld l, d
    ret nz

    ldh [$0b], a
    ld c, h
    dec bc
    cp a
    db $ec
    inc l
    push bc
    rst $28
    ret nz

    db $e3
    cp a
    ldh [$c1], a
    db $ec
    ld h, e
    ld l, d
    inc c
    sbc b
    pop hl
    ld a, a

Jump_05a_79c2:
    db $ed
    ret nz

    or $4a
    ld a, [hl+]
    pop bc
    db $ec
    ret z

    add b
    pop hl
    cp l
    ldh [$7e], a
    pop hl
    inc l
    db $fc
    pop hl
    ret nz

    db $fd
    ld l, d
    dec bc
    ei
    ld l, e
    dec bc
    rst $38
    pop hl
    ld c, e
    dec bc
    dec hl
    dec hl
    dec bc
    pop bc
    ld c, d
    ret nz

    db $e4
    ld a, $e3
    ret nz

    ld sp, hl
    ld l, $e3
    pop bc
    ld [c], a
    ld l, e
    ld c, e
    ld c, $ff
    db $e4
    dec bc
    dec bc
    dec hl
    cp a
    ldh [$c5], a
    jp $ed81


    ld [hl], h
    di
    ld [bc], a
    add d
    ldh [$0b], a
    pop bc
    and $be
    pop hl
    cp a
    ldh [$c1], a
    db $e3
    ld b, c
    and $8a
    call nz, Call_000_340c
    di
    pop bc
    ldh [$0b], a
    dec hl
    ret nz

    jp hl


    ld a, [hl]
    ldh [$59], a
    jp nz, $e201

    ld [de], a
    ld a, [hl]
    rst $18
    ld a, [hl+]
    ld c, h
    pop hl
    cp a
    rst $20
    dec hl
    dec a
    pop hl
    jp nz, $c0c1

jr_05a_7a2a:
    ret nc

    jr nz, jr_05a_7a2a

    and d
    ret nz

    xor $bf
    db $e3
    ld a, l
    db $e4
    dec [hl]
    db $e3
    inc l
    inc de
    pop bc
    ret nz

    call z, $c304
    and b
    db $fd
    or d
    ld a, [hl+]
    cp a
    ld [c], a
    cp [hl]
    db $e3
    ld a, d
    jp nz, $c075

    call nc, Call_000_08a3
    ccf
    xor $33
    ld a, [c]
    ret nz

    ldh [$2a], a
    ld b, [hl]
    db $e4
    ld b, b
    ret nz

    ret nz

    jp hl


    ld c, h
    di
    nop
    ld a, b
    xor l
    add b
    ldh [rSB], a
    and [hl]
    or a
    ldh [$fe], a
    and b
    add b
    ldh [rNR23], a
    and b
    adc c
    pop bc
    db $10
    ld c, h
    push af
    nop
    db $eb
    pop bc
    rst $20
    db $f4
    pop bc
    ld c, e
    ld a, h
    ldh [rNR14], a
    and d
    rrca
    xor l
    ld [$b475], sp
    pop bc
    ld [$c0b3], a
    dec hl
    cp a
    ldh [$c0], a
    di
    cp c
    sub e
    pop bc
    db $eb
    ld c, $f4
    pop bc
    dec hl
    dec hl
    inc l
    ld d, [hl]
    add b
    ld d, l
    adc a
    ld a, $82
    ld a, c
    sub h
    nop
    ld c, [hl]
    ret nz

    ld e, a
    add b
    db $fd
    db $e3
    ld d, h
    sub e
    push af
    sub $97
    ldh a, [rSTAT]
    and l
    cp c
    ld a, [c]
    nop
    db $ec
    rst $38
    add c
    pop bc
    ld c, d
    sbc h
    add c
    ld sp, hl
    rst $38
    rst $38
    ld a, $ee
    push de
    ld a, a
    ld a, h
    ei
    nop
    ret nz

    ld a, [$6506]
    sbc a
    ld hl, sp-$7f
    db $eb
    ld [hl], d
    db $ec
    ret nz

    rst $38
    push de
    ld l, h
    ld [hl-], a
    di
    nop
    add c
    ld sp, hl
    jp c, $f34b

    call z, Call_05a_440a
    ld [hl], h
    ld l, d
    add sp, $2b
    ret nz

    call z, Call_05a_6d47
    nop
    rst $38
    ld a, [hl-]
    push de
    ld [hl], b
    ld c, h
    ld d, h
    ccf
    rst $38
    pop af
    adc $c0
    rst $38
    ld e, $2d
    ret nz

    ld sp, hl
    nop
    ld b, l
    sub $d5
    ld l, h
    ld b, a
    ld [hl], l
    ret nz

    ld d, d
    db $e4
    dec d
    sub e
    ld c, l
    ld [hl], h
    ld a, c
    and h

Jump_05a_7aff:
    inc c
    nop
    ld b, a
    ld a, a
    xor b
    db $eb
    cp l
    sbc a
    rst $38
    rst $38
    sbc a
    rst $38
    adc d
    call nc, Call_05a_60d9
    push de
    ld [hl], h
    nop
    rst $38
    rst $38
    and [hl]
    cp e
    sbc a
    rst $38
    ld l, b
    inc h
    sbc a
    rst $38
    pop hl
    rst $38
    sbc a
    rst $38
    pop hl
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, [hl]
    ld [hl], c
    and b
    rst $18
    ld [hl], e
    rst $38
    inc c
    ld d, [hl]
    xor d
    ld [hl+], a
    cp $e5
    nop
    add $ff
    jp $ffdf


    rst $38
    rst $38
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
    ccf
    rst $18
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
    nop
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    dec c
    ld e, h
    nop
    nop
    nop
    rst $18
    ld a, e
    ld a, $3e
    ld a, $78
    rst $38
    db $eb
    ld a, e
    nop
    ld [hl-], a
    rst $38
    ldh [$90], a
    ei
    pop hl
    rst $38
    rst $38
    nop
    ld a, $bf
    ldh [$c1], a
    db $ec
    ld bc, $c03e
    ld [c], a
    cp a
    rst $38
    ret nz

    db $e3
    cp a
    ldh [$c1], a
    db $ec
    ret nz

    ld [c], a
    ld a, a
    rst $38
    ld b, $c0
    push hl
    ld a, $7b
    pop bc
    db $ec
    ret nz

    db $e3
    ld a, [hl]

Call_05a_7bc4:
    db $e3
    cp d
    cp $01
    ldh [rIE], a
    ld a, h
    ld d, b
    dec a
    ld b, [hl]
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ccf
    scf
    ld d, d
    ld c, l
    ld c, h
    ld c, e
    ld a, h
    ret nz

    rst $38
    ld b, b
    db $ec
    cp $c1
    ldh [rNR43], a
    ld d, a
    ld d, a
    ld e, d
    ld e, d
    ld e, l
    ld h, $1f
    ld [hl], $37
    ld hl, $5052
    cp a
    ldh [$c0], a
    db $e4
    pop bc
    db $ed
    call z, $f22e
    add d
    ldh [rNR42], a
    add hl, hl
    pop bc
    ld [c], a
    rst $38
    ldh [rNR52], a
    ld [hl], $03
    dec a
    ld hl, $e0bf
    add c
    db $f4
    xor $d2
    pop bc
    ldh [$c0], a
    ldh [$c1], a
    db $e3
    ld b, [hl]
    cp l
    ldh [$29], a
    ld hl, $e0bf
    ld b, c
    rst $20
    rst $38
    rst $38
    ld a, [hl]
    ret nz

    ldh [$3b], a
    add hl, sp
    ld h, $c1
    push hl
    ld e, l
    ld b, e
    ld h, b
    cp a
    ldh [rP1], a
    rst $38
    cp d
    xor b
    rst $20
    ccf
    cp a
    pop hl
    scf
    ld [hl], $26
    add b
    db $e3
    ld h, $1f
    ld h, d
    sbc [hl]
    sub l
    sub l
    sub l
    ret nz

    rst $38
    ret nz

    add sp, -$41
    ld [c], a
    ld e, $be
    db $e3
    ld h, $5e
    ld e, a
    ld [hl], b
    rst $38
    pop hl
    ret nz

    add sp, -$01
    cp $fd
    ccf
    cp a
    ldh [$4c], a
    ld c, l
    ld d, d
    ld d, d
    ld d, d
    scf
    add $3f
    ret nz

    ld c, b
    sbc d
    ret nz

    add sp, -$01
    rst $38
    ret nz

    db $e4
    ld a, a
    ld c, $7e
    rst $38
    db $e3
    ld a, a
    ld a, [hl]
    ld d, b
    sbc e
    ld c, b
    sbc [hl]
    ret nz

    rst $38
    ld d, [hl]
    ld b, b
    db $ec
    ld a, a
    ld a, c
    rst $38
    db $e3
    ld a, a
    dec [hl]
    ld [c], a
    ld [hl], c
    ret nz

    or $18
    ld sp, $c1f3
    jp hl


    db $f4
    pop bc
    sbc h
    sbc c
    add b
    rst $38
    ld [$c1e9], a
    ld [$b300], a
    pop bc
    ld a, a
    ldh [$ca], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ei
    ld b, d
    rst $18
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    cp a
    ret nz

    rst $38
    ret nz

    rst $38
    rst $18
    ld a, [$ebc1]
    nop
    or d
    push af
    ld e, a
    or $81
    db $ec
    ld [hl], d
    db $f4
    add c
    ld hl, sp+$05
    db $eb
    add c
    rst $38
    nop
    ei
    nop
    di
    rst $18
    ret nz

    rst $38
    ret nz

    rst $18
    sub e
    or a
    ret nz

    rst $18
    ld [hl], d
    rst $38
    db $d3
    rst $38
    dec hl
    ld d, a
    nop
    dec b
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    db $dd
    ret nc

    rst $18
    rst $38
    rst $38
    sbc a
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
    ld h, [hl]
    adc c
    ld bc, $ffff
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
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    call $ff00
    jp hl


    scf
    ld [hl-], a
    pop af
    ld_long $ffff, a
    inc sp
    ld sp, $dcfe
    ld a, [c]
    ld [hl], $30
    scf
    ld h, $20
    daa
    db $10
    ei
    ld d, $17
    cp [hl]
    or $34
    ld [hl], $32
    jr nc, jr_05a_7db8

    rrca
    ld sp, $3133
    inc sp
    sbc h
    rst $38
    rst $38
    ei
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

jr_05a_7db8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05a_7ee6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05a_7eef:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
