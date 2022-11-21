; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $078", ROMX[$4000], BANK[$78]

    inc c
    ld b, b
    ld [hl], a
    ld c, c

    db $df, $53, $5a, $5e

    db $dd
    ld h, [hl]
    ld h, [hl]
    ld [hl], c
    inc d
    ld b, b
    ld d, h
    ld b, b
    pop bc
    ld b, a
    ld d, c
    ld c, b
    rst $38
    ld a, a
    ld l, c
    dec [hl]
    call nz, RST_20
    nop
    rra
    nop
    inc c
    nop
    sbc c
    dec d
    nop
    nop
    rra
    nop
    rst $38
    ld b, [hl]
    sbc c
    dec d
    nop
    nop
    rst $38
    ld b, [hl]
    sbc c
    dec d
    sbc a
    ld sp, $0000
    rst $38
    ld b, [hl]
    sbc a
    ld sp, $7fff
    nop
    nop
    rst $38
    ld a, a
    ld l, c
    dec [hl]
    rst $38
    ld b, [hl]
    nop
    nop
    rst $38
    ld a, a
    ld l, c
    dec [hl]
    sbc c
    dec d
    nop
    nop
    ld l, c
    dec [hl]
    call nz, $ff20
    ld b, [hl]
    sbc c
    dec d
    push af
    nop
    rst $38
    db $ec
    rst $38
    rst $38
    di
    cp $ff
    cp $fe
    ei
    db $fd
    rst $38
    cp $e1
    db $e3
    rst $28
    sbc a
    add b
    ld a, a
    rst $38
    ld c, a
    ldh a, [$d9]
    ldh [$90], a
    ldh [$95], a
    ldh [rIE], a
    sbc d
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    rrca
    rst $38
    rst $38
    add e
    ld a, a
    ld h, c
    rra
    jp hl


    rla
    ld d, b
    cpl
    ei
    pop hl
    rra
    ret nz

    ldh [$1f], a
    rst $38
    rst $20
    rst $38
    ld sp, hl
    rst $10
    rst $38
    cp $7f
    or l
    ldh [$5f], a
    or c
    jp hl


    ld a, a
    rst $38
    sub a
    cp a
    rst $38
    rst $18
    cp h
    ld [c], a
    db $fd
    or b
    pop hl
    sub [hl]
    db $e3
    sbc a
    rst $38
    ldh [$ca], a
    push af
    pop hl
    cp $f4
    rst $38
    ld a, [$e0fc]
    ldh [$df], a
    pop hl
    jp nc, $a12f

    ld e, a
    ld b, d
    cp a
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    ld d, l
    rst $38
    rst $28
    rst $38
    pop hl
    push de
    cp h
    db $e4
    cp b
    pop hl
    or b
    pop hl
    ld h, d
    ldh [$ef], a
    rst $38
    rst $30
    rst $20
    rst $30
    rst $38
    ei
    cp e
    db $eb
    ld c, e
    and $83
    inc bc
    rst $08
    rst $28
    rst $38
    di
    rst $38
    db $fc
    dec sp
    ld [c], a
    ei
    db $fc
    jp hl


    ei
    rst $30
    jp c, $e431

    ccf
    rst $38
    rst $08
    rst $38
    cp a
    sbc $bf
    ld [c], a
    db $fc
    nop
    rst $38
    add b
    cp $e1
    db $fd
    ret nz

    ei
    cp $c0
    db $fc
    pop hl
    ccf
    ccf
    rst $08
    rrca
    di
    rst $38
    inc bc
    db $fd
    ld bc, $00fe
    rst $38
    nop
    ld e, a
    ei
    nop
    cp a
    nop
    and $7f
    ld a, a
    cp a
    ccf
    rst $18
    rst $30
    rra
    rst $28
    rrca
    ld [bc], a
    db $e3
    cp $fc
    db $fc
    ld hl, sp-$01
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [rIE], a
    cp a
    db $eb
    cp a
    ccf
    rst $38
    ldh [$1f], a
    rst $38
    ldh [rIF], a
    rrca
    rlca
    ld d, e
    rlca
    inc bc
    ret c

    call $e1a8
    db $fc
    cp $e1
    add b
    cp $e0
    rst $28
    nop
    ld hl, sp+$00
    ld d, a
    xor h
    ldh [rHDMA5], a
    nop
    xor a
    ei
    nop
    dec d
    db $fc
    ldh [rTIMA], a
    nop
    dec hl
    nop
    rst $30
    dec sp
    rlca
    ei
    sub d
    db $e4
    rst $38
    nop
    ld a, a
    ld a, [$90e1]

jr_078_4160:
    and $fb
    rst $38
    ccf
    adc [hl]
    pop hl
    ldh a, [$e0]
    ldh [$c0], a
    ldh [$f5], a
    ret nz

    rst $38
    ldh [$80], a
    rst $38
    ldh [rP1], a
    add b
    nop
    inc bc
    dec a
    ld bc, $ce60
    ld a, a
    ccf
    rra
    rlca
    ld [$60e6], a
    push bc
    db $fd
    rlca
    ld b, b
    push bc
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ld a, h
    add [hl]
    ldh [rNR52], a
    jp Jump_000_00f8


    ldh a, [rP1]
    ldh [$b8], a
    ldh [$be], a
    jr jr_078_4160

    dec b
    nop
    ld a, [bc]
    nop
    ld bc, $e6fc
    ld [bc], a
    ld b, h
    inc c

jr_078_41a5:
    ldh [$08], a
    pop hl
    rst $38
    ld e, b
    ldh [$fc], a
    pop hl
    nop
    ldh [rIF], a
    inc c
    ldh [rIE], a
    rlca
    rst $30
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    ei
    inc de
    inc bc
    rst $38
    jr nz, jr_078_41a5

    ld d, b
    pop bc
    cp $ff
    pop hl
    or [hl]
    rst $20
    add $a9
    rst $38
    ld bc, $0701
    rlca
    ld c, $0f
    dec sp
    inc a
    rst $38
    ld [hl], a
    ld a, b
    nop
    nop
    rlca
    rlca
    dec sp
    inc a
    sbc $23
    pop bc
    rst $28
    rra
    db $fd
    inc bc
    inc e
    ldh [$7f], a
    cp a
    db $fc
    ld [hl], d
    ldh [rNR14], a
    ldh [$80], a
    cp a
    ret nz

    rst $18
    ldh [$1f], a
    ld sp, hl
    ldh [$a0], a
    and b
    inc b
    ld [c], a
    cp $01
    rst $38
    ld bc, $fbfd
    inc bc
    db $fc
    ret nz

    ret nz

    rst $28
    rra
    cp a
    ld a, a
    ld a, e
    rst $38
    db $fc
    rst $28
    ldh a, [$bf]
    ret nz

    ld a, a
    add b
    rst $38
    rst $38
    nop
    add b
    add b
    ldh a, [$f0]
    cp $fe
    rst $18
    rra
    ccf
    rst $30
    rrca
    db $fd
    inc bc
    call c, $c4e0
    ret nz

    ret nz

    pop bc
    rst $38
    rst $38
    add b
    push af
    ldh [$9f], a
    ld hl, sp-$39
    cp $07
    ld b, e
    rst $38
    rst $38
    ret z

    pop hl
    call nz, $bce0
    ld [c], a
    cp b
    pop hl
    ld h, h
    ret nz

    db $fc
    cp $e9
    ld [hl], h
    pop hl
    ld [bc], a
    inc bc
    dec b
    ld b, $0b
    inc c
    ccf
    rra
    jr jr_078_4289

    jr c, jr_078_42cb

    ld a, b
    or c
    ret nz

    or e
    call nz, $e876
    pop hl
    ld [bc], a
    inc bc
    db $10
    and e
    inc a
    inc a
    rst $00
    ld e, c
    and b
    reti


    ccf
    ld l, l
    and b
    nop
    and a
    add b
    add b
    adc c
    pop bc
    nop
    nop
    rra
    rrca
    rrca
    inc a
    ccf
    ld a, a
    rst $38
    ldh [$f6], a
    add e
    add sp, -$1f
    rst $38
    ld h, b
    ldh [rNR10], a
    ldh a, [$88]
    ld hl, sp-$3c
    db $fc
    rst $38
    call nz, $e2fc
    cp $c1
    ld a, a
    add c
    ld a, a
    rst $38
    pop hl

jr_078_4289:
    rra
    ret nz

    ccf
    ldh [$1f], a
    ret nc

    cpl
    sub h
    db $fc
    pop hl
    or d
    and b
    ldh [$8e], a
    ret nz

    ld hl, sp-$75
    and b
    ld [hl], e
    and a
    ld a, a

jr_078_429e:
    jr nc, jr_078_429e

    rst $20
    ld h, d
    db $e3
    ld a, [bc]
    and e
    dec bc
    and c
    ld a, a
    ld a, b
    adc $80
    cp $e0
    or e
    ei
    db $fc
    ld e, c
    and b
    db $fc
    ldh [rDIV], a
    rlca
    cp $e1
    ld [$0ff9], sp
    cp $e5
    adc b
    db $e3
    ld sp, hl
    rst $38
    or $f9
    ld sp, hl
    ld d, l
    ldh a, [$fe]
    pop hl
    ldh [rIE], a
    ld [c], a

jr_078_42cb:
    ldh a, [rIE]
    and $01
    rst $38
    db $ec
    dec a
    rst $38
    sub e
    add b
    db $db
    rst $20
    rst $20
    jp $e1fe


    ld hl, sp-$20
    rst $38
    rst $38
    ld [c], a
    cp $e1
    rst $38
    pop hl
    rst $38
    pop af
    cp $fe
    and $e8
    rla
    ret nz

    ccf
    and b
    ld e, a
    ld b, b
    ld [$a027], sp
    cp $e3
    ld h, l
    rst $20
    ld a, [hl]
    cp $e2
    ld d, l
    rst $20
    rla
    ret z

    ei
    ld l, c
    ld h, l
    db $fc
    ld c, c
    pop hl
    ld a, a
    cp $e0
    call nc, $bfe1
    rst $38
    ld d, [hl]
    push hl
    and $48
    db $e3
    ld [bc], a
    inc bc
    ld e, b
    ldh [$ce], a
    add [hl]
    ld a, a
    ld a, a
    ccf
    db $fd
    ccf
    ld d, [hl]
    rst $20
    db $e3
    pop hl
    rst $20
    ld [c], a
    add $c4
    db $fd
    ld bc, $a640
    ld hl, sp-$10
    ld e, $0c
    rrca
    ld [bc], a
    cp b
    call nc, $bde9
    add c
    ld d, [hl]
    pop hl
    ld a, [c]
    cp $e2
    cp $e0
    db $e4
    or $a0
    ret nz

    adc b
    ld hl, sp+$58
    push hl
    add b
    ld a, a
    ld bc, $21ff
    and c
    ld c, b
    ldh [$5a], a
    pop hl
    add a
    ld h, e
    pop bc
    ret nz

    ld hl, sp+$24
    and b
    ld e, a
    ld h, l
    sbc a
    add a
    rst $38
    inc bc
    db $fd
    inc bc
    ld bc, $4fe0
    ld h, d
    ld hl, sp-$01
    rst $38
    rst $30
    ld hl, sp-$11
    ldh a, [$ef]
    ldh a, [$dc]
    push de
    db $e3
    sbc l
    ld h, c
    rst $18
    ld a, l
    ld h, b
    rst $08
    cp [hl]
    and b
    ei
    rlca
    cpl
    ld a, h
    add e
    ld a, a
    add c
    db $10
    add c
    ld a, a
    cp $e0
    adc b
    and e
    rst $28
    rra
    rst $38
    adc [hl]
    cp $0c
    ld l, c
    adc h
    add h
    inc c
    xor c
    ld [$e2ff], sp
    rst $30
    ld b, h
    rlca
    cp $e0
    ld [bc], a
    db $eb
    ld c, b
    add b
    ei
    nop
    ld b, b
    jp nz, Jump_000_0088

    nop
    xor b
    ld d, a
    ldh a, [$ed]
    rrca
    db $fc
    pop hl
    ld [$fc15], a
    db $e3
    db $fc
    db $e3
    ld c, b
    ei
    rst $30
    ld b, c
    reti


    add b
    inc bc
    rst $38
    ld b, $ff
    inc b
    ld [$e0fe], a
    ld a, b
    add e
    add b
    add b
    ret


    add b
    add $fc
    ld l, h
    adc a
    ld hl, sp+$38
    ldh a, [rNR23]
    ld d, b
    and $4b
    add b
    ret nc

    ld h, d
    rst $18
    jp hl


    ldh [$fe], a
    db $e3
    ld d, d
    pop hl
    rst $30
    ld a, [$9ea0]
    ld h, c
    xor $ff
    ld de, $39c6
    sbc d
    ld h, l
    cp l
    ld b, d
    cp l
    rra
    ld b, d
    sbc a
    ld h, b
    rst $08
    jr nc, @+$5b

    call nz, $80d0
    ld c, h
    pop hl
    ei
    cp a
    ld b, b
    ld h, b
    ld b, l
    rrca
    rrca
    db $10
    rra
    jr nz, jr_078_4431

    ccf
    jr nz, @+$41

    ld d, b
    ld b, e
    ccf
    ccf
    xor e
    add d
    cp e
    ld h, c
    adc $3f
    ld b, b

jr_078_4408:
    ld a, $3e
    pop bc
    jp hl


    add c
    push hl
    add b
    ccf
    rst $38
    or $68
    pop hl
    xor d
    ld d, l
    ld e, h
    pop hl
    ret nc

    cpl
    xor b
    ld d, a
    rst $30
    ret nz

    ccf
    inc b
    sub a
    ld h, b
    ld bc, $03ff
    cp $7f
    inc bc

jr_078_4428:
    cp $07
    rst $38
    ld c, $fc
    inc c
    ld a, [hl-]

jr_078_442f:
    ld h, b
    rst $30

jr_078_4431:
    rst $08

jr_078_4432:
    add [hl]
    add e
    xor h
    ld h, d
    ld hl, sp-$10
    rra
    rrca
    db $fd
    ld bc, $60a0
    ld bc, $c000
    add b
    ldh a, [$60]
    ccf
    inc a
    jr jr_078_4456

    inc b
    add e
    nop
    jr nz, jr_078_44ad

    inc bc

jr_078_444e:
    ld h, e
    adc $1e
    ld h, l
    rrca
    db $fd
    cp $9c

jr_078_4456:
    ld c, h
    ld [hl], $80
    adc a
    ldh a, [$fe]
    ld a, c
    rst $00
    cp a
    ld b, b

jr_078_4460:
    rst $18
    jr nz, jr_078_4432

    jr nc, jr_078_446c

    and h
    jr nc, jr_078_4408

    sub $e3
    jr nz, jr_078_444e

jr_078_446c:
    ld b, c
    pop hl
    ld b, h
    inc bc
    sub d
    add b
    ccf
    ldh a, [$af]
    ld a, [hl+]
    xor d
    add e
    or a
    ld h, c
    xor a
    ld b, b
    ld hl, sp-$1c
    ldh [$8a], a
    push de
    add b
    ld hl, $0561
    ld l, b
    ld h, d
    dec bc
    call nc, $a042
    ld e, a
    rst $38
    ld b, c
    cp a
    add e
    ld a, l
    inc bc
    rst $38
    rrca
    rst $30
    ccf
    rra
    rst $28
    ccf
    rst $18
    cp a
    ld a, a
    adc b
    ld b, c
    jr nz, jr_078_4460

    jr jr_078_4428

    ld b, b
    or $83
    ld e, h
    ld [hl+], a
    cp $07
    jr c, jr_078_442f

    ld [hl], $80

jr_078_44ad:
    ld b, a
    jp nz, $81dd

    ld [hl], $60
    rla
    nop
    cpl
    ld a, $40
    rrca
    rrca
    sbc a
    rra
    rlca
    cp a
    rlca
    ld a, a
    ld b, b
    ld h, c
    inc a
    ld h, c
    rrca
    ld [hl], c
    ret nz

    ld h, c
    add b
    ld h, e
    add c
    xor e
    add c
    rst $30
    ldh [$cb], a
    ld b, c
    ld l, b
    cp a
    ldh [$c0], a
    cp $f8
    rst $38
    rst $28
    nop
    ld hl, $aa57
    ld l, b
    ld b, b
    dec d
    db $f4
    ld b, b
    dec b
    db $e4
    jr nz, jr_078_4525

    ld h, [hl]
    ld b, d
    xor a
    db $f4
    add sp, $42
    sub h
    ld h, b
    rlca
    ei
    ld [c], a
    cp $0f
    ld hl, sp+$3f
    ccf
    ldh a, [$6f]
    ret nz

    rst $10
    add b
    xor e
    ldh [$03], a
    ld d, h
    ld b, b
    rst $38
    rst $38
    rra
    ei
    inc c
    db $fc
    rlca
    cp $03
    ld a, a
    db $e3
    ldh [$e3], a
    pop hl
    pop af
    ldh [$f9], a
    cp $61
    rst $38
    ccf
    ld a, a
    add a
    rra
    pop hl
    add b
    nop
    add c
    cp a
    add b
    ret nz

    add b
    jp nz, $c180

    ld b, b
    ld b, b

jr_078_4525:
    add c
    db $fc
    or b
    ld bc, $401a
    cp a
    ld bc, $0eff
    ld a, h
    ld [$fcff], sp
    ld [$087d], sp
    cp [hl]
    ld [$17ff], sp
    ld c, a
    rst $38
    ld h, a
    rst $38
    add a
    ld e, [hl]
    pop hl
    ld e, d
    ldh [rIF], a
    call nc, $ce00
    adc a
    ld [$fefd], sp
    rst $30
    or d
    nop
    sub d
    inc hl
    ld hl, sp-$10
    ld a, a
    sub b
    ldh a, [$f3]
    inc hl
    rst $28
    inc l
    sub a
    ld d, b
    ld b, b
    db $fd
    dec d
    ld l, b
    and c
    rlca

jr_078_4561:
    ld a, d
    ld a, l
    add l
    ld a, [$bfaa]
    ld d, l
    ldh [$7f], a
    ld hl, sp+$1f
    ld a, h
    adc b
    jr nz, jr_078_4561

    rst $20
    ldh [rIE], a
    ld e, $fa
    ld b, d
    ret nc

    add l
    rst $38
    ret nz

    ld a, a
    cp $a3
    ld b, b
    cp a
    rst $38
    cp $ae
    db $fc
    ld e, l
    ld hl, sp+$3f
    ccf
    pop af
    ccf
    and $7f
    ld hl, sp-$08
    ld hl, $c1a4
    db $fd
    ld a, a
    and a
    ld b, b
    and b
    ld e, a
    ret nc

    cpl
    add sp, $17

jr_078_459a:
    ld e, a
    ldh a, [rIF]
    ld a, a
    ld bc, $7603
    add b
    rrca
    and l
    ld b, c
    cp $77
    ld b, d
    dec c
    di
    add c
    rst $38
    add e
    db $fd
    ld b, a
    rst $38
    ld a, c
    xor a
    or b
    ld l, a
    ldh a, [rNR33]
    ld [c], a
    dec sp
    ld sp, hl
    call nz, $a30c
    db $f4
    ld b, b
    add b
    ldh [$c0], a
    ldh a, [$60]
    rst $38
    db $fc
    jr c, jr_078_4644

    ld [$08bf], sp
    ld e, a
    add hl, bc
    rst $30
    ccf
    ld c, $5f
    and d
    ret nz

    rra
    nop
    rrca
    ld bc, $ff3f
    cpl
    rst $38
    ld c, a
    rst $38
    sbc a
    sbc a
    add b
    pop bc
    ld b, c
    pop af
    ld e, a
    or $e0
    dec b
    daa
    dec l
    ld bc, $effe
    ldh a, [$d7]
    ld e, a
    add sp, -$51
    ret nc

    ld [hl], a
    adc b
    jr c, jr_078_459a

    rst $38
    ld l, $a4
    rst $38
    cp $01
    db $fc
    inc bc
    ld a, [hl]
    add e
    ld a, e
    add [hl]
    jp $0af5


    add l
    and $18
    and h
    db $fc
    db $e3
    ld [$afa5], sp

jr_078_460d:
    ld d, b
    ccf
    rst $10
    jr z, jr_078_460d

    inc b
    db $fd
    ld [bc], a
    call c, $d0e9
    jp hl


    rst $38
    add sp, $17
    db $f4
    dec bc
    ld a, [$d405]
    dec hl
    sbc $fc
    pop hl
    cp $01
    call nc, $b52b
    rst $20
    ld [bc], a
    rst $38
    rst $38
    add d
    ld a, a
    ld [bc], a
    rst $38
    scf
    ret z

    ld h, a
    sbc b
    rst $38
    ld h, a
    sbc b
    rst $08
    jr nc, @-$2f

    jr nc, @-$73

jr_078_463e:
    ld [hl], h
    rst $38
    add a
    ld a, b
    adc e
    ld [hl], h

jr_078_4644:
    rst $28
    ld h, $e0

jr_078_4647:
    jr nz, jr_078_4647

    cp $e5
    ldh a, [rNR10]
    rst $38
    rra
    rra
    ld [bc], a
    rrca
    ret z

    ld [hl], b
    nop
    db $fc
    push hl
    ld b, e
    nop
    rrca
    cp $e2
    jr nc, jr_078_463e

    rst $28
    ccf
    pop bc
    rst $08
    di
    ldh [$3e], a
    nop
    cp $e0
    ld a, [bc]
    ld h, c
    ld l, $a0
    ld a, [$e5f3]
    db $fc
    ld e, b
    ld bc, $bbfb
    add b
    ld l, h
    pop hl
    ld a, [$fc05]
    rst $38
    inc bc
    dec a
    add $3f
    call nz, $ec17
    cp e
    rst $38
    ld l, h
    xor a
    ld a, b
    cp a
    ld a, b
    rst $18
    jr c, @-$1f

    add a

jr_078_468d:
    jr c, jr_078_468d

    ld bc, $e12e
    db $fc
    rst $20
    ld a, h
    pop hl
    ld a, b
    pop hl
    add e
    cp $40
    ld h, d
    nop
    rst $38
    dec b
    ld a, [$fd02]
    ld b, c
    db $eb
    cp $42
    db $fc
    ldh [rLCDC], a
    ld l, c
    nop
    ret nz

    rst $38
    db $10
    db $fd
    rra
    cp $e3
    sub b
    rra
    ld d, b
    rra
    or b
    rra
    cp a
    ldh a, [$1f]
    ld hl, sp+$07
    ld a, [$a605]
    pop hl
    rst $38
    add hl, hl
    nop
    db $fc
    db $e3
    ld b, a
    and l
    rlca
    cp [hl]
    ldh [$03], a
    cp d
    ldh [$c1], a
    adc c
    and $69
    ldh [rIE], a
    rst $20
    jr jr_078_4737

    sbc [hl]
    pop bc
    ld e, a
    and b
    cp a
    reti


    ld b, b
    ret nc

    ld bc, $e16c
    ld a, [$ec05]
    pop bc
    db $f4
    dec bc
    cp $e4
    pop bc
    ld d, a
    cp b
    ld d, l
    cp d
    rra
    ldh a, [$15]
    db $fd
    ld a, [$e1fc]
    dec hl
    db $f4
    dec h
    ld a, [$00ff]
    rst $38
    rst $18
    jr nz, @+$01

    nop
    rst $10
    jr z, @+$01

    nop
    or e
    push de
    ld a, [hl+]
    db $fc
    pop hl
    ld d, b
    push hl
    rst $38
    nop
    db $fc
    pop hl
    ld e, l
    db $e3
    and d
    and b
    rla
    and b
    ldh [rNR42], a
    call c, $a821
    ld d, a
    ld b, b
    rst $28
    cp a
    ld h, b
    rst $38

jr_078_4721:
    jr nz, jr_078_4721

    ldh [$30], a
    rst $38
    db $10
    cp [hl]
    cp $e0
    jr @+$01

    ld [$f0ff], sp
    ld e, h
    pop hl
    rrca
    ldh [$fe], a
    rst $20
    ld e, b
    db $e3

jr_078_4737:
    ld h, [hl]
    ld bc, $e3fc
    ld e, h
    pop hl
    ld bc, $81ff
    db $fc
    ld d, d
    ld b, d
    ld c, [hl]
    ld b, c
    db $fd
    cp $fa
    db $fd
    push af
    ld a, [$fbe3]
    db $f4
    jr nz, jr_078_47b5

    inc h
    ret


    add b
    ld b, c
    ldh [$1f], a
    call nc, Call_000_2b6d
    db $fc
    pop hl
    add b
    ld a, a
    db $fc
    pop hl
    ld b, b
    cp a
    ld e, h
    pop hl
    rst $38
    ld a, [hl+]
    push af
    ld hl, $2afe
    push af
    ld b, b
    rst $38
    db $fd
    ld c, d
    db $fc
    ldh [rIE], a
    nop
    ld e, a
    and b
    rst $38
    nop
    rst $38
    ld d, a
    xor b
    rst $38
    nop
    ld d, l
    xor d
    cp a
    ld b, b
    rst $38
    ld d, l
    xor d
    ld a, [$d505]
    ld a, [hl+]
    ld hl, sp+$07
    db $e3
    push af
    ld a, [bc]
    inc e
    db $e3
    ld c, h
    db $e3
    add sp, -$1f
    dec hl
    call nc, $9f55
    xor d

jr_078_4796:
    dec bc
    db $f4
    dec d
    ld [$e14c], a
    db $fc
    push hl
    xor d
    xor a
    ld d, l
    ld d, b
    xor a
    inc c
    ld a, d
    ld b, d
    ld b, $f2
    and b
    inc bc
    ret nz

    db $ec
    ld b, d
    ld b, h
    jp hl


    ld b, b
    db $e3
    ld b, h
    rst $20
    jr c, jr_078_4796

jr_078_47b5:
    ld b, $e1
    ret nz

    ccf
    nop
    sub $41
    db $fc
    db $e3
    nop
    nop
    nop
    add hl, hl
    ld [$ffff], sp
    pop af
    ldh a, [$09]
    ldh [$fd], a
    add hl, bc
    sbc $f6
    and $e1
    ld [hl], b
    pop hl
    ldh [$df], a
    or $e4
    ld [c], a
    ldh [$f7], a
    add hl, bc
    add hl, bc
    ld a, [bc]
    rst $38
    ld [c], a
    cp $e0
    or $0a
    inc c
    inc c
    dec bc
    dec bc
    inc c
    inc c
    ld a, h
    rst $18
    push af
    ldh [$e0], a
    ld [$0b0b], sp
    ld [$ba0c], sp
    ldh [$a2], a
    add hl, de
    ld a, [c]
    ld a, [bc]
    ldh [$e2], a
    ret nz

    ldh [$e0], a
    or $0a
    and b
    ldh [$0b], a
    rst $08
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld c, $e0
    push af
    add d
    ldh [$0c], a
    dec bc
    ld b, h
    pop hl
    db $f4
    ret nz

    pop hl
    ld c, e
    ld e, [hl]
    pop hl
    add d
    di
    add [hl]
    jp nz, $a00d

    ldh [$8c], a
    jp nz, Jump_078_66f4

    jp Jump_000_0e0e


    pop hl
    ld a, [$e7d8]
    db $dd
    ld a, [$060f]
    cp $d4
    ld [$e048], sp
    db $fc
    ret nz

    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    di
    ld a, [c]
    nop
    nop
    nop
    ld a, l
    ld bc, $edff
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $ea
    xor $7e
    reti


    rst $20
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    rst $18
    ld hl, sp+$7f
    dec c
    ld c, $01
    ld bc, $100f
    ld de, $f5bd
    rst $38
    ld [de], a
    inc de
    ld bc, $1401
    dec d
    ld d, $17
    db $fd
    jr @-$62

    db $f4
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $f7
    rra
    jr nz, @+$23

    ld a, h
    di
    ld [hl+], a
    inc hl
    inc h
    dec h
    cp a
    ld h, $27
    jr z, jr_078_48bc

    ld a, [hl+]
    dec hl
    ld e, h
    di
    inc l
    rst $38
    dec l
    ld l, $2f
    jr nc, jr_078_489e

jr_078_489e:
    ld sp, $3332
    ei
    inc [hl]
    dec [hl]
    dec sp
    ld a, [c]
    ld [hl], $37
    jr c, jr_078_48e3

    ld a, [hl-]
    cp a
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    dec de
    ld a, [c]
    ld b, c
    rst $38
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a

jr_078_48bc:
    ld c, b
    ld c, c
    ei
    ld c, d
    ld c, e
    ei
    jp nc, Jump_078_4d4c

    ld c, [hl]
    ld c, a
    ld d, b
    ld a, a
    ld d, c
    ld d, d
    nop
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    jp c, $ffd1

    ld d, a
    ld e, b
    ld e, c
    nop
    ld e, d
    ld e, e
    ld e, h
    nop
    rst $18
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    cp c
    ret nc

jr_078_48e3:
    ld h, d
    ld h, e
    rst $38
    ld h, h
    inc hl
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    rst $30
    ld l, e
    ld l, h
    ld l, l
    sbc c
    db $d3
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    cp a
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, c
    pop de
    ld a, b
    rst $38
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    rst $30
    add c
    add d
    add e
    ld e, c
    ret nc

    add h
    add l
    add [hl]
    add a
    rst $38
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    cp l
    sub b
    add hl, sp
    ret nc

    sub c
    sub d
    sub e
    adc d
    rst $38
    ldh [$94], a
    rst $18
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    add hl, de
    rst $08
    sbc d
    sbc e
    rst $38
    sbc h
    sbc l
    adc b
    adc d
    adc d
    sbc [hl]
    sbc a
    and b
    rst $28
    and c
    and d
    and e
    and h
    ld sp, hl
    xor a
    and l
    and [hl]
    and a
    rst $38
    xor b
    xor c
    adc d
    adc d
    xor d
    xor e
    xor h
    xor l
    rla
    xor [hl]
    xor a
    or b
    jp Jump_000_00a0


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [c], a
    nop
    nop
    nop
    ld a, a
    ld c, c
    cp a
    ld c, c
    ld [bc], a
    ld d, d
    sub h
    ld d, d
    rra
    nop
    nop
    nop
    rst $38
    ld b, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    sbc c
    dec d
    ld b, $29
    nop
    nop
    sbc a
    ld sp, $46ff
    sbc c
    dec d
    nop
    nop
    rst $38
    ld b, [hl]
    sbc c
    dec d
    rrca
    nop
    nop
    nop
    rst $38
    ld a, a
    sbc c
    dec d
    nop
    nop
    ldh [$2b], a
    rst $38
    ld b, [hl]
    sbc c
    dec d
    nop
    nop
    ldh [$2b], a
    rst $38
    ld a, a
    ld b, $29
    nop
    nop
    ldh [$2b], a
    rra
    nop
    rrca
    nop
    nop
    nop
    ldh [$2b], a
    push af
    nop
    rst $38
    db $ec
    rst $38
    rst $38
    db $ec
    pop hl
    cp $e0
    rst $38
    db $fd
    ldh a, [$fe]
    ld [c], a
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    ld d, h
    xor e
    xor d
    ld d, l
    nop
    rst $38
    ld a, [hl+]
    push de
    sbc e
    nop
    rst $38
    cp $e5
    add b
    ld a, a
    db $f4
    rst $20
    pop bc
    pop hl
    ld a, a
    db $eb
    rst $38
    ccf
    cp $e0
    rra
    cp $e0
    rrca
    rst $38
    ld c, $f4
    or c
    db $ec
    and c
    db $ed
    rrca
    and h
    ldh [$c8], a
    rst $30
    sub h
    db $eb
    rst $38
    cp b
    rst $00
    sub h
    db $eb
    add d
    db $fd
    ret nz

    rst $38
    cp c
    ret nz

    db $dd
    pop hl
    cp $ea
    cp $00
    ld hl, sp-$02
    ld [$fe03], a
    ld c, a
    db $ec
    ldh a, [rIF]
    cp a
    nop
    ld d, a
    nop

jr_078_4a1e:
    ld a, [bc]
    db $d3
    nop
    ld bc, $e037
    db $fc
    pop hl
    rst $38
    add [hl]
    ldh [$e3], a
    rra
    rst $38
    db $fc
    inc bc
    ld a, a
    nop
    xor a
    nop
    ld a, a
    nop
    db $fd
    xor e
    jr nc, jr_078_4a1e

    ccf
    rst $38
    rst $08
    ccf
    rst $30
    rrca
    set 7, c
    rlca
    ld [hl-], a
    pop hl
    db $fc
    ld l, [hl]
    ld [$e336], a
    ret nz

    pop hl
    ccf
    ret nz

    ldh [$80], a
    ret nz

    add b
    ret nz

    adc b
    rst $20
    and b
    db $e4
    ld l, $fe
    ldh [$e0], a
    nop
    add b
    reti


    jp nz, $ae01

    ldh [$d4], a
    jp z, Jump_000_00f7

    rrca
    ldh a, [$f0]
    db $eb
    pop bc
    ld a, $5f
    nop
    ld [hl], l
    ld a, [hl+]
    ld [hl], b
    ld [c], a
    rla
    db $fc
    db $e3
    ldh [$fe], a
    ld bc, $c5d7
    ld sp, hl
    cp a
    db $fc
    db $e3
    ldh [$c0], a
    cp a
    ld a, a
    rst $18
    ccf
    rst $28
    ld a, a
    rra
    rst $30
    rrca
    rst $30
    rrca
    ei
    rlca
    sub b
    rst $00
    and l
    cp $fe
    ld [c], a
    add b
    sub h
    ldh [$fc], a
    db $e3
    ld bc, $e014
    ld b, $ff

jr_078_4a9b:
    ld bc, $0003
    ld c, $01
    jr @+$09

    jr nc, jr_078_4a9b

    rrca
    ldh [$1f], a
    sbc b
    jp Jump_000_3fc0


    nop
    rst $38
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    ld b, $f9
    rst $18
    inc b
    ei
    nop
    rst $38
    ccf
    ld c, [hl]
    ldh [$f0], a
    rrca
    cp $ea
    pop hl
    ld e, $e1
    ld a, a
    add b
    rst $38
    ld bc, $f7e0
    rra
    ldh a, [rIF]
    ld h, [hl]
    rst $00
    ret nz

    cp a
    ld a, b
    ld a, a
    rst $38
    cp h
    rra
    ld e, a
    rrca
    cp a
    rlca
    ld e, a
    inc bc
    ld e, a
    cpl
    ld bc, $005f
    cpl
    ld c, c
    ret nz

    xor a
    ld b, l
    ret nz

    rst $38
    cpl
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    rst $38
    ld bc, $fbfe
    rlca
    db $fd
    inc bc
    db $fd
    inc bc
    inc hl
    cp $01
    cp $e1
    ccf
    call nz, $a6fd
    ld a, a
    inc [hl]
    ret nz

    ldh a, [$ab]
    ld sp, hl
    add b
    ld e, d
    db $e4
    ld a, [$0ce7]
    inc bc
    jr jr_078_4b19

    rla
    rst $38
    ld [$003f], sp
    ld a, $01

jr_078_4b19:
    jr c, jr_078_4b22

    ld h, b
    or a
    rra
    ld b, c
    ld a, $ee
    and e

jr_078_4b22:
    ldh [$1f], a
    ldh [$a1], a
    ldh a, [$87]
    rrca
    ld hl, sp+$07
    ld d, d
    pop hl
    cp $e3
    ldh [$a4], a
    rst $00
    and c
    ld h, b
    db $fc
    cp $e2
    cp l
    and d
    ldh [$df], a
    ldh a, [$6f]
    ldh a, [$6f]
    cp a
    ld hl, sp+$37
    ld hl, sp+$37
    db $fc
    dec de
    cp $e1
    rla
    ld c, $5c
    ldh [rNR22], a
    nop
    dec bc
    db $fc
    and $7b
    ld [c], a
    xor a
    and c
    xor l
    and e
    jp nz, $e0a8

    add b
    jp c, Jump_078_6ca0

    and c
    ld [hl], b
    and e
    ld e, h
    pop hl
    cp a
    ld a, a
    ld a, [$e7fe]
    cp $58
    and b
    di
    db $fc
    and $f8
    call $f07f
    set 6, b
    sbc a
    ldh [$9d], a
    ld [c], a
    ld a, d
    pop hl
    rst $38
    ld a, [hl-]

jr_078_4b7c:
    dec b
    ld [hl], h
    dec bc
    ld hl, sp+$07
    db $f4
    dec bc
    rst $28
    xor b
    ld d, a
    ld b, b
    cp a
    ld h, [hl]
    and c
    rrca
    rst $38
    rlca
    add a
    rst $38
    inc bc
    rst $38
    ld de, $44ee
    and d
    jr nz, jr_078_4b7c

    ld hl, sp-$7b
    pop bc
    rst $30
    ld a, $c3
    inc a
    cp $e5
    db $e3
    inc e
    db $e3
    inc e
    rst $38
    db $fc
    dec bc
    cp $05
    cp $c5
    rst $38
    jp nz, $feea

    ldh [rSC], a
    cp l
    ldh [rSB], a
    inc b
    xor c
    add b
    ld a, a
    cp [hl]
    rst $30
    ld b, c
    ld a, a
    add b
    cp $e1
    ccf
    ret nz

    ccf
    ret nz

jr_078_4bc3:
    cp a
    rra
    add sp, $0f
    rst $30
    rlca
    ei
    ld a, [hl+]
    ld [c], a
    dec sp
    rst $38
    db $fc
    dec sp
    ld hl, sp+$77
    ld hl, sp-$09
    ldh a, [$ef]
    rra
    ldh [$df], a
    rla
    nop
    rrca
    db $e4
    and b
    db $fc
    pop hl
    jr jr_078_4bc3

    jp Jump_000_002b


    ld a, [hl+]
    db $e3
    pop de
    add d
    ld a, [de]
    ld [c], a
    inc [hl]
    pop hl
    rra
    rst $38
    cp a
    cpl
    rst $18
    ld [hl], a
    adc a
    ld a, e
    add a
    ld h, [hl]
    pop bc
    ld a, [de]
    rra
    push hl
    inc d
    db $eb
    ld [$94f7], sp
    add [hl]
    pop hl
    adc l
    sub h
    adc b
    ld hl, sp+$2a
    pop hl
    or c
    and e
    db $fc
    pop bc
    pop af
    cp $f2
    db $fc
    push hl
    rst $20
    ld a, [$fde2]
    jr nc, @-$7d

    ld a, l
    and c
    ret nc

    cpl
    ld l, d
    ld e, a
    dec d
    db $f4
    dec bc
    xor d
    ld d, l
    ld h, $c5
    rra
    db $fc
    jp nz, $81ff

    ld a, a
    sub b
    db $e3
    add b
    pop af
    ret nz

    pop af
    rst $38
    ret z

    ldh a, [$e0]
    ld hl, sp-$1c
    ld hl, sp-$10
    db $fc
    di
    ld a, [$2cfc]
    pop hl
    db $e3
    ret nz

    inc bc
    rst $38
    ld b, a
    ld a, a
    rst $10
    cp [hl]
    ld a, $d9
    pop af
    ld h, b
    pop bc
    dec bc
    ret nz

    add b
    xor e
    rst $38
    call nc, $e897
    adc a
    ldh a, [$df]
    jr nz, @+$01

    ld c, d
    ld h, h
    jp nz, $fc05

    ld [c], a
    ld [bc], a
    db $fc
    ld [c], a
    or c
    call nz, $f207
    ret nz

    cp $ff
    ld h, l
    ldh [$f1], a

jr_078_4c6b:
    add b
    db $fc
    nop
    cp $0e
    rst $38
    rst $38
    jr nc, @+$01

    ld l, b
    rst $38
    call nz, $ff01
    rst $38
    add c
    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    ld h, b
    ccf
    and $fe
    pop hl
    ldh [$3f], a
    xor b
    and l
    ld c, h
    pop bc
    rst $18
    ccf
    rst $18
    pop de
    ccf
    and e
    ldh [$0a], a
    add b
    ld b, $81
    ldh [$2a], a
    ret nz

    ld a, [c]
    db $fd
    ld e, h
    inc a
    pop hl
    db $fc
    jp hl


    ld hl, sp-$02
    db $fc
    cp $e4

jr_078_4ca5:
    db $fd
    cp $e0
    ld [hl], h
    ld l, b
    ret nz

    add a
    ld h, e
    rrca
    add c
    ld h, [hl]
    inc b
    rst $38
    jr jr_078_4ca5

    and b

jr_078_4cb5:
    rst $38
    nop
    ei
    inc b
    rst $10
    jr z, jr_078_4c6b

    ld d, b
    rst $38
    adc [hl]
    ld l, b
    db $e4
    dec bc
    nop
    dec d
    cp h
    and d
    db $10
    and c
    sub $e8
    inc bc
    ld a, a
    db $fc
    rlca
    rst $38
    add h
    rst $38
    sbc b
    rst $38
    jr c, jr_078_4cb5

    ld a, [hl]
    ld b, c
    ld h, b
    inc bc
    db $fc
    rrca
    ldh a, [rIE]
    ldh [$6c], a
    ldh [$8c], a
    ld h, b
    pop hl
    and [hl]
    push bc
    rst $28
    rra
    cp $e1
    ld h, h
    add c
    db $fc
    db $e3
    ei
    ld sp, hl
    db $fc
    adc d
    ld [c], a
    ld a, $68
    ret nz

    ccf
    ldh [$1f], a
    ld [hl], b
    rst $38
    adc a
    cp h
    jp $e1de


    rst $20
    ld hl, sp-$07
    sbc h
    ld a, [hl+]
    and h
    or $45
    ldh [$1f], a
    rlca
    db $76
    jp nz, $c531

    ld a, a
    cp $30
    add b
    nop
    add b
    ld b, b
    add b
    and b
    ret nz

    ret nc

    rst $08
    ldh [$e4], a
    ld hl, sp-$08
    xor b
    and c
    db $d3
    ld c, b
    ccf
    ret nz

    ld a, e
    rst $28
    ldh a, [rNR10]
    ld l, c
    ld a, [$d405]
    dec hl
    ld hl, sp-$1d
    cp a
    push af
    ld a, [bc]
    ld [$5015], a
    xor a
    and [hl]
    ld b, c
    ld e, a
    ld hl, sp-$38
    ld h, b
    sbc a
    ld b, h
    ld d, b
    ldh [$f8], a
    ccf
    ld hl, sp+$0f
    ldh a, [$d1]
    rra
    ld c, [hl]
    pop hl
    or $af
    ld l, [hl]

Jump_078_4d4c:
    ld b, c
    ld bc, $48c0
    db $fc
    inc bc
    rla
    db $e3
    rra
    rra
    jr nc, @-$1c

    rst $18
    xor d
    and b
    ld [hl], $85
    ld b, b
    add l
    pop af
    db $fc
    jr nc, jr_078_4da3

    jr z, jr_078_4da6

    jr c, jr_078_4da8

    dec b
    ei
    dec bc
    rst $30
    ccf
    scf
    rst $08
    ld l, a
    sbc a
    rst $18
    ccf
    ld h, c
    jp nz, Jump_000_28fd

    ld a, [$47d6]
    db $fc
    adc h
    add b
    adc d
    push af
    ld h, l
    sbc d
    ret nz

    rst $18
    rst $38
    add b
    jp $c080


    ld e, e
    ld h, c
    add b
    ld b, b
    rst $30
    ret nz

    jr nz, @-$3e

    or [hl]
    pop bc
    rst $38
    ld a, a
    ld [hl], b
    rra
    ld c, a
    jr @+$09

    ld b, $01
    ld a, l
    ld b, c
    jp hl


    ld hl, $aba0
    ld b, a
    rst $38
    ccf

jr_078_4da3:
    jr nz, @+$01

    rrca

jr_078_4da6:
    ld sp, hl
    add hl, bc

jr_078_4da8:
    ld hl, sp+$08
    dec sp
    db $fc
    inc b
    cp $e1
    cp $02
    cp $cf
    and b
    ldh [rNR41], a
    rst $38
    ld a, a
    rra
    ccf
    rrca
    rra
    rlca
    rrca
    inc bc
    and a
    rlca
    nop
    inc bc
    ld c, [hl]
    ldh [$8d], a
    jr z, @+$21

    adc b
    and $f8
    rst $38
    db $fc
    ldh a, [$f9]
    pop bc
    di
    add e
    rst $08
    ldh [rIE], a
    rst $30
    add e
    rst $20
    rlca
    sbc a
    rra
    ccf
    ccf

jr_078_4ddd:
    db $fc
    ld a, $e6
    ret nc

    ld b, a
    db $fd
    cp $fa
    db $fd
    ld hl, sp-$01
    rst $38
    db $e3
    db $fc
    rst $10
    add sp, -$51
    ret nc

    ld e, a
    and b
    res 7, a
    ld b, b
    add h
    add c
    dec b
    ld l, c
    add d
    ld h, d
    daa
    jr nz, jr_078_4ddd

    rst $38
    sub b
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [rOBP1]
    ld sp, hl
    rst $20
    adc d
    ei
    ld b, h
    ld c, h
    ld hl, $200f
    rra
    rra
    ld a, d
    rst $28
    ld a, a
    push af
    rst $38
    xor d
    cp $62
    rra
    db $10
    rrca
    rst $38
    ld [$0407], sp
    ei
    ld_long a, $ff37
    sbc c
    sbc a
    rst $38
    inc c
    rst $38
    ld b, $ff
    ld e, h
    pop hl
    ld e, b
    pop hl
    db $fd
    ld a, a
    rlca
    db $fd
    add a
    ei
    rst $08
    ld a, e
    rst $38
    ld a, [hl+]
    db $e3
    rst $38
    jr c, jr_078_4e74

    rst $38
    rst $38
    db $fd
    rst $38
    ld_long $ffff, a
    ld d, b
    rst $38
    ld h, e
    sbc a
    ld a, c
    add a
    ld a, $41
    ccf
    rra
    jr nz, @+$11

    db $10
    rrca
    ret nc

    ldh a, [$81]
    ret c

    ld b, e
    ld a, [hl]
    and d
    ld hl, $1fe7
    ld a, [c]
    rrca
    ld hl, sp+$06
    and [hl]
    ret nz

    rst $38
    cp $f0
    db $fc
    ldh [$f1], a
    pop bc
    db $e3
    inc bc
    ccf
    rst $08
    rrca
    rra
    rra
    ld a, a
    rrca
    ld b, h
    pop hl
    xor e

jr_078_4e74:
    ld [$f4ff], sp
    ei
    ld [$d5f5], a
    ld [$d4ab], a
    rst $38
    ld e, l
    and d
    cp e
    ld b, h
    ld [hl], a
    adc b
    rst $38
    nop
    ld [hl], a
    scf
    rst $38
    adc d
    dec a
    and b
    ld [$10ff], sp
    cp h
    ld [$18fd], sp

jr_078_4e94:
    db $76
    ldh [rTAC], a
    rst $38
    ld b, $fe
    jr jr_078_4e94

    rst $38
    inc hl
    db $e3
    ld [$31f8], sp
    pop af
    ld b, [hl]
    rst $00
    rst $38
    adc b
    adc a
    jr nc, jr_078_4ee9

    ld a, b
    ld a, a
    ld hl, sp-$01
    jp hl


    db $f4
    pop af
    ld b, h
    cp [hl]
    inc hl
    di
    jr nc, @+$22

    push af
    ld a, [$7fef]
    ldh a, [$df]
    ldh [$bf], a
    ret nz

    and b
    rst $18
    and b
    ld c, b
    sbc [hl]
    ld h, e
    nop
    ld a, a
    add b
    rrca
    ldh a, [rNR41]
    ld b, c
    ld h, h
    add hl, bc
    db $10
    jp nc, $e098

    ld [$0048], sp
    ld a, [$18e1]
    ret


    add b
    db $10
    rst $38
    and l
    or b
    pop hl
    adc d
    inc c
    ld [c], a
    ld [c], a
    ld [hl-], a
    add hl, bc
    inc bc
    xor h
    and d

jr_078_4ee9:
    ld [bc], a
    rst $38
    cp $0c
    db $fc
    ld de, $62f1
    db $e3
    add h
    rst $38
    add a
    add hl, de
    rra
    call nz, $1cc7
    rra
    ld a, $cf
    ccf
    ld e, a
    ld a, a
    adc a
    sub b
    ld h, h
    ld l, h
    pop hl
    ld a, b
    rst $38
    rst $38
    ld a, h
    rst $38
    ld a, [hl-]
    rst $38
    sbc h
    rst $38
    sbc $ff
    db $fd
    rst $08
    xor b
    ld b, d
    ld [hl+], a
    rst $38
    ld de, $28ff
    rst $38
    push bc
    ld d, c
    db $fc
    ldh [rSVBK], a
    ld [de], a
    adc d
    and h
    add c
    ld e, d
    and d
    cp $82
    rst $38
    db $fc
    add h
    ld hl, sp-$40
    ld hl, sp-$18
    ldh a, [$e0]
    xor a
    ldh a, [rOBP0]
    add a
    add [hl]
    inc e
    jr nz, jr_078_4f3d

    jr z, jr_078_4f3a

jr_078_4f3a:
    dec b
    ld a, [c]
    ld a, [hl-]

jr_078_4f3d:
    nop
    rlca
    ccf
    nop
    jr nz, jr_078_4f85

    ld a, a
    ldh a, [$3f]
    ld hl, sp-$41
    rra
    db $fc
    rrca
    cp $07
    inc d
    db $e4
    ret nz

    inc b
    xor e
    rst $38
    ld a, [bc]
    ld c, [hl]
    ld b, b
    dec bc
    ld c, d
    ld b, b
    adc e
    ld c, h
    ld [c], a
    ld [hl], d
    rst $38
    rst $38

jr_078_4f5f:
    and h
    rst $38
    ld h, d
    rst $38
    db $e4
    rst $38
    ld l, d
    cp e
    rst $38
    call nz, $e04c
    jr @+$01

    inc d
    db $fd
    ld h, b
    dec [hl]
    rst $38
    rst $38
    ld a, [hl-]
    cp $7c
    db $fc
    ld [hl], b
    ldh a, [rDIV]
    db $fd
    db $fc
    adc $c1
    ld b, d
    jp $8f8d


    ld [de], a
    rra
    ld a, a

jr_078_4f85:
    ld h, l
    ld a, a
    add a
    rst $38
    ld [hl+], a
    ccf
    pop bc
    ld a, $e1
    ccf
    rst $38
    ld b, c
    rst $38
    add e
    rst $38
    ld b, l
    db $fc
    ldh [$fa], a
    pop hl
    rst $30
    and e
    rst $38
    pop de
    sub h
    ld h, b
    pop de
    rst $38
    add sp, -$01
    rst $10
    push af
    rst $38
    rst $28
    cp $e0
    rst $30
    cp $e2
    ld a, e
    rst $38
    push af
    ei
    db $fc
    ldh [$e8], a
    ld [$e080], a
    rst $38
    ret nc

    rst $38
    rst $38
    pop hl
    rst $38
    db $d3
    rst $38
    rst $20
    rst $38
    rst $18
    db $fc
    ccf
    rst $28
    rra
    rst $08
    ccf
    sbc a
    ld a, a
    ld [hl], $81
    xor $03
    cp $82
    xor c
    db $fc
    cp $fa
    db $fc
    ret nc

    ldh [$c0], a
    sbc a
    ldh [$a0], a
    ret nz

    ld b, b
    add b
    jr jr_078_4f5f

    cp $e2
    ld a, [hl+]
    rst $28
    nop
    ld d, a
    nop
    xor e
    ld c, [hl]
    add b
    ccf
    nop
    rra
    ld a, [c]
    ld [hl], $22
    db $fc
    and h
    ld [bc], a
    ld d, c
    ld b, e
    cp $01
    db $fc
    inc bc
    ld a, a
    rla
    rst $38
    xor e
    rst $38
    rst $10
    rst $38
    cp a
    db $fc
    ldh [$85], a
    rst $38
    db $fc
    ld [c], a
    ret z

    sub h
    ldh [$8e], a
    pop hl
    xor b
    add b
    ld a, [hl-]
    adc b
    ld b, $ff
    cp $08
    ld hl, sp+$30
    ldh a, [rSCX]
    jp $ff85


    add a
    pop hl
    pop hl
    add $c7
    ld [$140f], sp
    xor a
    rra
    ld a, h
    ld a, a
    ld a, [$804c]
    ld a, [$2046]
    ld c, $aa
    db $fc
    ld [c], a
    rla
    sbc d
    ld h, d
    cpl
    ld h, c
    ld b, b
    and d
    ld e, l
    ld b, b
    and b
    xor d
    ld l, $e0
    and b
    ld c, d
    ldh [$a8], a

jr_078_5041:
    ld [bc], a
    jr nz, jr_078_5041

    jp c, $ffe0

    xor e
    rst $38
    ld a, [hl]
    ld d, d
    db $e4
    cp c
    ld c, b
    and b
    cp l
    ld e, b
    nop
    cp [hl]
    adc $fc
    ld [c], a
    rst $38
    rst $38
    cp a
    sub e
    push hl
    cp $e2
    ld a, a
    ret nz

    db $ec
    or [hl]
    and e

jr_078_5062:
    jr jr_078_50c4

    rlca
    db $fd
    ld d, [hl]
    ld [c], a
    ld hl, sp-$04
    ld hl, sp+$0f
    db $fc
    db $f4
    ld hl, sp-$10
    cp $e6
    add hl, hl
    db $e4
    dec h
    add b
    ld hl, $9581
    ld bc, $2246
    dec bc
    inc e
    ldh [$2f], a
    jr jr_078_5062

    ld h, [hl]
    ld h, c
    ld hl, sp-$03
    rlca
    cp $e1
    ldh a, [rIF]
    ldh a, [rIF]
    or $0f
    db $fd
    rst $20
    add $40
    ld hl, $01de
    cp $03
    db $fc
    cp $97
    ld b, b
    ld hl, sp+$06
    ld sp, hl
    adc h
    di
    or b

jr_078_50a2:
    rst $08
    rst $38
    inc bc
    rst $38
    inc b
    db $fc
    jr jr_078_50a2

    ld hl, $dfe1
    jp nz, $e4c3

    rst $20
    ld hl, sp+$1e
    ld b, b
    dec bc
    rrca
    ld e, a
    scf
    ccf

jr_078_50b9:
    ld c, a
    ld a, a
    adc e
    ld b, b
    ld [c], a
    rla
    ld b, b
    ldh [$39], a
    db $ec
    inc l

jr_078_50c4:
    ldh [$fc], a
    db $e3
    ld hl, sp-$01
    call nc, Call_000_0044
    inc l
    pop hl
    xor d
    call nz, $5f41
    jp nz, $bf42

    ld e, h
    ld h, b
    xor b
    ld a, [bc]
    and b
    add sp, -$3e
    ld d, b
    ld h, b
    ld [$e200], a
    ld a, [hl]
    pop bc
    db $fc
    ld [$4143], a
    ret nz

    cp a
    dec a
    ldh [$fe], a
    pop hl
    rst $18
    ldh a, [$df]
    ldh a, [$a6]
    daa
    ld a, [hl-]
    ld b, e
    or $36
    ld [c], a
    ei
    ld a, [c]
    inc l
    ld [c], a
    add sp, -$10
    ret nc

    ldh [$f1], a
    inc bc
    sbc [hl]
    and c
    dec hl
    rst $20
    ld a, d
    ld b, d
    adc a
    ld [hl], b
    ld hl, $ff1e
    inc e
    inc bc
    rrca
    db $10
    rlca
    ld [$050a], sp
    ld e, l
    rst $08
    ld l, h
    jr nz, jr_078_50b9

    ld a, a
    inc a
    inc l
    and b
    jr nz, jr_078_5150

    nop
    ld b, [hl]
    inc sp
    ld h, b
    rst $18
    add b
    ld d, b
    and b
    push de
    ld hl, $4389
    ret nz

    add [hl]

jr_078_512e:
    ld [bc], a
    ld a, l
    ld [$60f6], sp
    and d
    rst $38
    ld [hl], l
    rst $38
    ld [c], a
    jr jr_078_517c

    xor b
    ld e, b
    pop hl
    and $a5
    ld d, h
    pop hl
    pop af
    db $fc
    ld [c], a
    xor d
    ld hl, sp-$20
    xor e
    jr nz, jr_078_512e

    ld [$6340], a
    ld h, d
    pop bc
    xor [hl]

jr_078_5150:
    daa
    xor [hl]
    and e
    cp a
    db $fc
    and $3c
    pop hl
    sbc e
    rst $28
    ld hl, sp-$02
    pop hl
    rst $30
    db $fc
    cp $e1
    and c
    daa
    cp $7f
    ld bc, $0ef0
    ret nz

    jr nc, @-$03

    rlca
    ld d, [hl]
    pop bc
    ccf
    db $fd
    inc bc
    ldh a, [rIF]
    nop
    ldh a, [$90]
    ld b, d
    db $eb
    ld b, h
    adc e
    ccf
    rst $38

jr_078_517c:
    xor h
    ld b, c
    rrca
    cp a
    ld b, h
    ld e, $41
    ld h, b
    and e
    and b
    di
    ret nz

    add b
    ld h, d
    xor b
    ld e, l
    ld b, d
    nop
    jr nc, jr_078_5190

jr_078_5190:
    inc h
    cp a
    jr jr_078_51a7

    inc c
    add hl, sp
    ld b, $7c
    ld h, h
    and b
    ld [$07bf], sp
    inc c
    inc bc
    inc e
    inc bc
    ld a, $5c
    and h
    ld a, a
    ei
    add b

jr_078_51a7:
    ld bc, $40c2
    inc bc
    rst $38
    ld a, [bc]
    rst $30
    ld a, [hl-]
    rst $38
    rst $00
    ld a, d
    add a
    ld [hl], d
    adc a
    ld h, [hl]
    sbc a
    add c
    db $eb
    rst $38
    add d
    ld a, $00
    add e
    sub b
    and b
    dec hl
    rst $38
    ld d, a
    xor $18
    ld h, b
    push af
    rst $38
    db $e3
    ret nc

    add b
    rst $28
    rst $38
    rst $18
    sbc h
    ld a, b
    ld c, b
    jr nc, @-$15

    rst $30
    rst $38
    xor a
    jr nc, @-$1a

    ldh a, [$e4]
    db $fc
    cpl
    ei
    rst $38
    ld a, [$fefe]
    db $e3
    db $fd
    cp h
    ld b, b
    push de
    ld b, b
    ld [$edff], a
    ldh a, [$c9]
    ld h, b
    cp a
    cp $e2
    rst $18
    rst $38
    rst $18
    ld l, [hl]
    add sp, $20
    rst $38
    inc bc
    rlca
    cp $e1
    ld bc, $fe03
    pop hl
    nop
    nop
    nop
    ld bc, $ff0f
    rst $38
    rst $38
    rst $38
    rst $38
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
    or $f5
    ld c, $0e
    ld a, c
    ld c, $e0
    db $fd
    rst $18
    ld a, [$080e]
    ld [$9a08], sp
    ei
    inc [hl]
    rst $18
    ldh [$de], a
    ld hl, sp+$0d
    pop hl
    pop hl
    ld [$740b], sp
    db $e3
    ldh [$f7], a
    pop hl
    dec bc
    sbc $e0
    ld [hl], l
    ld a, [c]
    ldh [$fd], a
    sbc a
    ldh [$0a], a
    ld a, [bc]
    ld a, [bc]
    ld [hl-], a
    ret nz

    ldh [$0b], a
    ldh [rIE], a
    db $f4
    jp nc, $0d6d

    ret nz

    db $e3
    call nc, $1dc2
    ld c, [hl]
    cp a
    jp nc, $0909

    add hl, bc
    cp d
    pop bc
    or [hl]
    jp nc, $e2e2

    add h
    rst $18
    ld [c], a
    pop hl
    ld hl, sp+$49
    sbc $e2
    ld h, c
    db $d3
    pop bc
    db $e3
    rst $18
    push af
    dec c
    ld h, l
    dec c
    ldh [$fa], a
    dec c
    rst $38
    ldh [$bf], a
    and $0d
    dec c
    ldh [$f2], a
    adc d
    sbc [hl]
    and $0c
    ldh [$fd], a
    inc c
    push de
    xor l
    and c
    pop hl
    ld a, a
    rst $20
    ld [$0807], sp
    ld c, $0f
    nop
    nop
    nop
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    rst $38
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
    or $f5
    dec a
    ld a, $fd
    ccf
    db $db
    ld a, [$0302]
    inc b
    dec b
    ld b, $07
    cp $b8
    rst $30
    ld [$0909], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    db $fd
    ld c, $96
    push af
    rrca
    db $10
    ld de, $1312
    inc d
    rst $30
    dec d
    ld d, $17
    ld [hl], l
    db $f4
    jr jr_078_52f2

    ld a, [de]
    dec de
    rst $38
    inc e
    dec e
    ld e, $1f
    jr nz, jr_078_5303

    ld bc, $fd01
    ld [hl+], a
    ld d, c
    ldh a, [rNR44]
    inc h
    dec h
    ld h, $27
    jr z, @+$01

    add hl, hl
    ld a, [hl+]
    dec hl

jr_078_52f2:
    inc l
    ld bc, $2e2d
    cpl
    db $fd
    jr nc, jr_078_5329

    xor $31
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $ff
    scf

jr_078_5303:
    jr c, jr_078_5306

    add hl, sp

jr_078_5306:
    ld bc, $3b3a
    dec sp
    db $fd
    inc a
    rrca
    rst $28
    ld b, b
    ld b, c
    ld b, d
    add hl, bc
    add hl, bc
    ld b, e
    rst $38
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    dec sp
    dec sp
    ld c, c
    cp $ef
    rst $08
    ld c, d
    dec sp
    ld c, e
    ld c, h
    add hl, bc
    ld c, l
    ld c, [hl]
    ld a, a
    ld c, a

jr_078_5329:
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    rst $08
    rst $08
    rst $38
    jr nc, jr_078_538a

    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    rst $18
    ld e, l
    ld e, [hl]
    ld bc, $605f
    add b
    rst $28
    ld bc, $ff61
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld bc, $01f7
    ld l, c
    ld l, d
    sub c
    ret nc

    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    rst $38
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    or $e1
    pop af
    ld [hl], a
    dec sp
    rst $38
    ldh [$5c], a
    ld a, b
    dec sp
    ld a, c
    ei
    ld a, d
    ld a, e
    ld d, e
    pop de
    ld a, h
    ld a, l
    dec sp
    ld a, [hl]
    ld a, a
    rst $38
    dec sp
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    cp $32
    ret nc

    add a
    adc b
    adc c
    adc d
    adc e
    dec sp
    adc h
    cp a
    adc l

jr_078_538a:
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    ld [de], a
    rst $08
    sub e
    rst $38
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    rst $18
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    ld a, [c]
    xor a
    and c
    and d
    rst $38
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    rst $18
    xor e
    ld bc, $09ac
    xor l
    pop de
    xor [hl]
    xor [hl]
    xor a
    rst $38
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp a
    cp b
    ld bc, $bab9
    cp e
    cp h
    or b
    xor h
    cp l
    rst $38
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    ld a, $98
    and c
    add $c7
    ret z

    ret


    ld bc, $0000
    nop

    db $e7, $53, $27, $54, $76, $5c, $1f, $5d, $00, $00, $00, $00, $ff, $7f, $ff, $4e
    db $ff, $7f, $00, $00, $a0, $02, $ff, $4e, $9a, $21, $00, $00, $1f, $00, $ff, $4e
    db $9a, $21, $ff, $4e, $0f, $00, $00, $00, $00, $00, $00, $00, $9a, $21, $ff, $4e
    db $ff, $7f, $00, $00, $9a, $21, $ff, $4e, $ff, $7f, $ff, $03, $fd, $01, $00, $00
    db $48, $69, $1f, $00, $0f, $00, $00, $00, $95, $00, $ff, $ec, $ff, $ff, $ea, $e7
    db $f1, $eb, $e3, $e8, $fe, $7f, $ff, $fd, $f2, $7f, $80, $bf, $40, $f2, $e5, $ff
    db $1c, $ff, $40, $bf, $aa, $55, $f5, $0a, $ff, $eb, $d7, $f5, $8b, $7a, $85, $fc
    db $03, $ff, $3e, $c1, $5d, $a2, $2e, $d1, $57, $a8, $ba, $b0, $e3, $7f, $fe, $e0
    db $3f, $ff, $1f, $fe, $e0, $5f, $ff, $a0, $2f, $d0, $97, $e8, $8f, $f0, $d7, $ff
    db $e8, $cb, $f4, $c5, $fa, $e2, $fd, $fe, $f7, $01, $ff, $00, $fe, $e9, $af, $50
    db $17, $e8, $ff, $8f, $70, $47, $b8, $a3, $5c, $c1, $3e, $ff, $a0, $5f, $d3, $2f
    db $9f, $7f, $4f, $bf, $fd, $8f, $fc, $e0, $86, $7f, $d9, $3e, $e2, $7d, $fb, $95
    db $ea, $84, $e3, $c0, $ff, $11, $ee, $aa, $a7, $55, $fd, $02, $c2, $e0, $4f, $e0
    db $03, $bd, $e0, $53, $7f, $af, $ac, $5f, $d1, $3e, $a6, $79, $40, $e3, $bd, $e0
    db $ab, $e2, $05, $fa, $aa, $55, $30, $e5, $1f, $b8, $99, $e0, $5e, $e1, $20, $e9
    db $3f, $ff, $0f, $32, $e6, $f8, $ff, $ff, $f3, $fc, $e7, $f8, $cf, $f0, $fb, $7f
    db $fc, $ef, $f0, $bf, $c0, $7f, $80, $6a, $e3, $be, $62, $e0, $3f, $bf, $7f, $5f
    db $bf, $7a, $e3, $0f, $bf, $ff, $8f, $7f, $e1, $fe, $e0, $a2, $e0, $e0, $ff, $ff
    db $f8, $e7, $fc, $e3, $fe, $c1, $fb, $ff, $c4, $7f, $80, $af, $50, $57, $a8, $2b
    db $ff, $d4, $05, $fa, $02, $fd, $00, $ff, $01, $ff, $ff, $fd, $0d, $f2, $13, $e5
    db $26, $c9, $ff, $4e, $d6, $59, $af, $b0, $d7, $e8, $7f, $ff, $40, $2e, $d1, $d7
    db $28, $eb, $14, $fd, $fd, $02, $1a, $e7, $fe, $01, $fe, $01, $fc, $03, $ff, $fd
    db $02, $f8, $07, $f9, $06, $f3, $0c, $ff, $5d, $e2, $3a, $c5, $77, $88, $ff, $00
    db $b6, $8e, $e5, $5f, $a0, $f0, $cb, $d5, $2a, $de, $c1, $fe, $f5, $01, $a6, $c0
    db $14, $d6, $c1, $03, $ff, $a1, $5f, $ff, $d0, $2f, $a8, $57, $50, $af, $ea, $15
    db $ee, $00, $e5, $7f, $ff, $3e, $80, $c0, $1c, $ff, $0c, $ff, $ff, $86, $7f, $9f
    db $e0, $2f, $d0, $5d, $df, $a2, $bb, $44, $77, $88, $68, $e1, $af, $50, $fe, $3c
    db $e1, $fd, $02, $fa, $05, $f5, $0a, $ea, $ff, $15, $d5, $2a, $af, $50, $07, $ff
    db $83, $ff, $7f, $04, $fb, $2a, $d5, $55, $aa, $af, $81, $50, $1a, $e2, $62, $c2
    db $f7, $c0, $bb, $c1, $76, $c1, $df, $ca, $bf, $ed, $5f, $12, $c6, $fe, $fc, $0c
    db $c0, $ff, $ff, $fd, $f7, $82, $fe, $01, $08, $c1, $57, $a8, $2a, $d5, $ff, $01
    db $fe, $c0, $ff, $81, $7f, $40, $bf, $ff, $21, $df, $81, $7f, $c3, $3e, $e3, $1e
    db $ff, $53, $ae, $27, $dc, $80, $7f, $80, $7f, $ff, $00, $ff, $04, $fb, $0e, $f5
    db $1f, $ee, $ef, $3f, $df, $3f, $df, $23, $c7, $10, $ef, $c8, $7f, $37, $ec, $d3
    db $fb, $04, $f7, $08, $fc, $e1, $f3, $ef, $10, $08, $cb, $fa, $ab, $fa, $05, $d4
    db $2b, $fc, $44, $c0, $e6, $a0, $45, $bd, $84, $7c, $4c, $bc, $ff, $a4, $5c, $02
    db $fe, $82, $7e, $52, $ae, $ff, $e9, $17, $9f, $e0, $4f, $70, $2f, $30, $ff, $1f
    db $10, $17, $18, $0f, $08, $0b, $0c, $63, $0b, $0c, $d0, $cb, $dc, $c3, $44, $c5
    db $f5, $0a, $bc, $e1, $fe, $04, $e1, $e8, $17, $50, $af, $a1, $5f, $43, $ff, $bf
    db $07, $ff, $5f, $bf, $bf, $7f, $3f, $74, $0e, $e1, $17, $a4, $fc, $1e, $ac, $07
    db $fc, $fb, $fe, $e0, $ff, $f9, $fe, $fa, $fd, $f8, $ff, $fb, $fd, $ef, $f9, $ff
    db $7f, $bf, $fe, $e1, $fc, $7f, $ff, $bd, $78, $cb, $e3, $fe, $e5, $ff, $f6, $30
    db $a1, $bf, $e7, $7f, $ff, $9f, $d4, $81, $43, $a1, $87, $78, $ff, $fd, $87, $c8
    db $85, $04, $fb, $78, $87, $f0, $4f, $cf, $c7, $b8, $ff, $07, $b6, $83, $23, $a3
    db $fe, $01, $e3, $f8, $f7, $6b, $a0, $f0, $e6, $0d, $a1, $c0, $3f, $f0, $c7, $cf
    db $fc, $f3, $98, $a5, $34, $a2, $10, $c1, $2b, $e9, $fc, $54, $e0, $bc, $c1, $a8
    db $57, $d0, $2f, $80, $7f, $ff, $05, $06, $06, $05, $95, $96, $ae, $ad, $ff, $d4
    db $d7, $68, $ef, $78, $ff, $38, $ff, $3f, $d5, $2a, $aa, $55, $54, $ab, $9c, $c1
    db $c9, $81, $73, $15, $ea, $d4, $e3, $bd, $85, $54, $ab, $0f, $2c, $a0, $f1, $0f
    db $96, $82, $fc, $e3, $20, $89, $03, $00, $07, $07, $3e, $10, $8b, $80, $00, $f9
    db $ff, $fd, $fe, $e0, $19, $90, $7f, $f8, $fc, $e3, $f0, $cf, $e3, $dc, $f0, $66
    db $7f, $7f, $ff, $1f, $3f, $cf, $df, $2f, $04, $83, $be, $cc, $cc, $ff, $f3, $8f
    db $ff, $f1, $e8, $64, $fd, $84, $fe, $e3, $b9, $c2, $fb, $0a, $e0, $34, $c0, $b4
    db $86, $16, $80, $40, $ff, $bf, $88, $77, $d0, $2f, $a0, $5f, $40, $ff, $bf, $a0
    db $5f, $c0, $3f, $80, $7f, $30, $2f, $ff, $20, $ff, $30, $28, $e0, $3c, $3c, $a0
    db $68, $c1, $ff, $ab, $54, $55, $aa, $0a, $f5, $05, $fa, $82, $eb, $61, $80, $38
    db $80, $1a, $a1, $e2, $81, $e8, $e1, $d7, $61, $af, $f7, $5f, $5f, $af, $1d, $e2
    db $0f, $7f, $8f, $af, $ff, $5f, $0f, $ff, $07, $0f, $07, $0f, $03, $ff, $0f, $0b
    db $07, $03, $07, $01, $07, $05, $ff, $03, $00, $03, $c0, $80, $c0, $80, $e0, $dd
    db $c0, $fe, $e1, $d0, $e0, $f0, $fe, $e0, $03, $01, $f2, $fe, $e4, $00, $df, $e0
    db $fe, $e0, $e7, $80, $cf, $80, $ff, $cd, $82, $cb, $84, $d7, $08, $d3, $0c, $7f
    db $d3, $8c, $d3, $cc, $ff, $07, $1f, $fe, $e2, $ff, $ff, $07, $ef, $17, $df, $27
    db $ef, $17, $17, $ff, $ff, $df, $fd, $40, $bf, $4c, $64, $e6, $80, $62, $60, $df
    db $bf, $00, $df, $00, $ef, $fe, $e0, $ff, $00, $ff, $f7, $00, $f8, $f7, $f0, $ef
    db $f0, $ef, $8f, $f8, $f7, $f8, $f7, $1e, $e3, $a4, $83, $9c, $81, $e8, $ff, $17
    db $d4, $2b, $f8, $07, $00, $ff, $a0, $09, $5f, $46, $e0, $fc, $80, $01, $fe, $e2
    db $bc, $e2, $ab, $48, $13, $63, $a1, $e0, $bc, $c6, $50, $c7, $d0, $a4, $6f, $48
    db $01, $4c, $e0, $02, $fe, $46, $e0, $0f, $03, $1f, $0f, $3f, $07, $ff, $fd, $3b
    db $55, $c0, $fe, $e8, $f0, $78, $f0, $f8, $ff, $30, $f8, $d0, $f8, $e0, $f8, $f0
    db $fc, $f7, $f8, $fc, $f8, $40, $49, $3f, $00, $ff, $3f, $ff, $03, $03, $0c, $03
    db $0d, $07, $08, $07, $fd, $09, $fc, $e2, $0c, $07, $d1, $ce, $f0, $ef, $3f, $7c
    db $73, $ff, $fc, $7f, $7f, $07, $a0, $fc, $e0, $bf, $9f, $6f, $1f, $ef, $3f, $df
    db $73, $40, $ff, $7f, $ff, $e3, $ef, $cd, $ff, $df, $fe, $36, $40, $5c, $fc, $e3
    db $27, $c3, $ef, $ff, $d7, $fc, $e0, $c7, $bd, $45, $f3, $ff, $f7, $0c, $e0, $fc
    db $e1, $b7, $80, $f7, $f0, $f6, $d9, $41, $fc, $fb, $1e, $c5, $fa, $f9, $f5, $f4
    db $ff, $f8, $f8, $07, $f8, $0b, $f3, $1f, $ef, $ff, $3e, $de, $7b, $b8, $b4, $30
    db $68, $60, $f7, $50, $40, $e3, $95, $41, $07, $3f, $03, $ff, $ff, $e3, $1f, $11
    db $2f, $09, $1f, $09, $0f, $d7, $06, $1f, $0f, $42, $e0, $1f, $fe, $e0, $17, $3f
    db $df, $19, $3d, $1a, $ff, $7e, $a3, $c0, $df, $fe, $ff, $ef, $fe, $ef, $da, $ef
    db $d4, $ef, $d9, $fd, $ee, $b7, $c0, $7b, $d7, $7b, $a7, $7b, $cb, $cf, $77, $97
    db $6f, $e7, $79, $c0, $85, $a2, $ff, $e3, $ff, $fc, $cc, $f0, $90, $e0, $a0, $c0
    db $20, $af, $c0, $c0, $80, $40, $fe, $e0, $80, $59, $26, $04, $df, $03, $04, $03
    db $06, $03, $ea, $c0, $01, $01, $a6, $e0, $c0, $00, $00, $76, $80, $a4, $22, $5f
    db $a0, $20, $9f, $f3, $7f, $cf, $28, $e1, $3d, $21, $df, $ff, $e0, $fc, $39, $f3
    db $5a, $c1, $30, $26, $0f, $1f, $ef, $06, $e2, $70, $cc, $e7, $ff, $fb, $af, $ad
    db $a0, $0a, $27, $f4, $f4, $e8, $ff, $e8, $f0, $f0, $e8, $e8, $d0, $d0, $a0, $ff
    db $a0, $40, $40, $a1, $a1, $de, $c0, $a1, $ef, $80, $21, $00, $21, $74, $c0, $02
    db $00, $cd, $ff, $c1, $ff, $ff, $2f, $f6, $57, $fe, $2e, $ff, $fc, $3a, $fc, $7c
    db $f8, $f4, $f8, $e8, $ff, $f0, $d0, $e0, $1f, $0b, $1e, $0b, $13, $af, $0c, $0c
    db $07, $0b, $82, $a0, $05, $68, $e0, $5e, $ff, $e1, $bc, $c3, $c4, $3b, $02, $fd
    db $0f, $d4, $a7, $c0, $64, $e1, $0f, $64, $40, $7e, $9a, $60, $fd, $fe, $3f, $f9
    db $fe, $c2, $fc, $fc, $e0, $32, $e3, $30, $e7, $be, $80, $0b, $03, $00, $2f, $1f
    db $17, $32, $a0, $05, $7b, $03, $03, $32, $c0, $c1, $3e, $03, $fc, $96, $a0, $18
    db $5c, $65, $7e, $80, $a6, $c0, $df, $7f, $0f, $e1, $af, $ad, $bc, $02, $e7, $fd
    db $00, $ea, $4c, $21, $f8, $e0, $fa, $00, $d4, $ff, $00, $a9, $01, $46, $07, $3f
    db $3f, $44, $ff, $04, $8a, $0e, $11, $1f, $23, $3f, $47, $fb, $7f, $9f, $0a, $64
    db $7c, $ff, $81, $7e, $7e, $76, $87, $e6, $20, $c0, $a2, $c9, $00, $00, $14, $2e
    db $40, $ff, $71, $0f, $23, $1f, $25, $1f, $13, $0f, $ff, $15, $0f, $13, $0f, $f2
    db $fc, $fa, $fc, $78, $05, $42, $dd, $a4, $4e, $e9, $83, $00, $8c, $03, $a6, $65
    db $ef, $1c, $03, $e0, $1f, $37, $01, $0c, $03, $30, $f3, $0f, $c0, $77, $a0, $2b
    db $05, $06, $05, $06, $05, $ff, $0f, $09, $1f, $11, $1e, $12, $3e, $22, $ff, $3e
    db $22, $7c, $44, $8f, $71, $83, $7c, $ff, $03, $fd, $03, $fc, $04, $fb, $08, $f7
    db $67, $10, $ef, $20, $93, $81, $f1, $80, $e0, $1f, $c8, $21, $f2, $c4, $21, $ff
    db $ad, $a0, $2d, $e7, $01, $fe, $d3, $df, $ff, $10, $1f, $10, $1f, $21, $3e, $42
    db $7d, $bf, $45, $7a, $8b, $f5, $17, $e9, $86, $61, $bf, $7f, $7f, $47, $c7, $83
    db $83, $81, $81, $bb, $d0, $bb, $80, $15, $f4, $60, $09, $07, $0a, $00, $a2, $05
    db $fe, $d4, $a0, $90, $0f, $d6, $89, $d7, $88, $d7, $77, $88, $ef, $c1, $2b, $a0
    db $ef, $ff, $ef, $08, $65, $1f, $c0, $00, $c0, $80, $a0, $d8, $60, $96, $84, $ff
    db $e2, $ff, $03, $02, $03, $02, $7c, $44, $fc, $84, $3f, $fd, $85, $fe, $03, $fc
    db $03, $50, $64, $83, $a0, $be, $fe, $e5, $c0, $40, $c1, $41, $40, $ff, $e2, $20
    db $fe, $ff, $e0, $31, $31, $7e, $4f, $ff, $80, $02, $ff, $03, $05, $06, $0a, $0d
    db $35, $3a, $cf, $ff, $f0, $5f, $a0, $bf, $40, $ff, $00, $2f, $df, $d1, $5e, $a2
    db $fe, $02, $fe, $e1, $fc, $04, $fc, $fe, $e1, $1b, $2e, $c0, $00, $e0, $00, $f0
    db $00, $47, $f8, $00, $fc, $57, $c0, $43, $c0, $5c, $e1, $06, $1a, $80, $20, $fe
    db $e1, $2e, $a1, $66, $21, $2c, $a7, $91, $40, $ef, $94, $45, $7c, $00, $ff, $ff
    db $ea, $ff, $d0, $e0, $d0, $e0, $e8, $fd, $f0, $fe, $e1, $c4, $f8, $04, $f8, $1c
    db $e0, $9b, $07, $04, $fe, $e1, $0f, $08, $fe, $e1, $d7, $c0, $10, $f3, $c7, $46
    db $db, $20, $ec, $a8, $fc, $04, $f8, $08, $9e, $fe, $e5, $f9, $09, $f9, $09, $d1
    db $a5, $58, $03, $00, $ff, $ff, $20, $c0, $18, $e0, $0c, $f0, $06, $e3, $f8, $01
    db $72, $e2, $ae, $20, $44, $60, $c0, $3f, $70, $fb, $0f, $1f, $65, $a4, $50, $ff
    db $03, $fc, $0d, $eb, $f0, $71, $7e, $86, $fc, $e6, $c0, $1c, $e3, $0c, $ff, $f3
    db $84, $7b, $84, $7b, $44, $3b, $48, $df, $37, $1f, $10, $3f, $20, $fe, $e3, $7f
    db $40, $fe, $fe, $e1, $f9, $09, $fa, $0a, $f6, $0e, $f6, $ff, $0e, $fa, $06, $f1
    db $0f, $e9, $17, $d0, $f1, $2f, $23, $0b, $e8, $40, $26, $65, $00, $1b, $04, $63
    db $ff, $1e, $8f, $7f, $10, $e0, $08, $f0, $68, $ff, $90, $e8, $10, $d0, $20, $d0
    db $20, $a0, $bf, $40, $c0, $00, $23, $1c, $1c, $eb, $8a, $ff, $81, $c0, $f9, $20
    db $fe, $e5, $b3, $ce, $8e, $c1, $a6, $23, $be, $01, $fa, $37, $05, $f4, $0b, $a6
    db $21, $80, $7f, $fc, $e1, $18, $e4, $ff, $80, $40, $c0, $40, $c0, $60, $e0, $70
    db $ff, $f0, $30, $f0, $38, $f8, $3c, $fc, $02, $bf, $01, $04, $03, $08, $07, $18
    db $fe, $e0, $3c, $1f, $03, $7e, $01, $79, $00, $8c, $21, $8e, $c9, $12, $c1, $ff
    db $d0, $c0, $d0, $c0, $e8, $e0, $e0, $e0, $4f, $f0, $f0, $f4, $f0, $83, $c6, $d7
    db $43, $fc, $50, $07, $f3, $ea, $15, $38, $21, $20, $21, $d5, $2a, $ab, $54, $fe
    db $f8, $40, $f4, $17, $e8, $2f, $d0, $fa, $05, $9b, $f7, $08, $70, $e7, $fd, $02
    db $70, $e9, $ea, $21, $3c, $ff, $fc, $1e, $fe, $3e, $de, $1f, $ff, $3f, $ef, $df
    db $1f, $ef, $2f, $fc, $e0, $e1, $1e, $82, $df, $7c, $0c, $f0, $30, $c0, $77, $a4
    db $00, $2f, $ff, $ff, $97, $7f, $4f, $3f, $47, $3f, $2b, $fe, $7e, $82, $11, $0f
    db $fe, $f8, $fe, $f8, $fd, $8f, $fc, $fd, $fc, $fe, $ff, $e0, $e0, $29, $ee, $41
    db $40, $00, $fe, $e0, $00, $00

    nop

    db $09, $08, $ff, $ff, $e2, $e1, $0f, $e3, $fa, $ff, $e1, $f4, $e6, $df, $f5, $60
    db $db, $e2, $d7, $e7, $e0, $f2, $da, $e4, $a0, $ef, $0a, $0a, $e0, $f8, $32, $7f
    db $e0, $0a, $ff, $e2, $c1, $f2, $0c, $0c, $41, $e3, $e0, $f9, $bf, $08, $09, $09
    db $0c, $0c, $0b, $9c, $e1, $6f, $f2, $3f, $ed, $0c, $ff, $e1, $e0, $e1, $08, $0b
    db $0a, $0a, $01, $0b, $d6, $cf, $e0, $e3, $a2, $e0, $9f, $e1, $b5, $e1, $e0, $f0
    db $82, $e2, $a7, $0b, $0b, $0b, $95, $e2, $93, $cc, $6c, $80, $e2, $0e, $38, $fc
    db $e1, $fb, $e1, $9f, $f1, $08, $0d, $0e, $ff, $e2, $59, $d3, $64, $5f, $e0, $e0
    db $e7, $48, $9f, $f3, $c0, $e4, $28, $0d, $16, $d4, $26, $a0, $e3, $0e, $0d, $5f
    db $f1, $e1, $e4, $2e, $7f, $e1, $34, $e3, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $f0, $ef, $00, $00

    nop

    db $e9, $00, $ff, $ff, $e2, $e1, $01, $dd, $f9, $02, $03, $04, $eb, $05, $06, $f4
    db $e5, $02, $b3, $f0, $07, $08, $09, $ff, $0a, $0b, $0c, $0d, $0e, $0f, $00, $10
    db $fb, $11, $12, $93, $f0, $13, $14, $15, $16, $17, $ff, $18, $19, $1a, $1b, $1c
    db $1d, $1e, $1f, $fb, $20, $21, $71, $ed, $22, $23, $24, $25, $26, $ff, $27, $28
    db $28, $28, $29, $2a, $2b, $2c, $f7, $2d, $2e, $2f, $51, $ee, $30, $31, $32, $33
    db $ff, $34, $35, $36, $37, $38, $39, $3a, $3b, $fb, $3c, $3d, $32, $ec, $3e, $3f
    db $00, $00, $40, $ff, $41, $42, $02, $43, $44, $45, $46, $47, $ef, $48, $49, $4a
    db $4b, $12, $ec, $4c, $4d, $00, $ff, $00, $4e, $4f, $50, $02, $51, $52, $53, $bf
    db $54, $55, $56, $0f, $57, $58, $f2, $cb, $59, $ff, $5a, $5b, $5c, $3f, $5d, $5e
    db $5f, $60, $df, $61, $62, $63, $64, $65, $d6, $cf, $66, $67, $ff, $68, $69, $6a
    db $6b, $6c, $6d, $6e, $6f, $ef, $70, $71, $72, $73, $b6, $cf, $74, $75, $76, $ff
    db $77, $00, $78, $79, $7a, $7b, $7c, $7d, $f7, $7e, $7f, $80, $96, $cf, $3f, $81
    db $82, $83, $ff, $84, $85, $86, $87, $88, $89, $8a, $8b, $fd, $8c, $77, $d1, $8d
    db $02, $8e, $8f, $90, $91, $bf, $92, $93, $94, $95, $96, $97, $df, $f1, $98, $ff
    db $99, $9a, $9b, $9c, $28, $9d, $28, $28, $ef, $9e, $9f, $96, $a0, $9f, $f1, $a1
    db $a2, $a3, $fd, $a4, $c3, $c0, $28, $a5, $a6, $a6, $a7, $a8, $fe, $15, $d2, $a9
    db $aa, $28, $28, $ab, $ac, $ad, $ef, $ae, $af, $b0, $b1, $f5, $b2, $b2, $28, $b3
    db $ff, $b4, $08, $b5, $b6, $b7, $b8, $b9, $ba, $01, $bb, $d4, $bf, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f2, $00, $00

    nop

    db $62, $5e, $a2, $5e, $54, $65, $d1, $65, $e7, $7e, $10, $56, $be, $02, $00, $00
    db $00, $00, $b8, $18, $4a, $10, $e7, $7e, $00, $00, $1f, $43, $4a, $10, $3a, $2e
    db $00, $00, $1f, $43, $ff, $7f, $a0, $01, $00, $00, $1f, $43, $3a, $2e, $e7, $7e
    db $00, $00, $10, $56, $be, $02, $3a, $2e, $00, $00, $a5, $38, $4a, $10, $3a, $2e
    db $00, $00, $10, $56, $ff, $7f, $e7, $7e, $bd, $ff, $ff, $f8, $e7, $e7, $e9, $e1
    db $e0, $e7, $f7, $ff, $f7, $eb, $e3, $db, $c3, $c6, $d8, $cb, $ff, $d4, $85, $ba
    db $83, $bc, $85, $ba, $02, $ff, $7d, $01, $7e, $00, $3f, $7f, $7f, $9f, $ff, $1f
    db $e6, $06, $f0, $09, $7c, $83, $fe, $ff, $01, $7e, $81, $bf, $40, $bb, $83, $3d
    db $6f, $41, $7d, $81, $bd, $fc, $e4, $79, $85, $a0, $e7, $c7, $f8, $f8, $fb, $fe
    db $e0, $90, $e7, $c6, $e1, $e7, $07, $7e, $e6, $e3, $f9, $fa, $fc, $fd, $fe, $fe
    db $74, $e1, $fd, $fe, $ff, $e0, $00, $00, $7f, $80, $2f, $d0, $ff, $55, $aa, $02
    db $7d, $81, $be, $01, $5e, $ff, $00, $bf, $01, $5e, $c0, $3f, $e0, $1f, $ff, $50
    db $af, $aa, $55, $40, $bf, $7f, $80, $ff, $bf, $40, $7f, $80, $af, $50, $1f, $e0
    db $ff, $2e, $d1, $1c, $e3, $0e, $f1, $7d, $81, $ff, $f9, $05, $75, $89, $f9, $05
    db $71, $8d, $bf, $39, $c5, $73, $8b, $2b, $d3, $30, $e5, $fc, $ff, $fc, $80, $83
    db $bf, $80, $8b, $b4, $f9, $ff, $fa, $f2, $f5, $f0, $f7, $f0, $f7, $00, $ff, $07
    db $fe, $01, $ff, $00, $ff, $00, $7b, $ff, $83, $bd, $41, $56, $a8, $2a, $d5, $15
    db $7f, $ea, $02, $fd, $c0, $3e, $f9, $04, $8e, $e1, $ff, $fc, $fd, $60, $63, $03
    db $14, $67, $08, $ff, $cf, $10, $9e, $41, $00, $1f, $00, $ef, $ff, $30, $c7, $f8
    db $03, $fc, $01, $e8, $16, $bf, $d4, $2b, $00, $ff, $2a, $d5, $cb, $e0, $ff, $ff
    db $00, $ef, $00, $f7, $00, $fb, $00, $7d, $ff, $00, $9e, $14, $eb, $08, $f7, $04
    db $fb, $ff, $08, $f7, $00, $fe, $00, $fd, $00, $7e, $ff, $00, $bd, $53, $ab, $23
    db $db, $10, $e8, $ff, $26, $d1, $03, $f4, $00, $ef, $08, $e7, $fb, $04, $db, $b0
    db $c3, $3f, $3f, $cf, $0f, $a7, $ff, $57, $53, $ab, $09, $f5, $c5, $da, $c0, $7f
    db $df, $e0, $ef, $f0, $f7, $f8, $fb, $1e, $e3, $ef, $55, $aa, $aa, $55, $26, $e0
    db $fd, $05, $fa, $fe, $a8, $e2, $5f, $f3, $08, $e6, $11, $4d, $a2, $ff, $06, $d9
    db $12, $ad, $18, $a6, $0c, $72, $ff, $20, $5e, $98, $27, $31, $8e, $27, $58, $ff
    db $0e, $71, $1d, $62, $3a, $c5, $54, $ab, $fb, $20, $df, $0a, $e1, $d0, $2f, $a8
    db $57, $40, $ff, $be, $00, $ff, $02, $fd, $a8, $57, $00, $ff, $e7, $00, $d1, $00
    db $e8, $00, $50, $00, $df, $aa, $00, $f5, $00, $eb, $6a, $e0, $59, $00, $5f, $a0
    db $00, $02, $00, $55, $5e, $e0, $77, $5a, $e0, $ff, $ff, $00, $0f, $00, $5d, $00
    db $bc, $01, $b9, $fd, $fe, $e1, $5c, $e0, $fe, $00, $fc, $56, $e0, $de, $0f, $20
    db $0f, $d0, $07, $2c, $e0, $4b, $e0, $84, $c5, $fe, $e3, $fc, $02, $c3, $fe, $c1
    db $f8, $fb, $f0, $f7, $e0, $ef, $bf, $c0, $c0, $80, $ab, $00, $74, $ca, $e2, $ea
    db $fe, $ac, $e0, $a9, $00, $fd, $10, $6e, $28, $d5, $ff, $10, $ed, $08, $f5, $40
    db $bd, $20, $dd, $ff, $50, $ad, $00, $fd, $45, $ba, $9a, $65, $ff, $35, $ca, $60
    db $9f, $50, $af, $80, $7d, $3f, $02, $f5, $05, $ea, $40, $bf, $e0, $c2, $fc, $e2
    db $8b, $80, $7f, $d6, $c2, $df, $ee, $e7, $f6, $f0, $6c, $e1, $fe, $ff, $01, $fc
    db $03, $fa, $07, $f6, $0f, $ec, $ff, $0f, $ea, $fe, $00, $c6, $30, $9f, $40, $e2
    db $bd, $e5, $e3, $60, $e2, $62, $e5, $5a, $e1, $00, $01, $fc, $cb, $fd, $fc, $ff
    db $e1, $fd, $fe, $e1, $e4, $a0, $f1, $50, $f7, $ad, $28, $d5, $84, $c0, $7d, $00
    db $e9, $00, $7f, $f4, $00, $fe, $50, $af, $a0, $5f, $5e, $c4, $63, $5f, $00, $74
    db $e8, $9c, $e0, $fc, $c0, $03, $fb, $42, $c2, $ff, $87, $78, $43, $fc, $b1, $fe
    db $f8, $ce, $ff, $cc, $b7, $b6, $1f, $dc, $1f, $da, $3f, $ff, $bd, $3f, $ba, $7f
    db $7d, $7f, $7a, $7e, $ff, $7c, $7f, $7a, $c1, $08, $c0, $10, $80, $ff, $34, $89
    db $2c, $89, $28, $89, $28, $09, $c0, $fe, $e0, $84, $e9, $da, $c1, $70, $a1, $dc
    db $89, $08, $c0, $7a, $00, $fd, $3d, $5f, $a0, $ab, $80, $b5, $c0, $de, $e0, $fa
    db $8e, $c1, $ff, $ee, $e0, $55, $00, $2f, $00, $17, $ef, $00, $8f, $00, $d7, $04
    db $ec, $df, $03, $fb, $fc, $fe, $e7, $6a, $c1, $bb, $bb, $7b, $7b, $7d, $7d, $ff
    db $f1, $f1, $6d, $6d, $ed, $ed, $fd, $fd, $bf, $fb, $fb, $ff, $f4, $ff, $ea, $fc
    db $e0, $e8, $fb, $ff, $d0, $fc, $e3, $8d, $2c, $85, $34, $c1, $f3, $18, $f3, $ab
    db $c6, $56, $c1, $1f, $1f, $6f, $0f, $ff, $2f, $cf, $8f, $6f, $9f, $5f, $df, $1f
    db $e7, $f0, $f5, $f8, $d4, $86, $70, $e2, $ca, $00, $a5, $ff, $00, $f2, $00, $a8
    db $00, $14, $c0, $ce, $4f, $e0, $e5, $f8, $f8, $fc, $c0, $f8, $c1, $7f, $f4, $c0
    db $7f, $5e, $00, $2d, $00, $16, $01, $f9, $fe, $a0, $fd, $fa, $54, $a0, $f2, $00
    db $d8, $03, $eb, $01, $fd, $c5, $84, $85, $1e, $9e, $61, $61, $f3, $f3, $ba, $80
    db $e0, $f0, $84, $e0, $f4, $ff, $f8, $78, $e0, $fa, $8f, $ff, $fd, $ff, $fe, $33
    db $c3, $c5, $a1, $53, $c3, $df, $7d, $1f, $fe, $e1, $9f, $5f, $bf, $3f, $3f, $14
    db $80, $fe, $a8, $80, $fe, $f8, $fc, $f3, $fb, $f7, $f7, $6e, $56, $83, $fc, $fc
    db $00, $ff, $e0, $8f, $20, $8f, $e1, $ff, $f0, $00, $80, $0f, $00, $7f, $38, $38
    db $87, $7f, $7f, $80, $cd, $82, $e6, $e0, $8f, $80, $a0, $63, $1f, $ff, $1f, $e3
    db $03, $3c, $00, $01, $c0, $03, $ee, $00, $88, $08, $08, $f3, $bd, $80, $f8, $06
    db $51, $7f, $ad, $03, $fb, $07, $e7, $1f, $1f, $76, $71, $ff, $fe, $fe, $02, $03
    db $04, $07, $08, $0f, $ff, $18, $1f, $30, $3f, $70, $5f, $f0, $9f, $6f, $e0, $3f
    db $07, $f0, $fe, $e1, $0f, $e0, $fe, $e1, $ef, $1f, $c0, $1f, $c0, $79, $80, $02
    db $fe, $01, $cf, $f5, $0a, $fa, $05, $fc, $e3, $a8, $61, $3f, $bf, $7b, $3f, $bf
    db $49, $e1, $8f, $6f, $4f, $af, $b4, $e9, $e7, $f8, $f9, $f0, $48, $e0, $0e, $65
    db $01, $01, $00, $67, $fe, $04, $03, $00, $69, $c6, $e1, $fe, $fe, $97, $a1, $ff
    db $fb, $f8, $f7, $f0, $f3, $f4, $ef, $e0, $f3, $ef, $e0, $9d, $e0, $fe, $e6, $80
    db $3f, $80, $3f, $80, $34, $ad, $e1, $e8, $d5, $e2, $74, $e1, $85, $a0, $6c, $e0
    db $fc, $e3, $87, $ff, $77, $47, $b7, $8b, $73, $43, $bb, $83, $ff, $7b, $45, $b9
    db $81, $7d, $41, $bd, $e0, $ff, $ec, $e3, $e8, $c2, $d9, $c5, $d2, $c2, $ff, $d5
    db $cd, $d2, $e7, $e8, $e7, $e8, $ff, $fd, $00, $ee, $63, $bf, $40, $75, $8a, $ff
    db $00, $ff, $bb, $00, $9f, $5f, $ef, $0f, $af, $4f, $ff, $77, $87, $b7, $47, $57
    db $a7, $f7, $07, $ff, $57, $a7, $df, $c0, $cf, $d0, $bf, $80, $df, $9f, $a0, $7f
    db $00, $3f, $da, $80, $7f, $80, $e0, $7c, $e1, $fc, $e9, $57, $c4, $7c, $86, $ec
    db $c0, $40, $0f, $60, $7e, $fe, $e0, $a0, $0f, $80, $0f, $c0, $0f, $70, $e0, $f4
    db $f5, $81, $fc, $e3, $ff, $5c, $c0, $a2, $5c, $40, $be, $ff, $a0, $5e, $55, $aa
    db $a0, $5f, $d4, $2b, $ef, $f8, $07, $00, $01, $f0, $6b, $7f, $7f, $e7, $c7, $e8
    db $f7, $f0, $58, $41, $91, $81, $74, $41, $bd, $00, $9f, $dd, $00, $de, $00, $ee
    db $ff, $42, $fd, $41, $eb, $ff, $13, $db, $23, $eb, $13, $fb, $03, $6b, $7f, $13
    db $7b, $03, $b7, $07, $b7, $07, $5c, $a2, $7f, $00, $3f, $00, $4f, $40, $70, $70
    db $aa, $61, $fc, $66, $e8, $fe, $e2, $0f, $e0, $0e, $e0, $0c, $e0, $fa, $e3, $a0
    db $f8, $d8, $63, $c0, $00, $03, $03, $1f, $b5, $1f, $b3, $a0, $3f, $5a, $c1, $3f
    db $bf, $c9, $a0, $f0, $ff, $11, $e9, $2b, $d3, $13, $eb, $3b, $c3, $6f, $1b, $e3
    db $2d, $d1, $70, $2b, $fc, $fc, $32, $45, $ff, $f0, $f3, $c2, $cc, $09, $31, $27
    db $c7, $fd, $7b, $7b, $40, $3c, $00, $c1, $01, $9f, $1f, $4e, $42, $63, $cf, $0f
    db $df, $b2, $e0, $60, $88, $7f, $fe, $e2, $3d, $7e, $fe, $e1, $80, $be, $80, $be
    db $f0, $e4, $ea, $e1, $45, $ff, $f4, $40, $c0, $64, $6a, $5c, $a4, $3e, $66, $05
    db $f0, $ec, $d8, $3b, $a0, $01, $a2, $fb, $82, $0f, $ef, $fe, $e0, $0f, $1d, $ff
    db $e1, $2d, $d1, $15, $e9, $2d, $d1, $16, $7f, $e8, $0e, $f0, $06, $f8, $0a, $f4
    db $52, $ab, $fb, $f0, $f1, $96, $a5, $e1, $e6, $86, $98, $19, $ff, $61, $67, $87
    db $f0, $f3, $82, $8c, $09, $87, $71, $67, $87, $50, $e5, $48, $e5, $88, $05, $5c
    db $e0, $bf, $ee, $fe, $e9, $15, $00, $0b, $b7, $60, $2a, $00, $1d, $62, $af, $60
    db $5f, $a8, $c0, $23, $63, $d7, $20, $00, $ab, $97, $46, $a9, $fd, $63, $40, $b3
    db $45, $f0, $f7, $20, $55, $07, $62, $eb, $6b, $00, $57, $ff, $40, $07, $6c, $c0
    db $f7, $07, $8b, $63, $fe, $fb, $21, $05, $fa, $0b, $f4, $05, $fa, $02, $97, $fd
    db $01, $fe, $fc, $e1, $00, $06, $44, $32, $80, $bf, $bf, $9f, $5f, $4f, $af, $80
    db $40, $8b, $8b, $1c, $7d, $1c, $c0, $07, $f0, $f3, $80, $8f, $00, $de, $20, $3f
    db $fe, $fe, $e0, $e0, $00, $1c, $b6, $21, $b0, $40, $ff, $f3, $c1, $ce, $0e, $30
    db $39, $c1, $e7, $ad, $07, $38, $e5, $c0, $df, $fe, $e0, $de, $fe, $e3, $80, $27
    db $9e, $00, $4c, $97, $c3, $ff, $37, $fd, $f0, $ed, $6b, $e0, $f0, $3d, $aa, $76
    db $85, $92, $60, $fa, $e1, $5f, $a0, $2b, $d4, $ff, $17, $e8, $0a, $f5, $15, $ea
    db $0a, $f5, $fe, $76, $01, $e0, $03, $f0, $03, $f8, $01, $fc, $ff, $01, $fc, $80
    db $fe, $50, $ee, $c8, $ee, $7d, $c8, $62, $02, $fc, $03, $f3, $0f, $8f, $fa, $a3
    db $bb, $0f, $cf, $f2, $a9, $ff, $ff, $f0, $57, $00, $7c, $4a, $41, $e0, $60, $fa
    db $e0, $3c, $c6, $a0, $53, $25, $ea, $c1, $00, $5c, $7d, $03, $41, $23, $3f, $00
    db $40, $b7, $00, $d0, $b5, $22, $15, $fb, $9b, $00, $0a, $ad, $00, $ab, $82, $c6
    db $a6, $c1, $2b, $2d, $ff, $fc, $00, $f0, $03, $e0, $0f, $9f, $1f, $ff, $8f, $0f
    db $81, $01, $00, $0e, $00, $3e, $f4, $cd, $43, $3b, $61, $f7, $ff, $e2, $73, $73
    db $70, $70, $ff, $00, $00, $22, $c4, $10, $66, $20, $56, $ff, $10, $64, $01, $71
    db $03, $23, $07, $07, $03, $ff, $ff, $00, $00

    nop

    db $61, $09, $ff, $ff, $ff, $ff, $ff, $ff, $fe, $fd, $0a, $0a, $e0, $fd, $4d, $0c
    db $c2, $fa, $0a, $0b, $e0, $ff, $e0, $fa, $0c, $c0, $f8, $69, $0d, $ff, $e0, $a1
    db $f8, $08, $e0, $e0, $0f, $0f, $1c, $e4, $49, $0f, $f6, $e6, $0b, $e5, $0f, $c1
    db $e1, $e0, $f7, $49, $e0, $fc, $24, $82, $e2, $80, $e0, $69, $a1, $e5, $a0, $ed
    db $0c, $e0, $e3, $00, $e1, $84, $e2, $f0, $e0, $e0, $0e, $ff, $e1, $e0, $e4, $76
    db $d0, $e0, $e3, $0e, $15, $0c, $7e, $d5, $0f, $e0, $e3, $0e, $9f, $d9, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $00, $00

    nop

    db $9d, $00, $ff, $e1, $01, $00, $02, $f8, $e2, $fb, $f5, $03, $fb, $04, $05, $e0
    db $f6, $06, $07, $08, $09, $0a, $fb, $0b, $0c, $c0, $f5, $0d, $0e, $0f, $10, $11
    db $ef, $12, $13, $14, $15, $9f, $f4, $16, $17, $18, $7f, $19, $1a, $1b, $1c, $1d
    db $1e, $1f, $7e, $f3, $ff, $20, $21, $22, $23, $24, $25, $26, $27, $fb, $28, $29
    db $5e, $f4, $2a, $2b, $2c, $26, $2d, $ef, $2e, $2f, $30, $31, $3e, $f4, $32, $33
    db $34, $bf, $35, $36, $37, $38, $39, $3a, $1e, $f5, $3b, $7f, $3c, $3d, $3e, $3f
    db $40, $41, $42, $fe, $d6, $bf, $43, $44, $45, $46, $47, $48, $df, $d6, $49, $bf
    db $4a, $26, $26, $4b, $4c, $4d, $bf, $c4, $4e, $fb, $4f, $50, $b5, $cc, $51, $52
    db $26, $53, $54, $bb, $55, $56, $9f, $c4, $57, $58, $59, $60, $ec, $5a, $7f, $5b
    db $26, $5c, $5d, $5e, $5f, $60, $7e, $c3, $f7, $61, $62, $63, $40, $ec, $64, $65
    db $26, $26, $ef, $66, $67, $68, $49, $56, $c2, $69, $6a, $6b, $fd, $6c, $55, $cc
    db $6d, $6e, $6f, $70, $71, $72, $bd, $73, $37, $c1, $74, $75, $76, $77, $37, $ce
    db $78, $ff, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $f7, $81, $82, $83, $e2, $ef
    db $00, $00, $84, $85, $ff, $86, $87, $86, $88, $89, $8a, $8b, $8c, $fd, $8d, $c0
    db $d2, $8e, $8f, $90, $91, $92, $93, $07, $94, $95, $96, $dd, $ba, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $fd, $00, $00

    nop
    push hl
    ld h, [hl]
    dec h
    ld h, a
    and l
    ld l, a
    ld b, b
    ld [hl], b
    ld a, a
    ld e, a
    ld e, l
    ld [hl-], a
    nop
    nop
    ld b, a
    nop
    ld e, a
    ld bc, $08ad
    ld e, l
    ld [hl-], a
    nop

Jump_078_66f4:
    nop
    xor l
    ld [$0047], sp
    ld e, l
    ld [hl-], a
    nop
    nop
    ld a, a
    ld e, a
    ld e, l
    ld [hl-], a
    xor l
    ld [$0000], sp
    rst $38
    ld a, a
    ld e, l
    ld [hl-], a
    xor l
    ld [$0000], sp
    rst $38
    ld a, a
    dec hl
    ld l, l
    ld a, a
    ld e, a
    nop
    nop
    xor l
    nop
    ld e, a
    ld bc, $7fff
    nop
    nop
    rst $38
    ld a, a
    ld a, a
    ld e, a
    ld e, l
    ld [hl-], a
    nop
    nop
    db $d3
    nop
    rst $38
    cp $eb
    rst $38
    db $ec
    cp $f4
    ld [$fec0], a
    sub $df
    rst $20
    ldh a, [$fa]
    push bc
    ldh [$bf], a
    rst $08
    rst $20
    ld a, a
    ccf
    rst $18
    rlca
    ld b, e
    nop
    and b
    ld bc, $eabf
    ld a, a
    ld a, a
    db $fd
    rra
    xor a
    db $e4
    db $fc
    rst $38
    ldh a, [$ee]
    ret nz

    call nc, $80ff
    and b
    nop
    rst $38
    ld hl, sp-$02
    ldh [$fd], a
    ld a, a
    add b
    ld [$5400], a
    nop
    and b
    nop
    rst $38
    pop hl
    ld a, a
    rst $38
    nop
    rst $28
    nop
    ld d, l
    nop
    and d
    db $f4
    ld [c], a
    cp $ef
    ldh [$71], a
    push de
    nop
    ld a, [$d500]
    nop
    db $fd
    add b
    db $e4
    pop hl
    inc b
    nop
    ld d, e
    nop
    cp c
    ld d, b
    cp $d8
    db $e3
    ld a, [bc]
    nop
    daa
    nop
    ld [de], a
    ld [bc], a
    add hl, sp
    rst $38
    ld bc, $0ff4
    rst $00
    rlca
    ld [hl], e
    inc bc
    cp c
    rst $38
    ld bc, $0054
    ld [bc], a
    ld e, h
    nop
    ccf
    ld bc, $1ffd
    add b
    add sp, $7f
    ccf
    ccf
    rra
    rst $18
    rrca
    db $f4
    ccf
    db $ed
    dec a
    pop hl
    db $fc
    add c
    ldh [$f9], a
    rst $38
    cp $fe
    rst $38
    ld hl, sp-$08
    ldh [$e0], a
    nop

jr_078_67ba:
    rst $38
    rlca
    rst $38
    sbc a
    jr @-$06

    ld h, b
    ldh [$80], a
    sbc l
    ld [c], a
    add b
    ldh [rIE], a
    ld sp, hl
    inc bc
    add h
    push hl
    ld [hl], b
    ld [c], a
    rra
    ldh [$e6], a
    ld hl, sp+$3d
    rst $28
    ld e, $07
    inc bc
    ld bc, $e46e
    call nc, $ae23
    rst $38
    ld de, $0857
    xor c
    ld d, $f4
    adc e
    ret nc

    rst $38
    ld l, a
    ld h, c
    ccf
    ld [hl-], a
    rra
    ldh a, [rIF]
    ld [hl], b
    rst $38
    adc a
    jr c, jr_078_67ba

    adc h
    ld [hl], e
    add d
    ld a, l
    ld d, b
    rst $38
    cp a
    ld c, h
    rst $38
    and a
    rst $38
    ld a, [bc]
    rst $38
    ld b, l
    rst $38
    rst $38
    ld [hl+], a
    rst $38
    ld sp, $1aff
    rst $38
    dec e
    ei
    rst $38
    ld l, [hl]
    jp nz, $87c0

    rst $38
    ld d, a
    rst $28
    xor e
    cp a
    rst $30
    ld d, e
    rst $38
    db $fd
    ei
    ld a, c
    or h
    pop bc
    dec b
    cp $b9
    call nz, $fcfe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$ef]
    pop af
    ldh a, [$c0]
    ret nz

    add [hl]
    push hl
    nop
    inc bc
    ld a, [bc]
    sub a
    dec b
    rlca
    ld [$cc80], sp
    ld a, a
    ld [hl], e
    ld [$c0de], a
    add hl, de
    rst $38
    rrca
    inc c
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $bd01
    nop
    ld l, [hl]
    db $e3
    ld a, a
    rst $38
    ld hl, sp-$20
    ld [c], a
    pop bc
    add b
    cp [hl]
    rst $38
    ldh [$c3], a
    ld b, b
    rst $18
    ld e, a
    pop bc
    ld b, [hl]
    rst $20
    rlca
    rst $38
    db $fd
    rst $38
    ld a, [$5fff]
    ld [bc], a
    xor a
    ld bc, $57df
    nop
    dec hl
    ld bc, $3517
    ret nz

    ld e, a
    rst $38
    adc c
    db $eb
    ld h, [hl]
    jp nz, $e2fc

    cp a
    dec h
    pop bc
    ei
    ld [c], a
    inc e
    jp $bff7


    rst $38
    rst $30
    rst $30
    rst $20
    rst $30
    rst $20
    ld d, $c8
    cp $fa
    rst $38
    ldh [$fc], a
    rst $38
    xor e
    ld a, a
    ld a, a

jr_078_6890:
    ld a, [c]
    ldh [$e5], a
    rst $38
    ldh [$ee], a
    pop bc
    call z, $dac1
    ret nz

    call c, $c0ff
    jp c, $9480

    add b
    rlca
    or b
    ld b, e
    rst $38
    jr @-$3b

    ld [$04e1], sp
    ld a, c
    nop
    ld a, [hl]
    rst $38
    nop
    ccf
    add b
    add hl, de
    add b
    nop
    ld a, a
    add b
    rst $38
    ccf
    add b
    ccf
    ret nz

    rra
    ret nz

    rra
    ldh [$df], a
    rrca
    ldh a, [rTAC]
    pop hl
    ld b, $b0
    and l
    inc bc
    db $fc
    rst $18
    rra
    ldh [$3f], a
    ret nz

    rst $38
    rra
    pop bc
    rst $38
    rrca
    rst $38
    ldh a, [$7f]
    add b
    cp $00
    db $fd
    nop
    ld a, [$01ff]
    push af
    ld [bc], a
    ld b, $f0
    rlc h
    xor a
    rst $38
    ld de, $225a
    or l
    ld b, l
    ld l, d
    adc d
    or l
    rst $38
    dec [hl]
    ld l, b
    ld l, b
    ld h, b
    rst $38
    ld b, b
    rst $38
    call z, $f3ff
    sub $a9
    dec hl
    call nc, $ea95
    ld d, d
    rst $38
    db $fd
    jr z, @+$01

    ld e, $0c
    adc a
    ld b, d
    jp $207f


    ld h, b
    nop
    jr jr_078_6890

    ld [bc], a
    ldh [rNR30], a
    ret nz

    rst $38
    nop
    ld a, a
    dec d
    rra
    dec bc
    rst $08
    add c
    rst $30
    cp a
    jr nz, jr_078_699f

    nop
    rra
    nop
    ld c, e
    ld d, e
    and b
    rst $18
    rst $38
    rrca
    rst $18
    adc a
    rst $28
    rst $00
    rst $28
    add a
    rst $30
    rst $38
    ld b, a
    rst $30
    inc hl
    rst $30
    inc bc
    ei
    ld bc, $ffe7
    db $e3
    rst $20
    jp $c3c3


    res 0, e
    sub e
    ld a, a
    add c
    adc e
    ld bc, $0113
    dec hl
    ld bc, $c098
    cp $96
    pop bc
    ld hl, sp-$08
    ld a, [c]
    ldh a, [$e2]
    ldh a, [$e4]
    sub a
    ldh [$c6], a
    ld a, a
    rst $38
    pop hl
    ccf
    db $e4
    and b
    cp $e1
    rra
    rst $20
    ccf
    rra
    sbc d
    inc a
    ldh [$fc], a
    db $e3
    db $dd
    ret nz

    jp z, $c0ff

    call Call_000_18c0
    jp nz, $c10c

    ld c, $ff
    ldh [rDIV], a
    pop af
    ld bc, $07f2
    ld hl, sp+$0f
    rst $18

jr_078_6980:
    ldh a, [$3f]
    ret nz

    rlca
    jr jr_078_6980

    pop hl
    ld a, a
    add b
    db $fc
    jp hl


    add l
    ld h, a
    and l
    ld bc, $0200
    ld bc, $0304
    rst $38
    ld [$1106], sp
    inc c
    ld [hl+], a
    add hl, de
    ld b, h
    inc sp
    rst $38
    adc b

jr_078_699f:
    ld h, a
    db $10
    rst $08
    cpl
    sub [hl]
    ld a, b
    rla
    rst $38
    ldh [$5f], a
    db $f4
    rst $38
    jp c, $f73f

    rlca
    ld e, a
    pop de
    ld bc, $00e0
    ret nz

    ld l, $a0
    ld b, b
    cpl
    and b
    rst $38
    ld a, [bc]
    push af
    dec b
    ld a, [$fd82]
    ld b, b
    ld a, a
    rst $38
    jr nz, jr_078_6a05

    jr @+$21

jr_078_69c8:
    inc b
    rlca
    nop
    rst $38
    rst $38
    jr z, @+$01

    rla

Jump_078_69d0:
    rst $38
    adc [hl]
    ld e, h
    ld e, h
    sbc b
    ld a, a
    jr jr_078_69c8

    db $10
    ldh a, [$33]
    ldh [$15], a
    sub b
    add b
    rst $38
    ldh [rIE], a
    jr c, jr_078_6a03

    inc c
    rlca
    ld b, $03
    ld a, a
    db $e3
    ld bc, $c1f1
    ei
    ld bc, $f4bd
    add b
    db $fd
    cp d
    db $fc
    add b
    xor d
    nop
    ld d, c
    nop
    jr z, jr_078_69fc

jr_078_69fc:
    cp a
    rst $38
    db $fc
    cp $f8
    db $fd
    ld h, b

jr_078_6a03:
    and h
    ret nz

jr_078_6a05:
    nop
    db $fd
    adc a
    ld bc, $28a0
    nop
    dec de
    inc bc
    dec sp
    inc bc
    rst $38
    ld e, a
    inc bc
    or a
    rlca
    ld a, a
    rlca
    rst $38
    rlca
    rst $20
    cp $08
    jr nc, @+$61

    add e
    or c
    and b
    ld hl, sp-$10
    ldh [rIE], a
    add c
    nop
    inc bc
    nop
    cpl
    ret nz

    adc h
    add c
    rst $38
    jr jr_078_6a30

jr_078_6a30:
    inc [hl]
    ld bc, $0068
    ret nc

    ld bc, $a8ff
    ld [bc], a
    ret nc

    ld bc, $3fa0
    rra
    rra
    rst $18
    rra
    sbc a
    rrca
    rra
    rrca
    db $fc
    push hl
    ldh [$f5], a
    rst $38
    ldh [$fa], a
    pop hl
    db $fc
    ld a, [c]
    ld hl, sp-$03
    ld hl, sp+$3f
    ld a, [$f5f8]
    ldh a, [$fa]
    ldh a, [$59]
    ldh [rTMA], a
    and h
    cp a
    ld bc, $0600
    ld bc, $0718
    ld [hl], a
    and d
    nop
    rst $38
    inc e
    inc bc
    ld h, b
    ld e, $83
    ld [hl], b
    inc e
    jp $60ff


    rra
    ld sp, $c30c
    add hl, sp
    ld c, $e3
    cp a
    ld [hl], $8d
    call nz, Call_000_043f
    ei
    db $e4
    ld h, c
    add c
    rst $38
    cp $03
    rst $38
    rrca
    rst $38
    ld e, $fe
    add hl, sp
    ld a, a
    ld sp, hl
    inc sp
    di
    ld h, e
    db $e3

jr_078_6a92:
    db $e3
    ld h, e
    ld b, d
    pop hl
    rst $38
    ld hl, sp-$01
    ld c, $0f
    di
    di
    adc l
    adc l
    rst $18
    adc [hl]
    adc [hl]
    adc a
    adc l
    ld [bc], a
    ld h, l
    and c
    ld [$ff18], sp
    db $10
    ld [hl], b
    jr nz, jr_078_6a92

    ret nz

    ld hl, sp-$34
    ld [hl], b
    rst $38
    ld a, b
    inc sp
    pop hl
    daa
    ld [c], a
    rst $20
    push bc
    ld b, a
    rst $30
    ld b, $07
    inc b
    cp $e2
    ld [bc], a
    pop af
    nop
    add sp, $7f
    nop
    ldh a, [$80]
    ld hl, sp+$40
    ldh a, [rNR41]
    ld hl, sp-$20
    rst $38
    nop
    and c
    nop
    add b
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    rst $38
    ret nc

    rst $38
    xor b
    rst $38
    call nc, $aaff
    ld e, a
    rst $38
    push bc
    rst $38
    nop
    ld d, b
    ld sp, hl
    ld h, b
    dec d
    jr nz, @-$7e

    ld [hl], a
    nop
    nop
    ld [bc], a
    sub a
    call nz, $002a
    ld e, a
    ld l, d
    ld h, b
    ld a, [$c1ef]
    nop
    db $f4
    ld [c], a
    cp $00
    db $fc
    nop
    ld [$a5fc], a
    ret nz

    ldh a, [$e1]
    add b
    ld [bc], a
    nop
    dec b
    and b
    ld a, [bc]
    rst $38
    nop
    rlca
    add b
    ld a, [bc]
    nop
    rla
    nop
    dec hl
    cp [hl]
    rst $10
    ldh [$9f], a
    rra
    sbc a
    rra
    cp a
    cp $e3
    ccf
    cp $fe
    pop hl
    ld a, [$f5e0]
    ret nz

    db $eb
    ret nz

    call nc, $81ff
    xor b
    add e
    pop de
    inc b
    and e
    add hl, bc
    ld c, a
    rst $38
    inc de
    ld hl, $c21c
    ld sp, $e30c
    inc sp
    rst $38
    adc h
    ld h, [hl]
    dec sp
    call nz, $e47f
    cp e
    ldh a, [$ad]
    rst $18
    ld h, $c3
    rst $18
    ldh [$09], a
    ld h, h
    inc a
    and e
    pop hl
    ld a, [$00bb]
    db $f4
    ld e, d
    ldh [$d0], a
    nop
    xor b
    db $fc
    ldh [$63], a
    cp a
    db $e3
    ld h, c
    pop hl
    ld hl, $30e1
    ld d, h
    ret nz

    ld [$f8ef], sp
    inc b
    db $fc
    ld [bc], a
    jp $fe61


    rst $38
    sbc $ff
    rst $38
    xor h
    ld a, a
    ld b, b
    ccf
    jr nc, jr_078_6b88

    rrca
    rst $38
    inc bc
    inc bc
    and b
    cp a
    add b
    cp a
    ret nz

    ld a, a
    rst $38
    ldh [$7f], a
    ret nz

    ld [hl], l

jr_078_6b88:
    ret nz

    db $eb
    add b
    pop de
    rst $20
    nop
    db $e3
    rlca
    rst $38
    jp nz, $a5dc

    nop
    nop
    ld b, c
    rst $38
    nop
    add b
    ld bc, $0103
    dec b
    inc bc
    ld a, [bc]
    ld a, a
    rlca
    inc d
    rrca
    ld e, d
    ccf
    cp l
    ld a, a
    ld [de], a
    push hl
    ld a, a
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld [bc], a
    xor a
    and [hl]
    ld d, l
    ld b, c
    db $10
    ret nz

    ld d, h
    ld [hl], l
    call nz, $1501
    ld h, b
    ld d, b
    inc c
    ld h, b
    ld d, b
    inc h
    ldh [$96], a
    and e
    rst $28
    ret nz

    ei
    pop bc
    xor d
    pop af
    ld h, b
    xor e
    db $ed
    ld h, b
    push af
    xor a
    db $fd
    ret nz

    cp [hl]
    ret nz

    add b

jr_078_6bd7:
    db $fd
    nop
    ei
    ld bc, $ff83
    ccf
    ld l, $a1
    inc l
    add d
    and l
    ld h, [hl]
    ld c, d
    add b
    ld e, b
    ld b, [hl]
    sbc a
    ld e, a
    cpl
    ccf
    ld e, a
    ld a, a
    cp a
    ldh [$e7], a
    ld hl, sp+$3f
    ld [c], a
    cp $29
    ld b, a
    add b
    ld h, a
    add b
    ld c, a
    add b
    ld c, [hl]
    add b
    rst $38
    ld h, [hl]
    ld b, b
    and a
    jr nz, jr_078_6bd7

jr_078_6c04:
    nop
    ld sp, hl
    jr z, @+$01

    db $f4
    nop
    rst $38
    add b
    rst $38

jr_078_6c0d:
    ld b, b
    ld a, a
    ld h, b
    rst $38
    ld a, a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp+$6f
    ld hl, sp-$11
    adc a
    inc c
    rrca
    jr nc, jr_078_6c0d

    dec hl
    push de
    nop
    db $eb
    and e
    nop
    rst $30
    jp c, Jump_078_7827

    ld h, c
    db $e4
    ld b, c
    ld [bc], a
    ld d, c
    ret nz

    inc b
    cp $5d
    ld b, b
    rst $38
    ld a, a
    ld a, d
    rst $38
    ld [hl], h
    rst $38
    ld l, b
    rst $38
    rst $38
    call nc, $e87f
    ld a, a
    inc [hl]

jr_078_6c41:
    ld a, a
    ld a, [hl+]
    ld l, d
    ld b, b
    ld h, d
    xor b
    ld l, $40
    ld a, [hl+]
    ld d, b
    add b
    rrca
    nop
    and c
    and c
    ld [hl], h
    cpl
    pop bc
    ld [hl+], a
    and c
    rst $38
    db $fc
    ld [c], a
    ld a, [hl+]
    nop
    ld d, a
    jr z, jr_078_6c41

    or b
    add a
    inc hl
    ld hl, sp-$1f
    cp d
    jr nz, jr_078_6c04

    add sp, -$01
    inc bc
    cp $e0

jr_078_6c6a:
    rlca
    xor $8b
    and b
    rra
    rst $38
    ccf
    ld b, h
    ld h, d
    cp a
    rst $38
    sbc h
    rst $38
    adc $80
    ldh [$c0], a
    ldh a, [$c0]
    db $fd
    ldh [rIE], a
    cp $f0
    cp $af
    cp l
    rra
    ld d, $07
    db $dd
    ld c, $ec
    ld b, b
    dec bc
    ld bc, $e255
    ret nz

    ld bc, $ff78
    ld bc, $8b11
    ld h, c
    rst $30
    nop
    db $eb
    ld bc, $f5bf
    nop
    ld a, d

Jump_078_6ca0:
    add b
    cp l
    ret nz

    or a
    dec h
    add b
    cp a
    nop
    jr nz, jr_078_6c6a

    and c
    nop
    ld b, l
    xor h
    and e
    jr nc, @+$81

    db $10
    jr nz, jr_078_6cf4

    jr nz, jr_078_6cd6

jr_078_6cb6:
    ld b, b
    ld b, b
    xor c
    jr nz, jr_078_6cb6

    inc c
    nop
    ld d, d
    and b
    nop
    ld [$1010], sp
    jr nz, @-$01

    ld d, b
    xor $e0
    ld h, b
    add b
    ld c, e

jr_078_6ccb:
    ccf
    ld d, a
    ccf
    rst $38
    ld l, e
    ccf
    dec h
    rra
    dec hl
    rra
    dec [hl]

jr_078_6cd6:
    rra
    ld e, a
    ld [hl-], a
    rrca
    ld de, $a30f
    ld [hl], d
    jr nz, jr_078_6ccb

    ld a, d
    pop hl
    ld d, d
    rst $20
    ld bc, $5d55
    and b
    rst $18
    dec b
    and b
    dec a
    ret nz

    ld a, d
    pop hl
    nop
    ld [de], a
    rst $08
    rlca
    ld d, e

jr_078_6cf4:
    xor h
    ld b, d
    ld c, [hl]
    pop hl
    rlca
    ld d, h
    ldh [$6e], a
    push bc
    adc a
    call z, $dfe5
    ld d, $e5
    ret nz

    sbc a
    ret nz

    and d
    ld b, b
    sbc $e0
    rst $20
    db $eb
    ld hl, sp-$0d
    sbc c
    ld b, d
    cp $ec
    and b
    ld a, [bc]
    rst $38
    xor b
    ei
    nop
    call nc, Call_000_200e
    ld a, a
    ret nz

    rlca
    cp $a0
    ld d, e
    rst $38
    ld d, h
    sub c
    pop hl
    ld b, h
    ld [c], a
    ld d, b
    rrca
    and b
    ld hl, sp+$74
    ld [bc], a
    rst $38
    nop
    ld bc, $0301
    inc bc
    ld b, $05
    ld c, $ff
    dec hl
    inc e
    ld a, [$f5fc]
    ld hl, sp-$09
    ld hl, sp-$11
    ccf
    ret nz

    ld d, a
    xor b
    db $fc
    pop hl
    cp h
    ld b, e
    ld d, e
    rst $38
    xor a
    sbc h
    ld a, [hl]
    ld h, b
    push af
    rst $20
    rra
    rst $20
    ld a, a
    dec e
    jp hl


    ld a, [de]
    or b
    ld [hl], l
    ret nz

    ld [$62bd], a
    db $fd
    ld d, l
    ld [hl], e
    inc b
    rst $38
    cp a
    ld a, a
    ld a, a
    cp a
    rst $18
    rst $30
    ld e, a
    adc a
    adc a
    inc [hl]
    add hl, bc
    cp $fc
    db $fd
    ld hl, sp-$01
    rst $28
    set 5, l
    call nz, $8cde
    db $dd
    sbc h
    rst $38
    cp [hl]
    inc e
    ld a, l
    inc [hl]
    cp $64
    rst $38
    call nz, $aabf
    push de
    ld d, l
    xor d
    xor d
    ld d, l
    db $fc
    and $ab
    rst $38
    xor e
    ld d, a
    ld d, a
    xor h
    xor a
    ld e, b
    ld e, a
    or b
    rst $38
    cp a
    ld h, b
    ld a, a
    ret nz

    cp a
    add b
    ld a, a
    nop
    rst $30
    push af
    ld bc, $5dfe
    inc h
    db $fd
    ld bc, $05f6
    cp l
    add sp, -$60
    ld [bc], a
    cp a
    ld a, a
    rst $28
    rra
    xor e
    jr nz, jr_078_6dc2

    cp $68
    ld hl, $f1fb
    rst $30
    db $e3
    rst $28
    add $df
    rst $30
    adc h
    cp $9c
    adc d

jr_078_6dc2:
    ld b, c
    ldh a, [$f0]
    xor $84
    rst $38
    rst $18
    ld [bc], a
    xor d
    ld [bc], a
    ld b, a
    ld [bc], a
    adc e
    ld [bc], a
    cp $e6
    add b
    inc bc
    inc b
    rlca
    xor d
    ld d, [hl]
    ld d, l
    xor h
    rst $38
    xor [hl]
    ld d, h
    ld e, c
    xor b
    or e
    ld d, b
    ld h, a
    and b
    add a
    rst $28
    ret nz

    ld e, a
    sbc $40
    ld bc, $ac25
    ld b, b
    sub $80
    ret nc

    dec bc
    rra
    and b
    sub c
    ld b, b
    ld b, b
    adc a
    ld b, b
    adc l
    ld b, e
    jr jr_078_6e21

    ret c

    add l
    inc a
    ld sp, $3ce4
    ld b, d
    ld a, a
    rra
    ld a, a
    rra
    ld [$aea9], sp
    ld bc, $d0ff
    rst $18
    and b
    cp a
    ldh [$bf], a
    ld h, b
    ccf
    rst $28
    db $e3
    ccf
    reti


    jr jr_078_6e61

    and c
    ld [$11f8], sp
    ld c, a
    ldh a, [rNR44]

jr_078_6e21:
    ldh [$97], a
    ld b, [hl]
    ldh [$39], a
    and e
    dec b
    ld [hl], d
    add b
    xor $98
    pop hl
    inc bc
    ld bc, $e207
    jr nz, jr_078_6e4a

    ld bc, $bba0
    nop
    db $10
    ld e, b
    ld b, b
    ret nc

    nop
    adc b
    ld d, b
    ld b, b
    ldh [$fe], a
    inc c
    add b
    ccf
    rra
    ld e, a
    rra
    ccf
    rrca
    ld e, a

jr_078_6e4a:
    rst $38
    rrca
    cpl
    rlca
    rra
    rlca
    cpl
    inc bc
    rla
    dec a
    inc bc
    dec a
    ldh [$e0], a
    ldh [$c0], a
    ldh [$59], a
    nop
    ld [hl-], a
    ld b, c
    db $fc
    ld d, h

jr_078_6e61:
    add sp, $20
    add h
    dec bc
    ld bc, $011d
    adc a
    ld bc, $4fff
    dec b
    xor a
    dec b
    rst $10
    inc bc
    rst $28
    inc bc
    ld h, a
    rst $30
    inc bc
    ldh [$2a], a
    ld h, b
    ld h, $61
    ld hl, sp-$80
    cp b
    ld h, b
    ld [hl], a
    add b
    db $fc
    and b
    sbc h
    pop hl
    inc hl
    ld bc, $6515
    ld b, b
    pop af
    ld de, $602f
    and $60
    or d
    adc b
    add b
    ld a, a
    add b
    ld a, a
    sbc b
    ld c, b
    pop hl
    inc e
    ld b, b
    db $fc

jr_078_6e9c:
    db $e4
    rst $38
    db $fc
    ldh a, [$c1]
    db $ec
    pop bc
    ld d, b
    ld b, d
    jp nz, $5020

    dec c
    ld h, d
    ld bc, $f2e7
    ld h, e
    pop hl
    ld b, c
    nop
    xor [hl]
    add b
    db $fd
    ld [bc], a
    db $fc
    ld [c], a
    ld a, a
    inc hl
    rst $38
    ld de, $0b7f
    rst $38
    rst $38
    dec b
    ld a, a
    ld a, [bc]
    cp a
    rlca
    ld a, a
    inc bc
    ld l, a
    xor a
    dec b
    ld a, [$eaa0]
    add b
    ldh [rIE], a
    db $fc

jr_078_6ed0:
    ld [c], a

jr_078_6ed1:
    jr z, jr_078_6ed1

    pop hl
    inc b
    and e
    nop
    and c
    ld b, b

jr_078_6ed9:
    ld [hl], b
    jr nz, jr_078_6e9c

    ld h, b
    add b
    nop
    ld h, $c6
    ld [bc], a
    jr nz, @+$21

    rra
    jr nc, jr_078_6f49

    cp $e1
    rst $20
    and h
    db $dd
    nop
    and c
    xor [hl]
    ld de, $0e80
    and b
    ld a, d
    and b
    rlca
    add c
    ld b, l
    ld a, b
    jr nz, jr_078_6ed0

    ld d, h
    db $f4
    db $e4
    rst $30
    ld h, c
    ld d, l
    ld a, [hl+]
    jr nz, jr_078_6ed9

jr_078_6f04:
    ld h, h
    jr nz, jr_078_6f04

    ld a, $82
    sub l
    ld a, [$8026]
    ld a, [bc]
    ld [hl+], a
    add b
    dec bc
    sub e
    and e
    ld a, [hl+]
    add c
    ld [bc], a
    pop af
    xor a
    call nc, $5a82
    ld h, c
    ld d, [hl]
    ld h, c
    rst $38
    ldh [$7f], a
    ldh [$7f], a
    rst $38
    ldh a, [$7d]
    ldh a, [$3e]
    ldh a, [$7f]
    db $fc
    ld [c], a
    inc e
    sub h
    pop bc
    and h
    ld b, c
    add sp, $00
    ld [hl], h
    and b
    ld b, b
    cpl
    nop
    ld [hl+], a
    ret z

    and e
    rrca
    rrca
    ld l, l
    nop
    ld d, h
    jr nz, @+$01

    ldh [rTAC], a
    rst $38
    ldh [$03], a
    rrca
    db $e3

jr_078_6f49:
    db $e3
    rst $38
    ei
    ld [hl], c
    ld h, b
    db $dd
    ld hl, $e7fe
    ld [hl], e
    ld h, [hl]
    and h
    ld a, b
    and c
    db $fc
    push hl
    ld [$e270], a
    ld l, h
    pop hl
    pop de
    ret z

    nop
    ld b, c
    db $e3
    nop
    and d
    add $40
    db $fc
    db $e3
    jp nc, $0140

    rst $38
    ld [bc], a
    ld a, l
    cp a
    db $fc
    and $bf
    ldh a, [$7f]
    ld hl, sp-$02
    dec h
    ld h, b
    rst $30
    cp $f0
    db $fd
    db $fc
    ld [c], a
    xor b
    nop
    ld d, c
    ld bc, $83ff
    inc bc
    rrca
    ld c, $bf
    inc a
    ld a, [hl]
    ld a, b
    call z, $e1fc
    ld sp, $8020
    push af
    inc [hl]
    db $e4
    ld e, d
    ld h, d
    ei
    rst $38
    rla
    ld [hl], a
    rst $38
    ld l, a
    cp a
    add b
    ccf
    cp $e3
    nop
    nop
    nop
    dec b
    ld [$e4ff], sp
    ld a, [bc]
    rst $38
    pop hl
    di
    push hl
    ld hl, sp-$11
    pop hl
    ld [c], a
    rst $18
    or $b9
    inc c
    rst $38
    push hl
    cp [hl]
    db $f4
    inc c
    inc c
    ld c, $dd
    db $e4
    ld [$0a29], sp
    sub [hl]
    ldh [$c0], a
    rst $28
    ld c, $ff
    pop hl
    inc c
    ld a, h
    db $e3
    ldh [$f3], a
    rst $00
    add hl, bc
    add hl, bc
    dec bc
    rst $38
    ldh [$7a], a
    db $f4
    ld [c], a
    ldh [$09], a
    rrca
    pop af
    dec c
    rst $18
    and $39
    db $ed
    ld [c], a
    ldh [$0b], a
    dec bc
    dec c
    dec c
    inc e
    rst $18
    pop hl
    ldh [$f4], a
    ld a, [bc]
    ld [$df0d], sp
    ldh [$a0], a
    or $4c
    pop hl
    add sp, -$7f
    pop hl
    jp c, $e1c2

    db $d3
    ld [$e0df], sp
    rrca
    rrca
    ld c, $90
    cp [hl]
    rst $10
    ei
    pop bc
    inc e
    ldh [$e0], a
    ld a, [$d909]
    ret nz

    ld a, h
    push de
    add hl, bc
    nop
    db $fc
    pop bc
    cp [hl]
    pop bc
    pop hl
    db $f4
    rst $38
    ld [c], a
    ldh [rIE], a
    sbc a
    push af
    ldh [rIE], a
    ldh [$fb], a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fd
    nop
    nop
    nop
    ld a, l
    nop
    rst $38
    db $e4
    ld bc, $0302
    inc b
    dec b
    di
    push hl
    cp $f8
    rst $28
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    cp $df
    db $f4
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    rst $30
    inc d
    dec d
    dec c
    cp [hl]
    di
    ld d, $17
    jr jr_078_7082

    rst $38
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $00
    rra
    rst $30
    nop
    jr nz, jr_078_7097

    sbc c
    xor $22
    inc hl
    inc h
    dec h
    rst $38
    ld h, $27
    jr z, jr_078_70aa

    ld a, [hl+]

jr_078_7082:
    dec hl
    ld bc, $f72c
    nop
    dec l
    ld l, $79
    xor $2f
    jr nc, jr_078_70bf

    ld [hl-], a
    rst $38
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_078_70d0

jr_078_7097:
    ld a, [hl-]
    rst $30
    dec sp
    inc a
    dec a
    ld e, c
    xor $3e
    ccf
    ld b, b
    ld b, c
    rst $38
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b

jr_078_70aa:
    ld c, c
    rst $30
    ld c, d
    ld c, e
    ld c, h
    add hl, sp
    db $ed
    ld bc, $4e4d
    ld c, a
    rst $38
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    rst $28

jr_078_70bf:
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    add hl, de
    db $ed
    ld e, h
    ld e, l
    ld e, [hl]
    rst $38
    ld e, a
    ld h, b
    add hl, de
    ld h, c
    ld h, d
    ld h, e
    ld h, h

jr_078_70d0:
    ld h, l
    rst $28
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    dec sp
    ldh a, [rOCPS]
    ld l, e
    ld l, h
    rst $38
    ld l, l
    ld l, [hl]
    add hl, de
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    db $fd
    ld [hl], h
    db $db
    pop de
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    rst $30
    ld a, e
    ld a, h
    ld a, l
    cp [hl]
    rst $10
    nop
    ld a, [hl]
    ld a, a
    add b
    rst $30
    add c
    add d
    add e
    sbc l
    rst $10
    add h
    add l
    add [hl]
    add a
    rst $30
    adc b
    adc c
    adc d
    ld a, h
    push de
    adc e
    adc h
    adc l
    add hl, de
    rst $28
    adc [hl]
    adc a
    add hl, de
    sub b
    ld e, h
    call nc, $9101
    add hl, de
    ld a, a
    add hl, de
    sub d
    sub e
    sub h
    add hl, de
    sub l
    sub [hl]
    dec sp
    db $d3
    rst $38
    sub a
    sbc b
    add hl, de
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ei
    add hl, de
    sbc [hl]
    dec de
    db $d3
    sbc a
    and b
    and c
    and d
    and e
    rst $18
    and h
    and l
    and [hl]
    and a
    xor b
    dec e
    call nc, $aaa9
    ld a, a
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    dec e
    ld hl, sp+$00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    ld l, [hl]
    ld [hl], c
    xor [hl]
    ld [hl], c
    ld l, d
    ld a, d
    ld d, $7b
    nop
    nop
    adc d
    ld [$152f], sp
    jr nc, jr_078_71f4

    nop
    nop
    adc d
    ld [$7f5b], sp
    jr nc, jr_078_71fc

    nop
    nop
    inc a
    ld bc, $7f5b
    jr nc, jr_078_7204

    nop
    nop
    inc a
    ld bc, $4b1c
    adc d
    ld [$0000], sp
    adc d
    ld [$013c], sp
    jr nc, jr_078_7214

    nop
    nop
    inc a
    ld bc, $4b1c
    jr nc, jr_078_721c

    nop
    nop
    adc d
    ld [$4b1c], sp
    dec hl
    ld l, l
    nop
    nop
    inc a
    ld bc, $4b1c
    dec hl
    ld l, l
    db $ed
    rst $38
    rst $38
    ld a, [$fefe]
    or $e7
    pop af
    ldh a, [$88]
    rst $30
    add a
    ld d, l
    ld a, [hl+]
    ret nc

    db $e3
    ldh [$e0], a
    ld [de], a

jr_078_71c2:
    dec c
    cp a
    dec b
    ld a, [$54ab]
    ld e, a
    and b
    ret nz

    db $e3
    nop
    ld a, e
    nop
    rst $38
    cp $e0
    db $fc
    nop
    ldh a, [$03]
    or b
    push hl
    sbc a
    rrca
    rrca
    pop af
    ld bc, $e900
    ldh [$a0], a
    jp hl


    ccf
    rst $38
    ccf
    rlca
    rst $00
    db $fd
    db $fc
    ei
    ld hl, sp-$0a
    rst $38
    pop af
    db $ed
    ld [c], a
    rst $18
    ret nz

    xor a
    sub b

jr_078_71f4:
    ld a, a
    rst $38
    nop
    rst $28
    nop
    xor e
    ld d, h
    ld d, a

jr_078_71fc:
    xor b
    rst $28
    rra
    db $10
    rst $18
    jr nz, jr_078_71c2

    ld b, b

jr_078_7204:
    db $fc
    pop hl
    cp d
    pop hl
    or [hl]
    pop hl
    rst $38
    cp $00
    db $fc
    ld bc, $03fa
    db $f4
    rlca
    rst $38

jr_078_7214:
    add sp, $0f
    ret nz

    rrca
    add b
    ccf
    nop
    ld a, a

jr_078_721c:
    db $ec
    jp hl


    db $e4
    ld a, [$01f0]
    ld sp, hl
    db $d3
    ldh [rIE], a
    ldh [$1f], a
    rst $38
    db $e3
    inc e
    di
    inc c
    di
    inc c
    ei
    inc b
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    sbc a
    rlca
    rst $20
    rst $38
    dec bc
    ei
    add l
    ld a, l
    adc d
    ld a, [hl]
    add h
    ld a, [hl]
    rst $28
    cp $fe
    db $fd
    db $fc
    adc h
    pop hl
    ei
    ld hl, sp-$06
    rst $38
    ld hl, sp-$0b
    ldh a, [$f4]
    ldh a, [$df]
    nop
    xor a
    db $fd
    nop
    db $fc
    pop hl
    ld e, l
    nop
    cp e
    nop
    ld d, l
    nop
    db $fd
    jr z, jr_078_72ab

    ld [c], a
    rst $30
    nop
    db $eb
    nop
    call nc, $ff00
    ldh [rSB], a
    nop
    rra
    nop
    rst $38
    db $e4
    rrca
    rst $38
    ret z

    rra
    call nc, $881f

jr_078_7279:
    ccf
    dec d
    ccf
    ld c, a
    jr z, jr_078_72fe

    dec [hl]
    ld a, a
    add [hl]
    db $eb
    ld h, c
    ldh [$e0], a
    db $76
    db $ec
    db $fd
    nop
    adc [hl]
    ldh [rP1], a
    rst $28
    db $10
    rst $20
    jr jr_078_7279

    rst $30
    jr jr_078_7298

    db $fc
    ei
    ret nz

jr_078_7298:
    rra
    adc d
    ld a, a
    add c
    db $dd
    ld a, a
    db $fc
    push hl
    xor d
    ld a, a
    ld bc, $e072
    ld a, a
    ld a, a
    ld l, a
    cp a
    cp a
    ccf

jr_078_72ab:
    cp a
    db $fc
    db $e3
    ld e, a
    rst $18
    and h
    ret


    rst $28
    db $fd
    db $fc
    db $fc
    db $fc
    add b
    pop bc
    ldh a, [$f0]
    rst $08
    rst $38
    ret nz

    jr c, jr_078_72c7

    or l
    ld a, [bc]
    ld a, [hl]
    ld bc, $fcbf
    rst $08

jr_078_72c7:
    jp nz, $e0ce

    ccf
    ld e, a
    sbc a
    cpl
    rst $08
    sub a
    cp a
    ld h, a
    ld c, e
    or e
    rst $38
    rst $38
    rst $18
    rst $38
    ldh [$8f], a
    rst $38
    xor a
    adc a
    xor a
    add a
    or a
    and a
    sub a
    ld l, e
    db $fd
    inc de
    ld h, h
    ret


    db $fc
    db $fc
    ld a, [$f4f8]
    ldh a, [rIE]
    ld [$ece0], a
    ldh [$eb], a
    db $e3
    ld [c], a
    rst $20
    rst $38
    rst $28
    rst $28
    ld [$ecef], a
    db $ec
    ld b, b

jr_078_72fe:
    rlca
    rst $38
    db $10
    ccf
    add b
    rst $38
    ld d, b
    db $fc
    add e
    ldh a, [$df]
    ld c, a
    ret nz

    rra
    nop
    ccf
    ld h, a
    pop bc
    db $fc
    ld bc, $c0ef
    dec bc
    nop
    rst $10
    ld [$00e4], sp
    nop
    ld bc, $0eff
    ret nz

    rst $00

jr_078_7320:
    add sp, -$18
    push de
    push de
    ld [$eadf], a
    push af
    push af
    ld [$0dea], a
    ldh [rP1], a
    ccf
    rst $38
    ret nz

    rlca
    ld hl, sp+$00
    rra
    add b
    and b
    jr z, jr_078_7320

    ld d, b
    ld b, l
    and d
    daa
    and $2c
    ret nz

    ld a, [bc]
    dec b
    ld h, l
    rst $38
    add d
    and b
    ld b, b
    ld e, a
    and b
    xor a
    ld d, b
    ld d, l
    push af
    xor d
    inc d
    pop hl
    xor b
    ld hl, sp-$20
    ld a, [hl+]
    rst $38
    ld bc, $bf1f
    ld [c], a
    rlca
    ld sp, hl
    ld bc, $807e
    call z, $0fe0
    rst $18
    nop
    ld bc, $dfdf
    ld e, a
    ld e, a
    pop hl
    rst $18
    ld e, a
    ld a, a
    ld e, a
    sbc a
    rra
    rst $20
    rlca
    add hl, sp
    pop bc
    dec l
    ldh [$73], a
    db $fc
    cp $ff
    ldh [$a8], a
    and l
    ld a, [hl]
    ld bc, $7a7f
    ldh [rIE], a
    ld e, a
    nop
    cpl
    nop
    sub a
    add b
    set 0, b
    rst $38
    push hl
    ldh [$8d], a
    ld [hl], c
    ld b, l
    cp c
    and d
    ld e, h
    rst $38
    jp nz, $a13c

    ld e, [hl]
    pop de
    ld l, $e8
    rla
    di
    ret nc

    cpl
    add b
    and l
    ret c

    jp nz, $bf3f

    ccf
    ld [hl], e
    rst $38
    dec bc
    ld h, c
    dec e
    ld [hl], c
    dec c
    ld h, b
    ld e, $74
    rst $38
    dec bc
    ld l, b
    rla
    ld [hl], h
    dec bc
    ld a, [hl-]
    dec b
    db $f4
    rst $38
    ld a, [c]
    db $f4
    di
    or $f1
    xor $e1
    ld l, a
    ld a, a
    ld h, b
    ld l, a
    ld h, b
    cpl
    and b
    rrca
    ret nz

    sub $e3
    rst $38
    rra
    sbc a
    ld h, $c6
    add hl, bc
    ldh a, [$80]
    ld a, a
    rst $38
    push de
    ld a, [hl+]
    ldh [$e0], a
    ld [$d5e0], a
    ret nz

    rst $38
    cp e
    add b
    ld [hl], a
    nop
    xor $01
    db $fd
    ld [bc], a
    rst $28
    ld a, [$7705]
    ld [$a1b2], sp
    rst $28
    db $10
    ld e, a
    cp a
    and b
    cp a
    ld b, b
    ld a, a
    add b
    cp $14
    ret nz

    cp l
    ei
    nop
    ei
    ld e, $c2
    rst $10
    nop
    xor l
    nop
    ld a, [bc]
    rst $38
    nop
    push af
    db $f4
    jp hl


    add sp, -$2e
    pop de
    and l
    rst $38
    and d
    jp nc, $a5d5

    xor d
    ld c, d
    ld b, l
    sub c
    rst $38
    adc b
    adc d
    ld d, l
    ld d, l
    xor d
    xor b
    ld d, h
    ld d, b
    rst $38
    and b
    and b
    ld b, e
    ld b, b
    adc [hl]
    add b
    inc e
    ld bc, $bdf7
    xor d
    ld d, c
    inc e
    ldh [$15], a
    dec b
    ld a, [bc]
    ld [bc], a
    rst $38
    push hl
    dec b
    ld [de], a
    nop
    inc bc
    add b
    or e
    xor d
    ld hl, sp-$20
    ldh [$fc], a
    push hl
    dec de
    and c
    and b
    ld b, b
    ld d, h
    xor b
    xor d
    cp a
    ld d, h
    dec b
    adc d
    and d
    ld d, l
    ld d, c
    add sp, -$20
    inc d
    rst $38
    ld [$3e38], a
    ld c, $0f
    inc bc
    inc bc
    nop
    ld a, a
    nop
    ld b, b
    ld b, b
    ld a, b
    ld a, b
    ld a, a
    ld a, a
    add d
    and c
    rst $38
    ccf
    cp a
    sbc a
    rst $18
    rst $08
    rst $28
    daa
    scf
    rst $38
    inc de
    dec de
    add hl, bc
    dec c
    db $e4
    and $f2
    ldh a, [$f3]
    ld sp, hl
    ld hl, sp-$12
    pop bc
    sbc b
    add l
    jp hl


    ld d, $75
    ld a, [bc]
    rst $38
    cp e
    inc b
    ld e, a
    nop
    ld a, [hl+]
    nop
    add h
    add b
    rrca
    ret


    pop bc
    push de
    pop bc
    inc c
    pop hl
    ld [$c4e1], sp
    pop hl
    ld [hl], h
    add c
    rst $38
    ld a, l
    ld [bc], a
    ld a, $01
    ld e, l
    ld [bc], a
    ccf
    nop
    rst $38
    sbc a
    add b
    xor a
    add b
    sub a
    add b
    rst $08
    ret nz

    rst $38
    inc de
    ldh [$84], a
    ld a, b
    ld b, c
    cp [hl]
    and b
    ld e, a
    rst $38
    ret nc

    cpl
    add sp, $17
    call nc, $fa2b
    dec b
    cp a
    ld [$7914], a
    nop
    add h
    inc bc
    ldh a, [$85]
    and d
    rst $38
    ld e, l
    push hl
    ld a, [de]
    adc e
    ld [hl], h
    dec b
    ld a, [$df0b]
    db $f4
    rla
    add sp, $2f
    ret nc

    inc c
    pop hl
    db $fc
    db $fd
    rst $38
    ld hl, sp-$05
    ldh a, [$f7]
    ldh a, [$f6]
    pop hl
    xor $fe
    cp $e3
    dec b
    push bc
    ld [bc], a
    ld a, [c]
    jr nz, jr_078_7503

    ret nc

    rst $38
    inc c
    jp hl


    inc b
    db $e3
    inc c
    jp nz, $b105

    rst $18
    ld b, $2a
    inc d
    ld d, l
    ld a, [hl+]
    jr c, @-$3d

    xor d
    ld d, l
    rst $38
    ld d, h
    xor e
    xor b

jr_078_7503:
    ld d, a
    ld d, h
    xor e
    inc bc
    dec sp
    rst $28
    inc bc
    ld a, e
    rlca
    ld [hl], a
    cp $e0
    rst $30
    rlca
    rst $10
    rst $38
    inc bc
    db $eb
    ld bc, $80f1
    or e
    nop
    inc bc
    rst $38
    ld [$000b], sp
    rlca
    sub b
    sub a
    ldh a, [$f7]
    xor a
    ldh [$ef], a
    ldh [$ef], a
    add [hl]
    add [hl]
    cp $fe
    pop hl
    ld bc, $fdff
    nop
    adc $00
    add [hl]
    nop
    inc h
    nop
    rst $38
    ld d, h
    nop
    ld d, h
    ld [bc], a
    db $10
    ld [bc], a
    db $10
    ld bc, $10f7
    ld sp, hl
    ld sp, hl
    cp [hl]
    ld l, e
    db $db
    jp $c7d7


    ld hl, sp-$02
    pop hl
    ld c, a
    and b
    ld c, e
    and b
    ld e, a
    rra
    push de
    ret nz

    db $eb
    rst $28
    ldh [$e5], a
    ldh [$f3], a
    ld a, [$fac0]
    ld hl, sp-$03
    add sp, -$08
    pop bc
    sub $60
    ld sp, $5f81
    adc $60
    ld d, a
    nop
    cp a
    rst $18
    nop
    ld d, l
    xor d
    db $eb
    inc d
    inc hl
    adc c
    ld a, a
    add b
    cp $15
    adc e
    ldh [$ef], a
    add sp, -$19
    ldh a, [$f7]
    db $f4

jr_078_7582:
    rst $30
    di
    ld a, [$c2f9]
    pop hl
    rst $18
    rst $18
    ld d, b
    daa
    rst $38
    ld sp, $1846
    rst $20
    add hl, bc
    or $02
    db $fd
    rst $38
    ld bc, $80fe
    ld a, a
    ld [hl+], a
    inc e
    xor b
    ld d, a
    dec de
    ld d, b
    xor a
    db $fc
    rst $20
    ret nc

    cpl
    ld a, e
    ld h, b
    call nc, $1f6b
    and c
    jp c, Jump_078_69d0

    db $fd
    cp $e1
    nop
    or $0b
    add b
    rst $38
    nop
    rst $38
    ei
    db $10
    rst $20
    add a
    and b
    add e
    and b
    rlca
    ld a, a
    ld [hl], b
    rrca
    jr nz, jr_078_75d4

    ldh [$1f], a
    ret nz

    cp $e1
    rst $38
    ld a, a
    ld a, a
    cp [hl]
    ld a, $5c
    sbc h
    and d
    ld b, b
    rst $38

jr_078_75d4:
    ld a, [hl]
    add b
    xor d
    ld d, h
    sub $28
    and d
    ld e, h
    ldh a, [$fc]
    ld b, c
    jr nc, jr_078_7582

    cp e
    ld h, b
    and [hl]
    ret nz

    ld hl, sp-$06
    rra
    rra
    ld hl, sp+$4f
    jp $8128


    db $10
    pop bc
    ld d, l
    nop
    xor a
    add b
    push de
    sbc a
    ret nz

    ld [$f1e0], a
    ldh a, [$34]
    add e
    ld d, l
    ld h, c
    ld d, l
    ld a, [hl]
    db $fc

jr_078_7602:
    ld [c], a
    xor e
    nop
    dec d
    nop
    jp z, $e8c0

    ld b, c
    push de
    push af
    db $ec
    and $aa
    db $f4
    db $e4
    cp $f4
    ld [c], a
    ld d, c
    nop
    ld a, a
    and d
    nop
    ld b, b
    nop

jr_078_761c:
    ld [$7400], a
    db $fc
    ldh [$fd], a
    ld d, h
    db $fc
    ld [c], a
    xor b
    nop
    xor b
    rst $10
    call nc, $ffab
    add sp, $57
    db $f4
    dec bc
    cp d
    ld d, l
    push de
    ld [hl+], a
    rst $38
    xor d
    ld d, c
    ld b, l
    cp b
    nop
    rst $00
    nop
    ret c

    rst $38
    nop
    rst $00
    jr jr_078_7602

    inc e
    ret nz

    inc e
    pop bc
    cp a
    nop
    db $e3
    nop
    rst $38
    jr nz, jr_078_761c

    ld c, a
    add c
    nop
    rst $38
    ld a, a
    ld bc, $02fe
    db $fc
    dec b
    db $fd
    dec de
    rst $00
    db $eb
    ld e, a
    sbc a
    and h
    ld h, b
    jp nz, $c0a0

    and l
    sub $28
    rst $38
    push hl
    add hl, de
    push bc
    add hl, sp
    xor e
    ld d, e
    swap e
    rst $38
    sub a
    ld h, a
    cpl
    rst $08
    sbc a
    ld e, a
    ld hl, sp-$06
    rst $38
    ldh a, [$f6]
    pop af
    push af
    pop hl
    db $ed
    db $e3
    db $eb
    rst $38
    db $e3
    db $eb
    jp $c7db


    rst $10
    pop af
    ldh a, [$94]
    inc l
    ld b, a
    inc b
    ld b, c
    ld d, l
    db $76
    and b
    ret nz

    xor d

jr_078_7693:
    add b
    ldh a, [$e9]
    ld d, l
    rst $38
    nop
    add d
    add b
    ld hl, sp-$08
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    ld a, [c]
    pop af
    ld d, h
    ld d, h
    xor b
    xor b
    ld d, d
    rst $30
    ld d, b
    add l
    add d
    db $f4
    ld h, b
    ld a, [hl+]
    ldh a, [rBGP]
    ld hl, sp-$41
    add e

jr_078_76b5:
    add d
    ld a, h
    ld b, c
    cp [hl]
    add b
    add sp, $40
    add b
    rst $38
    ccf
    ld b, b
    adc a
    and b
    ld d, e
    ld d, h
    xor b
    add b
    rst $38
    ld a, a
    ld b, b
    ccf
    add b
    rra
    ld c, b
    add a
    ld h, d
    ld a, a
    add c
    jr nc, jr_078_7693

    jr jr_078_76b5

    inc c
    ldh a, [$f7]
    ld hl, $02ff
    db $fc
    add hl, bc
    pop af
    ld [hl+], a
    jp nz, $1515

    xor a
    ld a, [hl+]
    ld a, [hl+]
    nop
    nop
    ld a, h
    ldh [$1f], a
    add sp, -$7f
    xor a
    reti


    xor a
    or a
    add c
    ret c

    ld hl, $01fe
    jr nz, @+$43

    db $fd
    ld bc, $f3ff

jr_078_76fb:
    inc bc
    adc a
    rrca
    ld a, a
    ld a, a
    ld e, a
    sbc a
    db $fc
    inc b
    and a
    add d
    cpl
    cp $fe
    rst $00
    rst $10
    add a
    or a
    cp a
    adc a
    xor a
    rrca
    ld l, a
    rra
    ld e, a
    cp $e0
    rst $18
    db $eb
    ccf
    cp a
    add sp, -$1b
    db $fd
    add hl, hl
    ld b, b
    ei
    ei
    ld a, [$fbff]
    rst $18
    ret nz

    rlca
    nop
    pop de
    ld hl, sp-$58
    rst $28
    cp $04
    rst $38
    add b
    ld h, b
    ld b, b
    add b
    rst $38
    db $fc
    ld sp, hl

jr_078_7736:
    ld bc, $20f1
    rst $08
    jr nz, jr_078_76fb

    add b
    ld e, a
    ret nz

    cpl
    rst $38
    ldh [$57], a

jr_078_7743:
    ldh a, [$2a]
    push de
    dec d
    ld_long $ff0a, a
    ld [hl], l
    add l
    ld a, [hl-]
    jp nz, $e01d

    rrca
    ldh a, [rIE]
    rlca
    ld hl, sp+$03
    nop
    inc a
    ld c, b
    add l
    and l
    rst $38
    ld d, b
    ld b, d
    or b
    ld [$09e6], sp
    and $10
    rst $20
    rst $08
    ld d, b
    adc a
    ld c, [hl]
    add e
    sub b
    ld b, c
    rra
    ld e, a
    ld c, a
    rst $00
    cpl
    xor a
    rrca
    jr jr_078_7736

    ld d, $c3
    ret z

    pop bc
    pop af
    push af
    db $fc
    ld d, $c7
    sub $03
    ei
    ei
    or $f7
    push af
    rst $30
    jp z, $e3fc

    rst $30
    ld hl, sp-$20
    nop
    adc b
    ldh [$fc], a
    jp hl


    daa
    ldh a, [rIE]
    inc de
    ld hl, sp+$0b
    ld hl, sp+$13
    ld hl, sp-$75
    ld hl, sp+$3f
    ld b, l
    db $fc
    add hl, hl
    db $fc
    dec d
    db $fc
    ld [hl], b
    db $e3
    ld b, c
    daa
    rst $00
    and b
    rra
    jr nz, jr_078_7743

    and b
    ld [hl], h
    ldh [$d1], a
    ld [hl+], a
    rst $38
    nop
    rst $38
    rla
    and a
    dec bc
    db $d3
    inc hl
    rlc e
    db $e3
    ccf
    dec d
    pop hl
    ld b, $f0
    rlca
    jr nc, @+$25

    ret nz

    ld l, a
    ld [$f898], sp
    ld hl, $c746
    ld hl, sp-$3f
    adc a
    xor a
    adc e
    ldh [$fd], a
    db $e4
    ld a, [$fbd1]
    nop
    pop hl
    inc c
    pop hl
    db $fc
    db $e3
    and b
    ld h, b
    jr nz, @+$22

    rst $38
    rst $38
    ld hl, $16f4
    or $0a
    ld a, [$fa12]
    rst $38
    ld [$04fc], sp
    cp $02
    cp $05
    rst $38
    inc h
    db $ed
    ldh [$e5], a
    pop hl
    ret nz

    pop hl
    ret nz

    db $fc
    ldh [$7f], a
    sbc [hl]
    ld b, $e1
    add [hl]
    rst $18
    rst $18
    rrca
    rst $28
    rrca
    rst $28
    ld [bc], a
    add b
    rst $30
    inc bc
    ld sp, $fefb
    pop hl
    and b
    push bc
    ld c, $a3
    db $fc
    db $fd
    add [hl]
    jp nz, $c088

    ret nz

    inc c
    and l
    adc h
    pop bc
    db $fc
    push hl
    ld a, h
    pop bc
    ld l, [hl]
    and b
    nop

Jump_078_7827:
    add sp, -$78
    rst $38
    db $d3
    ld [bc], a
    rst $38
    ld hl, $39c0
    rlca
    ldh [$78], a
    pop bc
    sbc a
    ret nz

    rst $38
    ld c, a
    ldh [$27], a
    ldh a, [$03]
    ld hl, sp+$03
    ld [$01e9], sp
    jp nc, Jump_000_3500

    ld a, [bc]
    add b
    adc d
    db $e3
    inc bc
    ei
    inc de
    ld a, a
    db $eb
    dec bc
    di
    ld d, a
    and a
    daa
    rst $10
    add [hl]
    rst $00
    add $4c
    and c
    jp Jump_000_18db


    pop bc
    rst $38
    db $e3
    ld a, b
    add e
    ld d, b
    rst $38
    rst $38
    adc b
    cp $50
    db $fc
    and c
    ld hl, sp-$3f
    ldh a, [$9f]
    and b
    ldh a, [$c0]
    ldh [$80], a
    inc e
    jr nz, jr_078_78df

    ld h, b
    ld [bc], a
    rst $28
    ld [$d415], a
    dec hl
    ld [bc], a
    add c
    ld l, b
    rla
    pop bc
    rst $38
    dec b
    add c
    ld c, b
    ld b, e
    and e
    and a
    ld d, a
    rlca
    or a
    push af
    inc bc
    ei
    inc d
    add c
    rst $38
    ld d, l
    rst $20
    ret nz

    ld d, l
    xor e
    rst $38
    ld a, [$e0f8]
    ld [$e0f4], a
    xor b
    ldh a, [$e0]
    nop
    ld a, [$e0ec]
    add d
    add sp, -$20
    ld [bc], a
    rst $38
    ld b, l
    rst $38
    ld [bc], a
    cp a
    ld d, a
    and a
    or a
    ld b, a
    ld l, a
    adc a
    db $fd
    ret nz

    rrca
    rst $38
    adc a
    ld c, a
    ld c, a
    adc a
    add a
    ld d, a
    db $d3
    jp $bb6f


    add e
    cp e
    add e
    rst $28
    ld b, c
    ld [hl], a
    rlca
    ld [$bfe1], a
    inc bc
    ld b, e
    inc [hl]
    inc a
    ret nz

    ret nz

    ld a, $47
    jr nc, @+$01

    rrca
    jr z, jr_078_78ee

    inc d
    dec bc
    ld l, d
    ld h, l
    push af
    ld a, a
    ld a, [c]
    ld a, d

jr_078_78df:
    ld a, c
    ld a, l
    ld e, h
    ld a, [hl]
    ld l, [hl]
    inc e
    ldh [$fe], a
    dec [hl]
    push hl
    ld a, a
    ld b, b
    cp a
    and b
    ld e, a

jr_078_78ee:
    rst $38
    ld d, l
    rst $38
    ld a, a
    jr nz, jr_078_7933

    sub h
    rra
    ret z

    rrca
    push hl
    db $d3
    ld bc, $e4f0
    pop hl
    pop af
    jp nz, $7a01

    jp nz, Jump_000_3f80

    rst $38
    nop
    inc bc
    ret nz

    sub e
    dec bc
    ld c, c
    dec d
    sub h
    rst $38
    ld a, [bc]
    ld c, b
    ld d, $94
    dec bc
    ld c, b
    rla
    sub b
    scf
    rrca
    ld c, b
    rla
    nop
    daa
    ccf
    cp a
    ld [hl], h
    pop bc
    ld b, $a7
    ld a, $90
    ld h, d
    ei
    ldh [$e0], a
    add b
    sbc a
    rst $08
    ld b, d
    or d
    pop bc
    and $b3
    ld h, b
    rrca

jr_078_7933:
    rrca
    ld d, [hl]
    pop bc
    ld a, [hl-]
    ld h, d
    dec a
    inc bc
    jp Jump_000_03ff


    di
    sub a
    xor b
    xor e
    sub h
    push de
    jp z, $caff

    push de
    push hl
    ld [$e5ea], a
    db $e4
    ld [$e8ff], a
    push hl
    ld d, b
    cpl
    xor b
    sub a
    push de
    jp z, $eaff

    push hl
    push af
    ld [hl], d
    ldh [$a1], a
    inc e
    nop
    ld a, e
    xor e
    ld d, h
    ld h, h
    jp hl


    ld d, h
    xor e
    ld a, [hl+]
    dec d
    ldh [rWX], a
    cp a
    xor d
    ld d, l
    dec b
    ld [bc], a
    nop
    ld hl, sp-$13
    xor c
    rlca
    di
    rst $30
    nop
    ld e, e
    add c
    reti


    and [hl]
    db $f4
    di
    ld [bc], a
    dec b
    or a
    inc [hl]
    jp Jump_000_3d0a


    ld h, c
    rst $38
    db $10
    ld a, [c]
    jr nz, jr_078_798c

    ld [hl], a
    db $fd

jr_078_798c:
    dec b
    ld a, [$c322]
    dec b
    ld a, [$9402]
    ld b, b
    cp a
    inc bc
    ei
    jp $0b3b


    inc bc
    ret nz

    and c
    ld l, a
    cp a
    adc a
    rra
    rra
    rra
    rst $18
    db $e3
    sla c
    ldh [$df], a
    xor $e0
    pop hl
    ldh [$e7], a
    ld hl, sp-$1f
    pop hl
    ld d, [hl]
    rst $38
    xor b
    and c
    ld b, b
    sbc a
    nop
    ld l, d
    dec d
    push de
    ld [hl], l
    ld a, [hl+]
    or [hl]
    inc bc
    ld bc, $e1cb
    nop
    cp a
    ld b, b
    xor d
    ld [$62fe], sp
    nop
    rst $30
    nop
    ld d, a
    and b
    and d
    ld d, l
    ld d, l
    ei
    and d
    and [hl]
    add d
    nop
    xor d
    ld d, l
    nop
    nop
    or a
    rst $38
    rlca
    or a
    rlca
    rst $10
    rlca
    ld e, e
    add e
    adc e
    ld a, l
    ld d, e
    ldh a, [$e3]
    sbc [hl]
    add b
    jp hl


    db $e4
    push af
    or [hl]
    nop
    rst $18
    db $fd
    db $fc
    ld d, b
    xor a
    adc d
    ldh [$e0], a
    rst $18
    nop
    sbc a
    or l
    nop
    or c
    nop
    ld h, l
    cp $e0
    inc a
    ldh [rHDMA4], a
    rst $18
    nop
    nop
    add $00
    xor $fe
    ldh [$ce], a
    nop
    cp a
    pop bc
    ld bc, $1fdf
    ccf
    ccf
    or e
    ld l, c
    rst $18
    rst $38
    ret nz

    sbc $c1
    rst $18
    ret nz

    cp d
    add l
    cp a
    ld a, a
    add b
    cp d
    add l
    ld a, a
    nop
    ld a, d
    dec b
    ld [hl-], a
    rlca
    call c, Call_000_0426
    adc h
    ldh [rHDMA3], a
    xor b
    xor d
    db $fc
    rst $20
    adc e
    adc l
    rst $38
    ld d, c
    ld d, l
    adc c
    xor l
    ld b, c
    ld h, [hl]
    adc b
    xor d
    sbc a
    ld b, h
    ld h, [hl]
    adc b
    xor e
    ld b, h
    ld c, h
    ld [hl+], a
    ld l, [hl]
    adc b
    ld b, [hl]
    rst $38
    nop
    ld b, e
    nop
    ld c, c
    nop
    inc c
    nop
    daa
    xor a
    nop
    ld sp, $1c00
    push de
    ret nz

    dec sp
    ret


    add b
    di
    inc bc
    inc bc
    rrca
    cp e
    add b
    add [hl]
    db $e3
    nop
    nop
    nop
    ld c, l
    add hl, bc
    rst $38
    ld [c], a
    ld [$f808], sp
    db $e3
    ld a, [c]
    db $e3
    add hl, hl
    di
    jp hl


    inc e
    ld [c], a
    ld [c], a
    pop hl
    ldh [$0a], a
    ld a, [bc]
    ld a, [bc]
    ldh [$f7], a
    pop hl
    ld [c], a
    rst $18
    pop hl
    ld c, b
    push de
    ld [c], a
    ret nz

    ld [$e3a5], a
    dec bc
    rst $38
    ldh [$e0], a
    db $e4
    ld [$ede0], sp
    ld [hl], $a1
    pop hl
    dec bc
    rrca
    rst $38
    ldh [$0c], a
    inc c
    sub h
    db $e3
    ldh [$ee], a
    adc h
    jp nz, $e0e0

    ldh [$0e], a
    jr z, jr_078_7b09

    pop af
    ldh [$e4], a
    sbc $e0
    ld c, $40
    dec sp
    push hl
    ld b, b
    db $eb
    ld b, d
    ld [c], a
    sbc $e2
    ldh [$f3], a
    inc bc
    ldh [$0c], a
    pop hl
    db $e3
    inc e
    ldh [$f4], a
    dec b
    pop hl
    dec bc
    dec bc
    dec c
    ldh [$d7], a
    ldh [$e3], a
    rst $18
    rst $20
    ld b, d
    ret nz

    ld a, [c]
    dec bc
    inc hl
    ldh [$a0], a
    rst $30
    sbc a
    ldh [$e0], a
    ld [c], a
    ld l, c
    add b
    di
    sub h
    pop bc
    pop bc
    ret nz

    rst $30
    add hl, bc
    ldh [$e2], a
    dec c
    rst $38
    pop hl
    ldh [$f3], a
    add hl, bc
    inc c
    rra
    ld [c], a
    ldh [$f8], a

jr_078_7aef:
    dec c
    dec c
    ret nz

    ei
    ldh [$fd], a
    rst $08
    xor e
    ldh [$fd], a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_078_7b09:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, e
    db $d3
    nop
    nop
    nop
    db $fd
    nop
    rst $38
    pop hl
    ld bc, $0302
    inc b
    dec b
    ld b, $fc
    push af
    ld [c], a
    ei
    pop af
    ld bc, $0807
    add hl, bc
    ld a, [bc]
    dec bc
    ei
    inc c
    dec c
    rst $18
    push af
    ld c, $0f
    db $10
    ld de, $ff12
    inc de
    inc d
    dec d
    ld d, $00
    nop

jr_078_7b3c:
    rla
    jr jr_078_7b3c

    add hl, de
    cp c
    db $ec
    ld a, [de]
    dec de
    nop
    inc e
    dec e
    ld e, $ff
    rra
    jr nz, jr_078_7b6d

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    rst $28
    dec h
    ld h, $27
    jr z, jr_078_7aef

    db $eb
    add hl, hl
    ld a, [hl+]
    dec hl
    rst $38
    inc l
    dec l
    ld l, $2f
    jr nc, jr_078_7b93

    ld [hl-], a
    inc sp
    ld a, a
    inc [hl]
    dec [hl]
    nop
    nop
    ld [hl], $37
    jr c, jr_078_7be5

jr_078_7b6d:
    db $eb
    rst $38
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld e, a
    ld b, c
    ld b, d
    ld b, e
    ld bc, $5244
    ldh [rLYC], a
    ld e, c
    db $ec
    rst $38
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld l, a
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    inc sp
    ldh [rHDMA2], a

jr_078_7b93:
    ld d, e
    add hl, sp
    db $ed
    rst $38
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    dec bc
    ld e, d
    rst $10
    ld e, e
    ld e, h
    ld e, l
    inc de
    ldh [$5e], a
    ld a, [de]
    rst $28
    ld e, a
    ld h, b
    rst $38
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    rst $28
    nop
    nop
    ld l, c
    ld l, d
    ld a, [$6bd0]
    ld l, h
    ld l, l
    or a
    ld l, [hl]
    ld l, a
    ld [hl], b
    sub $c2
    ld [hl], c
    ld [hl], d
    jp c, $73d0

    cp a
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    or l
    pop bc
    ld a, d
    cp $bb
    pop de
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, a
    add b
    or $95
    ret nz

    add c
    add d
    sbc e
    pop de
    add e
    add h

jr_078_7be5:
    add l
    add [hl]
    or a
    add a
    ld a, a
    adc b
    ld [hl], l
    ret nz

    adc c
    ld bc, $d17b
    adc d
    cp a
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    ld h, d
    ldh [$91], a
    cp $5c
    db $d3
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    rst $30
    sbc c
    sbc d
    sbc e
    inc a
    call nc, $9d9c
    sbc [hl]
    sbc a
    rst $18
    and b
    and c
    and d
    and e
    and h
    inc e
    call nc, $a6a5
    ld a, a
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    db $fc
    or h
    rst $38
    xor [hl]
    xor a
    xor a
    or b
    or c
    or d
    or e
    or h
    nop
    db $dd
    or [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
