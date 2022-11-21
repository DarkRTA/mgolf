INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $06f", ROMX[$4000], BANK[$6f]

    call z, $e247
    ld d, b
    ld hl, sp+$5a
    ld e, d
    ld h, l
    ld c, $40
    and h
    ld [hl], c
    xor $79
    ld d, $40
    ld d, a
    ld b, e
    add d
    ld b, a
    sbc l
    ld b, a
    ld sp, $ff0d
    rst $38
    rst $38
    rst $38
    ld a, [c]
    pop af
    ld c, $0e
    call c, $c0ff
    db $fd
    add hl, bc
    ld c, $bb
    and $f2
    db $e3
    ld l, $c9
    rst $38
    ret nz

    xor $ca
    db $e3
    ld [hl], d
    db $e3
    nop
    cp [hl]
    rst $38
    ld b, l
    db $e4
    reti


    db $e4
    add b
    db $e3
    jp z, $f7e1

    db $e3
    jp nz, $b8e5

    cp $00
    sub a
    db $e4
    ld b, b
    ld [c], a
    adc h
    ld a, [c]
    db $76
    ei
    ld e, c
    db $f4
    pop af
    ret z

    jr c, @-$0f

    inc h
    rst $28
    nop
    ld a, e
    and $c0
    rst $28

jr_06f_405a:
    add hl, bc
    ei
    sub h
    db $ec
    cp h
    pop bc
    pop bc
    call nz, $d92c
    and h
    rst $00
    nop
    ld b, l
    rst $00
    ld a, a
    jp $ffc0


    dec b
    push de
    rst $00
    ldh a, [$3c]
    ret c

    pop de
    and l
    add b
    db $ec
    nop
    ld b, d
    pop bc
    ld hl, sp-$5c
    jr nc, @-$38

    and b
    call c, $d5ce
    jr nc, jr_06f_405a

    pop de
    and a
    ld b, $c5
    ld [hl], b
    sub [hl]
    xor d
    ld a, h
    db $e4
    db $eb
    sbc h
    ld b, b
    rst $20
    ld c, $0d
    dec l
    ld c, e
    xor b
    nop
    jp Jump_06f_76d0


    db $db
    ld hl, sp-$39
    add a
    push hl
    or l
    call $d176
    add hl, bc
    xor h
    add b
    ldh a, [$80]
    or d
    jp hl


    add hl, bc
    cp a
    ld c, d
    xor b
    add a
    add a
    dec l
    adc c
    ld c, a
    xor [hl]
    ld d, [hl]
    add h
    ld c, $5d
    ld l, $02
    pop hl
    dec c
    ld c, $4e
    rst $38

Jump_06f_40bf:
    db $e3
    ld l, $f3
    pop bc
    and b
    ld b, l
    add b
    xor $a9

Jump_06f_40c8:
    cp e

Jump_06f_40c9:
    adc [hl]
    sub $6a
    db $dd
    jp $966e


    and e
    dec bc
    ret nz

    cp c
    ldh [rLYC], a
    add d
    add d
    xor l
    di
    ld l, d
    sub [hl]
    ld l, [hl]
    pop bc
    pop hl
    ld c, e
    dec bc
    add e
    dec bc
    dec hl
    ld d, c
    and d
    ld a, h
    ldh [$bc], a
    ld a, h
    ld e, $ad
    add d

Jump_06f_40ed:
    pop hl
    dec bc
    cpl
    dec c
    dec bc
    dec bc
    ld c, e
    cp [hl]
    ldh [$0b], a
    cp a
    db $e4
    ld a, $bf
    db $fc
    rrca
    ld h, [hl]
    pop bc
    ld [c], a
    dec bc
    dec c
    ld l, e
    ld l, e
    ld c, e
    ld c, e
    add c
    ld l, e
    rst $30
    pop hl
    ld a, [hl]
    pop hl
    scf
    and l
    inc a
    ld a, b
    sbc e
    and l
    inc b
    ld [c], a
    dec bc
    ld [hl-], a
    cp d
    jp nz, $b50d

    and b
    ld a, a
    ldh [$0d], a
    ld c, [hl]
    ld a, [hl]
    sbc d
    ld c, a
    ld l, d
    ld a, h
    bit 0, b
    ld b, l
    ldh [$0d], a
    dec l
    dec l
    dec l
    inc c
    rst $38
    ldh [$8d], a
    inc l
    cp e
    jp nz, $0b0d

    cp c
    ld b, e
    dec sp
    or [hl]
    dec e
    ret


    dec c
    jr jr_06f_4156

    add b
    ld b, d
    ldh [$c1], a
    ld [c], a
    inc c
    inc l
    cp a
    ldh [$3e], a
    pop hl
    ret nz

    ei
    call c, $8cd0
    add $c0
    dec l
    dec c
    inc l
    ret nz

    ld [c], a
    inc c

jr_06f_4156:
    inc l
    and c
    inc c
    db $f4
    jp nz, Jump_06f_69a1

    scf
    ld e, c
    dec bc
    ld b, d
    dec c
    ld c, b
    ret nz

    dec l
    add d
    ret nz

    db $e4
    inc c
    ret nz

    ldh [$74], a
    ret nz

    ld l, [hl]
    ld b, e
    dec a
    ld e, a
    ret nz

    and $0b
    ld [bc], a
    pop bc
    push hl
    inc l
    ccf
    ret nz

    add b
    pop hl
    ret nz

    ld c, b
    ld a, a
    ld d, d
    ld b, d
    add a
    add b
    ldh [$0a], a
    rst $00
    and b

Jump_06f_4187:
    ld l, h
    add b
    db $e4
    ld c, h
    ld b, b
    db $e4
    ret nz

    ld e, h
    ld d, e
    inc h
    ld b, b
    db $e3
    ld [hl], $bf
    pop hl
    ld l, h
    ld c, h
    cp a
    jp nz, Jump_06f_4c6c

    ld a, [c]
    jp nz, $eb80

    ld h, b
    or [hl]

jr_06f_41a2:
    ld c, b
    sub e
    add hl, hl
    ld de, $c025
    ldh [$98], a
    ld b, b
    ld c, h
    ld c, h
    add d
    ret nz

    adc e
    ld l, h
    ld l, h
    ld b, b
    jp nz, $c02d

    or $30
    inc h
    ld d, e
    jr z, jr_06f_41e9

    add hl, sp
    ld c, $09
    and c
    ld c, c
    and b
    ld c, h
    ld c, h
    ld c, h
    pop bc
    pop hl
    db $f4
    and b
    nop
    nop
    jp Jump_000_0629


    ld [hl], e
    ld l, e
    xor d
    ld c, $d0
    add d
    db $fd
    pop bc
    add l
    and d
    inc [hl]
    ret nz

    rrca
    dec l
    dec l
    ld c, $6e
    ld a, [hl]
    ld b, a
    ld b, h
    ld a, a

Jump_06f_41e3:
    adc a
    add d
    ld a, e
    and c
    nop
    cp d

jr_06f_41e9:
    add d
    pop bc
    ld [c], a
    sbc b
    adc e
    ld b, d
    jp c, $c0fc

    adc a
    add e
    cp l
    add b
    ld a, b
    and c
    nop

jr_06f_41f9:
    pop bc
    db $e4
    cp c
    ld a, [hl-]
    add h
    ld c, b
    dec c
    add [hl]
    add $81
    cp d
    add b
    add d
    push hl
    ld l, h
    jr z, jr_06f_41a2

    dec hl
    rrca
    ret nz

    ld [$a1d6], a
    ld c, [hl]
    ld l, $89
    add c
    add c
    add b
    dec l

Jump_06f_4217:
    and c
    dec bc
    ld [hl], l
    ld h, c
    db $76
    ld b, [hl]
    ld a, d
    inc d
    db $e4
    add hl, bc
    ld c, l
    sub [hl]
    and c
    ld c, l
    ld a, e
    ld c, [hl]
    ld l, $ff
    push hl
    ld l, [hl]
    dec c
    ld c, l
    ld c, l
    add b
    db $eb
    nop
    ld a, h
    jr jr_06f_41f9

    pop hl
    db $f4
    and h
    jp nz, $c642

    ldh [$b0], a
    pop hl
    cp a
    pop hl
    ld a, [de]
    inc [hl]
    inc c
    or [hl]
    ld c, a
    cp b
    ld h, e
    ld l, [hl]
    dec bc
    rst $38
    ldh [$be], a
    ld [c], a
    ret nz

    db $e3
    ld b, c
    add hl, de
    ld hl, sp+$46
    and l
    sbc h
    inc b
    ld d, b
    ldh [rKEY1], a
    ld c, $2b
    dec hl
    ld c, e
    ldh [$fd], a
    pop hl
    ld b, l
    ld h, c
    ret nz

    db $eb
    dec b
    ld d, [hl]
    cp [hl]
    adc b
    ld l, $4d
    ld l, [hl]
    add hl, bc
    ld l, e
    add b
    pop hl
    cp l
    ld b, b
    ld c, [hl]
    dec b
    ld b, b
    and [hl]
    and $7a
    ld e, b
    cp [hl]
    adc c
    ld d, $4c
    ldh [$0b], a
    dec hl
    ld a, a
    ld b, c
    dec l
    dec sp
    ldh [$fc], a
    ret nz

    ld bc, $30e8
    ld b, c
    sub e
    add b
    inc c
    ret nz

    db $e3
    rst $38
    db $e4
    ld l, $4d
    add b

jr_06f_4293:
    ret nz

    ld b, $3a
    ld c, $3a
    ld c, a
    ld c, l
    ld c, $0b
    ld b, b
    push hl
    add b
    ldh [$28], a
    add l
    ld b, e
    ld e, c
    adc $ab
    db $eb
    dec l
    ld c, [hl]
    ld l, $02
    ld b, c
    nop
    ld b, b
    ld c, e
    ld c, $a1
    ld l, [hl]
    ld bc, $20c1
    adc c
    dec sp
    ld e, h
    ld a, [$4d61]
    ret nz

    and b
    dec hl
    ld c, $ff
    pop hl
    ld c, $2e
    ld l, [hl]
    inc b
    jp nz, $b448

    dec sp
    ld c, a
    or l
    inc bc
    nop
    dec c
    ldh [$7f], a
    and e
    add e
    ldh [$c4], a
    and [hl]
    rlca
    db $fd
    add b
    push hl
    cp a
    db $e4
    db $fd
    db $e3
    jr nz, jr_06f_430a

    ld h, [hl]
    ld [bc], a
    or l

Jump_06f_42e2:
    pop af
    or b
    sbc h
    add e
    call nz, Call_000_0ee1
    cp b
    pop hl
    ret nz

    ei
    nop
    ld l, e
    rrca
    ld d, [hl]
    ld b, e
    add h
    ld [c], a

Jump_06f_42f4:
    ret nz

    rst $38
    ld [hl-], a
    ld d, b
    ld d, $44
    ret nz

    push hl
    ld h, a
    add hl, bc
    inc c
    add d
    ld a, [hl-]
    jp c, Jump_000_0deb

    dec l
    add b
    db $e3
    and b
    pop af
    ld b, b

jr_06f_430a:
    ld [hl], e
    dec h
    add hl, hl
    nop
    cp b
    add l
    inc c
    jr nc, jr_06f_4293

    ei
    ld sp, hl
    and a
    ld [hl], e
    ld [$bbc4], a
    db $76
    ld de, $8378
    nop
    ld b, h
    add $5c
    add h
    cp [hl]
    rst $38
    db $76
    ld h, a
    adc $84
    ld d, e
    ld a, [hl+]
    call nz, $c7ff
    jp hl


    nop
    res 0, d
    ret nz

    rst $38
    dec sp
    ld l, e
    ret nz

    db $eb
    ld [$f978], sp
    ld d, h
    sub a
    dec bc
    and b
    stop
    add $dc
    dec d
    adc l
    and b
    rlca
    ld a, d
    rst $18
    ld l, e
    ld d, b
    add b
    jp hl


    ld a, $9d
    ld l, d
    add hl, de
    nop
    add hl, bc
    sub c
    nop
    nop
    nop
    ld sp, $ffa0
    rst $38
    rst $38
    rst $38
    ld a, [c]
    pop af
    ld [c], a
    db $e3
    call c, $faff
    ld sp, hl
    ld a, a
    db $e4
    push hl
    and b
    and b
    sub $d7
    ret c

    or d
    add sp, -$19
    call nc, $d4d5
    ret


    rst $38
    rst $20
    and $e6
    rst $20
    and b
    rrca
    and b
    reti


    jp c, $cadb

    db $e4
    or d
    pop hl
    cp [hl]
    rst $38
    push hl
    db $e4
    adc $d9
    and $dc
    db $dd
    sbc $ca
    db $e4
    or d
    pop hl
    and b
    call nc, $c238
    push hl
    cp b
    cp $97
    db $e4
    rst $18
    ldh [$e1], a
    jp z, $9de8

    ld a, [c]
    nop
    ld a, a
    di
    ld e, c
    di
    pop af
    rst $00
    xor h
    ldh a, [rNR50]
    rst $28
    ld [de], a
    db $e4
    ld [hl], a
    rst $00
    pop af
    pop bc
    nop
    ld c, e
    rst $38
    sub h
    db $ed
    ld [hl], a
    ret nz

    ld a, b
    call nz, $c3f1
    ld c, e
    rst $38
    dec b
    pop bc
    sub h
    db $e3
    nop
    ccf
    pop bc
    ld [hl], a
    ret nz

    add a
    db $e4
    pop af
    jp nz, $ffff

    dec b
    jp nz, $c385

    ld c, [hl]
    db $e4
    nop
    add a
    jp hl


jr_06f_43d7:
    inc a
    ret c

    pop de
    and l
    dec b
    pop bc
    sub h
    db $e3
    ccf
    pop bc
    ld c, d
    ret nz

    ld a, b
    pop bc
    nop
    inc b
    jp nz, $a26b

    ld a, [$e0b6]
    rst $08
    ld c, [hl]
    db $ed
    ld l, e
    and c
    ld h, e
    call nc, $a5d1
    nop
    db $db
    and e
    sub [hl]
    xor h
    add $a0
    inc [hl]
    and d
    cp c
    and d
    rst $38
    sub $e0
    push bc
    add hl, bc
    and l
    nop
    cp l
    add e
    ei
    add h
    ld b, e
    res 4, d
    sbc d
    jr jr_06f_43d7

    cp l
    add b
    ld c, l
    and b
    cp h
    rlc b
    xor l
    add h
    ldh a, [$83]
    add hl, bc
    cp d
    ld d, d
    push hl
    ld a, [bc]
    call nz, $c2bc
    or d
    and $37
    di
    add b
    add hl, bc
    or d
    add e
    add $a4
    ld [$b24f], a
    ld h, d
    add c
    ret z

    ld h, b
    sbc b
    add h
    sbc a
    dec b
    sbc l
    rst $38
    db $e3
    sbc a
    rst $08
    add h

jr_06f_4440:
    xor [hl]
    ld h, d
    cp h
    xor c
    ld sp, $9189
    ld h, [hl]

Jump_06f_4448:
    cp $26
    and $9f
    sbc h
    ld a, c
    ld a, d
    ld a, e
    ld a, e
    ld a, h
    rra
    ld a, l
    ld b, [hl]
    sbc h
    sbc l
    sbc l
    ld b, l
    add d
    inc c
    db $ed
    ld h, a
    adc d
    ldh a, [$ef]
    add $c8
    ld h, c
    ret c

    ld h, c
    pop bc
    ldh [$7e], a
    ld b, [hl]
    cp l
    ld sp, $bd0b
    adc [hl]
    cp h
    pop hl
    sbc h
    ld a, h
    pop hl
    ld b, e
    jp Jump_06f_74bc


    ld h, $c3
    db $fc
    ld c, a
    ld h, a
    pop bc
    ld [c], a
    xor [hl]
    ld [hl-], a
    jr nz, jr_06f_4440

    ld sp, $872b
    xor [hl]
    ld b, [hl]
    ld a, a
    cp a
    db $e3
    ld a, $bf
    ld e, [hl]
    add [hl]
    add d
    ld [c], a
    ld b, [hl]
    rst $38
    xor a
    dec l
    inc l
    ld sp, $2a2c
    xor a
    ld b, [hl]
    ret nz

    cp a
    db $e3
    cp e
    and h
    add b
    or a
    ld c, a
    ld h, h
    add [hl]
    ld b, b
    ld b, e
    pop hl
    xor [hl]
    ld b, [hl]
    rst $30
    add e
    adc c
    adc b
    rst $38
    pop hl
    adc c
    add e
    ld b, [hl]
    xor [hl]
    ldh a, [$7e]
    ldh [$fe], a
    ld a, d
    ld c, a
    ld l, c
    add [hl]
    ld b, b
    sbc [hl]
    ld b, [hl]
    add b
    ld b, [hl]
    rst $38
    xor a
    add e
    add [hl]
    add l
    ld [bc], a
    rlca
    rlca
    rlca
    rst $38
    ld [bc], a
    add l
    add [hl]
    add e
    xor a
    ld b, [hl]
    add c
    ld b, [hl]
    pop af
    sbc [hl]
    and b
    add sp, $2e
    ld a, d
    add [hl]
    ld b, b
    sbc [hl]
    ld a, c
    adc l
    ld b, [hl]
    rst $38
    ld b, [hl]
    adc d
    add l
    ld [bc], a
    rrca
    sbc b
    sbc b
    sbc c
    rst $38
    rrca
    ld [bc], a
    add l
    adc e
    ld b, [hl]
    ld b, [hl]
    adc h
    ld a, l
    ld hl, sp-$40
    pop hl
    and b
    push hl
    dec c
    ld a, l
    sbc [hl]
    add b
    ld b, [hl]
    ld b, [hl]
    add e
    ei
    add h
    dec b
    pop bc
    pop hl
    nop
    ld bc, $050f
    add d
    rrca
    add e
    ld b, [hl]
    ld b, [hl]
    add c
    add b
    pop hl
    ld h, $45
    scf
    ld e, c
    sla c
    cp $c0
    ldh [$ae], a
    adc d
    add l
    ld b, $98
    sbc b
    sub a
    ld a, $7f
    ldh [$99], a
    ld b, $85
    adc e
    xor [hl]
    ret nz

    db $e4
    dec a
    ld e, a
    db $fc
    sla d
    add b
    ldh [$af], a
    add c
    ld b, [hl]
    ld [$9999], sp
    cp e
    sbc b
    sub a
    cp [hl]
    ldh [$08], a
    ld b, [hl]
    add b
    rst $38
    ret nz

    sbc [hl]
    ldh [$71], a
    jr z, @+$2d

    ld d, c
    ld d, e
    dec h

Jump_06f_4546:
    sla c
    ld b, b
    pop hl
    adc h
    ld a, l
    ld b, $17
    nop
    ld bc, $7d99
    pop hl
    ld b, $f2
    pop bc

Jump_06f_4556:
    ld b, b
    ldh [$80], a
    ld e, e
    ld [hl], h
    ld d, e
    dec h
    sla c
    sbc [hl]
    ld c, $e2
    dec b
    rrca
    sbc c
    ld b, d
    ldh [rNR22], a
    sbc b
    rrca
    dec b
    ld a, [c]
    jp nz, $809e

    ld c, c
    and d
    add hl, bc
    ld a, [hl+]
    inc h
    ld hl, sp+$53
    daa
    ret nz

    ret nz

    adc l
    ret nz

    xor [hl]
    adc h
    ld a, l
    ld [bc], a
    rrca
    rst $38
    sbc c
    ld bc, $0f00
    ld [bc], a
    ld a, c
    adc l
    xor [hl]
    jp nz, $c073

    sbc [hl]
    add b
    ld c, c
    nop
    adc e
    add sp, $02
    ld d, e
    add hl, hl
    sbc [hl]
    ld b, [hl]
    db $fd
    add d
    inc c
    ret nz

    ld a, a
    ld a, l
    inc bc
    inc b
    rlca
    inc b
    dec e
    inc bc
    ld hl, sp-$80
    xor a
    add e
    add h
    nop
    jp nz, Jump_000_0629

    scf
    ld l, d
    db $76
    ld e, $2f
    sbc a
    ret nc

    res 4, b
    ld b, [hl]
    ld b, [hl]
    adc [hl]
    add d
    add b
    rst $30
    ld a, c
    ld a, d
    adc a
    inc [hl]
    ret nz

    add [hl]
    add l
    ret nc

    sbc a
    add sp, -$7e
    ld [bc], a
    inc bc
    jp nc, $2f1c

    db $d3
    cp a
    ld [c], a
    xor [hl]
    ld b, [hl]
    adc [hl]
    inc de
    ld a, e
    adc a
    ld a, [$c1e0]
    pop hl
    db $d3
    sbc b
    adc c
    ld b, d
    db $db
    db $fc
    pop bc
    inc b
    cp a
    ld [c], a
    add $80
    xor [hl]
    cp d
    add b
    pop bc
    push hl
    ld b, b
    ret z

    dec a
    rrca
    reti


    inc b
    ld d, h
    inc e
    ld h, $7e
    ldh [$87], a
    add $80
    xor a
    cp d
    add b
    add a
    add d
    db $e4
    ldh [$2c], a
    daa
    dec hl
    db $10
    xor [hl]
    ld b, h
    inc e
    inc hl
    ld d, [hl]
    ld bc, $d0d3
    ld b, [hl]
    dec sp
    add l
    add a
    ld a, a
    add b
    add a
    add l
    ld b, [hl]
    ld b, e
    pop hl
    add [hl]
    and b
    jr @+$2e

    ld a, [hl+]
    cp a
    ld [hl], e
    ld d, [hl]
    add hl, bc
    db $d3
    pop de
    rst $38
    push hl
    inc b
    db $e4
    inc l
    daa
    nop
    ld a, h
    add hl, de
    reti


    ld b, c
    db $f4
    and e
    cp a
    ld b, d
    jp nz, Jump_000_0642

    jp hl


    ld a, d
    ld de, $4974
    ld e, h
    inc e
    ld hl, $a2f4
    sbc a
    sbc h
    ld b, [hl]
    rst $38
    ldh [$9c], a
    add b
    ld b, c
    ldh [$32], a
    inc bc
    adc e
    add hl, sp
    adc b

jr_06f_464a:
    and c
    ldh [$83], a
    inc e
    ld h, $9e
    ld b, l
    ld b, e
    inc bc
    ccf
    ld b, e
    db $fd
    ldh [$c3], a
    ld b, b
    ld h, h
    and e
    adc e
    ld h, $05
    ld d, h
    ld [bc], a

Jump_06f_4660:
    ld h, l
    sbc $1a
    ld h, h
    sbc h
    ld b, h
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    ld b, h
    inc bc
    sbc h
    sbc a
    ld [hl-], a
    inc bc
    jp nz, $0602

    and e
    rst $38
    ld [hl], d
    cp $81
    nop
    and c
    cp $58
    jp Jump_06f_469e


    ld b, b
    ld l, c
    and e
    dec [hl]
    dec [hl]
    rlca
    and e
    ld l, d
    ld b, d
    ld b, l
    and h
    ldh [$28], a
    inc a
    inc de
    and $c5
    or [hl]
    add e
    add d
    ret nz

    pop hl
    dec [hl]
    rst $38
    ldh [$c0], a
    push hl
    ld [bc], a
    add h
    dec a

Jump_06f_469e:
    dec de
    sbc [hl]
    ret z

    sbc [hl]
    ld l, a
    ld b, [hl]
    ld b, h
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    ld b, h
    push bc
    ld b, b
    cp b
    ld a, b
    inc b
    ld c, b
    ld a, c
    cp h
    adc a
    ld b, l
    ld b, e
    ld b, c
    rst $38
    ldh [rSCX], a
    inc bc
    ld b, l
    ret nc

    cp $02
    jr nz, jr_06f_464a

    dec sp
    ld e, d
    cp [hl]
    ld bc, $61fa
    ld a, a
    and b
    ld [bc], a
    ccf
    pop bc
    ret nc

    pop bc
    and h
    ld l, d
    dec bc
    ld sp, hl
    jr c, jr_06f_4734

    ld b, [hl]
    ld a, a
    and e
    add a
    add h
    nop
    rst $38
    rst $38
    and d
    ld b, l
    sbc $cd
    push hl
    and l
    ld b, b
    ld [bc], a
    ld a, h
    adc c
    rst $28
    rla
    sbc h
    add [hl]
    nop
    adc l
    ld b, l
    add l
    add c
    ld b, [hl]
    jp nz, $93c2

    xor a
    xor l
    cp b
    ld b, $af
    dec b
    db $e3
    ld b, c
    nop
    ld b, [hl]
    jp nz, $92c2

    xor l
    ld c, $9c
    add [hl]
    sub e
    add l
    res 0, [hl]
    jp c, $8241

    scf
    nop
    ld l, c
    ld b, l
    or h
    ld b, c
    ld de, $4de2
    add e
    ld c, l
    ld c, $40
    dec [hl]
    ld h, e
    and b
    cp b
    ld b, $00
    reti


    ld a, [bc]
    inc l
    push bc
    add d
    ld [hl], $e2
    ld c, b
    inc [hl]
    inc b
    ld d, a
    and [hl]
    ld c, c
    ld hl, $a30a
    nop
    add d
    cp a
    ld [hl-], a
    ld c, d
    ld a, b

jr_06f_4734:
    add h
    add hl, bc
    ld h, c
    add l
    add c
    call nz, $fc02
    ld a, c
    db $76
    ld l, l
    nop
    jr nc, @-$7a

    ld c, a
    ld l, d
    nop
    ld e, l
    or l

Jump_06f_4747:
    add hl, bc
    ld l, $21
    res 4, b
    ld c, a
    ld l, d
    add c
    sbc b
    nop
    rst $18
    rst $00
    or a
    ld h, h
    ld l, $21
    sub b
    daa
    add [hl]
    or c
    ld sp, hl
    ld d, h
    sbc l
    ld c, b
    adc h
    ld h, b
    nop
    and b
    inc b
    ld [bc], a
    ld b, e
    add b
    sbc d
    ld hl, sp+$05
    db $db
    xor l
    ld l, e
    ld [bc], a
    ld c, b
    ld b, l
    ld a, d
    rst $18
    nop
    ld l, e
    ld c, l
    ld l, [hl]
    jp Jump_06f_4448


    ld a, $9c
    ld l, d
    add hl, de
    rst $00
    ld [hl], c
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
    ld [bc], a
    nop
    dec e
    ld d, $02
    ld bc, $1623
    ld [bc], a
    ld [bc], a
    ld a, [de]
    jr @+$04

    inc bc
    ld h, $18
    ld [bc], a
    inc b
    add hl, de
    inc e
    ld [bc], a
    dec b
    daa
    inc e
    ld [bc], a
    ld b, $1a
    jr nz, @+$04

    rlca
    ld h, $20
    ld [bc], a
    ld [$231d], sp
    ld [bc], a
    add hl, bc
    inc hl
    inc hl
    ld [bc], a
    ld a, [bc]
    jr nz, jr_06f_47ed

    rst $38
    rst $38
    rst $38
    call nc, $a847
    ld c, d
    ld c, h
    ld d, b
    ld h, a
    ld d, b
    pop bc
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [c], a
    pop hl
    ld l, h
    ld c, h
    di
    ld c, h
    ld c, h
    jp c, $c1ff

    rst $30
    ld l, h
    ld a, [bc]
    ld a, [hl+]
    ld c, h

jr_06f_47ed:
    ld sp, hl
    ld c, h
    cp e
    rst $38
    pop bc
    ld hl, sp+$0a
    dec bc
    dec bc
    ld c, e
    dec c
    ld sp, hl
    dec c
    cp [hl]
    rst $38
    ld a, [c]
    pop af
    inc l
    ld a, [bc]
    ld a, [bc]
    dec hl
    dec bc
    rst $38
    dec bc
    dec hl
    dec bc
    dec c
    dec c
    dec c
    ld c, e
    ld l, h
    or e
    inc l
    inc l
    rst $08
    rst $38
    ret nz

    db $ed
    ld l, e
    dec hl
    ret nz

    ldh [$0b], a
    ccf
    dec hl
    dec hl
    dec hl
    dec c
    dec c
    ld l, h
    ld a, a
    rst $38
    add b
    rst $28
    ld a, a
    inc l
    ld l, e
    ld c, e
    ld l, e
    ld c, e
    ld c, e
    ld l, e
    cp h
    ldh [$e3], a
    dec c
    ld c, e
    pop de
    rst $38
    pop bc
    rst $28
    cp a
    ldh [$0a], a
    ld a, [bc]
    ld l, d
    db $10
    cp [hl]
    ldh [$c2], a
    rst $38
    cp $d4
    db $fc
    ret nz

    ld a, [hl+]
    reti


    rst $38
    rst $38
    rst $38
    dec hl
    jp hl


    ldh [$dc], a
    rst $38
    adc $f4
    rst $30
    and c
    ld [hl], $df
    or l
    call nc, Call_06f_6c6c
    ld c, h
    ccf
    ld l, h
    dec hl
    ld c, e
    ld c, e
    ld c, e
    dec bc
    cp [hl]
    rst $38
    ld [hl], l
    or e
    jr nz, jr_06f_4899

    pop bc
    ld [hl-], a
    jp nz, $e0be

    ret nc

    rst $38
    pop bc
    pop af
    dec c
    cp $e0
    dec [hl]
    ret nz

    ret z

    cp a
    pop hl
    ld a, [$ecdf]
    db $eb
    ld c, h
    or a
    and c
    ret nz

    ldh [$0d], a
    ld a, [bc]
    ld hl, sp+$72
    and b
    ld a, [hl]
    rst $38
    ld [hl], a
    adc a
    dec hl
    dec bc
    ld l, e
    ld l, e
    dec bc
    add hl, sp
    ld c, e
    push af
    add b
    ld a, c
    pop hl
    dec hl
    dec bc
    ld l, h
    call Call_000_37ff
    adc e

jr_06f_4899:
    dec a
    dec bc
    or [hl]
    and b
    ld a, [bc]
    ld a, [hl+]
    ld l, e
    ld c, e
    ld a, $e0
    inc l
    and c
    inc a
    ld sp, $edbf
    db $ec
    ld c, e
    ld a, [bc]
    ld a, [bc]
    ld c, d
    ld [hl], h
    and b
    ld a, e
    ldh [$cd], a
    dec bc
    dec a
    ldh [$0b], a
    dec bc
    adc $ff
    call Call_000_2caa
    dec hl
    db $fd
    ld a, [bc]
    ld [hl], $80
    ld l, e
    ld c, d
    ld c, d
    ld l, e

Call_06f_48c6:
    dec c

Call_06f_48c7:
    ld c, e
    and $6f
    add b
    dec hl
    ld c, e
    ccf
    rst $38
    cp b
    ld l, d
    ld l, h
    ld l, e
    ld a, [bc]
    ccf
    ld l, d
    ld c, d
    ld c, d
    dec bc
    ld c, d
    ld c, d
    ld [hl], l
    add b
    ld [hl], a
    pop bc
    ld c, c
    dec bc
    ld b, b
    rst $38
    jp nz, Jump_000_0bcb

    ld a, a
    ldh [$3e], a
    pop hl
    ld a, [bc]
    cp [hl]
    call nz, $c088

Jump_06f_48ef:
    rst $38
    ld [$bce9], a
    ld h, c
    dec hl
    cp [hl]
    pop hl
    ret nz

    ldh [$af], a
    ld h, c
    dec bc
    ld sp, $402b
    rst $38
    ld [$88e9], a
    ret nz

    dec c
    dec bc
    di
    ld h, b
    ld a, [hl]
    ret nz

    rst $00
    dec bc
    ld c, e
    ld a, [bc]
    inc a
    ld [c], a
    set 7, a
    or a
    ld l, e
    ld c, e
    ld l, e
    ld b, b
    ccf
    and d
    cpl
    ld h, b
    cp a
    jp $ffca


    or l
    ld l, e
    ld a, a
    ret nz

    ld l, d
    db $f4
    ld b, b
    ld b, e
    ld l, e
    ld c, e
    dec sp
    and d
    add b
    ldh [$3d], a
    cp a
    ld hl, sp+$29
    ld l, h
    pop bc
    and c
    ld bc, $bd2a
    ldh [$35], a
    ld [c], a
    db $fc
    and b
    set 7, a
    ld hl, sp+$2a
    ld [hl], $40
    pop bc
    pop bc
    inc bc
    ld a, [hl+]
    ld c, d
    cp a
    db $e4
    add hl, sp
    sbc a
    jp nz, $8389

    ld [c], a
    cp [hl]
    ld [c], a
    ld a, h
    ldh [$61], a
    ld a, [hl+]
    dec sp
    and c
    cp e
    sbc a
    add hl, sp
    add hl, hl
    ld b, [hl]
    jp nz, Jump_06f_6a0a

    ld sp, hl
    db $e3
    ld b, b
    ld a, [$7a80]
    add e
    inc a
    rst $18
    ret nz

    db $eb
    pop bc
    db $e4
    ccf
    and b
    ld c, e
    ld a, h
    and d
    ld h, h
    ret nz

    rst $38
    and $e5
    ld c, d
    add [hl]
    and c
    cp e
    db $e4
    ld l, d
    dec bc
    or l
    add b
    add [hl]
    db $ec
    jr nz, jr_06f_4990

    dec hl
    ret z

    rst $38
    or a
    ld h, $c4
    jp nz, $e57f

    ld a, [hl+]
    ld b, d
    ret nz

    db $e3

jr_06f_4990:
    ld c, e
    ccf
    rst $18
    ld hl, sp+$27
    ld a, h
    ldh [$3f], a
    add sp, $4a
    ld [hl], e
    add c
    jr nz, @-$3e

    rst $38
    db $eb
    ld [$c03f], a
    inc a
    jp $c0b9


    ld a, [hl+]
    or a
    and c
    call $c0ff
    ld a, $8c
    db $fc
    and e
    cp b
    pop hl
    db $ec
    nop
    pop bc
    rst $38
    cp a
    xor e
    ld l, d
    dec hl
    inc b
    pop bc
    push hl
    cp a
    ldh [rOCPS], a
    dec b
    pop bc
    ccf
    cp a
    add b
    xor b
    ld a, a
    jp nz, $c37a

    inc bc
    ld a, [hl+]
    ld c, d
    ld [hl], $a0
    jp $80bf


    xor h
    pop bc
    ld h, c
    inc a

jr_06f_49d7:
    and e
    ld hl, sp+$40
    sub b
    rst $30
    add b
    inc bc
    rst $18
    ld b, d
    ld c, b
    add a
    ld h, c

Jump_06f_49e3:
    ld c, d
    add b
    dec h
    cp b
    ld h, d
    ld a, [hl+]
    nop
    add b
    rst $38
    jp hl


    add sp, -$7c
    ld b, c
    ld c, d
    ldh [$83], a
    ld b, b
    pop bc
    ld h, b
    or [hl]
    add e
    inc bc
    rst $38

jr_06f_49fa:
    nop
    ld bc, $82c9
    add e
    nop
    ld [hl+], a
    db $f4
    add e
    pop bc
    rst $38
    cp a
    sub b
    ret nz

    add sp, $41
    rst $38
    add b
    nop

jr_06f_4a0d:
    ld c, d
    rst $38
    add b
    ld b, a
    add b
    ld a, l
    ld [bc], a
    or $63
    add b
    rst $38
    rst $38
    adc h
    ld a, [hl+]
    add hl, de
    inc c
    ei
    ld b, c
    ld sp, hl
    ld b, b
    ld c, e
    inc c
    di
    pop hl
    rst $38
    rst $38
    ld a, l
    dec l
    nop
    ld sp, hl
    add h
    pop af
    add h
    jp $ffbf


    rst $38
    rst $38
    rst $38
    ld a, c

jr_06f_4a35:
    di
    rst $38
    rst $38
    ld [hl], c
    ld e, [hl]
    inc c
    ld b, c
    cp a
    ld [hl], c
    ld e, d
    ld c, e
    ld c, e
    cp a
    rst $38
    pop bc
    ld_long a, $ffbf
    di
    jr c, jr_06f_49d7

    dec c
    jr c, jr_06f_4a0d

    dec c
    ld c, e
    cp a
    sbc a
    ld b, e
    push af
    ret nz

    ld [c], a
    dec c
    ld bc, $7f6c
    rst $38
    or h
    ld [hl-], a
    cp [hl]
    ld bc, $4140
    ld a, a
    ld a, a
    or $13
    ld a, e
    add c
    jr nz, jr_06f_4ae0

    add c
    ret nz

    rst $38
    dec [hl]
    ld [hl-], a
    ld b, a
    jr nz, jr_06f_4a35

    jr nz, jr_06f_4a9f

    ret nz

    rst $38
    ld [hl], $14
    jr jr_06f_4a7f

    jr nz, jr_06f_49fa

    rst $38
    ld [hl], a
    sub a
    inc l
    dec c

jr_06f_4a7f:
    ld b, b
    push hl
    ld [hl], l
    cp a
    add b
    di
    nop
    ld a, d
    add d
    db $76
    add b
    ret nz

    rst $38
    di
    ld a, [c]
    jp nz, $d7e4

    rst $38
    or h
    ld [hl], l
    jp nz, Jump_000_00e4

    or l
    sbc a
    push af
    rla
    rst $38
    rst $38
    rst $38
    rst $38

jr_06f_4a9f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    nop
    nop
    nop
    rst $38
    sbc b
    sbc b
    sub a
    sub a
    sub [hl]
    sub [hl]
    sub l
    sub l
    cpl
    sub l
    sub [hl]
    sub [hl]
    sub a
    rst $38
    pop hl
    sbc b
    rst $38
    ldh [$ee], a
    pop hl
    db $10
    db $ed
    pop hl

Jump_06f_4ac0:
    ld [$e9e2], a
    db $e3
    add sp, -$1e
    sbc c
    rst $38
    ldh a, [$c1]
    ldh [$c0], a
    ld [c], a
    nop
    pop bc
    pop hl
    call nz, $dbe1
    ldh [$ad], a
    pop hl
    cp [hl]
    pop hl
    xor c
    jp hl


    and [hl]
    db $e3
    cp a
    ldh a, [$f8]
    push de

Jump_06f_4ae0:
jr_06f_4ae0:
    db $e3
    add c
    ldh [$85], a
    pop hl
    rrca
    rlca
    rlca
    rrca
    nop
    add c
    ld bc, $e0bf
    xor d
    pop hl
    xor b
    push hl
    or [hl]
    ld [c], a
    ld a, l
    or $54
    push hl
    sub [hl]
    cp $c1
    pop hl
    ld [bc], a
    ld c, b
    ld c, b
    ld [bc], a
    rlca
    inc b
    add hl, bc
    inc bc
    inc b
    dec c
    db $76
    ld [c], a
    daa
    ldh [$3e], a
    db $e3
    cp [hl]
    push hl
    inc a
    pop af
    ld [bc], a
    rst $20
    cp $c1
    ldh [rBGP], a
    ld d, h
    ld e, c
    ld b, e
    ld b, l
    ld b, [hl]
    xor [hl]
    rrca
    xor [hl]
    inc bc
    inc b
    rrca
    add hl, sp
    ld [c], a
    ld a, [$7ac5]
    ld [c], a
    inc a
    di
    db $fc
    ld b, d
    db $e4
    ld [bc], a
    pop hl
    ld [$5651], sp
    dec l
    cpl
    cpl
    rst $38
    ld a, [hl+]
    ld b, e
    xor a
    xor a
    xor [hl]
    ld b, [hl]
    ld b, $01
    add c
    nop
    push hl
    pop bc
    ret nz

    push hl
    or a
    add $ba
    adc $83
    call nz, $c187
    ld [$45ff], sp
    ld b, l
    ld l, $20
    jr nz, jr_06f_4b73

    ld hl, $1f38
    scf
    xor a
    xor [hl]
    dec b
    ld c, $80
    db $e3
    ld bc, $7de3

Jump_06f_4b60:
    add sp, -$08
    ld a, c
    call $e581
    ld h, d
    ret nz

    rrca
    ld [bc], a
    ld b, l
    ld a, [hl+]
    inc l
    rst $38
    ld sp, $212c
    dec [hl]
    dec [hl]

jr_06f_4b73:
    ld b, b
    xor a
    ld b, [hl]
    pop bc
    ld [$c227], sp
    ld b, h
    jp $e45d


    cp a
    ld a, [c]
    add c
    and $99
    ld bc, $00fd
    cp a
    ldh [rHDMA1], a
    ld e, a
    ld d, d
    scf
    dec a
    scf
    add c
    ld b, l
    rst $38
    ret nz

    pop bc
    db $e3
    pop af
    and e
    rst $30
    call nz, $f17e
    add b
    add sp, -$67
    ld a, $40
    ret nz

    ld [bc], a
    ld d, e
    ld d, e
    inc bc
    add hl, bc
    ld a, a
    jp $a3b2


    ldh [$f1], a
    and c
    rst $30
    add $79
    push bc
    nop
    di
    sbc l
    and d
    rlca
    rlca
    dec c
    nop
    cp $a3
    ldh a, [$e4]
    cp b
    ret nz

    or $c5
    ld [hl], c
    and l
    db $76
    xor d
    add b
    rst $00
    sbc h
    and l
    inc e
    add [hl]
    pop bc
    ld a, e
    and c
    sbc c
    dec c
    rlca
    rst $38
    pop hl
    or c
    ld [c], a
    or d
    and l
    ret nz

    ld a, [de]
    and e
    ret nz

    ld [$a502], a
    call c, Call_000_2ca6

Jump_06f_4be0:
    and b
    db $f4
    pop bc
    inc b
    add hl, bc
    rra
    inc bc
    ld b, l
    ccf
    ccf
    ccf
    push af
    jp nz, $85eb

    ld a, a
    ldh a, [$f8]
    call nc, Call_06f_6288
    and $74
    jp Jump_000_3d37


jr_06f_4bfa:
    jr c, jr_06f_4c31

    dec [hl]
    ccf
    dec [hl]
    jr c, jr_06f_4c38

    ld b, l
    ld [bc], a
    rrca
    db $eb
    add h
    ld a, a
    pop af
    ld [hl], b
    nop
    and l
    sub c
    add l
    ld a, e
    add e
    dec [hl]
    ret nz

    ld [hl], $35
    xor h
    cp $e0
    rrca
    dec [hl]
    dec [hl]
    xor h
    ld [hl], $bf
    ldh [$b2], a
    and c
    ld [hl], c
    and e
    cp $c4
    add sp, -$80
    adc h
    jp c, Jump_000_3ca9

    add c
    ld b, $c1
    ldh [$35], a
    xor l
    dec [hl]
    rlca

jr_06f_4c31:
    xor l
    xor h
    jp $e0fc


    cp a
    pop hl

jr_06f_4c38:
    ei
    jp $8518


    ret nz

    jp hl


    call c, $e8bf
    add hl, sp
    add [hl]
    sbc c
    ld a, [bc]

Jump_06f_4c45:
    add hl, sp
    ld b, a
    ldh [$3f], a
    scf
    ei
    jr c, jr_06f_4bfa

    ld a, [hl]
    ldh [$ad], a
    dec [hl]
    ld [hl], $45
    ld b, $f0
    pop af
    add [hl]
    ld a, [hl]
    call $8554
    add hl, sp
    adc c
    sbc c
    sbc c
    ld a, [bc]
    ld a, $ff
    ld [hl], $47
    ld c, h
    ld c, h
    ld b, a
    ld b, l
    ld [hl], $ad
    rst $38
    dec [hl]

Jump_06f_4c6c:
    call Call_000_35cf
    dec [hl]
    add hl, sp
    dec b
    ld c, $e0
    nop
    ld [$eb7f], a
    cp a
    db $e4
    ld sp, hl
    ld h, h
    sbc c
    ld h, b
    nop
    ld bc, $ff06
    ld b, e
    ld c, d
    ld d, [hl]
    ld c, d
    ld d, l
    ld d, d
    ld d, d
    ld b, l
    rst $38
    ld a, [hl-]
    dec [hl]
    adc $c3
    dec [hl]
    xor h
    ld a, [hl-]
    ld b, l
    ldh [$31], a
    and e
    ld a, a
    pop de
    call nc, Call_000_3aa4
    ld h, l
    scf
    and d
    sbc c
    ld [$ef45], sp
    ld c, e
    ld d, l
    ld b, l
    ld b, e
    ei
    ldh [$39], a
    xor h
    rst $08
    ccf
    adc $35
    xor l
    inc a
    ld b, h
    ld b, $f0
    ld l, b
    ld [hl], l
    ld l, l
    db $fc

jr_06f_4cb7:
    ld hl, $80c6
    push hl
    rrca
    inc b
    inc bc
    ld b, l
    ld d, h
    ld d, d
    cp a
    add sp, -$18
    ld b, l
    ld c, d
    ld d, [hl]
    ld b, b
    cp $c1
    xor h
    rlca
    dec [hl]
    add hl, sp
    ld a, [bc]
    rst $38
    ret z

    di
    ld d, b
    db $db
    add [hl]
    or [hl]
    add d
    inc b
    pop bc
    rst $38
    scf
    ld d, e
    ld d, h
    ld h, b
    ld d, l
    ld b, a
    ld h, b
    ld e, h
    dec de
    xor h
    xor l
    ld [hl], a
    pop bc
    ld a, $0a
    ld a, a
    add $b7
    ld [hl], d
    and b
    xor b
    ld a, [hl]
    db $76
    add b
    dec b
    ld b, b
    dec [hl]
    xor h
    xor h
    jr c, jr_06f_4cb7

    pop hl
    rst $18
    ld h, c
    ld e, h
    xor l
    adc $cf
    rst $30
    and b
    ld a, $05
    ldh a, [$7f]
    res 7, e
    adc h
    ret nz

    db $eb
    ld [bc], a
    pop bc
    xor l
    xor l
    dec [hl]
    jr c, @+$01

    ld b, l
    ld b, l
    ld d, e
    ld d, e
    ld b, h
    inc a
    rst $08
    jp $cf03


    xor l
    cp a
    jp Jump_06f_48ef


    ret nz

    rst $28
    ld b, b
    add sp, -$7e
    and c
    ei
    ld h, c
    ld a, a
    ld b, l
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, b
    dec [hl]
    dec [hl]
    cp a
    jp Jump_000_08c1


    rst $28
    ld b, e
    add hl, de
    xor b
    ld b, c
    rst $28
    ld b, b
    push bc
    cp a
    jp nz, Jump_06f_4747

    rst $08
    ld d, d
    ld b, e

Jump_06f_4d44:
    ld b, l
    ld b, l
    add hl, sp
    and d
    ld sp, hl
    add b
    ld b, b
    ld [$ef60], sp
    ld b, d
    db $ec
    daa
    dec a
    call z, $8660
    ld [hl], a
    ld h, b
    nop
    ld bc, $60b8
    ld a, a
    ld b, a
    ld h, b
    ld d, l
    ld e, b
    ld c, h
    ld b, a
    ld d, d
    cp a
    ldh [$86], a
    ld a, h
    and c
    jp $8040


    db $e3
    sub h
    daa
    cp d
    ld l, d
    ld b, b
    call $ff02
    ld c, b
    ld c, [hl]
    ld c, b
    ld d, e
    ld c, d
    ld h, b
    ld h, c
    ld d, l
    dec de
    ld e, b
    ld d, l
    cp a
    db $e4
    ld b, b
    dec bc
    ld a, d
    add b
    db $ec
    dec h
    ccf
    pop af
    ld a, [$c940]
    ld b, $c5
    ldh [$60], a
    ld c, c
    ld c, b
    ld d, d
    ld e, b
    ccf
    ld c, d
    ld h, b
    ld h, b
    ld c, c
    ld c, c
    ld b, a
    dec sp
    and b
    ld a, d
    add e
    cp b
    db $fd
    add $7c
    or c
    ld b, b
    ret z

    ld a, [bc]
    ld c, a
    ld h, c
    rst $38
    pop hl
    ld d, d
    ld e, e
    ld c, l
    ld h, b
    ld sp, hl
    ld [c], a
    ld b, l
    ld [hl], $7a
    add e
    ld b, $76
    ld h, d
    ret nc

    ccf
    ld a, [c]
    pop hl
    ld h, e
    ccf
    and l
    ret nz

    db $e4
    ld h, c
    pop bc
    db $e4
    ld b, l
    ld b, e
    add d
    inc sp
    add d
    add hl, sp
    db $fc
    and h
    inc a
    or h
    cp a
    adc b
    ld b, b
    pop hl
    rst $38
    and $52
    rst $18
    ld b, e
    ld b, a
    ld c, h
    ld d, l
    ld a, [hl-]
    cp b
    ld h, b
    ld a, $0c
    db $fc
    ld a, e
    ld h, l
    rst $38
    cp l
    rrca
    ld [bc], a
    ld d, e
    ld e, c
    ld e, c
    ld d, h
    ld a, $bd
    push hl
    ld c, h
    ld d, h
    ld d, h
    ld d, [hl]
    add hl, sp
    or d
    ld h, b
    add b
    ldh [$78], a
    dec de
    rst $20
    rst $38
    or a
    ld [hl], a
    ld [bc], a
    rlca
    rlca
    dec b
    ld c, e
    ld a, a
    and $1f
    ld b, l
    ld b, h
    ld e, [hl]
    ld e, h
    inc a
    cp e
    ld h, c
    xor [hl]
    dec b
    ld b, c
    di
    ld a, b
    sbc e
    dec h
    ld [hl], h
    ld hl, $60fe
    ld d, l
    ld h, c
    ld e, b
    ld d, l
    cp c
    jp nz, Jump_06f_543f

    ld c, c
    ld c, h
    ld d, d
    ld b, h
    inc a
    ld a, [$2e41]
    rlca
    cp b
    nop
    or h
    or l
    ld b, $3e
    add c
    ld d, e
    ld d, h
    ld c, h
    pop bc
    ld [c], a
    ld d, h
    ld b, d
    cp l
    pop bc
    ccf
    ld b, c
    pop bc
    cp l
    ld d, h
    ccf
    adc e
    ld b, b
    ld [c], a
    ld [bc], a
    add [hl]
    and b
    ei
    ld c, b
    ld c, b
    ld a, [$59c0]
    ld d, e
    ld c, b
    ld c, b
    ld e, e
    rra
    ld b, a
    ld d, d
    dec d
    rlca
    rlca
    xor b
    ld [hl+], a
    cp l
    ld [hl], l
    ret nz

    call $48bb
    ld e, [hl]
    call nz, Call_06f_61a0
    ld d, a
    ld c, h
    rst $38
    ldh [$60], a
    rra
    ld h, b
    ld d, l
    ld c, l
    ld e, [hl]

jr_06f_4e69:
    ld c, b
    ld a, [hl]
    ld b, e
    add b
    ei
    ld b, b
    rst $00
    rst $38
    ld c, c
    ld h, b
    ld h, b
    ld h, c
    ld c, a
    ld d, [hl]
    ld e, [hl]
    ld d, h
    cp $80
    ldh [rHDMA4], a
    ld h, c
    ld c, e
    ld e, d
    ld e, [hl]
    ld h, b
    ld h, c
    and c
    ld d, h
    ld a, [hl]
    ld b, e
    cp l
    ld [hl-], a
    ret nz

    ld l, c
    ret nz

    and e
    ld b, a
    add b
    and b
    ld d, l
    ld a, [hl]
    add b
    jr nz, jr_06f_4ed0

    dec sp
    dec sp
    jr c, @+$3f

    scf
    ld a, [c]
    and c
    db $e3
    ld d, d
    ld a, [bc]
    sbc l
    and [hl]
    cp h
    rrca
    ld bc, $06ed
    ld d, c
    ld e, [hl]
    rst $18
    ld h, c
    ld h, c
    ld d, [hl]
    ld c, c
    ld b, a
    jp z, Jump_000_35a0

    ld a, [hl-]
    dec bc
    ld b, a
    ld c, c
    ld [hl], $c1
    ld e, h
    ld b, e
    pop bc
    cp l
    inc d
    add c
    xor e
    ld bc, $b7c0
    ld c, $05
    ld d, [hl]
    ld b, d
    and c
    ld e, b
    ld a, $00
    jr nz, jr_06f_4f09

    dec b
    ld c, l
    add hl, sp
    and c
    ld d, [hl]

jr_06f_4ed0:
    rst $38
    jr nz, jr_06f_4e69

    rlca
    ld bc, $c077
    ld h, h
    cp a
    add h
    inc a
    ret nz

    ld [c], a
    ld [hl], l
    ldh [$61], a
    ld h, c
    ld e, d
    ld a, [bc]
    call nz, $81a7
    db $f4
    db $76
    pop bc
    ld b, a
    ld bc, $3f00
    add c
    ld d, d
    ld d, h
    ld d, d
    ld b, b
    ld [c], a
    add b
    ld hl, sp-$20
    di
    ret nz

    ld b, c
    db $e3
    add b
    rlca
    ld b, c
    ld c, l
    add b
    db $eb
    rst $38
    add b
    ld d, e
    db $eb
    inc bc
    inc bc
    ld a, $00
    dec a

jr_06f_4f09:
    ld sp, hl
    ld b, b
    inc bc
    inc bc
    ld d, e
    pop af
    ld d, e
    jp Jump_000_00bb


    db $ed
    add b
    and c
    inc b
    dec c
    sbc c
    rlca
    rst $38
    inc b
    add hl, bc
    add hl, bc
    add hl, bc
    inc b
    rlca
    dec c
    sbc c
    inc bc
    inc b
    inc b
    ccf
    ld [bc], a
    add b
    ld [de], a
    add c
    xor a
    ld [c], a
    inc hl
    ld sp, hl
    ld [bc], a
    inc hl
    dec h
    nop
    sub d
    ld hl, $1480
    nop
    adc $e0
    inc h
    ld a, b
    ld b, d
    adc d
    db $e3
    cp h
    db $e4
    jp Jump_000_0088


    cp a
    pop af
    ret nz

    add l
    rst $18
    inc hl
    sbc e
    dec b
    and e
    ld [bc], a
    ld sp, $c380
    ld b, b
    ret nz

    jp Jump_06f_7fe0


    db $d3
    cp a
    ld b, l
    cp a
    db $e3
    sbc c
    ret z

    cp l
    pop hl
    rrca
    ld [bc], a
    ld b, [hl]
    ld bc, $8246
    ld b, c
    rra
    add l
    ld a, $f1
    cp a
    ld b, d
    cp l
    ld hl, $e5bd
    jr @-$3a

    nop
    di
    ld hl, $e0c1
    cp a
    ld [c], a
    ld e, $86
    ld a, a
    di
    cp a
    and $38
    db $e4
    ld d, [hl]
    pop bc
    ld a, [de]
    di
    ld [hl+], a
    xor [hl]
    jr c, jr_06f_4fa9

    xor [hl]
    ld b, [hl]
    ccf
    and d
    cp l
    db $dd
    cp l
    and $6c
    rst $30
    jp Jump_06f_42f4


    ld b, [hl]
    xor a
    ld hl, sp+$00
    xor a
    xor [hl]
    ld a, $a0
    ldh a, [$7f]
    sbc b
    cp a
    add sp, $77
    ret


    ld [hl], h
    ld bc, $4343

jr_06f_4fa9:
    ccf
    ccf
    rrca
    ld b, e
    ld b, e
    xor a
    ld b, [hl]
    cp [hl]
    inc b
    cp h
    or [hl]
    sub h
    jp $c5b9


    cp [hl]
    rst $30
    and h
    ld c, $05
    ld b, h
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    rlca
    ld b, h
    ld b, [hl]
    ld [$22c1], sp
    ld a, a
    ld [hl], l
    cp a
    push hl
    or a
    rlca
    add c
    jp nz, Jump_000_06ff

    xor [hl]
    ld b, b
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    pop hl
    ld l, d
    ret nz

    ldh [$80], a
    db $fd
    add hl, sp
    ld c, [hl]
    sbc [hl]
    ld b, b
    ld a, [bc]
    xor a
    ld b, b
    pop bc
    ld l, c
    ld b, b
    ld bc, $e1c0
    nop

jr_06f_4fee:
    db $fc
    jr c, jr_06f_4ffd

    ld [hl], a
    add d
    sbc c
    ld a, [bc]
    ld l, a
    xor [hl]
    ld b, h
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a

jr_06f_4ffd:
    ld b, h
    cp $62
    nop
    dec a
    cp b
    add b
    push af
    ret nz

    ret nz

    cp $e1
    jp nz, $8124

    ld a, [$ed7f]
    nop
    pop hl
    inc c
    call nz, $c1a1
    and b
    inc bc
    inc b
    ld a, a
    and [hl]
    add c
    rst $30
    ld a, a
    db $ec
    ld a, $a1
    ld c, $83
    and e
    inc bc
    inc b
    dec c
    ccf
    add [hl]
    nop
    or e
    cp $d0
    add b
    and e
    ld c, $f5
    nop
    rlca
    rlca
    dec c
    ccf
    adc d
    add b
    sub c
    scf
    jr nc, jr_06f_4fee

    ld h, [hl]
    nop
    db $fc
    ld h, l
    inc b
    jp c, $9177

    or $64
    ei
    and $84
    or c
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
    ld [bc], a
    nop
    inc de
    dec b
    ld [bc], a
    ld bc, $0514
    ld [bc], a
    ld [bc], a
    dec d
    ld b, $02
    inc bc
    ld d, $07
    ld [bc], a
    inc b
    dec de
    rrca
    ld [bc], a
    dec b
    dec e
    rrca
    ld [bc], a
    ld b, $21
    rrca
    ld [bc], a
    rlca
    ld e, $10
    ld [bc], a
    ld [$1022], sp
    ld [bc], a
    add hl, bc
    rra
    ld de, $0a02
    inc h
    inc de
    ld [bc], a
    dec bc
    jr nz, jr_06f_50ab

    ld [bc], a
    inc c
    ld hl, $0215
    dec c
    inc h
    dec d
    ld [bc], a
    ld c, $20
    ld d, $02
    rrca
    rla
    rla
    ld [bc], a
    db $10
    jr jr_06f_50c2

jr_06f_50ab:
    ld [bc], a
    ld de, $1724
    ld [bc], a
    ld [de], a
    dec h
    jr jr_06f_50b6

    inc de
    ld [hl+], a

jr_06f_50b6:
    ld a, [de]
    ld [bc], a
    inc d
    inc hl
    dec de
    ld [bc], a
    dec d
    inc h
    inc e
    ld [bc], a
    ld d, $27

jr_06f_50c2:
    dec e
    ld [bc], a
    rla
    jr z, jr_06f_50e5

    ld [bc], a
    jr jr_06f_50f3

    jr nz, jr_06f_50ce

    add hl, de
    inc hl

jr_06f_50ce:
    inc [hl]
    ld [bc], a
    ld a, [de]
    daa
    inc [hl]
    ld [bc], a
    dec de
    jr z, jr_06f_510c

    ld [bc], a
    inc e
    jr nz, jr_06f_5113

    ld [bc], a
    dec e
    jr nz, jr_06f_5119

    rst $38
    rst $38
    rst $38
    ld [$0850], a

jr_06f_50e5:
    ld d, l
    ld a, [bc]
    ld e, d
    dec h
    ld e, d
    db $ed
    dec c
    rst $38
    db $ec
    ld c, $0e
    ld hl, sp-$1c
    inc l

jr_06f_50f3:
    inc l
    inc c
    inc hl
    inc c
    inc l
    rst $38
    di
    add sp, -$17
    rst $08
    ldh [$2e], a
    ret nz

    db $ed
    xor $e1
    and e
    ld c, $6c
    cp a
    or $a9
    ld [$e28d], a

jr_06f_510c:
    ld l, $89
    ldh [$0e], a
    ld e, h
    or [hl]
    db $e3

jr_06f_5113:
    add b
    db $e4
    ld c, $6e
    inc c
    add b

jr_06f_5119:
    db $f4
    inc c
    ld l, c
    db $eb
    cp b
    sub d
    db $e3
    ret nz

    ld [c], a
    or [hl]
    db $e3
    dec c
    ld c, $4e
    rst $38
    ldh [$6e], a
    jr jr_06f_516f

    ldh [$d6], a
    db $ec
    ld [hl-], a
    db $e3
    inc c
    ld l, h
    ld a, [hl+]
    db $eb
    add hl, bc
    and $48
    db $e4
    ld a, $86
    ldh [$2b], a
    ld a, [bc]
    ld a, [hl+]
    dec bc
    dec bc
    sbc c
    ldh [$96], a
    jp hl


    jp nz, $e48a

    inc c
    pop bc
    ldh [$c0], a
    db $ed
    add [hl]
    db $e4
    ret z

    push bc
    ld l, [hl]
    dec bc
    rra
    dec hl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, d
    call nz, $c0c0
    rst $00
    ld c, h
    push hl
    ldh a, [$c1]
    ldh [$81], a
    db $ec
    ret nz

    push hl
    add b
    rst $00
    dec bc
    dec hl
    dec bc
    dec hl
    rra
    dec hl
    ld c, d

jr_06f_516f:
    ld a, [bc]
    ld c, h
    ld c, h
    pop bc
    add sp, $43
    rst $20
    add c
    db $ed
    ld a, h
    add b
    rst $20
    ret nz

    and $6b
    ld c, e
    dec bc
    dec bc
    dec bc
    ld a, a
    ldh [$c0], a
    cp a
    ret nz

    ld c, b
    call $e043
    inc l
    call $c949
    inc b
    pop bc
    ld c, [hl]
    ld l, $4f
    ld a, [bc]
    ld c, d
    dec bc
    dec bc
    ld a, a
    ldh [$80], a
    pop bc
    ld c, h
    add l
    call $eff8
    xor a
    add h
    call nz, $e6c0
    dec c
    ld c, $0a
    ld a, [bc]
    ld c, e
    ret nz

    rst $38
    ldh [$c0], a
    pop bc
    call nc, $b1cc
    or d
    call nz, Call_000_3cc8
    call nz, $0a4a
    adc d
    ld b, b
    ldh [$0b], a
    add h
    pop hl
    inc c
    cp h
    and b
    cp $fd
    ret nz

    xor $4e
    rrca
    ld l, $4b
    dec bc
    dec c
    cp a
    pop hl
    ld b, b
    jp z, $f482

    add b
    jp hl


    ld b, $37
    and l
    ld c, $0b
    ret nz

    ld [c], a
    ld a, a
    ret nz

    rla
    xor b
    db $f4
    sub [hl]
    ret


    add l
    inc c
    ld a, e
    and e
    ld [hl], l
    and d
    dec bc
    ld l, e
    cp a
    ret nz

    cp [hl]
    and e
    ld c, h
    or e
    add b
    or b
    db $fc
    cp h
    and $06
    and b
    dec c
    ld l, e
    ld l, e
    dec bc
    ld a, [bc]
    dec hl
    ld hl, $404b
    rst $00
    ld [hl], a
    ret nz

    ret nz

    rst $38
    cp a
    and a
    dec c
    ld bc, $7de0
    ldh [rSCY], a
    jp z, Jump_000_2ca7

    pop bc
    add sp, $00
    rst $08
    ccf
    add h
    cp $83
    ld c, $ff
    and b
    nop
    pop bc
    ret nz

    cp a
    call nz, $8412
    ld hl, sp-$77
    nop
    pop af
    ld b, a
    add h
    ret nz

    db $e3
    ld a, $a1
    inc bc
    dec hl
    dec c
    ld a, d
    and b
    ld c, d
    and l
    ld c, a
    adc b

jr_06f_5236:
    ld hl, sp-$30
    ld [$80e7], sp
    db $e4
    nop
    add b
    add b
    ld b, b
    and b
    pop bc
    ldh [$7f], a
    add h
    cp d
    adc c
    jp $c08d


    ret


    cp d
    and [hl]
    nop
    cp a
    add d
    add b
    and c
    nop
    xor h
    jp $8090


    jp z, $c5f8

    jp nz, Jump_000_0081

    add c
    nop
    dec bc
    ld l, [hl]
    pop bc
    pop af
    nop
    ld h, c
    ld [$81e4], sp
    ld h, l
    add d
    add b
    ld [bc], a
    ret nz

    ld b, b
    adc c
    ret nc

    ld c, c
    ld h, h
    nop
    or e
    ret nz

    rst $20
    add b
    and $0a
    jp nz, $0da0

    ld c, h
    ldh [rIE], a
    add c
    adc l
    ld d, b
    ret nz

    ld l, l
    add b
    add sp, -$3f
    and l
    ld c, e

jr_06f_5289:
    ld l, e
    dec c
    add a
    dec hl
    dec c
    dec c
    ld a, a
    db $ec
    ld [hl], a
    or h
    ld b, [hl]
    ld h, a
    adc d
    ld b, d
    ld c, [hl]
    ld [hl], a
    ld l, [hl]
    dec c
    dec c
    add d
    pop hl
    dec hl
    dec bc
    dec c
    ld c, [hl]
    rst $28
    ld b, h
    add hl, sp
    or c
    sla e
    ld c, [hl]
    db $fc
    jr nz, jr_06f_5236

    ld b, c
    or d
    ld hl, $3f2b
    ld h, c
    inc bc
    dec bc
    dec bc
    dec bc
    xor a
    nop
    sub l
    call z, $c441
    pop hl
    ld c, c
    ld h, b
    pop bc
    pop hl

Jump_06f_52c1:
    jr nc, jr_06f_5305

    ld h, c
    ret nz

    ld [c], a
    ld a, [hl]
    jr c, jr_06f_5289

    dec hl
    ld l, [hl]
    dec hl
    db $10
    pop hl
    add $e2
    nop
    push bc
    ld h, c
    ret nz

    ld h, b
    ld a, [hl]
    add b
    ld d, d
    jp nc, Jump_06f_7340

    db $d3
    ret nz

    db $fd
    pop hl
    add hl, bc
    ld h, b
    ld [hl], $86
    pop bc
    ld c, e
    ld l, e
    add b
    add b
    dec hl
    ld c, e
    add d
    rst $38
    add b
    dec h
    inc c
    add c
    pop hl
    add l
    ld [c], a
    ld c, e
    ld a, [bc]
    push bc
    ldh [$03], a
    ld h, c
    ld b, b
    and h
    add d
    ld a, a
    db $10
    ld b, b
    ld [hl+], a
    pop bc
    ld [c], a
    add l
    ld [c], a
    ld b, [hl]

jr_06f_5305:
    ret nz

    ld c, e
    ld b, l
    ret nz

    ret nz

    ld h, b
    ret nz

    ld b, c
    jr nz, @+$58

    daa
    db $76
    ld hl, sp-$40
    push hl
    dec c
    add c
    jp Jump_06f_6be0


    jr nc, jr_06f_531c

    ld b, h

jr_06f_531c:
    inc hl
    inc a
    ld d, [hl]
    daa
    ld a, c
    ld e, c
    dec c
    ld c, l
    ld c, [hl]
    ld l, $51
    pop bc
    ld c, e
    ld h, b
    inc de
    ld c, e
    ld c, e
    or h
    ld h, h
    pop bc
    db $e4
    inc l
    add c
    ld b, c
    ld a, [hl-]
    add a
    db $fc
    inc sp
    jr nz, jr_06f_5382

    ld bc, $6013
    ld c, l
    and c
    add hl, bc

jr_06f_5340:
    add b
    ret nz

    push hl
    ld l, h
    jr jr_06f_5366

    cp a
    ldh [rP1], a
    dec bc
    xor [hl]
    add b
    cpl
    call nz, $8521
    ldh [$0d], a
    ld h, b
    ld bc, $46c3
    and b
    add $23
    db $10
    sub $03
    cp h
    adc l
    ld a, e
    adc $83
    jr nz, @+$70

    jp Jump_06f_49e3


jr_06f_5366:
    ld h, c
    add d
    and c
    nop
    add c
    pop hl
    ld e, b
    rrca
    ld a, b
    ld h, e
    ret nz

    ld [hl], c
    add b
    ret nz

    ld c, a
    ld b, e
    jp z, $c120

    pop hl
    nop
    add b
    ld [c], a
    sub [hl]
    ld l, a
    ld [hl], h
    ld h, d
    nop

jr_06f_5382:
    ld [hl], c
    ret nz

    pop hl
    rst $08
    and b
    add hl, bc
    add d
    ld a, b
    and d
    jr nc, @+$07

    ld [hl+], a
    ld d, l
    ld l, [hl]
    ld sp, $8eb4
    ld bc, $2b2b
    ld c, l
    add b
    ret


    ld h, c
    ret nz

    jr c, jr_06f_5340

    ld b, $63
    add h

Jump_06f_53a0:
    adc [hl]
    cp l
    ld [hl], e
    ld b, b
    and e
    pop bc
    jp nz, Jump_06f_6b4b

    ld hl, $412b
    db $e4
    ld d, [hl]
    db $10
    db $ec
    pop af
    add b
    ld h, e
    ld l, $bf
    and l
    ld a, $c4
    nop
    sla l
    rst $00
    ld l, a
    cp l
    ld de, $028e
    ccf
    ldh [$84], a
    add h
    ret nz

    ld [c], a
    add d
    ldh a, [$9c]
    cp l
    ld [hl], $41
    ld hl, $0e4e
    ld l, $c9
    add b
    cp a
    db $e4
    dec hl
    add b
    add hl, bc
    jp nz, Jump_06f_4c45

    ld a, c
    set 0, b
    xor e
    adc h

jr_06f_53e0:
    ld bc, $e1be
    cp [hl]
    and d
    dec hl
    jr nc, jr_06f_542f

    ld b, c
    rst $10
    ld l, $38
    jr jr_06f_5438

    dec b
    ld c, [hl]
    ld l, $3d
    db $e4
    ld de, $0020
    ld b, e
    and e
    db $10
    sub c
    add b
    jr nc, @+$4c

    inc bc
    add hl, sp
    add c
    ld a, e
    add d
    add hl, bc
    ld hl, $a104
    jr nc, jr_06f_5419

    ld d, h

jr_06f_5409:
    ret nz

    ld d, h
    add l
    ld bc, $2109
    ld c, e
    ld c, e
    ld a, [de]
    ld hl, $82c3
    ld [hl], b
    pop bc
    rst $38
    ret nz

jr_06f_5419:
    daa
    ret


    ld [bc], a
    db $fd
    and d
    dec c
    ld l, h
    ld c, h
    adc a
    ld bc, $8240
    add b
    ld a, l
    pop hl
    pop bc
    rst $38
    ret nz

    rst $20
    ld a, h
    and b
    cp a

jr_06f_542f:
    ld h, c
    dec hl
    adc b
    ld [hl+], a
    jr z, jr_06f_5409

    inc de
    ld b, b
    scf

jr_06f_5438:
    cp d
    add h
    ld c, e
    ld a, $a1
    ld l, h
    ld a, l

Jump_06f_543f:
    pop hl
    ld a, a
    ld [c], a
    nop
    jp nz, $c0ff

    ld [$a042], a
    cp $82
    cp $a0
    cp a
    ld h, d
    jp Jump_000_00ff


    ld b, h
    nop
    adc c
    ld bc, $81ba
    cp $e3
    ld a, a
    jr nz, jr_06f_53e0

    ld bc, $d33e
    ld b, b
    sub b
    ld b, a
    inc b
    nop
    cp l
    and b
    cp [hl]
    rst $20

jr_06f_5469:
    cp e
    pop bc
    jp nz, Jump_000_00f1

    inc sp
    db $fd
    and h
    scf
    add b
    inc a
    push hl
    db $10
    ld b, l
    ld l, [hl]
    ld b, c
    ld [hl], l
    ld b, b
    ld bc, $0781
    dec hl
    db $fc
    ld bc, $21b5
    add e
    jr nc, jr_06f_549e

    ret nz

    ld [hl], l
    ret nz

    ld [$05fd], a
    ld l, h
    ld c, h
    pop bc
    pop af
    ld b, b
    call nc, $a37e
    inc e
    ld a, l
    and d
    ld a, $60
    dec bc
    dec bc
    dec l
    db $76
    ld h, b

jr_06f_549e:
    ld a, [$fea0]
    call nz, $f7c0
    jp Jump_06f_75c1


    ret nz

    jp $e4c0


    ld [hl], $60
    ld a, l
    inc b
    dec hl
    dec hl
    add c
    ld l, h
    ld a, h
    pop bc
    add $da
    ret nz

    rst $28
    cp h
    add h
    inc [hl]
    jr nz, jr_06f_5469

    and b
    ld l, $40
    ld [hl], a
    and c
    ld bc, $403e
    add l
    ret nz

    db $e4
    ld b, l
    nop
    db $fd
    pop hl
    ld c, e
    rst $28
    and d
    jr nc, @-$3e

    and $80
    sbc l
    cp [hl]
    db $e4
    cp e
    and a
    ld c, $6e
    xor [hl]
    add c
    pop de
    ld h, $08
    add b
    ei
    ld bc, $78c4
    jp nz, $f24e

    add b
    ld l, [hl]
    ld hl, $e3c0
    cp $ca
    nop
    nop
    ei
    ret nz

    db $e4
    ld a, [c]
    jp hl


    ccf
    pop hl
    cp a
    rst $38
    set 5, c
    db $f4
    db $ec
    ccf
    ldh [rP1], a
    rst $30
    add hl, hl
    ld b, b
    db $d3
    nop
    nop
    nop
    db $ed
    and b
    rst $38
    db $ec
    ld [c], a
    db $e3
    xor $e3
    sbc [hl]
    dec b
    sbc c
    rst $20
    sbc b
    sbc b
    sbc c
    rst $38
    di
    add sp, -$17
    and b
    call nc, Call_06f_7dd5
    call nc, $e9bc
    db $e4
    push hl
    and b
    and b
    call nc, $e0ee
    ldh [$c0], a
    ldh [$bf], a
    push af
    xor c
    ld [$e080], a
    cp [hl]
    pop hl
    sub $d7
    ret c

    db $76
    or [hl]
    db $e3
    and $e7
    ld l, [hl]
    ld [c], a
    sbc a
    sbc h
    ld [bc], a
    add b
    db $f4
    ld a, c
    sbc b
    ld l, c
    db $eb
    sub d
    db $e3
    and b
    reti


    jp c, $b6db

    db $e4
    ld [hl], a
    and b
    sbc a
    sbc l
    rst $38
    ldh [$9c], a
    ld [bc], a
    rrca
    ld b, b
    db $ed
    and $32
    db $e3
    sbc b
    sub a
    ld a, [hl+]
    db $eb
    nop
    db $e4
    call c, $dedd
    cp $b6
    db $e4
    sbc a
    sbc h
    ld b, l
    ld c, b
    ld c, b
    ld b, e
    ld b, l
    daa
    ld [$0100], sp
    rst $38
    ret


    adc d
    db $e4
    sbc b
    pop bc
    ldh [$c0], a
    db $ed
    xor $ce
    jp nz, $e0df

    pop hl
    or [hl]
    jp $9c9f


    ld b, [hl]
    ccf
    ld b, l
    ld d, h
    ld h, c
    ld c, h
    ld d, l
    ld [$e901], sp
    ld c, h
    push hl
    ldh [$c1], a
    ldh [$81], a
    db $ec
    nop
    ldh [$ce], a
    pop bc
    ld a, d
    rst $00
    sbc [hl]
    ld b, [hl]
    ld b, l
    ld a, a
    ld a, [hl+]
    inc l
    dec hl
    ld c, e
    ld d, l
    ld [bc], a
    rrca
    pop bc
    add sp, -$40
    add a
    add $c1
    ldh [$c0], a
    xor $ce
    jp nz, $c549

    ret nz

    ldh [rLY], a
    ld a, [hl+]
    ccf
    jr nz, jr_06f_55dd

    dec l
    ld c, e
    ld d, l
    ld [$ed16], sp
    inc b
    ld [c], a
    ld hl, sp+$2c
    adc $49
    ret z

    ld a, h
    pop bc
    and b
    sbc a
    ret nc

    ld c, a
    ld d, l
    rlca
    daa
    jr nz, jr_06f_5607

    ret nz

    ldh [rP1], a
    rst $08
    rst $28
    or c
    ret nz

    and b

jr_06f_55dd:
    ld b, h
    pop bc
    db $fc

Call_06f_55e0:
    ld c, c
    pop bc
    ld a, h
    jp $4fd2


    ld e, d
    ld a, [hl+]
    ld h, $24
    rlca
    ld b, h
    inc c
    rrca
    cp a
    rrc b
    call $c800
    ld b, h
    jp $c47c


    rst $38
    and b
    sbc [hl]
    ld c, d
    ld e, d
    ld a, $35
    dec [hl]
    add hl, sp
    jp Jump_000_0f0c


    rst $08
    db $f4
    ld b, b

jr_06f_5607:
    rst $28
    ret z

    db $e3
    ld a, h
    push bc
    sbc a
    ret nc

    ld a, a
    ld b, e
    ld a, $ac
    dec [hl]
    ld a, [hl-]
    ld b, l
    ld [$a0d7], sp
    ldh a, [$3f]
    xor c
    inc sp
    or h
    ld b, h
    rst $00
    scf
    and l
    jp nc, Jump_000_3e46

    xor l
    add b
    ld a, a
    ldh [$7f], a
    ret nz

    push de
    xor b
    db $f4
    sub [hl]
    ret nz

    add h
    ld a, e
    and d
    push af
    add e
    sbc [hl]
    rra
    ld b, [hl]
    add hl, sp
    dec [hl]
    rst $08
    rst $08
    ld a, a
    db $e3
    ld c, h
    or e
    add b
    or b
    db $fc
    cp h
    and $06
    and b
    xor [hl]
    ld b, l
    ld a, [hl-]
    adc $c3
    inc a
    pop bc
    ld b, h
    ld a, a
    ret nz

    dec c
    and [hl]
    dec [hl]
    adc $c0
    pop af
    cp a
    and l
    xor a
    xor [hl]
    rra
    ld a, $ce
    rst $08
    dec [hl]
    ld b, b
    ld a, [hl]
    and c
    jp z, Jump_06f_7ba6

    sub $78
    ld [$02e6], sp
    jp nz, $8002

    sbc a
    ret nc

    ld b, [hl]
    xor a
    cp a
    ret nz

    inc bc
    dec [hl]
    ld b, d
    cp $81
    jp z, Jump_000_3ca5

    rst $10
    add $c6
    ld a, [hl]
    add d
    ld [bc], a
    add c
    rst $38
    jp nc, Jump_06f_4546

    ld a, [hl-]
    xor l
    dec [hl]
    ld [hl], $45
    add b
    add b
    push hl
    ld c, a
    adc b
    ld hl, sp-$30
    ld [$7ee6], sp
    add d
    ld [bc], a
    add b
    add b
    add b
    ld [hl], $01
    dec [hl]
    pop bc
    ldh [rIE], a
    add c
    ld a, [hl]
    ld h, c
    ld a, h
    adc c
    ld sp, hl
    ret nc

    ld b, b
    ld h, [hl]
    ld a, [hl]
    add l
    ld e, $81
    ret nz

    rst $08
    rst $08
    inc a
    ld b, h
    ret nz

    add b
    adc a
    xor h
    jp Jump_06f_7c90


    add b
    jp z, Jump_06f_6437

    sbc [hl]
    ld b, [hl]
    ld a, $ce
    jp $e002


    adc c
    sbc d
    jp $c18e


    pop af
    sbc c
    ret z

    add $81
    ld h, l
    ret nz

    pop hl
    adc $07
    dec [hl]
    ld b, b
    ld [bc], a
    nop
    and c
    ld c, c
    ld l, e
    nop
    or e
    ret z

    add $00
    call nz, $803e
    ldh [$c3], a
    adc $35
    add hl, sp
    xor [hl]
    ccf
    ld h, b
    inc b
    jp hl


    ldh [$ba], a
    sub l
    ret z

    add $37
    ld b, h
    pop bc
    and b
    nop
    ldh [$ac], a
    ld a, $af
    add e
    xor [hl]
    ld [bc], a
    ld b, b
    ld d, b
    nop
    sub b
    ld b, [hl]
    ld h, [hl]
    adc d
    ld b, c
    rst $00
    ld b, b
    xor [hl]
    rst $38
    xor a
    add hl, sp
    dec [hl]
    dec [hl]
    xor l
    ld a, $46
    xor a
    cp b
    ld a, a
    ld c, a
    add hl, sp
    or c
    ret z

    db $e4
    sbc a
    and b
    and b
    adc d
    ld b, c
    xor [hl]
    ld a, a
    xor [hl]
    xor [hl]
    xor a
    ld b, l
    ld a, [hl-]
    rst $08
    call $a001
    and e
    dec b
    ld c, $d3
    ld c, l
    nop
    sub l
    call z, $9c41
    add a
    ldh [rDMA], a
    rst $38
    ld b, [hl]
    ld b, [hl]
    xor a
    xor a
    xor a
    ld b, l
    ld [hl], $cf
    dec e
    call z, $c0ff
    ld b, d
    ld b, $9b
    adc d
    sbc b
    ret nz

    ld a, [hl+]
    adc l
    ld b, b
    db $db
    xor [hl]
    ld b, [hl]
    add a
    pop hl
    scf
    dec a
    rst $38
    ldh [$38], a
    rst $08
    scf
    jp $cccc


    ld bc, $06a0
    sbc b
    ld a, $cd
    ret nz

    ld [hl], l
    rst $08
    sbc [hl]
    ld b, [hl]
    xor [hl]
    xor a
    add [hl]
    ldh [$87], a
    ldh [$cd], a
    jp $cfff


    dec [hl]
    dec [hl]
    rst $08
    call $cfcd
    dec [hl]
    rrca
    inc a
    ld b, h
    ld b, $99
    ccf
    res 0, b
    db $76
    ld c, $40
    add l
    ld [c], a
    ld a, a
    jr c, jr_06f_57bb

    rst $08
    jp $cfcd


    jr c, jr_06f_5809

    pop hl
    ret nz

    ld b, b
    and c
    add b
    ld h, b
    add d
    ld a, a
    nop
    ld hl, $e081
    add l
    push hl
    jr c, jr_06f_57d9

    dec sp
    scf
    ld b, l
    dec [hl]
    ldh [rLYC], a
    ccf
    ccf
    ld bc, $56a1
    daa
    ld e, h
    ld hl, sp-$28
    rrca
    add d
    add hl, sp
    rst $08
    call z, $e10c
    ld [hl], $c3
    pop hl
    ld a, a
    xor a
    xor [hl]
    xor a
    ld [bc], a
    rlca

jr_06f_57bb:
    rlca
    rlca
    ld b, d
    ld h, c
    ld h, b
    add c
    ld h, a
    ld a, c
    ld d, a
    ld c, $41
    sub b
    ld h, b
    call Call_000_3ac1
    ld b, l
    jp $80e1


    cp a
    ldh [$c5], a
    ld b, d
    add d
    add sp, $3a
    ld bc, $a532

jr_06f_57d9:
    inc l
    dec c
    adc $60
    jp nc, Jump_06f_4217

    dec [hl]
    adc $4d
    and b
    dec [hl]
    call z, $bfa0
    db $e3
    add l
    jr nz, @-$37

    sub a
    sub a
    sub [hl]
    ld c, h
    ld [hl], c
    add b
    cpl
    adc $60
    sbc [hl]
    ld b, h
    push bc
    inc a
    adc $a0
    dec [hl]
    add b
    db $e4
    add a
    and b
    add [hl]
    ld b, b
    sub [hl]
    sub [hl]
    ld l, h
    sub $0e
    cp c
    ld d, e

jr_06f_5809:
    and $e7
    ld c, a
    nop
    ld a, [hl-]
    dec [hl]
    rst $38
    pop hl
    dec bc
    xor h
    add hl, sp
    pop bc
    pop hl
    ld b, [hl]
    ld b, c
    ldh [$c1], a
    pop hl
    ld b, d
    jr nc, @-$3e

    ld [hl], e
    jr jr_06f_5822

    ret nz

jr_06f_5822:
    ld c, a
    ld b, c
    dec bc
    and b
    ld a, [hl-]
    ld b, l
    pop bc
    pop hl
    ld b, c
    ldh [$59], a
    rrca
    ldh [rLY], a
    dec b
    nop
    ld [hl], b
    adc a
    ld b, b
    ld c, a
    ld b, b
    nop
    ldh [$cf], a
    rst $08
    add hl, sp
    ret nz

    add b
    jp nz, Jump_06f_4187

Jump_06f_5841:
    ld b, d
    rst $28
    ret nz

    ld [hl], l
    adc a
    ld b, c
    ld c, l
    ld h, c
    dec [hl]
    dec [hl]
    add a
    adc $ce
    ld a, $78
    and b
    pop bc
    ret nz

    add $0e
    db $fc
    inc h
    sbc b
    ld [hl], b
    ld l, [hl]
    or b
    ld c, a
    ld [hl+], a
    adc $20
    cp $c0
    rst $08
    rst $08
    ld a, $41
    pop hl
    or b
    rst $00
    ld h, d
    call nz, $42cf
    ld [hl], d
    nop
    ld b, b
    call nc, $ced4
    jr nz, jr_06f_58ba

    inc b
    adc l
    nop
    cp h
    ret nz

    ld a, $41
    db $e4
    ld d, e
    rrca
    ld [hl], l
    ld c, h
    add b
    adc e
    ccf
    pop hl
    ret nz

    ld a, [hl]
    jp nz, $c0bf

    ld [bc], a
    ret nz

    rst $00
    sub b
    ld [hl], l
    ld l, c
    add b
    xor l
    and b
    and b
    rra
    db $d3
    pop de
    ret nc

    ld b, l
    scf
    res 0, b
    adc d
    nop
    ld a, [hl]
    ret nz

    add b
    add b
    pop hl
    ld b, l
    ld l, h
    jp nz, $aae9

    xor h
    ld c, d
    ld b, e
    cp [hl]
    pop hl
    ei
    and d
    ld [hl], $c7
    ld b, l
    inc c
    rrca
    ret nc

    add hl, de
    nop
    ld l, a
    ld [$d344], sp

jr_06f_58ba:
    ret nc

    ld b, $3d
    db $e3
    ld b, b
    inc c
    rst $10
    ld hl, $b243
    dec a
    ld [hl], d
    ld b, d
    inc h
    ld a, d
    ret nz

    pop bc
    ld b, b
    add b
    db $e3
    ret


    ld b, b
    pop bc
    or $40
    dec d
    pop bc
    ld hl, $429e
    ret nz

    cp a
    jp nz, Jump_06f_40c9

    jp $be83


    rst $38
    add b
    daa
    adc c
    nop
    sbc a
    sbc h
    dec sp
    ld b, h
    inc a
    ret nz

    ret nz

    xor [hl]
    dec b
    ld c, $17
    and d
    pop bc
    add c
    ld e, b
    cp l
    rst $38
    add b
    dec h
    adc c
    nop

jr_06f_58fa:
    sbc [hl]
    ld b, [hl]
    adc c
    nop
    ld [hl], $ff
    add b
    rra
    ld [bc], a
    dec c
    sbc c
    sbc c
    sbc d
    inc de
    inc [hl]
    ld b, b
    ld d, c
    ld c, b
    ld [bc], a
    db $76
    ld a, [hl-]
    ld h, e
    ccf
    ld b, l
    add d
    add b
    ld b, [hl]
    dec bc
    dec bc
    db $fd
    jp $fc10


    rst $18
    add b
    add hl, hl
    ld a, e
    and c
    rst $38
    pop hl
    xor a
    inc [hl]
    ld b, b
    ld a, l
    jp nz, $ffc1

    nop
    nop
    and l
    ld b, a
    ld [bc], a
    cp d
    add c
    cp $e3
    db $fd
    ld h, b
    jp $fd40


    or h
    ld b, b
    sub b
    jr jr_06f_58fa

    db $e4
    ld a, e
    and b
    cp [hl]
    push hl
    xor [hl]
    ld b, [hl]
    inc b
    cpl
    ld a, b
    ld d, l
    pop bc
    ld [c], a
    ld h, $fd
    and e
    db $d3
    ret nc

    ld a, b
    jr nz, jr_06f_598d

    db $e3
    inc c
    ld de, $6f31
    jp nc, $04bc

    jp nz, Jump_000_047f

    jp nc, $af46

    ld b, e
    rst $38
    ld [c], a
    ld b, l
    pop hl
    dec b
    add e
    cpl
    ret nz

    ld [hl], l
    cp a
    ld b, b
    ld b, b
    dec b
    sbc [hl]
    ld b, [hl]
    ld b, h
    dec de
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    ld b, h
    ld a, [$c1a0]
    ldh a, [$80]
    ld [de], a
    ldh a, [rDIV]
    ret nz

    cp a
    ldh [$ba], a
    and c
    ret nz

    pop hl
    ld l, c
    and e
    dec [hl]
    dec [hl]
    rlca
    and e
    ld l, d

jr_06f_598d:
    ld b, h
    ld a, [$40a1]
    dec hl
    ldh a, [$b5]
    add e
    db $e4
    cp d
    and c
    ld h, [hl]
    ld a, h
    ret nz

    ld b, h
    ld l, c
    db $76
    ld b, c
    ret nz

    ldh [rDMA], a
    dec bc
    ld a, h
    pop bc
    ld a, b
    add $da
    ret nz

    ld [$a3ba], a
    jp nc, Jump_06f_6b44

    ld [hl], c
    rst $38
    ldh [$3f], a
    ld l, l
    ld b, h
    ret nc

    pop de
    pop de
    ret nc

    jr c, @+$63

    cp [hl]
    inc hl
    ld e, b
    ld [hl], a
    add hl, de
    ld b, b
    add h
    cp d
    and e
    sbc [hl]
    ld b, l
    ret nz

    call nz, $2fd2
    add c
    pop bc
    ld [bc], a
    jp nz, Jump_06f_40bf

    call nz, $a1bf
    ld a, h
    add c
    cp e
    and l
    ret nc

    sbc a
    ld h, b
    add hl, hl
    ld hl, $60f6
    ret nz

    rst $38
    ld bc, $78c6
    jp nz, $d1d3

    rst $38
    ld [c], a
    sbc e
    db $d3
    sbc a
    add hl, hl
    ld hl, $0e0c
    ld b, a
    ld sp, hl
    ret nz

    res 4, b
    inc b
    ld a, b
    call nz, $e8f2
    sbc a
    ccf
    ldh [$7b], a
    sbc a
    set 5, c
    db $f4
    db $ec
    ccf
    ldh [rP1], a
    cp a
    rst $38
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
    ld [bc], a
    nop
    dec d
    inc c
    ld [bc], a
    ld bc, $0f13
    ld [bc], a
    ld [bc], a
    inc d
    db $10
    ld [bc], a
    inc bc
    ld d, $11
    ld [bc], a
    inc b
    jr jr_06f_5a50

    ld [bc], a
    dec b
    ld [de], a
    jr jr_06f_5a40

    ld b, $16

jr_06f_5a40:
    jr jr_06f_5a44

    rlca
    add hl, de

jr_06f_5a44:
    jr @+$04

    ld [$1911], sp
    ld [bc], a
    add hl, bc
    ld c, $1a
    ld [bc], a
    ld a, [bc]
    rrca

jr_06f_5a50:
    ld a, [de]
    ld [bc], a
    dec bc
    db $10
    ld a, [de]
    ld [bc], a
    inc c
    ld a, [bc]
    dec de
    ld [bc], a
    dec c
    ld b, $1c
    ld [bc], a
    ld c, $08
    inc e
    ld [bc], a
    rrca
    add hl, bc
    inc e
    ld [bc], a
    db $10
    dec b
    dec e
    ld [bc], a
    ld de, $1f04
    ld [bc], a
    ld [de], a
    ld de, $021f
    inc de
    inc de
    rra
    ld [bc], a
    inc d
    ld c, $20
    ld [bc], a
    dec d
    db $10
    jr nz, jr_06f_5a80

    ld d, $12

jr_06f_5a80:
    jr nz, jr_06f_5a84

    rla
    dec c

jr_06f_5a84:
    ld hl, $1802
    rrca
    ld hl, $1902
    ld de, $0221
    ld a, [de]
    inc de
    ld hl, $1b02
    ld c, $22
    ld [bc], a
    inc e
    db $10
    ld [hl+], a
    ld [bc], a
    dec e
    ld [de], a
    ld [hl+], a
    ld [bc], a
    ld e, $0d
    inc hl
    ld [bc], a
    rra
    rrca
    inc hl
    ld [bc], a
    jr nz, jr_06f_5ab3

    inc h
    ld [bc], a
    ld hl, $240e
    ld [bc], a
    ld [hl+], a
    ld [de], a
    inc h
    ld [bc], a
    inc hl

jr_06f_5ab3:
    inc b
    dec h
    ld [bc], a
    inc h
    ld de, $0225
    dec h
    ld c, $26
    ld [bc], a
    ld h, $10
    ld h, $02
    daa
    ld [de], a
    ld h, $02
    jr z, @+$13

    daa
    ld [bc], a
    add hl, hl
    dec b
    jr z, jr_06f_5ad0

    ld a, [hl+]
    db $10

jr_06f_5ad0:
    jr z, jr_06f_5ad4

    dec hl
    rrca

jr_06f_5ad4:
    add hl, hl
    ld [bc], a
    inc l
    ld de, $0229
    dec l
    db $10
    ld a, [hl+]
    ld [bc], a
    ld l, $0f
    jr nc, jr_06f_5ae4

    cpl
    ld a, [bc]

jr_06f_5ae4:
    ld [hl-], a
    ld [bc], a
    jr nc, jr_06f_5af8

    ld [hl-], a
    ld [bc], a
    ld sp, $3312
    ld [bc], a
    ld [hl-], a
    inc d
    dec [hl]
    ld [bc], a
    inc sp
    ld c, $36
    rst $38
    rst $38
    rst $38

jr_06f_5af8:
    nop
    ld e, e
    add a
    ld e, [hl]
    db $10
    ld h, l
    dec hl
    ld h, l
    pop bc
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e4
    db $e3
    ld l, h
    ld l, h
    di
    ld l, h
    ld c, h
    jp c, $c2ff

    ld hl, sp+$0a
    ld a, [bc]
    ld c, h
    ld c, h
    inc [hl]
    cp [hl]
    rst $38
    add e
    push af
    ld a, [bc]
    rst $38
    ldh [$2a], a
    ld a, [hl+]
    cp a
    rst $38
    db $f4
    di
    add hl, de
    ld c, h
    pop bc
    pop hl
    cp a
    ldh [rWY], a
    ld l, h
    call nc, Call_000_04ff
    pop af
    ret nz

    pop hl
    push hl
    ld a, [hl+]
    ld a, l
    ldh [rWY], a
    db $fc
    rst $18
    add c
    push af
    ld a, [hl+]
    dec hl
    dec hl
    rrca
    ld c, e
    ld c, d
    ld a, [hl+]
    ld a, [bc]
    db $d3
    rst $38
    add h
    pop de
    ld [bc], a
    ldh [$c1], a
    ldh [$9e], a
    cp $c0
    inc l
    inc c
    inc l
    inc l
    ret nc

    rst $38
    ret nz

    pop af
    ld c, d
    sbc a
    dec bc
    dec bc
    ld c, d
    ld a, [hl+]
    dec bc
    nop
    rst $38
    di
    ld a, [c]
    ld c, d
    rst $38
    ld a, [bc]
    ld a, [bc]
    ld c, e
    ld c, e
    dec bc
    dec hl
    ld c, e
    dec bc
    ld sp, hl
    inc l
    ld a, [hl]
    rst $18
    pop af
    ldh a, [$2c]
    inc l
    ld a, [bc]
    ld a, [bc]
    ld l, d
    ld a, a
    ld c, e
    dec hl

jr_06f_5b7c:
    ld c, e
    inc c
    dec bc
    inc l
    ld l, h
    ld b, c
    rst $38
    call nz, $f0c1
    cp a
    db $e3
    ld c, e

jr_06f_5b89:
    jp $c0e1


    rst $38
    ld a, [hl]
    ld a, [c]
    inc c
    ld c, d
    rst $08
    ld a, [hl+]
    ld l, e
    ld c, e
    ld l, h
    ld bc, $f7ff
    or $6b
    inc c
    rlca
    inc l
    dec bc
    dec bc
    reti


Jump_06f_5ba1:
    rst $38
    db $fd
    rst $10
    add hl, sp
    pop hl
    xor [hl]
    adc h
    rst $28
    sbc a
    adc $6f
    sbc d
    dec bc
    dec bc
    dec hl
    cp a
    rst $38
    add hl, sp
    sub [hl]
    ld c, h
    dec hl
    add a
    dec bc
    dec bc
    ld l, e
    rst $28
    cp a
    add hl, sp
    jp z, $8439

    ld a, [$6c81]
    rst $38
    ld c, h
    dec hl
    dec c
    ld a, [bc]
    ld c, e
    dec bc
    ld l, h
    ld c, h
    db $f4
    ld l, a
    cp a
    add hl, sp
    adc l
    ld a, [bc]
    cp b
    pop bc
    inc l
    dec hl
    dec hl
    dec c
    rlca
    dec c
    dec hl
    dec hl
    and h
    add b
    ret z

    rst $38
    ld a, [$7a68]
    add c
    or [hl]
    ld h, c
    cp a
    inc c
    inc l
    ld l, e
    dec bc
    ld a, [bc]
    dec c
    dec a
    ldh [$0b], a
    cp b
    cp e
    ret nz

    cp l
    rst $38
    ld a, [$2a65]
    dec bc
    dec hl
    jr c, jr_06f_5b7c

    ld l, d
    ld l, [hl]
    add hl, bc

jr_06f_5bff:
    ldh [$2c], a
    inc c
    ld l, e
    ret nz

    ret nz

    dec bc
    dec bc
    jr z, jr_06f_5b89

    ld a, b
    xor c
    ld h, b
    cp [hl]
    rst $38
    ld a, c
    add d
    ld a, [hl+]
    dec hl
    dec bc
    ld l, e
    db $76
    ld h, c
    sub c
    ld c, d
    ret nc

    pop hl
    ret nz

    ld [c], a
    or c
    pop hl
    ld a, [hl+]
    ld h, a
    ld a, a
    cp l
    ld b, e
    ld l, e
    ld b, e
    ld c, e
    dec hl
    pop bc
    pop hl
    or [hl]
    ld h, b
    pop de
    ldh [rIE], a
    ret nz

    ld a, [bc]
    cp $e0
    ldh [$7f], a
    pop hl
    ld h, $7f
    ld a, l
    ld b, e
    ld c, a
    pop bc
    ld a, b
    ld h, b
    inc l
    inc l
    ld c, e
    sbc $f7

jr_06f_5c42:
    add c
    inc l
    dec bc
    dec c
    dec bc
    ld [$0b62], a
    dec hl
    di
    ld c, d
    ld c, d
    ld h, $7f
    pop hl
    ldh [rWX], a
    ld c, e
    ld l, e
    ld c, e
    ld e, e
    ld c, e
    inc c
    ld a, h
    add [hl]
    ld l, e
    dec c
    cp a
    ldh [$0b], a
    ld a, [c]
    ret nz

    adc b
    daa
    ld h, b
    ld h, $7f
    ld a, b
    add d
    ld c, e
    ret nz

    ldh [$7d], a
    add c
    dec bc
    pop bc
    ld l, h
    ld bc, $3f0b
    pop bc
    jp $e6e0


    ld b, d
    ld a, a
    rst $38
    jr c, jr_06f_5bff

    or [hl]
    inc hl
    ld sp, $27e4
    dec c
    dec hl
    ld a, [bc]
    ld a, a
    ret nz

    ld bc, $4be0
    inc h
    ld h, b
    ld b, c
    rst $38
    jr jr_06f_5c42

    ld h, l
    ld a, l
    ldh [$f1], a

jr_06f_5c94:
    call nz, Call_000_0b2b
    db $eb
    ld b, b
    rst $38
    ret nz

    or $80
    ldh a, [$3f]
    rst $38
    ld [hl], l
    adc b
    dec hl
    ld b, e
    ld b, d
    ret nz

    dec bc
    dec hl
    ld a, [bc]
    ld l, d
    ld c, b
    ret nz

Jump_06f_5cac:
    db $e4
    ld a, a
    rst $38
    dec hl
    ld l, h
    ld l, e
    ld b, b
    ldh [$c0], a
    db $e3
    ld l, d
    ld a, [hl-]
    ld [c], a
    inc c
    call $b0ff
    dec bc
    dec hl
    ld c, e
    ld b, b
    and b
    ld b, b
    ld [c], a
    nop
    ret nz

    ret nz

    rst $38
    ret nz

    or e
    ld l, e
    pop bc
    ldh [$83], a
    and b
    nop
    pop hl
    ld l, b
    jr nz, jr_06f_5d35

    ld b, b
    ld a, [bc]
    ld a, [bc]
    ld a, b
    ld a, c
    sbc a
    dec [hl]
    add hl, bc
    jp Jump_06f_4b60


    ld c, e
    dec hl
    ld a, [bc]
    pop bc
    pop bc
    ret nz

    rst $20
    jr nz, jr_06f_5c94

    add d
    scf
    sbc a
    dec [hl]
    dec b
    adc d
    add b
    jp nz, Jump_06f_4be0

    dec hl
    nop
    ld l, h
    ld [hl+], a
    pop bc
    and c
    db $e4
    ld bc, $ffc2
    adc b
    ld h, a
    cp $e2
    ld [bc], a
    add b
    or e
    add d
    nop
    ld l, a
    add c
    pop bc
    rst $38
    inc [hl]
    rlca
    add $e0
    ret nz

    db $e4
    ld [hl], h
    add b
    ldh a, [$63]
    add c
    rst $38
    inc e
    ld a, [$c089]
    ld [c], a
    ld a, [bc]
    dec bc
    ld l, e
    dec [hl]
    add c
    ld [bc], a
    ret nz

    ld a, a
    jp nz, $c910

    rst $38

jr_06f_5d26:
    jr c, jr_06f_5d6e

    cp h
    add b
    add $40
    ld c, e
    rst $30
    ld h, d
    jp nz, $c1e4

    rst $38
    inc c
    cp d

jr_06f_5d35:
    adc e
    add e
    ret nz

    inc c
    inc l
    ld c, d
    jp nz, Jump_06f_62c2

    set 7, a
    ldh a, [$0e]
    nop
    or c
    ld hl, $80f6
    jp $f2a0


    add h
    rst $38
    rst $38
    ld [$2c11], a
    ld [hl+], a
    rlca
    rst $18
    nop
    or $31
    bit 0, c
    cp h
    jr nz, jr_06f_5dd0

    ld h, b
    jr c, jr_06f_5d7f

    add e
    sbc a
    reti


    pop hl
    ld b, e
    ld a, [hl+]
    db $10
    ld b, d
    ld hl, $e1c0
    push af
    db $e4
    adc b
    cp a
    dec c

jr_06f_5d6e:
    sbc b
    rst $20
    ld b, e
    jr nz, jr_06f_5d26

    ld b, b
    add a
    dec hl
    ld l, e
    dec bc
    cp a
    jr nz, jr_06f_5df0

    and c
    ld [hl], a
    jr nz, @+$4b

jr_06f_5d7f:
    cp [hl]
    ld c, e
    sbc a
    dec c
    dec c
    ld c, e
    ld c, e
    ld l, h
    inc de
    db $e4
    add $e0
    dec hl
    ld c, $f1
    ld b, b
    ld l, e
    dec hl
    ld c, e
    ld hl, sp-$60
    inc sp
    and c
    db $fc
    db $dd
    sub h
    ret nz

    add c
    dec bc
    ret nz

    pop hl
    rla
    db $e3
    inc a
    jp nz, $4002

    add [hl]
    pop hl
    or [hl]
    add c
    ld l, e
    ld [$dfd0], sp
    sub c
    nop
    ld d, c
    ld h, b
    ld c, e
    rla
    db $e4
    or l
    ld b, d
    ld a, l
    pop hl
    db $ec
    pop hl
    ld bc, $c16b
    db $fc
    pop de
    ld [bc], a
    adc e
    add c
    cp a
    pop hl
    ld [hl], e
    ld c, d
    ld a, [hl-]
    add b
    jp Jump_000_18ff


    ld d, d
    ld h, d
    adc a
    add c
    sbc b
    ret nz

jr_06f_5dd0:
    ld a, [bc]
    dec c
    cp e
    xor c
    ld a, $e1
    call nz, Call_000_04ff
    adc d
    add h
    ld c, c
    add d
    dec hl
    ret nz

    db $e3
    ld bc, $11df
    ld l, l
    ret c

    pop bc
    ld a, [hl]
    ld [c], a
    ld c, b
    ret c

    ld hl, $df01
    ld l, [hl]
    xor $6b

jr_06f_5df0:
    sub a
    pop bc
    adc [hl]
    ld h, b
    ld l, e
    sbc b
    ld hl, $0102
    add $0b
    ld bc, $cddf
    ld b, l
    cp a
    pop hl
    adc [hl]
    ld h, b
    jp $0123


    jp Jump_000_3f00


    pop bc
    ld bc, $bfdf
    add sp, -$3f
    db $e3
    jr c, jr_06f_5e33

    ld bc, $36c3
    ld h, e
    ld bc, $00de
    inc b
    daa
    cp l
    ld b, [hl]
    or [hl]
    nop
    ld b, c
    ld b, c
    cp l
    ld [c], a
    ld a, $c0
    db $ec
    dec b
    rst $38
    rst $38
    jr nz, @+$46

    ld b, c
    ret z

    and l
    ld a, b
    ld b, c
    ld b, c
    ldh [$7a], a

jr_06f_5e33:
    and e
    ld c, h
    and b
    adc c
    adc c
    add hl, sp
    db $10
    scf
    call nz, $a342
    cp l
    ret nz

    pop af
    and $0b
    cp a
    rst $38
    add e
    nop
    ld bc, $0060
    inc [hl]
    jp nz, $c189

    cp h
    add c
    cp $e6
    db $ed
    ld b, b
    add b
    rst $38
    inc bc
    ld h, b
    sub b
    jp nz, $c900

    jp hl


    xor l
    ld [c], a
    ld a, d
    ret nz

    pop bc
    rst $38
    inc b
    inc hl
    rlca
    and c
    sub d
    pop hl
    ld b, h
    db $e3
    inc b
    dec sp
    add b
    jr c, @-$1d

    ld l, e
    ld [hl-], a
    ld h, b
    rst $38
    rst $38
    add hl, bc
    ld h, h
    xor c
    di
    add $ff
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    db $e3
    nop
    nop
    nop
    rst $38
    sub a
    sub a
    sub a
    sub [hl]
    sub [hl]
    sub l
    sub l
    sub [hl]
    rrca
    sub [hl]
    sub a
    sub a
    sbc b
    rst $38
    ldh [$f1], a
    ldh [$fd], a
    db $e4
    ld [$31e8], a
    sbc c
    rst $38
    ld hl, sp-$40
    push hl
    pop bc
    pop hl
    sbc c
    sbc c
    cp l
    pop hl
    db $fc
    db $e3
    sub b
    xor c
    ldh [$aa], a
    db $e3
    xor c
    ld [c], a
    ret nz

    ld sp, hl
    sub [hl]
    ret nz

    db $e3
    sbc c
    ldh [rP1], a
    ccf
    ld bc, $0d99
    rlca
    rlca
    dec c
    or a
    db $e3
    ret nz

    db $e3
    ldh a, [$bf]
    push hl
    ld a, e
    or $41
    db $e3
    add b
    db $e4
    rrca
    inc b
    inc bc
    ld d, b
    rrca
    ld d, b
    inc bc
    inc b
    rrca
    or a
    ldh [$c0], a
    ld [c], a
    cp a
    db $e4
    cp [hl]
    ld sp, hl
    db $fc
    ld bc, $00e5
    pop hl
    rrca
    ld [bc], a
    ld c, b
    ld c, c
    ld e, l
    ld e, l
    rrca
    ld c, c
    ld c, b
    ld [bc], a
    rrca
    add b
    ld [c], a
    cp a
    db $e3
    xor $c4
    ld a, h
    push af
    cp h
    add b
    push hl
    ccf
    pop hl
    ld b, $4a
    ld h, b
    ld h, c
    rst $38
    ldh [$60], a
    inc bc
    ld d, l
    ld b, $b7
    jp nz, $e4a7

    cp l
    push hl
    ld hl, sp-$2d
    ld bc, $c0e1
    call nz, Call_000_0eff
    dec b
    ld c, e
    ld h, c
    ld h, c
    ld d, h
    ld e, c
    ld d, h
    rrca
    ld h, c
    ld d, [hl]
    dec b
    ld c, $be
    rst $00
    cp $e3
    ld a, h
    or $c0
    and $fe
    add c
    db $e3
    ld d, d
    dec l
    jr nc, jr_06f_5f73

    ld c, l
    ld h, c
    ld e, h
    pop bc
    ld [$c5be], sp
    cp $e1
    cp [hl]
    rst $20
    or [hl]
    ret nc

    ret nz

    add $98
    sbc c
    rst $38
    ld a, [bc]
    ld c, a
    ld h, c
    ld e, b
    ld b, l
    ld l, $2e
    ld c, b
    ccf
    ld h, b
    ld d, d
    dec b
    ld c, $01
    nop
    cp [hl]
    call nz, $e8bd
    ld hl, sp-$08
    push bc
    ret nz

    jp nc, $e3c0

    ld h, c
    ld d, l
    jr nc, jr_06f_5f8d

    ld b, a
    rlca
    ld d, h
    ld b, h
    dec b
    adc $a0
    add b
    db $e4
    ld h, d
    jp nz, $e47b

    cp a
    pop af
    cp $c1
    xor b
    ld b, $4a

jr_06f_5f73:
    ld h, c

jr_06f_5f74:
    ld e, b
    ld b, h
    ld hl, $3fbf
    ld [hl], $44
    ld b, [hl]
    dec b
    ld b, $02
    ccf
    ret nz

    push hl
    jp nz, $bff0

    jp nz, $ea7c

    pop af
    xor e
    pop bc
    xor b
    rrca

jr_06f_5f8d:
    ld [bc], a
    ld d, d
    ld h, c
    rst $38
    ld d, d
    ld [hl], $35
    ld a, [hl-]
    dec bc
    ld b, [hl]
    ld b, $0a
    pop bc
    dec b
    rst $38
    and c
    ld b, e
    push bc
    cp [hl]
    db $e4
    cp a
    ld a, [c]
    ld bc, $01e7
    nop
    ld a, $bf
    db $e3
    add hl, sp
    ld b, $07
    rrca
    ld b, $3e
    pop bc
    db $ec
    adc b
    ldh a, [$7c]
    add sp, $33
    call z, $aa41
    ld a, $c0
    ld d, d
    ld b, e
    ld b, l
    dec b
    ld bc, $0107
    pop hl
    xor b
    add c
    db $ec
    add l
    sbc e
    add h
    cp a
    jp hl


    pop de
    add d
    nop
    db $eb
    ld a, [hl]
    pop bc
    add b
    ld b, $45
    inc bc
    inc bc
    ld b, [hl]
    ld b, [hl]
    inc bc
    ldh [$80], a
    db $76
    add h
    db $ec
    add d
    cp [hl]
    db $e3
    ld hl, sp-$3c
    pop af
    and [hl]
    ld l, b
    add h
    ld b, c
    adc e
    rrca
    adc e
    rlca
    dec c
    cp [hl]
    add b
    rrca
    jr c, jr_06f_5f74

    ld [hl-], a
    add d
    db $ec
    add d
    add hl, bc
    ld bc, $ef04
    ld [c], a
    ld l, a
    xor b
    cp a
    add sp, $40
    and a
    sub [hl]
    add [hl]
    dec sp
    add h
    ld [hl-], a
    add e
    ccf
    rrca
    ld [bc], a
    scf
    dec a
    scf

jr_06f_600e:
    ld [bc], a
    xor [hl]
    ldh [$2d], a
    add h
    jr nc, jr_06f_600e

    ret z

    ret nz

    and $68
    push hl
    add hl, hl
    push hl

jr_06f_601c:
    sbc b
    sbc b
    add hl, sp
    add c
    ld a, e
    add c
    rst $38
    sbc b
    sbc c
    ld b, $39
    dec [hl]
    dec [hl]
    dec [hl]
    add hl, sp
    ld bc, $2d06
    add h
    cp a
    ld [$e480], a
    and e
    ret


    ld a, b
    call nz, $8339
    jr c, jr_06f_601c

    rst $38
    ld c, $05
    ld a, [hl-]
    xor h
    jp Jump_000_3a35


    dec b
    add b
    ld h, d
    ret nz

    xor $a7
    ld l, b
    add h
    rst $38
    push bc
    ld h, d
    add $f8
    and [hl]
    add hl, sp
    add c
    ld b, a
    rst $38
    ld d, b
    ld b, l
    ld [$9898], sp
    ld [$3540], sp
    ld a, a
    xor l
    xor h
    dec [hl]
    inc a
    inc c
    rlca
    dec c
    xor h
    add $f0
    ld h, $6b
    ld hl, $ddc5
    and h
    ld a, [$4762]
    ld h, b
    ld d, h
    ld d, h
    rst $28
    ld h, c
    ld h, c
    ld e, l
    ld e, h
    add hl, bc
    ldh [$08], a
    ld b, h
    inc a
    ld a, e
    jp Jump_000_3fad


    ldh [rSCX], a
    inc bc
    add hl, bc

Jump_06f_6086:
    inc b
    ld h, a
    ld h, b
    ldh a, [rNR52]
    ld l, l
    ld [hl+], a
    rst $00
    ld h, d
    call nz, Call_06f_63fa
    ld d, e
    scf
    scf
    ld d, [hl]
    ccf
    ld h, c
    ld h, c
    ld d, d
    ld b, l
    ld b, $99
    ld b, b
    ldh [rP1], a
    ldh [$3f], a
    dec [hl]
    ld a, [hl-]
    ld c, a
    ld c, c
    ld c, [hl]
    ld c, b
    ld h, a
    ld h, b
    ld h, $6b
    ld a, b
    and [hl]
    ld b, d
    adc e
    ld b, l
    cp c
    adc b
    ld d, d
    ld b, b
    dec [hl]
    ld [hl], $f5
    ld h, b
    rst $18
    ld h, c
    ld d, l
    ld a, [bc]
    nop
    ld bc, $c2c0

Jump_06f_60c1:
    dec [hl]
    inc a
    add c
    ld d, l
    xor c
    ld h, b
    ld h, a
    ld h, c
    ld h, $68
    ld h, l
    ld b, l
    ld c, d
    ld b, h
    ld a, d
    ld b, l
    sbc c
    rst $38
    ld a, [bc]
    ld b, l
    ld b, l
    add hl, sp
    ld [hl], $47
    ld h, b
    ld h, c
    cp a
    ld d, h
    ld d, h
    ld e, d
    ld a, [bc]
    sbc c
    sbc c
    rst $38
    ret nz

    jp $fefe


    ldh [rLY], a
    ld c, l

jr_06f_60ea:
    ld d, d
    ld e, e
    ld d, d
    ld h, b
    ld b, a
    ldh a, [rNR52]
    ld h, a
    ld a, $c7
    ld d, c
    ld b, l
    ret nz

    and $46
    ld b, [hl]
    add hl, sp
    ld b, b
    cp a
    ld d, e
    ld d, e
    ld d, e
    dec b
    ld [bc], a
    ld b, l
    jr c, jr_06f_6165

    ld c, $f7
    inc c
    inc a
    xor h
    ld a, $c0
    ld b, b
    ld c, l
    ld e, h
    ld b, [hl]
    ldh [$a7], a
    ld h, b
    ld h, $65
    ld a, $c9
    ld h, b
    and [hl]
    ld a, [$4645]
    ld b, [hl]
    ld b, l
    cp a
    ld b, l
    ld b, [hl]
    ld [bc], a
    ld [bc], a
    dec b
    ld [$41b8], sp
    sbc c
    inc sp
    dec b
    ld a, [hl-]
    ld a, a
    ret nz

    ret nz

    ldh [rHDMA2], a
    ld b, e
    ld l, h
    ldh [rNR52], a
    ld h, c
    ldh a, [$c0]
    db $e3
    and h
    ld a, [hl+]
    add b
    push hl
    ld sp, hl
    ld [hl+], a
    rrca
    rlca
    ld [bc], a
    ld b, [hl]
    ld l, a
    ld b, [hl]
    ld b, [hl]
    ld [$ba99], sp
    add b
    ld bc, $6a00
    ld h, b
    ei
    ld a, $ac
    ld a, a
    ret nz

    ld b, b

Call_06f_6153:
    ld c, l
    ld h, c
    ld c, h
    ld h, b
    inc bc
    ld d, a
    ld d, a
    ld a, a
    db $e3
    ld c, [hl]
    ld b, a
    ld h, l
    inc h
    ldh [$84], a
    jr c, jr_06f_60ea

jr_06f_6164:
    dec c

jr_06f_6165:
    and c
    sub h
    db $f4
    jr nz, jr_06f_6164

    ld b, b
    sbc c
    ret nz

    ldh [$ad], a
    nop
    ld [c], a
    ld [hl], b
    ret nz

    ld b, e
    inc bc
    ld b, e
    ld d, d
    db $ed
    ret nz

Jump_06f_6179:
    ret nz

    rst $00
    ret nz

    ld [$2439], a
    ld a, [hl-]
    inc hl
    ld [hl], l
    jr nz, @+$7d

    ld [$0a46], sp
    and c
    nop
    ld bc, $3e0a
    ld b, b
    pop bc
    ld a, $26
    ld b, b
    ld e, b
    ld b, h
    ld b, [hl]
    ld b, [hl]
    ld b, h
    ccf
    ld [c], a
    and [hl]
    ld h, $a8
    add b
    rst $20
    cp a
    ret z

    ld d, d

Call_06f_61a0:
    inc h
    rrca
    ld a, c
    add c
    sbc b
    rst $38
    and h
    ld a, $1c
    push hl
    ld b, b
    ret nz

    ld [c], a
    ld c, l
    ld e, h
    ld [$28a6], sp
    and h
    ld b, $bf
    ret z

    ret nz

    sub d
    daa
    or b
    ld [bc], a
    ld a, a
    and b
    add b
    ret nz

    ret nz

jr_06f_61c0:
    pop hl
    ld b, b
    pop hl
    ld b, a
    ld h, b
    ldh [$c0], a
    pop hl
    ccf
    call z, $cabf
    inc d
    ld c, b
    or b
    ld bc, $020f
    add hl, sp
    ld a, c
    dec [hl]
    ld b, b
    and c
    or c
    and c
    ld h, c
    ld c, h
    ld c, h
    ld h, b
    push hl
    jr nz, jr_06f_61c0

    and [hl]
    daa
    ccf
    call $8721
    add l
    ld h, d
    db $fc
    jr nz, jr_06f_61f8

    ld [bc], a
    ld b, l
    inc c
    ld b, b
    and d
    ld b, c
    ret nz

    ld e, e
    ld d, d
    inc h
    ld hl, $2065

jr_06f_61f8:
    ld h, $47
    cp a
    adc $fc
    adc a
    ld h, $c8
    ld b, c
    dec c
    rlca
    inc b
    add hl, bc
    inc bc
    scf
    ld [hl], l
    jr c, jr_06f_620b

    add b

jr_06f_620b:
    jp $c0c1


    ld e, h
    ld b, [hl]
    ld b, [hl]
    ld a, l
    ret nz

    rlca
    ld h, c
    ld e, d
    ld a, [bc]
    and [hl]
    inc hl
    ld c, h
    ld h, [hl]
    cp a
    ret z

    dec e
    ld h, a
    ld [hl], h
    ld bc, $049f
    inc bc
    ld b, e
    scf
    dec a
    jp nz, $c0e1

    ld h, c
    ld c, e
    ld e, $43
    ret nz

    ld b, a
    ld h, b
    ld d, d
    ld d, d
    ld a, a
    and b
    and [hl]
    jr z, jr_06f_62b7

    xor c
    inc a
    ld e, c
    ld b, a
    ld c, c
    ld b, e
    ld b, $45
    jr c, jr_06f_627d

    jp Jump_06f_42e2


    and b
    inc e
    ld a, [c]
    add c
    pop bc
    and b
    ld h, c
    ld d, d
    ld b, a
    and [hl]
    dec bc
    ld a, e
    ld b, l
    ld a, l
    add a
    ld c, h
    push af
    inc bc
    daa
    add c
    dec b
    ld [hl], $c6
    pop hl
    ld b, h

jr_06f_625e:
    ld h, b
    xor l
    pop bc
    pop hl
    ld b, b
    add [hl]
    ldh [rIE], a
    ld [c], a
    ld h, $0a
    cp $67
    pop bc
    and $fc
    add l
    sbc c
    ret nz

    pop hl
    ld l, h
    ret z

    ld h, b
    add h
    add b
    jr c, @+$39

    ld [hl], h
    add b
    ld d, d
    ld b, a

jr_06f_627d:
    ret nz

    ld [c], a
    add c
    ld d, d
    or a
    ld b, b
    rst $08
    ld b, a
    ld a, [hl]
    ld h, [hl]
    ld a, l

Call_06f_6288:
    ld l, [hl]
    ld [hl], h
    jr nz, jr_06f_62cc

    db $e3
    jr c, jr_06f_625e

    dec a
    scf
    ld c, b
    ld c, c
    ld b, e
    ldh [$82], a
    ld [c], a
    ld d, h
    ld d, e
    ret nz

    ld a, b
    ld b, c
    or [hl]
    inc h
    cp [hl]
    ld b, [hl]
    pop bc
    db $ec
    add b
    push hl
    ret nz

    pop bc
    ccf
    ccf
    sbc $b1
    jr nz, jr_06f_62f4

    ld e, c
    ld d, h
    ld d, a
    jp $59e1


    ld d, e
    ld h, b
    add b
    ld h, c
    dec sp

jr_06f_62b7:
    ld b, l
    ld a, $46
    jr nz, jr_06f_62ea

    ld h, [hl]
    ld b, h
    nop
    ld bc, $403c

Jump_06f_62c2:
    ld a, [$403a]
    dec c
    dec sp
    ret nz

    ld b, e
    ld e, e
    ld e, e
    ld e, e

jr_06f_62cc:
    ld b, l
    add c
    inc bc
    nop
    ld h, d
    cp e
    daa
    dec [hl]
    inc b
    pop hl

jr_06f_62d6:
    inc c
    inc hl
    jr z, jr_06f_62d6

    push hl
    sbc c
    ld a, a
    dec c
    rlca
    inc c
    inc a
    dec sp
    inc c
    dec c
    ld a, $41
    ret nz

    add h
    xor c
    add b

jr_06f_62ea:
    ld b, a
    cp [hl]
    add hl, hl
    sbc l
    ld b, h
    ld e, [hl]
    ld [bc], a
    ld [hl], $82

jr_06f_62f3:
    add hl, bc

jr_06f_62f4:
    inc b
    nop
    cp h
    ld hl, $20fe
    push af
    pop hl
    nop
    ld [c], a
    ld b, d
    add a
    ret nz

    and $3e
    jr z, @-$01

    nop
    jr nc, jr_06f_6346

    ld h, $43
    ld hl, $2042
    ld a, h
    ld b, b
    add hl, sp
    ld b, $f5
    db $e3
    add b
    ret nz

jr_06f_6315:
    adc b
    jp nz, Jump_000_316b

    ret


    db $10
    inc hl
    xor [hl]
    add [hl]
    ld hl, $43e9
    ld b, e
    jr nz, jr_06f_635c

    rst $38
    jr c, jr_06f_635c

    ld [hl], $44
    inc a
    inc a
    inc c
    ld [bc], a
    add l
    ld [hl], $77
    and d
    ld b, $fa
    inc b
    ret nz

    jp hl


    add [hl]
    ld h, h
    adc c
    jp Jump_000_3f02


    ld b, [hl]
    xor a
    xor [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, $51
    ld [hl+], a
    ret nz

    ld [c], a

jr_06f_6346:
    rst $38
    scf
    scf
    jr c, jr_06f_638b

    dec [hl]
    inc a
    ld b, h
    ld [hl], $03
    jr c, @+$39

    cp [hl]
    ldh [$c0], a
    pop hl
    ld b, d
    ld l, b
    sbc h
    ld bc, $6806

jr_06f_635c:
    adc d
    ld h, d
    rra
    jp $af41


    ld b, [hl]
    ld b, [hl]
    sbc d
    add e
    ld [hl], l
    jr nz, jr_06f_62f3

    ldh [$5b], a
    ld [hl], $45
    cp l
    nop
    ld b, b
    ccf
    or [hl]
    add c
    ld [hl], $40
    ld [c], a
    ld hl, sp-$7e
    ld h, a
    ret nz

    rst $20
    add $05
    ld [bc], a
    ld b, l
    ld [hl], $a6
    ld [hl], $53
    ld b, l
    ld b, [hl]
    ld b, h
    ld h, c
    di
    jp nz, Jump_06f_7f02

jr_06f_638b:
    add b
    ld [hl], $7d
    jr nz, jr_06f_6315

    ld [hl], $41
    ldh [$38], a
    jr c, @+$04

    jp nc, Jump_06f_40c8

    jp nz, $e980

    sbc c
    ccf
    ld [$3645], sp
    ld h, d
    and a
    ld h, [hl]
    cp a
    pop hl
    sbc c
    ld h, c
    ld a, [c]
    ld [hl], e
    ld b, c
    inc b
    dec a
    add b
    or a
    add b
    dec sp
    jr c, jr_06f_63ea

    dec bc
    ldh a, [$c0]
    and d
    cp $a7
    ld e, c
    ld h, h
    nop
    jp hl


    sbc b
    ld [$6236], sp
    ld a, a
    ld h, a
    and e
    ld l, b
    ld h, [hl]
    ld [hl], $c3
    xor [hl]
    add h
    nop
    ld c, $3d
    jp Jump_000_040d


    inc bc
    nop
    pop hl
    pop bc
    and b
    xor $a4
    ld bc, $fc45
    db $fd
    and h
    ld l, a
    add hl, bc
    sbc c
    ld b, $a8
    xor c
    ld l, h
    dec [hl]
    dec b
    dec [hl]
    cp a
    ldh [$af], a
    ld b, h

jr_06f_63ea:
    ld b, b
    add d
    pop hl
    ld bc, $f6c6
    and d
    ld bc, $f022
    add d
    ld h, e
    cp l
    add $00
    ret z

Call_06f_63fa:
    call nz, Call_000_3600
    ld l, [hl]
    ld l, a
    ld l, h
    ccf
    dec [hl]
    and e
    xor d
    xor e
    ld [hl], $06
    inc bc
    ld h, d
    ld bc, $e8ce
    sub b
    xor d
    ccf
    ld [$0344], a
    ld b, l
    cp a
    pop hl
    ld l, h
    ld l, a
    ld l, [hl]
    inc de
    ld [hl], $05

jr_06f_641b:
    rst $20
    nop
    ld bc, $35c6
    ld bc, $53c7
    ld a, [bc]
    rst $38
    call nz, $bf6c
    and a
    add b
    pop bc
    ld l, [hl]
    ld l, a
    pop bc
    ldh [rLYC], a
    ld [bc], a
    ld h, a
    ld h, b
    add b
    ld bc, $92d2

Jump_06f_6437:
    inc b
    inc a
    and a
    push bc
    add hl, hl
    ret nz

    and b
    ld a, [hl]
    ldh [$c1], a
    pop hl
    rrca
    add b
    ld [hl-], a
    jp nz, $cf01

    call z, Call_000_3c84
    and [hl]
    push bc
    add hl, hl
    adc $85
    rst $10
    add d
    sbc c
    ld d, l
    sbc c
    ld b, c
    add b
    dec d
    ld bc, $15ca
    cpl
    add b
    sbc c
    ld [$b021], a
    ccf
    ld c, b
    add h
    dec bc
    ld c, [hl]
    add h
    add [hl]
    jp nz, $4503

    cp a
    ld h, b
    ld b, e
    cp c
    ld b, l
    ld a, $42
    ld a, [hl-]
    ld h, b
    ccf
    ld b, l
    ccf
    pop af
    pop hl
    inc bc
    add b
    ld a, e
    add h
    ccf
    add sp, -$02
    xor d
    ld b, [hl]
    inc hl
    ld a, b
    and b
    ld b, e
    ld b, b
    ret z

    and d
    dec a
    ld bc, $7c37
    add c
    ld a, [c]
    db $e3
    pop af
    ld [c], a
    inc h
    ldh [$7e], a
    jr z, jr_06f_641b

    ld [$65c3], sp
    ld c, [hl]
    ld a, b
    add b
    ld [$4546], sp
    dec b
    ld b, h
    ld bc, $3b41
    ld [hl], $43
    ld b, $f4
    inc hl
    jr c, jr_06f_64f1

    ld h, h
    and b
    ld a, [hl]
    daa
    add h
    rlca
    inc b
    inc h
    or a
    add d
    add [hl]
    ld a, c
    add b
    ld b, l
    ccf
    inc b
    add b
    ld a, h
    ldh [$c3], a
    db $e4
    ld hl, sp-$20
    jr c, jr_06f_64c5

jr_06f_64c5:
    ldh a, [$e0]
    add hl, sp
    ldh [$e4], a
    add e
    add b
    and $ee
    xor b
    ei
    ld h, b
    ld sp, hl
    and d
    inc bc
    ld h, b
    ld a, [hl-]
    nop
    pop hl
    ld b, [hl]
    rst $38
    ldh [rLYC], a
    ld b, e
    ld b, e
    cp c
    ld b, b
    ld b, $e1
    dec de
    ld b, e
    ld b, e
    xor c
    add b
    ld b, [hl]
    ld b, [hl]
    nop
    db $ed
    inc b
    dec l
    cp c
    rst $00
    nop
    ret nz

jr_06f_64f1:
    ld b, d
    db $fc
    xor $fa
    add c
    cp h
    ld l, c
    inc b
    inc l
    cp c
    set 6, a
    di
    ld c, [hl]
    ld h, [hl]
    ld h, b
    ret nz

    db $e3
    cp a
    add hl, hl
    cp c
    jp z, $f6f8

    ld a, a
    daa
    sub a
    sbc b
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
    ld [bc], a
    nop
    ld [hl+], a
    inc de
    ld [bc], a
    ld bc, $1423
    ld [bc], a
    ld [bc], a
    inc hl
    add hl, de
    ld [bc], a
    inc bc
    inc h
    ld a, [de]
    ld [bc], a
    inc b
    inc hl
    dec de
    ld [bc], a
    dec b
    inc hl
    rra
    ld [bc], a
    ld b, $21
    inc h
    ld [bc], a
    rlca
    dec de
    dec h
    ld [bc], a
    ld [$2d12], sp
    ld [bc], a
    add hl, bc
    inc de
    ld l, $02
    ld a, [bc]
    rla
    ld [hl-], a
    rst $38
    rst $38
    rst $38
    ld h, d
    ld h, l
    or h
    ld l, c
    ld a, [hl-]
    ld [hl], c
    ld d, l
    ld [hl], c
    ld bc, $ff0c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld hl, sp+$2c
    inc l
    call c, $f6ff
    push af
    sbc a
    ld l, h
    ld l, h
    ld c, h
    ld c, h
    ld c, h
    reti


    rst $38
    pop bc
    rst $30
    ld a, [bc]
    or e
    ld a, [bc]
    ld a, [hl+]
    cp a
    rst $38
    ld b, a
    or $4c
    ld a, [bc]
    rst $38
    ldh [rWY], a
    ld bc, $d56c
    rst $38
    ld b, d
    db $f4
    ret nz

    db $e4
    ld a, a
    rst $38
    inc b
    di
    ld b, d
    ldh [$7f], a
    pop hl
    ld bc, $d40b
    rst $38
    inc b
    db $f4
    cp $e4
    ccf
    rst $38
    pop af
    ldh a, [rDIV]
    ld [c], a
    add c
    ld [c], a
    add hl, hl
    dec hl
    ld b, b
    rst $38
    inc b
    di
    ld c, d
    pop bc
    pop bc
    dec hl
    ret nz

    rst $38
    jp z, $c2b2

    ld b, d
    push hl
    ld l, e
    ret nz

    rst $38
    adc e
    call z, $c00f
    call nz, $4ac2
    ld c, d
    adc $7f
    pop hl
    ld a, [hl+]
    ld c, e
    ld l, e
    ld a, a
    cp a
    adc e
    ret


    dec bc
    ld l, e
    db $f4
    call nz, $c1c3
    ldh [$2a], a
    ret nz

    pop hl
    ld a, [hl+]
    ld a, [bc]
    ld c, h
    ld l, h
    ld a, c
    ld c, h
    dec sp
    cp a
    ld c, l
    call nz, Call_000_0b2b
    dec bc
    inc l
    call nz, $fbc1
    ld a, [hl+]
    ld a, [hl+]
    ret nz

    db $e4
    ld a, [bc]
    ld a, [bc]
    ld c, e
    ld a, [bc]
    ld a, [bc]
    ld [hl], h
    ld a, [hl-]
    cp l
    and c
    db $e4
    inc l
    jp nz, Jump_06f_4be0

    ld c, e
    inc l
    ret z

    and b
    inc l
    ld b, h
    ldh [$82], a
    db $e4
    ld l, d
    dec bc
    dec sp
    pop hl
    ld l, d
    ld a, [hl-]
    cp e
    reti


    add h
    ccf
    inc l
    dec hl
    ld a, [bc]
    ld c, e
    dec c
    dec bc
    ld sp, hl
    pop hl
    ret nz

    pop hl
    db $f4
    db $fc
    push hl
    db $fd
    ret nz

    ld a, [hl+]
    ld a, [hl-]
    cp e
    ld l, h
    ld l, h
    dec c
    ld l, e
    ld b, [hl]
    ret nz

    ld [c], a
    ld l, e
    ld c, e
    ret nz

    pop hl
    ld b, l
    pop bc
    cp a
    rst $20
    ld a, [hl+]
    cp $a0
    cp h
    ret nz

    pop hl
    ld a, d
    ret c

    ld l, h
    dec c
    dec c
    ld l, e
    dec d
    add e
    inc l
    rra
    ld l, e
    dec bc
    ld c, e
    inc c
    inc c
    ret nz

    ld [$c17c], a
    cp c
    sbc h
    inc bc
    inc l
    dec c
    push de
    ld h, l
    sbc b
    jp nz, $ec40

    ccf
    ldh [$78], a
    add c
    ld a, [$0cb8]
    ld h, e
    ret nz

    ld e, a
    ret


    inc l
    inc c
    add c
    ld [$e282], a
    ld a, c
    sbc b
    sbc e
    ld h, c
    sub b
    ld d, c
    add e
    sub d
    ld h, c
    pop de
    ld h, d
    pop bc
    jp z, Jump_000_382b

    and b
    ret nz

    ldh [$0a], a
    or $1f
    db $76
    dec hl
    dec hl
    add $a4
    dec bc
    ld l, e
    dec hl
    ld a, [bc]
    rlca
    dec bc
    ld c, h
    ld c, h
    cp h
    and b
    cp [hl]
    ret z

    ld a, c
    add h
    ret nz

    or $83
    ret nz

    db $ec
    ret nz

jr_06f_66a2:
    ldh [rHDMA5], a
    ld h, d
    ld a, [hl+]
    dec hl
    ei
    ld [c], a
    dec bc
    dec bc
    dec hl
    inc sp
    dec hl
    dec bc
    ret nz

    and c
    ld a, $a0
    ld l, d
    ld a, [hl+]
    pop bc
    and b
    dec [hl]
    and d
    or b
    ld a, [hl]
    or h
    ld b, h
    ret nz

    jp nz, $55c1

    ld h, b
    ld l, d
    ld l, d
    ret nc

    ld h, e
    dec hl
    ld e, a
    dec c
    ld c, e
    ld a, [bc]
    ld c, e
    dec bc
    db $fd
    and h
    ld a, [hl+]
    ld [hl], a
    and b
    inc l
    add c
    db $e3

jr_06f_66d5:
    ld a, $b4
    inc l
    dec hl
    add c
    ld [c], a
    ld c, h
    pop bc
    ldh [$bf], a
    db $e4
    jr nz, jr_06f_66a2

    ldh [rIE], a
    ldh [$bd], a
    xor b
    ld sp, hl
    add d
    rst $38
    sub l
    inc l
    ld bc, $81e2
    ld [c], a
    rst $30
    ld l, d
    ld a, [hl+]
    ld l, e
    rrca
    add d
    ld a, [bc]
    ld c, e
    ld l, e
    ld l, e
    sbc b
    ret nz

    pop hl
    jp nz, $0042

    db $e3
    ld a, [hl+]
    ld c, e
    cp a
    sub [hl]
    and l
    add d
    ld l, h
    ld d, d
    pop bc
    ld [c], a
    ld c, e
    sub d
    add c
    add c
    pop hl
    dec bc
    dec c
    jp $b90b


    ldh [$0d], a
    ld a, [bc]
    ld [hl], l
    ldh [$2a], a
    ld a, [hl+]
    ld e, d
    ld e, d
    db $10
    add b
    ld b, c
    pop hl
    sub a
    add c
    ld a, b
    db $fc
    ret nz

    ld b, c
    pop hl
    ld c, c
    add c
    ld a, [hl+]
    dec bc
    dec hl
    ld c, d
    db $f4
    add b
    add b
    ld l, h
    and b
    ld l, [hl]
    and b
    ld a, d
    jr c, jr_06f_66d5

    ld hl, $80c7
    jp nz, $c1c2

    pop hl
    dec hl
    inc bc
    ld c, e
    ld c, e
    dec a
    ldh [$85], a
    pop bc
    add l

jr_06f_6749:
    ld b, c
    rlca
    add b
    inc b
    sbc e
    dec c
    add b
    sub c
    dec hl
    rst $00
    add b
    sub a
    ld h, c
    ld e, c
    add b
    ld l, d
    ld d, b
    ld h, b
    jp nz, Jump_06f_4ac0

    ld h, b
    scf
    ret nz

    add b
    ld h, b
    ld c, c
    and $38
    jr nz, jr_06f_6749

    ld d, $6b
    ld l, e
    ret nz

    ldh [$32], a
    rlca
    pop bc
    dec hl
    ret nz

    ld [c], a
    add c
    ldh [$0a], a
    ld l, e
    ld c, h
    add b
    add hl, bc
    add c
    inc l
    ld b, a
    pop hl
    rst $30
    ld [hl+], a
    ld l, h
    dec hl
    inc a
    ld d, [hl]
    inc l
    ld d, c
    ldh [$0e], a
    and c
    jr jr_06f_67df

    ld h, d
    ld b, c
    ld [c], a
    ld bc, $0ac0
    ld c, d
    jp z, Jump_06f_4660

    ld h, c
    push bc
    ld b, b
    and $5f
    pop hl
    dec c
    dec hl
    add c
    rst $10
    ld d, e
    ret nz

    ld l, h
    inc c
    ld l, h
    ret nz

    ret nz

    and $fe
    ld h, b
    ld a, c
    ret nz

    ld c, l
    add b
    ld [bc], a
    ld h, c
    inc b
    ld hl, $2b4c
    daa
    dec c
    dec c
    dec c
    ld bc, $6273
    ld bc, $d36c
    and b
    sbc a
    jr nz, jr_06f_67fa

    ld l, e
    ld b, a
    ret nz

    ccf
    and c
    dec hl
    dec bc
    dec c
    add h
    and [hl]
    ld c, e
    and e
    ld [hl], c
    ld l, h
    ret nz

    ldh [$81], a
    ld a, [c]
    rra
    jr nz, jr_06f_6821

    ld c, e
    ld l, e
    cp $e0
    ld c, $e4
    and b
    ld c, h
    dec bc

jr_06f_67df:
    ld a, [hl+]
    jp $05a0


    and c
    ret nz

    ldh [rLCDC], a
    pop hl
    nop
    inc bc
    and e
    adc h

jr_06f_67ec:
    add c
    pop hl
    add d
    ld c, b
    jp nc, $a059

    ld c, a
    ld h, b
    ld d, e
    and b
    adc $40
    rst $18

jr_06f_67fa:
    dec hl
    dec bc
    ld c, e
    dec hl
    ld c, e
    jp nz, $0d41

    dec bc
    ld [$a2ba], sp
    cp a
    ld b, e

jr_06f_6808:
    ld b, h
    ld bc, $436c
    di
    rla
    ld b, b
    sub d
    pop hl
    add b
    ld [c], a
    jr c, jr_06f_6890

    pop bc
    jp Jump_000_01e2


    ld h, b
    dec c
    ld l, e
    ld c, e
    jp z, $be81

    ld b, e

jr_06f_6821:
    ldh [$8b], a
    add d
    ld b, e
    db $f4
    pop bc
    pop hl
    ld [de], a
    ld b, b
    ld a, [hl]
    pop hl
    ld l, h
    inc l
    inc c
    ld [hl+], a
    ld [hl], a
    pop hl
    dec c
    cp $e1
    ld b, $a0
    add d
    pop hl
    ld l, d
    ret nz

    ld [hl+], a
    inc h
    ld c, b
    ld b, b
    and c
    dec c
    add d
    ld [c], a
    cp a
    db $e4
    and e
    jr nz, jr_06f_6808

    db $e4
    rst $00
    add c
    ld a, [bc]
    add [hl]
    and c
    ld b, b
    or l
    add c
    ld a, [bc]
    and b
    adc b
    dec [hl]
    rrca
    pop hl
    push de
    ret nz

    ld a, [hl]
    pop hl
    ld l, e
    ld hl, $12a3
    or $c2
    ld l, e
    add c
    jr nz, jr_06f_67ec

    and d
    dec bc
    db $eb
    ld b, d
    ld sp, hl
    nop
    call nz, Call_000_0914
    inc l
    sub $e1
    cp $e2
    dec hl
    ld d, b
    jr nz, jr_06f_687d

    ld h, b
    ld b, e
    ld h, b
    push bc
    pop hl
    ld b, e

jr_06f_687d:
    ld a, [bc]
    ld a, [hl+]
    inc b
    pop hl
    ld c, a
    ld b, b
    ld h, $c1
    cpl
    ld h, b
    dec hl
    ld b, [hl]
    inc [hl]
    nop
    rst $08
    jp $e37e


    db $10

jr_06f_6890:
    ld h, b
    adc $80
    ld b, [hl]
    jr nz, @+$58

    ld hl, $02cf
    ld a, d
    ld h, d
    sbc b
    xor $e1
    rst $30
    ld h, c
    add a
    ld [hl-], a
    inc l
    inc c
    inc h
    add b
    nop
    pop hl
    dec hl
    ld b, e
    dec hl
    ld l, e
    add d
    add b
    ld b, h
    ret nz

    adc h
    ld h, b
    ret nz

    db $e3
    ld c, e
    ld b, d
    ld hl, $2a9b
    dec bc
    add sp, -$5f
    ld l, e
    ld l, e
    ldh a, [rP1]
    add $14
    ld l, e
    inc d
    cp a
    ld [c], a
    pop bc
    ldh [rWX], a
    ld a, [hl]
    ld h, b
    ld c, e
    ld b, h
    jp nz, $a20c

    ld a, d
    ld hl, $3c02
    ld h, b
    ld l, e
    ld a, l
    ld h, b
    inc l
    ret nz

    ld [hl], $60
    add [hl]
    inc de
    ld c, [hl]
    ret nz

    ld a, [hl]
    pop hl
    inc l
    pop bc
    ldh [rSC], a
    ret nz

    inc c
    ld c, e
    add hl, sp
    jp nz, $894b

    ld b, b
    or c
    inc hl
    nop
    ld l, d
    ldh [$c1], a
    push hl
    ld b, a
    db $76
    adc $a0
    sbc l
    db $e3
    db $dd
    and c
    add c
    and b
    add b

jr_06f_6900:
    jp nz, $b540

    and b
    dec c
    and d
    add c
    pop hl
    ld l, e
    ld [c], a
    add sp, $02
    ret z

    ld d, e
    inc l
    add d
    and c
    ld [bc], a
    ld c, l
    and b
    ld l, h
    cp [hl]
    jr nz, @-$7e

    db $e3
    add a
    ld h, b
    sub l
    ld h, h
    jr z, jr_06f_6900

    pop bc
    ld a, [$d41c]
    ld [bc], a
    inc e
    ld [c], a
    ld c, e
    ld l, h
    ld c, h
    inc sp
    db $e3
    cp l
    jp nz, Jump_000_039a

    nop
    pop af
    and c
    xor l
    pop bc
    ld l, d
    nop
    ld b, d
    ld a, b
    res 4, c
    cp a
    add c
    or d
    call nz, $c2fe
    nop
    sbc d
    inc b
    ret nz

    db $e3
    add d
    rst $30
    ld d, b
    ld b, $18
    pop hl
    ld [hl], e
    pop hl
    add d
    add b
    ld [hl], h
    add d
    nop
    ld [hl], h
    ldh [$ea], a
    inc h
    pop bc
    rst $38
    ld a, [hl-]
    db $e3
    dec de
    ld h, d
    cp a
    ld [c], a
    ld a, [c]
    ld h, c
    add hl, sp
    dec b
    jr nz, jr_06f_69ae

    ld b, b
    pop bc
    rst $38
    scf
    jp Jump_06f_6179


    ld a, [hl]
    ld [c], a
    dec bc
    ld b, d
    pop bc
    inc sp
    inc b
    nop
    ldh [$c1], a
    jp Jump_06f_7fff


    dec b
    cp a
    ld [c], a
    jp hl


    ld h, l
    ld l, c
    jr z, @+$01

    rst $38
    cp [hl]
    ld bc, $7810
    add b
    di
    add sp, -$31
    rst $38
    cp [hl]
    ld c, $0b
    ld a, a
    pop hl
    or e
    ld b, c
    ld c, d
    add d
    nop
    rst $38
    rst $38
    ld a, l
    ld c, $7f
    pop hl
    ld d, d
    add b
    sbc e
    ld [hl], $3a
    db $dd
    or a

Jump_06f_69a1:
    inc h
    call nc, Call_000_00ff
    ld [hl], a
    db $db
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_06f_69ae:
    rst $38
    rst $38
    ld a, [$0000]
    nop
    cp l
    sbc c
    rst $38
    ld sp, hl
    sbc b
    sbc b
    sbc b
    sub a
    rst $38
    ldh [$96], a
    ld h, d
    rst $38
    db $e3
    sub l
    rst $38
    add sp, -$13
    ldh [$e6], a
    ldh [$98], a
    sbc b
    pop bc
    rst $38
    nop
    jp nz, $cae4

    push hl
    or [hl]
    push hl
    cp a
    ld [c], a
    ret nz

    ld sp, hl
    add h
    ldh [$c1], a
    and $8b
    and $00
    ld [hl], d
    pop hl
    ld [hl], b
    pop hl
    di
    db $e4
    ld h, b
    ldh [$c3], a
    ld hl, sp-$7e
    push hl
    ld c, [hl]
    and $ce
    db $e3
    nop
    dec l
    ldh [$34], a
    pop hl
    ccf
    ld sp, hl
    add h
    push hl
    pop bc
    and $c3
    db $e3
    rrca
    db $e3
    cp a
    ld [c], a
    ld h, b
    ccf
    or $86
    rst $20
    ld d, l
    jp hl


    jp $d0e4


Jump_06f_6a0a:
    ret nz

jr_06f_6a0b:
    ld bc, $bf00
    pop hl
    ldh [$3f], a
    rst $20
    ld c, c
    pop af
    add h
    rst $20
    adc d
    jp nz, $c495

    sbc b
    sbc b
    rrca
    ld a, a
    inc b
    add hl, bc
    inc b
    rrca
    nop
    ld bc, $c099
    ldh [$c0], a
    ccf
    db $e4
    ld a, a
    res 0, [hl]
    jp hl


    sub l
    push bc
    ld d, $e1
    rst $10
    call nz, Call_000_020f
    rra
    ld c, b
    ld c, [hl]
    ld c, b
    ld [bc], a
    rrca
    add b
    push af
    ld c, c
    jp hl


    dec c
    jp Jump_000_18f8


    pop bc
    inc d
    pop bc
    jr jr_06f_6a0b

    ld bc, $0600
    ld c, d
    ld h, b
    cpl
    ld h, c
    ld h, c
    ld d, l
    ld b, $00
    jp hl


    sub a
    ret nz

    db $eb
    add [hl]
    jp hl


    ld hl, sp-$2c
    xor b
    jp c, Jump_06f_4ae0

    ldh [rNR10], a
    dec b
    ld c, e
    ld h, c
    ld h, c
    rrca
    ld h, c
    ld d, [hl]
    dec b
    ld c, $41
    push hl
    cp l
    and d
    db $d3
    or d
    ret nc

    and [hl]
    ld a, h
    sub [hl]
    and h
    sbc b
    and b
    rrca
    inc b
    inc bc
    ld d, c
    ld e, [hl]
    ret nz

    ldh [rTAC], a
    ld e, b
    ld b, h
    ld [$c3c1], sp
    ld a, h
    and h
    sub h
    or b
    ld e, l
    and a
    ld b, a
    and d
    sbc $48
    jp nz, Jump_000_020f

    ld b, a
    ld e, d
    ld b, c
    pop hl
    ld h, c
    ld d, a
    inc bc
    ld e, h
    ld b, $c1
    pop bc
    ld a, [hl+]
    push bc
    ret nz

    add sp, -$2d
    xor c
    sub e
    xor b
    call z, $f6a3
    inc b
    ldh [rHDMA5], a
    ld c, a
    ld b, c
    ldh [rHDMA5], a
    dec hl
    cp l
    ld a, [bc]
    ld b, b
    xor c
    and a
    ret nz

    db $ec
    add hl, de
    and a
    jp z, $93c2

    and h
    db $db
    add c
    ld c, $04
    ldh [$3e], a
    ret nz

    pop hl
    ld e, b
    dec l
    jr nz, jr_06f_6afb

    ld a, [bc]
    jp hl


    add l
    ret nz

    jp hl


    ld [hl], b
    ld l, c
    and [hl]
    call c, $8a86
    jp $a2cc


    nop
    ld bc, $0408
    ldh [rSB], a
    ld e, d
    ret nz

    push hl
    jp nc, Jump_06f_7ae5

    add d
    ld b, l
    ret


    add hl, hl
    and [hl]
    ld c, h
    add c
    ld h, h
    pop bc
    cp a
    nop
    ld bc, $070d
    rlca
    rrca
    ret z

    and b
    inc bc
    rst $18
    ld c, b
    ld h, b
    ld h, c
    ld d, [hl]

jr_06f_6afb:
    ld c, d
    add c
    ret nz

    ld b, a
    dec hl
    inc bc
    cp l
    ld b, $be
    and b
    ld a, h
    and h
    ret nz

    add sp, -$2b
    add l
    call c, $a386
    add c
    cp a
    dec c
    inc b
    inc bc
    ld b, l
    ld b, [hl]
    ld [$a0c8], sp
    ld c, c
    cp $c5
    pop bc
    ld b, a
    ld d, d
    ld h, c
    ld h, c
    ld h, b
    ld c, h
    ld e, h
    rlca
    ld [bc], a
    rlca
    dec c
    dec sp
    and c
    ld a, e
    jp $e280


    sub [hl]
    adc c
    ld c, c
    push hl
    cp h
    adc h
    pop bc
    jp nz, Jump_000_36e0

    add hl, sp
    dec b
    ld c, $c8
    and d
    ld h, c
    rst $38
    ld h, c
    ld e, l
    ld d, e
    ld d, b
    ld e, e
    ld d, e

Jump_06f_6b44:
    ld d, h

jr_06f_6b45:
    ld d, [hl]
    ccf
    ld b, l
    ld d, b
    ld d, b
    inc bc

Jump_06f_6b4b:
    inc b
    rrca
    db $fc
    add c
    xor a
    ld h, d
    ld hl, sp-$27
    ld l, d
    dec e
    add d
    call c, $9885
    ld [$3745], sp
    jr c, jr_06f_6b45

    dec [hl]
    add hl, sp
    ld b, $c4
    pop bc
    rst $00
    and b
    ld h, b
    ld e, l
    ld e, l
    rst $38
    ld e, l
    ld c, h
    ld c, c
    ld d, e
    ld b, l
    ld b, a
    ld e, l
    ld e, l
    adc a
    ld c, c
    ld d, e
    ld [bc], a
    rrca
    sub c
    push bc
    ld b, l
    call z, $62ab
    rrca
    cp $0b
    pop hl
    sbc b
    sbc b
    ld [$c340], sp
    dec [hl]
    xor h
    sbc a
    ld b, b
    ld [$4408], sp
    ld c, l
    add c
    pop hl
    db $fc
    db $e4
    ld d, l
    rrca
    ld e, [hl]
    ld d, d
    ld b, e
    ld d, [hl]
    ld a, [hl-]
    and h
    or a
    ld h, c
    ld b, l
    call $e1c1
    rst $08
    ld [bc], a
    xor [hl]
    ld b, [hl]
    ld [bc], a
    inc b
    ld h, b
    add b
    pop hl
    xor l
    ld b, d
    di
    ld [$8806], sp
    and d
    cp l
    push hl
    ld h, b
    ld e, b
    ld b, h
    ld b, [hl]
    pop hl
    ld d, l
    ld a, [hl-]
    and d
    ld hl, sp+$63
    dec b
    add $9d
    ld h, l
    sbc b
    sbc c
    ld [bc], a
    inc sp
    xor [hl]
    xor a
    ret nz

    ld [c], a
    nop
    pop hl
    ccf
    ld b, l
    ret nz

    db $ec
    ld hl, sp-$40
    adc l
    ld b, a
    ld [hl], a
    ret nz

    ld d, l
    ld b, $7c
    call nz, $c805
    sbc l
    ld h, h
    sbc c
    daa
    ld [bc], a
    xor a
    ld [bc], a

Jump_06f_6be0:
    ld b, b
    pop hl
    push de
    ld h, b

Jump_06f_6be4:
    dec c
    rrca
    add c
    ld b, b
    db $eb
    ld l, a
    ld h, c
    ld h, b
    ld h, c
    ld h, b
    ld a, c
    add b
    ld e, d
    ld a, [bc]
    ld hl, sp+$64
    inc a
    ld b, [hl]
    and [hl]
    adc [hl]
    and [hl]
    sbc c
    rrca
    rlca
    rrca
    sbc d
    ld h, d
    ld b, b
    ld b, c
    inc sp
    sbc c
    sbc b
    add h
    and d
    rst $38
    rst $00
    ld e, b
    ld d, l
    di
    jp nz, $8079

    ldh [$80], a
    rst $20
    dec b
    add $da

jr_06f_6c14:
    ld h, e
    and e
    ret nz

    dec b
    ld b, b
    dec c
    rlca
    inc b
    rst $38
    add hl, bc
    add hl, bc
    inc b
    rlca
    dec c
    nop
    ld bc, $3406
    rst $00
    and c
    cp l
    push bc
    ld d, [hl]
    or d
    call nz, Call_000_085c
    nop
    push hl
    ld b, [hl]
    and a
    adc $18
    add d
    ld [$4646], sp
    push hl
    ldh [rHDMA1], a
    add b
    ld b, e
    ld b, l
    cp a
    ld b, [hl]
    ld b, l
    ld d, b
    ld b, e
    inc bc
    inc b
    cp h
    and b
    ld d, e
    ld bc, $8054
    rst $00
    di
    and e
    ret nz

    pop hl
    add b
    call nz, $486f
    jr @-$7d

    add e
    ret nz

    cp l
    ld [$8051], sp
    ld c, b
    ld c, c
    ld c, h
    ld b, a
    inc d
    ret nz

    ld c, h
    cp l
    ld c, d
    ei
    and b
    jr c, @+$39

    ld b, l
    ld d, [hl]

Call_06f_6c6c:
    add d
    call nz, Call_06f_6153
    ld b, l
    ld a, d
    add c
    cp c
    ld l, b
    ret nz

    ld [$8118], a
    xor [hl]
    xor a
    db $e3
    and b
    ld a, [$6255]
    ld e, b
    rst $08
    ld h, c
    ld d, l
    add hl, sp
    xor h
    dec [hl]
    jp Jump_000_3503


    add hl, sp
    jp z, Jump_06f_41e3

    and b
    add e
    pop bc
    jr c, jr_06f_6c14

    add hl, sp
    ld h, c
    ld l, $21
    sbc h
    rst $28
    daa
    add h
    and d
    ld [$af46], sp
    ld b, c
    ldh [$8d], a
    and h
    ld e, h
    ld a, $c7
    and b
    ld e, h
    ld a, [hl-]
    xor l
    dec [hl]
    dec [hl]
    ret nz

    and $fe
    ld h, c
    ld h, d
    ld [hl], l
    pop hl
    ld d, d
    ld a, [hl-]
    ld h, c
    ld a, [$c522]
    adc h
    rrca
    ld [bc], a
    ld bc, $fae1
    ld c, $a3
    ld d, d
    ld [$58e0], sp
    ld b, h
    inc a
    jp Jump_000_3c35


    ld b, b
    ldh [rTIMA], a
    ld h, b
    ld d, [hl]
    ld d, e
    ld d, h
    ld d, a
    add b
    ld h, b
    cp c
    ld h, c
    add e
    ld d, d
    ld b, l
    add c
    ld [c], a
    ld h, h
    ld b, e
    sbc c
    ld h, $00
    db $e4
    ld e, [hl]
    ld b, b
    ld a, [bc]
    cp $95
    ld h, c
    ld d, d
    ld b, l
    ld b, a
    ld c, c
    ld c, b
    ld e, e
    ld b, b
    cp a
    xor h
    dec [hl]
    dec [hl]
    ld b, b
    ld c, b
    ld c, b
    call nz, Call_06f_55e0
    rst $38
    ld b, e
    ld b, l
    ld b, e
    ld e, e
    ld e, e
    ld b, e
    ld b, l
    ld c, a
    ld b, e
    ld d, h
    ld d, e
    cp a
    add h
    sbc d
    ld h, e
    db $dd
    ld b, $c5
    add h
    sbc c
    ld b, c
    db $e3
    rst $30
    ld d, [hl]
    ld b, l
    ld b, a
    ld d, c
    ld b, b
    ld e, h
    add hl, sp
    xor l
    dec [hl]
    rst $38
    ld a, [hl-]
    ld d, c
    ld e, [hl]
    ld h, b
    ld c, c
    ld c, b
    ld b, l
    ld b, h
    ld a, a
    ld d, [hl]
    ld b, l
    ld [bc], a
    rlca
    rlca
    rlca
    ld [bc], a
    ld l, l
    ret nz

    ret z

    ccf
    add [hl]
    sub c
    ld c, c
    add b
    push bc
    ld [bc], a
    adc [hl]
    and e
    ld d, a
    jp nz, Jump_06f_4556

    rst $18
    ld a, [hl-]
    dec [hl]
    dec [hl]
    ld a, $43
    rlca
    add b
    ld h, c
    ld d, h
    rst $28
    ld c, c
    ld h, b
    ld b, h
    ld [$2042], sp
    rrca
    rlca
    dec c
    ldh a, [$fa]
    inc b
    ret nz

    rst $20
    ld h, e
    ld b, $00
    db $e3
    ld [$5345], sp
    ld e, c
    cp l
    ld d, e
    dec c
    pop hl
    ld h, c
    ld e, d
    ld b, h
    inc a
    jp $e8c0


    inc h
    ldh a, [$e0]
    cp $a0
    ld d, d
    add h
    jr nz, jr_06f_6d98

    ld [bc], a
    dec c
    ld h, c
    add c
    cp e
    dec b
    call nz, $0824
    ld c, h
    add c
    ld b, [hl]
    ret nz

    ld [c], a
    ld d, a
    jr nz, jr_06f_6dca

    add d
    ld d, l
    add hl, sp
    rst $38
    dec [hl]
    dec [hl]
    jp Jump_06f_4d44


    ld c, a
    ld c, c
    ld b, l
    rst $18
    ld d, b
    ld e, e
    ld e, e
    ld b, l
    ld [$2104], sp
    rrca
    rlca
    rlca
    inc b

jr_06f_6d98:
    inc bc
    ld b, [hl]
    inc a
    ld b, b
    dec sp
    inc b
    inc hl
    ld b, $33
    inc bc
    ret nz

    ld [c], a
    ld e, b
    sub d
    ld b, c
    inc bc
    jp nz, $e141

    xor h
    ld a, [hl-]
    ld b, l
    ld b, b
    ld b, e
    or [hl]
    and b
    inc de
    ld b, a
    ld d, b
    inc b
    ld hl, $c15f
    xor [hl]
    ret nz

    pop hl
    ld h, [hl]
    inc b
    inc a
    db $e4
    cp h
    inc h
    inc bc
    ld b, d
    and d
    ld b, [hl]
    ld b, $99
    ld a, [bc]
    push de

jr_06f_6dca:
    ld b, b
    ld e, h
    cp $c3
    and d
    dec [hl]
    dec [hl]
    xor l
    add hl, sp
    ld c, a
    ld h, b
    ld e, l
    db $ed
    ld c, h
    adc d
    add b
    ld e, l
    ld e, l
    inc b
    ld hl, $4606
    xor [hl]
    inc bc
    xor [hl]
    xor a
    inc a
    ld [hl+], a
    daa
    inc bc
    ret c

    dec h
    add hl, hl
    ld [c], a
    and d
    ret nz

    ld b, b
    ldh [$bf], a
    dec b
    sbc c
    ld b, $45
    ld d, [hl]
    ld e, b
    adc d
    ld h, b
    ld d, d
    or $81
    pop hl
    dec [hl]
    ld b, d
    add c
    add [hl]
    ld e, d
    ld b, $98
    sbc c
    ld c, a
    ld a, [bc]
    ld b, [hl]
    xor a
    xor a
    ld b, c
    ldh [$81], a
    ld b, l
    sub a
    ret c

    dec h
    or b
    ld e, e
    ld b, c
    inc b
    ldh [$fd], a
    pop hl
    ret nz

    ldh [rSCX], a
    ld d, l
    jp Jump_06f_53a0


    db $eb
    ld b, l
    ld [hl], $81
    ldh [$3a], a
    jp nz, Jump_06f_6086

    ld d, l
    ld [$c006], sp
    ldh [$ae], a
    ld b, [hl]
    ld [bc], a
    ret z

    ret nz

    ld [c], a
    ld [hl], c
    jp nz, $a187

    ret nz

    db $e4
    ld a, $ce
    ld b, b
    ld a, [hl-]
    add hl, sp
    ld b, l
    ld b, e
    ccf
    jp nz, $8140

    ldh [$8f], a
    add hl, sp
    ld c, d
    ld c, c
    ld c, b
    ld b, b
    pop bc
    cp a
    ld b, b
    ld b, h
    nop
    sbc c
    rrca
    ld a, [bc]
    xor a
    dec b
    db $10
    push bc
    ld h, h
    ret nz

    and $62
    nop
    ld c, b
    and b
    rst $20
    ld b, l
    ld b, c
    ld b, l
    ld a, a
    db $e3
    ld b, b
    ret nz

    ld a, [hl-]
    dec [hl]
    dec sp
    db $fd
    dec sp
    add hl, bc
    and b
    dec [hl]
    xor h
    xor l
    ld [hl], $45
    ld c, d
    inc de
    ld h, c
    ld h, b
    ld b, $41
    res 0, h
    ld b, $84
    ret nz

    pop bc
    dec h
    add b
    rst $20
    ld c, $c1
    pop hl
    ld [hl], $a6
    ld [hl], $bf
    db $e3
    ld c, [hl]
    ld b, b
    ld c, c
    ret nz

    ld b, $e0
    dec hl
    xor h
    dec [hl]
    pop bc
    ldh [rBGP], a
    ret


    ld hl, $be52
    and c
    nop
    pop bc
    ret nc

    ld h, h
    ld b, b
    ld h, l
    ld b, c
    ld [bc], a
    add $00
    db $e4
    ld b, $c1
    ldh [$62], a
    and a
    db $dd
    ld h, [hl]
    cp a
    db $e3
    ld b, $98
    ld b, $06
    ld [c], a
    dec [hl]
    xor l
    ld e, h
    rlca
    add b
    dec sp
    and b
    ld d, d
    ld d, e
    ld d, h
    or l
    add b
    ld e, c
    dec bc
    ld b, b
    or b
    rst $20
    ld [hl+], a
    jp nc, $cf22

    ld b, [hl]
    adc $22
    ld c, $05
    pop bc
    ldh [$67], a
    di
    and e
    ld l, b
    cp a
    ld [c], a
    db $e4
    jr nz, jr_06f_6ee7

    ld [bc], a
    ld b, l
    scf
    cp a
    dec a
    dec a
    dec a
    scf
    ld b, l
    ld b, e
    add l
    ld h, d
    ld c, c
    add hl, bc
    ld b, l

jr_06f_6ee7:
    ld a, d
    ld h, b
    inc [hl]
    ld h, b
    rlca
    ld b, l
    and c
    sub h
    daa
    ret nz

    db $e3
    adc c
    add c
    rst $38
    ld [$4246], sp
    xor b
    xor c
    ld l, h
    dec [hl]
    dec [hl]
    or $bf
    pop hl
    dec b
    ld c, $9e
    and c
    ld b, e
    ld b, e
    scf
    ld b, l
    db $dd
    ld d, b
    ld a, h
    ld h, b
    ld d, l
    ld c, c
    ld c, b
    inc [hl]
    and b
    ld d, b
    dec bc
    ld a, a
    dec bc
    ld [bc], a
    inc b
    inc bc
    ld b, c
    scf
    scf
    ld b, [hl]
    ld hl, $13f8
    ld b, h
    adc e
    and h
    ret nz

    db $e4
    ld b, l
    ld [hl], $6e
    ld l, a
    ld l, h
    rst $38
    dec [hl]
    and e
    xor d
    xor e
    ld [hl], $0a
    rrca
    ld [bc], a
    rst $38
    ccf
    ld b, e
    jr c, jr_06f_6f72

    add hl, sp
    dec [hl]
    ld b, b
    ld e, a
    cp $58
    ld b, c
    ld d, h
    ld d, e
    ld c, b
    ld c, [hl]
    ld c, c
    ld e, l
    ld e, h
    dec sp
    ld a, [hl-]
    add hl, sp
    ld [hl], d
    pop bc
    jr c, jr_06f_6f83

    ccf
    adc b
    ld h, l
    ld c, h
    and h
    or $80
    db $e3
    ld c, $05
    cp a
    db $e3
    ld l, h
    ld l, a
    ld l, [hl]
    ld [hl], $5f
    ld a, [bc]
    ld [$3544], sp
    ld b, b
    add h
    pop bc
    add hl, sp
    adc c
    ld hl, $5587
    ld b, [hl]
    ld b, h
    add $81
    rst $30
    and b
    jp nz, $f0e1

jr_06f_6f72:
    nop
    ld a, [bc]
    sbc b
    add [hl]
    inc b
    ld c, e
    and l
    ret


    ld h, e
    ld b, $46
    ld a, [hl]
    ld [c], a
    pop bc
    ldh [rLYC], a
    ld [hl], a

jr_06f_6f83:
    ld b, $08
    ld b, b
    ret nz

    db $e3
    ld a, [hl-]
    ld d, e
    ld d, h
    sub $61
    ld l, a
    inc b
    inc bc
    ld d, d
    ld d, [hl]
    ld [hl], c
    pop bc
    dec [hl]
    ld [hl], $b1
    and c
    ld bc, $c03a
    ld [c], a
    add h
    and h
    call $c981
    inc hl
    ld a, a
    ldh [$3d], a

jr_06f_6fa5:
    pop hl
    pop bc
    ldh [$66], a
    jp nz, Jump_000_3681

    add hl, sp
    ld a, [bc]
    add b
    ld d, d
    pop hl
    ld b, l
    ld [bc], a
    ld bc, $0340
    dec c
    dec b
    ei
    ld h, c
    pop bc
    db $e3
    ld [hl], c
    nop
    ld b, h
    ret z

    sub c
    ld hl, $4448
    ld [hl], b
    ld a, a
    ldh [$fe], a
    and b
    rst $38
    and c
    ld [bc], a
    ld h, b
    ld b, b
    ld a, $3e
    jp Jump_06f_5ba1


    dec [hl]
    jr c, jr_06f_6fa5

    ld h, d
    sbc c
    ld a, [bc]
    ld sp, $3ae1
    pop bc
    ld [c], a
    ld b, c
    ld [hl], $7d
    add c
    ld b, h
    and [hl]
    ld b, [hl]
    and c
    adc h
    dec b
    ld [bc], a
    and c
    ld b, l
    ld a, a
    and c
    and l
    ld b, $48
    nop
    ld a, [hl-]
    ld c, a
    ld [c], a
    ld c, [hl]
    ldh [$08], a
    pop hl
    ld bc, $0306
    dec bc
    ld b, d
    ld a, [hl]
    ld b, b
    pop bc
    db $e4
    ld b, h
    xor c
    ld b, $a1
    ld c, b
    inc hl
    call nc, $8601
    rst $38
    add h
    dec b
    ld c, $01
    and c
    ccf
    ld [c], a

jr_06f_7012:
    ld d, d
    ld [c], a
    xor h
    ld hl, $010c
    ld a, [hl-]
    xor [hl]
    ld [c], a
    add d
    ldh [$e7], a
    ld [bc], a
    add b
    jp hl


    ld [$be26], sp
    add [hl]
    ld b, c
    ld b, b
    ld h, l
    add hl, sp
    ld a, a
    db $e4
    ld a, $92
    ret nz

    xor [hl]
    ld bc, $4502
    ld hl, sp+$41
    and b
    ld b, e
    ldh [rTAC], a
    ld h, e
    nop
    add sp, -$80
    db $e3
    ld a, $8a
    ld [$403c], sp
    ld [hl], $6d
    ld [hl], $4e
    jp nz, Jump_000_0a39

    rrca
    ld h, e
    rrca
    ld [bc], a
    ld l, $c0
    nop
    pop bc
    pop hl
    sub d
    daa
    adc l
    ld h, l
    push af
    push hl

jr_06f_7058:
    cp [hl]
    ld h, e
    db $fc
    ld h, b
    dec e
    pop hl
    cp a
    db $e4
    jr jr_06f_7095

    ret nz

    ld de, $bfe2
    pop hl
    scf
    scf
    pop bc
    pop hl
    db $d3
    inc h
    ret nc

    ld b, a
    ldh [rP1], a
    pop hl
    ld a, $68
    and l
    ld b, c
    sbc [hl]
    add c
    ld a, [hl]
    ldh [$38], a
    ccf
    ccf
    jr c, jr_06f_7058

    jr nz, jr_06f_7012

    add c
    and $41
    rrca
    rlca
    rlca
    inc bc
    ld h, b
    push de
    inc hl
    ret nz

    pop bc
    and h
    rst $08
    ld b, e
    cp [hl]
    ld c, d
    db $76
    ld h, c
    ld a, a

jr_06f_7095:
    nop
    cp [hl]
    add c
    inc b
    add hl, bc
    rlca
    add hl, bc
    inc b
    dec c
    jp nc, Jump_06f_5841

    ld bc, $22a8
    push bc
    add c
    jp nc, Jump_06f_40ed

    ret nz

    pop hl
    ld a, $47
    cp $22
    cp [hl]
    inc bc
    jp z, Jump_06f_52c1

    ld b, b
    ld [$8172], sp
    db $10
    ld h, [hl]
    ld b, e
    add a
    add e
    ld d, c
    ld b, [hl]
    ld b, c
    db $e4
    sbc c
    ld l, [hl]
    db $e3
    xor $85
    cp [hl]
    inc bc
    add b
    ld a, a
    ld [c], a
    ld c, a
    ld [c], a
    jp nc, $a262

    ld b, e
    ld b, e
    db $e3
    adc l
    dec h
    adc l
    ld b, e
    sbc c
    and b
    ret nz

    ldh [$bf], a
    db $e4
    ld a, h
    inc hl
    ld [hl], h
    ld h, e
    dec a
    nop
    sbc c
    add hl, de
    ld b, b
    ld [bc], a
    nop
    sub e
    ld [hl+], a
    sub $21
    sbc e
    dec b
    add h
    push hl
    pop bc
    db $e4
    ret nz

    db $e3
    cp [hl]
    dec b
    or [hl]
    and [hl]
    nop
    call nc, $c0c2
    db $e3
    db $e3
    rst $20
    add hl, de
    daa
    db $10
    ld b, [hl]
    add c
    pop hl
    db $dd
    db $e4
    ld a, $09
    nop
    adc d
    db $e3
    adc a
    pop bc
    rst $08
    jp nz, Jump_000_05a3

    rlca
    add sp, -$3f
    add sp, $5d
    push hl
    db $eb
    and h
    nop
    ld d, $e5
    db $ed
    inc hl
    call c, $fe03
    add sp, $18
    rst $00
    jp nz, $93e4

    db $e4
    xor e
    xor d
    jr nz, jr_06f_714d

    ld h, c
    ld l, e
    db $e4
    ld d, [hl]
    ld h, [hl]
    rlca
    db $ed
    pop bc
    and $99
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

jr_06f_714d:
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, $00
    nop
    nop
    ld [bc], a
    nop
    rra
    inc d
    ld [bc], a
    ld bc, $1515
    ld [bc], a
    ld [bc], a
    inc d
    ld d, $02
    inc bc
    ld [de], a
    dec de
    ld [bc], a
    inc b
    ld de, $021c
    dec b
    ld [hl+], a
    inc e
    ld [bc], a
    ld b, $21
    rra
    ld [bc], a
    rlca
    ld hl, $0224
    ld [$2434], sp
    ld [bc], a
    add hl, bc
    ld [hl-], a
    dec h
    ld [bc], a
    ld a, [bc]
    inc sp
    dec h
    ld [bc], a
    dec bc
    jr nz, jr_06f_71ab

    ld [bc], a
    inc c
    ld sp, $0227
    dec c
    rra
    jr z, jr_06f_7190

    ld c, $1e

jr_06f_7190:
    add hl, hl
    ld [bc], a
    rrca
    ld a, [de]
    ld a, [hl+]
    ld [bc], a
    db $10
    inc e
    ld a, [hl+]
    ld [bc], a
    ld de, $3913
    ld [bc], a
    ld [de], a
    inc d
    dec sp
    rst $38
    rst $38
    rst $38
    xor h
    ld [hl], c
    ld a, e
    ld [hl], h
    ret nc

    ld a, c
    db $eb

jr_06f_71ab:
    ld a, c
    ld bc, $ff0c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, [hl]
    ld hl, sp-$09
    inc l
    inc l
    ld l, h
    ld l, h
    ld l, h
    ld c, h
    rst $38
    ldh [$e3], a
    ld l, h
    ld c, h
    db $d3
    rst $38
    pop af
    ldh a, [$c2]
    ldh [$2b], a
    dec hl
    ld c, e
    adc a
    ld c, e
    ld c, e
    dec hl
    dec bc
    cp e
    ldh [$d1], a
    rst $38
    jp nz, Jump_000_0bf0

    ld a, a
    dec bc
    dec bc
    ld l, e
    ld c, e
    ld c, e
    dec bc
    dec hl
    cp [hl]
    rst $38
    inc e
    add e
    ldh a, [$c2]
    ldh [rWX], a
    ld l, e
    ld l, e
    db $fd
    ldh [$bd], a
    ldh [$be], a
    ld [c], a
    ld e, b
    set 7, a
    pop bc
    db $eb
    jp nz, Jump_06f_6be4

    dec bc
    ld a, l
    ldh [$0b], a
    ld a, l
    pop hl
    ld h, e
    inc l
    inc l
    rst $00
    rst $38
    rst $00
    push bc
    pop bc
    pop hl
    ld c, e
    dec hl
    rst $00
    ld [c], a
    ld b, b
    dec a
    ldh [$3b], a

jr_06f_7227:
    pop hl
    ld a, [hl]
    rst $38
    add d
    db $ec
    adc d
    ldh [$86], a
    pop hl
    dec bc
    cp h
    ret nz

    inc b
    rst $30
    ret nz

    ld a, [hl]
    ldh [$6c], a
    add $ff
    pop bc
    ld [$e288], a
    ld b, [hl]
    ldh [$f8], a
    db $e3
    db $d3
    dec bc
    dec bc
    jr c, jr_06f_7227

    db $e4
    db $e3
    ld c, h
    inc b
    pop hl
    ld a, [bc]
    ld a, [hl+]
    ret nz

    jp z, $82e4

    ret nz

    ccf
    ld [c], a
    ei
    ret nz

    ld a, a
    rst $38
    ld [$4cc2], sp
    dec hl
    ccf
    ld l, e
    ld l, e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, d
    rlca
    ld [c], a
    jp Jump_06f_60c1


    ld sp, hl
    db $e4
    ld a, a
    rst $38
    adc b
    and e
    ld c, d
    ret nz

    pop bc
    ldh [$0a], a
    ld a, [bc]
    adc l
    ldh [$e0], a
    cp a
    db $e3
    cp b
    db $e3
    ld a, a
    rst $38
    ld c, b
    and l
    rst $08
    and b
    ld a, [hl+]
    ld c, d
    ld c, d
    ldh a, [$80]
    push hl
    ld a, [$7fe5]
    rst $38
    push bc
    and [hl]
    dec hl
    dec hl
    ld a, [bc]
    ld c, d
    add e
    ld c, d
    ld a, [bc]
    ld b, e
    and c
    cp e
    pop bc
    add b
    push hl
    ld a, a
    rst $38
    inc b
    call nz, $012b
    dec bc
    ret nz

    ld [c], a
    ret z

    and $80
    and $7f
    pop hl
    cp d
    cp h
    add hl, bc
    and d
    rst $38
    ret nz

    ld [$ebc0], sp
    ld a, l
    rst $18
    ld [$2ba9], sp
    add d
    pop bc
    ld b, b
    ld [c], a
    add h
    call nz, $ea7f
    nop
    ret


    sbc a
    ld [bc], a
    pop hl
    nop
    ld [c], a
    ld a, [hl]
    jp nz, $c7fd

    ld a, a
    pop hl
    ld a, [hl-]
    cp e
    push bc
    and b
    ld [bc], a
    pop de
    add b
    dec hl
    pop bc
    pop hl
    nop
    db $e3
    add b
    db $ed
    ld sp, hl
    sbc e
    push bc
    and b
    sub d
    add d
    db $10
    add b
    db $e4
    db $76
    ldh [$bc], a
    db $eb
    cp a
    db $fd
    ld c, h
    adc a
    ld h, d
    adc $60
    ld b, c
    ret nz

    ld de, $c72a
    add c
    inc bc
    and e
    cp $a7
    dec l
    ld a, [hl]
    ld a, [$e181]
    rst $38
    db $e3
    inc b
    add l
    ld h, c
    ld b, e
    ld h, b
    ld a, [bc]
    ret nz

    call z, $a0e7
    ld [hl], a
    sbc c
    add c
    ldh [rNR13], a
    and d
    nop
    add [hl]
    ld h, b
    inc c
    and e
    ret nz

    db $e3
    xor h
    db $e3
    add d
    pop hl
    and a
    and b
    ld [hl-], a
    add c
    ld a, c
    or l
    add b
    ld c, $62
    ld c, e
    xor b
    db $fc
    add d
    cp [hl]
    add [hl]
    ld [hl], h
    add d
    ld l, h
    and d
    ld a, c
    or l
    ld l, h
    inc b
    sub [hl]
    add e
    ld [$0aa6], sp
    ld a, h
    call nz, $867e
    pop hl
    jp $f67f


Jump_06f_7340:
    ret nz

    ldh [$0c], a
    ld de, $fc61
    push bc
    ld c, e
    ld a, [hl+]
    db $fc
    ld h, c
    add $a5
    dec sp
    ld h, d
    ld l, $85
    ld b, b
    ld c, $54
    ld c, h
    ld h, c
    cp $e8
    ld b, l
    ld b, c
    xor $c3
    ld [hl], a
    xor e
    dec hl
    ret nz

    db $f4
    ld h, c
    inc c
    ld d, h
    ld b, c
    rst $38
    rst $38
    ret nz

    pop hl
    ld [hl], h
    ld d, d
    inc l
    inc l
    ret nz

    rst $38
    inc c
    ld l, h
    ld h, e
    rrca
    inc [hl]
    inc l
    inc l
    call $b765
    ei
    rst $30
    ld [hl], $bd
    ldh [$9d], a
    ld l, e
    ld d, e
    ld b, c
    ld l, e
    inc c
    inc l
    ld a, e
    add c
    add hl, sp
    ld h, d
    ld a, [hl+]
    dec b
    ld a, [bc]
    ld [hl], b
    db $ec
    ld l, e
    ret nz

    rst $30
    adc d
    ld bc, $447b
    dec a
    add c
    cp b
    add d
    inc bc
    ld a, [hl+]
    ld a, [bc]
    ld a, b
    add $21
    call nz, $5f7e
    ld c, c
    nop
    pop bc
    push hl

jr_06f_73a6:
    cp l
    ld [c], a
    sbc b
    db $f4
    ld b, a
    db $ed
    nop
    add [hl]
    rra
    dec hl
    ld a, [bc]

jr_06f_73b1:
    cp $42
    cp [hl]
    add sp, $6c
    nop
    daa
    and $c2
    rst $38
    dec c
    pop hl
    add b
    ld b, c
    cp a
    db $ed
    cp $e2
    pop bc
    cp $44
    ld h, d
    ret nz

    cp $ef
    ld b, l
    ld e, a
    add d
    ld b, d
    ret


    rst $00
    dec bc
    ldh [$3e], a
    jp hl


    ld a, [bc]
    ld c, h
    ld bc, $3f6c
    rra
    ld b, h
    jr nz, jr_06f_73a6

    rst $00
    dec a
    rst $20
    ld a, [hl]
    pop bc
    xor $c0
    xor d
    ret nz

    ret nz

    ld a, a
    cp $43
    jp hl


    ccf
    rst $00
    xor $c2
    jr c, jr_06f_73b1

    cp [hl]
    cp $2c
    ld l, e
    ld [hl], b
    ld c, c
    ret z

    db $f4
    db $e4
    pop bc
    ldh [$f6], a
    and l
    ld a, [hl+]
    ld l, d
    ld c, h
    dec sp
    ei
    nop
    cp $80
    db $d3
    rst $20
    ld [hl], d
    db $e3
    pop bc
    rst $20
    dec hl
    ld b, c
    cp a
    ldh [rLCDC], a
    inc a
    dec a
    ldh [rNR41], a
    ld c, e
    and d
    rst $28
    add e
    rlca
    ldh [$71], a
    call z, Call_000_1d7c
    inc l
    cp $e0
    di
    jp hl


    nop
    ret nz

    xor $37
    rst $18
    or c
    db $eb
    or [hl]
    xor h
    ld h, a
    pop hl
    rst $38
    rst $38
    jp hl


    add sp, -$08
    xor h
    nop
    db $fc
    cp [hl]
    ld l, $0e
    cp a
    jp z, $ffc0

    xor e
    ld l, a
    xor l
    jp nz, Jump_000_01ae

    dec [hl]
    add b
    db $10
    adc $ff
    rst $28
    ld l, a
    db $fd
    pop hl
    ld [hl], e
    ld b, b
    ld a, [hl+]
    rlca
    sbc [hl]
    ld l, d
    reti


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
    push af
    db $f4
    ld sp, hl
    ld hl, $7e4c
    nop
    nop
    nop
    cp l
    sbc c
    rst $38
    jp hl


    sbc b
    sbc b
    sbc b
    sub a
    rst $38
    ldh [$96], a
    ld c, $ff
    ld [$9595], a
    sub l
    rst $28
    ld [c], a
    and $e0
    ldh [$e0], a
    db $dd
    ldh [rP1], a
    call $c2ea
    db $eb
    pop bc
    pop hl
    ret


    jp hl


    call nz, $fde0
    db $e4
    cp a
    cp $a4
    ld [c], a
    nop
    add e
    db $e4
    ret


    rst $20
    push bc
    ld [c], a
    cp a
    add sp, $7b
    db $e4
    add e
    or $44
    pop hl
    ret


    jp hl


    nop
    dec sp
    db $eb
    cp a
    and $43

Jump_06f_74bc:
    ld a, [c]
    pop bc
    add sp, -$02
    rst $00
    adc h
    db $e3
    ld a, [$efc1]
    rst $20
    nop
    db $fc
    ret nc

    ld b, h
    ld [$e655], a
    ld d, c
    push hl
    xor l
    ret nz

    ld [hl], e
    rst $20
    ld a, [hl]
    pop af
    add $c8
    nop
    sub d
    pop bc
    ret


    push hl
    sub c
    call nz, $c06a
    ld a, [hl+]
    rst $20
    ld [hl], a
    call nz, $cd85
    dec b
    add sp, $38
    ld d, [hl]
    ret nz

    ret


    db $e4
    ld d, h
    jp nz, Boot

    sbc c
    ld a, a
    pop hl
    ld [hl], e
    push bc
    ldh a, [$36]
    jp nz, $f1c0

    sbc $e7
    and c
    ld [c], a
    ld bc, $0d00
    rlca
    ld a, a
    inc b
    add hl, bc
    add hl, bc
    add hl, bc
    inc b
    rlca
    dec c
    ld h, d
    ld [$61d0], a
    ld [c], a
    ld a, [$c0ad]
    db $e3
    sub $a6
    sbc b
    adc e
    ldh [$0d], a
    inc b
    rst $38
    inc bc
    ld b, l
    ld b, e
    ccf
    ccf
    ccf
    ld b, e
    ld b, l
    add e
    inc bc
    inc b
    cp [hl]
    db $e4
    cp b
    push bc
    ccf
    rst $28
    ret nz

    push hl
    inc e
    call nz, $fb98
    sbc b
    rrca
    jp nz, Jump_000_37e0

    jr c, jr_06f_7576

    jr c, jr_06f_757a

    ld a, [bc]
    db $fc
    ldh [$37], a
    cp [hl]
    ldh [rIF], a
    pop hl
    and h
    ld a, b
    jp $cd3c


    sbc l
    jp Jump_06f_5cac


    pop bc
    ld e, h
    and h
    rrca
    ld [bc], a
    jp nz, Jump_000_35e0

    add $e0
    ld b, [hl]
    scf
    ld b, l

jr_06f_755b:
    ld a, [hl-]
    dec [hl]
    ld hl, sp-$1f
    ld [bc], a
    rrca
    cp b
    call nz, $e43f
    sub b
    cp d
    xor c
    ld c, b
    and [hl]
    dec b
    push hl
    pop bc
    pop hl
    ld [hl], $c2
    ld [c], a
    rst $38
    ldh [$3e], a
    dec [hl]
    dec [hl]

jr_06f_7576:
    rst $38
    ldh [$36], a
    cp a

jr_06f_757a:
    ldh [rSB], a
    nop
    cp b
    ret nz

    ld e, e
    rst $20
    ret c

    ret nz

    ld [$a587], a
    dec b
    pop hl
    ld bc, $c100
    ld [c], a
    ld [hl], $45
    ld a, a
    ld b, l
    ccf
    scf
    dec a
    scf
    ld b, l
    add hl, sp
    ret nz

    pop hl
    nop
    cp a
    ld [c], a
    add b
    rst $20
    cp d
    xor d
    pop bc
    add sp, -$7b
    jp $e4c1


    ccf
    ldh [$85], a
    ldh [$09], a
    add hl, sp
    ret nz

    db $e3
    ld a, [hl]
    ldh [rTMA], a
    cp b
    xor d
    jr c, jr_06f_755b

    inc b
    ret


    dec b
    pop bc
    sbc h
    add d
    db $e4
    jp nz, Jump_000_35e2

    dec [hl]
    ld a, $40

Jump_06f_75c1:
    ld [c], a
    or a
    pop hl
    dec b
    pop hl
    ld c, $78
    and l
    cp d
    xor d
    call nz, $dec4
    add l
    sbc b
    sbc b
    ld b, $8e
    ld b, e
    pop hl
    ld c, b
    ld c, b
    ld [hl], $c0
    db $e4
    ret nz

    ret nz

    ld a, $e2
    ld a, [hl-]
    ldh [$7f], a
    ld [c], a
    ld h, d
    add l
    cp d
    and [hl]
    call nz, Call_06f_48c7
    and h
    ld c, $05
    ld b, d
    ccf
    jr c, @+$39

    ld b, a
    ld h, b
    ld h, c
    ld d, l
    rst $00
    push hl
    ld sp, hl
    push hl
    ldh [$7f], a
    db $e3
    sub h
    rst $20
    ret nz

    push hl
    call nz, Call_06f_48c6
    and e
    ld [$4546], sp
    ccf
    ld b, l
    ld d, c
    ld e, [hl]
    ld h, c
    ld h, c
    ld e, d
    ld b, a
    push hl
    cp c
    push hl
    ret nz

    ld a, a
    ld [c], a
    ld d, [hl]
    rst $00
    ld a, [de]
    and h
    call Call_000_2967
    and h
    dec b
    ret nz

    ld l, $2e
    rrca
    ld d, [hl]
    ld h, c
    ld h, c
    ld d, [hl]
    rst $00
    call nz, $ea7f
    push de
    and l
    sbc e
    add a
    db $fc
    call nz, Call_000_25c9
    ld h, b
    nop
    ld bc, $020f
    ld b, d
    jr nz, jr_06f_7678

    jr nc, @+$51

    ld h, c
    ld h, c
    ld e, b
    ld b, b
    ret nz

    db $ed
    cp $c0
    ldh [$b4], a
    add b
    cp d
    and h
    rst $28
    ld b, l
    adc c
    adc c
    inc b
    call nz, $3042
    jr nz, jr_06f_7654

    ret nz

    pop hl

jr_06f_7654:
    ld b, h
    add b
    db $ed
    ld a, a
    ld [c], a
    cp d
    and e
    ei
    and a
    ret z

    adc b
    inc b
    push bc
    rrca
    add hl, sp
    ld l, $2e
    ld c, e
    ret nz

    ld a, [c]
    ld a, l
    pop bc
    ld a, [hl-]
    and [hl]
    rst $28
    ld b, [hl]
    inc a
    ld l, l
    xor c
    ld b, a
    and d
    ld a, $4e
    ld c, c
    ld h, b
    ld b, b

jr_06f_7678:
    pop af
    db $fc
    and e
    jr nc, jr_06f_76ef

    ld h, [hl]
    ld l, l
    ld b, h
    call nz, $c1c7
    db $e4
    dec [hl]
    ld a, $82
    ret nz

    ret nz

    jp Jump_000_3dc2


    call $b83a
    add c
    or e
    ld h, e
    or a
    add [hl]
    ld c, b
    and a
    sbc c
    sbc c
    ld b, h
    push bc
    and c
    adc l
    and b
    ld c, l
    ret nz

    pop hl
    ld b, b
    pop bc
    ld a, l
    call $b8a6
    add c
    ret c

    sbc h
    dec h
    ret nz

    add sp, -$33
    ld h, h
    ld c, $05
    db $d3
    add d
    ld a, [hl-]
    ld d, d
    ld [hl], h
    add b
    pop hl
    ret nz

    and b
    ld a, [hl-]
    ld a, l
    call z, $a762
    ld h, [hl]
    cp a
    db $e3
    ld b, h
    inc a
    ret


    add b
    add sp, $06
    inc de
    add c
    ld d, d
    add c
    cp a
    ldh [rHDMA2], a
    ld b, b
    and b

Jump_06f_76d0:
    dec a
    add hl, sp
    dec a
    bit 4, d
    ld h, a
    and e
    ld l, b
    cp a
    ld [c], a
    inc a
    rst $00
    cp b
    nop
    ld [$e481], a
    db $10
    add b
    jr c, jr_06f_7722

    dec a
    add e
    add b
    ld a, [hl-]
    db $fd
    ld c, d
    db $fd
    xor d
    ld h, d
    ld h, a

jr_06f_76ef:
    dec [hl]
    dec [hl]
    ld l, h
    or a
    add c
    cp b
    ld [hl], a
    add b
    xor [hl]
    ld b, d
    db $fc
    and [hl]
    ccf
    push hl
    rst $00
    add b
    dec c
    xor e
    add hl, sp
    db $fd
    ld c, e
    cp l
    xor c
    cp c
    cp d
    and e
    dec [hl]
    ld l, h
    ld l, a
    or c
    ld l, [hl]
    ld a, c
    and e
    or $67
    cp a
    rst $00
    sbc c
    ld a, [bc]
    ld c, [hl]
    xor e
    ld a, [hl-]
    rst $28
    ld c, d
    ld h, b
    ld e, h
    inc a
    cp h
    add a
    ld l, [hl]
    ld l, a

jr_06f_7722:
    ld l, h
    db $10
    pop bc
    ld [c], a
    ld [hl], a
    add h
    adc l
    add a
    add a
    ld h, [hl]
    ld a, [bc]
    ld d, l
    ld h, d
    call z, $ff40
    ld [c], a
    rrca
    jr c, jr_06f_776f

    ld c, e
    ld h, c
    ret nz

    jp hl


    cp a
    ldh [$c1], a
    ld [c], a
    ld [hl], a
    add [hl]
    sub h
    sub l
    dec h
    add b
    rst $20
    ld a, $94
    ld b, b
    ccf
    ld c, e
    ld h, b
    cp a
    ld [c], a
    scf
    add a
    ccf
    ld e, e
    ld e, e
    cp e
    ld h, l
    ld a, [hl]
    db $e4
    pop bc
    db $e3
    or $60
    ld [$ba1c], sp
    adc c
    ccf
    add $0a
    ld b, e
    ccf
    ld c, l
    ld b, b
    ld a, [bc]
    adc b
    ld b, l
    ld b, b
    inc e
    ei
    ld l, l
    or e
    ld b, c
    inc a

jr_06f_776f:
    ld b, h
    ld [$4774], sp
    add b
    xor b
    ret nz

    call $f630
    push af
    ret nz

    ldh [$74], a
    ld b, a
    add b
    xor b
    rrca
    ld [bc], a
    dec c
    adc [hl]
    di
    ld a, [c]
    nop
    ld b, b
    ldh [$80], a
    ld [$a480], a
    ld c, b
    ld b, c
    ld b, b
    db $e4
    cp h
    push bc
    cp b
    jp nz, $e92e

    ldh [$ba], a
    adc l
    ld d, l
    nop
    nop
    xor b
    ld c, d
    ld hl, $210d
    ccf
    ld b, e
    inc bc
    ld l, a
    inc bc
    ld b, l
    ld c, b
    ld c, [hl]
    rst $38
    db $e3
    ld c, b
    ld d, b
    scf
    ld b, e
    ldh a, [$f2]
    ld b, [hl]
    ld [hl], $44
    db $f4
    dec b
    add b
    adc c
    sbc b
    sbc b
    dec c
    rlca
    adc $ff
    ld [c], a
    dec c
    ld b, $4a
    dec a
    add b
    cp $e2
    ld h, b
    ld e, l
    inc bc
    ld c, c
    ld c, b
    cp [hl]
    jp hl


    cp l
    add d
    cp d
    ld c, c
    ret z

    ld [$633e], sp
    cp h
    pop hl
    add hl, de
    dec b
    cp [hl]
    ld h, b
    cp $e6
    ld h, b
    ld d, l
    or h
    ld bc, $c46e
    ld [hl], a
    jr z, jr_06f_785f

    add b
    xor c
    dec hl
    ld h, $48
    nop
    ld b, e
    ld d, b
    ld b, e
    ld b, h
    inc a
    add d
    db $76
    cp h
    push hl
    ld d, [hl]
    rla
    daa
    and $09
    inc b
    rrca
    ld bc, $fca5
    cp a
    ld l, c
    cp [hl]
    ld h, [hl]
    inc b
    inc bc
    ld c, b

jr_06f_7807:
    ld c, c
    ld c, h
    ld e, l
    inc de
    ld c, h
    ld d, l
    add b
    jp hl


    inc sp
    add b
    ld b, $27
    push hl
    ld b, a
    ld [bc], a
    cp l
    ld c, c
    and h
    ccf
    and a
    ld b, e
    ld b, d
    ld c, b
    ld b, h
    ld h, c
    ld b, d
    ld b, b
    ld c, d
    ret nz

    ld [$0356], a
    dec b
    ld c, $85
    ld b, e
    jp Jump_000_0160


    adc e
    ld b, [hl]
    ld [$0086], sp
    ret


    rst $00
    ld a, c
    ld d, l

jr_06f_7837:
    db $fd
    jr nz, jr_06f_7837

    ret z

    ld e, h
    ld [bc], a
    rlca
    dec c
    res 4, d
    cp b
    rst $38
    db $e4
    adc a
    jr z, jr_06f_7807

    and $98
    sbc c
    ld c, $c9
    rst $00
    ld d, [hl]
    db $fd
    ld d, l
    cp a
    add $54
    ld e, c
    ld d, e
    ld e, e
    ld d, b
    ld b, e
    add a
    ld b, e
    inc bc
    inc b
    ld b, e
    pop hl
    pop de

jr_06f_785f:
    ld a, [bc]
    ret nz

    ld [$e000], a
    ld [$4770], sp
    ld hl, $e50d
    ld a, [hl-]
    ld h, d
    or [hl]
    ld b, b
    ld d, d
    ld c, b
    ld c, [hl]
    xor $c1
    ccf
    ld c, c
    ld c, [hl]
    ld c, b
    inc bc
    inc b
    rrca
    ld b, b
    ld c, l

jr_06f_787c:
    add b
    rst $20
    ld b, [hl]
    jr nc, jr_06f_78a2

    ld [$cb45], sp
    push hl
    ld b, b
    jr nz, jr_06f_787c

    db $e4
    ld d, d
    or h
    nop
    ld e, $f6
    and h
    ld c, c
    ld d, e
    ld [bc], a
    rrca
    ret nz

    dec h
    ld a, a
    ld h, $f5
    ld l, b
    db $fc
    ld b, b
    ld b, c
    adc d
    push hl
    ld d, h
    ld d, e
    inc bc
    inc bc

jr_06f_78a2:
    ld d, e
    ld d, h
    ret nz

    pop bc
    jp hl


    ld [hl], h
    ld [c], a
    inc bc
    add $c1

jr_06f_78ac:
    and $b4
    and a
    ret nz

    ld hl, $0304
    adc a
    ld e, e
    ld d, e
    ld e, c
    ld e, c
    rrca
    ldh [rNR12], a
    ldh [$f6], a
    and b
    ld e, e
    pop bc
    ld e, e
    ld l, $e8
    scf
    jp $0cc0


    ld b, b
    ld [$a3c1], sp

jr_06f_78cb:
    rlca
    inc b
    cp a
    add hl, bc
    add hl, bc
    add hl, bc
    inc b
    rlca
    dec c
    or l
    nop
    sbc c
    rlca
    dec c
    rlca
    ld [bc], a
    ret nz

    db $ec
    scf
    ret nz

    ld b, a
    add h
    ld b, b
    dec b
    ld l, $0a
    ldh [$7d], a
    inc bc
    jr jr_06f_78ac

    ld d, $22
    ld l, h
    ld b, b
    or a
    xor e
    ld h, c
    ld e, h
    ld [$8400], sp
    and l
    db $d3
    ld [c], a
    cpl
    dec b
    or d
    ld b, [hl]
    and c
    and h
    dec h
    db $e4
    ld l, e
    ld b, b
    jr c, jr_06f_78cb

    add b
    add b
    rst $20
    call nc, $d2e8
    db $e3
    inc a
    inc b
    xor $a4
    sbc $01
    or c
    add l
    rrca
    ld bc, $ba02
    pop bc
    nop
    db $eb
    ld d, e
    add sp, -$40
    db $e4
    cp a
    jp hl


    dec l
    and h
    cpl
    ld [bc], a
    ld a, [hl]
    xor e
    ld h, c
    inc b
    inc bc
    ld d, e
    ld e, c
    ld d, h
    ld d, a
    xor l
    nop
    ld bc, $b757
    and b
    ld b, h
    add e
    ld bc, $3fe7
    push hl
    xor l
    rlca
    push bc
    db $e3
    ld [hl], d
    ld [c], a
    db $fc
    xor e
    ld bc, $6016
    dec c
    inc b
    add hl, bc
    inc bc
    ld b, e
    ld e, e
    inc bc
    ld e, e
    ld e, e
    add e
    add d
    ld b, [hl]
    ld hl, $a644
    ld b, c
    pop hl
    cp a
    db $ec
    inc [hl]
    ld b, c
    db $10
    ld sp, hl
    db $e3
    xor e
    ld h, e
    res 0, e
    xor c
    ld h, e
    dec c
    ld b, a
    ld [hl+], a
    pop bc
    bit 7, [hl]
    rst $20
    nop
    ei
    push bc
    cp e
    and $f2
    rst $00
    ld h, h
    ld h, e
    ld b, [hl]
    add l
    pop bc
    bit 7, l
    jp $e5bf


    nop
    ld a, [hl-]
    rst $20
    ld a, [c]
    ret z

    adc e
    add l
    ld b, a
    ld b, $c1
    ret


    cp [hl]
    jp hl


    ld [bc], a
    push hl
    cp b
    jp hl


    nop
    ld h, [hl]
    ld h, c
    or c
    call nz, $8846
    pop bc
    rst $00
    ld a, l
    db $eb
    add l
    call nz, $ea33
    inc hl
    add $00
    ld h, b
    add sp, -$7f
    db $eb
    ei
    ret z

    ld c, [hl]
    and $f2
    jp z, $ebf6

    add c
    rst $28
    ld a, [$00c5]
    cp h
    jp hl


    dec [hl]
    ret


    and b
    ld b, b
    pop bc
    db $ec
    add c
    db $ed
    cp a
    and $94
    call nz, $cdf2
    nop
    ld [$f6a4], a
    add $81
    xor $bc
    db $ed
    ld a, c
    db $ed
    and h
    ret z

    pop bc
    jp hl


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
    or $79
    ld h, $7a
    xor a
    ld a, e
    adc e
    ld a, l
    db $ec
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld bc, $03ec
    di
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld e, a
    ld e, e
    ret z

    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0116
    ret z

    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $2508
    ld [$0825], sp
    dec h
    ld [$ff25], sp
    dec bc
    dec bc
    dec hl
    ld l, e
    ld l, e
    ld c, e
    ld c, e
    ld c, e
    dec c
    dec hl
    ld sp, hl
    db $e3
    ld c, e
    dec bc
    rst $28
    ldh [$fc], a
    ldh [rIE], a
    rst $38
    push hl
    db $e4
    ld a, a
    ld l, e
    dec bc
    ld l, e
    ld l, e
    dec hl
    dec hl
    dec hl
    cp [hl]
    ldh [$61], a
    ld l, e
    ldh a, [$e4]
    rst $38
    rst $38
    cp a
    db $eb
    pop bc
    pop hl
    dec hl
    ld l, e
    add a
    pop hl
    nop
    db $d3
    ld [c], a
    ld a, l
    ld [c], a
    rst $38
    rst $38
    ret nz

    db $ec
    ret c

    rst $20
    scf
    ldh [$cb], a
    rst $38
    add c
    ld [$cd0c], a
    ldh [$0d], a
    push hl
    ld l, e
    dec hl
    inc sp
    ldh [$c0], a
    rst $38
    nop
    jp hl


    pop de
    ldh [$0c], a
    ld a, a
    push hl
    cp h
    ret nz

    dec hl
    ld c, e
    ld a, a
    ldh [$ca], a
    rst $38
    jp hl


    add sp, $44
    ldh [rP1], a
    ccf
    db $e4
    ld a, h
    ret nz

    cp b
    ret nz

    or d
    ret nz

    set 7, a
    ld a, a
    jp z, $c1c0

    adc b
    ldh [rSB], a
    dec bc
    push bc
    pop hl
    ld a, $c1
    ret nz

    rst $38
    add b
    ld [$c03f], a
    ei
    jp nz, $c1c5

    nop
    ret nz

    rst $38
    rst $38
    or d
    cp [hl]
    ldh [rSB], a
    pop bc
    ld hl, sp-$5d
    pop bc
    rst $38
    ld bc, $c2ea
    ld [c], a
    nop
    cp a
    pop hl
    ret nz

    rst $38
    pop bc
    db $d3
    cp a
    db $e3
    rst $38
    pop bc
    cp b
    and d
    pop bc
    cp a
    ld a, a
    ld a, [c]
    nop
    cp l
    and c
    ld [hl], h
    ld [c], a
    adc $ff
    ld a, a
    ld a, [c]
    ld a, l
    and d
    db $76
    xor e
    rst $38
    rst $38
    ld a, $e7
    add b
    ld b, l
    and h
    scf
    and d
    ld a, l
    rst $38
    jp hl


    add sp, -$37
    jp $a6b5


Jump_06f_7ae5:
    ld l, [hl]
    add c
    ld a, [bc]
    nop
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

Jump_06f_7ba6:
    rst $38

jr_06f_7ba7:
    rst $38
    rst $38
    rst $38
    rst $38
    di
    nop
    nop
    nop
    rst $38
    ld sp, $0101
    rla
    ld d, $22
    ld d, $17
    cp $f9
    pop hl
    inc hl
    inc hl
    ld d, $44
    ld bc, $0101
    di
    ld l, $51
    rst $38
    rst $38
    rst $20
    and $2c
    ld bc, $060c
    rst $38
    scf
    scf
    scf
    ld b, $22
    inc hl
    ld b, $3a
    add $ff
    ldh [rSTAT], a
    ld b, d
    cp a
    ldh [$ca], a
    rst $38
    add sp, -$19
    ld bc, $bd19
    jr jr_06f_7ba7

    ldh [$37], a
    nop
    scf
    inc [hl]
    pop bc

jr_06f_7bec:
    pop hl
    ld a, [hl-]
    rst $08
    ld a, [hl-]
    ld a, $43
    ld b, h
    ret nz

    rst $38
    ret nz

    jp hl


    add hl, bc
    nop
    sbc [hl]
    ret nz

    ld [$3c48], a
    inc a
    ccf
    jp z, $e8ff

    rst $20
    add hl, de
    di
    jr jr_06f_7c08

jr_06f_7c08:
    cp a
    pop hl
    add b
    db $e4
    nop
    nop
    ld b, b
    inc a
    inc sp
    inc a
    dec a
    jp z, $e8ff

    rst $20
    add hl, bc
    nop
    rst $38
    ldh [rLCDC], a
    db $e4
    ld a, $f5
    ldh [$38], a
    dec sp
    ld a, $3c
    ld c, d
    jp z, $e8ff

    rst $20
    db $ed
    jr nz, jr_06f_7bec

    db $e4
    jr c, jr_06f_7c64

    or a
    pop hl
    inc [hl]
    dec sp
    dec sp
    ld l, c
    ld b, b
    ret nz

    rst $38
    ld [$21e9], a
    add b
    pop hl
    nop
    scf
    add [hl]
    ldh [$9a], a
    cp a
    ldh [$3b], a
    ret nz

    ldh [$3b], a
    ld c, d
    ld b, b
    rst $38
    add b
    db $ed
    dec sp
    ld a, a
    jr c, jr_06f_7c51

jr_06f_7c51:
    ld c, l
    ld c, l
    jr c, @+$37

    dec sp
    ret nz

    ld [c], a
    pop af
    ld a, $c0
    rst $18
    ld b, b
    db $eb
    adc h
    ldh [$3b], a
    jr c, jr_06f_7cb0

    ld c, l

jr_06f_7c64:
    add hl, bc
    scf
    ld b, e
    ldh [$80], a
    pop hl
    jr nz, @+$42

    rst $18
    ret nz

    ret


    jp nz, $bfe1

    pop hl
    ret nz

    cp $a0
    ret nz

    rst $38
    ld b, b
    pop de
    cp a
    db $e3
    cp [hl]
    and c
    ld a, b
    pop hl
    dec sp
    dec sp
    ld h, c
    add hl, bc
    ret nz

    rst $38
    ret nz

    xor d
    ret nz

    add sp, $3f
    pop bc
    jr jr_06f_7ca7

    ret nz

    rst $38

Jump_06f_7c90:
    and $40
    xor c
    dec e
    ld [bc], a
    add b
    and $75
    jp nz, $0109

    inc l
    jr c, @-$34

    rst $38
    nop
    xor b
    cp a
    db $e3
    ld b, $22
    ld [hl+], a
    cp [hl]

jr_06f_7ca7:
    add b
    or h
    and b
    ld c, a
    ld b, $07
    ld bc, $ca31

jr_06f_7cb0:
    rst $38
    add sp, -$19
    ld l, $bf
    ldh [$67], a
    dec d
    inc hl
    dec d
    ld b, b
    add b
    scf
    add b
    dec d
    ld [hl+], a
    rst $30
    ldh [$03], a
    ld l, $28
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    di
    nop
    nop
    nop
    ld sp, hl
    nop
    rst $38
    rst $38
    xor $ed
    ld [hl], $30
    scf
    ld h, $20
    cpl
    daa
    db $10
    ld d, $17
    push de
    rst $28
    ld de, $e0ff
    cp a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
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

Call_06f_7dd5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06f_7f02:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06f_7fe0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06f_7fff:
    rst $38
