INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $066", ROMX[$4000], BANK[$66]

Call_066_4000:
    inc c
    ld b, b
    ld hl, $3d48
    ld d, c
    ld l, b
    ld e, h
    and $65
    cp c
    ld l, a
    inc d
    ld b, b
    ld c, e
    ld b, e
    ld b, a
    ld b, a
    ld h, d
    ld b, a
    rrca
    dec c
    ld c, $0e
    ld c, $fc
    rst $38
    ld hl, sp-$09
    rst $38

Jump_066_401e:
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $f5
    ld a, [de]
    rst $38
    cp $df
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    db $ec
    db $ec
    rst $38
    pop hl
    ld [bc], a
    rst $38
    and b
    rst $30
    ld b, b
    db $db
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $df
    ld a, [c]
    call Call_000_022d
    ret nz

    ld c, $ff
    and b
    ld l, l
    ld l, l
    ld l, l
    ld a, [$fae1]
    sub $a6
    ld a, [$c2c1]
    add sp, -$41
    pop bc
    ld hl, sp-$21
    ldh a, [$ef]
    ld l, l
    add c
    pop bc
    ld c, l
    ld c, l
    dec c
    db $e3
    ld c, l
    dec l
    add b
    pop hl
    ret nc

    rst $38
    add h
    rst $08
    dec c
    dec c
    ld l, l
    dec c
    ld l, e
    rst $38
    ldh [rKEY1], a
    dec l
    dec sp
    jp $ff02


    inc c
    add $06
    jp Jump_066_4d01


    add hl, bc
    ldh [$f8], a
    ld [c], a
    db $f4
    jp nz, $e238

    ld [bc], a
    rst $38
    ld [$c6e2], sp
    and c
    ld a, $84
    ldh [$0d], a
    dec c
    ld l, e
    dec c
    ld c, e
    cp a
    ld [c], a
    pop de
    cp a
    db $10
    ret nz

    db $ed
    add h
    db $e3
    cp l
    ldh [rPCM12], a
    ret nz

    ld c, e
    ret nz

    rst $38
    adc b
    call $e145
    rst $38
    ld c, e
    dec bc
    dec c
    dec bc
    ld c, e
    dec c
    dec l
    dec l
    rrca
    dec l
    ld c, e
    ld l, l
    dec l
    dec a
    db $e3
    cp $df
    sub e
    ret nz

    ld a, [bc]
    and d
    db $ed
    ld c, e
    ld b, a
    pop hl
    ld l, e
    ld c, e
    push bc
    ret nz

    dec l
    dec l
    dec bc
    db $10

Jump_066_40d6:
    cp l
    jp $c5e9


    xor $8a
    xor d
    call nc, Call_000_094d
    ldh [rTMA], a
    ldh [$84], a
    pop hl
    inc c
    cp $c0
    ld a, h
    ret nz

    ld c, l
    ld c, l
    ld a, l
    db $e3
    db $f4
    cp a
    ld a, h
    ld [c], a
    adc a
    db $e4
    add d
    ld a, d
    and b
    dec bc
    cp h
    ret nz

    db $fc
    ldh [$38], a
    jp nz, $ffc0

    pop hl
    jp nz, $f44d

    daa
    add b
    dec bc
    jp nz, Jump_000_390b

    pop hl
    dec hl
    ld a, [bc]
    ld l, d
    ld a, [bc]
    rlca
    dec c
    dec bc
    dec bc
    jr c, @-$3b

    ret nz

    db $ec
    ld [bc], a
    pop af
    cp $c4
    ld a, $e0
    db $fd
    ld c, e
    ld b, [hl]
    ldh [rWX], a
    dec hl
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add c
    ld c, d
    ld a, b
    pop bc
    cp a
    db $e3
    ld sp, $02a6
    cp h
    cp $c0
    add e
    ret nz

    dec c
    dec de
    dec hl
    dec bc
    cp $e0
    ld c, d
    ld a, [bc]
    ld [hl], $c3
    or [hl]

Call_066_4140:
Jump_066_4140:
    and e
    inc [hl]
    rst $18
    add b
    inc a
    pop hl
    pop bc
    jp nz, $e1c0

    rst $38
    ldh [rPCM34], a
    ldh [$b8], a
    and c
    ld sp, $2de0
    ld hl, sp+$60
    pop bc
    ret nz

    rst $38
    rst $38
    call nz, Call_000_2d2d
    ld a, [bc]
    ld c, d
    ld c, e
    ld hl, $fe6b
    ldh [rSB], a
    ldh [$f4], a
    and b
    or a
    and b
    ld l, l
    or [hl]
    and c
    cp $d5
    db $fc
    inc b
    push bc
    ld [$2d62], sp
    ld c, l
    dec l
    ld c, e
    ld c, e
    dec bc
    cp a
    ld a, [hl+]
    ld a, [bc]
    ld l, d
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    dec sp
    and d
    ld l, e
    jp nz, $a0b7

    dec bc
    xor $83
    nop
    sbc b
    inc e
    rst $00
    ld b, a
    add b
    ld c, e
    ld c, e
    cp a
    ld l, e
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld a, [hl+]
    or b
    and h
    dec l
    ld h, c
    dec bc
    ld a, [hl+]
    and b
    ld b, d
    db $fc
    ret nz

    jp hl


    ccf
    and b
    ld c, e
    dec bc
    ld b, c
    pop hl
    add d
    dec [hl]
    pop bc
    ld c, e
    ld sp, hl
    and b
    jr c, @-$5e

    ret nz

    rst $38
    push bc
    add e
    jp Jump_000_2d62


    add b
    rlca
    ldh [$bc], a
    pop hl
    cp l
    and d
    di
    and b

Call_066_41c1:
jr_066_41c1:
    ld hl, sp-$7f
    jp nz, Jump_000_1eca

    add hl, hl
    ld c, l
    ld h, c
    dec c
    inc d
    ld h, b
    rlca
    add h
    ld d, d
    and b
    add e
    pop bc
    ld c, l
    dec l
    adc c
    ldh [rNR41], a
    ld a, e
    ldh [$b6], a
    and c
    scf
    add b
    add b
    pop hl
    nop
    sub a

Call_066_41e1:
Jump_066_41e1:
    dec c
    ld c, a
    ld h, b
    ld c, h
    ld h, d
    add c
    ld l, l
    rst $00
    and c
    ld de, $41a1
    ld h, b
    ld b, c
    add c
    ld b, d
    pop bc
    ld [hl], e
    add d
    ld c, e
    ld l, b
    ld b, c
    call nz, Call_066_7474
    ret nz

    db $e4
    ld l, l
    add a
    and d
    ld c, e
    ld c, e
    db $fd
    add l
    jr nz, jr_066_41c1

    ldh [$34], a
    and d
    push af
    add c
    ld b, c
    pop bc
    ret nz

    ld a, [$c16d]
    ldh [$8e], a
    and b
    nop
    call $bfa1
    ldh [$bb], a
    add h
    di
    add e
    db $fd
    ld h, b
    ld sp, hl
    ld h, b
    ld a, a
    and e
    nop
    ld d, h
    ld [$400b], sp
    ld b, e
    ldh [$8d], a
    and b
    dec hl
    ret nz

    pop hl
    ld a, [hl]
    ld [c], a
    xor $60
    ld sp, $0081
    dec sp
    ld [c], a
    ld b, e
    push bc
    nop
    ld d, a
    ret nc

    ld bc, $a24e
    cp a
    db $e3
    sub b

Jump_066_4242:
    add [hl]
    rst $30
    pop bc
    ld b, b
    jr nc, jr_066_4288

    ld [bc], a
    ld hl, sp-$36
    add l
    rrca
    and d
    ld d, c
    add b
    ld [$0da0], sp
    db $fd
    pop bc
    ld c, b
    db $76
    ld hl, $0678
    ret nz

    rst $38
    ld l, l
    ld b, d
    pop hl
    cp $e2
    dec hl
    inc bc
    add c
    nop
    cp c
    ld h, l
    db $76
    ld h, d
    inc hl
    ld h, b
    ld [bc], a
    cp $0e
    add c
    adc [hl]
    add c
    ld a, [hl]
    ld [c], a
    db $fc
    ld b, b
    ret nz

    rlca
    ld [hl+], a
    ld c, $6b
    nop
    sub $cc
    ld h, c
    ret


    ld b, b
    cp a

Call_066_4281:
    ld [c], a
    dec hl
    dec hl
    inc bc
    dec hl
    ld l, e
    cp l

jr_066_4288:
    call nz, Call_066_7f4e
    ld c, [hl]
    daa
    adc d
    ld b, c
    ld d, c
    add d
    pop bc
    ld [c], a
    ld b, b
    ld a, a
    ld h, b
    ld a, [$fea0]
    jp $ffff


    dec bc
    ld h, l
    jp $0ba1


    add d
    ldh [rP1], a
    ld c, $61
    ld a, $60
    ld c, l
    ld h, h
    ret nc

    sbc b
    inc b
    call nz, $83ce
    dec bc
    ld h, c
    ld [$0040], sp
    adc h
    add b
    ld b, a
    ld hl, $c50b
    di
    add b
    cp $dc
    rst $20
    ld b, h
    rst $10

Jump_066_42c2:
    and e
    ld a, $a4
    nop
    ret nz

    db $e3
    ld b, h
    ccf
    ret nz

    add sp, -$73
    add d
    ld c, b
    ld b, e
    add c
    ld b, c
    rst $08
    ld h, c
    ld c, $9d
    nop
    ret nz

    db $eb
    adc l
    add d
    call z, Call_000_0002
    ld [hl+], a
    cpl
    add d
    ret nz

    rst $30
    inc b
    ld d, b
    ld b, a
    nop
    inc b
    dec bc
    ret nz

    adc e
    add d
    ld c, e
    ld b, e
    and $00
    rst $18
    ld [bc], a
    ld l, c
    cp c
    ld h, e
    dec c
    and e
    nop
    rst $38
    rst $38
    ld b, $2c

Jump_066_42fc:
    ret nz

    push hl
    or [hl]
    ld h, d
    inc b
    rst $18
    db $ec
    db $eb
    ld b, $63
    ret nz

    ld [$c400], a
    call c, Call_000_3102
    ld hl, sp+$22
    push bc
    db $e4
    ldh a, [$e8]
    cp $df
    and [hl]
    adc c
    ld c, b
    rst $38
    nop
    or $db
    inc c
    rst $18
    or h
    sbc e
    add b
    rst $38
    ld l, $f0
    cp $c9
    ld b, $fd
    ld e, a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_066_4330:
    rst $38
    rst $38
    rst $38
    cp $df
    ld hl, sp-$49
    dec a
    and c
    cp $df
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld c, e
    nop
    nop
    nop
    rst $08
    and b
    call c, $dedd
    db $fc
    rst $38
    ld hl, sp-$09
    rst $18
    ldh [$f3], a
    pop hl
    ld [c], a
    db $fc
    rst $38
    ld hl, sp-$09
    db $e3
    db $e4
    push hl
    and $3c
    db $fc
    rst $38
    ld hl, sp-$09
    rst $20
    add sp, -$17
    ld_long $fffc, a
    ld hl, sp-$09
    nop
    ld e, $ff
    db $fc
    ei
    ld e, $ff
    db $fc
    ei
    ld e, $ff
    db $fc
    ei
    ld e, $ff
    db $fc
    ei
    ldh a, [rNR34]
    cp $ff
    pop hl
    nop
    rst $18
    ld d, $f6
    and b
    and b
    sub $d7
    inc a
    nop
    rst $18
    ld d, $f7
    ret nc

    pop de
    ret c

    reti


    nop
    rst $18
    ld d, $f7
    rst $08
    jp nc, $dad3

    db $db
    nop
    rst $18
    ld b, $f4
    ret nc

    pop de
    add a
    and b
    call nc, $fed5
    pop bc
    rst $30
    ldh [$fa], a
    call nc, $d71c
    sub $2f
    rst $10
    and b
    jp nc, $c1d3

    jp nz, $f7a0

    ld [c], a
    nop
    rst $18
    or $10
    set 3, b
    reti


    add e
    pop hl
    sbc a
    sbc l
    sbc l
    and d
    ld h, e
    sbc l
    sbc a
    ld a, d
    pop hl
    nop
    rst $18
    db $10
    set 3, d
    db $db
    ld b, h
    ret nz

    scf
    sbc a
    sbc h
    ld b, [hl]
    rst $38
    ldh [$9c], a
    sbc a
    add hl, sp
    ret nz

    nop
    rst $18

Jump_066_43e1:
    db $fc
    inc c
    ret


Jump_066_43e4:
    ld c, $e1
    sbc a
    and d
    sbc l
    sbc h
    ld a, c
    ld a, d
    rrca
    ld a, e
    ld a, e
    ld a, h
    ld a, l
    cp a
    ldh [$fd], a
    jp nz, $e02c

    nop
    rst $18
    pop af
    ld [c], a
    reti


    pop hl
    dec b
    ldh [$84], a

Jump_066_4400:
    pop hl
    ld a, c
    ld a, [hl]
    ld b, [hl]
    xor [hl]
    add a
    ld b, [hl]
    xor [hl]
    ld a, a
    cp a
    ldh [$f4], a
    ret nz

    inc [hl]
    pop bc
    nop
    rst $18
    push hl
    db $eb
    and $a0
    dec b
    ld [c], a
    sbc a
    add h
    pop hl
    adc a
    xor [hl]
    ld b, [hl]
    ld a, a
    xor a
    xor [hl]
    xor a
    add e
    add h
    ld b, [hl]
    and c
    ld [hl], a
    ret nz

    sbc h
    inc [hl]
    pop bc
    nop
    rst $18
    jp hl


    ld [$05a0], a
    pop hl
    pop bc
    ldh [$7e], a
    rst $28
    xor [hl]
    ld b, [hl]
    ld b, [hl]
    xor a
    db $fd
    ldh [$83], a

Jump_066_443c:
    add [hl]
    add l
    jp $9e46


    scf
    and b
    inc [hl]
    pop bc
    nop
    rst $18
    ld a, [bc]
    and h
    and c
    ld b, [hl]
    db $fd
    add b
    add l
    ldh [rDMA], a
    ld b, [hl]
    add e
    adc c
    adc b
    add a
    pop hl
    add l
    cp l
    call nz, $a4f7
    xor $89
    ld a, [bc]
    or h
    ret nc

    pop de
    sbc [hl]
    rlca
    ld b, [hl]
    add d
    add e
    ld b, h
    ldh [$84], a
    pop hl
    cp $c0
    ld a, h
    ret nz

jr_066_446e:
    scf
    ret nz

    pop bc
    sbc a
    xor $a1
    add sp, -$60
    db $f4
    xor b
    inc e
    sub e
    add $a0
    sbc a
    sbc h
    ld a, a
    add l
    add [hl]
    add e
    xor [hl]
    xor a
    adc d
    add l
    cp $c0
    nop
    ld a, [hl-]
    ldh [$35], a
    ldh [$38], a
    pop bc
    ld [hl], c
    and b
    add sp, -$60
    db $f4
    xor b
    inc e
    sub e
    add $a2
    cp a
    sbc h
    add l
    adc e
    xor a
    ld b, [hl]
    add c
    cp $c0
    ld b, l
    scf
    ld c, b
    ld d, e
    ld d, b
    ld hl, sp-$40
    ld a, c
    ld a, d
    jr c, jr_066_446e

    db $e3
    jp nz, Jump_000_00e4

    sbc a
    ld [$9e80], sp
    cp $c0
    ret nz

    ldh [rDMA], a
    ld b, l
    ld b, e
    rrca
    ld d, d
    ld h, c
    ld e, l

Jump_066_44c0:
    ld d, l
    dec [hl]
    ret nz

    jr c, @-$3c

    rst $28
    ld h, c
    dec a
    pop hl
    ld hl, sp+$00
    sbc h
    ld [bc], a
    and b
    ret nz

    db $e3
    xor [hl]
    ld b, l
    ld a, [hl+]
    inc l
    ld sp, $bd0f
    ld c, e
    ld d, l
    xor [hl]
    or c
    pop bc
    cp a
    ld [c], a
    dec l
    add c
    ld a, [c]
    add [hl]
    ld a, [$b802]
    and c
    cp [hl]
    ret nz

    add e
    add h
    xor a
    ld b, d
    daa
    rst $38
    jr nz, @+$22

    ld l, $44
    ld b, l
    xor a
    add b
    ld b, [hl]
    add l
    xor [hl]
    ld sp, $a1e1
    ld sp, hl
    and d

jr_066_44fd:
    ld a, [c]
    add [hl]
    ld [bc], a
    cp b
    cp [hl]
    ret nz

    add a
    rst $28
    add a
    add l
    ld c, d
    ld d, [hl]
    add b
    ldh [$2b], a
    ld b, l
    ld b, [hl]
    ld a, [bc]
    ld sp, $46c1

jr_066_4512:
    or a
    and b
    sbc [hl]
    dec l
    add e
    nop
    sbc b
    add hl, de
    add $c3
    add d
    rst $38
    ld d, l
    ld h, c
    ld d, h
    ld c, b
    ld c, d
    ld e, l
    xor [hl]
    ld b, [hl]
    rrca
    ld a, c
    adc l
    xor [hl]
    ld b, [hl]
    or a
    and l
    nop
    jp c, $a402

    call nc, $fe81
    add d
    add c
    ld b, l
    ld e, e
    ld d, d
    ld d, d
    ld d, l
    ld d, d
    xor a
    ld e, $f7
    add b
    xor a
    ld b, [hl]
    adc d
    add l
    ld [hl], l
    add c
    rst $20
    ld h, b
    nop

jr_066_4549:
    sbc c
    ld a, [hl+]
    ld [bc], a
    and e
    and b
    jr jr_066_4512

    and c
    ld b, d
    add c
    ld b, l
    rst $38
    ldh [$34], a
    and d
    nop
    ld [hl], e
    pop bc
    jr c, jr_066_44fd

    rst $20
    ld h, b
    nop
    sbc c
    ld [bc], a
    and d
    ld c, c
    ld b, b
    ei
    add e
    ld bc, $8481

jr_066_456a:
    db $fd
    ld h, b
    inc bc
    pop hl
    xor [hl]
    ret nz

    db $e4
    rst $20
    ld h, b
    nop
    call nc, $8807
    sbc l
    ld bc, $0f9d
    and d
    cp a
    push hl
    inc [hl]
    and b
    add d
    jp nz, $80b8

    db $eb
    ld b, b
    nop
    ld d, h
    jr jr_066_456a

jr_066_458a:
    ld h, d
    rlca
    add d
    add a
    add b
    xor [hl]
    sbc h
    ld de, $7fa0
    ld h, b
    or [hl]
    ldh [rP1], a
    ld a, h
    ld h, b
    inc [hl]
    and b
    db $76
    add b
    or e
    and b
    ld b, c

Jump_066_45a1:
    pop bc

jr_066_45a2:
    nop
    ld d, l
    inc c
    ld [c], a
    rlca
    add c
    ret nz

    ld c, d
    add d
    adc h
    add [hl]
    db $fc
    ld b, c
    di
    add c
    ld b, d
    pop bc
    ld [hl], $60
    call nc, $8cd5
    nop

jr_066_45b9:
    ld d, l
    inc c
    rst $20
    ld b, l
    ld b, c
    rrca
    ret nz

    cp a
    rst $20
    ld hl, sp+$41
    add l
    pop hl
    add a
    jr c, jr_066_4549

    ld a, [hl-]
    add e
    nop
    sbc b
    adc $41
    xor [hl]
    ld b, [hl]
    ld b, l
    ld h, a
    ld [hl], $a6
    ld [hl], $bf
    and $50
    add c
    ret nc

    pop de
    or a
    ld b, c
    pop hl
    sbc h
    db $ec
    ret nz

    cp $4d
    ld [bc], a
    dec hl
    rst $08
    jr nz, jr_066_458a

    xor [hl]
    xor a
    ld e, a
    ld b, l
    ld [hl], $62
    and a
    ld h, [hl]
    cp a
    db $e3
    and c

jr_066_45f4:
    jr c, jr_066_45b9

    ld b, b
    ld a, [c]
    ld b, c
    xor [hl]
    ret nz

    or b

jr_066_45fc:
    jr nz, jr_066_45fc

    ld c, l
    ld [bc], a
    dec hl
    rst $08

Jump_066_4602:
    jr nz, jr_066_45a2

    pop bc
    pop hl
    rla
    ld h, a
    and e
    ld l, b
    cp a
    pop hl
    xor [hl]
    ld b, [hl]
    ld b, c
    jr c, @+$43

    ld a, d
    inc hl
    ldh a, [$b0]
    ld hl, $4dfe
    ld [bc], a
    dec hl
    jp Jump_066_42c2


    xor b
    xor c
    ld l, h
    inc bc
    dec [hl]
    dec [hl]
    cp a
    pop hl
    ret


    ld h, b
    db $fd
    rst $00
    rst $38
    ld b, h
    ld hl, sp+$2c
    ld [bc], a
    xor $ff
    ld b, [hl]
    xor [hl]
    ld b, l
    ld [hl], $6e
    ld l, a
    ld l, h
    dec [hl]
    rla
    and e
    xor d
    xor e
    db $fc
    ret nz

    xor a
    rst $00
    ld b, c
    ld [bc], a
    scf
    nop
    call $cc38
    ld h, b
    sub b
    ld h, c
    cp a
    pop hl
    ld l, h
    ld l, a
    ld l, [hl]
    cp h
    jp nz, $2084

    ld [$3702], sp
    nop
    ld c, e
    adc $00
    and c
    db $d3
    ld b, d
    ld a, [hl]
    pop hl
    pop bc
    ld [c], a
    ld a, [bc]
    ld h, c
    jr nc, @+$0d

    ld h, d
    ld [bc], a
    inc [hl]
    nop
    ld c, e
    adc $00
    sbc a
    sbc h
    pop de
    jr nz, jr_066_45f4

    and b
    inc de
    ld [hl], $6e
    pop bc
    ld [c], a
    ccf
    ld b, c
    xor [hl]
    ld a, h
    ret nz

    ld [bc], a
    dec [hl]
    nop
    ld c, d
    sbc b
    ret


    inc h
    pop bc
    pop hl
    dec a
    ret nz

    ld [hl], $45
    add l
    ld [hl+], a
    adc e
    ld h, b
    sbc [hl]
    ld b, b
    ld c, l
    ld b, d
    cp $d4
    ld [bc], a
    ld [$c1d6], a
    adc [hl]
    ld bc, $20c8
    xor [hl]
    call nz, Call_000_32c1
    cp a
    ld hl, $83af
    nop
    dec [hl]
    nop
    sub $d7
    sub $53
    ld [bc], a
    xor c
    ld h, b
    ret c

    and d
    cp a
    db $e3
    ld c, $42
    ld b, c
    ld [hl+], a
    ld c, l
    ld b, h
    ret c

    reti


    sub $53
    add b
    ld [bc], a
    xor c
    ret c

    and h
    adc l

Jump_066_46c1:
    add c
    adc e
    add b
    jp z, $8920

    ld hl, $a18b
    and b
    ld bc, $eddb
    nop
    sub $53
    nop
    ld c, [hl]
    inc d
    db $e3
    adc e
    add e
    add d
    ld [c], a
    ld b, h
    and b
    ret nz

    call c, Call_000_0035
    ld d, b
    ld b, h
    ld bc, $01db
    ld a, [de]
    ld hl, $a30d
    call nc, Call_000_00d5
    call c, Call_000_0035
    ld d, c
    ld b, h
    ld bc, $a1d0
    cp c
    db $e4
    call nz, $dca2
    dec [hl]
    nop
    ld d, c
    nop
    add hl, de
    and l
    cp c
    db $e4
    add $82
    call c, Call_000_0035
    ld d, h
    xor $05
    adc e
    add c
    ld b, $f8
    nop
    nop
    ld d, l
    ld a, [c]
    ld c, c
    ld b, $f9
    nop
    ld d, l
    ld a, [c]
    ld c, c
    ld b, $f9
    nop
    ld d, l
    ld a, [c]
    ld c, c
    nop
    ld b, $f9
    nop

Call_066_4721:
    call nc, $fffc
    nop
    jp c, $fffc

    nop
    db $db
    db $fc
    rst $38
    nop
    db $db
    nop
    db $fc
    rst $38
    nop
    rst $18
    db $fc
    rst $38
    nop
    rst $18
    db $fc
    rst $38
    nop
    db $dd
    db $fc
    rst $38
    nop
    db $db
    nop
    db $fc
    rst $38
    nop
    ld b, c
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
    ld [de], a
    ld [bc], a
    ld bc, $1224
    ld [bc], a
    ld [bc], a
    jr nz, jr_066_4781

    ld [bc], a
    inc bc
    inc hl
    inc de
    ld [bc], a
    inc b
    dec e
    inc d
    ld [bc], a
    dec b
    ld e, $15
    ld [bc], a
    ld b, $1f
    ld d, $02
    rlca
    inc h

jr_066_4781:
    ld d, $02
    ld [$1626], sp
    ld [bc], a
    add hl, bc
    ld e, $17
    ld [bc], a
    ld a, [bc]
    ld [hl+], a
    rla
    ld [bc], a
    dec bc
    jr z, @+$19

    ld [bc], a
    inc c
    inc l
    add hl, de
    ld [bc], a
    dec c
    ld hl, $021a
    ld c, $29
    ld a, [de]
    ld [bc], a
    rrca
    dec l
    ld a, [de]
    ld [bc], a
    db $10
    inc l
    dec de
    ld [bc], a
    ld de, $1d27
    ld [bc], a
    ld [de], a
    dec hl
    dec e
    ld [bc], a
    inc de
    add hl, hl
    rra
    ld [bc], a
    inc d
    dec hl
    jr nz, jr_066_47b9

    dec d
    ld a, [hl+]

jr_066_47b9:
    ld hl, $1602
    ld d, $22
    ld [bc], a
    rla
    add hl, de
    ld [hl+], a
    ld [bc], a
    jr jr_066_47d8

    dec h
    ld [bc], a
    add hl, de
    ld [de], a
    ld h, $02
    ld a, [de]
    dec e
    daa
    ld [bc], a
    dec de
    rra
    jr z, jr_066_47d5

    inc e
    ld [de], a

jr_066_47d5:
    add hl, hl
    ld [bc], a
    dec e

jr_066_47d8:
    ld de, $022b
    ld e, $13
    dec hl
    ld [bc], a
    rra
    ld e, $2b
    ld [bc], a
    jr nz, jr_066_47f7

    inc l
    ld [bc], a
    ld hl, $2c16
    ld [bc], a
    ld [hl+], a
    dec e
    inc l
    ld [bc], a
    inc hl
    rra
    inc l
    ld [bc], a
    inc h
    ld [hl+], a
    inc l
    ld [bc], a

jr_066_47f7:
    dec h
    dec d
    dec l
    ld [bc], a
    ld h, $1b
    dec l
    ld [bc], a
    daa
    ld e, $2d
    ld [bc], a
    jr z, jr_066_4826

    dec l
    ld [bc], a
    add hl, hl
    ld d, $2e
    ld [bc], a
    ld a, [hl+]
    jr jr_066_483c

    ld [bc], a
    dec hl
    rra
    ld l, $02
    inc l
    ld a, [de]
    cpl
    ld [bc], a
    dec l
    inc e
    cpl
    ld [bc], a
    ld l, $1d
    jr nc, @+$01

    rst $38
    rst $38
    add hl, hl
    ld c, b
    or c
    ld c, e
    add a

jr_066_4826:
    ld d, b
    and d
    ld d, b
    cpl
    dec c
    ld c, $0e
    ld c, $fc
    jp hl


    ld c, l
    rst $28
    ldh [$fc], a
    rst $28
    nop
    rst $38
    ldh [$d8], a
    db $ec
    ret z

    push hl

jr_066_483c:
    rst $38
    rst $38
    ld [c], a
    pop hl
    pop bc
    ld [c], a
    rst $38
    rst $38

jr_066_4844:
    db $e3
    ld [c], a
    adc b
    ld a, [hl]
    di
    ret z

    rst $38
    cp b
    xor $4d
    call c, Call_066_64ff
    ld [c], a
    cp $c9
    dec c
    ld b, $00
    rst $20
    ld c, l
    ld c, l
    db $fc
    call z, $dffe
    jr jr_066_4844

    add [hl]
    pop hl
    ret nz

    ld [c], a
    pop af
    dec l
    ld a, d
    rst $38
    inc b
    pop af
    add a
    ldh [rKEY1], a
    dec c
    ld l, l
    ld l, e
    rrca
    ld l, e
    ld l, e
    ld c, l
    dec l
    cp $e0
    nop
    rst $38
    cp [hl]
    rst $08
    jp Jump_066_41e1


    dec c
    cp $e0
    cp l
    ld [c], a
    ld a, [hl]
    ld a, [$eb02]
    nop
    call nz, $c24d
    db $e3
    add b
    cp [hl]
    ld [c], a
    ld a, [hl]
    and $fc
    or e
    ld [de], a
    jp nc, $e044

    add h
    pop hl
    ld a, [$6de3]
    nop
    or a
    ret nz

    db $fc
    cp a
    nop
    ld [$e146], a
    adc h
    and c
    ld sp, hl
    pop hl
    ld a, $e2
    ld l, d
    and c
    ld a, b
    ret nz

    rst $38
    ld [$44c5], sp
    ld [c], a
    dec c
    dec hl
    dec bc
    dec hl
    cp a
    ldh [$f0], a
    ld a, $e3
    cp $df
    ld [hl-], a
    and l
    add l
    call nz, Call_000_0d0d
    ld a, [bc]
    dec hl
    add hl, bc
    dec bc
    cp a
    ld [c], a
    cp b
    ret nz

    dec l
    db $ec
    add h
    cp $df
    adc b
    and e
    add l
    pop bc
    ld c, a
    ld a, [bc]
    ld c, d
    ld l, e
    dec bc
    rst $38
    ldh [$3e], a
    ld [c], a
    ld l, l
    db $fc
    cp a
    ld a, h
    inc b
    xor c
    ret nz

    ld [c], a
    dec c
    ld a, [bc]
    ld l, d
    ld c, e
    ld c, e
    add [hl]
    ldh [$e0], a
    cp c
    pop bc
    cp [hl]
    ret nz

    db $fc
    cp a
    add b
    jp hl


    jp nz, Jump_000_0ac2

    dec l
    dec c
    rlca
    dec c
    dec l
    dec l
    ei
    and c
    add b
    ld sp, hl
    nop
    rst $08
    ld c, c
    and b
    ret nz

    jp nz, $c306

    ldh [$0c], a
    inc c
    scf
    jp nz, $a238

    ld hl, sp+$74
    adc b
    sub c
    ld b, b
    jp nz, $c43e

    ldh [$0c], a
    inc c
    inc l
    inc c
    inc l
    rst $38
    jp nz, Jump_066_7ff8

    jr nc, jr_066_492b

    adc c
    jp nz, $c4e2

jr_066_492b:
    ldh [rIE], a
    pop hl
    inc l
    inc l
    db $fd
    and d
    ld hl, sp+$7f
    inc c
    ld [bc], a
    xor d
    push bc
    pop hl
    ld l, h
    ld c, h
    rst $38
    ldh [$7d], a
    db $e4
    db $76
    add c
    cp $df
    ld [$c400], sp
    ld [bc], a
    and b
    pop bc
    pop hl
    ld l, h
    ld b, b
    ret nz

    cp [hl]
    db $e3
    cp a
    ld [c], a
    ld hl, sp+$76
    ld [$d000], sp
    pop bc
    ld [c], a
    ret nz

    and c
    dec hl
    cp [hl]
    ld [c], a
    cp a
    db $e3
    ld b, [hl]
    rst $38
    add d
    add l
    ld b, e
    dec l
    inc c
    call z, $c0e2
    and c
    cp [hl]
    ld [c], a
    ld a, [hl]
    ld [c], a
    dec l
    nop
    rst $38
    inc c
    cp [hl]
    ld b, [hl]
    pop bc
    jp nz, Jump_066_4b6b

    ld a, a
    and c
    ld a, h
    ldh [$7e], a
    db $e3
    ld a, c
    add b
    inc h
    nop
    rst $18
    nop
    ld b, h
    ld l, e
    adc c
    ret nz

    add a
    ret nz

    ld c, e
    cp [hl]
    db $e3
    ld a, [hl]
    db $e3
    ld [$6032], sp
    db $f4
    ld sp, $5212
    ld l, e
    ld a, [bc]
    ld [c], a
    ld a, l
    pop hl
    ld a, h
    db $e3
    db $fc
    pop bc
    jr jr_066_4a19

    add [hl]
    jr c, @-$65

    ld a, [hl]
    and h
    dec l
    ld l, e
    cp [hl]
    rst $20
    cp d
    add c
    or [hl]
    and c
    ld b, b
    cp a
    db $e3
    db $fc
    rst $18
    ld b, $42
    cp a
    ldh [$7c], a
    ldh [$c2], a
    and c
    dec hl
    ld a, [$c0c2]
    ld a, e
    call nz, $a678
    nop
    sbc c
    db $fc
    ld h, e
    ld a, l
    ld [c], a
    ccf
    and b
    ld a, [bc]
    ld a, [hl+]
    ret nz

    cp c
    ret nz

    ld a, e
    push bc
    ld hl, sp-$7c
    cp $df
    db $fc
    add c
    dec sp
    and e
    ld c, d
    ld a, [bc]
    ld b, c
    ld a, [bc]
    add hl, sp
    pop bc
    db $fd
    jp $f280


    nop
    rst $28
    db $fc
    add e
    dec c
    ei
    add d
    add c
    ld a, [bc]
    ld a, b
    ld h, c
    ld a, a
    ldh [$b3], a
    add c
    ld hl, sp-$79
    sbc b
    dec e
    ld a, h
    add e
    ld c, h
    rlca
    ld c, h
    ld l, h
    ld l, h
    add c
    ld [c], a
    ccf
    ldh [$ee], a
    and d
    db $76
    ld [hl], b
    ld a, [hl+]
    ld l, $ec
    nop
    db $e4
    dec a
    ld b, d
    ld c, h
    ld c, h
    pop bc
    jp Jump_066_6b4b


    ld c, e
    ret nc

    ld l, l
    and e
    db $76
    ld h, e

jr_066_4a19:
    nop
    ld e, l
    db $fc
    ld b, l
    ld l, e
    ld b, l
    pop hl
    dec bc
    ld l, e
    cpl
    dec bc
    ld c, e
    ld c, e
    ld c, e
    inc sp
    pop hl
    ld l, h
    ld a, e
    and c
    ld b, d

jr_066_4a2d:
    cp a
    inc e
    db $fc
    ld b, [hl]
    jp nz, Jump_000_0be2

    ld l, e
    ld c, e
    ld a, [hl-]
    ld b, c
    di
    pop bc
    or $60
    ld bc, $006d
    rst $18
    db $fc
    ld b, a
    add d
    db $e3
    pop bc
    ldh [$b4], a
    push bc
    nop
    rst $18
    db $fc
    ld l, b
    ld bc, $430d
    add b
    ld b, $e0
    add d
    pop hl
    dec [hl]
    jp Jump_066_6035


    nop
    rst $18
    jr c, jr_066_4ac2

    add b
    ret nz

    ldh [$c6], a
    jp Jump_066_6333


    dec [hl]
    ld h, e
    nop
    sbc $fc
    jr z, jr_066_4a2d

    jp nz, Jump_000_082b

    cp a
    ld hl, $8172
    db $f4
    ld b, e
    ld l, l
    ld hl, sp+$1f
    ld a, h
    daa
    pop bc
    jp $013c


    nop
    rst $30
    ld b, b
    di
    ld b, c
    ret nz

    ldh [rSC], a
    rst $38
    db $fc
    dec h
    rst $00
    ld bc, $c380
    ld a, [hl]
    pop hl
    inc bc
    ld c, h
    ld c, h
    ld l, [hl]
    add c
    ld b, b
    pop hl
    nop
    rst $18
    ld a, h
    ld h, $c0
    db $e4
    rst $38
    ld [c], a
    add [hl]
    or c
    ld hl, $6c4c
    nop
    rst $38
    db $fc
    ld b, a
    cp a
    add sp, -$04
    ret nz

    dec l
    ld [hl+], a
    xor d
    jr nz, jr_066_4adb

    pop bc
    and b
    nop
    rst $38
    db $fc
    ld b, [hl]
    dec c
    ld b, b
    db $e3
    ret nz

    db $e3
    nop
    ld [bc], a
    ld h, b
    cp e
    nop
    ld a, b
    ld [hl+], a
    ret nz

    db $ed

jr_066_4ac2:
    nop
    pop de
    inc a
    ld h, c
    rst $38
    push bc
    ld a, $e1
    ld bc, $860d
    ldh [$bf], a
    pop hl
    nop
    ld e, a
    ld a, h
    ld b, a
    ld a, a
    and b
    dec b
    and c
    ld b, l
    add b
    nop

jr_066_4adb:
    rst $38
    nop
    ld [$80a0], sp
    ld d, e
    db $fc
    dec d
    dec a
    ld h, c
    ld a, a
    and b
    push bc
    add b
    ret nz

    ld [c], a
    jr jr_066_4aed

jr_066_4aed:
    ccf
    ld a, h
    dec c
    ld a, $c5
    ld c, e
    ld c, e
    db $f4
    ld b, b
    nop
    scf
    nop
    push de
    nop
    cp e
    nop
    ret nz

    db $e4
    add b
    jp nz, $067e

    ld [bc], a
    rst $38
    ld a, h
    dec b
    ret


    add c
    ld b, e
    ldh [rP1], a
    ret nz

    db $e3
    nop
    ccf
    nop
    xor [hl]
    rst $00
    and d
    add c
    pop hl
    cp [hl]
    and e
    inc b
    ld b, d
    inc b
    rst $18
    ld b, b
    add b
    add [hl]
    ccf
    add h
    cp e
    ld [bc], a
    cp e
    add c
    inc b
    jp nc, $9700

    dec l
    cp a
    add l
    nop
    ld a, e
    add h
    call nz, Call_000_04a1
    rst $08
    nop
    ld e, d
    ret nz

    rst $20
    cp a
    and d
    ld c, d
    rst $38
    nop
    jp z, Jump_066_401e

    ld h, d
    dec c
    dec bc
    dec bc
    dec l
    cp h
    add d
    ld b, b
    and c
    inc b
    rst $38
    nop
    nop
    xor e
    ld bc, $fbe5
    ld h, c
    ld b, a
    ld b, b
    nop
    rst $18
    nop
    ld b, a
    ret nz

    ld [$617b], a
    ld h, b
    add [hl]
    add d
    ld l, d
    jr nz, jr_066_4b63

    cp a
    nop

jr_066_4b63:
    and l
    cp a
    ret nz

    ld c, e
    ld l, e
    ld [bc], a
    add b
    nop

Jump_066_4b6b:
    ld b, b
    add d
    add [hl]
    add e
    ld b, b
    rst $18
    db $fc
    rlca
    cp [hl]
    ld b, c
    rlca
    add c
    ld b, b
    ld h, b
    jp RST_20


    add d
    and [hl]
    ret nz

    rst $38
    cp $46
    ld a, $00
    ret nz

    db $e3
    add d
    ret z

    nop
    rst $18
    ld a, [hl]
    adc e
    nop
    ld b, e
    ld h, h
    add d
    call nz, $ef02
    cp $da
    pop de
    jp nz, $c1cd

    add e
    ld h, c
    ld c, [hl]
    rst $38
    nop
    nop
    db $eb
    ld a, d
    inc hl
    db $fc
    rst $20
    inc b
    sbc a
    ret nz

    ret


    ld a, [$fc25]
    rst $20
    nop
    sub l
    nop
    nop
    nop
    rst $28
    and b
    call c, $dedd
    db $fc
    ld [$d8a0], a
    reti


    ldh a, [$fc]
    rst $28
    cp $e0
    ret c

    db $ed
    ret z

    db $e4
    rst $18
    ldh [$e1], a
    ld [c], a
    sbc $fc
    jp hl


    sub $d7
    jp c, $fcdb

    pop hl
    ret nc

    pop de
    call z, $e3fc
    ldh a, [$e3]
    and b
    and b
    ret c

    db $ed
    ret z

    push hl
    db $e3
    db $e4
    inc sp
    push hl
    and $fc
    jp hl


    add d
    push hl
    jp nc, $fcd3

    db $e3
    ld [hl], d
    push hl
    inc a
    ret c

    db $ed
    ret z

    push hl
    rst $20
    add sp, -$17
    ld [$e9fc], a
    add [hl]
    push hl
    ccf
    call nc, $a0d5
    and b
    call nc, Call_066_7ad5
    rst $20
    ret c

    db $ed
    add b
    ret z

    push hl
    ld [bc], a
    db $ed
    add [hl]
    rst $20
    db $f4
    jp hl


    db $fc
    jp nz, $d2fe

    ld [bc], a
    db $eb
    and b
    rst $30
    and b
    sub $d7
    add [hl]
    db $e3
    and b
    sbc a
    sbc l
    sbc l
    dec de
    sbc l
    sbc a
    ld a, d
    rst $20
    sub $d7
    cp $d3
    ld [bc], a
    db $eb
    sub d
    push bc
    rst $38
    sbc a
    sbc l
    and d
    sbc h
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    sbc h
    scf
    and d
    sbc l
    sbc a
    ld l, [hl]
    db $e4
    ret c

    reti


    cp $d3
    ld [bc], a
    db $eb
    ld d, $86
    jp $9fa0


    jp $aee1


    cp $e0
    cp l
    ldh [$bf], a
    ldh [$50], a
    ld hl, sp-$3d
    cp $d3
    inc b
    rst $08
    add [hl]
    ret nz

    sbc [hl]
    jp nz, $afe1

    cp $e0
    ld h, b
    cp [hl]
    ldh [$bf], a
    pop hl
    ldh a, [$c5]
    nop
    call c, $c308
    call nc, $81d5
    pop hl
    ld l, c
    xor a
    ld b, c
    ldh [$fa], a
    db $e3
    sbc [hl]
    pop bc
    and b
    call nc, $fcd5
    or l
    db $f4
    inc b
    call $c108
    sbc [hl]
    ld b, [hl]
    pop hl
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld b, c
    ld a, l
    ld a, [hl-]
    pop hl
    ld a, a
    ld [c], a
    db $fc
    or [hl]
    inc b
    res 0, d
    jp $44a1


    ldh [$7f], a
    ld a, c
    ld a, [hl]
    ld b, l
    dec hl
    dec hl
    ld a, a
    ld a, l
    ld a, b
    pop hl
    ldh [$fd], a
    ret nz

    db $fc
    or a
    ld [bc], a
    xor e
    inc d
    and d
    jp nz, Jump_066_79c1

    ld a, [hl]
    ld c, e
    ld c, a
    dec l
    jr nz, jr_066_4cd1

    ld a, [hl+]
    cp a
    ldh [$b8], a
    ret nz

    and c
    db $fc
    cp b
    cp b
    ld [bc], a
    xor e
    add d
    jp nz, $e141

    add b
    ld d, c
    ld e, [hl]
    ret nz

    ldh [rNR41], a
    dec bc
    ld b, d
    add c
    or $c1
    sbc [hl]
    nop
    ld [c], a
    db $fc
    or e
    nop

jr_066_4cd1:
    call $c282
    rst $38
    xor a
    ld b, [hl]
    add d
    add e
    ld d, d
    ld d, h
    dec hl
    ld sp, $2b07
    add e
    add h
    cp c
    pop bc
    cp [hl]
    pop bc
    ld l, d
    add e
    nop
    rst $18
    ld [$fea0], sp
    ld b, d
    ret nz

    ld b, [hl]
    add l
    add [hl]
    add e
    ld e, e
    add e
    adc c
    rla
    adc b
    add a
    add l
    ei
    and c
    sbc [hl]
    nop
    db $e4
    db $fc
    or c
    inc b

Jump_066_4d01:
    adc a

Jump_066_4d02:
    sbc $c2
    and c
    xor [hl]
    ld b, [hl]
    add l
    add a
    jp Jump_000_0be0


    dec bc
    ld b, $37
    jp nz, $9f9c

    db $fc
    add [hl]
    ld hl, sp+$6e
    nop
    rst $08
    ld b, b
    pop bc
    ld [bc], a
    ret nz

    cp [hl]
    call nz, Call_000_02e0
    dec c
    dec c
    rlca
    ld [bc], a
    ld [hl], a
    and c
    sbc [hl]
    ld hl, sp-$04
    add l
    ld hl, sp+$6f
    nop
    pop de
    and c
    ld b, [hl]
    ld b, [hl]
    ld [bc], a
    rlca
    ld a, [hl]
    call nz, $0fe0
    sbc b
    nop
    ld bc, $020f
    ld [hl], a
    and b
    ldh a, [$3b]
    and b
    db $f4
    ld h, l
    nop
    rst $18
    ld [bc], a
    and c
    ld [bc], a
    rrca
    sbc b
    sbc b
    ld b, a
    rrca
    rlca
    rlca
    cp [hl]
    ldh [$f9], a
    ldh [$7d], a
    ldh [$9c], a
    db $76
    add b
    add sp, -$08
    ld [hl], e
    nop
    ret nc

    ld [bc], a
    and b
    ld [$e0c1], sp
    ld [bc], a
    ld b, e
    ld b, c
    jp $0245


    cp [hl]
    ld [c], a
    cp a
    ld [c], a
    ld hl, sp+$74
    nop
    jp nc, Jump_000_0e0c

    ld a, $c1
    ldh [$39], a

jr_066_4d76:
    dec sp
    dec [hl]
    jr c, jr_066_4db1

    cp [hl]
    ld [c], a
    cp a
    db $e3
    inc l
    ld hl, sp+$73
    nop
    ret nc

    sbc a
    sbc h
    ret nz

    db $e3
    dec [hl]
    rst $38
    ldh [$be], a
    pop hl
    ld [hl], d
    cp a
    db $e3
    and c
    ld hl, sp+$73
    nop
    rst $08
    ret nc

    pop de
    sbc [hl]
    ld b, b
    pop hl
    rst $20
    ld [$3645], sp
    cp a
    pop hl
    ld a, h
    ldh [rSC], a
    rrca
    sbc c
    ldh [$ba], a
    ret nz

    ld a, c
    add b
    ld hl, sp+$71
    nop
    sub c
    ret nz

    ldh [rSB], a
    nop

jr_066_4db1:
    rrca
    xor a
    ld [bc], a
    ld b, l
    scf
    jr c, jr_066_4d76

    ld [c], a
    add hl, sp
    ld a, [hl]
    ld [c], a
    sbc h
    jr c, jr_066_4e34

    ld h, c
    ld hl, sp+$6f
    inc b
    ld c, a
    call nc, $a1d5
    ld b, c
    ret nz

    ld a, [bc]
    ldh [$15], a
    rlca
    cp [hl]
    db $e4
    ld a, [hl-]
    dec a
    pop hl
    ld [$6275], sp
    ld hl, sp+$6f
    inc b
    ld d, c
    ld [$6141], sp
    cp [hl]
    push hl
    dec sp
    pop hl
    add hl, sp
    ld [hl], b
    ret nz

    ld a, e
    call nz, Call_000_2ef4
    nop
    adc l
    ld d, $00
    ld h, a
    ld [bc], a
    rrca
    jp nz, $44a1

    ld a, [$7fc0]
    ld [c], a
    ld a, [hl-]
    pop bc
    or c
    sbc [hl]
    db $f4
    cpl
    nop
    adc a
    add [hl]
    ld hl, $9d9f
    ld a, l
    pop hl
    rrca
    ld e, a
    sbc c
    sbc b
    ld [$474a], sp
    cp c
    ret nz

    ld [hl], $7b
    call nz, $a1c1
    db $f4
    cpl
    nop
    adc l
    ld a, [hl]
    jp $a2bb


    ld a, d
    jp nz, Jump_066_614a

    adc e
    ld e, h
    inc a
    cp a
    db $e4
    ld [$87f8], sp
    nop
    ld e, e
    db $fc
    add e
    xor [hl]
    ld d, [hl]
    ret nz

    db $e3
    ld d, [hl]
    ld b, b
    ld hl, sp-$5f
    ld b, b
    ld l, l
    and b

jr_066_4e34:
    ld [$87f8], sp
    add $00
    ld d, l
    and b
    and b
    db $fc
    ld b, l
    cp e
    ld h, c
    add b
    add b
    ld [bc], a
    ld c, a
    ld a, l
    ld d, l
    ld sp, hl
    and c
    inc a
    ld b, h
    inc c
    ld c, $99
    ld a, l
    ret nz

    ldh a, [rPCM12]
    ld h, l
    nop
    ld d, h
    db $fc
    ld l, d
    cp a
    jr nz, jr_066_4e64

    dec bc
    ld b, l
    ccf
    ld l, [hl]
    cp d
    and c
    dec sp
    ld [hl], $45
    dec l
    and b

jr_066_4e64:
    ld c, $0c
    db $76
    ld h, l
    ld a, b
    nop
    call nc, Call_066_68fc
    dec a
    ld b, c
    xor a
    ld b, [hl]
    ld b, l
    ld b, e
    jp Jump_000_2fc1


    ccf
    ld b, c
    ld b, e
    ld b, l
    inc sp
    ldh [$99], a
    ret nz

    ld [c], a
    ld h, d
    ld bc, $0050

jr_066_4e83:
    push de
    db $fc
    jr z, jr_066_4e83

    ld b, c
    add b
    and b
    dec sp
    add h
    pop bc
    xor [hl]
    ld [hl], $20
    add c
    xor a
    nop
    jp hl


    nop

jr_066_4e95:
    push de
    db $fc
    jr z, jr_066_4e95

    ld b, c
    cp a
    add d
    pop bc
    ldh [$af], a
    ldh [$36], a
    ld hl, $c380
    ld h, d
    ld hl, $d900
    db $fc
    ld l, b
    xor [hl]
    ld b, l
    ld a, [hl-]
    adc b
    ld b, h
    and d
    add l
    ldh [$b3], a
    and h
    ld [$df00], sp
    db $fc
    ld h, $7d
    jr nz, @+$46

    ld [$c008], sp
    ld b, l
    and b
    rst $30
    nop
    ld [bc], a
    ld [hl], a
    ld h, d
    xor [hl]
    ld h, b
    ld hl, sp+$40
    ld hl, sp+$2d
    nop
    ld l, $2f
    ld a, [hl]
    dec b
    ld [$3cc3], sp
    ld bc, $8072
    pop bc
    ldh [$2d], a
    add b
    or l
    nop
    ld [$2df8], sp
    inc l
    rrca
    db $fc
    inc h
    xor [hl]
    add b
    db $e3
    inc a
    ld bc, $42b3
    or d
    ld b, b
    add c
    ld [$a400], sp
    nop
    rst $18
    ld a, h
    ld hl, $e400
    ld [hl], $02
    rst $30
    ld hl, $4702
    rrca
    ld [$009e], sp
    and h
    nop
    rst $18
    add b
    add $39
    jp nz, Jump_000_1ec1

    ld a, a
    ld b, b
    sbc l
    sbc l
    sbc h
    ld [bc], a
    nop
    push hl
    nop
    rst $18
    ld a, $82
    add b
    ld a, a
    push hl
    dec a
    ld hl, $6002
    dec hl
    add b
    nop
    db $e4
    nop
    rst $18
    db $fc
    ld b, c
    xor [hl]
    db $e3
    ld b, [hl]
    ld a, $7f
    db $e4
    ld a, $c0
    cp l
    ld bc, $9d9f
    sbc a
    ld [hl], $7a
    ld hl, $a0a0
    nop
    rst $18
    jp nc, Jump_000_3fd3

    ret nz

    cp a
    and e
    ret nz

    ld a, a
    pop hl
    add [hl]
    ld h, d
    ld b, $61
    nop
    ld h, d
    nop
    ld e, b
    db $fc
    dec h
    call nc, $9ad5
    ld a, e
    ld bc, $3e42
    ld b, c
    inc a
    ld b, h
    rst $38
    ld bc, $007e
    and b
    ret nz

    ld a, d
    nop
    nop
    ld h, c
    nop
    ld e, c
    db $fc
    ld h, $3d
    ld h, d
    cp [hl]
    and d
    dec [hl]
    ld b, d
    ld [bc], a
    ld a, [hl]
    ret nz

    sbc [hl]
    db $ec
    ld h, d
    nop
    ld e, a
    nop
    add $3e
    xor c
    ld b, b
    ld [c], a
    ld l, d
    ld h, c
    nop
    inc b
    adc l
    nop
    sbc b
    cp l
    ld b, c
    rst $38
    jp $c03f


    ld a, h
    and b
    ld a, [hl]
    rlca
    ret nc

    ld l, h
    inc d
    nop
    sub h
    ld a, [hl]
    ld b, d
    ld b, [hl]
    ld a, l
    jr nz, jr_066_4fca

    ld b, b
    ret nz

    cp [hl]
    add c
    ld a, [hl]
    ld bc, $0418
    call $9a00
    ret z

    and d
    ld b, l
    ccf
    add d
    pop bc
    cp l
    and d
    nop
    jr nz, @-$0a

    inc b
    ld c, l
    nop
    sbc b
    and c
    jp z, Jump_066_45a1

    ld b, e
    ld b, c
    ld b, e
    add d
    db $fd
    ldh [rLYC], a
    cp a
    and c
    inc b
    ld b, e
    inc b
    rlc b
    sbc b
    ld bc, $45e1
    ld l, a
    ld [hl], $3b
    dec [hl]
    dec sp
    db $fd

jr_066_4fca:
    ldh [$36], a
    ld b, l
    db $fd
    ld h, b
    db $e3
    sbc h
    sbc a
    inc b
    rst $08
    nop
    sbc b
    rst $38
    add c
    ld b, h
    inc a
    and h
    dec b
    ld h, h
    rst $38
    ldh [$a5], a
    cp $a0
    inc b
    dec h
    jp nc, Jump_000_004d

    rst $10
    ret nz

    and b
    rst $38
    ld b, d
    dec [hl]
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    ld l, d
    nop
    cp $a0
    ld b, b
    and d
    inc b
    adc $00
    rst $10
    nop
    and d
    ret nz

    ldh [$fe], a
    ld b, c
    ret nz

    ldh [$b0], a
    ld a, a
    and c
    add [hl]
    ld b, d
    jp nc, Jump_000_004d

    ld d, l
    jp nc, Jump_066_7fd3

    ld b, b
    ld b, h
    ld [hl], a
    inc a
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    inc a
    ld b, h
    ld a, a
    and c
    and b
    inc b
    and e
    cp $ce
    nop
    ld d, c
    ld a, [hl]
    ld hl, $007d
    xor [hl]
    ret nz

    push bc
    xor [hl]
    adc h
    add b
    and b
    add [hl]
    ld b, e
    and b
    and b
    nop
    rst $18
    ld a, [hl]
    inc h
    cp [hl]
    ld b, b
    ld b, l
    cp a
    xor [hl]
    ld b, c
    ld b, e
    xor [hl]
    ld b, c
    xor [hl]
    add c
    ret nz

    and c
    nop
    add d
    and l
    nop
    rst $18
    jr nz, @+$64

    ld a, [hl]
    and h
    ld b, l
    ld b, b

Jump_066_504f:
    inc b
    ld b, c
    add d
    push bc
    nop
    rst $18
    nop
    nop
    add a
    db $fd
    inc bc
    ld b, e
    ld h, h
    ld [bc], a
    add d
    ld [$004b], sp
    ld e, c
    ld a, [hl]
    ld h, e
    sub b
    ld h, b
    nop
    rst $38
    db $e4
    jp $8661


    ld b, e
    nop
    rst $18
    nop
    ld b, c
    ld a, [hl]
    push hl
    cp $e9
    inc b
    sub c
    ld b, $00
    sub e
    and b
    and b
    ld a, [hl]
    and $8a
    ld h, h
    add [hl]
    ld h, l
    nop
    pop de
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
    ld a, [de]
    ld [$0102], sp
    inc e
    ld [$0202], sp
    jr jr_066_50b7

    ld [bc], a
    inc bc
    ld e, $09
    ld [bc], a
    inc b
    ld d, $0b
    ld [bc], a

jr_066_50b7:
    dec b
    jr nz, @+$0d

    ld [bc], a
    ld b, $22
    dec c
    ld [bc], a
    rlca
    dec d
    ld c, $02
    ld [$1021], sp
    ld [bc], a
    add hl, bc
    ld d, $11
    ld [bc], a
    ld a, [bc]
    inc hl
    ld [de], a
    ld [bc], a
    dec bc
    ld a, [de]
    rra
    ld [bc], a
    inc c
    dec de
    ld hl, $0d02
    add hl, de
    ld [hl+], a
    ld [bc], a
    ld c, $27
    ld [hl+], a
    ld [bc], a
    rrca
    inc hl
    inc hl
    ld [bc], a
    db $10
    inc h
    inc hl
    ld [bc], a
    ld de, $2326
    ld [bc], a
    ld [de], a
    ld [hl+], a
    inc h
    ld [bc], a
    inc de
    add hl, de
    dec h
    ld [bc], a
    inc d
    ld hl, $0225
    dec d
    jr nz, jr_066_5121

    ld [bc], a
    ld d, $19
    jr z, jr_066_5101

    rla
    ld [hl+], a

jr_066_5101:
    jr z, jr_066_5105

    jr @+$26

jr_066_5105:
    dec hl
    ld [bc], a
    add hl, de
    ld a, [de]
    inc l
    ld [bc], a
    ld a, [de]
    inc h
    ld l, $02
    dec de
    dec de
    jr nc, jr_066_5115

    inc e
    inc h

jr_066_5115:
    ld sp, $1d02
    ld a, [de]
    inc [hl]
    ld [bc], a
    ld e, $25
    inc [hl]
    ld [bc], a
    rra
    ld a, [de]

jr_066_5121:
    jr c, jr_066_5125

    jr nz, @+$27

jr_066_5125:
    jr c, @+$04

    ld hl, $3a1b
    ld [bc], a
    ld [hl+], a
    inc h
    ld a, [hl-]
    ld [bc], a
    inc hl
    dec e
    dec sp
    ld [bc], a
    inc h
    jr nz, jr_066_5171

    ld [bc], a
    dec h
    ld [hl+], a
    dec sp
    rst $38
    rst $38
    rst $38
    ld b, l
    ld d, c
    dec l
    ld d, l
    sub $5a
    pop af
    ld e, d
    ccf
    dec c
    ld c, $0e
    ld c, $4d
    ld c, l
    db $fc
    ldh [$f7], a
    ldh [rNR10], a
    db $fc
    db $fd
    call nc, $fce1
    db $ed
    db $fd
    db $ed
    dec c
    ret c

    pop hl
    rst $20
    pop af
    ei
    ld a, [$827e]
    rst $20
    dec c
    ld c, l
    ld c, l
    ld c, l
    dec c
    dec l
    ld [hl], d
    push af
    cp $fe
    db $fd
    dec c
    ld l, l
    dec c

jr_066_5171:
    dec bc
    dec c
    dec bc
    dec bc
    db $e3
    ld c, l
    dec l
    ld a, d
    rst $38
    ld c, [hl]
    rst $20
    ld a, [hl]
    add sp, $6d
    dec bc
    dec c
    ld c, $ff
    ldh [$0b], a
    dec c
    ld c, l
    ld a, [hl]
    ldh [$75], a
    ldh [$ec], a
    adc $62
    ld [c], a
    ld b, h
    cp $d6
    pop bc
    ldh [$0b], a
    add c
    ldh [$7d], a
    pop hl
    ld a, [hl-]
    ldh [$2d], a
    or l
    ldh [$80], a
    ldh a, [$cd]
    sub [hl]
    pop bc
    nop
    rst $30
    ld b, e
    ldh [rIE], a
    db $e4
    cp l
    ld [c], a
    cp a
    ldh [rKEY1], a
    ldh [$f1], a
    pop bc
    ld hl, sp-$1e
    db $fc
    rst $18
    ld d, c
    ldh [rLYC], a
    pop hl
    dec hl
    ld a, [bc]
    ld a, [hl+]
    ld [bc], a
    ld a, e
    db $e3
    dec bc
    jp Jump_066_6ee1


    ldh [$33], a
    ldh [$ab], a
    ret nz

    ld [bc], a
    ld sp, hl
    nop
    jp $c01e


    db $e4
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    dec hl
    ld a, l
    push hl
    or l
    ret nz

    or b
    ret nz

    ret nz

    ld a, [c]
    pop bc
    add hl, bc
    ld [c], a
    call c, $fea3
    res 0, b
    jp hl


    ld c, $e0
    dec bc
    dec bc
    ld bc, $fc6b
    ret nz

    cp a
    pop hl
    rst $00
    pop hl
    or l
    pop bc
    xor $c1
    or c
    jp nz, $d9fc

    ld a, [hl+]
    and [hl]
    db $e4
    dec l
    ret nz

    pop hl
    ld c, e
    ret nz

    pop hl
    dec hl
    cp l
    ld [c], a
    ld [hl], l
    pop bc
    add [hl]
    cp h
    ld [c], a
    ld c, l
    dec l
    inc a
    ldh [$5e], a
    and l
    inc [hl]
    rst $30
    ret nz

    jp nz, Jump_000_036b

    ld c, e
    ld c, e
    ld a, h
    pop hl
    cp l
    pop hl
    ld b, e
    pop hl
    cp [hl]
    and $f0
    and l
    ld a, h
    call $0042
    ret z

    ld c, l
    add h
    jp $e0be


    ld [hl], a
    jp nz, $e079

    dec c
    inc [hl]
    ldh [$30], a
    ld a, [hl-]
    db $e3
    cp d
    pop bc
    ld e, [hl]
    and e
    nop
    rst $10
    ld c, l
    dec l
    add [hl]
    jp $e5be


    ld b, $b7
    jp nz, Jump_000_2b2b

    ld a, [hl]
    db $ed
    nop
    or b
    ld a, [hl]
    jp $c4bd


    cp h
    and c
    ld bc, $3c6b
    ld [c], a
    ldh a, [$a3]
    ld a, l
    pop hl
    ld l, e
    and d
    ld l, [hl]
    and d
    ret nz

    push af
    add h
    add c
    db $10
    cp l
    jp $c24b


    ld a, b
    ret nz

    cp l
    rst $20
    ld c, e
    ld [hl], d
    jp nz, $81ea

    ld [bc], a
    or c
    ldh a, [$fc]
    ld h, d
    add d
    add e
    cp e
    and d
    ld a, [hl-]
    ld [c], a
    ld l, e
    ld c, e
    ld l, e
    ld a, [bc]
    add hl, bc
    ld a, [hl+]
    rst $30
    call nz, $c432
    ld l, l
    nop
    jp c, $8702

    jr c, @-$3c

    ld a, [hl]
    ldh [$ef], a
    ld c, d
    ld a, [hl+]
    ld a, [hl+]
    ld l, d
    add c
    db $e3
    ld c, e
    dec c
    dec c
    ret nc

    ld a, [$c0c0]
    pop hl
    db $fc
    sbc l
    db $fc
    ld h, e
    dec l
    inc bc
    jp nz, Jump_000_0a0d

    add hl, bc
    ld c, d
    inc [hl]
    and b
    ld b, c
    db $e4
    dec bc
    inc h
    add b
    ld l, [hl]
    add e
    inc [hl]
    or [hl]
    ld a, h
    ld h, a
    ld d, b
    ret nc

    and b
    ld [hl], l
    ret nz

    cp a
    ldh [$c0], a
    ld [c], a
    ld l, e
    dec b
    pop hl
    dec bc
    pop bc
    ldh [rP1], a
    add b
    ld a, [c]
    ld [hl], $67
    ld hl, sp+$42
    db $76
    push bc
    ld a, h
    ld [c], a
    add b
    ld [c], a
    ld b, e
    ldh [$b1], a
    pop hl
    ld hl, $006d
    sbc $fa
    ld c, h
    or h
    add c
    or l
    add c
    ld c, e
    pop bc
    ld [c], a
    ld [bc], a
    db $e4
    nop
    db $fc
    ld e, b
    add d
    and $76
    ld b, h
    add c
    ldh [$c0], a
    ld [c], a
    ld l, a
    pop bc
    ld [bc], a
    ldh [$fc], a
    ld e, l
    ld [$e542], sp
    xor h
    ld b, a
    cp d
    add e
    ld l, e
    xor [hl]
    and d
    add d
    push af
    inc l
    ld c, [hl]
    db $f4
    ld h, $05
    ld c, l
    or l
    ld h, b
    ld a, [bc]
    ld [bc], a
    ld [c], a
    add d
    jp hl


    ld [bc], a
    rst $38
    ld a, h
    add $40
    pop hl
    nop
    ld b, h
    call nz, $b186
    db $f4
    dec sp
    ret nz

    ld [c], a
    pop bc
    pop bc
    cp h
    ld h, d
    add [hl]
    and e
    inc b
    rst $18
    nop
    ld a, d
    daa
    ld d, d
    and c
    add c
    jp Jump_066_616b


    add h
    push bc
    add b
    ld d, c
    ld a, [hl+]
    add hl, hl
    jr @+$67

    nop
    inc de
    and d
    ld [bc], a
    jp $412e


    ccf
    ld h, d
    ret c

    ld bc, $1dfe
    jr nz, jr_066_5388

    pop bc
    ld [c], a
    nop
    inc bc
    jp nz, $a183

    ccf
    pop hl
    ld c, h
    rst $38
    ld hl, sp+$67
    or [hl]
    ld [hl+], a
    ld b, h
    and b
    ld b, d
    jp nz, $8000

    pop bc
    add l
    add b
    nop
    ccf
    ld a, d
    ld a, [bc]
    ld b, l
    and b
    jp $84a4


    ret nz

    ret nz

    db $e3
    nop
    nop
    rst $18
    inc b
    ret z

    ld hl, sp+$00
    inc bc
    pop bc
    rst $38
    ld b, b
    or [hl]
    add e
    add d
    and d
    ld [bc], a
    db $fd
    ld [$a702], sp
    ld a, c
    ld bc, $22ba
    dec bc
    push bc
    add b
    add d
    cp b
    inc b
    call nc, Call_000_0179

jr_066_5388:
    nop
    pop bc
    db $e3
    add $60
    inc b
    cp a
    or [hl]
    ld l, a
    ld a, c
    nop
    ret nz

    db $e4
    ccf
    ld [hl+], a
    add d
    jp c, Jump_000_0404

    call $82c6
    dec c
    ld a, a
    ld [hl+], a
    inc bc
    jp $c682


    ld h, [hl]
    ld h, c
    rst $30
    nop
    ld b, b
    di
    inc bc
    cp $4e
    inc h
    rlca
    cp c
    jr nz, jr_066_53b5

    db $e4
    cp c

jr_066_53b5:
    inc b
    dec l
    ld e, h
    sub l
    ld [bc], a
    inc b
    pop de
    ld c, l
    jp nz, $b9c1

    ld bc, $23c2
    add h
    inc h
    ldh [rOBP1], a
    db $fc
    add hl, sp
    db $10
    call nz, $0ba3
    and d
    jp $f924


    ld bc, $7e4d
    and $02
    cp d
    add d
    db $e3
    nop
    inc de
    ld b, d
    ld b, b
    push hl
    rst $38
    add [hl]
    ld a, [hl]
    ld [$87f6], a
    ld a, h
    db $10
    ld c, [hl]
    ld [bc], a
    ret nz

    jp hl


    nop
    cp e
    pop bc
    ld [bc], a
    ld l, e
    db $fc
    scf
    ld a, a
    ld [hl+], a
    ld b, c
    ld hl, $2800
    ret nz

    db $e3
    nop
    jp hl


jr_066_53fb:
    nop
    db $f4
    or a
    ret nz

    push hl
    nop
    ld hl, $057e
    ld sp, hl
    ld bc, $1782
    inc b
    adc h
    ld b, e
    inc h
    nop
    nop
    jr nz, jr_066_5454

    ld [bc], a
    ld a, e
    add $82
    inc b
    ld e, d
    jr z, jr_066_5418

jr_066_5418:
    call nc, Call_000_22c7
    ld a, a
    ld bc, $4b09
    cp l
    ldh [$ba], a
    and h
    dec hl
    dec sp
    jp Jump_000_02e2


    inc b
    sbc l
    add [hl]
    ld [hl+], a
    nop
    ld a, $e2
    cp $e0
    ld a, a
    ld b, $3d
    ld [c], a
    ld e, l
    and b
    ld a, d
    rst $20
    nop
    push de
    ld a, [hl]
    db $e3
    nop
    ret nz

    ld [bc], a
    ld c, d
    jr nz, jr_066_53fb

    call $cdf8
    inc b
    ld d, d
    inc b
    jr nz, @-$42

    jp nz, $8144

    nop
    ld a, b
    jp $c2f2


    xor e

jr_066_5454:
    and d
    ld hl, sp-$3a
    ld a, [c]
    ld b, e
    inc [hl]
    inc d
    adc e
    ld h, c
    ld b, c
    jp Jump_066_6b01


    dec a
    ldh [$34], a
    call nz, $e2ec
    ld h, h
    nop
    ld a, b

jr_066_546a:
    inc de
    db $fc
    call $a33e
    nop
    push af
    add c
    rst $38
    ldh [$37], a
    add b
    ld [hl], d
    add l
    db $76
    add $c0
    db $f4
    or [hl]
    and [hl]
    cp $c2
    nop
    ld b, d
    ld [hl+], a
    push af
    add [hl]
    ld a, [hl+]
    add b
    daa
    add b
    ld [hl], d
    inc hl
    ld d, h
    ld b, [hl]
    ld l, $6e
    ld a, [hl]
    ld h, $00
    ld [hl], d
    and b
    ld a, [c]
    and d
    db $fc
    ld hl, $e1c3
    ld l, h
    ld h, b
    cp a
    ldh [$72], a
    inc h
    cp $1f
    nop
    ld a, [$7902]
    pop bc
    ret nz

    push hl
    ld l, [hl]
    and h
    ld a, [c]
    ld e, e
    ld hl, sp+$67
    ld a, d
    push hl
    xor [hl]
    and d
    nop
    ld [hl], l
    and e
    or e
    ld b, b
    add b
    pop hl
    db $f4
    ld e, c
    and h
    adc e
    adc h
    and d
    inc bc
    and c
    cpl
    ld h, d
    ld b, b
    jr nc, jr_066_546a

    ld [hl], d
    ld c, c
    ld l, $31
    ld hl, sp+$27
    ld [hl], d
    rlca
    ld [hl], d
    ld h, d
    dec l
    cp [hl]
    pop bc
    inc hl
    ld l, e
    ld c, e
    ld [hl], d
    inc bc
    nop
    reti


    jr z, jr_066_552b

    dec hl
    cp [hl]
    and e
    pop bc
    ld [c], a
    ld bc, $f22b
    inc hl
    inc [hl]
    add hl, de
    ret c

    ld b, l
    sub d
    add [hl]
    ld [hl], a
    and c
    push af
    add b
    add d
    pop hl
    nop
    or d
    ld hl, $d500
    sbc b
    ld d, l
    cp l
    jp nz, $8171

    pop bc
    db $e3
    nop
    jp c, $acf4

    nop
    ld l, [hl]
    ld [bc], a
    rst $30
    and c
    jp Jump_066_43e1


    ldh [$82], a
    push hl
    nop
    sbc $ea
    ld c, e
    jr z, jr_066_5576

    nop
    ld l, h
    add c
    add d
    db $e4
    rst $38
    rst $38
    ld hl, sp-$35
    rst $20
    ld b, e
    ld l, d
    and e
    db $f4
    rra
    ld l, h
    cpl
    nop
    add h
    ld h, l
    ld a, [$004d]

jr_066_552b:
    nop
    nop
    rst $38
    and b
    call c, $dedd
    and b
    and b
    ret c

    reti


    ld b, $fc
    db $e3
    jp nc, $fcd3

    rst $20
    db $ec
    push hl
    ld hl, sp-$18
    call nc, $fce1
    db $ec
    rst $38
    rst $18
    ldh [$e1], a
    ld [c], a
    sub $d7
    jp c, Jump_066_7edb

    db $fc
    pop hl
    ret nc

    pop de
    call nc, $a0d5
    and b
    db $fc
    db $e3
    add e
    ret nc

    pop de
    ldh a, [$e1]
    add sp, -$1d
    ldh [$e5], a
    call nc, $fce1
    db $ed
    db $e3
    rst $30
    db $e4
    push hl
    and $82
    add sp, -$61
    and d
    sbc l
    sbc l
    rst $00
    sbc l
    and d
    sbc a
    ld a, d

jr_066_5576:
    di
    call nc, $fce1
    db $ed
    rst $20
    add sp, -$05
    jp hl


    ld [$e782], a
    sbc a
    sbc h
    xor [hl]
    ld b, [hl]
    xor [hl]
    rrca
    ld b, [hl]
    ld b, [hl]
    sbc h
    sbc a
    ld a, d
    db $ec
    db $76
    db $e3
    call nc, $fce1
    db $ed
    ld a, h
    ld l, $e3
    add d
    push hl
    sbc h
    ld b, [hl]
    xor a
    xor [hl]
    xor a
    cp l
    ldh [$80], a
    cp a
    ldh [rIE], a
    ld [c], a

jr_066_55a5:
    ldh a, [$cd]
    ld [$fae2], a
    jp z, $e32e

    add d
    push hl
    ld b, [hl]
    ld [hl], a
    ld b, [hl]
    ld b, [hl]
    xor a
    cp $e2
    sbc h
    sbc l
    sbc l
    cp l
    pop hl
    ld a, [hl]
    ldh a, [$cb]
    sub $d7
    and b
    and b
    sub $d7
    ld a, [$40cb]
    ld l, $e3
    add d
    db $e4
    ld b, l
    ldh [$fe], a
    db $e3
    ld a, [hl-]
    pop hl
    ld a, h
    ld [c], a
    sbc a
    pop af
    ret nz

    or b
    ld [hl], h
    ld [c], a
    ld l, [hl]
    rst $00
    ld a, [$2ecb]
    db $e3
    sub $d7
    add [hl]
    ret nz

    sbc [hl]
    sbc $45
    ld [c], a
    ld b, l
    ld c, b
    ld c, b
    ld b, l
    ld a, e
    ld [c], a
    ld b, [hl]
    sbc h
    jr nc, jr_066_55a5

    ret nz

    ld l, [hl]
    ldh [$33], a
    db $e3
    ld a, [hl]
    push hl
    jp c, $fadb

    rlc b
    rst $00
    ei
    and b
    sbc [hl]
    inc b
    ldh [rDMA], a
    xor a
    ld c, d
    ld h, b
    ld d, h
    inc de
    ld b, c
    ld b, l
    ld a, l
    db $e4
    or l
    ret nz

    xor [hl]
    xor $c0
    ld a, [c]
    jp $c8fc


    and $00
    ret nc

    ret nc

    pop de
    jp nz, $c5c0

    ret nz

    ld b, [hl]
    ld b, e
    ld a, [hl+]
    rlca
    cpl
    jr nz, jr_066_5650

    cp [hl]
    ldh [$f8], a
    ret nz

    or l
    pop bc
    ld a, b
    ldh [$f2], a
    ret nz

    add $7e
    jp hl


    and b
    and b
    nop
    pop de
    add [hl]
    and c
    cp a
    ldh [rDMA], a
    ld b, [hl]
    rst $38
    ld b, l

jr_066_563f:
    ld a, [hl+]
    jr nz, @+$22

    daa
    dec [hl]
    jr c, @+$39

    inc e
    cp l
    pop hl
    ld [hl], b
    ldh [$79], a
    ld a, d
    ld a, l
    db $f4
    pop bc

jr_066_5650:
    db $ed
    and c
    ld l, d
    and [hl]
    db $ec
    nop
    pop de
    adc [hl]
    and c
    and b
    and c
    ret nz

    pop bc
    ld b, l
    cp l
    inc l
    cp e
    ld hl, $ff35
    ldh [$38], a
    scf
    ld b, l
    pop bc
    ldh [$7e], a
    rst $08
    ld b, [hl]
    ld a, a
    ld a, l
    xor a
    or d
    call nz, $a36a
    and b
    and b
    cp d
    nop
    sub $9e
    add h
    jp Jump_000_3745


    jr c, jr_066_563f

    pop hl
    dec [hl]
    rst $38
    ld [hl], $45
    ld b, l
    add b
    scf
    scf
    ld b, l
    ld a, a
    ld bc, $b27d
    jp nz, $e57e

    nop
    db $d3
    ld a, [hl]
    jp nz, $a0c0

    ld c, $e2
    cp [hl]
    push hl
    scf
    jr c, jr_066_56d6

    ld l, c
    ld a, b
    pop hl
    adc [hl]
    ld a, h
    inc a
    ld [c], a
    ld a, [hl]
    ld [c], a
    or b
    nop
    push de
    and d
    and e
    cp l
    jp $c101


    ld b, l
    ld a, [hl-]
    ld a, l
    ld [c], a
    ld l, e
    ld h, c
    ld l, h
    ld a, b
    ld [c], a
    inc a
    ld [c], a
    ld l, e
    and d
    nop
    db $d3
    and b
    and b
    ld a, [hl]
    jp nz, $bdfc

    call nz, $c284
    add hl, sp
    dec [hl]
    dec [hl]

jr_066_56cb:
    dec sp
    dec [hl]
    dec [hl]
    ld a, e
    ld l, [hl]
    ld [hl], h
    push af
    pop bc
    add hl, sp
    ld b, [hl]
    add c

jr_066_56d6:
    ld b, [hl]
    jr z, @-$5e

    inc bc
    and c
    and b
    ld l, d
    add c
    nop
    ret nc

    db $fc
    ld h, d
    inc h
    ld [c], a
    adc a
    and d
    ld a, [hl-]
    ld [c], a
    cp a
    ld b, l
    scf
    scf
    ld c, b
    ld c, b
    scf
    ccf
    pop hl
    dec [hl]
    cpl
    dec [hl]
    ld a, [hl-]
    ld b, l
    add c
    rst $20
    add c
    sbc [hl]
    call c, Call_000_00e4
    adc l
    ldh a, [$fc]
    ld h, e
    ld a, [hl]
    jp nz, $e09e

    jr c, jr_066_56cb

    xor [hl]
    xor [hl]
    ld b, l
    ld c, e
    rla
    ld h, b
    ld e, l
    ld d, d
    ret nz

    db $e4
    adc h
    cp h
    ret nz

    ld l, d
    add d
    nop
    pop de
    ld hl, sp-$04
    xor c
    sbc [hl]
    jp nz, $81b7

    xor a
    xor a
    xor [hl]
    xor [hl]
    ld e, e
    dec c
    ld c, d
    ret nz

    db $e3
    add hl, sp
    xor [hl]
    ccf
    ldh [$6c], a
    add e
    nop
    pop de
    db $fc
    and a
    ld a, b
    ld a, d
    push hl
    ret


    add b
    dec [hl]
    add b
    xor a
    xor [hl]
    ld c, b
    ld c, b
    ld b, b
    pop hl
    ld a, a
    ld [hl], $ae
    xor a
    add e
    add h
    ld b, [hl]
    sbc [hl]
    dec l
    add b
    or b
    nop
    push de
    db $fc
    ld h, l
    db $fc
    ld b, l
    ld a, h
    push hl
    ld e, [hl]
    ld d, d
    ld a, a
    ret nz

    ld a, [hl-]
    ld b, $c1
    ldh [$86], a
    add l
    ret nz

    ld [c], a
    nop
    push de
    db $fc
    and l
    db $76
    and [hl]
    sub [hl]
    ret nz

    rst $38
    and c
    ld b, [hl]
    xor [hl]
    ld c, d
    ld h, c
    add hl, sp
    ld l, [hl]
    ld l, a
    inc bc
    ld l, h
    add hl, sp
    pop bc
    ld [c], a
    ld l, h
    ld h, b
    ldh [rSTAT], a
    nop
    sub e
    db $fc
    and a
    ld a, d
    ld b, a
    db $fd
    sbc [hl]
    ld [hl], h
    add b
    ld d, [hl]
    ld a, [hl-]
    dec [hl]
    ld l, [hl]
    ld [hl], b
    adc b
    inc bc
    adc b
    add a
    add c
    and e
    ld l, d
    ld b, e
    nop
    sub c
    db $fc
    and l
    ld hl, sp-$5f
    db $f4
    add e
    rst $38
    call nc, $9ed5
    xor [hl]
    ld b, [hl]
    ld b, h
    ld b, h
    inc a
    ret nz

    ld [bc], a
    pop hl
    ld l, d
    ld h, b
    add d
    and $00
    sub $f8
    and [hl]
    ld hl, sp+$25
    sbc [hl]
    xor a
    rlca
    ld b, l
    ld b, a
    ld e, d
    inc b
    ret nz

    db $eb
    ld h, b
    add d
    add sp, $00
    ld d, c
    jr z, jr_066_5806

    cp $f8
    daa
    sbc [hl]
    ld b, [hl]
    xor [hl]
    ld c, e
    ld d, l
    inc a
    dec [hl]
    ld bc, $8239
    add c
    add [hl]
    and c
    add d
    db $e3
    nop
    ld d, c
    jr z, @+$4b

    ld a, [hl]
    rst $00
    nop
    ldh [$2f], a
    ld c, b
    add hl, sp
    dec [hl]
    ld h, d
    nop
    add b
    xor a
    ld b, h
    ret nz

    inc b
    sub c
    ld hl, sp+$00
    ret


    ld hl, sp-$55
    or l
    add d
    xor [hl]
    ld c, d
    ld h, b
    ld a, [hl-]
    ld h, d
    inc bc
    ld h, a
    add hl, sp
    ld b, c
    add b
    inc b
    ret nz

    inc b
    db $e3
    inc b
    adc e
    nop
    set 6, [hl]
    inc bc
    ld a, [hl]
    db $76
    add a
    xor [hl]
    xor a
    ld c, d
    ld d, d
    ld h, d

jr_066_5806:
    ld h, a
    inc b
    and d
    ret nz

    ld [hl], h
    ld b, d
    nop
    ld b, d
    cp $0e
    ld l, $2b
    jr nz, jr_066_5855

    db $f4
    ld b, h
    xor [hl]
    xor a
    or a
    ld d, b
    ld b, l
    ld [hl], $01
    add b
    ld [hl], $ae
    add h
    add b
    ld b, [hl]
    pop bc
    sbc [hl]
    db $f4
    inc bc
    cp $0f
    ld l, $2b
    ld a, d
    dec b
    ld [hl], a
    ld hl, $5d47
    ld e, l
    add hl, sp

jr_066_5833:
    add c
    ldh [$36], a
    ld b, l
    xor a
    add h
    add c
    sbc [hl]
    inc b
    pop de
    ldh a, [rP1]
    set 7, b
    inc hl
    ld a, d
    inc bc
    add h
    and b
    ld d, c
    ld e, [hl]
    ld d, [hl]
    ld a, [hl-]
    ld b, $82
    ld h, b
    xor [hl]
    ld b, [hl]
    dec b
    and b
    ld b, l
    add b
    inc b
    pop de

jr_066_5855:
    nop
    adc $04
    rst $00
    ld a, [hl]
    ld hl, sp+$00
    ld d, d
    ld d, l
    inc a
    ld l, e
    ld l, h
    inc a
    dec b
    and d
    ldh [rLYC], a
    add c
    inc b
    ret nc

    nop
    call $a500
    ld [hl], $22
    xor a
    ld b, h
    ld [hl], $1e
    ld b, h
    and b
    ld [hl], c
    adc b
    add a
    add l
    add d
    and h
    inc b
    rst $08
    nop
    call $000c
    and l
    ld a, c
    ld [bc], a
    ld b, l
    ld [hl], $86
    ld h, e
    ld a, h
    ld hl, $8045
    db $76
    ld bc, $02d8
    rst $28
    nop
    bit 7, [hl]
    add e
    ret nc

    pop de
    ld b, $a0
    ld b, [hl]
    xor a
    ld [$6000], sp
    ld b, $62
    inc bc
    ld b, b
    xor a
    add d
    ret nz

    add [hl]
    ld b, c
    ld [bc], a
    rst $28
    nop
    jp z, $a270

    ld h, h
    add [hl]
    add b
    rst $08
    jr nz, jr_066_5833

    ld b, b
    ld h, d
    ld h, e
    ld h, [hl]
    add [hl]
    ld h, c
    nop
    add d
    rst $00
    add sp, $62
    ei
    db $e3
    nop
    sub b
    inc b
    push bc
    add [hl]
    add b
    add c
    ld [c], a
    call nz, Call_000_37a0
    ld l, b
    ld h, [hl]
    ld a, [hl-]
    add h
    ld hl, $a1af
    inc b
    daa
    db $fc
    db $e3
    jr z, jr_066_58d8

jr_066_58d8:
    sub a
    db $fc
    ld b, b
    jp nz, Jump_066_46c1

    inc b
    pop bc
    dec [hl]
    cp a
    ldh [rP1], a
    ret nz

    add b
    ret nz

    jp nz, Jump_000_0582

    call c, Call_000_0063
    sub l
    add [hl]
    add c
    jp nz, $c9c1

jr_066_58f3:
    nop
    ld a, b
    ld b, $3d
    ld [hl+], a
    ld l, b
    ld h, [hl]
    ld sp, hl
    nop
    ld [bc], a
    ld hl, $0582
    ld e, d
    ld h, e
    nop
    push de
    ld c, h
    add d
    ld [c], a
    cp $00
    ld a, c
    ld a, [hl]
    add $61
    cp d
    ld bc, $c26a
    jr nz, jr_066_58f3

    ld a, [hl]
    rst $28
    or $87
    inc b
    adc e
    add [hl]
    add b
    add hl, bc
    ld h, b
    xor a
    ld b, [hl]
    add b
    inc bc
    ld b, [hl]
    ld b, d
    pop bc
    db $e3
    ret nz

    pop hl
    inc a
    jp nz, $817e

    ld a, [hl]
    rst $20
    db $fc
    daa
    db $76
    inc b
    adc l
    and b
    sbc [hl]
    ld d, a
    jr nz, jr_066_597d

    add d
    add e
    nop
    inc h
    ld b, b
    add b
    pop hl
    ld a, a
    ld [c], a
    add d
    ld b, l
    call c, Call_000_0045
    db $d3
    add [hl]
    add b
    sbc [hl]
    ld d, a
    jr nz, jr_066_59bb

    ld b, [hl]
    add l
    add [hl]
    add e
    nop
    jp Jump_066_6d6c


    ld b, c
    ld [hl+], a
    ret nz

    ld b, c
    inc bc
    ld a, d
    jp $c376


    nop
    db $d3
    add d
    jp nz, $2143

    add l
    adc e
    ld l, $80
    and d
    ld l, h
    ld l, a
    ld l, [hl]
    cp c
    pop hl
    ld [hl], $bd
    jp nz, Jump_066_4400

    ldh [$f4], a
    and [hl]
    nop
    ret nc

    add [hl]
    ld b, c
    ld b, e
    ld [hl+], a
    ld a, $e1

jr_066_597d:
    ld [hl], $38
    jr c, jr_066_5982

    ld [hl], e

jr_066_5982:
    pop bc
    ld [c], a
    ld a, [hl]
    jr nz, @-$42

    ld b, h
    ld h, [hl]
    ld h, c
    db $f4
    and l
    nop
    ret c

    ld c, a
    ld b, b
    ld a, [hl]
    ld a, $e0
    ld b, l
    xor [hl]
    ld b, l
    add c
    scf
    jr c, @-$45

    jp Jump_000_3905


    inc a
    ld b, c
    and d
    ld h, h
    nop
    ld a, d
    push hl
    db $f4
    ld h, l
    nop
    ld c, e
    ld a, [hl]
    rst $20
    inc b
    db $fd
    pop bc
    ld c, c
    jr nz, jr_066_59f6

    cp b
    call nz, $c1fd
    ld l, h
    nop
    ld hl, sp-$37
    nop
    sbc b
    ld h, [hl]

jr_066_59bb:
    db $fc
    and d
    add l
    add a
    ld b, h
    add d
    cp b
    jp Jump_066_443c


    pop bc
    pop hl
    add b
    ld [hl], l
    and b
    ld hl, sp-$39
    ld a, [c]

jr_066_59cd:
    ld b, e
    nop
    sub c
    db $fc
    pop bc
    ld a, [bc]
    ld b, c
    rst $38
    ld [c], a
    ld b, l
    sbc [hl]
    dec a
    ldh [$3b], a
    dec [hl]
    dec [hl]
    ld b, d
    ld a, e
    jr nz, jr_066_59cd

    ld [c], a
    xor [hl]
    ret nz

    db $76
    jp $a5fc


    nop
    sub c
    ld a, d
    and e
    sub e
    pop hl
    ld c, l
    ld [c], a
    ld b, l
    ld b, c
    daa
    ld b, e
    ld b, c
    ccf

jr_066_59f6:
    ld b, b
    ld [c], a
    db $ec
    pop hl
    xor a
    db $76
    jp Jump_000_25f4


    db $10
    inc b
    ld c, e
    db $fc
    ret z

    call nc, $d1c0
    ret nz

    sbc h
    or e
    and b
    db $76
    push hl
    ld [hl], e
    pop hl
    ld bc, $f841
    pop bc
    ld [hl], d
    ld hl, $25f4
    ld l, $6f
    ld a, [hl]
    daa
    ld sp, hl
    ld [hl+], a
    adc l
    ld [c], a
    ld e, $33
    db $e4
    ld b, l
    ld [hl], $a6
    ld [hl], $b4
    and b
    ld [hl], d
    inc hl
    nop
    ld d, c
    inc b
    cp $01
    ld a, [hl]
    dec b
    and b
    inc c
    ld h, b
    cp b
    jr nz, jr_066_5ab2

    pop hl
    ld b, a
    ld [c], a
    pop bc
    pop hl
    inc bc
    ld h, d
    and a
    cpl
    add b
    ld [hl], d
    inc h
    nop
    ld d, c
    ld hl, sp+$6a
    ld a, d
    and $ae
    and c
    ld e, $f8
    pop bc
    ld [hl], $62
    ld h, a
    and e
    xor $61
    db $f4
    add c
    nop
    rst $08
    ldh [$f8], a
    xor l
    ld a, d
    add sp, $72
    ld hl, $e2c1
    rst $28
    add b
    or a
    cp b
    ld b, d
    and c
    sbc [hl]
    ld [hl], d
    ld b, d
    nop
    ld d, b
    ld hl, sp+$2a
    ld a, d
    jp hl


    and c
    pop bc
    pop hl
    cp c
    inc bc
    cp d
    and e
    rst $28
    add c
    add b
    pop hl
    nop
    db $d3
    ld hl, sp-$55
    ld a, d
    jp hl


    xor $40
    rra
    ld b, l
    ld [hl], $6e
    ld l, a
    ld l, h
    pop bc
    ld [c], a
    ld [hl], d
    inc b
    nop
    rst $08
    nop
    ld hl, sp+$2d
    ldh a, [$a7]
    xor h
    add c
    cp a
    pop hl
    pop bc
    ld [c], a
    nop
    sub $f8
    xor e
    ldh a, [$83]
    nop
    ld l, [hl]
    ld h, $7e
    ld [c], a
    pop bc
    push hl
    nop
    reti


    db $f4
    xor l
    ld [$7e43], sp
    db $e3
    add d
    push hl
    nop

jr_066_5ab2:
    nop
    reti


    db $f4
    xor l
    ld l, d
    ld h, d
    rst $30
    and e
    ld l, h
    and c
    add d
    ld [c], a
    nop
    reti


    db $f4
    or e
    nop
    cp $e9
    nop
    sub e
    ld [hl+], a
    ld sp, $67ec
    ld [hl], d
    and e
    ld l, d
    and e
    db $e4
    and c
    nop
    add l
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
    db $10
    inc b
    ld [bc], a
    ld bc, $0412
    ld [bc], a
    ld [bc], a
    ld de, $0205
    inc bc
    inc de
    dec b
    ld [bc], a
    inc b
    dec d
    dec b
    ld [bc], a
    dec b
    dec c
    rlca
    ld [bc], a
    ld b, $16
    rlca
    ld [bc], a
    rlca
    jr @+$09

    ld [bc], a
    ld [$080c], sp
    ld [bc], a
    add hl, bc
    ld c, $08
    ld [bc], a
    ld a, [bc]
    db $10
    ld [$0b02], sp
    ld [hl+], a
    ld [$0c02], sp
    dec c
    add hl, bc
    ld [bc], a
    dec c
    add hl, de
    add hl, bc
    ld [bc], a
    ld c, $1b
    add hl, bc
    ld [bc], a
    rrca
    dec e
    add hl, bc
    ld [bc], a
    db $10
    jr nz, jr_066_5b3e

    ld [bc], a
    ld de, $0923
    ld [bc], a
    ld [de], a
    ld c, $0a
    ld [bc], a

jr_066_5b3e:
    inc de
    inc e
    ld a, [bc]
    ld [bc], a
    inc d
    ld e, $0a
    ld [bc], a
    dec d
    dec e
    dec bc
    ld [bc], a
    ld d, $24
    dec bc
    ld [bc], a
    rla
    ld h, $0c
    ld [bc], a
    jr jr_066_5b66

    dec c
    ld [bc], a
    add hl, de
    db $10
    ld c, $02
    ld a, [de]
    jr z, @+$10

    ld [bc], a
    dec de
    ld de, $020f
    inc e
    dec d
    rrca
    ld [bc], a

jr_066_5b66:
    dec e
    rla
    rrca
    ld [bc], a
    ld e, $2a
    rrca
    ld [bc], a
    rra
    jr @+$12

    ld [bc], a
    jr nz, jr_066_5b9d

    db $10
    ld [bc], a
    ld hl, $102b
    ld [bc], a
    ld [hl+], a
    ld d, $11
    ld [bc], a
    inc hl
    ld a, [hl+]
    ld de, $2402
    add hl, de
    ld [de], a
    ld [bc], a
    dec h
    ld a, [de]
    ld [de], a
    ld [bc], a
    ld h, $1b
    inc de
    ld [bc], a
    daa
    inc e
    inc de
    ld [bc], a
    jr z, jr_066_5bba

    inc de
    ld [bc], a
    add hl, hl
    dec e
    inc d
    ld [bc], a
    ld a, [hl+]
    dec h
    inc d

jr_066_5b9d:
    ld [bc], a
    dec hl
    inc h
    dec d
    ld [bc], a
    inc l
    inc e
    ld d, $02
    dec l
    dec de
    jr jr_066_5bac

    ld l, $23

jr_066_5bac:
    jr jr_066_5bb0

    cpl
    ld [hl+], a

jr_066_5bb0:
    add hl, de
    ld [bc], a
    jr nc, @+$1e

    ld a, [de]
    ld [bc], a
    ld sp, $1a24
    ld [bc], a

jr_066_5bba:
    ld [hl-], a
    dec de
    inc e
    ld [bc], a
    inc sp
    ld a, [de]
    dec e
    ld [bc], a
    inc [hl]
    add hl, de
    ld e, $02
    dec [hl]
    ld [hl+], a
    ld e, $02
    ld [hl], $25
    ld e, $02
    scf
    ld h, $1f
    ld [bc], a
    jr c, jr_066_5bec

    jr nz, @+$04

    add hl, sp
    jr nz, jr_066_5bf9

    ld [bc], a
    ld a, [hl-]
    dec h
    jr nz, jr_066_5be0

    dec sp
    add hl, de

jr_066_5be0:
    ld hl, $3c02
    rla
    ld [hl+], a
    ld [bc], a
    dec a
    jr jr_066_5c0c

    ld [bc], a
    ld a, $21

jr_066_5bec:
    inc hl
    ld [bc], a
    ccf
    inc h
    inc hl
    ld [bc], a
    ld b, b
    dec d
    inc h
    ld [bc], a
    ld b, c
    inc hl
    inc h

jr_066_5bf9:
    ld [bc], a
    ld b, d
    rla
    dec h
    ld [bc], a
    ld b, e
    jr nz, jr_066_5c26

    ld [bc], a
    ld b, h
    inc h
    dec h
    ld [bc], a
    ld b, l
    ld [hl+], a
    ld h, $02
    ld b, [hl]
    dec d

jr_066_5c0c:
    daa
    ld [bc], a
    ld b, a
    inc h
    jr z, jr_066_5c14

    ld c, b
    inc d

jr_066_5c14:
    add hl, hl
    ld [bc], a
    ld c, c
    inc de
    ld a, [hl+]
    ld [bc], a
    ld c, d
    dec h
    ld a, [hl+]
    ld [bc], a
    ld c, e
    ld [de], a
    dec hl
    ld [bc], a
    ld c, h
    inc d
    dec hl
    ld [bc], a

jr_066_5c26:
    ld c, l
    inc de
    inc l
    ld [bc], a
    ld c, [hl]
    ld d, $2d
    ld [bc], a
    ld c, a
    daa
    dec l
    ld [bc], a
    ld d, b
    inc e
    cpl
    ld [bc], a
    ld d, c
    dec l
    jr nc, @+$04

    ld d, d
    jr jr_066_5c6e

    ld [bc], a
    ld d, e
    inc l
    ld sp, $5402
    ld a, [de]
    ld [hl-], a
    ld [bc], a
    ld d, l
    ld l, $32
    ld [bc], a
    ld d, [hl]
    ld sp, $0232
    ld d, a
    jr nz, @+$35

    ld [bc], a
    ld e, b
    ld hl, $0234
    ld e, c
    inc h
    inc [hl]
    ld [bc], a
    ld e, d
    daa
    dec [hl]
    ld [bc], a
    ld e, e
    jr z, jr_066_5c98

    ld [bc], a
    ld e, h
    daa
    jr c, @+$01

    rst $38
    rst $38
    ld [hl], b
    ld e, h
    dec bc
    ld h, b
    ldh [$64], a

jr_066_5c6e:
    ei
    ld h, h
    rst $28
    dec c
    ld c, $0e
    ld c, $fc
    ld [$0e4d], a
    ld c, $41
    ld c, l
    db $eb
    ldh [$fc], a
    pop af
    call nc, $c4ee
    ldh [$fd], a
    ld sp, hl
    dec c
    call z, $f0e1
    db $db
    db $fd
    cp h
    xor $82
    rst $20
    rst $38
    ldh [rKEY1], a
    ld c, l
    ld c, l
    dec l
    ld hl, sp+$72

jr_066_5c98:
    add sp, -$01
    rst $38
    add d
    jp hl


    dec c
    dec c
    ld l, l
    dec c
    dec bc
    rst $00
    dec bc
    ld c, l
    dec l
    ld e, d
    db $fc
    ld l, $ee
    add d
    db $e4
    ld c, l
    ld c, l
    inc hl
    ld l, l
    dec bc
    ret nz

    ldh [$bf], a
    ldh [$6e], a
    rst $20
    ld c, l
    cp $e0
    cp $df
    nop
    xor h
    pop bc
    add l
    pop hl
    pop bc
    pop hl
    ld a, [hl]
    ldh [$3e], a
    pop hl
    xor $c4
    and d
    ret nz

    nop
    rst $38
    db $10
    ld a, [hl]
    pop bc
    add l
    pop hl
    cp $e1
    ld a, [hl]
    pop hl
    ld l, l
    adc e
    ld [c], a
    db $fc
    rst $18
    add d
    xor $1b
    dec hl
    ld a, [bc]
    ld b, c
    ldh [$0b], a
    dec c
    cp l
    ret nz

    ld d, l
    sub $04
    set 3, h
    sub b
    ret nz

    inc b
    jp nz, $0b4d

    dec c
    add $c0
    dec hl
    ld a, [bc]
    dec c
    ld a, [bc]
    cp a
    pop hl
    dec c
    dec bc
    ld a, e
    ret nz

    db $fc
    or l
    ld c, $cc
    jr nz, @-$1a

    dec de
    ld c, l
    dec l
    add $c1
    ld l, e
    ld c, d
    add c
    pop hl
    db $fc
    ld [c], a
    ld a, [hl-]
    jp nz, $ff10

    rst $38
    add [hl]
    and [hl]
    cp a
    ldh [$84], a
    ret nz

    dec hl
    ld b, c
    ld [c], a
    ld [hl], l
    pop hl
    ld a, [hl-]
    ret nz

    inc d
    nop
    rst $38
    add [hl]
    xor c
    ld c, l
    ret nz

    ld [c], a
    ld l, e
    ret nz

    db $e3
    ld a, [hl-]
    add $00
    db $dd
    ld a, b
    add [hl]
    and a
    ret nz

    ldh [rIE], a
    ret nz

    ld c, e
    ld c, e
    ld l, e
    ld c, e
    or $c0
    or b
    ld [hl], a
    jp nz, $c3fc

    nop
    rst $18
    add [hl]
    and a
    dec bc
    dec hl
    ccf
    ldh [rOCPD], a
    add a
    dec c
    dec c
    dec l
    dec [hl]
    jp $bc78


    add d
    jp hl


    ld bc, $4bc2
    jp hl


    dec hl
    ret nz

    pop hl
    db $76
    ret nz

    dec l
    di
    pop bc
    dec c
    dec bc
    ld l, l
    inc b
    nop
    rst $38
    ld [$6da4], sp
    adc b
    jp nz, $c2c8

    cp $c2
    or h
    and e
    ret nz

    ldh [$30], a
    ld [bc], a
    cp e
    adc d
    add l
    add hl, bc
    and d
    ret


    jp Jump_000_0a4b


    inc a
    ret nz

    db $76
    and b
    add b
    pop bc
    pop hl
    dec b
    ld [c], a
    ld [bc], a
    rst $38
    adc e
    add c
    call z, Call_066_41c1
    add b
    ld b, b
    ret nz

    ld a, [bc]
    dec bc
    ld c, d
    ld a, [hl+]
    cp a
    db $e3
    ld l, l
    or $7f
    add [hl]
    ld h, h
    jp z, $c084

    pop hl
    ccf
    dec hl
    ld c, e
    dec hl
    ld c, d
    ld a, [bc]
    ld c, e
    db $fd
    and c
    pop bc
    ldh [$78], a
    nop
    rst $18
    ret nz

    ld h, e
    adc c
    add h
    dec c
    dec hl
    ld a, [hl+]
    ld c, e
    ld a, l
    add c
    ld b, c
    ld c, e
    ld b, h
    ld [c], a
    cp $9f
    inc b
    add l
    inc b
    and e
    add d
    add b
    ld c, d
    inc b
    ld [c], a
    ret nz

    add c
    and c
    ld b, h
    ldh [rOCPS], a
    ld l, b
    nop
    sbc h
    ld c, a
    ld h, b
    ret


    ld h, d
    dec hl
    ld a, [bc]
    add c
    ld c, d
    add c
    add b
    inc bc
    pop bc
    ret nz

    pop hl
    ld c, b
    rst $38
    inc b
    ld h, [hl]
    jp $0b83


    inc bc
    ld l, e
    ld a, [hl+]
    ld b, d
    add d
    inc bc
    pop bc
    db $fc
    ld e, a
    ld a, [hl]
    db $ec
    add [hl]
    ld h, d
    jp nz, Jump_000_0381

    ld c, e
    ld c, e
    cp $a0
    ccf
    add b
    db $fc
    ld b, b
    ld a, h
    di
    inc b
    ld d, d
    ld b, c
    add d
    add d
    add e
    add d
    dec bc
    cp l
    jp nz, Jump_066_42fc

    db $fc
    push bc
    cp $8b
    inc a
    ld d, l
    dec l
    ld b, $43
    add c
    dec c
    ld c, e
    ld a, a
    db $e3
    ld a, h
    ld h, d
    cp [hl]
    pop hl
    db $fc
    ld e, l
    add d
    daa
    dec b
    ld c, l
    ret nz

    ld [c], a
    dec hl
    ccf
    pop hl
    inc a
    ld h, d
    ld a, l
    db $e3
    ld a, [hl]
    add e
    cp $df
    nop
    nop
    add c
    jp $bf61


    and b
    ld a, d
    ld [c], a
    add hl, sp
    ld b, c
    ld a, h
    ld h, l
    ret nz

    db $ed
    nop
    sub l
    rlca
    ld l, e
    ld l, e
    ld c, e
    rst $38
    ldh [$80], a
    ld h, e
    ld a, b
    ld b, l
    nop
    rst $18
    add [hl]
    ld h, $00
    ld bc, $c060
    db $e4
    add d
    db $e3
    cp c
    and d
    ld c, b
    cp $82
    ld [bc], a
    nop
    add h
    add b
    db $e4
    ld bc, $be2b
    and c
    or h
    ld [hl+], a
    ld hl, sp+$23
    ret nz

    db $fd
    adc b
    ld bc, $60ff
    ret nz

    ldh [rP1], a
    ccf
    pop hl
    cp [hl]
    and h
    ld [hl], e
    ld [hl+], a
    add b
    pop af
    inc l
    dec c
    inc e
    add d
    ld [$c223], sp
    and c
    nop
    cp [hl]
    add b
    db $fc
    jp $e1c1


    nop
    rst $18
    ld a, [hl]
    ld h, h
    sub b
    db $e3
    ld b, d
    ld h, d
    cp l
    ld h, b
    nop
    rst $30
    and c
    add d
    add sp, $40
    db $dd
    sbc l
    nop
    inc bc
    ld b, b
    ld b, c
    ld h, h
    ret nz

    ld b, c
    inc a
    ld [hl+], a
    and c
    dec l
    add d
    db $e4
    ret nz

    rst $38
    cp d
    pop bc
    rst $08
    ld b, d
    dec hl
    ld b, e
    ld bc, $004b
    ld bc, $0580
    ld [c], a
    ld a, h
    ld d, $fe
    dec bc
    nop
    inc h
    ld b, b
    jr nz, @-$3e

    ldh [$80], a
    jr nz, @+$04

    ld a, [$2d83]
    ld a, [hl]
    ld b, $00
    ld e, e
    ld h, h
    push hl
    cp a
    ld [bc], a
    ld b, b
    jr nz, @+$41

    inc hl
    nop
    add $a3
    rst $38
    rst $38
    ld a, [hl]
    adc c
    ld b, b
    jp nz, Jump_066_4140

    ld b, e
    and d
    add [hl]
    and e
    inc b
    rst $38
    nop
    ld a, h
    ld b, a
    add b
    ld [bc], a
    pop bc
    inc bc
    ld a, [$0040]
    add c
    ld [bc], a
    ld a, a
    nop
    add l
    cp a
    dec h
    nop
    cp [hl]
    add d
    ld bc, $7ea3
    ld h, [hl]
    ld [bc], a
    cp a
    ld [bc], a
    ld [c], a
    ld c, h
    jp nz, Jump_000_0341

    pop af
    ld b, e
    ld bc, $466d
    rst $38
    ld a, [hl]
    daa
    ret nz

    db $e4
    rst $38
    jp nz, Jump_000_2002

    add e
    and e
    nop
    rst $38
    nop
    add b
    add sp, -$3c
    and h
    ld b, d
    and h
    pop bc
    ld [c], a
    add h
    or l
    nop
    adc a
    nop
    and [hl]
    ld b, c
    ret nz

    nop
    ld b, d
    and c
    inc b
    dec h
    inc b
    adc a
    xor l
    ld d, e
    add c
    dec b
    ld b, $a0
    rst $38
    and e
    nop
    ld e, a
    nop
    nop
    ld [$8352], a
    ret nz

    ld [bc], a
    cp a
    and d
    add d
    push hl
    ret nz

    rst $38
    ld [bc], a
    rst $20
    ld a, [hl]
    ld [bc], a
    nop
    pop bc
    ld b, h
    add [hl]
    ld b, l
    nop
    rst $18
    add d
    rst $00
    ret nz

    ld [c], a
    cp $40
    ld a, $a1
    add [hl]
    ld b, l
    nop
    inc b
    adc l
    ld [bc], a
    ld [hl], h
    ld b, c
    add d
    ld c, l
    nop
    rlca
    ret nz

    ld b, d
    and b
    db $f4
    ld h, c
    add [hl]
    ld b, h
    nop
    ld b, b
    rst $18
    add d
    add [hl]
    ld b, b
    add c
    ld c, b
    ld h, c
    ret nz

    adc b
    nop
    rst $18
    ld a, [hl]
    db $eb
    add c
    ld h, h
    nop
    ld hl, sp+$02
    nop
    and l
    nop
    rst $18
    add d
    dec h
    nop
    dec h
    cp c
    ld [bc], a
    nop
    and [hl]
    nop
    rst $18
    nop
    ld a, [hl]
    inc b
    ret nz

    db $ec
    ld a, [hl]
    inc bc
    rst $38
    rst $38
    ld a, [hl]
    ld b, $3f
    ld h, b
    ret


    ld b, e
    db $fc
    jp $bf00


    add d
    nop
    rst $18
    add b
    ld h, a
    ret nc

    nop
    ld bc, $fae5
    call nz, Call_066_74fe
    ld l, $ee
    ldh [$fc], a
    and [hl]
    pop bc
    rst $00
    jp Jump_000_0023


    rst $18
    ld a, [hl]
    ld c, e
    ld l, e
    ld c, e
    ld l, e
    adc b
    dec a
    ld h, c
    cp c
    nop
    ret nz

    nop
    dec l
    cp $43
    ld b, b
    rst $18
    ld a, [hl]
    ld h, l
    ld c, l
    rlca
    dec l
    dec hl
    ld l, e
    rst $38
    db $e3
    cp d
    add b
    cp a
    add c
    db $fc
    add d
    ret nz

    rst $38
    ld [hl-], a
    db $fc
    jr z, jr_066_6009

    rst $38
    pop hl
    pop bc
    ld h, b
    dec l
    dec l
    ld b, h
    ldh [$7e], a
    add e
    nop
    nop
    db $dd
    db $fc
    ld l, b
    add hl, sp
    and h
    add [hl]
    push hl
    inc b
    ld d, e
    ld [hl], c
    add hl, de
    cp e
    jr nz, @-$78

    add sp, $00
    rst $38
    rst $38
    db $fc
    ld l, $86
    add sp, $04
    rst $38
    ld a, h
    cpl
    add [hl]
    rst $38
    ld [bc], a
    pop hl
    nop

jr_066_6009:
    nop
    nop
    rst $28
    and b
    call c, $dedd
    db $fc
    ld [$d8a0], a
    reti


    add [hl]
    db $fc
    db $e3
    jp nc, $fcd3

    rst $20
    db $ec
    db $e4
    call nc, $c4ed
    ldh [$df], a
    rst $30
    ldh [$e1], a
    ld [c], a
    db $fc
    jp hl


    sub $d7
    jp c, Jump_066_7edb

    db $fc
    pop hl
    ret nc

    pop de
    call nc, $a0d5

Jump_066_6035:
    and b
    db $fc
    db $e3
    db $e3
    ret nc

    pop de
    db $ec
    db $e3
    call nc, $c4ed
    pop hl
    db $e3
    db $e4
    push hl
    ld sp, hl
    and $fc
    jp hl


    add d
    jp hl


    and b
    and b
    sbc a
    sbc l
    sbc l
    db $e3
    sbc l
    sbc a
    ld a, [hl]
    and $d4
    db $ed
    call nz, $e7e1
    add sp, -$17
    ld sp, hl
    ld [$e9fc], a
    add d
    jp hl


    and b
    sbc a
    sbc h
    xor [hl]
    ld b, [hl]
    rlca
    ld b, [hl]
    sbc h
    sbc a
    ld a, [hl]
    push hl
    call nc, $c4ed
    pop hl
    ld l, $ef
    inc b
    db $e4
    rst $38
    sbc a
    and d
    sbc l
    sbc l
    sbc h
    ld b, [hl]
    xor a
    ld b, [hl]
    add b
    cp a
    pop hl
    db $fc
    add $fe
    ld [c], a
    adc $ca
    ld l, $ef
    inc b
    db $e3
    add l
    ld [c], a
    ld b, [hl]
    db $f4
    add c
    ldh [$7e], a
    ldh [$a1], a
    db $fc
    add $a0
    and b
    sub $d7
    sub b
    adc $cb
    ld l, $ef
    add d
    db $e3
    add l
    pop hl
    xor [hl]
    add c
    pop hl
    ld a, [hl]
    ldh [$9e], a
    or b
    push af
    ret nz

    ld a, d
    rst $00
    adc $cb
    ld l, $ef
    sub $d7
    add d
    push hl
    xor a
    rlca
    ld b, l
    ld d, b
    ld b, e
    ld a, e
    pop hl
    ccf
    ldh [$7a], a
    ret z

    adc $cb
    inc b
    set 3, h
    adc h
    pop bc

Call_066_60c7:
    nop
    pop bc
    sbc [hl]
    ld b, [hl]
    xor a
    add $c0
    ld b, l
    ld b, a
    dec de
    ld h, b
    ld d, l
    cp c
    pop hl
    ld b, [hl]
    sbc h
    ld a, e
    ret nz

    ld hl, sp-$5b
    nop
    ret c

    ld hl, sp+$20
    db $e3
    inc b
    pop bc
    ld b, c
    ld [c], a
    ld b, [hl]
    ld b, l
    ld c, e
    ld a, [hl+]
    ld l, $01
    ld b, l
    cp a
    ret nz

    cp h
    jp $a3f8


    nop
    reti


    add [hl]
    xor b
    nop
    ldh [$c3], a
    ret nz

    rst $38
    ld b, d
    jr nz, jr_066_611d

    dec l
    ld b, [hl]
    ld a, c
    ld a, d
    ld a, l
    ret nc

    ld a, e
    jp $a26e


    nop
    reti


    add [hl]
    xor c

Call_066_610b:
    sbc [hl]
    add $c1
    ld b, l
    ld l, $bf
    jr nz, jr_066_6141

    ld b, l
    add b
    xor [hl]
    ld a, a
    cp a
    db $e4
    call nc, $d5e1
    db $fc

jr_066_611d:
    xor a
    inc b
    jp nc, $a085

    ret nz

    ldh [rDMA], a
    ld b, [hl]
    ld b, h
    rst $38
    cp h
    inc hl
    ld a, [hl+]
    ld b, l
    add b
    xor a
    ld b, [hl]
    add c
    ldh [$37], a
    pop bc
    cp d
    pop bc
    db $fc
    and d
    nop
    ret c

    add [hl]
    xor e
    ld b, [hl]
    add hl, sp
    dec [hl]
    ld a, a
    dec [hl]
    add hl, sp

jr_066_6141:
    ld b, [hl]
    add d
    add e
    add e
    add h
    inc sp
    jp nz, $a1b1

Jump_066_614a:
    ld hl, sp-$7d
    nop
    reti


    ld [$9fa4], sp
    and d
    ret nz

    jp $ff3a


    dec [hl]
    dec [hl]
    ld a, [hl-]
    ld b, l
    add l
    add a
    add a
    add l
    ld c, $b6
    and b
    xor a
    ld b, [hl]
    sbc [hl]
    db $76
    add e
    nop
    reti


    inc b
    pop bc
    add hl, bc

Jump_066_616b:
    and c
    cp $8b
    jp nz, Jump_066_7a79

    ld h, l
    ld h, [hl]
    dec [hl]
    ld [hl], $44
    add b
    ld a, d
    and c
    or [hl]
    and c
    ld hl, sp-$7f
    nop
    db $dd
    inc e
    and d
    add h
    and b
    ld c, b
    and c
    ld a, c
    rst $38
    ld a, [hl]
    xor [hl]
    inc a
    ld l, d
    ld a, [hl-]
    ld c, e
    ld d, [hl]
    ld b, l
    add b
    ei
    add b
    ld a, [c]
    and b
    cp e
    and c
    nop
    sbc $04
    jp $a048


    ld b, l
    and b
    add d
    rst $38
    add e
    xor a
    ld l, h
    ld l, l
    ld a, [hl-]
    ld d, d
    ld h, c
    ld c, b
    add c
    ld b, l
    scf
    and c
    ld a, h
    and c
    nop
    rst $18
    adc d
    ld h, c
    add h
    and b
    ld a, [bc]
    and d
    add l
    ccf
    add a
    adc b
    ld [hl], b
    ld l, [hl]
    dec [hl]
    ld [hl], $7f
    ld [c], a
    ld a, a
    and d
    call z, $df00

Jump_066_61c5:
    add [hl]
    ld h, b
    call nc, Call_000_06d5
    ret nz

    adc c
    add d
    xor [hl]
    ld b, h
    ld a, a
    ld c, b
    ld [hl], $62
    ld h, e
    ld h, l
    ld a, l
    ld b, e
    ld b, h
    db $e4
    ldh [$6e], a
    ld h, c
    nop
    rst $18
    inc b
    and c
    sub h
    ret nz

    inc c
    pop hl
    ld d, c
    ld e, [hl]
    ld d, l
    rra
    ld l, c
    dec [hl]
    xor h
    ld a, a
    ld a, l
    add [hl]
    ret nz

    ld [hl], h
    ld h, c
    db $fc
    ld h, [hl]
    and $00
    call c, $9c9f
    ld b, [hl]
    add c
    jp nz, $4880

    ld e, [hl]
    ld d, l
    rlca
    ld l, e
    ld l, h
    xor l
    inc bc
    ret nz

    ccf

Jump_066_6206:
    add c
    ldh a, [rSTAT]
    nop
    rst $18
    inc b
    add a
    ld a, [hl]
    add d
    add b
    ld d, [hl]
    ld d, [hl]
    ld [hl], $6e
    ld [hl], b
    ld [hl], c
    inc bc
    pop bc
    ldh [$7e], a
    ld h, h
    nop
    rst $18
    inc b
    add c
    add d
    add d
    add [hl]
    ld h, c
    ld b, h
    ld [hl], $62
    add c
    ld h, [hl]
    ld a, a
    and c
    ld a, d
    ld h, b
    db $fc
    ld b, c
    db $76
    ld b, l
    nop
    db $dd
    add d
    ld h, l
    ld b, l
    rra
    ld [hl], $62
    ld h, a
    ld l, b
    ld h, [hl]
    ld a, a
    and b
    ei
    ld b, c
    ld [bc], a
    jp nz, Jump_066_6af0

    ld b, l
    nop
    reti


    ld a, [hl]
    db $e4
    push bc

jr_066_6249:
    ld b, b
    ld b, d
    ld h, d
    ld h, a
    xor h
    sub e
    dec [hl]
    ld l, d
    ld a, a
    ld [c], a
    ld a, h
    ld h, c
    and d

jr_066_6256:
    ret nz

    and c
    ld a, [hl]
    pop bc
    and b
    ld l, c
    and b
    nop
    sbc a
    ld a, [hl]
    ld h, c
    ld b, b
    jp $6cc0


    ld l, l
    cp $81
    sub b
    ld a, h
    ld h, d
    ld a, l
    db $e4
    ld hl, sp+$2d
    nop
    sub a
    ld b, d
    jp $bfc0


    and b
    ld h, d
    ld h, c
    ld h, e
    pop bc
    ld h, b
    ld [hl], h
    ld b, c
    jr c, jr_066_62c0

    db $76
    ld hl, $a0a0
    nop
    sbc a
    inc c
    cp $41
    add d
    add c
    dec [hl]
    dec [hl]
    dec sp
    ldh [$c1], a
    ld h, b
    ld sp, hl
    jr nz, jr_066_6249

    jr nz, jr_066_6256

    sbc [hl]
    ld l, d
    inc hl
    nop
    sbc d
    ld a, [hl]
    add e
    ld b, b
    ld h, d
    ld [bc], a
    add b
    dec [hl]
    dec [hl]
    sbc a
    ld l, c
    dec [hl]
    xor l
    ld b, b
    add c

jr_066_62a8:
    db $fc
    ld b, c
    xor a
    ld b, b
    sbc [hl]
    ret nc

    ld a, [hl]
    ld h, d
    nop
    sbc e
    sbc d
    inc hl
    ld a, l
    add d
    ld b, d
    add b
    pop hl
    ld l, e
    ld l, h
    ld h, c
    inc a
    cp [hl]
    and c
    ld a, c

jr_066_62c0:
    ld b, d
    ld hl, sp+$21
    nop
    ld e, e
    and b
    and b
    add [hl]
    ld bc, $c200
    ld b, d
    ld [bc], a
    ld h, b
    ccf
    pop hl
    cp [hl]
    and h
    ld [hl], e
    ld hl, $e400
    nop
    ld e, b
    db $fc
    and d
    dec sp
    jp nc, $ffd3

    ld h, e
    ld b, [hl]
    ld b, [hl]
    ld a, $ff
    pop bc
    add b
    jp nz, $ee70

    add c
    ld a, [hl]
    ld b, l
    nop
    rst $10
    db $fc
    and e
    call nc, $a1d5
    ld c, d
    ld [hl+], a
    nop
    cp a
    call nz, $c200
    cp [hl]
    and e
    ld a, [hl]
    add e
    nop
    rst $10
    db $fc
    and l
    ld b, b
    ld h, e
    ld b, c
    ld h, d
    rlca
    dec [hl]
    dec [hl]
    ld [hl], $44
    jp $287e


    nop
    sub $fc
    inc hl
    nop
    db $e4
    rrca
    ld a, c
    ld a, [hl]
    ld b, b
    xor h
    ld b, c
    and d
    dec a
    inc b
    nop
    add h
    nop
    db $db
    ld e, h
    jr jr_066_62a8

    add c
    nop
    add d
    add e
    ld b, b
    add c
    and c
    ld a, $40
    ld [hl+], a
    ld bc, $00a1
    sbc a
    db $fc
    and d

Jump_066_6333:
    nop
    ld hl, $a100
    cp a
    nop
    ld b, c
    ld h, b
    add c
    and c
    add b
    pop bc
    add b
    add $a2
    add d
    push hl
    nop
    rst $18
    sbc d
    add d
    ld a, e
    ld h, b
    ld a, a
    and e
    inc a
    ld bc, $f344
    ld h, c
    add [hl]
    and e
    ldh [$83], a
    nop
    sbc e
    ld a, [hl]
    inc hl
    cp l
    ld h, e
    add c
    jr nz, jr_066_6365

    ld h, d
    ld h, e
    ld a, h
    jp nz, $8203

    ld h, l

jr_066_6365:
    nop
    sbc a
    add d
    inc b
    ld bc, $0f21
    inc a
    dec [hl]
    ld l, c
    inc a
    jp nz, Jump_000_0201

    ld b, d
    nop
    db $e4
    nop
    ld e, h
    db $ec
    ld a, [hl]

Jump_066_637a:
    ld [hl+], a
    jp Jump_066_4602


    xor [hl]
    ccf
    and b
    ld l, e
    ld l, h
    xor a
    and b
    ld [bc], a
    ld [hl+], a
    inc b
    and h
    nop
    ld e, a
    nop
    and d
    ret nz

    db $e3
    xor a
    nop
    jr nz, jr_066_6401

    rrca
    ld [hl], b
    adc b
    add a
    add l
    add e
    inc b
    inc b
    adc [hl]
    nop
    sub l
    jp nz, Jump_000_00c2

    ld a, $e1
    add b
    nop
    jp nz, Jump_000_0461

    ld hl, $2382
    inc b
    adc e
    nop
    sub l
    ld a, a
    ld b, h
    ld b, c
    ld b, [hl]
    ld a, [hl]
    add c
    ld b, d
    ld h, d
    inc b
    ld [hl+], a
    inc b
    adc a
    nop
    ld d, e
    call nc, $0581
    ld b, l
    ld a, l
    cp a
    pop bc
    ld b, d
    add d
    xor d
    jp nc, Jump_000_008d

    ld d, d
    and c
    ld d, d
    add d
    rra
    ld a, c
    ld a, [hl]
    ld a, a
    ld a, l
    ld b, d
    ld bc, $c1c1
    ld [hl+], a
    inc b
    ld d, d
    ld hl, sp+$00
    ld d, e
    ccf
    jr nz, jr_066_63ed

    and b
    ld a, c
    ld a, [hl]
    ld b, [hl]
    xor [hl]
    add c
    inc bc
    ld b, h
    inc a
    jp Jump_066_4242


    and c

jr_066_63ed:
    add d
    jp $8dd2


    nop
    ld d, c
    add d
    jp $827f


    add e
    ld b, [hl]
    xor a
    add c
    ld b, l
    ld [hl], $01
    rst $20
    ld a, b
    ld h, [hl]

jr_066_6401:
    ld h, h
    nop
    db $dd
    add d
    ld h, h
    ld b, [hl]
    add l
    add [hl]
    add e
    rlca
    ret nz

    ld bc, $4445
    ld b, c
    add b
    ld [bc], a
    inc b
    inc hl
    inc b
    adc e
    nop
    ld d, c
    add d
    add h
    cp a
    ldh [$81], a
    add a
    ld b, $21
    rlca
    ld h, e
    nop
    xor b
    nop
    db $dd
    add d
    add d
    ld b, b
    and e
    ld b, l
    rlca
    ld b, e
    ld b, c
    ld b, e
    db $fd
    ldh [$c1], a
    ld hl, $a500
    nop
    rst $18
    add d
    dec h
    ld e, [hl]
    add c
    add b
    ld [hl], $3b
    dec [hl]
    dec sp
    db $fd
    ldh [$36], a
    ld a, $81
    ldh a, [$7e]
    inc b
    nop
    rst $18
    ld a, [hl]
    inc bc
    ld a, l
    pop bc
    ld b, h
    inc a
    and h
    ld h, h
    add d
    rst $38
    ldh [$a5], a
    ld a, $81
    ld a, [hl]
    inc bc
    nop
    rst $18
    nop
    dec h
    ccf
    ld h, c
    ld b, d
    ld a, a
    dec [hl]
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    ld l, d
    cp l
    and c
    nop
    db $fd
    ld h, d
    nop
    rst $18
    nop
    ld b, d
    ld a, [hl]
    add d
    ld a, l
    ld b, b
    ret nz

    ldh [$3f], a
    ld hl, $e2c0
    ldh a, [$3d]
    ld h, c
    inc b
    ld c, a
    nop
    ld d, e
    ld a, [hl]
    add l
    ld b, h
    inc a
    ld l, e
    ld [hl], c
    ld c, $ff
    ldh [$6d], a
    inc a
    ld b, h
    jp Jump_000_0423


    ld c, a
    nop
    ld d, e
    ld a, [hl]
    dec h
    nop
    ret nz

    rst $00
    add b
    add b
    ld b, c
    ld b, b
    inc b
    ld c, a
    nop
    ld d, l
    ld a, [hl]
    ld b, h
    ld b, b
    rst $00
    ld a, a
    and e
    stop
    sbc $fc
    or b
    rst $00
    jr nz, @+$01

    ldh [$9f], a
    db $ec
    nop
    nop
    sbc a
    db $fc
    xor h
    ld h, b
    ei
    ld b, d
    add [hl]
    db $e4
    inc b
    pop bc
    nop
    rst $18
    db $fc
    xor e
    and b
    sbc a
    add [hl]
    rst $20
    nop
    inc b
    ld h, c
    nop
    rst $18
    db $fc
    inc l
    add [hl]
    ld [$5104], a
    nop
    adc a
    db $fc
    xor c
    add [hl]
    push hl
    nop
    add [hl]
    daa
    nop
    pop de
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
    rra
    inc b

Call_066_64ff:
    ld [bc], a
    ld bc, $061a
    ld [bc], a
    ld [bc], a
    ld e, $06
    ld [bc], a
    inc bc
    ld hl, $0206
    inc b
    inc e
    rlca
    ld [bc], a
    dec b
    jr jr_066_651b

    ld [bc], a
    ld b, $23
    ld [$0702], sp
    add hl, de
    add hl, bc

jr_066_651b:
    ld [bc], a
    ld [$0b1b], sp
    ld [bc], a
    add hl, bc
    inc hl
    inc c
    ld [bc], a
    ld a, [bc]
    daa
    dec c
    ld [bc], a
    dec bc
    add hl, de
    ld c, $02
    inc c
    add hl, hl
    ld c, $02
    dec c
    jr z, @+$11

    ld [bc], a
    ld c, $24
    db $10
    ld [bc], a
    rrca
    ld h, $10
    ld [bc], a
    db $10
    ld d, $11
    ld [bc], a
    ld de, $1119
    ld [bc], a
    ld [de], a
    inc e
    ld de, $1302
    daa
    ld de, $1402
    inc d
    ld [de], a
    ld [bc], a
    dec d
    rla
    ld [de], a
    ld [bc], a
    ld d, $25
    ld [de], a
    ld [bc], a
    rla
    dec d
    inc d
    ld [bc], a
    jr jr_066_6576

    inc d
    ld [bc], a
    add hl, de
    ld a, [de]
    inc d
    ld [bc], a
    ld a, [de]
    inc hl
    inc d
    ld [bc], a
    dec de
    inc d
    dec d
    ld [bc], a
    inc e
    jr nz, jr_066_6584

    ld [bc], a
    dec e
    ld d, $16
    ld [bc], a
    ld e, $18

jr_066_6576:
    jr jr_066_657a

    rra
    inc h

jr_066_657a:
    jr jr_066_657e

    jr nz, @+$1f

jr_066_657e:
    ld a, [de]
    ld [bc], a
    ld hl, $1a27
    ld [bc], a

jr_066_6584:
    ld [hl+], a
    ld h, $1c
    ld [bc], a
    inc hl
    ld [hl+], a
    dec e
    ld [bc], a
    inc h
    add hl, hl
    dec e
    ld [bc], a
    dec h
    ld a, [hl+]
    ld e, $02
    ld h, $19
    rra
    ld [bc], a
    daa
    daa
    jr nz, jr_066_659e

    jr z, @+$19

jr_066_659e:
    ld hl, $2902
    ld h, $21
    ld [bc], a
    ld a, [hl+]
    ld [hl+], a
    inc hl
    ld [bc], a
    dec hl
    inc e
    inc h
    ld [bc], a
    inc l
    inc hl
    ld h, $02
    dec l
    add hl, de
    daa
    ld [bc], a
    ld l, $21
    add hl, hl
    ld [bc], a
    cpl
    dec h
    add hl, hl
    ld [bc], a
    jr nc, jr_066_65d9

    ld a, [hl+]
    ld [bc], a
    ld sp, $2b24
    ld [bc], a
    ld [hl-], a
    rla
    inc l
    ld [bc], a
    inc sp
    dec d
    cpl
    ld [bc], a
    inc [hl]
    dec de
    jr nc, jr_066_65d2

    dec [hl]
    inc hl

jr_066_65d2:
    ld [hl-], a
    ld [bc], a
    ld [hl], $18
    dec [hl]
    ld [bc], a
    scf

jr_066_65d9:
    dec h
    dec [hl]
    ld [bc], a
    jr c, jr_066_6604

    ld [hl], $02
    add hl, sp
    inc h
    add hl, sp
    rst $38
    rst $38
    rst $38
    xor $65
    daa
    ld l, d
    rst $10
    ld l, [hl]
    ld a, [c]
    ld l, [hl]
    cp a
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $fa
    ld [$2e4d], a
    ldh a, [$e1]
    ld c, $0e
    ld c, l
    ld hl, sp-$20
    ld c, l
    db $e3
    ldh [$f4], a

jr_066_6604:
    db $eb
    nop
    ret nc

    rst $28
    db $fd
    xor $eb
    db $e4
    ret nz

    ld [c], a
    or h
    pop hl
    db $fc
    db $e4
    db $e3
    ld [$f9fa], a
    ld a, $6d
    ld [c], a
    dec c
    dec c
    ld c, l
    ld c, l
    ld c, l
    db $fc
    pop hl
    db $fd
    db $e3
    pop bc
    dec l
    db $76
    and $d0
    db $f4
    dec a
    rst $20
    ld l, e
    db $e3
    call nz, Call_000_0de1
    ld l, l
    rst $38
    ld l, e
    inc l
    inc c
    inc c
    inc l
    inc l
    ld l, e
    ld l, e
    ld [c], a
    or e
    ldh [$2d], a
    ret nc

    di
    add e
    rst $28
    ld b, h
    db $e3
    dec c
    ld l, l
    dec bc
    rst $20
    ld l, e
    ld l, e
    ld l, e
    jp nz, $bfe1

    pop hl
    dec c
    ld l, e
    ld l, e
    add hl, sp
    dec l
    inc de
    di
    ret nz

    push af
    ld c, l
    dec bc
    dec c
    jp nz, $fee0

    db $e3
    ld c, $7e
    pop hl
    ld l, e
    ld c, l
    dec l
    db $d3
    db $d3
    or b
    ret nc

    inc b
    ldh [$81], a
    ldh [$8d], a
    dec c
    pop bc
    ldh [$6c], a
    ld c, h
    rst $38
    ldh [$3d], a
    ldh [$7f], a
    ld [c], a
    ld c, l
    ldh a, [$e7]
    call nz, $df80
    ld c, b
    ret nz

    ld b, e
    ldh [rOCPD], a
    ld c, h
    ld c, h
    ld l, h
    rlca
    dec bc
    dec bc
    dec hl
    cp a
    ldh [$c0], a
    db $e4
    add d
    rst $18
    ld b, a
    jp $c104


    sbc l
    dec l
    set 0, b
    ld l, e
    dec hl
    dec bc
    rst $38
    pop hl
    ld a, c
    ldh [$6c], a
    ldh [$f4], a
    ret nz

    ret nz

    or $ed
    or d
    adc $c0
    set 0, b
    ld c, e
    ld c, e
    dec bc
    dec de
    dec bc
    ld c, e
    pop bc
    db $e3
    dec c
    ld l, l
    xor b
    and h
    add b
    db $db
    adc $a2
    nop
    adc d
    and c
    ccf
    pop hl
    cp a
    pop hl
    ld a, h
    pop bc
    ld bc, $00e3
    ldh [rSCX], a
    rst $38
    ld a, e
    and [hl]
    ld b, $c0
    db $e3
    dec bc
    dec hl
    ld b, c
    pop hl
    ld b, b
    jp $b0c5


    di
    xor [hl]
    add d
    push hl
    inc l
    push bc
    and b
    dec bc
    pop bc
    dec hl
    dec hl
    ret nz

    ldh [$6c], a
    ld b, c
    pop bc
    ret nz

    db $e3
    ld l, b
    ld h, [hl]
    pop bc
    add b
    jp c, $e502

    ld c, l
    ld c, $e1
    ld l, e
    ld c, e
    ret nz

    pop hl
    ld b, c
    ld c, h
    jp $c0c1


    and b
    and e
    add $04
    cp a
    ld b, [hl]
    and c
    ld c, e
    dec b
    ldh [rP1], a
    ret nz

    ld [c], a
    rst $30
    ldh [$32], a
    pop bc
    ld b, b
    and b
    nop
    cp a
    add h
    add e
    ld d, l
    and b
    add l
    pop bc
    add d
    ret nz

    ldh [$0b], a
    ccf
    ldh [rPCM12], a
    ld [c], a
    add c
    ret nz

    nop
    cp a
    add c
    add l
    dec l
    add b
    ld [bc], a
    pop hl
    add [hl]
    ret nz

    ld bc, $c0e1
    ld [c], a
    ld [bc], a
    jp nz, $d3c0

    rst $38
    ld [hl], c
    dec l
    cp $06
    ldh [$0d], a
    ld l, e
    dec c
    ld c, e
    dec c
    dec hl
    dec bc
    rrca
    dec hl
    ld l, e
    dec bc
    dec bc
    jp nz, $8281

    and d
    add b
    rst $18
    ld [hl], a
    ld h, e
    db $e4
    ld b, d
    and b
    sub a
    ld h, d
    dec c
    ld b, d
    ld [c], a
    ret nz

    pop hl
    dec bc
    dec c
    ld l, l
    and h
    db $e3
    push hl
    add b
    rst $18
    ld c, $c3
    add c
    ld d, [hl]
    ld h, c
    ld c, e
    add b
    pop hl
    ld l, e
    rra
    ld c, e
    ld l, e
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [bc], a
    add h
    cp a
    cp [hl]
    inc c
    ld h, d
    adc e
    dec c
    dec bc
    ret nz

    ldh [$2b], a
    add c
    ldh [$c1], a
    ret nz

    cp h
    ret nz

    dec bc
    add e
    ld a, [bc]
    ld a, [bc]
    jp nz, Jump_066_6ac1

    ld h, d
    nop
    cp b
    and c
    add l
    push bc
    ld h, c
    dec bc
    rrca
    dec c
    dec hl
    ld a, [bc]
    ld l, d
    ret nz

    ld [c], a
    cp [hl]
    add b
    or c
    ldh [rSCY], a
    pop hl
    and b
    and d
    ld h, [hl]
    add b
    ld [hl], h
    ld h, c
    add e
    inc c
    ld h, b
    inc d
    ldh [rKEY1], a
    adc h
    ldh [$0a], a
    ld [bc], a
    ld b, h
    add b
    dec hl
    ld a, l
    add c
    ret nz

    ld [c], a
    dec b
    and $49
    sbc c
    ld b, $64
    inc l
    ld b, b
    rst $18
    dec bc
    dec hl
    ld a, [bc]
    ld a, [bc]
    dec hl
    add c
    and b
    dec bc
    ld a, [bc]
    add c
    ld c, d
    inc a
    add c
    add h
    ld [hl], e
    jp Jump_066_504f


    ld b, d
    sub e
    pop hl
    pop bc
    ldh [$2a], a
    ld [bc], a
    ld b, d
    jp nz, $c04a

    ld [c], a
    add d
    jp nz, $22e8

    nop
    ld e, d
    add d
    call nz, Call_000_20ac
    scf
    ld l, e
    ld a, [bc]
    ld a, [hl+]
    dec b
    add b
    dec bc
    ld l, e
    ld a, c
    ldh [rIE], a
    pop bc
    ret nz

    add d
    ld b, a
    dec a
    db $fd
    dec bc
    ld b, b
    sub [hl]
    ld b, b
    add $a0
    add l
    ld h, d
    ld l, e
    ld l, e
    ld bc, $3f4a
    ldh [$bf], a
    pop bc
    db $76
    dec h
    ld c, a
    or d
    dec a
    inc hl
    db $e3
    add h
    ld b, d
    ret nz

    ld b, [hl]
    ld a, [bc]
    ld h, b
    ld c, e
    dec c
    ret z

    add c
    cp c
    pop bc
    cp b
    ret nz

    dec bc
    ld a, a
    ldh [$80], a
    rst $00
    daa
    nop
    ld d, h
    dec c
    ld [hl+], a
    inc b
    ld hl, $620b
    ret nz

    db $e3
    cp d
    ret nz

    ld a, [bc]
    jr nz, jr_066_6867

    pop hl
    ld a, $c1
    ldh a, [rSB]
    ret


    ld e, l
    ld [$2d22], sp
    ret nz

    ld [c], a
    dec b
    ld h, b
    ld b, h
    add b
    and b
    add hl, sp
    pop bc
    dec c
    cp $a9
    ld b, e
    ld a, [hl-]
    jp nc, Jump_066_4d02

    ccf
    ld [c], a
    ld [bc], a
    ld bc, $4b80
    ret nz

    db $e3
    ld sp, $00c2
    cp a
    ld [bc], a
    xor c
    adc h
    add b
    ret nz

    db $e4
    dec c
    ld l, e
    pop bc
    ld [c], a
    dec c
    ld c, e
    cp a
    and b
    nop
    cp a
    add e

jr_066_6867:
    pop hl
    xor $40
    nop
    sub b
    ld h, b
    add l
    ld h, b
    ld a, a
    ld [c], a
    rst $30
    add c
    or [hl]
    add d
    jp nz, Jump_000_3440

    ld [bc], a
    nop
    cp a
    nop
    ret nz

    db $e3
    cp a
    db $e4
    inc bc
    and c
    db $76
    add d
    add b
    call nz, $bf00
    ld d, [hl]
    ld bc, $c405
    ld a, [bc]
    cp $c3
    dec hl
    ret nz

    pop bc
    ld c, e
    cp a
    ldh [rP1], a
    cp a
    add b
    add l
    adc c
    db $e3
    nop
    cp [hl]
    db $e4
    ld a, c
    and c
    or e
    pop bc
    nop
    ld h, a
    nop
    cp h
    ld a, a
    pop hl
    add $a0
    cp e
    ret z

    ld [bc], a
    ld a, $80
    ld c, e
    ld l, e
    add c
    nop
    ld e, [hl]
    inc b
    dec h
    push bc
    jp nz, $807c

    ld a, [hl-]
    jp nz, $fe00

    ld h, c
    add c
    ldh [$80], a
    and h
    nop
    ld e, d
    nop
    and d
    cp [hl]
    and c
    add $c3
    db $fd
    jp $be00


    ld b, b
    db $fc
    jr nz, @-$3c

    dec b
    nop
    ld e, a
    ld d, [hl]
    add c
    cp a
    ld [c], a
    cp e
    and [hl]
    ld sp, $00a1
    ld a, [hl]
    add a
    nop
    ld e, a
    cp $42
    cp e
    add c
    push bc
    db $e3
    dec [hl]
    ldh [$73], a
    jr nz, @-$3e

    inc d
    nop
    cp c
    or h
    db $fc
    add b
    ld a, h
    ld h, b
    ld a, e
    db $e4
    cp $41
    ld a, [hl]
    ld b, l

Call_066_68fc:
    nop
    ld e, a
    db $fc
    add l
    nop
    ret nz

    pop bc
    rst $30
    add l
    ei
    nop
    ret nz

    nop
    ld a, l
    and e
    nop
    ld e, a
    ld a, [hl+]
    ld bc, $e606
    jr nz, @-$47

    nop
    push af
    ld h, d
    nop
    ld [hl+], a
    nop
    ld e, [hl]
    sbc d
    ld h, l
    ld l, l
    add $c7
    push af
    ld h, c
    ld hl, $400b
    ret nz

    ld a, [hl]
    ld h, c
    ld b, d
    ld [de], a
    or b
    ld [hl], b
    ld c, l
    db $fc
    add d
    jp nz, Jump_000_00c4

    ld b, b
    jp Jump_066_43e4


    nop
    ld e, b
    sbc $27
    db $fc
    add b
    ld b, h
    ld h, c
    cp $43
    jp nz, Jump_000_20a2

    add c
    and c
    ld h, $41
    add h
    rst $18
    or a
    and h
    cp [hl]
    and b
    ld c, e
    call nz, Call_066_41e1
    ldh [rP1], a
    ld b, d
    call nz, Call_066_7f80
    and b
    add h
    ld a, [hl]
    jp $a286


    cp l
    ldh [$83], a
    jp $8040


    nop
    db $e3
    jr nz, jr_066_69c8

    inc hl
    nop
    cp a
    ld a, [hl-]
    ld b, c
    ei
    ld h, e
    add hl, sp
    ld h, e
    ld [hl], l
    ld b, c
    cp $05
    nop
    cp e
    cp d
    inc e
    ld b, l
    db $fd
    nop
    ld c, d
    jp Jump_066_637a


    ret nz

    push hl
    ld a, [hl]
    ld [c], a
    add b
    rst $18
    nop
    ret nz

    pop hl
    call nz, $bbe6
    push hl
    nop
    cp a
    nop
    xor c
    ld bc, $79c2
    ld b, [hl]
    ld [hl], h
    ld b, d
    nop
    ld a, [hl]
    ld [hl+], a
    rst $38
    rst $38
    ld [bc], a
    push hl
    ld bc, $3b81
    inc h
    ld a, $c3
    add b
    ld a, a
    nop
    and [hl]
    add b
    ld b, c
    pop hl
    ld bc, $34a5
    ld hl, $e5c0
    add d
    ret nz

    nop
    cp a
    add d
    jp nz, $802d

    add e
    ld bc, $e7c0
    ld [hl], d
    jr nz, jr_066_69be

jr_066_69be:
    cp a
    nop
    and a
    nop
    add h
    rlca
    ld h, d
    dec bc
    ld [bc], a
    ld [hl-], a

jr_066_69c8:
    inc h
    dec l
    nop
    cp a
    nop
    and [hl]
    ld b, c
    adc c
    nop
    push hl
    nop
    ld h, e
    nop
    cp a
    add d
    nop
    add h
    dec l
    nop
    db $ed
    nop
    push bc
    rst $38
    rst $38
    db $fc
    inc hl

jr_066_69e2:
    db $fc
    ld [bc], a
    ld l, e
    ret nz

    db $fc
    jr nz, jr_066_69e2

    ld hl, $4241
    add b
    rst $18
    nop
    and a
    inc de
    ldh [$0d], a
    dec l
    inc de
    dec hl
    ld l, e
    rst $38
    db $e3
    nop
    ld h, b
    dec c
    ld [bc], a
    ret nz

    nop
    pop hl
    ld h, d
    ld bc, $0000
    cp a
    cp $83
    sub $e0
    cp $e5
    ld b, h
    pop bc
    nop
    ld e, a
    nop
    xor b
    ret nz

    db $e3
    nop
    sub d
    add b
    ld a, [$86e1]
    inc bc
    db $fc
    db $e4
    nop
    cp a
    or [hl]
    ld l, d
    jp z, Jump_000_3dd1

    ld [$0000], a
    nop
    cp a
    and b
    and b
    and b
    call c, $dedd
    ld a, [$d8eb]
    rra
    reti


    and b
    and b
    jp nc, $fcd3

    rst $28
    add sp, -$1f
    ret nc

    db $ed
    cp a
    db $e4
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    ld a, [$a0ea]
    rst $38
    jp c, $d0db

    pop de
    call nc, $a0d5
    and b
    cp $fc
    db $eb
    ret nc

    pop de
    jp c, $d6db

    rst $10
    and b
    ld a, [hl]
    ret nc

    db $ec
    ld [$e6e5], a
    rst $20
    add sp, -$17
    ld a, [$58ea]
    ld l, l
    ldh [$82], a
    pop hl
    ld h, [hl]
    ldh [$9f], a
    sbc l
    rst $38
    push hl
    sbc a
    ld a, [hl]
    and $e0
    ret nc

    db $ec
    ld b, e
    xor $2f
    ldh [$82], a
    ld [c], a
    call nz, $a2e0
    sbc h
    ld b, [hl]
    rst $38
    dec bc
    inc bc
    add hl, bc
    inc bc
    dec bc
    ld b, [hl]
    ld b, [hl]
    xor [hl]
    rst $00
    sbc h
    sbc l
    sbc a
    ld a, [hl]
    db $e3
    inc de
    db $ed
    ld b, e
    xor $a0
    sub $dd
    rst $10
    inc b
    pop hl
    sbc a
    sbc h
    ld b, [hl]
    rst $38
    ldh [rSC], a
    dec c
    rst $38
    ld bc, $9800
    dec c
    ld [bc], a
    ld b, [hl]
    xor a
    ld b, [hl]
    ld h, e
    ld b, [hl]
    sbc [hl]
    db $ec
    pop bc
    inc de
    rst $28
    ld b, e
    rst $28
    ret c

    reti


    inc b
    pop hl
    rst $38
    sbc [hl]
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    ld [bc], a
    rlca
    rrca
    sbc b
    cp a

Jump_066_6ac1:
    sbc c
    sbc b
    sbc b
    sbc b
    ld c, $0c
    or h
    ldh [$9c], a
    or c
    sbc a
    ldh a, [$c0]
    inc de
    ld a, [c]
    add b
    call z, $dbda
    ld b, $e1
    sbc h
    rst $38
    ld b, [hl]
    xor a
    inc c
    ld c, $9b
    rrca
    rlca
    rlca
    ld b, $bc
    ldh [$98], a
    ld [bc], a
    or e
    ldh [$7f], a
    pop hl
    ld h, e
    pop hl
    add b
    rst $18
    nop
    ldh [$fc], a

Jump_066_6af0:
    add c
    ldh [rSCY], a
    pop hl
    rlca
    ld [bc], a
    ld b, c
    dec hl
    dec hl
    ld [bc], a
    rst $10
    rrca
    sbc b
    ld [$e13f], sp
    and c

Jump_066_6b01:
    add sp, -$1f
    ret c

    reti


    ld hl, sp-$80
    rst $18
    inc b
    pop bc
    ld bc, $aee1
    ld b, [hl]
    ld b, l
    ld a, [hl+]
    ld h, $5f
    jr nz, jr_066_6b34

    dec l
    ld [$3f9a], sp
    ld [c], a
    sbc [hl]
    db $ec
    and c
    db $db
    jp c, $80db

    sbc $d6
    rst $10
    inc d
    pop bc
    and c
    ld b, [hl]
    inc c
    set 0, b
    ret nz

    db $e4
    rrca
    ld [bc], a
    nop
    push hl
    sub e
    xor a
    add b
    rst $08

jr_066_6b34:
    add d
    and e
    ld e, [hl]
    ccf
    ld [c], a
    ld b, [hl]
    ld b, l
    ld a, $22
    ld b, b
    ldh [$08], a
    ld bc, $e6e6
    add b
    rst $18
    sub $d7
    add d
    and e
    ret nz

    db $e3

Jump_066_6b4b:
    ld b, [hl]
    ld a, $35
    inc sp
    ld b, d
    ld [$c0c1], sp
    ld b, b
    jp $d1d0


    add b
    call c, $a061
    db $fc
    inc b
    and h
    nop
    db $e3
    ld b, [hl]
    ld b, l
    ld a, [hl-]
    dec [hl]
    ld b, b
    ld [$4180], sp
    jp nz, $c300

    nop
    cp h
    rst $00
    add b
    inc b
    and h
    add b
    pop bc
    res 4, b
    ld b, d
    rrca
    dec [hl]
    dec [hl]
    ld b, d
    ld [bc], a
    ld [bc], a
    pop hl
    ret nz

    and b
    db $ec
    add c
    nop
    cp h
    db $fc
    dec b
    jp nz, $a782

    ld b, [hl]
    ld b, [hl]
    add hl, sp
    dec [hl]
    dec [hl]
    add hl, sp
    inc c
    ld a, b
    and b
    ld [bc], a
    ret nz

    ld b, [hl]
    sbc [hl]
    nop
    cp a
    dec a
    db $e3
    add [hl]
    add c
    add d
    ret nz

    ld d, $01
    db $e4
    dec [hl]
    ld a, $76
    db $e3
    sbc h
    nop
    and b
    db $e4
    pop bc
    add b
    db $dd
    jr nz, jr_066_6bc9

    add d
    add c
    push hl
    ld bc, $c0e0
    ld [c], a
    push af
    add b
    and c
    rst $10
    ld h, b
    jp $e8ae


    nop
    or b
    inc b
    add c
    add d
    and c
    xor [hl]
    cp $e1
    ld b, h
    inc a
    dec [hl]
    rlca

jr_066_6bc9:
    dec [hl]
    ld a, [hl-]
    ld b, l
    ld b, c
    db $e3
    ld l, d
    add b
    jp $80ae


    ret nc

    add [hl]
    ld h, d
    ld e, d
    jp $af80


    cp $e1
    ld b, b
    dec [hl]
    rst $38
    ldh [rLCDC], a
    ld b, c
    db $e3
    ld b, b
    db $ec
    ld h, e
    nop
    cp e
    ld b, a
    ld h, b
    add [hl]
    ld h, c
    jp $bf81


    pop hl
    ld b, [hl]
    add b
    pop hl
    rra
    ld [hl], $45
    ld b, [hl]
    db $eb
    db $ec
    add d
    add $00
    cp e
    add l
    add b
    db $fc
    ld [$4161], sp
    pop hl
    xor a
    ld b, l
    xor a
    xor [hl]
    ld b, l
    ld [hl], $3e
    pop bc
    ld [c], a
    ld b, [hl]
    db $ed
    xor $9c
    sbc a
    nop
    ld h, h
    nop
    cp c
    ld hl, sp+$23
    ld h, b
    add d
    jp nz, Jump_066_61c5

    xor a
    ld b, l
    ld b, a
    ld d, d
    xor a
    ld a, [bc]
    ld bc, $40e1
    cp b
    and d
    sbc [hl]
    db $f4
    ld b, b
    ld h, [hl]
    and c
    nop
    cp c
    adc c
    ld b, c
    cp $9e
    ld b, d
    and c
    sub c
    sub b
    sub c
    ld b, [hl]
    ld d, c
    ld e, [hl]
    dec bc
    ld e, b
    ld b, h
    add c
    ld [c], a
    ld b, l
    add e
    ld h, h
    ld l, d
    ld b, d
    add b
    reti


    adc c
    ld b, b
    cp $86
    ld b, d
    and b
    sbc [hl]
    sub b
    sub b
    sub b
    ld b, [hl]
    ld b, h
    ld a, e
    ld c, l
    ld h, c
    jp nz, Jump_000_3cc0

    ld b, h
    ld b, a
    ld d, l
    ld b, d
    jp $82f8


    ld b, e
    add b
    ld a, [hl]
    ld [$9f40], sp
    sbc h
    sub b
    or b
    sub b
    ld l, a
    ld b, l
    ld b, a
    ld h, b
    ld d, d
    ld b, c
    ld [c], a
    ld e, [hl]
    ld d, [hl]
    rst $38
    ret nz

    ret c

    inc b
    add e
    nop
    ld e, a
    inc b
    add d
    sbc [hl]
    sub c
    add b
    ldh [rLYC], a
    ld d, e
    ld a, l
    ld d, e
    jp nz, Jump_000_3cc1

    ld b, h
    ld c, l
    ld e, b
    ld b, h
    or $40
    db $e4
    add d
    and c
    nop
    ld e, a
    ld [$2286], a
    ret nz

    pop hl
    sub c
    ld b, l
    scf
    ei
    dec a
    jr c, jr_066_6ca1

    ret nz

    ld [hl], $42

jr_066_6ca1:
    ld e, [hl]
    ld h, c
    ld d, l
    ldh [$82], a
    ld b, [hl]
    nop
    cp h
    and e
    jr nz, @-$78

    ld hl, $6205
    add hl, sp
    dec [hl]
    xor h
    ld e, $c4
    and b
    xor h
    ld b, b
    ld b, a
    ld h, b
    ret nz

    ldh [$82], a
    ld b, l
    nop
    cp e
    call c, $e321
    add [hl]
    ld h, h
    ld a, $35
    xor l
    add h
    and b
    xor l
    ld b, h
    inc bc
    ld c, l
    or h
    nop
    ld [c], a
    ld a, [hl]
    push bc
    add b
    db $dd
    inc b
    ld h, c
    add $22
    add a
    add b
    dec de
    dec [hl]
    or c
    pop bc
    pop bc
    ld h, c
    ld e, d
    push af
    add d
    nop
    cp a
    add [hl]
    ld b, $38
    ld b, e
    add d
    ret nz

    pop hl
    inc b
    and c
    ld d, d
    ld h, c
    ld d, l
    ld [hl], $a2
    nop
    cp a
    ld [hl], b
    add [hl]
    ld b, $46
    ld [hl+], a
    rst $00
    ld h, b
    call nz, Call_066_4281
    ld b, l
    ld e, e
    or [hl]
    add d
    ld b, b
    ld b, d
    ld hl, $bf00
    add [hl]
    inc bc
    ld b, e
    add d
    dec b
    and c
    add e
    add b
    add hl, sp
    ld [hl], a
    add h
    ld [hl], b
    ld bc, $0082
    cp a
    nop
    jp Jump_066_6206


    ld b, l
    ld [hl], $3b
    ld b, e
    add b
    rlca
    ld a, [hl-]
    ld b, l
    xor a
    ld [hl], l
    add d
    ld [bc], a
    ld hl, $c100
    nop
    cp a
    inc b
    ld h, [hl]
    dec sp
    ld b, l
    ld b, e
    ld a, l
    pop hl
    jr c, @+$3f

    scf
    cp l
    pop hl
    pop bc
    ld bc, $0038
    pop hl
    nop
    cp a
    inc b
    inc h
    xor [hl]
    ld b, [hl]
    or e
    ld b, d
    ld h, d
    inc a
    ld [c], a
    nop
    add b
    ld b, e
    add d
    ld b, c
    nop
    cp a
    inc b
    inc h
    adc l
    and b
    cp e
    push bc
    cp a
    ld b, b
    add d
    nop
    nop
    ld b, c
    nop
    nop
    cp a
    inc b
    daa
    ld c, e
    ld b, d
    ld bc, $ff61
    ld b, d
    ccf
    and d
    nop
    cp a
    nop

Jump_066_6d6c:
    nop
    and e
    ld a, [hl]
    add c
    ld b, d
    ld bc, $00c1
    ccf
    db $e3
    cp l
    ld h, b
    ld a, [hl]
    adc b
    nop
    ld e, a
    nop
    ld a, [hl]
    ld h, e
    ld bc, $fc44
    ld h, c
    rst $38
    add e
    nop
    ld e, a
    nop
    ld b, [hl]
    ld b, c
    ld [hl+], a
    ld bc, $0043
    ccf
    ld b, [hl]
    rst $38
    jr nz, jr_066_6d93

jr_066_6d93:
    ld e, a
    nop
    ld b, h
    pop bc
    inc b
    ld b, c
    ld b, d
    ccf
    ld hl, $c1b2
    nop
    nop
    jr nz, jr_066_6da2

jr_066_6da2:
    ld e, a
    nop
    ld b, h
    ld a, l
    ld b, d
    ld b, c
    ld b, e
    ret nz

    ld hl, $03c0
    nop
    cp a
    nop
    add b
    ld bc, $c37e
    rst $38
    inc bc
    add d
    nop
    ld b, c
    push bc
    nop
    db $e4
    nop
    ld e, a
    ld a, [hl]
    ret


    nop
    cp e
    add d
    ld b, c
    push hl
    nop
    cp a
    or a
    and d
    inc e
    pop bc
    db $fc
    add d
    call z, $fba0
    ld h, c
    nop
    ld b, c
    and $00
    cp [hl]
    dec a
    add h
    db $fc
    ld b, e
    ld c, h
    ld [bc], a
    cp e
    ld h, c
    ld b, c
    and $00
    add d
    nop
    add b
    rst $18
    sbc d
    ld hl, $64fc
    ld b, b
    ld [c], a
    add d
    call nz, $0041
    nop
    cp a
    cp l
    ld b, c
    nop
    ld a, [hl]
    and e
    rst $38
    and e
    nop
    jr nz, @+$03

    ld hl, $44c0
    nop
    cp a
    dec a
    ld hl, $c100
    inc c
    db $fc
    nop
    rst $38
    jp Jump_000_3f45


    jp $8042


    pop bc
    nop
    cp a
    dec a
    inc h
    nop
    jr jr_066_6e78

    ld a, l
    add [hl]
    ld a, b
    and d
    add b
    jp $bf00


    nop
    and [hl]
    ld bc, $fcc3
    ld [$0000], a
    cp a
    nop
    xor b
    ret nz

    add l
    cp d
    jp hl


    ld a, [hl]
    jr nz, jr_066_6e30

jr_066_6e30:
    cp a
    nop
    and h
    ld a, [hl]
    ld h, e
    ld b, $3d
    ld h, b
    ld b, c
    ld b, e
    db $fd
    ldh [$c0], a
    add e
    nop
    cp a
    nop
    and a
    add c
    add c
    inc d
    ld bc, $bd80
    ld b, b
    dec sp
    db $fd
    ldh [$36], a
    cp e
    ld b, b
    nop
    cp a
    nop
    xor b
    ld e, [hl]
    nop
    add h
    ld b, h
    inc a
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    rst $38
    ld h, d
    ld hl, sp+$00
    cp a
    nop
    and a
    nop
    add h
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
    ld bc, $0083
    cp a
    nop
    and d
    nop

jr_066_6e78:
    nop
    add c
    nop
    and d
    ret nz

    ldh [rSTAT], a
    ld h, c
    ret nz

    ldh [rP1], a
    ld h, $00
    cp a
    nop
    add $76
    ld bc, $6b81
    ld [hl], c
    rst $38
    ldh [$6d], a
    inc a
    ld b, h
    ret nz

    ld b, d
    add b
    nop
    cp a
    nop
    and e
    nop
    add [hl]
    ret nz

    rst $00
    ret nz

    add d
    nop
    cp a
    nop
    xor b
    sbc a
    scf
    sbc l
    sbc l
    sbc h
    ld b, b
    rst $00
    sbc h
    sbc l
    ld bc, $00a1
    cp a
    stop
    and d
    ld a, [hl]
    ld h, h
    cp l
    pop hl
    cp $e5
    sbc a
    db $ec
    ld b, c
    nop
    cp a
    nop
    and e
    nop
    ld a, [hl]
    add h
    rst $38
    ld [$c104], a
    nop
    cp a
    cp l
    ld b, e
    ld a, [hl]
    rst $20
    db $fc
    rst $20
    inc b
    pop bc
    nop
    nop
    or e
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

Jump_066_6ee1:
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
    ld h, $04
    ld [bc], a
    ld bc, $061a
    ld [bc], a
    ld [bc], a
    daa
    rlca
    ld [bc], a
    inc bc
    dec de
    add hl, bc
    ld [bc], a
    inc b
    ld h, $0b
    ld [bc], a
    dec b
    dec de
    dec c
    ld [bc], a
    ld b, $25
    rrca
    ld [bc], a
    rlca
    jr jr_066_6f24

    ld [bc], a
    ld [$121a], sp
    ld [bc], a
    add hl, bc
    inc e
    ld [de], a
    ld [bc], a
    ld a, [bc]
    inc h
    ld [de], a
    ld [bc], a
    dec bc
    rla
    inc de
    ld [bc], a
    inc c

jr_066_6f24:
    add hl, de
    inc de
    ld [bc], a
    dec c
    dec de
    inc de
    ld [bc], a
    ld c, $18
    inc d
    ld [bc], a
    rrca
    ld a, [de]
    inc d
    ld [bc], a
    db $10
    rla
    dec d
    ld [bc], a
    ld de, $151b
    ld [bc], a
    ld [de], a
    inc hl
    ld d, $02
    inc de
    inc h
    ld a, [de]
    ld [bc], a
    inc d
    add hl, de
    inc e
    ld [bc], a
    dec d
    dec e
    inc e
    ld [bc], a
    ld d, $23
    ld e, $02
    rla
    dec h
    ld e, $02
    jr @+$24

    rra
    ld [bc], a
    add hl, de
    inc h
    rra
    ld [bc], a
    ld a, [de]
    ld hl, $0220
    dec de
    inc hl
    jr nz, jr_066_6f65

    inc e
    dec h

jr_066_6f65:
    jr nz, jr_066_6f69

    dec e
    dec d

jr_066_6f69:
    ld hl, $1e02
    jr nz, jr_066_6f8f

    ld [bc], a
    rra
    ld [hl+], a
    ld hl, $2002
    inc h
    ld hl, $2102
    inc hl
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    dec h
    ld [hl+], a
    ld [bc], a
    inc hl
    rla
    inc h
    ld [bc], a
    inc h
    dec h
    dec h
    ld [bc], a
    dec h
    ld a, [de]
    ld h, $02
    ld h, $25
    add hl, hl
    ld [bc], a

jr_066_6f8f:
    daa
    ld a, [de]
    ld a, [hl+]
    ld [bc], a
    jr z, jr_066_6fb9

    inc l
    ld [bc], a
    add hl, hl
    add hl, de
    ld l, $02
    ld a, [hl+]
    inc hl
    cpl
    ld [bc], a
    dec hl
    ld a, [de]
    ld [hl-], a
    ld [bc], a
    inc l
    inc h
    ld [hl-], a
    ld [bc], a
    dec l
    add hl, de
    ld [hl], $02
    ld l, $25
    ld [hl], $02
    cpl
    add hl, de
    ld a, [hl-]
    ld [bc], a
    jr nc, jr_066_6fda

    ld a, [hl-]
    rst $38
    rst $38
    rst $38

jr_066_6fb9:
    pop bc
    ld l, a
    ld a, d
    ld [hl], l
    adc [hl]
    ld a, h
    or b
    ld a, h
    sbc a
    ld l, $0e
    ld c, $0e
    ld c, l
    rst $38
    add sp, -$10
    ld [$666e], a
    db $e4
    pop hl
    dec c
    dec c
    ldh [$e9], a
    call c, Call_000_2ee2
    ld c, [hl]
    db $dd
    rst $20
    reti


jr_066_6fda:
    ld l, $db
    ldh [$d9], a
    and $2e
    ld c, $f0
    ld [$2e2e], a
    ret nz

    and h
    db $e3
    cp l
    jp hl


    or c
    ldh [$8c], a
    ldh [$d0], a
    and $c1
    ldh [$4e], a
    ld c, [hl]
    jp nz, $e7c0

    ld l, $f0
    ld [$e1d7], a
    ld h, d
    pop hl
    ld a, l
    pop hl
    dec c
    dec l
    ret nz

    ld e, c
    ldh [$fc], a
    ldh [$c0], a
    pop hl

jr_066_7009:
    xor c
    pop hl
    ret nc

    push hl
    sbc h
    ldh [$0e], a
    ld c, $e3
    ld c, [hl]
    ld c, $f0
    ld a, [c]
    sub a
    ld [c], a
    add b
    db $e3
    dec c
    ld l, l
    ld l, e
    rlca
    dec hl
    ld a, [bc]
    ld a, [hl+]
    cp [hl]
    ldh [$c0], a
    ld a, [c]
    jr jr_066_7009

    ld hl, sp-$40
    ldh a, [$ed]
    cp $4a
    rst $20
    ld l, l
    ld l, e
    dec c
    ld l, e
    ld a, [bc]
    ld a, [hl+]
    dec bc
    ld bc, $7d0b
    pop hl
    scf
    db $e4
    ret nc

    db $ec
    cp b
    pop bc
    ldh a, [$ed]
    inc bc
    ld [c], a
    and c
    pop bc
    ld e, $c1
    ldh [$0d], a
    dec bc
    dec hl
    dec bc
    db $fd
    ldh [$39], a
    pop hl
    xor l
    jp nz, $d060

    db $ed
    sub $e1
    ldh a, [$ea]
    add a
    ret nz

    db $10
    pop hl
    ld l, l
    dec c
    rst $38
    pop hl
    inc de
    ld c, l
    dec c
    jp nz, $c0e0

    ldh [rWX], a
    ret nz

    and $d0
    xor $96
    pop hl
    ld hl, sp+$30
    jp hl


    rst $00
    ldh [$86], a
    pop hl
    dec c
    dec c
    ld l, e
    ld l, e
    ld l, e
    rst $38
    dec l
    dec c
    ld c, l
    ld l, e
    ld c, e
    ld l, e
    ld c, e
    ld c, e
    rlca
    ld l, e
    dec c
    ld l, l
    dec l
    rst $00
    ret nc

    db $eb
    dec h
    call nz, $c7f0
    adc b
    ldh [$c2], a
    add $e0
    ld l, e
    ld b, [hl]
    ldh [$7e], a
    ldh [$c8], a
    ret nz

    cp $c0
    dec c
    dec c
    ld b, c
    ld l, l
    push af
    xor h
    adc $a3
    sub h
    ret z

    ldh a, [$e5]
    adc a
    ret nz

    dec bc
    ld b, [hl]
    ld [c], a
    nop
    rlca
    ldh [$c5], a
    db $e3
    cp c
    ld [c], a
    sub a
    xor c
    push hl
    and e
    ld h, h
    ret nz

    sbc h
    and b
    ld hl, sp-$5f
    db $e4
    adc d
    db $e4
    adc $c0
    ld l, l
    db $fd
    pop hl
    add b
    pop hl
    ld a, [bc]
    ld a, [hl+]
    dec hl
    inc b
    ret


    ret nz

    add d
    ldh [rOCPD], a
    dec a
    ret nz

    ld b, e
    ldh [rSTAT], a
    ret nz

    ret nc

    db $eb
    di
    and l
    ret z

    ld sp, hl
    and l
    db $e3
    and h
    set 0, c
    ld l, e
    jp nz, $83e2

    ldh [rWX], a
    dec l
    inc bc
    dec l
    dec l
    cp d
    jp $e041


    ret nc

    db $ed
    inc e
    and c
    sbc [hl]
    ret nz

    ld d, l
    and b
    ld a, h
    push af
    add e
    ldh a, [$e4]
    dec bc
    dec c
    dec hl
    ld a, [bc]
    ld a, [bc]
    adc [hl]
    ret nz

    dec bc
    ld c, e
    ld c, e
    ret nz

    ldh [$0d], a
    pop bc
    db $e3
    cp d
    ldh [$d0], a
    xor $87
    pop hl
    ld c, b
    ld h, c
    pop bc
    ldh a, [$ec]
    ld c, h
    ret nz

    ld a, [bc]
    ld b, h
    ldh [$c2], a
    ldh [$2b], a
    pop bc
    ldh [rP1], a
    push bc
    ret nz

    ld a, l
    pop hl
    ld a, b
    and d
    ret nc

    db $ec
    adc a
    add c
    sub [hl]
    and d
    add b
    db $e3
    db $e3
    add d
    ld a, [hl]
    sbc d
    ret nz

    ld l, e
    dec c
    dec hl
    ld c, d
    ld a, [bc]
    dec hl
    ret nz

    pop hl
    ld b, $c1
    pop hl
    dec c
    ld l, e
    adc d
    and e
    sub a
    ld [c], a
    ret nc

    pop af
    ld e, l
    add d
    xor c
    add c
    db $ec
    ret nz

    db $e4
    ld c, e
    ret nz

    ld a, [bc]
    ld c, d
    db $d3
    and b
    dec c
    ld c, e
    ld l, e
    jr nz, jr_066_719e

    pop hl
    ret nz

    pop hl
    ld hl, $c0a1
    push hl
    ret nc

    add sp, $6d
    rst $38
    add sp, -$4c
    add c
    ld h, b
    ldh a, [$e2]
    ret nz

    ld [c], a
    add c
    pop hl

jr_066_7171:
    push bc
    and b
    inc bc
    ldh [$2d], a
    dec l
    add hl, bc
    ret nz

    add e
    ld c, $0e
    ldh [$e7], a
    ret nc

    add sp, -$32
    ld [c], a
    jp hl


    and b
    jp Jump_000_2ee1


    rlca
    ld c, [hl]
    ld c, $4e

jr_066_718b:
    ldh a, [$e3]
    res 4, b
    ld b, c
    ldh [$c3], a
    ret nz

    dec b
    pop bc
    rrca
    dec c
    dec l
    ld l, e
    dec l
    ldh [$ec], a
    ret nc

    rst $20

jr_066_719e:
    xor c
    ldh [$c0], a
    push hl
    and e
    ld l, [hl]
    ld l, [hl]
    cp a
    ldh [$99], a
    ldh [rPCM34], a
    add b
    dec l
    pop de
    add b
    ld c, e
    jr jr_066_7171

    ldh [$85], a
    ret nz

    ld b, l
    and b
    ld l, e
    ld l, l
    ret nz

    ld [c], a
    ldh [$e5], a
    ret nc

    db $ed
    sub [hl]
    add b
    ld [c], a
    ld l, $6e
    ld [hl], $85
    ld l, l
    cp l
    pop hl
    ld c, e
    and c
    ld l, e
    jr nz, jr_066_718b

    ldh [rWY], a
    jp $e161


    ldh [$e7], a
    ret nc

    db $ed
    dec c
    dec bc
    pop hl
    or $67
    ld [$e1d2], sp
    sub e
    ld h, b
    adc d
    add c
    dec hl
    add l
    and b
    add c
    add c
    ld b, c
    db $e4
    ret nc

    db $f4
    ld a, b
    dec a
    ld [c], a
    ret nz

    add sp, -$53
    ret nz

    ld c, l
    dec l
    dec l
    ld c, l
    adc d
    add b
    nop
    ld b, b
    pop hl
    ld c, [hl]
    and c
    ret nc

    ei

jr_066_71ff:
    db $e3
    ret nz

    ldh a, [$eb]
    sbc d
    add b
    ret nc

    and c
    cp l
    pop hl
    ld [de], a
    call Call_000_2d60
    add c
    pop hl
    ret nc

    rst $30
    ld l, l
    ldh a, [$ef]
    ld e, d
    add c
    ret nz

    pop hl
    cpl
    dec l
    dec c
    ld c, e
    ld c, e
    dec a
    pop hl
    ld c, l
    ld b, b
    jp hl


    ret nc

    rst $28
    nop
    inc b
    push bc
    ldh a, [$e6]
    ld sp, $7fc1
    ld [c], a
    ret nz

    ldh [$c2], a
    add c
    nop
    ld [$ecd0], a
    jr nz, jr_066_71ff

    and e
    ret


    and b
    ld a, [hl]
    add b
    jp nz, $a0a1

    ld b, b
    dec l
    ld d, c
    ret nz

    ld d, [hl]
    add b
    db $10

jr_066_7246:
    jp z, $8fa0

    ld h, b
    add hl, bc
    ld h, b
    inc bc
    and b
    ld c, l
    ldh [$e6], a
    ret nc

    db $ed
    rlca
    jp nz, $c730

    and b
    and [hl]
    ld h, b
    ret z

    ldh [$58], a
    add d
    ld l, l
    ld l, l
    db $fc
    and b
    adc e
    and c
    nop
    call Call_066_4140
    add b
    call Call_000_0940
    ld b, d
    ldh [$e4], a
    ret nc

    db $ed
    rlca
    call nz, $a27d
    db $10
    or e
    and c
    ld d, d
    jp nz, $c03f

    adc d
    ld h, b
    dec c
    add b
    add b
    cp a
    ld [c], a
    ret z

    jr nz, jr_066_72e6

    ldh [$e6], a
    ret nc

    db $ed
    dec sp
    and e
    inc a
    add b
    or l
    ldh [$2e], a
    ld c, [hl]
    or d
    ret nz

    jr jr_066_72d7

    pop hl
    rst $38
    and b
    ld c, a
    ld b, b
    ld a, [bc]
    ld a, [bc]
    ret nz

    ld [c], a
    rst $00
    ld b, b
    ret


    ld hl, $e080
    db $e4
    ret nc

    db $ed
    ret nz

    db $e4
    db $10
    pop hl
    or h
    nop
    jp nz, $d2e2

    ld b, c
    dec l
    rst $18
    ld c, e
    dec c
    ld c, d
    ld c, d
    ld c, d
    adc [hl]
    ld b, b
    dec bc
    dec bc
    jr nz, jr_066_7246

    ld b, b
    rst $38
    add b
    ldh [$e4], a
    ret nc

    xor $bb
    add [hl]
    ld c, $f5
    ldh [$32], a
    jp nz, $bd10

    pop bc
    ret nz

    pop hl
    ld a, l
    add c

jr_066_72d4:
    db $fd
    add b
    dec c

jr_066_72d7:
    ret nz

    ld h, c
    dec a
    ret nz

    ldh [$e3], a
    add b
    ret nc

    db $ed
    ld c, d
    pop hl
    ld c, e
    add d
    add b
    pop hl

jr_066_72e6:
    ldh a, [$e2]
    db $fd
    jp nz, $a23f

    ld l, e
    ld bc, $0f4a
    ld b, b
    pop bc
    ld h, c
    cp $20
    rst $28
    and c
    ret nc

    pop af
    ld a, e
    ld h, e
    ld l, $47
    ld h, b
    ld d, [hl]
    add b
    ld a, [de]
    ld h, c
    ccf
    and b
    ld c, [hl]
    jr nz, jr_066_72d4

    ld hl, $2b0b
    ld hl, sp+$23
    inc b

jr_066_730d:
    ld [$d024], sp
    db $ed
    ld l, [hl]
    ccf
    nop
    pop de
    inc h
    ld a, [de]
    jr nz, jr_066_730d

    and h
    ret c

    ld b, c
    nop
    cp [hl]
    add e
    ccf
    and c
    ld sp, hl
    ld hl, $e17f
    db $e4
    ld [hl+], a
    ret nc

    ld [$610b], a
    jr c, jr_066_736d

    ldh [rTAC], a
    ld b, h
    jp c, $f400

    and e
    cp [hl]
    add d
    ld a, l
    add e
    dec hl
    ld l, e
    ld l, e
    nop
    ld a, a
    ldh [$bf], a

jr_066_733f:
    jr nz, jr_066_733f

    ld b, b
    ld b, $20
    sbc h
    ld h, b
    ret nc

    jp hl


    nop
    ld h, $07
    ld b, b
    ld h, b
    inc l
    ld hl, $64fb
    ld a, [hl]
    add d
    ld a, l
    add b
    add e
    ld b, b
    ld a, [bc]
    ld c, d
    cp $a0
    nop
    ld a, [hl]
    and b
    ld b, d
    nop
    cp d
    and c
    ret nc

    db $ec
    ret nz

    ld a, [bc]
    rst $18
    ld b, b
    inc [hl]
    push bc
    ld a, a
    db $e4
    nop

jr_066_736d:
    ld a, e
    ld b, b
    db $fd
    and b
    ld b, b
    ret nz

    inc b
    ld [hl+], a
    ret nz

    jp hl


    ret nc

    db $e4
    add b
    ld a, [bc]
    cp h
    nop
    ld b, b
    or h
    and h
    ccf
    add c
    ret nz

    db $e3
    ld a, [$7a42]
    ld h, c
    cp a
    jp nz, $d02d

    db $ed
    ret nz

    ld b, b
    dec c
    xor a
    ld b, l
    sbc c
    ld bc, $2014
    ld a, l
    and b
    rst $38
    add b
    dec bc
    ld l, e
    nop
    db $fd
    ld h, b
    ld b, b
    ld [c], a
    ret nz

    db $eb
    ld b, b
    ld bc, $ecc0
    db $f4
    and h
    db $db
    ld [bc], a
    push de
    nop
    nop
    add h
    pop bc
    jp nz, $c100

    nop
    or b
    ld b, b
    ret nz

    ld [c], a
    adc a
    ld [c], a
    ret nz

    add sp, -$10
    db $eb
    nop
    ccf
    jp nz, $23ff

    ld b, c
    add b
    inc b
    ld b, c
    ret nz

    pop hl
    ccf
    jr nz, jr_066_7401

    ld h, b
    ld a, h
    ld b, b
    inc c
    jp $d000


    db $ed
    ld c, l
    ld l, $ee
    and e
    add h
    pop bc
    cp b
    and h
    jp nz, Jump_000_0820

    scf
    ret nz

    ld b, [hl]
    ld h, c
    add c
    ld [c], a
    dec bc
    ld a, [$c141]
    ld [c], a
    db $ed
    ld b, b
    inc c
    call nz, $d000
    jp hl


    jr nc, jr_066_7400

    ld e, h
    ld bc, $a084
    rlca
    ld h, b
    push bc
    and d
    jp $be80


    ldh [rP1], a

jr_066_7400:
    add c

jr_066_7401:
    and c
    ld a, h
    jr nz, @+$3e

    nop
    ret nc

    xor $30
    ld c, $86
    ld h, d
    rst $00
    ld b, d
    pop bc
    db $e3
    nop
    ld [hl], a
    ld h, b
    ld [hl], l
    ld b, b
    ld b, d
    pop hl
    xor b
    jp $edd0


    jr nc, jr_066_7429

    adc b
    and b
    ld b, a
    ld h, c
    inc b
    ld b, $40
    add l
    pop bc
    ld c, e
    pop bc
    pop hl

jr_066_7429:
    or [hl]
    ld b, d
    ld e, e
    ld b, d
    ld h, $41
    ret nc

    db $ec
    nop
    jr nc, @+$0f

    sub b
    ld hl, $c192
    adc c
    and c
    ret nz

    ldh [rSCY], a
    ld b, c
    dec [hl]
    ld b, c
    call c, $0003
    and l
    ld bc, $ecd0
    jr nc, jr_066_7457

    ret nz

    db $e3
    add c
    push hl
    ld c, d
    and b
    ld [hl], b
    ld bc, $c066
    nop
    add sp, $43
    ld b, b

jr_066_7457:
    ldh [$d0], a

jr_066_7459:
    db $ec
    jr nc, jr_066_7468

    ld b, [hl]
    jp $e541


    add h
    ld b, b
    ld [hl-], a
    nop
    nop
    ld e, a
    ldh [$bf], a

jr_066_7468:
    ld b, d
    xor d
    add c
    ret nc

    db $ed
    jr nc, @+$0b

    dec c
    ld hl, $8214
    add l

Call_066_7474:
    call nz, Call_066_4000
    jr nz, jr_066_7459

    ld [$473e], a
    ldh a, [$e7]
    jr nc, jr_066_7486

    ret nz

    db $e4
    ld b, $c0
    inc de
    add b

jr_066_7486:
    ld h, b
    ld a, [bc]
    add c
    rlca
    jp nz, Jump_066_4330

    ld d, b
    inc bc
    pop de
    ld b, b
    ld c, $4e
    ret nc

    and $00
    ldh a, [$e4]
    adc a
    ld h, $0b
    ld b, c
    sub [hl]
    ld h, e
    ld a, [hl]
    pop hl
    adc d
    add d
    res 4, c
    ret nz

    add sp, $01
    ld l, [hl]
    ld [$5f41], sp
    ld h, $f0
    db $ed
    ld b, b
    db $e4
    adc $01

jr_066_74b2:
    rst $08
    and d
    ld b, h
    pop hl
    nop
    or b
    dec h
    rst $28
    nop
    add hl, bc
    ld b, h
    rra
    ld h, $f0
    add sp, $30
    ld [bc], a
    ld [$d1a5], sp
    add b
    nop
    add l
    and b
    ld c, a
    and h
    sub b
    ld [hl+], a
    ldh [$e3], a
    ld b, b
    ld [$edf0], sp
    ei
    inc bc
    inc a
    ld [c], a
    nop
    adc l
    add l
    ld d, c
    add e
    ld c, h
    and d
    ld [hl-], a
    jr nz, jr_066_74b2

    pop af
    jr nc, jr_066_74f2

    ret nz

    db $e4
    rrca
    ld hl, $4c00
    add c
    ld d, c
    ld h, c
    ld c, c
    add b
    ld [hl], h
    ld [bc], a

jr_066_74f2:
    ld d, b
    dec bc
    ret nc

    db $e4
    jr nc, jr_066_7505

    ret nz

    rst $20
    nop
    ld a, [hl]
    db $e4
    add h

Call_066_74fe:
    db $e3
    ret nz

    rst $28
    ret nc

    db $e4
    jr nc, @+$0f

jr_066_7505:
    ld [$4984], sp
    and d
    ld a, [hl]
    ld [c], a
    nop
    add a
    and d
    ld c, c
    and [hl]
    ret nc

    xor $b6
    ld b, l
    jr nc, jr_066_751c

    ld [hl+], a
    and e
    call $cc64
    ld h, b

jr_066_751c:
    ret nz

    dec l
    jp $a4c8


    inc l
    ld h, c
    jp nz, $f0a7

    db $eb
    jr nc, @+$0b

    ld c, l
    dec l
    nop
    adc h
    ld h, c
    pop bc
    db $e4
    ld [hl], l
    ld hl, $2071
    ldh [$e9], a
    ldh a, [$f0]
    jr nc, jr_066_7545

    cp a
    ld [c], a
    nop
    add d
    db $e4
    ldh a, [$e1]
    ld h, b
    nop
    ldh [$ea], a

jr_066_7545:
    ldh a, [$f0]
    jr nc, jr_066_7554

    ret c

    ld bc, $c309
    ld [bc], a
    dec h
    ld bc, $e04e
    xor $f0

jr_066_7554:
    push af
    jr nc, @+$07

    ld d, b
    and [hl]
    cp [hl]
    ld b, b
    ldh a, [$e2]
    nop
    ldh [$ed], a
    ret nc

    db $ec
    jr nc, jr_066_7572

    ret nz

    and $f0
    db $e4
    ldh [$ed], a
    ret nc

    db $ed
    jr nc, jr_066_757a

    nop
    ret nz

    and $f0

jr_066_7572:
    push hl
    ldh [$ed], a
    ret nc

    db $ec
    nop
    nop
    nop

jr_066_757a:
    sbc a
    ret c

    push de
    push de
    ret c

    and b
    rst $38
    add sp, -$10
    ld [$3fd3], a
    ret nc

    db $d3
    and b
    and b
    add sp, -$17
    ldh [$e7], a
    db $f4
    db $e3
    cp h
    jp hl


    ld [c], a
    set 4, h
    jp nc, $d4d6

    sub $bd
    ld [c], a
    sbc $39
    rst $18
    jp nz, $f0e2

    ld [$d4d7], a
    rst $10
    and h
    ld [c], a
    db $e4
    ld [c], a
    ldh a, [$9a]
    db $e4
    ret c

    ldh [$e9], a
    ld [c], a
    ret nc

    db $e4
    sub $d2
    ret nc

    jp nc, $d49b

    sub $99
    ldh [$e0], a
    pop hl
    adc a
    ld [c], a
    ldh a, [$ea]
    jp c, $d9cf

    jp c, $eaa0

    ld h, d
    ldh [$e4], a
    pop hl
    sbc a
    and d
    adc a
    sbc l
    sbc l
    sbc l
    sbc a
    ret c

    ld [c], a
    jp hl


    pop hl
    ret nc

    push hl
    rst $10
    db $fd
    call nc, $e0bf
    rst $10
    jp nc, $a0d8

    ld [c], a
    db $e3
    adc $f0
    rst $28
    call c, $dcdb
    inc h
    ld [c], a
    db $e4
    ldh [$9f], a
    sbc h
    ld a, a
    ld b, [hl]
    ld b, l
    ld c, b
    ld c, b
    sbc h
    sbc l
    sbc a
    ret c

    ldh [$ac], a
    jp hl


    ld [c], a
    ret nc

    db $e4
    db $dd
    reti


    ld e, e
    ldh [$dd], a
    cpl
    ld [c], a
    db $eb
    ld [c], a
    ld c, a
    ldh [$d2], a
    ldh a, [$eb]
    and $c6
    pop bc
    ldh [$ae], a
    ld b, h
    ld d, h
    adc a
    ld d, h
    ld b, c
    ld b, l
    sbc h
    ld a, l
    ldh [$d0], a
    call nz, $e2d0
    ret nc

    or [hl]
    cp [hl]
    ldh [$dd], a
    pop de
    ret c

    pop bc
    db $ec
    db $ed
    ld c, a
    ldh [$d3], a
    ld hl, sp-$10
    db $eb
    push bc
    ld [c], a
    ld c, b
    ldh [$9d], a
    or [hl]
    ld b, [hl]
    xor [hl]
    xor a
    ld a, a
    ld a, [hl+]
    inc l
    inc l
    jr nz, @+$2c

    ld b, l
    sbc [hl]
    ldh a, [$c5]
    ld [c], a
    ret nc

    db $e3
    call nc, $e040
    cp $c0
    ret c

    jp $dca0


    rst $10
    cp b
    ldh a, [$e8]
    ld c, $e0
    db $10
    ldh [$9f], a
    or [hl]
    sub b
    rst $38
    pop hl
    sub c
    scf
    xor a
    ld b, d
    jr nz, @+$01

    ldh [$30], a
    ld b, h
    ret nz

    pop hl
    call nc, $9ac2
    ret nc

    db $e3
    reti


    ld b, b
    ldh [$d4], a
    rst $10
    rst $28
    pop bc
    ld a, [hl-]
    jp nz, $f4da

    ldh a, [$e7]
    rst $00
    pop hl
    or [hl]
    add [hl]
    ldh [$90], a
    sub c
    ld b, [hl]
    ld b, [hl]
    rst $38
    ld b, [hl]
    sub c
    sub b
    sub c
    ld b, l
    dec hl
    dec hl
    ld a, [hl+]
    adc a
    cpl
    ld a, [hl+]
    sbc h
    sbc a
    xor a
    ret nz

    call nc, $d0c2
    db $e3
    db $db
    ld b, l
    db $db
    call $dae0
    ret c

    call nz, $c1ce
    ldh a, [$e6]
    sbc [hl]
    adc e
    ldh [$fe], a
    add $e0
    ld b, [hl]
    ld b, [hl]
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, a
    sub c
    sub b
    xor [hl]
    ld b, [hl]
    xor [hl]
    ld b, l
    xor [hl]
    ld bc, $08e8
    ld c, a
    db $e3
    call $9ae2
    pop bc
    ret c

    cp b
    and l
    ldh a, [$e4]
    adc a

jr_066_76c4:
    ret nz

    add $e1
    cp $ff
    ldh [$8f], a
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    add c
    ld b, [hl]
    sub b
    jp $aeaf


    cp $e0
    ld [bc], a
    pop hl
    sub a
    and l
    adc b
    xor b
    db $e4
    push hl
    cp c
    ret c

    ld hl, sp-$60
    db $76
    xor b
    sbc a
    sbc l
    sbc h
    adc c
    ldh [$8f], a
    rst $38
    ld b, h
    ld c, c
    ld d, h
    ld b, l
    scf
    scf
    ld b, l
    xor a
    rst $30
    add e
    add h
    ld b, [hl]
    cp $c0
    ld b, [hl]
    xor a
    sub c
    and c
    ld l, h
    ret nc

    xor $88
    ld [c], a
    and $e7
    db $76
    ret nz

    pop de
    ret nc

    ld sp, hl
    and b
    ld a, [hl]
    ld a, b
    db $e3
    sbc a
    or [hl]
    sub c
    ld a, c
    ld a, [hl]
    ld b, [hl]
    jp nz, $ffe2

    jr c, jr_066_76c4

    inc a
    ld b, h
    add e
    add [hl]
    add l
    sub c
    ld h, $ba
    jp nz, $9fb6

    ret nc

    xor $1c
    and h
    jp c, $a3b7

    inc c
    and h
    rst $38
    sbc [hl]
    sub b
    ld b, [hl]
    add b
    ld b, l
    ld c, b
    ld c, [hl]
    ld b, e
    rst $38
    scf
    jr c, jr_066_776e

    dec [hl]
    xor l
    ld [hl], $45
    adc d
    ld h, b
    pop bc
    ld [c], a
    or e
    ret nz

    add b
    and b
    ret nc

    db $ed
    inc e
    and h
    call c, $b7da
    and c
    db $fc
    ld l, b
    and b
    inc c
    and d
    sbc [hl]
    sub c
    ld a, c
    adc l
    ld c, d
    ld h, b
    rst $38
    ld d, d
    add hl, sp
    dec [hl]
    dec [hl]
    xor h
    dec [hl]
    ld [hl], $45
    rlca
    xor [hl]
    adc d
    ld b, [hl]
    ld [hl], a
    ret nz

    ld b, e
    and b
    db $ec
    adc b
    ret nc

    and $1c

jr_066_776e:
    and l
    push bc
    call c, $c077
    jp c, $a051

    inc c
    and c
    ld d, e
    and b
    add b
    ld b, l
    rst $28
    ld c, d
    ld d, [hl]
    ld b, l
    ld a, [hl-]
    add d
    ldh [$3c], a
    ld b, h
    xor [hl]
    rlca
    xor a
    adc d
    ld b, [hl]
    ret z

    jp $89ec


    ret nc

    push hl
    inc e
    and l
    ld [de], a
    and l
    cp $0c
    and c
    and c
    ld b, [hl]
    ld b, [hl]
    add b
    ld c, d
    ld d, [hl]
    ld b, h
    dec c
    add hl, sp
    add d
    ldh [$3b], a
    ld [hl], $c2
    jp nz, $a08a

    ld hl, $eca0
    adc c
    or h
    add $e9
    inc b
    adc l
    sbc [hl]
    ret nz

    ldh [rVBK], a
    ld h, c
    add c
    ldh [$ad], a
    rrca
    ld [hl], $43
    ld b, l
    xor [hl]
    jp nz, Jump_000_0ac0

    and b
    ld hl, $d4a0
    ld [hl], c
    ret nz

    jp nz, Jump_000_0462

    add c
    or a
    ld h, b
    push af
    ld h, b
    inc a
    jp $e1c0


    ld c, d
    ld d, [hl]
    rst $38
    ld b, d
    dec [hl]
    dec [hl]
    dec [hl]
    ld b, b
    xor [hl]
    ld b, [hl]
    xor a
    add e
    adc d
    add l
    ld b, c
    pop hl
    ldh [$e9], a
    ret nc

    add sp, -$4b
    ld h, d
    inc b
    add c
    db $d3
    push de
    sub $36
    add c
    sub $8e
    ld h, c
    db $eb
    ld d, e
    add b
    add d
    add e
    rst $38
    ld b, e
    ld b, h
    inc a
    dec [hl]
    inc a
    ld b, h
    xor a
    ld b, [hl]
    jr nz, @+$06

    ret nz

    add hl, bc
    pop bc
    ldh [$e8], a
    ret nc

    db $ed
    inc b
    add c
    ret c

    ei
    ld h, b
    cp b
    add c
    db $fc
    ld c, [hl]
    ld h, b
    ld [hl], a
    add b
    sbc [hl]
    ld b, [hl]
    add l
    add [hl]
    add e
    ld b, l
    rst $38
    ld [hl], $6c
    ld [hl], d
    adc b
    adc b
    adc b
    add a
    add l
    ld bc, $0991
    pop bc
    ldh [$e7], a
    ret nc

    ld [$c10d], a
    rla
    add c
    or $60
    ld d, d
    ld h, b
    di
    reti


    db $dd
    db $fd
    and c
    inc b
    and c
    sub c
    add l
    add a
    adc b
    rra
    adc b
    ld [hl], b
    ld l, [hl]
    ld b, b
    xor [hl]
    rst $00
    and c
    ld c, h
    add b
    ldh [$e9], a
    db $76
    ret nc

    jp hl


    db $d3
    jp c, $8317

    db $d3
    ret nc

    pop de
    rst $30
    ld h, b
    ld h, e
    ret nc

    ret nc

    ldh a, [$e0]
    pop de
    ld h, c
    adc d
    add d
    ld b, l
    ld [hl], $40
    ldh [rNR10], a
    add a
    and b
    adc d
    and b
    ldh [$e9], a
    ret nc

    ld [$86d7], a
    add h
    jr c, jr_066_78d4

    or $40
    call $f0d4
    pop hl
    db $e4
    push hl
    add e
    add c
    inc c
    add b
    ld b, l
    ld a, [hl-]
    ld [bc], a
    add b
    ret nz

    sub c
    add c
    pop hl
    ldh [$ea], a
    ret nc

    jp hl


    rlca
    add a
    ld hl, sp+$62
    rst $30
    ld h, d
    dec de
    and $e7
    jp z, $ae64

    ld a, $00
    pop bc
    add b
    ld [c], a
    ldh [$e9], a
    ret nz

    ret nc

    jp hl


    rlca
    add a
    ld hl, sp+$62
    rst $08
    ld b, d
    ld c, $41
    ld a, a
    ld [c], a
    xor a
    ld a, $01
    dec [hl]
    jp nz, Jump_066_7f80

    ld [c], a
    ldh [$e9], a
    ret nc

    jp hl


    dec [hl]
    add a
    ld hl, sp+$64
    inc d
    ld b, e
    cp $4a
    ld h, d
    sub c
    ld b, [hl]
    ld a, $35
    xor l
    xor h
    ld b, b
    ld bc, $3f46
    ld [c], a
    ret c

    ld h, l
    ret nc

    db $ed
    call z, Call_066_4721
    add b
    inc c

jr_066_78d4:
    ldh [$79], a
    inc hl
    xor $f8
    ld hl, $a0ea
    and c
    dec c
    ld h, c
    ld a, c
    ld a, d
    ld h, h
    dec bc
    ld h, l
    ld h, [hl]
    add c
    add b
    sub c
    call z, $e040
    and $d0
    db $ed
    rst $00
    ld h, b
    jp nz, $8007

    rst $10
    inc c
    ldh [$7d], a
    ld h, e
    inc h
    ld h, e
    ccf
    ret nz

    ld b, [hl]
    ld a, c
    rst $38
    ld a, [hl]
    ld b, e
    ld a, $35
    ld l, b
    ld h, [hl]
    xor h
    ld [hl], $10
    ld c, e
    ld b, c
    ldh [$e6], a
    ret nc

    db $ed
    ret


    and e
    jp c, Jump_000_211a

    jr z, jr_066_793d

    rst $38
    ld h, b
    rst $38
    ld a, c
    ld a, [hl]
    ld b, a
    ld e, d
    ld a, $35
    dec [hl]
    ld l, d
    ld c, $7e
    add b
    ld b, [hl]
    sbc h
    sbc a
    ldh [$e6], a
    ret nc

    db $ed
    rst $00
    ld h, b
    add c
    ld b, b
    cp b
    sbc b
    ld [hl+], a
    ld de, $bf28
    ld h, c
    ld d, c
    ld e, [hl]
    ld d, [hl]
    rst $38
    ld h, b
    ld [hl], l
    rra
    ld h, [hl]

jr_066_793d:
    ld [hl], $45
    ld b, [hl]
    ld b, [hl]
    ld c, b
    ld h, d
    pop af
    ld [bc], a
    ret nc

    db $ed
    call nz, Call_066_60c7
    add c
    ld b, e
    ld [$2328], a
    ld de, $7f23
    ld h, b
    add d
    add e
    rst $38
    ld d, d
    ld e, b
    ld b, b
    dec [hl]
    dec [hl]
    ld [hl], $81
    ld b, l
    inc bc
    xor [hl]
    xor [hl]
    ld a, a
    ldh [$e0], a
    push hl
    ret nc

    xor $2f
    adc a
    push af
    nop
    ccf
    and c
    rst $38
    adc e
    ld b, l
    ld c, e
    ld b, h
    ld [hl], $36
    ld b, l
    adc h
    rrca
    ld a, l
    xor a
    xor a
    ld b, [hl]
    cp a
    pop hl
    rst $18
    ld l, b
    rst $08
    ld h, a
    inc l
    adc l
    cp d
    db $10
    dec h
    or [hl]
    ld a, a
    pop hl
    ld b, e
    ld b, l
    ld b, l
    add c
    ld b, b
    adc [hl]
    inc hl
    ld a, h
    ld a, l
    cp [hl]
    jr nz, jr_066_79db

    ld b, h
    db $fc
    ld l, l
    jp nc, $802b

    ret


    ld h, d
    or b
    ld [$f9c3], sp
    ld h, $7e
    ld b, b
    ld a, l
    add b
    xor [hl]
    ld b, [hl]
    ei
    ld h, b
    add hl, sp
    jp Jump_066_7fae


    cp a
    ldh [$fb], a
    add c
    inc d
    pop bc
    ret nc

    ld [$d5d8], a
    ld c, $fe
    ld h, b
    jp nc, $d6d4

    cp b
    ret nz

    inc l

Jump_066_79c1:
    ld [hl+], a
    db $f4
    and e
    ld a, [hl]
    call nz, Call_000_3eb6
    ldh [$af], a
    ld b, e
    db $fc
    ld b, b
    ld a, $af
    pop bc
    jr nz, jr_066_7a18

    jr jr_066_7a0f

    add c
    adc [hl]
    ret nz

    ret nc

    db $eb
    db $d3
    ret nc

jr_066_79db:
    ld a, c
    ld b, e
    rlca
    ld b, b
    inc l

jr_066_79e0:
    ld hl, $f4fc
    and h
    ld a, $e6
    add b
    ld b, l
    ld c, e
    ld d, l
    ld a, $35
    dec bc
    ld a, [hl-]
    ld b, l
    add c
    jr nz, @-$50

    ld a, d
    and d
    ret nc

    db $ec
    ld a, [hl-]
    add c
    ld a, c
    ld b, c
    push hl
    db $dd
    rlca
    jp nz, Jump_000_24eb

    push bc
    db $fd
    and [hl]
    add b
    ld b, h
    ld c, l
    call c, $a0fd
    ld a, [hl]
    ld b, b
    add c
    ld b, [hl]
    xor a
    ld a, [hl-]

jr_066_7a0f:
    and d
    rst $10
    jp nc, $d018

    ld [$a1f3], a
    cp [hl]

jr_066_7a18:
    ldh [$dd], a
    pop de
    rst $30
    and c
    add hl, hl
    add b
    db $f4
    and l
    jp c, $82fc

    and c
    dec a
    pop bc
    ld c, e
    ld d, l
    inc a
    ld b, b
    ld b, d
    xor a
    sbc d
    ld b, b
    ldh [rDMA], a
    add e
    ld hl, $d3da
    ret nc

    ld [$e0f0], a
    call nc, Call_000_3860
    add e
    rst $00
    and e
    db $f4
    and l
    jr jr_066_7a84

    ld a, [hl]
    pop bc
    add l
    adc e
    ld a, a
    ld hl, $3523
    ld b, b
    ld bc, $4020
    ldh [$79], a
    ld h, b
    call c, Call_000_0023
    ret nc

    add sp, -$1e
    ldh a, [$e0]
    reti


    jr c, jr_066_79e0

    add hl, hl
    add h
    cp $a4
    ld [c], a
    db $e3
    sbc a
    db $fd
    sbc l
    ld a, [hl]
    ld h, b
    ld b, l
    ld [hl], $6b
    ld l, h
    dec [hl]
    ld l, h
    inc de
    ld [hl], d
    ld [hl], c
    db $fd
    ld b, b
    ld b, b
    pop hl
    sub b
    jp $2300


Jump_066_7a79:
    nop
    ret nc

    jp hl


    pop hl
    and b
    ld a, $80
    ld [$f682], sp
    inc l

jr_066_7a84:
    ld b, c
    add c
    sub c
    ld b, [hl]
    ld b, h
    ccf
    inc a
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld l, [hl]
    ld b, b
    and c
    add b
    ret nz

    ret nz

    add hl, sp
    ld h, d
    ld c, e
    add b
    ret nc

    ld [$227f], a
    adc c

jr_066_7a9e:
    and d
    jr nc, jr_066_7aa8

    sbc a
    sbc l
    cp e
    sbc l
    sbc h
    inc bc
    ld h, b

jr_066_7aa8:
    ld b, c
    ld b, e
    ld [hl], $ff
    jr nz, jr_066_7ae3

    inc bc
    jr c, jr_066_7ae8

    pop bc
    db $e4
    cp d
    ld b, b
    db $e4
    ld h, d
    ret nc

    xor $30
    dec bc
    push bc
    ld h, d
    ld b, $c4
    ld b, c
    dec [hl]
    dec sp
    pop bc
    pop hl
    add e
    db $e3
    jp nz, Jump_066_44c0

    ld bc, $a2dc
    jr jr_066_7a9e

    db $ec
    jr nc, jr_066_7ade

    add [hl]
    ld h, d
    ld b, [hl]
    ld b, [hl]

Call_066_7ad5:
    add l
    nop
    pop bc
    db $e3
    add b
    ld b, b
    ld b, b
    ld [hl], l
    ld b, b

jr_066_7ade:
    ld b, d
    db $e3
    call c, $d0a2

jr_066_7ae3:
    db $ec
    jr nc, jr_066_7af3

    add [hl]
    ld h, d

jr_066_7ae8:
    ld b, [hl]
    add l
    ld bc, $4112
    jr nz, jr_066_7b29

    pop bc
    pop hl
    ld [hl], l
    ld b, c

jr_066_7af3:
    or [hl]
    ld b, d
    nop
    push de
    inc bc
    ret nc

    db $ed
    ld c, h
    jr nc, jr_066_7b0a

    rst $00
    ld b, c
    ld b, [hl]
    xor [hl]
    ld b, h
    jr nz, jr_066_7b07

    pop hl
    add hl, sp
    ld a, [bc]

jr_066_7b07:
    ret nz

    add l
    sbc l

jr_066_7b0a:
    rst $38
    pop hl
    sbc a
    ldh [$85], a
    ret nc

    xor $30
    dec c
    ret nz

    ld [c], a
    xor a
    nop
    ld b, c
    db $e3
    ld b, [hl]
    and b
    ld c, e
    pop bc
    add sp, $48
    ret nc

    rst $28
    ld bc, $468c
    jp $e441


    ld b, c
    add hl, sp

jr_066_7b29:
    adc c
    add e
    and c
    pop hl
    add sp, $44
    pop de
    ld [hl], c
    ld bc, $9e8a
    ld c, b
    jr nz, jr_066_7b3c

    ld b, [hl]
    ld c, d
    add c
    dec [hl]
    push bc

jr_066_7b3c:
    ld hl, $62c9
    ld de, $0486
    adc l
    db $f4
    ld h, c
    ld b, b
    jr nc, jr_066_7b4e

    dec b
    ld b, e
    ld b, [hl]
    nop
    sub l
    add b

jr_066_7b4e:
    add $a0
    ld b, a
    ld h, b
    ld b, e
    ld [$0060], sp
    inc c
    jp Jump_000_21ec


    rst $00
    ld h, b
    push de
    ld h, b
    inc e
    jp $e8f0


    jr nc, jr_066_7b6a

    ei
    ret nz

    ld [hl], b
    ld [$d761], sp

jr_066_7b6a:
    add b
    ld d, d
    ld h, b
    ld [bc], a
    ret nz

jr_066_7b6f:
    ld [hl], $45
    xor [hl]
    ld c, d
    ret nz

    ld e, c
    sbc [hl]
    db $e4
    ld [c], a
    ldh [$e1], a
    db $d3
    sub $5f
    pop bc
    sub $d0
    and $80
    ldh a, [$e9]
    inc h
    db $e4
    ld [$8861], sp
    and b
    ld d, c
    and c

jr_066_7b8c:
    ld a, [$85e1]
    ld bc, $049e
    ldh a, [rNR43]
    db $ec
    jr nz, jr_066_7b6f

    db $db
    ld h, b
    ld b, a
    ld b, c
    ret nc

    push hl
    ldh a, [$e5]
    jr nc, jr_066_7ba6

    ld e, $09
    ld h, h
    sbc h
    ld b, l

jr_066_7ba6:
    ld [hl], $a6
    db $10
    and l
    ld a, l
    ld bc, $620a
    ld [$e1e0], sp
    sub $60
    inc hl
    add c
    db $dd
    ret nc

    push hl
    ldh a, [$e5]
    jr nc, jr_066_7bc1

    ld [$1f23], sp
    sbc [hl]
    ld b, l

jr_066_7bc1:
    ld [hl], $62
    and a
    rrca
    ld b, c
    ld d, c
    add c
    ret


    and c
    call c, Call_066_610b
    ldh [$e2], a
    db $d3
    ret nc

    pop de
    rst $10
    ld h, b
    ret nc

    ret nc

    ldh a, [$d0]
    push hl
    ldh a, [$e5]
    jr nc, jr_066_7be2

    db $fc
    jp Jump_000_369e


    ld h, d

jr_066_7be2:
    ld h, a
    inc hl
    and e
    ld l, b
    adc $20
    ld d, c
    add c
    add $a0
    sbc a
    ld [$6126], sp
    and c
    jp nz, Jump_066_40d6

    call nc, $e5d0
    ldh a, [$e5]
    jr nc, jr_066_7c00

    ld [$9e23], sp
    xor b
    rlca

jr_066_7c00:
    xor c
    ld l, h
    dec [hl]
    inc c
    jr nz, @-$71

    jr nz, jr_066_7b8c

    db $e3
    ld [$1722], sp
    add d
    ldh a, [$d8]
    ld h, e
    rlca
    add a
    ldh a, [$e4]
    rlca
    adc e
    and c
    ld [hl], $6e
    ld l, a
    ld a, a
    ld l, h
    dec [hl]
    and e

jr_066_7c1e:
    xor d
    xor e
    ld [hl], $45
    add a
    and h
    nop
    jr jr_066_7c48

    and [hl]
    ld h, e
    ld [$9482], sp
    jr z, jr_066_7c1e

    db $e3
    inc c
    ld c, c
    nop
    ld [c], a
    cp a
    ldh [$03], a
    ld l, h
    ld l, a
    call z, $8760
    and [hl]
    push hl
    ld h, l
    ret c

    ld h, h
    ldh a, [$ee]
    jr nc, jr_066_7c4d

    ld b, $80
    pop bc
    ld l, [hl]

jr_066_7c48:
    ld l, a
    pop bc
    pop hl
    add a
    and a

jr_066_7c4d:
    ldh [$e9], a
    ldh a, [$f0]
    jr nc, jr_066_7c5e

    nop
    cp a
    ld [c], a
    pop bc
    push hl
    ld l, l
    ld h, d
    ldh [$eb], a
    ldh a, [$ef]

jr_066_7c5e:
    jr nc, @+$0e

    ld b, e
    ld h, b
    ld d, b
    add e
    nop
    dec d
    add l
    ldh [$ec], a
    ldh a, [$ee]
    jr nc, jr_066_7c7a

    db $10
    and l
    dec d
    add l
    ldh [$ed], a
    ret nc

    db $ed
    nop
    jr nc, jr_066_7c85

    db $10
    and l

jr_066_7c7a:
    ldh a, [$e5]
    ldh [$ed], a
    ret nc

    db $ed
    cpl
    adc l
    db $10
    and h
    ld a, [c]

jr_066_7c85:
    daa
    nop
    rrca
    adc l
    ret nc

    db $eb
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
    and $eb
    ldh [rIE], a
    rst $38
    nop
    rst $38
    db $f4
    nop
    nop
    nop
    ld [bc], a
    nop
    ld a, [hl+]
    dec b
    ld [bc], a
    ld bc, $0629
    ld [bc], a
    ld [bc], a
    ld a, [hl+]
    add hl, bc
    ld [bc], a
    inc bc
    inc l
    add hl, bc
    ld [bc], a
    inc b
    ld l, $09
    ld [bc], a
    dec b
    dec h
    ld a, [bc]
    ld [bc], a
    ld b, $2b
    ld a, [bc]
    ld [bc], a
    rlca
    dec l
    ld a, [bc]
    ld [bc], a
    ld [$0c22], sp
    ld [bc], a
    add hl, bc
    jr nz, jr_066_7ce6

    ld [bc], a
    ld a, [bc]
    inc h
    ld c, $02
    dec bc
    inc hl
    rrca
    ld [bc], a
    inc c
    ld e, $10
    ld [bc], a
    dec c

jr_066_7ce6:
    ld [hl+], a
    ld de, $0e02
    jr nz, jr_066_7cfe

    ld [bc], a
    rrca
    jr nz, jr_066_7d05

    ld [bc], a
    db $10
    dec e
    jr @+$04

    ld de, $1920
    ld [bc], a
    ld [de], a
    ld hl, $021a
    inc de

jr_066_7cfe:
    ld [hl+], a
    inc e
    ld [bc], a
    inc d
    inc h
    rra
    ld [bc], a

jr_066_7d05:
    dec d
    dec h
    rra
    ld [bc], a
    ld d, $1e
    ld [hl+], a
    ld [bc], a
    rla
    inc h
    ld [hl+], a
    ld [bc], a
    jr jr_066_7d3b

    inc h
    ld [bc], a
    add hl, de
    dec h
    dec h
    ld [bc], a
    ld a, [de]
    jr z, jr_066_7d43

    ld [bc], a
    dec de
    ld d, $2e
    ld [bc], a
    inc e
    inc de
    ld [hl-], a
    ld [bc], a
    dec e
    dec de
    inc sp
    ld [bc], a
    ld e, $17
    ld [hl], $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_066_7d3b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_066_7d43:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_066_7edb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_066_7f4e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_066_7f80:
Jump_066_7f80:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_066_7fae:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_066_7fd3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_066_7ff8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
