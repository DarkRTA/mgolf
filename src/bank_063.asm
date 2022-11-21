; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $063", ROMX[$4000], BANK[$63]

    ld c, $40
    add l
    ld c, b
    sub c
    ld d, d
    jr jr_063_4064

    ld h, $67
    inc c
    ld [hl], b
    ld bc, $167a
    ld b, b
    xor e
    ld b, e
    inc bc
    ld c, b
    ld e, $48
    cp a
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $fa
    rst $20
    ld c, $07
    ld c, $4d
    ld c, l
    ld hl, sp-$1d
    db $fc
    jp hl


    db $ec
    db $e3
    sub $eb
    ret nc

    push hl
    add b
    cp $ea
    call nz, $eee0
    pop hl
    ret nz

    jp hl


    sbc $e7
    db $d3
    db $ed
    pop af
    ldh a, [rKEY1]
    ld [de], a
    sub [hl]
    and $0d
    push af
    ldh [$f2], a
    ldh [$2d], a
    ld a, [hl]
    jp hl


    ret nz

    ldh a, [rSCX]
    jp hl


    call c, $e344
    add b
    db $e3
    dec c
    ld l, l
    dec hl
    rst $38
    ld [c], a
    ld c, l
    dec l
    ldh a, [$d1]
    db $ec
    dec a

jr_063_405d:
    db $ed
    add c
    db $ec
    inc b

Jump_063_4061:
    db $e4
    ld l, l
    ld c, e

Call_063_4064:
jr_063_4064:
    ld c, e

jr_063_4065:
    dec hl
    adc e
    dec hl
    dec c
    cp l
    pop hl
    dec l
    jr c, jr_063_405d

    ld b, c
    ld sp, hl
    nop
    db $e4
    ld c, e
    ld bc, $fd4b
    push hl
    ld a, $e2
    add $f9
    add b
    res 2, [hl]
    call nz, $e2c0
    cp $e0
    ld [$e0b7], sp
    ld a, a
    ldh [rOCPS], a
    jp nz, $f72d

    db $e3
    add b
    rst $18
    ld l, $c0
    ld b, c
    ldh [rNR23], a
    cp [hl]
    push hl
    ld a, a
    pop hl
    ld e, d
    jp nz, Jump_000_2d2d

    push af
    res 0, b
    db $d3
    jr jr_063_4065

    nop
    add h
    push hl
    ld a, [hl]
    ld [c], a
    cp a
    pop hl
    db $dd
    and b
    ret nz

    di
    or b

Jump_063_40ae:
    pop de
    ret nz

    db $e4
    ld b, c
    db $e3
    ld h, b
    ld a, $e2
    and d
    res 0, b
    push de
    add d
    and a
    add d
    ret nz

    ld a, [bc]
    dec bc
    dec a
    and $d0
    inc a
    pop bc
    ld h, [hl]
    and l
    or [hl]
    db $db
    add d
    and h
    ld l, l
    pop bc
    ldh [$2a], a
    ld a, [hl+]
    add e
    ld a, [bc]
    ld a, [hl+]
    cp l
    pop hl
    db $76
    pop bc
    rlca
    ld a, [$ad00]
    add d
    jp nz, $070a

    ld c, d
    ld a, [hl+]
    ld a, [bc]
    ret nz

    ld [c], a
    ld [hl], $c2
    db $fc
    and [hl]
    ld l, h
    and c
    add b
    jp c, $f0da

    add d
    dec c
    ld b, d
    ldh [$0a], a
    dec bc
    rst $38
    ldh [$2b], a
    dec bc
    add b
    add hl, sp
    jp $a8fc


    rra
    and d
    ld [hl], e
    ld hl, sp-$7e
    add d
    add c
    ldh [$c0], a
    ld [c], a
    dec bc
    ldh [$3f], a
    db $e3
    db $fc
    and l
    ld a, [hl]
    db $e4
    add b
    ret c

    ld [hl], b
    add e
    dec c
    ld c, e
    ld l, e
    ld c, $80
    ld [c], a
    ld c, e
    ld l, e
    ld c, e
    cp $c2
    ld a, e
    and b
    ld a, d
    and [hl]
    add b
    db $db
    ld a, $00
    and $2b
    ld a, [bc]
    ld c, e
    dec bc
    ld l, e
    ld a, [hl]
    and b
    ret nz

    db $e4
    ld [$a5ba], sp
    ld b, e
    db $fc
    add b
    and $4b
    add c
    pop bc
    ccf
    pop bc
    ccf
    push hl
    db $fc
    jp z, Jump_000_000e

    cp l
    ld c, l
    dec l
    ld c, e
    ld b, d
    pop bc
    ld a, l
    add b
    cp e
    call nz, $88f8
    sbc h
    ld a, d
    ld l, l
    cp e
    db $d3
    dec c
    dec l
    ld c, e
    add b
    jp $c37a


    dec hl
    ld hl, $6f0b
    add b
    or $65
    dec [hl]
    sbc d
    sbc [hl]
    push hl
    ld c, l
    dec b
    ldh [rIE], a
    jp hl


    ld b, b
    ld a, e
    jp nz, Jump_063_717a

    nop
    or e
    ccf
    add c
    ld b, b
    and b
    cp l
    and $2b
    ret nz

    db $e4
    nop
    ld a, d
    ld [hl], b
    add d

Call_063_417e:
    ld l, h
    sub [hl]
    ld b, l
    ld [bc], a
    add d
    ret nz

    add sp, -$09

Call_063_4186:
    ld h, e
    ccf
    sbc a
    cp $86
    ld [bc], a
    ccf
    pop hl
    ld l, e
    ret nz

    db $eb
    add b
    call c, $e682
    ld b, b
    ld h, d
    ret nz

    ld [c], a
    ei
    push bc
    nop
    ld b, b
    push hl
    ld [bc], a

jr_063_419f:
    and d
    nop
    ld d, e
    daa
    xor d
    ret nz

    db $e4
    ld a, a
    rst $00
    nop
    and $8b
    ld d, b
    jr nz, jr_063_41b4

    ld b, [hl]
    add [hl]
    daa
    ld b, b
    ld h, d
    add d

jr_063_41b4:
    and b
    ld a, a
    db $e3
    dec hl
    pop bc
    ret nz

    nop
    push hl
    nop
    ld c, e
    ld c, l
    nop

Call_063_41c0:
    ld c, e
    nop
    add a
    ld bc, $bec4
    and d
    ld hl, sp-$80
    nop
    and $00
    ld e, a
    call nz, $a300
    ld c, b
    call nz, $f90b
    add b
    ld [hl], a
    ld h, b
    ld b, b
    pop bc
    dec c
    ld l, l
    jr nc, jr_063_425b

    ld a, a
    add d
    ld b, [hl]
    ld [$7cc5], sp
    ld h, b
    dec bc
    ld c, e
    or a
    jr nz, jr_063_4225

    add d
    sub b
    nop
    cp e
    nop
    push hl
    add d
    ld b, d
    add e
    and l
    ld a, [bc]
    ld a, [hl-]
    ld h, c
    ret nz

    ld [c], a
    dec c
    ld [hl], c
    ld l, l
    ld a, d
    ld b, h
    add b
    db $dd
    ret nz

    jp hl


    dec hl
    dec bc
    ld a, [bc]
    rst $38
    ldh [$c1], a
    ld l, e
    pop bc
    db $e4
    nop
    cp d
    add [hl]
    ld [bc], a
    add d
    ld b, l
    inc bc
    and [hl]
    dec hl
    ld l, e
    ld [bc], a
    ld a, b
    add b
    ld l, e
    cp a
    ldh [$7a], a
    dec h
    cp b
    jr nz, jr_063_419f

    call c, $ea40
    ld b, d
    add d
    rlca

jr_063_4225:
    dec c
    ld l, e
    dec hl
    ld b, d
    ldh [$7a], a
    inc d
    add d
    rst $08
    ret nz

    pop af
    add d
    ld a, a
    ld [bc], a
    cp l
    ld c, b
    dec l
    ld b, e
    adc d
    ld b, c
    ldh [$c0], a
    ldh [rP1], a
    ld e, a
    nop
    and a
    ld b, d
    nop
    nop
    add $84
    ld a, a
    ld h, c
    ld bc, $04e1
    push bc
    add b
    jr jr_063_4275

    ld c, b
    ret nz

    pop hl
    pop bc
    ld h, e
    inc bc
    dec hl
    dec hl
    db $fd
    ld hl, $e141
    add [hl]

jr_063_425b:
    rra
    nop
    and e
    nop
    ld b, e
    cp a
    and $20
    ld a, e
    ld b, c
    ld bc, $66e3
    ld b, c
    add b
    inc e
    add d
    adc c
    ld l, e
    push bc
    add h
    ld bc, $20e4
    ld h, [hl]
    ld l, b

jr_063_4275:
    nop

jr_063_4276:
    cp c
    nop
    ld b, e
    cp a
    pop bc
    db $fd
    add [hl]
    ld c, e
    inc a
    ldh [rLCDC], a
    ld [c], a
    ldh [rSCY], a
    ld b, $7e
    ld e, $02
    ld h, c
    db $fc
    nop
    inc b
    ld h, l
    dec c
    dec hl
    dec hl
    nop
    add h
    ld b, [hl]
    ld hl, sp-$30
    nop
    ld c, a
    ret nz

    db $e3
    ld a, [hl]
    add l
    ret nz

    pop hl
    nop
    jp $ef43


    nop
    nop
    ld d, h
    add c
    ld h, l
    ld a, h
    push bc
    add h
    ld h, l
    jp Jump_000_00bf


    inc hl
    add c
    ld h, d
    jp Jump_000_0043


    ld a, e
    jr nz, jr_063_4276

    db $e4
    inc b
    ld h, b
    add b
    call c, $869e
    ld c, a
    ld [hl+], a
    ret nz

    db $e4
    ld bc, $00e1
    call nz, $5f62
    inc b
    add b

jr_063_42c9:
    ld a, b
    nop
    ret


    inc a
    nop
    ld b, d
    ld b, c
    db $fc
    nop
    ret nz

    pop hl
    nop
    inc b
    daa
    dec a
    rst $38
    ret nz

    ld bc, $e10c
    jp $ff03


    ld [c], a

Jump_063_42e1:
    add d
    add [hl]
    add b
    jp c, $1c1a

    add $0d
    adc [hl]
    pop bc
    ld c, e
    dec hl
    add b
    ld [c], a
    cp a
    ld [c], a
    add d
    add [hl]
    inc c
    nop
    cp b
    or d
    ld c, b
    dec c
    ld l, l
    adc l
    ldh [$c0], a
    ldh [rLCDC], a
    ld b, c

Call_063_4300:
    ld b, d
    rst $00
    nop
    ret


    ld e, [hl]
    inc e
    db $e4
    jr jr_063_42c9

    ld c, l
    pop hl
    adc b
    and b
    add [hl]
    ld b, b
    ld b, h
    ldh [rSC], a
    jp RST_10


    cp a
    nop
    ld c, b
    ld a, [bc]
    db $e3
    ld a, [$4de7]
    nop
    cp a
    nop
    ld c, c
    ld b, c
    ldh [rP1], a
    cp [hl]
    db $ec
    nop
    cp a

jr_063_4328:
    ld l, [hl]
    add hl, hl
    adc [hl]
    pop bc
    ld a, l
    rst $20
    ld b, c
    and e
    add b
    rst $18
    nop
    push hl
    inc b
    ret nz

    db $e3
    pop bc
    add [hl]
    dec bc
    rst $38
    push bc
    nop
    cp h
    add d
    and a
    ld b, c
    db $e3
    cp $26
    nop
    rst $38
    jp $be00


    nop
    rst $00
    call z, $c0a3
    ld [$41c0], a
    nop
    cp a
    add d
    rst $00
    inc e
    dec c
    add b
    ld b, a
    ldh [$0b], a
    dec bc
    dec l
    nop
    add h
    add b
    ld b, e
    jr nz, jr_063_4328

    nop
    add b
    dec d
    add d
    ld h, l
    ret nz

    db $e4
    ret nz

    ld l, b
    ld b, d
    inc hl
    add d
    rst $18
    add b
    add $00
    db $ec
    cp h
    add b
    ld e, c
    nop
    xor [hl]
    ld c, l

Call_063_437a:
    dec c
    dec c
    dec l
    ld b, e
    and b
    ld l, e
    ld a, c
    dec bc
    ld a, [hl]
    add b
    cp c
    ld b, b
    dec hl

Call_063_4387:
    dec c
    dec l
    dec l
    ld b, d
    ld hl, $0000
    cp a
    ld l, h
    ld b, a
    cp l
    ldh [$fe], a
    rst $20
    add [hl]
    ld b, $00
    cp a
    db $fc
    rlca
    db $fc
    db $eb
    nop
    add d
    daa
    add b
    ld a, a
    sub [hl]
    ret


    jp z, Jump_000_00ce

    ld c, [hl]
    nop
    nop
    nop
    cp a
    db $dd
    sbc $a0
    and b
    and b
    call c, $e7fa
    ret c

    rra
    reti


    and b
    and b
    jp nc, $fcd3

    db $eb
    db $ec
    pop hl
    add sp, -$1f
    db $fc
    sub $eb
    jp z, $e2e3

    db $e3
    db $e4
    rst $18
    ldh [$e1], a
    cp $fa
    and $a0
    jp c, $d6db

    rst $10
    call nc, $9bd5
    and b
    and b
    db $fc
    rst $20
    ret nc

    pop de
    db $ec
    pop hl
    add sp, -$1f
    and b
    db $fc
    sub $e9
    jp z, $e8e4

    jp hl


    ld [$e6e5], a
    rst $20
    ld e, b
    ld a, [$73e6]
    ldh [$96], a
    db $e4
    sbc a
    sbc l
    rst $38
    ld [c], a
    sbc a
    ld a, [hl]
    jp hl


    ldh [$d6], a
    jp hl


    jp z, $43e4

    jp hl


    sbc [hl]
    ldh [$fc], a
    ldh [$da], a
    db $db
    ret nc

    cp a
    pop de
    and b
    sbc a
    and d
    sbc h
    ld b, [hl]
    rst $38
    ld [c], a
    sbc h
    pop bc
    sbc a
    ld a, [hl]
    rst $20
    ld b, e
    xor $07
    ldh [rSCX], a
    jp hl


    jr @-$19

    jp nc, Jump_000_15d3

Jump_063_4422:
    sbc a
    jp nz, $aee2

    cp l
    pop hl
    and c
    db $fc
    push bc
    ld b, e
    ldh a, [rTAC]
    ldh [$ee], a
    ld b, e
    jp hl


    jp c, $a0db

    nop
    ldh [$d0], a
    pop de
    call nc, $d56b
    sbc [hl]
    jp $afe2


    cp l
    pop hl
    sbc h
    sbc a
    db $fc
    call nz, Call_063_4300
    ldh a, [rTAC]
    ldh [$6d], a
    xor $82
    jp nz, $e0c0

    jp Jump_000_3ee0


    ldh [$bd], a
    ldh [rSB], a
    sbc [hl]
    db $ec
    db $e4
    add b
    rst $18
    add b
    pop bc
    add d
    jp nz, $e841

    cp $c1
    ld [hl], d
    pop bc
    inc b
    db $e4
    pop bc
    add b
    rst $18
    ld [$c318], a
    ld b, c
    ldh [$84], a
    db $e3
    ei
    jp nz, $e1bf

    nop
    nop
    jp $dc80


    add d
    add $c0
    db $e3
    cp [hl]
    jp $e23e


    db $fc
    and e
    ld h, d
    pop bc
    cp b
    add b
    reti


    add d
    and [hl]
    pop bc
    ret nz

    ld b, l
    ld d, b
    ld b, l
    ld a, l
    and $9c
    pop bc
    sbc a
    ld a, d
    and a
    add b
    reti


    add d
    pop bc
    add d
    and c
    ld b, d
    ret nz

    ld b, l

Jump_063_44a2:
    ld b, a
    ld c, a
    ld e, l
    ld c, c
    ld c, [hl]
    ld c, b
    cp l
    pop hl
    add hl, sp
    pop bc
    sbc [hl]
    ld a, d
    and a
    db $fc
    add b
    db $dd
    nop
    and c
    and c
    ld b, [hl]
    ld b, [hl]
    ld d, c
    ld e, [hl]
    ld d, h
    rrca
    ld e, c
    ld e, c
    ld d, e
    ld b, h
    add hl, sp
    call nz, $a6fc
    ld a, d
    rst $08
    nop
    xor a
    rst $30
    ret nc

    pop de
    sbc [hl]
    add c
    ldh [rRP], a
    ld a, [hl+]
    jr nz, @+$22

    add a
    jr nz, @+$2c

    ld b, l
    add hl, sp
    jp $a6fc


    ld a, d
    rst $08
    nop
    xor a
    jp nc, $d3eb

    sbc [hl]
    add c
    ldh [$5a], a
    pop bc
    ldh [rNR41], a
    jr nz, @+$44

    ret nz

    or a
    call nz, $a5fc
    ld a, d
    rst $08
    jp Jump_000_00ac


    jp nz, $e080

    ld d, d
    ld d, l
    ld [bc], a
    add c
    ldh [$2f], a
    add b
    ldh [$3d], a
    call nz, $80b8
    db $76
    add e
    add b
    db $db
    nop
    add e
    ld a, [hl]
    ld b, d
    and b
    ld b, h
    ld d, b
    ld a, [hl+]
    jr nz, jr_063_453a

    ld b, e
    ret nz

    jp Jump_063_7540


jr_063_4515:
    and d
    cp d
    and c
    add sp, $61
    add b
    db $db
    nop
    and e
    ld [bc], a
    and b
    ld c, d
    add c
    ret nz

    sbc b
    jp nz, $fec0

    add sp, -$08
    add d
    sub $d7
    nop
    cp a
    add d
    add d
    ld d, l
    rst $38
    ld d, h
    ld e, c
    ld d, e
    ld b, l
    ld b, [hl]
    ld b, l
    scf
    dec a

jr_063_453a:
    rlca
    dec a
    dec a
    scf
    rst $30
    and c
    ld [hl], l
    add b
    ld hl, sp-$7f
    ld a, d
    ld l, a
    or b
    ld l, l
    or $00
    and e
    sbc l
    sbc h
    dec b
    jp nz, Jump_063_6239

    ld h, e
    ld h, h
    ld h, a
    ld h, l
    ld h, [hl]
    jr c, jr_063_4515

    ldh [$75], a
    add b
    sbc h
    sbc a
    ld a, d
    and h
    db $fc
    nop

Call_063_4561:
    cp a
    cp $85
    ld a, $69
    dec [hl]
    dec [hl]
    dec [hl]
    ld [hl], a
    ld [bc], a
    cp l
    ldh [$39], a
    or $62
    db $f4
    ld b, h
    nop
    cp a
    cp l
    and d
    ret nz

    push hl
    cp l
    ldh [$83], a
    ld l, d
    ld a, $3b
    jp nz, $817a

    ld a, d
    ld l, l
    nop
    or d
    add b
    and $6b
    add c
    ld l, h
    ret nz

    push hl
    rst $38
    jp $bb00


    sbc d
    ld b, e
    adc [hl]
    ld b, c
    ld b, b
    ld h, e
    ld b, [hl]
    rlca
    add hl, sp
    ld l, [hl]
    ld l, a
    cp a
    ld [c], a
    add b
    ldh [$b7], a
    ld h, c
    ld a, d
    ld [hl], c
    add [hl]
    ld l, c
    inc c

Call_063_45a6:
    nop
    ld h, a
    ccf
    add h
    ld b, l
    ld [hl], $bf
    db $e3
    ld b, b
    db $e4
    ld a, d
    ld [hl], c
    jp $d8a9


    jr jr_063_45fa

    nop
    ld h, h
    add c
    ld b, d
    ld b, h
    inc a
    ld a, [hl]
    pop hl
    ld l, h

Call_063_45c0:
    ld l, l
    ret nz

Call_063_45c2:
    nop
    rst $20
    nop
    or [hl]
    ld hl, $8262
    inc h
    ld b, c
    db $e4
    ld a, a
    pop hl
    dec [hl]
    ld l, [hl]
    rra
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld l, [hl]
    add hl, sp
    nop
    and $00
    cp c
    add d
    push hl
    ld l, h
    nop
    add c
    add $a4
    ld b, h
    inc a
    ld a, $c0
    dec sp
    ld [hl], $78

jr_063_45e8:
    add d
    ldh a, [rP1]
    ld [c], a
    nop
    ld e, l
    add d
    ld b, h
    add $a3
    add hl, sp
    ld b, l
    ld b, e
    ld [hl], $07
    dec [hl]
    ld [hl], $3f

jr_063_45fa:
    ld hl, sp-$7d
    ld a, d
    ld h, e
    nop
    ld e, e
    add d
    ld b, [hl]
    add $a2
    ccf
    ld l, d
    ld a, [hl-]
    ld b, h
    ld e, a
    ld c, d
    ccf
    cp e
    ld h, e
    or a
    ld hl, $00f0
    cp h
    inc b
    dec h
    call nz, $c0a1
    db $e3
    dec [hl]
    ld b, b
    ld d, d
    ld h, b
    add e
    ld c, h
    ld b, a
    cp e
    ld h, e
    ld a, d
    ld b, a
    add b
    sub $82
    ld c, b
    ld b, [hl]
    and d
    ld [hl], l
    ld a, a

jr_063_462b:
    ld h, [hl]
    ld [hl], $45
    ld d, d
    ld h, c
    ld h, c
    ld e, h
    ld a, [$5825]
    nop
    cp d
    add d
    rst $00
    ret nz

    and $35
    ld l, b
    cp a
    pop hl
    ld d, d
    cp d
    ld b, d
    jr nz, jr_063_46c2

    ld l, b
    add b
    ld d, $00
    db $e4
    ret nz

    rst $20
    cp a
    ld [c], a
    ld b, l
    cp b
    ld bc, $00fa
    db $10
    add sp, $01
    nop
    cp a
    add d
    inc h
    add $86
    inc a
    ld a, h
    ld b, b
    ei
    inc bc
    ld a, d
    inc de
    stop
    xor l
    add d
    jr nz, jr_063_45e8

    jp nz, $85c6

    dec [hl]
    cp l
    ld b, e
    inc b
    and b
    add d
    db $e3
    ld a, b
    nop
    cp l
    nop
    push bc
    add $83
    ld l, h
    ld l, l
    dec [hl]
    ld b, b
    ld a, [hl]
    ld a, [hl+]

jr_063_467f:
    ld d, b

Call_063_4680:
    add b
    rla
    nop
    and h
    jr jr_063_46c7

    ld b, c
    ld hl, $4836
    and b
    ld [hl], c
    ld b, [hl]
    and b
    nop
    ld b, b
    ldh [rLY], a
    ld h, d
    inc b
    db $e3
    add b
    jr jr_063_4698

jr_063_4698:
    xor b
    jp Jump_000_0661


Jump_063_469c:
    and b
    call nz, Call_000_0062

Jump_063_46a0:
    ld b, l
    and e
    ld a, a
    jr nz, jr_063_462b

    adc $00
    or e
    nop
    ld b, e
    cp a
    and $c1
    pop bc
    ret nz

    ld [hl+], a
    jr nz, @-$7c

    ld h, $00
    cp h
    ld a, [hl]
    ld h, c

jr_063_46b7:
    add c
    add e
    push bc
    add d
    dec [hl]
    ld b, $62
    ld a, $00
    ld [hl], b
    add d

jr_063_46c2:
    dec h
    nop
    cp e
    nop
    ld b, e

jr_063_46c7:
    ld b, d
    ld h, c
    xor [hl]
    ld b, [hl]
    add hl, sp
    inc b
    ld h, d
    pop bc
    ld a, [hl-]
    ld bc, $04c4
    jp $8c43


    nop
    ld d, h
    ld [bc], a
    ld h, c
    xor a
    ld b, [hl]
    ld bc, $c43e
    ld b, d
    nop
    ret nz

    cp l
    ld bc, $8504
    add b
    rst $10
    nop
    ld c, c
    ld b, d
    ld b, d
    nop
    ret nz

    db $e3
    nop
    rst $00
    inc b
    jr nz, jr_063_46b7

    ld c, l
    nop
    ld d, h
    add c
    ld h, e
    ld b, b
    and $04
    ld h, a
    jr c, jr_063_467f

    call c, $857e
    jp $ae21


    ld b, [hl]
    ld b, d
    inc b
    ld b, d
    ld b, [hl]
    ld h, d
    ldh a, [rP1]
    db $e4
    jp Jump_000_004e


    ld d, h
    add e
    ld hl, $46af
    ld b, l
    ld a, [hl-]
    nop
    pop bc
    jp $e401


    ld h, [hl]
    inc h
    nop
    ld e, a
    nop
    ld h, d
    rst $38
    push bc
    add a
    ld [hl+], a
    add d
    add e
    nop
    nop
    jp Jump_063_5f00


    ld b, d
    ld h, $3f
    pop bc
    ld bc, $81c3
    and b
    nop
    cp a
    nop
    ld b, a
    nop
    ld b, c
    ld b, c
    dec bc
    and b
    ld b, e
    ld b, b
    add a
    ld b, b
    inc b
    ld h, c
    ld b, l
    nop
    nop
    cp a
    nop
    ld b, a
    inc b
    nop
    db $e3
    cp e
    add b
    ccf
    add l
    ld h, b
    ld bc, $00e5
    cp a
    nop
    ld b, [hl]
    add d
    dec h
    nop
    ld sp, hl
    and $00
    add sp, $00
    ld e, a
    add d
    daa
    cp c
    rst $20
    nop
    cp a
    nop
    ld c, b
    ld bc, $e0c3
    ld a, h
    and $ff
    jp $bf00


    nop
    ld b, [hl]
    ld bc, $43c4
    ld b, c
    ld b, e
    ldh [$fd], a
    ldh [rP1], a
    call z, Call_063_7a80
    add d
    rst $00
    ld a, a
    ld h, c
    dec sp
    dec [hl]
    dec sp
    ret nz

    db $fd
    ldh [rTIMA], a
    jr nz, jr_063_47d2

    ld [hl+], a
    nop
    cp [hl]
    add d
    ld l, d
    ld b, [hl]
    ld bc, $64a4
    jp nz, $e0ff

    and l
    cp a
    ld h, l
    nop
    cp a
    nop
    ld b, l
    ld [bc], a
    and l
    ld l, c
    and e
    daa
    dec [hl]
    dec [hl]
    and e
    add b
    ld b, c
    ld [bc], a
    ld hl, $00a1
    and e
    ld a, [hl]
    pop bc
    inc b
    nop
    cp l
    jp nz, $afa1

    ret nz

    pop hl
    ld b, b
    ld b, l
    ld b, l
    nop
    inc bc
    ld hl, $a362
    call c, Call_063_5f00
    ld [bc], a
    add e
    ld b, h
    inc a
    ld l, e
    add b
    ld b, b
    ld [hl], c
    ld l, l
    ld [hl], b
    rst $38
    ld b, e
    nop

jr_063_47d2:
    ld h, l
    nop
    ld e, a
    nop
    pop bc
    sbc l
    sbc l
    sbc h
    ret nz

    ret


    adc a
    sbc h
    sbc l
    sbc l
    sbc a
    nop
    cp a
    nop
    ld c, b
    cp [hl]
    ld b, b
    sbc l
    nop
    rst $38
    add sp, -$7a
    ld [bc], a
    nop
    cp a
    ld a, [hl]
    add hl, hl
    cp $ed
    add [hl]
    ld de, $7180
    ld a, [hl]
    rst $20
    nop
    db $fc
    db $eb
    add [hl]
    ld de, $4387
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
    inc e
    dec b
    ld [bc], a
    ld bc, $0619
    ld [bc], a
    ld [bc], a
    rra
    ld b, $02
    inc bc
    dec de
    ld [$0402], sp
    ld hl, $0209
    dec b
    ld e, $0a
    ld [bc], a
    ld b, $23
    inc c
    ld [bc], a
    rlca
    jr nz, jr_063_484b

    ld [bc], a
    ld [$1024], sp
    ld [bc], a
    add hl, bc
    daa
    inc de
    ld [bc], a
    ld a, [bc]
    jr z, jr_063_4861

    ld [bc], a

jr_063_484b:
    dec bc
    jr z, jr_063_4869

    ld [bc], a
    inc c

Jump_063_4850:
    dec h
    ld e, $02
    dec c
    inc h
    ld [hl+], a
    ld [bc], a
    ld c, $23
    ld h, $02
    rrca
    jr jr_063_4888

    ld [bc], a
    db $10
    inc hl

jr_063_4861:
    ld a, [hl+]
    ld [bc], a
    ld de, $2e18
    ld [bc], a
    ld [de], a
    ld [hl+], a

jr_063_4869:
    ld l, $02
    inc de
    jr jr_063_48a0

    ld [bc], a
    inc d
    ld hl, $0232
    dec d
    rla
    ld [hl], $02
    ld d, $22
    ld [hl], $02
    rla
    ld d, $3a
    ld [bc], a
    jr jr_063_48a4

    ld a, [hl-]
    rst $38
    rst $38
    rst $38
    adc l
    ld c, b
    and h

jr_063_4888:
    ld c, h
    ld a, a
    ld d, c
    sbc d
    ld d, c
    cp a
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $fa
    xor $4d
    rlca
    ld c, $0e
    ld c, l
    db $fc
    db $e4
    pop hl
    pop hl
    db $fc

jr_063_48a0:
    push hl
    ldh a, [$e3]
    ret nc

jr_063_48a4:
    jp hl


    inc b
    push bc
    ldh [$fd], a
    rst $28
    ld l, l
    ld [$d5f2], a
    db $e4
    call $b8f3
    ld [$f482], a
    nop
    ld a, [hl]
    ld [c], a
    adc l
    db $ec
    ld b, e
    pop af
    adc [hl]
    xor $5a
    ld [$e530], a
    sub $f1
    xor [hl]
    push hl
    adc [hl]
    ld [$0deb], sp
    ld c, l
    dec l
    db $fc
    call z, $fa20
    db $ec
    call z, Call_000_1f0d
    ld l, l
    ld c, e
    ld c, e
    ld c, l
    dec l
    call nc, $80d6
    jp nc, $c98a

    cp $c1
    ldh [$0d], a
    ld c, e
    ld c, l
    ld c, l
    ld c, l
    dec l
    dec l
    ldh a, [rPCM12]
    add $80
    db $dd
    ld l, d
    call nz, $c246
    ld l, l
    ld c, e
    dec c
    dec hl
    rlca
    dec c
    dec hl
    ld c, e
    rst $38
    ldh [$3a], a
    ld [c], a
    rst $38
    rst $38
    di
    and c
    jr @-$3a

    inc b
    ld hl, sp-$60
    add d
    pop hl
    dec hl
    rst $38
    db $e4
    ld sp, hl
    ret nz

    db $fc
    and c
    add b
    sbc $ea
    and e
    nop
    xor b
    and b
    ld b, $e0
    add a
    ldh [$c1], a
    ld [c], a
    cp e
    pop hl
    ld a, [hl]
    push hl
    scf
    ldh [$80], a
    jp c, $8280

    push hl
    ld b, l
    pop hl
    inc bc
    pop hl
    ld a, [hl]
    pop hl
    ld a, e
    ld [c], a
    ld [hl], a
    pop bc
    ld d, e
    and b
    dec l
    add h
    or d
    ret nz

    add b
    rst $18
    dec c
    rst $00
    ld [c], a
    jp $c3c1


    db $e3
    ld a, [$0dc0]
    and c
    ld c, e
    add $f0
    ld b, e
    db $ed
    inc c
    and a
    ld b, [hl]
    ldh [$0b], a
    ccf
    ld [c], a
    dec bc
    inc b
    cp $e0
    dec a
    pop hl
    ld c, e
    ret nz

    pop hl
    add sp, -$7f
    ld [hl], h
    pop bc
    nop
    or d
    add d
    xor b
    ld l, [hl]
    ret nz

    db $e3
    dec hl
    ld a, [bc]
    ld a, [hl+]
    cp d
    ldh [$0b], a
    dec bc
    cp e
    pop bc
    add a
    dec c
    ld c, e
    dec c
    and $86
    dec a
    db $f4
    add d
    add sp, -$80
    pop hl
    ld c, e
    ld a, e
    dec c
    ld a, [bc]
    ret nz

    ldh [$0b], a
    dec bc
    ld l, e
    ld l, e
    call nz, Call_000_01e0
    dec hl
    db $f4
    and b
    ld d, e
    add d
    nop
    pop hl
    db $fd
    push bc
    ld b, e
    adc c
    ld [hl], b
    adc c
    add d
    pop bc
    sub [hl]
    add $c1
    ld l, e
    dec bc
    dec a
    ldh [rOCPD], a
    cp d
    ldh [$7e], a
    ldh [rWX], a
    ldh a, [$be]
    and d
    ld d, h
    pop af
    db $e4
    adc l
    add d
    call nz, $2b4b
    ld a, [bc]
    ld c, d
    ld a, $03
    ret nz

    ld l, e
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld a, [$bea0]
    and e
    db $e4
    nop
    cp c
    add h
    add $4d
    rst $00
    and c

jr_063_49c4:
    pop bc
    ldh [$0a], a
    ld a, [bc]
    dec bc
    add hl, bc
    dec hl
    ld b, h
    pop hl
    cp d
    and d
    ld c, e
    or a
    add b
    nop
    cp l
    adc [hl]
    ld h, e
    add h
    ld [c], a
    inc bc
    dec hl
    ld c, e
    ld c, c
    pop hl
    push bc
    ret nz

    ld b, a
    pop bc
    db $fd
    and d
    ld b, b
    ret nz

    nop
    cp h
    jr nc, @+$66

    add d
    ld b, $c2
    ld a, [bc]
    pop bc
    inc bc
    ldh [$0b], a
    dec bc
    ret


    ret nz

    nop
    and b
    ret nz

    cp e
    pop hl
    ld a, [hl]
    and b
    add $ba
    add [hl]
    ld h, e
    add [hl]
    jp nz, $c251

    ld a, [bc]
    ld c, d
    nop
    ret nz

    pop hl
    push bc
    ldh [$7f], a
    db $e4
    ld [hl], a
    add b
    ld h, $60
    nop
    cp h
    add [hl]
    and e
    call z, $8781
    ld a, [bc]
    ld a, [bc]
    ld c, d
    ld a, a
    pop hl
    add l
    pop hl
    add [hl]
    and b
    jr c, jr_063_49c4

    ld l, l
    ld d, b
    and $85
    ld d, [hl]
    ld [hl], d
    add [hl]
    xor b
    push bc
    jp nz, Jump_000_052a

    jp nz, Jump_000_080d

    add b
    nop
    cp e
    add b
    ei
    ld h, b
    ld bc, $1ac2
    jp z, Jump_063_549e

    adc [hl]
    ld h, b
    add [hl]
    pop bc
    ld [bc], a
    pop hl
    add c
    ld l, e
    ld hl, $c740
    ld h, b
    ld a, a
    add b
    jp nz, $80a5

    db $76
    adc [hl]
    ld l, c
    ld c, e
    ld bc, $c04a
    db $e3
    ret z

    ret nz

    add c
    pop hl
    cp l
    ld h, b
    add h
    ld [c], a
    db $fc
    jr z, jr_063_4a61

jr_063_4a61:
    ld c, l
    ld [hl+], a
    ld [$6da7], sp
    ld d, $a1
    dec b
    ret nz

    jp Jump_000_2dc3


    ld c, b
    ld h, b
    ld b, [hl]
    and d
    nop
    jp nc, Jump_063_5b2b

    ld c, a
    sub d
    dec h
    pop bc
    ldh [rVBK], a
    ld h, b
    adc l
    add b
    add h
    jp nz, $e0bf

    nop
    add e
    db $e4
    ld l, [hl]
    inc l
    nop
    ld c, a
    add h
    rst $00
    ld c, [hl]
    add c
    adc d
    add d
    jp nz, $c9e3

    add c
    nop
    add a
    ld d, [hl]
    inc c
    ld c, h
    inc b
    jp $8011


    jp nz, $c4c2

    ret nz

    adc d
    ld b, b
    add d
    rst $20
    ld [$5500], sp
    ld a, [bc]
    adc h
    add e
    db $e3
    dec bc
    ld c, h
    jp nz, $e13f

    adc b
    ld e, d
    inc c
    ld c, h
    ld bc, $d06d
    ld b, d
    ld b, h
    jp nz, $a045

    ld c, b
    and b
    inc c
    and h
    ld l, d

Call_063_4ac1:
    add hl, hl
    add b
    ld de, $7608
    inc bc
    sbc $60
    ld d, b

jr_063_4aca:
    add b
    ld l, e
    ret nz

    db $e4
    adc c
    ld h, b
    call nz, $0821
    ld e, a
    nop
    inc c
    ld b, a
    ld [de], a
    ld b, d
    ret nz

    jp hl


    cp l
    ld h, b
    ld [$dc43], sp
    add $80
    db $10
    ld l, h
    and l
    nop
    ld d, [hl]
    and d
    ld b, c
    and $7f
    db $e4
    ld c, c
    ld b, d
    dec c
    ld [hl], $6a
    ld a, [bc]
    sub [hl]
    nop
    sub c
    ld hl, $6b01
    ld b, a
    add d
    ccf
    db $e4
    call nz, $ce21
    inc hl
    ld [$8cb9], sp
    dec h
    ld d, l
    nop
    nop
    adc a
    jr nz, jr_063_4aca

    rst $20
    inc bc
    ld h, b
    pop af
    ret nz

    adc [hl]
    inc h
    add b
    ld a, [de]
    adc d
    inc h
    ld a, [hl]
    ldh [rSC], a
    ld c, $60
    ld c, e
    ret z

    ld h, b
    db $fd
    ld [c], a
    ld [bc], a
    inc hl
    ld b, $21
    call c, Call_000_06a3
    and a
    inc a
    nop
    or e
    ld c, c
    ld b, d
    dec hl
    ld c, e
    ld l, e
    ld c, e
    cp [hl]
    ldh [$ba], a
    and c
    nop
    add d
    ld [bc], a
    cp a
    db $e4
    adc e
    ld d, h
    nop
    xor h
    ld d, b
    ld hl, $e47d
    ld b, c
    ld h, d
    push bc
    ld bc, $0d01
    ld a, [hl]
    and $4b
    ld c, l
    or [hl]
    ld l, a
    cp l
    pop bc
    adc b
    ld bc, $e4bf
    ld b, e
    ld bc, $3d00
    ld bc, $a4fa
    ld d, b
    ld [hl], c
    ld [$8247], sp
    ld [hl+], a

Call_063_4b60:
    ld a, h
    ret nz

    ld c, c
    ld [bc], a
    ld a, d
    jp nz, $c300

    ld [bc], a
    dec a
    ld [bc], a
    inc b
    ld e, c
    ld l, [hl]
    ld l, e
    cp a
    db $e3
    ld a, d
    jp nz, Jump_000_00c5

jr_063_4b75:
    ret nz

    jp hl


    nop
    nop
    cp a
    ld a, [hl]
    db $e3
    ld c, e
    ld h, c
    ei
    ld h, c
    ld b, b
    db $e4
    jp Jump_000_0402


    inc hl
    add b
    db $dd
    nop
    inc l
    ld b, $10
    ld b, c
    rst $38
    push bc
    jp $fc21


    ld h, [hl]
    ld a, c
    ld sp, hl
    ld hl, sp+$69
    ld a, c
    and l
    nop
    ld sp, $fc82
    ld l, c
    nop
    ld d, [hl]
    add b
    db $ec
    ld a, c
    and e
    ld a, [c]
    ld h, d
    ccf
    and c
    jr jr_063_4bf2

    nop
    nop
    ld d, h
    add d
    add hl, bc
    ld sp, hl
    ld b, d
    ld a, c
    and d
    ret nz

    rst $20
    db $fc
    ld c, c
    ld a, d
    db $db
    cp d
    ld b, c
    nop
    scf
    add d
    ld a, b
    jp nz, $a0bd

    db $fc
    ld l, d
    ld a, $0b
    jr nc, jr_063_4b75

    ld hl, sp-$7d
    adc e
    jp $f660


    add c
    ld a, a
    jp Jump_063_67fc


    nop
    or h
    ld a, [$4d8b]
    dec l
    cp a
    db $e4
    nop
    ld [hl], a
    ld h, l
    add b
    and l
    add b
    sub $7a
    jp z, $8179

    ld [$c2a2], sp
    push hl
    ld a, [hl-]
    ret nz

    nop
    ld a, d
    ld h, e
    ld a, [hl]
    add b
    add b

jr_063_4bf2:
    dec de
    sbc d
    add l
    ld a, [hl]
    pop hl
    ret nz

    ld [$89fe], a
    add b
    inc de
    jr c, jr_063_4c79

    add hl, bc
    cp a
    db $e4
    db $fd
    jr nz, jr_063_4c10

    dec bc
    dec l
    ld a, c
    add h

Jump_063_4c09:
    ld a, d
    ld a, a
    nop
    xor d
    ld a, [bc]
    db $fc
    pop bc

jr_063_4c10:
    rst $30
    ld b, [hl]
    ret nz

    db $e3
    nop
    cp c
    ld a, d
    inc b
    inc e
    ld h, $fc
    jp nz, Jump_000_0090

    and $3d
    and e
    ld a, [hl]
    ld b, a
    add b
    call nc, $e44d
    and a
    ld d, c
    ld bc, $376b
    ld c, e
    ld l, e
    dec bc
    add hl, sp
    add b
    ld l, e
    ld l, e
    ld a, $02
    ld c, d
    rst $38
    ld b, b
    ret nz

    pop hl
    sbc d
    rlca
    cp e
    and c
    push af
    ld h, d
    dec hl
    ld b, d
    nop
    add l
    dec l
    add b
    rst $18
    jr nz, jr_063_4cb6

    add l
    cp e
    and l
    db $fd
    add h
    nop
    ld e, c
    ld h, l
    jp hl


    ld l, l
    ld d, [hl]
    ldh [$7a], a
    ld [c], a
    nop
    dec a
    pop bc
    cp a
    push hl
    nop
    add h
    rst $38
    rst $38
    ret nz

    db $e3
    dec l
    inc hl
    cp b
    ld h, d
    ld a, d
    ld b, b
    nop
    add hl, sp
    nop
    nop
    add [hl]
    add b
    call c, $83c2
    call nc, $96c0
    ld h, d
    jp hl


    jr nz, @-$42

    pop hl

jr_063_4c79:
    inc b
    add h
    ld h, c
    db $e4
    ld h, e
    dec l
    or l
    inc h
    nop
    or h
    ccf
    push hl
    sub h
    jp nz, $8730

    ld b, $ca
    and a
    dec l
    dec l
    ret nz

    set 0, b
    push af
    ld a, d
    push bc
    ld hl, sp-$13
    ret nz

    db $ed
    nop
    ld b, e
    ldh a, [$74]
    ld l, h
    ld d, [hl]
    ld d, b
    add b
    ld l, b
    nop
    nop
    nop
    cp a
    db $dd
    sbc $a0
    and b
    and b
    call c, $eefa
    and b
    di
    ret c

    reti


    db $fc
    rst $30
    ret nc

    jp hl


    ld [c], a

jr_063_4cb6:
    db $e3
    db $e4
    rst $18
    ei
    ldh [$e1], a
    ld a, [$a0ec]
    sub $d7
    jp c, $a6db

    db $fc
    push hl
    ret nc

    pop de
    db $fc
    rst $20
    add sp, -$1f
    and b
    ret nc

    ld [$9fe8], a
    jp hl


    ld [$e6e5], a
    rst $20
    ld a, [$82ec]
    ld [$c1d2], a
    db $d3
    db $fc
    rst $20
    add d
    ld [c], a
    ret nc

Call_063_4ce2:
    ld [$f143], a
    add d
    db $eb
    call nc, $0fd5
    and b
    and b
    call nc, $f8d5
    pop hl
    ld a, [hl]
    db $e3
    ldh [$e1], a
    dec c
    rst $20
    cp h
    ld b, e
    ldh a, [$82]
    db $ed
    sbc a
    and d
    sbc l
    sbc a
    ld a, [hl]
    ld [$e9d8], a
    reti


    dec c
    rst $20
    ld b, e
    ldh a, [$a0]
    ld [$d4e9], sp
    push de
    sbc a
    rra
    sbc h
    ld b, [hl]
    ld b, [hl]
    sbc h

Jump_063_4d13:
    sbc a
    ld a, d
    push hl
    add sp, -$3d
    dec c
    rst $20
    ld hl, sp-$80
    db $d3
    ld [$c1e8], sp
    pop hl
    xor [hl]
    ld b, [hl]
    sbc h
    sbc l
    sbc l
    jp $9fa2


    db $fc
    add $80
    sbc $08
    rst $20
    add d
    ldh [$ae], a
    ld b, [hl]
    dec de
    xor a
    ld b, [hl]
    rst $38
    pop hl
    sbc h
    sbc a
    ld a, [hl]
    db $e4
    add b
    rst $18
    adc d
    jp $0600


    pop hl
    ld b, e
    ldh [$c2], a
    db $e3
    cp a
    db $e3
    ld [hl], d
    pop bc
    add b
    sbc $7e
    pop bc
    adc d
    pop bc
    inc b
    ld b, $e1
    call nz, $aee5
    ld a, [hl]
    and $7e
    pop bc
    add b
    db $db
    sbc d
    and h
    ld b, l
    ld [c], a
    ld [$e2c6], sp
    jp Jump_000_3de0


    ld [c], a
    xor [hl]
    ld a, [hl]
    pop hl
    ld h, [hl]
    and c
    add b
    db $db
    adc d
    and e
    ld b, e
    and b
    sbc [hl]
    ld b, l
    db $e3
    inc bc
    ldh [rP1], a
    db $e3
    ld hl, sp-$3f
    and c
    ld a, d
    and e
    ldh [$80], a
    ret c

    inc b
    and h
    adc d
    and b
    ret nz

    ldh [rTMA], a
    db $e3
    ld b, l
    dec hl
    dec hl
    dec c
    ld b, l
    or a
    db $e3
    ld b, [hl]
    sbc [hl]

jr_063_4d93:
    ld a, d
    and [hl]
    nop
    or e
    add d
    and h
    adc d
    and d
    cp $c0
    ld [c], a
    ld b, l
    ld c, b
    ld c, b
    ld b, e
    ld l, $20
    jr nz, @-$7d

    dec l
    ld [hl], $e3
    ld hl, sp-$5f
    db $e4
    add e
    ld a, [$8685]
    rst $08
    inc c
    and l
    and b
    db $fd
    and c
    ret


    pop bc
    ld d, c
    ld e, [hl]
    ld d, h
    dec l
    jr nz, jr_063_4dde

    rlca
    inc l
    cp l
    xor a
    add hl, sp
    pop bc
    ld a, a
    pop bc
    ld h, [hl]
    add l
    nop
    or b
    inc h
    and e
    or $0c
    and l
    sbc a
    sbc h
    ret


    pop bc
    ld b, l
    scf
    jr c, jr_063_4d93

    cp a
    jr z, jr_063_4e05

    ld c, c
    ld e, l
    ld b, a
    ld b, l

jr_063_4dde:
    ei
    and b
    sbc [hl]
    jp $a0a0


    ld a, d
    add l
    nop
    or c
    adc [hl]
    adc c
    adc b
    and c
    xor a
    ld b, [hl]
    rst $38
    ld b, l
    ld b, a
    ld d, l
    dec [hl]
    dec [hl]
    dec [hl]
    ld [hl], $4a
    rlca
    ld d, d
    ld d, e
    ld d, e
    ccf
    pop bc
    cp [hl]
    and b
    ld a, d
    add e
    nop
    or e
    inc h
    add b

jr_063_4e05:
    and $86
    and h
    sbc a
    sbc l
    rst $00
    and c
    inc bc
    ldh [$60], a
    ld d, l
    inc a
    rrca
    dec [hl]
    ld [hl], $ae
    ld b, e
    ccf
    call nz, $c040
    nop
    db $e3
    add b
    reti


    db $fc
    inc c
    and e
    ret nc

    and d
    ld d, c
    ld e, [hl]
    ld d, d
    ld [hl], $62
    ld h, e
    inc de
    ld a, l
    xor a
    ccf
    and b
    ld a, [$afa2]
    ld a, $e1
    nop
    cp d
    add [hl]
    and e
    db $ec
    add $c0
    dec c
    and b
    xor [hl]
    ld b, l
    inc bc
    ldh [$62], a
    ld h, a
    inc a
    add e
    ld a, a
    ld a, l
    ret nz

    and c
    ld a, [$0083]
    jp nz, $b800

    jr nz, jr_063_4eb3

    sbc [hl]
    cp $51
    and d
    xor a
    ld b, a
    ld d, l
    inc a
    ld h, d
    ld h, a
    dec [hl]
    rlca
    ld a, [hl-]
    xor [hl]
    add c
    add e
    jp nz, $83bd

    nop
    cp e
    add [hl]
    and [hl]
    adc [hl]
    add b
    rst $38
    ld b, l
    ld b, a
    ld h, b
    ld d, [hl]
    ld a, [hl-]
    ld l, c
    dec [hl]
    dec [hl]
    rst $00
    add hl, sp
    xor a
    add c
    ld [hl], c
    db $e3
    nop
    cp [hl]
    add [hl]
    xor c
    ld b, l
    ld c, b
    rst $28
    ld c, c
    ld h, b
    ld d, h
    ld d, e
    ret nz

    ldh [$36], a
    xor [hl]
    add e
    add l
    add h
    jp $af82


    add b
    add d
    nop
    cp c
    db $10
    ld h, l
    adc [hl]
    ld h, c
    ld c, d
    rst $38
    ld h, b
    ld d, [hl]
    scf
    jr c, jr_063_4ed7

    ld h, d
    db $76
    ld [hl], $0f
    xor [hl]
    xor a
    adc d
    add l
    inc bc
    ldh [$be], a
    ld h, c
    jp nz, Jump_000_00a1

    cp b
    db $fc
    db $10
    ld h, [hl]
    ld c, c
    add c
    ld c, d
    ld h, c

jr_063_4eb3:
    ld e, d
    inc a
    ld h, d
    ld h, e
    rrca
    ld a, b
    ld a, [hl-]
    xor [hl]
    xor a
    add c
    pop hl
    add h
    push hl
    ld a, d
    ld c, b
    nop
    ld c, l
    sbc h
    ld [$4fa6], sp
    ld h, e
    ld b, h
    ld d, d
    ld d, l
    call nz, Call_000_03c0
    ldh [$83], a
    inc bc
    add [hl]
    add l
    ld b, [hl]
    ldh [$be], a

jr_063_4ed7:
    ld b, b
    ld l, [hl]
    add b
    add d
    and b
    nop
    or [hl]
    add d
    ld [$afdf], a
    ld b, l
    ld [hl], $36
    ld [hl], $c4
    ret nz

    ld a, [hl-]
    xor [hl]
    rlca
    ld b, [hl]
    adc d
    add l
    ret


    add c
    ld l, [hl]
    ld h, h
    ld a, [hl]
    ld b, a
    nop
    xor l
    adc [hl]
    inc hl
    ld l, h
    inc b
    jp nz, Jump_063_6095

    ld b, l
    ld [hl], $49
    and b
    ld l, e
    ld l, h
    add c
    pop hl
    ld bc, $c984
    add e
    add [hl]
    db $e3
    add d
    add l
    nop
    xor l
    inc h
    jr z, jr_063_4f56

    pop bc
    pop bc
    ld [c], a
    rst $38
    dec [hl]
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    adc b
    adc b
    add a
    add l
    and b
    adc e
    ld h, d
    add [hl]
    jp hl


    nop
    ld d, b
    inc c
    ld b, a
    jp z, Jump_000_3962

    pop bc
    pop hl
    ld h, d
    add hl, bc
    ld h, [hl]
    ld b, c
    pop hl
    add e
    ld b, b
    and c
    ld [$00e9], sp
    ld d, a
    inc d
    inc hl
    jp nc, Jump_063_7b21

    ld b, l
    ld a, [hl-]
    pop bc
    pop hl
    ld h, a
    ld l, b
    ld h, [hl]
    ld a, $06
    and b
    ld bc, $4aae
    add c
    add d
    db $eb
    nop
    ld d, d
    inc c
    ld b, e
    dec bc
    add d
    ret nz

    pop hl
    add e

jr_063_4f56:
    pop bc
    rlca
    ld l, d
    ld a, [hl-]
    ld b, l
    ld b, l
    call nz, Call_000_2786
    ld h, [hl]
    ld bc, $5200
    inc c
    ld b, e
    ld a, b
    ld b, [hl]
    and d
    ld b, b
    ldh [rLY], a
    pop bc
    dec [hl]
    ld l, b
    ld h, [hl]
    add hl, sp
    ld c, b
    and d
    ret nz

    ld [$8644], sp
    ld l, h
    add b
    add hl, bc
    xor d
    inc bc
    add [hl]
    add e
    sub h
    jr nz, jr_063_4fc4

    inc a
    nop
    ld [$c7a0], sp
    ld h, b
    ld a, a
    db $e4
    ld c, c
    ld b, c
    inc b
    daa
    ret nc

    dec hl
    add [hl]
    ld l, e
    inc c
    ld b, h
    inc de
    ld b, l
    ld a, [hl-]
    ld b, h
    ret nz

    ld a, a
    ld [c], a
    ld b, d
    ld a, $43
    ld b, a
    ld h, b
    add [hl]
    ld l, [hl]
    or b
    add b
    add hl, bc
    add [hl]
    ld h, l
    adc h
    ld hl, $e23f
    ld l, [hl]
    ld l, a
    cp a
    ld [c], a
    ld l, d
    add c
    ld b, b
    ld b, h
    inc hl
    ld a, l
    ret nz

    add d
    inc b
    ld d, b
    dec c
    add [hl]
    ld l, h
    ld c, e
    inc h
    ld b, l
    rst $38
    ld [hl], $6e
    ld [hl], b
    ld [hl], d
    ld l, h
    dec [hl]

jr_063_4fc4:
    ld l, h
    ld l, l
    ld bc, $4740
    ld h, $ec
    dec b
    ld b, e
    add hl, hl
    nop
    xor h
    inc e
    pop hl
    jp $cd61


    ld hl, $373b
    jr c, @-$3d

    and b
    ld [hl], b
    ld l, [hl]
    add hl, sp
    ld b, l
    ld h, e
    ld b, l
    add e
    ld b, b
    inc b
    inc h
    dec c
    ld a, [hl+]
    nop
    xor [hl]
    add hl, bc
    ld b, c
    db $d3
    ld bc, $a37c
    ld a, [hl-]
    add a
    jr nz, jr_063_5023

    ld a, h
    add $86
    inc h
    add b
    ld [de], a
    nop
    and l
    ret nc

    pop de
    ld b, a
    ld b, d
    cp a
    and $01
    add hl, sp
    ld b, [hl]
    ld [bc], a
    dec a
    nop
    ld a, h
    ret nz

    inc b
    ld b, c
    ld d, b
    dec c
    nop
    xor l
    nop
    add l
    inc b
    add hl, bc
    ld hl, $a179
    add hl, sp
    ld b, [hl]
    inc bc
    cp h
    jp nz, Jump_000_216a

    add b
    db $d3
    nop
    and l
    jr jr_063_50a1

jr_063_5023:
    and $cd
    ld [c], a
    ld sp, hl
    add b
    inc a
    ld b, h
    add e
    inc b
    add e
    ld hl, $6104
    inc [hl]
    add b
    rst $10
    ld a, [hl]
    jp hl


    sbc l
    ret nz

    ld hl, $40ae
    ld b, b
    push hl
    cp [hl]
    add $70
    add [hl]
    add hl, bc
    nop
    xor a
    db $fc
    rst $00
    jp nz, $af02

    ld b, h
    inc a
    cp a
    jp Boot


    db $e4
    inc b
    inc h
    add b
    push de
    db $fc
    jp z, $c239

    rst $38
    call nz, $a6ff

jr_063_505b:
    inc b
    ld h, h
    stop
    ld d, [hl]
    db $fc
    rst $00
    ret nz

    db $e3
    ld hl, sp+$62
    ld a, $03
    db $e4
    inc b
    ld l, c
    nop
    ld e, d
    nop
    and d
    ld b, e
    ld a, c
    and h
    ret nz

    push hl
    cp h
    ld h, b
    ld a, [hl]
    ld l, c
    add b
    inc de
    ld a, d
    ld l, b
    cp [hl]
    inc b
    nop
    ld a, c
    and b
    cp a
    jp $8a7e


    cp l
    xor c
    add b
    dec c
    ld a, d
    ld b, h
    cp [hl]
    inc bc
    ei
    and c
    add b
    ret nz

    pop bc
    add h
    inc h
    inc b
    ld b, [hl]
    add b
    jr jr_063_5113

    ld b, h
    ei
    inc hl
    ei
    nop
    ld b, e
    inc bc
    ld b, c

jr_063_50a1:
    ld b, e
    db $fd
    ldh [$3a], a
    and b
    db $fc
    ld h, [hl]
    nop
    or h
    ld a, d
    jp z, $8279

    ld e, [hl]
    add h
    ld h, c
    ld [hl], $3b
    dec [hl]
    dec sp
    db $fd
    ldh [$36], a
    cp a
    db $e3
    ldh [$7e], a
    add e
    add b
    jr jr_063_513a

    jp $c200


    cp b
    inc hl
    inc a
    and h
    ld h, h
    ld [bc], a
    rst $38
    ldh [$a5], a
    ld a, c
    and b
    add d
    ld [$017e], sp
    add b
    pop de
    db $f4
    dec h
    jr jr_063_505b

    cp $ba
    ld bc, $3542
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    rlca
    ld l, d
    dec [hl]
    ld b, d
    ld b, b
    ld bc, $61ba
    nop
    ld d, e
    ld a, d
    dec bc
    ld a, [hl]
    and h
    nop
    ld a, c
    nop
    ret nz

    ldh [$f8], a
    ld b, d
    ret nz

    pop hl
    ld a, [hl-]
    ld h, c
    db $fc
    ld b, l
    add b
    rst $10
    ld a, [hl]
    xor b
    sbc $34
    ld h, b
    ld b, h
    inc a
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    inc a
    add l
    ld b, h
    ld a, $01
    sbc a
    add d
    dec b

jr_063_5113:
    add b
    ret c

    db $76
    inc hl
    db $fc
    add l
    ld b, l
    nop
    ret nz

    add $3e
    ld bc, $257a
    add b
    db $db
    db $fc
    add a
    cp e
    and c
    ld b, b
    add $40
    add b
    nop
    nop
    cp l
    db $f4
    dec h
    db $76
    ld h, l
    or $40
    inc bc
    add l
    ret nz

    ld h, d
    nop
    and e

jr_063_513a:
    nop
    ld d, c
    nop
    ld a, [$7a89]
    add a
    ld [hl], a
    ld h, l
    ld a, [hl]
    add a
    nop
    ld d, l
    ld a, [$f489]
    inc hl
    ld a, d
    and e
    inc c
    cp b
    ld h, d
    jp $9d61


    sbc l
    nop
    add h
    nop
    ld e, b
    ld a, d
    adc $13
    ld b, d
    nop
    ld [hl], h
    ld h, c
    jp Jump_000_00e1


    ld e, l
    ld a, d
    adc $72
    ld hl, $ebfc
    nop
    ld e, d
    ld a, d
    adc $00
    sub d
    ld hl, $edfc
    nop
    ld d, a
    ld a, d
    rst $08
    sub d
    ld h, c
    db $fc
    db $ed
    nop
    ld c, a
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
    dec h
    rlca
    ld [bc], a
    ld bc, $0823
    ld [bc], a
    ld [bc], a
    jr z, jr_063_51b0

    ld [bc], a
    inc bc
    ld e, $0b
    ld [bc], a
    inc b
    ld [hl+], a
    dec bc
    ld [bc], a
    dec b

jr_063_51b0:
    dec h
    dec bc
    ld [bc], a
    ld b, $2d
    dec bc
    ld [bc], a
    rlca
    dec hl
    inc c
    ld [bc], a
    ld [$0e28], sp
    ld [bc], a
    add hl, bc
    inc l
    ld c, $02
    ld a, [bc]
    rra
    rrca
    ld [bc], a
    dec bc
    ld a, [hl+]
    rrca
    ld [bc], a
    inc c
    inc e
    db $10
    ld [bc], a
    dec c
    add hl, hl
    ld de, $0e02
    inc h
    ld [de], a
    ld [bc], a
    rrca
    ld h, $12
    ld [bc], a
    db $10
    dec l
    ld [de], a
    ld [bc], a
    ld de, $1318
    ld [bc], a
    ld [de], a
    jr z, jr_063_51f9

    ld [bc], a
    inc de
    dec hl
    inc de
    ld [bc], a
    inc d
    dec de
    inc d
    ld [bc], a
    dec d
    dec h
    inc d
    ld [bc], a
    ld d, $29
    inc d
    ld [bc], a
    rla
    rla

jr_063_51f9:
    dec d
    ld [bc], a
    jr @+$25

    dec d
    ld [bc], a
    add hl, de
    daa
    dec d
    ld [bc], a
    ld a, [de]
    ld a, [hl+]
    ld d, $02
    dec de
    ld [hl+], a
    rla
    ld [bc], a
    inc e
    dec h
    rla
    ld [bc], a
    dec e
    ld hl, $0218
    ld e, $26
    jr @+$04

    rra
    jr nz, jr_063_5233

    ld [bc], a
    jr nz, @+$26

    add hl, de
    ld [bc], a
    ld hl, $1a16
    ld [bc], a
    ld [hl+], a
    rra
    dec de
    ld [bc], a
    inc hl
    inc hl
    dec de
    ld [bc], a
    inc h
    inc de
    inc e
    ld [bc], a
    dec h
    ld [hl+], a
    dec e
    ld [bc], a

jr_063_5233:
    ld h, $1e
    ld e, $02
    daa
    jr nz, jr_063_5258

    ld [bc], a
    jr z, @+$23

    rra
    ld [bc], a
    add hl, hl
    ld de, $0220
    ld a, [hl+]
    rra
    jr nz, jr_063_5249

    dec hl
    ld [hl+], a

jr_063_5249:
    ld hl, $2c02
    jr nz, jr_063_5270

    ld [bc], a
    dec l
    inc h
    ld [hl+], a
    ld [bc], a
    ld l, $12
    inc hl
    ld [bc], a
    cpl

jr_063_5258:
    ld hl, $0225
    jr nc, jr_063_5280

    ld h, $02
    ld sp, $2715
    ld [bc], a
    ld [hl-], a
    ld h, $27
    ld [bc], a
    inc sp
    ld [hl+], a
    add hl, hl
    ld [bc], a
    inc [hl]
    dec de
    dec hl
    ld [bc], a
    dec [hl]

jr_063_5270:
    dec h
    dec hl
    ld [bc], a
    ld [hl], $1a
    jr nc, @+$04

    scf
    ld h, $30
    ld [bc], a
    jr c, jr_063_5298

    ld [hl-], a
    ld [bc], a
    add hl, sp

jr_063_5280:
    ld e, $33
    ld [bc], a
    ld a, [hl-]
    ld a, [hl+]
    dec [hl]
    ld [bc], a
    dec sp
    jr z, jr_063_52c1

    ld [bc], a
    inc a
    rra
    add hl, sp
    rst $38
    rst $38
    rst $38
    sbc c
    ld d, d
    xor d
    ld d, [hl]
    adc d
    ld e, e
    and l

jr_063_5298:
    ld e, e
    cp a
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $fa
    di
    ld c, $37
    ld c, $4d
    ld c, l
    db $fc
    rst $30
    dec c
    dec c
    db $e3
    pop hl
    push bc
    ldh [rP1], a
    db $fd
    push af
    db $e4
    ld sp, hl
    pop hl
    pop hl
    and e
    ld [c], a
    rst $18
    db $fd
    ld h, e
    pop hl
    db $fc
    db $ed
    add d
    db $e3
    add a

jr_063_52c1:
    dec c
    ld c, l
    dec l
    cp l
    ldh [rSCX], a
    push af
    ld b, h
    db $e3
    add d
    ld sp, hl
    dec c
    jp $0c4c


    rst $38
    ldh [$60], a
    ld sp, hl
    add d
    di
    ld l, [hl]
    db $e3
    ld c, l
    dec c
    rrca
    ld l, l
    inc c
    dec c
    ld l, l
    push bc
    jp nz, $f8c0

    ld hl, sp-$13
    or b
    add $3f
    dec c
    ld c, l
    ld l, l
    ld c, h
    inc l
    ld l, l
    jp nz, $80c2

    rst $10
    sbc b
    sbc d
    call nz, $e21c
    ld e, d
    ret nz

    dec l
    dec l
    db $f4
    ld [c], a
    db $fc
    ld [c], a
    ld l, l
    add a
    ld c, h
    inc c
    inc l
    add c
    ldh [$9f], a
    db $db
    ld a, e
    jp nz, $e0ba

    dec l
    add [hl]
    adc [hl]
    ld [c], a
    ld l, l
    dec bc
    adc [hl]
    ret nz

    call $a9c0
    ldh [$c2], a
    ld [c], a
    dec c
    ld sp, $606d
    db $db
    inc h
    pop bc
    db $e4
    and b
    ld l, l
    ld c, e
    sub a
    ret nz

    ld hl, sp-$1f
    rrca
    dec bc
    dec bc
    dec bc
    inc c
    cp l
    pop hl
    add l
    ldh [$c2], a
    ld [c], a
    ldh [$a3], a
    ld a, b
    add [hl]
    pop de
    ld c, h
    push bc
    ld [hl+], a
    ld [c], a
    ld c, e
    ld c, e
    dec c
    ld c, e
    ld d, [hl]
    ret nz

    ld h, e
    ld l, l
    dec bc
    sub d
    pop bc
    db $fc
    ld [c], a
    add l
    ldh [$0d], a
    ld l, l
    ld h, d
    reti


    db $e4
    sbc [hl]
    and a
    ld h, d
    and c
    ld c, e
    rst $38
    pop hl
    ld d, l
    pop bc
    ld l, h
    ld l, h
    ld c, h
    add e
    ld l, h
    ld c, h
    ld d, d
    and b
    adc c
    ret nz

    ld [$1ec3], sp
    db $db
    add b
    db $e4
    dec c
    ld a, [hl]
    call nz, Call_063_4ce2
    ld c, h
    ld l, h
    ld l, h
    dec c
    dec hl
    add a
    db $e3
    ret nz

    inc l
    and h
    sbc $e7
    nop
    xor d
    adc d
    xor h
    pop bc
    pop hl
    add a
    ldh [$0b], a
    ld l, e
    add e
    ld c, e
    dec bc
    inc c
    ld [c], a
    add [hl]
    rst $20
    ld h, d
    and l
    dec hl
    xor a
    db $fd
    adc b
    dec c
    rst $18
    ld l, l
    inc l
    inc c
    ld l, h
    ld c, e
    ld c, e
    pop hl
    dec l
    dec bc
    ldh [$0b], a
    ldh [rOCPS], a
    xor l
    ret nz

    di
    ld [$82a7], sp
    ret nz

    inc l
    ld c, h
    ld c, e
    add b
    jp nc, $8fc1

    and c
    add [hl]
    db $ed
    db $f4
    pop bc
    ld b, $b1
    sub d
    and [hl]
    inc c
    ret nz

    ld c, e
    rlca
    inc c
    ld c, h
    ld c, e
    ret c

    add c
    ldh a, [$91]
    ld b, d
    or e
    adc d
    and [hl]
    adc [hl]
    pop hl
    sbc a
    dec bc
    inc c
    inc l
    ld c, e
    ld c, e
    add c
    pop hl
    ldh a, [rOCPD]
    dec l
    ld a, c
    dec l
    jp nz, Jump_000_06f5

    add sp, $0d
    dec bc
    dec bc
    dec c
    add b
    ldh [rSTAT], a
    inc c
    ld bc, $d8c1
    ld l, h
    ret nz

    jp hl


    add b
    call $840c
    ld l, l
    jp $1ee0


    cp a
    ldh [rWX], a
    ld l, h
    inc c
    ld c, e
    ret nz

    and c
    inc b
    adc d
    ld e, h
    ld l, d
    ld h, [hl]
    add b
    db $d3
    dec c
    ld c, e
    ld d, b
    and b
    ret nz

    ld [c], a
    inc l
    inc l
    ld a, $a1
    ldh a, [$d4]
    cp a
    ld l, e
    ld h, l
    and d
    ld h, h
    pop bc
    ld [c], a
    dec bc
    dec hl
    dec bc
    ld c, e
    rlca
    ld c, h
    inc l
    inc c
    ld a, $a1
    db $fc
    add b
    ld [hl], d
    ld h, h
    cp h
    rst $08
    add b
    adc $04
    ld l, b
    ld h, b
    add b
    ldh [$0d], a
    pop bc
    ldh [$fe], a
    ldh [$3e], a
    pop hl
    inc a
    ld [c], a
    adc [hl]
    xor b
    ld [$478d], sp
    ld c, h
    or d
    jp nz, Jump_000_2bc5

    ld a, l
    pop hl
    ld a, $e1
    cp d
    add b
    ld a, d
    add c
    ld e, b
    adc d
    or h
    ld a, [bc]
    xor a
    jp nz, $0bc3

    ld l, e
    db $fd
    ldh [rOCPD], a
    dec a
    ret nz

    ret nc

    ld a, d
    add l
    adc d
    or c
    adc h
    ld l, l
    inc h
    ld b, d
    ld c, e
    nop
    db $e3
    ld l, e
    ld c, e
    ld l, $be
    ldh [$2c], a
    ld l, h
    inc l
    ld a, e
    add c
    dec c
    ld hl, sp-$60
    db $76
    ld h, h
    add h
    add b
    sbc $ce
    ld h, b
    ld c, e
    ld a, a
    pop bc
    ld b, b
    pop hl
    ld a, $a1
    inc a
    add c
    dec c
    ret nz

    ld a, b
    and b
    jp hl


    ld a, $0c
    ld b, h
    ld c, h
    ld h, b
    ret nz

    ldh [rP1], a
    ld [c], a
    dec hl
    inc l
    nop
    ld a, $a0
    cp e
    ld h, c
    ld sp, hl
    add b
    ld l, [hl]
    ld [hl+], a
    adc l
    dec hl
    ld c, c
    adc b
    add b
    jp z, $e0bf

    jr @-$01

Jump_063_549e:
    call nz, $80bf
    add hl, sp
    ldh [$0d], a
    ld l, e
    db $10
    ld h, l
    ld c, b
    add [hl]
    add b
    ret z

    ldh [$09], a
    jp nz, Jump_063_4850

    ld a, [hl]
    ld [c], a
    cp $c3
    call nz, Call_063_4b60
    ld l, e
    ld l, e
    ld bc, $0f6b
    ld h, c
    ldh a, [rTAC]
    ld [de], a
    ld d, a
    and b
    jr z, jr_063_54c4

jr_063_54c4:
    and b
    add e
    ret nz

    ld bc, $0081
    pop bc
    ldh [rNR14], a
    ld b, e
    ld h, b
    ld [hl], c
    jr jr_063_5515

    sub [hl]
    inc bc
    inc c
    ld b, l
    inc h
    add e
    add hl, bc
    ld h, d
    inc bc
    ld l, h
    dec bc
    ld b, h
    ld [c], a
    adc d
    ld l, d
    ld e, h
    ld a, [bc]
    ld a, l
    add hl, hl
    inc c
    daa
    ld h, b
    jr nz, jr_063_54f4

    jp nz, Jump_063_6ce2

    cp $a1
    ld l, e
    cp $63
    sbc $54

jr_063_54f4:
    jr z, jr_063_5504

    ld [$0c44], sp
    jp nz, $b8e3

    add b
    ld l, e
    ld l, e
    ret z

    ld [hl+], a
    nop
    add l
    cp d

jr_063_5504:
    sbc a
    nop
    and d
    nop
    rlca
    ld h, c
    ld b, b
    and d
    ld a, a
    pop hl
    ld [bc], a
    xor b
    dec c
    dec hl
    ld [$8e0a], a

jr_063_5515:
    ld b, $42
    pop hl
    inc b
    ret


    and c
    ld b, b

jr_063_551c:
    and b
    dec bc
    ld a, [$80e0]
    ret nz

jr_063_5522:
    add d
    push bc
    add [hl]
    rst $38
    inc h
    ld [bc], a
    ld c, $03
    pop hl
    ld c, h
    ld c, e
    dec hl
    add b
    and d
    pop bc
    pop hl
    add b
    sub $92
    ld c, c
    nop
    add [hl]
    add e
    or [hl]
    and c
    inc bc
    ld [c], a
    pop bc
    ldh [$80], a
    and c
    ret nz

    pop bc
    ld a, [hl]
    ld b, d
    inc b
    add h
    inc e
    nop
    or c
    ldh a, [rNR52]
    ld l, l
    ld l, l
    ld l, l
    ld [c], a
    nop
    res 4, b
    pop bc
    db $e3
    ld b, b
    ld b, b
    add b
    nop
    jr nz, jr_063_551c

    ld [c], a
    add hl, bc
    or h
    sub d
    ld b, [hl]
    push bc
    pop hl
    ld l, l
    and h
    ld bc, $4cb1
    adc a
    ld h, b
    ld d, d
    ld hl, $e10a
    ld l, e
    ld l, e
    ld b, c
    ldh [$0d], a
    and b
    ld b, c
    pop bc
    add d
    ld b, d
    res 2, a
    add a
    ldh [rNR34], a
    jr nz, jr_063_55ea

    ld d, [hl]
    add b
    dec l
    rrca
    dec l
    dec l
    ld c, h
    ld l, h
    ret nc

    ld h, c
    ld c, h
    and b
    rst $00
    pop bc
    ld b, e
    and c
    jr nz, jr_063_5522

    ld b, $d0
    jr nc, jr_063_55a8

    jp nz, $e1c2

    push bc
    ld [c], a
    dec l
    inc e
    add b
    or a
    add c
    ld bc, $c72d
    ldh [$bd], a
    ld h, e
    ld sp, hl
    ld h, c
    add l
    ld h, b

jr_063_55a8:
    ld a, [hl+]
    dec bc
    inc e
    inc l
    and e
    nop
    nop
    add a
    ldh [$2c], a
    ld [bc], a
    inc [hl]
    jp $8240


    ld b, e
    ld h, c
    cp h
    ld b, d
    add l
    ld h, c
    add d
    or a
    rlca
    ld c, l
    dec c
    ld c, h
    ld c, d
    pop hl
    sbc [hl]
    call nz, Call_000_2682
    ret nz

    ld [$20bd], a
    sbc h
    inc b
    ld h, [hl]
    ld d, b
    ld l, l
    dec c
    ld l, l
    ld l, h
    and [hl]
    inc c
    ld a, $c2
    dec c
    nop
    add e
    and c
    ld a, l
    jr nz, jr_063_5619

    add c
    inc bc
    ld h, d
    adc h
    ld b, $4a
    ld a, [hl+]
    set 0, d
    and [hl]

jr_063_55ea:
    ld b, $00
    db $fc
    and h
    jp $c081


    ld [c], a
    rst $38
    call nz, Call_063_41c0
    nop
    ld d, h
    inc d
    ld [c], a
    and [hl]
    ld h, h
    nop
    inc b
    add hl, hl
    ld c, $60
    nop
    and $3d
    and b
    inc a
    nop
    nop
    or l
    ld b, [hl]
    ld h, c
    jr z, jr_063_5654

    nop
    jr nz, jr_063_5652

    pop bc
    ld b, d
    ld c, d
    ld h, c
    ld b, d
    ld b, b
    ccf
    ld b, b
    pop bc

jr_063_5619:
    ld [c], a
    nop
    or [hl]
    ld [$0287], a
    jr nc, @+$6a

    dec l
    set 4, d
    cp l
    and d
    ld b, h
    ld b, d
    ld e, [hl]
    db $ec
    ld d, [hl]
    dec bc
    xor d
    add hl, bc
    nop
    sbc [hl]
    dec h
    adc e
    ld [c], a
    ld c, b
    ld b, e
    di
    jr nz, jr_063_563c

    ld h, l
    nop
    or l
    ld [hl], c

jr_063_563c:
    ld b, a
    add d
    ld h, l
    ld bc, $8c6b
    ld [hl+], a
    or a
    and b
    cp a
    pop hl
    add d
    rst $38
    ld a, [hl-]
    ld h, l
    and e
    ld [hl+], a
    nop
    ld b, e
    nop
    adc c
    pop hl

jr_063_5652:
    jr c, jr_063_5696

jr_063_5654:
    add [hl]
    ld b, a
    dec bc
    inc a
    nop
    ld c, h
    adc d
    add d
    db $f4
    ld h, c
    inc de
    ld [hl], $00
    ld d, h
    inc b
    ld l, [hl]
    sub h
    inc c
    add d
    ld [$ff67], sp
    rst $38
    ld a, b
    ld l, a
    add $ff
    xor d
    adc $00
    db $ec
    ld d, b
    add [hl]
    db $d3
    add b
    db $d3
    ld e, [hl]
    sub c
    ret


    call c, Call_000_2d71
    inc d
    adc b
    inc c
    or e
    nop
    add [hl]
    push de
    add b
    rlca
    call c, $80fd
    dec c
    db $ec
    dec c
    ld a, [hl]
    db $eb
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    ld b, e
    rst $38

jr_063_5696:
    ld a, [$80ff]
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc d
    db $ed
    ld d, l
    rst $38
    nop
    add b
    rst $10
    nop
    nop
    nop
    cp a
    db $dd
    sbc $a0
    and b
    and b
    call c, $f3fa
    ret c

    ld sp, hl
    reti


    db $fc
    ei
    rst $18
    pop hl
    ld [c], a
    db $e3
    db $e4
    rst $18
    ldh [$7d], a
    pop hl
    ld a, [$a0f2]
    jp c, $d6db

    rst $10
    db $fc
    rst $30
    db $fc
    adc b
    ldh [$fb], a
    ldh [$e8], a
    jp hl


jr_063_56d1:
    ld [$e6e5], a
    rst $20
    jr c, jr_063_56d1

    ld a, [c]
    sbc a
    db $e3
    ld a, d
    or $9f
    sbc l
    sbc a
    ld b, l
    ldh [rSCX], a
    push af
    rst $30
    sub $d7
    and b
    db $fc
    ldh [$da], a
    db $db
    ret nc

    pop de
    inc e

jr_063_56ee:
    db $fc
    rst $28
    add d
    db $e3
    sbc [hl]
    ld [de], a
    inc de
    rst $38
    ldh [rSCX], a
    push af
    inc b
    push hl
    di
    jp nc, $fcd3

    rst $28
    inc b
    ld [c], a
    sbc a
    sbc h
    ld de, $f09c
    ld a, a
    ldh [rSCX], a
    push af
    jr nz, jr_063_56ee

    add d
    pop hl
    call nc, $a0d5
    and b
    db $e3
    call nc, $f8d5
    push hl
    db $fc
    db $e3
    inc b
    ldh [$9f], a
    sbc l
    sbc h
    add a
    ld [de], a
    ld [de], a
    sbc [hl]
    ld e, d
    ldh [$80], a
    reti


    add d
    db $e3
    ld hl, sp-$1b
    sbc a
    or c
    and d
    db $10
    db $e3
    add h
    pop hl
    jp nz, $13e0

    ld [de], a
    add c
    ldh [$d8], a
    ld l, l
    reti


    add b
    reti


    sub $d7
    add d

jr_063_5740:
    ldh [$9f], a
    sbc l
    ret c

    ret nz

    adc [hl]
    ld hl, sp-$1f
    sbc h
    ld b, [hl]
    sbc h
    push af
    pop hl
    rst $28
    pop hl
    jp nz, $9de2

    ld [hl], c
    sbc a
    ld h, d
    pop bc
    add b
    reti


    sbc d
    jp nz, Jump_063_469c

    xor [hl]
    jr jr_063_5740

    ld c, $c1
    ldh [rDMA], a
    ld b, [hl]
    dec bc
    cp l

jr_063_5766:
    pop hl
    add l
    ldh [$c2], a
    ld [c], a
    db $fc
    and h
    db $fc
    add [hl]
    call nc, $c582
    sbc [hl]
    ld b, [hl]
    ld b, [hl]
    xor a
    ld b, [hl]
    sbc h
    rst $38
    and d
    sbc l
    sbc h
    ld b, [hl]
    inc bc
    inc b
    rlca
    dec c
    inc bc
    rlca
    rlca
    adc h
    ret nz

    add l
    ldh [rLYC], a
    pop bc
    db $e4
    and e
    add [hl]
    rst $10
    add d
    jp $9ef3


    xor [hl]
    adc b
    ldh [$86], a
    ldh [$03], a
    inc b
    dec c
    inc b
    rrca
    inc bc
    inc bc
    inc bc
    dec bc
    inc a
    ldh [$08], a
    call nz, $a362
    add [hl]
    pop de
    call z, $a58a
    add d
    pop bc
    and c
    xor a
    add a
    pop hl
    rst $38
    ldh [rDIV], a
    inc bc
    add c
    xor [hl]
    rst $38
    call nz, $a6e4
    ld h, d
    and c
    adc h
    rst $08
    add d
    jp hl


    jp c, Jump_063_46a0

    ld e, a
    ld [bc], a
    rrca
    inc b
    inc bc
    dec bc
    ld a, e
    pop hl
    xor a
    db $10
    pop bc
    ldh [$e0], a
    jp hl


    ldh [$81], a
    inc c
    xor l
    adc d
    xor c
    adc d
    jp nz, Jump_000_0f05

    ld [bc], a
    jr c, jr_063_5766

jr_063_57df:
    pop bc
    rst $38
    ret nz

    pop de
    and b
    ret nc

    pop de
    and b
    db $fc
    ldh [$fc], a
    adc c
    jr jr_063_57f9

    or e
    adc d
    and l
    ld c, e
    ret nz

    ld b, $06
    rst $00
    pop hl
    ld de, $7ea4

jr_063_57f9:
    xor c
    ldh [$82], a
    jp $8f43


    adc d
    add c
    sub d
    and h
    ld c, e
    pop bc
    ld [$4605], sp
    sbc c
    and c
    dec e
    add b
    add [hl]
    db $e3
    call nc, $ecd5
    and c
    ld a, [hl]
    add a
    call c, $ddf9
    ld c, c
    sub b
    jr z, jr_063_57df

    sbc a
    sbc l
    and d
    sbc h
    xor [hl]
    ccf
    ld b, [hl]
    inc c
    ld [$4646], sp
    sbc [hl]
    db $76
    and h
    add [hl]
    jp hl


    ld b, b
    db $e4
    ld h, c
    rlca
    add c
    ld b, e
    adc a
    adc d
    add e
    ldh [$80], a
    ld b, [hl]
    ret nz

    xor a
    add b
    ld [c], a
    nop
    ret c

    add c
    db $fc
    add e
    inc b
    add a
    nop
    add c
    rlca
    add c
    inc c
    xor a
    adc d
    add e
    ld d, c
    and b
    ld b, $c3
    ldh [rDMA], a
    xor [hl]
    nop
    pop hl
    rst $38
    jp $e808


    ld d, b
    ld l, b
    add b
    rst $08
    ld [$838a], sp
    adc b
    and b
    ld c, h
    jp nz, $8046

    pop bc
    ld a, $a2
    ld a, d
    add c
    ld l, [hl]
    ld h, e
    ld l, b
    ld d, b
    ld l, c
    adc h
    ld l, a
    inc c
    add e
    and c
    ret nz

    db $e3
    ld b, l
    ld b, l
    nop
    ret nz

    ld bc, $3e05
    and c
    add d
    call nz, $40ec
    ld d, b
    ld l, d
    add [hl]
    ld [hl], c
    inc c
    add c
    add b
    pop hl
    ld a, a
    xor [hl]
    ld b, [hl]
    ld b, l
    ld a, [hl+]
    inc l
    ld sp, $3ebd
    pop hl
    ldh [$3c], a
    ld [c], a
    ld a, [hl]
    push hl
    ld c, d
    ld l, c
    add [hl]
    ld [hl], e
    jp nz, Jump_000_2dc5

    jr nz, jr_063_58c1

    rra
    jr nz, jr_063_58d6

    dec b
    ld c, $0c
    or $c1
    sub d
    ld h, c
    add d
    ld h, l
    call z, $478d
    add [hl]
    ld [hl], c
    ret nc

    pop de
    jp nz, $c0c4

    pop hl
    inc hl
    cp l
    ret nz

    dec a
    ret nz

jr_063_58bd:
    ld [hl], l
    jp nz, $e27e

jr_063_58c1:
    add [hl]
    ld b, e
    adc l
    ld b, a
    nop
    or c
    jp nc, Jump_063_79d3

    and c
    adc $e1
    ld bc, $2be1
    ld [hl+], a
    dec [hl]
    add hl, sp
    add b
    ldh [$60], a

jr_063_58d6:
    ld [hl], l
    jp $a1f8


    ld [$8042], sp
    jp c, Jump_063_618a

    sbc a
    sbc h
    add c
    ld [c], a
    ccf
    ld b, [hl]
    ld b, l
    ld [hl], $35
    dec [hl]
    add hl, sp
    nop
    db $e3
    ld sp, hl
    ld h, b
    pop bc
    and c
    inc b
    and d
    ld b, e
    add sp, -$80
    jp nc, Jump_063_44a2

    inc bc
    jp nz, Jump_000_3539

    rra
    dec [hl]
    inc a
    dec b
    rrca
    dec b
    rst $30
    and d
    ret nz

    add c
    ldh a, [rSCY]
    ldh a, [$80]
    jp nc, $87f4

    add d
    and d
    ld d, b
    ld h, d
    xor a
    ld b, [hl]
    ld a, $35
    inc bc
    dec [hl]
    ld [hl], $81
    jp $e101


    nop
    and e
    ld h, d
    ld h, e
    add b
    res 3, d
    ld b, e
    jr c, jr_063_5964

    add l
    adc d
    ld b, d
    rrca
    ld h, d
    ld a, $35
    ld [hl], $01
    ret nz

    ld b, c
    jp nz, $9200

    jr nz, jr_063_58bd

    add a
    add b
    call Call_000_2392
    nop
    and l
    db $10
    ld b, c
    cp [hl]
    and b
    ld b, [hl]
    ld h, b
    ld bc, $c139
    ldh [$81], a
    and b
    ld a, $a2
    nop
    xor c
    dec c
    daa
    adc [hl]
    ld l, e
    nop
    and a
    jr jr_063_59b6

    jr nz, @-$3b

    add b
    ld a, [bc]
    ld h, b
    ld [bc], a
    ld b, l
    ld b, l
    jp $b400


    jr jr_063_5983

    ld h, c

jr_063_5964:
    rst $18
    sbc d
    rlca
    inc c
    dec h
    db $10
    ld b, e
    call z, Call_000_3642
    add hl, sp
    ld b, a
    ld b, b
    ret nz

    cp $61
    ld [$5087], sp
    add hl, bc
    sbc [hl]
    ld de, $6486
    rlca
    ld h, c
    scf
    jr c, jr_063_5988

    dec [hl]
    ld a, [hl-]

jr_063_5983:
    ld b, l
    ld a, a
    add h
    ld [hl], d
    dec b

jr_063_5988:
    ld d, b
    ld a, [bc]
    inc h
    rrca
    inc c
    inc hl
    add hl, sp
    sbc [hl]
    add a
    add d
    ld b, b
    ret nz

    dec [hl]
    inc a
    ld b, h
    ld [bc], a
    and e
    add [hl]
    dec b
    nop
    inc de
    dec hl
    add d
    di

jr_063_59a0:
    rlca
    ld h, h
    ret nz

    ld [c], a
    add b
    pop hl
    ld a, h
    ld h, c
    add [hl]
    inc bc
    inc de
    dec l
    db $10
    add d
    db $ed
    sbc d
    inc bc
    ld b, d
    ld [c], a
    ret


    and b
    ld b, b

jr_063_59b6:
    add b
    ldh [rP1], a
    pop hl
    inc b
    and a
    and b
    ret nc

    dec l
    nop

jr_063_59c0:
    db $ed
    ret nc

    ld bc, $6007
    ld a, [bc]
    ld b, b
    ld [bc], a
    rrca
    jr nz, @+$44

    or b
    ld b, c
    rst $20
    adc [hl]
    inc hl
    ld d, [hl]
    ld c, $30
    ld l, c
    jp c, $a4db

    ld bc, $7303

jr_063_59da:
    add hl, bc
    inc bc
    inc d
    jr nz, jr_063_59a0

    ld [c], a
    ld b, [hl]
    ld b, h
    inc a
    pop bc
    ret nz

    add b
    adc b
    jr nz, jr_063_5a37

    ld hl, $21ec
    ld d, [hl]
    rrca
    jr c, @+$48

    adc b
    pop hl
    and h
    ld [bc], a
    rlca
    inc de
    rlca
    rrca
    ld d, d
    inc hl
    add c
    ld h, c
    ld a, [hl-]
    ld b, c
    ldh [$c7], a
    add c
    ld a, [hl]
    ld b, e
    ldh [rRP], a
    db $10
    cp d
    inc hl
    ld c, d
    ldh [rBCPD], a
    ld bc, $03a4
    sbc h
    inc bc
    inc bc
    inc c
    ld b, $62
    ld a, [bc]
    add c
    add hl, sp
    ld [hl], $c2
    pop bc
    ccf
    ld b, b
    inc b
    and l
    ret nc

    dec l
    add h
    nop
    pop bc
    ld c, d
    pop hl
    ld [de], a
    ld l, c
    ld [bc], a
    ld h, a
    ld [bc], a
    cp $c1

jr_063_5a2c:
    add c
    add c
    ld b, [hl]
    cpl
    xor a
    ld b, e
    ld b, c
    ld b, e
    db $fd
    ldh [rLYC], a

jr_063_5a37:
    add [hl]
    add l
    add [hl]
    ld l, e
    inc b
    scf
    db $e3
    jr nc, jr_063_59c0

    sbc a
    ld c, d
    pop hl
    dec hl
    nop
    inc l
    ld [bc], a
    sub [hl]
    inc hl
    add c
    add d
    ld e, a
    ld b, l
    ld [hl], $3b
    dec [hl]
    dec sp
    db $fd
    ldh [$36], a
    rst $38
    pop bc
    jr jr_063_59da

    ld b, l
    ld d, b
    dec c
    ld [bc], a
    ld b, b
    sbc [hl]
    ld [de], a
    add l
    pop hl
    sbc [hl]
    and [hl]
    add d
    add d
    sbc $80
    ld b, c
    ld b, h
    inc a
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    inc a
    jr c, jr_063_5a2c

    jr nz, jr_063_5af2

    add sp, -$30
    dec l
    sbc a
    sbc h
    ld de, $4021
    inc l
    rlca
    db $fc
    inc b
    ld hl, $2282
    ld b, d
    dec [hl]
    ld l, c
    and e
    dec [hl]
    dec [hl]
    rrca
    and e
    ld l, d
    dec [hl]
    ld b, d
    ld b, h
    ld h, b
    ld a, [hl]
    pop hl
    call c, $8d84
    ld c, d
    sub b
    set 0, d
    rra
    jr nz, @-$02

    xor d
    jp nz, $af61

    ret nz

    pop hl
    ld b, c
    and b
    dec [hl]
    nop
    ret nz

    pop hl
    jr c, jr_063_5aca

    cp e
    nop
    nop
    or c
    ld h, [hl]
    inc bc
    nop
    xor e
    inc b
    inc hl
    inc bc
    ret nz

    dec bc
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    rst $38
    add h
    nop
    or l
    nop
    adc c
    nop
    db $e4
    nop
    pop bc
    ld b, e
    ret nz

    add $7f

jr_063_5aca:
    add e
    nop
    or l
    ld [$aae5], sp
    inc bc
    add d
    ld h, e
    pop bc
    ld b, d
    dec bc
    ld b, [hl]
    xor [hl]
    ld b, b
    jp nz, Jump_063_40ae

    add d
    add d
    dec b
    nop
    cp b
    ld h, a
    add d
    ld [$c47e], sp
    pop bc
    ld [bc], a
    inc a
    ld b, e
    xor a
    ld b, b
    and d
    add d
    call nz, $b400
    xor d

jr_063_5af2:
    ld b, $10
    ld a, [hl]
    db $e4
    pop bc
    ld bc, $414e
    or a
    and d
    xor a
    add d
    rst $20
    nop
    or l
    xor d
    ld b, $00
    nop
    ld c, b
    ld a, [bc]
    ld h, e
    jr c, jr_063_5b4a

    add d
    and a
    nop
    or h
    xor d
    ld l, e
    nop
    ld b, [hl]
    ld c, e
    ld h, e
    nop
    ld h, d
    ret nz

    add [hl]
    ld b, l
    ld b, e
    adc [hl]
    nop
    and h
    xor d
    ld l, e
    nop
    ld b, l
    ld l, [hl]
    and e
    add [hl]
    add h
    nop
    add [hl]
    ld [hl], b
    nop
    and l
    xor d

Jump_063_5b2b:
    ld l, l
    nop
    ld b, l
    db $fc
    rst $20
    add [hl]
    ld [hl], e
    nop
    ld b, l
    xor d
    ld l, h
    nop
    db $fc
    add [hl]
    db $fc
    jp hl


    add [hl]
    ld [hl], c
    nop
    ld b, l
    xor d
    jp z, Jump_000_0033

    db $fc
    add e
    db $fc
    db $eb
    nop
    add [hl]
    pop de

jr_063_5b4a:
    nop
    ld b, [hl]
    add b
    inc c
    ld l, [hl]
    ld c, a
    add [hl]
    db $d3
    nop
    ld b, l
    db $ed
    ld c, l
    ldh a, [$2d]
    nop
    add [hl]
    push de
    add b
    add hl, bc
    xor d
    ret


    ld l, [hl]
    cpl
    add [hl]
    db $d3
    add b
    add hl, bc
    ld a, [hl+]
    xor c
    ld [hl], d
    ld b, a
    nop
    ld l, d
    ld b, l
    ld b, e
    or $f4
    add b
    ld h, a
    or $fa
    rst $38
    scf
    ld [hl+], a
    ld h, a
    or $fa
    rst $38
    nop
    db $f4
    ld [hl+], a
    ld h, a
    or $fa
    rst $38
    add b
    ld h, h
    ld e, e
    rst $38
    ld a, [$00f9]
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
    inc hl
    add hl, bc
    ld [bc], a
    ld bc, $0b21
    ld [bc], a
    ld [bc], a
    dec hl
    inc c
    ld [bc], a
    inc bc
    ld e, $11
    ld [bc], a
    inc b
    dec de
    ld [de], a
    ld [bc], a
    dec b
    rra
    inc de
    ld [bc], a
    ld b, $25
    inc d
    ld [bc], a
    rlca
    inc e
    ld d, $02
    ld [$1719], sp
    ld [bc], a
    add hl, bc
    add hl, hl
    rla
    ld [bc], a
    ld a, [bc]
    ld h, $18
    ld [bc], a
    dec bc
    jr jr_063_5bee

    ld [bc], a
    inc c
    ld a, [hl+]
    add hl, de
    ld [bc], a
    dec c
    inc e
    dec de
    ld [bc], a
    ld c, $28
    dec de
    ld [bc], a
    rrca
    dec de
    ld e, $02
    db $10
    inc h
    ld e, $02
    ld de, $2623
    ld [bc], a

jr_063_5bee:
    ld [de], a
    add hl, de
    daa
    ld [bc], a
    inc de
    inc e
    jr z, jr_063_5bf8

    inc d
    inc h

jr_063_5bf8:
    ld a, [hl+]
    ld [bc], a
    dec d
    add hl, de
    inc l
    ld [bc], a
    ld d, $26
    inc l
    ld [bc], a
    rla
    rla
    ld l, $02
    jr jr_063_5c24

    jr nc, jr_063_5c0c

    add hl, de
    ld [hl+], a

jr_063_5c0c:
    jr nc, jr_063_5c10

    ld a, [de]
    inc hl

jr_063_5c10:
    ld sp, $1b02
    ld a, [de]
    ld [hl-], a
    rst $38
    rst $38
    rst $38
    jr nz, @+$5e

    db $dd
    ld h, b
    and h
    ld h, [hl]
    cp a
    ld h, [hl]
    cp a
    ld c, $0e
    dec c

jr_063_5c24:
    dec c
    dec c
    ld c, $fa
    ld [c], a
    ld c, l
    ret nz

    db $f4
    pop hl
    db $fc
    rst $38
    ret nc

    and $ca
    ld [c], a
    push bc
    ldh [$fd], a
    db $e3
    ld c, l
    ld c, l
    nop
    ret nz

    ldh [$f2], a
    pop hl
    ret nz

    pop af
    cp $e9
    pop af
    db $ec
    ret nz

    add sp, -$42
    pop hl
    ld [hl], d
    ldh [$fa], a
    ld [hl], l
    pop hl
    dec c
    pop af
    ld [c], a
    ld c, l
    ld c, l
    dec l
    ld c, l
    dec l
    add b
    xor $e1
    ld l, d
    db $e3
    ldh [$e4], a
    or d
    db $eb
    ld [hl], e
    add sp, -$7e
    db $e3
    push bc
    ldh [$6d], a
    add c
    dec hl
    rst $38
    rst $20
    cp d
    ld [c], a
    ld d, [hl]
    jp hl


    ld l, h
    and $b5
    db $ed
    ld a, [$0dc3]
    add b
    jp $bce9


    and $7a
    db $e4
    inc e
    pop hl
    jr @-$19

    add hl, sp
    di
    pop bc
    rst $20
    dec bc
    rla
    dec bc
    dec hl
    dec bc
    ld a, d
    rst $20
    dec l
    add hl, bc
    db $f4
    add b
    rst $00
    nop
    db $e4
    ret nz

    pop bc
    rst $20
    cp $e0
    cp d
    ldh [$35], a
    db $e4
    ret nz

    pop hl
    ld a, [hl]
    rst $20
    ld c, l
    ld c, l
    cp b
    add b
    push de
    ret nz

    ldh [$bd], a
    ld [c], a
    ld l, e
    ld c, e
    ld c, e
    pop bc
    pop hl
    ld a, [bc]
    rrca
    ld l, d
    ld a, [bc]
    dec bc
    ld l, e
    xor h
    pop hl
    add b
    db $eb
    ld d, e
    add $ed
    db $ec
    ld a, [c]
    ei
    and b
    dec l
    ret nz

    db $e3
    cp a
    pop hl
    ld c, e
    ld l, e
    dec hl
    ld c, d
    rrca
    ld a, [bc]
    ld a, [bc]
    ld l, d
    dec bc
    ret nz

    db $e3
    add sp, -$57
    ret nz

    rst $20
    add b
    adc $e4
    cp a
    ldh [$82], a
    call nz, $be0d
    ldh [$7e], a
    ldh [$2a], a
    ld c, e
    dec hl
    inc bc
    dec bc
    ld l, e
    ret nz

    db $e4
    ld c, d
    ret nc

    db $fd
    xor d
    ld a, [hl]
    db $e4
    ret nz

    db $e4
    ld a, l
    pop hl
    add b
    add hl, sp
    pop hl
    ld a, l
    ldh [$39], a
    pop bc
    or $a0
    ld hl, sp-$59
    ld a, [hl]
    ret c

    db $fd
    jp $ef0c


    inc c
    inc l
    inc l
    ld l, e
    cp [hl]
    ld [c], a
    dec bc
    ld c, d
    ld a, [bc]
    inc bc
    ld c, d
    dec bc
    ldh a, [$c0]
    ld a, h
    jp nz, $d20c

    nop
    and [hl]
    ld a, [hl]
    and d
    db $fd
    jp nz, $2ccb

    inc c
    cp a
    ldh [$0c], a
    ret nz

    push hl
    cp e
    ret nz

    ld c, e
    dec bc
    ret nz

    cp a
    pop hl
    ld h, c
    and d
    inc de
    and c
    nop
    or a
    push af
    add b
    db $fd
    ret nz

    inc l
    ld l, h
    db $fc
    cp a
    ldh [$c0], a
    pop hl
    dec bc
    dec bc
    ld c, e
    dec bc
    ld a, [bc]
    ld a, [hl+]
    add hl, de
    ld a, [hl+]
    ld a, [$7ee0]
    ldh [rKEY1], a
    dec l
    ld hl, sp-$5b
    add b
    pop de
    and d
    and l
    cp d
    ld a, e
    pop bc
    inc c
    ret nz

    pop hl
    inc l
    inc l
    ld c, e
    adc b
    ldh [$0b], a
    ld a, $3f
    ldh [$2a], a
    dec bc
    ld l, e
    dec bc
    dec c
    or l
    ldh [$3b], a
    ldh [rSVBK], a
    db $f4
    add h
    nop
    or h
    ld a, h
    add h
    ret nz

    ld [c], a
    inc l
    inc l
    inc l
    cp l
    pop hl
    inc c
    ld [hl], a
    and b
    ret nz

    ldh [rWX], a
    ld c, e
    ret nz

    ldh [$bc], a
    ldh [$f4], a
    add b
    ld c, a
    add h
    inc c
    nop
    or b
    ld a, [hl]
    and $0b
    ld l, h
    ld b, b
    ld [c], a
    ld a, h
    db $e3
    db $76
    and h
    xor [hl]
    and c
    ld a, b
    ret nz

    ldh [$f8], a
    sbc c
    db $fc
    ld h, l
    ld c, l
    dec l
    ld l, h
    ld c, h
    rst $38
    pop bc
    ld h, [hl]
    dec sp
    ld [c], a
    ld l, e
    ld l, e
    inc [hl]
    and d
    ret nz

    ld [c], a
    dec bc
    dec bc
    or $86
    ld h, h
    ret nc

    ld h, a
    or b
    ld l, c
    dec c
    ld d, h
    add d
    ld a, c
    and b
    ld c, h
    ld c, h
    ld a, l
    ld [c], a
    rrca
    inc l
    inc l
    ld c, h
    ld c, e
    ret nz

    db $e4
    ld a, [$76e4]
    and l
    add b
    ld l, h
    ld [hl], b
    ld [hl], a
    ld h, e
    ld [hl+], a
    db $e4
    cp a
    db $e3
    cp [hl]
    ld [c], a
    ld l, h
    ld c, h
    dec c
    or h
    add e
    ret nz

    ret nz

    rst $20
    ld a, d
    ld a, b
    sub $60
    ld a, d
    ld h, h
    rst $30
    add b
    cp [hl]
    pop hl
    inc c
    inc l
    ld bc, $c04b
    add sp, -$43
    pop bc
    ld [hl], $81
    add b
    add b
    add b
    ld [hl], b
    ld b, h
    pop hl
    ld l, b
    ld h, a
    ld a, a
    ld c, l
    dec l
    ld c, e
    ld c, e
    ld l, h
    ld l, h
    ld l, h
    inc a
    pop bc
    jr @+$01

    pop bc
    ret nz

    jp nz, $c03d

    dec c
    ld l, l
    call z, $1442
    ld h, e
    ld b, e
    db $ec
    inc c
    add d
    and $f8
    ld b, e
    ld c, e
    dec c
    ei
    and l
    push af
    ld h, d
    ld a, b
    jp nz, $e201

    jr c, @-$02

    sub h
    ret nz

    pop hl
    ld [hl], $68
    ld l, l
    ld c, e
    dec c
    ld a, [hl-]
    and c
    ld a, [hl]

jr_063_5e27:
    ldh [rP1], a
    ld a, [hl]
    jp nz, $c47a

    cp d
    add d
    nop
    or d
    ld b, h
    ld c, d
    cp e
    ld b, b
    ld b, e
    add b
    ld a, [$8081]
    or a
    add d
    ld a, [hl-]
    and b
    ld a, h
    and b
    ld b, b
    add $56
    ld b, d
    add b
    pop de
    db $fc
    dec h
    ld l, l
    cp h
    ld b, l
    add c
    cp [hl]
    and h
    inc c
    ld c, h
    inc l
    inc c
    ld [hl-], a
    ld h, b
    ld a, [bc]
    nop
    cp d
    add b
    dec l
    ld h, c
    ld [hl], d
    ld b, c
    cp [hl]
    ld d, [hl]
    db $fc
    inc h
    ld b, l
    ldh [$c1], a
    rst $20
    or a

jr_063_5e65:
    add d
    jr c, jr_063_5e27

    pop hl
    ld a, a
    pop hl
    ld [hl], l
    ld h, e
    ld c, $0e
    ld l, l
    nop
    ld d, d
    db $fc
    ld b, h
    inc bc
    ld l, l
    ld l, e
    ret nz

    ldh [rLCDC], a
    and h
    ld hl, sp-$7d
    ret nz

    ld [c], a
    ld a, a
    pop hl
    ld [c], a
    ld b, b
    ld [$a6dc], sp
    nop
    or e
    ldh a, [rP1]
    ld l, e
    ld b, l
    ld h, b
    dec b
    db $e3
    cp [hl]
    ld [c], a
    ld [hl], l
    and b
    ld c, $32
    ld b, b
    ld c, e
    ld c, e
    ld a, [bc]
    xor l
    ld b, c
    ret nz

    ld [c], a
    ld b, d
    pop de
    nop
    and a
    ldh [$4c], a
    jr nz, jr_063_5e65

    rst $20
    db $fd
    and b
    inc [hl]
    ld b, e
    ld b, c
    jp $2b0d


    dec c
    db $10
    ld b, l
    push hl
    add b
    jp nc, Jump_063_647e

    jp $2cc7


    pop bc
    ld b, b
    add h
    and e
    ld b, b
    add c
    ld b, d
    ld [hl], h
    ld b, b
    ld l, l
    db $76
    ld h, $3e
    ldh a, [rSVBK]
    inc b
    jp nz, $2cc8

    ld [bc], a
    and h
    nop
    nop
    add b
    rst $38
    ld h, c
    ld [hl], l
    ld hl, $1874
    sbc d
    dec b
    ld b, l
    and b
    ld [bc], a
    add h
    ei
    ld b, b
    inc b
    ld b, c
    db $e4
    ret nz

    db $e4
    dec hl
    add l
    ret nz

    inc h
    ld b, $00
    xor e
    ld [hl], d
    ld h, $04
    and b
    inc bc
    ld l, h
    ld c, h
    ld b, h
    ret


    inc bc
    and d
    ld [bc], a
    and c
    dec [hl]
    ld hl, $17f6
    inc b
    and [hl]
    nop
    cp a

Call_063_5f00:
Jump_063_5f00:
    pop hl
    ld a, a
    ld l, e
    ccf
    ld [c], a
    dec [hl]
    ld [hl+], a
    ld a, [hl]
    and [hl]
    ret nz

    pop af
    nop
    add a
    ld a, a
    push hl
    rst $20
    ld l, h
    inc l
    inc c
    cp h
    ld b, c
    ld a, e
    jr nz, jr_063_5f83

    dec c
    ld l, e
    ld hl, $e16b
    ld bc, $837e
    nop
    or l
    nop
    add [hl]
    ld c, h
    ld a, $e6
    ld [hl], e
    ld [bc], a
    add c
    dec hl
    dec b
    ld h, b
    ret nz

    ld [c], a
    ld a, $80
    inc b
    db $e3
    nop
    or a
    jr nc, jr_063_5f99

    ld c, e
    ld [de], a
    ld a, [hl]
    ld h, b
    ld c, h
    ld a, l
    ld b, b
    rst $38
    and l
    dec c
    inc bc
    ld b, b
    add b
    ldh [$3f], a
    pop bc
    nop
    nop
    cp e
    db $fc
    add l
    ld a, [hl]
    nop
    dec sp
    ld h, d
    add h
    ld b, b
    dec b
    ld b, c
    cp c
    nop
    ret nz

    rst $20
    ld b, b
    add b
    inc de
    and $07
    ld a, [hl]
    add c
    ld a, a
    ld bc, $01bd
    nop
    ld h, [hl]
    ld l, e
    rst $38
    pop hl
    nop
    add b
    and l
    ld l, [hl]
    dec bc
    ld a, [hl]
    add hl, bc
    ld b, d
    db $e3
    ret nz

    ld [c], a
    inc a
    inc bc
    add b
    ld b, [hl]
    pop bc
    ld [c], a
    ld b, b
    add d
    and h
    sub d
    ld l, c
    ld a, d
    db $10
    add h
    db $e3
    or a

jr_063_5f83:
    and b
    add d
    ld b, a
    ld c, e
    or $40
    add c
    ld l, e
    ld [bc], a
    and [hl]
    ld d, d
    ld h, l
    add b
    rlca
    inc b
    ld h, a
    ret nz

    and $c1
    jp hl


    dec bc
    ld b, d

jr_063_5f99:
    pop bc
    pop hl
    ld l, e
    ld e, [hl]
    ld b, a
    add b
    ld d, $80
    add sp, $05
    ld c, c
    ld l, e
    ret nz

    ld [c], a
    nop
    ld [bc], a
    push hl
    add [hl]
    ret c

    ld b, d
    jp $e205


    jp nz, $c1e8

    db $e3
    inc bc
    pop bc
    ld d, [hl]
    ld b, c
    nop
    cp c
    dec b
    add b
    rrca
    ld h, d
    inc hl
    ld a, $62
    rst $00
    ret


    inc b
    pop hl
    add b
    and b
    ld [bc], a
    ld b, e
    nop
    ret nc

    adc l
    add d
    ld l, d
    add e
    ld b, e
    ld b, a
    jp z, $c2c6

    ld b, b
    and c
    add d

jr_063_5fd7:
    add $86
    ret c

    nop
    ld bc, $1760
    ret nz

    ld b, a
    jp z, Jump_000_207d

    inc b
    and b
    inc b
    rst $00
    nop
    ld d, d
    add [hl]
    dec h
    ld bc, $d46d
    ld [c], a
    ret z

    xor b
    dec b
    ld [c], a

jr_063_5ff3:
    ret nz

    pop hl
    inc b
    ret z

    add b
    rst $10
    sbc e
    add b
    nop
    ret nz

    db $e3
    ret z

    and h
    ld [hl], l
    ld [c], a
    ld b, d
    db $e3
    adc e
    ret z

    add b
    pop de
    add d
    ld b, l
    ld e, c
    and d
    ld [bc], a
    ld c, c
    and h
    ld c, e
    scf
    ldh [$bf], a
    db $e4
    ret nz

    ld [c], a
    add [hl]
    and l
    add b
    push de
    ret nz

    rst $20
    add d
    jp z, Jump_063_6b81

    adc h
    and b
    ret nz

    and $02
    db $ed
    nop
    or b
    adc d
    ld bc, $016d
    ld l, e
    ld d, h
    nop
    db $10
    jr nz, jr_063_5ff3

    pop hl
    jp nz, $cce2

    add c
    ld l, c
    jp nz, $8408

    nop
    ld b, d
    sub a
    ei
    ld b, d
    sbc h
    ld h, b
    sub d
    ld h, e
    inc c
    ld h, c
    ld b, [hl]
    db $e4
    add $f9
    jp Jump_000_0046


    inc b
    ld b, e
    dec e
    add b
    sub d
    ld h, e
    sub e
    jr nz, jr_063_5fd7

    push hl
    ld d, l
    add c
    inc c
    ld b, h
    add [hl]
    rlca
    inc c
    add b
    ld l, h
    db $f4
    inc h
    dec c
    ld l, l
    ld d, e
    ld h, c
    sub [hl]
    ld b, b
    call z, $8b63
    and e
    nop
    adc $02
    cp $fc
    inc h
    db $e4
    add c
    db $e4
    rst $08
    ld b, d
    ret nc

    ld h, h
    inc c
    and h
    ld h, [hl]
    ld h, l
    nop
    add a
    ld c, e
    add b
    adc $99
    add b
    jr @+$24

    adc [hl]
    ld b, e
    call $8d84
    or l
    jp nz, $030f

    ld c, l
    dec l
    cp a
    db $e3
    jr jr_063_60d5

Jump_063_6095:
    call $9183
    ld b, d
    adc [hl]
    rla
    cp h
    cpl
    add b
    rla
    add c
    jr jr_063_60c3

    ld de, $4c80
    add $07
    cp $b4
    inc b
    ld [$0d41], sp
    inc c
    ld a, [hl]
    ld [c], a
    add d
    ldh [$0d], a
    dec l
    sub l
    ld bc, $0892
    add [hl]
    res 0, b
    call nc, $be00
    pop hl
    pop de
    and [hl]
    ld c, h
    rst $38

jr_063_60c3:
    ld a, c
    add hl, hl
    nop
    add [hl]
    ei
    and $0c
    ret z

    adc [hl]
    inc h
    nop
    inc c
    ld [hl-], a
    add b
    ld [hl], b
    ld h, h
    dec l
    ld d, [hl]

jr_063_60d5:
    inc h
    inc de
    dec hl
    ld a, b
    jr nz, jr_063_60db

jr_063_60db:
    nop
    nop
    cp a
    db $dd
    sbc $a0
    and b
    and b
    call c, $e2fa
    and b
    ccf
    ret c

    reti


    and b
    and b
    jp nc, $fcd3

    rst $30
    ldh [$e1], a
    ld hl, sp-$24
    pop hl
    ret nc

    db $e4
    jp z, $e2e2

    db $e3

Call_063_60fb:
    db $e4
    rst $18
    ldh [$f9], a
    pop hl
    ld a, [$b9e0]
    ldh [$da], a
    db $db
    ret nc

    pop de

Jump_063_6108:
    call nc, $d5e7
    and b
    and b
    db $fc
    rst $28
    add sp, -$1f
    ret nc

    pop de
    jp c, $db3f

    sub $d7
    jp c, $a0db

    ret nc

    db $e3
    ld a, [$3fe4]
    add sp, -$17
    ld [$e6e5], a
    rst $20
    ld a, [$7fe0]
    pop hl
    cp h
    add d
    ld [c], a
    ld [hl], b
    ldh [$9f], a
    sbc l
    and d
    sbc l
    rst $38
    db $e3
    and d
    inc de
    sbc l
    sbc a
    add sp, -$1b
    ld a, [hl]
    push hl
    and b
    ret nc

    db $e3
    ld a, [$73e4]
    jp hl


    ei
    sub $d7
    add d
    pop hl
    sbc a
    sbc l
    sbc l
    sbc h
    ld b, [hl]
    jp z, $e7ff

    sbc h
    or [hl]
    ldh [$9f], a
    ld l, d
    db $e3
    add d
    pop hl
    sub $d7
    ld hl, $d8a0
    ldh [$3d], a
    rst $20
    ld [hl], e
    jp hl


    inc h
    ld [c], a
    sbc a
    jp $bce9


    and $0c
    ld a, d
    ld [c], a
    nop
    push hl
    ret c

    reti


    dec a
    rst $20
    ld [hl], e
    jp hl


    nop
    pop hl
    pop bc
    and $df
    ld b, l
    dec hl
    ld sp, $452b
    ld a, d
    rst $20
    sbc a
    and b
    and b
    nop
    push hl
    db $fc
    pop bc
    dec a

jr_063_6189:
    rst $20

Jump_063_618a:
    add b
    ret


    add d
    pop bc
    sbc [hl]
    pop bc
    push hl
    ld a, [hl+]
    cp a
    jr nz, jr_063_61b5

    jr nz, jr_063_61c4

    ld b, [hl]
    ld b, l
    cp l
    push hl
    sbc [hl]
    ldh a, [$7e]
    bit 2, c
    pop bc
    add b
    adc $00
    pop hl
    and c
    ld b, [hl]
    ld b, [hl]
    xor [hl]
    cp $c0
    db $e3
    cpl
    jr nz, @+$22

    ld [hl-], a
    ld b, e
    ld b, a
    ld d, d
    dec bc
    ld d, b

jr_063_61b5:
    ld b, l
    rst $28
    ld [c], a
    sbc [hl]
    ld a, d

Jump_063_61ba:
    jp nz, $e57e

    inc c
    ret nz

    add b
    ret nc

    db $f4
    nop
    pop bc

jr_063_61c4:
    ld bc, $afe0
    ld b, b
    db $e3
    ld b, e
    dec hl
    jr z, jr_063_6189

    cp a
    ld [hl], $47
    ld h, c
    ld e, l
    ld d, d
    ld b, l
    rst $28
    pop hl
    sbc [hl]
    ldh [$62], a
    call nz, $a6fc
    add b
    ret nc

    nop
    pop bc
    ret nz

    ret z

    xor [hl]
    ld [hl], $35
    cp a
    dec [hl]
    jr c, jr_063_6220

    ld d, e
    ld d, e
    ld b, l
    dec sp
    pop hl
    and c
    ret nz

    sbc c
    and b
    db $fc
    and e
    ld hl, sp-$5f
    add b
    db $d3
    add d
    and e
    ld a, a
    add $af
    ld b, l
    cp $bf
    ldh [$35], a
    dec [hl]
    dec sp
    add hl, sp
    ld b, a
    ld d, d
    ld b, l
    nop
    add hl, sp
    pop bc
    or $a0
    ld h, d
    and l
    add b
    db $d3
    nop
    pop bc
    ld a, [hl]
    ldh [$bd], a
    ret nz

    db $fd
    ret nz

    cp a
    inc bc
    inc b
    inc b
    inc bc
    ld b, l
    ld a, [hl-]

jr_063_6220:
    cp a
    pop hl
    ld a, [hl-]
    rlca
    ld c, e
    ld h, c
    ld d, l
    ld a, h
    call nz, $a5f8
    add b
    db $d3
    nop
    and h
    db $fd
    jp nz, Jump_000_057f

    stop
    ld bc, $0510
    add hl, sp

Jump_063_6239:
    ld a, a
    pop hl
    inc bc
    dec [hl]
    ld c, d
    ret nz

    db $e3

jr_063_6240:
    dec sp
    pop bc
    ld e, d
    and d
    ld a, [hl]
    call nz, $b000
    ld a, [hl]
    db $e3
    cp $bd
    and c
    ld b, $98
    sbc b
    sbc b
    sbc c
    ld b, $45
    ld a, e
    scf
    jr c, jr_063_6295

    ldh [$39], a
    ld e, [hl]
    ld c, c
    ld c, b
    push af
    and d
    rst $00
    sbc h
    sbc l
    and d
    ld hl, sp-$5b
    add b
    pop de
    ld a, [hl]
    jp hl


    ld [$bf98], sp
    sub a
    sub a
    sbc b
    rrca
    ld [bc], a
    ld b, [hl]
    db $fc
    pop bc
    ld a, [hl-]
    ld l, a
    ld b, a
    ld h, c
    ld h, b
    ld b, d
    jr z, jr_063_6240

    sbc h
    sbc a
    db $76
    add h
    db $f4
    nop
    or d
    ld a, [hl]
    push hl
    sbc [hl]
    ret nz

    pop hl
    sbc b
    ld bc, $0f00
    rst $30
    rlca
    inc b
    inc bc
    ld a, d
    ret nz

    ld [hl], $53
    ld d, e

jr_063_6295:
    ld b, h
    inc c
    or b
    ret nz

    ld l, h
    pop bc
    ld b, [hl]
    sbc [hl]
    db $76
    add l
    cp l
    and e
    nop
    xor l
    db $fc
    ld h, e
    ld sp, hl
    and c
    ld b, b
    ldh [$80], a
    ldh [$98], a
    sbc b
    nop
    ld bc, $bd0d
    ld [bc], a
    add hl, sp
    ret nz

    ld h, d
    ld h, [hl]
    jr c, jr_063_62ef

    inc sp
    and d
    xor a
    ldh a, [$f7]
    and c
    db $f4
    ld h, l
    nop
    xor a
    db $fc
    push bc
    sbc a
    sbc h
    dec b
    ld c, $fc
    ccf
    ldh [$be], a
    pop hl
    sbc c
    ld [$3a45], sp
    ld h, d
    ld h, a
    rrca
    ld l, b
    ld h, [hl]
    dec [hl]
    add hl, sp
    or $86
    db $76
    add e
    scf
    add e
    add b
    ld l, b
    call c, $687a
    ld a, d
    add b
    ld [bc], a
    dec c
    sbc b
    db $fd
    pop bc
    ld bc, $ff00
    ld b, $46

jr_063_62ef:
    add hl, sp
    ld l, c
    dec [hl]
    dec [hl]
    ld l, b
    ld h, [hl]
    ld bc, $b23a
    add h
    db $76
    and c
    ld a, d
    ld h, a
    or [hl]
    ld h, a
    ld a, d
    ld h, e
    sbc [hl]
    ld h, c
    ld a, d
    and b
    or $39
    add b
    inc bc
    inc b
    cp [hl]
    pop hl
    sbc b
    ld c, $05
    xor [hl]
    daa
    ld b, d
    ld l, e
    ld l, h
    cp a
    pop hl
    ld a, a
    db $e4
    sbc [hl]
    db $76
    add d
    nop
    xor [hl]
    ld hl, sp+$7a
    ld h, h
    db $fc
    ld b, l
    ld hl, sp+$61
    inc bc
    inc b
    rrca
    sbc b
    sbc b
    cp a
    ld [$af46], sp
    ld b, d
    ld l, [hl]
    ld [hl], h
    ld [hl], a
    and b
    ld l, d
    nop
    ld a, a
    ldh [$b6], a
    add e
    ld e, d
    ld h, d
    add b
    ld [hl], b
    and [hl]
    ld h, c
    db $fc
    and l
    or a
    ld h, e
    ld a, [$1aa0]
    inc a
    pop bc
    ld a, [hl-]
    ld a, a
    ldh [$6c], a
    ld l, l
    ccf
    ldh [$a5], a
    add b
    nop
    db $e4
    ldh a, [$7a]
    ld h, l
    nop
    xor e
    ld a, [hl]
    rst $00
    ld l, d
    ld b, b
    and c
    ld b, [hl]
    xor [hl]
    dec b
    db $fd
    sbc c
    cp a
    ld [c], a
    add hl, sp
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld l, [hl]
    nop
    cp a
    jp $81b7


    ld a, d
    ld l, b
    ld b, e
    ld [$a27e], a
    ld a, d
    ld b, l
    ld [hl], $81
    ret nz

    ldh [rDIV], a
    cp d
    and c
    ld hl, sp-$7e
    ld [hl], $fd
    and b
    scf
    add e
    db $76
    ld b, l
    add b
    pop de
    db $fc
    add l
    cp h
    cp e
    ld b, e
    ld a, [hl-]
    and c
    nop
    ld bc, $020f
    ld hl, sp-$80
    ld a, [hl-]
    dec bc
    ld b, a
    ld b, a
    inc a
    and e
    sbc a
    db $f4
    dec h
    add b
    jp nc, Jump_000_23fc

    cp e
    ld b, e
    db $fc
    ret nz

    pop bc
    db $fd
    and d
    rrca
    dec b
    inc a
    dec [hl]
    ld a, [hl-]
    ld d, d
    inc bc
    ld h, c
    ld e, h
    push af
    ld b, h
    db $76
    ld b, e
    add b
    db $d3
    ld a, [hl]
    add l
    dec sp
    ld h, b
    cp $a3
    ld a, [de]
    cp h
    and d
    ld b, $37
    add b
    add hl, sp
    ld e, [hl]
    ld a, a
    db $e3
    ld [hl], l
    ld h, c
    nop
    or l
    call c, $43fc
    dec a
    ld b, c
    xor a
    ld b, [hl]
    ld [bc], a
    add e
    ldh [$97], a
    sub [hl]
    ld e, $3b
    and b
    sbc c
    ld bc, $0800
    ccf
    pop hl
    ld a, a
    db $e3
    cp $80
    inc l
    nop
    cp l
    add a
    ret nz

    ld b, [hl]
    ld b, [hl]
    ccf
    and c
    sub [hl]
    pop bc
    ldh [$fe], a
    add b
    ld l, a
    rlca
    rlca
    ld [bc], a
    ld b, h
    ccf
    ldh [rSCX], a
    ld e, e
    jr nc, jr_063_643f

    nop
    cp $80
    nop
    cp e
    db $fc
    ld hl, $40bd
    cp a
    add b
    pop bc
    ldh [$3c], a
    add b
    ld a, c
    ld h, b
    inc de
    scf
    dec a
    ld sp, hl
    ld h, b
    nop
    and e
    xor [hl]
    nop
    and $7a
    ld h, e
    nop
    xor a
    and [hl]
    ld a, [hl]

jr_063_641f:
    ld h, e

Jump_063_6420:
    ld b, [hl]
    ld [$c045], sp
    ld b, d
    pop hl
    ld [$60fd], sp
    ld h, d
    ccf
    ld h, e
    ld h, h
    ld h, h
    ld h, h
    ld a, h
    ld a, l
    ld a, a
    add [hl]
    ld hl, sp+$28
    ldh [rP1], a
    xor a
    nop
    add e
    cp a
    ld h, c
    add c
    pop hl
    add c

jr_063_643f:
    add b
    ld [hl], $62
    ld h, a
    ld b, $fa

jr_063_6445:
    ld b, c
    ld b, l
    ld a, a
    cp a
    ld [c], a
    ld [hl], l
    jr nz, jr_063_6445

    jr z, jr_063_644f

jr_063_644f:
    or h
    ld a, d
    jr nz, jr_063_641f

    ld b, b
    pop hl
    cp l
    ld h, c
    ld c, $05
    ld b, d
    and c
    ld b, c
    pop hl
    xor [hl]
    add c
    ret nz

    ld [hl], l
    inc h
    db $76
    jr z, jr_063_6465

jr_063_6465:
    or h
    cp e
    nop
    ret nz

    jp nz, $c182

    ld b, $39
    scf
    ld l, [hl]
    ld l, a
    ld l, h
    add c
    ldh [rDMA], a
    xor a
    ret nz

    ldh [$64], a
    ld hl, $a1c1
    db $76
    daa

Jump_063_647e:
    nop
    or l
    ld a, d
    ld bc, $617e
    ld a, h
    ld h, c
    rrca
    ld [bc], a
    add hl, de
    ld [hl], $80
    add b
    ld [bc], a
    add c
    adc h
    ld a, l
    ld h, h
    ld [hl+], a
    ld a, [hl]
    and [hl]
    nop
    or a
    ld [hl], b
    jr c, @+$23

    ld a, [hl]
    ld h, b
    db $fc
    ld b, b
    dec sp
    ld h, b
    ld c, $05
    ld [hl], $ff
    ld h, b
    ld bc, $7336
    nop
    ccf
    ld [c], a
    db $fd
    ld b, b
    ld a, [hl]
    ld h, h
    nop
    cp b
    ld a, [hl]
    ld h, l
    db $fd
    ld b, d
    ld a, e
    ld b, $42
    ld a, $e1
    ld [hl], $45
    add e
    add h
    db $fd
    ld b, d
    add sp, -$07
    ld [hl+], a
    nop
    or a
    nop
    add l
    and c
    ld a, l
    jr nz, jr_063_64d1

    dec c
    ld bc, $00e7
    sbc c
    dec c
    pop bc

jr_063_64d1:
    add b
    ccf
    add b
    ld [hl], c
    adc b
    add a
    ld bc, $6585
    ld [bc], a
    ld a, [hl]
    add h
    nop
    or l
    ld a, d
    daa
    cp l
    add d
    ld a, $40
    add hl, sp
    inc hl
    nop
    ld a, $e1
    ld h, l
    ld [bc], a
    ld a, [hl]
    ld b, e
    nop
    or [hl]
    ld a, [hl]
    add $cf
    inc hl
    inc sp
    nop
    ld a, [hl-]
    inc hl
    nop
    ld a, [hl]
    and l
    nop
    pop bc
    ld a, [hl]
    ld h, e
    nop
    ld d, l
    ld a, [hl]
    ld h, c
    cp [hl]
    and b
    rst $08
    ld hl, $610f
    nop
    add c
    db $e4
    cp l
    and c
    nop
    adc d
    nop
    ld d, b
    add d
    ld h, e
    ld a, [hl]
    ld h, c
    ret nz

    pop hl
    cp l
    db $e3
    nop
    ld a, [hl-]
    inc bc
    ret nz

    and $82
    add b
    nop
    ld d, h
    ld a, [hl]
    rlca
    ld a, [hl]
    and e
    ld b, d
    db $e3
    pop bc
    rst $20
    ld [bc], a
    cp [hl]
    inc hl
    and c
    add d
    dec h
    add b
    rrca
    inc b
    ld h, l
    nop
    ld h, c
    add b
    db $e4
    ld a, a
    inc bc
    nop
    nop
    db $e3
    cp $a1
    ld b, c
    ld b, b
    add d
    inc h
    add b
    db $10
    add d
    rst $20
    db $fc
    ld h, h
    add e
    jp hl


    jr nz, @+$01

    inc b
    inc bc
    pop bc
    add [hl]
    add d

jr_063_6553:
    add b
    ld [hl], b
    inc b
    ld b, e
    and b
    jr nz, jr_063_657a

    add e
    ld b, d
    nop
    dec b
    jp hl


    pop bc
    inc bc
    xor c
    ld h, b
    add d
    inc h
    adc l
    ld b, [hl]
    nop
    ld c, a
    ld b, [hl]
    ld b, b
    add e
    ld b, e
    nop
    ld b, a
    rst $00
    add [hl]
    jp $013e


    inc b
    and h
    ld c, d
    rlca
    ld b, e
    add hl, hl

jr_063_657a:
    inc b
    inc h
    add e
    ld b, e
    ret nz

    ld b, a
    ret


    add h
    ld bc, $a2f3
    inc b
    push bc
    dec c
    daa
    add [hl]
    dec c
    jp nc, Jump_000_00d3

    add e
    ld b, e
    ret z

    xor c
    dec b
    ld [c], a
    add [hl]
    adc d
    ld d, d
    jp nz, $ce80

    add [hl]
    inc hl
    add h
    ld h, b
    db $10
    ld e, c
    and d
    ret z

    and l
    rst $00
    call nz, Call_063_4186
    and c
    inc b
    push bc
    add [hl]
    ld h, c
    add b
    rst $08
    ld [$2308], sp
    ld b, $c6
    ld c, c
    and d
    dec sp
    ld c, d
    jp $6405


    add [hl]
    ld l, c
    nop
    ld d, c
    ld a, [hl-]
    ld [$a121], sp
    ld [bc], a
    add sp, $36
    ccf
    ld b, e
    pop bc
    and $86
    daa
    jr c, jr_063_6553

    ld h, e
    add b
    rst $08
    add [hl]
    ld h, l
    ld b, [hl]
    ld b, l
    ld b, c
    rrca
    ldh [$0d], a
    ld b, b
    ld b, $84
    and $9c
    sbc l
    rst $38
    pop hl
    ld [$8684], sp
    inc b
    add b
    rst $08
    add d
    jp nz, $856e

    ld b, b
    ld b, l
    ld [hl], $a6
    sub d
    ld h, b
    ld b, l
    ccf
    cp d
    pop hl
    ld b, b
    dec c
    inc h
    ld hl, $6a40
    ld h, c
    add [hl]
    add hl, bc
    add b
    rst $08
    add [hl]
    ld h, d
    sbc [hl]
    db $10
    ld b, c
    inc bc
    and a
    ld h, [hl]
    add hl, bc
    rst $20
    adc $41
    db $e4
    push bc
    add [hl]
    add hl, bc
    nop
    or c
    add [hl]
    ld bc, $1006
    ld b, c
    and e
    ld l, b
    cp a
    rst $20
    adc e
    and d
    adc d
    and b
    adc d
    add c
    add [hl]
    add hl, bc
    ld a, $00
    or e
    sbc [hl]
    ld b, [hl]
    ld b, d
    xor b
    xor c
    db $10
    ld b, b
    cp a
    rst $20
    ld h, b
    adc e
    and d
    inc c
    add [hl]
    add [hl]
    rlca
    nop
    or c
    ld [$4581], sp
    ld [hl], $10
    ld b, c
    rlca
    and e
    xor d
    xor e
    ld b, [hl]
    push bc
    ret nc

    ld b, b
    ld [$86c7], sp
    rst $00
    nop
    or c
    inc e
    add d
    and d
    cp a
    ld [c], a
    ld l, h
    ld l, a
    ld l, [hl]
    ld d, b
    add d
    add [hl]
    ret nz

    add d
    ld [$5000], a
    add hl, bc
    nop
    xor a
    add [hl]
    add b
    ld bc, $7ec0
    pop hl
    pop bc
    ld [c], a
    jp $82e3


    ld [$4320], a
    ld [$b000], a
    add e
    add b
    ld a, [hl]
    ld [c], a
    add d
    ldh [$9c], a
    rrca
    jp nz, $a46a

    nop
    adc [hl]
    inc b
    ld b, e
    db $eb
    nop
    or b
    ld b, c
    add e
    pop de
    and l
    inc c
    jp $a78a


    ld b, e
    db $ec
    nop
    nop
    or d
    cp $e9
    inc c
    ret z

    add [hl]
    adc $00
    or e
    sbc d
    and e
    add [hl]
    jp hl


    sub d
    ld b, l
    nop
    add [hl]
    call Call_063_4387
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
    ld [$0102], sp
    inc h
    ld [$0202], sp
    dec de
    ld a, [bc]
    ld [bc], a
    inc bc
    ld d, $0c
    ld [bc], a
    inc b

Jump_063_66d1:
    dec hl
    rrca
    ld [bc], a
    dec b
    cpl
    db $10
    ld [bc], a
    ld b, $23
    inc d
    ld [bc], a
    rlca
    ld l, $15
    ld [bc], a
    ld [$171d], sp
    ld [bc], a
    add hl, bc
    jr @+$1d

    ld [bc], a
    ld a, [bc]
    ld sp, $021c
    dec bc
    ld d, $1d
    ld [bc], a
    inc c
    jr nc, jr_063_6711

    ld [bc], a
    dec c
    dec hl
    ld hl, $0e02
    cpl
    ld [hl+], a
    ld [bc], a
    rrca
    ld [hl-], a
    inc h
    ld [bc], a
    db $10
    ld l, $26
    ld [bc], a
    ld de, $281c
    ld [bc], a
    ld [de], a
    rra
    add hl, hl
    ld [bc], a
    inc de
    ld a, [de]
    dec l
    ld [bc], a
    inc d

jr_063_6711:
    dec l
    ld l, $02
    dec d
    add hl, hl
    jr nc, jr_063_671a

    ld d, $15

jr_063_671a:
    ld sp, $1702
    dec hl
    ld [hl-], a
    ld [bc], a
    jr jr_063_6744

    jr c, @+$01

    rst $38
    rst $38
    ld l, $67
    sub d
    ld l, d
    ld [hl], $6f
    ld d, c
    ld l, a
    xor a
    dec c
    ld c, $0e
    ld c, $fc
    jp hl


    ld c, l
    rst $38
    ldh [$0d], a
    add c
    ld c, l
    ld hl, sp-$20
    rst $20
    ldh [$fc], a
    rst $28
    db $e4
    ldh [$d0], a

jr_063_6744:
    db $ec
    db $fd
    rst $28
    ld c, l
    nop
    jp nz, $f2e0

    rst $38
    ld hl, sp-$09
    add [hl]
    ld [c], a
    ld a, [hl]
    ldh [$7a], a
    db $e3
    ld [hl], c
    pop hl
    ld [hl], d
    add sp, $14
    ret nz

    rst $38
    ld l, h
    ld [$4e0d], a
    ldh [$2d], a
    ld [hl-], a
    pop hl
    ld l, h
    db $e4
    ret nz

    pop af
    ld a, b
    ld [bc], a
    db $ec
    ld [$fce4], sp
    jp $0b6d


    dec bc
    dec bc
    cp [hl]
    ldh [rNR41], a
    ld a, d
    and $d2
    call $cdfe
    inc b
    db $eb
    pop bc
    ldh [$0d], a
    cp $e0
    cp [hl]
    pop hl
    nop
    xor c
    ret nz

    ld d, d
    rst $38
    add [hl]
    rst $20
    add d
    and $c0
    pop hl
    cp [hl]
    pop hl
    cp a
    pop hl
    sub c
    db $d3
    cp $b8
    rst $10
    ld c, l
    dec bc
    dec c
    dec hl
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    add b
    ld a, h
    ld [c], a
    ld a, [$dec2]
    jp nc, $ca04

    add d
    jp hl


    ld b, d
    pop hl
    pop bc
    ldh [$0a], a
    add b
    db $fd
    ret nz

    inc a
    ldh [$ba], a
    jp nz, $df00

    cp $a6
    cp d
    and b
    inc bc
    ldh [$0a], a
    ld a, [bc]
    jp nz, Jump_000_2be1

    add hl, sp
    pop hl
    ld l, l
    ld [$faa2], a
    db $dd
    sbc d
    and l
    ld a, l
    and b
    ld [hl], $c3
    pop bc
    dec c
    ld c, d
    add d
    pop hl
    ld l, e
    ld a, [bc]
    ret nz

    ld [c], a
    nop
    rst $18
    ld hl, sp+$0c
    rst $00
    ld a, [hl-]
    and b
    add h
    jp nz, Jump_000_2b6b

    ld c, e
    ld c, e
    ld l, e
    inc bc
    ld a, [bc]
    ld a, [hl+]
    ld a, d
    ret nz

    add b
    db $e3
    cp $dd
    inc e
    ld [c], a
    inc c
    ret nz

    db $fd
    ld [c], a
    cp $46
    ret nz

    dec hl
    dec hl

Jump_063_67fc:
    dec bc
    dec hl
    ld l, e
    dec c
    dec c
    ld e, b
    ld b, c
    pop hl
    ld a, [hl]
    and [hl]
    cp $dd
    ld c, l
    inc c
    rst $38
    db $e3
    inc l
    ld b, $e2
    add e
    dec bc
    dec hl
    pop bc
    ldh [rSTAT], a
    ld [c], a
    ld b, [hl]
    rst $38
    adc d
    add h
    ret nz

    push hl
    inc c
    add a
    inc l
    ld l, e
    ld c, e
    ret nz

    push hl
    cp [hl]

jr_063_6824:
    and c
    ld l, [hl]
    add h
    cp h
    cp $2c
    inc b
    ld a, a
    db $e4
    ret nz

    ldh [rOCPD], a
    jr c, @-$1c

    ld b, b
    ldh [rLCDC], a
    jp nz, $df00

    inc e
    jp nz, Jump_063_4c09

    rst $38
    ld [c], a
    ld a, $e2
    ld l, e
    cp $e0
    ld b, c
    pop bc
    ld b, b
    ret nz

    add sp, -$7b
    stop
    sbc [hl]
    rrca
    and b
    jp z, $be80

    pop hl
    inc l
    ld a, a
    ldh [$3d], a
    ldh [rP1], a
    jp nz, Jump_063_4d13

    dec l
    ld b, [hl]
    rst $38
    adc d
    ld h, h
    dec l
    rst $38
    pop hl
    cp [hl]
    pop hl
    db $fd
    ret nz

    ret nz

    db $fc
    jp nz, $c1b9

    db $fd
    add b
    nop
    rst $38
    adc h
    ld h, [hl]
    inc b
    and b
    dec bc
    dec bc
    ret nz

    ld a, d
    jp $c1fb


    ld a, [hl]
    xor b
    nop
    rst $18
    jr jr_063_6824

    ld b, [hl]
    add b
    inc c
    ld l, h
    inc bc
    ld l, h
    ld l, h
    dec sp
    ld [c], a
    di
    and e
    ld a, [hl]
    and l
    cp $df
    add h
    add e
    ret nz

    ldh [rLCDC], a
    dec sp
    db $e3
    ld a, [hl-]
    pop bc
    ccf
    ld [c], a
    ld b, [hl]
    rst $38
    ld a, [hl]
    jp $8244


    dec bc

jr_063_68a2:
    cp a
    and b
    ld c, $c6
    add b
    ld c, h
    ld c, h
    inc l
    ret nz

    add b
    cp $c2
    ret nz

    ldh [rP1], a
    db $fd
    inc b
    add h
    ld b, l
    ld b, a
    ld h, c
    inc c
    rst $00
    db $e3
    ld sp, hl
    ld [c], a
    ccf
    db $e3
    nop
    db $dd
    db $fc
    and a
    inc c
    ld c, c
    ld h, c
    rst $00
    db $e4
    inc c
    ld l, h
    ld a, [hl-]
    and d
    dec a
    add d
    db $fc
    jr nc, jr_063_690c

    ld d, h
    inc c
    ret nz

    ld [c], a
    ld b, c
    and b
    ld l, e
    ld c, e
    ld a, [hl-]
    ld [c], a
    or $82
    add b
    db $e4
    db $fc
    ld a, a
    jr jr_063_68a2

    pop hl
    cp [hl]
    and b
    pop bc
    and b
    ld c, e
    ld c, e
    ld b, c
    db $e4
    ret nz

    db $e4
    db $fc
    ld a, a
    ld [hl+], a
    adc d
    inc h
    dec l
    add [hl]
    ld b, b
    inc a
    and d
    ld bc, $4be4
    nop
    rst $20
    ret nz

    db $ed
    jr jr_063_6900

jr_063_6900:
    ld d, c
    nop
    jp nz, $c781

    dec bc
    ld c, e
    ret nz

    ld [c], a
    db $fc
    inc sp
    ld [de], a

jr_063_690c:
    ld sp, $8080
    and d
    ld [bc], a
    add d
    ret nz

    db $e4
    ld a, [$7d20]
    ld h, b
    ld b, [hl]
    cp $00
    ret z

    dec c
    inc c
    ret z

    call nz, Call_063_60fb
    dec hl
    ld l, e
    ret nz

    pop hl
    ld a, d
    dec h
    nop
    rst $18
    add [hl]
    inc h
    inc b
    ld c, b
    jp Jump_063_61ba


    ld c, e
    ld [hl], a
    ld h, c
    or $03
    nop
    sbc $9a
    add d
    ld [$0621], sp
    adc b
    call nz, Call_063_6c4c
    ld [hl-], a
    ld h, l
    ld a, $a2
    nop
    rst $18
    ld a, [hl-]
    ld h, c
    jp nz, Jump_000_00c4

    cp $e7
    inc sp
    ret nz

    cp $a5
    nop
    rst $18
    ld [bc], a
    db $e3
    ret nz

    add sp, -$44
    nop
    ld a, c
    ld [c], a
    nop
    ld a, d
    ld b, e
    cp d
    rst $18
    add d
    push bc
    add $a5
    ld l, l
    ld h, e
    add b
    db $f4
    nop
    ret nc

    pop bc
    and b
    ld a, [bc]
    ld b, c
    db $eb
    dec c
    ld l, h
    ld h, d
    dec l
    ld a, [hl]
    and d
    nop
    rst $18
    nop
    and d
    add h
    ld b, e
    ldh [rSCY], a
    jr nz, jr_063_6984

    ret nz

    add d
    ld [hl+], a
    ld c, b

jr_063_6984:
    rst $38
    nop
    adc b
    dec bc
    dec c
    ld c, e
    inc b
    ret nz

    db $e3
    db $fd
    jr nz, jr_063_699d

    add e
    nop
    add d
    dec h
    nop
    rst $18
    add b
    add h
    call z, Call_063_4064
    ld b, a
    and d

jr_063_699d:
    ld b, $93
    nop
    sbc c
    rst $38
    pop bc
    jp Jump_063_4422


    ld [bc], a
    dec c
    add [hl]
    add l
    nop
    nop
    ld e, a
    cp $aa
    ret z

jr_063_69b0:
    ld h, h
    add h
    jr jr_063_69b0

    ld [hl], $80
    add d
    ld c, b
    ld h, l
    ld l, d
    add l
    nop
    cp h
    rst $18
    cp $aa
    ret z

    ld h, l
    ld [$84a8], sp
    or c
    ld l, $ef
    ld a, [hl]
    and d
    add e
    xor b
    nop
    inc b
    dec h
    inc b
    ld c, a
    nop
    ld e, d
    rst $38
    and h
    add [hl]
    scf
    nop
    db $fc
    ld a, a
    push bc
    add [hl]
    dec h
    db $10
    inc b
    ccf
    nop
    db $ec
    ld b, a
    ld hl, $2184
    dec l
    rst $28
    nop
    nop
    rst $18
    nop
    jp z, $fe00

    add c
    add h
    and c
    add c
    and d
    rst $00
    ld h, b
    add sp, -$7e
    ld [bc], a
    rst $38
    ld a, b
    ld h, a
    db $fd
    ld h, d
    ld hl, $056b
    ld hl, $8043
    add [hl]
    ld [hl], d
    nop
    ld e, d
    dec c
    rst $38
    and a
    ld b, a
    add d
    ld b, b
    nop
    rst $38
    ld a, [hl]
    ld l, $3e
    jp z, Jump_000_388c

    nop
    pop de
    ld a, [hl]
    ld [hl+], a
    dec c
    ld a, $65
    nop
    cp $c2
    nop
    rst $18
    add b
    db $ed
    adc d
    ld h, l
    inc b
    jr z, @+$01

    rst $38
    ld a, [hl]
    ld c, b
    ld a, $69
    nop
    inc b
    inc h
    rst $38
    rst $38
    add b
    daa
    ld b, c
    pop hl
    ret


    ld hl, $83bc
    ld [bc], a
    rst $38
    nop
    adc d
    nop
    ld d, b
    ld hl, $473f
    ld a, [hl]
    ld h, h
    ld [bc], a
    rst $38
    ld a, b
    daa
    cp [hl]
    ld c, b
    cp h
    ld h, c
    nop
    rst $38
    jr nc, jr_063_6a52

jr_063_6a52:
    call Call_000_003e
    db $fd
    ld b, b
    cp d
    ld b, b
    ld l, e
    ld l, e
    ld a, [hl]
    add a
    rst $38
    rst $38
    inc [hl]
    ld a, [hl]
    add sp, $7d
    ld b, b
    dec c
    cp $e1
    ld c, e
    dec c
    ld a, [hl]
    ld a, d
    nop
    call nc, $fc00
    ld b, d
    scf
    ld hl, $4241
    add sp, $24
    cp $df
    db $fc
    jp z, $e4ff

    ccf
    ld h, c
    nop
    ld c, [hl]
    rst $38
    db $fc
    ld l, $f8
    nop
    db $fc
    rst $20
    nop
    rst $38
    inc e
    ld l, a
    inc [hl]
    ld b, d
    add [hl]
    inc a
    nop
    nop
    nop
    rst $08
    and b
    call c, $dedd
    db $fc
    ld [$e2ff], a
    ret c

    reti


    add [hl]
    db $fc
    db $e3
    jp nc, $fcd3

    rst $20
    db $ec
    pop hl
    ld [c], a
    ldh [$d0], a
    db $ec
    rst $18
    rst $30
    ldh [$e1], a
    ld [c], a
    db $fc
    jp hl


    sub $d7
    and b
    and b
    rst $28
    sub $d7
    jp c, $fcdb

    pop hl
    ret nc

    pop de
    call nc, $d5df
    and b
    and b
    call nc, $f8d5
    pop hl
    ret nc

    pop de
    or $ec
    pop hl
    and b
    and b
    ret nc

    db $ed
    db $e3
    db $e4
    push hl
    and $c0
    db $fc
    jp hl


    add [hl]
    push hl
    add d
    push hl
    ld [hl], b
    pop hl
    ld a, [hl]
    jp hl


    ret nc

    db $ed
    rst $20
    add sp, -$1d
    jp hl


    ld [$e9fc], a
    add [hl]
    db $e3
    add d
    push hl
    sbc a
    and d
    sbc l
    di
    sbc l
    sbc a
    ld a, [hl]
    ldh [$7a], a
    db $e3
    jp c, $a0db

    and b
    ld hl, sp-$30
    db $ed
    ld [bc], a
    rst $28
    inc b
    add sp, -$61
    sbc h
    ld b, [hl]
    ld b, [hl]

jr_063_6b05:
    ld b, [hl]
    ld de, $be9c
    ldh [$7a], a
    push hl
    jp nc, $dcce

    ld [bc], a
    db $eb
    inc b
    db $eb
    pop bc
    ldh [$79], a
    xor [hl]
    cp $e0
    cp [hl]
    db $e4
    call nc, $d6d5
    rst $10
    jp nc, $13cd

    rst $18
    ldh [rSC], a
    db $eb
    add d
    xor $af
    cp $e0
    cp [hl]
    pop hl
    ld a, l
    ld [c], a
    dec de
    ret c

    reti


    jp nc, $e3cd

    db $e4
    ld [bc], a
    db $eb
    adc d
    jp $c486


    rst $38
    sbc [hl]
    ld b, [hl]
    xor [hl]
    ld b, l
    ld c, b
    ld c, [hl]
    ld c, b
    ld b, l
    jr nc, jr_063_6b05

    pop hl
    cp a

jr_063_6b49:
    ldh [$7e], a
    pop bc
    jp nc, $e7cd

    add sp, $04
    rrc h
    ret


    cp $03
    ldh [$af], a
    ld c, d
    ld h, b
    ld d, h
    ld e, c
    ld b, c
    ld b, l
    add $7a
    ldh [rDMA], a
    and c
    ld [hl], d
    push bc
    nop
    ret c

    inc c
    ret


    and b
    and b
    db $fd
    and c
    inc bc
    ldh [rVBK], a
    ld d, [hl]
    ld a, [hl+]
    jr nz, jr_063_6b94

    ld a, [hl+]
    rra
    ld b, e
    ld b, l
    xor [hl]
    ld b, [hl]
    sbc [hl]
    nop
    ld [c], a
    nop
    db $db
    inc c
    ret


Jump_063_6b81:
    sbc $81
    ld [c], a
    xor [hl]
    ld c, d
    ld e, d
    jr nz, jr_063_6b49

    ldh [rWX], a
    ld b, h
    ld h, c
    xor a
    ret nz

    ldh [rP1], a
    rst $18
    adc d
    and c

jr_063_6b94:
    inc c
    ret nz

    and c
    sbc l
    rst $38
    pop hl
    cp $84
    pop bc
    xor a
    ld b, l
    add hl, sp
    ld hl, $2a26
    ld c, c
    ld c, l
    ld d, d
    nop
    and $d6
    rst $10
    nop
    db $db
    ld [$9ea1], sp
    inc c
    ret nz

    db $fc
    db $fd
    ld [c], a
    ld a, [bc]
    ldh [rLYC], a
    ld a, [hl-]
    dec [hl]
    ld a, $43
    xor [hl]
    pop hl
    xor [hl]
    add c
    ld [c], a
    db $fc
    add [hl]
    nop
    ret c

    inc c
    and c
    sbc [hl]
    ld [bc], a
    rlca
    ld a, [$e2ff]
    ld [bc], a
    pop bc
    ldh [$36], a
    dec [hl]
    dec [hl]
    ld a, $ae
    jp $afaf


    ld bc, $00e1
    jp nz, $81e8

    nop
    db $db
    jp nc, $ffd3

    sbc [hl]
    sbc c
    nop
    ld bc, $0098
    ld bc, $5f99
    rrca
    rlca
    ld [bc], a
    ld b, d
    dec [hl]
    ret nz

    ldh [$af], a
    add b
    pop hl
    ld hl, sp-$01
    and d
    ld l, d
    add e
    nop
    db $db
    call nc, $9ed5
    sbc e
    sbc c
    db $ec
    pop bc
    ldh [$be], a
    ldh [$9b], a
    ld [$e041], sp
    dec [hl]
    ld a, [hl-]
    ld b, l
    ret nz

    add b
    pop hl
    ld b, b
    ret nz

    ld a, [hl]
    add e
    db $fc
    xor l
    nop
    rst $08
    ld b, b
    db $e3
    rrca
    sbc d
    rst $38
    nop
    ld bc, $4608
    add hl, sp
    dec [hl]
    dec sp
    dec [hl]
    and c
    ld [hl], $00
    ret nz

    ld b, b
    pop bc
    db $fc
    ld h, h
    nop
    sbc $a1
    ret nz

    jp nz, $ff02

    rlca
    rrca
    sbc b
    rrca
    ld [bc], a
    ld b, l
    ld b, c
    ld b, e
    and c
    ld [hl], $bf
    ld [c], a
    ld a, $a0
    db $fc
    ld h, e
    nop
    rst $18
    sbc a
    ld b, d
    jp $0146


    ld [bc], a

Call_063_6c4c:
    cp a
    ldh [$ba], a
    ret nz

    cp h
    ret nz

    ld a, [hl]
    ldh [$fd], a
    add d
    ld [hl], d
    ld h, c
    nop
    rst $18
    inc sp
    ret nc

    pop de
    inc a
    ld h, b
    dec sp
    pop bc
    ld [$b998], sp
    ret nz

    ld a, h
    ldh [$c1], a
    ld a, [hl-]
    dec a
    pop hl
    ld a, [hl]
    and l
    nop
    rst $18
    adc d
    ld h, d
    call nz, Call_063_4680
    ld [$813c], sp
    ldh [$3b], a
    pop hl
    add hl, sp
    dec [hl]
    dec [hl]
    add hl, sp
    ld [hl], a
    add b
    ld a, [hl]
    and l
    call nc, $db00
    ld a, [hl]
    db $e4
    sbc [hl]
    ld b, [hl]
    add b
    ld [$a0fe], sp
    ld [bc], a
    rrca
    rrca
    sbc e
    ld [$3c44], sp
    ld a, e
    ret nz

    inc a
    add c
    db $fc
    ld b, e
    nop
    sbc a
    db $fc
    adc d
    ld b, b
    ld a, e
    and b
    ld [bc], a
    ld [$4546], sp
    ld b, c
    ld b, l
    or a
    ld [bc], a
    rrca
    ld [$a0fa], sp
    inc a
    ld b, h
    ld [hl], a
    ld h, b
    and c
    call z, Call_063_437a
    nop
    sbc c
    and b
    and b
    db $fc
    add h
    ld b, a
    ld h, b
    ld [$0208], sp
    push bc
    jp nz, $8008

    pop hl
    ccf
    ldh [$7d], a
    add b
    ld a, [hl]
    and e
    nop
    sbc b
    db $fc
    ld h, [hl]
    cp d
    ld b, h
    add c
    ld [$e187], sp
    dec [hl]
    ld b, d
    ld [$e100], sp
    dec [hl]
    add c
    ld a, $ff
    jp $2ffc


    nop

Jump_063_6ce2:
    ld c, a
    db $fc
    add d
    ld bc, $80e1
    db $e3
    ld de, $4639
    ld a, e
    and b
    ret nz

    ldh [rDMA], a
    ld b, [hl]
    sbc [hl]
    db $fc
    ld sp, $5100
    jr @-$02

    add b
    cp [hl]
    and c
    pop bc
    and c
    ld b, l
    ld [bc], a
    ld b, c
    ld [c], a
    ret nz

    db $e3
    db $fc
    ld sp, $007c
    ld d, c
    add [hl]
    ld b, h
    ld [bc], a
    rlca
    inc de
    inc de
    rlca
    pop bc
    jp nz, Jump_000_00e0

    and $fc
    cpl
    nop
    ld d, e
    ld b, b
    jp nz, $c081

    ld b, e
    ld [bc], a
    db $10
    ret nz

    pop bc
    jp nz, $c040

    db $fc
    ld h, [hl]
    nop
    ld e, a
    nop
    jp nz, $8202

    dec sp
    ld [hl], $c5
    ld [bc], a
    cp d
    jp nz, Jump_000_3c39

    ld b, h
    db $fc
    cpl
    nop
    sub $ae
    ld b, [hl]
    ld b, $07
    ld [c], a
    ld b, d
    ld de, $82ff
    ld a, [hl]
    ld b, d
    db $fc
    ld sp, $cf00
    add [hl]
    inc h
    dec sp
    xor a
    ld b, [hl]
    jp nz, Jump_000_3c61

    ld b, h
    ld [$c1ba], sp
    dec l
    ld h, c
    nop
    jr c, jr_063_6d7b

    db $fc
    cpl
    nop
    rst $08
    ld [$4325], sp
    ld h, c
    nop
    ret nz

    cp d
    pop bc
    cp b
    ret nz

    nop
    ld [hl-], a

jr_063_6d6a:
    ld h, b
    ld a, d
    jr nz, jr_063_6d6a

    cpl
    nop
    rst $08
    nop
    ld b, b
    dec b
    ld b, c
    call nz, $8760
    jp $f102


jr_063_6d7b:
    ld h, e
    rrca
    cp a
    pop hl
    ld a, [hl]
    and d
    nop
    rst $18
    jp nz, $4482

    ld h, c
    ld bc, $0060
    add $81
    cp h
    ld bc, $e279
    ld a, [hl]
    and h
    nop
    db $db
    add d
    call nz, $a2c9
    ret nz

    ld b, b
    nop
    jp Jump_063_4061


    jr nz, jr_063_6dcb

    ld b, d
    ld a, [hl]
    and d
    nop
    db $dd
    nop
    db $e4
    ret


    and d
    cp $c2
    nop
    call nz, $acc2
    ld [hl+], a
    nop
    db $e3
    nop
    call c, $617e
    add l
    ld bc, $e340
    pop bc
    ld b, b
    ld [hl+], a
    add d
    inc b
    and b
    ld a, [hl]
    nop
    nop
    rst $18
    nop
    and l
    xor a
    ret nz

    call nz, $42c3

jr_063_6dcb:
    nop
    dec b
    ret nz

    ld l, d
    dec b
    nop
    rst $18
    db $fc
    ld [hl+], a
    rst $38
    push bc
    add a
    ld h, b
    ld [hl], l
    ret nz

    add [hl]
    add b
    nop
    inc b
    add c
    nop
    sbc a
    nop
    add l
    rst $38
    and c
    ld a, a
    jp nz, $8048

    add e
    ld hl, $2504
    ld [$5b00], sp
    db $fc
    daa
    cp $a2
    ld a, $c8
    ld h, d
    add h
    ld [bc], a
    inc b
    dec h
    nop
    ld e, e
    ld [$27fc], sp
    ret nz

    ld b, d
    ret nz

    pop hl
    ld a, [hl-]
    add a
    ld b, h
    add d
    push hl
    nop
    ld e, d
    db $fc
    daa
    nop
    dec sp
    ld [bc], a
    add b
    pop hl
    rst $00
    ld b, c
    add d
    jp nz, Jump_000_2304

    inc b
    adc e
    nop
    sub b
    db $fc
    inc h
    add b
    ret nz

    and $02
    ret nz

    inc b
    jr z, jr_063_6e2a

    adc h
    nop
    adc a
    db $fc

jr_063_6e2a:
    inc hl
    nop
    ld b, d
    xor [hl]
    nop
    rst $38
    add e
    add $23
    add [hl]
    ld h, e
    inc b
    call $8f00
    db $fc
    ld h, e
    nop
    db $e4
    ld a, a
    push bc
    nop
    add [hl]
    ld [hl+], a
    inc b
    pop de
    nop
    ld c, a
    ld a, [c]
    ld b, c
    nop
    and $7e
    add d
    add b
    add c
    add $61
    nop
    inc b
    pop de
    nop
    ld d, a
    cp $66
    add $02
    ld b, [hl]
    ld h, c
    inc b
    pop de
    nop
    ret c

    db $fd
    ld h, e
    nop
    add [hl]
    ld h, d
    ld b, l
    ld h, b
    ld a, [hl]
    call nz, $ef02
    nop
    sub $7f
    ld b, e
    cp $e6
    ld a, [hl]
    jp Jump_000_0200


    rst $28
    nop
    ld d, l
    ld a, [hl]
    ld hl, $e7c1
    ld a, $c1
    inc b
    and c
    ld [bc], a
    rst $28
    nop
    push de
    ld a, $7e
    ld [hl+], a
    xor [hl]
    ld b, l
    ld b, e
    ld b, c
    ld b, e
    db $fd
    ldh [$83], a
    ld b, b
    ldh a, [rLY]
    ld b, c
    nop
    rst $18
    nop
    rst $00
    ld a, [hl]
    add d
    xor a
    ld [hl], $3b
    dec [hl]
    add c
    dec sp
    db $fd
    ldh [$7e], a
    ld h, c
    inc b
    inc h
    nop
    rst $18
    nop
    call nz, Call_063_417e

jr_063_6eaa:
    ld b, h
    rla
    inc a
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    inc a
    and c
    inc b
    inc h
    nop
    rst $18
    cp $00
    rst $00
    xor [hl]
    ld b, d
    dec [hl]
    ld l, c
    and e
    dec [hl]
    dec [hl]
    adc a
    and e
    ld l, d
    dec [hl]
    ld b, d
    inc b
    ld [hl+], a
    nop
    rst $18
    nop
    ret z

    and c
    nop
    ld [$c080], sp
    ldh [$c5], a
    ld bc, $e0c0
    ld a, [hl]
    ld h, d
    nop
    rst $18
    nop
    adc b
    ld b, b
    db $e3
    ld l, e
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    ld a, h
    add b
    sbc h
    sbc a
    nop
    rst $18
    add b
    nop
    srl [hl]
    ld bc, $c5c0
    ld a, [hl]
    add l
    nop
    rst $18
    nop
    rst $00
    inc a
    jr nz, jr_063_6eaa

    rst $38
    ld b, l
    ld b, e
    xor [hl]
    ld b, e
    xor [hl]
    ld b, c
    xor [hl]
    ld b, l
    ld hl, $7eaf
    ld h, h
    nop
    rst $18
    nop
    rst $00
    db $fc
    ld b, e
    xor a
    cp $e2
    nop
    and [hl]
    nop
    nop
    rst $18
    nop
    add d
    ld a, [hl]
    push hl
    sla e
    ret


    jr nz, jr_063_6f4c

    jr nz, jr_063_6f21

jr_063_6f21:
    rst $18
    db $fc
    dec l
    nop
    sub [hl]
    ld [bc], a
    ei
    and $00
    rst $18
    db $fc
    dec l
    adc [hl]
    inc hl
    db $fc
    push hl
    nop
    push de
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

jr_063_6f4c:
    rst $38
    add sp, $00
    nop
    nop
    ld [bc], a
    nop
    rra
    ld b, $02
    ld bc, $0621
    ld [bc], a
    ld [bc], a
    inc hl
    rlca
    ld [bc], a
    inc bc
    dec e
    ld [$0402], sp
    dec h
    ld [$0502], sp
    inc e
    ld a, [bc]
    ld [bc], a
    ld b, $26
    ld a, [bc]
    ld [bc], a
    rlca
    dec e
    dec bc
    ld [bc], a
    ld [$0c1b], sp
    ld [bc], a
    add hl, bc
    dec h
    inc c
    ld [bc], a
    ld a, [bc]
    inc hl
    dec c
    ld [bc], a
    dec bc
    inc h
    dec c
    ld [bc], a
    inc c
    ld [hl+], a
    ld c, $02
    dec c
    dec h
    ld c, $02
    ld c, $23
    rrca
    ld [bc], a
    rrca
    inc h
    rrca
    ld [bc], a
    db $10
    dec h
    db $10
    ld [bc], a
    ld de, $1126
    ld [bc], a
    ld [de], a
    jr z, jr_063_6fb1

    ld [bc], a
    inc de
    add hl, de
    dec d
    ld [bc], a
    inc d
    add hl, hl
    jr @+$04

    dec d
    jr jr_063_6fc2

    ld [bc], a
    ld d, $19
    inc e
    ld [bc], a
    rla
    add hl, hl
    inc e

jr_063_6fb1:
    ld [bc], a
    jr jr_063_6fdb

    ld e, $02
    add hl, de
    add hl, de
    rra
    ld [bc], a
    ld a, [de]
    rla
    ld [hl+], a
    ld [bc], a
    dec de
    dec h
    inc hl
    ld [bc], a

jr_063_6fc2:
    inc e
    jr @+$28

    ld [bc], a
    dec e
    inc hl
    ld h, $02
    ld e, $22
    jr z, jr_063_6fd0

    rra
    add hl, de

jr_063_6fd0:
    ld a, [hl+]
    ld [bc], a
    jr nz, @+$23

    ld a, [hl+]
    ld [bc], a
    ld hl, $2d22
    ld [bc], a
    ld [hl+], a

jr_063_6fdb:
    add hl, de
    ld l, $02
    inc hl
    ld [hl+], a
    ld sp, $2402
    ld a, [de]
    ld [hl-], a
    ld [bc], a
    dec h
    inc h
    inc [hl]
    ld [bc], a
    ld h, $1b
    dec [hl]
    ld [bc], a
    daa
    ld a, [de]
    jr c, jr_063_6ff4

    jr z, @+$27

jr_063_6ff4:
    jr c, jr_063_6ff8

    add hl, hl
    dec de

jr_063_6ff8:
    dec sp
    ld [bc], a
    ld a, [hl+]
    inc h
    dec sp
    ld [bc], a
    dec hl
    ld e, $3c
    ld [bc], a
    inc l
    jr nz, jr_063_7041

    ld [bc], a
    dec l
    ld [hl+], a
    inc a
    rst $38
    rst $38
    rst $38
    inc d
    ld [hl], b
    ld h, [hl]
    ld [hl], e
    ld c, e
    ld a, b
    ld h, [hl]
    ld a, b
    rst $28
    dec c
    ld c, $0e
    ld c, $fc
    ld a, [$4d0d]
    ld c, l
    ld h, c
    ld c, l
    db $fc
    xor $ff
    ldh [$c8], a
    db $e4
    rst $38
    rst $38
    ld c, l
    ld c, l
    db $fc
    rst $28
    nop
    pop bc
    ld [c], a
    rst $38
    rst $38
    ret nz

    db $e3
    ld e, l
    ldh [$fc], a
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    ld [c], a
    pop hl
    nop
    cp $dd
    ld a, [hl]

jr_063_7041:
    push af
    rst $38
    ld [c], a
    and c
    rst $38
    sbc d
    push hl
    sub a
    ret nz

    db $fc
    push hl
    xor $e7
    jr c, @+$01

    rst $38
    sub d
    jp hl


    db $76
    ret nz

    ld c, l
    dec l
    dec l
    db $fc
    rst $18
    add d
    pop af
    cp a
    dec c
    dec c
    ld l, l
    dec bc
    dec bc
    dec c
    db $fd
    ldh [rKEY1], a
    ld d, c
    dec l
    ret z

    ld [$dd00], a
    inc d
    and $6d
    jp Jump_000_0be1


    ld a, d
    pop hl
    jr z, @+$80

    add sp, $3c
    rst $38
    ld [bc], a
    push hl
    ld l, l
    call z, $0ba0
    ld a, [hl]
    ldh [$bf], a
    ld [c], a
    jr nz, @-$02

    rst $18
    nop
    call $a08d
    add d
    pop hl
    ld a, l
    ld [c], a
    dec bc
    ld a, [hl]
    rst $20
    ret nz

    rst $38
    nop
    ld a, [de]
    db $e4
    ld b, d
    pop hl
    jp $f8e3


    pop hl
    db $fc
    add $6a
    jp nz, $bb02

    add d
    and d
    db $fc
    inc bc
    ldh [$c4], a
    ret nz

    dec hl
    ld a, [bc]
    ld a, [hl+]
    dec c
    ld a, [bc]
    ld a, [hl+]
    add d
    cp d
    pop bc
    ld l, l
    add sp, -$1c
    add c
    db $fd
    ld h, b
    db $e3
    inc bc
    pop hl
    call nz, Call_063_4ac1
    ccf
    ld a, [bc]
    ld a, [hl+]
    dec hl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ret nz

    ld [c], a
    ld b, [hl]
    rst $38
    nop
    inc b
    bit 0, d
    ld [c], a
    cp a
    ret nz

    ld a, h
    ldh [$3f], a
    db $e3
    ld h, [hl]
    ld [c], a
    rst $38
    rst $38
    cp [hl]
    add e
    ld a, d
    ld b, [hl]
    pop bc
    dec hl
    dec b
    ld [c], a
    dec bc
    dec bc
    ld a, [hl+]
    ld c, e
    ld a, [$20a9]
    inc c
    sub e
    inc hl
    and e
    add [hl]
    add [hl]
    add a
    jp $c041


    ld c, e
    call nz, Call_000_3ae0
    jp nz, Jump_000_0bc1

    cp d
    and c
    nop
    rst $10
    ld d, $ab
    adc l
    and b
    add c
    db $e3
    ld l, e
    ld l, e
    add a
    ld l, e
    ld c, e
    ld l, e
    add c
    pop hl
    cp [hl]
    pop bc
    nop
    reti


    sub [hl]
    adc h
    ld c, l
    inc [hl]
    ld b, l
    and b
    ld b, c
    ldh [rOCPD], a
    add b
    and b
    ld l, e
    ld c, e
    dec a
    jp $c37e


    nop
    cp d
    rst $18
    inc e
    and d
    ccf
    ldh [$c1], a
    ld [c], a
    or a
    jp nz, $a338

    add b
    rst $20
    db $10
    call $0838
    add sp, -$7a
    ld h, l
    rrca
    ld h, b
    dec hl
    dec bc
    ld c, e
    ld c, $83
    dec sp
    and h
    nop
    ld b, b
    pop hl
    nop
    rst $08
    ld e, $8b
    ld [$4286], sp
    and c
    ret nz

    ld [c], a
    add $c1
    cp e
    add d
    ld [hl], b
    add b
    db $e4
    inc d
    ld a, l
    sub d
    add e
    ret nz

    and d
    ld c, e
    ld a, [bc]
    ld c, d
    ret nz

    push hl
    ldh [$7a], a
    add b
    or c
    add b
    nop
    db $dd
    ld e, l
    ld b, b
    inc c
    add c
    ld c, l
    ld l, l
    ld c, l
    ld [$8284], sp
    add [hl]
    and b
    ld c, l
    ld h, d
    dec l
    rst $38
    pop hl
    add b
    and a
    inc d
    adc a
    inc c

Jump_063_717a:
    adc c
    inc c
    call z, $8083
    and d
    dec hl
    ld c, d
    ld [$dce4], sp
    ret


    add b
    db $d3
    inc d
    ld h, e
    inc b
    call $d864
    ld b, e
    dec hl
    jp $4880


    ld [c], a
    ld a, [$404b]
    call Call_063_45a6
    inc [hl]
    add d
    db $e4
    ret nz

    and $2b
    add c
    ret nz

    ld a, [bc]
    ld c, d
    ccf
    ld h, b
    ret nz

    ldh [rNR41], a
    ldh [$cb], a
    inc d
    ld [hl], e
    sub $41
    dec c
    add h
    jp $4b84


    add a
    add b
    nop
    ld h, b
    nop
    add b
    ldh [rOCPS], a
    ld c, [hl]
    inc d
    adc h
    dec d
    ld h, d
    sub b
    add e
    jp z, $cdc0

    ld h, l
    ret nz

    ldh [rSB], a
    ld c, e
    adc b
    pop bc
    adc d
    and l
    inc e
    db $e4
    inc d
    adc a
    dec d
    ld h, e
    add h
    db $e4
    adc l
    add h
    ld [bc], a
    ld b, $a0
    dec hl
    pop bc
    db $e3
    ld d, b
    cp b
    xor l
    ld bc, $e382
    push de
    ld b, d
    adc l
    add l
    nop
    pop bc
    db $e3
    ld b, e
    ld [c], a
    add d
    db $e3
    ld a, [hl]
    jp hl


    inc d
    or e
    ld b, d
    db $e4
    rrca
    add l
    pop bc
    ld [c], a
    add b
    inc bc
    pop hl
    ld [bc], a
    rst $20
    db $76
    daa
    ld d, $67
    sub [hl]
    ld b, l
    reti


    ld b, l
    pop bc
    add sp, $6b
    ret nz

    rlca
    ld h, b
    adc e
    add d
    adc d
    ld b, h
    ld [c], a
    ld a, [bc]
    sub h
    adc [hl]
    ret nz

    db $ec
    ld l, e
    dec c
    nop
    bit 4, c
    ret nz

    push hl
    inc d
    ld a, [hl]
    adc h
    and c
    rla
    ld h, d
    ld d, b
    ld h, h
    rrca
    add b
    ld b, h
    ld b, [hl]
    nop
    inc b
    ld [hl+], a
    inc c
    sbc e
    ld d, h
    ld h, d
    add d
    ld [$878c], a
    add d
    and c
    call z, $186f
    ld c, c
    inc c
    inc d
    ld h, [hl]
    ld b, e
    and $4b
    dec c
    ld b, e
    ld h, b
    ld c, h
    adc b
    inc c
    ld b, e
    cp $cd
    jr nc, jr_063_7276

    ld [$2298], sp
    ld b, h
    push hl
    rst $10
    ld b, c
    dec l
    dec l
    call z, $0244
    ld hl, sp+$00
    ld [$0187], sp
    ld [c], a
    dec b
    add sp, $50
    add b
    adc d
    nop
    ld c, h
    add e
    ldh [$63], a
    jr @+$3d

    nop
    inc bc
    add sp, -$6a
    ld b, b
    adc l
    inc b
    adc d
    add h
    ld h, [hl]
    ld [de], a
    add d

jr_063_7276:
    db $ed
    jr jr_063_729a

    push de
    ld [hl+], a
    nop
    ld d, a
    ld b, h
    ld c, d
    and h
    ld l, [hl]
    ld h, [hl]
    ld [bc], a
    ldh a, [$82]
    ld [$a588], a
    jr jr_063_72cc

    sub e
    ld h, e
    nop
    ld e, [hl]
    ld e, a
    inc b
    add sp, -$79
    and h
    reti


    ld [hl+], a
    sub d
    add b
    ld a, d
    daa
    inc c

jr_063_729a:
    or a
    add d
    push hl
    nop
    ld b, $c4
    sub [hl]
    ld [hl+], a
    ld d, a
    ld hl, $219c
    ld h, [hl]
    ret z

    ret nc

    db $76
    inc b
    push hl
    db $dd
    inc bc
    ld bc, $592b
    ld [hl+], a
    push bc
    ld h, c
    ld [$08ea], sp
    adc $c6
    adc c
    inc b
    db $e3
    sbc [hl]
    nop
    ld [bc], a
    ld e, d
    ld hl, $da4b
    dec b
    ld [de], a
    sbc c
    ld [$8f8e], sp
    add h
    ld c, e
    add a

jr_063_72cc:
    ld e, h
    ld hl, $0804
    rst $38
    db $fc
    dec b
    ld c, l
    ld de, $ba82
    push hl
    db $db
    ld [hl+], a
    jp z, Jump_063_6420

    ld l, e
    ld b, b
    nop
    jp c, Jump_063_66d1

    ld [$de82], sp
    ld [bc], a
    inc c
    push de
    nop
    sub c
    ld c, l
    adc l
    jp Jump_063_7ec8


    and $82
    jp hl


    rst $38
    rst $38
    ld c, l
    jr jr_063_7318

    ld c, h
    jp Jump_000_2b2b


    ld bc, $0e2b
    add b
    add d
    ld_long $ffb8, a
    ld [$bf62], sp
    db $e3
    pop bc
    pop hl
    ldh [$03], a
    ld [$ff04], sp
    nop
    ret


    sub [hl]
    ld bc, $560b
    ld h, b
    add d
    pop hl

jr_063_7318:
    ldh [rSB], a
    ld [$1cdf], sp
    nop
    bit 7, [hl]
    ld [c], a
    dec c
    dec c
    ld c, e
    ld d, c
    ld h, b
    sub d
    sbc b
    ld [$0257], sp
    db $fc
    jp $c10d


    pop hl
    jr nz, @+$3e

    nop
    db $d3
    db $fc
    call nz, $8c92
    ret nz

    rst $38
    nop
    inc b
    ld c, d
    sub d
    adc b
    ld [$00dd], sp
    ld d, e
    sub b
    rst $38
    db $fc
    db $dd
    inc d
    sbc a
    db $fc
    db $db
    nop
    inc d
    sbc e
    cp $d6
    jp z, Jump_000_0cea

    rst $18
    cp $19
    rst $38
    rst $38
    ld hl, sp+$77
    ld c, b
    rst $38
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    ld [bc], a
    jp hl


    nop
    nop
    nop
    adc a
    and b
    call c, $dedd
    db $fc
    ld a, [$f5ff]
    ret z

    db $e4
    rst $18
    rst $30
    ldh [$e1], a
    ld [c], a
    db $fc
    ld sp, hl
    sub $d7
    and b
    and b
    and $fc
    jp hl


    ret nc

    pop de
    ldh a, [$e3]
    ret z

    push hl
    db $e3
    db $e4
    push hl
    cp l
    and $fc
    ld sp, hl
    ret c

    reti


    and b
    and b
    db $fc
    jp hl


    jp nc, $d379

    ldh a, [$e3]
    ret z

    push hl
    rst $20
    add sp, -$17
    ld [$f9fc], a
    rst $38
    jp c, $d6db

    rst $10
    jp c, $d0db

    pop de
    ld [hl], $fc
    push hl
    call nc, $f4d5
    pop hl
    sub $d7
    ret z

    push hl
    ld [bc], a
    db $fc
    nop
    ld [c], a
    ret nz

    adc d
    push hl
    db $fc
    jp hl


    ld l, d
    pop hl
    ld a, [$02c3]
    ei
    ld [c], a
    pop bc
    adc d
    db $e3
    ld h, e
    and b
    and b
    db $fc
    rst $20
    ld a, [hl]
    db $e3
    add sp, -$3f
    rst $18
    ldh [rSC], a
    ei
    ld a, h
    ld [c], a
    pop bc
    inc c
    db $e3
    and b
    and b
    sbc a
    and d
    sbc l
    rst $38
    ldh [$7b], a
    and d
    sbc a
    db $fc
    rst $00
    ret c

    reti


    db $e3
    db $e4
    ld [bc], a
    ei
    or $e2
    pop bc
    sub $d7
    add d
    pop hl
    and b
    sbc a
    sbc h
    ld b, [hl]
    db $db
    ld b, [hl]
    xor [hl]
    db $fd
    ldh [$9c], a
    sbc a
    ld a, [hl]
    and $da
    db $db
    or e
    rst $20
    add sp, $00
    rst $18
    inc d
    db $e3
    sbc a
    sbc h
    jp $afe0


    rlca
    ld b, [hl]
    xor [hl]
    xor a
    cp a
    pop hl
    db $fc
    ret z

    nop
    rst $18
    add d
    pop bc
    pop bc
    pop hl
    dec c
    xor a
    add d
    ldh [rDMA], a
    xor a
    cp a
    db $e3
    db $fc
    rst $00
    nop
    rst $18
    inc c
    jp nz, $9e67

    xor [hl]
    xor a
    add d
    pop hl
    ld a, l
    pop hl
    xor a
    ld b, [hl]
    ld a, [hl]
    jp hl


    inc e
    nop
    rst $18
    inc c
    pop bc
    sbc a
    sbc h
    xor a
    add e
    ldh [$be], a
    db $e3
    ld a, d
    ldh [$86], a
    db $fc
    add $a0
    and b
    ld [bc], a
    cp a
    adc [hl]
    and b
    inc bc
    pop hl
    call nz, Call_063_45c0
    cp a
    ld c, b
    ld c, b
    xor a
    ld c, b
    ld c, b
    ld b, l
    cp d
    ret nz

    sbc [hl]
    ldh [$e8], a
    db $e3
    nop
    sbc $04
    and c
    add d
    pop hl
    ld b, d
    db $e3
    ld d, c
    ld e, [hl]
    ld d, h
    rst $08
    ld b, c
    ld d, h
    ld h, c
    ld e, h
    ld [hl], l
    ldh [$c0], a
    pop hl
    call nc, $f4d5
    nop
    rst $18
    inc b
    and e
    and c
    call nz, Call_000_37c4
    jr c, jr_063_749f

    jr nz, @+$11

    ld a, [hl+]
    ld d, d
    ld c, c
    ld b, l
    ccf
    ld [c], a
    ld h, a
    add b
    nop
    rst $18
    inc b
    and e
    db $fd
    sbc [hl]
    call nz, Call_063_45c2
    ld [hl], $35
    dec [hl]
    daa
    jr nz, jr_063_749e

    jr nz, jr_063_74c6

    ld d, h
    ret nz

    ldh [$fa], a
    and c

jr_063_749e:
    db $ec

jr_063_749f:
    add c
    nop
    call nc, $860b
    ld a, [c]
    adc [hl]
    add e
    sbc [hl]
    add a
    jp nz, $e0c1

    dec [hl]
    ld hl, $202f
    dec sp
    ld l, $42
    cp b
    and b
    xor a
    ld b, [hl]
    and c
    ld l, d
    and h
    inc c
    sbc e
    db $ec
    add d
    add c
    add d
    jp Jump_000_39ae


    pop bc
    ldh [$36], a

jr_063_74c6:
    ld b, c
    ld b, e
    add e
    ld a, [hl+]
    ld a, [hl+]
    ld b, c
    ldh [$fe], a
    jp nz, $e100

    nop
    db $d3
    inc c
    adc l
    and b
    dec h
    sbc [hl]
    add l
    and b
    ld a, [hl-]
    pop bc
    ldh [$7a], a
    ret nz

    ld b, l
    add c
    pop bc
    or a
    and b
    ld b, b
    ld a, [hl]
    pop bc
    nop
    push de
    inc c
    add e
    ld [$c087], sp
    ldh [$81], a
    pop hl
    ld [hl], $43
    and b
    ld [$a07b], sp
    or $a0
    ld [hl-], a
    ret nz

    sbc [hl]
    nop
    ld [c], a
    nop
    adc $08
    add sp, $08
    adc b
    adc [hl]
    add d
    and b
    ld a, [hl-]
    dec [hl]
    ld a, [hl-]
    pop bc
    ld [c], a
    cp b
    and c
    cp b
    pop hl
    sbc [hl]
    ldh a, [rP1]
    jp nc, $e708

    sub d
    ld h, l
    ld [$9e82], sp
    xor a
    xor [hl]
    dec [hl]
    ld h, e
    dec [hl]
    add hl, sp
    jp $fbe1


    add b
    ld a, [hl]
    ldh [$ae], a
    xor a
    ld a, d
    add d
    ldh [rP1], a
    rst $08
    add [hl]
    db $ed
    inc c
    add b
    db $10
    add b
    jp Jump_000_3c81


    ld a, [hl-]
    ld c, e
    add hl, bc
    ld d, l
    jp $f9e1


    add c
    ld b, [hl]

Jump_063_7540:
    pop bc
    pop hl
    nop
    jp nc, $ec86

    inc c
    add c
    rst $30
    sbc h
    sbc l
    sbc l
    add h
    add c
    inc a
    ld a, $5e
    ld d, l
    ld [bc], a
    nop
    pop hl
    sbc h
    cp d
    ld h, d
    pop bc
    and c
    nop
    ret nc

    inc c
    jp hl


    call $d464
    pop bc
    ld e, $c8
    pop bc
    dec [hl]
    ld a, $4b
    ld b, h
    ld c, b
    db $e3
    xor $25
    nop
    rst $08
    ldh [$96], a
    ld b, e
    inc d
    ld h, l
    call $8c63
    pop bc
    dec bc
    add b
    add hl, sp
    dec [hl]
    ld a, $0b
    ld c, b
    ld b, h
    ld [bc], a
    add b
    sbc [hl]
    nop
    ld b, c
    db $fc
    db $e3
    nop
    rst $08
    jr nz, @+$47

    ldh a, [$8c]
    inc hl
    ld c, a
    ld h, b
    dec d
    pop hl
    adc [hl]
    ld h, b
    xor [hl]
    xor a
    ld b, l
    ld a, [hl-]
    cpl
    dec [hl]
    add hl, sp
    ld e, [hl]
    ld d, l
    ld a, a
    ld h, b
    sbc [hl]
    ld a, d
    ld c, l
    inc d
    adc a
    ld hl, sp-$2a
    ld b, l
    ld c, a
    ld h, c
    add b
    db $e4
    scf
    jr c, jr_063_75e3

    ld a, [hl-]
    ld b, a
    dec bc
    ld h, b
    ld d, l
    nop
    ld h, b
    sbc [hl]
    adc d
    add c
    db $fc
    push hl
    nop
    adc h
    inc l
    add l
    sbc h
    ld [de], a
    add h
    sub b
    ld h, d
    ld b, l
    xor a
    ld b, c
    jp nz, Jump_063_42e1

    ret nz

    ld e, [hl]
    inc bc
    ld d, l
    ld b, l
    adc b
    jp $aa66


    nop
    ld c, b
    inc d
    add e
    ld d, d
    jp $a2d9


    cp [hl]
    db $d3
    ld b, b
    scf
    jr c, jr_063_7642

    ld h, e
    ld h, [hl]
    ret z

jr_063_75e3:
    add b
    dec [hl]
    rrca
    ld [hl], $43
    ld e, e
    ld b, l
    adc d
    add [hl]
    ld h, d
    and l
    nop
    adc e
    xor d
    inc h
    ld a, h
    pop bc
    push hl
    adc l
    add d
    ld h, d
    ld h, e
    ld a, b
    dec [hl]
    ld l, b
    cp a
    ldh [rTAC], a
    ld [hl], $4b
    ld e, d
    ret z

    and c
    adc c
    ld h, b
    inc b
    ld b, a
    nop
    adc l
    sub [hl]
    ld b, h
    ld a, c
    sbc [hl]
    db $dd
    ld b, d
    ld d, h
    ld b, c
    ld b, l
    ld [hl], $62
    ld h, a
    add h
    pop hl
    rrca
    ld l, d
    dec [hl]
    ld [hl], $49
    inc bc
    ldh [$89], a
    ld h, c
    adc d
    jp Jump_063_6108


    ret nz

    db $fc
    db $e3
    nop
    ld c, b
    and d
    dec b
    sub h
    add b
    ld bc, $c1e3
    push hl
    dec [hl]
    ld l, d
    rrca
    ld [hl], $43
    ld d, e
    ld d, e
    rst $00
    ld b, d
    add d
    jp nz, Jump_000_006e

    ret nc

    jr z, jr_063_76b2

jr_063_7642:
    jr @+$4b

    sub [hl]
    ld [hl+], a
    ld d, h
    add c
    ld a, a
    ld [c], a
    add hl, sp
    dec [hl]
    ld l, c
    pop bc
    ld [c], a
    ld h, e
    ld [hl], $81
    ld c, a
    ld h, b
    ld l, l
    ld [c], a
    add d
    jp $dbda


    call z, $b029
    inc c
    adc l
    adc h
    and d
    ld d, h
    ld b, c
    dec c
    ret nz

    ld l, e
    ld l, h
    call z, Call_063_4561
    add hl, bc
    add c
    scf
    jp $2042


    and c
    add d
    jp Jump_000_29cc


    inc c
    adc e
    inc d
    ld h, b
    ld e, h
    dec e
    ld b, h
    ld [de], a
    ld h, c
    ld l, [hl]
    ld l, a
    ld l, h
    call z, $8161
    rst $00
    ld hl, $0402
    and d
    sbc a
    inc c
    ld b, e
    call z, $1829
    ld b, a
    inc d
    ld h, l
    ldh [$62], a
    db $d3
    ld b, c
    ld a, [hl]
    cp a
    ldh [$74], a
    ld [hl], $45
    xor a
    add e
    add h
    adc d
    ld [hl+], a
    jr nz, @+$4e

    add d
    inc c
    ld b, e
    call z, Call_000_0429
    rst $00
    inc b
    and e
    and c
    sbc b
    ld [hl+], a
    pop bc
    db $e3
    rst $38

jr_063_76b2:
    dec [hl]
    ld [hl], $82
    add e
    ld b, [hl]
    add e
    add [hl]
    add l
    nop
    adc h
    ld [hl+], a
    add d
    ld [c], a
    inc c
    ld b, e
    call z, $1829
    ld c, c
    sub [hl]
    ld [hl+], a
    ld b, e
    push hl
    dec b
    ld [c], a
    ccf
    add l
    add a
    adc b
    add a
    add l
    xor [hl]
    inc a
    add c
    ld c, h
    add c
    nop
    inc b
    jp Jump_000_0bce


    jr jr_063_7726

    jr jr_063_7700

    jr nz, jr_063_7703

    sub h
    ld b, c
    add $c1
    add hl, sp
    and d
    nop
    ld [$8ee3], sp
    add l
    inc c
    ld b, c
    adc $09
    ld [$d08a], sp
    ld h, c
    jr jr_063_7717

    sub h
    ld b, b
    nop
    pop bc
    ld [c], a
    or a

jr_063_76fc:
    and e
    ld [$04e4], sp

jr_063_7700:
    rst $08
    nop
    push bc

jr_063_7703:
    add d
    ld [$a188], a
    pop bc
    push hl
    ld [bc], a
    ld c, b
    ld [c], a
    and d
    ld [$04e4], sp
    rst $08
    nop
    push bc
    inc b
    ld [$e442], a

jr_063_7717:
    pop bc
    ld [c], a
    nop
    sub e
    ld h, h
    inc c
    xor c
    jp nc, Jump_000_080d

    add a
    sub c
    ld h, d
    rst $00
    and e

jr_063_7726:
    ld b, e
    db $e3
    ld e, d
    nop
    ld h, b
    ld [$0ce9], sp
    and e
    sub $0d
    ld [$9186], sp
    ld h, c
    ld b, l
    ld b, c
    and h
    nop
    rra
    ld b, h
    inc a
    dec sp
    jr c, @+$39

    ld c, l
    and c
    call c, $9620
    ld l, c
    ld [hl], b
    sub $12
    nop
    ld b, b
    ld [$9583], sp
    ld b, c
    ld b, l
    ld [hl], $a6
    adc h
    ret nz

    rlca
    ld b, l
    ld b, c
    ld b, e
    rrca
    and c
    ld d, e
    ld h, c
    inc e
    ld b, d
    sub [hl]
    ld h, e
    ld [$30cd], sp
    nop
    rst $00
    xor [hl]
    ld h, e
    ret z

    and b
    ld d, b
    add b
    and a
    ld h, [hl]
    ld b, a
    ld [c], a
    db $fd
    add e
    add b
    dec de
    ld b, d
    inc d
    adc c
    sub $0f
    nop
    ld b, c
    jr c, jr_063_76fc

    ld [$11a1], sp
    add c
    and e
    ld bc, $bf68
    db $e4
    ld b, b
    ld h, b
    call c, $9221
    ld h, l
    inc d
    add e
    sub $0f
    nop
    push bc
    ld c, [hl]
    ld [$42a1], sp
    xor b
    xor c
    sub b
    add b
    cp a
    db $e4
    xor a
    add e
    jp Jump_000_0ccc


    db $d3
    nop
    rst $08
    call nc, $80d5
    pop hl
    sub b
    add c
    and e
    xor d
    add c
    xor e
    add h
    jp nz, $e382

    inc c
    db $d3
    nop
    pop de
    ld d, l
    jr nz, @-$3f

    ld [c], a
    ld l, h
    rrca
    ld l, a
    ld l, [hl]
    ld [hl], $45
    ld c, $a0
    add d
    add sp, $0c
    adc $00
    pop de
    add b
    cp a
    push hl
    pop bc
    pop hl
    ldh [$03], a
    inc d
    ld h, a
    ld b, $f3
    nop
    call z, $2112
    xor [hl]
    dec bc
    ld [hl], $6e
    add d
    ldh [$9c], a
    ld c, l
    and b
    adc d
    xor b
    ld [bc], a
    ld sp, hl
    nop
    rst $00
    ld c, $7e
    ld [c], a
    xor a
    xor [hl]
    ld [hl], $c1
    ldh [$92], a
    adc d
    ld [$00d5], sp
    call Call_063_7e06
    db $e3
    xor a
    ld b, l
    pop bc
    ldh [rNR41], a
    ld a, [hl+]
    ld [$00d5], sp
    bit 7, [hl]
    push hl
    nop
    dec h
    ld bc, $8992
    ld [$00d7], sp
    sub d
    sub d
    adc l
    ld b, $fa
    nop
    adc e
    db $fc
    call nz, Call_000_0800
    add sp, $08
    db $db
    nop
    adc l
    db $fc
    push bc
    inc d
    sbc c
    nop
    rst $10
    db $fc
    push bc
    ld [$00e9], sp
    ld [$00db], sp
    ld c, h
    ld a, [$2800]
    dec bc
    ld b, $ff
    nop
    ld c, c
    ld a, [$2801]
    dec bc
    nop
    ld b, $ff
    nop
    ld c, c
    db $fc
    daa
    inc c
    rst $18
    nop
    ld d, c
    ld a, [hl+]
    ld h, c
    inc l
    dec b
    inc c
    rst $18
    nop
    nop
    ld c, c
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
    dec l
    ld [$0102], sp
    jr nc, jr_063_7876

    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    add hl, bc
    ld [bc], a
    inc bc
    cpl
    add hl, bc

jr_063_7876:
    ld [bc], a
    inc b
    ld sp, $0209
    dec b
    add hl, hl
    ld a, [bc]
    ld [bc], a
    ld b, $2b
    ld a, [bc]
    ld [bc], a
    rlca
    jr nc, jr_063_7890

    ld [bc], a
    ld [$0a32], sp
    ld [bc], a
    add hl, bc
    jr z, jr_063_7899

    ld [bc], a
    ld a, [bc]

jr_063_7890:
    dec l
    dec bc
    ld [bc], a
    dec bc
    cpl
    inc c
    ld [bc], a
    inc c
    daa

jr_063_7899:
    dec c
    ld [bc], a
    dec c
    add hl, hl
    dec c
    ld [bc], a
    ld c, $33
    dec c
    ld [bc], a
    rrca
    ld h, $0e
    ld [bc], a
    db $10
    dec hl
    ld c, $02
    ld de, $0f25
    ld [bc], a
    ld [de], a
    daa
    rrca
    ld [bc], a
    inc de
    add hl, hl
    db $10
    ld [bc], a
    inc d
    ld [hl], $10
    ld [bc], a
    dec d
    ld h, $11
    ld [bc], a
    ld d, $35
    ld de, $1702
    jr z, jr_063_78d8

    ld [bc], a
    jr jr_063_78f6

    inc de
    ld [bc], a
    add hl, de
    cpl
    inc de
    ld [bc], a
    ld a, [de]
    ld [hl-], a
    inc de
    ld [bc], a
    dec de
    daa
    inc d
    ld [bc], a
    inc e

jr_063_78d8:
    inc l
    inc d
    ld [bc], a
    dec e
    ld l, $14
    ld [bc], a
    ld e, $30
    inc d
    ld [bc], a
    rra
    dec [hl]
    inc d
    ld [bc], a
    jr nz, @+$39

    inc d
    ld [bc], a
    ld hl, $1526
    ld [bc], a
    ld [hl+], a
    dec hl
    dec d
    ld [bc], a
    inc hl
    dec l
    dec d

jr_063_78f6:
    ld [bc], a
    inc h
    cpl
    dec d
    ld [bc], a
    dec h
    inc [hl]
    dec d
    ld [bc], a
    ld h, $36
    dec d
    ld [bc], a
    daa
    daa
    ld d, $02
    jr z, @+$2e

    ld d, $02
    add hl, hl
    jr nc, jr_063_7924

    ld [bc], a
    ld a, [hl+]
    ld [hl-], a
    ld d, $02
    dec hl
    dec [hl]
    ld d, $02
    inc l
    ld h, $17
    ld [bc], a
    dec l
    dec l
    rla
    ld [bc], a
    ld l, $2f
    rla
    ld [bc], a
    cpl

jr_063_7924:
    dec h
    jr jr_063_7929

    jr nc, jr_063_7950

jr_063_7929:
    jr @+$04

    ld sp, $182c
    ld [bc], a
    ld [hl-], a
    ld l, $18
    ld [bc], a
    inc sp
    ld hl, $0219
    inc [hl]
    inc hl
    add hl, de
    ld [bc], a
    dec [hl]
    inc h
    add hl, de
    ld [bc], a
    ld [hl], $26
    add hl, de
    ld [bc], a
    scf
    dec l
    add hl, de
    ld [bc], a
    jr c, jr_063_7966

    ld a, [de]
    ld [bc], a
    add hl, sp
    jr nz, jr_063_7968

    ld [bc], a
    ld a, [hl-]

jr_063_7950:
    ld [hl+], a
    ld a, [de]
    ld [bc], a
    dec sp
    dec h
    ld a, [de]
    ld [bc], a
    inc a
    ld l, $1a
    ld [bc], a
    dec a
    ld hl, $021b
    ld a, $23
    dec de
    ld [bc], a
    ccf
    inc h
    dec de

jr_063_7966:
    ld [bc], a
    ld b, b

jr_063_7968:
    dec de
    inc e
    ld [bc], a
    ld b, c
    jr nz, jr_063_798a

    ld [bc], a
    ld b, d
    ld [hl+], a
    inc e
    ld [bc], a
    ld b, e
    dec l
    inc e
    ld [bc], a
    ld b, h
    dec d
    dec e
    ld [bc], a
    ld b, l
    rla
    dec e
    ld [bc], a
    ld b, [hl]
    dec e
    dec e
    ld [bc], a
    ld b, a
    inc d
    ld e, $02
    ld c, b
    ld d, $1e

jr_063_798a:
    ld [bc], a
    ld c, c
    inc e
    ld e, $02
    ld c, d
    inc l
    ld e, $02
    ld c, e
    inc de
    rra
    ld [bc], a
    ld c, h
    dec d
    rra
    ld [bc], a
    ld c, l
    add hl, de
    rra
    ld [bc], a
    ld c, [hl]
    ld a, [hl+]
    rra
    ld [bc], a
    ld c, a
    inc d
    ld hl, $5002
    ld d, $21
    ld [bc], a
    ld d, c
    jr z, jr_063_79cf

    ld [bc], a
    ld d, d
    inc h
    inc hl
    ld [bc], a
    ld d, e
    add hl, hl
    inc hl
    ld [bc], a
    ld d, h
    dec hl
    inc hl
    ld [bc], a
    ld d, l
    ld [de], a
    inc h
    ld [bc], a
    ld d, [hl]
    ld hl, $0224
    ld d, a
    ld h, $24
    ld [bc], a
    ld e, b
    jr z, jr_063_79ee

    ld [bc], a
    ld e, c
    ld a, [hl+]
    inc h
    ld [bc], a

jr_063_79cf:
    ld e, d
    dec d
    dec h
    ld [bc], a

Jump_063_79d3:
    ld e, e
    add hl, hl
    dec h
    ld [bc], a
    ld e, h
    inc hl
    daa
    ld [bc], a
    ld e, l
    ld e, $28
    ld [bc], a
    ld e, [hl]
    ld [hl+], a
    jr z, @+$04

    ld e, a
    ld de, $0229
    ld h, b
    inc c
    inc l
    ld [bc], a
    ld h, c
    dec de
    dec l

jr_063_79ee:
    ld [bc], a
    ld h, d
    rla
    jr nc, jr_063_79f5

    ld h, e
    dec d

jr_063_79f5:
    inc sp
    ld [bc], a
    ld h, h
    dec c
    dec [hl]
    ld [bc], a
    ld h, l
    ld c, $36
    rst $38
    rst $38
    rst $38
    add hl, bc
    ld a, d
    add hl, sp
    ld a, d
    daa
    ld a, h
    call c, $c07d
    rra
    adc d
    inc bc
    add b
    ld [bc], a
    ld h, b
    ld bc, $03ef
    db $f4
    inc bc
    adc d
    inc bc
    add b
    ld [bc], a
    rra
    ld a, l
    rst $30
    ld b, h
    rrca
    ld bc, $038a
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
    inc c
    inc c
    inc c
    ld l, h
    ld a, [hl+]
    ld c, d
    ld c, d
    ld c, d
    db $fd
    ld a, [bc]
    rst $38
    db $e4
    ld l, d
    ld l, d
    ld l, d
    ld a, [bc]
    ld c, h
    ld c, h
    ld sp, hl
    inc l
    jp hl


    ldh [$fd], a
    ld [$2c2c], a
    ld c, h
    inc c
    ld c, h
    inc sp
    ld c, h
    ld c, h
    jp hl


    db $ed
    reti


    ld [c], a
    ld l, h
    ld c, d
    cp a
    ldh [$c0], a
    rst $20
    inc de

jr_063_7a65:
    ld a, [bc]
    ld a, [bc]
    push bc
    db $ec
    db $fd
    pop hl
    inc l
    xor [hl]
    xor $c0
    jp hl


    cp a
    ldh [$60], a
    add b
    and $77
    ldh [$c7], a
    rst $20
    cp e
    jp hl


    ret nz

    ld sp, hl
    ld c, d
    ld a, [hl+]
    ld b, b

Call_063_7a80:
    push hl
    ret nc

    jr c, jr_063_7a65

    ld e, d
    ldh a, [rDMA]
    di
    rst $20
    db $e3
    ld l, h
    inc b
    pop hl
    dec bc
    ld l, e
    ld h, a
    dec bc
    dec bc
    dec hl
    db $fd
    ldh [$f8], a
    pop bc
    inc l
    dec bc
    adc a
    ei
    db $fc
    ld h, c
    db $ec
    ret nz

    ld [c], a
    ld l, e
    ld l, e
    dec hl
    dec hl
    ld c, e
    ld c, e
    add e
    ld c, e
    dec bc
    ret nz

    ld [c], a
    ld c, l
    rst $28
    xor [hl]
    pop hl
    xor d
    push af
    add b
    ld [c], a
    dec hl
    adc d
    rst $38
    pop hl
    dec bc
    ret nz

    db $e3
    inc c
    sub e
    jp nz, $ffc0

    ret nz

    db $ed
    dec bc
    nop
    ld a, a
    ldh [$38], a
    pop bc
    ld b, c
    rst $08
    ret nz

    ld [c], a
    add b
    sub $80
    db $e4
    pop bc
    pop hl
    add b
    db $e3
    db $10
    call Call_000_12c3
    call $a2fd
    ld b, b
    push af
    ld l, e
    add d
    ld [c], a
    ret nz

    jp hl


    ld a, a
    call z, $ab40
    or b
    nop
    db $eb
    pop bc
    ld [c], a
    ret nz

    or $83
    push de
    add b
    push bc
    ld c, e
    ret nz

    db $e3
    pop de
    ld l, e
    ret nz

    db $fd
    ld h, $ad
    nop
    push bc
    ld a, [hl+]
    ld b, d
    pop hl
    ld c, e
    ld l, e
    pop af
    ld a, [bc]
    or a
    and c
    sub l
    rst $10
    ret nz

    sub $2a
    ld a, [bc]
    ld a, [hl+]
    dec bc
    jr nz, @+$01

    ldh [$f6], a
    ld [c], a
    ret nz

    rst $30
    ei
    sub e
    add b
    and b
    ld a, [hl+]
    ld b, b
    and b
    cp a
    ldh [rNR43], a
    ld a, e
    add d
    ld a, [hl+]
    add b

Jump_063_7b21:
    or l
    ld l, e
    add c
    cp c
    sub c
    ld l, h
    pop bc
    ldh [rP1], a
    and c
    ld [bc], a
    db $fc
    add l
    ld a, [hl+]
    ld b, c
    db $e3
    ld d, e
    sub b
    ld a, h
    jp nc, $8214

    ld e, [hl]
    add b
    ld d, [hl]
    add h
    nop
    db $db
    di
    ld b, d
    sub [hl]
    call nc, Call_000_2264
    sub $b6
    ld l, h
    cp l
    ld [hl], h
    ld d, $ff
    rst $38
    rst $38
    nop
    reti


    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$d570]
    and e
    adc $ae
    db $10
    ld [hl], e
    ld a, [$004f]
    call nc, $cd64
    ld l, l
    db $d3
    sub h
    ld [$d4b1], a
    ld h, e
    call $c16f
    rst $38
    sub a
    add sp, $00
    ld c, $4e
    inc d
    ld d, d
    xor e
    or d
    and c
    ld c, b
    ld [hl+], a
    rst $18
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    nop
    ret nz

    rst $38
    rst $10
    rst $38
    call nz, $ff3f
    cp c
    ld de, $be34
    db $10
    cp a
    or l
    ld c, h
    rst $38
    nop
    add b
    cp d
    ld d, l
    rlca
    ret nz

    rst $38
    call nc, $cd60
    db $76
    rst $10
    rst $18
    ld h, b
    ld [de], a
    rla
    xor b
    db $10
    db $eb
    cp a
    cp e
    ldh a, [$57]
    rst $18
    and a
    daa
    ld l, h
    ld c, d
    ld h, e
    ld sp, hl
    ld [c], a
    rst $38
    rst $38
    nop
    add d
    rst $38
    ld c, e
    rst $38
    add hl, hl
    call nc, $ffcb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    dec bc
    ld e, e
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld h, c
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
    nop
    cp a
    nop
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, c
    pop af
    nop
    nop
    nop
    rst $38
    ld e, $00
    nop
    ld e, $7b
    ld a, $3e

jr_063_7c2f:
    ld a, $19
    ld a, b
    rst $38
    db $e4
    push af
    ldh [$0d], a
    nop
    rst $38
    rst $38
    rst $20
    and $c0
    pop hl
    add hl, de
    ld a, $bf
    ldh [$c0], a
    rst $20
    dec c
    ld a, d
    jp z, $c0ff

    db $ec
    cp a
    ldh [$66], a
    add b
    and $0d
    ld a, d
    ret nz

    rst $38
    ret nz

    xor $3e
    ld a, e
    ld b, b
    push hl
    xor b
    pop bc
    ldh [$c0], a
    rst $38
    jp hl


    add sp, $09
    nop
    ldh [rPCM34], a
    rst $38
    ldh [$50], a
    ld a, a
    dec a
    ld b, [hl]
    ld b, a
    inc h
    ld d, d
    ld d, d
    ld d, b
    pop bc
    ldh [$a7], a
    ld a, d
    nop
    sub b
    ret z

    rst $38
    and $e5
    dec e
    ret nz

    db $e4
    dec a
    ld a, a
    ld [hl+], a
    ld e, e
    ld e, e
    inc [hl]
    dec [hl]
    dec a
    ld d, c
    ret nz

    ld [c], a
    or b
    ret


    rst $28
    xor [hl]
    pop hl
    xor d
    ld a, [c]
    ret nz

    push hl
    ld b, b
    ld e, e
    rst $38
    ldh [rNR41], a
    jp hl


    add hl, hl
    ret nz

    rst $38
    ld b, b
    db $f4
    ld b, c
    pop bc
    pop hl
    ld e, h
    jr c, @+$3b

    ld hl, sp-$40
    ld hl, sp+$40
    sub $c0
    db $e4
    jr nz, jr_063_7d06

    ld e, h
    ld e, h
    ld b, c
    jr nc, jr_063_7c2f

    db $f4
    nop
    jp c, $e340

    pop bc
    pop hl
    ld e, h
    ld b, b
    ret nz

    rst $38
    add b
    di
    dec de
    dec a
    ld [hl+], a
    pop bc
    pop hl
    ld [hl+], a
    dec a
    ret nz

    rst $38
    ld b, b
    di
    ld b, b
    pop bc
    rst $00
    ld b, [hl]
    ld b, [hl]
    dec a
    ld b, b
    jp $ffff


    nop
    call Call_063_7e7d
    scf
    ld c, h
    ld c, l
    ld d, d
    ld bc, $7ec0
    ld a, a
    ret nz

    ld [c], a
    rst $38
    cp a
    cp [hl]
    ret nz

    xor e
    ld a, l
    ccf
    ld a, c
    ld a, [hl]
    ld c, e
    rst $38
    ldh [$7e], a
    db $e3
    ld a, c
    ccf
    cp a
    ldh [$c0], a
    rst $38
    add b
    call z, Call_000_3f7d
    ccf
    dec a
    ld a, c
    cp a
    pop hl
    ld a, [hl]
    ld a, c
    ld a, c
    ccf
    cp a
    ldh [$c1], a
    rst $38
    sbc b
    add b

jr_063_7d06:
    adc e
    pop bc
    ldh [$c0], a
    ldh [$79], a
    ld a, [hl]
    pop bc
    ldh [$c0], a
    ldh [$3f], a
    ld bc, $c07f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    or $94
    call nz, $df8d
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    ret nz

    rst $38
    sub $ff
    pop bc
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    push af
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
    jr nc, jr_063_7e33

    rrca
    ld sp, $3133
    inc sp
    sbc h
    rst $38
    rst $38
    ei
    nop

Call_063_7e06:
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

jr_063_7e33:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_063_7e7d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_063_7ec8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
