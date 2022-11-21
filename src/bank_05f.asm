; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05f", ROMX[$4000], BANK[$5f]

    ld c, $40
    pop hl
    ld c, c
    rst $00
    ld d, e
    inc l
    ld e, b
    call c, Call_000_3b61
    ld l, h
    dec bc
    ld [hl], b
    ld d, $40
    ld c, a
    ld b, h
    rst $38
    ld c, b
    ld a, [de]
    ld c, c
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
    jp nz, Jump_05f_6ac1

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

Call_05f_41e1:
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
    jp Jump_05f_504f


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
    jr nz, jr_05f_428f

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
    jp nc, Jump_05f_4d02

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

Call_05f_4281:
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

jr_05f_428f:
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

Call_05f_4300:
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
    jp Jump_05f_43e4


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
    call nz, Call_05f_41e1
    ldh [rP1], a
    ld b, d
    call nz, Call_05f_7f80
    and b
    add h
    ld a, [hl]
    jp $a286


    cp l
    ldh [$83], a
    jp $8040


    nop
    db $e3
    jr nz, jr_05f_43f0

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
    jp Jump_05f_637a


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

Jump_05f_43e4:
    jr nz, jr_05f_43e6

jr_05f_43e6:
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

jr_05f_43f0:
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

jr_05f_440a:
    db $fc
    ld [bc], a
    ld l, e
    ret nz

    db $fc
    jr nz, jr_05f_440a

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
    jr nz, jr_05f_455c

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

jr_05f_455c:
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
    jr nz, jr_05f_45f1

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

jr_05f_45f1:
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
    jp nz, Jump_05f_61c5

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
    jr c, jr_05f_46c9

    ret nz

    ld [hl], $42

jr_05f_46c9:
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

Call_05f_46e1:
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

Jump_05f_4700:
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
    call nz, Call_05f_4281
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
    jp Jump_05f_6206


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
    jr nz, jr_05f_47bb

jr_05f_47bb:
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
    jr nz, jr_05f_47ca

jr_05f_47ca:
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
    jr jr_05f_48a0

    ld a, l
    add [hl]
    ld a, b
    and d
    add b
    jp $bf00


    nop
    and [hl]

Jump_05f_4848:
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
    jr nz, jr_05f_4858

jr_05f_4858:
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

Jump_05f_486d:
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

jr_05f_48a0:
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
    jr jr_05f_494c

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

jr_05f_494c:
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
    jr nz, jr_05f_498d

    inc e
    dec h

jr_05f_498d:
    jr nz, jr_05f_4991

    dec e
    dec d

jr_05f_4991:
    ld hl, $1e02
    jr nz, jr_05f_49b7

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

jr_05f_49b7:
    daa
    ld a, [de]
    ld a, [hl+]
    ld [bc], a
    jr z, jr_05f_49e1

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
    jr nc, jr_05f_4a02

    ld a, [hl-]
    rst $38
    rst $38
    rst $38

jr_05f_49e1:
    jp hl


    ld c, c
    inc d
    ld c, [hl]
    db $fd
    ld d, d
    jr jr_05f_4a3c

    ld l, a
    dec c
    ld c, $0e
    ld c, $fc
    pop af
    ld c, l
    ld c, l
    db $fc
    ldh a, [rP1]
    db $d3
    ldh [$fc], a
    pop hl
    call z, $fee9
    db $fd
    ret nc

    ld [c], a
    call z, $b0e1

jr_05f_4a02:
    ldh [rIE], a
    rst $38
    call c, $eac6
    ld a, [hl]
    ld [c], a
    ld c, l
    ld c, l
    dec c
    cp $e0
    ld c, l
    ld c, l
    pop hl
    dec l
    ld hl, sp-$20
    ld a, [hl]
    db $e3
    rst $38
    rst $38
    add d
    jp hl


    dec c
    dec c
    ld l, l
    dec c
    ld l, e
    rst $38
    pop hl
    ld c, l
    dec l
    ld a, [hl]
    push hl
    cp h
    db $ed
    ld b, $ef
    cp $e3
    ld a, h
    ld c, h
    pop hl
    jp nz, Jump_000_2be0

    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    cp a
    ld [c], a
    add b
    ld [hl], l
    ldh [$ae], a

jr_05f_4a3c:
    ld [c], a
    adc $cc
    ld a, d
    db $ed
    ld [de], a
    pop hl
    jp nz, Jump_000_0cc1

    pop hl
    ld c, l
    cp $c1
    ldh [$2a], a
    ld a, [bc]
    ld a, [bc]
    ld l, d
    dec bc
    dec c
    ld l, e
    rlca
    ld l, e
    dec l

jr_05f_4a55:
    dec c
    db $fc
    rst $18
    jp z, $82e3

    jp $e246


    add d
    ldh [rTMA], a
    ret nz

    ldh [$2a], a
    ld c, e
    ret nz

    ldh [$3e], a
    ldh [$f7], a
    ret nz

    ret nz

    rst $38
    jr z, jr_05f_4a55

    ld l, $07
    ld [c], a
    ld a, [bc]
    ld a, [hl+]
    dec bc
    rst $38
    ldh [$2b], a
    ld a, $e4
    ld d, d
    ldh a, [$88]
    ld [$4dd6], sp

Jump_05f_4a80:
    ldh [rWY], a
    ldh [$2b], a
    pop bc
    pop hl
    ret nz

    ldh [$3e], a
    pop hl
    ld l, l
    xor b
    nop
    rst $18
    ld [$88c8], sp
    ret nz

    dec c
    pop bc
    ldh [rWX], a
    add b
    ldh [rWX], a
    rlca
    ld l, e
    ld a, [bc]
    ld c, d
    ret nz

    db $e4
    rst $38
    rst $38
    jp c, $d5c1

    ret nz

    ld c, c
    jp Jump_000_2b47


    ld c, e
    ld c, e
    jp $ffe0


    pop hl
    ld [hl], d
    ldh [$6d], a
    ld a, [hl]
    jp nz, $ffc4

    rst $38
    inc b
    db $e3
    dec c
    ld [$c0e1], sp
    pop hl
    pop bc
    pop hl
    ld a, [hl+]
    ld c, e
    ld b, b
    ld b, c
    pop hl
    ld l, d
    call nz, $d700
    ld [$8dc3], sp
    and b
    call z, $0da0
    ld a, [bc]
    pop hl
    add hl, bc
    dec bc
    add b
    db $e3
    ld a, a
    jp nz, Jump_000_006d

    rst $18
    ld [$8cc4], sp
    and c
    set 0, d
    ld h, [hl]
    pop bc
    ldh [rOCPD], a
    ld c, e
    cp c
    ret nz

    cp $e1
    ld l, e
    dec l
    ld c, b
    rst $38
    nop
    inc e
    and e
    ld b, d
    db $e3
    add [hl]
    jp nz, $e2c1

    jp nz, Jump_000_01e2

    ldh [rP1], a
    cp a
    add d
    db $e4
    jr nz, @+$52

    and b
    add l
    pop bc
    add b
    db $e3
    pop bc
    ldh [$fe], a
    add c
    dec c
    ld b, d
    jp nz, $aec0

    ld l, h
    nop
    adc d
    ld b, [hl]
    and d
    ld c, l
    dec c
    ld de, $6ba1
    dec hl
    ld b, $c3
    pop bc
    dec bc
    pop bc
    pop hl
    cp d
    add b
    pop bc
    ld [c], a
    inc b
    call z, $f373
    ld c, l
    ld c, l
    inc c
    ld [de], a
    and c
    ld b, c
    db $e3
    dec bc
    ld l, e
    ld b, $a1
    add l
    ldh [$b2], a
    add c
    xor e
    ld h, b
    inc e
    nop
    rst $38
    sub $61
    dec bc
    dec c
    dec hl
    ld b, [hl]
    ret nz

    add c
    db $e3
    add h
    add c
    jr nz, jr_05f_4b8e

    add b
    jp Jump_000_02e3


    cp a
    ld b, [hl]
    ld h, d
    jp z, Jump_05f_4a80

    ld c, b
    and e
    add d
    ret nz

    ld h, b
    ld b, a
    jp nz, $8368

    ld a, [hl+]
    add e
    cp $99
    ld [$6da2], sp
    dec bc
    inc c
    add c
    adc b
    pop bc
    and c
    ld [bc], a
    ret nz

    cp a
    ld h, b
    dec bc
    ld [$d6a3], sp
    ld d, l
    ld c, $6e
    dec bc
    rla
    dec bc
    ld a, [bc]
    ld c, d
    ret nz

    pop hl
    dec c
    pop bc
    db $e3
    ret nz

    db $e3
    rst $38
    rst $38
    ld c, h
    inc b
    add [hl]
    ld bc, $0ae0
    ld c, d
    ret nz

    and b
    ld a, b
    ret nz

    ld c, e

jr_05f_4b8e:
    cp d
    pop hl
    ld hl, sp+$08
    and b
    add $7f
    add b
    jp hl


    dec c
    ld l, e
    ld c, d
    ld a, [bc]
    dec hl
    ld b, $7f
    and b
    ld c, e
    ld c, e
    ld b, d
    add d
    ld [$92a4], sp
    ld [hl], h
    nop
    ld c, c
    adc [hl]
    ld b, e
    sub [hl]
    rst $08
    ld h, b
    ld a, [hl+]
    ld a, [hl+]
    ld b, [hl]
    ret nz

    dec bc
    add $80
    ld b, [hl]
    ld h, b
    dec bc
    jr nc, @+$49

    ld h, b
    ld [$008f], sp
    ld d, a

jr_05f_4bbf:
    adc b
    add d
    ld a, [bc]
    ld l, d
    cp $a0
    add [hl]
    add c
    ld b, a
    ld c, d
    dec c
    dec bc
    adc b
    ld [hl], d
    nop
    ld sp, hl
    ret nz

    pop hl
    ld a, [bc]
    push bc
    and b
    dec b
    dec hl
    ld b, $80
    ld c, d
    ld b, c
    ld h, b
    inc bc
    ld b, c
    call nz, Call_000_00ff
    add sp, $7f
    pop bc
    inc b
    ld a, a
    ldh [rSB], a
    ldh [rWY], a
    ld [hl], $c2
    add $80
    inc b
    or c
    nop
    db $d3
    ret nz

    pop hl
    ld a, [hl-]
    dec bc
    ld b, b
    ld a, [bc]
    add l
    ld h, c
    dec bc
    ld a, [bc]
    ld a, [bc]
    jr c, jr_05f_4bbf

    add [hl]
    add d
    call nc, $df00
    nop
    push bc
    dec hl
    pop bc
    pop hl
    ld a, [hl+]

jr_05f_4c09:
    ld b, l
    ld h, c
    dec hl
    ld a, [hl+]
    ld b, c
    ld a, [hl+]
    ld a, c
    ld h, c
    add b
    ld [c], a
    rst $38
    rst $38
    inc b
    ld b, h
    add e
    pop hl
    ld a, [bc]
    add b
    add b
    ld b, $05
    ld h, b
    ld c, e
    dec hl
    pop bc
    ld b, c
    rst $38
    and c
    call nz, $8eff
    ld b, $cc
    ld hl, $4904
    ld b, b
    add $41
    ld c, e
    ret nz

    ret nz

    add b
    cp e
    inc b
    ld c, d
    nop
    add e
    jp nz, Jump_000_22a0

    ld c, e
    ld b, b
    ld c, e
    ld b, [hl]
    ld b, b
    ld sp, hl
    pop bc
    nop
    and b
    dec l
    ld [$fe23], sp
    jp nc, $8c8e

    db $10
    dec l
    ld a, [hl+]
    ld a, [bc]
    add c
    db $e3
    ld c, b
    ld b, d
    ld a, c
    ld b, b
    ld c, l
    db $10
    ld b, $62
    rst $00
    ld [bc], a
    ld b, h
    ld a, [hl]
    ret nz

    ld bc, $cc6b
    inc hl
    add e
    ret nz

    ld b, $21
    nop
    ld b, b
    pop bc
    add [hl]
    ld b, e

jr_05f_4c6c:
    ret nz

    rst $38
    adc d
    inc bc
    jp $c765


    ld [bc], a
    ld b, b
    jp nz, $9ffe

    inc c
    nop
    adc e
    jp nz, Jump_000_0d67

    dec c
    ccf
    jr nz, jr_05f_4c09

    jr nz, jr_05f_4c88

    ld d, e
    nop
    sub h
    adc b

jr_05f_4c88:
    push bc
    ld b, h
    add c
    add b
    nop
    add d
    ld c, e
    ld b, l
    nop
    ld c, b
    rst $38
    nop
    add a
    dec l
    inc c
    jp nz, $8821

    inc b
    dec c
    ld c, e
    cp $e1
    ld a, $61

Jump_05f_4ca1:
    nop
    rst $38
    add b
    and h
    inc bc
    ld c, e
    dec l
    ld b, e
    add c
    cp a
    db $e4
    ld a, a
    nop
    cp [hl]
    ldh [$7e], a
    jp $df00


    ld [hl+], a
    nop
    ld b, d
    dec l
    rst $00
    add c
    rst $38
    and $bf
    pop hl
    ld c, e
    ld a, $e0
    ld h, [hl]
    inc hl
    jr nz, jr_05f_4cc7

    ld a, [hl-]
    add b

jr_05f_4cc7:
    add $93
    nop
    cp a
    rst $20
    ret nz

    ld [c], a
    ld c, e
    db $fc
    ld h, e
    db $fc
    cp l
    stop
    ld b, e
    add l
    and b
    ret nz

    add sp, -$08
    add b
    dec c
    ld a, a
    ld [c], a
    db $fc
    cp a
    cp h
    and h
    jr c, jr_05f_4c6c

    add c
    ld a, $e7
    ret nz

    pop hl
    inc c
    inc c
    inc l
    ld a, h
    sub $00
    ld c, a
    ld l, h
    dec b
    and b
    rst $38
    ret


    ld c, e
    inc c
    rst $38
    ldh [$2c], a
    inc l
    ld a, d
    ld b, e
    ld [hl], b
    ld [hl], l
    ld [hl+], a
    nop

Jump_05f_4d02:
    ld e, l
    add [hl]
    add b
    rst $38
    rst $00
    dec hl
    ld c, e
    ld c, h
    rst $38
    ldh [$93], a
    ld l, h
    ld l, h
    ld a, d
    inc hl
    nop
    rst $38
    ld c, l
    db $10
    ld [c], a
    cp a
    jp z, $0f4c

    dec c
    ld c, h
    ld l, h
    ld c, e
    ld b, b
    inc de
    add b
    sub c
    ret nz

    ld [c], a
    ld b, e
    ld h, b
    inc b
    ret nz

    inc b
    cp $a2
    ld c, e
    cp h
    and d
    nop
    call c, Call_05f_4300
    ld a, a
    ldh [$85], a
    ld h, c
    inc b
    ld a, d
    add d
    ccf
    rst $00
    ld c, e
    rst $20
    and b
    ld h, d
    ld [bc], a
    nop
    rst $18
    ld b, a
    ld h, c
    ld a, l
    ld [c], a
    add b
    cp $a8
    ld l, e
    pop bc
    ld a, d
    or a
    nop
    ld l, d
    ret nz

    push hl
    inc a
    rst $20
    ret nz

    db $e4
    ld c, e
    nop
    db $76
    ld [hl+], a
    nop
    rst $18
    rst $00
    ld b, c
    adc c
    and e
    or [hl]
    ld h, d
    ld a, $a3
    ld sp, hl
    add c
    ld hl, sp+$32
    sub b
    nop
    ld c, [hl]
    cp a
    ret nz

    ld c, l
    and d
    cp [hl]
    ld b, e
    ld c, e
    ld a, d
    nop
    or c
    and b
    dec hl
    ld d, e
    dec bc
    dec hl
    ret nz

    ld [c], a
    nop
    rst $18
    dec c
    db $dd
    ldh [$0d], a
    cp l
    pop hl
    ld b, b
    ld b, h
    add b
    rst $30
    and d
    ld hl, sp+$21
    cp b
    add e
    ld hl, sp+$3e
    sbc [hl]
    and h
    dec c
    ld a, h
    db $e3
    ld [$e20c], sp
    add e
    db $e3
    ld [hl], a
    add e
    ld l, l
    nop
    db $fd
    inc e
    inc hl
    ld d, b
    inc bc
    ld a, [hl-]
    db $e4
    ld [bc], a
    db $f4
    add h
    dec l

jr_05f_4da7:
    or e
    ld h, c
    ld a, b
    jr nc, @+$2c

    dec l
    db $fc
    and e
    ld hl, sp+$02
    dec sp
    ld [c], a
    ld [$8085], sp
    ld [hl-], a
    ld h, c

jr_05f_4db8:
    ld a, h
    ld [c], a
    dec c
    nop
    ld [c], a
    nop
    ld e, l
    ld [hl], h
    rst $20
    or a
    pop bc
    dec [hl]
    dec c
    or l
    add d
    dec l
    cp a
    ret nz

    dec hl
    ld l, e
    cp $9f
    db $fc
    ld h, a

jr_05f_4dd0:
    nop
    db $76
    add d
    db $76
    jp nz, $c33c

    pop bc
    ldh [rSB], a
    pop bc
    nop
    rst $18
    jr nz, jr_05f_4da7

    db $76
    ret nz

    nop
    cp a
    push hl
    pop bc
    pop hl
    cp c
    nop
    ld a, h
    ld [hl], c
    inc l
    ld d, e
    jp c, Jump_05f_78a1

    pop bc
    rst $38
    jr nz, jr_05f_4df4

    dec l

jr_05f_4df4:
    ld [hl], b
    jr nz, jr_05f_4db8

    ld [c], a
    nop
    sbc a
    jr nc, jr_05f_4e2d

    cp h
    ld [c], a
    cp b
    jr nz, jr_05f_4e03

    rst $38
    nop

jr_05f_4e03:
    jr c, jr_05f_4dd0

    db $76
    push bc
    jp nz, $ece2

    and d
    nop
    sbc a
    xor d
    jr c, jr_05f_4e12

    ld [hl], h
    nop

jr_05f_4e12:
    nop
    nop
    rst $28
    and b
    call c, $dedd
    db $fc
    ld a, [c]
    and b
    ret c

    reti


    rst $08
    and b
    and b
    jp nc, $fcd3

    db $eb
    db $ec
    pop hl
    sub $d7
    sbc $cc
    jp hl


    rst $18

jr_05f_4e2d:
    ldh [$e1], a
    ld [c], a
    db $fc
    pop af
    sub $d7
    rst $38
    jp c, $d0db

    pop de
    call nc, $a0d5
    and b
    cp $fc
    rst $20
    ret nc

    pop de
    jp c, $d6db

    rst $10
    ret c

    dec a
    reti


    call z, $e3e9
    db $e4
    push hl
    and $fc
    pop af
    add d
    push hl
    rst $38
    and b
    and b
    sbc a
    sbc l
    and d
    sbc l
    sbc l
    sbc l
    reti


    sbc a
    push af
    ldh [$7e], a
    db $e3
    jp c, $ccdb

    jp hl


    rst $20
    add sp, -$0d
    jp hl


    ld [$f1fc], a
    add d
    push hl
    sbc a
    and d
    sbc h
    ld b, [hl]
    ld [hl-], a
    rst $38
    pop hl
    sbc h
    cp a
    ldh [$7e], a
    db $e3
    and b
    and b
    call z, Call_000_06e9
    pop af
    db $fc
    cp $e3
    add d
    ld [c], a
    sbc a
    sbc h
    ld b, l
    ld d, b
    ld d, b
    ld b, e
    ld b, c
    ld b, l
    cp a
    db $e4
    ld l, [hl]
    db $e3
    adc $ca
    ld [bc], a
    rst $28
    sbc $c2
    and b
    inc b
    pop hl
    rst $38
    sbc a
    sbc l
    sbc l
    sbc h
    ld b, l
    ld b, a
    ld e, l
    ld e, l
    ld a, a
    ld c, h
    ld d, d
    ld b, l
    xor [hl]
    ld b, [hl]
    ld b, [hl]
    and c
    inc sp
    ldh [$8f], a
    call nc, $d6d5
    rst $10
    adc $cb
    ld [bc], a
    rst $28
    add [hl]
    add $9f
    cp $46
    ldh [rLYC], a
    ld b, a
    ld h, b
    ld d, h
    ld e, c
    ld e, c
    ld d, e
    inc bc
    ld b, l
    xor a
    ld a, a
    db $e4
    ld l, d
    ret nz

    adc $cb
    ld [bc], a
    rst $28
    add [hl]
    push bc
    pop bc
    pop hl
    rst $38
    ld b, [hl]
    ld b, l
    ld d, e
    ld d, e
    ld a, [hl+]
    ld h, $20
    ld h, $e1
    ld a, [hl+]
    ld a, $e4
    ld a, [hl]
    pop bc
    adc $cb
    ld [$a1d7], sp
    ld b, [hl]
    ld b, [hl]
    cp $4a
    ldh [rLYC], a
    scf
    daa
    jr nz, jr_05f_4f11

    jr nz, @+$32

    add l
    ld b, h
    ld a, $e1
    sbc [hl]
    ldh a, [$a2]
    nop
    db $db
    ld [$42c6], sp
    pop hl
    xor a
    rst $28
    ld b, [hl]
    ld b, l
    ld [hl], $35
    ret nz

    ldh [rNR52], a
    ld a, [hl+]
    ld b, a
    ld b, l
    ld d, l
    ld a, $e0
    sbc [hl]
    nop

jr_05f_4f11:
    ld [c], a
    nop
    db $db
    inc b
    push hl
    sbc l
    ld c, c
    jp Jump_000_39ff


    dec [hl]
    dec [hl]
    ld hl, $482a
    ld c, [hl]
    ld c, c
    jp Jump_05f_5560


    ld a, [hl]
    call nz, $dd00
    inc b
    rst $20
    adc l
    ret nz

    ld b, [hl]
    ld b, l
    rst $38
    ld a, [hl-]
    dec [hl]
    dec [hl]
    ld a, [hl-]
    ld d, c
    ld e, a
    ld h, c
    ld h, c
    ld b, l
    ld d, d
    dec a
    ret nz

    sbc [hl]
    ld l, d
    pop bc
    nop
    call c, $a49a
    sbc [hl]
    call z, $fea0
    ld b, e
    ldh [$37], a
    jr c, jr_05f_4f81

    dec [hl]
    dec [hl]
    add hl, sp
    ld b, l
    add c
    ld d, e
    ld a, a
    ret nz

    ld bc, $00e2
    sbc $08
    jp $c246


    ld b, h
    ret nz

    ld [hl], $ae
    jp nz, Jump_000_35e0

    ld [hl], $45
    cp c
    ret nz

    xor [hl]
    push af
    ret nz

    ld b, [hl]
    ld b, c
    and c
    ldh a, [$81]
    nop
    db $db
    adc [hl]
    add e
    ld b, d
    db $e3
    pop bc
    rst $20
    xor a
    jp nz, $58e1

    ld a, $a0
    ld a, [hl]
    add e
    nop
    reti


jr_05f_4f81:
    sub $d7
    add d
    push hl
    xor a
    push bc
    pop bc
    ld [bc], a
    ld b, d
    ldh [rLCDC], a
    pop bc
    pop hl
    rst $38
    add h
    ld [hl], d
    add c
    nop
    jp c, $820c

    rlca
    pop bc
    call nc, $c4c5
    ld [bc], a
    ldh [rSCY], a
    pop bc

Call_05f_4f9f:
    pop hl
    sbc h
    ld a, a
    add d
    ret nc

    pop de
    ret nz

    inc b
    adc h
    nop
    adc l
    inc c
    add e
    jp $85c0


    pop bc
    add c
    db $e3
    inc a
    ld b, h
    ret nz

    ld b, [hl]
    and h
    jp $b3e0


    ld h, b
    inc b
    adc e
    nop
    adc l
    adc [hl]
    ld h, h
    sbc [hl]
    ld b, [hl]
    scf
    xor a
    ld b, l
    ld b, l
    add c
    db $e4
    dec [hl]
    ld b, d
    ld b, d
    add b
    add $81
    ld b, b
    db $76
    ld h, b
    or e
    ld h, b
    inc b
    adc e
    nop
    adc l
    and d
    ld h, c
    adc [hl]
    ld h, b
    sbc [hl]
    jp z, Jump_000_0180

    ld d, l
    ld [bc], a
    db $e3
    add d
    ret nz

    ld c, b
    and d
    db $76
    ld h, e
    or d
    ld h, c
    ret nc

    ld l, l
    ld [bc], a
    ld l, e
    ld a, h
    inc c
    ld h, c
    adc c
    add b
    ld b, h
    ld c, l
    ld e, d
    ld a, $ac
    ld b, e
    pop bc
    rra
    ld a, [hl-]
    ld b, l
    xor [hl]
    xor a
    xor [hl]
    ld [$d6a4], sp
    ld d, e
    ld [bc], a
    ld l, e
    db $fc
    inc c
    ld h, c
    call nz, Call_05f_51a0
    ld e, [hl]
    ld e, d
    ld a, $ad
    dec [hl]
    ld a, [bc]
    cp [hl]
    ldh [$39], a
    pop bc
    ldh [$af], a
    ld [$d6a4], sp
    ld d, e
    nop
    rst $08
    pop bc
    ret nz

    rla
    ld b, h
    ld c, l
    ld d, [hl]
    rlca
    and b
    xor l
    call nz, $05a0
    pop bc
    ld [$b8a4], sp
    sub $53
    nop
    rst $08
    pop bc
    pop bc
    ld c, e
    ld e, b
    ld b, h
    ld b, $a1
    ld b, l
    ldh [rDMA], a
    ld h, d
    ld [$d6a4], sp
    ld d, e
    inc c
    ld c, a
    inc b
    and c
    ld d, l
    ld d, d
    ld b, h
    ld b, $86
    add b
    add hl, sp
    ld b, a
    ld b, [hl]

Jump_05f_504f:
    ld h, d
    ld b, a
    ld h, b
    ld [$008f], sp
    rst $10
    pop bc
    and c
    rst $28
    ld b, h
    ld b, a
    ld d, d
    ld b, b
    add h
    and b
    ld d, d
    ld h, c
    ld h, c
    ld h, b
    ld [$8680], sp
    and d
    ld [$004d], sp
    rst $10
    add h
    add c
    ld b, h
    ld c, l
    ccf
    pop hl
    rra
    ld [hl], $45
    ld d, d
    ld h, c
    ld d, [hl]
    add h
    ld b, b
    ld b, h
    ld b, c
    ld [$bc4d], sp
    nop
    rst $10
    add c
    and c
    ld d, c
    ld e, [hl]
    ld h, c
    ld d, d
    push bc
    ld h, b
    ld [hl], $2f
    ld b, l
    ld c, e
    ld h, c
    ld e, h
    ld a, [hl-]
    ld h, b
    sbc [hl]
    ld [$004f], sp
    rst $10
    db $ec
    add c
    and b
    rst $38
    and b
    ld h, c
    ld e, b
    ccf
    ldh [$35], a
    add hl, sp
    ld c, a
    push hl
    ld e, b
    ld b, l
    add c
    sbc [hl]
    nop
    rst $18
    nop
    ret


    ld b, l
    ld b, e
    ld d, b
    ld a, e
    ld d, d
    ld d, a
    add b
    pop hl
    dec [hl]
    ld a, $55
    ld d, d
    ld b, l
    add c
    ld sp, hl
    sbc [hl]
    nop
    rst $18
    nop
    ret z

    ld b, l
    ld b, a
    ld c, h
    ld e, l
    ld e, h
    dec de
    ld b, e
    ld b, e
    add b
    add c
    add hl, sp
    ld b, l
    add l
    dec h
    nop
    rst $18
    nop
    add $de
    ld b, e
    ldh [rHDMA2], a
    ld b, l
    ld [hl], $3b
    add h
    ld h, d
    ld b, a
    ld d, l
    cp b
    ld bc, $00e1
    rst $18
    nop
    ret


    ld b, l
    ld c, e
    ld d, [hl]
    ld b, l
    ld h, d
    ld a, [hl-]
    dec d
    ccf
    add d
    jr nz, jr_05f_5147

    add d
    ld h, b
    and c
    db $76
    inc b
    nop
    rst $18
    adc d
    ld bc, $9f27
    sbc h
    ld d, l
    add d
    add e
    pop bc
    and b
    ld h, b
    nop
    pop bc
    add h
    nop
    and $86
    ld bc, $a0a0
    nop
    rst $18
    add [hl]
    ld [hl+], a
    and c
    ld b, l
    ld b, l
    dec b
    ld a, $45
    ld h, d
    ld c, l
    ld c, b
    ld b, c
    jp $8641


    ld b, h
    nop
    rst $18
    nop
    add l
    ld [bc], a
    ld b, h
    ld h, d
    add hl, sp
    ld a, e
    ret nz

    ld b, b
    add b
    ld b, b
    pop bc
    add [hl]
    inc bc
    nop
    rst $18
    nop
    add h
    dec e
    ld b, d
    push bc
    ld b, d
    ld a, [hl-]
    ccf
    ld b, e
    ld bc, $c682
    ld [hl+], a
    db $e4
    ld b, h
    inc c
    nop
    rst $18
    nop
    add c
    ld b, h
    inc a
    add d
    ld h, l
    ld bc, $c780

jr_05f_5147:
    nop
    add [hl]
    inc b
    nop
    db $fc
    or c
    nop
    sub d
    inc bc
    ld h, l
    rst $38
    ld h, h
    ld a, [hl]
    ld h, l
    db $fc
    or c
    nop
    sub d
    inc b
    ld b, h
    ld b, $43
    jr nz, @+$3a

    scf
    cp a
    and b
    cp l
    ld h, c
    ld a, [hl]
    pop bc
    db $fc
    or c
    nop
    ld c, a
    nop
    ld b, a
    ld bc, $e53f
    ld b, b
    inc hl
    ld a, l
    and e
    db $fc
    or e
    nop
    ld d, d
    jp Jump_05f_7e25


    ld [hl+], a
    dec b
    add hl, sp
    or c
    ld [hl+], a
    and c
    ld b, c
    ld b, b
    db $fc
    or c
    nop
    ld d, d
    jp nz, Jump_000_3e25

    ld [hl+], a
    ld bc, $353e
    ld [bc], a
    cp h
    ld hl, $b1fc
    nop
    ld d, b
    ld b, b
    ld hl, $c33e
    ret nz

    push hl
    rrca
    xor a
    dec bc
    inc bc
    inc bc
    ld a, d

Call_05f_51a0:
    ld h, h
    nop
    rst $18
    ld b, e
    ld [bc], a
    rst $38
    ret z

    rst $38
    ld a, $46
    ld [bc], a
    rlca
    dec c
    sbc d
    dec c
    ld [bc], a
    ldh [$fb], a
    and c
    db $fc
    xor a
    nop
    ld d, d
    rst $38
    jp z, $e0c0

    dec c
    rlca
    dec c
    ldh [$c0], a
    pop hl
    db $fc
    or c
    nop
    pop de
    ret nz

    ld bc, $c7ff
    ld a, [hl-]
    ld b, l
    ld b, [hl]
    rrca
    dec bc
    xor [hl]
    inc bc
    inc bc
    db $fc
    or h
    nop
    rst $08
    ld b, b
    jr nz, jr_05f_5225

    nop
    rla

jr_05f_51da:
    ld b, l
    scf
    jr c, jr_05f_51da

    and l
    ld b, b
    cp $a1
    ld a, [$fc01]
    or c
    ldh [rP1], a
    rst $08
    rst $38
    ld [hl+], a
    dec a
    pop hl
    db $fc
    ld h, c
    ccf
    rst $00
    ld b, [hl]
    sbc h
    sbc l
    nop
    db $fc
    and e
    ld hl, sp+$2b
    nop
    db $d3
    ld c, l
    jp nz, $e5bf

    ccf
    ldh [$3d], a
    jp nz, Jump_05f_62f8

    db $10
    ld hl, sp+$2d
    nop
    call nc, $e24e
    inc a
    push hl
    ld b, d
    ldh a, [$e4]
    db $76
    ld hl, $2df8
    jr jr_05f_5217

jr_05f_5217:
    call nc, $e4fd
    jr c, jr_05f_527e

    inc a
    ld b, h
    cpl
    db $e3
    ld hl, sp+$32
    nop
    adc a
    ld [hl], h

jr_05f_5225:
    rst $38
    and e
    cp a
    and $3b
    cp $82
    ld b, l
    ld b, c
    ld b, l
    ld hl, sp+$33
    call z, $cf00
    cp [hl]
    and b
    sbc l
    sbc l
    cp l
    ld [c], a
    push bc
    ld h, c
    ld b, l
    ld b, e
    dec c
    ccf
    pop bc
    pop hl
    ld [hl], $a6
    cp b
    add c
    ld hl, sp+$30
    nop
    adc a
    sbc d
    add d
    jr c, jr_05f_52c9

    and d
    inc c
    ld [c], a
    ld [hl], l
    jp $a762


    ld h, [hl]
    ld [hl], a
    add b
    ld a, b
    ld h, b
    ret nz

    nop
    db $db
    jr jr_05f_52c0

    sub [hl]
    ld b, c
    ld a, d
    ld b, b
    ld a, l
    db $e3
    pop bc
    push hl
    ld h, a
    and e
    ld bc, $bf68
    ldh [$f8], a
    ld [bc], a
    nop
    sbc b
    db $fc
    ld h, d
    inc d
    ld hl, $2110
    cp [hl]
    db $e3
    cp $38
    jp nz, $6762

jr_05f_527e:
    dec [hl]
    dec [hl]
    ld l, h
    or a
    cp b
    add e
    sbc h
    sbc a
    nop
    db $db
    db $fc
    and e
    inc d
    ld hl, $4310
    or [hl]
    add c
    xor a
    cp $b8
    and b
    cp c
    cp d
    and e
    dec [hl]
    ld l, h
    ld l, a
    ld l, [hl]
    pop bc
    ld [hl], $7e
    and c
    nop
    reti


    db $fc
    ld h, l
    ld hl, sp+$64
    ld [hl], l
    add h
    ld b, l
    ld [hl], $17
    ld l, [hl]
    ld l, a
    ld l, h
    pop bc
    pop hl
    ld b, l
    ld bc, $00c0
    jp c, $63fc

    inc bc
    and b
    and b
    ld hl, sp+$23
    ld a, [hl]
    push hl
    cp a
    ld [c], a
    pop bc

jr_05f_52c0:
    pop hl
    ld a, d
    ld b, h
    nop
    reti


    inc b
    ld hl, sp+$29
    ld a, [hl]

jr_05f_52c9:
    db $e3
    sbc l
    inc [hl]
    ret nz

    ld a, [hl]
    ldh [$c1], a
    db $e3
    db $fc
    ld b, e
    nop
    sbc b
    nop
    ld hl, sp+$67
    db $fc
    push bc
    inc c
    ld h, b
    cp h
    pop hl
    cp c
    ldh [$fc], a
    ld hl, $dd00
    ld hl, sp+$27
    nop
    db $fc
    push bc
    adc d
    ld b, h
    add l
    ld b, d
    nop
    sbc a
    ld hl, sp+$27
    db $f4
    inc bc
    ld a, d
    add sp, -$7e
    db $e4
    nop
    nop
    adc l
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
    daa
    ld b, $02
    ld bc, $091d
    ld [bc], a
    ld [bc], a
    add hl, hl
    add hl, bc
    ld [bc], a
    inc bc
    ld a, [de]
    inc c
    ld [bc], a
    inc b
    jr z, jr_05f_5339

    ld [bc], a
    dec b
    inc h
    ld c, $02
    ld b, $26
    ld c, $02
    rlca
    jr jr_05f_5347

    ld [bc], a

jr_05f_5339:
    ld [$0f23], sp
    ld [bc], a
    add hl, bc
    ld [hl+], a
    db $10
    ld [bc], a
    ld a, [bc]
    ld hl, $0211
    dec bc
    dec d

jr_05f_5347:
    ld [de], a
    ld [bc], a
    inc c
    ld hl, $0214
    dec c
    add hl, de
    dec d
    ld [bc], a
    ld c, $20
    dec d
    ld [bc], a
    rrca
    ld [hl+], a
    dec d
    ld [bc], a
    db $10
    dec de
    ld d, $02
    ld de, $161f
    ld [bc], a
    ld [de], a
    ld hl, $0216
    inc de
    inc d
    rla
    ld [bc], a
    inc d
    ld hl, $0219
    dec d
    inc d
    inc e
    ld [bc], a
    ld d, $23
    inc e
    ld [bc], a
    rla
    ld hl, $021d
    jr jr_05f_539d

    jr nz, @+$04

    add hl, de
    ld hl, $0221
    ld a, [de]
    ld hl, $0223
    dec de
    inc hl
    inc hl
    ld [bc], a
    inc e
    jr nz, jr_05f_53b0

    ld [bc], a
    dec e
    rra
    dec h
    ld [bc], a
    ld e, $21
    dec h
    ld [bc], a
    rra
    jr nz, jr_05f_53be

    ld [bc], a
    jr nz, jr_05f_53bd

    ld h, $02

jr_05f_539d:
    ld hl, $2714
    ld [bc], a
    ld [hl+], a
    inc h
    daa
    ld [bc], a
    inc hl
    dec h
    dec hl
    ld [bc], a
    inc h
    dec d
    cpl
    ld [bc], a
    dec h
    ld h, $2f

jr_05f_53b0:
    ld [bc], a
    ld h, $18
    ld [hl-], a
    ld [bc], a
    daa
    jr z, jr_05f_53ea

    ld [bc], a
    jr z, jr_05f_53e6

    inc [hl]
    ld [bc], a

jr_05f_53bd:
    add hl, hl

jr_05f_53be:
    inc e
    ld [hl], $02
    ld a, [hl+]
    jr nz, jr_05f_53fd

    rst $38
    rst $38
    rst $38
    rst $08
    ld d, e
    rst $00
    ld d, l
    add hl, bc
    ld e, b
    add hl, hl
    ld e, b
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

jr_05f_53e6:
    ld hl, sp-$5f
    rst $38
    rst $38

jr_05f_53ea:
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

jr_05f_53fd:
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
    ld a, h
    ld b, e
    rst $38
    ld b, e
    and $2d
    dec c
    dec l
    dec l
    dec l
    add b
    rst $18
    nop
    sbc b
    or $c2
    ldh [$bf], a
    ldh [$79], a
    rst $38
    ret nz

    rst $38
    dec a
    rst $38
    sub d
    ret


    ld c, b
    ld [c], a
    ld b, b
    push bc
    db $e3
    cp l
    db $e3
    add b
    rst $18
    adc c
    pop af
    ld b, l
    pop hl
    ld a, [hl-]
    pop bc
    dec c
    dec a
    rst $38
    nop
    ld l, e
    db $ed
    adc $ea
    db $fd
    rst $10
    db $db
    xor h
    sub b
    ret nz

    res 4, b
    adc d
    pop hl
    adc [hl]
    db $e4
    nop
    pop af
    pop hl
    rst $28
    ld [c], a
    ld a, d
    sub $8b
    ld [$e154], a
    ret nz

    ld [c], a

jr_05f_5469:
    adc d
    push hl
    cp $c2
    ldh [$7d], a
    ei
    sub d
    ret z

    ld c, [hl]
    and c
    jp nc, $8ce3

    db $e3
    ld c, l
    dec c
    dec c
    rlca
    ld c, l
    dec l
    ld c, l
    add b
    rst $18
    adc h
    push bc
    ret c

    pop bc
    ld a, $e5
    sub b
    ldh [$3f], a
    ld c, l
    dec c
    ld l, l
    dec bc
    dec bc
    ld c, l
    cp e
    jp nz, $e23e

    ld h, b
    ld a, d
    ret nc

    dec d
    ret


    ld c, c
    pop bc
    adc [hl]
    and d
    ld [$4dc1], sp
    ld c, l
    cp [hl]
    add b
    rrca
    ld l, l
    dec bc
    dec hl
    dec bc
    cp [hl]
    pop hl
    ei
    jp $fb3d


    ld d, l
    ldh [$b3], a
    ld l, l
    ld c, l
    rst $38
    ldh [$fb], a
    pop hl
    dec l
    dec c
    db $fc
    ldh [rKEY1], a
    dec hl
    ld c, l
    dec c
    jp Jump_000_2be0


    cp l
    ldh [$6d], a
    xor h
    pop bc
    jr c, jr_05f_5469

    and h
    db $fd
    ret nc

    rst $08
    and a
    dec c
    inc de
    ldh [$c7], a
    and b
    dec bc
    ld a, d
    pop bc
    ld c, l
    inc b
    ld c, b
    pop hl
    or l
    ldh [$2b], a
    rst $38
    pop hl
    dec a
    pop hl
    push de
    add e
    nop
    or a
    inc h
    ld [c], a
    ldh a, [$c0]
    pop hl
    dec c
    ldh [rLY], a
    ldh [$f4], a
    ld [c], a
    dec l
    dec bc
    dec bc
    ld l, e
    dec e
    ld l, e
    cp [hl]
    ldh [rWX], a
    ld c, e
    dec bc
    add c
    and e
    cp h
    jp c, $e102

    or h
    db $fc
    db $e3
    or d
    push hl
    ld c, l
    ld [hl], e
    ldh [rOCPD], a
    ld c, e
    cp $e0
    dec bc
    ld b, e
    dec c
    ld l, l
    add b
    rst $18
    or b
    ld h, [hl]
    add d
    add $44
    pop bc
    ld l, e
    add e
    ldh [rP1], a
    pop bc
    ldh [$3d], a
    and d
    scf
    sub d
    adc l
    sub b
    add b
    and e
    ccf
    call nz, $c1ef
    add d
    db $e4
    nop
    ld h, l
    and d
    rst $38
    rst $38
    sub a
    and e
    cp d
    and $ef
    pop bc
    add hl, sp
    and e
    dec h
    ld [c], a
    ld b, e
    sbc a
    nop
    ld a, h
    and h
    ld [$31a5], sp
    and a
    nop
    cp a
    dec l
    ld h, h
    ld b, c
    and [hl]
    push bc
    add h
    db $ec
    add e
    nop
    nop
    cp a
    push hl
    db $e4
    ld c, a
    and b
    rst $38
    add $7a
    add l
    dec a
    sbc a
    jp Jump_000_3651


    add [hl]

Jump_05f_5560:
    nop
    add b
    ld a, a
    inc bc
    ld [hl], l
    db $fd
    ld e, a
    jp $c05d


    ei
    ld e, e
    ccf
    add b
    rra
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    cp a
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
    add b
    rst $18
    nop
    rst $38
    rst $38
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
    nop
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
    ld b, e
    rst $38
    ld a, [$00ff]
    add b
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec a
    rst $38
    ld a, [$80ff]
    rlc b
    nop

Jump_05f_55c6:
    nop
    ccf
    add hl, de

jr_05f_55c9:
    add hl, de
    add hl, de
    ld h, $27
    jr z, jr_05f_55c9

    rst $38
    db $f4
    push af
    ccf
    ld l, $29
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld a, [$f4ff]
    push af
    ccf
    inc [hl]
    cpl
    jr nc, jr_05f_5613

    ld [hl-], a
    inc sp
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

jr_05f_5613:
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
    ldh a, [$fd]
    db $e3
    add b
    rst $18
    add b
    ld d, l
    di
    cp a
    db $e3
    add b
    rst $18
    ld h, c
    ld hl, sp-$47
    ret nz

    add b
    rst $18
    ld c, c
    db $f4
    add hl, de
    rst $00
    add hl, de
    jr nz, @+$23

    dec a
    ei
    ld c, c
    ld sp, hl
    call nz, Call_000_22e1
    inc hl
    ldh a, [$bc]
    db $e3
    add b
    rst $18
    sub d
    ret


    adc d
    pop hl
    jr nz, jr_05f_5674

    ld [hl+], a
    inc hl
    ccf
    ld a, [de]
    dec de
    inc h
    dec h
    ld a, [de]
    dec de
    cp h
    pop hl
    add b
    rst $18
    ld hl, sp-$6e
    add $4d
    ldh [$8a], a
    pop hl
    ld [hl+], a
    inc hl
    inc h
    dec h
    inc e
    ld a, a
    dec e
    add hl, de
    add hl, de
    inc e
    dec e
    inc h
    dec h

jr_05f_5674:
    add hl, sp
    db $e4
    ld [hl], b
    add b
    db $dd
    jp $8ae6


    pop hl
    jp z, Jump_000_19e0

    ld e, $1f
    db $fc
    ld [c], a
    ret nz

    ld a, l
    db $e3
    add b
    rst $18
    ld c, [hl]
    and b
    jp $8ae4


    ldh [$ca], a
    ldh [rNR24], a
    add hl, de
    ld l, a
    ld d, $18
    inc d
    ld d, $7d
    db $e3

jr_05f_569a:
    jr nz, @+$23

    add b
    sbc $e0
    jp nc, $8aa1

    pop hl
    jp $86e1


    ldh [rSCX], a
    ldh [rNR21], a
    inc de
    ld de, $110f
    inc de
    jr jr_05f_56c7

    ld a, c
    pop hl
    or a
    pop bc
    add b
    jp c, $80d1

    pop bc
    ld d, $94
    ldh [$fb], a
    pop hl
    ld c, c
    pop hl
    ld b, e
    pop hl
    pop bc
    ldh [rNR10], a
    db $10

jr_05f_56c7:
    ld [c], a
    cp [hl]
    ldh [rNR21], a
    ld a, $e0
    and a
    ld [c], a
    add b
    reti


    add hl, de
    ld d, $14
    ld l, a
    inc de
    inc de
    inc d
    inc d
    ei
    ld [c], a
    ld d, $16
    db $fc
    ldh [rIE], a
    add hl, de
    add hl, de
    rla
    ld de, $0312
    inc bc
    ld [$1207], sp
    ld de, $3115
    pop hl
    or a
    or e
    jr jr_05f_569a

    call z, $c2e0
    ldh [$cd], a
    ld de, $e0bc
    inc de
    inc de
    ld c, b
    pop hl
    or l
    ldh [rNR10], a
    dec b
    ccf
    nop
    nop
    nop
    dec b
    db $10
    inc de
    ld a, $e0
    or a
    and c
    ld b, h
    nop
    or a
    rst $10
    add [hl]
    ld d, $d0
    pop bc
    or [hl]
    ld [c], a
    or l
    ldh [rNR11], a
    ret nz

    db $e4
    add e
    ld de, $b717
    and c
    add b
    reti


    ld c, [hl]
    xor b
    adc b
    jp nz, $e370

    inc de
    scf
    ld de, $0604
    ld b, b
    pop hl
    inc de
    ld d, $b7
    and c
    nop
    cp a
    ld [hl], b
    adc h
    ld h, b
    db $10
    and b
    ld b, l
    jp $c242


    inc de
    db $10
    ld c, $c0
    jp $0000


    db $e4
    nop
    cp a
    db $10
    and b
    ld b, l
    jp $a2ff


    cp c
    ret nz

    rst $28
    ret nz

    add d
    ldh [$30], a
    nop
    db $e3
    add b
    jp c, Jump_05f_6392

    adc d
    and c
    jr nz, jr_05f_5781

    adc b
    and b
    rst $38
    and e
    nop
    cp l
    pop hl
    add d
    db $e3
    nop
    jp nz, Jump_05f_7f80

    ret


    ld b, c
    adc h
    add b
    ld c, c
    add b
    cp d
    ld [c], a
    nop
    ld a, c
    and e
    add d
    pop bc
    ld sp, $80a1
    ld a, a
    adc h
    ld h, d
    ret nc

jr_05f_5781:
    add b
    ld c, c
    add b
    cp d
    ld [c], a
    nop
    ld a, c
    and d
    xor a
    add h
    nop
    cp a
    adc h
    ld h, a
    adc l
    add b
    cp d
    db $e3
    inc [hl]
    pop hl
    xor a
    add d
    nop
    ld a, d
    ld [hl], h
    ld e, $5a
    ld [hl], a
    db $e3
    db $ec
    add e
    add b
    ld a, a
    jp $c452


    db $e3
    add b
    ld a, a
    nop
    jp $bd57


    ld e, e
    ld e, e
    ccf
    add b
    rra
    ld d, l
    ccf
    nop
    ld e, a
    ld a, [$00ff]
    ld e, a
    nop
    ld a, [$80ff]
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
    add b
    rst $18
    ld e, e
    rst $38
    add b
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$00ff]
    add b
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$00ff]
    add b
    rst $18
    ld a, [$5bff]
    rst $38
    add b
    rst $18
    ld d, l
    rst $38
    add b
    rst $18
    ld a, [$80ff]
    rst $18
    nop
    ld a, [$80ff]
    rst $18
    ld a, [$e8ff]
    db $eb
    nop
    nop
    nop
    ld sp, hl
    nop
    rst $38
    rst $38
    xor $ed
    ld d, $10
    rla
    ld h, $20
    rrca
    daa
    jr nc, jr_05f_584e

    scf
    push de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $30
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    inc [hl]
    ld e, b
    ret nc

    ld e, e
    add $60
    pop hl
    ld h, b
    sbc l
    dec c
    rst $38
    cp $0e
    ld c, $0e
    db $db
    rst $38
    ret


    pop af
    ld l, $00
    ret nz

    add sp, -$0d
    ldh [$b9], a
    rst $38
    sub e
    ei
    ret nz

    db $e4
    xor b
    and $c0

jr_05f_584e:
    or $de
    db $ed
    nop
    db $76
    db $e4
    add b
    and $be
    di
    ld d, b
    db $e3
    inc de
    db $e3
    ld b, h
    pop hl
    or [hl]
    ld [c], a
    ld c, d
    db $e4
    nop
    adc h
    ld [$f680], a
    jp z, $dee5

    db $e3
    ret


    call nz, $e6f0
    pop hl
    rst $20
    dec b
    push af
    nop
    ld c, d
    db $ed
    ret nz

    and $7d
    rst $00
    ld h, c
    push hl
    cp d
    sbc $f6
    set 0, b
    rst $38
    ld d, l
    db $ed
    ld c, $71
    push bc
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    add hl, sp
    ret nz

    db $f4
    call nz, $ffc0
    ld d, l
    rst $00
    ei
    ld c, $2e
    call nz, $6ee1
    dec bc
    dec bc
    dec bc
    ld c, [hl]

jr_05f_589c:
    inc d
    add hl, bc
    ei
    rra
    push de
    ld c, $c4
    pop hl
    dec bc
    jp z, $bfe1

    ldh [$ab], a
    push hl
    ld h, h
    inc b
    jp c, $abb7

    ld l, [hl]
    call c, $bde3
    pop hl
    ld c, [hl]
    ld l, $2f
    jp Jump_05f_6af0


    xor b
    sbc b
    cp d
    ld d, b
    and c
    pop bc
    ldh [$0b], a
    inc c
    inc l
    dec bc
    rrca
    dec bc
    inc c
    inc c
    inc l
    ld a, [hl]
    db $e4
    ld [hl], $c7
    db $eb
    sub l
    cp l
    and a
    ld a, [bc]
    add d
    pop hl
    inc c
    push bc
    ldh [$2c], a
    db $fc
    pop hl
    cp a
    pop hl
    cp d
    pop bc
    jr jr_05f_589c

    call z, $a581
    add a
    and h
    dec bc
    dec c
    push bc
    ldh [$fe], a
    db $e4
    inc l
    inc c

jr_05f_58ef:
    ldh [$39], a
    ldh [$3c], a
    ldh [$c1], a
    and l
    or a
    or a
    add b
    rst $20
    dec bc
    dec c
    ld l, h
    ld b, $c0
    and $6c
    ld c, h
    ld sp, hl
    ret nz

    cp d
    jp nz, $da78

    ld e, e
    ret z

    jp Jump_05f_7ec1


    add b
    db $e3
    ld l, h
    ld l, h
    ld c, h
    ld l, h
    ld l, h
    dec l
    pop bc
    ldh [$78], a
    ld a, c
    jp nz, $ffc0

    db $10
    and e
    ld l, [hl]
    dec bc
    dec c
    dec bc
    inc b
    pop hl
    inc e
    pop bc
    ldh [rIE], a
    and b
    dec l
    dec l
    dec l
    jr c, jr_05f_58ef

    dec a
    pop hl
    and d
    add e
    cp b
    ccf
    sub e
    ret nz

    add sp, $08
    pop bc
    ld c, h
    ld c, h
    inc c
    add l
    ld [c], a
    dec c
    inc bc
    dec c
    dec l
    add b
    ld [c], a
    xor l
    ldh [$7b], a
    adc c
    xor a
    xor a
    ret nz

    jp hl


    ld b, $c2
    ld bc, $850c
    ld [c], a
    cp $a0
    ld [hl], d
    ldh [$f8], a
    and c
    db $ed
    and d
    di
    ld l, l
    xor h
    ld [hl], c
    ldh [$4e], a
    and b
    add a
    and c
    adc c
    ret nz

    ld b, [hl]
    pop hl
    ld a, c
    and c
    dec bc
    ld c, $2e
    rst $00
    ld l, $2e
    ld l, [hl]
    ld e, $ab
    ld [de], a
    ld [hl], d
    ld a, [bc]
    ld h, e
    ld c, [hl]
    ld l, $1c
    adc a
    pop hl
    add b
    ldh [$0b], a
    dec bc
    ld c, h
    add b
    ret nz

    pop bc

Jump_05f_5983:
    ldh [$72], a
    and e
    ld [c], a
    ld sp, hl
    add b
    ld c, l
    add $b3
    dec h

jr_05f_598d:
    ld [$c200], a
    dec bc
    ld c, h
    inc l
    ld e, $c3
    pop hl
    inc l
    dec bc
    dec c
    inc c
    pop bc
    db $e3
    cp l
    ld b, e
    ret nz

    di
    ld [$6920], sp
    ret nz

    and e
    pop bc
    pop hl
    dec bc
    rst $00
    and b
    jr c, jr_05f_598d

    rst $00
    ret nz

    ld a, [hl]
    add [hl]
    ret z

    add b
    ld [c], a
    cp h
    ld d, d
    inc e
    adc c
    ld c, $82
    pop hl
    rst $38
    add b
    dec c
    dec bc
    inc bc
    dec hl
    dec c
    ld a, b
    ldh [$f2], a
    ld b, h
    ld l, $41
    ld b, b
    db $e4
    ld a, d
    ld d, b
    add b
    db $eb
    dec l
    inc c
    cp [hl]
    jp $2b4b


    ld b, c
    ldh [$0d], a
    ld b, [hl]
    xor c
    cp h
    ld e, e
    inc c
    adc c
    ld h, l
    ret nz

    push hl
    dec c
    dec l
    ret nz

    add sp, $06
    ld e, c
    dec de
    ld b, l
    dec d
    ld b, e
    nop
    set 0, c
    ld b, b
    ld [c], a
    jp $80a0


    ret nz

    add c
    add l
    or d
    and b
    db $f4
    dec h
    sbc c
    ld a, [hl-]
    ld [bc], a
    ret nz

    pop hl
    ld l, h
    nop
    pop hl
    jp $f980


    ld h, b
    dec sp
    and b
    jp nz, Jump_05f_5983

    add hl, sp
    nop
    inc e
    ld h, l
    dec d
    ld h, c
    nop
    ret nz

    rst $38
    jp $c2bd


    rst $30
    and d
    ld a, [$c042]
    rst $38
    nop
    add hl, de
    inc h
    cp a
    and b
    add [hl]
    ldh [rSCX], a
    jp nz, $a0c1

    cp l

jr_05f_5a27:
    and d
    cp a
    ld [bc], a
    ld b, c
    ld a, b
    nop
    sbc c
    inc bc
    adc e
    ld b, $03
    push bc
    ld sp, hl
    add d
    push af
    add c
    ld a, $3d
    ld d, b
    ld h, $05
    ld [hl+], a
    nop
    ld a, a
    pop hl
    adc $c3
    ld bc, $c0e2
    ld [c], a
    add [hl]
    cp b
    ld l, l
    ld b, $7e
    ld l, b
    ccf
    ld [c], a
    ld [bc], a
    ld b, h
    add c
    inc c
    ld [hl], h
    and d
    cp h
    xor b
    dec a
    cpl
    dec hl
    dec bc
    cp $44
    ld b, l
    ld h, c
    add d
    rlca
    add c
    inc c
    or e
    and c
    inc a
    and [hl]
    ld e, b
    dec b
    ld [$d96f], sp
    jr z, @+$10

    add b
    ld a, l
    ld h, c
    dec bc
    ld h, b
    ld b, c
    pop bc
    cp b
    add b
    ret nz

    add sp, -$80
    di
    call nz, Call_05f_6e0d
    nop
    ld bc, $bc41
    ld h, d
    ld a, [hl]
    add c
    ld a, a
    jp nz, $473d

    inc b
    ld d, h
    ld b, c
    ld b, [hl]
    ld b, l
    ld [hl+], a
    add b
    ret nz

    ld [c], a
    add a
    ld h, e
    jr c, jr_05f_5ab6

    db $fd
    and h
    ld h, [hl]
    ld b, $c3
    jr jr_05f_5a27

    nop
    dec hl
    inc d
    adc h
    ld h, d
    ccf
    dec h
    dec bc
    ei
    ld b, b
    inc c
    db $76
    pop bc
    cp h
    and h
    ret nz

    ld sp, hl
    ld [$8222], sp
    adc h
    db $e4
    ld a, [$0d43]
    add b

jr_05f_5ab6:
    ld b, d
    ld [hl], c
    add d
    ld a, [hl]
    ld b, d
    ld a, [$0a3b]
    ret nz

    ld [$be2b], a
    db $e4
    dec l
    ld a, d
    ld [hl+], a
    or h
    ld bc, $2701
    ccf
    adc d
    db $10
    ld l, b
    rlca
    and d
    ld h, d
    ld b, c
    ldh [$88], a
    nop
    dec l
    ld b, c
    inc bc
    inc a
    nop
    dec [hl]
    inc hl
    add c
    inc l
    ret nz

    ld [c], a
    rst $10

jr_05f_5ae1:
    ld c, e
    jp $0113


    db $e3
    pop bc
    db $e4
    ld b, l
    jr nz, jr_05f_5b57

    ld bc, $3c4c
    jr nz, jr_05f_5ae1

    add b
    cp c
    ld b, l
    cp a
    ld [hl], h
    dec h
    ld b, l
    pop bc
    call nz, $e040
    ld [bc], a
    ret nz

    db $e4
    dec c
    inc a
    jr nz, @-$40

    ld hl, $006a
    ld [bc], a
    ld h, d
    add b
    inc [hl]
    cp e
    and e
    ld a, $43
    jr nz, jr_05f_5b7a

    ld c, e
    ld l, e
    dec bc
    ld l, e
    db $fd
    pop hl
    add c
    jp $ba60


    jp nz, $e482

    cp $14
    jp $8386


    ld [hl+], a
    dec hl
    ld l, e
    push bc
    pop hl
    nop
    jp nz, $82e2

    inc h
    add hl, sp
    pop bc
    add c
    inc h
    db $db
    dec b
    ret nz

    ld hl, sp+$04
    add $02
    jp nz, $bf02

    and e
    ld c, $81
    ld hl, $87fc
    add b
    rst $30
    add h
    ld h, c
    ld a, [bc]
    db $e3
    ld c, e
    db $e3
    nop

jr_05f_5b48:
    ld b, a
    jr nz, jr_05f_5b48

    pop hl
    add $c6
    jp nz, Jump_000_2712

    add hl, bc
    ld b, e
    inc hl
    adc $02
    ld b, a

jr_05f_5b57:
    ld h, $00
    sbc $27
    ld b, [hl]
    ld d, [hl]
    add [hl]
    ld h, c
    ld [bc], a
    ld h, $cc
    ld [$85e6], sp
    ld b, a
    and d
    add $33
    nop
    ld a, a
    xor [hl]
    adc l
    inc bc
    inc de
    call nz, $ebc0
    ld [bc], a
    add h
    ret nz

    ld [hl], $1b
    add c
    ld a, a
    ld [c], a

jr_05f_5b7a:
    nop
    inc de
    call nz, $e980
    rst $38
    cp $9f
    push bc
    ld b, b
    nop
    inc de
    call z, Call_000_06ca
    add $33
    nop
    rst $38
    adc e
    cp h
    pop bc
    inc de
    push bc
    rst $10
    dec c
    add [hl]
    dec [hl]
    ldh a, [$8f]
    rrca
    ld l, d
    and b
    db $ec
    nop
    ld b, e
    or h
    ldh [rHDMA1], a
    add b
    rst $38
    cp h
    ld l, a
    sub h
    ld a, [hl+]
    res 6, [hl]
    inc a
    ld [hl], h
    ld h, b
    ld d, b
    nop
    jp nz, Jump_05f_6dbf

    sbc $c2
    cp a
    ld h, [hl]
    ld l, b
    or h
    ld a, [bc]
    adc b
    add hl, hl
    add b
    rst $38
    ld [hl], h
    rrca
    nop
    call nz, $c0bf
    rst $38
    call $5bff
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    adc h
    rst $28
    nop
    nop
    nop
    sbc l
    and b
    rst $38
    cp $dc
    db $dd
    sbc $db
    rst $38
    ldh a, [$ef]
    call nc, $d5bb
    call nc, $e3db
    rst $18
    ldh [$e1], a
    ld a, [c]
    ldh [$d4], a
    rst $30
    and b
    ld [c], a
    db $e3
    set 7, a
    and b
    sub $d7
    ret c

    and $db
    push af
    db $e4
    push hl
    xor b
    db $eb
    or e
    ld a, [c]
    reti


    jp c, Jump_000_0cdb

    sbc $ee
    db $76
    db $e4
    and $e7
    ld h, [hl]
    db $ed
    ld d, b
    ldh a, [rNR13]
    db $e3
    ld b, h
    pop hl
    nop
    db $76
    pop hl
    ld c, d
    push hl
    adc h
    ld [$e035], a
    ld c, $f7
    inc de
    push hl
    db $76
    db $e3
    ld c, d
    db $e4
    nop
    adc $e3
    xor e
    push hl
    rst $08
    sub $28
    db $eb
    adc c
    call nz, $e24a
    ld [$abc6], a
    db $e3
    nop
    or [hl]
    sbc $95
    pop bc
    adc c
    pop bc
    ld a, h
    push bc
    ld [hl], h
    db $e4
    inc [hl]
    push bc
    or [hl]
    call nz, $f1ca
    ld a, h
    inc hl
    db $e3
    rst $18
    and $9f
    sbc l
    sbc l
    sbc l
    sbc a
    db $fd
    and e
    ld h, b
    add hl, bc
    ld [c], a
    inc [hl]
    jp nz, $c7b6

    ld e, a
    jp nc, $c395

    call nc, $c4d4
    pop hl
    ccf
    sbc h
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    sbc h
    sbc a
    ret


    db $e4
    cp $fd
    db $f4
    ld e, a
    call nz, $a4c7
    sbc a
    call nz, Call_05f_46e1
    ld a, c
    ld a, d
    ld a, h
    pop hl
    ld a, l
    cp a
    ldh [$2b], a
    db $e4
    inc b
    db $db
    db $eb
    ld [$9c9f], a
    ld a, c
    rst $38
    ld a, d
    ld a, e
    ld a, e
    ld a, e
    adc a
    ld b, [hl]
    ld b, [hl]
    ld a, a
    add b
    cp a
    ldh [$73], a
    and c
    ret nz

    and d
    ld l, d
    and l
    sbc b
    cp b
    ld a, l
    and d
    pop bc
    ldh [$7e], a
    rst $38
    ld b, [hl]
    inc bc
    inc bc
    ld b, [hl]
    ld b, [hl]
    inc bc
    inc b
    ld [bc], a
    add b
    cp a
    pop hl
    ret nz

    and h
    inc b
    add $ae
    add $0d
    xor a
    ld a, l
    and c
    pop bc
    pop hl
    inc bc
    rst $38
    inc b
    dec c
    dec c
    inc b
    inc b
    dec c
    sbc e
    rrca
    ret nz

    cp a
    pop hl
    cp d
    pop bc
    xor e
    sbc d
    pop de
    add e
    res 0, c
    sub b
    add c
    sbc [hl]
    ld b, [hl]
    rst $38
    add b
    dec b
    stop
    ld bc, $9899
    sbc b
    ld a, a
    sbc b
    sbc c
    sbc c
    ld c, $05
    add c
    xor [hl]
    cp d
    ret nz

    ld b, b
    cp l
    add b
    ld [c], a
    add e
    sbc b
    and [hl]
    cp l
    or e
    sub b
    add c
    ret nz

    pop hl
    sbc c
    jp nz, $ffe0

    sub a
    sbc b
    sbc c
    nop
    ld bc, $0510
    add c
    add a
    xor a
    ld b, [hl]
    xor [hl]
    cp d
    pop bc
    ld c, d
    ld a, [c]
    add l
    sub b
    jp $8dc0


    db $fd
    dec b
    add e
    ldh [$99], a
    sbc b
    rrca
    inc b
    inc b
    inc b
    ccf
    inc bc
    add e
    add h
    ld b, [hl]
    xor [hl]
    xor a
    cp a
    pop hl
    push af
    ld a, d
    cp h
    ld h, h
    and a
    ld b, l
    ret nz

    add b
    ld b, [hl]
    ld b, $9a
    add l
    ldh [$0d], a
    db $fd
    ld [bc], a
    rst $38
    and b
    add e
    add [hl]
    add l
    ld b, [hl]
    xor a
    xor [hl]
    pop hl
    xor a
    rst $30
    and b
    pop bc
    and e
    cp a
    sub h
    ld h, h
    and a
    sbc [hl]
    ld b, [hl]
    ld b, [hl]
    cp a
    add d
    add e
    ld [bc], a
    rlca
    sbc c
    rlca
    add l
    ldh [$89], a
    rst $18
    adc b
    adc b
    add a
    add l
    xor [hl]
    add b
    ldh [rDMA], a
    xor [hl]
    db $e3
    ld b, [hl]
    sbc [hl]
    ld e, $ab
    ei
    xor h
    ld h, h
    and a
    sbc [hl]
    ld b, [hl]
    xor [hl]
    ld e, a
    add l
    add [hl]
    add e
    ld b, [hl]
    ld de, $e285
    xor [hl]
    ld a, l
    and b
    dec e
    xor a
    cp $e0
    ld b, [hl]
    xor a
    ret nc

    cp b
    and c
    ld l, c
    ld h, h
    db $fd
    adc e
    cp $ac
    ld l, h
    sbc a
    ret nc

    xor a
    ld b, [hl]
    add l
    add a
    adc b
    pop af

jr_05f_5d7c:
    ld de, $e185
    add $e1
    dec sp
    and b
    ret nc

    pop de
    pop de
    pop de
    ld h, c
    db $d3
    add a
    adc b
    db $fd
    adc l
    ld [de], a
    ld h, l
    ld a, [bc]
    ld h, e
    db $d3
    ret nc

    ld d, d
    ldh [$7e], a
    add b
    pop hl
    ld b, [hl]
    ld b, [hl]
    ld [de], a
    inc de
    inc de
    ld [de], a
    pop bc
    ldh [$a1], a
    db $d3
    dec a
    ld h, [hl]
    ld e, $72
    xor h
    ld l, c
    db $fd
    ld b, c
    jp nc, $e04d

    ld [de], a
    dec c
    ld [de], a
    jp $aee3


    ld de, $e3c1
    cp l
    ld b, b
    dec a
    ld h, c
    inc a
    sub $b0
    and b
    ld b, l
    db $fd
    ld b, c
    cp [hl]
    ret nz

    pop bc
    ldh [rDMA], a
    ld de, $81c1
    xor a
    rlca
    ld de, $d246
    xor b
    ld c, b
    inc [hl]
    add d
    cp h
    ld d, c
    and b
    ld b, b
    dec h
    ld h, d
    db $fc
    add b
    and e
    add d
    ldh [$ae], a
    ld b, [hl]
    ld de, $3080
    ld a, [hl+]
    dec b
    add c
    ld a, b
    ldh [$9e], a
    xor b
    ld c, b
    inc a
    call nz, $4f7a
    and b
    ld b, l
    add b
    and e
    ld a, l
    ld de, $a1cd
    ld de, $2c80
    jr nc, jr_05f_5d7c

    or $e0
    pop bc
    sbc [hl]
    xor b
    ld c, b
    cp h
    ld e, e
    ld b, e
    add l
    ld b, e
    ret nz

    call Call_000_11a0
    add d
    rla
    add e
    add e
    add h
    or $e0
    sbc [hl]
    xor b
    ld c, b
    sub c
    dec sp
    ld h, e
    ld b, e
    db $fc
    rst $38
    and b
    inc bc
    ret nz

    xor a
    ld b, [hl]
    ld de, $8785
    add a
    pop bc
    add l
    cp b
    ret nz

    add c
    adc b
    ld b, d
    ld b, e
    sbc c
    jr c, jr_05f_5e87

    ld hl, $469e
    ld bc, $00af
    ld [c], a
    ld b, e
    pop bc
    ld a, [$3fe0]
    ret nz

    ld a, h
    ld h, c
    ccf
    jr z, jr_05f_5e41

    sub b

jr_05f_5e41:
    db $ec
    ld b, [hl]
    dec h
    ld e, c
    ld hl, $d09f
    ld [bc], a
    pop bc
    xor a
    ld a, c
    ld a, d
    rlca
    ld a, l
    ld b, [hl]
    ld de, $a086
    rst $30
    and c
    ld a, [$8940]
    ld c, b
    xor h
    db $10
    ld hl, sp+$5c
    ld b, l
    ld e, c
    ld [hl+], a
    cp a
    and b
    ld [de], a
    ld [de], a
    ld a, c
    ld a, [hl]
    xor [hl]
    rlca
    ld a, a
    ld a, l
    ld [de], a
    pop bc
    and b
    db $fc
    pop hl
    inc bc
    and b
    xor d
    ld b, c
    xor e
    inc b
    add sp, -$51
    ld d, b
    ld e, c
    ld [bc], a
    adc e
    ld b, $d2
    add c
    and b
    add d
    add e
    xor a
    nop
    cp a
    ldh [$79], a
    and d

jr_05f_5e87:
    push af
    add b
    jp Jump_000_3e88


    ld [hl-], a
    ld e, h
    ld b, h
    dec b
    inc h
    ld a, $e0
    dec b
    ld de, $80bc
    xor a
    dec b
    add b
    or a
    and d
    add b
    pop hl
    ld h, h
    ld d, $6d

Jump_05f_5ea1:
    ld [$0522], sp
    ld h, $d2
    ld b, b
    and b
    cp h
    add b
    ld b, h
    add c
    ld de, $a274
    cp h
    xor c
    ld [$2e3d], sp
    dec hl
    dec bc
    cp $43
    xor [hl]
    ld [bc], a
    and e
    ld a, [hl-]
    ret nz

    or e
    and c
    inc bc
    add b
    ld b, b
    cp h
    xor c
    ld b, b
    adc h
    call nz, $a642
    and $7b
    nop
    jp nz, $af20

    jp z, Jump_000_0360

    ld [de], a
    ld [de], a
    cp b
    add d
    or e
    and b
    jp $bc60


    xor c
    dec a
    inc [hl]
    ld b, b
    push bc
    rrca
    sbc l
    sbc h
    xor [hl]
    xor [hl]
    ld c, h
    ld h, d
    ld b, c
    add e
    ld a, e
    pop bc
    dec a
    ld b, a
    jr nz, @-$3b

    or d
    add d
    add d
    jr nz, @-$5d

    and $60
    ld b, l
    ld hl, $8daf
    ld b, b
    ld c, h
    ld h, c
    ldh [$81], a
    ld h, c
    ld a, a
    jp $a6bc


    call nz, Call_05f_6c32
    ld [$9c9f], sp
    ld b, l
    ld a, a
    ld b, e
    ld b, c
    ld b, e
    ld b, e
    ld b, c
    xor a
    xor [hl]
    adc d
    ld b, b
    inc a
    add c
    ld h, c
    ei
    ld b, b
    ld de, $8988
    add e
    cp h
    and l
    ld a, d
    ld d, d
    db $fc
    ld l, a
    ld h, h
    daa
    and c
    sbc [hl]
    xor [hl]
    ld [hl], $3b
    dec [hl]
    dec sp
    ld l, d
    db $fd
    ldh [$ad], a
    adc d
    ld b, c
    xor [hl]
    add b
    ld b, d
    ld de, $ee46
    ld b, c
    db $e3
    sbc h
    sbc a
    ld c, b
    ld h, c
    ld [hl], d
    add hl, de
    jp $af62


    inc a
    and h
    db $dd
    ld h, h
    rst $38
    ldh [$a5], a
    inc a
    ld b, h
    ld a, l
    pop hl
    ld b, [hl]
    adc d
    rst $38
    add l
    inc bc
    inc b
    sbc c
    rlca
    ld [bc], a
    add l
    adc e
    ldh a, [$bb]
    and a
    ld [hl], a
    inc c
    ld l, b
    rlca
    ld b, e
    ld [hl+], a
    ld b, d
    dec [hl]
    ld l, c
    and e
    ld a, a
    dec [hl]
    dec [hl]
    and e
    ld l, d
    dec [hl]
    ld b, d
    xor [hl]
    ld sp, hl
    ret nz

    ld l, a
    ld b, [hl]
    add c
    dec b
    db $10

jr_05f_5f76:
    jr c, jr_05f_5f99

    inc c
    add b
    dec sp
    and c
    ret nc

    rst $10
    ld c, e
    ld a, h
    ld c, [hl]
    ld b, e
    ld [hl+], a
    ret nz

    ldh [$35], a
    rst $38
    ldh [rOCPS], a
    dec [hl]
    db $fc
    adc d
    jr nz, jr_05f_5f97

    ld b, b
    add c
    dec b
    ld c, $98
    dec c
    rlca
    adc a
    ld [bc], a

jr_05f_5f97:
    ld a, c
    adc l

jr_05f_5f99:
    ld b, [hl]
    ld a, $42
    cp a
    db $76
    and d
    ld h, h
    sbc a
    rst $18
    sbc h
    ld b, h
    inc a
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    inc a
    cp $8a
    ld hl, $46af
    adc h
    ld a, l
    ld [bc], a
    inc b
    inc bc
    add c
    ld b, [hl]
    jr nc, jr_05f_5fb9

jr_05f_5fb9:
    ld a, d
    ld b, b
    rlca
    add c
    cp c
    ld [hl], h
    cp e
    and h
    add h
    ld h, b
    ld b, l
    jp c, $c4c0

    ld [hl], $80
    pop hl

jr_05f_5fca:
    ld b, [hl]
    ld b, [hl]
    cp e
    add c
    ld a, c
    ld a, d
    ld h, c
    adc a
    dec sp
    ld b, d
    add d
    ld d, h
    or b
    ld h, h
    call nz, $ae63
    ld b, [hl]
    ld b, b
    ret nz

    db $e3
    xor [hl]
    xor [hl]
    db $fd
    ldh [$88], a
    ld [hl+], a
    add d
    jr nz, jr_05f_5f76

    ld a, e
    adc a
    nop
    db $fc
    inc h
    inc a
    and e
    ld b, d
    ld l, $03
    add h
    inc bc
    inc hl
    adc [hl]
    ld hl, $c0c7
    db $fd
    pop hl
    inc b
    jp nz, Jump_05f_7fa4

    ld [hl+], a
    db $d3
    ld h, c
    ld b, c
    dec de
    inc hl
    ld b, d
    dec hl
    or b
    ld h, a
    ld l, d
    ld hl, $8400
    ld h, c
    ld b, h
    and b
    adc $02
    ld a, e
    and b
    ld b, a
    ld hl, $e1fd
    ld a, a
    inc hl
    ld b, d
    inc [hl]
    nop
    db $ed
    xor d
    ld b, e
    jr nz, @+$4c

    db $e3
    rlc c
    ld b, a
    inc h
    inc e
    and [hl]
    add $32
    dec l
    ld b, [hl]
    nop
    ld [bc], a
    ld h, $cc
    ld [$2368], sp
    adc a
    ld b, d
    rst $38
    ld b, d
    cp [hl]
    rst $30
    ld [bc], a
    jr z, jr_05f_5fca

    ld [bc], a
    nop
    ld c, l
    db $e4
    ret


    ld b, d
    ld [c], a
    ld b, d
    adc e
    ld bc, $8315
    cp h
    rst $30
    add h
    ld h, c
    add c
    ld b, c
    nop
    inc de
    push bc
    ld d, l
    inc b
    call z, $fd92
    or c
    sbc e
    ld h, d
    ld b, b
    nop
    inc de
    call z, Call_05f_61c4
    db $10
    ld b, d
    ld [hl+], a
    add $33
    pop af
    rlca
    ld e, a
    jp $90d3


    jp nz, Jump_000_1195

    ld b, c
    dec d
    nop
    ldh a, [$8f]
    inc de
    push bc
    rlc d
    dec b
    ld h, $37
    db $f4
    ld b, [hl]
    ld [bc], a
    ld a, h
    ld h, [hl]
    ld d, h
    add hl, hl
    nop
    rrc h
    inc bc
    sbc c
    ld e, a
    inc h
    ld e, d
    ld bc, $2054
    dec d
    call $ae4b
    ld a, h
    ld [hl], h
    nop
    db $fd
    ld [hl+], a
    and b
    ld d, b
    xor l
    ldh a, [rIE]
    rst $38
    xor a
    ld hl, $0453
    ld c, e
    and d
    cp [hl]
    cp $00
    ld e, e
    jp z, $034e

    adc b
    jr z, jr_05f_60b0

    sub h
    ld [hl], h
    dec d
    ld c, [hl]
    inc bc

jr_05f_60b0:
    call nz, $74bf
    ld [de], a
    nop
    sbc b
    add [hl]
    sub b
    ld e, c
    ld [hl], h
    or e
    adc $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ld h, d
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
    ld h, $0f
    ld [bc], a
    ld bc, $1028
    ld [bc], a
    ld [bc], a
    daa
    ld de, $0302
    add hl, hl
    ld de, $0402
    jr z, jr_05f_6107

    ld [bc], a
    dec b
    dec h
    inc de
    ld [bc], a
    ld b, $27
    inc de
    ld [bc], a
    rlca
    ld a, [hl+]
    inc de
    ld [bc], a
    ld [$1416], sp
    ld [bc], a
    add hl, bc

jr_05f_6107:
    ld hl, $0214
    ld a, [bc]
    jr jr_05f_6123

    ld [bc], a
    dec bc
    ld [hl+], a
    rla
    ld [bc], a
    inc c
    dec de
    add hl, de
    ld [bc], a
    dec c
    ld a, [de]
    ld a, [de]
    ld [bc], a
    ld c, $1c
    ld a, [de]
    ld [bc], a
    rrca
    inc h
    ld a, [de]
    ld [bc], a
    db $10

jr_05f_6123:
    dec de
    dec de
    ld [bc], a
    ld de, $1c17
    ld [bc], a
    ld [de], a
    dec de
    dec e
    ld [bc], a
    inc de
    ld hl, $021d
    inc d
    dec e
    rra
    ld [bc], a
    dec d
    ld e, $20
    ld [bc], a
    ld d, $21
    ld [hl+], a
    ld [bc], a
    rla
    ld a, [de]
    inc hl
    ld [bc], a
    jr jr_05f_6164

    inc hl
    ld [bc], a
    add hl, de
    daa
    inc hl
    ld [bc], a
    ld a, [de]
    dec de
    inc h
    ld [bc], a
    dec de
    dec e
    inc h
    ld [bc], a
    inc e
    jr jr_05f_617a

    ld [bc], a
    dec e
    add hl, de
    dec h
    ld [bc], a
    ld e, $1c
    dec h
    ld [bc], a
    rra
    dec de
    ld h, $02
    jr nz, jr_05f_6182

jr_05f_6164:
    ld h, $02
    ld hl, $2620
    ld [bc], a
    ld [hl+], a
    inc e
    daa
    ld [bc], a
    inc hl
    dec e
    daa
    ld [bc], a
    inc h
    rra
    daa
    ld [bc], a
    dec h
    inc d
    jr z, jr_05f_617c

jr_05f_617a:
    ld h, $1e

jr_05f_617c:
    jr z, @+$04

    daa
    ld hl, $0228

jr_05f_6182:
    jr z, @+$21

    add hl, hl
    ld [bc], a
    add hl, hl
    jr nz, jr_05f_61b2

    ld [bc], a
    ld a, [hl+]
    ld e, $2a
    ld [bc], a
    dec hl
    dec e
    dec hl
    ld [bc], a
    inc l
    rra
    dec hl
    ld [bc], a
    dec l
    ld hl, $022b
    ld l, $1e
    inc l
    ld [bc], a
    cpl
    dec e
    dec l
    ld [bc], a
    jr nc, @+$21

    dec l
    ld [bc], a
    ld sp, $2d23
    ld [bc], a
    ld [hl-], a
    inc de
    ld l, $02
    inc sp
    jr @+$30

    ld [bc], a

jr_05f_61b2:
    inc [hl]
    add hl, de
    ld l, $02
    dec [hl]
    dec de
    ld l, $02
    ld [hl], $1c
    ld l, $02
    scf
    rla
    cpl
    ld [bc], a
    jr c, jr_05f_61de

Call_05f_61c4:
    cpl

Jump_05f_61c5:
    ld [bc], a
    add hl, sp
    dec e
    cpl
    ld [bc], a
    ld a, [hl-]
    ld e, $2f
    ld [bc], a
    dec sp
    dec d
    jr nc, jr_05f_61d4

    inc a
    add hl, de

jr_05f_61d4:
    jr nc, jr_05f_61d8

    dec a
    inc e

jr_05f_61d8:
    jr nc, @+$01

    rst $38
    rst $38
    db $e4
    ld h, c

jr_05f_61de:
    ld e, $66
    adc l
    ld l, e
    xor b
    ld l, e
    sbc l
    dec c
    rst $38
    pop hl
    ld c, $0e
    ld l, $f8
    ld [c], a
    push af
    ld [c], a
    ld c, $01
    dec c
    ld a, [c]
    rst $20
    ld hl, sp-$19
    db $ec
    pop af
    pop hl
    jp hl


    cp [hl]
    push hl
    ret nz

    pop hl
    db $ec
    db $ed
    db $10
    rst $38
    rst $38
    add b
    db $e3
    push bc

Jump_05f_6206:
    pop hl
    add b
    ld [c], a
    ld l, [hl]
    rst $38
    ldh [$6e], a
    pop hl
    ld l, b
    push hl
    ldh a, [$ac]
    db $e3
    and l
    add sp, $7b
    push af
    ld b, b
    ld [c], a
    ld c, $6e
    inc c
    inc c
    rrca
    inc l
    dec bc
    ld c, [hl]
    ld l, $38
    rst $20
    ret nz

    rst $38
    reti


    jp hl


    pop bc
    ldh [rIF], a
    inc c
    inc l
    inc l
    inc l
    cp a
    ldh [$30], a
    push hl
    ret nz

    db $ed
    ld h, $fa
    inc de
    ld c, $2c
    ret nz

    ldh [$7e], a
    ldh [$0c], a
    ret nz

    rst $20
    push hl
    adc $e4
    sub $fe
    ld [hl], a
    ret nz

    ld c, $0c
    inc c
    ld l, h
    ld c, h
    ld l, h
    ld c, h
    jp $0c4c


    ld a, a
    ld [c], a
    ld c, e
    di
    ld e, [hl]
    adc $3e
    rst $00
    ld c, $6e
    sbc $c2
    ldh [$0a], a
    ld a, [hl+]
    dec bc
    ld l, h
    ld a, $e0
    ld c, [hl]
    ld c, [hl]
    pop hl
    ld l, $70
    jp $df75


    sub h
    rst $00
    call nz, Call_000_2be0
    ld c, d
    ld a, [bc]
    ccf
    ld l, d
    ld l, h
    ld c, h
    inc l

jr_05f_6279:
    inc l
    dec bc

Jump_05f_627b:
    cp d
    pop bc
    jp nz, Jump_05f_7cc3

    cp [hl]
    db $fd
    sub h
    rst $00
    ld c, d
    ld c, d
    ld c, e
    dec bc
    dec hl
    cp [hl]
    ldh [$c0], a
    cp e
    jp nz, $c279

    add hl, hl
    pop bc
    ld sp, $f6c3
    cp a
    add b
    ldh [$0a], a
    ld l, d
    inc hl
    ld c, e
    dec bc
    rst $38
    ldh [$fe], a
    ret nz

    ld a, c
    ret nz

    dec bc
    ret nz

    db $e3
    add hl, sp
    rst $00
    db $ec
    dec [hl]
    ld hl, sp-$7c
    and d
    ld c, [hl]
    ld l, $bf
    pop hl
    ld l, e
    dec hl
    dec bc
    dec sp
    dec c
    ld l, h
    jr c, jr_05f_6279

    ld c, h
    ld c, $6e
    jr nz, @-$31

    di
    rst $10
    db $fc
    ld b, h
    and e
    cp a
    ldh [$2a], a
    dec c
    ld l, e
    dec bc
    dec hl
    dec c
    add [hl]
    jr c, @-$3e

    ld l, h
    ld c, h
    dec sp
    call $91f6
    dec c
    and l
    inc b
    and h
    ld c, [hl]
    dec de
    ld l, $0b
    ret nz

    ldh [$0b], a
    dec bc
    add b
    ldh [$79], a
    and d
    db $eb
    add a
    jr z, jr_05f_62f3

    push de
    ret nz

    db $eb
    cp a
    pop hl
    dec hl
    ret nz

    pop hl
    ld c, h
    ld a, c
    and d

jr_05f_62f3:
    cp [hl]
    jp nz, Jump_05f_7bf8

    and [hl]

Jump_05f_62f8:
    adc l
    db $ec
    di
    di
    ld c, $0d
    ld l, e
    ld l, e
    ld a, [bc]
    dec bc
    dec bc
    dec c
    cp [hl]
    jp nz, $ee0c

    ret nz

    dec sp
    xor a
    push af
    sub c
    ld a, [$3463]
    ret nz

    db $e3
    ccf
    pop hl
    dec c
    cp [hl]
    jp nz, Jump_000_0d0c

    inc a
    db $e3
    ret nz

    rst $38
    ld b, h
    cp b
    ld h, e
    ld a, h
    jp Jump_000_3f0d


    pop hl
    cp [hl]
    pop bc
    or [hl]
    add b
    inc c
    ld [hl], a
    and c
    ld [$83b2], sp
    cp e
    sbc e
    ld a, d
    ld h, [hl]
    ld c, l
    cp l
    ret nz

    ret nz

    pop hl
    or a
    add d
    cp b
    and e
    ld hl, sp-$54
    pop hl
    cp e
    sbc c
    ld h, h
    adc b
    ld c, $0d
    ld c, l
    ld c, l
    ld c, $02
    cp [hl]
    and b
    ld l, e
    ld b, b
    db $e3
    cp [hl]
    db $e3
    ld a, [hl-]
    push hl
    ld d, c
    ret


    add hl, de
    ld l, c
    ret nz

    ld [$ee24], a
    ld b, b
    pop bc
    ldh [rWX], a
    ld b, b
    ld [c], a
    ld a, l
    and $0d
    push af
    add c
    add hl, sp
    or [hl]
    inc e
    ld b, h
    ld h, l
    ret nz

    rst $20
    dec bc
    dec l
    dec c
    ei
    ld h, b
    cp [hl]
    rst $20
    ret nz

    pop hl
    ld c, b
    ld b, h
    rst $08
    ld b, b
    xor [hl]

Jump_05f_637a:
    add b
    and $0d
    ld bc, $fbe5
    call nz, $bc0c
    add $02
    nop
    cp d
    ld c, l
    ld l, $43
    cp l
    add b
    pop bc
    ld [$602c], a
    ld [hl-], a
    add l

Jump_05f_6392:
    ld b, c
    di
    adc b
    push hl
    push hl
    ret nz

    ldh [$fd], a
    ld hl, $7f0d
    add c
    ld a, l
    add c
    db $fd
    add $4c
    ld h, b
    xor $a0
    ld [hl], h
    and l
    cp $39
    ret nz

    db $e4
    ld a, a
    and b
    dec hl
    dec hl
    jr c, jr_05f_6413

    nop
    cp e
    and $ae
    and c
    ret nz

    or $54
    ld b, a
    rst $08
    ld h, d
    ld a, $a0
    db $fc
    ld h, c
    ld sp, hl
    add b
    adc b
    cp e
    ldh [$7a], a
    db $e3
    ld [hl], $a0
    dec bc
    ret nz

    push hl
    jr nc, jr_05f_644d

    ld a, e
    jr nz, jr_05f_641d

    rst $08
    ld c, e
    ld c, e
    dec bc
    ld a, [bc]
    cp e
    ld [c], a
    scf
    db $e4
    inc l
    dec c

jr_05f_63dd:
    pop af
    dec c
    or d
    ld h, b
    sbc b
    ld h, $2f
    inc sp
    dec l
    dec l
    dec l
    ld l, $eb
    ld l, $2e
    sub d
    and e
    ld l, e
    ld a, b
    ld h, d
    dec bc
    ld a, [bc]
    dec hl
    dec c
    ld c, e
    ld [hl], e
    ld h, d
    inc c
    dec bc
    ld h, [hl]
    jr nz, jr_05f_63dd

    ld [bc], a
    db $dd
    ld [de], a
    ld b, $23
    call nz, $e4c0
    ld d, c
    and d
    ld a, [bc]
    ld a, e
    pop hl
    cp l
    ld [c], a
    dec sp
    pop hl
    ld c, h
    ld c, h
    add c
    dec bc
    ld [hl], e

jr_05f_6413:
    ld h, b
    ret nz

    db $e4
    add d
    db $76
    ret nz

    push hl
    jr c, jr_05f_647c

    ld sp, hl

jr_05f_641d:
    ld [c], a
    dec c
    db $10
    ld a, h
    push hl
    ldh a, [rLCDC]
    inc [hl]
    ld h, c
    and b
    inc b
    ld c, l
    add hl, de
    jp Jump_000_0942


    add [hl]
    inc bc
    inc bc
    ld l, $2e
    ret nz

    db $e4
    ld [hl], $62
    ld [hl+], a
    ld bc, $c2b7
    ld [hl-], a
    add b
    jp $80c1


    ret nz

    ld a, [c]
    ld [bc], a
    ret


    ret nz

    pop hl
    db $fd
    ret nz

    ld l, l
    inc b
    dec [hl]
    nop
    dec [hl]
    ld h, e

jr_05f_644d:
    dec bc
    inc bc
    dec bc
    ld c, e
    or b
    and $5e
    add e
    ret nz

    jp hl


    or l
    ret


    add h
    push hl
    ld a, d
    push bc
    sub e
    dec c
    dec bc
    ld [hl], l
    ld h, c
    ret nz

    ldh [$2d], a
    xor [hl]
    and b
    db $f4
    ld hl, $284d
    add l
    db $eb
    or [hl]
    cp d
    ld a, l
    ld [bc], a
    dec hl
    db $f4
    ld b, c
    ld l, e
    ld l, b
    ret nz

    pop bc
    jp Jump_05f_7f00


    rra

jr_05f_647c:
    ld [hl-], a
    xor b
    add h
    ld [bc], a
    pop bc
    add sp, -$4c
    add hl, hl
    nop
    call z, Call_000_0963
    or b
    add $84
    rst $38
    pop bc
    ld [hl], $62
    dec c
    ld b, c
    ldh [$3e], a
    ld l, c
    ei
    scf
    ld [hl], d
    ld a, [hl+]
    ld c, $20
    adc c
    ret nz

    add b
    add $b5
    ld [bc], a
    rst $38
    sub a
    add b
    db $e3
    ld c, l
    cp a
    add $c0
    db $e3
    inc e
    add hl, sp
    ld h, b
    or h
    jr nz, jr_05f_64da

    ld a, [bc]
    ld a, [bc]
    ld b, c
    ld [c], a
    ld e, a
    ld l, b
    cp d
    sub h
    ld h, h
    ret nz

    rst $20
    ld a, [$6e41]
    rst $38
    add d
    ld b, d
    ret nz

    ld a, [bc]
    ld a, [bc]
    rst $30
    ld [bc], a
    ret nz

    ld b, d
    and e
    ret nz

    rst $28
    ld b, e
    add a
    add b
    ldh [$c2], a
    ld b, b
    ld e, $a3
    ld c, $6e
    nop
    push bc
    and e
    ld a, [$f782]

jr_05f_64da:
    inc c
    inc [hl]
    dec c
    ld h, $e5
    ld hl, $c0c0
    ld [c], a
    cp c
    ld h, c
    nop
    pop bc
    and $b7
    add c
    or a
    add hl, bc
    dec b
    ld d, h
    ret nz

    ld [$403c], a
    ld b, [hl]
    pop bc
    add c
    add b

jr_05f_64f6:
    ld bc, $786b
    add d
    ld l, h
    rst $00
    ld b, c
    db $e3
    ld b, c
    sub b
    ret nz

    rst $28
    cp [hl]
    ld [c], a
    add hl, sp
    add d
    ret nz

    jp nz, $56c5

    ld b, h
    inc bc
    sub d
    ld b, b
    and $fb
    db $e3
    ld b, e
    ret nz

    dec c
    dec bc
    inc b
    add a
    ret nz

    jp nz, Jump_000_2ee1

    add l
    add a
    ld b, c
    ld d, [hl]
    rst $20
    add h
    add e
    jr nz, @-$41

    jp Jump_05f_4700


    nop
    jp Jump_05f_7d60


    ld h, c
    ld b, l
    jp Jump_05f_55c6


    ret nz

    xor $bd
    push bc
    ld a, [$0000]
    db $fd
    jp Jump_000_2f05


    ld a, [hl]
    ld d, l
    call nz, $bdc5
    jp $a181


    ret nz

    db $ec
    ld a, e
    ld a, [$3c04]
    ld b, b
    ret nz

    add sp, $0d
    cp d
    ld [bc], a
    inc bc
    add c
    add hl, bc
    ld b, d
    add b
    dec c
    db $fd
    sub b
    ld [$e780], sp
    rst $30
    jp nz, $a4ff

    ld a, [bc]
    add [hl]
    ld h, l
    add b
    ld l, b
    push bc
    dec [hl]
    ret nz

    and $06
    cp e
    ret nz

    dec c
    ld c, [hl]
    rst $38
    and e
    ret z

    jr nz, jr_05f_64f6

    dec b
    ld b, c
    ld a, [hl-]
    ret nz

    rst $00
    nop
    db $fd

jr_05f_6578:
    jp $a0bf


    cp a
    push hl
    rst $00
    dec e
    daa
    ld l, c
    ret nz

    db $ec
    ld a, e
    and d
    rst $00
    dec b
    nop
    ld b, c
    or l
    ld a, [hl]
    rlca
    add b
    push hl
    add d
    ld h, e
    adc b
    ld b, d
    ret nz

    ld h, c
    rst $00
    inc b
    sbc e
    ld h, l
    nop
    ld b, b
    ld [hl], l
    rst $00
    ld [c], a
    cp b
    nop
    ld a, l
    add h
    cp [hl]
    nop
    cp $e2
    jp $c662


    jr z, jr_05f_65aa

jr_05f_65aa:
    ld b, h
    ld [hl-], a
    inc c
    ld h, e
    ld b, c
    ld [bc], a
    dec a
    add l
    add h
    ld h, l
    dec a
    jp nz, $bf81

    add b
    and d
    ld [$0276], sp
    add b
    and $be
    add c
    dec l
    ld a, l
    push bc
    ld b, l
    ld e, a
    add b
    jp z, $e2c0

    nop
    ld a, $c5
    dec a
    ret nz

    xor b
    ld h, c
    ret nz

    rst $38
    ld b, b
    ret


    ld b, b
    rst $20
    add [hl]
    nop
    add l
    sbc l
    ld e, h
    ld l, $43
    nop
    ret


    ld c, [hl]
    ld l, $6b
    rst $38
    db $e3
    ld c, e
    ld a, [hl]
    add [hl]
    nop
    cp a
    sbc a
    dec sp
    ld h, e
    pop hl
    inc hl
    ld a, a
    add b
    jp $8603


    rlca
    add [hl]
    jr c, jr_05f_6578

    db $e3
    nop
    ei
    ld b, e
    ld a, d
    call nz, $013b
    db $fd
    pop hl
    add h
    ld b, l
    ld h, e
    daa
    ld b, b
    dec [hl]
    ret nz

    push hl
    nop
    inc sp
    db $e3
    ld e, [hl]
    xor c
    add c
    ld h, l
    inc [hl]
    cp e
    ld b, b
    db $e4
    add hl, sp
    ld h, h
    ld h, $a9
    ld b, $93
    nop
    nop
    nop
    sbc l
    and b
    rst $38
    pop hl
    call nc, $d4d5
    ld hl, sp-$1e
    di
    ldh [$d6], a
    rrca
    rst $10
    ret c

    and b
    call nc, $e6f2
    ld hl, sp-$19
    db $ec
    pop af
    pop hl
    jp hl


    adc [hl]
    cp [hl]
    push hl
    reti


    jp c, $ecdb

    xor $ff
    rst $38
    adc [hl]
    db $e3
    ld [c], a
    rst $38
    db $e3
    and b
    and b
    call c, $dedd
    and b
    sbc a
    add l
    sbc l
    rst $38
    ldh [$9f], a
    ld l, b
    add sp, -$19
    pop hl
    ld h, l
    db $e3
    ld a, e
    ld_long a, $ffe4
    push hl
    and b
    and b
    rst $18
    ldh [$e1], a
    sbc a
    sbc h
    ccf
    inc bc
    add hl, bc
    inc bc
    ld b, [hl]
    sbc h
    sbc a
    jr c, @-$17

    rst $20
    pop hl
    db $ec
    ld h, l
    ld [$f334], a
    and $e7
    ld a, [c]
    pop bc
    sbc a
    sbc h
    ld [bc], a
    rra
    dec c
    sbc c
    dec c
    inc b
    inc bc
    cp a
    ldh [$8b], a
    push hl
    rst $20
    db $e3
    db $fc
    ld h, l
    pop hl
    ld h, $ff
    and b
    sbc [hl]
    dec b
    ld c, $00
    ld bc, $991f
    sbc b
    dec c
    dec b
    sbc [hl]
    ldh a, [$cc]
    ld h, l
    ldh [$d0], a
    rst $08
    cp $99
    rst $08
    sbc [hl]
    ld a, [bc]
    sbc b
    rrca
    rlca
    inc b
    inc b
    jp $060f


    ld a, a
    ld [c], a
    adc e
    rst $20
    ld [hl], d
    jp c, $c73e

    sbc a
    sbc h
    rst $38
    dec b
    rlca
    ld [bc], a
    ld c, b
    ld c, b
    ld b, l
    ld b, $0f
    jp $9c02


    cp d
    ret nz

    adc e
    db $e3
    ld [hl], l
    rst $18
    db $fc
    and [hl]
    sbc [hl]
    ld c, d
    rst $38
    ld c, c
    ld a, [hl+]
    ld a, [hl+]
    ld c, e
    ld h, c
    ld d, d
    dec b
    ld c, $87
    rrca
    ld [bc], a
    ld b, [hl]
    cp d
    pop bc
    add d
    jp $fdbe


    call z, $9ea6
    rst $38
    ld c, d
    ld h, b
    ld a, [hl+]
    jr nz, jr_05f_6713

    dec hl
    ld c, e
    ld e, h
    rrca
    ld [$0f98], sp
    inc b
    ld a, c
    jp nz, $c169

    xor l
    and d
    add hl, sp
    jp $fdfe


    db $fc
    sbc [hl]
    ld d, c
    ld e, [hl]
    ld d, h
    ld a, [hl+]
    jr nz, jr_05f_6721

    cp a
    ld b, d
    ld b, [hl]
    ld [bc], a
    rrca
    sbc b
    sbc b
    ld a, l
    ldh [$9e], a
    ldh a, [rBCPD]
    call nz, $c539
    dec [hl]
    ld hl, sp-$21

jr_05f_6713:
    and d
    sbc a
    ret nc

    ld d, d
    ld h, c
    rst $38
    ld d, h
    ld a, [hl+]
    ld hl, $4536
    xor [hl]
    ld b, $98

jr_05f_6721:
    rrca
    nop
    ld bc, $d006
    ld a, [hl-]
    jp nz, $c920

    di

jr_05f_672b:
    rst $10
    ld b, h
    and e

jr_05f_672e:
    rst $38
    db $d3
    ret nc

    ld d, e
    ld d, e
    xor [hl]
    ld a, [hl-]
    dec [hl]
    ld [hl], $7f
    xor a
    ld b, $99
    sbc c
    db $10
    dec b
    jp nc, $ae86

    ld hl, sp-$1e
    adc a
    jr z, jr_05f_672b

    rst $18
    and h
    db $d3
    ret nc

    ld b, [hl]
    xor a
    add hl, sp
    ld a, a
    dec [hl]
    dec [hl]
    add hl, sp
    ld b, $99
    sbc b
    ld [$c2bf], sp
    ldh [$eb], a
    add [hl]
    cp e
    sub h
    ld h, c
    and e
    rst $18
    and a
    cp a
    ldh [rLCDC], a
    dec [hl]
    dec [hl]
    rla
    ld a, [hl-]
    dec b
    ld c, $be
    pop bc
    sbc h
    or $80
    add [hl]
    and d
    jp nz, $f8ca

    or l
    jp z, $c6df

    cp e
    add l
    jp nc, $45ae

    ld a, [hl-]
    jp Jump_05f_627b


    ld a, l
    cp [hl]
    pop bc
    ld c, $05
    xor [hl]
    sbc h
    ei
    and e
    ldh [$fb], a
    add e
    cp e

jr_05f_678d:
    add h
    adc l
    push hl
    inc a
    adc a
    cp e
    add c
    sbc [hl]
    xor a
    xor [hl]
    rst $38
    add hl, sp
    ld h, d
    ld h, a
    ld a, a
    ld a, l
    ld b, $98
    sbc b
    rlca
    sbc b
    ld b, $af
    inc a
    db $e3
    ld [c], a
    add h
    jr nz, jr_05f_672e

    adc l
    ld [$6afa], a
    cp $bb
    add c
    sbc a
    ret nc

    xor a
    ld b, b
    ld l, c
    dec [hl]
    add hl, sp
    add hl, bc
    add c
    cp $c0
    ei
    and b
    inc b
    ld [hl], a
    and c
    jr nc, @-$7c

    cp e
    sbc h
    adc b
    ld h, a
    rst $38
    db $d3
    ret nc

    ld [hl], $69
    dec [hl]
    ld a, [hl-]
    add c
    ld [$983f], sp
    sbc b
    sub a
    sbc b
    sbc b
    sbc c
    cp b
    and c
    ld a, [hl-]
    ldh [$f8], a
    cp e
    sbc d
    and h
    and [hl]
    jp c, $d263

    ld h, d
    ld h, a
    dec [hl]
    ld [hl], $36
    add b
    ld [c], a
    sbc b
    sbc c
    ld [hl], d
    add b
    dec c
    ld [bc], a
    ld a, [hl-]
    push hl
    ld a, c
    xor b
    ld hl, sp+$19
    ld l, d
    rst $28
    add $3f
    ld h, e
    sbc [hl]
    ld l, c
    dec [hl]
    ld [hl], $45
    ld h, [hl]
    ld b, b
    ldh [$99], a
    sbc d
    cp l
    pop hl
    ld a, [hl-]
    pop hl
    inc bc
    xor [hl]
    jr nc, jr_05f_678d

    ldh [$e6], a
    ld b, d
    call nz, $c4d1
    ld h, d
    ld e, a
    ld h, d
    jp c, $9e63

    ld l, e
    ld l, h
    cp a
    ld b, b
    add e
    add h
    ld [$999a], sp
    cp $c0
    sub a
    ld e, $3c
    ldh [$98], a
    sbc b
    ld [$f0af], sp
    ld h, d
    call nz, $c4d6
    ld b, l
    cp $da
    ld h, e
    sbc [hl]
    ld l, [hl]
    ld [hl], b
    adc b
    add h
    ld [bc], a
    rrca
    ld l, [hl]
    ld b, b
    pop hl
    sub a
    sub [hl]
    sub [hl]
    ei
    pop bc
    ld c, $05
    or $a1
    db $fc
    dec a
    sbc d
    call nc, $9e68
    ld [hl], $35
    add hl, sp
    ld [bc], a
    rrca
    ld [hl+], a
    ld a, b
    ld h, b
    sbc c
    add c
    ldh [$bc], a
    ret nz

    ld l, [hl]
    ld h, b
    ld b, $32
    add e
    cp d
    ld d, e
    ld hl, sp-$02
    ld [hl+], a
    ld e, a
    ld h, l
    ld a, b
    ld b, b
    sbc [hl]
    xor [hl]
    inc a
    ld a, [hl-]
    inc bc
    inc de
    inc b
    rlca
    ld a, a
    ld [c], a
    rst $38
    jp nz, $c099

    pop hl
    ld a, e
    pop bc
    cp d
    ld d, l
    db $fc
    cp h
    jr z, @+$7a

    ld b, b
    sbc [hl]
    xor a
    ld a, [hl-]
    jp Jump_000_383b


    ld c, a
    scf
    ld [bc], a
    inc b
    add hl, bc
    cp e
    ldh [$f1], a
    ld b, c
    sbc b
    add b
    pop hl
    pop bc
    xor a
    cp h
    ret nz

    cpl
    ld [hl], e
    adc h
    daa
    add e
    jr nz, @+$7a

    ld b, b
    sbc [hl]
    xor [hl]
    sbc [hl]
    cp [hl]
    add b
    dec [hl]
    dec [hl]
    jr c, jr_05f_68e0

    cp e
    pop hl
    ld sp, hl
    jp nz, $c29a

    ld [hl], $a0
    ld b, [hl]
    cp h
    ret nz

    cp d
    ld b, d
    jr nc, jr_05f_6935

    ld a, $a0
    scf
    jr c, @+$01

    dec sp
    dec [hl]
    jp $6362


    ld h, [hl]
    dec [hl]
    ld [hl], $1c
    scf
    pop hl
    cp c
    and b
    ld a, [bc]
    xor a
    xor [hl]
    or d
    ld h, b
    sbc b

jr_05f_68cf:
    inc h
    xor $58
    rst $30
    ret c

    rst $10
    sub $3e
    and c
    xor [hl]
    xor [hl]
    ld b, l
    ld [hl], $fe
    cp d
    and b
    ld l, b

jr_05f_68e0:
    ld h, [hl]
    jp Jump_000_3f36


    ld b, l
    ld [bc], a
    dec e
    ld c, $3f
    pop hl
    xor a
    ret nc

    sbc a
    ldh [rSB], a
    sbc b
    jr nz, jr_05f_68cf

    db $10
    xor $61
    ld h, $db
    jp c, $bad9

    ld h, c
    xor a
    xor a
    jp $aeff


    add b
    scf
    jr c, jr_05f_6939

    ld [hl], a
    ld h, h
    ld h, l
    db $fd
    ld h, [hl]
    or $c0
    rlca
    rrca
    ld b, $46
    ret nc

    db $d3
    cp b
    ldh [rSC], a
    jp $c693


    ld b, $de
    db $dd
    call c, $6179
    pop de
    ld a, a
    pop de
    ret nc

    xor a
    add b
    xor [hl]
    xor [hl]
    ld [hl], $f8
    ret nz

    ld c, $7c
    pop hl
    ld b, l
    ld [bc], a
    dec b
    pop bc
    ldh [$f0], a
    ld sp, $0442
    ld h, c

jr_05f_6935:
    inc hl
    cp a
    db $e3
    ld [c], a

jr_05f_6939:
    and b
    pop hl
    ldh [$df], a
    cp d
    add l
    add b
    db $eb
    xor a
    xor a
    dec [hl]
    ld h, b
    dec [hl]
    ld a, h
    pop hl
    ld a, l
    ld b, [hl]
    xor [hl]
    ret c

    inc [hl]
    ld h, c
    ld a, e

jr_05f_694f:
    add hl, hl
    ld [bc], a
    pop de
    push hl
    db $e4
    cpl
    ld c, b
    jp nc, Jump_05f_7982

    add e
    dec [hl]
    ld h, d
    ld [hl], l
    ret nz

    ld a, [hl-]
    ld a, a
    ld a, l
    xor a
    cp [hl]
    add [hl]
    or $72
    jr c, jr_05f_694f

    and $f5
    add hl, bc
    add l
    add [hl]
    add e
    ld b, [hl]
    inc a
    ld [hl], l
    ld h, b
    dec [hl]
    ret nz

    add hl, sp
    add e
    add h
    ld b, [hl]
    inc [hl]
    ld b, b
    db $fd
    ccf
    ld [$2a34], a
    ret nc

    cp a
    ldh [rLYC], a
    ccf
    pop hl
    ld [hl], $83
    add [hl]
    add e
    add l
    ld b, [hl]
    inc [hl]
    ld b, b
    push de
    ld b, h
    jr nc, jr_05f_69cd

    rst $20
    ld h, d
    ld b, [hl]
    ld bc, $3fd2
    xor [hl]
    add l
    add a
    adc b
    ld [hl], b
    ld l, h
    pop bc
    db $e4
    pop bc
    ret nz

    ret nz

jr_05f_69a2:
    or h
    ld h, $ee
    ld c, $66
    add sp, $59
    ld b, e
    rla
    and c
    rst $30
    ld b, b
    ld b, [hl]
    add hl, sp
    rst $38
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    adc b
    add h
    add l
    xor [hl]
    ld b, [hl]
    ldh [$f5], a
    ld [hl+], a
    ld a, [de]
    add h
    ld [hl], $4f
    xor [hl]
    ld c, [hl]
    ld d, [hl]
    pop bc
    sbc [hl]
    ld b, [hl]
    xor a
    dec b
    ld b, [hl]
    scf
    and c
    add hl, sp
    inc b

jr_05f_69cd:
    and b
    add h
    and c
    ld c, [hl]
    ld h, c
    cp a
    sub h
    ld a, [de]
    dec h
    call c, $c03f
    ld a, [c]
    daa
    sbc [hl]
    ld b, [hl]
    ld b, [hl]
    ret nz

    ret nz

    dec [hl]
    dec [hl]
    rlca
    ld a, $c6
    rst $00
    ld [bc], a
    pop hl
    sbc d
    jr z, jr_05f_69a2

    db $d3
    sbc a
    jr nz, jr_05f_6a2e

    add $d6
    ret nz

    pop bc
    sbc h
    jp $e0bf


    ld a, $74
    jr nz, @-$3a

    push bc
    nop
    jp Jump_05f_5ea1


    ld h, d
    cp $a3
    rst $38
    dec hl
    or [hl]
    ld c, b
    ccf
    pop bc
    scf
    ld h, c
    ld d, h
    jr nz, jr_05f_6a41

    sbc a
    sbc h
    add c
    ldh [$c0], a
    ld [c], a
    ld b, b
    ld b, [hl]
    ld [bc], a
    db $e3
    inc bc
    add a
    ret nz

    rst $38
    dec l
    ld [hl], h
    ld b, c
    reti


    ld b, $dc
    ld h, e
    pop bc
    db $e4
    add b
    ldh [$36], a
    ld b, l
    and b
    inc b
    pop bc
    ld e, [hl]
    ld h, a

jr_05f_6a2e:
    dec b
    ld d, h
    and l
    ld h, [hl]
    cp h
    ld b, h
    xor [hl]
    add c
    ld [c], a
    jp Jump_000_3901


jr_05f_6a3a:
    pop bc
    pop hl
    ld b, [hl]
    add e
    ld b, d
    and c
    sub d

jr_05f_6a41:
    ld [bc], a
    rst $38
    ld [hl], d
    db $e4
    add [hl]
    cp h
    ld b, h
    dec bc
    xor a
    ld b, [hl]

jr_05f_6a4b:
    cp [hl]
    ld [c], a
    ld b, l
    pop bc
    pop hl
    jp nz, $f8c5

    inc bc
    ld [hl], a
    inc de
    ld a, $e4
    adc h
    sbc [hl]
    ld b, [hl]
    xor [hl]
    xor a
    ld b, [hl]
    add a
    ret nz

    jp nz, $81e1

    pop de
    add l
    add b
    add $44
    ld b, c

jr_05f_6a69:
    ld d, [hl]
    inc [hl]
    ld l, d
    db $f4
    jr nz, jr_05f_6a69

    nop
    ld b, [hl]
    add a
    ld b, [hl]
    call nz, $83c5
    pop hl
    add h
    pop bc
    add $56
    db $f4
    ld [hl], $d3
    add c
    ret nc

    ccf
    db $e3
    add [hl]
    and h
    add $54
    ld a, [hl]
    ld c, h
    jr nz, jr_05f_6ace

    ret c

    ld h, d
    jp nc, $8100

    and b
    dec a
    pop bc
    add [hl]
    inc hl
    dec b
    add d
    ld bc, $3c53
    ld c, b
    jr nz, jr_05f_6ae0

    ret c

    ld h, d
    nop
    add c
    and c
    db $fd
    and c
    ret z

    jr nz, jr_05f_6a3a

    dec b
    ld bc, $fd47
    adc a
    inc a
    ld b, d
    ld e, a
    ld l, b
    ld b, $c0
    and h
    jp $c546


    ld bc, $0452
    ld bc, $3251
    ld c, d
    ld e, a
    ld h, l
    nop
    add b
    and b

Jump_05f_6ac1:
    rst $38
    and h

jr_05f_6ac3:
    ret z

    jr nz, jr_05f_6a4b

    dec b
    ld b, b
    ld [hl], h
    ldh a, [$2d]
    inc [hl]
    add h
    ld b, d

jr_05f_6ace:
    add c
    db $10
    ld a, l
    and e
    add l
    dec b
    ld c, a
    ret c

    inc [hl]
    sub b
    sbc [hl]
    nop
    ret nz

    ld a, [hl]
    jp $05c7


    nop

jr_05f_6ae0:
    db $db
    ld h, e
    add d
    scf
    cp e
    ld h, h
    ccf
    jr nz, jr_05f_6ac3

    ld h, c
    ld a, a
    and b
    ld [$3c81], sp
    add b

Jump_05f_6af0:
    ret nz

    rst $00
    dec b
    db $db
    ld h, l
    ld b, b
    dec [hl]
    and [hl]
    ld hl, $c3f3
    add d
    ld h, d
    ld b, [hl]
    ld b, l
    dec b
    ld b, e
    rst $38
    ld [c], a
    ld b, l
    jp Jump_000_0661


    ld b, c
    db $db
    ld h, h
    ld b, c
    or d
    cp [hl]
    ld bc, $bbb8
    ld h, d
    or c
    jp nz, $6382

    ld b, h
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    pop hl
    ld b, h
    dec a
    pop bc
    add $d3
    db $76
    dec d
    add d
    ld h, e
    ld b, b
    ld l, c
    and e
    rrca
    dec [hl]
    dec [hl]
    and e
    ld l, d
    ret nz

    ldh [$3d], a
    jp nz, $ffff

    add b
    res 1, b
    ret nz

    ldh [$3a], a
    ld bc, $e0c0
    xor [hl]
    dec a
    pop bc
    ld [bc], a
    ld e, a
    add b
    call z, Call_000_3746
    ld b, h
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    ld b, h
    add [hl]
    ld bc, $519c
    inc c
    cp d
    or h
    or h
    ld b, h
    sbc a
    ret nc

    ret nz

    push bc
    ld a, [hl]
    add h
    ld b, l
    sbc h
    ret


    ld h, $00
    ld l, l
    and l
    ld a, a
    add b
    dec a
    ld h, e
    add [hl]
    ld bc, $e9e7
    ld sp, hl
    jr jr_05f_6b87

    add l
    dec hl
    and d
    nop
    dec sp
    nop
    cp $e2
    add h
    ld b, c
    rst $20
    ld [$737f], a
    db $dd
    ld c, c
    rra
    dec hl
    ld [hl], d
    ld b, b
    nop
    rst $20
    di
    dec sp
    ld a, h
    ld h, l

jr_05f_6b87:
    ld [$d300], sp
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
    inc c
    ld [bc], a
    ld bc, $0d16
    ld [bc], a
    ld [bc], a
    ld d, $10
    ld [bc], a
    inc bc
    ld [hl+], a
    db $10
    ld [bc], a
    inc b
    rla
    ld de, $0502
    jr z, @+$15

    ld [bc], a
    ld b, $2a
    dec d
    ld [bc], a
    rlca
    jr jr_05f_6be1

    ld [bc], a
    ld [$192d], sp
    ld [bc], a
    add hl, bc
    ld l, $1a
    ld [bc], a
    ld a, [bc]
    jr @+$1d

    ld [bc], a
    dec bc
    inc l
    dec de
    ld [bc], a
    inc c
    add hl, de
    inc e
    ld [bc], a
    dec c
    dec l
    inc e
    ld [bc], a

jr_05f_6be1:
    ld c, $1a
    dec e
    ld [bc], a
    rrca
    dec de
    dec e
    ld [bc], a
    db $10
    dec e
    ld e, $02
    ld de, $1f1f
    ld [bc], a
    ld [de], a
    jr nz, jr_05f_6c13

    ld [bc], a
    inc de
    ld hl, $0220
    inc d
    dec hl
    jr nz, jr_05f_6bff

    dec d
    rra

jr_05f_6bff:
    inc h
    ld [bc], a
    ld d, $20
    dec h
    ld [bc], a
    rla
    add hl, hl
    dec h
    ld [bc], a
    jr jr_05f_6c27

    dec hl
    ld [bc], a
    add hl, de
    ld e, $2c
    ld [bc], a
    ld a, [de]
    dec e

jr_05f_6c13:
    dec l
    ld [bc], a
    dec de
    rra
    cpl
    ld [bc], a
    inc e
    dec h
    ld [hl-], a
    ld [bc], a
    dec e
    dec e
    inc sp
    ld [bc], a
    ld e, $1e
    inc [hl]
    ld [bc], a
    rra
    dec e

jr_05f_6c27:
    dec [hl]
    ld [bc], a
    jr nz, @+$23

    dec [hl]
    ld [bc], a
    ld hl, $3626
    ld [bc], a
    ld [hl+], a

Call_05f_6c32:
    jr z, @+$3b

    ld [bc], a
    inc hl
    daa
    ld a, [hl-]
    rst $38
    rst $38
    rst $38
    ld b, e
    ld l, h
    ld [hl], e
    ld l, h
    ld [bc], a
    ld l, [hl]
    rst $10
    ld l, a
    ld [$c503], a
    ld b, $e2
    ld bc, $00a0
    ld [$f003], a
    inc bc
    push bc
    ld b, $e2
    ld bc, $023f
    xor e
    nop
    inc sp
    ld bc, $06c5
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
    dec hl
    ld a, [bc]
    dec bc
    rst $38
    ld [$f14b], a
    pop hl
    inc c
    rst $38
    rst $38
    rst $20
    and $f7
    dec bc
    dec bc
    ld l, e
    db $fd
    ldh [rOCPD], a
    ld c, e
    ld l, e
    ld c, e
    ld h, b
    rst $38
    pop hl
    ret nz

    ldh [$af], a
    ldh [$ca], a
    rst $38
    ret nz

    add sp, $0a
    ld l, e
    pop bc
    ldh [$f9], a
    dec bc
    call nz, $82e1
    ldh [rWX], a
    dec bc
    dec hl
    dec bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    jp z, $80ff

    jp hl


    dec hl
    ld a, [hl]
    pop hl
    call nz, $81e2
    pop hl
    ld b, b
    rst $38
    ret nz

    ret nz

    rst $28
    db $fc
    db $e3
    ld b, c
    pop hl
    or [hl]
    ld [c], a
    ret nz

    rst $38
    ld b, b
    ld [$0b2b], a
    ld d, e
    ld c, e
    dec hl
    cp h
    pop hl
    inc a
    pop hl
    dec hl
    call nz, Call_000_2ce1
    jp z, Jump_000_0eff

    add sp, -$19
    ld a, [bc]
    dec bc
    dec hl
    ret


    ldh [$c0], a
    ld [c], a
    ld bc, $c0e1
    rst $38
    ld [hl], b
    add b
    rst $28
    set 0, b
    ret nz

    db $e3
    ld [hl], l
    pop bc
    inc c
    inc c
    ld c, h
    set 7, a
    nop
    ret nz

    set 0, b
    pop hl
    add c
    jp nz, $c1b8

    ret nz

    rst $38
    ret nz

    pop af
    ld b, l
    jp nz, $e282

    db $10
    rst $38
    rst $38
    add b
    ret nc

    call nz, $c3a2
    ret nz

    ld l, h
    ret nc

    rst $38
    ret nz

    ret nc

    cp [hl]
    pop bc
    nop
    add e
    and d
    add c
    rst $38
    ret nz

    di
    cp a
    db $e3
    add l
    and b
    pop de
    db $e3
    add b
    rst $18
    ret nz

    xor l
    adc b
    nop
    ret nz

    cp d
    pop hl
    add b
    db $e3
    ld l, h
    ld a, [hl-]
    rst $38
    ret nz

    xor h
    ld a, l
    add h
    dec hl
    pop hl
    dec bc
    add l
    jp nz, $ffc1

    ld b, b
    xor $c0
    push hl
    dec bc
    inc l
    inc l
    nop
    ld b, d
    ret nz

    ld sp, hl
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05f_6dbf:
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    rst $18
    ld e, d
    ld e, e
    ld e, e
    ld h, b
    ld sp, $e7ff
    ld e, a
    ld e, e
    ld a, [c]

Call_05f_6e0d:
    rst $38
    ldh [rP1], a
    rst $38
    rst $38
    rst $20
    and $5b
    ld e, e
    ld e, a
    ld sp, $31ff
    ld c, l
    ld a, [hl-]
    ld d, l
    ld d, h
    ld d, h
    ld d, l
    ld d, l
    rra
    dec sp
    ld c, l
    ld sp, $5b5e
    xor a
    ldh [$ca], a
    rst $38
    ret nz

    add sp, -$41
    ld e, d
    ld e, [hl]
    ld sp, $324d
    jr nc, @+$01

    db $e3
    ld [hl-], a
    ccf
    ld c, l
    ld sp, $5b60
    ld e, d
    ld e, d
    jp z, $80ff

    jp hl


    ld a, a
    ld h, c
    ld sp, $3039
    jr nc, @+$6e

    ld l, h
    cp l
    ld [c], a
    ccf
    add hl, sp
    ld sp, $6231
    ld h, d
    ld h, d
    jp z, $c0ff

    db $eb
    cp a
    ld d, e
    jr nc, @+$6f

    ld l, h
    ld l, h
    ld l, d
    ld a, h
    pop hl
    ld d, d
    ld a, b
    push af
    jp nz, $ffca

    ld b, b
    jp hl


    ld h, c
    ld sp, $6d52
    ret nz

    pop hl
    ld a, [hl]
    cp a
    pop hl
    ld d, d
    ld sp, $1429
    inc d
    add hl, hl
    jp z, $e2ff

    add sp, -$19
    ld e, d
    ld b, b
    ldh [$c0], a
    db $e4
    ld a, [hl]
    ldh [$39], a
    ld sp, $a72b
    inc h
    inc h
    dec hl
    jp z, $80ff

    db $eb
    ld d, e
    ret nz

    db $e4
    ld l, d
    ccf
    ld b, d
    scf
    ld sp, $2c2b
    jr nz, @-$33

    rst $38
    nop
    db $ed
    ld l, a
    ld l, l
    ld l, l
    jr nc, jr_05f_6ed2

    pop bc
    pop hl
    inc a
    ld sp, $ffc0
    ld [c], a
    add b
    ret nc

    ld d, d
    pop bc
    ldh [$bf], a
    ldh [$c1], a
    ldh [rNR11], a
    ld [de], a
    ld d, $f1
    jr nz, @-$3e

    rst $38
    ret nz

    xor $01
    jp Jump_000_3152


    dec d
    ld d, $b3
    jr z, jr_05f_6ee4

    ret nz

    rst $38
    ret nz

    adc $39
    ld l, h
    rst $38

jr_05f_6ecb:
    ld [c], a
    add hl, sp
    ld h, e
    ld sp, $c117
    pop hl

jr_05f_6ed2:
    ret nz

    rst $38
    add b
    call Call_000_36af
    cp a
    pop hl
    jp $af36


    inc bc
    pop hl
    ret nz

    ldh [$80], a
    rst $18
    add b

jr_05f_6ee4:
    xor h
    add c
    ld l, a
    cp a
    ld l, [hl]
    ld d, l
    ld d, h
    ld l, [hl]
    ld l, a
    add c
    ret nz

    db $e3
    jr z, jr_05f_6ecb

    rla
    jp z, $c0ff

    xor e
    and b
    add b
    rst $38
    ld [c], a
    and b
    ld sp, $178d
    add b
    pop hl
    ld d, $15
    jp z, $c0ff

    xor e
    ret nz

    and $31
    rra
    dec bc
    ld a, [bc]
    dec b
    ld a, [bc]
    dec bc
    ld b, b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05f_6fc8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    jr nc, jr_05f_7036

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
    ld de, $6870
    ld a, c
    ld l, b
    ld a, e
    rst $38
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

jr_05f_7036:
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
    jr nz, jr_05f_7076

    inc b
    inc b
    nop
    rst $38

jr_05f_7076:
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
    ld h, h
    ld h, [hl]
    inc h
    xor h
    jp nc, Jump_000_00d2

    ld c, b
    rst $38
    sbc b
    sbc b
    jr nz, jr_05f_71be

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

jr_05f_71be:
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
    cp $01
    rst $38
    ld hl, sp+$07
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    ld b, b
    ld b, b
    db $fc
    ld l, $c0
    ld e, h
    ret nz

    nop
    nop
    ld bc, $2001
    jr nz, @+$01

    nop
    nop
    sbc l
    rst $38
    ld h, h
    db $ec
    db $db
    ei
    rst $38
    sub b
    jp c, Jump_05f_4848

    ld sp, $8035
    sub c
    rst $38
    inc b
    ld b, h
    ld d, b
    ld [hl], d
    ld h, h
    db $ec
    sub e
    sub e
    rst $38
    jr nz, jr_05f_72c7

    ret z

    ret z

    inc h
    inc [hl]
    add b
    add b
    rst $38
    ld [bc], a
    ld [bc], a
    inc b
    ld b, h
    nop
    adc b
    sub c
    sub c
    ei
    nop
    ld c, d
    adc d
    ldh [rP1], a
    ld b, b
    ld b, b
    inc b
    inc b
    rst $38
    xor h
    xor [hl]
    ld b, c
    ret


    sub d
    sub d
    inc h
    ld h, $ff
    ld de, $8011
    add b
    inc h

jr_05f_7285:
    inc h
    add c
    add c
    rst $38
    ld [bc], a
    ld [bc], a
    add hl, bc
    dec e
    add l
    rst $00
    ld [$ff1b], sp
    ld [hl+], a
    daa
    rlca
    xor [hl]
    rrca
    ld a, [de]
    inc de
    ld h, l
    ld a, [$e430]
    ld a, l
    jr nc, jr_05f_7285

    sub l
    rst $38
    ld c, b
    db $fc
    ld [hl], l
    rst $38
    rst $30
    sbc h
    call c, $da52
    inc b
    ld h, l
    ret nc

    and a
    ret c

    xor l
    db $ed
    adc h
    ldh [$b0], a
    pop hl
    ld b, b
    adc $a0
    jr nz, @+$01

    add h
    add h
    nop
    ld b, b
    or [hl]
    cp a
    ld hl, sp-$11
    rst $38
    db $d3
    reti


    db $d3

jr_05f_72c7:
    cp a
    db $e4
    push af
    rra
    ld [hl], a
    rst $38
    adc e
    rst $18
    ld e, a
    cp a
    add sp, -$26
    xor $de
    rst $38
    call nc, $d1ed
    db $ed
    sub $ee
    db $ec
    push de
    rst $38
    ldh [$fa], a
    jp hl


    db $dd
    ld d, b
    cp b
    ld c, c
    db $eb
    rst $38
    nop
    ld d, h
    sbc b
    ld a, d
    xor d
    ld a, d
    cp b
    ld e, c
    rst $38
    or b
    db $e4
    ld c, b
    xor c
    jr nz, jr_05f_7317

    ld [$fe88], sp
    xor b
    pop bc
    ld [$2008], sp
    jr nz, @-$7e

    sub b
    db $10
    rst $38
    ld e, b
    inc b
    ld b, $00
    ld [$1111], sp
    nop
    rst $38
    ld a, [bc]
    ld [$2108], sp
    dec h
    nop
    ld de, $ff04
    ld b, h

jr_05f_7317:
    inc de
    cpl
    ld l, a
    ld [hl], a
    xor a
    sbc d
    xor a
    rst $38
    ld a, l
    ld c, a
    ld l, a
    ld e, a
    db $ed
    cp a
    res 3, l
    rst $38
    rst $10
    and [hl]
    ld a, [$fd0a]
    db $d3
    ld l, e
    cpl
    rst $38
    push de
    ld d, $bf
    xor e
    adc $1f
    or a
    db $ed
    rst $30
    ld a, a
    rst $38
    nop
    cp $eb
    ld [hl+], a
    rst $18
    nop
    xor a
    rst $38
    ld d, b
    jp c, $fd25

    ld b, d
    cp a
    ld [hl+], a
    db $fd
    rst $38
    adc b
    db $eb
    dec d
    rst $30
    push af
    inc bc
    and $0e
    rst $38
    ret c

    add hl, de
    pop hl
    daa
    and [hl]
    ld l, a
    ret z

    ld e, l
    rst $38
    ld c, h
    db $db
    sub b
    cp a

jr_05f_7363:
    db $fd
    inc bc
    ld_long a, $ff02
    ld a, [$f406]
    dec b
    db $e4
    dec c
    reti


    dec sp
    rst $18
    ld h, d
    rst $20
    add h
    sbc a
    jr z, @-$2e

    ldh [rP1], a
    jp c, Jump_000_00ff

    db $fd
    inc b
    ei
    ld hl, $46ff
    and a
    rst $28

jr_05f_7384:
    jr c, jr_05f_7384

    ld c, a
    add sp, -$02
    pop hl
    sub a
    ret c

    sub a
    ld a, a
    ret nc

    cpl
    or b
    ld e, a
    ld h, b
    sbc a
    ret nz

    and b
    push hl
    rst $38
    cp $01
    pop af
    inc bc
    and $0f
    cp b
    ld a, [hl]
    rst $38
    ret z

    ld l, a
    jp z, Jump_05f_486d

    ld [$dd90], a
    rst $38
    sub b
    rst $18
    jr z, jr_05f_7363

    ld b, b
    ld l, e
    add b
    rst $30
    db $eb
    rst $38
    nop
    xor [hl]
    ldh [$03], a
    xor [hl]
    ldh [$0d], a
    ret


    dec de
    rst $38
    or d
    ld [hl], a
    call nz, $c96f
    dec c
    jp nc, $ff1b

    jp nc, $e43b

    scf
    db $e4
    scf
    and [hl]
    ld [hl], l
    rst $18
    ret z

    ld l, a
    ret z

    ld l, a
    ld sp, hl
    add b
    pop hl
    add hl, sp
    pop hl
    rst $38
    rst $20
    ld b, $1f
    add hl, de
    rst $38
    ld [c], a
    db $fd
    db $10
    rst $38
    ld a, [$00fb]
    rst $30
    rlca
    ret c

    rra
    ldh [rIE], a
    ld a, b
    add a
    rst $20
    ld a, [de]
    sbc l
    ld h, b
    ld a, d
    add b
    ld sp, hl
    db $fd
    jp nc, $d0e0

    pop hl
    rst $30
    inc b
    rst $28
    jr jr_05f_741c

    rst $28
    ldh [$ef], a
    nop
    rst $10
    ldh [$e0], a
    rrca
    ret c

    jr c, @+$01

    ldh [$37], a
    and a
    ld l, a
    ret z

    ld e, a
    ret z

    ld e, d
    rst $38
    ret z

    ld e, l
    nop
    rst $38
    db $10
    ld a, [$ad00]
    rst $38

jr_05f_741c:
    nop
    rst $18
    db $e4

jr_05f_741f:
    rst $38
    jr jr_05f_741f

    inc b

jr_05f_7423:
    rra
    ei
    ld [c], a
    rst $20
    db $10
    push hl
    rst $28
    ldh a, [rNR31]
    db $fc
    dec b
    rst $38
    ld e, $e3
    and $4f
    add sp, -$71
    ret z

    cpl
    rst $18
    sbc b
    rla
    jr c, jr_05f_7423

    ldh a, [$f6]
    jp Jump_05f_6fc8


jr_05f_7441:
    rst $38
    ld [$48cd], a
    sbc d
    db $10
    dec a
    ldh [rIE], a

jr_05f_744a:
    rst $38
    jr nz, jr_05f_744a

    ld [de], a
    db $eb
    nop
    rst $30
    sub e
    cp b
    rst $28
    cpl
    ld h, b
    ld e, a
    ret nz

    jr c, jr_05f_7441

jr_05f_745a:
    ld [$309f], sp
    rst $38
    ld a, a
    ld d, b
    ld l, d
    ld b, h
    db $fd
    add b
    rst $38
    jr z, jr_05f_745a

    push af
    nop
    ldh [$e0], a
    ret nz

    jp Jump_000_01fc


    db $e3
    rlca
    cp a
    sbc h
    inc a
    ld h, b
    db $e3
    add e
    sbc a

jr_05f_7478:
    ld d, b
    pop hl
    sbc b

jr_05f_747b:
    cp [hl]
    ld d, b
    ld [c], a
    jr jr_05f_747b

    ld [c], a
    push af
    nop
    sub b
    and b
    rst $20
    rst $38
    rrca
    ret c

    ccf
    ld h, b
    ld hl, sp-$79

jr_05f_748d:
    rst $20
    jr jr_05f_748d

    sbc a
    ld d, b
    pop hl
    pop bc
    ld sp, hl
    ld b, $c7
    jr c, jr_05f_74d3

    cp a
    ret nz

    db $dd
    inc b

jr_05f_749d:
    ei
    jr nz, jr_05f_749d

    ret nz

    push hl
    cp $ef
    ld bc, $01ff
    ld sp, hl
    ld a, [$07c1]
    db $f4
    ld b, $ff
    ld c, b
    rst $28
    sub b
    jp c, $dd90

    inc h
    xor e
    rst $08
    jr nz, jr_05f_7478

    ld d, b
    ld a, l
    ldh [$c3], a
    ld e, [hl]
    jp $0fe7


    rst $38
    sbc b
    jr c, jr_05f_7525

    rst $20
    add a
    sbc a
    ld [$ffff], sp
    nop
    xor a
    jr nz, @-$24

    ld b, b
    db $ed
    rlca
    rst $38

jr_05f_74d3:
    ei
    jr @-$06

    ldh a, [$e1]
    dec bc
    sbc h
    inc sp
    ld a, b
    ld b, a
    sbc $5e
    ldh [$bf], a
    ret nz

    ld a, a
    add b
    inc [hl]
    pop bc
    sub b
    or a
    rst $38
    inc h
    ld l, a
    ld b, h
    ei
    add b
    rst $38
    ld b, b
    cp a
    rst $30
    ld [bc], a
    ld e, e
    ld [hl+], a
    add b
    ldh [$a5], a
    ld e, d
    ld d, b
    xor l
    rst $38
    sbc d
    ld h, l
    dec h
    jp c, $15aa

    ld d, l
    xor d
    rst $38
    ld l, b
    db $d3
    sbc d
    ld h, l
    ld e, e
    rst $38
    xor a
    rst $38
    ei
    ld h, a
    rst $38
    and b
    ld h, e
    db $d3
    db $fd
    ld l, l
    rst $38
    ld c, b
    rst $38
    rst $08
    ld c, b
    rst $18
    sub h
    cp c
    sub b
    cp e
    sub b
    rst $38
    cp a
    ld d, b
    db $fd
    ld c, b

jr_05f_7525:
    rst $18
    ld c, d
    rst $08
    sub b
    rst $38
    sbc a
    sub b
    rst $18
    ld c, b
    ld [$6d4a], a
    ld c, b
    rst $38
    ld l, a
    ld d, b
    push af
    sub b
    rst $10
    sub d
    sub a
    ld c, e
    rst $38
    ret z

    ld c, e
    ret c

    sub a
    cp b
    sub a
    or b
    sub a
    rst $38
    or b
    ld d, a
    ret c

    ld c, e
    ret c

    ld c, e
    ret z

    sub a
    rst $30
    sub b
    sub a
    ret c

    inc e
    ret nz

    ld l, b
    ld c, a
    ld l, b
    ld d, a
    rst $18
    ld hl, sp-$61
    ret nc

    sbc a
    sub b
    ret nz

    and e
    cp l
    ld a, [hl]
    ld a, a
    jp Jump_000_00ff


    jp Jump_000_3c3c


    jp $e0f9


    cp $52
    ld [c], a
    db $76
    sbc c
    rst $38
    nop
    sbc c
    ld h, [hl]
    ld h, [hl]
    db $fd
    sbc c
    ld d, b
    ldh [rSC], a
    xor l
    ld [bc], a
    jp c, $fd3c

    ld a, [$e4e0]
    ei
    ldh a, [$e0]
    xor a
    nop
    reti


    db $76
    rst $28
    ld a, [hl]
    ldh [$e4], a
    rst $18
    ld bc, $0603
    ld c, $18
    ret nc

    ret z

    sbc a
    dec de
    ld a, b
    ld h, a
    ldh [$df], a
    ld [hl], $e2
    ld h, [hl]
    and e
    ld d, b
    rst $38
    xor a
    dec h
    jp c, $b807

    rlca
    db $fd
    and d
    rst $38
    ld e, a
    ldh [rNR22], a
    push hl
    cp d
    ld b, d
    db $fd
    db $fd
    rst $30
    db $fd
    rst $18
    rst $38
    db $fc
    ld h, b
    rst $38
    ld a, l
    rst $38
    rst $28
    db $fd
    rst $28
    db $76
    ld h, b
    rst $38
    xor l
    rst $28
    db $76
    rst $38
    and $fe
    xor $e0
    db $e4
    db $eb
    ld [hl], h
    rst $30
    ld c, b
    rst $38
    add b
    rst $38
    cp e
    db $eb
    rst $38
    ld a, h
    rst $38
    ld d, b
    rst $10
    xor h
    db $fd
    db $eb
    ld h, a
    pop hl
    ld b, b
    or l
    nop
    ei
    ld bc, $ffff
    ld [bc], a
    rst $10
    db $10
    db $ed
    dec b
    rst $38
    inc bc
    rst $38
    rst $38
    ld a, [hl+]
    jp c, $bd08

    dec d
    rst $38
    ld c, $ff
    rst $38
    ld b, l
    rst $30
    ld a, [bc]
    cp $25
    rst $28
    sbc e
    rst $30
    rst $38
    ld e, $ff
    db $76
    cp [hl]
    db $db
    rst $38
    cp $ff
    rst $38
    push af
    push af
    ld l, b
    rst $28
    call nc, $b8ff
    xor a
    rst $38
    ret nc

    jp c, $fda5

    ld d, d
    rst $38
    ld [bc], a
    ei
    rst $38
    ld b, l
    xor a
    ld d, [hl]
    jp c, $fe22

    dec b
    rst $38
    rst $38
    ld h, $fd
    inc bc
    cp e
    ld bc, $b9fd
    ei
    rst $38
    ld [hl], h
    rst $10
    ld a, [hl+]
    db $ed
    ld [bc], a
    rst $38
    jr nz, @-$24

    cp $ba
    and c

jr_05f_7637:
    nop
    ei
    call c, $faff
    ei
    db $f4
    rst $38
    rst $38
    and $eb
    db $f4
    rst $30
    ld l, b
    rst $38
    jp nc, $fffb

    add sp, -$0f
    ld b, b
    ld a, [$adfe]
    db $fd
    ld e, e
    rst $08
    rst $18

jr_05f_7653:
    adc b
    push af
    db $10
    or l
    add d
    ld d, [hl]
    ret nz

    jr jr_05f_7637

    rst $38
    inc a
    and l
    ld a, [hl]
    jp $c366


    ld h, [hl]
    sbc c

jr_05f_7665:
    db $fd
    ld b, d
    and d
    add c
    or a
    ld a, b
    adc e
    inc a
    push bc
    ld c, $bf
    push bc
    ld c, $8b
    inc a
    or a
    ld a, b
    sub d
    add c
    rst $18
    rst $38
    ld a, $e7
    ld a, [hl]
    inc bc
    adc $33
    add [hl]
    push af
    rst $18
    ld b, $e7
    inc c
    rst $20
    jr jr_05f_76ff

    and b
    db $10
    rst $10
    ld a, a
    jr c, @-$53

    ld a, h
    rst $00
    ld l, h
    sub e
    ld b, h
    ld [hl], h
    add l
    rst $38
    rst $10
    jr c, jr_05f_7665

    inc e
    push hl
    ld c, $cb
    inc e
    ei
    rst $10
    jr c, jr_05f_7705

    add h
    inc a
    add a
    ld a, h
    rst $30

jr_05f_76a8:
    inc c
    ld hl, sp-$02

jr_05f_76ab:
    ldh [$03], a
    ret nz

    ld b, h
    and d
    db $10
    rst $28
    jr jr_05f_76ab

    inc c
    rst $20
    rst $28
    jr jr_05f_76a8

    adc l
    db $e3
    dec e
    and b
    rst $28
    jr c, jr_05f_7653

    ld a, l
    ld l, h
    ld [hl], $87
    rst $08
    inc a
    rst $38
    inc b
    ei
    cp $e0
    sbc $24
    add c
    ldh a, [rSB]
    rst $20
    rra
    add b
    and h
    sbc h
    ld h, b
    rst $30
    ld a, b
    add b
    ret c

    add b
    and b
    add $38
    inc a
    ret nz

    rst $38
    db $fc
    nop
    and h
    nop
    inc h
    nop
    jr jr_05f_76e9

jr_05f_76e9:
    rst $38
    jr jr_05f_76f5

    dec e
    ld [de], a
    ld a, [de]
    ld d, $3f
    ld h, h

jr_05f_76f2:
    cp e
    ld [hl], l
    add h

jr_05f_76f5:
    or b
    add c
    ld l, a
    add b
    cp a
    ldh a, [$e0]
    dec de
    rst $38
    inc de

jr_05f_76ff:
    ld a, d
    ld h, l
    or $87
    db $e4
    dec de

jr_05f_7705:
    sbc b
    rst $38
    ld h, a
    ld [hl], b
    xor a
    ret nz

    ret nz

    rlca
    rst $00
    rra
    rst $38
    sbc b
    jr c, jr_05f_7733

    ld [hl], a
    daa
    ld l, a
    ld c, e
    call c, Call_05f_4f9f
    ret c

    ld c, a
    ret c

    di
    db $76
    and b
    and b
    add h
    ld e, d
    rst $08
    ret z

    ld e, h
    ret z

    ld e, h
    cp h
    pop hl
    or [hl]
    ldh [$a4], a
    ldh [$df], a
    db $fc
    jr @-$02

    inc b

jr_05f_7733:
    ld e, $a0
    add l
    rrca
    ret nz

    rst $38
    rst $20
    ld hl, sp+$18
    ld e, $06
    rst $20
    pop hl
    ld sp, hl
    ei
    sub b
    ret c

    cp $e0
    call c, $dc90
    and b
    db $f4
    ld [hl], a
    jr nz, jr_05f_76f2

    ld b, b
    add b
    ldh [$97], a
    or b
    sbc a
    cp $e0
    ei
    xor a
    or b
    xor d
    add b
    ldh [$9f], a
    ret nz

    cp a
    add b
    cp $c0
    db $e3
    ld bc, $0225
    daa
    ld [bc], a
    ld h, $0c
    rst $30
    rra
    ld de, $b01b
    db $e4
    inc h
    ld bc, $0227
    rst $38
    daa
    inc b
    ld e, $09
    dec e
    ld c, b
    call z, $f748
    ret c

    sub b
    cp b
    cp $e1
    ld d, b
    ld hl, sp+$48
    ret c

    rst $38
    ld c, b
    call z, $b890
    adc b
    add sp, $48
    db $ec
    xor e
    ld c, b
    ld l, h
    cp $e0
    db $ec
    and h
    ldh [$98], a
    add b
    ld [c], a
    inc a
    srl h
    rst $38
    add b
    and b
    db $e3
    and b

jr_05f_77a3:
    and c
    ld [hl], b
    ld [c], a
    ld h, [hl]
    ld h, [hl]
    dec d
    rst $38
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
    rst $00
    dec de
    inc b
    ld e, $90
    push hl
    db $fc
    ld [c], a
    ldh a, [$c1]
    db $ed
    ld [de], a
    ld e, a
    ei
    ld [de], a
    jp c, $f624

    cp $e0
    or h
    sbc b
    ldh [$fd], a
    db $ec
    ldh [$e6], a
    dec h
    ld bc, $0627
    rra
    ld [$1efb], sp
    jp hl


    ld h, b
    ld h, c
    ld a, [hl-]
    db $e4
    ld [hl], $e4
    ld [hl], $df
    and h
    ld [hl], h
    ret z

    ld l, h
    ret z

    ld a, d
    db $e3
    call nc, $ff20
    or h
    jr nz, jr_05f_77a3

    ld b, b
    ld h, h
    ld b, b
    ld e, b
    add b
    rst $38
    ret c

    ret z

    ld l, b
    add sp, -$38
    ld c, b
    sbc h
    db $10
    ld b, a
    inc [hl]
    ldh [$e4], a
    and b
    jp Jump_05f_4ca1


    ld [hl], b
    add h
    and l
    ld [hl], b
    add e
    sbc l
    sub e
    or $e0
    ld e, d
    ld e, b
    or l
    ld h, b
    add [hl]
    ldh a, [$e0]
    ld e, e
    cp h
    dec h
    jr nz, jr_05f_787a

    add l
    sbc e
    rst $30
    ld l, l
    rst $38
    ldh a, [$e5]
    ld d, a
    cp a
    db $fd
    xor d
    rst $38
    sub e
    rst $38
    ld l, l
    ld a, b
    and b
    sub h
    rst $38
    ld l, l
    add hl, hl
    ld [c], a
    ld h, h
    sub e
    ld a, [de]
    xor l
    dec h
    rst $38
    ld c, d
    ld h, h
    sub e
    ld d, d
    ld l, l
    inc b
    ld_long a, $ff48
    cp l
    ld a, [bc]
    push de
    dec d
    ld [hl], d
    ld d, d
    xor a
    dec c
    ld a, a
    jp c, $9364

    ld e, d
    ld h, l
    ld b, $da
    jr nz, jr_05f_7893

    jp hl


    push bc
    jr nz, jr_05f_789a

    ldh a, [$0d]
    call c, $e0b6
    xor c
    rst $30
    sbc a
    rst $38
    ei
    ld h, [hl]
    cp a
    rst $38
    ld e, e
    ld a, [hl+]
    rst $38
    ld e, l
    rst $38
    or a
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
    db $fd
    rst $30

jr_05f_787a:
    ldh a, [$e3]
    and b
    ld a, a
    and b
    ld l, a
    ret nc

    scf
    cp $fe
    pop hl
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

jr_05f_7893:
    or $41
    rst $38
    rst $38
    cp a
    ret nz

    ld e, a

jr_05f_789a:
    ld h, b
    ld e, a
    ld h, b
    cpl
    sbc a
    or b
    cpl

Jump_05f_78a1:
    or b
    rla
    ret c

    cp $e1
    ret nz

    ldh [$df], a
    rst $38
    or b
    ld l, a
    ldh [$2f], a
    call nc, $ec33
    dec e
    cp a
    ld a, [c]
    ld c, $fd
    inc bc
    add b
    cp a
    or d
    pop hl
    jr nz, jr_05f_78fc

    rst $28
    db $10
    or e

jr_05f_78c0:
    inc c
    db $ed
    ld [hl+], a
    daa
    ld h, b
    inc bc
    ld b, l
    ld e, a
    ld c, $ce
    ld [hl-], a
    cp a
    ld d, b
    db $10
    ld b, b
    ld bc, $6000

jr_05f_78d2:
    ld e, a
    inc a
    ld a, [hl-]
    push hl
    db $dd
    ld [bc], a
    jr c, jr_05f_793a

    ld d, b
    adc b
    ldh [$fe], a
    db $e3
    inc h
    ld sp, hl
    ld c, $ef
    ld sp, $4fbe
    ld [hl], b
    rst $38
    cp a
    ret nz

    ld bc, $06fd
    rst $20
    add hl, sp
    ld a, $e7
    rst $00
    ld hl, sp+$3f
    add $24
    ld h, c
    jr nz, jr_05f_78c0

    jr c, jr_05f_7933

    or c

jr_05f_78fc:
    rst $00
    and d
    ld h, b
    ld d, [hl]
    inc hl
    ld l, d
    pop hl
    add sp, $1b
    cp $e2
    rra
    db $fc
    ld e, [hl]
    pop hl
    ld b, c
    daa
    jr nz, jr_05f_78d2

    inc e
    inc e
    db $e3
    db $e3
    ei
    add b
    cp a
    push af
    ld b, b
    rst $38
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ei
    add b
    cp a
    cp $e1
    db $e3
    jp $bf3e


    ld [hl], b
    db $fc
    jr nc, jr_05f_794a

    sub b
    ldh [rIE], a
    ld [$14eb], sp
    rst $30
    add b
    rst $38

jr_05f_7933:
    rst $38
    sub b
    xor a
    ld d, b
    ld e, d
    ld h, l
    db $fd

jr_05f_793a:
    ld b, d
    rst $38
    rst $38
    ld b, b
    rst $38
    ret z

    xor e
    sub h
    rst $30
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05f_794a:
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_05f_7982:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld [hl+], a
    rst $38
    db $e4
    sbc c
    rst $38
    db $e4
    ld [hl+], a
    cp $e5
    db $ec
    add sp, -$18
    ld [c], a
    call nz, $e9ff
    ret c

    pop hl
    add hl, hl
    call $f8e3
    ldh [$f6], a
    ldh [$29], a
    sbc c
    add hl, bc
    ld de, $e4ff
    or b
    ld [c], a
    add hl, hl
    ldh [$e1], a
    ei
    ldh [$d8], a
    db $e4
    xor h
    push hl
    ldh [$ee], a
    pop hl
    jp nc, $c8e3

    push hl
    xor b
    rst $20
    sbc e
    push hl
    sbc c
    sub d
    sub d
    ld h, h
    ld [hl], b
    and $8c
    db $eb
    add hl, hl
    ret nz

    db $e3
    ld d, b
    push hl
    ld [hl+], a
    sub d
    cp $e0
    nop
    ld b, d
    db $e4

jr_05f_7bb2:
    ld [hl], h
    db $e4
    ld b, b
    push hl
    sub $e3
    ld l, $e2
    or e
    db $e3
    ld d, h
    ldh [$60], a
    push hl
    ld [bc], a
    and $e5
    ld h, [hl]
    rst $38
    db $e4
    jr z, jr_05f_7bb2

    db $fc
    ei
    ld b, [hl]
    db $e4
    ldh a, [$d0]
    ld c, b
    ld [c], a
    nop
    ld l, [hl]
    pop hl
    ld l, b
    pop hl

jr_05f_7bd5:
    pop bc
    add $bb
    di
    ld h, h
    db $e4
    ret nc

    push bc
    ld a, b
    push hl
    add b
    push bc
    ld a, a
    ld h, [hl]
    ld l, d
    ld l, d
    xor d
    ld l, d
    xor c
    xor d

jr_05f_7be9:
    ld hl, sp-$20
    cp a
    ld h, [hl]
    xor d
    ld l, d
    xor d
    xor d
    xor c
    ld l, b
    call nz, $97aa
    sbc d
    ld h, [hl]

Jump_05f_7bf8:
    xor d
    cp $e0
    and [hl]
    ld c, c
    db $e3
    db $e4
    ldh [$aa], a
    and l
    sbc c
    cp $e1
    xor c
    jr c, jr_05f_7be9

    sub $e1
    xor c
    pop hl
    ldh [$a9], a
    rlca
    ld l, d
    xor c
    ld l, d
    ret nz

    ld [c], a
    jp z, Jump_000_20e1

    ldh [$dc], a
    ldh [$e0], a
    ldh [$c7], a
    xor c
    ld h, [hl]
    xor c
    ldh a, [$e5]
    ldh [$e1], a
    or e
    ld [c], a
    sbc c
    xor d
    add hl, bc
    xor c
    nop
    pop hl
    xor [hl]
    ldh [$a6], a
    xor d
    pop hl
    db $f4
    ld [c], a
    or b
    ldh [$97], a
    ld [c], a
    jr c, jr_05f_7bd5

    db $e4
    and h
    pop hl
    ret c

    add $aa
    xor d
    xor d
    xor b
    db $e3
    ld l, b

jr_05f_7c44:
    db $e3
    jr z, jr_05f_7cb0

    pop hl
    db $ed
    ldh [$b8], a
    push bc
    ld l, d
    ld [hl], b
    push hl
    xor c
    ld [hl], b
    db $e3
    ret nc

    ld [c], a
    nop
    ld c, d
    db $e3
    rst $00
    pop hl
    or b
    db $eb
    ret c

    and l
    ret nc

    and l
    jr c, jr_05f_7c44

    ld a, [$18e8]
    ld [c], a
    ret nz

    ld a, [$81e7]
    db $e4
    ld e, e
    ld [c], a
    or c
    pop hl
    xor c
    push hl
    and c
    push hl
    nop
    add hl, bc
    ld h, c
    add hl, bc
    ld c, b
    db $e4
    ld l, $c3
    and b
    db $ed
    ld l, b
    and d
    add hl, de
    add hl, de
    ld h, b
    and c
    ld [$a31d], a
    sub c
    cp $e2
    ld de, $e1fe
    sub c
    ld de, $0e1f
    ld [c], a
    ld [c], a
    ld de, $1999
    dec d
    xor c
    ld h, b
    jp $e5fe


    rst $00
    db $e4
    add sp, -$30
    and l
    rst $38
    rst $38
    db $fd
    db $fc
    xor a
    ld a, [hl+]
    ret nz

    nop
    and b
    nop
    ld l, a
    xor d
    and b
    and b
    nop
    rst $38
    ld [c], a

jr_05f_7cb0:
    xor d
    ld a, [bc]
    ld [de], a
    ret nz

    sub e
    sbc c
    sbc c
    ld hl, sp-$20
    ld [hl], h
    ret nz

    and [hl]
    inc d
    ld [c], a
    ld l, h
    call nz, $57fa
    ld l, d

Jump_05f_7cc3:
    and b
    ld l, d
    db $dd
    db $e3
    nop
    nop
    db $e4
    and [hl]
    rrca
    pop hl
    ld e, b
    cp $e1
    ret nz

    ldh [$f2], a
    and d
    and [hl]
    ld h, [hl]
    cp e
    ld [c], a
    ld a, [bc]
    db $dd
    ldh [rP1], a
    ld hl, sp-$1c
    ldh [$e3], a
    ld a, [$9de7]
    ld [c], a
    ret c

    pop bc
    ld hl, sp-$1c
    xor d
    ldh [$80], a
    ld [c], a
    ld a, [$e4c8]
    ld a, [bc]
    ld a, e
    db $e3
    nop
    nop
    sbc c
    xor d
    sbc a
    and a
    and b
    sbc d
    and b
    cp c
    db $e3
    ld h, a
    ldh [$fa], a
    add d
    and b
    and b
    inc c
    add b
    pop hl
    sub d
    db $e3
    nop
    nop
    or $e1
    or h
    push hl
    add hl, hl
    pop bc
    sbc b
    jp nc, $ff1c

    rst $38
    ld h, c
    adc $9a
    xor d
    sbc d
    dec [hl]
    and d
    ld a, [bc]
    and b
    dec b
    jp nz, Jump_000_2902

    and b
    sbc d
    cp $e0
    ld h, b
    add b
    ld [hl+], a
    pop hl
    inc c
    and b
    add sp, -$1d
    push af
    add b
    ld [bc], a
    ret c

    ld [c], a
    sbc d
    add e
    and c
    db $eb
    add c
    and $85
    ret nc

    jp $c0c8


    push hl
    add h
    db $10
    call nc, $b9a5
    and l
    rst $38
    db $ed
    rla
    call $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    xor $00
    nop
    nop
    rst $38
    rst $38

Jump_05f_7d60:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05f_7e25:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05f_7ec1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05f_7f00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_05f_7f80:
Jump_05f_7f80:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05f_7fa4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
