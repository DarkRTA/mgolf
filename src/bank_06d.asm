; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $06d", ROMX[$4000], BANK[$6d]

    inc c
    ld b, b
    and e
    ld c, d
    adc c
    ld d, h
    adc b
    ld h, b
    ld b, [hl]
    ld l, d
    rrca
    ld [hl], l
    inc d
    ld b, b
    inc b
    ld b, h
    push bc
    ld c, b
    db $e4
    ld c, b
    dec e
    ld c, $ff
    ld [c], a
    dec c
    dec c
    dec c
    rst $30
    db $e3
    or $ff
    db $ec
    xor $01
    ld c, $d9
    pop hl
    push de
    db $e3
    or $ff
    db $ec
    rst $28
    sbc c
    rst $38
    ld [c], a
    add sp, -$03
    pop hl
    inc hl
    dec c
    ld c, l
    db $ec
    xor $99
    rst $38
    sbc [hl]
    ldh [rKEY1], a
    jp $93e2


    ldh [rP1], a
    rst $30
    pop hl
    adc $ea
    add l
    rst $38
    ret


    push hl
    ret nz

    db $e3
    nop
    rst $38
    db $ec
    db $ed
    add h
    pop hl
    nop
    ld c, c
    ldh [rLY], a
    pop hl
    ld c, a
    push hl
    cp d
    ld [c], a
    nop
    rst $38
    ld [c], a
    db $e4
    adc h
    ldh [$09], a
    ldh [rIF], a
    ld c, l
    ld c, l
    ld c, l
    dec l
    ld [bc], a
    ld [c], a
    or $e0
    nop
    rst $38
    ld e, $eb
    rst $38
    ld c, l
    dec c
    ld l, l
    dec c
    ld c, e
    ld c, e
    dec c
    ld c, l
    add c
    dec l
    ld [hl-], a
    pop hl
    ld a, [$85c5]
    rst $38
    ld b, e
    ld [c], a
    adc c
    jp nz, $e0c1

    dec bc
    rlca
    ld c, e
    ld c, e
    ld c, e
    ld a, h
    pop hl
    rst $28
    db $e3
    nop
    rst $38
    and l
    jp $e4c0


    inc hl
    ld c, e
    ld l, e
    add c
    ldh [$f9], a
    ldh [$bd], a
    ldh [$2d], a
    ld sp, $00e1
    rst $38
    nop
    add l
    call nz, $c2c7
    rst $00
    pop hl
    ld hl, sp-$1d
    or [hl]
    ldh [$fa], a

jr_06d_40ae:
    ret nz

    nop
    rst $38
    add l
    add $18

Jump_06d_40b4:
    ld d, b
    ret nz

    res 4, c
    pop bc
    db $e4
    ld a, [bc]
    ld a, [hl+]
    ld [hl], l
    ldh [$c0], a
    ldh [$89], a
    jp nz, Jump_000_00e0

    rst $38
    ld b, e
    pop bc
    call nz, $c2a0
    ret nz

    ld b, e
    ldh [$0b], a
    dec bc
    dec hl
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, e
    ret nz

    pop hl
    call nz, Call_000_00e7
    db $dd
    ld d, l
    pop hl
    sbc $c1
    pop hl
    ld c, e
    dec c
    dec hl
    dec hl
    cp a
    pop hl
    ld c, d
    dec bc
    ldh [$80], a
    ldh [$87], a
    and $00
    rst $38
    ld [$44c1], sp
    pop bc
    dec c
    dec c
    dec hl
    ld a, a
    ld c, e
    ld c, e
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    dec l
    ret nz

    db $e3
    or b
    ld sp, $0aa5
    cp h
    ld b, d
    db $e3
    add l
    jp nz, Jump_000_0b2b

    ld a, l
    ret nz

    ld l, e
    rlca
    dec l
    dec l
    dec l
    ld a, [hl]
    pop bc
    nop
    rst $38
    ld h, a
    and [hl]
    inc bc
    db $e3
    ret nz

    pop hl
    add hl, de
    dec bc
    ld d, d
    and b
    pop bc
    ldh [rWX], a
    dec c
    rst $38
    jp nz, $c37b

    nop
    cp h
    jr c, jr_06d_40ae

    pop bc
    call nz, Call_000_04c1
    ldh [$0b], a
    dec hl
    ld l, e
    rst $38
    and e
    or e
    and c
    ld a, b
    dec sp
    and e
    nop
    cp $80
    and e
    ld c, e
    dec c
    dec bc
    dec hl
    cp $e0
    add d
    pop bc
    db $e4
    ld c, e
    dec [hl]
    and b
    rst $20
    db $e4
    nop
    sbc $c0
    push hl
    add e

Jump_06d_4152:
    ret nz

    dec hl
    nop
    add c
    ldh [$c2], a
    pop hl
    pop bc
    ldh [$ad], a
    and e
    add c
    pop hl
    ld a, [bc]
    sbc e
    sbc c
    push hl
    inc b
    pop bc
    ld bc, $812b
    ret nz

    ld b, h
    ld [c], a
    pop bc
    ldh [$74], a
    add d
    nop
    db $dd
    add [hl]
    and b
    ld b, [hl]
    and e
    ld [bc], a
    inc b
    ret nz

    ld c, e
    ld bc, $c3e1
    db $e3
    adc b
    pop hl
    call nz, Call_000_0ac8
    sbc d
    inc de
    ld h, c
    add hl, de
    ld c, l
    pop bc
    ld [c], a
    push bc
    and b
    ld l, e
    dec bc
    ld c, b
    and c
    ld l, a
    and e
    dec hl
    and c
    jr nz, jr_06d_4195

jr_06d_4195:
    sbc $48
    and e
    ld a, [bc]
    add b
    add h
    pop bc
    ret nz

    ldh [rWX], a
    adc b
    and b
    jp Jump_000_0062


    cpl
    and c
    nop
    sbc h
    sub l
    ld h, b
    ld c, b
    and e
    pop bc
    ld [c], a
    ld c, d
    add c
    ld b, c
    add c
    ret nz

    db $e4
    ld [hl], b
    xor [hl]
    add d
    nop
    cp e
    ret nz

    push hl
    ld d, c
    pop bc
    dec hl
    ld c, e
    dec c
    rlca
    ret nz

    ret nz

    ld [$83c1], sp
    ld h, e
    ld b, e
    add d
    nop
    ld e, h
    ld c, e
    add h
    push bc
    pop bc
    ld c, e
    ld l, e
    inc bc
    dec bc
    dec hl
    ret z

    and h
    ret


    and c
    ld b, l
    add h
    nop
    ei
    jr jr_06d_4220

    pop bc
    db $e4
    nop
    ld b, h
    jp nz, $e4c1

    ret nz

    ld [c], a
    ld c, c
    xor l

jr_06d_41e9:
    adc a
    ld d, [hl]
    pop bc
    db $e4
    ld [$4881], sp
    ld h, c
    ld b, b
    ld c, c
    ld h, c
    xor [hl]
    add e
    nop
    cp $a0
    pop bc
    dec d
    and h
    ret


    ld h, c
    ld a, [bc]
    add [hl]

Jump_06d_4200:
    and d
    nop
    ld c, d
    add d
    and a
    pop bc
    nop
    rst $38
    ld d, h
    inc hl
    ld d, b
    ld b, b
    jp z, Jump_06d_4b81

    add b
    ld b, [hl]
    and c
    jr nz, jr_06d_4216

    db $e3
    db $ec

jr_06d_4216:
    ld de, $f000
    ret nz

    db $e3
    ld c, l
    ld h, b
    ld a, [bc]
    dec bc
    add b

jr_06d_4220:
    adc c
    ld b, e
    jr nz, jr_06d_41e9

    ld hl, $42c8
    nop
    db $fc
    inc hl
    ld b, h
    ret nz

    db $e4
    dec bc
    add h
    ldh [$c9], a
    add e
    nop
    dec bc
    ld h, d
    adc $6f
    sbc c
    ld c, $98
    inc bc

jr_06d_423b:
    ld [$cea2], sp
    ld b, c
    pop bc
    push hl
    inc c
    add e
    nop
    adc $6e
    adc a
    jr nc, @-$39

    add e
    ld [$86a0], sp
    jp $830d


    inc c
    add l
    nop
    rst $38
    ld [bc], a
    ret z

    and l
    dec bc
    jp $c0c1


    db $e4
    adc b
    add d
    inc c
    add e
    ld [c], a
    ld [de], a
    adc a
    ld l, c
    nop
    and b
    and b
    and b
    ld h, b
    ld c, l
    add c
    add e
    and d
    ld c, a
    ld h, a
    ret c

    inc sp
    adc a
    ld l, [hl]
    sub [hl]
    inc bc
    nop
    ld c, h
    ret nz

    rrca
    jr nz, jr_06d_423b

    db $e3
    add e
    ld [c], a
    ld a, [c]
    ld b, l
    nop
    ld sp, hl
    add e
    call nz, $82cb
    ld [bc], a
    sub [hl]
    jr nz, jr_06d_42b4

    cp [hl]
    ld [c], a
    ld d, b
    ld h, c
    cp b
    ld b, e
    add l
    xor l
    nop
    ld l, l
    daa
    inc b
    inc l
    sub b
    ld h, d
    jp nz, Jump_000_0ae0

    ld a, [hl+]
    ld c, l
    ld h, c
    ld l, e
    rlca
    pop bc
    ld a, b
    inc bc
    jr nc, jr_06d_42b0

    adc d
    nop
    ld d, c
    call nc, Call_06d_4303
    ld [c], a
    ld a, [bc]
    ld a, [hl+]
    adc l

jr_06d_42b0:
    ld b, b
    ld a, [bc]

Jump_06d_42b2:
    add d
    nop

jr_06d_42b4:
    jp z, $8563

    pop af
    nop
    dec l
    and $84
    ld d, c
    and b
    ld d, d
    ld b, c
    jp nz, $cbe1

    ld h, c
    nop
    rst $00
    and h
    ld a, [bc]
    xor d
    nop
    or [hl]
    inc c
    add d
    db $d3
    ld [hl+], a
    add [hl]
    and d
    rst $00
    and a
    ret c

    sub a
    nop
    rst $10
    ld h, $c3
    jp Jump_06d_4592


    jp nc, Jump_06d_4b26

    ld h, a
    ret c

    ld d, [hl]
    inc d
    ld b, e
    ld a, [$01e4]
    ld l, e
    sub d
    ld b, d
    sub e
    ld h, $cb
    ld b, c
    rst $00
    and h
    nop
    ret c

    ret z

    add l
    push bc
    and d
    nop
    inc de
    ld b, d
    jp z, $8b84

    ld b, b
    add hl, sp
    inc bc
    nop
    rst $38
    sub b
    ld b, e

Call_06d_4303:
    ld d, l
    ld hl, $22d3
    ld b, $c1
    db $e4
    dec c
    ld l, l
    ld [hl+], a
    rst $20
    nop
    ld a, [$2138]
    ld a, [de]
    and c
    sub h
    ld hl, $8400
    and b
    call nz, $c3a3
    and e
    ld h, a
    add d
    nop
    ld a, [$2293]
    dec c
    inc hl
    ld b, [hl]
    and d
    nop
    adc [hl]
    ld h, b
    ld b, c
    and c
    ret z

    add l
    ret c

    jr @-$79

    ld h, l
    xor a
    ld bc, $2193
    cp a
    pop bc
    nop
    ld bc, $c8a5
    add b
    add l
    db $db
    nop
    ld l, b
    ret c

    inc bc
    dec d
    add d
    rst $00
    jp Jump_06d_6148


    ld [$430f], sp
    ld e, l
    jr jr_06d_4359

    adc b
    ld l, l
    adc h
    and c
    ld c, h
    add c
    ld a, a
    and b
    adc [hl]
    ld h, l

jr_06d_4359:
    nop
    ld d, b
    inc h
    add l
    or e
    adc $68
    ld a, [hl+]
    ld bc, $a04b
    dec c
    and d
    inc d
    inc h
    inc c
    add b
    nop
    ld e, h
    inc bc
    ld e, l
    ld a, [de]
    ld [hl], b
    jp nz, $82ca

    pop bc
    pop hl
    cp a
    push hl
    ld b, l
    db $e3
    or [hl]
    ld b, l
    nop
    add l
    ld sp, hl
    adc a
    ld b, d
    adc d
    add d
    adc h
    and c
    sub [hl]
    ld hl, $e23e
    add e
    pop hl
    ret nz

    rst $20
    add b
    nop
    ei
    ret nz

    add sp, $7e
    push hl
    sbc b
    inc bc
    ld b, [hl]
    rst $00
    ld a, e
    ei
    ld a, [bc]
    ld b, e
    ld l, e
    add c
    ld c, e
    res 0, c

Jump_06d_43a0:
    ld a, [hl]
    db $e3
    ld c, [hl]
    add e
    add l
    cp $00
    rst $00
    ld [$2d40], sp
    ld c, $bf
    ld [c], a
    dec hl
    dec hl
    dec hl
    sub b
    jr nz, jr_06d_43ca

    ld hl, $6295
    add l
    db $fd
    nop
    nop
    db $e3
    ld h, $43
    cp a
    ld [c], a
    pop bc
    pop hl
    ld d, $26
    ld a, e
    rst $38

Jump_06d_43c6:
    sub h
    dec h
    jr nz, jr_06d_442c

jr_06d_43ca:
    ld bc, $0c2d
    ld b, b
    add d
    pop hl
    ld a, [$c182]
    jp $da85


    nop
    res 7, a
    pop hl
    nop
    jp z, Jump_06d_4c81

    and e
    add l
    rst $38
    nop
    ret z

    sub e
    db $e4
    adc h
    ld [c], a
    ld e, b
    inc h
    add l
    rst $38
    nop
    nop
    inc l
    ld [hl], $05
    ld b, a
    pop hl
    ld c, h
    and [hl]
    ld a, e
    rst $38
    ld a, [bc]
    daa
    rst $20
    ld h, l
    jr @+$26

    nop
    inc d
    ld d, h
    nop
    ld c, l
    nop
    nop
    nop
    rst $38
    pop hl
    ld [c], a
    db $e3
    db $e4
    call c, $a0dd
    sbc $f3
    rst $18
    ldh [$f6], a
    rst $38
    db $ec
    pop af
    ld [$eceb], a
    and b
    ccf
    push hl
    and $e7
    and b
    add sp, -$17
    or $ff
    db $ec
    pop af
    db $fc
    sbc c
    rst $38
    ld [c], a
    rst $20
    sub $d7
    and b
    db $e3

jr_06d_442c:
    db $e4
    and b
    ld [hl], c
    and b
    adc $ea
    sbc c
    rst $38
    ld [c], a
    and $a0
    ret c

    reti


    jp Jump_06d_60e0


    cp e
    ldh [$ce], a
    jp hl


    add l
    rst $38
    ld [c], a
    ld [c], a
    ret


    ld [c], a
    jp c, $53db

    ldh [$c6], a
    cp e
    ldh [$d0], a
    pop de
    nop
    rst $38
    add l
    db $ec
    add h
    pop hl
    push af
    or $8c
    ld b, h
    ldh [$bb], a
    pop hl
    jp nc, Jump_000_00d3

    rst $38
    db $ec
    db $ec
    add h
    pop hl
    sbc a
    rst $38
    and d
    sbc l
    sbc l
    sbc l
    sbc a
    and b
    db $ed
    xor $8f
    call nc, $efd5
    and b
    or $c0
    nop
    rst $38
    ld h, a
    and $d0
    rst $38
    pop de
    and b
    and b
    sbc a
    sbc h
    or d
    ld b, [hl]
    ld b, [hl]
    rst $38
    or d
    sbc h
    sbc a
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    jr nc, @-$04

    pop bc
    nop
    rst $38
    add l
    db $e3
    adc [hl]
    ret nz

    jp nc, $c1d3

    db $e3
    cp $e0
    dec a
    sbc h
    ld a, h
    ldh [$f5], a
    or $d8

Jump_06d_44a2:
    reti


    nop
    rst $38
    ld h, a
    db $e4
    or l
    and b
    ld c, [hl]
    db $e3
    sbc [hl]
    jp nz, $b2e1

    or d

Call_06d_44b0:
    cp e
    pop hl
    sbc h
    ld de, $b59f
    pop bc
    nop
    rst $38
    add l
    call nz, Call_06d_4ea0
    ld [c], a
    ret nz

    ldh [$c2], a
    ldh [$1f], a
    or d
    ld a, c
    ld a, d
    ld a, h
    ld a, l
    cp a
    pop hl
    nop
    rst $38
    add l
    add $ec
    dec c
    ret nz

    add l
    ret nz

    sbc [hl]
    ld b, [hl]
    call nz, $7be0
    ld a, e
    adc a
    ccf
    ld c, b
    ld c, b
    ld a, a
    ld a, l
    ld b, [hl]
    sbc [hl]
    db $76
    pop bc
    nop
    rst $38
    db $fc
    nop
    db $e4
    ret z

    and c
    sbc a
    sbc h
    ld b, [hl]
    ld a, c
    ld a, [hl]
    cp l
    rst $38
    ld sp, $512b
    ld e, [hl]
    ld d, [hl]
    ld b, l
    add c
    ld b, [hl]
    pop hl
    and c
    cp c
    and b
    nop
    rst $38
    nop
    push hl
    ld b, h
    pop bc
    sbc h
    ld b, [hl]
    ld b, [hl]
    ld a, a
    add b
    ld b, l
    ld l, $20
    jr nz, jr_06d_4537

    ld d, d
    ret nz

    pop hl
    pop bc
    sbc [hl]
    ld [hl], h
    and b
    nop
    rst $38
    add l
    and h
    ret z

    and b
    ld b, h
    pop bc
    ld a, c
    adc l
    rst $38
    add hl, sp
    ld hl, $2026
    jr nz, jr_06d_4552

    ld d, [hl]
    add e
    pop bc
    add h
    ld b, b
    ldh [$74], a
    and b
    nop
    rst $38
    ld a, [bc]
    and d
    rrca
    and c
    and c
    ld b, [hl]
    cp $42

jr_06d_4537:
    ldh [$ae], a
    ld a, [hl-]
    dec [hl]
    inc a
    dec hl
    ld sp, $37bd
    add e
    add [hl]
    add l
    ld a, [hl]
    pop bc
    push af
    or $00
    rst $38
    ld h, a
    and d
    db $fc
    jp z, $0380

    ld [c], a
    or d
    xor a

jr_06d_4552:
    ld l, h
    ld [hl], d
    ld [hl], c
    adc b
    cpl
    adc b
    adc b
    add a
    add l
    cp c
    and b
    sbc [hl]
    ei
    add b
    db $76
    add b
    ld a, [c]
    nop
    rst $38
    db $ec
    jp z, $c480

    jp nz, Jump_000_3745

    jr c, jr_06d_45e1

    ld h, e
    ld l, [hl]
    ld [hl], $ff
    and e
    ld a, d
    and b
    xor l
    and c
    and b
    and b
    nop
    rst $38
    cp $46
    and c
    sbc [hl]
    or d
    ld b, [hl]
    add b
    ld b, [hl]
    add hl, sp
    dec [hl]
    rlca

Jump_06d_4586:
    ld l, h
    ld l, l
    inc a
    ret nz

    and e

jr_06d_458b:
    cp a
    and b
    ei
    add h
    nop
    rst $38
    sbc c

Jump_06d_4592:
    pop hl
    ld a, $c0
    ldh [$82], a
    add e
    ld a, [hl-]
    ld l, h
    ld l, a
    add c
    ldh [$3d], a
    and e
    push bc
    sbc a
    xor l
    and e
    and b
    nop
    db $fd
    sub h
    add h
    add b
    ldh [$85], a
    add a
    ld e, a
    ld [hl], c
    ld [hl], b
    ld l, [hl]
    ld a, [hl-]
    ld b, l
    nop
    and h
    and b
    inc [hl]
    add d
    ld [hl], b
    nop
    sbc $46
    and h
    inc b
    pop bc
    ld b, c
    ldh [$35], a
    dec [hl]
    add hl, sp
    jp $d0e4


    ld a, h
    ld h, d
    nop
    cp a
    inc d
    ld h, b
    dec b
    pop bc
    sbc l
    pop bc
    pop hl
    ld b, l
    ld a, [hl-]
    rrca
    dec [hl]
    dec [hl]
    inc a
    ld b, h
    adc b
    and b
    adc b
    jp nz, Jump_06d_6137

    nop
    cp a
    pop hl

jr_06d_45e1:
    db $ec
    dec d
    ld h, c
    ld a, [bc]
    add d
    add h
    ret nz

    add c
    ldh [$36], a
    ld b, l
    ld b, [hl]
    rlca
    sbc [hl]
    push af
    or $88
    pop bc
    scf
    ld h, b
    nop
    cp l
    ld d, l
    ld h, c
    ld b, $c2
    sbc $c1
    pop hl
    ld [hl], $ac
    dec [hl]
    dec sp
    pop bc
    pop hl
    or d
    sbc [hl]
    jr nz, jr_06d_458b

    ld h, h
    nop
    ld a, a
    dec d
    ld h, h
    add a
    and b
    inc b
    pop hl
    xor l
    rlca
    ret nz

    jp $83c0


    or d
    sbc [hl]
    adc b
    jp Jump_06d_5f00


    adc a
    ld b, c
    ld [$c0a2], sp
    ld [c], a
    rst $08
    pop bc
    rst $08
    rst $00
    ld h, [hl]
    ld b, c
    ld b, c
    nop
    ld e, a
    adc a
    ld b, e
    pop bc
    db $e4
    xor [hl]
    or d
    inc bc
    adc $ce
    ld b, $c2
    ret


    ld h, c
    db $fc
    ld [hl+], a
    nop
    ld e, a
    adc a
    ld b, e
    add d
    ld [c], a
    cp a
    or d
    xor a
    or d
    adc $cc
    rst $08
    inc bc
    ld h, c
    sbc [hl]
    ret nz

    jp $c520


    pop bc
    nop
    ccf
    nop
    db $e3
    dec c
    ld h, c
    ld c, h
    ld h, c
    scf
    adc $e1
    set 0, b
    db $e4
    ld a, [hl]
    ld [hl+], a
    add l
    ld h, l
    nop
    jp c, $d1d0

    push af
    db $fd
    or $0d
    ld h, c

jr_06d_466b:
    ld [hl], $cf
    call Call_000_35ce
    rst $08
    add c
    rst $08
    ld b, [hl]
    and c
    ret


    ld b, e
    ld d, e

jr_06d_4678:
    inc l
    inc d
    dec [hl]
    ld [$90a2], sp
    ld b, b
    rst $08
    cpl
    set 1, h
    rst $08
    add hl, sp
    adc c
    ld b, e
    sbc [hl]
    ld a, [hl]
    ld [hl+], a
    ld d, e
    inc l
    ld b, b
    inc d
    inc sp
    ld [$50a4], sp
    ld b, b
    dec b
    ldh [rWX], a
    add b

jr_06d_4697:
    ld b, $42
    and c
    rlca
    jr nz, @-$06

    ld d, e

Jump_06d_469e:
    ld l, $14
    inc sp
    ld [$b2a5], sp
    ld [hl], $cc
    adc $37
    jr nc, jr_06d_466b

    db $e4
    inc c
    add e
    ld d, e
    dec l
    inc d
    dec [hl]
    sbc l
    and d
    ld [$41a0], sp
    ldh [$83], a
    call z, Call_000_0dce
    add e
    ld b, a
    jr nz, jr_06d_46c6

    inc hl
    nop

Call_06d_46c1:
    rst $38
    ret z

    and [hl]
    or d
    rlca

jr_06d_46c6:
    scf
    jr c, jr_06d_4697

    ret nz

    db $e4
    adc [hl]
    ld h, c
    inc c
    add e
    nop
    db $fd
    res 0, h
    ld e, [hl]
    add hl, bc
    and d
    dec [hl]
    dec [hl]
    rst $08
    call $c206
    sbc h
    adc b
    nop
    db $e3
    sub $d7
    ret c

    ld d, c
    nop
    ld l, [hl]
    res 0, l
    ld b, [hl]
    ld b, [hl]
    ld b, b
    dec b
    jr c, jr_06d_4678

    add c
    inc a
    ld b, [hl]
    jp Jump_000_01cd


    ret c

    ld d, c
    inc d
    dec l
    daa
    ld b, c
    ld a, $d5
    ld [bc], a
    ld b, l
    ld d, b
    ld c, b
    ld c, c
    ld c, c
    ld a, [bc]
    add b
    adc e
    ld h, b
    jr nc, @+$0b

    and e
    ld c, e
    add d
    ld d, e
    ld c, [hl]
    inc d
    ld c, e
    push af

jr_06d_4710:
    or $27
    nop
    sub b
    ld h, d
    cp a
    ld b, l
    ld b, a
    ld e, l
    ld d, h
    ld d, h
    ld d, h
    jp z, Jump_000_3960

    ldh [rOBP0], a
    and c
    add a
    and [hl]
    nop
    call c, Call_000_2214
    ld d, [hl]
    ld [bc], a
    ld b, h
    ld d, h
    ld d, d
    add c
    ld [hl], $40
    pop hl
    bit 4, b
    jp nc, $9101

    jr nz, jr_06d_4710

    inc sp
    nop
    ld c, e
    ret nc

    ld [hl], l
    pop de
    ld b, c
    db $e4
    ld b, l
    jp Jump_000_35e2


    jr c, jr_06d_477d

    bit 4, b
    nop
    rst $00
    and d
    add l
    or b
    nop
    ld [hl], b
    db $eb
    ld hl, $a1c9
    add l
    pop bc
    jp nz, $12e1

    ld b, h
    and b

jr_06d_475a:
    db $d3
    ld [hl+], a
    ret c

    inc de
    nop
    jr z, jr_06d_47b3

    ld b, e
    sub d
    ld b, [hl]
    dec [hl]
    sub e
    inc h
    ld b, [hl]
    db $10
    ld c, e
    ld h, l
    ret c

    ld [de], a
    add l
    ret


    db $eb
    ld [hl+], a
    and c
    ret nc

    ld b, c
    sub d
    ld b, b
    pop bc
    and $81
    ld b, [hl]
    ld c, e
    ld h, h
    nop

jr_06d_477d:
    ei
    db $10
    ld h, c
    ld c, l
    ld h, c
    push bc
    and d
    inc de
    ld b, c
    ld a, [hl-]
    nop
    jp z, $c984

    ld h, b
    ld c, h
    ld h, b
    ret nc

    ld hl, $fe00
    sub b

jr_06d_4793:
    ld b, e
    sub $40
    add c
    pop hl
    inc c
    ld c, b
    ret nz

    ret nz

    db $e3
    sbc h
    sbc a
    jp z, Jump_06d_5d60

    ld d, $85
    add hl, bc
    sub [hl]
    ld bc, $d700
    ld b, c
    sub h
    jr nz, @-$77

    pop bc
    pop bc
    push hl
    jp z, Jump_06d_5d61

jr_06d_47b3:
    ld d, $00
    inc h
    xor b
    ld b, c
    ld a, [de]
    sub e
    jr nz, jr_06d_475a

    ld d, c
    ld h, c

jr_06d_47be:
    ld b, [hl]
    add hl, sp
    jp nz, $89e2

    add l
    ld a, e
    jr nz, jr_06d_47cf

    ld e, l
    jr jr_06d_47ca

jr_06d_47ca:
    dec h
    sub c
    ld b, d
    sbc l
    rlca

jr_06d_47cf:
    and c
    ld d, $40
    add h
    push hl
    ld c, d

jr_06d_47d5:
    add c
    db $10
    inc d
    jr z, jr_06d_47da

jr_06d_47da:
    reti


    sub c
    ld b, [hl]
    dec d
    add b
    xor [hl]
    dec b
    and $89
    add b
    inc d
    jr z, jr_06d_4793

    nop
    jp c, Jump_06d_4152

    ld b, l
    ld b, c
    ld a, [bc]
    ld [c], a
    xor a
    dec b
    rst $20
    push af
    ld h, c
    or $14
    jr z, jr_06d_47f8

jr_06d_47f8:
    push de
    xor [hl]
    ld hl, $e2c1
    ld [hl], $a6
    ld de, $8ca1
    ld b, l
    push hl
    inc c
    add b
    ret nc

    pop de
    add l
    ld hl, sp+$00
    ld h, $2f
    ld [bc], a
    and c
    ld c, $d9
    nop
    ld h, d
    and a
    ld h, [hl]
    cp a
    push hl
    ld d, b
    ld h, b
    ld b, e
    nop
    jr nc, jr_06d_47be

    ld [hl], b
    add l
    sub $00
    ld b, [hl]
    adc d
    add e
    pop bc
    ldh [$67], a
    and e
    ld l, b
    cp a
    db $e3
    inc de
    sbc h
    sbc l
    adc a
    ld h, b
    jr nc, jr_06d_47d5

    and b
    add l
    sub $00
    ld b, l
    bit 4, h
    cp a
    ld b, d
    xor b
    xor c

jr_06d_483d:
    ld l, h
    dec [hl]
    dec [hl]
    cp a
    db $e3
    and c
    ldh [$15], a
    add d
    rrca
    ld h, d
    add l
    rst $10
    nop
    add hl, hl
    sub e
    jr nz, jr_06d_4894

    ld [hl], $6e
    ccf
    ld l, a
    ld l, h
    dec [hl]
    and e
    xor d
    xor e
    dec c
    add b
    ld d, $21
    cp h
    ld a, [bc]
    ld sp, hl
    nop
    ld l, $d0
    pop de
    sbc a
    sbc h
    cp a
    ld [c], a
    ld l, h
    rra
    ld l, a
    ld l, [hl]
    ld [hl], $45
    or d
    ld d, $23
    add l
    db $fc
    nop
    add sp, $00
    and $21
    cp a
    db $e3
    pop bc
    pop hl
    ld d, $24
    add l
    db $fd
    nop
    rst $20
    ld d, c
    inc hl
    ld d, c
    nop
    inc bc
    ld [hl], $6e
    add d
    pop hl
    sub c
    ld b, d
    ld a, [bc]
    jp c, $cc00

    and $23
    ld a, [hl]
    ld [c], a

jr_06d_4894:
    dec de
    ld [hl], $45
    adc e
    and b
    ret nc

    pop de
    adc a
    sub a
    nop
    jp nc, Jump_06d_4586

    ld bc, $ff9d
    ldh [$08], a
    ret nz

    add hl, sp
    ld h, b
    add l
    rst $38
    nop
    inc l
    ld e, l
    ld b, c
    ld [hl], l
    add e
    nop
    ld d, c
    ld h, h
    nop
    rst $38
    nop
    xor e
    ldh [rNR43], a
    jr jr_06d_483d

    ld [hl-], a
    db $e4
    nop
    rst $38
    nop
    ld hl, $0000
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
    ld bc, $2c00
    rlca
    ld bc, $2f01
    rlca
    ld bc, $2b02
    ld [$0301], sp
    ld l, $09
    ld bc, $2f04
    add hl, bc
    ld bc, $3005
    add hl, bc
    ld bc, $2c06
    ld a, [bc]
    ld bc, $2d07
    ld a, [bc]
    ld bc, $2e08
    ld a, [bc]
    ld bc, $2f09
    ld a, [bc]
    ld bc, $2b0a
    dec bc
    ld bc, $280b
    ld c, $01
    inc c
    ld a, [hl+]
    db $10
    ld [bc], a
    dec c
    dec hl
    db $10
    ld bc, $360e
    db $10
    ld bc, $2f0f
    ld de, $1001
    jr nc, @+$13

    ld bc, $3111
    ld de, $1201
    dec [hl]
    ld de, $1301
    dec h
    ld [de], a
    ld bc, $2e14
    ld [de], a
    ld bc, $2f15
    ld [de], a
    ld bc, $3016
    ld [de], a
    ld bc, $2517
    inc de
    ld bc, $2e18
    inc de
    ld bc, $2519
    inc d
    ld bc, $221a
    rla
    ld bc, $211b
    jr jr_06d_4956

    inc e

jr_06d_4956:
    dec l
    jr @+$04

    dec e
    ld h, $19
    ld bc, $281e
    add hl, de
    ld bc, $291f
    add hl, de
    ld bc, $2d20
    add hl, de
    ld bc, $2721
    ld a, [de]
    ld bc, $2822
    ld a, [de]

Jump_06d_4970:
    ld bc, $2923
    ld a, [de]
    ld bc, $2424
    dec de
    ld bc, $2825
    dec de
    ld bc, $2226
    inc e
    ld [bc], a
    daa
    inc hl
    inc e
    ld bc, $2428
    inc e
    ld bc, $2829
    inc e
    ld bc, $202a
    dec e
    ld bc, $212b
    dec e
    ld bc, $222c
    dec e
    ld bc, $232d
    dec e
    ld bc, $282e
    dec e
    ld bc, $1f2f
    ld e, $01
    jr nc, @+$2a

    ld e, $01
    ld sp, $1f1e
    ld bc, $1f32
    rra
    ld bc, $2533
    rra
    ld bc, $2634
    rra
    ld bc, $2735
    rra
    ld bc, $1e36
    jr nz, jr_06d_49c2

    scf

jr_06d_49c2:
    rra
    jr nz, @+$03

    jr c, jr_06d_49eb

    jr nz, jr_06d_49ca

    add hl, sp

jr_06d_49ca:
    dec h
    jr nz, jr_06d_49ce

    ld a, [hl-]

jr_06d_49ce:
    ld e, $21
    ld bc, $233b
    ld hl, $3c01
    inc h
    ld hl, $3d01
    dec e
    ld [hl+], a
    ld bc, $1e3e
    ld [hl+], a
    ld bc, $223f
    ld [hl+], a
    ld bc, $2340
    ld [hl+], a
    ld bc, $2841

jr_06d_49eb:
    ld [hl+], a
    ld bc, $1c42
    inc hl
    ld bc, $2243
    inc hl
    ld bc, $2344
    inc hl
    ld bc, $2745
    inc hl
    ld bc, $1746
    inc h
    ld bc, $1847
    inc h
    ld bc, $2248
    inc h
    ld bc, $1649
    dec h
    ld bc, $224a
    dec h
    ld bc, $224b
    add hl, hl
    ld bc, $154c
    ld a, [hl+]
    ld bc, $1e4d
    ld a, [hl+]
    ld bc, $1c4e
    dec hl
    ld bc, $1d4f
    dec hl
    ld bc, $1e50
    dec hl
    ld bc, $1251
    inc l
    ld bc, $1b52
    inc l
    ld bc, $1c53
    inc l
    ld bc, $1d54
    inc l
    ld bc, $1255
    dec l
    ld bc, $1356
    dec l

Jump_06d_4a40:
    ld bc, $1a57
    dec l
    ld bc, $1b58
    dec l
    ld bc, $1159
    ld l, $01
    ld e, d
    ld [de], a
    ld l, $01
    ld e, e
    inc de
    ld l, $01
    ld e, h
    db $10
    cpl
    ld bc, $115d
    cpl
    ld bc, $125e
    cpl
    ld bc, $0f5f
    jr nc, jr_06d_4a66

    ld h, b

jr_06d_4a66:
    db $10
    jr nc, jr_06d_4a6a

    ld h, c

jr_06d_4a6a:
    ld de, $0130
    ld h, d
    ld [de], a
    jr nc, jr_06d_4a72

    ld h, e

jr_06d_4a72:
    ld a, [de]
    jr nc, jr_06d_4a76

    ld h, h

jr_06d_4a76:
    rra
    jr nc, jr_06d_4a7a

    ld h, l

jr_06d_4a7a:
    rrca
    ld sp, $6601
    ld [de], a
    ld sp, $6701
    inc de
    ld sp, $6801
    ld e, $31
    ld bc, $1369
    ld [hl-], a
    ld [bc], a
    ld l, d
    inc d
    inc sp
    ld bc, $196b
    inc [hl]
    ld bc, $186c
    dec [hl]
    ld bc, $156d
    add hl, sp
    ld bc, $136e
    dec sp
    rst $38
    rst $38
    rst $38
    xor e
    ld c, d
    ld a, [de]
    ld c, [hl]
    ld a, e
    ld d, d
    sbc d
    ld d, d
    sbc l
    ld c, $ff
    ld [c], a
    dec c
    dec c
    dec c
    rst $30
    db $e3
    or $eb
    dec l
    db $10
    add sp, -$20
    db $fd
    db $e3
    ld [c], a
    pop af
    adc $e4
    ld c, $c5
    pop hl
    pop bc
    db $e3
    or $ec
    ld bc, $c02d
    and $d8
    ld hl, sp-$5d
    ld sp, hl
    add b
    db $e4
    sbc l
    ld [c], a
    ld a, e
    or $a3
    ld hl, sp+$01
    dec l

jr_06d_4ad9:
    ret z

    push hl
    ld e, l
    or $28
    ld hl, sp+$00
    ld [c], a
    sbc h
    ld_long $ff00, a
    nop
    db $ec
    ret nz

    ld b, l
    ld [c], a
    nop
    rst $38
    and e
    or $82
    ret


    nop
    rst $38
    ld a, e
    adc $4d
    ld c, l
    nop
    inc h
    jp $e0f6


    nop
    rst $38
    nop
    pop de
    ld b, c
    db $e4
    nop
    rst $38
    nop
    db $d3
    ret nz

    rst $20
    ld [$ff00], sp
    ld a, e
    or b

Jump_06d_4b0c:
    add d
    and h
    inc c
    ld a, d
    and c
    nop
    rst $38
    ld a, e
    or c
    ret


    ld [c], a
    jr nz, jr_06d_4ad9

    ldh [$59], a
    and [hl]
    nop
    rst $38
    or $8a
    ret nz

    ret nz

    ld c, l
    ret nz

    db $e3
    ld a, e

Jump_06d_4b26:
    ret c

    ld [bc], a
    nop
    or a
    ld c, l
    add b
    db $e4
    ld a, c
    call nz, $ff00
    add l
    jp hl


    ld b, e
    pop bc

jr_06d_4b35:
    cp [hl]
    ldh [rP1], a
    nop
    jp hl


    or $b3
    add l
    db $f4
    ld b, l
    add c
    pop bc
    ldh [rLCDC], a
    ld [c], a
    cp l
    add a
    ld a, e
    ld a, [c]
    nop
    ld a, [bc]
    db $ed

Call_06d_4b4b:
    adc d
    add [hl]
    ret nz

    push bc
    ld a, e
    cp d
    nop
    adc h
    ld b, a
    ldh [rLYC], a
    ld [c], a
    ret nz

    db $e4
    ld b, l
    dec l
    ld b, b
    jp $7b4d


    sub $85
    ld [hl], d
    ret nz

    db $ed
    ld l, l
    cp a
    pop hl
    ld hl, sp+$00
    rst $38
    jr jr_06d_4b35

    nop

Jump_06d_4b6d:
    db $e4
    dec c
    ld l, l
    inc c
    ld c, l
    dec l
    and e
    ld l, l
    ld l, e
    ld a, [hl]
    db $e4
    nop
    rst $38
    sub h
    rst $00
    ld c, l
    adc l
    ld [c], a
    ld l, l
    rst $38

Jump_06d_4b81:
    ld l, e
    inc c

jr_06d_4b83:
    ld l, e
    dec c
    ld l, e
    ld l, e
    ld l, e
    ld c, e
    ret nz

    or e
    ld h, l
    ld [hl], c
    adc [hl]
    ld a, [bc]
    xor [hl]
    res 4, c
    ld c, [hl]
    ldh [$3c], a
    jp nz, Jump_06d_6b6d

    add b
    ret nz

    ldh [rIE], a
    db $e3
    ld sp, hl
    and e
    xor $86
    nop
    or d
    adc e
    add $c1
    ldh [$2b], a
    inc c
    adc d
    ldh [$86], a
    ldh [$4c], a
    inc l
    ret nz

    push hl
    ld l, h
    ret z

    cp $e7
    adc a
    adc h
    jr c, jr_06d_4b83

    and h
    adc c
    ldh [$c2], a
    ld [c], a
    ld c, h
    inc c
    inc c
    pop bc
    ld [c], a
    ld a, $e1
    nop
    ret nz

    jp hl


    pop af

Jump_06d_4bc9:
    xor d
    adc a
    ld l, e
    ld c, [hl]
    ld h, e
    pop bc
    ld [c], a
    add h
    add b
    dec b
    pop hl
    di
    ld [c], a
    nop
    ld b, b
    pop hl
    xor h
    and e
    db $ec
    add c
    ld h, l
    ld l, d
    adc a
    adc c

Call_06d_4be1:
    ld d, e
    ld b, d
    ld c, d
    and c
    cp a
    db $e3
    inc c
    inc b
    push hl
    db $fd
    pop bc
    ld c, l
    dec l
    push hl
    and c
    ld h, $a1
    xor b
    add c
    daa
    ld b, [hl]
    db $f4
    adc a
    ld l, e
    adc a
    inc hl
    ld l, l
    adc c
    ld [c], a
    dec c
    dec c
    ld c, h
    inc l
    dec a
    dec hl
    add d
    db $e4
    ld c, h
    inc c
    ld l, h
    ld l, e
    and [hl]
    and d
    add sp, -$80
    ret nz

    ld l, d
    daa
    nop
    rst $28
    pop bc
    db $e3
    ld b, d
    db $e4
    add l
    pop bc
    inc sp
    db $e4
    inc c
    ld l, e
    add c
    inc c
    rst $38
    rst $20
    ret nz

    res 1, a
    ld c, e
    db $f4
    ld [bc], a
    ret


    db $e3
    add l
    ld h, b
    ld l, h
    nop
    cp c
    ld [c], a
    cp c
    ret nz

    ld a, e
    pop bc
    ld h, d
    rst $20
    ld [hl], a
    ret z

    nop
    db $ed
    inc bc
    jp nz, $c1c5

    ld h, a
    dec hl
    dec bc
    dec hl
    nop
    ld [c], a
    dec a
    call nz, Call_06d_4b4b
    db $ed
    and l
    ld h, b
    ld sp, hl
    and [hl]
    adc c
    inc bc
    nop
    db $ec
    add b
    db $e3
    ret nz

    ld [c], a
    ld l, e
    ld a, [bc]
    ld a, a
    pop hl
    ld [bc], a
    add e
    pop hl
    ld c, e
    add b
    and c
    xor [hl]
    and b
    and [hl]
    and d
    dec sp
    ret


    nop
    rst $08
    ld b, e
    jp $301e


    nop
    ld c, e
    ld l, e
    ld a, [bc]
    ld a, [bc]
    jp $ff40


    and d
    xor h
    jp nz, Jump_06d_57c0

    ld [bc], a
    ld a, a
    pop bc
    cp a
    xor d
    nop
    ld c, e
    rrca
    ld h, d
    add e

Jump_06d_4c81:
    call nz, Call_000_2a0a
    ld bc, $f72a
    and l
    adc [hl]
    jp nz, $67bd

    ld [hl], c
    ld c, e
    adc a
    ld c, [hl]
    ld b, d
    ret nz

    and c
    ld [c], a
    ld h, c
    dec l
    ld hl, sp-$3e
    cp b
    and c
    push bc
    and d
    db $76
    ld [hl+], a
    dec c
    dec l
    rst $38
    pop hl
    nop
    nop
    cp c
    ld b, [hl]
    ld h, e
    sub e
    push bc
    cp h
    ldh [rLY], a
    add e
    pop af
    db $e4
    nop
    sbc e
    and e
    and d
    inc c
    ld b, c
    and h
    dec sp
    jp Jump_000_2d2d


    scf
    and d
    add h
    and b
    ld a, [c]
    ld b, d
    add l
    db $eb
    nop
    nop
    cpl
    adc $01
    ld d, l
    ld h, b
    ld c, d
    and [hl]
    rst $30
    add e
    ld a, b
    add b
    ld b, b
    ld h, h
    xor [hl]
    ld [c], a
    nop
    ld a, e
    db $ec
    nop
    call Call_06d_6014
    pop bc
    rst $20
    cp a
    push hl
    ld [bc], a

jr_06d_4cdf:
    add d
    add hl, sp
    ld b, h
    nop
    ld sp, hl
    nop
    rla
    ld [hl+], a
    ld b, e
    ld b, e
    dec b
    db $e3
    cp a
    add l
    add d
    ld h, e
    ld [hl], $02
    nop
    ld sp, hl
    jr z, @-$3a

    nop
    sbc b
    add d
    jr c, jr_06d_4cdf

    ld sp, $82a1
    add c
    ld sp, hl
    daa
    nop
    dec sp
    ccf
    ld h, e
    sub h
    and e
    inc b

Call_06d_4d07:
    pop bc
    ret nz

    push de
    and e
    ld c, e
    add [hl]
    add d
    jp nz, Jump_000_00a3

    ld a, h
    ret nz

    push hl
    sbc h
    and e
    ld b, $b4
    add h
    dec hl
    dec hl
    rst $28
    add b
    ld b, l
    add [hl]
    nop
    ld a, [hl-]
    ret nz

    and $73
    and l
    ld [bc], a
    or c
    add e
    dec bc
    xor $80
    inc b
    add l
    nop
    ld e, d
    inc h
    xor b
    inc a
    ld b, c
    ld a, [hl-]
    jp nz, $c180

    ldh [$bf], a
    pop hl
    ld [hl], $a1
    nop
    ld e, a
    dec [hl]
    ld l, c
    inc sp
    pop bc
    ld b, h
    pop hl
    dec bc
    inc bc
    dec bc
    dec l
    ld a, [hl]
    pop hl
    add hl, sp
    jp $b600


    ld a, e
    db $ed
    ld a, [c]
    ld h, e
    pop bc
    ld [c], a
    add b
    cp e
    db $e4
    ld a, e
    ld l, $00

jr_06d_4d5a:
    ld [hl-], a
    sbc $c3
    rrca
    add l
    add d
    ld [c], a
    cp a
    ret nz

    dec hl
    ld b, e
    ld l, e
    ld c, e
    add b
    and $00
    dec sp
    ld [hl-], a
    ld h, a
    or h
    and d
    ld c, e
    add b
    db $e3
    nop
    cp e
    ld h, e
    sbc c
    ret z

    nop
    ld hl, sp-$66
    add hl, hl
    adc b
    ldh [rLCDC], a
    pop hl
    ld a, h

Call_06d_4d80:
    ld h, l
    nop
    inc a
    db $10
    db $ec
    ld b, $17
    ld h, d
    or h
    ld hl, $e147
    dec bc
    add d
    ld [c], a
    inc b
    ld h, e
    ret nz

    ld hl, $0008
    rst $38
    ld [hl], e
    dec h
    pop bc
    inc bc
    ld c, e
    ld a, [hl]
    ld [bc], a
    ld c, d
    dec hl
    nop
    rst $38
    ret nz

    db $e4
    ld c, $00
    ret nz

    ld l, e
    ld c, e
    dec hl
    inc bc
    call nz, $207c
    nop
    rst $38
    ld [hl], c
    jr z, jr_06d_4db2

jr_06d_4db2:
    or l
    inc hl
    add hl, sp
    ld h, d
    and h
    add h
    nop
    rst $38
    ld [hl], c
    ld h, $b1
    ld h, d
    rst $28
    ld hl, $01b1
    nop
    ld a, l
    ld b, c
    db $fd
    ld [hl+], a
    nop
    rst $38
    ccf
    ret z

    inc c
    and e
    ret nz

    ld [hl+], a
    adc d
    add hl, hl
    nop
    rst $38
    nop
    ld [hl-], a
    dec b
    jr c, jr_06d_4d5a

    ld c, c
    ld [hl+], a
    inc b
    add h
    nop
    rst $38
    ld [hl], c
    add hl, bc
    xor b
    inc h
    ld b, e
    db $e3
    nop
    ld d, e
    or b
    nop
    rst $30
    jr c, jr_06d_4e4e

    ld c, h
    ld h, a
    add l
    or b
    nop
    ei
    ld e, $47
    adc h
    add hl, hl
    nop
    nop
    rst $38
    ld a, e
    db $ed
    ld [hl], h
    and $85
    rlc b
    cp $52
    and h
    ld a, [bc]
    pop de
    nop
    rst $38
    nop
    ld [hl], c
    add l
    db $10
    pop bc
    jp $8541


    ld a, [c]
    nop
    rst $38
    ld [c], a
    rst $18
    ld a, e
    rst $38
    ld e, l
    ld hl, sp+$00
    nop
    nop
    rst $38
    pop hl
    ld [c], a
    db $e3
    db $e4
    call c, $a0dd
    sbc $8b
    rst $18
    ldh [$f6], a
    ldh a, [$a0]
    rst $38
    and $e2
    pop af
    adc $e2
    ld [$ebff], a
    db $ec
    and b
    push hl
    and $e7
    and b
    add sp, -$7f
    jp hl


    or $ef
    pop bc
    rst $20
    ld [c], a

jr_06d_4e40:
    pop af
    adc $e3
    add l
    push af
    ld [hl], c
    ld [c], a
    and b
    ld c, $7c
    db $e3
    sub $d7
    and b

jr_06d_4e4e:
    ld e, l
    or $85
    db $f4
    ld [hl], c
    db $e3
    push bc
    ld [c], a
    cpl
    and b
    and b
    ret c

    reti


    ld e, l
    or $e8
    nop
    db $fc
    push bc

Call_06d_4e61:
    ldh [rIF], a
    and b
    and b
    jp c, Jump_000_00db

    rst $38
    nop
    db $f4
    push bc
    ldh [$b8], a
    pop bc
    ld h, b
    nop
    rst $38
    nop
    db $f4
    ld a, [hl]
    jp $d85d


    nop
    ei
    ret nc

    pop de
    cp e
    pop bc
    jr jr_06d_4e40

    ret nz

    nop
    rst $38
    nop
    jp nc, $d3d2

    db $fd
    and c
    ret nz

    ret nz

    nop
    rst $38
    ld a, $00
    ret nc

    db $ed
    xor $d4
    push de
    rst $28
    ret nz

    jp nz, $ff00

    cp $7b
    or b
    and b
    ldh a, [$f1]
    ld a, [c]

Call_06d_4ea0:
    di
    db $f4
    sbc a
    rra
    ld de, $a09f
    push af
    or $00
    rst $38
    nop
    jp nc, $a0c6

    rlca
    sbc [hl]
    ld de, $bf9e
    and b
    nop
    rst $38
    nop
    or d
    add $a0
    ret nz

    pop hl
    ldh [$fa], a
    and d
    nop
    rst $38
    nop
    xor a
    add $a0
    add b
    pop hl
    jp c, $d0db

    ld h, c
    pop de
    or h
    add b
    nop
    rst $38
    add l
    adc d
    nop
    and c
    push af
    or $40
    ldh [$03], a
    push af
    or $77
    pop bc
    db $ec
    db $e4
    nop
    rst $38
    add l
    adc e
    nop
    pop hl
    ld [hl], a
    jp nz, $f518

    add d
    ld a, e
    xor $0a
    sub l
    sbc $df
    ld c, l
    pop hl
    ret nz

    call nz, $c277
    db $e3
    ret c

    reti


    nop
    rst $38
    ld a, [bc]
    add l
    adc c
    add c
    jp nc, $f5d3

    dec a
    or $c0
    call nz, $9fa0
    sbc l
    sbc a
    cp d
    add b
    nop
    rst $38
    and $7b
    ld h, l
    ret c

    reti


    call nz, $c0a3
    call nz, $9c9f
    or d
    ld sp, $fa9c
    and c
    nop
    rst $38
    ld [hl], c
    ld h, h
    jp c, $c4db

Jump_06d_4f26:
    and d
    ld b, b
    ld h, b
    rst $38
    sbc a
    sbc h
    ld de, $a29c
    sbc h
    ld b, [hl]
    or d
    ret c

    cp a
    pop hl
    di
    ld h, d
    nop
    rst $38
    sub $d7
    adc a
    ret nz

    sbc a
    and d
    ld sp, hl
    sbc l
    ld c, h
    ldh [$86], a
    ldh [rDMA], a
    ld de, $b246
    ld b, [hl]
    ld [bc], a
    rst $38
    ldh [$b2], a
    ld sp, hl
    and d
    ld a, e
    adc $0a
    ld [hl], b
    call z, Call_06d_4e61
    ldh [$8d], a
    ldh [rIF], a
    sbc l
    sbc l
    sbc h
    ld b, [hl]
    ret nz

    ldh [rIE], a
    db $e3
    ld sp, hl
    and e
    dec hl
    add e
    ldh [rP1], a
    push de
    inc c
    jp nz, Jump_06d_6091

    pop bc
    pop hl
    adc e
    ld [c], a
    ld b, [hl]
    ld b, [hl]
    ld [de], a
    ld bc, $c012
    push hl
    ld sp, hl
    and e
    ld a, [c]
    ld b, b
    ld h, a
    ld c, c
    adc a
    ld c, [hl]
    sub [hl]
    and c
    ld c, d
    ldh [$3e], a
    ld c, l
    pop hl
    xor [hl]
    ld b, [hl]
    ld [de], a
    inc de
    inc de
    pop bc
    ld [c], a
    ld a, $e1
    ret nz

    ld sp, hl
    and h
    dec l
    ld h, d
    xor [hl]
    ld b, b
    and d
    ld b, h
    adc a
    ld l, [hl]
    dec c
    add c
    sbc [hl]
    xor [hl]
    adc $0e
    ld [c], a
    xor a

jr_06d_4fa4:
    or d
    ld de, $e105
    ld bc, $46e2
    ld b, [hl]
    add c
    and c
    ld [hl], b
    add e
    dec l
    ld h, d
    jp hl


    ld b, d
    ld [c], a
    ld [hl+], a
    adc a
    ld c, h
    dec c
    add e
    sbc [hl]
    dec b
    xor a
    call $b2c3
    inc b
    push hl
    cp a
    pop bc
    ld a, $c0
    or b
    jr nz, jr_06d_5004

    pop bc
    ret nc

    xor [hl]
    ld b, d
    ld [hl-], a
    jp $ed00


    dec c
    add e
    sbc h
    adc c
    ld [c], a
    or d
    or d
    jr jr_06d_4fde

    pop hl
    ld [hl], l
    ld [c], a
    scf

jr_06d_4fde:
    ldh [rNR12], a
    ld b, [hl]
    or c
    ret nz

    cp $e2
    cp b
    ld [c], a
    add b
    nop
    db $f4
    call c, $02a1
    db $e3
    add b
    ret nz

    add l
    pop bc
    dec sp
    ldh [rSTAT], a
    pop bc
    ld de, $f5a0
    pop bc
    cp $e5
    ret nz

    jp hl


    adc a
    dec l
    sub h
    jr nz, jr_06d_4fa4

    db $10

jr_06d_5004:
    ret nz

    or d
    rra
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    add h
    ret nz

    cp c
    pop hl
    add d
    ld [c], a
    ld b, b
    ccf
    ldh [$80], a
    add sp, -$58
    ld hl, $22a4
    adc a
    dec l
    adc $61
    or d
    sub c
    and b
    ccf
    add b
    ld b, l
    inc l
    ld a, [hl+]
    ld a, a
    ld a, l
    ld a, a
    pop hl
    dec a
    push bc
    ld l, h
    nop
    db $e3
    ld e, [hl]
    jp nz, $e4e3

    xor b
    ld hl, $d9d8
    sbc [hl]
    nop
    ld hl, sp-$71
    dec c
    adc $61
    ret nz

    ld [c], a
    ld l, $20

jr_06d_5043:
    ld a, [hl+]
    ld c, e
    add c
    nop
    inc bc
    pop bc
    add e
    db $e3
    pop bc
    jp nz, Jump_000_00f7

    ei
    and h
    xor b
    ld hl, $21a4
    nop
    rst $08
    db $fc
    adc $60
    add [hl]
    pop bc
    add b
    ld a, [hl+]
    ld a, [hl+]
    ld c, e
    ld h, b
    adc h
    add hl, bc
    ld a, l
    rst $38
    and e
    add $c1
    sbc a
    ld a, l
    ld h, b
    ld [hl-], a
    ld hl, $456b
    nop
    di
    db $fc
    ret nc

    ld bc, $e0c0
    ld b, [hl]
    or d
    add d
    add e
    ld d, h
    ld d, h
    xor a
    ld d, e
    or d
    ld a, a
    ld a, l
    cp b
    and d
    and c
    adc c
    db $e4
    jp c, $dbc7

    sbc $df
    ld l, e
    ld b, d
    nop
    ld [hl], l
    sub l
    ld bc, $9c9f
    db $fd
    xor [hl]
    sub c
    add b
    add l
    add a
    adc b
    adc c
    add e
    ld b, [hl]
    dec c
    xor [hl]
    cp a
    pop hl
    or d
    xor a
    cp $60
    db $f4
    inc hl
    ld h, a
    ld h, l
    nop
    or [hl]
    ld hl, sp+$01
    ld [c], a
    ld c, l
    pop bc
    pop bc
    add b
    add l
    add [hl]
    add e
    xor a
    add e
    ld b, c
    add h
    cp c
    and c
    inc bc
    add b
    jr nc, jr_06d_5043

    nop
    sbc e
    add sp, -$5e
    and c
    ld c, l
    jp nz, Jump_06d_4b0c

    add c
    ld a, h
    ldh [$87], a
    add l

Call_06d_50cd:
    ld a, b
    and d
    add h
    add $00
    sbc h
    adc $01
    nop
    add d
    and e
    ld c, e
    add e
    ld a, d
    add e
    inc bc

jr_06d_50dd:
    add b
    jp nz, Jump_06d_6362

    add b
    nop
    sbc h
    pop bc
    add d
    add b
    add d
    add h
    dec a
    and e
    or h
    push hl
    cp e
    inc hl
    ld a, h
    ld b, h
    nop

jr_06d_50f2:
    ld d, [hl]
    adc $03
    sbc a
    nop
    rla
    and d
    ei
    add c
    pop bc
    and $82
    add b
    adc b
    add h
    or [hl]
    jr nz, jr_06d_5104

jr_06d_5104:
    rst $30
    ld a, [bc]
    ld h, l
    ld [$81df], sp
    jr c, jr_06d_50f2

    inc sp
    add b
    or d
    add d
    add c
    cp c
    jr nz, jr_06d_50dd

    and b
    dec l
    ld bc, $0000
    add hl, sp
    sub e
    nop
    sbc c
    and d
    rst $30
    ret nz

    ld a, e
    pop hl
    cp [hl]
    add e
    ld [hl], d
    ld h, b
    cp h
    and d
    ret nz

    dec l
    inc bc
    nop
    ld e, l
    ld [c], a
    ld h, d
    cp b
    ld h, c
    ld [hl], e
    pop bc
    ld a, [$aec3]
    ld b, [hl]
    rlca
    ld b, l
    ld b, c
    ld b, l
    db $fd
    ld h, b
    ld l, c
    ld b, h
    nop
    ld a, [hl-]
    inc hl
    and c
    ld c, [hl]
    dec h
    ld a, h
    or h
    add b
    or a
    ld h, d
    xor a
    ld b, l
    ld [hl], $a6
    ld [hl], $bf
    pop hl
    ret nz

    ei
    ld hl, $5c00
    ld [c], a
    ld h, c
    ld c, [hl]
    inc h
    ei
    jp Jump_06d_40b4


    ld b, l
    ld [hl], $7f
    ld h, d
    and a
    ld h, [hl]
    ld [hl], $45
    or d
    and c
    adc e
    ld h, d
    ldh [rP1], a
    ld e, e
    or $45
    sbc e
    add d
    or l
    ld b, e
    pop bc
    ldh [$67], a
    and e
    ld l, b
    ld [bc], a
    cp a
    ldh [$9e], a
    cp e
    inc hl
    nop
    ld e, c
    ld a, e
    and $49
    nop
    ret nz

    ld bc, $40b4
    ld a, [hl]
    pop bc
    pop hl
    dec [hl]
    dec [hl]
    ld l, h
    or a
    cp b
    ld b, d
    ld sp, hl
    and e
    ld hl, sp+$00
    ld a, $ec
    ld [bc], a
    or d
    ld h, h
    xor a
    or d
    ld b, l
    ld [hl], $b9
    ccf
    cp d
    and e
    dec [hl]
    ld l, h
    ld l, a
    ld l, [hl]
    add b
    pop hl
    ld b, $80
    ld hl, sp+$00
    ccf
    ld [hl], c
    ld h, l
    or d
    ld h, d
    or d
    or d
    ld [hl], $6e
    ld l, a
    add c
    ld l, h
    pop bc
    ld [c], a
    ret nz

    jp $ff00


    ld [hl], c
    ld h, [hl]
    or d
    ld h, b
    jp nz, Jump_06d_6ec2

    ld h, c
    ld l, a
    pop bc
    db $e3
    dec b
    ld [c], a
    nop
    dec sp
    ld a, e
    rst $20
    db $e3
    db $e4
    ld [hl], e
    jr nz, jr_06d_51ec

    ld a, $c2
    cp a
    ldh [$c1], a
    db $e3
    ret nc

    pop de
    ld e, b
    ld h, d
    nop
    rst $38
    nop
    db $e3
    ld a, [de]
    ld [hl], e
    jr nz, @-$5d

    pop bc
    ld [bc], a
    ld b, l
    ld [hl], $43
    ret nz

jr_06d_51ec:
    cp c
    ld h, b
    xor d
    and d
    jr nz, jr_06d_51f2

jr_06d_51f2:
    rst $38
    or $c3
    dec d
    ld h, d
    ld [hl-], a
    ld h, c
    ld a, l
    pop bc
    ld b, l
    ld a, $00
    inc b
    ld h, l
    ret nc

    nop
    rst $38
    or $82
    cp e
    and d
    or d
    ld b, b
    xor [hl]
    ld sp, $b222
    or d
    add c
    sbc [hl]
    ld a, e
    ld [hl], b
    nop
    ld sp, hl
    or l
    add d
    ld a, [hl]
    and b
    ld a, [c]
    nop
    ld a, h
    add c
    sbc h
    ld bc, $409f
    ld b, e
    nop
    rst $18
    ld [hl], c
    daa
    dec a
    and e
    nop
    and b
    ret nz

    ld [bc], a
    adc c
    ld bc, $0000
    ld a, c
    or $8f
    dec a
    and d
    or e
    ld h, d
    add c
    ld bc, $21ca
    nop
    ld a, d
    nop
    adc $00
    ld a, [c]
    ld h, e
    cp h
    pop hl
    ld b, e
    ldh [$fb], a
    jr nz, @+$55

    adc [hl]
    nop
    ld a, [$0258]
    ld c, h
    ld h, e
    nop
    ld [$5d64], a
    xor [hl]
    nop
    ld a, [$a271]
    ld c, h
    ld h, d
    ld b, h
    ld h, e
    nop
    ld e, l
    ld a, e
    di
    nop
    ld c, $2b
    nop
    rst $38
    ld [hl], c
    ld l, l
    add l
    dec [hl]
    nop
    cp [hl]
    ld [hl], c
    ld h, a
    add l
    ld a, [c]
    nop
    rst $38
    nop
    or $ff
    nop
    rst $38
    or $fc
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
    ld [de], a
    ld bc, $2701
    inc de
    ld bc, $2802
    inc de
    ld bc, $2403
    inc d
    ld bc, $2904
    inc d
    ld bc, $1905
    dec d
    ld bc, $1a06
    dec d
    ld bc, $1b07
    dec d
    ld bc, $1808
    ld d, $01
    add hl, bc
    add hl, de
    ld d, $01
    ld a, [bc]
    ld e, $16
    ld bc, $260b
    rla
    ld bc, $1b0c
    jr jr_06d_52d1

    dec c
    inc e

jr_06d_52d1:
    jr @+$03

    ld c, $1d
    jr jr_06d_52d8

    rrca

jr_06d_52d8:
    rra
    jr jr_06d_52dc

    db $10

jr_06d_52dc:
    inc hl
    jr @+$04

    ld de, $1916
    ld bc, $1712
    add hl, de
    ld bc, $1c13
    add hl, de
    ld bc, $1d14
    add hl, de
    ld bc, $1615
    ld a, [de]
    ld bc, $1a16
    ld a, [de]
    ld bc, $1b17
    ld a, [de]
    ld bc, $1c18
    ld a, [de]
    ld bc, $1919
    dec de
    ld bc, $1a1a
    dec de
    ld bc, $1b1b
    dec de
    ld bc, $201c
    dec de
    ld [bc], a
    dec e
    ld hl, $011b
    ld e, $22
    dec de
    ld bc, $231f
    dec de
    ld bc, $1420
    inc e
    ld bc, $1721
    inc e
    ld bc, $2022
    inc e
    ld bc, $2123
    inc e
    ld bc, $2224
    inc e
    ld bc, $1425
    dec e
    ld bc, $1626
    dec e
    ld bc, $1727
    dec e
    ld bc, $2128
    dec e
    ld bc, $1429
    ld e, $01
    ld a, [hl+]
    ld d, $1e
    ld bc, $172b
    ld e, $01
    inc l
    ld d, $1f
    ld bc, $172d
    rra
    ld bc, $172e
    jr nz, jr_06d_5358

    cpl

jr_06d_5358:
    dec e
    jr nz, @+$03

    jr nc, @+$18

    ld hl, $3101
    rla
    ld hl, $3201
    inc hl
    ld hl, $3302
    inc h
    ld hl, $3401
    inc de
    ld [hl+], a
    ld [bc], a
    dec [hl]
    inc d
    ld [hl+], a
    ld bc, $1536
    ld [hl+], a
    ld bc, $1637
    ld [hl+], a
    ld bc, $1838
    ld [hl+], a
    ld bc, $1939
    ld [hl+], a
    ld bc, $1a3a
    ld [hl+], a
    ld [bc], a
    dec sp
    ld e, $22
    ld bc, $233c
    ld [hl+], a
    ld bc, $243d
    ld [hl+], a
    ld bc, $133e
    inc hl
    ld bc, $143f
    inc hl
    ld bc, $1540
    inc hl
    ld bc, $1941
    inc hl
    ld bc, $2442
    inc hl
    ld bc, $2543
    inc hl
    ld bc, $1444
    inc h
    ld bc, $1e45
    inc h
    ld bc, $1f46
    inc h
    ld bc, $2647
    inc h
    ld bc, $1d48
    dec h
    ld bc, $1e49
    dec h
    ld bc, $1f4a
    dec h
    ld bc, $204b
    dec h
    ld bc, $1b4c
    ld h, $01
    ld c, l
    ld e, $26
    ld bc, $1f4e
    ld h, $01
    ld c, a
    inc e
    daa
    ld bc, $2650
    daa
    ld bc, $2251
    jr z, jr_06d_53e5

    ld d, d
    inc hl

jr_06d_53e5:
    jr z, jr_06d_53e8

    ld d, e

jr_06d_53e8:
    inc h
    jr z, jr_06d_53ec

    ld d, h

jr_06d_53ec:
    dec h
    jr z, jr_06d_53f0

    ld d, l

jr_06d_53f0:
    ld h, $28
    ld bc, $2756
    jr z, jr_06d_53f8

    ld d, a

jr_06d_53f8:
    jr nz, @+$2b

    ld bc, $2358
    add hl, hl
    ld bc, $2459
    add hl, hl
    ld bc, $255a
    add hl, hl
    ld bc, $265b
    add hl, hl
    ld bc, $205c
    ld a, [hl+]
    ld bc, $255d
    ld a, [hl+]
    ld bc, $265e
    ld a, [hl+]
    ld [bc], a
    ld e, a
    daa
    ld a, [hl+]
    ld bc, $2160
    dec hl
    ld bc, $2461
    dec hl
    ld bc, $2562
    dec hl
    ld bc, $2e63
    dec hl
    ld [bc], a
    ld h, h
    ld [hl+], a
    ld l, $01
    ld h, l
    inc hl
    ld l, $01
    ld h, [hl]
    ld [hl+], a
    cpl
    ld bc, $2367
    cpl
    ld bc, $2468
    cpl
    ld bc, $2269
    jr nc, jr_06d_5444

    ld l, d

jr_06d_5444:
    inc hl
    jr nc, jr_06d_5448

    ld l, e

jr_06d_5448:
    ld [hl+], a
    ld sp, $6c01
    dec hl
    ld [hl-], a
    ld bc, $2b6d
    inc sp
    ld [bc], a
    ld l, [hl]
    dec h
    inc [hl]
    ld bc, $266f
    inc [hl]
    ld bc, $2a70
    inc [hl]
    ld bc, $2b71
    inc [hl]
    ld bc, $2372
    dec [hl]
    ld [bc], a
    ld [hl], e
    inc h
    dec [hl]
    ld bc, $2574
    dec [hl]
    ld bc, $2a75
    dec [hl]
    ld bc, $2476
    ld [hl], $01
    ld [hl], a
    dec h
    ld [hl], $01
    ld a, b
    ld h, $36
    ld [bc], a
    ld a, c
    daa
    ld [hl], $01
    ld a, d
    jr z, jr_06d_54bd

    rst $38
    rst $38
    rst $38
    sub c
    ld d, h
    ld c, h
    ld e, c
    ld a, [de]
    ld e, a
    add hl, sp
    ld e, a
    ccf
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $ff
    db $e3
    or $fd
    rra
    ld c, l
    ld c, l
    ld c, $0e
    ld c, l
    ei
    db $e3
    db $d3
    ldh [$f3], a
    ldh [rP1], a
    ret


    db $e4
    ld a, [$f6e6]
    ei
    sub $e2
    ret nz

    ld [c], a
    adc [hl]
    pop hl
    add sp, -$17
    add l
    rst $38
    ld [$e1fe], sp
    sub [hl]

jr_06d_54bd:
    ld [c], a
    ld a, d
    pop hl
    ld c, l
    ret nz

    ld [c], a
    cp b
    ld [c], a
    ret nz

    ld [c], a
    add l
    rst $38
    inc [hl]
    ld b, l
    ldh [$cc], a
    db $e3
    ld c, l
    dec sp
    ldh [$2d], a
    dec l
    or b
    push hl
    add $e3
    ld hl, sp-$7b
    rst $38
    adc h
    db $e3
    ld hl, sp-$1f
    dec c
    ld l, l
    dec bc
    dec bc
    dec bc
    inc bc
    ld c, l
    dec l
    ld a, [hl]
    ld [c], a
    push af
    jp nz, $ff0a

    ld [de], a
    ld [c], a
    pop bc
    jp nz, $c0be

    inc hl
    ld l, l
    ld c, e
    rst $38
    pop hl
    cp a
    ldh [$b5], a
    jp Jump_000_004d


    db $fc
    sub d
    jp $fd00


    db $e3
    add h
    ld [c], a
    pop bc
    ldh [$50], a
    ret nz

    cp a
    pop hl
    xor $e2
    nop
    ei
    ld e, c
    jp nz, $c00a

    and $0d
    add h
    pop hl
    dec c
    pop bc
    pop hl
    cpl
    pop hl
    ld a, [hl]
    ld [c], a
    db $fc
    jp $8f00


    push de
    sub b
    add $43
    db $e3
    ld b, l
    ld [c], a
    db $76
    jp $a0cd


    cp h
    ret nz

    inc h
    adc $70
    or $a9
    db $d3
    jp nz, $c38d

    cp $e2
    dec c
    ld l, l
    ld l, e
    ret nz

    db $e3
    rrca
    dec hl
    dec bc
    dec bc
    dec hl
    ret nz

    and $00
    ld hl, sp+$4d
    jp nz, $c584

    ld bc, $c74d
    jp $e0c4


    jp nz, $bfe0

    ld [c], a
    inc a
    jp $c37e


    nop
    jp nc, Jump_06d_4970

    and $cc
    pop hl
    rst $00
    jp nz, $e086

    dec c
    dec bc
    dec bc
    ld a, c
    pop hl
    rlca
    ld l, e
    dec l
    dec c
    dec a
    ret nz

    ld [hl], b
    pop bc
    cp e
    and a
    add l
    rst $08
    adc h
    jp $8418


    and d
    adc d
    pop bc
    push bc
    ldh [rOCPD], a
    ld l, e
    cp l
    ldh [rSC], a
    ld [c], a
    ccf
    ret nz

    ld c, $b7
    and b
    ld l, l
    ld l, l
    ld l, l
    adc a
    or a
    adc h
    jp $e0c8


    adc l
    jp $c27e


    pop hl
    ld l, e
    ld c, e
    ld l, e
    ld l, e
    ld c, h
    inc c
    rst $38
    and $81
    inc l
    cp [hl]
    and l
    ld a, e
    xor a
    dec de
    and d
    add d
    ld [c], a
    adc h
    jp $e283


    ld l, e
    sub $06
    ret nz

    ld c, h
    inc l
    dec sp
    pop bc
    ld c, e
    push af
    ldh [$0d], a
    dec c
    ld d, c
    ld l, l
    ld h, e
    ldh [rP1], a
    or l
    add c
    db $e3
    ld c, e
    add d
    ldh [rWX], a
    adc l
    ret nz

    ld b, [hl]
    adc b
    ldh [rOCPD], a
    dec bc
    add [hl]
    ld [c], a
    pop bc
    ldh [$fb], a
    and c
    ld l, e
    ccf
    pop hl
    or b
    scf
    add h
    add l
    or h
    ret nz

    db $e3
    cp l
    pop hl
    ld l, e
    dec hl
    dec b
    ldh [$4c], a
    ld [$e2c5], sp
    db $fc
    and e
    ld a, h
    and b
    ld l, l
    db $fd
    add h
    adc a
    sub a
    call nc, $9661
    add d
    ld [de], a
    jp z, $2bc0

    ld c, b
    ld [c], a
    cp $e7
    dec c
    ret z

    ret nz

    or a
    ld h, l
    nop
    sub h
    db $fc
    sbc h
    ld h, e
    ld d, l
    add c
    dec hl
    dec hl
    dec bc
    ld a, [bc]
    ld c, e
    inc c
    add d
    add e
    and h
    dec l
    pop bc
    db $e3
    jp hl


    add e
    nop
    sbc c
    sbc h
    ld h, d
    ld d, l
    ld [c], a
    dec bc
    rla
    dec hl
    dec hl
    ld l, e
    ret


    jp nz, Jump_06d_4b6d

    jp nz, $e382

    xor c
    add d
    nop
    nop
    sbc c
    ld h, b
    and h
    adc e
    and b
    add hl, bc
    ret nz

    adc d
    ret nz

    dec c
    and $88
    ret nz

    and l
    db $e3
    inc h
    nop
    ld a, d
    ld b, e
    and h
    ld l, l
    add d
    ret nz

    ld c, [hl]
    add b
    inc c
    ld c, d
    add b
    ld c, l
    add d
    ldh [rNR52], a
    call nz, Call_06d_46c1
    ld a, [bc]
    sub l
    rst $10
    db $e4
    add d
    and c
    ld c, e
    dec bc
    dec c
    add d
    add c
    pop hl
    ld c, e
    ret nz

    push hl
    ld h, d
    add [hl]
    nop
    ld [hl], l
    adc [hl]
    add d
    rst $08
    ld h, h
    dec hl
    ld b, $81
    and b
    ld l, e
    dec bc
    add c
    pop hl
    ret nz

    db $e3
    push bc
    ld b, d
    add l
    ld h, a
    nop
    ld [hl], l
    inc c
    ld b, e

jr_06d_5679:
    and h
    sub b
    add c
    ld l, e
    dec c
    ret nz

    pop hl
    ld c, c
    ld h, b
    ld c, h
    ld h, b
    push af
    ld b, d
    ld l, b
    jp z, Jump_000_00ad

    ld d, c
    ret nc

    ld b, h
    dec hl
    dec d
    add d
    dec hl
    dec hl
    ld b, e
    jp nz, $d580

    add b
    ret nz

    ld b, b
    di
    ld h, e
    add sp, $2c
    add l
    sub b
    sub a
    jp nz, $a318

    ld l, e
    and b
    inc bc
    pop bc
    adc e
    jp $8311


    ld c, a
    dec l
    nop
    push af
    dec l
    call nz, $2bc0
    ld bc, $7f2b
    ret nz

    add c
    ret nz

    push de
    add d
    ld sp, hl
    ld hl, $2ed4
    nop

Jump_06d_56c0:
    ld [hl-], a
    ld a, [hl]
    db $e3
    nop
    sub e
    and b
    ld d, e
    ld h, b
    adc h
    add c
    ld c, $41
    jp z, Jump_06d_4f26

    dec hl
    nop
    ld [hl], l
    and [hl]
    ld [hl+], a
    ld [bc], a
    dec b
    and b
    dec c
    ld b, h
    and c
    ld d, b
    ld b, d
    ret nz

    ld hl, $12e8
    nop
    sub b
    dec e
    inc hl
    add c
    dec l
    ld b, [hl]
    add c
    jp nz, Jump_06d_43a0

    call nz, Call_06d_6411
    nop
    db $fc
    call Call_06d_4d07
    jr jr_06d_5679

    add b
    bit 4, b
    call nz, Call_06d_4d80
    dec l
    sub b
    inc hl
    nop
    rst $38
    nop
    adc b
    nop
    ld b, $62
    inc bc
    add b
    add h
    add c
    dec c
    inc hl
    nop
    rst $38
    nop
    adc d
    jp nz, Jump_06d_4a40

jr_06d_5712:
    ld h, c
    add e
    inc c
    ld l, h
    rst $38
    jp Jump_000_16de


    ld a, [bc]
    dec [hl]
    ld d, a
    ld h, c
    ccf
    ld [c], a
    ld l, h
    ret nz

    rst $38
    push bc
    nop
    rst $38
    and [hl]
    add d
    jp $e022


    nop
    db $d3
    nop
    ld l, e
    ld l, e
    add b
    ld a, [hl]
    jp nz, $e380

    adc a
    inc hl
    nop
    rst $38
    ld a, [hl]
    ld b, h
    inc bc
    ld b, c

jr_06d_573d:
    ld bc, $0b80
    ld b, b
    ret nz

    pop hl
    xor a
    ld h, l
    nop
    rst $38
    ld c, d
    inc b
    add l
    ld [hl+], a
    cp a
    pop bc
    ld a, [bc]
    ld a, a
    and c
    jr nz, jr_06d_5712

    push bc
    nop
    rst $30
    ld a, [bc]
    add l
    jr jr_06d_573d

    add c
    add c
    dec hl
    ld c, $40
    ld c, [hl]
    jr nz, jr_06d_5762

    dec bc

jr_06d_5762:
    ccf
    add b
    or l
    ld b, e
    ld a, [bc]
    adc c
    nop
    xor e
    pop de
    ld b, e
    ld [$3f44], sp
    inc bc
    ld de, $862b
    ld h, c
    jp nz, $c2e1

    ld b, b
    ld l, h
    cp $a0
    xor l
    inc hl
    nop
    pop af
    nop
    and a
    push bc
    inc h
    add l
    add d
    inc bc
    ld [de], a
    jr nz, jr_06d_57d3

    ld [hl+], a
    ret


    nop
    cp a
    ldh [$ce], a
    jr nz, jr_06d_57b1

    ld l, c
    and h
    nop
    ret nc

    inc l
    ld h, l
    adc d
    jp Jump_06d_43c6


    ld l, l
    add $c1
    dec bc
    ld hl, $4802
    ld [hl+], a
    inc c
    ret nz

    db $e3
    ld a, [bc]
    ld h, a
    jp z, Jump_06d_6887

    ld h, h
    ld d, b
    and d
    ld c, e
    add b
    nop

jr_06d_57b1:
    add $45
    ld c, d
    ld b, b
    ret nz

    db $e4
    cp $40
    nop
    ld b, b
    dec a
    and d
    call nc, $2533

Jump_06d_57c0:
    and h
    ld b, $ee
    nop
    ld l, e
    ld l, e
    jr @-$1d

    add h
    pop bc
    ld c, h
    ld hl, $e380
    ld b, l
    ld h, b
    jr nz, jr_06d_584e

    add c

jr_06d_57d3:
    dec c
    ld [hl+], a
    nop
    adc $d3
    ld h, d
    ld l, c
    ld h, h
    ld c, l
    pop bc
    ldh [$bf], a
    ldh [$30], a
    add a
    ld b, e
    add hl, bc
    ld b, c
    adc d
    ld [bc], a
    rst $00

jr_06d_57e8:
    ldh [$2d], a
    dec l
    ret nz

    db $e3
    ccf
    add $80
    ld e, c
    add hl, hl
    cpl
    ld h, c
    inc l
    rlca
    rst $10
    ret nz

    ld d, [hl]
    inc bc
    ret z

    and c
    ret


    nop
    dec c
    add b
    ld a, $20
    pop bc
    ldh [$bf], a
    ld hl, $22c9
    call nc, Call_06d_44b0
    db $e4
    inc hl
    inc h
    inc c
    db $10
    ret nc

    jp nz, $e186

    add h
    ld b, c
    call nz, Call_000_2de0
    ccf
    ldh [$c1], a
    db $e3
    ret


    inc h
    add b
    call nc, $bb90
    push hl
    ret nz

    db $e3
    res 4, b
    add $40
    add e
    ret nz

    pop bc
    ld [c], a
    ld c, e
    inc bc
    ld c, h
    inc c
    ld b, l
    nop
    ld c, a
    ld [bc], a
    ret z

    inc h
    nop
    xor h
    cpl
    ld b, [hl]
    adc a
    ld b, d
    ld b, d
    ld a, $e1
    dec hl
    ld d, h
    nop
    ret nz

    ld [c], a
    ld b, c
    ldh [rSC], a
    ld h, c
    dec bc
    ld c, a
    inc bc
    ld l, b

jr_06d_584e:
    nop
    ld [hl], h
    add hl, hl
    and e
    and h
    ld b, c
    ld l, l
    ld d, b
    ld b, b
    ld l, e

jr_06d_5858:
    ld l, e
    ld a, $e0
    ld [bc], a
    ret nz

    pop hl
    dec bc
    ld a, e
    ldh [rLYC], a
    jr nz, jr_06d_57e8

    ldh [rVBK], a
    dec b
    ld b, $44
    nop
    adc $c8
    adc $a6
    db $10
    ld b, c
    ret nz

    ldh [$6c], a
    ld c, l
    ret nz

    adc d
    add c
    ld c, e
    dec bc
    ld bc, $042d
    ld h, c
    jr z, @-$3d

    push hl
    add l
    nop
    or e
    adc $a5
    ld d, c
    jr nz, jr_06d_5858

    ld b, b
    nop
    cp a
    pop hl
    ld c, d
    ret nz

    push bc
    add b
    ld b, a
    ret nz

    dec b
    ld b, c
    ld c, b
    inc bc
    add l
    or c
    ld d, l
    ld c, c
    ld [bc], a
    ld [de], a
    ld hl, $c72b
    ret nz

    ld a, h
    pop bc
    ld a, [hl-]
    pop bc
    ld [hl], b
    pop bc
    ld [$09c0], sp
    jp $8540


    or a
    adc c
    add h
    db $d3
    inc bc
    cp a
    push hl
    cp [hl]
    ldh [$ed], a
    and h
    inc l
    add hl, bc
    push bc
    inc b
    add l
    ld d, c
    nop
    add a
    ld c, l
    call nc, $9800
    add b
    ld a, [hl]
    db $e4
    jp z, $c583

    add e
    nop
    ld b, a
    inc hl
    ld e, c
    ld d, [hl]
    ld [hl-], a
    inc bc
    sub h
    ld [bc], a
    rst $38
    db $e3
    dec a
    ldh [rLY], a
    db $e3
    pop bc
    db $e4
    nop
    ld c, d
    add $59
    ld [hl-], a
    add l
    ld h, [hl]
    sbc d
    nop
    ld b, b
    pop hl
    ld a, [hl]
    ld [c], a
    jp z, Jump_06d_6ee1

    add h
    jr z, jr_06d_5936

    jp $f785


    nop
    rst $20
    dec bc
    cp a
    ld [c], a
    dec hl
    ld c, h
    ld h, b
    ld [de], a
    jp Jump_06d_7910


    inc bc
    add [hl]
    jp $f585


    nop
    add sp, $4d
    ld d, b
    ldh [$7e], a
    ldh [$c1], a
    db $e3
    nop
    sub l
    ld b, [hl]
    db $ed
    ld b, [hl]
    nop
    ld a, [$c122]
    call nc, $d700
    ld h, c
    add d
    db $e3
    ld [hl], e
    ld h, h
    nop
    adc l
    inc bc
    ld a, [bc]
    inc sp
    nop
    ld l, h
    sub e
    ld [bc], a
    inc d
    add c
    ld d, $a2
    ld a, [hl]
    ld h, e
    add l
    rst $38
    nop
    nop
    push bc
    dec h
    ld b, e
    adc $c9
    xor e
    ld h, a

jr_06d_5936:
    add l
    reti


    ld d, e
    rlca
    ld b, e
    ld b, l
    adc $c4
    nop
    adc a
    jp c, $b400

    and $62
    sbc c
    sbc b
    nop
    db $d3
    nop
    nop
    nop
    rst $38
    call c, $a0dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    or e
    db $e3
    db $e4
    or $fe
    rst $38
    ldh [$d6], a
    rst $10
    ld a, [$d8e0]
    ld a, a
    reti


    and b
    and b
    ret nc

    pop de
    and b
    and b
    jp z, $ffe2

    push hl
    and $e7
    and b
    add sp, -$17
    ld [$e3eb], a
    db $ec
    and b
    or $fe
    call z, $c5e0
    pop hl
    and b
    jp c, $0fdb

    and b
    and b
    jp nc, $cad3

    db $e4
    add l
    rst $38
    ld [c], a
    db $e3
    add d
    ldh [$de], a
    call z, $dae0
    db $db
    push af
    or $78
    ldh [$ed], a
    xor $0f
    call nc, $efd5
    and b
    jp z, $85e2

    rst $38
    ld [c], a
    ld [c], a
    call z, $ffe5
    and b
    sbc a
    sbc l
    sbc l
    and d
    sbc a
    ldh a, [$f1]
    rlca
    ld a, [c]
    di
    db $f4
    jp z, $85e3

    rst $38
    add l
    pop hl
    inc b
    ldh [$cc], a
    db $e3
    rst $38
    sbc a
    sbc h
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    sbc h
    sbc a
    and b
    db $d3
    push af
    or $f5
    jp nz, $ff00

    rst $20
    call $e3c1
    db $e4
    dec sp
    sub $d7
    ld b, a
    ldh [$9f], a
    and d
    sbc l
    pop bc
    pop hl
    cp a
    ld [c], a
    add b
    push af
    jp $c4bb


    ld a, [bc]
    ld sp, hl
    sub d
    ret nz

    adc d
    ret nz

    adc h
    pop bc
    add h
    ld [c], a
    ld b, [hl]
    rrca
    ld b, [hl]
    or d
    or d
    or d
    ld a, [hl]
    pop hl
    cp d
    pop bc
    nop
    db $fd
    ld e, c
    pop bc
    db $10
    sub d
    ret nz

    ld c, a
    ret nz

    adc h
    ret nz

    ld b, l
    ld [c], a
    xor [hl]
    pop bc
    pop hl
    cp [hl]
    ldh [$7e], a
    pop hl
    add b
    inc a
    pop bc
    nop
    rst $30
    inc hl
    pop hl
    ld e, c
    ret nz

    sub b
    pop bc
    adc d
    jp nz, $e382

    xor a
    rst $38
    ld a, c
    ld a, d
    ld a, e
    ld a, e
    ld a, h
    ld a, l
    or d
    or d

jr_06d_5a23:
    add c
    sbc [hl]
    inc a
    jp nz, $f700

    jp nc, $8da1

    call nz, $c2c0
    ld b, e
    db $e4
    ld a, c
    rst $38
    ld a, [hl]
    ld b, e
    ld b, c
    dec hl
    dec hl
    ld a, a
    ld a, l
    or d
    pop hl
    sbc [hl]
    ld [hl], b
    call nz, $d600
    adc l
    push bc
    ld c, a
    ret nz

    sbc l
    and d
    sbc l
    cp $c7
    jp Jump_000_3645


    ld l, c
    dec sp
    dec sp
    dec h
    jr nz, jr_06d_5ab2

    jr nz, @+$2c

    ld a, a
    ld a, l
    and c
    inc a
    jp Jump_000_00a0


    sub $f8
    ld d, e
    and c
    ld c, c
    and $8a
    jp nz, Jump_000_3745

    jr c, jr_06d_5a23

    ld l, e
    rst $38
    ld l, h
    jr c, @+$2e

    cpl
    cpl
    inc l
    add e
    add h
    add h
    ld b, b
    ldh [$3b], a
    ret nz

    and b
    cp e
    and e
    adc a
    or e
    adc h
    jp $e00f


    ld a, h
    db $fd
    ld a, l
    adc d
    pop bc
    scf
    jr c, jr_06d_5abd

    dec [hl]
    dec [hl]
    ld l, [hl]
    dec sp
    ld [hl], b
    adc b
    rst $38
    pop hl
    add a
    add l
    sbc h
    ld l, c
    ldh [$3a], a
    ret nz

    call z, $b88f
    adc h
    jp Jump_06d_7e79


    ld c, [hl]
    ret nz

    db $10
    ldh [$b2], a
    ld [hl], $7e
    jp nz, Jump_000_35e0

    dec sp
    jr c, jr_06d_5ae2

    ld [de], a
    inc de
    rst $38
    rst $20
    cp b
    nop
    rst $10

jr_06d_5ab2:
    ld h, d
    db $e3
    pop bc
    db $e4
    or d
    or d
    add c
    add e
    pop hl
    jr c, jr_06d_5afc

jr_06d_5abd:
    scf
    or d
    or d
    ld b, l
    ld [de], a
    ld [de], a
    dec sp
    pop bc
    ld a, h
    and b
    cp b
    add b
    ld [c], a
    nop
    cp b
    ld d, h
    add c
    and c
    ld b, [hl]
    add b
    rst $08
    and c
    ld a, [hl-]
    ccf
    dec sp
    ld l, d
    dec [hl]
    dec [hl]
    ld [hl], $3f
    add [hl]
    ld [c], a
    pop bc
    ldh [$83], a
    ld b, [hl]

jr_06d_5ae1:
    xor a

jr_06d_5ae2:
    ld sp, hl
    and b
    nop
    pop hl
    ld [hl-], a
    add c
    adc a
    sub a
    add hl, de
    add b
    sbc [hl]
    rst $28
    ld b, [hl]
    add d
    add e
    ld b, [hl]
    ld b, [hl]
    ldh [$6c], a
    ld l, l
    dec [hl]
    inc sp
    ld [hl], $12
    push bc
    ld [c], a

jr_06d_5afc:
    ld a, a
    and e
    ld b, [hl]
    xor a

jr_06d_5b00:
    db $fd
    add d
    rst $30
    ld h, c
    db $fc
    adc a
    sub a
    adc l
    and d
    add l
    add [hl]
    add e
    or d

jr_06d_5b0d:
    ld a, [hl-]
    dec [hl]
    ld h, a
    ld [hl], e
    ld l, [hl]
    ld a, [hl-]
    ld c, b

jr_06d_5b14:
    pop hl
    cp $e7
    sbc h
    sbc a
    or [hl]
    ld h, c
    ldh a, [$f7]
    ld h, c
    nop
    ret c

    sbc h
    ld h, b
    cp a
    ld [c], a
    ld a, [hl-]
    ld l, h
    ld l, l
    rlc e
    add hl, sp
    ld de, $e40c
    cp a
    add d
    ld a, a
    add b
    ld a, e
    ld h, b
    nop
    sbc e
    sbc h
    ld h, c
    rst $38
    push af
    or $9e
    ld b, [hl]
    add l
    add a
    ld [hl], c
    ld [hl], b
    db $e3
    ld l, [hl]
    ld [hl], $c9
    pop bc
    adc d
    add c
    ccf
    add d
    sbc h
    sbc a
    ret nc

    pop af
    pop de
    ld a, e
    ld h, b
    nop
    sbc e
    sbc h
    ld h, e
    sbc [hl]
    ld b, [hl]
    ld b, [hl]
    add hl, sp
    jr nz, jr_06d_5ae1

    ret nz

    adc d
    ret nz

    call $0a81
    add c
    cp a
    ld h, b
    sbc a
    ld b, c
    ld h, c
    jp z, $fc44

    adc a
    db $76
    ld b, e
    and e
    sbc h
    ld b, [hl]
    xor [hl]
    ld a, [hl-]
    ld a, [hl-]
    or d
    dec bc
    or d
    ld de, $804a
    and c
    jr c, jr_06d_5b00

    ld b, c
    ld h, h
    nop
    ld [hl], a
    sub [hl]
    ld b, [hl]
    rst $38
    sbc a
    sbc h
    or d
    or d
    xor a
    inc a
    ld a, [hl-]
    or d
    jr jr_06d_5b0d

    pop hl
    ld c, [hl]
    ret nz

    jr c, jr_06d_5b14

    sub $d7
    ld b, c
    ld h, d
    jp z, $8544

    sub h
    cp $cf
    ld h, h
    scf
    scf
    or d
    ld [hl], $3b
    inc a
    ld b, h
    nop
    add c
    pop hl
    ld c, $c0
    add a
    ld b, c
    ld c, d
    pop bc
    and e
    add d
    ld b, l
    and h
    inc d
    ld d, l
    rst $08
    ld h, d
    ld a, a
    add hl, sp
    rst $08
    call Call_000_363b
    or d
    ld a, [hl-]
    add e
    jp nz, $ce06

    and c
    push af
    or $77
    ld b, b
    ld b, c
    ld b, c
    jp z, $8547

    ld d, e
    and e
    add d
    rst $38
    and c
    or d
    ld a, [hl-]
    adc $ce
    xor h
    or d
    xor [hl]
    inc bc
    ld a, [hl-]
    ld a, $43
    jp nz, $c08b

    db $f4
    ld h, h
    jp z, $8589

    ld [hl], l
    sub [hl]
    jr nz, @+$01

    sbc [hl]
    or d
    ld [hl], $cf
    rst $08
    xor l
    or d
    xor a
    add b
    add b
    ld [c], a
    adc h
    ld b, b
    call z, $8f20
    ld b, b
    ld c, a
    ld c, h
    nop
    ld hl, sp-$3e
    ret nz

    inc a
    dec de
    rst $08
    rst $08
    ld b, b
    ldh [rLCDC], a
    ld de, $404d
    ld [hl], e
    ld h, l
    call nc, $fe2c
    nop

Call_06d_5c0d:
    rst $30
    ret nc

    pop de
    sbc a
    sbc h
    ld [hl], $cf
    call z, $cf0b
    xor h
    ld b, h
    and c
    sbc [hl]
    nop

jr_06d_5c1c:
    ld b, h
    call nc, $8f0e
    scf
    dec e
    jr nz, @+$17

    sbc [hl]
    cp $c1
    xor l
    ld b, h
    and c
    sbc [hl]
    push bc
    ld bc, $2144
    call nc, Call_06d_5c0d
    nop
    sub l
    dec e
    ld [hl+], a
    sbc a
    sbc h
    ld a, $3f
    ldh [$ae], a
    inc b
    and b
    pop hl
    and c
    ret nc

    inc h
    nop
    rst $38
    ld [hl], c
    inc b
    dec e
    inc hl
    sbc [hl]
    add hl, sp
    dec [hl]
    rlca
    inc a
    or d
    xor a
    pop bc
    jp nz, Jump_000_22d0

    nop
    rst $38
    adc a
    rlca
    ld c, l
    ld hl, $9ebf
    or d
    inc a
    dec [hl]
    ld [hl], $45
    add h
    add c
    sbc [hl]
    ldh a, [$0d]
    jr nz, @-$2a

jr_06d_5c67:
    ld de, $178f
    ld a, [hl]
    jp Jump_000_353a


    dec [hl]
    xor [hl]
    ret nz

    ld c, h
    ld h, c
    rst $38
    pop bc
    ld e, c
    ld de, $b400
    add h
    jr nz, @+$21

    jr nz, jr_06d_5c1c

    ld b, [hl]
    dec b
    or d
    ccf
    ldh [$af], a
    cp a
    pop hl
    ld [bc], a
    and d
    nop
    rst $38
    add l
    ld h, d
    ld b, b
    and c
    ld a, [$4223]
    and c
    db $d3
    nop
    ld a, [hl-]
    dec [hl]
    ld [hl], $af
    ld b, [hl]
    add c
    ld de, $a202
    ld a, a
    and d
    nop
    rst $38
    inc l
    ld bc, $8681
    ccf
    pop hl
    add hl, sp
    ld h, b
    ret nz

    pop hl
    ld b, b
    nop
    ld a, [bc]
    add a
    nop
    cp e
    add c
    add a
    jr c, jr_06d_5c67

    cp a
    ret nz

    inc bc
    srl [hl]
    add b
    ld [c], a
    ld a, [bc]
    adc c
    nop
    or c
    ld a, [bc]
    add l
    ld b, $82
    add c
    add e
    rst $38
    dec [hl]
    ld [hl], $79
    ld a, d
    ld h, l
    ld h, [hl]
    dec [hl]
    ld a, [hl-]
    ld b, $7e
    ret nz

    sbc h
    sbc a
    ld a, [bc]
    adc c
    nop
    or b
    ld sp, $a102
    ld h, c
    sbc l
    ld h, b
    db $fc
    sub [hl]
    add b
    dec b
    ld h, b
    ld b, l
    ld a, [hl-]
    ld a, [hl-]
    ld a, c
    ld a, [hl]
    ld [hl], $1f
    dec [hl]
    ld l, b
    ld h, [hl]
    bit 0, b
    jp z, $0220

    ld h, c
    inc sp
    ld bc, $00c0
    pop af
    and a
    jp nz, $81a1

    db $db
    and c
    rst $10
    and b
    sub [hl]
    add c
    and b
    sbc [hl]
    rst $28
    ld b, b
    dec [hl]
    ld a, [hl-]
    add b
    ld c, d
    ld hl, $6577
    ld a, l
    ld bc, $8946
    jr nz, @+$42

    ld h, d
    nop
    ld a, [c]
    ld d, h
    ld h, c
    ld sp, $8a04
    pop bc
    ld h, $03
    or $41
    pop hl
    dec [hl]
    ld l, c
    dec bc
    ld hl, $3635
    ld a, a
    ld a, l
    add b
    ld a, [hl]
    jp nz, $6103

    nop
    ret nc

    db $eb
    ld b, d
    and c
    add e
    and e
    ld b, d
    add $44
    ld b, l
    inc a
    push bc
    and b
    ret nz

    ld [c], a
    ld [hl], $45
    ld b, [hl]
    add c
    ld a, $c0
    dec a
    and d
    inc c
    nop
    jp nc, $a425

    push af
    or $23
    ld b, e
    pop bc
    ld b, c
    pop bc
    ldh [$8f], a
    ld bc, $800c
    pop hl
    pop bc
    ldh [$83], a
    add h
    cp $a0
    dec c
    ld [hl+], a

Jump_06d_5d60:
    ld c, a

Jump_06d_5d61:
    ld l, $eb
    add e
    or b
    dec hl
    ld b, b
    cp $e1
    and e
    inc hl
    and [hl]
    nop
    and d
    sbc h
    add a
    and b
    dec [hl]
    ld h, a
    dec [hl]
    ld h, d
    db $76
    adc e
    nop
    pop bc
    ldh [$86], a
    add l
    ret nz

    db $e3
    add e
    ret nc

    pop de
    ld e, c
    jr nc, @+$54

    ld b, c
    inc l
    ld [$03da], sp
    ret z

    and d
    ld h, d
    ld a, l
    ld h, a
    ld c, l
    nop
    add e
    adc c
    adc b
    add a
    add l
    ret nz

    pop bc
    ldh a, [$3e]
    ld h, e
    call nc, $80b0
    db $eb
    rla
    ld hl, $b2b2
    scf
    jr c, jr_06d_5dd3

    pop bc
    pop hl
    ld [hl], $b2
    or d
    add h
    pop hl
    ld b, [hl]
    pop bc
    db $e3
    ld a, $63
    jr nz, @-$2a

    cpl
    push de
    ld [hl+], a
    inc hl
    add d
    ld d, d
    jr nz, @+$19

    pop hl
    or d
    ld c, l
    nop
    inc bc
    ld [c], a
    ld [bc], a
    pop bc
    db $e3
    ld [de], a
    ld l, e
    pop hl
    ld b, d
    jr nz, jr_06d_5e08

    ld h, e
    nop
    xor a
    ld l, h
    ld hl, $a2ce
    ldh [$d0], a

jr_06d_5dd3:
    add b
    sub l
    ldh [$3e], a
    ldh [rDIV], a
    pop hl
    jp Jump_000_3cc0


    or d
    ld b, [hl]
    ld bc, $458a
    ld [c], a
    ld c, a
    inc b
    xor l
    add b
    nop
    or c
    and [hl]
    ld h, c
    adc $a2
    and h
    ld bc, $ae39
    ld a, $e1
    ret nz

    ld [c], a
    ld h, d
    db $76
    ld a, [hl-]
    ld b, a
    ret nz

    or c
    pop hl
    and b
    ld c, a
    dec b
    jr z, jr_06d_5e22

    nop
    pop de
    adc $a6
    dec h
    nop
    xor a

jr_06d_5e08:
    inc de
    pop hl
    ld b, l
    ld c, $01
    pop hl
    ld l, c
    dec sp
    add hl, sp
    ld b, a
    ret nz

    dec b
    ld b, c
    adc [hl]
    ld bc, $2289
    sbc b
    call nc, $8550
    ld [bc], a
    adc $a5
    ld b, c
    ld b, l

jr_06d_5e22:
    add e
    jp nz, $0052

    ld b, l
    rrca
    scf
    scf
    add d
    add e
    ld b, a
    pop bc
    dec b
    ld b, c
    ld c, b
    ld [bc], a
    add l
    ld c, a
    adc b
    nop
    ld h, a
    dec d
    ld h, c
    adc $a1
    and [hl]
    sub l
    and b
    cp a
    ld [c], a
    ld a, [hl-]
    pop bc
    add l
    ld bc, $4787
    pop bc
    add $61
    ld b, a
    jr nz, jr_06d_5e94

    nop
    ld e, c
    ld d, c
    nop
    ld h, e
    sub e
    inc hl
    rra
    ld b, l
    ld [hl], $62
    and a
    ld h, [hl]
    cp a
    db $e4
    adc h
    pop bc
    pop af
    and h
    ldh [rBGP], a
    inc hl
    add d
    ld b, d
    nop
    db $76
    dec d
    ld h, c
    pop bc
    ldh [$67], a
    and e
    ld l, b
    ret nz

    cp a
    and $fa
    push hl
    ld b, a
    inc h
    ld e, c
    ld d, [hl]
    adc a
    ld h, e
    ld [de], a
    add b
    ld b, d
    xor b
    rlca
    xor c
    ld l, h
    dec [hl]
    inc de
    add b
    dec a
    ld [c], a
    call Call_000_34c0
    and d
    add hl, bc
    add $f8
    ld e, c
    ld d, l
    nop
    add [hl]
    add b
    ldh [$6e], a
    ld l, a
    ld l, h

jr_06d_5e94:
    dec [hl]
    and e
    inc hl
    xor d
    xor e
    sub c
    add b
    call nc, $ed61
    add e
    sbc a
    inc hl
    add d
    sbc $33
    db $ec
    nop

jr_06d_5ea6:
    rst $20
    ld d, e
    nop
    and c
    ld b, [hl]
    cp a
    ld [c], a
    ld l, h
    ld l, a
    ld l, [hl]
    inc bc
    ld [hl], $45
    sub h
    and b
    sub l
    ld b, d
    ld a, d
    ld b, d
    ld c, c
    ld b, d
    add l
    jp nc, Jump_000_2700

    nop
    ld d, e
    ld [bc], a
    cp a
    ld [c], a
    pop bc
    db $e4
    sub $81
    ld c, e
    jp Jump_06d_626d


    add l
    db $d3
    nop
    ld b, a
    nop
    inc h
    ld hl, $e3bf
    add d
    db $e3
    ld [hl], e
    ld h, h
    adc $20
    xor c
    ld b, e
    add l
    db $d3
    nop
    ld l, c
    jr jr_06d_5ea6

    ld b, b
    ld a, [hl]
    ld [c], a
    ld b, e
    pop hl
    sub $d7
    ld [hl], e
    ld h, e
    add l
    db $fd
    nop
    rst $00
    nop
    nop
    and c
    add d
    ld h, b
    adc $c4
    ld d, $a4
    ld l, e
    add l
    add l
    sub $00
    daa
    nop

Jump_06d_5f00:
    and e
    ld b, $38
    add e
    push af
    or $56
    nop
    adc a
    ret c

    nop
    or [hl]
    rst $18
    nop
    ld e, a
    add b
    nop
    di
    ld h, h
    adc a
    rst $30
    nop
    inc l
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
    ld bc, $3200
    ld b, $01
    ld bc, $0633
    ld bc, $3402
    ld b, $01
    inc bc
    ld sp, $0107
    inc b
    ld [hl-], a
    rlca
    ld bc, $3305
    rlca
    ld bc, $3406
    rlca
    ld bc, $3507
    rlca
    ld bc, $3608
    rlca
    ld [bc], a
    add hl, bc
    cpl
    ld [$0a01], sp
    ld [hl], $08
    ld bc, $370b
    ld [$0c01], sp
    scf
    add hl, bc
    ld bc, $2e0d
    dec bc
    ld bc, $280e
    inc c
    ld bc, $290f
    inc c
    ld bc, $2410
    dec c
    ld bc, $2711
    dec c
    ld bc, $2812
    dec c
    ld bc, $2313
    ld c, $01
    inc d
    inc h
    ld c, $01
    dec d
    dec h
    ld c, $01
    ld d, $2d
    ld c, $01
    rla
    ld l, $0e
    ld bc, $2318
    rrca
    ld [bc], a
    add hl, de
    inc [hl]
    rrca
    ld bc, $221a
    db $10
    ld bc, $331b
    db $10
    ld bc, $341c
    db $10
    ld [bc], a
    dec e
    ld [hl], $10
    ld bc, $221e
    ld de, $1f01
    add hl, hl
    inc d
    ld bc, $2420
    dec d
    ld bc, $2521
    dec d
    ld bc, $2822
    dec d
    ld bc, $2923
    dec d
    ld bc, $1f24
    ld d, $01
    dec h
    jr nz, @+$18

    ld [bc], a
    ld h, $21
    ld d, $01
    daa
    inc h
    ld d, $01
    jr z, jr_06d_6004

    ld d, $01
    add hl, hl
    jr nz, jr_06d_5ff8

    ld bc, $272a
    rla
    ld bc, $282b
    rla
    ld bc, $222c
    jr jr_06d_5fef

    dec l

jr_06d_5fef:
    inc e
    add hl, de
    ld bc, $212e
    add hl, de
    ld bc, $1c2f

jr_06d_5ff8:
    ld a, [de]
    ld [bc], a
    jr nc, jr_06d_601c

    ld a, [de]
    ld bc, $2131
    ld a, [de]
    ld [bc], a
    ld [hl-], a
    ld [hl+], a

jr_06d_6004:
    ld a, [de]
    ld bc, $1d33
    dec de
    ld bc, $2234
    dec de
    ld bc, $1e35
    dec e
    ld [bc], a
    ld [hl], $22

Call_06d_6014:
    dec e
    ld bc, $2237
    rra
    ld [bc], a
    jr c, @+$25

jr_06d_601c:
    rra
    ld bc, $1f39
    jr nz, jr_06d_6023

    ld a, [hl-]

jr_06d_6023:
    rra
    ld hl, $3b01
    rra
    ld [hl+], a
    ld [bc], a
    inc a
    inc hl
    ld [hl+], a
    ld bc, $1f3d
    inc hl
    ld bc, $203e
    inc hl
    ld [bc], a
    ccf
    inc h
    inc hl
    ld bc, $1e40
    inc h
    ld bc, $1f41
    inc h
    ld bc, $2042
    inc h
    ld bc, $1f43
    dec h
    ld bc, $2044
    dec h
    ld bc, $1845
    inc l
    ld bc, $1746
    dec l
    ld bc, $1847
    dec l
    ld bc, $2048
    dec l
    ld bc, $1549
    ld l, $01
    ld c, d
    ld d, $2e
    ld bc, $1e4b
    ld l, $01
    ld c, h
    rra
    ld l, $01
    ld c, l
    inc d
    cpl
    ld bc, $154e
    cpl
    ld bc, $1d4f
    cpl
    ld bc, $1e50
    cpl
    ld bc, $1d51
    jr nc, jr_06d_6084

    ld d, d
    db $10

jr_06d_6084:
    ld [hl-], a
    rst $38
    rst $38
    rst $38
    sub b
    ld h, b

Call_06d_608a:
    ld b, d
    ld h, h
    ret nc

    ld l, b
    rst $28
    ld l, b
    ccf

Jump_06d_6091:
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $ff
    db $e3
    or $ef
    ld bc, $ff4d
    ldh [$fa], a
    pop hl
    jp c, $d6e1

    ld [c], a
    push de
    ld [c], a
    adc $e9
    ret


    pop hl
    add b
    jp $f6e3


    di
    and e
    pop hl
    ret nz

    jp hl


    adc $f2
    ld a, e
    ld hl, sp+$7e
    pop hl
    dec c
    rst $00
    ld c, l
    ld c, l
    dec l
    push bc
    db $e4
    ld d, e
    pop af
    add l
    push af
    ld c, $0d
    cp $44
    ld [c], a
    dec c
    ld c, l
    ld l, l
    ld a, [bc]
    ld l, d
    ld c, l
    dec l
    ldh [$b8], a
    pop hl
    add l
    rst $38
    or $c7
    dec b
    pop hl
    add l
    ldh [$0d], a
    dec c
    ld l, l
    rlca

Jump_06d_60e0:
    dec hl
    ld a, [bc]
    ld a, [bc]
    cp a
    ld [c], a

Jump_06d_60e5:
    pop af
    jp nz, $ff00

    add l
    db $e4
    add $c4
    ld a, [hl]
    pop bc
    ldh [$0b], a
    ld a, [hl+]
    dec bc
    dec hl
    ld a, [bc]
    dec bc
    ret nz

    db $e4
    ldh [$7b], a
    rst $38
    ld [hl], c
    rst $00
    add b
    ret nz

    pop bc
    pop hl
    rst $38
    ldh [$2b], a
    ld a, [bc]
    ld c, d
    ld [hl], b
    add b
    pop hl
    nop
    rst $38
    ld [hl], c
    jp z, $e1c0

    ld a, [bc]
    ld a, [bc]
    ld c, e
    cp a
    ldh [$87], a
    ld l, e
    ld a, [bc]
    ld a, [bc]
    cp [hl]
    ret nz

    ld b, e
    pop hl
    add l
    rst $38
    nop
    db $eb
    ld c, d
    ld l, a
    ld c, d
    ld c, e
    ld l, e
    ld l, e
    pop bc
    ldh [$0d], a
    ld l, l
    inc bc
    db $e4
    db $fc
    nop
    rst $38
    nop
    add sp, $0d
    ld l, l
    ld l, e
    ld a, [hl+]
    ld a, [bc]

jr_06d_6136:
    ld c, e

Jump_06d_6137:
    adc a
    ld c, e
    ld a, [hl+]
    ld a, [bc]
    dec c
    ld b, c
    db $e3
    ret c

    or h
    nop
    or $0d
    rst $38
    ld l, e
    dec c
    ld c, e
    dec hl

Jump_06d_6148:
    dec bc
    dec hl
    ld l, e
    dec c
    ld [hl], b
    ret nz

    ld [c], a
    ld a, c
    and d
    nop
    rst $38
    nop
    jp hl


    dec l
    ld l, e
    dec c
    cp a
    pop bc
    add e
    dec c
    ld l, e
    ld b, c
    pop bc
    add l
    rst $38
    or $88
    add h
    and e
    ld a, a
    ldh [rOCPD], a
    rra
    ld l, e
    dec bc
    dec hl
    dec bc
    ld l, e
    cp a
    and d
    inc d
    and h
    nop
    rst $38
    db $10
    ld b, h
    and h
    ld a, a
    ld [c], a
    ret nz

    ldh [$7f], a
    ret nz

    ld l, e
    ld a, $a1
    ld l, l
    and c
    ld a, e
    rst $38
    jr nc, jr_06d_6136

    add [hl]
    adc c
    add c
    ld a, $e0
    cp $a2
    ld l, e
    dec l
    db $fd
    add b
    nop
    rst $38
    nop
    ld [hl], c
    add a
    sub [hl]
    ldh [$90], a
    db $e3
    ret nz

    pop hl
    ccf
    ldh [$c0], a
    pop hl
    ccf
    add l
    nop
    rst $38
    ld a, h
    rst $38
    add c
    ld d, c
    add e
    ld l, l
    ld l, e
    ld c, e
    dec bc
    dec hl
    rst $38
    push bc
    ld [hl], b
    nop
    cp a
    nop
    rst $20
    cp l
    add d
    rst $38
    and b
    dec c
    ld c, e
    dec c
    ret nz

    ldh [$e0], a
    ld a, [hl]
    ret nz

    nop
    rst $38
    add l
    ld l, e
    ld b, e
    add d
    ld b, b
    ret nz

    dec hl
    ld c, e
    ld l, e
    inc bc
    ld c, e
    ld c, e
    ret nz

    push hl
    nop
    rst $38
    ld [hl], c
    ld h, h
    ld b, a
    ld h, d
    add c
    pop hl
    cp a
    add c
    ld b, $3c
    and b
    dec c
    ld l, l
    dec a
    ld h, e
    add l
    rst $38
    add $65
    add c
    add c
    add [hl]
    and b
    nop
    ld bc, $bfe0
    add b
    nop
    and b
    pop bc
    add $00
    rst $38
    ld b, $63
    ld [bc], a
    ld [c], a
    ret nz

    ldh [$81], a
    ld a, [bc]
    ld a, $a0
    jp nz, Jump_000_00c3

    sbc a
    add $c5
    call nz, Call_000_0763
    and b
    dec c
    rlca
    ld l, e
    ld c, e
    ld l, e
    ld b, b
    ldh [$c1], a
    ld h, [hl]
    nop
    rst $38
    ld c, h
    ld b, h
    pop bc
    db $e4
    nop
    nop
    and d
    pop bc
    and b
    pop af
    jp nz, $c381

    add l
    cp [hl]
    ld d, a
    jp $e7c1


    pop bc
    and c
    ret nz

    add b
    add e
    nop
    sbc a
    xor a
    inc h
    rst $00
    and c
    add e
    pop hl
    ld [bc], a
    pop hl
    dec bc
    dec c
    ld b, b
    nop
    ldh [$81], a
    ld h, e
    ld a, e
    sbc a
    db $db
    inc hl
    ld [$c3e1], sp
    ldh [$2b], a
    jp nz, $02e1

    ld b, c
    ld h, b
    ld c, e
    add b
    add [hl]
    nop
    rst $38
    ld b, [hl]
    ld b, l
    ret z

    add b
    jp Jump_000_02e2


    add b
    ld h, b
    pop bc
    and d
    add l
    rst $38
    ld a, [bc]
    ld h, $c6
    and e
    add [hl]
    ld b, d
    dec bc
    dec l
    add c
    and c
    ld b, b
    db $fd
    ld b, b
    ret nz

    ldh [rP1], a

Jump_06d_626d:
    rst $38
    jp $89a7


    add b
    ld b, [hl]
    ld b, c
    dec l
    add h
    add d
    ld b, $42
    and b
    dec c
    ld l, l
    nop
    ld a, a
    ld b, a
    and l
    ret nz

    db $e4
    add hl, bc
    ld b, b
    add h
    ld b, c
    ld hl, $c16b
    pop hl
    ret nz

    and e
    nop
    rst $38
    inc b
    add [hl]
    ld l, l
    adc h
    add c
    add l
    pop hl
    nop
    jp Jump_000_3d80


    ld h, b
    ld b, c
    and e
    nop
    rst $38
    bit 4, l
    ld [bc], a
    ld [c], a
    adc b
    add d
    ld a, a
    and b
    nop
    pop bc
    ld [c], a
    add hl, sp
    inc bc
    nop
    db $fc
    ld h, b
    and e
    inc b
    jp nz, Jump_000_2048

    ld [$38a0], sp
    jp nz, Jump_000_2d03

    dec l
    jp $c120


    push bc
    ld a, e
    ei
    adc e
    ld h, h
    rrca
    ld b, b
    ld [$0022], sp
    add c
    ldh [$86], a
    add c
    add a
    ld h, l
    nop
    rst $38
    inc b
    push bc
    ld a, [bc]
    ld h, d
    add a
    pop bc
    ld b, $41
    nop
    or d
    add h
    nop
    rst $38
    ld a, [bc]
    inc hl
    ld c, d
    ld b, e
    ret


    nop
    pop bc
    ld [c], a
    ld b, a
    ld b, l
    call nz, Call_000_0446
    nop
    ei
    sub e
    db $e4
    dec l
    ret nz

    pop hl
    adc b
    jr nz, @+$48

    jp nz, Jump_06d_6307

    add l
    adc [hl]
    nop
    nop
    push de
    dec b
    add d
    jp nz, $bfa2

    ld [c], a
    ret nz

    pop hl
    ld e, h
    ld b, [hl]
    nop
    rst $18

Jump_06d_6307:
    add l
    inc bc
    jr jr_06d_6315

    ld hl, $2207
    ld b, $21
    ld l, l
    ld l, l
    add l
    rst $38
    ld a, e

jr_06d_6315:
    ld c, e
    ret nz

    pop hl
    ld b, b
    rst $00
    ld h, e
    add $03
    ret c

    scf
    nop
    ld [hl], e
    add b
    and $86
    nop
    ld c, l
    add $81
    nop
    ret c

    ld e, b
    nop
    ld d, c
    add b
    ld [c], a
    cp a
    push hl
    add [hl]
    add c
    add l
    ld sp, $7800
    ld c, d
    ld hl, $4800
    ld b, d
    ccf
    db $e3
    call nz, $8545
    rst $38
    add l

jr_06d_6343:
    inc h
    cp a
    and c
    add $80
    pop bc
    ld h, d
    jr nz, @-$3e

    db $e3
    nop
    rst $38
    or $29
    ret z

    ld hl, $a1be
    dec hl
    ld [bc], a
    add c
    add $00
    nop
    ld h, e
    adc c
    ld a, e
    rst $38
    ld a, a
    and d
    ld b, a

Jump_06d_6362:
    ld b, d
    ret nz

    pop hl
    cp [hl]
    pop bc
    nop
    rst $38
    nop
    ret


    nop
    ld a, a
    and e
    ret z

    ld h, b
    add $20
    db $fd
    add h
    rst $28
    inc hl
    add l
    rst $38
    add l
    inc b
    ld sp, hl
    add b
    ld bc, $fc2d
    add d
    add e
    jr nz, jr_06d_6343

    and $00
    rst $38
    ld b, [hl]
    ld [$203d], sp
    ld a, l
    ld [c], a
    nop
    jp $c061


    push hl
    nop
    rst $38
    ld a, e
    ld h, h
    dec sp
    call nz, $803a
    nop
    ld h, d
    call nz, $0041
    nop
    rst $38
    ld a, e
    dec b
    ld a, l
    ld h, h
    dec a
    pop hl
    jp nz, $c4e3

    rlca
    add l
    rst $38
    ld a, l
    ld h, [hl]
    nop
    cp $02
    ld a, a
    db $e4
    ld bc, $00e5
    rst $38
    ld a, $45
    ret nz

    push hl
    ld b, b
    db $e3
    ld b, b
    pop bc
    nop
    db $fc
    add h
    nop
    rst $38
    ld [bc], a
    inc h
    cp [hl]
    inc bc
    ccf
    db $e4
    cp [hl]
    and d
    nop
    rst $38
    ld a, e
    and h
    nop
    ld a, d
    ld b, d
    cp [hl]
    inc bc
    ei
    ld h, d
    ld b, d
    dec b
    nop
    rst $38
    ld a, e
    add hl, hl
    ld a, [$fe41]
    inc bc
    ret nz

    ld a, h
    add b
    ld a, l
    ld b, c
    nop
    rst $38
    ld a, e
    xor l
    add c
    ldh [$7e], a
    ldh [$2d], a
    dec bc
    add c
    dec hl
    ld a, [hl]
    add d
    ld e, $e4
    ld a, e
    rst $38
    dec sp
    jp nz, $e4c0

    ccf
    ld [bc], a
    dec hl
    ld b, b
    ld a, l
    ld b, b
    sbc c
    add h
    nop
    rst $38
    ld a, e
    and [hl]
    cp a
    and c
    cp a
    db $e3
    ld c, e
    ret nz

    db $e3
    ld c, h
    nop

Call_06d_6411:
    rst $38
    ld a, e
    xor h
    ld c, l
    dec l

Jump_06d_6416:
    jp nz, $fe01

    add b
    ld l, l
    ld l, e
    add $1c
    nop
    rst $38
    ld a, e
    ld b, [hl]
    ld c, $0e
    dec l
    cp e
    add b
    cp $e1
    pop bc
    ld [$7b00], a
    rst $38
    cp d
    add h
    ld a, [bc]
    ld h, h
    add [hl]
    jp $5953


    xor l
    ld [de], a
    or $04
    ret nz

    push hl
    nop
    add l
    or $00
    nop
    nop

Jump_06d_6442:
    rst $38
    call c, $a0dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    ld l, e
    db $e3
    db $e4
    or $f1
    and b
    rst $38
    ldh [$d8], a
    reti


    db $fc
    db $e3
    di
    jp nc, $f2d3

    pop hl
    ret c

    db $ed
    push hl
    and $e7
    and b
    cp a
    add sp, -$17
    ld [$eceb], a
    and b
    or $f1
    sub $ff
    rst $10
    push af
    or $da
    db $db
    and b
    and b
    jp c, $dbff

    db $ed
    xor $d4
    push de
    rst $28
    push af
    or $e0
    xor a
    ldh [$ce], a
    db $eb
    add l
    or $67
    ld [c], a
    add h
    pop hl
    and b
    and b
    sbc a
    rst $38
    sbc l
    sbc l
    sbc a
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    ldh [rHDMA3], a
    ldh a, [$85]
    or $67
    pop hl
    adc b
    ldh [$c2], a
    pop hl
    sbc h
    ld c, b
    ld d, e
    jp $9f9c


    dec [hl]
    pop hl
    ld d, e
    ldh a, [rP1]
    or $05
    pop hl
    and b
    and b
    rst $38
    push af
    or $9f
    sbc h
    ld b, l
    ld c, c
    ld h, b
    ld d, a
    dec c
    ld d, d
    cp a
    ldh [$d6], a
    rst $10
    nop
    rst $38
    add l
    rst $20
    push bc
    ret nz

    rst $08
    pop hl
    cp $c1
    ldh [rSTAT], a
    ld d, e
    dec hl
    dec hl
    ld d, e
    ld b, h
    sbc [hl]
    ldh a, [$b7]
    jp nz, $ff00

    ld [hl], c
    ret z

    add [hl]
    ret nz

    sbc a
    sbc h
    ld b, e
    ld a, [hl+]
    ld a, a
    cpl
    jr nz, jr_06d_6502

    jr nc, jr_06d_6533

    ld d, l
    sbc [hl]
    cp e
    ret nz

    ld hl, sp+$00
    rst $38
    ld [hl], c
    jp z, $c086

    and c
    ld c, d
    ld e, d
    jr nc, jr_06d_6514

    add a
    jr nz, jr_06d_6517

    ld a, [hl+]
    ret nz

    ldh [$83], a
    ret nz

    nop
    rst $38
    nop
    db $ed
    sbc [hl]
    rst $38

jr_06d_6502:
    ld c, d
    ld d, [hl]
    ld a, [hl+]
    inc hl
    jr z, jr_06d_6533

    ld c, e
    ld e, h
    ldh a, [$bf]
    jp nz, $b0d8

    nop
    ei
    jp Jump_06d_56c0


jr_06d_6514:
    ld e, h
    inc a
    ld a, [hl-]

jr_06d_6517:
    adc a
    ld e, h
    ld d, [hl]
    or d
    and c
    db $f4
    and b
    ret c

    or c
    nop
    ei
    sbc [hl]
    rst $38
    ld b, [hl]
    or d
    ld b, e
    ld b, b
    dec [hl]
    ld a, $45
    or d
    pop af
    or d
    pop bc
    jp nz, $ff00

    nop

jr_06d_6533:
    db $ec
    sbc a
    sbc h
    ld b, [hl]
    or d
    ccf
    ld b, h
    inc a
    ld a, [hl-]
    ld b, l
    or d
    ld b, [hl]
    pop bc
    pop bc
    nop
    rst $38
    ld hl, sp+$00
    ret


    ld de, $7fc2
    ldh [rLYC], a
    ld a, [hl-]
    dec [hl]
    ld [hl], $45
    adc l
    ld b, [hl]
    cp a
    and d
    ret nc

    pop de
    nop
    rst $18
    nop
    add $c8
    add b
    ret nc

    db $fd
    pop de
    ld a, a
    ldh [rDMA], a
    add hl, sp
    dec [hl]
    dec [hl]
    add hl, sp
    ld b, [hl]
    ld bc, $8046
    pop bc
    cp l
    add d
    nop
    rst $38
    add l
    add e
    ret z

    add b
    adc l
    add b
    ld a, $e0
    rra
    ld b, h
    inc a
    dec [hl]
    ld a, [hl-]
    ld b, l
    ccf
    ldh [$bd], a
    add d
    nop
    rst $38
    jp c, $8471

    and b
    ret nc

    db $e3
    and b
    and c
    add b
    pop hl
    inc a
    ld b, h
    ret nz

    rst $38
    ret nz

    cp l
    add d
    nop
    rst $38
    nop
    and [hl]
    adc l
    add d
    cp [hl]
    ret nz

    ld a, $cf
    rlca
    rst $08
    dec [hl]
    ld b, b
    rst $38
    jp $bf00


    add l
    add [hl]
    inc d
    add d
    ld b, c
    pop hl
    rst $38
    or d
    ld a, $bb
    adc $3c
    ld b, h
    or d
    ld b, [hl]
    rlca
    and c
    push af
    or $c0
    ret nz

    nop
    rst $38
    add l
    ld h, [hl]
    sub b
    add c
    add b
    jp nz, $cf83

    rst $08
    ld a, $c3
    ld a, l
    ld h, c
    nop
    rst $38
    nop
    and $c1
    add d
    ld b, [hl]
    add hl, de
    or d
    add c
    ret nz

    add b
    pop bc
    sbc h
    sbc a
    ldh a, [$c3]
    nop
    rst $38
    or $41
    ld e, h
    inc de
    add c
    pop bc
    add c
    ld b, [hl]
    or d
    or d
    ld bc, $39e1
    nop
    pop bc
    sbc b
    ld a, l
    ld h, d
    nop
    rst $38
    or $43
    ret c

    reti


    inc de
    ld h, b
    add c
    and c
    or d
    rra
    ld a, $ce
    swap l
    ld a, $42
    pop hl
    cp $e4
    nop
    rst $38
    ld e, b
    reti


    ld b, c
    ld b, [hl]
    ld h, d
    pop bc
    pop hl
    or d
    add hl, sp
    add b
    ld [c], a
    sbc [hl]
    add c
    ld h, e
    and b
    nop
    rst $38
    add l
    ld h, d
    sub a
    jp nz, $e3c1

    nop
    and b
    dec [hl]
    ld b, c
    ret nz

    and c
    ret nz

    jr c, jr_06d_6666

    add b
    ld b, c
    nop
    rst $38
    ld a, [bc]
    ld b, b
    inc d
    ld b, c
    pop bc
    db $e4
    ld b, l
    ld [hl], $07
    dec [hl]
    rst $08
    rst $08
    add b
    pop hl
    jr c, jr_06d_6679

    nop
    sbc a
    or $22
    inc d
    ld b, d
    cp $43
    db $e3
    ld b, l
    ccf
    ld [hl], $cb
    dec [hl]
    adc $bb
    ret nz

    nop
    ldh [rDIV], a
    ld b, b
    nop
    sbc a
    ld a, e
    inc hl
    inc d
    ld b, d
    add l
    ret nz

    ld b, l
    ccf
    dec e
    ld b, e
    jp nz, Jump_000_35e0

    rst $08
    call z, $e080
    ccf
    ld b, d
    nop
    sbc a
    inc a

jr_06d_6666:
    add l
    ld b, l
    ld b, [hl]
    add c
    ld b, l
    ld [hl], $cb
    dec sp
    inc b
    ret nz

    add c
    ldh [$80], a
    rst $38
    ld h, d
    ld b, c
    ld b, b
    nop
    sbc a

jr_06d_6679:
    ld a, [bc]
    inc hl
    ld d, $40
    add $60
    rst $00
    and c
    dec [hl]
    rlca
    rst $08
    cp e
    rst $08
    ld bc, $40e1
    add b
    ld hl, sp+$00
    nop
    rst $38
    add l
    add e
    ld [hl], h
    call $8100
    ldh [$3a], a
    jp nz, $cce1

    call z, $c1ce
    ld h, b
    adc l
    or d
    ret nz

    ld h, b
    jp c, Jump_000_00db

    rst $38
    add l
    and d
    ld c, c
    ld [hl+], a
    sbc [hl]
    inc a
    ret


    ld h, b
    add [hl]
    ldh [$cd], a
    call $cfcd
    pop bc
    pop hl
    ld b, b
    ret nz

    call z, $ff00
    ld a, e
    inc bc
    ret nc

    pop de
    add [hl]
    and d
    ld c, c
    ld h, b
    cp e
    adc $1f
    dec [hl]
    jr c, @+$3f

    dec a
    scf
    pop bc
    pop hl
    nop
    jr nz, jr_06d_66cf

jr_06d_66cf:
    ld e, a
    db $10
    ld a, [bc]
    inc hl
    inc b
    call nz, Call_06d_608a
    adc b
    add d
    or d
    add e
    ldh [rSC], a
    ld h, c
    ld [bc], a
    ld hl, $0038
    cp $8b
    ld h, h
    adc c
    ld b, c
    ld b, d
    dec [hl]
    dec [hl]
    ld [$c1a0], sp
    pop hl
    ld de, $419c
    nop
    ld [hl], d
    add d
    nop
    rst $38
    db $e4
    ld e, e
    ld h, e
    adc c
    add c
    ld c, c
    and c
    inc sp
    dec [hl]
    add hl, sp
    pop bc
    pop hl
    add a
    ld h, e
    jp c, $d8db

    ld [de], a
    ld a, [bc]
    ld l, [hl]
    ld [bc], a
    inc b
    jp Jump_06d_42b2


    jp nz, $c087

    ret z

    ld h, d
    ldh a, [$83]
    add l
    adc l
    nop
    di
    dec sp
    push af
    or $49
    ld hl, $4646
    ld a, $ca
    ld b, c
    inc bc
    pop hl
    nop
    ld b, a
    ld b, [hl]
    ret c

    ld [hl-], a
    add l
    or b
    adc b
    ld h, e
    ret nz

    ldh [rSTAT], a
    ld [c], a
    add [hl]
    add b
    ld [hl], a
    ld b, e
    ld [$8e85], sp
    nop
    push de
    dec b
    add c
    sbc [hl]
    jp nz, Jump_000_09a1

    ld b, b
    ld b, b
    ld [c], a
    ldh a, [$82]
    inc a
    ret c

    inc d
    add l
    ld [hl-], a
    push af
    or $a1
    ld b, d
    ld c, d
    add b
    ret nz

    jp $8670


    ld h, d
    add l
    pop af
    nop
    db $76
    sub [hl]
    ld h, b

jr_06d_675d:
    sbc [hl]
    ld b, h
    inc a
    jp nz, $e0a0

    ld a, a
    pop hl
    add [hl]
    ld h, d
    ld e, l
    ld d, $00
    ld [hl], d
    ld bc, $42a1
    dec [hl]
    adc $00
    ret nz

    ldh [$3f], a
    ret nz

    add $00
    ld [hl], a
    ld b, b
    ld e, l
    dec d
    nop
    ld [hl-], a
    ld bc, $80a1
    ldh [$81], a
    call z, $e03f
    ld b, l
    ld [bc], a
    db $f4
    ld b, c
    add l
    jr nc, jr_06d_678c

jr_06d_678c:
    ld a, b
    ld bc, $36a0
    ld bc, $86cf
    add b
    ld a, a
    ld [c], a
    rst $00
    jr nz, jr_06d_675d

    ld b, e
    nop
    rst $38
    add l
    dec h
    adc c
    ld hl, $3631
    cp a
    pop bc
    add [hl]
    ld bc, $8085
    ret c

    reti


    nop
    rst $38
    or $27
    ld [hl], e
    sub $d7
    ccf
    and c
    rst $00
    ld b, d
    dec [hl]
    dec [hl]
    ld b, d
    add $01
    or e
    jp c, Jump_000_00db

    rst $38
    ld a, e
    rlca
    ret c

    reti


    add h
    ld b, d
    ld b, h
    ld bc, $bd3c
    ret nz

    add $01
    add l
    inc d
    nop
    ld d, [hl]
    call nz, Call_000_3e20
    and c
    ld a, $e2
    ld h, b
    db $fd
    add h
    jp Jump_000_0023


    rst $38
    add l
    inc b
    ld [bc], a
    ld b, b
    sbc l
    sbc h
    cp a
    ld b, b
    add b
    ld b, l
    ld h, b
    cp $00
    inc bc
    ld b, b
    dec a
    pop bc
    nop
    rst $38
    nop
    ld h, l
    add c
    dec h
    ld b, l
    inc bc
    ld b, c
    ld b, l
    add $40
    cp l
    and c
    dec a
    jp nz, $ff00

    nop
    ld h, h
    add c
    jr nz, jr_06d_6805

jr_06d_6805:
    jp nz, $fa00

    ld h, b
    adc b
    ld b, b
    add d
    ld h, d
    inc b
    ld [hl+], a
    nop
    rst $38
    and e
    db $e3
    sub c
    add l
    nop
    ld a, [hl-]
    add c
    add c
    ld [c], a
    inc b
    ld [hl+], a
    nop
    rst $38
    or $84
    sub c
    add e
    adc $61
    cp c
    ld h, c
    jr nz, @+$80

    pop hl
    ld b, c
    db $e4
    nop
    rst $38
    ld a, e
    ld l, b
    cp [hl]
    ld bc, $419e
    db $e3
    ld b, b
    jp nz, Jump_06d_4200

    ld bc, $ff00
    ld a, e
    ld h, l
    cp [hl]
    dec b
    ccf
    db $e4
    rst $38
    and b
    xor e
    ld h, b
    nop
    rst $38
    or $7b
    ld b, h
    push af
    or $be
    ld [bc], a
    sbc [hl]
    ld b, [hl]
    cp e
    scf
    dec bc
    dec a
    scf
    db $fd
    ldh [rLYC], a
    ld a, a
    push bc
    nop
    rst $38
    ld a, e
    daa
    ld a, [$b741]
    add hl, sp
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    add hl, sp
    ld a, a
    and e
    push af
    pop af
    or $00
    rst $38
    or $27
    db $fc
    ld bc, $693e
    and e
    dec [hl]
    rrca
    dec [hl]
    and e
    ld l, d
    ld a, $43
    jr nz, @+$80

    ld b, c
    nop
    rst $38
    ld a, e
    rst $00
    ld l, [hl]
    adc $a1

Jump_06d_6887:
    and c
    ld a, $69
    ld b, b
    ld bc, $3e6a
    ld a, $80
    ld a, b
    ld l, d
    jr nz, jr_06d_6894

jr_06d_6894:
    rst $38
    or $2c
    sbc [hl]
    add hl, sp
    ld l, e
    ld [hl], c
    rst $38
    ldh [rTAC], a
    ld l, l
    add hl, sp
    sbc [hl]
    ld a, [hl]
    ld b, h
    nop
    rst $38
    or $28
    ld sp, hl
    ld hl, $c3c0
    ld b, e
    sbc h
    sbc a
    or b
    jp nz, $df00

    or $0a
    ld sp, hl
    ld hl, $ff9d
    ld [c], a
    nop
    ld b, c
    add e
    nop
    rst $38
    ld a, e
    adc e
    ld a, [bc]
    ld h, h
    ld b, a
    and d
    ld e, l
    di
    nop
    db $fd
    db $fc
    add sp, $00
    nop
    ld d, [hl]
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
    add hl, bc
    ld bc, $2001
    ld a, [bc]
    ld bc, $2602
    ld a, [bc]
    ld bc, $2703
    ld a, [bc]
    ld bc, $2104
    dec bc
    ld bc, $2605
    dec bc
    ld bc, $2106
    inc c
    ld bc, $2207
    ld de, $0801
    inc h
    ld de, $0901
    jr z, @+$13

    ld bc, $210a
    ld [de], a
    ld bc, $280b
    ld [de], a
    ld bc, $210c
    inc de
    ld bc, $200d
    inc d
    ld bc, $210e
    inc d
    ld bc, $200f
    dec d
    ld bc, $2110
    dec d
    ld bc, $1f11
    ld d, $01
    ld [de], a
    jr nz, @+$18

    ld bc, $2113
    ld d, $01
    inc d
    ld e, $17
    ld bc, $1f15
    rla
    ld bc, $2016
    rla
    ld bc, $2117
    rla
    ld bc, $1d18
    jr jr_06d_6955

    add hl, de

jr_06d_6955:
    ld e, $18
    ld bc, $1f1a
    jr jr_06d_695d

    dec de

jr_06d_695d:
    jr nz, jr_06d_6977

    ld bc, $1c1c
    add hl, de
    ld bc, $1d1d
    add hl, de
    ld bc, $1e1e
    add hl, de
    ld bc, $251f
    add hl, de
    ld bc, $1b20
    ld a, [de]
    ld bc, $2421
    dec de

jr_06d_6977:
    ld bc, $2722
    dec de
    ld bc, $2123
    inc e
    ld bc, $1f24
    dec e
    ld bc, $2625
    dec e
    ld bc, $2526
    ld e, $01
    daa
    inc e
    rra
    ld bc, $2428
    rra
    ld bc, $2029
    jr nz, jr_06d_6999

    ld a, [hl+]

jr_06d_6999:
    ld hl, $0120
    dec hl
    ld [hl+], a
    jr nz, jr_06d_69a1

    inc l

jr_06d_69a1:
    jr @+$23

    ld bc, $1f2d
    ld hl, $2e01
    jr nz, @+$23

    ld bc, $212f
    ld hl, $3001
    rla
    ld [hl+], a
    ld bc, $1831
    ld [hl+], a
    ld bc, $1f32
    ld [hl+], a
    ld bc, $2033
    ld [hl+], a
    ld bc, $1734
    inc hl
    ld bc, $1f35
    inc hl
    ld bc, $2036
    inc hl
    ld bc, $1e37
    inc h
    ld bc, $1f38
    inc h
    ld bc, $1e39
    dec h
    ld bc, $1f3a
    dec h
    ld bc, $1f3b
    ld h, $01
    inc a
    jr nz, @+$28

    ld bc, $1f3d
    daa
    ld bc, $203e
    daa
    ld bc, $1a3f
    jr z, jr_06d_69f1

    ld b, b

jr_06d_69f1:
    jr nz, @+$2a

    ld bc, $2041
    add hl, hl
    ld bc, $1a42
    ld a, [hl+]
    ld bc, $2143
    ld a, [hl+]
    ld bc, $2144
    dec hl
    ld bc, $1845
    inc l
    ld bc, $1846
    dec l
    ld bc, $1947
    dec l
    ld bc, $1948
    ld l, $01
    ld c, c
    ld a, [de]
    ld l, $01
    ld c, d
    ld [hl+], a
    ld l, $01
    ld c, e
    ld [hl+], a
    cpl
    ld bc, $234c
    cpl
    ld bc, $224d
    jr nc, jr_06d_6a29

    ld c, [hl]

jr_06d_6a29:
    inc hl
    jr nc, jr_06d_6a2d

    ld c, a

jr_06d_6a2d:
    inc hl
    ld sp, $5001
    dec e
    ld [hl-], a
    ld bc, $2251
    inc sp
    ld bc, $1e52
    inc [hl]
    ld bc, $2353
    ld [hl], $01
    ld d, h
    dec e
    scf
    rst $38
    rst $38
    rst $38
    ld c, [hl]
    ld l, d
    sbc b
    ld l, [hl]
    reti


    ld [hl], e
    ld hl, sp+$73
    dec e
    ld c, $ff
    ld [c], a
    dec c
    dec c
    dec c
    rst $30
    db $e3
    or $ff
    db $ec
    xor $01
    ld c, $d9
    pop hl
    push de
    db $e3
    or $ff
    db $ec
    rst $28
    sbc c
    rst $38
    or $fc
    sbc c
    rst $38
    nop
    or $fd
    sbc c
    rst $20
    sub c
    ldh [$ad], a
    and $85
    rst $38
    nop
    pop af
    ld l, l
    db $e3
    push bc
    ld [c], a
    nop
    add l
    rst $38
    nop
    jp hl


    add l
    push hl
    ret nz

    rst $20
    add l
    rst $38
    nop
    jp hl


    add h
    ld [c], a
    ld a, $e4
    jr nc, jr_06d_6ac1

    push hl
    ld a, e
    rst $38
    sbc c
    rst $20
    ld b, h
    db $e3
    dec l
    dec l
    pop bc
    and $85
    rst $38
    inc e
    nop
    ret


    add hl, bc
    db $e4
    ld c, l
    ld c, l
    ld c, l
    cp [hl]
    pop hl
    adc e
    and $7b
    rst $38
    inc l
    ld d, b
    push hl
    add l
    pop bc
    ld l, l
    ld c, e
    rst $38
    ldh [rKEY1], a
    ld a, h
    ldh [$88], a
    pop hl
    jp hl


    dec l
    add l
    rst $38
    rst $00
    and $4d
    sub $e2

jr_06d_6ac1:
    ld l, l
    ld c, e
    dec hl
    rrca
    dec bc
    dec hl
    dec bc
    ld c, e
    ld a, l
    ld [c], a
    ret nz

    ldh [$b9], a
    ld [c], a
    ld a, e
    rst $38
    ld a, h
    ld c, h
    add $c1
    ldh [$0a], a
    ld l, d
    ld a, [bc]
    ld l, d
    dec bc
    ld a, l
    pop hl
    ld hl, sp-$02
    jp $ff00


    jp Jump_06d_4bc9


    ld c, e
    ld l, e
    ld a, [bc]
    ld a, [bc]
    ccf
    ld a, [hl+]
    ld a, [bc]
    ld l, e
    ld a, [hl+]
    ld c, e
    ld c, e
    db $fc
    add $00
    rst $38
    ld hl, sp+$4f
    call nz, $e017
    add c
    pop hl
    dec bc
    dec hl
    dec hl
    dec bc
    ld a, [bc]
    cpl
    ld c, d
    ld c, e
    dec l
    ld l, l

jr_06d_6b05:
    ld h, $a2
    dec l
    ld [hl], c
    pop bc
    nop
    rst $38
    sbc $c0
    push hl
    ld l, e
    ld a, [bc]
    ld a, [hl+]
    dec bc
    rst $38
    ldh [rWY], a
    ld a, [bc]
    ldh [$3f], a
    pop hl
    ld [hl], $a3
    or l
    jp $fe00


    sub a
    ret nz

    ld c, l
    dec c
    ld c, e
    rst $38
    ld a, [bc]
    ld c, d
    dec bc
    dec bc
    ld c, e
    ld l, e
    dec bc
    dec hl
    ldh a, [$7b]
    pop bc
    cp e
    call nz, $bff6
    pop bc
    ret z

    ld a, [hl+]
    ld a, [hl+]
    ld c, e
    ld l, e
    rlca
    ld c, e
    ld c, e
    dec bc
    ld a, h
    pop bc
    jr c, jr_06d_6b05

    dec a
    ld [c], a
    nop
    rst $38
    pop bc
    add $08
    add c

Jump_06d_6b4b:
    ret nz

    db $10
    ret nz

    ld a, a
    ldh [$0b], a
    or h
    ret nz

    ld a, d
    jp nz, $a635

    ld h, e
    and h
    inc c
    db $ec
    or c
    ld c, $a4
    ld c, l
    dec l
    nop
    pop hl
    ret nc

    and b
    add b
    pop hl
    or d
    pop bc
    call nz, $c639
    nop
    push hl

Jump_06d_6b6d:
jr_06d_6b6d:
    ld c, l
    jp c, Jump_000_00a2

    or [hl]
    cp a
    ldh [rWX], a
    ld c, e
    jr nc, jr_06d_6bb3

    pop bc
    db $fd
    pop bc
    cp c
    ldh [$74], a
    and b
    dec l
    ld l, l
    inc l
    add e
    or e
    and c
    add b
    ld [hl], h
    pop bc
    sbc c
    add e
    ld h, a
    and b
    reti


    add d
    nop
    ld l, h
    cp [hl]
    ret nz

    pop bc
    ld h, d
    dec l
    add hl, bc
    dec bc
    db $fd
    ret nz

    ei
    jp Jump_000_3c4d


    and b
    ld h, l
    and c
    ld [hl], e
    and c
    ld e, l
    add h
    ld h, b
    jp $f1e1


    db $e3
    nop
    ld l, d
    pop hl
    ld [c], a
    scf
    push hl
    ld l, e
    ld l, e
    add hl, sp
    pop bc

jr_06d_6bb3:
    nop
    ld a, a
    ld [c], a
    ld a, e
    push bc
    ret nz

    db $e3
    ld e, a
    add c
    or c
    and $cd
    db $e3
    inc a
    ld l, c
    inc e
    db $e4
    nop
    cp a
    ldh [$c0], a
    ld [c], a
    ld l, [hl]
    and b
    cp b
    and l
    ret z

    ld [c], a
    or d
    and d
    cp e
    jp $e271


    add sp, $00
    ld l, e
    and e
    jp nz, Jump_06d_6442

    dec hl
    ld a, $e1
    dec hl
    dec hl
    dec c
    and b
    cp b
    and l
    add l
    jp nz, Jump_06d_60e5

    ld [hl+], a
    add b
    jr nz, jr_06d_6b6d

    ld l, l
    ld h, e
    and b
    ld l, l
    add c
    ld l, l
    xor $c2
    ld l, a
    jp nz, $8299

    db $f4
    db $e3
    ld [bc], a
    ld h, h
    ccf
    ldh [$0a], a
    db $f4
    cp a
    push hl
    xor a
    ld h, d
    ld l, l
    xor l
    add c
    ld c, l
    ld l, l
    ld c, h
    inc c
    nop
    rst $38
    pop hl
    add $e4
    ret nz

    db $e4
    ld e, $8a
    cp $c6
    rst $30
    ld h, b
    cp b
    and b
    xor l
    add b
    ld [de], a
    ld a, [c]
    ld h, b
    dec l
    add sp, $62
    jp nz, Jump_000_2ce1

    db $db
    ld h, d
    rst $38
    db $e3
    add b
    and $70
    ld e, $a8
    ld b, e
    ld h, d
    dec bc
    and c
    inc a
    ret nz

    ld c, e
    ld c, e
    ld a, [bc]
    ld a, [hl-]
    ret nz

    ld [bc], a
    or c
    ld h, c
    ld c, l
    xor c
    ld h, b
    add [hl]
    pop hl
    jp nz, $c4e0

jr_06d_6c45:
    ld [c], a
    pop bc
    call nz, $e640
    inc c
    sbc c
    ld l, e
    ld d, a
    jp nz, Jump_06d_6b4b

    cp b
    and c
    ei
    ldh [rPCM34], a
    and d
    pop bc
    ldh [$03], a
    inc l
    ld c, e
    ld h, c
    ld h, c
    ld a, [hl-]
    push bc
    ld [hl-], a
    push bc
    ld e, $94
    ld [hl], h
    and c
    ld [hl], c
    add c
    inc b
    ret nz

    pop hl
    cp a
    db $e3
    inc c
    db $ed
    ld h, b
    add c
    and d
    or $a4
    ld c, c
    add sp, $1e
    ld l, [hl]
    ld b, b
    db $f4
    ld h, e
    ld a, h
    db $e3
    add sp, $63
    ret nz

    db $e3
    ld [hl], c
    sub l
    ld e, $90
    dec l
    ret nz

    ldh [rNR24], a

jr_06d_6c89:
    dec hl
    pop bc
    push hl
    db $ed
    add c
    inc c
    ld l, h
    ret nz

    db $e4
    ld c, a
    add $00
    inc sp
    jr nz, jr_06d_6c45

    dec b
    dec sp
    ld b, b
    ei
    add e
    ld [hl], a
    and d
    ld l, h
    ld h, b
    inc c
    dec l
    ld h, d
    ldh [rNR42], a
    ret nz

    nop
    inc a
    add sp, -$3c
    ld a, [$fa20]
    add d
    or e
    ld b, b
    ldh a, [$61]
    dec hl
    inc c
    jr nz, @-$08

    and e
    db $ec
    ld d, b
    ld e, $4d
    ld a, [hl]
    inc b
    cp a
    db $e4
    ld l, e
    xor a
    ld h, c
    inc l
    ld b, b
    nop
    cp a
    ret nz

    or $a1
    ld a, [bc]
    and a
    nop
    ld hl, sp+$7e
    inc bc
    ld sp, $7d82
    pop bc
    ld l, c
    ld b, b
    rlca
    dec bc
    ld c, h
    inc l
    xor b
    ld b, b
    and a
    jr nz, jr_06d_6c89

    inc hl
    nop
    db $fc
    ld a, [hl-]
    add e
    inc a
    ld sp, $f183
    ld bc, $0b4b
    ld l, e
    inc c
    and a
    ld [hl+], a
    db $e4
    nop
    ld b, b
    sub a
    ld hl, $2c67
    nop
    xor $2f
    jr z, @-$47

    pop bc
    rst $20
    ld hl, $3b0c
    pop hl
    add c
    dec bc
    and $03
    sbc h
    ld bc, $f800
    jr z, @+$2a

    ld b, c
    ld b, c
    xor d
    jr nz, jr_06d_6d1d

    rla
    ld l, e
    ld c, h
    inc l
    xor e
    ld b, b
    ld l, e
    ret nz

    push hl
    nop
    rst $18
    ld l, $43

jr_06d_6d1d:
    nop
    db $fc
    ld [bc], a
    ld a, [hl+]
    ld h, c
    ld b, c
    pop hl
    ld l, d
    ld b, b
    ld [$ec25], a
    ld l, $99
    dec d
    ld b, e
    ld h, d
    nop
    xor b
    ld b, c
    ld b, c
    ldh [$2a], a
    ld b, d
    inc a
    call nz, $66d6
    ld e, $3c
    cp [hl]
    inc hl
    ld bc, $20e2
    ld a, [hl-]
    jp nz, $02a6

    ld [bc], a
    ld h, l
    nop
    cp $c0
    jp hl


    ld l, e
    ld l, b
    ld b, d
    db $e4
    nop
    nop
    xor $40
    jp nz, $0049

    or $34
    ret


    add c
    add c
    ld a, [hl-]
    pop bc
    xor h
    ld b, d
    push af
    ld b, c
    ld b, b

Jump_06d_6d61:
    add e
    ld b, e
    nop
    rst $38
    adc l
    ld [hl+], a
    jr z, @+$22

    ld [bc], a
    add b
    ld bc, $6b80
    add hl, hl
    ld b, d
    ld h, b
    ccf
    db $e4
    nop
    ld d, b
    or $b1
    ld bc, $c0e7
    db $e4
    dec hl
    dec bc
    inc a
    inc h
    nop
    ld h, a
    ld b, $00
    ld hl, sp-$3f
    ret


    ld [c], a
    nop
    ldh a, [$82]
    ld a, b
    add b
    ld e, c
    ld h, l
    nop
    rst $38
    ld [bc], a
    add c
    push bc
    ld l, h
    pop bc
    pop hl
    dec hl
    ld b, c
    cp b
    ret nz

    ld a, e
    or b
    nop
    ld hl, sp-$17
    inc bc
    nop
    cp a
    pop hl
    add c
    db $e3
    ld l, $a4
    ld sp, hl
    inc b
    nop
    cp $bf
    add sp, $37
    add c
    dec l
    ld b, d
    ret nz

    cp l
    ld hl, $68f6
    nop
    rst $10
    push af
    ld h, a
    cp a
    ld b, d
    add b
    ret nz

    ld l, e
    dec bc
    add c
    ld c, e
    xor c
    ld bc, $a3ba
    push af
    add e
    nop
    ei
    dec d
    and c
    ld c, c
    jr nz, jr_06d_6dfc

    inc bc
    ld c, e
    inc c
    db $fc
    jp nz, Jump_000_00a8

    rst $30
    pop bc
    push af
    ld h, d
    sub e
    ld h, e
    nop
    cp $1a
    db $fc
    add h
    ld l, e
    cp [hl]
    ldh [$0c], a
    ld l, h
    cp l
    ret nz

    ld a, b
    ret nz

    ld a, [hl-]
    pop bc
    jr z, @+$75

    ld h, [hl]
    nop
    rst $38
    ld l, c
    ld [bc], a
    dec c
    ld [hl], d
    ld h, c
    inc c
    ld l, c
    ld hl, $8175
    ld b, b

jr_06d_6dfc:
    cp a
    db $e3
    ld l, [hl]
    ld bc, $fa00
    db $fd
    rst $00
    ld a, c
    push bc
    pop bc
    db $e3
    dec l
    cp b
    and l
    nop
    nop
    cp l
    ld [hl], c
    ld h, [hl]
    ld d, b
    and c
    ld a, c
    ld hl, $4036
    daa
    ld bc, $e2bb
    inc hl
    and d
    jr nz, jr_06d_6e1e

jr_06d_6e1e:
    cp e
    or $68
    ret nz

    db $e4
    add d
    pop hl
    cp a
    ret nz

    dec hl
    ld a, b
    and b
    jp nz, $9806

    nop
    or [hl]
    db $ec
    ld a, [bc]
    ld [hl], l
    nop
    ld c, h
    inc l
    db $fc
    add e
    pop bc
    pop hl
    dec c
    jr nc, jr_06d_6eb5

    ld [bc], a
    nop
    rst $38
    ld e, c
    push bc
    scf
    ld h, c
    inc c
    ld c, e
    adc b
    ldh [$71], a
    ld hl, $c1e0
    pop hl
    dec a
    ld bc, $ff00
    ld [c], a
    add h
    ld a, [bc]
    add c
    ld c, l
    dec l
    inc c
    ret nz

    add hl, hl
    ld b, b
    ld a, [hl-]
    add b
    pop bc
    db $e3
    add c
    call nz, $ff00
    or $65
    dec c
    dec c
    add hl, de
    inc c
    or l
    and c
    inc a
    pop bc
    dec c
    ld l, l
    inc [hl]
    inc bc
    nop
    ld a, h
    or $6b
    daa
    dec l
    ld c, l
    inc c
    adc d
    ldh [$7c], a
    ld b, d
    ld l, l
    nop
    cp a
    or $6f
    nop
    sub b
    jp $a1f5


    and b
    inc h
    nop
    rst $18
    or $6a
    ld d, b
    jp Jump_000_20ee


    rst $00
    jp $0000


    and h
    nop
    nop
    nop
    rst $38
    pop hl
    ld [c], a
    db $e3
    db $e4
    call c, $a0dd
    sbc $f3
    rst $18
    ldh [$f6], a
    rst $38
    db $ec
    pop af
    ld [$eceb], a
    and b
    ccf
    push hl
    and $e7
    and b
    add sp, -$17
    or $ff

jr_06d_6eb5:
    db $ec
    pop af
    ld h, b
    sbc c
    rst $38
    or $fb
    sbc c
    rst $38
    or $fb
    sbc c
    db $eb

Jump_06d_6ec2:
    and b
    and b
    add l
    ldh [$67], a
    ret nc

    pop de
    and b
    add l
    rst $38
    nop
    di
    sub $d7
    cp [hl]
    ldh [$c3], a
    jp nc, $b9d3

    ldh [$85], a
    rst $38
    nop
    db $ec
    add l
    ld [c], a
    ret c

    reti


    ccf
    and b

Jump_06d_6ee1:
    db $ed
    xor $d4
    push de
    rst $28
    add l
    rst $38
    nop
    xor $fe
    add h
    ld [c], a
    jp c, $a0db

    ldh a, [$f1]
    ld a, [c]
    di
    ld l, c
    db $f4
    add l
    rst $38
    nop
    xor $a0
    add h
    ldh [$f5], a
    or $ff
    ret nz

    add $fd
    pop hl
    sub $d7
    add l
    rst $38
    nop
    res 0, h
    ld [c], a
    sbc a

jr_06d_6f0d:
    and d
    ld l, a
    sbc l
    sbc l
    sbc l
    sbc a
    cp c
    ldh [$d8], a
    reti


    add l
    rst $38
    db $ec
    nop
    rst $00
    adc d
    ret nz

    db $e3
    db $e4
    add h
    ldh [$9f], a
    sbc h
    ld b, [hl]
    ld b, $ff
    ldh [$9c], a
    sbc a
    jr c, jr_06d_6f0d

    or [hl]
    ret nz

    nop
    rst $38
    nop
    jp $e14c


    inc [hl]
    ld c, h
    ret nz

    pop bc
    pop hl
    ld b, l
    rst $38
    ldh [rDMA], a
    sbc h
    ld a, l
    ldh [$32], a
    pop hl
    ldh a, [$7b]
    rst $18
    nop
    call nz, $c34c
    pop bc
    pop hl
    ld b, a
    ld d, h
    ld c, c
    ld d, d
    dec c
    ld b, l
    ld a, l
    ld [c], a
    jp c, $f9db

    and b
    nop
    rst $38
    nop
    and d
    ld c, h
    jp $9eff


    ld b, [hl]
    ld b, [hl]
    ld b, h
    ld d, h
    ld d, a
    ld d, h
    ld e, c
    rst $18
    ld b, h
    ld c, b
    ld b, [hl]
    ld b, [hl]
    and c
    or [hl]
    ret nz

    jp nc, $f8d3

    nop
    rst $38
    nop
    db $e4
    ld c, h
    jp nz, Jump_06d_469e

    ld b, l

jr_06d_6f7a:
    ld c, e
    ld d, d
    rst $38
    ld a, [hl+]
    inc hl
    cp h
    add hl, sp
    ld c, l
    ld d, l
    ld b, [hl]
    sbc [hl]
    ldh a, [$f9]
    and e
    ld [hl], c
    and d
    nop
    rst $38
    ld c, e
    pop bc
    push af
    or $9e
    ld b, [hl]
    rst $38
    ld b, h
    ld d, d
    ld d, h
    daa
    jr nz, @+$27

    ld a, [hl-]
    ld c, e
    add c
    ld d, l
    cp h
    ret nz

    ld sp, hl
    and d
    ld [hl], c
    and c
    nop
    rst $38
    ld a, [bc]
    and b
    ld c, b
    and c
    sbc [hl]
    rst $38
    ld b, [hl]
    ld c, d
    ld d, [hl]
    ld a, [hl+]
    jr nz, @+$28

    ld hl, $0335
    ld [hl], $44
    ld a, e
    ret nz

    jr c, jr_06d_6f7a

    add hl, sp
    pop bc
    ld a, e
    sbc $85
    and d
    call nz, $fea1
    ld b, e
    ret nz

    ld d, l
    ld d, h
    ld a, [hl+]
    ld a, [hl+]
    scf
    jr c, jr_06d_7001

    add e
    dec [hl]
    ld [hl], $bd
    ret nz

    cp e
    call nz, $de7b
    nop
    jp $a048


    and c
    cp $c1
    ret nz

    ld b, a
    ld d, h
    or d
    xor [hl]
    or d
    ld a, [hl-]
    rst $08
    scf
    rst $08
    add hl, sp
    or d
    rst $30
    and h
    push af
    or $7b
    xor c
    ret c

    and d
    or $00
    db $d3
    push af
    or $02
    pop bc
    ld d, e
    ld d, e
    xor [hl]
    xor a
    ld a, a
    or d
    ld a, $ce
    adc $3a

jr_06d_7001:
    or d
    or d
    cp [hl]
    pop hl
    add [hl]
    or [hl]
    and b
    sub $d7
    ld a, e
    rst $00
    jp c, Jump_000_00a3

    or [hl]
    add d
    and d
    xor a
    rst $38
    ld b, [hl]
    ld b, [hl]
    add hl, sp
    rst $08
    rst $08
    dec [hl]
    ld [hl], $b2
    add l
    or d
    inc a
    pop hl
    and c
    db $eb
    add c
    ld a, e
    and b
    add hl, hl
    add d
    ld h, $82
    sbc $21
    rst $18
    ld h, a
    and d
    ld h, a
    rst $00
    ld e, $c5
    ld b, $80
    sbc a
    inc bc
    and b
    nop
    and b
    cp a
    sbc h
    ccf
    ld [hl], $35
    dec [hl]
    dec sp
    ei
    jp nz, Jump_000_319c

    sbc a
    ld l, a
    add b
    or c
    ld h, b
    ld [hl], e
    and c
    sub $d7
    dec l
    jp $801d


    ldh [$da], a
    ld h, c
    ld h, a
    push hl
    ld e, $a4
    add d
    add b
    add e
    add l
    sbc a
    sbc h
    ld b, l
    dec hl
    ld a, [hl-]
    dec [hl]
    rst $38
    ldh [$39], a
    di
    add b
    sbc [hl]
    or c
    ld h, e
    cp b
    pop bc
    inc bc
    ret c

    reti


    ld h, $83
    dec e
    add b
    inc h
    and c
    ld h, a
    db $e3
    nop
    ld h, a
    sub l
    pop bc
    ld a, $82
    ld h, d
    ret nc

    pop de
    sbc a
    sbc h
    add hl, sp
    ret nz

    pop hl
    ei
    ret nz

    nop
    cp b
    and [hl]
    daa
    add b
    ld [hl], h
    jp nz, $831f

    ld l, c
    pop bc
    sub $60
    nop
    adc h
    call z, $fb82
    push af
    or $42
    ld h, b
    and c
    ld b, h
    inc a
    dec [hl]
    rst $08
    rrca
    call Call_000_36cf
    or d
    cp b
    and l
    daa
    add b
    ld l, e
    add b
    rra
    db $e4
    adc h
    ld h, c
    add b
    ret c

    ld h, [hl]
    and b
    and b
    nop
    add a
    add d
    ld h, d
    or $83
    ld b, l
    rra
    ld a, [hl-]
    rst $08
    set 1, h
    call z, $e3bf
    xor e
    ld h, c
    daa
    add b
    ld a, a
    sbc h
    sbc a
    sbc a
    sbc l
    sbc h
    ld [de], a
    inc de
    rst $38
    pop hl
    ldh [$c4], a
    and $93
    ld h, c
    ld e, $8b
    ld b, d
    ld h, e
    ccf
    ldh [$cf], a
    call Call_06d_50cd
    cp a
    ldh [$f9], a
    and b
    ld a, [c]
    ld h, c
    add sp, $62
    sbc h
    jp nz, $12e0

    ld l, c
    and b
    ldh a, [rNR44]
    add c
    cp [hl]
    add sp, $1e
    adc d
    ld b, h
    ld h, h
    and b
    sbc [hl]
    ld b, l
    ld [hl], $df
    jr c, jr_06d_7138

    rst $08
    set 1, [hl]
    ld a, [$9ca1]
    and d
    ld bc, $a99d
    ld h, b
    add [hl]
    pop hl
    jp nz, $c4e0

    ld [c], a
    add c
    jp Jump_06d_6416


    ld e, $8e
    call c, $41f8
    ld [hl], l
    add b
    or d
    or d
    rst $08
    add b
    ldh [$b2], a
    xor [hl]
    inc b
    ld l, [hl]
    ld h, c
    pop bc
    ldh [rNR12], a
    xor $82
    sbc e
    ld b, c
    ld [$d382], a
    ld b, b
    nop
    ld [hl], $3e
    ld hl, sp+$41
    sbc h
    ld b, [hl]

jr_06d_7138:
    xor [hl]
    or d
    rst $08
    cp a
    ret nz

    ld [hl], c
    and b
    add d
    cp a
    ld [c], a
    ld de, $c235
    or $a4
    add c
    call nz, Call_000_3500
    ld a, d
    ld b, c
    sbc [hl]
    rrca
    ld b, [hl]
    xor a
    or d
    inc a
    pop bc
    ld [c], a
    ld [hl], $a3
    ret nz

    db $e3
    or $a2
    db $fc
    nop
    ccf
    ld a, e
    jr nz, @-$5d

    ld b, [hl]
    or d
    add hl, sp
    inc a
    or d
    add hl, hl
    or d
    pop bc
    ld [c], a
    db $f4
    add b
    ld b, l
    ld b, b
    ldh [$9e], a
    xor [hl]
    ld h, h
    nop
    ld a, [hl-]
    xor h
    adc a
    ld b, d
    inc sp
    add d
    or d
    add hl, sp
    ei
    add c
    ld [hl], $78
    ret nz

    call $f61e
    and b
    ld b, l
    ld de, $a146
    and a
    inc hl
    db $ec
    ld c, l
    ld e, $6f
    add sp, -$3b
    ld b, d
    cp a
    ldh [$c4], a
    ld [c], a
    call z, $c138
    adc $35
    ld [hl], $01
    ld de, $8332
    ld [hl], c
    adc c
    nop
    db $f4
    ld a, e
    ld hl, $4272
    ld a, a
    ret nz

    cp h
    and c
    dec bc
    ld [hl], $cf
    ret nz

    ldh [$3a], a
    cp a
    ret nz

    add sp, $21
    ld a, [bc]
    and l
    nop
    ld a, [$c576]
    ld b, e
    sbc a
    sbc h
    ld b, e
    ldh [$cf], a
    ld [hl], $ae
    inc a
    ldh [$7f], a
    rst $08
    dec [hl]
    ld [de], a
    ld [de], a
    jr c, jr_06d_7203

    ld b, l
    ld l, a

jr_06d_71ce:
    ld h, e
    add sp, $00
    rst $38
    rla
    db $e4
    ld sp, $9c82
    ld a, [hl]
    ret nz

    ld [hl], $35
    inc a
    dec c
    ld de, $616b
    ld b, [hl]
    sbc [hl]
    ldh [rP1], a
    sub a
    ld hl, $fc00
    ld a, d
    and l
    cp h
    inc sp
    add e
    ld [hl], l
    ld h, b
    inc a
    ld a, [hl-]
    ld de, $6b3c
    ld h, b
    ld b, l
    ret nz

    ld [hl-], a
    add h
    ld h, a
    ld a, [hl+]
    ld e, $35
    ldh a, [$61]
    jr nc, @-$7d

    jp hl


    ld b, b

jr_06d_7203:
    or d
    ld a, [hl-]
    dec de
    ld [de], a
    ld [de], a
    ei
    ret nz

    inc a
    ld b, h
    ld [$0025], a
    call c, $c47b
    cp h
    db $fc
    inc bc
    xor h
    ld bc, $1139
    ld a, [hl-]
    adc $71
    add b
    ld b, b
    add b
    ld [hl-], a
    add l
    nop
    call c, $86f6
    ld b, e
    ld h, d
    xor d
    ld bc, $e041
    ld a, [hl-]
    ret nz

    add hl, sp
    add b
    or h
    add b
    db $eb
    jr nz, jr_06d_71ce

    ld h, c
    nop
    reti


    adc a
    ld c, b
    or d
    ld h, d
    add sp, $00
    ld de, $b802
    and b
    call z, $c0ff
    inc hl
    ld [bc], a
    ld h, [hl]
    ld bc, $ff00
    db $ec
    ld b, c
    xor b
    ld b, $03
    ld de, $3a45
    jp nz, $c03c

    and $00
    xor e
    ld hl, $fe00
    add l
    inc bc
    nop
    xor b
    inc b
    add c
    add b
    ld a, [hl-]
    pop bc
    xor h
    ld b, d
    inc a
    pop bc
    nop
    rst $38
    adc a
    daa
    cp a
    pop bc
    ld [$8002], sp
    cp a
    ldh [rOCPD], a
    ld b, c
    ld a, [hl-]
    cp e
    and c
    ld a, [c]
    inc hl
    nop
    rst $38
    ld [hl], h
    ld h, h
    ld l, b
    ld [bc], a
    add d
    ld a, a
    ldh [rOCPD], a
    ld b, d
    ld [hl], $fb
    and b
    ret c

    reti


    ld a, b
    ld hl, $0060
    rst $38
    ld l, [hl]
    ld b, e
    ret nz

    db $e4
    ld l, b
    jr nz, @-$3e

    push hl
    jp c, $bbdb

    and c
    ret nc

    nop
    rst $38
    ld h, a
    nop
    xor b
    inc bc
    ld b, b
    pop hl

jr_06d_72a4:
    ld b, [hl]
    xor e
    ld [hl+], a
    inc a
    or d
    nop
    inc l
    jr nz, jr_06d_72a4

    ld h, h
    nop
    rst $38
    ld h, a
    nop
    xor b
    ld [bc], a
    rst $38
    jp nz, Jump_000_20ec

    ret nz

    pop hl
    pop bc
    or d
    cp e
    and h
    sub h
    jr nz, jr_06d_72c1

jr_06d_72c1:
    rst $38
    jr nc, jr_06d_72e8

    ret nz

    ld b, d
    ld b, l
    ld [hl], $41
    dec sp
    nop
    pop hl
    xor h
    jr nz, @-$41

    jr nz, @-$43

    ld b, c
    nop
    cp $e3
    sbc e
    ld bc, $a838
    ld bc, $a03d
    cp a
    ld b, b
    ld b, l
    ld b, e
    ccf
    add sp, $00
    xor c
    ld bc, $f520
    ld h, c

jr_06d_72e8:
    sub h
    jr nz, jr_06d_72eb

jr_06d_72eb:
    rst $38
    inc l
    inc hl
    dec a
    jp nz, $fc13

    pop bc
    add sp, $00
    ld [hl], $7b
    and b
    ld b, l
    ld b, c
    push af
    ld h, c
    push af
    or $00
    rst $38
    call nc, $d403
    db $fc
    add d
    cp [hl]
    ld hl, $e812
    nop
    add hl, sp
    scf

jr_06d_730c:
    ldh [$a6], a
    ld [hl], $c0
    or h
    ld h, c
    sub c

jr_06d_7313:
    ld bc, $ff00
    xor [hl]
    inc bc
    inc b
    jr nz, @-$04

    ld hl, $3645
    ld a, a
    ld [hl], $45
    ld b, l
    ld [hl], $62
    and a
    ld h, [hl]
    cp a
    ld [c], a
    and b
    ld h, c
    add c
    nop
    ld a, [$827b]
    ld c, c
    ld b, h
    ld a, c
    jp $c145


    pop hl
    ld h, a
    dec bc
    and e
    ld l, b
    cp a
    ldh [$a1], a
    sub c
    ld bc, $bc00
    ld h, a
    add c
    dec c
    add h
    ld hl, sp-$08
    and c
    ld a, c
    jr nz, jr_06d_730c

    pop hl
    dec [hl]
    dec [hl]
    ld l, h
    or a
    cp b
    pop bc
    ld b, d
    rst $30
    add d
    nop
    db $fc
    db $ec
    ld b, $38
    and e
    ccf
    pop hl
    cp c
    cp d
    rra
    and e
    dec [hl]
    ld l, h
    ld l, a
    ld l, [hl]
    jr c, @-$5d

    ld b, d
    nop
    nop
    sbc e
    ld a, b
    ld h, a
    and a
    jr c, jr_06d_7313

    ld b, b
    ldh [$36], a
    ld l, [hl]
    ld l, a
    ld l, h
    pop bc
    ld [c], a
    inc bc
    sbc h
    sbc a
    cp c
    add e
    nop
    db $fd
    or $63
    xor h
    inc bc
    ei
    and c
    cp a
    ldh [$e0], a
    pop bc
    db $e3
    ld [hl+], a
    ld h, d
    nop
    rst $38
    ld [c], a
    add h
    xor h
    nop
    sbc a
    sbc h
    ld de, $9c07
    sbc l
    sbc h
    ld a, [hl]
    ldh [$c1], a
    db $e3
    sbc $42
    nop
    rst $38
    or $68
    rlca
    sbc [hl]
    ld de, $b19e
    ld b, b
    inc a
    pop bc
    ld [hl], l
    jr nz, @-$06

    jr nz, jr_06d_73b0

jr_06d_73b0:
    cp [hl]
    add $f6
    ld l, h
    sbc a
    ld de, $203e
    xor d
    ld [hl+], a
    cp d
    ld b, b
    jp nc, Jump_000_00d3

    nop
    cp a
    or $6c
    xor d
    ld [hl+], a
    ld c, d
    jp nz, Jump_000_23f8

    nop
    cp a
    or $6b
    cp d
    push hl
    nop
    ld b, b
    ld h, b
    ld hl, sp+$22
    nop
    ld [hl+], a
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
    ld bc, $0f00
    ld [de], a
    ld bc, $1101
    ld [de], a
    ld bc, $1602
    ld [de], a
    ld [bc], a
    inc bc
    db $10
    inc de
    ld bc, $1104
    inc de
    ld bc, $1605
    inc de
    ld bc, $1706
    inc de
    ld bc, $1807
    inc de
    ld [bc], a
    ld [$140f], sp
    ld bc, $1709
    inc d
    ld bc, $180a
    inc d
    ld bc, $1b0b
    rla
    ld bc, $1c0c
    rla
    ld bc, $1c0d
    jr @+$03

    ld c, $1d
    add hl, de
    ld bc, $1d0f
    ld a, [de]
    ld bc, $1d10
    dec de
    ld bc, $1e11
    dec de
    ld bc, $1812
    inc e
    ld bc, $1913
    inc e
    ld bc, $1d14
    inc e
    ld bc, $1e15
    inc e
    ld bc, $1916
    dec e
    ld bc, $1d17
    dec e
    ld [bc], a
    jr @+$21

    dec e
    ld bc, $2019
    dec e
    ld [bc], a
    ld a, [de]
    jr @+$20

    ld bc, $191b
    ld e, $01
    inc e
    inc e
    ld e, $02
    dec e
    ld e, $1e
    ld bc, $1f1e
    ld e, $01
    rra
    jr nz, @+$20

    ld bc, $2120
    ld e, $01
    ld hl, $1e22
    ld bc, $1822
    rra
    ld bc, $1b23
    rra
    ld bc, $1c24
    rra
    ld [bc], a
    dec h
    dec e
    rra
    ld bc, $1e26
    rra
    ld bc, $1f27
    rra
    ld bc, $2028
    rra
    ld bc, $2129
    rra
    ld bc, $222a
    rra
    ld bc, $232b
    rra
    ld bc, $242c
    rra
    ld bc, $182d
    jr nz, @+$03

    ld l, $1c
    jr nz, jr_06d_74b6

    cpl

jr_06d_74b6:
    dec e
    jr nz, @+$03

    jr nc, jr_06d_74d4

    ld hl, $3101
    ld a, [de]
    ld [hl+], a
    ld bc, $2132
    inc hl
    ld [bc], a
    inc sp
    jr nz, jr_06d_74ec

    ld bc, $2134
    inc h
    ld bc, $2235
    inc h
    ld bc, $2136
    dec h

jr_06d_74d4:
    ld bc, $2237
    dec h
    ld bc, $2338
    dec h
    ld bc, $2339
    ld h, $01
    ld a, [hl-]
    daa
    ld a, [hl+]
    ld bc, $273b
    dec hl
    ld bc, $283c
    dec hl

jr_06d_74ec:
    ld bc, $283d
    inc l
    ld bc, $293e
    inc l
    ld bc, $283f
    dec l
    ld bc, $2940
    dec l
    ld bc, $2f41
    cpl
    ld bc, $2f42
    jr nc, jr_06d_7506

    ld b, e

jr_06d_7506:
    jr nc, jr_06d_7538

    ld bc, $3044
    ld sp, $ffff
    rst $38
    rla
    ld [hl], l
    jp hl


    ld [hl], a
    cp h
    ld a, e
    db $db
    ld a, e
    ccf
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $ff
    db $e3
    or $ff
    nop
    db $ec
    rst $28
    db $dd
    pop hl
    rst $10
    db $e3
    or $ff
    or $f6
    sbc c
    rst $38
    or $f9
    sbc c
    rst $38
    nop
    add l
    rst $38
    or $ff

jr_06d_7538:
    nop
    rst $38
    or $ff
    ld a, e
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    inc h
    add l
    rst $38
    add l
    db $e4
    ld c, l
    rst $38
    db $e4
    or $e1
    dec c
    or $e4
    nop
    rst $38
    inc b
    add l
    rst $20
    add $e1
    dec c
    jp nz, $d4e2

    db $e3
    or b
    ldh [$7b], a
    rst $38
    ld h, a
    add sp, $00
    cp $c1
    ret nz

    pop hl
    ld hl, sp-$1b
    ld a, d
    ldh [rP1], a
    rst $38
    ld a, [bc]
    rst $20
    jp nc, $c0e2

    jp hl


    nop
    add l
    rst $38
    add l
    add sp, $0f
    ldh [$f9], a
    db $e4
    ld hl, sp-$1a
    ld [hl], $e5
    nop
    rst $38

jr_06d_7583:
    jp nz, $1ce1

    db $10
    db $e3
    ret z

    jp $2d4d


    dec l
    jp nz, Jump_06d_7bc4

    rst $38
    add l
    push bc
    ld d, $8a
    jp nz, $0b6d

    rst $38
    db $e4
    ld c, l
    cp a
    ldh [$f0], a
    jp $cc7b


    nop
    add l
    call nc, $c240
    pop bc
    rst $20
    cp a
    ld [c], a
    ret nz

    db $e4
    ld a, e
    ret z

    sbc c
    or [hl]
    add d
    push hl
    dec de
    dec c
    dec l
    ld a, b
    pop bc
    dec l
    dec c
    ld a, [hl]
    ld [c], a
    jp hl


    jp $ff00


    ld e, h
    ld b, $c3
    ld b, e
    pop hl
    dec l
    dec c
    dec l
    cp a
    ldh [$0b], a
    inc [hl]
    and b
    and b
    dec a
    db $e3
    add hl, hl
    and c
    db $fc
    and d
    nop
    rst $38
    adc l
    and b
    dec bc
    add c
    pop hl
    dec bc
    nop
    pop bc
    ld [c], a
    cp a
    ld [c], a
    ret nz

    pop hl
    ld a, e
    xor [hl]
    nop
    or $c0
    ld [c], a
    rst $38
    db $e4
    ld a, [hl]
    db $e3
    db $10
    ret nz

    db $e4
    nop
    rst $38
    inc c
    and e
    ret nz

    db $e3
    dec hl
    cp a
    push hl
    add b
    pop hl
    nop
    rst $18
    jr c, jr_06d_7583

    add a
    ld b, b
    pop hl
    ld b, d
    ret nz

    dec hl
    dec hl
    dec hl
    ccf
    push hl
    nop
    pop hl
    ld [$df00], sp
    adc [hl]
    add [hl]
    inc b
    jp $fe6b


    and c
    push af
    pop bc
    nop
    rst $38
    add l
    add $78
    sub h
    add c
    push bc
    and e
    ld b, b
    ldh [rWX], a
    ld c, e
    ld l, e
    ld c, e
    ld a, h
    pop bc
    jr nz, jr_06d_7629

jr_06d_7629:
    rst $38
    db $ec
    ld h, c
    sbc e
    and l
    add [hl]
    and h
    ld b, [hl]
    pop bc
    ld l, e
    ret nz

    pop hl
    nop
    rst $38
    ld a, b
    adc a
    ld h, l
    ld c, e
    add d
    ld b, a
    and l
    dec hl
    dec bc
    dec hl
    ld l, e
    rst $38
    and e
    ld [bc], a
    ld a, [$6da0]
    nop
    rst $38
    and c
    and d
    dec b
    ld h, b
    push bc
    and d
    adc d
    jp nz, $e0c1

    nop
    scf
    jp nz, $e0c1

    nop
    cp a
    and b
    and d
    push bc
    and [hl]
    ret


    and h
    add e
    and d
    add d
    pop hl
    ld d, b
    nop
    cp a
    ld a, [bc]
    ld h, d
    push bc
    and d
    add e
    ld [c], a
    dec hl
    ld [$2ba1], sp
    rst $30
    jp Jump_06d_6d61


    ldh a, [$64]
    ld l, c
    ld h, e
    nop
    ret c

    add l
    and e
    dec c
    dec l
    add h
    pop bc
    ld [bc], a
    call nz, Call_06d_4be1
    add d
    db $e4
    ldh a, [$64]
    jr z, jr_06d_76d1

    nop
    push af
    add l
    and h
    ld bc, $0262
    push bc
    ldh [rOCPD], a
    pop bc
    pop bc
    add d
    ld [c], a
    ld h, h
    jp nz, Jump_06d_7e00

    sbc d
    ld b, e
    ld b, a
    add b
    ld [bc], a
    ret nz

    ld b, c
    dec hl
    jp nz, Jump_06d_7fc2

    add b
    add [hl]
    and e
    add c
    ld b, e
    add l
    cp e
    adc d
    ld h, [hl]
    nop
    ld c, h
    add e
    cp l
    add e
    add [hl]
    and e
    nop
    ld a, $e0
    inc hl
    add d
    db $e4
    ret


    jp $a0ff


    nop
    ld b, $a8
    ld a, e
    dec a
    adc d
    ld h, [hl]
    ret nz

    rst $20
    jp nz, $86c2

    and d
    add l

jr_06d_76d1:
    xor h
    nop
    ld d, c
    nop
    adc d
    ld h, h
    rst $08
    ld h, [hl]
    ld b, l
    and c
    ret nz

    db $e4
    nop
    ccf
    inc d
    ld b, h
    pop bc
    push hl
    ld b, l
    jp nz, Boot

    ld h, b
    inc b
    ld h, d
    nop
    rst $38
    db $10
    ld h, $ce
    call nz, $8348
    ret nz

    ld b, d
    ld [bc], a
    call nz, Call_000_00f0
    rst $38
    push af
    ld [bc], a
    ld c, d
    add e
    ld [$4b80], sp
    dec bc
    ld c, e
    ld l, e
    ld b, b
    jp $0142


    db $e4
    nop
    rst $38
    ld [hl], c
    ld [hl+], a
    jp nc, $4966

    add b
    dec l
    add d
    ld b, b
    nop
    ret nz

    db $e4
    add l
    rst $38
    inc d
    inc h
    ld c, c
    add h
    ld b, d
    db $e4
    jp nz, $fb83

    jr nz, jr_06d_7792

    inc bc
    nop
    nop
    ld a, [$63e3]
    pop bc
    db $e4
    jp z, $c782

    ld b, [hl]
    ret nz

    push hl
    adc $12
    adc a
    dec b
    nop
    sbc e
    db $e3
    adc [hl]
    add l
    adc c
    add b
    add $26
    add [hl]
    inc hl
    nop
    ld sp, hl
    ret nz

    jp hl


    ld c, a
    add c
    nop
    ld sp, hl
    db $e3
    rst $00
    daa
    ld a, [bc]
    ld c, d
    nop
    ld [hl], $98
    inc hl
    ld b, [hl]
    and h
    ld b, l
    and d
    cp a
    ld h, e
    ld [$8304], sp
    nop
    rst $18
    jp c, Jump_000_2da1

    ld b, [hl]
    pop bc
    ld a, [hl]
    and $04
    add a
    ret c

    ld [hl], $02
    ld [hl-], a
    dec hl
    ld c, l
    cp a
    push hl
    ret z

    jr nz, @-$47

    db $e4
    inc b
    add e
    ld d, e
    dec d
    nop
    adc a
    nop
    ld a, [hl]
    db $e3
    pop bc
    add sp, $04
    add a
    nop
    rst $18
    ld a, [hl]
    and $82
    ld [$14d8], a
    nop
    adc [hl]
    nop
    cp $64
    db $fc
    pop bc
    add d
    ld [$19d8], a
    ld a, e

jr_06d_7792:
    rrca
    db $fc
    ret nz

    rst $38
    push hl
    ld [$0062], sp
    add l
    ld a, [c]
    nop
    ld [hl], $16
    ld h, h
    ld [hl-], a
    and b
    ld l, l
    and e
    add l
    rst $38
    ld a, e
    ld l, h
    ret z

    db $e4

jr_06d_77aa:
    nop
    or d
    ld h, c
    di
    dec b
    nop
    rst $38
    nop
    ld c, b
    ret z

    push hl
    db $fc
    push hl
    add l
    db $d3
    ld a, e
    rra
    nop
    rst $38
    add sp, $00
    rst $38
    ld a, e
    dec c
    cp $ea
    add l
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    ld a, e
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    add l
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    sbc c
    rst $38
    or $ff
    sbc c
    rst $38
    add l
    ld hl, sp+$00
    nop
    nop
    rst $38
    call c, $a0dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    di
    db $e3
    db $e4
    or $ff
    db $ec
    pop af
    push hl
    and $e7
    and b
    ccf
    add sp, -$17
    ld [$eceb], a
    and b
    or $ff
    db $ec
    pop af
    nop
    sbc c
    rst $38
    or $fb
    sbc c
    rst $38
    or $fb
    sbc c
    rst $38
    nop
    rst $38
    sbc c
    rst $38
    nop
    rst $38
    jr nz, jr_06d_77aa

    rst $38
    nop
    rst $38
    or $ff
    nop
    rst $38
    add l
    db $eb
    and b
    rst $38
    db $e4
    or $e9
    db $fc
    nop
    rst $38
    add l
    rst $20
    sbc $df
    ret nc

    pop de
    and b
    and b
    cpl
    sub $d7
    and b
    and b
    ld hl, sp-$1b
    and b
    nop
    rst $38
    ld a, [bc]
    add sp, -$01
    and b
    and b
    jp nc, $a0d3

    and b
    ret c

    reti


    ld hl, sp-$08
    rst $20
    nop
    rst $38
    ld a, [bc]
    add sp, -$60
    db $ed
    xor $d4
    push de
    rrca
    rst $28
    and b
    jp c, $f8db

    push hl
    db $76
    ldh [rP1], a
    rst $38
    add l
    push hl
    ld a, $03
    ldh [$f0], a
    pop af
    ld a, [c]
    di
    db $f4
    ld hl, sp-$18
    db $76
    pop hl
    db $fc
    nop
    rst $38
    add l
    ld [c], a
    and b
    push af
    or $d6
    rst $10
    push af
    rst $18
    or $a0
    sbc a
    and d
    sbc l
    rst $38
    ld [c], a
    and d
    sbc a
    ld e, $b3
    ret nz

    jp c, $d0db

    pop de
    nop
    rst $38
    add l
    push bc
    ld [$17e1], sp
    sbc a
    sbc h
    ld b, [hl]
    rst $38
    db $e4
    sbc h
    cp a
    pop hl
    ldh a, [$c2]
    ld a, e
    ret


    inc c
    ld e, $d6
    adc d
    ret nz

    jp c, $c1db

    add sp, -$41
    ld [c], a
    ldh a, [$c3]
    ld a, e
    ret


    db $fc
    add l
    rst $10
    add d
    db $e4
    or d
    add e
    adc c
    adc b
    adc b
    adc b
    add e
    adc c
    add e
    ld a, [hl]
    ld [c], a
    ldh a, [$c4]
    nop
    rst $38
    inc d
    ld [c], a
    ld b, e
    pop hl
    add e
    rst $38
    adc c
    add a
    add l
    or d
    or d
    ld b, [hl]
    add l
    add [hl]
    ldh [$bf], a
    db $e3
    db $f4
    and b
    db $ec
    ret nz

    nop
    rst $38
    add l
    and e
    sbc [hl]
    ld b, [hl]
    ld b, [hl]
    xor a
    adc d
    add l
    or d
    ld b, [hl]
    cp $e0
    or d
    cp a
    db $e3
    sbc [hl]
    ldh a, [$f4]
    and d
    nop
    rst $38
    nop
    db $e3
    ret nz

    pop hl
    add c
    or d
    ld a, c
    ld a, d
    dec de
    ld a, l
    or d
    ld a, [hl]
    pop hl
    adc e
    or d
    ret nz

    pop hl
    db $ec
    ret nz

    nop
    rst $38
    db $fc
    nop
    push hl
    add b
    ldh [$8e], a
    ld a, e
    adc a
    ld b, l
    adc [hl]
    ld a, e
    ld e, a
    ld a, h
    ld a, l
    or d

Jump_06d_7910:
    ld b, [hl]
    add d
    db $fd
    ret nz

    sbc [hl]
    rst $28
    add b
    add sp, $00
    rst $18
    add l
    add c
    add d
    jp nz, Jump_06d_44a2

    jp nz, Jump_000_2c2d

    dec hl
    cp a
    ld b, c
    ld a, a
    ld a, l
    or d
    add l
    adc e
    ld b, b
    pop hl
    sub $f1
    rst $10
    nop
    rst $18
    adc d
    add c
    inc b
    ret z

    dec l
    jr nz, jr_06d_7959

    jr nz, jr_06d_795a

    dec l
    add c
    ld b, [hl]
    ld b, [hl]
    add b
    nop
    rst $38
    add l
    and h
    adc e
    add b
    cp $04
    add $b2
    xor [hl]
    ld b, b
    ld [hl+], a
    inc hl
    cpl
    dec l
    jp $b281


    ret nz

    db $e3
    nop
    rst $38
    sbc e
    and l

jr_06d_7959:
    add [hl]

jr_06d_795a:
    and h
    or d
    xor a
    rst $38
    or d
    inc a
    ld [hl], $43
    ld b, l
    add c
    or d
    or d
    sbc d
    add b
    ldh [$a2], a
    nop
    rst $38
    db $eb
    db $ec
    adc e
    add e
    ld b, a
    and l
    ld b, l
    rst $38
    ld [hl], $3b
    inc a
    or d
    xor [hl]
    ld b, [hl]
    adc h
    ld a, l
    add e
    ld a, c
    adc l
    dec a
    and c
    nop
    cp a
    adc e
    add e
    push bc
    and d
    adc d
    and b
    or d
    cp a
    or d
    dec [hl]
    inc a
    or d
    or d
    xor a
    ld [hl], a
    ret nz

    adc a
    ldh [$fe], a
    add d
    nop
    cp a
    and b
    and c
    push bc
    and h
    inc c
    ret nz

    or d
    or d
    inc a
    jp Jump_000_3935


    ld a, a
    and b
    nop
    cp a
    ld a, [bc]
    ld l, b
    push bc
    and d
    add e
    add h
    rst $38
    ld b, [hl]
    or d
    add b
    ld b, l
    or d
    ld [hl], $35
    dec [hl]
    ld h, c
    ld a, $80
    add [hl]
    nop
    cp a
    add l
    add d
    push bc
    and d
    adc d
    add l
    ret nz

    ldh [$3f], a
    add hl, sp
    dec sp
    dec [hl]
    dec [hl]
    dec [hl]
    add hl, sp
    ld b, c
    add h
    nop
    ld h, e
    ret z

    xor h
    ld b, c
    nop
    ld a, [$82c5]
    and d
    ld b, [hl]
    and b
    adc l
    ret nz

    ld a, $35
    rst $00
    dec [hl]
    jr c, jr_06d_7a1a

    ld b, c
    pop hl
    ld [bc], a
    add c
    ld hl, sp+$41
    push af
    or $f8
    nop
    ld a, l
    sbc d
    ld b, d
    ret


    ld h, b
    adc h
    ld a, l
    or d
    ld a, c
    adc l
    dec e
    ld a, [hl-]
    jp nz, $b2c1

    xor [hl]
    or d
    ld b, [hl]
    ret nz

    ldh a, [$62]
    add l
    adc c
    ld h, b
    nop
    ld d, c
    adc d
    ld l, c
    dec b
    and b
    inc bc
    ldh [$c2], a
    pop bc
    xor a
    or d
    add [hl]
    and e
    jr c, jr_06d_7a15

jr_06d_7a15:
    ld a, $8a
    ld h, a
    adc l
    add b

jr_06d_7a1a:
    ld b, l
    scf
    jr c, jr_06d_7a21

    ldh [$c2], a
    ret nz

jr_06d_7a21:
    ld c, b
    add c
    pop bc
    add [hl]
    and c
    nop
    ccf
    db $e4
    adc d
    ld h, [hl]
    ld c, e
    ldh [rLCDC], a
    jp nz, Jump_000_00e1

    jp nz, $86c4

    add d
    add l
    xor h
    nop
    ld d, c
    ld [$0da5], sp
    ldh [rOBP0], a
    and b
    add h
    ret nz

    add a
    jr c, jr_06d_7a7b

    ld b, l
    ret nz

    db $e4
    ld a, d
    jr nz, jr_06d_7a4a

jr_06d_7a4a:
    ccf
    ld [$b2a4], sp
    ld e, a
    xor [hl]
    xor a
    or d
    or d
    add hl, sp
    ld b, l
    ret nz

    ld a, [hl-]
    ld bc, $a060
    inc b
    ld h, d
    nop
    rst $38
    nop
    push hl
    ld c, e
    ld h, b
    adc $c2
    ld b, [hl]
    ret nz

    ld [c], a
    ld b, [hl]
    ld h, c
    add c
    ld a, d
    and b
    ld b, e
    ld b, d
    nop
    rst $38
    or $01
    ret c

    reti


    dec bc
    ld h, b
    ld a, h
    cp [hl]
    pop hl
    add $81

jr_06d_7a7b:
    dec [hl]
    dec sp
    ld [hl], $83
    add h
    ld b, a
    add h
    adc h
    nop
    rst $38
    or $02
    jp c, $c0db

    pop hl
    dec d
    ld h, b
    cp a
    pop hl
    ld b, c
    rlca
    ld b, e
    add e
    add [hl]
    ret nz

    ld b, b
    ret nz

    db $e3
    halt
    nop
    rst $38
    adc e
    ld b, e
    ld [de], a
    ld c, c
    add c
    ld b, c
    ret z

    jp nz, $a03b

    ld b, [hl]
    ld b, a
    add b
    rlca
    ld h, c
    add [hl]
    add d
    ldh a, [$85]
    ld c, c
    nop
    pop de
    add [hl]
    ld h, b
    ld b, b
    ld [c], a
    ld b, l
    ld [hl], $a6
    ld [hl], $0c
    add a
    pop bc
    ret


    ld h, b
    ld b, [hl]
    add b
    add a
    ld b, c
    add [hl]
    add [hl]
    nop
    or $ce
    ld bc, $217c
    add c
    nop
    pop hl
    ld b, l
    ld [hl], $62
    and a
    ld h, [hl]
    cp a
    ldh [$33], a
    or d
    add c
    dec b
    ld b, b
    ld [$4660], sp
    sbc [hl]
    db $76
    ld [bc], a
    nop
    ld sp, hl
    ld [hl], b
    ret nc

    ld hl, $8221
    sla b
    pop bc
    ldh [$67], a
    and e
    ld l, b
    cp a
    pop hl
    add h
    ei
    add d
    cp [hl]
    nop
    and d
    and e
    pop hl
    nop
    cp $86
    ld h, d
    ld c, e
    ld b, b
    ld b, d
    ld e, a
    xor b
    xor c
    ld l, h
    dec [hl]
    dec [hl]
    cp a
    pop hl
    or d
    nop
    ld b, b
    ldh a, [$84]
    dec b
    ret c

    ld [de], a
    nop
    xor a
    ld c, [hl]
    nop
    ld b, l
    ld [hl], $6e
    ld l, a
    rra
    ld l, h
    dec [hl]
    and e
    xor d
    xor e
    db $fc
    jp nz, $8604

    nop
    rst $18
    jr c, jr_06d_7b25

jr_06d_7b25:
    pop bc
    ld bc, $bfa1
    ld [c], a
    ld l, h
    ld l, a
    ld l, [hl]
    ret nz

    db $e3
    inc b
    add h
    nop
    ret c

    ld [de], a
    nop
    rst $08
    ld a, [hl]
    and $c1
    add sp, $04
    add h
    nop
    rst $18
    nop
    add e
    dec a
    db $e3
    nop
    add d
    ld [$15d8], a
    add l
    dec l
    ld b, e
    ld h, c
    db $fc
    call nz, $ea82
    ret c

    dec d
    add l
    ld de, $fc02
    pop bc
    sbc l
    rst $38
    push hl
    ld [$5d62], sp
    inc de
    nop
    dec [hl]
    db $fc
    pop bc
    sub [hl]
    ld b, e
    ld b, $8e
    ld b, c
    ret nc

    pop de
    or c
    ld b, b
    add l
    pop af
    nop
    ld d, a
    sbc d
    ld [bc], a
    cp e
    nop
    ret nz

    sub d
    ld [bc], a
    ld [$00a3], sp
    rst $38
    ld a, e
    ld l, b
    sbc d
    ld [bc], a
    ld d, [hl]
    ld hl, $dbda
    nop
    adc [hl]
    dec h
    nop
    rst $38
    ld a, e
    dec bc
    ld d, [hl]
    dec h
    adc [hl]
    inc hl
    nop
    rst $38
    ld a, e
    dec l
    ld d, [hl]
    inc hl
    nop
    db $f4
    inc bc
    ld a, [bc]
    ld c, a
    nop
    dec sp
    or $ff
    nop
    dec sp
    or $ff
    nop
    cp $f6
    rst $38
    nop
    nop
    db $fc
    or $ff
    nop
    rst $38
    or $ff
    nop
    rst $38
    nop
    rst $38
    sbc c
    rst $38
    nop
    rst $38
    nop
    adc a
    rst $38
    nop
    push af
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

Jump_06d_7bc4:
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
    ld bc, $2100
    db $10
    ld bc, $2401
    ld de, $0201
    dec h
    ld de, $0301
    ld [hl+], a
    ld [de], a
    ld bc, $2404
    ld [de], a
    ld bc, $2605
    ld [de], a
    ld bc, $2706
    ld [de], a
    ld bc, $2107
    inc de
    ld bc, $2508
    inc de
    ld bc, $2609
    inc de
    ld bc, $270a
    inc de
    ld bc, $2b0b
    inc de
    ld bc, $280c
    inc d
    ld bc, $290d
    dec d
    ld bc, $210e
    rla
    ld bc, $290f
    rla
    ld bc, $2110
    jr @+$04

    ld de, $1822
    ld bc, $2312
    jr jr_06d_7c29

    inc de

jr_06d_7c29:
    add hl, hl
    jr jr_06d_7c2d

    inc d

jr_06d_7c2d:
    ld a, [hl+]
    jr jr_06d_7c31

    dec d

jr_06d_7c31:
    dec h
    add hl, de
    ld bc, $2016
    ld a, [de]
    ld bc, $2117
    ld a, [de]
    ld bc, $2418
    ld a, [de]
    ld bc, $2519
    ld a, [de]
    ld [bc], a
    ld a, [de]
    ld h, $1a
    ld bc, $1f1b
    dec de
    ld bc, $201c
    dec de
    ld bc, $211d
    dec de
    ld bc, $251e
    dec de
    ld bc, $261f
    dec de
    ld bc, $1d20
    inc e
    ld bc, $2021
    inc e
    ld bc, $1d22
    dec e
    ld bc, $1b23
    ld e, $01
    inc h
    inc e
    ld e, $01
    dec h
    dec e
    ld e, $01
    ld h, $24
    ld e, $01
    daa
    dec h
    ld e, $01
    jr z, jr_06d_7c9a

    rra
    ld bc, $2229
    rra
    ld bc, $232a
    rra
    ld bc, $242b
    rra
    ld bc, $262c
    rra
    ld bc, $232d
    jr nz, @+$03

    ld l, $24
    jr nz, jr_06d_7c9a

    cpl
    dec h

jr_06d_7c9a:
    jr nz, @+$03

    jr nc, @+$28

    jr nz, @+$03

    ld sp, $2118
    ld bc, $1932
    ld hl, $3301
    ld a, [de]
    ld hl, $3401
    inc h
    ld hl, $3501
    dec h
    ld hl, $3601
    rla
    ld [hl+], a
    ld bc, $1837
    ld [hl+], a
    ld bc, $1938
    ld [hl+], a
    ld bc, $1739
    inc hl
    ld bc, $193a
    inc hl
    ld [bc], a
    dec sp
    ld a, [de]
    inc hl
    ld bc, $1b3c
    inc hl
    ld bc, $163d
    inc h
    ld [bc], a
    ld a, $18
    inc h
    ld bc, $193f
    inc h
    ld bc, $1a40
    inc h
    ld bc, $2041
    inc h
    ld bc, $1542
    dec h
    ld bc, $1643
    dec h
    ld [bc], a
    ld b, h
    rla
    dec h
    ld bc, $1845
    dec h
    ld bc, $1746
    ld h, $01
    ld b, a
    jr @+$28

    ld bc, $2248
    ld h, $01
    ld c, c
    ld d, $27
    ld bc, $194a
    daa
    ld bc, $224b
    daa
    ld bc, $204c
    add hl, hl
    ld bc, $214d
    add hl, hl
    ld bc, $244e
    add hl, hl
    ld bc, $1e4f
    ld a, [hl+]
    ld bc, $2150
    ld a, [hl+]
    ld bc, $2251
    ld a, [hl+]
    ld bc, $2152
    dec hl
    ld bc, $1f53
    inc l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06d_7e00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06d_7e79:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06d_7fc2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
