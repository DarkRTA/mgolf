; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02f", ROMX[$4000], BANK[$2f]

Jump_02f_4000:
    jr nz, @+$7f

    rst $00
    ld a, l
    ld b, b
    ld b, b
    ld c, b
    ld b, b

Jump_02f_4008:
    ld c, h
    ld c, c
    cp d
    ld c, e
    ld d, a
    ld c, l
    cp c
    ld c, l
    ld de, $464e
    ld c, [hl]
    adc b
    ld b, b
    sbc $4f
    and $4f
    di
    ld e, d
    rst $00
    ld e, [hl]
    ld e, c
    ld h, d
    add $62
    ld de, $6263
    ld h, e
    ld h, $50
    ld c, l
    ld h, [hl]
    ld d, l
    ld h, [hl]
    and a
    ld [hl], c
    sub $75
    ld a, c
    ld a, c
    sbc $79
    inc [hl]
    ld a, d
    dec [hl]
    ld a, d
    sub l
    ld h, [hl]
    ld de, $114e
    ld h, e
    inc [hl]
    ld a, d
    nop
    nop
    ld bc, $3f00
    ld [de], a
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $38
    inc bc
    ld a, c
    ld [bc], a
    ld d, c
    ld bc, $00aa
    cp a
    dec sp
    inc a
    ld [bc], a
    db $76
    ld bc, $0130
    ld e, a
    ld bc, $7f5f
    scf
    ld d, [hl]
    cpl
    ld sp, $7fff
    sbc a
    ld [bc], a
    inc e
    nop
    nop
    ld a, [hl]
    ld h, b
    inc bc
    ld a, c
    ld [bc], a
    ld d, c
    ld bc, $00aa

Call_02f_4080:
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $38
    ld c, h
    xor b
    or a
    ld b, a
    ld [hl], b
    xor b
    cp d
    ld [hl], l
    rst $38
    ld a, a
    cp a
    ld sp, hl
    ccf
    inc sp
    and e
    pop hl
    ld bc, $7fff
    ld hl, $c1ff
    rst $18
    add hl, hl
    cp a
    ld e, c
    rst $38
    rst $38
    ld sp, hl
    ei
    db $fd
    xor a
    ld sp, hl
    dec bc
    db $fd
    rst $38
    ld hl, $9181
    inc hl
    ld [hl+], a
    cp a
    sbc l
    ld e, [hl]
    rst $38
    ld c, a
    xor a
    and c
    ld d, b
    nop
    rst $38
    ccf
    rst $38
    rst $38
    xor l

Call_02f_40c0:
    ld e, e
    ld c, e
    cp l
    db $ed
    dec de
    db $db
    dec [hl]
    rst $38
    pop af
    rst $28
    ld h, e
    dec e
    ld bc, $f9ff
    rst $38
    rst $38
    jp c, $e1f8

    jr nz, @-$3a

    ld b, b
    and b
    and b
    rst $38
    ret nc

    ret nc

    xor d
    xor d
    push af
    push af
    rst $38
    rst $38
    rst $38
    or l
    ccf
    ld a, [bc]
    dec c
    ld b, l
    ld b, $0a
    dec bc
    rst $38
    rla
    rla
    xor e
    xor e
    ld e, a
    ld e, a
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    add c
    nop
    cp l
    nop
    and l
    cp $e0
    dec b
    cp l
    or $e0
    rst $38
    cp $e0
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    nop
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f6]
    cp $ff
    db $ec
    xor d
    rst $38
    dec b
    rst $38
    jr z, @+$01

    ld d, l
    rst $08
    rst $38
    ld a, [$5fff]
    db $f4
    ldh [$e1], a
    db $ed
    nop
    rst $38
    ld [hl], a
    db $fd
    rst $38
    db $fc
    db $fc
    ld_long $ff15, a
    add hl, sp
    jp nc, Jump_02f_7fe0

    add hl, sp
    rst $38
    ld e, l
    rst $38
    xor c
    rst $38
    dec e
    db $fc
    ldh [rIE], a
    xor a
    rst $38
    sub l
    rst $38
    xor e
    rst $38
    add l
    rst $38
    rst $18
    jp nc, $c5ff

    rst $38
    ldh a, [$a3]
    ld [c], a
    ld e, a
    rst $38
    push af
    cp a
    db $fc
    ld [c], a
    ccf
    sub l
    db $ec
    push af
    rst $38
    set 7, a
    rst $38
    push de
    rst $38
    ei
    db $fc
    adc a
    cp $a2
    rst $38
    ld d, a
    adc e
    rst $38
    and c
    db $f4
    ldh [$a9], a
    db $ec
    ldh [rHDMA5], a
    adc e
    ldh [$dd], a
    xor d
    ld c, b
    ldh [$aa], a
    ld d, l
    nop
    ld [hl], h
    ldh [rIE], a
    rst $38
    rst $38
    ld a, [bc]
    nop
    ld l, e
    inc d
    jr z, jr_02f_418d

jr_02f_418d:
    nop
    rst $38
    ld a, a
    and b
    ld bc, $01d4
    nop
    ld bc, $f801
    and $7e
    add sp, -$1b
    push af
    ld a, [bc]
    sub h
    ld a, a
    rst $10
    jr z, @-$64

    ldh [$9f], a
    and c
    dec hl
    push de
    rst $38
    ld bc, $e7f8
    add sp, -$1b
    push af
    rst $38
    ld a, [bc]
    ld d, h

jr_02f_41b2:
    ccf
    scf
    ld [$ff1f], sp
    xor a
    rst $28
    ld bc, $01d7
    inc bc
    ret nz

    ldh [$df], a
    ld hl, $ff8b
    ld [hl], l
    ccf
    ld bc, $ff1f
    dec c
    ld [bc], a
    ld h, h
    ei
    rra
    ld a, [hl+]
    ret nc

    ldh [$8a], a
    nop
    xor e
    ld d, h
    add sp, -$01
    nop
    ldh a, [rIE]
    ld e, b
    and c
    jr z, jr_02f_41b2

    cp $fa
    ret nz

    ldh [rIE], a
    inc b
    ldh [$bf], a
    rst $38
    ld a, a
    rst $38
    cp [hl]
    cp $fc
    ret nz

    ld a, [hl+]
    rst $38
    add b
    ld a, a
    rst $38
    rst $38
    ld b, e
    rst $38
    db $fd
    xor c
    rst $38
    pop de
    rst $38
    and e
    db $fd
    ld b, l
    rst $38
    ei
    dec bc
    push af
    ld d, a
    xor c
    ld [$7f15], a
    rst $38
    rst $38
    ld a, e
    push bc
    ld h, c
    rst $18
    ld c, e
    db $fd
    pop hl
    rst $38
    ld e, a
    ld c, e
    db $fd
    db $d3
    ld a, l
    cp h
    ld b, c
    db $fd
    rst $38
    rst $38
    db $ed
    rla
    add a
    ld a, l
    dec l
    rst $30
    add a
    rst $38
    ld a, l
    rrca
    push af
    rla
    db $ed
    ret z

    ld a, c
    db $dd
    rst $38
    ld a, c
    call $ed79
    ld e, a
    jp $f77d


    rst $38
    ld c, c
    call c, $dd41
    ld a, a
    rrca
    dec [hl]
    sub a
    rst $38
    dec l
    adc l
    dec [hl]
    sbc a
    push hl
    dec l
    push de
    rst $18
    rst $38
    dec h
    ld [hl], c
    dec b
    ld [hl], c
    db $fd
    cp a
    ld b, b
    rst $38
    rst $38
    ld a, a
    sbc $40
    ret nz

    ld a, a
    push hl
    ld e, d
    rst $38
    rst $38
    ld a, a
    ld a, d
    dec b
    dec hl
    rst $38
    ld d, c
    ld bc, $fff1
    db $fd
    and c
    dec b
    cpl
    push de
    ld d, l
    and l
    rst $38
    rst $38
    db $fd
    cp a
    ld b, c
    xor c
    rst $38
    ld a, l
    ld [bc], a
    ld [$15ff], a
    call nc, $a02b
    ld e, a
    ret nz

    ccf
    and l
    ei
    ld e, a
    jp nz, $e0fc

    ld e, a
    and c
    xor e
    ld d, l
    dec d
    rst $38
    db $eb
    inc bc
    db $fd
    add c
    rst $38

jr_02f_428a:
    ld d, e
    db $fd
    and c
    rst $38
    rst $38
    db $d3
    db $fd
    jp $853f


    ld a, a
    set 5, e
    ccf
    add a

Jump_02f_4299:
    db $fc
    and $61
    ld h, h
    ldh [$e9], a
    rst $38
    pop af
    and b
    db $fc
    and $e4
    jp hl


    ret c

    pop hl
    db $e4
    jp hl


    ldh [$ef], a
    add l
    ldh [$e8], a
    push af
    xor $32
    add b
    push af
    rst $38
    jp $e288


    and c
    ld e, a
    ret z

    rst $38
    scf
    and b
    ld e, a
    call nc, $ea2b
    dec d
    ld a, [$dfba]
    and d
    ld a, a
    jr z, jr_02f_428a

    ld d, l
    rst $38
    ld a, [bc]
    ldh a, [$c0]
    xor d
    sub h
    ld c, b
    ret nz

    call z, Call_02f_55a3
    ldh [$a2], a
    xor b
    call nc, $dca2
    push hl
    ld d, a
    cp a
    rst $38

Call_02f_42e0:
    cpl
    pop de
    rla
    jp hl


    add e
    call nc, $a3c0
    rst $28
    db $fd
    pop de
    rst $38
    db $e3
    db $fc
    ldh [rIF], a
    rst $38
    sub a
    cp [hl]
    ld d, b
    ld [$027d], a
    rla
    nop
    cp a
    jp hl


    ld h, b
    rst $18
    ld l, a
    rst $38
    ld a, [$dfc5]
    pop hl
    ld h, b
    ld d, b
    xor a
    ld a, h
    and l
    ld d, c
    ld b, b
    jp hl


    pop hl
    ld l, a
    and c
    ld l, h
    and h
    ld d, l
    ld h, l
    xor d
    cp $6c
    and b
    call nc, $c019
    xor a
    ld h, b
    ld d, c
    db $10
    ldh [$d1], a
    ret nc

    and b
    dec b
    ei
    rst $30
    cpl
    pop de
    db $fd
    and b
    ld h, b
    xor b
    ld d, a
    db $dd
    jr z, @+$01

    cp b
    ld d, c
    ld [hl], c
    sub c
    sub b
    ld d, c
    ld d, c
    sub b
    rst $38
    sbc b
    ld d, b
    jp hl


    ld bc, $c13d
    ld a, l
    ld hl, $3dff
    ld de, $111f
    cp l

Jump_02f_4345:
    pop de
    rst $18
    ld de, $3dcb
    ld de, $a13c
    ld d, l
    xor a
    and b
    or d
    push hl
    ld d, l
    xor d
    rst $38
    cp $01
    xor [hl]
    ld bc, $0bf5
    and e
    ld e, a
    ld sp, hl
    rla
    ld l, b

jr_02f_4360:
    and b
    db $10
    jp $ff3f


    dec a
    rst $38
    cp a
    rst $38
    ld a, a
    ld a, l
    cp a
    xor c
    ld d, a
    db $f4
    dec bc
    ld a, [hl+]
    rst $38
    rst $38
    add l
    ld a, a
    ld b, b
    cp a
    xor b
    ld d, a
    pop de
    sbc a
    ld l, $aa
    ld d, l
    push af
    ld a, [bc]
    ld [hl], h
    and b
    xor e
    and b
    nop
    ld a, a
    rst $38
    jr z, jr_02f_4360

    ld d, l
    xor d
    xor d
    ld d, l
    or d
    add c
    db $fc
    ldh [$81], a
    xor c
    add c
    inc d
    db $eb
    xor d
    ld d, l
    ld e, l
    and d
    db $fd
    rst $38
    inc [hl]
    ldh [$57], a
    rst $38
    dec hl
    rst $38
    rlca
    rst $38
    rst $38
    dec bc
    rst $38
    and l
    ld e, a
    ld d, e
    xor a
    jp hl


    rla
    rst $38
    rla
    rst $38
    db $eb
    rla
    ld d, a
    cp a
    or a
    ld e, a
    sbc a
    rst $18
    rst $38
    and c
    ld e, a
    dec hl

Jump_02f_43bc:
    inc b
    ldh [$e2], a
    pop hl
    add a
    rst $38
    ld a, a
    ld c, e
    cp a
    add l

jr_02f_43c6:
    ld a, a
    ld d, e
    xor a
    xor c
    rst $38
    ld d, a
    push af
    dec bc
    ld d, [hl]
    rst $38
    ld [$7115], a
    rst $38
    sbc [hl]
    cp b
    ld d, a
    ld e, l
    rst $38
    xor [hl]
    ld d, c
    rla
    xor a
    jp hl


    adc e
    ld [hl], l
    sub [hl]
    ldh a, [$e4]
    db $dd
    ldh a, [$e0]
    ld d, $f7
    jp hl


    add a
    ld a, a
    ldh a, [$e9]
    rla
    jp hl


    set 6, l
    db $fd
    sub a
    ret nc

    ldh [rSVBK], a
    sbc a
    cp c
    ld d, a
    rst $18

jr_02f_43fa:
    rst $38
    rst $18
    xor c
    ld d, a
    ld de, $85ef
    ld [hl], b
    and b
    inc de
    rst $38
    ld a, l
    sub a
    sbc b
    ret nz

    rst $38
    rst $38
    add c
    ld a, a
    dec hl
    ld e, h
    add b
    ld e, l
    rla
    or b
    ld_long $ff51, a
    db $dd
    or b
    and $af
    ldh a, [$e2]
    ld a, a
    rst $18
    rst $38
    add sp, $17
    ld d, d
    cp a
    sub l
    jr c, jr_02f_43c6

    ld sp, hl
    add l
    ret nc

    ldh [rNR12], a
    add c
    inc de
    rst $38
    or a
    rst $38
    rst $30
    ld hl, sp+$67
    ld b, b
    jp nz, Jump_000_2ee1

    add c
    rst $10
    jr z, jr_02f_43fa

    ld a, a
    ld l, [hl]
    rst $38
    cp a
    cp e
    ld a, a
    xor $3f
    cp a
    ld a, a
    rst $28
    rst $38
    db $10
    ld bc, $d7ff
    add hl, hl
    ei
    db $fd
    db $ed
    rst $28
    ei
    cp e
    db $fd
    rst $28
    cp $20
    rst $28
    ld de, $fdff
    nop
    ld hl, sp-$5f
    ld d, a
    rst $38
    jp z, $a83f

    ld d, a
    cp a
    ld d, l
    xor d
    dec d
    rst $38
    rst $38
    ld bc, $81fa
    push de
    rst $38
    rst $38
    and a
    ld sp, hl
    dec hl
    push de
    ld d, l
    xor e
    ld d, c
    rst $38
    rst $38
    db $eb
    add e
    xor l
    ld d, c
    dec e
    pop hl
    xor e
    rst $38
    ld d, c
    db $dd
    ld hl, $413b
    push af
    ld bc, $ff69
    ld bc, $8183
    ld c, e
    push af
    and a
    ei
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    cp l
    ld a, e
    xor l
    ld a, e
    rst $38
    rst $38
    rst $38
    db $fd
    add d
    ld [$d315], a
    cpl
    and e
    rst $38

jr_02f_44a4:
    ld e, a
    ret


    scf
    and e
    ld e, h
    rst $00
    add hl, sp
    adc a
    db $fd
    ld [hl], e
    ld e, b
    add b
    call nc, $7a85
    sub e
    db $ec
    add l
    rst $38
    ld a, [$fc83]
    adc c
    or $03
    db $fc
    ld e, [hl]
    rst $38
    and a
    cp h
    ld c, a
    jr c, jr_02f_44a4

    sub b
    ld a, a
    nop
    rst $38
    rst $38
    and d
    ld e, l
    ld b, b
    cp a
    adc b
    ld [hl], a
    dec h
    rst $38
    jp c, $fd02

    add hl, de
    and $1c
    rst $28
    add hl, sp
    rst $38
    adc $3a
    db $dd
    ld [hl], c
    sbc [hl]
    ld [hl], e
    cp h
    ld d, b
    rst $38
    xor a
    xor b
    ld d, a
    ld b, b
    cp a
    and b
    ld e, a
    jp nz, Jump_000_3dff

    xor b
    ld d, a
    push de
    ld a, [hl+]
    ld a, d
    add l
    push hl
    rst $38
    ld a, [hl-]
    db $e3
    db $fc
    push af
    ld a, [$fc63]

Call_02f_44fd:
    rlca
    sbc a
    ld hl, sp-$55
    ld d, h
    ld e, a
    and b
    inc [hl]
    ret nz

    ld d, h
    ld h, b
    adc d
    or $3b
    ld h, d
    and c
    cp $b0
    and c
    xor c
    cp $43
    db $fc
    or a
    rla
    jp hl


    jp hl


    jp nc, $5d80

    and e
    ld h, d
    ldh [rIE], a
    rst $38
    sbc $3f
    rst $38
    ld de, $ddf3
    rst $30
    rst $18
    rst $38
    db $fd
    rst $10
    sbc $f7
    ld e, a
    or $77
    cp $ff
    ld a, l
    cp h
    ret nz

    add c
    push de
    db $e3
    di
    rst $38
    ld a, a
    push hl
    rst $38
    cp e
    db $fd
    reti


    db $e3
    ei
    ld h, h
    ld h, b
    rst $38
    ld h, b
    cp a
    ld [$3a35], a
    and c
    sub $21
    rst $38
    ld [$a6a3], sp
    ld bc, $a30c
    rst $30
    ld hl, sp-$01
    ld e, a
    ldh [$dd], a
    ld h, d
    or a
    ld a, b
    db $dd
    ccf
    rst $28
    xor a
    ld e, a
    db $f4
    dec bc
    ld bc, $0780
    xor l
    ld d, a
    rst $38
    ld c, a
    or l
    rst $38
    dec b
    rst $28
    db $fd
    ld sp, hl
    rst $38
    db $fd
    dec bc
    dec b
    and d
    dec d
    rst $38
    ld c, h
    cp a
    scf
    db $dd
    rst $38
    ld c, h
    cp a
    daa
    db $dd
    sbc h
    rst $28
    daa
    db $dd
    rst $38
    or d
    dec b
    inc l
    add e
    cp d
    dec b
    dec c
    and d
    ld a, a
    xor c
    rla
    ld c, d
    add b
    add b
    ld a, a
    sub l
    sub $82
    dec e
    ld e, a
    and h

jr_02f_459b:
    jp nz, Jump_000_15ea

    ld [bc], a
    cp b
    ld h, b
    cp $c0
    ld b, h
    and b
    ld a, [$81cc]
    nop
    db $e4
    ld b, b
    rst $38
    rst $38
    sub h
    rst $28
    cpl
    rst $38
    push de
    ld d, h
    xor a
    rlca
    db $fd
    ei
    db $fd
    inc b
    db $fd
    ei
    or [hl]
    add c
    ld [$b580], a
    ld a, a
    ld l, d
    rst $38
    rst $38
    ld [hl], e
    ld hl, sp+$78
    ldh a, [$58]
    jr nc, jr_02f_459b

    jr nc, @+$01

    cp e
    ld [hl], b
    ld bc, $5201
    db $fc
    ld bc, $fffe
    ret


    ld e, $1e
    rrca
    inc d
    ld [$0804], sp
    rst $38
    jp c, $d70c

    xor b
    ccf
    ret nz

    ld b, c
    cp [hl]
    rst $38
    ld c, d
    push af
    sub a
    add sp, $2f
    ret nc

    sbc a
    ldh [rIE], a
    cpl
    ret nc

    db $fd
    ld [bc], a
    cp $01
    ld d, a
    xor b
    jp Jump_000_15ea


    ld hl, sp-$1f
    db $f4
    pop hl
    db $ec
    pop hl
    db $fc
    rst $20
    ld a, [hl+]
    push de
    db $ec
    add sp, -$1b
    ldh [$e3], a
    xor d
    ld d, l
    and b
    db $e3
    ld d, b
    rst $38
    ld [bc], a
    rst $28
    db $fd
    rst $18
    rst $38
    cp a
    adc a
    add b
    add b
    ld bc, $ff42
    db $fc
    add hl, bc
    or $55
    xor d
    xor a
    ld d, b
    db $fd
    ei
    rst $38
    ei
    pop bc
    add b
    ld [bc], a
    add b
    dec d
    nop
    dec hl
    rst $38
    nop
    ld e, [hl]
    nop
    scf
    nop
    ld e, a
    nop
    cp a
    rst $38
    nop
    ld l, [hl]
    ld bc, $00ab
    ld a, [hl]
    ld bc, $ffd8
    ld b, $f4
    ld [$11e0], sp
    add c
    ld h, e
    ld b, b
    rst $38
    add h
    nop
    nop
    ld [$7f00], a
    add b
    rra
    rst $38
    ld h, b
    cpl
    db $10
    add a
    adc b
    pop bc
    add $02
    rst $38
    ld hl, $0000
    and e
    inc bc
    ld d, l
    ld bc, $fff9

jr_02f_4666:
    ld bc, $01ed
    ei
    ld bc, $01fd
    rst $38
    rst $38
    ld bc, $817d
    cp b
    ld b, $74
    ld [$ffc0], sp
    ld de, $2341
    jp Jump_02f_6123


    ld de, $fff4
    ld [$06f8], sp
    inc bc
    rlca
    ld [$109c], sp
    ei
    jr nc, jr_02f_46ac

    rst $38
    ldh [rNR10], a
    jr nc, @+$0a

    sbc h
    inc bc
    rst $38
    rlca
    rra
    ld h, c
    cpl
    ld de, $8907
    add e
    rst $38
    push bc
    jp $87c5


    adc c
    cpl

jr_02f_46a3:
    ld de, $f71f
    ld h, c
    cp [hl]
    ld b, c
    call z, Call_02f_4080

jr_02f_46ac:
    rst $18
    jr nz, jr_02f_4666

    rst $38
    ld c, b
    sbc a
    ld h, b
    xor d
    ld d, l
    dec b
    ld a, d
    nop
    ccf
    nop
    ld b, b
    add h
    add c
    ld h, e
    ldh [$c4], a
    ld [c], a
    ld h, $e1
    rst $38
    nop
    nop
    ld [bc], a
    ld hl, $c6c1
    add a
    adc b
    rst $38
    cpl
    db $10
    rra
    ld h, b
    ld a, [hl]
    add c
    push de
    ld a, [hl+]
    rst $38
    ld a, e
    add l
    rst $38
    ld bc, $05fb
    rst $30
    add hl, bc
    rst $38
    db $db
    dec h
    di
    dec c
    xor e
    ld d, l
    ld b, c
    cp l
    rst $38
    dec d
    add b
    inc [hl]
    res 7, a
    ret nz

    rst $30
    rst $38
    rst $38
    adc a
    rst $30
    or a
    rst $00
    or a
    rst $00
    rst $08
    rst $30
    db $ed
    push de
    db $e4
    jr nz, jr_02f_46a3

    ld e, d
    ld a, [hl-]
    ld hl, $fffa
    ld d, h
    cp [hl]
    ld e, [hl]
    ld hl, $2a00
    push de
    ld e, a
    and b
    ld a, [hl+]
    ld hl, $febf
    cp [hl]
    ld h, d
    ld bc, $e901
    ld de, $03fa
    ei
    rst $38
    rst $38
    add $fb
    jp c, $dbe3

    ld [c], a
    rst $20
    rst $38
    ei
    and d
    ld [hl], b
    dec b
    ret nz

    dec hl
    add b
    push de
    ld a, [$e014]
    ld e, [hl]
    ld [c], a
    nop
    dec [hl]
    add b
    xor l
    rra
    ld l, e
    rst $38
    rlca
    ld sp, hl
    inc bc
    rst $38
    ld bc, $01ea
    db $f4
    rst $38
    ld bc, $01a9
    ld d, e
    ld bc, $c0aa
    ld c, b
    rst $38
    ldh a, [$81]
    cp $ea
    push af
    cp a
    rst $38
    rst $28
    rst $38
    sbc a
    db $dd
    adc a
    xor a
    rst $18
    add l
    inc bc
    dec e
    rst $38
    inc bc
    ld a, e
    add a
    rst $28
    rra
    ei
    rst $38
    rst $28
    rst $38
    di
    ld [hl], a

jr_02f_4766:
    db $e3
    db $eb
    rst $30
    and a
    add hl, de
    ld l, l
    ld a, [$e2d0]
    db $eb
    ret nc

    db $e4
    or l
    jp z, $80ff

    cpl
    ei
    ret nc

    push de
    ld c, l
    jr nz, @-$74

    rst $38
    ld a, [hl+]
    push de
    push af
    ld l, l
    adc d
    call z, $af61
    ld d, b
    adc [hl]
    ld h, c
    ld a, [bc]
    rst $38
    cp [hl]
    ld h, c
    db $fc
    ldh a, [$e9]
    and b
    ld h, c
    jp hl


    rla
    rst $30
    dec bc
    cp c
    ld b, a
    rst $38
    ld d, [hl]
    xor e
    add hl, hl
    rst $10
    sbc a
    db $e3
    ld c, c
    rst $30
    rst $38
    rst $30
    db $eb
    cpl
    ret nc

    rst $38
    add b
    ccf
    ret nz

    rst $18
    rst $38
    add b
    ld a, [hl+]
    push de
    add b
    ld a, [c]
    nop
    xor d
    rst $38
    db $d3
    ld l, a
    sub b
    and c
    ld h, d
    nop
    jr nz, jr_02f_4766

    cp $42
    ld l, d
    sub l
    rst $38
    db $fd
    ld [bc], a
    or $09
    db $fd
    ld [bc], a
    cp [hl]
    ld b, c
    rst $38
    ld a, e
    add h
    ld a, $c1
    db $fd
    add d
    ld c, c
    rst $30
    rst $38
    ld [hl], d
    rst $28
    ld c, c
    rst $30
    scf
    db $eb
    ld c, c
    rst $30
    rst $38
    inc sp
    rst $28
    add hl, bc
    rst $30
    ld [hl], $eb
    ld a, $c1
    pop hl
    ei
    add sp, -$1e
    ld hl, sp-$1b
    add sp, -$1f
    ldh [$e1], a
    add hl, bc
    rst $30
    ld a, $aa
    and b
    ldh [$37], a
    ldh [$e4], a
    push de
    ld b, [hl]
    add b
    xor d
    db $10

jr_02f_47fc:
    add d
    ld b, c
    adc $52
    ld h, b
    ld a, a
    rst $38
    cpl
    ld e, $20
    ld [bc], a
    ld h, e
    ld d, e
    xor a
    rst $38
    xor l
    ld e, [hl]
    rst $10
    jr c, jr_02f_47fc

    inc sp
    cp b
    ld h, h
    rst $38
    ld d, b
    add sp, -$10
    ret z

    rst $28
    ret nc

    sub l
    ld [$aaff], a
    ld [hl], l
    rst $20
    jr jr_02f_4855

jr_02f_4822:
    call z, Call_000_251e
    rst $38
    ld [$0e17], sp
    inc de
    rst $30
    dec bc
    ld a, b
    rst $18
    rst $38
    ldh [$50], a
    ldh [$50], a
    rst $28
    ld d, b
    rst $18

Jump_02f_4836:
    ld [hl], b
    rst $38
    ld a, a
    add b
    ret nz

    cp a
    cp a
    rst $38
    rra
    ld a, [$07ff]
    ld a, [bc]
    rlca
    ld a, [bc]
    rst $30
    ld a, [bc]
    ld a, [$df0f]
    cp $01
    inc bc
    db $fd
    db $fd
    ld d, e
    ld b, b
    jr nc, jr_02f_4822

    rst $38
    ld a, c

jr_02f_4855:
    add h
    ld [hl], e
    add h
    inc hl
    call z, $f807
    rst $38
    ld e, $c1
    inc a
    jp $ff00


    ld e, d
    and l
    rst $38
    rst $38
    nop
    db $db
    inc h
    nop
    rst $38
    ld a, [hl]
    add c
    rst $38
    ld b, d
    cp l
    swap h
    ld [hl], c
    adc [hl]
    scf
    ret z

    rst $38
    ld [hl], h
    adc e
    jr nz, @-$1f

    ld [hl], h
    adc e
    scf
    ret z

    rst $38
    ld [hl], e
    adc h
    dec sp
    call nz, $7a85
    ld c, d
    or l
    rst $38
    dec b
    ld_long a, $ff00
    db $eb
    inc d
    add b
    ld a, a
    rst $38
    ld a, $c1
    ld l, d
    sub l
    adc [hl]
    ld [hl], c
    db $ec
    inc de
    rst $38
    ld l, $d1
    ld h, h
    sbc e
    adc $31
    inc c
    di
    rst $38
    ld c, $f1
    sbc h
    inc hl
    inc sp
    call z, $c43b
    or $fc
    pop hl
    ld [hl-], a
    call $e1fc
    inc sp
    call z, $a956
    rst $38
    ld l, d
    sub l
    ld d, d
    xor l
    ld l, d
    sub l
    ld b, d
    cp l
    ld a, [hl]

Call_02f_48c2:
    db $fc
    pop hl
    ld h, d
    sbc l
    call z, $dc33
    inc hl
    db $fc
    pop hl
    ei
    adc h
    ld [hl], e
    db $fc
    pop hl
    call z, Call_000_3233
    call $bd71
    adc [hl]
    db $fc
    pop hl
    ld [hl], d
    adc l
    ld sp, $fcce
    pop hl
    ld b, b
    rst $38
    cp a
    ld h, d
    sbc l
    ld b, b
    cp a
    ld b, d
    cp l
    ld b, d
    cp a
    cp l
    ld [bc], a

jr_02f_48ed:
    db $fd
    ld b, [hl]
    cp c
    ld [bc], a
    rst $18
    jr nz, @+$01

    rst $38
    and $ff
    jp $c3fb


    rst $30
    and $ff
    rst $30
    db $fc
    cp $d8
    push de
    nop
    rst $38
    rst $38
    and b
    db $fd
    pop af
    ld d, b
    ld bc, $3362
    ld h, b
    ld b, c
    jr nz, jr_02f_48ed

    rst $38
    set 7, a
    rst $38
    call $cfef
    rst $38
    rst $08
    rst $38
    call $f7ff
    db $db
    rst $38
    db $ed
    cp e
    and b
    ccf
    rst $38
    ld a, [hl-]
    cp a
    ld [hl], a
    inc [hl]
    rst $38
    ld a, [hl-]
    jp hl


    jr nz, jr_02f_4981

    rst $38
    xor b
    call z, Call_02f_7fe0
    db $fc
    rst $30
    and $fb
    jp $c3ff


    cp b
    ldh [rWY], a
    ld l, a
    inc hl
    dec d
    rrca
    ld b, b
    rst $38
    cp h
    ldh [$9a], a
    and d
    nop
    rst $38
    db $ec
    nop
    nop
    nop
    scf
    jr nz, jr_02f_4976

    ld [hl+], a
    rst $38
    xor $27
    jr nz, @+$01

    ld [c], a
    and $f7
    ld l, [hl]
    ld a, [$26e8]
    dec h
    ld hl, $eeff
    dec h
    ld h, $e6
    ei
    cp $bb
    jp hl


    inc hl
    inc h
    ld sp, $3132
    ld [hl-], a
    add hl, hl
    rst $20
    and b
    and c
    add hl, hl
    db $fc
    ld [c], a
    cp $e0

jr_02f_4976:
    ld c, [hl]
    ld d, b
    inc h
    ld sp, hl
    inc hl
    and $e3
    ld [$a0e6], a
    and c

jr_02f_4981:
    ld c, [hl]
    ld c, d
    ld c, e
    ld hl, sp-$28
    pop hl
    and $e3
    ret nz

    db $eb
    inc sp
    inc [hl]
    inc sp
    inc [hl]
    add hl, hl
    rst $30
    and d
    and e
    add hl, hl
    db $fc
    pop hl
    ld c, a
    ld d, c
    ld d, d
    ld d, e
    db $e3
    ld d, h
    ld d, l
    ret nz

    and $ea
    db $e4
    ld [c], a
    ldh [$4e], a
    ld c, h
    ld c, l
    db $fc
    ret c

    pop hl
    ret nz

    pop af
    dec [hl]
    ld [hl], $35
    ld [hl], $29
    ld c, a
    rst $38
    add hl, sp
    ld a, [hl-]
    ld c, a
    ld h, b
    ld h, c
    ld c, a
    ld d, [hl]
    ld d, a
    rst $08
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    add b
    and $ff
    rst $20
    ld c, [hl]
    nop
    ld sp, hl
    ld bc, $e1d8
    add b
    pop af
    scf
    jr c, @+$39

    jr c, jr_02f_49fa

    rst $38
    dec l
    dec sp
    inc a
    ld l, $62
    ld h, e
    cpl
    ld e, h
    rst $18
    ld e, l
    inc b
    dec b
    ld e, [hl]
    ld e, a
    ld b, b
    push hl
    ld a, [hl+]
    dec hl
    adc [hl]
    cp $e6
    cpl
    ld [bc], a
    inc bc
    ret c

    pop hl
    ld b, b
    pop af
    jp c, $2de2

    ei
    dec a
    ld a, $d2
    ld [c], a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    dec l

jr_02f_49fa:
    ld h, $00
    push hl
    ld a, b
    ld a, c
    cp [hl]
    add sp, -$4c
    ldh [$2d], a
    and $e4
    ret nz

    db $ed
    rst $30
    and h
    and l
    and h
    ret nz

    push hl
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    and $c0
    and $7a
    ld a, e
    ret nz

    rst $38
    ld e, d
    pop hl
    and [hl]
    and a
    xor b
    db $fc
    add b
    push hl
    sbc d
    add sp, $23
    inc h
    ld a, h
    ld a, l
    ld a, [hl+]
    dec l
    cp a
    add b
    add c
    add d
    add e
    adc a
    sub e
    ld e, [hl]
    pop hl
    sub h
    rst $30
    sub l
    sub [hl]
    sub a
    ld b, b
    di
    xor c
    xor d
    xor e
    dec l
    ld a, e
    ccf
    ld b, b
    ld [de], a
    pop hl
    inc l
    ld h, h
    ld h, [hl]
    ld h, a
    ret nz

    rst $20
    rst $38
    ld a, [hl]
    ld a, a
    ld a, [hl+]
    dec l
    add h
    add l
    add l
    add [hl]
    ld a, e
    sub c
    sub d
    cp $c1
    sbc b
    sbc c
    sbc d
    sbc e
    nop

jr_02f_4a5b:
    di
    rst $38
    xor h
    xor l
    xor h
    dec l
    ld b, c
    ld b, d
    ld b, e
    ld b, e
    ld a, a
    ld b, h
    ld b, l
    ld l, $65
    ld l, b
    ld l, c
    ld h, h
    nop
    and $ff
    ld a, [hl+]
    dec l

jr_02f_4a72:
    adc a
    sub b
    add a
    adc b
    adc c
    adc d
    xor $b8
    call nz, $9c2d
    sbc l
    ret nz

    db $d3
    xor e
    xor d
    xor c
    rst $38
    cpl
    ld b, a
    ld c, b
    ld c, c
    ld c, c
    ld b, [hl]
    ld a, $2a
    rst $28
    dec l
    ld l, d
    ld l, e
    ld h, l
    ret nz

    rst $20
    cpl
    sub c
    sub d
    rst $28
    adc e
    adc h
    adc l
    adc [hl]
    ld a, b
    ret nz

    xor [hl]
    xor a
    xor a
    rst $28
    xor [hl]
    cpl
    sbc [hl]
    sbc a
    add b
    db $d3
    xor b
    and a
    and [hl]
    adc $7c
    push bc
    cpl
    ld l, h
    ld l, l
    nop
    rst $20
    ld b, b
    ret z

    or b
    or c
    inc sp
    or c
    or b
    add b
    reti


    inc a
    call nz, Call_02f_6e6e
    ret nz

    ret


    nop
    ret z

    rst $08
    or d
    or e
    or e
    or d
    ld b, b
    sub $20
    push hl
    dec a
    ld a, $b3
    ld l, a
    ld l, a
    ret nz

    db $f4
    nop
    ret c

    inc l
    dec l
    cp $e1
    jr nc, jr_02f_4a5b

    cp h
    and d
    db $f4
    db $e3
    ret nz

    add l
    and $e7
    call c, $e6e3
    push hl
    ld b, b
    sub d
    jr z, jr_02f_4a72

    ld a, [hl+]
    dec l
    jr z, jr_02f_4b2f

    sub e
    and $ee
    ei
    ld l, d
    ret nz

    ld h, l
    daa
    inc bc
    ld a, [hl+]
    dec l
    push af
    and $e6
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02f_4b2f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02f_4bab:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    daa
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    rst $38
    push af
    and $f6
    ld a, [hl+]
    rst $38
    ld [$f7da], a
    db $f4
    ret nz

    rst $38
    jp nz, Jump_000_0be1

    rst $38
    ldh [$0a], a
    ld c, $0e
    ld a, [bc]
    add h
    db $fc
    ld [c], a
    ld [hl], e
    pop hl
    inc c
    xor h
    and $ea
    push hl
    ld [c], a
    ldh [$da], a
    pop hl
    dec bc

Jump_02f_4be2:
    add hl, bc
    dec bc
    sub d
    db $e3
    ret nz

    ld hl, sp+$0c
    rst $38
    pop hl
    ret nz

    rst $38
    add b
    xor $7a
    ldh [rP1], a
    call nz, $c1e0
    db $e3
    ret nz

    rst $20
    push hl
    ret z

    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    di
    and b
    push hl
    ld c, $99
    db $e3
    inc c
    inc c
    dec bc
    add $c6
    db $ec
    db $e4
    xor h
    adc $82
    call Call_000_0d07
    dec c
    dec l
    ret nz

    and $b3
    pop bc
    ld l, h
    push bc
    ld l, a
    ldh [$c0], a
    rst $38
    ld [bc], a
    ret nz

Jump_02f_4c20:
    ld [c], a
    dec c
    sub h
    ld [$e9c0], a
    adc b
    jp $e3b2


    and [hl]
    push bc
    ret nz

    ld hl, sp+$68
    ld b, b
    ldh [rTMA], a
    rst $00
    add sp, -$3d
    dec hl
    ret nz

    rst $38
    dec c
    ld l, l
    sbc b
    push hl
    jp nz, $e000

    dec hl
    add $a8
    add d
    rst $20
    jr nc, @-$1b

    ret nz

    db $d3
    ld l, l
    ld l, l
    db $10
    ret nz

    and $ff
    and b
    ret nz

    ld a, [c]
    db $dd
    ret nz

    dec l
    ret nz

    ld a, [$c57c]
    ld b, b
    jp hl


    ld [$88e6], sp
    ret nz

    ld [c], a
    add b
    push de
    ld c, l
    ret nz

    and $8e
    jp $ffc0


    jp nz, $e093

    sub [hl]
    push bc
    xor h
    sbc l
    ret nz

    rst $30
    add [hl]
    sbc a
    ccf
    adc l
    ld l, d
    ld l, d
    ld c, d
    sub b
    rst $38
    db $e3

jr_02f_4c7b:
    rrca
    add c
    push af
    db $e4
    di
    ld [c], a
    ld a, [bc]
    and $f7
    rst $38
    ld l, c
    ld a, [bc]
    ld c, $c0
    push hl
    ld l, d
    ld a, [bc]
    ld a, [bc]
    db $db
    db $eb
    and $f8
    jp nz, $fb7f

    ld a, [$8200]
    ld a, a
    ld b, d
    ld a, c
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    db $fc
    sbc a
    rst $28
    call $804b
    db $fc
    jr nz, jr_02f_4c7b

    or $c0
    rst $38

Jump_02f_4cab:
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ld hl, sp+$6a
    rst $38
    jp hl


    ret nz

    rst $38
    nop
    db $fc
    ei
    or e
    ld [c], a
    ret nz

    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    cp c
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    add b
    ld d, e
    call z, $c0ff
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    ret nz

    rst $38
    call z, $c0ff
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    ret nz

    rst $38
    ret nz

    ei
    nop
    nop
    nop
    dec c
    rrca
    rst $38
    rst $20
    nop
    nop
    di
    ld [$e3fe], a
    ldh [rIE], a
    ldh [$fc], a
    nop
    db $fc
    push hl
    ret nz

    db $e3
    jp hl


    jp hl


    ldh [$e9], a

jr_02f_4d6e:
    and b
    push hl
    ret c

    push hl
    ret nz

    db $eb
    add b
    and $00
    and $e5
    or a
    db $ed
    ldh [$e6], a
    and b
    ld a, [c]
    ldh [$fa], a
    ld h, $e2
    jr nz, jr_02f_4d6e

    or e
    push hl
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02f_4d9e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    nop
    nop
    nop
    xor c
    nop
    rst $38
    rst $38
    db $fd
    db $fc
    jr jr_02f_4d9e

    ld [c], a
    db $10
    rst $10
    ld hl, sp+$1c
    ld hl, sp-$1d
    ld sp, hl
    ldh [$e1], a
    sbc e
    ld a, [$0010]
    inc e
    inc e
    inc e
    ld d, b
    and b
    ld_long a, $ffff
    rst $38
    rst $38
    ei
    ld a, [$dd11]
    jp hl


    ld hl, $ffd0
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    inc b
    nop
    db $10
    inc b
    inc b
    nop
    db $10
    ld [$0004], sp
    db $10
    inc c
    inc b
    nop
    db $10
    db $10
    inc b
    nop
    db $10
    inc c
    inc b
    nop
    db $10
    ld [$0004], sp
    db $10
    inc b
    inc b
    nop
    db $10
    rst $38
    nop
    inc d
    ld [bc], a
    inc b
    rrca
    ld d, $02
    inc b
    rrca
    jr jr_02f_4e3f

    inc b
    rrca

jr_02f_4e3f:
    ld a, [de]
    ld [bc], a
    inc b
    rrca
    rst $38
    ld bc, $fffe
    ld c, h
    xor b
    or a
    ld b, a
    ld [hl], b
    xor b
    cp d
    ld [hl], l
    rst $38
    ld a, a
    cp a
    ld sp, hl
    ccf
    inc sp
    and e
    pop hl
    ld bc, $7fff
    ld hl, $c1ff
    rst $18
    add hl, hl
    cp a
    ld e, c
    rst $38
    rst $38
    ld sp, hl
    ei
    db $fd
    xor a
    ld sp, hl
    dec bc
    db $fd
    rst $38
    ld hl, $9181
    inc hl
    ld [hl+], a
    cp a
    sbc l
    ld e, [hl]
    rst $38
    ld c, a
    xor a
    and c
    ld d, b
    nop
    rst $38
    ccf
    rst $38
    rst $38
    xor l
    ld e, e
    ld c, e
    cp l
    db $ed
    dec de
    db $db
    dec [hl]
    rst $38
    pop af
    rst $28
    ld h, e
    dec e
    ld bc, $f9ff
    rst $38
    ld a, [hl]
    ret nz

    rst $20
    cp $3d
    dec l
    cp a
    ld sp, hl
    ld sp, $edc0
    rst $38
    jr nc, @-$5e

    or b
    jr nz, jr_02f_4ec7

    or c
    sub c
    ld e, a
    cp $c0
    and $db
    res 7, l
    db $ed
    sbc e
    ld e, e
    or l
    ld a, [hl]
    ret nz

    rst $28
    rst $38
    ld a, $2a
    cp a
    and $3c
    add b
    db $eb
    rst $38
    ld c, e
    ld a, l
    inc l
    cp b
    xor h
    jr c, jr_02f_4ee9

    cp h
    db $fd
    sbc h
    ret nz

    and $2d
    dec sp
    dec hl

jr_02f_4ec7:
    dec a
    dec l
    ld a, e
    ei
    ld e, e
    push af
    add b
    ldh a, [$3f]
    dec hl
    cp a
    pop hl
    ccf
    cp $40
    add sp, $7d
    ld l, a
    ld sp, hl

jr_02f_4eda:
    sbc e
    dec e
    inc sp
    xor [hl]
    cp a
    xor e
    ld [hl], $3a
    and a
    sbc e
    ld d, a
    ld b, b
    push hl
    dec c
    cp a

jr_02f_4ee9:
    dec bc
    dec bc
    dec c
    adc l
    dec de
    dec de
    ret nz

    ldh a, [rIE]
    cp $c0
    db $ec
    dec sp
    db $fd
    rst $08
    adc c
    add e
    dec b
    dec [hl]
    ld a, a
    xor e
    xor c
    scf
    dec a
    and e
    sbc [hl]
    ld d, c
    nop
    push hl
    ld a, a
    add l
    inc bc
    ld b, e
    adc l
    adc l
    ei
    ei
    add b

jr_02f_4f0f:
    and $ff
    jp c, $e1f8

    jr nz, jr_02f_4eda

    ld b, b
    and b
    and b
    rst $38
    ret nc

    ret nc

    xor d
    xor d
    push af
    push af
    rst $38
    rst $38
    rst $38
    or l
    ccf
    ld a, [bc]
    dec c
    ld b, l
    ld b, $0a
    dec bc
    rst $38
    rla
    rla
    xor e
    xor e
    ld e, a
    ld e, a
    rst $38
    rst $38

jr_02f_4f34:
    rst $38
    db $db
    ld hl, sp-$11
    jr nz, jr_02f_4f0f

    ld b, b
    add d
    add b
    rst $38
    ld b, b
    ld b, b
    xor b
    xor b
    push de
    push de
    ld_long a, $fffa
    or l
    ccf
    ld [$550d], a
    ld b, $82
    inc bc
    rst $38
    dec b
    dec b
    dec hl
    dec hl
    ld d, a
    ld d, a
    cp a
    cp a
    cp $c0
    db $fd
    ret c

    ld hl, sp-$20
    jr nz, jr_02f_4f34

    ld d, h
    ld [$eaaf], a
    db $fd
    db $fd
    rst $38
    rst $38
    ld [c], a
    dec [hl]
    and b
    ldh [rHDMA5], a
    ld e, a
    ld d, [hl]
    xor [hl]
    xor a
    ld a, a
    ld a, a
    ldh a, [$e3]
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    ccf
    nop
    nop
    nop
    jr nz, jr_02f_5009

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
    ld [$4403], a
    ld [bc], a
    rst $38
    ld h, e
    ldh a, [$03]
    ld [$4403], a
    ld [bc], a
    ld b, b
    ld [hl], c
    ret nz

jr_02f_5009:
    ld a, [hl]
    call nc, $4400
    ld [bc], a
    rst $38
    ld a, a
    ld [$4403], a
    ld [bc], a
    ld b, b
    dec d
    cp a
    nop
    add [hl]
    ccf
    inc h
    ld l, $40
    dec d
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_02f_5025:
    dec h
    push de

jr_02f_5027:
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
    jr z, jr_02f_5025

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
    jr nz, jr_02f_5027

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
    call nc, Call_02f_48c2
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
    jr nz, jr_02f_5139

jr_02f_5139:
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
    jp Jump_02f_7f7c


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
    jp z, $6fe0

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

Jump_02f_537f:
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

jr_02f_5426:
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
    jr jr_02f_5426

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

jr_02f_54dc:
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
    jr nc, jr_02f_54dc

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

jr_02f_55a0:
    ld a, e
    rst $38
    or [hl]

Call_02f_55a3:
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

jr_02f_55b3:
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
    jr c, jr_02f_55a0

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

jr_02f_55e8:
    and c
    rst $38
    ld e, $8c
    ld a, d
    ld d, a
    xor b
    jr c, jr_02f_55b3

    dec c
    rst $30
    ldh a, [$3d]
    jp nz, Jump_02f_61d8

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
    jr nz, jr_02f_55e8

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
    jp z, Jump_02f_5ac8

    and c
    inc a
    jp Jump_02f_537f


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
    ei
    or a
    ld c, b
    call c, Call_02f_40c0
    rst $38
    inc b
    ei
    ld e, d
    ld sp, hl
    and l
    dec sp
    add b
    ld b, c
    nop
    rst $38
    rst $38
    ld e, d
    and l
    jr nz, @+$01

    rst $18
    inc h
    rst $20
    ld h, [hl]
    and l
    dec h
    and $66
    rst $38
    and l
    ld h, [hl]
    and l
    and h
    ld h, a
    ld h, [hl]
    and l
    inc h
    cp $70
    ret nz

    ld bc, $05fe
    ei
    ld e, $e6
    jr @+$01

    add sp, $30
    ret nc

    ld de, $63f3
    and d
    ld d, l
    ei
    nop
    cp d
    sbc [hl]
    add b
    xor e
    nop
    ld e, l
    nop
    ld [$96fa], a
    add b
    xor [hl]
    sub d
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
    ld [hl], e
    nop
    ld bc, $94ce
    nop
    jr nz, jr_02f_5776

jr_02f_5776:
    add b
    adc [hl]
    nop
    rst $38
    ldh a, [rNR23]
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
    add h
    ld l, a
    ld b, b
    ei
    ld c, $08
    ld l, c
    ld [c], a
    inc bc
    rst $38

jr_02f_579f:
    rlca
    cp $1b
    rst $38

jr_02f_57a3:
    db $fc
    ld e, $f1
    jr z, jr_02f_579f

    ld a, d
    push hl
    ld [hl], b
    rst $38
    rst $08
    inc a
    rst $38
    ei
    rst $20
    db $fd
    ld b, d
    rst $20
    cp a
    jr jr_02f_5801

    or l
    nop
    rst $38
    ld d, h
    ld l, [hl]
    and b
    adc [hl]
    rst $38
    di
    sbc d
    rst $20
    ld c, l
    di
    sub a
    jp hl


    rst $00
    rst $38
    ld sp, hl
    adc a

jr_02f_57ca:
    di
    ld e, [hl]
    rst $20
    adc [hl]
    di
    push af
    cp $0a
    and b
    ldh [rIE], a
    adc d
    push af
    ld d, a
    add sp, -$73
    rst $38
    ld a, [c]
    add hl, de
    rst $20
    adc a
    di
    rst $18
    sbc c
    sbc a
    rst $38
    ld c, l
    daa
    rla
    and e
    di
    db $db
    pop hl
    xor $ff
    pop af
    or h
    ei
    ld b, c
    rst $38
    rst $18
    sbc a
    sbc h
    rst $38
    ld c, a
    ld h, $17
    and d
    di
    jp c, $eee1

    rst $38
    ld [hl], c
    db $f4

jr_02f_5801:
    dec sp
    ld sp, hl
    rst $38
    rst $20
    jr jr_02f_57ca

    rst $38
    inc h
    rst $20
    inc h
    rst $38
    inc a
    db $db
    inc a
    rst $20
    db $fd
    jr jr_02f_57a3

    ld b, c
    ld h, a
    sbc d
    call nz, $0b8a
    ret nz

    rst $38
    ld b, d
    and b
    db $10
    ret nz

    jp hl


    add b
    ld h, b
    sub c
    rst $38
    adc e
    ld h, b
    ld d, $a9
    pop hl
    dec bc
    adc d
    daa
    ld a, a
    daa
    rrca
    xor l
    rra
    sub $3f
    ld a, l
    db $76
    add b
    cp $20
    daa
    inc h
    db $db
    inc c
    rst $30
    ld [hl], $cf
    jr @+$01

    rst $20
    sub $0f
    ld e, c
    and [hl]
    ld b, d
    rrca
    ei
    ld a, a
    nop
    inc e
    inc bc
    cp a

jr_02f_584e:
    nop
    sbc c
    ld h, [hl]
    jr c, jr_02f_5874

    sbc a

jr_02f_5854:
    dec a
    jp nz, $e718

    add hl, de
    jr nc, jr_02f_587f

    db $10
    add c
    ld d, [hl]
    rst $08
    xor c
    ld [hl+], a
    rst $38
    ld [hl], l
    sub b
    add h
    add b
    and e
    ld de, $ffef
    rra
    ldh [$3d], a
    rst $00
    inc sp
    rst $08
    dec l
    rst $10
    cp $e0

jr_02f_5874:
    ld h, l
    jr z, jr_02f_584e

    ld b, h
    ei
    or h
    rst $38
    ret nc

    rst $38
    rst $38
    ei

jr_02f_587f:
    inc e
    db $ed
    ld h, $8b
    ld b, [hl]
    db $db
    rst $38
    ld h, [hl]
    add $4f
    dec bc
    add a
    sbc e
    add a
    or e
    rst $38
    rst $08
    xor a
    sbc a
    and $5f
    cp a
    ld a, [hl]
    db $eb
    rst $18
    inc a
    rst $38
    ld l, $ef
    cpl
    ld hl, $1e60
    inc e

jr_02f_58a1:
    rst $38
    rst $38
    ld l, $e7
    ld c, d
    rst $00
    ld e, d
    rst $20
    ld b, a

jr_02f_58aa:
    ei
    rst $08
    adc e
    ldh [$e4], a
    ld h, [hl]
    rst $18
    ld a, [hl]
    rst $38
    jr z, jr_02f_5854

    rst $38
    ld a, $ef
    cpl
    rst $28
    pop hl
    ldh [rNR10], a
    ret nz

    pop de
    rst $28
    ld l, a
    jr @+$01

    ld h, a
    ld b, d
    ret nz

    ld a, [hl]
    rst $38
    jr c, jr_02f_58a1

    rst $18
    ld b, e
    db $fd
    xor b
    ld [bc], a
    db $db
    dec e
    ldh [$e7], a
    ld a, [hl]
    cp $1b
    ldh [rNR23], a
    rst $20
    jr nz, jr_02f_58aa

    or [hl]
    dec hl
    db $ed
    cp a
    cp d
    dec sp
    rst $18
    db $76
    rst $18
    ld d, h
    ld hl, sp+$00
    ld a, [hl+]
    add $cb
    ld [hl+], a
    jr @+$01

    ldh [$e3], a
    rst $38
    pop bc
    adc h
    ld hl, $00e7
    push af
    db $db
    cp $e0
    add c
    ld hl, sp-$20
    rst $38
    nop
    xor e
    rst $38
    rst $38
    dec b
    cp $ab
    db $fc
    dec c
    ld a, [$fdb2]
    rst $38
    ld d, l
    ld [$d7a8], a
    db $f4
    adc e
    or b
    rrca
    ld a, a
    sbc $7f
    add hl, hl
    cp $55
    rst $38
    cp [hl]
    ld l, $e0
    cp a
    xor d
    rst $38
    ret nz

    rst $38
    sbc b
    ld h, a
    ld b, b
    pop hl
    ld e, b
    db $f4
    ld b, b
    ld b, $d0
    ld c, e
    dec hl
    db $10
    ld l, b
    inc a
    inc bc
    add h
    ld [hl], e
    rst $28
    or h
    db $eb
    inc hl
    call z, $e180
    ld a, [hl-]
    rst $18
    rst $30
    ld a, a
    ld e, [hl]
    push de
    ld a, [hl]
    db $dd
    ld a, a
    ei
    ld l, $68
    ld h, e
    rst $38
    add hl, de
    rst $20
    rla
    xor $3f
    ret z

    cpl
    ret c

    rst $10
    rra
    ldh a, [$fd]
    ld l, d
    nop
    jp c, Jump_02f_4008

    xor a
    cp $bf
    rst $18
    ld hl, sp+$6f
    ld hl, sp-$21
    ldh a, [$83]
    ld b, b
    inc a
    cp $e6
    ld b, c
    ccf
    jp $c73e


    db $dd
    cpl
    jp c, Jump_000_2ffd

    ldh a, [$e5]
    dec a
    jp $c73c


    ret nc

jr_02f_5977:
    cpl
    ei
    ret c

    cpl
    ld d, e
    jr nz, jr_02f_5977

    db $fc
    ei
    cp $e1
    rst $28
    db $f4
    set 4, b
    rst $18
    cp $e1
    cp a
    ld a, a
    ld e, a
    rst $38
    cp a
    rra
    rst $38
    scf
    rst $08
    dec bc
    rst $30
    ld h, e
    rst $38
    rst $38
    db $d3
    sbc a
    sub e
    sbc a
    ld hl, sp-$79
    ret nc

    rst $38
    cpl
    add b
    ld a, a
    adc h
    ld a, a
    sbc d
    ld [hl], e
    ld d, d
    rst $38
    or e
    adc h
    rst $38
    ldh a, [$ef]
    ld l, l
    di
    ld [bc], a
    ei
    db $fd
    ret nz

    dec l
    jr nz, @+$04

    rst $38
    ld d, $ff
    ld bc, $ffff
    rla
    rst $38
    add sp, -$09
    pop af
    rst $38
    cp $ff
    cp $ff
    cp $f7
    cp $ad
    db $fc
    ld b, [hl]
    cp a
    cp $eb
    rst $38
    scf
    rst $38
    adc a
    db $ed
    nop
    ld a, a
    rst $38
    ld a, a
    ld l, a
    ld a, a
    ld a, $3f
    ld a, e
    ld a, a
    rst $38
    cp $fe
    nop
    ld a, [$fcfd]
    ei
    pop hl
    rst $38
    ret nc

    rst $38
    rst $28
    push hl
    rst $18
    jp z, $e7ff

    rst $18
    ccf
    ei
    rst $38
    rra
    ld [hl+], a
    nop
    ld d, a
    rst $38
    db $eb
    rst $38
    ld a, a
    ei
    rst $38
    db $db

jr_02f_59ff:
    jp $8b00


    rst $38
    ld b, l
    cp a
    sub a
    rst $38
    ld a, a
    dec hl
    rst $38
    sbc a
    ld a, a
    dec l
    rst $38
    sbc a
    cp d
    ld [$75e0], a
    ret nz

    nop
    rst $38
    rst $38
    ld a, [hl]
    xor c
    nop
    cp $3b
    rst $38
    ld sp, hl
    and e
    nop
    push hl
    rst $38
    di
    and b
    pop hl
    sbc h
    ldh [$5f], a
    xor $fe
    ld e, [hl]
    cp $fb
    ld b, [hl]
    jr nz, jr_02f_59ff

    and b
    ld [c], a
    db $f4
    db $fc

jr_02f_5a34:
    db $e3
    cp $e8
    cp $93
    nop
    ld hl, sp-$01
    ldh a, [$fb]
    rst $38
    rst $20
    push af
    set 6, d
    adc l
    pop af
    ld c, $f0
    ld l, l
    rrca
    cp $e1
    add sp, $17
    ld h, b
    inc bc
    ld a, a
    rst $38
    jr z, jr_02f_5a34

    adc a
    cpl
    rst $18
    rla

jr_02f_5a57:
    rst $28
    call z, $9bea
    pop hl
    ccf
    inc bc
    ldh [rIE], a
    db $fc
    jp $83fc


    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    rst $38
    ldh [$ef], a
    ret nc

    rst $18
    and b
    ld l, $d1
    rst $38
    sub [hl]
    ld l, e
    ld c, h
    or a
    jr z, jr_02f_5a57

    dec d
    rst $28
    ld a, a
    ret nz

    ccf
    add h
    ld a, a
    ld a, [bc]
    rst $38
    inc d
    ld d, $c0
    db $fd
    ld d, l
    ld d, b
    ret nz

    ld d, l
    rst $38
    dec bc
    rst $30
    inc bc
    rst $38
    push bc
    ei
    cp $e0
    rst $38
    db $fc
    ld [c], a
    ccf
    ret nz

    ld a, e
    ld [$0ff7], a
    rst $38
    cp $fd
    db $fd
    ld a, [$f5fa]
    ldh a, [$ef]
    ld sp, hl
    ret nz

    cp b
    ld b, b
    adc $e1
    db $fc
    inc bc
    ld d, h
    xor e
    xor h
    cp a
    ld d, a
    ld a, [de]
    rst $28
    dec [hl]
    rst $18
    ld a, [hl+]
    ld c, $e0
    rst $38
    cp a
    rst $38
    ld a, [bc]
    rst $30
    dec b
    ei
    ld [bc], a
    cp d
    ld h, b
    ld a, [hl]
    ld l, d
    jr nc, jr_02f_5b26

    ld a, a
    inc l

Jump_02f_5ac8:
    ld h, d
    ld d, a
    ld d, h
    ret nz

    sbc $fd
    ld b, l
    ldh [rIE], a
    rst $38
    ld [$d5ff], a
    rst $38
    sbc $a1
    xor d
    rst $38
    ld d, l
    ld d, [hl]
    xor e
    dec c
    rst $30
    ld a, [de]
    rst $28
    dec d
    ld d, d
    ret c

    ret nz

    ld a, a
    sub b
    ldh [$d0], a
    db $e3
    cp [hl]
    db $ec
    ret nz

    cp a
    ld d, c
    ldh [rP1], a
    nop
    nop
    ccf
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ret z

    ret


    jp z, $fffa

    db $f4
    push af
    ccf
    ret nc

    set 1, h
    call $cfce
    ld a, [$f4ff]
    push af
    ccf
    sub $d1
    jp nc, $d4d3

    push de
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

jr_02f_5b26:
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
    add b
    add b
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    ld c, a
    ld [$e1fd], a
    jp nz, $c3c1

    rst $30
    db $e4
    ldh a, [$e2]
    add b
    rst $18
    ld c, a
    rst $20
    jp $c4e3


    push bc
    add [hl]
    ld a, [$bcc0]
    cp l
    or [hl]
    ld [c], a
    add b
    rst $18
    ld h, a
    db $ec
    jp $c6e0


    dec c
    rst $00
    jp $bee0


    cp a
    di
    ld [c], a
    add b
    rst $18
    ld c, c
    and $46
    db $e3
    ld [hl], $c3
    push hl
    ret nz

    pop bc
    ld a, l
    ldh [$c6], a
    rst $00
    dec a
    ld a, [c]
    ld c, c
    ldh a, [rP1]
    dec bc
    db $e3
    ld b, [hl]
    ld [c], a
    jp $f7e3


    db $e3
    xor $c1
    add b
    rst $18
    dec bc
    db $e4
    sub b
    pop hl
    cp h
    add hl, bc
    ldh [$c3], a
    ld [c], a
    sbc l
    sbc e
    sbc a
    sbc l
    ld a, l
    ld [c], a
    ld b, [hl]
    pop hl
    ld b, [hl]
    add b
    sbc $0b
    db $e4
    dec c
    ld [c], a
    adc h
    db $e4
    sbc l
    sbc d
    ld b, [hl]
    rlca
    ld b, [hl]
    sbc d
    sbc l
    ld [hl], h
    ld [c], a
    ld [hl], d
    jp $d780


    dec bc
    and $4a
    ld [c], a
    ld a, a
    ret nz

    pop bc
    sbc l
    sbc a
    sbc e
    sbc e
    sbc e
    pop bc
    ldh [rP1], a
    cp a
    ld [c], a
    ld a, [$72c0]
    pop bc
    add b
    reti


    dec bc
    and $02
    jp $e186


    ld bc, $00c5
    ld a, [hl]
    pop hl
    ld h, a
    pop hl
    dec a
    db $ed
    rst $08
    xor e
    dec bc
    db $e4
    adc b
    ld [c], a
    add [hl]
    db $e4
    cp a
    add sp, -$80
    ld hl, sp-$5e
    or a
    xor h
    rst $08
    xor c
    sub e
    and c
    inc d
    pop bc
    adc b
    jp hl


    add c
    and a
    sbc h
    ldh [$fe], a
    add $00
    or e
    ld c, l
    jp $c014


    ld c, c
    rst $20
    add e
    add a
    add [hl]
    dec bc
    add a
    add e
    ccf
    and l
    sbc [hl]
    cp $c5
    ld a, d
    jp z, $895b

    db $dd
    and e
    cp $90
    pop bc
    adc a
    adc [hl]
    adc [hl]
    adc [hl]
    adc a
    ld b, [hl]
    ld b, [hl]
    rra
    adc b
    ld [bc], a
    rlca
    ld [bc], a
    ld l, a
    cp a
    push hl
    cp $c6
    add b
    ret c

    db $fc
    ld d, $a0
    pop bc
    push hl
    adc [hl]
    adc [hl]
    ld b, [hl]
    ld b, [hl]
    add c
    ld [$968f], sp
    rrca
    ld [bc], a
    adc c
    cp $cb
    add b
    jp c, $a016

    sbc h
    ld hl, sp-$37
    ld h, b
    pop bc
    ld [c], a
    add b
    ldh [$81], a
    ld [$9699], sp
    ld [$8033], sp
    or b
    cp $ca
    add b
    ld a, b
    jp nz, $16c3

    and b
    ret nz

    ldh [$fe], a
    ld b, d
    db $e4
    ld b, [hl]
    ld b, [hl]
    ld a, a
    ld [bc], a
    rrca
    sub [hl]
    ld [$8205], sp
    cp $c6
    sbc h
    or $80
    cp l
    xor l
    ld c, a
    adc c
    ld d, e
    add d
    add b
    ldh [rRP], a
    ld b, e
    db $e3
    xor e
    xor e
    cp a
    ld [c], a
    rrca
    cp $c3
    adc a
    ldh a, [$c0]
    ret nc

    ld h, l
    pop hl
    cp l
    xor l
    or [hl]
    ld l, c
    ld d, e
    add d
    sbc [hl]
    ret nz

    push hl
    xor h
    xor h
    daa
    ld b, [hl]
    ld b, l
    ld b, c
    cp a
    and $f0
    pop bc
    sbc h
    ld a, c
    add h
    add b
    ld [hl], a
    db $fc
    nop
    db $e3
    jp $b0c2


    xor e
    xor e
    ld b, e
    ld a, [hl+]
    ld h, $9d
    ld a, [hl+]
    ld a, [hl]
    push hl
    adc [hl]
    adc [hl]
    xor l
    cp $a3
    xor e
    ld c, e
    adc [hl]
    ldh a, [$8c]
    ld l, e
    nop
    db $e3
    call nc, Call_02f_42e0
    ret nz

    xor h
    xor h
    ld d, [hl]
    ld a, [hl+]
    add a
    jr nz, jr_02f_5cfc

    ld b, d
    ld a, h
    call nz, $e380
    or $60
    xor e
    ld c, e
    sub a
    ld hl, sp-$0d
    ld c, l
    ret nz

    push bc
    ld bc, $4ac0
    ld h, b
    ld d, l
    ld a, [hl+]
    ld a, [hl+]
    ld a, a
    ld b, l
    add c
    ld [$0001], sp
    ld [$0080], sp
    ld [c], a
    ld b, $25
    ldh [$c2], a
    jp Jump_02f_4bab


    ld e, $49
    call nc, Call_000_1640
    ld h, b
    ld b, b
    push bc
    rst $38

jr_02f_5cfc:
    xor l
    ld b, [hl]
    ld c, d
    or c
    ld e, d
    ld a, $3a
    ld b, l
    ccf
    ld a, a
    ld [bc], a
    rlca
    rlca
    ld [bc], a
    ld a, [hl]
    ld a, $a4
    ldh a, [rSCX]
    jp nz, $28e8

    sub a
    rst $08
    ld c, b
    call nc, Call_000_1640
    ld h, b
    ret nz

    and [hl]
    ld b, [hl]
    ld b, l
    rst $38
    ld d, d
    ld d, [hl]
    add hl, sp
    xor [hl]
    ld [hl], $45
    adc h
    ld a, e
    ld b, e
    ld a, e
    adc l
    ld a, l
    add h
    ld a, [hl-]
    ld h, c
    ld l, [hl]
    ld b, b
    add sp, $28
    dec [hl]
    ld [hl], $48
    ldh a, [rNR34]
    ld h, b
    ld d, e
    ld h, c
    ret nc

    ld h, c
    ld b, c
    and e
    ld b, l
    ld c, e
    ld b, b
    dec [hl]
    ld b, e
    inc a
    ld b, h
    ld a, $88
    or a
    ld b, c
    ld l, [hl]
    ld b, b
    add sp, $28
    sub a
    ld e, e
    ld a, [hl+]
    db $fc
    ld a, $e6
    ld [de], a
    pop bc
    xor e
    xor e
    or b
    ld b, e
    ld b, d
    dec [hl]
    sbc e
    dec [hl]
    add hl, sp
    ld bc, $9b83
    sbc e
    ld a, l
    ld h, b
    db $f4
    ld b, c
    add $05
    rst $00
    dec hl
    add hl, hl
    ld h, c
    ld e, e
    ld a, [hl+]
    ld a, $e3
    cp $a0
    jp nz, $0021

    ret nz

    ccf
    ld b, [hl]
    ld b, h
    inc a
    dec [hl]
    ld a, [hl-]
    ld b, l
    jp nz, $fa64

    ld hl, $4300
    db $eb
    add b
    ld c, $3e
    db $e3
    adc c
    ld l, b
    add b
    ldh [$7f], a
    ld [c], a
    db $eb
    add c
    ld b, e
    rst $28
    sbc b
    add b
    ld l, a
    ld a, h
    jp Jump_02f_6648


    or b
    ld b, b
    ret nz

    ldh [$7f], a
    pop hl
    sbc [hl]
    ret nz

    ld a, h
    jr nz, jr_02f_5da7

    and c
    ld b, e
    db $eb
    add b

jr_02f_5da7:
    ld [hl], b
    ld a, h
    call nz, Call_02f_6542
    ld b, d
    dec [hl]
    add hl, de
    xor [hl]
    cp [hl]
    jp nz, $a386

    call nz, Call_000_00c5
    ld e, c
    ld b, l
    ld b, l
    rst $08
    ld [hl+], a
    inc e
    rst $30
    ld h, h
    nop
    ldh [$35], a
    dec [hl]
    ld b, d
    add [hl]
    add e
    pop bc
    ld b, c
    add b
    dec de
    jr nc, jr_02f_5e29

    jr nz, @-$47

    and l
    dec c
    ld hl, $80b6
    ld b, l
    ld a, [hl-]
    ld b, b
    db $e3
    ret nz

    push bc
    jr nz, jr_02f_5e55

    rrca
    add [hl]
    ld de, $008b
    ld c, d
    ld hl, $61b6
    add hl, sp
    ccf
    call nz, $c303
    ld [hl], b
    ld [hl-], a
    ld bc, $1f80
    add hl, de
    ld b, d
    ld [bc], a
    ld b, h
    ld b, l

jr_02f_5df3:
    scf
    scf
    ld b, b
    pop bc
    ldh [$3e], a
    db $e4
    ld [hl-], a
    ld bc, $1f80
    ld c, e
    ld [hl+], a
    adc b
    inc h
    ld b, l
    scf
    dec a
    add b
    rst $38
    ldh [$bc], a
    ldh [$29], a
    ld h, c
    daa
    ld hl, $1f80
    jr jr_02f_5df3

    add [hl]
    ld h, $39
    dec de
    and c
    ld h, h
    rst $38
    ldh [$a2], a
    add hl, sp
    call nz, $8062
    rra
    or b
    ld bc, $bcfc
    add h
    db $fd
    and e
    ld a, $69

jr_02f_5e29:
    and b
    dec [hl]

jr_02f_5e2b:
    dec [hl]
    and b
    inc bc
    ld l, d
    ld a, $c4
    ld h, h
    add b
    rra
    push bc
    ld [bc], a
    ld d, e
    ld [c], a
    ret nz

    db $e4
    ld a, [hl]
    and b
    add c
    dec [hl]
    ret nz

    ldh [$c2], a
    ld [hl+], a
    add b
    db $dd
    ld e, a
    inc b
    cp $85
    add b
    pop bc
    ld l, e
    dec b
    ld [hl], c
    rst $38
    ldh [$6d], a
    ld b, b
    pop hl
    jr nz, jr_02f_5e77

    add b

jr_02f_5e55:
    dec e
    ld [bc], a
    add sp, -$74
    add b
    ld bc, $c09a
    push bc
    inc b

jr_02f_5e5f:
    add c
    ld b, e
    cpl
    add b
    db $10
    ld [bc], a
    rst $20
    adc h
    add c
    ld a, $05
    nop
    ld bc, $43c3
    ld l, $00
    ld c, h
    ld [bc], a
    db $eb
    ld [hl], a
    jr nz, jr_02f_5e2b

    add b

jr_02f_5e77:
    scf
    ld [bc], a
    inc b
    add l
    nop
    add b
    jp c, $e51f

    ret nz

    add sp, $51
    ld b, d
    ld [hl], h
    add c
    ld b, h
    and l
    add b
    call c, $207f
    nop
    cp [hl]
    ld b, h
    ld [de], a
    ld h, e
    inc sp
    nop
    ld a, [bc]
    and b
    rlca
    and b
    ld b, h
    and h
    sub e
    xor a
    add b
    rlc b
    and e
    jr nz, jr_02f_5e5f

    inc b
    ld [de], a
    ld h, l
    ld [hl], b
    ld h, c
    ld l, l
    ld h, b
    ld b, h
    and d
    sub $8f
    add b
    ld c, $00
    nop
    rst $20
    ld a, c
    nop
    rrca
    jp nz, $6070

    rlca
    jp $9143


    nop
    or e
    ret nz

    push hl
    nop
    ld d, l
    adc l
    db $f4
    ld a, [c]
    nop
    nop
    nop
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
    pop hl
    rst $30
    and $f2
    db $e4
    add b
    rst $18
    and a
    ld [$c0ff], a
    add e
    ld c, l
    ld c, l
    cp e
    pop hl
    ei
    pop hl
    rst $38
    rst $38
    ret nz

    pop af
    cp e
    db $e3
    dec c
    ld hl, $3d4d
    rst $38
    ld c, c
    add sp, -$3d
    rst $20
    ret z

    ldh [$2d], a
    db $fd
    ld [c], a
    dec l
    db $e4
    ld [bc], a
    add b
    db $dd
    dec c
    ld d, l
    ld [c], a
    ld a, [$40e0]
    call nz, $e3f8
    cp l
    ldh [$3d], a
    ldh [$60], a
    sub c
    cp a
    ret nc

    db $e3
    adc d
    ld [c], a
    ld b, [hl]
    db $e4
    cp b
    pop bc
    ld c, l
    dec l
    ld a, l
    ldh [rLCDC], a
    ccf
    ldh [$fb], a
    pop de
    adc h
    adc $ec
    and d
    sub b
    pop hl
    ld c, c
    pop hl
    dec l
    adc e
    pop hl
    rlca
    ld l, l
    dec hl
    dec hl
    cp [hl]
    ldh [$7d], a
    pop hl
    ld l, c
    jp $d780


    adc $c5
    db $fc
    db $d3
    ld [c], a
    ld c, h
    pop hl
    dec c
    ld c, l
    ld c, l
    ld c, l
    ld l, l
    dec bc
    add a
    dec bc
    ld c, e
    ld l, e
    ld a, l
    ld [c], a
    ld [hl-], a
    jp nz, $fd43

    ld d, c
    pop bc
    dec l
    add hl, de
    dec l
    ld bc, $86c3
    ldh [$2b], a
    dec bc
    rst $38
    pop hl
    ld a, [hl]
    ld [c], a
    scf
    pop bc
    or b
    dec a
    ld a, [$c3e0]
    pop bc
    jp $e1ff


    ld l, l
    ld c, e
    jp Jump_02f_4be2


    ld [bc], a
    pop bc
    ldh [$2b], a
    ld a, [hl]
    db $e4
    or a
    xor [hl]
    db $76
    xor c
    sbc $c3
    adc b
    db $e4
    add l
    push hl
    inc e
    ret nz

    pop hl
    ld a, $e0
    ld c, e
    dec bc
    dec l
    and l
    jp $d67a


    ld c, b
    jp $89d8


    add c
    adc b
    and $39
    ldh [$2d], a
    dec c
    ld a, [hl]
    ld [c], a
    ld c, e
    ld l, e
    ld b, b
    ret nz

    ld [c], a
    ld a, e
    pop bc
    ld [hl], l
    xor e
    ld [hl], $ab
    ld [$cfe2], sp
    ret nz

    ld l, l
    ld c, d
    pop bc
    rst $38
    dec bc
    ld c, e
    dec c
    inc c
    inc c
    inc l
    dec c
    dec c
    ld e, $7f
    pop hl
    ld c, e
    ld c, e
    ld c, e
    ld c, l
    or d
    pop hl

jr_02f_6002:
    cp [hl]
    call nz, $d780
    ld d, c
    dec l
    add d
    pop hl
    pop bc
    pop hl
    ret z

    ldh [$0b], a
    ret nz

    pop hl
    inc l
    ld a, a
    ld [c], a
    ld [bc], a
    add b
    ldh [$0b], a
    ld sp, hl
    and d
    db $76
    and d
    ld [hl], $b6
    bit 4, c
    sub l
    ldh [$83], a
    add e
    nop
    add b
    ld [c], a
    ld a, a
    ld [c], a
    add b
    ld [c], a
    cp $c6
    dec a
    sub h
    sbc l
    add e
    ld d, c
    pop hl
    add c
    ld [c], a
    ld c, $48
    pop bc
    dec c
    ld c, h
    ld c, h
    ccf
    db $e3
    ld bc, $3ee0
    ldh [$be], a
    pop bc
    jr nc, jr_02f_6002

    xor l
    ret nz

    call $e180
    ld b, e
    db $e4
    dec c
    ld c, e
    cp a
    pop hl
    ccf
    ldh [rDIV], a
    cp l
    ret nz

    xor h
    ldh [rKEY1], a
    ld a, [hl]
    ret nz

    jp hl


    add e
    add b
    rst $10
    add b
    ld [c], a
    add $e0
    ld b, $ba
    db $e3
    ld c, e
    dec hl
    cp a
    push hl
    dec l
    ld [c], a
    add b
    db $e4
    add b
    rst $10
    cp $a3
    inc b
    add b
    db $e4

jr_02f_6074:
    dec a
    db $e3
    dec hl
    cp a
    push hl
    ret nz

    push hl
    ld a, d
    add b
    ld e, h
    ld l, d
    ret nz

    rst $08
    ld a, [bc]
    add b
    db $e3
    ld c, l
    cp e
    ret nz

    ld c, d
    add [hl]
    and b
    ld a, h
    call nz, $e7c0
    dec a
    adc e
    pop af
    ld [$acbd], sp
    nop
    ld [c], a
    ld [bc], a
    and d
    ld c, l
    dec bc
    ld a, [bc]
    ld a, [bc]
    rla
    ld c, d
    ld c, e
    ld l, e
    db $fc
    and b
    inc l
    ret nz

    pop hl
    xor $80
    ld a, [hl]
    and b
    ld [c], a
    ld a, d
    ld l, [hl]
    ld c, e
    ld b, e
    ld [$e480], a
    rst $38
    jp nz, $0b0d

    ld c, d
    dec sp
    ld a, [bc]
    ld a, [bc]
    ld a, h
    jp Jump_02f_6c4c


    dec c
    nop
    pop bc
    add b
    ret nz

    jr nc, jr_02f_6074

    ld b, l
    add sp, $26
    add b
    add sp, -$40
    db $e4
    ld c, l
    dec l
    rst $10
    ldh [$c1], a
    and d
    ld c, a
    ld l, e
    ld a, [bc]
    ld c, d
    ld l, e
    ccf
    pop hl
    push af
    and d
    ld l, e
    ld [$81a0], a
    ld l, l
    xor d
    ld h, [hl]
    add b
    ld [$6786], a
    ld c, e
    ld h, d
    cp a
    ldh [$7e], a
    jp nz, $cf6b

    ld l, e
    ld l, e
    ld c, d
    dec hl
    ld a, l
    ret nz

    ld hl, sp-$20
    ld l, e
    ld l, e
    ld h, $fa
    ldh [$0d], a
    ld l, l
    ld hl, $8c82
    dec hl
    ld [$2c73], sp
    ld a, [hl]
    call nz, $1244
    pop hl
    push af
    and c
    dec hl
    adc b
    add b
    add [hl]
    ldh [$6e], a
    and d
    ld l, l
    ld [bc], a
    pop hl
    call nz, Call_02f_44fd
    dec h
    ld h, $0a
    ld a, $b1
    dec bc
    add d
    dec sp
    and b
    ld l, e
    ld l, e
    dec b

Jump_02f_6123:
    dec hl
    ld b, e
    add c
    ld l, e
    cp e
    ret nz

    jp $bfe2


    ld [c], a
    ld a, [bc]
    ld e, h
    cp $c4
    nop
    rst $38
    ld [c], a
    ret nz

    ldh [$09], a
    and c
    ld b, d
    ldh [$86], a
    ret nz

    ret nz

    rst $30
    ld c, a
    add hl, hl
    adc l
    inc hl
    inc c
    cp $c0
    call Call_000_2b61
    dec c
    ret nz

    ld [c], a
    add [hl]
    jp nz, Jump_000_350d

    add b
    ld l, e
    inc b
    ld a, h
    push bc
    ld [bc], a
    ld hl, $492d
    ld h, c
    ld a, $60
    inc a
    pop hl
    add h
    ld h, d
    ld [bc], a
    ld e, h
    inc e
    jr jr_02f_6186

    ld e, l
    ld h, a
    ld c, l
    ld c, l
    dec l
    nop
    pop hl
    db $f4
    jp $f7c0


    nop
    or [hl]

jr_02f_6171:
    dec bc
    or a
    xor b
    ret z

    nop
    ld b, a

Jump_02f_6177:
    jp nz, $8205

    add h
    ld h, b
    ld l, a
    inc hl
    nop
    ld e, e

Call_02f_6180:
    db $10
    adc d
    ld h, $d7
    add e
    cp l

jr_02f_6186:
    pop bc

Call_02f_6187:
    push bc
    ld h, h
    ld c, l
    jp nz, Jump_02f_7844

    rra
    ld c, e
    inc b
    ld a, [bc]
    ld c, c
    nop
    ld l, l
    cp [hl]
    ret nz

    ld l, e
    add a
    and c
    add h
    ld l, b
    dec a
    ccf
    rrca
    ld [hl+], a
    nop
    ld d, b
    nop
    ld [bc], a
    ld b, b
    bit 0, b
    pop bc
    inc h
    inc b
    and c
    add a
    ld b, d
    add b
    rra
    ld a, [hl]
    and d
    nop
    add h
    pop hl
    jp $fc22


    ld h, $7e
    rst $18
    cp d
    add hl, hl
    add [hl]
    ld [hl+], a
    inc bc
    jp Jump_02f_4000


    nop
    ld [hl], $c0
    ld a, [hl]
    sub $80
    ld c, $55
    ld bc, $407c
    adc h
    ld b, l
    ld a, h
    inc hl
    ret nz

    push hl
    inc c
    add b
    call c, Call_02f_6180
    dec l

Jump_02f_61d8:
    dec l
    jp Jump_02f_4c20


    inc h
    add hl, bc
    ld b, d
    cp $a5
    ld b, b
    pop bc
    inc bc
    dec a
    ld a, [$e220]
    add h
    jr nz, jr_02f_6171

    ret nz

    cp d
    ld h, e
    dec l
    add d
    jp $bf60


    add c
    ld b, e
    ld sp, $1380
    nop
    inc h
    ld c, a
    add c
    ld c, l
    dec l
    or [hl]

Jump_02f_61ff:
    add e
    ld b, b
    inc b
    add d
    ld b, h
    ld b, l
    add b
    ld d, $01
    ld h, c
    ld a, [hl]
    ld [hl+], a
    adc h
    ld [bc], a
    dec l
    sub c
    ld b, h
    ld b, b
    db $ed
    ld [bc], a
    ld b, c
    add d
    add b
    db $db
    ld h, [hl]
    ld b, d
    ld b, a
    inc h
    ld d, d
    ld [hl+], a
    ld l, l
    or a
    and h
    nop
    ld b, h
    add d
    xor a
    ld bc, $de80
    cp $07
    ld b, c
    pop hl
    db $eb
    ld c, b
    dec h
    ld b, h
    sub e
    xor a
    nop
    cp [hl]
    ld [de], a
    ld [bc], a
    db $e4
    pop de
    call nz, $a307
    push bc
    cp a
    ld [hl], $a5
    ld a, [hl]
    ld hl, $00d4
    nop
    adc a
    and d
    ld c, d
    ld h, d
    ld [hl], h
    add d
    ld b, $4e
    nop
    cp b
    inc c
    and c
    ld a, [$4fa1]
    db $f4
    nop
    dec a
    ld a, [hl+]
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
    ld [hl], b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$0ff9]
    rrca
    rrca
    db $e3
    ld a, [$0f01]
    sbc $e0
    push hl
    push af
    push bc
    db $e4
    cp [hl]
    pop af
    xor d
    ld [$f1e0], a
    reti


    jp hl


    nop
    ld a, l
    ldh a, [$e0]
    ld [$f0bf], a
    ret z

    db $e3
    cp a
    and $e0
    or $42
    db $e3
    and b
    or $00
    ldh [rIE], a
    ccf
    ld sp, hl
    ld e, e
    db $eb
    rst $38
    push de
    sbc a
    call nc, $c687
    ld a, a
    sub $df
    and $00
    ld b, a
    call c, $f4a0
    add c
    reti


    ld c, e
    jp z, $d320

    ld b, a
    rst $00
    ldh [$f6], a
    db $fc
    and e
    nop
    ldh [$b4], a
    ld b, a
    or $ec
    and [hl]
    add [hl]
    or c
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
    db $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ld a, [$ddf8]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld de, $ffe0
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    rst $38
    ld a, [c]
    pop af
    inc bc
    inc de
    inc de
    ldh [rIE], a
    rst $38
    rst $28
    nop
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

jr_02f_648f:
    ld b, b

Jump_02f_6490:
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
    jr nz, jr_02f_648f

    and b
    cp $e2
    ld d, b
    add b
    ldh a, [$a0]
    pop hl
    db $10
    db $e3
    jp c, $64e1

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

jr_02f_6505:
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

Call_02f_6542:
    ld a, a

jr_02f_6543:
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
    jr nc, jr_02f_6505

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
    jr nz, jr_02f_6543

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

jr_02f_65e8:
    ldh a, [$ed]
    ldh a, [$d0]
    ld [c], a
    ld b, c
    ld e, $c6
    add c
    nop
    nop
    jr nc, jr_02f_65e8

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

Jump_02f_6648:
    ccf
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    nop
    nop
    nop
    jr nz, jr_02f_6678

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
    ld [$4403], a
    ld [bc], a
    rst $38
    ld h, e
    ldh a, [$03]
    ld [$4403], a
    ld [bc], a
    ld b, b
    ld [hl], c
    ret nz

jr_02f_6678:
    ld a, [hl]
    call nc, $4400
    ld [bc], a
    rst $38
    ld a, a
    ld [$4403], a
    ld [bc], a
    ld b, b
    dec d
    cp a
    nop
    add [hl]
    ccf
    inc h
    ld l, $40
    dec d
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_02f_6694:
    dec h
    push de

jr_02f_6696:
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
    jr z, jr_02f_6694

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
    jr nz, jr_02f_6696

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
    call nc, Call_02f_48c2
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
    jr nz, jr_02f_67a8

jr_02f_67a8:
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
    jp Jump_02f_7f7c


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
    jp z, $6fe0

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

jr_02f_6a95:
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
    jr jr_02f_6a95

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

jr_02f_6b4b:
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
    jr nc, jr_02f_6b4b

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

jr_02f_6c0f:
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

jr_02f_6c22:
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
    jr c, jr_02f_6c0f

    nop
    pop hl
    dec hl
    ret nc

Jump_02f_6c4c:
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

jr_02f_6c57:
    and c
    rst $38
    ld e, $8c
    ld a, d
    ld d, a
    xor b
    jr c, jr_02f_6c22

    dec c
    rst $30
    ldh a, [$3d]
    jp nz, Jump_02f_61d8

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
    jr nz, jr_02f_6c57

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
    jp z, Jump_02f_5ac8

    and c
    inc a
    jp Jump_02f_537f


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
    ei
    or a
    ld c, b
    call c, Call_02f_40c0
    rst $38
    inc b
    ei
    ld e, d
    ld sp, hl
    and l
    dec sp
    add b
    ld b, c
    nop
    rst $38
    rst $38
    ld e, d
    and l
    jr nz, @+$01

    rst $18
    inc h
    rst $20
    ld h, [hl]
    and l
    dec h
    and $66
    rst $38
    and l
    ld h, [hl]
    and l
    and h
    ld h, a
    ld h, [hl]
    and l
    inc h
    cp $70
    ret nz

    ld bc, $05fe

Call_02f_6da0:
    ei
    ld e, $e6
    jr @+$01

    add sp, $30
    ret nc

    ld de, $63f3
    and d
    ld d, l
    ei
    nop
    cp d
    sbc [hl]
    add b
    xor e
    nop
    ld e, l
    nop
    ld [$96fa], a
    add b
    xor [hl]
    sub d
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
    ld [hl], e
    nop
    ld bc, $94ce
    nop
    jr nz, jr_02f_6de5

jr_02f_6de5:
    add b
    adc [hl]
    nop
    rst $38
    ldh a, [rNR23]
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
    add h
    ld l, a
    ld b, b
    ei
    ld c, $08
    ld l, c
    ld [c], a
    inc bc
    rst $38

jr_02f_6e0e:
    rlca
    cp $1b
    rst $38

jr_02f_6e12:
    db $fc
    ld e, $f1
    jr z, jr_02f_6e0e

    ld a, d
    push hl
    ld [hl], b
    rst $38
    rst $08
    inc a
    rst $38
    ei
    rst $20
    db $fd
    ld b, d
    rst $20
    cp a
    jr jr_02f_6e70

    or l
    nop
    rst $38
    ld d, h
    ld l, [hl]
    and b
    adc [hl]
    rst $38
    di
    sbc d
    rst $20
    ld c, l
    di
    sub a
    jp hl


    rst $00
    rst $38
    ld sp, hl
    adc a

jr_02f_6e39:
    di
    ld e, [hl]
    rst $20
    adc [hl]
    di
    push af
    cp $0a
    and b
    ldh [rIE], a
    adc d
    push af
    ld d, a
    add sp, -$73
    rst $38
    ld a, [c]
    add hl, de
    rst $20
    adc a
    di
    rst $18
    sbc c
    sbc a
    rst $38
    ld c, l
    daa
    rla
    and e
    di
    db $db
    pop hl
    xor $ff
    pop af
    or h
    ei
    ld b, c
    rst $38
    rst $18
    sbc a
    sbc h
    rst $38
    ld c, a
    ld h, $17
    and d
    di
    jp c, $eee1

    rst $38

Call_02f_6e6e:
    ld [hl], c
    db $f4

jr_02f_6e70:
    dec sp
    ld sp, hl
    rst $38
    rst $20
    jr jr_02f_6e39

    rst $38
    inc h
    rst $20
    inc h
    rst $38
    inc a
    db $db
    inc a
    rst $20
    db $fd
    jr jr_02f_6e12

    ld b, c
    ld h, a
    sbc d
    call nz, $0b8a
    ret nz

    rst $38
    ld b, d
    and b
    db $10
    ret nz

    jp hl


    add b
    ld h, b
    sub c
    rst $38
    adc e
    ld h, b
    ld d, $a9
    pop hl
    dec bc
    adc d
    daa
    ld a, a
    daa
    rrca
    xor l
    rra
    sub $3f
    ld a, l
    db $76
    add b
    cp $20
    daa
    inc h
    db $db
    inc c
    rst $30
    ld [hl], $cf
    jr @+$01

    rst $20
    sub $0f
    ld e, c
    and [hl]
    ld b, d
    rrca
    ei
    ld a, a
    nop
    inc e
    inc bc
    cp a

jr_02f_6ebd:
    nop
    sbc c
    ld h, [hl]
    jr c, jr_02f_6ee3

    sbc a

jr_02f_6ec3:
    dec a
    jp nz, $e718

    add hl, de
    jr nc, jr_02f_6eee

    db $10
    add c
    ld d, [hl]
    rst $08
    xor c
    ld [hl+], a
    rst $38
    ld [hl], l
    sub b
    add h
    add b
    and e
    ld de, $ffef
    rra
    ldh [$3d], a
    rst $00
    inc sp
    rst $08
    dec l
    rst $10
    cp $e0

jr_02f_6ee3:
    ld h, l
    jr z, jr_02f_6ebd

    ld b, h
    ei
    or h
    rst $38
    ret nc

    rst $38
    rst $38
    ei

jr_02f_6eee:
    inc e
    db $ed
    ld h, $8b
    ld b, [hl]
    db $db
    rst $38
    ld h, [hl]
    add $4f
    dec bc
    add a
    sbc e
    add a
    or e
    rst $38
    rst $08
    xor a
    sbc a
    and $5f
    cp a
    ld a, [hl]
    db $eb
    rst $18
    inc a
    rst $38
    ld l, $ef
    cpl
    ld hl, $1e60
    inc e

jr_02f_6f10:
    rst $38
    rst $38
    ld l, $e7
    ld c, d
    rst $00
    ld e, d
    rst $20
    ld b, a

jr_02f_6f19:
    ei
    rst $08
    adc e
    ldh [$e4], a
    ld h, [hl]
    rst $18
    ld a, [hl]
    rst $38
    jr z, jr_02f_6ec3

    rst $38
    ld a, $ef
    cpl
    rst $28
    pop hl
    ldh [rNR10], a
    ret nz

    pop de
    rst $28
    ld l, a
    jr @+$01

    ld h, a
    ld b, d
    ret nz

    ld a, [hl]
    rst $38
    jr c, jr_02f_6f10

    rst $18
    ld b, e
    db $fd
    xor b
    ld [bc], a
    db $db
    dec e
    ldh [$e7], a
    ld a, [hl]
    cp $1b
    ldh [rNR23], a
    rst $20
    jr nz, jr_02f_6f19

    or [hl]
    dec hl
    db $ed
    cp a
    cp d
    dec sp
    rst $18
    db $76
    rst $18
    ld d, h
    ld hl, sp+$00
    ld a, [hl+]
    add $cb
    ld [hl+], a
    jr @+$01

    ldh [$e3], a
    rst $38
    pop bc
    adc h
    ld hl, $00e7
    push af
    db $db
    cp $e0
    add c
    ld hl, sp-$20
    rst $38
    nop
    xor e
    rst $38
    rst $38
    dec b
    cp $ab
    db $fc
    dec c
    ld a, [$fdb2]
    rst $38
    ld d, l
    ld [$d7a8], a
    db $f4
    adc e
    or b
    rrca
    ld a, a
    sbc $7f
    add hl, hl
    cp $55
    rst $38
    cp [hl]
    ld l, $e0
    cp a
    xor d
    rst $38
    ret nz

    rst $38
    sbc b
    ld h, a
    ld b, b
    pop hl
    ld e, b
    db $f4
    ld b, b
    ld b, $d0
    ld c, e
    dec hl
    db $10
    ld l, b
    inc a
    inc bc
    add h
    ld [hl], e
    rst $28
    or h
    db $eb
    inc hl
    call z, $e180
    ld a, [hl-]
    rst $18
    rst $30
    ld a, a
    ld e, [hl]
    push de
    ld a, [hl]
    db $dd
    ld a, a
    ei
    ld l, $68
    ld h, e
    rst $38
    add hl, de
    rst $20
    rla
    xor $3f
    ret z

    cpl
    ret c

    rst $10
    rra
    ldh a, [$fd]
    ld l, d
    nop
    jp c, Jump_02f_4008

    xor a
    cp $bf
    rst $18
    ld hl, sp+$6f
    ld hl, sp-$21
    ldh a, [$83]
    ld b, b
    inc a
    cp $e6
    ld b, c
    ccf
    jp $c73e


    db $dd
    cpl
    jp c, Jump_000_2ffd

    ldh a, [$e5]
    dec a
    jp $c73c


    ret nc

jr_02f_6fe6:
    cpl
    ei
    ret c

    cpl
    ld d, e
    jr nz, jr_02f_6fe6

    db $fc
    ei
    cp $e1
    rst $28
    db $f4
    set 4, b
    rst $18
    cp $e1
    cp a
    ld a, a
    ld e, a
    rst $38
    cp a
    rra
    rst $38
    scf
    rst $08
    dec bc
    rst $30
    ld h, e
    rst $38
    rst $38
    db $d3
    sbc a
    sub e
    sbc a
    ld hl, sp-$79
    ret nc

    rst $38
    cpl
    add b
    ld a, a
    adc h
    ld a, a
    sbc d
    ld [hl], e
    ld d, d
    rst $38
    or e
    adc h
    rst $38
    ldh a, [$ef]
    ld l, l
    di
    ld [bc], a
    ei
    db $fd
    ret nz

    dec l
    jr nz, @+$04

    rst $38
    ld d, $ff
    ld bc, $ffff
    rla
    rst $38
    add sp, -$09
    pop af
    rst $38
    cp $ff
    cp $ff
    cp $f7
    cp $ad
    db $fc
    ld b, [hl]
    cp a
    cp $eb
    rst $38
    scf
    rst $38
    adc a
    db $ed
    nop
    ld a, a
    rst $38
    ld a, a
    ld l, a
    ld a, a
    ld a, $3f
    ld a, e
    ld a, a
    rst $38
    cp $fe
    nop
    ld a, [$fcfd]
    ei
    pop hl
    rst $38
    ret nc

    rst $38
    rst $28
    push hl
    rst $18
    jp z, $e7ff

    rst $18
    ccf
    ei
    rst $38
    rra
    ld [hl+], a
    nop
    ld d, a
    rst $38
    db $eb
    rst $38
    ld a, a
    ei
    rst $38
    db $db

jr_02f_706e:
    jp $8b00


    rst $38
    ld b, l
    cp a
    sub a
    rst $38
    ld a, a
    dec hl
    rst $38
    sbc a
    ld a, a
    dec l
    rst $38
    sbc a
    cp d
    ld [$75e0], a
    ret nz

    nop
    rst $38
    rst $38
    ld a, [hl]
    xor c
    nop
    cp $3b
    rst $38
    ld sp, hl
    and e
    nop
    push hl
    rst $38
    di
    and b
    pop hl
    sbc h
    ldh [$5f], a
    xor $fe
    ld e, [hl]
    cp $fb
    ld b, [hl]
    jr nz, jr_02f_706e

    and b
    ld [c], a
    db $f4
    db $fc

jr_02f_70a3:
    db $e3
    cp $e8
    cp $93
    nop
    ld hl, sp-$01
    ldh a, [$fb]
    rst $38
    rst $20
    push af
    set 6, d
    adc l
    pop af
    ld c, $f0
    ld l, l
    rrca
    cp $e1
    add sp, $17
    ld h, b
    inc bc
    ld a, a
    rst $38
    jr z, jr_02f_70a3

    adc a
    cpl
    rst $18
    rla

jr_02f_70c6:
    rst $28
    call z, $9bea
    pop hl
    ccf
    inc bc
    ldh [rIE], a
    db $fc
    jp $83fc


    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    rst $38
    ldh [$ef], a
    ret nc

    rst $18
    and b
    ld l, $d1
    rst $38
    sub [hl]
    ld l, e
    ld c, h
    or a
    jr z, jr_02f_70c6

    dec d
    rst $28
    ld a, a
    ret nz

    ccf
    add h
    ld a, a
    ld a, [bc]
    rst $38
    inc d
    ld d, $c0
    db $fd
    ld d, l
    ld d, b
    ret nz

    ld d, l
    rst $38
    dec bc
    rst $30
    inc bc
    rst $38
    push bc
    ei
    cp $e0
    rst $38
    db $fc
    ld [c], a
    ccf
    ret nz

    ld a, e
    ld [$0ff7], a
    rst $38
    cp $fd
    db $fd
    ld a, [$f5fa]
    ldh a, [$ef]
    ld sp, hl
    ret nz

    cp b
    ld b, b
    adc $e1
    db $fc
    inc bc
    ld d, h
    xor e
    xor h
    cp a
    ld d, a
    ld a, [de]
    rst $28
    dec [hl]
    rst $18
    ld a, [hl+]
    ld c, $e0
    rst $38
    cp a
    rst $38
    ld a, [bc]
    rst $30
    dec b
    ei
    ld [bc], a
    cp d
    ld h, b
    ld a, [hl]
    ld l, d
    jr nc, jr_02f_7195

    ld a, a
    inc l
    ld h, d
    ld d, a
    ld d, h
    ret nz

    sbc $fd
    ld b, l
    ldh [rIE], a
    rst $38
    ld [$d5ff], a
    rst $38
    sbc $a1
    xor d
    rst $38
    ld d, l
    ld d, [hl]
    xor e
    dec c
    rst $30
    ld a, [de]
    rst $28
    dec d
    ld d, d
    ret c

    ret nz

    ld a, a
    sub b
    ldh [$d0], a
    db $e3
    cp [hl]
    db $ec
    ret nz

    cp a
    ld d, c
    pop hl
    rst $38
    cp $ff
    ld hl, sp-$07
    ldh [$e7], a
    add b
    sbc c
    rst $38
    nop
    and $00
    sbc b
    nop
    pop hl
    nop
    rst $38
    rst $38
    ld a, a
    sbc a
    rra
    add a
    rlca
    add c
    ld bc, $ff80
    nop
    ld h, b
    nop
    jr jr_02f_7180

jr_02f_7180:
    add $00
    add a
    rst $38
    nop
    ld e, $00
    ld a, h
    nop
    db $ec
    add b
    call nz, $80ff
    push bc
    add b
    db $fc
    add b
    call nc, $f180

jr_02f_7195:
    cp [hl]
    ld a, [c]
    ldh [$3f], a
    ld bc, $0137
    inc hl
    cp $e0
    ccf
    rlca
    ld bc, $012b
    nop
    nop
    nop
    ccf
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ret z

    ret


    jp z, $fffa

    db $f4
    push af
    ccf
    ret nc

    set 1, h
    call $cfce
    ld a, [$f4ff]
    push af
    ccf
    sub $d1
    jp nc, $d4d3

    push de
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

Call_02f_71e1:
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    ret nz

    ld a, [$80ff]
    rst $18
    ld b, e
    and $fd
    db $e3
    add b
    rst $18
    ld d, l
    di
    ld b, [hl]
    jp nz, $c331

    ld sp, hl
    ret nz

    add b
    rst $18
    ld h, c
    or $c4
    push bc
    cp c
    ret nz

    add b
    rst $18
    ld e, $43
    or $c6
    rst $00
    cp h
    cp l
    ld a, [hl-]
    and $80
    rst $18
    ld b, e
    db $eb
    add [hl]
    ld bc, $bee2
    cp a
    ld a, [$37c2]
    db $f4
    and h
    db $db
    add h
    pop hl
    ret nz

    pop bc
    pop bc
    ld hl, sp-$1e
    scf
    db $f4
    sub d
    ret c

    add h
    rst $20
    ld a, h
    pop hl
    add $c7
    add b
    add b
    rst $18
    ld e, d
    db $e3
    add [hl]
    ret z

    add h
    pop hl
    inc a
    pop bc
    ld hl, sp-$1e
    add b
    rst $18
    ld b, [hl]
    db $fc
    sub c
    jp nz, $c986

    ld b, [hl]
    ld b, [hl]
    sbc l
    rst $10
    ret c

    sbc l
    sbc b
    ld sp, hl
    and e
    add b
    ret c

    ret c

    and h
    cp h
    cp l
    sub c
    add $f5
    db $e4
    sbc l
    ld a, a
    sbc a
    sbc d
    reti


    jp c, $9f9a

    sbc l
    or $c2
    ldh [$80], a
    push de
    and d
    push bc
    sub l
    jp nz, $c491

    push af
    db $e4
    sbc h
    adc [hl]
    adc a
    rra
    ld b, h
    ld b, h
    adc a
    adc [hl]
    sbc h
    ld a, d

jr_02f_7278:
    pop bc
    or l
    and b
    add b
    db $d3
    add b
    sub a
    add b
    reti


    and b
    jr @-$3e

    sub l
    pop bc
    sub c
    ret nz

    adc d
    push bc
    add [hl]
    ret nz

    sbc h
    ld a, a
    adc a
    ld b, [hl]
    ld b, l
    ld b, l
    ld b, [hl]
    adc a
    sbc h
    ld a, d
    pop bc
    ret nz

    or l
    and b
    nop
    or [hl]
    and d
    ret nz

    sub h
    push bc
    adc d
    rst $00
    inc bc
    ldh [$9a], a
    xor e
    ccf
    xor e
    ld b, l
    ld b, l
    xor e
    xor e
    sbc d
    db $fd
    pop bc
    ld a, [hl]
    pop bc
    ld e, b
    db $f4
    adc [hl]
    push de
    and a
    jr jr_02f_7278

    sbc l
    sbc e
    rst $38
    ldh [$9d], a
    or $e4
    db $fd
    sbc a
    di
    ldh [$9a], a
    ld b, [hl]
    xor h
    xor h
    ld [hl], $36
    rlca
    xor h
    xor h
    ld b, [hl]
    cp a
    ldh [$78], a
    and b
    ld h, d
    rst $00
    nop
    xor l
    sub d
    and $f1
    ld b, [hl]
    push de
    pop hl
    adc b
    ldh [$86], a
    add h
    ld b, l
    ld [hl], $3b
    dec [hl]
    rra
    dec [hl]
    dec sp
    ld [hl], $45
    ld b, [hl]
    cp $c2
    ld h, d
    rst $00
    add b
    adc $d8
    sub h
    pop bc
    sub d
    pop hl
    adc e
    ld h, b
    sbc d
    sbc a
    adc b
    ldh [rDMA], a
    ld a, c
    rst $38
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld b, [hl]
    ld b, h
    inc a
    and c
    rra
    ld h, h
    ld h, h
    and d
    inc a
    ld b, h
    ret nz

    ldh [$78], a
    and b
    cp h
    and b
    ld l, b
    add b
    jp nc, $805b

    ld a, [de]
    and b
    sbc [hl]
    ret c

    adc c
    ld a, c
    ld a, [hl]
    ld b, c
    ld h, b
    rst $38
    add c
    ld b, [hl]
    ld b, d
    dec [hl]
    ld l, c
    and b
    dec [hl]
    ld l, d
    add e
    dec [hl]
    ld b, d
    db $e3
    db $e4
    add b
    call nc, $805b
    sub h
    pop bc
    sbc b
    adc c
    add b
    ld a, d
    push bc
    ld h, c
    add c
    add b
    ldh [rBCPD], a
    dec [hl]
    dec [hl]
    ld l, d
    add b
    ld [c], a
    ret nz

    ld a, b
    add c
    add b
    ld [hl], d
    and [hl]
    call nz, $e10c
    ld d, h
    ret nz

    adc l
    ld h, d
    xor e
    xor e
    ccf
    add d
    add e
    ld b, [hl]
    ld b, [hl]
    add e
    ld l, l
    ret nz

    jp hl


    ld h, b
    add $fc
    add b
    ld l, e
    ld [bc], a
    add sp, $46
    ld b, l
    ld b, a
    ld d, h
    ld b, h
    ld c, b
    rst $30
    ld d, e
    ld d, b
    ld b, l
    adc d
    ret nz

    add h
    add l
    add [hl]
    add [hl]
    inc bc
    add l
    add h
    ld b, b
    rst $20
    cp $a2
    cp l
    or b
    add [hl]
    jp $a196


    add h
    ret nz

    rst $38
    ld c, d
    ld d, [hl]
    dec hl
    dec hl
    ld e, c
    ld d, h
    ld e, l
    ld d, l
    db $fc
    add hl, bc
    ld h, h
    ld [hl], d
    ret nz

    ld b, h
    inc a
    ld l, e
    ld [hl], c
    ld [hl], c
    ld l, l
    ret nz

    ret nz

    ret nz

    cp $a2
    cp l
    or b
    ld e, $43
    sub [hl]
    and c
    ld a, [de]
    ret nz

    ld d, l
    ld e, d
    rra
    jr nc, jr_02f_73c6

    cpl
    ld a, [hl+]
    ld c, e
    ret nz

    push hl
    ld [$40c0], sp
    add $f0
    cp $a3
    cp l
    xor a
    sbc b
    ld h, [hl]
    ld bc, $50e2
    ld a, [hl+]
    cpl
    cpl
    sbc a
    ld a, [hl+]
    ld d, b
    ld b, l
    ld a, c
    ld a, d
    ld b, l
    ret nz

    rst $38
    and h

jr_02f_73c6:
    ld b, e
    scf
    ld b, c
    ld b, c
    ld b, e
    ld [$abc0], a
    xor e
    cp $c3
    cp l
    xor l
    db $ec
    inc a
    ld b, d
    sbc e
    ld b, b
    cp h
    cp l
    call z, $44a0
    ld d, h
    ld c, c
    cpl
    ld b, h
    ld b, h
    ld c, c
    ld d, h
    ld b, h
    pop bc
    add c
    dec bc
    ld l, c
    ld [hl], h
    ld [c], a
    pop bc
    sbc [hl]
    db $76
    ld h, d
    cp l
    xor l
    ld e, $42
    sbc e
    ld b, b
    nop
    jp Jump_02f_4345


    nop
    ld [de], a
    and c
    ld b, h
    pop bc
    ret nz

    db $ed
    rst $38
    call nz, $aebd
    db $db
    ld b, d
    ld h, h
    ld h, b
    nop
    jp nz, Jump_02f_4836

    ld [c], a
    xor h
    xor h
    ret nz

    push hl
    ld b, l
    ld b, c
    ld sp, $c1c4
    push hl
    ld a, b
    nop
    or c
    sbc l
    ld h, $0c
    and b
    add b
    xor e
    xor e
    ld a, a
    rlca
    ldh [$08], a
    inc b
    ret nz

    dec b
    ret nz

    inc b
    and b
    and e
    rst $00
    pop bc
    ld l, $a1
    xor d
    add c
    cp h
    ld b, h
    add h
    nop
    ld d, d
    nop
    call nz, $9680
    add b
    rlca
    ldh [rDIV], a
    ret nz

    dec b
    ret nz

    ld b, l
    rrca
    ld [hl], $62
    and h
    ld h, [hl]
    cp a
    ld [c], a
    ld b, h
    jp Jump_02f_43bc


jr_02f_744e:
    add b
    ld [hl], e
    ld a, b
    nop
    call nz, $e487
    add [hl]
    add h
    ld h, d
    ld h, a
    and b
    ld l, b
    cp a
    ldh [$87], a
    xor e
    xor e
    sbc [hl]
    jr c, jr_02f_74a9

    add b
    ld [hl], l
    nop
    call nz, $e287
    ld b, e
    db $fc
    ld d, b
    jp nz, $e1c1

    dec [hl]
    dec [hl]
    ld l, h
    or e
    or h
    ld b, d
    ld b, e
    xor h
    xor h
    ld b, h
    and a
    nop
    or h
    nop
    add $12
    add b
    dec sp
    db $fd
    ldh [rIE], a
    ld [hl], $45
    ld b, l
    ld [hl], $b5
    or [hl]
    and b
    dec [hl]
    rlca
    ld l, h
    ld l, a
    ld l, [hl]
    dec b
    add b
    add e
    ld h, b
    cp h
    jr nz, jr_02f_744e

    ld bc, $1180
    ldh a, [$64]
    ld h, $00
    pop bc
    ld [de], a
    add c
    db $10
    add d
    ld b, l
    ld [hl], $6e
    ld l, a
    ld b, c
    ld l, h

jr_02f_74a9:
    pop bc
    and $45
    and e
    nop
    ld d, e
    add hl, hl
    and h
    jp c, $9c00

    ld [de], a
    add e
    add e
    dec [hl]
    and b
    db $10
    add c
    cp a
    pop hl
    add d
    pop hl
    adc b
    and c
    cp [hl]
    ld [bc], a
    add $29
    rst $00
    add b
    rla
    jp nz, $9e43

    jp nc, Jump_000_3561

    rst $38
    ldh [$d0], a
    ld h, c
    nop
    cp a
    pop hl
    ld b, e
    pop hl
    adc b
    and c
    ld b, h
    ld b, e
    nop
    ld e, d
    ret nz

    ld h, e
    sub d
    add d
    sub b
    add e
    ld b, $05
    ld h, c
    xor c
    xor e
    ldh a, [rLCDC]
    ld [bc], a
    db $e3
    jp nz, $c300

    ld d, b
    nop
    ld b, a
    ld [de], a
    push bc
    ld bc, $c09c
    ret z

    call nz, $ac42
    rst $38
    ldh [rOBP1], a
    and a
    jp $1050


    add b
    rlca
    cp [hl]
    pop bc
    adc e
    ld b, b
    sub d
    add b
    ld b, e
    ld b, b
    jp $a18c


    ld [hl-], a
    ld b, e
    nop
    ld b, [hl]
    dec h
    jp $8050


    rlca
    ld [hl+], a
    ld [bc], a
    ld c, d
    ld b, [hl]
    pop de
    add a
    inc a
    dec b
    ld b, e
    di
    nop
    add b
    rlca
    xor c
    add b
    jp nc, $ce01

    ld hl, $8792
    adc b
    ret nz

    dec hl
    inc h
    ld b, e
    db $f4
    nop
    add b
    ld a, [bc]
    rst $00
    inc bc
    add $23
    sub c
    inc hl
    or l
    nop
    or d
    ld [bc], a
    ld e, h
    ld h, b
    ld b, e
    di
    nop
    add b
    ld a, [bc]
    sbc b
    pop hl
    ld a, [$13a2]
    ret nz

    push af
    jr nz, jr_02f_75c8

    nop
    add [hl]
    ldh [$83], a
    ldh [rP1], a
    ld c, c
    ld a, [c]
    add b
    db $10
    add $04
    cp d
    ld [hl+], a
    push af
    jr nz, jr_02f_75aa

    ld [c], a
    inc c
    or e
    add b
    ld [de], a
    nop
    or a
    ld b, d
    cp d
    dec h
    sub e
    ld h, h
    inc c
    or h
    add b
    ret nc

    ld a, d
    ld b, $7a
    inc h
    sub b
    inc bc
    nop
    inc c
    or h
    add b
    ret nc

    ld [hl], e
    daa
    add l
    inc b
    sub d
    ld b, d
    inc c
    or h
    nop
    ld c, a
    ld a, d
    add $00
    ld [hl], a
    inc h
    ld [hl], e
    and c
    rst $38
    add $3d
    ld a, [$e943]
    ld a, c
    inc bc
    ret nz

    push hl
    add hl, hl
    add h
    nop
    add b
    rst $18
    or [hl]
    ld b, $79
    ld [bc], a
    ld b, b
    and $6b
    push bc
    add b
    rst $18
    ld a, [hl+]
    and l
    ld a, c
    ld [bc], a

jr_02f_75aa:
    nop
    ret nz

    ret z

    ld l, c
    ld [bc], a
    add b
    rst $18
    dec a
    db $eb
    ld b, b
    add $0c
    ld h, d
    add b
    rst $18
    ld [hl], e
    dec hl
    add e
    call nz, $80c5
    and d
    ld a, e
    and c
    ld [$80a2], sp
    rst $18
    ld l, l
    adc e

jr_02f_75c8:
    add $01
    rst $00
    ret nz

    db $e4
    adc a
    ld h, e
    ld b, e
    db $fc
    ld b, h
    nop
    nop
    nop
    nop
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
    ret nz

    ld a, [$80ff]
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38

jr_02f_760c:
    rst $38
    rst $38
    ld e, e
    rst $38
    dec c
    ld c, l
    ld de, $384d
    ldh [$80], a
    rst $18
    sub [hl]
    db $f4
    ld c, l
    jp c, Jump_02f_61ff

    ei
    ret nz

    rst $38
    nop
    ld b, e
    ld a, [$e285]
    dec a
    db $e3
    jr c, jr_02f_760c

    add b
    rst $18
    ld b, e
    jp hl


    adc $e4
    jp nz, Jump_000_20e2

    ld [hl], a
    rst $38
    ld h, a
    ldh a, [$fc]
    add sp, -$40
    db $f4
    db $db
    xor e
    ld c, l
    ld e, d
    db $e3
    ld l, b
    jp $8500


    ret nz

    ld b, h
    pop hl
    cp $e1
    or a
    call nz, $dd80
    ld de, $5be1
    push hl
    add h
    and b
    jp nz, $e1c0

    ld l, l
    ret nz

    push hl
    push af
    jp $ff4f


    ret nz

    ld [$6d4d], a
    rra
    ld c, l
    dec c
    ld a, [bc]
    ld a, [bc]
    dec l
    ld a, e
    ldh [$03], a
    ld hl, sp-$25
    and [hl]
    ld hl, sp-$7a
    push hl
    push af
    rst $20
    call nz, Call_02f_6da0
    ld a, [bc]
    ld a, [bc]
    ld c, l
    dec l
    ld bc, $b22d
    db $e3
    add b
    call nc, $a09e
    sbc e
    jp $c5cd


    push af
    and $84
    and c
    ccf
    dec hl
    ld c, e
    dec l
    dec c
    dec l
    ld l, l
    or l
    and d
    ld a, e
    ret nz

    ret nz

    rst $38
    or [hl]
    db $10
    pop hl
    cp $c4
    ld a, [hl+]
    and b
    add $c2
    ld a, $c2
    ld l, e
    ld l, e
    rlca
    ld c, e
    dec bc
    dec l
    ret nz

    rst $30
    ld sp, hl
    and [hl]
    db $10
    db $e3
    jp nc, $fec7

    db $e3
    dec b
    ld l, l
    add b
    ldh [$0b], a
    ei
    add b
    db $fd
    ret nz

    dec a
    push af
    cp c
    add a
    ld b, d
    ret nz

    ldh a, [rHDMA1]
    ret nz

    ld d, h
    ld [c], a
    ret


    add c
    pop bc
    pop bc
    ld c, e
    dec c
    dec c
    dec bc
    add c
    dec hl
    ld a, e
    ldh [$bf], a
    ldh [$3e], a
    db $e3
    dec a
    push af
    sbc l
    jp nz, $e092

    dec bc
    rst $10
    ld c, e
    ld c, l
    dec l
    adc b
    pop hl
    dec bc
    rst $38
    pop hl
    ld c, e
    dec bc
    pop bc
    dec hl
    ld hl, sp-$1e
    ld a, [$c0e0]
    ld hl, sp+$5a
    and [hl]
    sub d
    pop hl
    ld c, e
    ld c, e
    call $bb6b
    and b
    ld l, l
    ld c, e
    ld c, e
    ldh [$80], a
    ld h, b
    ld c, e
    ld l, e
    nop
    ret nz

    db $e3
    db $fd
    ret nz

    cp h
    and h
    nop
    or c
    jp nz, $c4c4

    ldh [$fe], a
    db $e3
    add h
    pop hl
    ld e, $48
    ldh [$0b], a
    ld c, e
    dec c
    ld c, e
    add b
    ldh [$f7], a
    ldh [$80], a
    ld [c], a
    ld [$a378], sp
    ld e, e
    sub l
    ret nz

    db $ec
    ld c, e
    pop bc
    ldh [$fb], a
    pop hl
    add b
    db $eb
    ld b, e
    ld hl, sp-$7e
    sub $a1
    ld c, e
    sub c
    ldh [$80], a
    db $e3
    ld b, h
    ld [c], a
    ld [$40c0], sp
    and $4b
    ldh [$c0], a
    pop bc
    db $db
    jp Jump_02f_4cab


    ld a, [hl+]
    add h
    call $4bc1
    dec hl
    ld a, [bc]
    rst $18
    ld l, d
    ld c, e
    ld a, [bc]
    ld l, d
    ld a, [bc]
    ret nz

    db $e3
    dec c
    dec c
    inc bc
    dec l
    dec l
    ret nz

    pop bc
    ld b, b
    ld [c], a
    ret nz

    ld [c], a
    cp b
    add h
    add [hl]
    rst $08
    sub $a3
    rst $38
    dec c
    ld c, e
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec hl
    ld a, [bc]
    ld a, [bc]
    inc bc
    ld a, [bc]
    ld c, d
    rst $30
    call nz, $c044
    add b
    and $6a
    pop bc
    ret nz

    ld a, [c]
    inc b
    add $7a
    add h
    ret nz

    ld a, [hl+]
    add l
    ldh [$2b], a
    dec hl

jr_02f_7785:
    ld c, d
    ld a, [bc]
    ret nz

    add sp, -$7c
    xor h
    jp nz, $e0fa

    dec bc
    cp $a2
    xor h
    ld h, a
    add b
    jp z, Jump_02f_4299

    dec l
    ld h, b
    ld b, l
    ret nz

    add $e1
    ei
    ldh [$8e], a
    ld b, c
    or $c2
    ld c, e
    dec hl
    ld b, c
    and b
    ld b, h
    pop bc
    ldh [$75], a
    ret nz

    dec c
    cp [hl]
    and d
    rra
    adc b
    add b
    adc $2d
    nop
    ldh [rTIMA], a
    ld a, [hl+]
    ccf
    ldh [$2a], a
    ld b, h
    pop bc
    inc sp
    push bc
    xor a
    ret nz

    cp b
    and b
    inc [hl]
    pop hl
    jr nz, jr_02f_7785

    jp nz, $eec0

    db $db
    ld b, h
    nop
    call nz, $80d3
    ld l, e
    add h
    pop hl
    dec b
    pop bc
    nop
    call nz, Call_02f_71e1
    jp $e2ba


    push af
    add c
    db $76
    ld h, d
    dec hl
    inc l
    and $63
    ret nz

    and e
    inc b
    adc l
    and d
    ret nz

    db $e4
    dec hl
    rst $38
    pop hl
    ld a, [c]
    ret nz

    ld b, h
    ret nz

    or h
    jp nz, Jump_02f_6177

    ld b, b
    nop
    or c
    ld d, l
    jp $2199


    db $d3
    add c
    ld [$ccc2], sp
    add b
    dec l
    ret nz

    pop hl
    ld [$a107], sp
    ret nz

    ld [c], a
    or [hl]
    nop
    ld l, l
    nop
    cp d
    nop
    jp nz, $e2d8

    rlca
    pop hl
    nop
    dec b
    jp nz, $e1c1

    cp a
    ld [c], a
    add h
    ld [c], a
    ld h, b
    add e
    nop
    or h
    dec h
    add d
    ld b, l
    db $e3
    ld [$e087], sp
    ld a, [$8684]
    add c
    dec l
    add l
    add c
    add [hl]
    call nz, $9943
    ret nz

    rst $20
    nop
    adc h
    and c
    ld c, [hl]
    add d
    ld b, a
    add c
    dec a
    ld [c], a
    ret nz

    and $c0
    sub e

Jump_02f_7844:
    sbc [hl]
    inc bc
    add $61
    nop
    nop
    ret nz

    ld [de], a
    add e
    add hl, bc
    ld [c], a
    add d
    pop hl
    cp l
    pop bc
    cp a
    and b
    inc b
    ld [c], a
    ld h, $45
    ret nz

    nop
    xor [hl]
    add b
    call nz, Call_02f_6187
    ret nz

    add sp, $0b
    ld h, b
    add b
    ld [c], a
    ld l, e
    ld c, e
    ld bc, $862b
    pop bc
    rst $30
    inc b
    jp nz, Jump_000_0014

    add [hl]
    ld [de], a
    add e
    ld a, $e1
    adc b
    ldh [rSC], a
    dec [hl]
    and c
    ld l, e
    adc b
    and l

jr_02f_787e:
    jp nz, $c039

    ld [$e53e], a
    cp a
    pop hl
    ld b, e
    ld [c], a
    nop
    adc b
    and e
    ld e, $83
    nop
    ld d, [hl]
    ld a, [hl]
    jp $e900


    add h
    db $e3
    or c
    and c
    ld [bc], a
    push hl
    ld [hl], b
    ld b, $b1
    adc a
    daa
    add $01
    sbc b
    add b
    ld l, e
    dec bc
    ld l, e
    db $fd
    pop hl
    ld bc, $c54b
    jp nz, $62a4

    ld [bc], a
    pop hl
    ld b, d
    ld [bc], a
    ret nz

    di
    nop
    ld b, a
    dec de
    ld b, b
    inc b
    sub d
    add b
    cp $e2
    ld c, e
    res 4, c
    ld l, b
    and e
    add h
    jp nz, $221f

    jp TimerOverflowInterrupt


    db $ec
    add hl, bc
    ld a, [hl]
    jp $e6ff


    adc h
    and c
    ld [hl-], a
    inc bc
    inc hl
    ld h, d
    ld b, e
    rst $30
    cp e
    ld c, b
    ld [bc], a
    cp d
    ld bc, $d02d
    add e
    ld c, l
    and d
    ld [$c0e7], sp
    ld a, [$0480]
    cp e
    ld [hl+], a
    nop
    ld d, [hl]
    jr nz, jr_02f_787e

    add h
    xor $05
    ld b, a
    dec b
    ld b, e
    di
    add b
    ld [$04ca], sp
    ld a, [$0022]
    ld de, $ae20
    ld b, $49
    ei
    add b
    rlca
    ld a, e
    pop bc
    ld h, [hl]
    ld b, c
    ret nz

    ld [c], a
    ld l, h
    and l

jr_02f_790a:
    nop
    call z, $8036
    ld c, $b8
    add [hl]
    ld a, d
    ld hl, $00fc
    db $ed
    ld h, c
    inc c
    or l
    add b
    pop de
    nop
    and e
    ld b, [hl]
    ld a, [hl-]
    ld [hl+], a
    sub b
    dec b
    rst $38
    rst $38
    or a
    xor [hl]
    ld a, [hl]
    jp Jump_02f_6490


    rst $38
    rst $38
    inc d
    ld [hl], e
    jr z, jr_02f_790a

    add d
    ld l, l
    ld a, [$6da3]
    xor l
    and e
    inc c
    or d
    nop
    xor l
    inc b
    ld b, e
    push hl
    ld [hl], c
    ld [bc], a
    dec l
    ld hl, sp+$01
    add b
    pop hl
    inc hl
    dec h
    ld a, a
    rst $38
    ld a, c
    adc d
    inc bc
    dec c
    ld l, l
    ld b, b
    db $e3
    db $e3
    ld b, $43
    rst $38
    ld [hl], $a7
    ld a, [hl-]
    ld [hl+], a
    ld d, c
    ld b, e
    nop
    ld h, [hl]
    dec h
    add b
    rst $18
    dec a
    db $ec
    ld [de], a
    ld b, l
    inc c
    ld h, d
    ld c, c
    rst $38
    or [hl]
    ld l, [hl]
    add d
    jp $c000


    rst $38
    dec a
    db $f4
    ret nz

    db $e3
    inc b
    rst $20
    add b
    call c, $0000
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
    inc e
    rst $38
    rst $38
    db $fd
    db $fc
    rrca
    rrca
    rrca
    pop hl
    db $fc
    rst $18
    ld a, [$e1c3]
    nop
    cp a
    pop af
    ret z

    ld [c], a
    jp $9ee3


    ldh a, [$e9]
    db $ec
    ldh [$ef], a
    pop af
    ld a, [$e58e]
    nop
    ret nz

    rst $38
    rst $10
    db $ed
    and b
    rst $38
    ld a, [hl+]
    ld a, [c]
    ret nz

    ldh a, [$e2]
    jp hl


    jr nz, @-$0e

    sbc a
    jp z, $ca00

    db $d3
    ldh [rIE], a
    pop hl
    or $06
    add sp, $41
    db $d3
    inc l
    call nz, $d743
    ld a, [bc]
    jp nz, Jump_000_2700

    db $dd
    ldh [rIE], a
    xor b
    cp d
    rst $20
    or e
    ldh [rIE], a
    and b
    rst $38
    ldh [$e5], a
    ld [hl+], a
    or c
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
    jr z, @+$01

    rst $38
    rst $38
    rst $38
    db $fc
    ei
    jr @-$21

    db $fc
    ld b, c
    cp l
    rst $38
    rst $38
    rst $38
    ld c, $f8
    rst $30
    ld de, $1111
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, h
    rst $38
    rst $38
    xor $ed
    ld hl, $dc21
    or $31
    ld sp, $ffe0
    add b
    sbc a
    ld sp, hl
    ldh [$fd], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    or $51
    inc bc
    ld d, c
    ld d, c
    db $db
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    nop
    nop
    nop

jr_02f_7a34:
    cp $d5
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
    jr z, jr_02f_7a34

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

jr_02f_7b62:
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
    jr nz, jr_02f_7b62

    and b
    cp $e2
    ld d, b
    add b
    ldh a, [$a0]
    pop hl
    db $10
    db $e3
    jp c, $64e1

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

jr_02f_7bd8:
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

jr_02f_7c16:
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
    jr nc, jr_02f_7bd8

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
    jr nz, jr_02f_7c16

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

jr_02f_7cbb:
    ldh a, [$ed]
    ldh a, [$d0]
    ld [c], a
    ld b, c
    ld e, $c6
    add c
    nop
    nop
    jr nc, jr_02f_7cbb

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
    jr nz, jr_02f_7d52

    jr jr_02f_7dc2

jr_02f_7d52:
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

jr_02f_7d6e:
    inc b
    ld a, [de]
    inc de
    cp $fe
    jr z, jr_02f_7daa

    cp $ff
    jr nz, jr_02f_7d6e

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
    jr nz, jr_02f_7d6e

jr_02f_7daa:
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
    ld hl, $7dd6
    call Call_000_23e8
    add sp, $02

jr_02f_7dc2:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld hl, $7dd6
    call Call_000_2449
    pop hl
    pop de
    pop bc
    pop af
    ret


    rst $30
    add b
    inc bc
    jr nz, jr_02f_7ddf

    rst $30
    nop
    inc bc
    ret nz

jr_02f_7ddf:
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

jr_02f_7df1:
    ld a, [hl]
    cp $ff
    jr z, jr_02f_7e13

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
    jr nz, jr_02f_7df1

    ld a, b
    call Call_02f_7e1d
    ld a, c
    cp $04
    jr nz, jr_02f_7df1

jr_02f_7e13:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_02f_7e1d:
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

jr_02f_7e33:
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
    jr nz, jr_02f_7e5c

    ld hl, sp+$00
    ld c, [hl]
    ld b, $00
    ld hl, $c338
    add hl, bc
    ld a, [hl]
    ld [$c33c], a
    jr jr_02f_7e33

jr_02f_7e5c:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02f_7f7c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_02f_7fe0:
Jump_02f_7fe0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
