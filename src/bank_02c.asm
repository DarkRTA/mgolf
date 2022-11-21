; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02c", ROMX[$4000], BANK[$2c]

    pop de
    ld a, d
    ld a, b
    ld a, e
    ld l, b
    ld b, b
    ld [hl], b
    ld b, b
    push af
    ld b, l
    inc h
    ld c, b
    adc e
    ld c, c
    rst $10
    ld c, c
    jr nz, jr_02c_405c

    dec hl
    ld c, d
    or b
    ld b, b
    ld h, d
    ld c, h
    ld l, d
    ld c, h
    ld [hl], h
    ld d, d
    ld b, c
    ld d, h
    pop hl
    ld d, l
    daa
    ld d, [hl]
    ld l, l
    ld d, [hl]
    ld l, [hl]
    ld d, [hl]
    xor d
    ld c, h
    db $f4
    ld d, [hl]
    db $fc
    ld d, [hl]
    ld l, a
    ld e, l
    ld [hl], l
    ld h, c
    sbc c
    ld h, h
    ld a, [$4d64]
    ld h, l
    ld c, [hl]
    ld h, l
    inc a
    ld d, a
    call nc, $dc65
    ld h, l
    xor [hl]
    ld l, b
    ld l, a
    ld l, d
    or $6b
    ld c, d
    ld l, h
    sbc e
    ld l, h
    sbc h
    ld l, h
    inc e
    ld h, [hl]
    ld [hl+], a
    ld l, l
    ld a, [hl+]
    ld l, l
    push af
    ld [hl], d
    or l
    db $76
    sub c
    ld a, c
    rst $38
    ld a, c
    ld c, d
    ld a, d
    ld c, e
    ld a, d

jr_02c_405c:
    ld l, d
    ld l, l
    jr nz, @+$4c

    ld l, l
    ld d, [hl]
    ld c, l
    ld h, l
    sbc e
    ld l, h
    ld c, d
    ld a, d
    nop
    nop
    nop
    nop
    inc d
    ld [de], a
    nop
    nop
    add b
    nop
    jr nz, jr_02c_40c9

    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld h, d
    ld a, l
    jp hl


    inc l
    add sp, $7e
    rst $38
    ld a, a
    ld b, b
    inc bc
    sub $01
    ld b, b
    ld [bc], a
    ld e, a
    ld [bc], a
    add sp, $7e
    jp hl


    inc l
    sub $01
    rst $38
    ld a, a
    ld b, b
    inc bc
    ld a, a
    inc hl
    rra
    ld h, h
    ld b, [hl]
    db $10
    ld b, b
    inc bc
    sbc a
    ld [bc], a
    dec e
    nop
    ld b, [hl]
    db $10
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $38
    jr jr_02c_40cb

    dec [hl]
    dec l
    ld c, [hl]
    ld a, a
    ld e, h
    ld [hl], a
    rst $38
    jr z, @+$41

    dec hl
    ccf
    cpl
    inc a
    scf
    inc [hl]
    rst $38
    nop
    nop
    ldh a, [$f0]
    ld l, b
    sbc b

jr_02c_40c9:
    db $e4
    inc a

jr_02c_40cb:
    rst $38
    ld a, h
    call nc, $dc74
    ld hl, sp-$48
    ld hl, sp-$58
    rst $38
    inc hl
    ld [hl+], a
    inc bc
    inc bc
    rlca
    dec b
    ld c, $0b
    rst $38
    rlca
    rlca
    rrca
    rrca
    dec bc
    dec bc
    ld b, $06
    rst $38
    ld hl, sp+$08
    ldh a, [$90]
    ld a, b
    add sp, $38
    ld hl, sp-$01
    ldh a, [$d0]
    add sp, $68
    ret c

    ret c

    ldh a, [$f0]
    sbc $e2
    ldh [rTAC], a
    rrca
    ld c, $0f
    rst $38
    pop hl
    ld c, $0f
    rst $38
    ld c, $07
    rlca
    ldh [$e0], a
    ldh a, [$30]
    ld hl, sp-$01
    ld a, b
    ld hl, sp+$58

jr_02c_4110:
    ld hl, sp-$38
    ld hl, sp-$68
    ld hl, sp-$01
    jr jr_02c_4110

    ld [$0707], sp
    ld b, $07
    inc c
    rst $38
    rrca
    inc c
    rrca
    rlca
    rlca
    dec bc
    ld c, $0d
    cp $fa
    ldh [$f8], a
    adc b
    ld [hl], b
    ret nc

    ldh a, [$b0]
    ld a, b
    rst $38
    ret z

    ldh a, [$f0]
    ld hl, sp+$58
    add sp, -$08
    ld [hl], b
    rst $38
    ld [hl], b
    rlca
    rlca
    ld [$1308], sp
    ld de, $ff11
    ld de, $1717
    rra

jr_02c_4148:
    add hl, de
    rrca
    ld [$ff0f], sp
    inc c
    ret nz

    ret nz

    and b
    and b
    ldh a, [$50]
    ret nc

    ld e, a
    ld d, b
    ldh a, [$30]
    ldh a, [$50]
    cp $e0
    db $10
    pop bc
    ldh [$bd], a
    dec b
    add h
    ldh [$0a], a
    rra
    inc d
    rra
    rst $38
    ldh [$0e], a
    rst $30
    ld c, $f0
    db $10
    and b
    ldh [$e8], a
    ld hl, sp+$78
    ldh [rIE], a
    jr nz, jr_02c_4148

    ldh a, [$90]
    ldh a, [$e0]
    ldh [rTAC], a
    rst $38
    rlca
    inc c
    dec bc
    inc de
    ld e, $17

jr_02c_4185:
    dec e
    rra
    ld a, a
    jr jr_02c_41a9

    ld a, [de]
    rrca
    ld a, [bc]
    rrca
    ld [$e0c0], sp
    rst $38
    ld h, b
    ret nc

    jr nc, @-$6e

    ld [hl], b
    xor b
    ld hl, sp-$08
    rst $38
    ret c

    ld hl, sp+$18
    ldh a, [rSVBK]
    rlca
    inc b
    rlca
    rst $38
    rlca
    rlca
    dec b
    rrca
    dec bc

jr_02c_41a9:
    rrca
    rrca
    rra
    ei
    rra
    rla
    ret nz

    ldh [$e0], a
    ldh [rSVBK], a
    ld d, b
    jr nc, jr_02c_4185

    rst $38
    ldh [$e0], a
    ldh [$50], a
    ret nz

    ld [c], a
    ld [hl+], a
    ldh [rDIV], a
    ld c, $e7
    ld [$080e], sp
    ld a, $e2
    ld d, a
    ldh [$e0], a
    ldh [rNR10], a
    rst $38
    db $10
    jr c, jr_02c_4209

    ld h, h
    ld b, h
    db $fc
    db $fc
    ld hl, sp-$01
    adc b
    ld hl, sp-$58
    ld hl, sp+$28
    rlca
    ld b, $03
    rst $38
    inc bc
    ld b, $07
    rrca
    dec bc
    rra
    ld d, $1f
    ei
    rra
    rrca
    ld b, b
    pop hl
    ld [$10f0], sp
    add sp, -$08
    ei
    ld hl, sp-$08
    add b
    ldh [rSVBK], a
    or b
    ldh a, [$60]
    ld h, b
    add c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02c_4206:
    rst $38
    rst $38
    di

jr_02c_4209:
    ld a, [c]
    push af
    rst $38
    rst $38
    xor d
    rst $38
    ld d, b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    rst $38
    nop
    db $fd
    rst $38
    rst $38
    cp a
    rst $38
    ld d, d
    rst $38
    rst $38
    nop
    cp $00
    ld [$f600], a
    nop
    rst $38
    xor d
    nop
    ld d, e
    cp $fe
    db $d3
    cp $fe
    rst $28
    cp $fd
    cp $ff
    cp $e0
    xor a
    cp $fd
    ei
    db $fc
    ld d, a
    call nc, $ebe0
    cp $f7
    cp $eb
    cp $ee
    ldh [$eb], a
    cp $7f
    ld a, [hl]
    push de
    cp $ab
    cp $ea
    ldh [$f9], a
    ei
    rst $38
    rst $38
    rst $38
    cp $ae
    rst $30
    db $fd
    ei
    ld hl, sp-$20
    ld [c], a
    ld a, [hl]
    ld [hl], a
    cp [hl]
    ld l, e
    rst $10

Jump_02c_4262:
    cp [hl]
    ld a, a
    ld a, [hl]
    call c, Call_000_3ee0
    ldh [$e1], a
    ld sp, hl
    db $fc
    rst $38
    ei
    ei
    cp $fe
    rst $38
    rst $38
    xor e
    ei
    cp c
    ld sp, hl
    ret nz

    db $e3
    ldh [$e0], a
    xor e
    ld a, [hl]
    ld a, a
    call c, $ffe0
    cp h
    ret nz

    ld [c], a
    add b
    db $eb
    rst $38
    rst $38
    ld d, b
    cp $80
    and $52
    cp $87
    pop hl
    rst $38
    nop
    ld d, b
    ld h, a
    scf
    ld l, a
    ld d, a
    rst $38
    ld l, a
    ld [hl], a
    ld l, a
    ld [hl], l
    ld l, a
    ld [hl], d
    ld l, a
    jr @+$01

    ld h, b
    rst $38
    nop
    add hl, bc
    or $f5
    or $f3
    cp $fc
    ldh [$57], a
    or $a7
    or $09
    ld b, $ff
    rst $38
    nop
    xor e
    nop
    ld a, a
    nop
    ld d, l
    nop
    dec hl
    rst $38
    nop
    ld bc, $5500
    add b
    ld bc, $0100
    db $fd
    add b
    cp $e4
    call nc, $8001
    add c
    xor d
    nop
    rst $38
    call nc, $fe81
    add b
    xor d
    add b
    cp $80
    or $7d
    ldh [rP1], a
    add d
    db $e4
    pop hl
    add sp, $00
    ret nc

    nop
    rst $38
    xor b
    nop
    ld b, b
    nop
    and b
    nop
    nop
    ld [bc], a
    rst $38
    add b
    nop
    nop
    add hl, bc
    ld bc, $000f
    rla
    rst $38
    ld bc, $022f
    sbc a
    ld bc, $032f
    ld e, a
    rst $38
    dec b
    cp a
    inc bc
    ld e, a
    nop
    ld [bc], a
    nop
    dec h
    rst $38
    nop
    dec bc
    nop
    sub l

jr_02c_430c:
    nop
    cpl
    ld bc, $ff57
    ld [bc], a
    cp [hl]
    inc b
    ld e, h
    rlca
    rst $38
    jr jr_02c_4395

    rst $38
    jr nz, jr_02c_430c

    ld b, b
    ret nz

    add e
    add b
    ld [$ff03], sp
    db $10
    ld c, $25
    dec e
    ld [$10f8], sp
    ld [hl], b
    rst $38
    ld hl, $42e0

jr_02c_432f:
    pop bc
    add h
    add e
    add hl, bc
    rlca
    rst $38
    ld [de], a
    rrca
    dec h
    rra
    ld c, d
    ld a, [hl-]
    sbc h
    ld [hl], l
    rst $38
    jr c, jr_02c_432f

    ld e, a
    ldh [$aa], a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $20
    ldh a, [$a2]
    rst $00
    ld a, a
    nop
    nop
    rst $38
    rst $38
    dec h
    rst $38
    ldh [$1f], a
    sbc d
    rst $20
    ld de, $dffb
    and $fd
    db $db
    ld a, $ff
    ldh a, [$e0]
    ld d, l
    rst $38
    push af
    nop
    sbc d
    ret nz

    ld d, l
    reti


    ret nz

    xor d
    rst $38
    srl a
    rst $38
    rla
    cp $2e
    db $fd
    ld e, l
    ei
    cp e
    rst $30
    rst $38
    ld h, a
    or $f4
    xor $ce
    db $ed
    sbc a
    ccf
    rst $38
    ld [hl], a
    ld hl, sp-$30
    and $ce
    sbc a
    cp e
    ld a, l
    rst $38
    ld h, a
    pop af
    db $d3
    push hl
    and e
    db $dd
    ccf
    adc a
    rst $38
    dec c
    rst $20
    dec bc

jr_02c_4395:
    rst $30
    rlca
    di
    and a
    ei
    rst $38
    ld d, a
    ei
    rst $30
    ei
    rrca
    inc bc
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $38
    cp a
    rst $28
    cp a
    rst $38
    cp a
    pop af
    rst $18
    db $fc
    db $e3
    rst $38
    add sp, -$57
    ret nz

    rst $38
    ret


    call $f769
    reti


    db $ed
    db $db
    cp $e7
    adc e
    cp l
    ld d, c
    cp l
    rst $38
    inc bc
    ld a, e
    add a
    ld [hl], l
    xor l
    ld [hl], l
    adc l
    ld [hl], a
    rst $18
    and a
    ld [hl], e
    sub e
    ld a, c
    or $ba
    ldh [$fe], a
    inc bc
    sbc a
    ld b, $fb
    rlca
    ei
    and [hl]
    xor [hl]
    ld [c], a
    cp b
    pop hl
    rst $30
    jp c, $e0b4

    rst $28
    db $fc
    ld [c], a
    db $db
    cp a
    cp h
    pop hl
    cp $ff
    rst $30
    db $fd
    rst $38
    or $fc
    ldh [$ea], a
    rst $38
    ld d, a
    rst $38
    cp $b4
    jp hl


    xor $d8
    ldh [$cb], a
    xor e
    ld a, l
    or e
    ld a, a
    ld a, l
    cp e
    ld a, l
    add e
    ld a, l
    rst $38
    ld bc, $c075
    cp $24
    ldh [rIF], a
    inc bc
    rst $30
    ei
    di
    ei
    ld sp, hl
    rst $38
    ei
    ei
    db $fd
    ld d, h
    db $fd
    xor c
    cp $00
    rst $38
    rst $38
    xor a
    cp a
    sub l
    cp a
    jp z, $c0df

    rst $38
    rst $18
    push hl
    ldh [$bf], a
    rst $38
    push de
    rst $38
    ld a, [hl+]
    rst $38
    ld a, a
    ldh [rIE], a
    ld d, e
    rst $30
    and [hl]
    ldh a, [rTAC]
    rst $38
    ldh a, [rTAC]
    ld b, b
    dec a
    ld a, [hl]
    ld c, a
    rra
    ld a, c
    xor a
    inc bc
    dec b
    rst $18
    ld [$c1e6], a
    rrca
    db $fd
    ret nz

    nop
    rst $10
    rst $18
    ldh [$fe], a
    db $f4
    ret nz

    xor d
    pop de
    and b
    db $fd
    rst $38
    di
    cpl
    ld a, a
    xor $e1
    ld [$3fe1], a
    ret nz

    adc a
    ld [hl], b
    rst $28
    ld hl, $04de
    ei
    pop af
    db $e3
    cp a
    ccf
    ld a, [$02fd]
    call nc, Call_000_2fe1
    ret nc

    nop
    rst $38
    ld [bc], a
    db $fd
    rst $38
    nop
    rst $38
    ld_long a, $fffa
    rst $38
    db $eb
    dec bc
    ld a, [hl]
    jp nz, $bfe1

    ld b, b
    nop
    rst $38
    inc b
    ei
    ld d, l
    ldh [$7f], a
    rst $38
    rst $38
    db $e3
    rst $38
    ld e, c
    rst $38
    rst $30
    adc d
    and b
    add hl, hl
    rst $18
    db $fd
    jp nz, $e1f6

    ld a, a
    ld a, h
    and b
    push hl
    ld a, b
    and b
    ldh [$c3], a
    push bc
    cp l
    dec [hl]
    ldh [$50], a
    ld sp, $d3e0
    jp $e1e4


    xor a
    rst $38
    ld d, l
    dec d
    db $fc
    ldh [$7b], a
    or c
    and b
    ld e, l
    ld [hl], a
    ldh [$2e], a
    add sp, -$76
    and e
    ret nz

    nop
    rst $30
    and b
    sub $85
    ld d, l
    jp nz, Jump_000_33d5

    ret nz

    db $ed
    inc bc
    rst $38
    or a
    or b
    ld [c], a
    ld b, l
    push bc
    ld b, c
    pop bc
    rla
    and b
    xor [hl]
    adc l
    ld [hl], b
    ret


    cp $e0
    db $e4
    jr nz, jr_02c_44dd

jr_02c_44dd:
    ld b, $00
    inc bc
    nop
    ld [hl], b
    cp e
    nop
    add hl, sp
    add d
    add b
    stop
    inc b
    ld a, h
    add b
    ld b, b
    cpl
    nop
    ld c, $00
    inc e
    ld [hl], h
    add b
    ld [bc], a
    db $e4
    ldh [$6d], a
    add c
    ld e, a
    stop
    and l
    nop
    ld [$8864], sp
    ld b, b
    adc d
    and b
    cp b
    call nc, $b0e1
    db $e3
    db $dd
    pop bc
    nop
    rst $38
    ld b, h
    add $a0
    ld d, l
    db $f4
    or e
    and b
    call Call_000_15c3
    ld e, a
    add b
    ld [bc], a
    rrca
    ld d, b
    ld bc, $2ad7
    rst $38
    and b
    or e
    and b
    xor b
    xor l
    and b
    and d
    rst $38
    push hl
    ld [$a0a9], sp
    ld hl, $c4ba
    ld b, c
    add b
    rst $38
    adc b
    rst $38
    ld a, a
    jr nz, @+$01

    ld d, l
    nop
    add l
    nop
    ld [de], a
    ld a, [bc]
    add b
    db $fd
    ld bc, $8506
    ld a, a
    add h
    rra
    and b
    inc bc
    ld d, h
    rst $28
    nop
    ld a, [bc]
    nop
    ld hl, $e276
    nop
    rst $38
    jr z, @+$01

    rst $38
    add l
    rst $38
    db $10
    ld a, a
    add d
    rrca
    ld d, b
    ld a, $cd
    add b
    add l
    nop
    db $10
    rst $38
    db $10
    dec b
    add b
    and b
    pop hl
    ld a, a
    ld b, d
    rst $38
    ld [$601f], sp
    rlca
    cp b
    ld d, l
    and b
    ld [hl], l
    add b
    inc d
    ret nz

    ld d, h
    jp hl


    ld h, b
    ld e, a
    rst $38
    dec bc
    rst $28
    and b
    cp d
    ld e, d
    jp $8c02


    ld [c], a
    ld a, [$bfff]
    sbc c
    add b
    ld a, [bc]
    ei
    nop
    and c
    or b
    ldh [rTIMA], a
    nop
    ld a, [hl+]
    nop
    add a
    rst $38
    nop
    dec hl
    rlca
    ld l, d
    rlca
    cp c
    rrca
    ldh a, [rIE]
    rra
    pop hl
    rra
    xor d
    rra
    push hl
    ccf
    ret nz

    ei
    ld a, a
    add l
    sub [hl]
    ret nz

    ld a, d
    rst $38
    cpl
    rst $38
    ld d, [hl]
    adc d
    or l
    ld h, b
    db $eb
    or c
    ld h, b
    ld e, e
    ld e, d
    jp nz, $c778

    ret nz

    jp $ba0a


    ld l, b
    ld h, d
    ld [bc], a
    db $fc
    ret nz

    ld [bc], a
    nop
    ld d, $3f
    add b
    rra
    rst $38
    ld bc, $01ae
    ld e, d
    ld bc, $03ae
    ld a, h
    cp a
    rlca
    cp b
    ld a, a
    xor d
    ld a, a
    sub a
    sub d
    ldh [$15], a
    ld c, a
    rst $38
    xor e
    rst $38
    ld e, [hl]
    add b
    ldh [$cb], a
    add c
    xor l
    and b
    ld h, b
    ld sp, $9c6f
    ld h, b
    ld [hl], b
    jp nz, Jump_02c_6b2e

    inc bc
    inc bc
    nop
    nop
    nop
    cp l
    inc l
    rst $38
    push hl
    cpl
    jr nc, jr_02c_462c

    cpl
    di
    db $e4
    ld d, e
    db $f4
    rst $38
    rst $38
    rst $20
    and $2d
    rst $38
    push hl
    ld sp, $3232
    ld sp, $f3e8
    db $e4
    jp z, $e8ff

    rst $20
    ld l, $ff
    push hl
    inc sp
    inc [hl]
    inc [hl]
    pop af
    inc sp
    di
    db $e4
    jp z, $e8ff

    rst $20
    ld [hl], $35
    dec [hl]
    ld [hl], $5e
    db $fc
    ld [c], a
    scf
    jr c, jr_02c_4663

    scf

jr_02c_462c:
    or $e3
    dec [hl]
    jp z, $deff

    add sp, -$19
    ld a, [hl-]
    add hl, sp
    add hl, sp
    ld a, [hl-]
    db $fc
    pop hl
    dec sp
    inc a
    adc a
    dec a
    dec a
    inc a
    dec sp
    ld a, [c]
    db $e3
    jp z, $e8ff

    rst $20
    ccf
    rst $30
    ld a, $3e
    ccf
    db $fc
    pop hl
    ld b, b
    ld b, c
    ld b, d
    ld b, d
    db $e3
    ld b, c
    ld b, b
    ld a, [c]
    db $e3
    jp z, $e8ff

    rst $20
    ld b, h
    ld b, e
    ld b, e
    db $fd
    ld b, h
    db $fc
    pop hl
    ld b, l

jr_02c_4663:
    ld b, [hl]
    ld b, a
    ld b, a
    ld b, [hl]
    ld b, l
    add sp, -$0e
    db $e3
    jp z, $e8ff

    rst $20
    ld e, c
    rst $38
    pop hl
    ld e, d
    ld e, e
    ld e, h
    rst $38
    ld c, b
    ld c, c
    ld c, d
    ld c, d
    ld c, c
    ld c, b
    ld e, h
    ld e, e
    pop af
    ld e, d
    rst $28
    ldh [$ca], a
    rst $38
    add sp, -$19
    dec b
    db $10
    ld de, $ff00
    ld bc, $5e5d
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, d
    rst $38
    ld h, c
    ld h, b
    ld e, a
    ld e, [hl]
    ld e, l
    inc c
    dec c
    add hl, bc
    db $fc
    jp z, $e8ff

    rst $20
    rlca
    ld [de], a
    inc de
    ld [bc], a
    inc bc
    ld d, l
    rst $38
    ld d, [hl]
    ld h, e
    ld h, h
    ld h, l
    ld d, h
    ld d, h
    ld h, l
    ld h, h
    ccf
    ld h, e
    ld d, l
    ld d, [hl]
    ld c, $0f
    dec bc
    jp z, $e8ff

    rst $20
    rst $38
    inc b
    dec b
    ld c, a
    ld d, b
    ld c, a
    ld d, b
    ld h, a
    ld l, b
    rst $38
    ld l, c
    ld l, d
    jr nz, jr_02c_46ea

    ld l, d
    ld l, c
    ld l, b
    ld h, a
    rst $38
    ld d, e
    ld e, b
    ld c, a
    ld d, b
    ld d, e
    ld d, e
    jr nz, jr_02c_46f7

    db $fc
    db $fd
    pop hl
    rst $38
    rst $38
    ld d, e
    ld d, e
    ld b, $07
    ld d, [hl]
    ld d, l
    ld a, e
    ld d, e
    ld d, a
    add c
    ldh [$66], a
    ld [hl+], a
    inc hl
    ld h, [hl]

jr_02c_46ea:
    ld a, a
    ldh [$fb], a
    ld d, a
    ld d, e
    ldh a, [$e0]
    ld d, e
    inc h
    dec h
    ld d, e
    ld h, $a9

jr_02c_46f7:
    daa
    jp $e1ff


    ldh [$0c], a
    sub c
    ldh [$58], a
    add c
    pop hl
    ld d, h
    ld [hl], a
    ld d, d
    ld d, d
    ld d, h
    ld a, a
    pop hl
    ld d, l
    ld d, [hl]
    ld bc, $ffca
    xor $e8
    rst $20
    ld c, $57
    ld d, e
    ld [bc], a
    ld [c], a
    ld h, [hl]
    ld c, l
    ld c, [hl]
    dec sp
    ld c, e
    ld c, h
    ld a, a
    pop hl
    ld d, e
    ld d, a
    inc bc
    jp z, $e8ff

    rst $20
    rst $28
    ld [$5809], sp
    ld d, e
    ld [bc], a
    pop hl
    jr z, @+$2b

    ld d, h
    sub a
    ld d, h
    ld c, l
    ld c, [hl]
    cp $c1
    ld e, b
    set 7, a
    jp hl


    add sp, $0a
    db $fd
    dec bc
    ld [bc], a
    db $e3
    ld a, [hl+]
    dec hl
    ld c, e
    ld c, h
    ld d, h
    ld d, h
    add b
    cp $c1
    nop
    pop hl
    rst $38
    rst $38

Call_02c_474c:
    nop
    add sp, $02
    push hl
    ld a, $e1
    ld a, l
    pop bc
    ld d, a
    call z, $ffca
    nop
    add sp, $56
    ld d, l
    add e
    pop bc
    add e
    ldh [rKEY1], a
    ld c, [hl]
    ld bc, $7f54
    db $e3
    set 7, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02c_47f4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    dec d
    ld a, [bc]
    rst $38
    rst $20
    ld a, [hl+]
    rst $38
    push hl
    ld [$ffff], sp
    rst $20
    and $c0
    rst $38
    jr jr_02c_47f4

    rst $38
    ret nz

    rst $38
    ld hl, sp-$09
    ld a, [hl+]
    ld a, [hl+]
    rst $00
    pop hl
    ret nz

    rst $20
    cp c
    pop hl
    add b
    jp z, $c0ff

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    cp $fd
    dec bc
    cp $ff
    db $e4
    inc c
    inc c
    inc c
    inc l
    inc l
    inc l
    dec hl
    ld hl, sp-$01
    ld [c], a
    jp z, $e8ff

    rst $20
    dec c
    ld c, $0e
    dec c
    dec c

jr_02c_4867:
    inc e
    cp e
    db $e3
    jp Jump_000_0ee3


Jump_02c_486d:
    ld c, $2d
    jp z, $c0ff

    ld a, [c]
    cp a
    pop hl
    db $e3
    dec bc
    dec bc
    ret nz

    rst $38
    add b
    db $eb
    jp Jump_000_0be5


    ld a, [bc]
    ld a, [bc]
    nop
    ld b, d
    pop hl
    jr nc, jr_02c_4867

    ld [$fda1], a
    pop hl
    rst $38
    rst $38
    ret nz

    pop hl
    adc e
    ldh [$ca], a
    ld [c], a
    db $10
    ret nz

    push hl
    nop
    pop hl
    ret nz

    rst $38
    and $e5
    ld l, $bf
    push bc
    ld bc, $fee0
    jp nz, $0b83

    dec bc
    ld b, b
    rst $38
    ret nz

    ld a, [c]
    cp [hl]
    add $c0
    rst $38
    nop
    ldh a, [$0a]
    ld bc, $7d0a
    push bc
    nop
    pop hl
    rst $38
    rst $38
    ret nz

    ret z

    ld [bc], a
    db $e4
    dec a
    rst $00
    jp z, Jump_000_00ff

    ld b, b
    db $f4
    ld a, a
    db $e4
    jp z, $c0ff

    ret z

    ld c, l
    jp $ffc0


    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and $00
    nop
    nop
    dec b
    rrca
    rst $38
    and $00
    rst $38
    ld a, [c]
    ldh [rIE], a
    ldh [$fb], a
    cp $fd
    and [hl]
    db $e4
    nop
    and b
    ld_long a, $ffe0
    ldh [$fc], a
    ld b, b
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0000], a
    nop
    ld d, c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld hl, sp+$11
    db $dd
    push hl
    ld hl, $ffd4
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    inc d
    nop
    jr nz, jr_02c_4a39

    inc d
    nop
    jr nz, @+$01

    nop
    cp $ff
    jr jr_02c_4a46

    dec [hl]
    dec l
    ld c, [hl]
    ld a, a
    ld e, h
    ld [hl], a
    rst $38
    jr z, @+$41

    dec hl
    ccf

jr_02c_4a39:
    cpl
    inc a
    scf
    inc [hl]
    rst $38
    nop
    nop
    ldh a, [$f0]
    ld l, b
    sbc b
    db $e4
    inc a

jr_02c_4a46:
    rst $38
    ld a, h
    call nc, $dc74
    ld hl, sp-$48
    ld hl, sp-$58
    rst $38
    inc hl
    ld [hl+], a
    inc bc
    inc bc
    rlca
    dec b
    ld c, $0b
    rst $38
    rlca
    rlca
    rrca
    rrca
    dec bc
    dec bc
    ld b, $06
    rst $38
    ld hl, sp+$08
    ldh a, [$90]
    ld a, b
    add sp, $38
    ld hl, sp-$01
    ldh a, [$d0]
    add sp, $68
    ret c

    ret c

    ldh a, [$f0]
    sbc $e2
    ldh [rTAC], a
    rrca
    ld c, $0f
    rst $38
    pop hl
    ld c, $0f
    rst $38
    ld c, $07
    rlca
    ldh [$e0], a
    ldh a, [$30]
    ld hl, sp-$01
    ld a, b
    ld hl, sp+$58

jr_02c_4a8b:
    ld hl, sp-$38
    ld hl, sp-$68
    ld hl, sp-$01
    jr jr_02c_4a8b

    ld [$0707], sp
    ld b, $07
    inc c
    rst $38
    rrca
    inc c
    rrca
    rlca
    rlca
    dec bc
    ld c, $0d
    cp $fa
    ldh [$f8], a
    adc b
    ld [hl], b
    ret nc

    ldh a, [$b0]
    ld a, b
    rst $38
    ret z

    ldh a, [$f0]
    ld hl, sp+$58
    add sp, -$08
    ld [hl], b
    rst $38
    ld [hl], b
    rlca
    rlca
    ld [$1308], sp
    ld de, $ff11
    ld de, $1717
    rra

jr_02c_4ac3:
    add hl, de
    rrca
    ld [$ff0f], sp
    inc c
    ret nz

    ret nz

    and b
    and b
    ldh a, [$50]
    ret nc

    ld e, a
    ld d, b
    ldh a, [$30]
    ldh a, [$50]
    cp $e0
    db $10
    pop bc
    ldh [$bd], a
    dec b
    add h
    ldh [$0a], a
    rra
    inc d
    rra
    rst $38
    ldh [$0e], a
    rst $30
    ld c, $f0
    db $10
    and b
    ldh [$e8], a
    ld hl, sp+$78
    ldh [rIE], a
    jr nz, jr_02c_4ac3

    ldh a, [$90]
    ldh a, [$e0]
    ldh [rTAC], a
    rst $38
    rlca
    inc c
    dec bc
    inc de
    ld e, $17

jr_02c_4b00:
    dec e
    rra
    ld a, a
    jr jr_02c_4b24

    ld a, [de]
    rrca
    ld a, [bc]
    rrca
    ld [$e0c0], sp
    rst $38
    ld h, b
    ret nc

    jr nc, @-$6e

    ld [hl], b
    xor b
    ld hl, sp-$08
    rst $38
    ret c

    ld hl, sp+$18
    ldh a, [rSVBK]
    rlca
    inc b
    rlca
    rst $38
    rlca
    rlca
    dec b
    rrca
    dec bc

jr_02c_4b24:
    rrca
    rrca
    rra
    ei
    rra
    rla
    ret nz

    ldh [$e0], a
    ldh [rSVBK], a
    ld d, b
    jr nc, jr_02c_4b00

    rst $38
    ldh [$e0], a
    ldh [$50], a
    ret nz

    ld [c], a
    ld [hl+], a
    ldh [rDIV], a
    ld c, $e7
    ld [$080e], sp
    ld a, $e2
    ld d, a
    ldh [$e0], a
    ldh [rNR10], a
    rst $38
    db $10
    jr c, jr_02c_4b84

    ld h, h
    ld b, h
    db $fc
    db $fc
    ld hl, sp-$01
    adc b
    ld hl, sp-$58
    ld hl, sp+$28
    rlca
    ld b, $03
    rst $38
    inc bc
    ld b, $07
    rrca
    dec bc
    rra
    ld d, $1f
    ei
    rra
    rrca
    ld b, b
    pop hl
    ld [$10f0], sp
    add sp, -$08
    ei
    ld hl, sp-$08
    add b
    ldh [rSVBK], a
    or b
    ldh a, [$60]
    ld h, b
    or [hl]
    ret nz

    push bc
    ld c, b
    ld a, a
    ret nz

    pop bc
    rla
    inc d
    ret nz

    call $df13

jr_02c_4b84:
    ld [de], a
    rlca
    rlca
    ld c, $0b
    nop
    ld [c], a
    ld a, [bc]
    add hl, bc
    db $fd
    add hl, bc
    ret nz

    jp $e060


    ldh [$a0], a
    ldh a, [$d0]
    cp a
    ld hl, sp+$78
    add sp, -$18
    jr nc, jr_02c_4bce

    ret nz

    rst $18

jr_02c_4ba0:
    dec b
    db $f4
    add d
    ldh [$80], a
    call nz, $800f
    pop bc
    ld hl, sp-$68
    ld a, b
    add sp, -$01
    jr nc, jr_02c_4ba0

    ldh a, [$f0]
    add sp, $38
    ret c

    ld hl, sp-$0d
    ldh a, [$f0]
    ret nz

    rst $18
    ld [bc], a
    ld [c], a
    ld c, $0f
    inc c
    rla
    cp e
    rra
    inc de
    ret nz

    jp nz, Jump_000_20e0

    ldh [$80], a
    pop hl
    ld d, b
    ld hl, sp-$43

jr_02c_4bce:
    ldh [$c0], a
    rst $18
    ret nz

    ret nz

    rrca
    rrca
    ld e, $16
    inc e
    rst $08
    inc e

jr_02c_4bda:
    rrca
    rrca
    dec d
    ret nz

    ld [c], a
    call nz, $d0e2
    ld [hl], b
    adc l
    ld d, b
    jr @-$3e

    ldh a, [$d0]
    ret nz

    rst $18
    ret nz

    push bc
    and h
    ret nz

    dec bc
    db $e3
    ld c, $09
    ld b, b
    ld [c], a
    ld a, $c0
    push bc
    ldh [$f8], a
    ld l, b
    ld hl, sp+$0b
    ld hl, sp-$30
    ret nz

    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    and $00
    nop
    sbc l
    ld h, b
    cp a
    add b
    cp h
    ld h, b
    sbc h
    ret nz

    cp l
    and b
    sbc l
    ld h, b
    rst $38
    ldh [$9b], a
    nop
    jr nz, jr_02c_4cac

Call_02c_4c2f:
    ld b, b
    ld a, [hl]
    ld h, b
    ld a, l
    add b
    ld a, h
    and b
    ld a, l
    ret nz

    ld a, l
    ldh [$7e], a
    nop
    sbc a
    nop
    ld h, b
    rst $18
    jr nz, jr_02c_4bda

    sbc [hl]
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02c_4c4a:
    rst $38
    rst $38
    db $f4
    di
    nop
    jr nz, jr_02c_4cce

    ld b, b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02c_4c59:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    sub c
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
    ld b, a
    ld c, l
    ld d, h
    nop
    ld e, [hl]
    ld [bc], a
    nop
    nop
    sbc h
    add hl, hl
    sbc h
    add hl, hl
    sbc h
    add hl, hl
    sbc h
    add hl, hl
    nop
    nop
    add hl, sp
    ld c, e
    db $f4
    ld hl, $00a9
    ld e, [hl]
    ld [bc], a
    add hl, sp
    ld c, e
    db $f4
    ld hl, $00a9
    sbc $52
    add hl, sp
    ld c, e
    db $f4
    ld hl, $00a9
    sbc $52
    and b
    ld b, b
    db $f4
    ld hl, $00a9
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    sbc h
    add hl, hl
    sbc h
    add hl, hl
    sbc h
    add hl, hl
    sbc h
    add hl, hl
    rst $38
    nop

jr_02c_4cac:
    rst $38
    ld [bc], a
    add e
    inc b
    add l
    ld [$ff89], sp
    db $10
    sub c
    jr nz, jr_02c_4c59

    ld b, b
    pop bc
    nop
    rst $38
    inc bc
    rst $38
    nop
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    nop
    cp $ff

jr_02c_4cce:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    nop
    nop
    ld bc, $0201
    inc bc
    inc bc
    db $fd
    ld [bc], a
    cp $e1
    dec b
    ld b, $07
    inc b
    rst $38
    rst $38
    rst $38
    ccf
    ret nz

    rst $38
    nop
    push de
    ld a, [hl+]
    rst $38
    nop
    rst $38
    rst $10
    jr z, @+$01

    nop
    ld e, a
    and b
    rst $38
    rst $38
    cp a
    ldh [$1f], a
    rst $38
    nop
    ld a, a
    add b
    ret nz

    rst $00
    rst $38
    ret nz

    call z, $f0aa
    pop hl
    sbc $e1
    and b
    ret


    sbc $e9
    ldh a, [$e3]
    ldh a, [rIF]
    nop
    add b
    res 7, h
    rst $20
    ldh a, [$e5]
    sbc $e5
    ld d, b
    push hl
    sbc d
    push hl
    ldh a, [$e7]
    sbc d
    db $e3
    ld a, [hl]
    jr nc, @-$17

    rst $38
    rst $38
    ld hl, sp+$07
    xor a
    ld d, b
    jr nz, @-$17

    rst $38
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    rlca
    inc b
    cp a
    rlca
    inc b
    dec bc
    inc c
    rrca
    ld [$e1fe], sp
    rla
    rst $30
    jr @+$21

    db $10
    xor $af
    db $eb
    inc d
    rst $38
    nop
    ld l, a
    cp $01
    db $fd
    inc bc
    cp $e3
    ld b, b
    ret nz

    rst $38
    pop hl
    db $fd
    add b
    rst $38
    db $e4
    nop
    nop
    rra
    db $10
    rra
    db $10
    rst $28
    cpl
    jr nc, jr_02c_4dac

jr_02c_4d6d:
    jr nz, jr_02c_4d6d

    pop hl
    ld a, a
    ld h, b
    ld a, a
    rst $38
    ld [hl], b
    rst $38
    inc bc
    ei
    rlca
    ei
    rlca
    cp $b7
    ld b, $f6
    ld c, $fe
    pop hl
    db $ec
    inc e
    add $cb
    ld bc, $01ff
    ld a, a
    ld a, [hl]
    ld a, l
    ld b, e
    cp a
    ret nz

    rst $38
    sbc c
    add b
    cp $e1
    jp c, $f0c4

jr_02c_4d97:
    rst $28
    ldh a, [$c8]
    ld l, [hl]
    and d
    add b
    rst $08
    ld a, a
    db $fc
    ei
    rlca
    ld h, h
    xor h
    jp c, Jump_000_07e5

    db $fd
    rst $38
    add hl, de
    ldh a, [$27]

jr_02c_4dac:
    di
    ld e, b
    jp z, $eb44

    rst $18
    and b
    pop bc

jr_02c_4db4:
    db $e3
    and a
    xor [hl]
    cp d
    ldh [$60], a
    ccf
    rst $38
    db $10
    ccf
    ld a, b
    ld c, a
    jr z, @+$21

    jr c, jr_02c_4dd3

    add a
    jr z, jr_02c_4e46

    ld a, a
    ld l, $ac
    ld d, b
    adc e
    db $fd
    db $e3
    ld a, [bc]
    and l
    ld bc, $fefd

jr_02c_4dd3:
    db $fd
    ldh [$ec], a
    inc e
    call c, $dc3c
    inc a
    rst $38
    ret c

    jr c, jr_02c_4d97

    ld a, b
    ld hl, sp-$08
    ld [$f3f8], sp
    ret nc

    jr nc, jr_02c_4e44

    pop hl
    jr nz, jr_02c_4db4

jr_02c_4deb:
    sub $50
    adc $5f
    rst $18
    db $ed
    dec h
    rst $38
    rra
    ld hl, sp+$70
    db $e4
    sub a
    sbc b
    rst $08
    ld l, a
    ld [hl], b
    rst $18
    ldh [$0c], a
    pop bc
    call nz, $d083
    jr nc, jr_02c_4deb

    cp $e1
    and b
    ld h, b
    cp $e3
    or b
    ret


    ld c, $09
    rla
    or a
    jr jr_02c_4e31

    ld de, $8b9e
    cp a
    ld b, b
    adc [hl]
    add e
    cp $e1
    ld bc, $e3fe
    or b
    pop bc
    ld a, d
    pop bc
    or b
    ret


    ld e, $11
    cpl
    ld [hl], a
    jr nc, jr_02c_4e65

    dec h
    xor [hl]
    pop bc
    cpl
    jr nc, jr_02c_4e41

jr_02c_4e31:
    or h
    and b
    rst $38
    xor e
    ld d, h
    rst $38
    nop
    xor d
    ld d, l
    rst $38
    nop
    jp $05fa


    xor b
    and a

jr_02c_4e41:
    db $ec
    pop hl
    or h

jr_02c_4e44:
    db $e3
    ld l, b

jr_02c_4e46:
    jp Jump_000_06fa


    ld a, [hl]
    cp $e1
    ld a, d
    add [hl]
    db $f4
    inc c
    rrca
    rrca
    ld a, $ab
    rst $28
    add b
    rst $38
    ld a, a
    ld a, a
    inc l
    xor c
    rlca
    ld hl, sp-$08
    rst $00
    rst $38
    rlca
    rlca
    ld [$5fa8], a

jr_02c_4e65:
    and e
    ldh a, [$e8]
    ccf
    ret nz

    rst $28
    ret nz

    rst $38
    ccf
    ccf
    ldh [$e7], a
    rst $38
    nop
    ld bc, $fe05
    sub $c0
    ld bc, $e7f0
    call z, $bee9
    ld h, e
    xor d
    rst $20
    ret z

    ld h, [hl]
    db $f4
    xor d
    db $e4
    ld e, h
    ld [c], a
    ld [bc], a
    xor d
    rst $20
    push af
    ld a, [bc]
    rst $38
    nop
    ei
    ld d, l
    xor d
    cp h
    rst $20
    ld [hl], h
    adc h
    db $f4
    inc c
    ld [hl], h
    rst $38
    adc h
    add sp, $18
    add sp, $18
    db $10
    ldh a, [$e0]
    ld a, l
    ldh [$9c], a
    adc c
    ld [bc], a
    inc bc
    rlca
    rlca

jr_02c_4eaa:
    db $fc
    ld a, a
    ld h, d
    rst $18
    ld a, b
    ld a, b
    add [hl]
    cp $01
    ld d, l
    ld h, b
    db $fc
    rst $38
    reti


    rst $30
    ld [hl+], a
    add sp, $7c
    and c
    ret nz

    ret nz

    ld d, b
    add c
    inc bc
    inc bc
    sub e
    dec b
    ld b, $3c
    and l
    ld a, [c]
    pop hl
    db $fc
    or b
    adc d
    add b
    adc d
    rrca
    cpl
    ccf
    ccf
    rst $08
    ldh a, [$0a]
    ld l, c
    di
    sbc l
    ldh [$fa], a
    ld c, c
    cpl
    sbc [hl]
    ld a, [hl]
    db $fd
    inc bc
    nop
    ld l, e
    ldh a, [$60]
    xor d
    ldh [$61], a
    rst $08
    ret nz

    ret nz

    cp a
    ld a, a
    ld l, a
    ld [c], a
    ldh [rOBP0], a
    ld hl, sp-$08
    ld a, c
    rst $30
    ld c, h
    add d
    and b
    adc c
    ld [hl], b

jr_02c_4efa:
    ldh a, [$e8]
    jr jr_02c_4eaa

    add c
    db $fc
    call c, $8e89
    ld c, e
    cp $01
    ldh a, [rNR10]
    ret nc

    jr nc, @+$01

    pop hl
    inc hl
    and d
    ld h, d
    jp nz, Jump_02c_4c4a

    adc $ff
    sbc b
    sbc c
    sub b
    sub b
    rst $30
    ld hl, sp+$0f
    rrca
    rst $38
    add b
    ret nz

    ld b, b

jr_02c_4f20:
    ld h, h
    jr @+$1a

    inc bc
    inc bc
    ret c

    adc h
    pop bc
    or h
    ld h, c
    db $ec
    pop hl
    nop
    ld b, b
    ld c, a
    add b
    add c
    sub c
    add hl, sp
    reti


    ld c, [hl]
    ld b, e
    db $ec
    db $e4
    jr nz, @-$1e

    ldh [$3e], a
    ld b, a
    ret c

    db $e3
    db $e3
    db $f4
    inc c
    cp $e5
    ld sp, $fea0
    ldh [$5f], a
    ld h, b
    ld a, a
    db $fd
    ld b, b
    cp $e1
    cp a
    ret nz

    cp $81
    push de
    xor d
    rst $38
    ld_long $ff95, a
    ld bc, $17e9
    or $0a
    rst $38
    xor d
    ld d, [hl]
    ld d, h
    xor h
    and h
    ld e, h
    ld e, c
    xor c
    rst $38
    xor c
    ld e, c
    db $10
    jr nc, jr_02c_4f9d

    jr nc, @+$1a

    jr c, jr_02c_4ff0

    nop
    ld [$4040], sp
    ld b, b
    ret nz

    nop
    jr nc, jr_02c_4efa

    cp $00
    ld h, e
    stop
    jr nz, jr_02c_4f81

jr_02c_4f81:
    ld c, h
    nop
    ld bc, $fee6
    ldh [rSVBK], a
    ld [hl], a
    jp nc, $f264

    ldh [$83], a
    nop
    inc [hl]
    rst $38
    nop
    jr nc, jr_02c_4fcc

    db $10
    inc [hl]
    jr c, jr_02c_4fd0

    ld [$5cbf], sp
    jr jr_02c_4fb9

jr_02c_4f9d:
    db $10
    jr jr_02c_4f20

    rst $08
    db $e3
    ld b, b
    rst $38
    add b
    add b
    ld e, $bf
    di
    ei
    ret nz

    ret nz

    rst $28
    or b
    cp b
    ld b, b
    ret nz

    ld d, h

jr_02c_4fb2:
    ld [c], a
    nop
    nop
    jr nz, @+$01

    ret nz

    pop bc

jr_02c_4fb9:
    and h
    and $32
    ld [hl-], a
    ld e, $3e
    cp $40
    and $00
    nop
    inc b
    ld h, e
    ld [hl], e
    db $10
    sub b
    sub $40
    push hl

jr_02c_4fcc:
    ld a, [c]
    db $fd
    jr jr_02c_4fb2

jr_02c_4fd0:
    ld c, b
    and $87
    ld d, a
    xor b
    rrca
    xor e
    call nc, Call_02c_6a55
    or $a1
    ld a, [c]
    and c
    xor b
    add e
    ld [hl], b
    add e
    rst $20
    ld bc, $0301
    adc [hl]
    ld b, d
    sub b
    ld b, c
    ld d, l
    xor d
    jr z, jr_02c_4f9d

    rst $10
    nop

jr_02c_4ff0:
    rst $38
    cp $89
    ld b, b
    db $fc
    ld e, b
    ret nz

    cp $ff
    ld bc, $b150
    ld [de], a
    ld a, [c]
    ld [hl+], a
    ld [c], a
    jr nz, @+$01

    ldh [$c8], a
    call z, $d0d0
    or b
    or b
    and b
    xor a
    and b
    ld [$0700], sp
    ld c, b
    ldh [$a0], a
    pop de
    ret nz

    ld h, e
    cp e
    nop
    inc h
    inc a
    ldh [$80], a
    nop
    jr @+$36

    ldh [$37], a
    ld a, [c]
    add hl, hl
    ld b, h
    ld b, d
    ld [c], a
    ldh [rKEY1], a
    ld [c], a
    nop
    adc b
    nop
    ld h, d
    ei
    nop
    inc de
    inc de
    ld b, d
    inc l
    nop
    ret c

    nop
    inc bc
    db $f4
    inc d
    ldh [$0a], a
    pop hl
    ld a, b
    ld bc, $0242
    nop
    ld b, h
    nop
    call $c8d4
    ldh [rSB], a
    nop
    and c
    and d
    db $ed
    inc h
    adc b
    nop
    ld a, a
    xor c
    nop
    jr nc, jr_02c_5053

jr_02c_5053:
    db $10
    db $10
    ld [$682c], sp
    rst $38
    add b
    nop
    jr nz, @+$72

    jr nc, jr_02c_508f

    jr nz, @-$5e

    rst $38
    ld b, c

jr_02c_5063:
    ld c, c
    ld d, c
    ld e, c
    db $d3
    di
    ld h, e
    ld h, e
    rst $38
    add $e7
    ld c, d
    ld [hl], l
    push de
    ld [$f5ca], a
    rst $38
    push hl
    ld a, [$fd92]
    dec d
    sbc d
    jr nz, @+$41

    cp a
    jr nc, jr_02c_50be

    and b
    ld h, b
    jr nz, jr_02c_5063

    db $fc
    push hl
    jr nz, @-$0f

    ldh [rLCDC], a
    ret nz

    rst $38
    or [hl]
    ld b, b
    cp $02

jr_02c_508f:
    ld a, [$06f7]
    db $fc
    inc b
    ld e, [hl]
    pop bc
    jp hl


    add hl, de
    db $10
    jr @+$01

    jr nz, jr_02c_50fd

    ld h, b
    ld h, b
    ld b, c
    ld b, b
    add c
    ret nz

    and a
    inc bc
    add b

jr_02c_50a6:
    ld [bc], a
    sbc c
    pop bc
    adc d
    ret nz

    add b
    ld h, d
    ldh [$38], a
    rst $38
    nop
    dec hl
    nop
    ld sp, $2200
    nop
    call z, Call_000_3092
    ldh [$2a], a
    ld [hl], b
    ret nz

jr_02c_50be:
    ld l, b
    ld hl, $6a61
    ret nz

    cp c
    ret nz

    nop
    db $dd
    sbc b
    db $e4
    ldh [$2a], a
    nop
    ld de, $e2d6
    ld hl, $7d00
    ld b, a
    ld d, b
    ldh [rP1], a
    nop
    call nz, $1a00
    adc $e0
    ld a, l
    inc d
    ld b, c
    jr nz, @+$16

    nop
    sub h
    nop
    ld d, $30
    ld [c], a
    ld d, a
    ld c, b
    nop
    ld d, b
    db $10
    ld [c], a
    ldh [rNR12], a
    ldh [rNR10], a
    ld b, h
    ldh [$dd], a
    ld b, $18
    ldh [rP1], a
    nop
    ld h, b
    ld [hl], h
    ld b, [hl]
    ld b, b

jr_02c_50fd:
    nop
    rst $38
    add d
    inc bc
    add [hl]
    add $0c
    adc [hl]
    inc c
    adc h
    rst $38
    jr jr_02c_50a6

    add hl, de
    add hl, de
    ld sp, $3239
    inc sp
    rst $38
    ld h, d
    ld [hl], e
    ld a, a
    ld a, a
    ld a, e
    ld a, h
    sbc a
    ldh [$df], a
    cp a
    ret nz

    ccf
    ret nz

    ld a, a
    ld h, b
    ld b, c
    ld bc, $f8c0
    ld h, b
    ld l, [hl]
    db $10
    ld b, a
    and h
    and c
    pop af
    ld de, $33d3
    db $e4
    rst $38
    ld h, $a4
    ld h, h
    call z, Call_02c_474c

jr_02c_5136:
    rst $10
    add b
    ld sp, hl
    add [hl]
    xor $20
    cp h
    and e
    inc b
    ld h, [hl]
    ld h, [hl]
    and d
    db $e3
    rst $08
    ld [hl-], a
    ld [hl-], a
    inc e
    inc a
    ld h, h
    pop hl
    xor h
    dec bc
    dec bc
    nop
    ld d, h
    ld e, e
    add b
    sbc c
    ld b, $c0
    jr c, jr_02c_5136

    ld hl, $e018
    ld b, $ac
    ret z

    xor $52
    pop hl
    add hl, hl
    nop
    ld l, h
    ld [hl], l
    ld [bc], a
    ld de, $2300
    ld hl, sp+$20
    ld [c], a
    sub $e1
    ld [bc], a
    pop hl
    add b
    nop
    inc c
    nop
    or h
    db $f4
    inc l
    jp nz, $0356

    inc b
    rst $38
    pop hl
    ld b, $11
    ld de, $ff01
    ld de, $2303
    inc bc
    inc bc
    ld h, $27
    ld h, h
    rst $38
    ld h, a
    push bc
    and $c9
    adc $8b
    call z, Call_02c_7f93
    sbc h
    rla
    sbc b
    daa
    jr c, @+$31

    jr nc, @+$4a

    inc hl
    call z, $c18e
    call c, $f441
    inc c
    db $f4
    add e
    add b
    daa
    ld [hl], b
    ldh a, [rIE]

jr_02c_51a9:
    sbc a
    ld a, a
    rst $38
    ccf
    ldh [rNR42], a
    ldh [rNR41], a
    rst $20
    call c, $e33c
    ld a, [de]
    ld b, b
    and c
    ret nz

    inc bc
    ldh a, [$f0]
    rst $18
    rst $38
    rst $38
    rrca
    rra
    nop
    inc b
    ldh [$3c], a
    db $fc
    ldh a, [$88]
    add c
    dec a
    pop hl
    db $ec
    push hl
    sub c
    ld h, c
    ld a, [bc]
    adc a
    rrca
    ld c, a
    pop af
    inc sp
    sbc $40
    ret c

    pop hl
    pop af
    ld h, c
    add b
    ret nz

    nop
    ret nz

    ld a, a
    ld b, b
    jp nz, $ecc0

    jr nc, jr_02c_5216

    nop
    sbc h
    ret nz

    rst $30
    add hl, bc
    nop
    rla
    ld d, b
    jp nz, Jump_000_0301

    ld [bc], a
    ld h, $dd
    ld [bc], a
    add hl, hl
    ldh [$80], a
    nop
    ld a, [bc]
    ld [hl], h
    and b
    ld d, $00
    ei
    add hl, bc
    add b
    cp l
    ld b, h
    nop
    ld b, c
    inc bc
    add d
    ld [bc], a
    rst $38
    add d
    ld [bc], a
    ld [hl-], a
    ld a, [hl-]
    ld [$0408], sp
    inc b
    rst $38
    ld h, $26
    ld c, h
    ld c, [hl]

jr_02c_5216:
    inc c
    inc c
    jr jr_02c_5236

    ld e, [hl]
    add b
    push bc
    ld c, a
    ld [hl], b
    ld e, a
    ld h, b
    add b
    ret z

    nop
    jr nc, jr_02c_51a9

    ld b, $ea
    add a
    add e
    ld a, a
    db $76
    dec h
    ld d, [hl]
    inc bc
    ld e, h
    pop hl
    db $ec
    jp hl


    ld c, b
    push hl
    ld a, b

jr_02c_5236:
    ret c

jr_02c_5237:
    push hl
    inc [hl]
    jp hl


    call nz, $02e1
    ld [bc], a
    ld bc, $2001
    jp hl


    ld c, a
    ld c, b
    ld e, b
    add h
    add $9f
    add c
    inc c
    pop hl
    rlca
    inc c
    ldh [rIE], a
    inc c
    ld e, $10
    db $10
    db $10
    jr jr_02c_5237

    jp hl


    rst $38
    ld bc, $0341
    inc bc
    db $e3
    db $e3
    cp $ff
    ei
    inc e
    ld a, $10
    ld h, c
    jr c, @-$06

    add a
    ld a, a
    ldh a, [rP1]
    jr nz, jr_02c_52cf

    ld h, b
    jp hl


    inc [hl]
    ld h, c
    nop
    nop
    nop
    dec b
    db $10
    rst $38
    ldh a, [rP1]
    db $eb
    pop af
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    rst $38
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
    jp Jump_000_21e4


    rst $38
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_02c_52c5

    rst $08
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ret nz

    rst $38
    adc l
    xor $2e
    cpl
    and [hl]
    rst $38
    and $30
    ld sp, $ffc0
    ld c, l
    xor $32
    ret nz

    rst $20
    inc sp
    db $fc
    ld b, b
    rst $38
    ld c, $ee
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_02c_52f8

    ld a, a
    ld a, [hl-]
    dec sp
    dec sp
    inc a
    inc a

jr_02c_52c5:
    dec a
    ld a, $c0
    rst $38
    ld e, d
    adc $ce
    ccf
    ld b, c
    pop hl

jr_02c_52cf:
    ld b, b
    ld b, c
    dec sp
    ld [c], a
    ld b, d
    ret nz

    rst $38
    ld [hl], $8e
    adc $43
    ld b, h
    nop
    and $45
    ld b, [hl]
    ret nz

    rst $38
    ld c, [hl]
    adc $97
    ld b, a
    ld c, b
    ld c, c
    cp a
    push bc
    ld c, d
    ld b, b
    rst $18
    rrca
    rst $08
    ld c, e
    rst $38
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e

jr_02c_52f8:
    rlca
    ld d, h
    ld d, l
    ld d, [hl]
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
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
    call nc, Call_000_00f7
    rst $38
    pop af
    ret


    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ld a, $bd
    ld [c], a
    jr nz, jr_02c_5378

    ld d, a
    ld e, b
    ld e, c
    ret nz

    rst $38
    db $f4
    di
    rst $38
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    cpl
    cpl
    ld e, a
    rst $08
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ret nz

    rst $38
    ld c, l
    rst $28
    ld h, h
    ld h, l
    cp a
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld h, l
    jr c, jr_02c_53b1

    ld l, e
    db $fc
    ret nz

    rst $38
    dec c
    rst $28
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ccf
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ret nz

    rst $38
    call $ffce
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    sbc a
    add b
    add c
    add d
    add e
    add h
    ret nz

jr_02c_5378:
    rst $38
    add b
    ld c, a
    add l
    rst $38
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    rst $20
    adc [hl]
    adc a
    sub b
    ret nz

    rst $38
    ld c, l
    adc $91
    sub d
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
    ld sp, hl
    sbc h
    add b
    rst $18
    add b
    ld c, a
    sbc l

Call_02c_53a0:
    sbc [hl]
    sbc a
    and b
    and c
    ld a, a
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    ret nz

    rst $38
    cp $80
    ld d, c

jr_02c_53b1:
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    ld a, c
    sbc e
    add b
    ld e, a
    add b
    ld d, a
    xor c
    xor d
    or b
    or c
    add b
    ld e, a
    nop
    add b
    ld e, a
    ret nz

    rst $38
    add b
    ld e, a
    rst $38
    rst $38
    ret nz

    sbc a
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
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
    rst $38
    rst $38
    nop
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ld b, b
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38

Call_02c_541b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02c_543b:
    nop
    rst $38
    db $fd
    nop
    nop
    nop
    and l
    ld a, [bc]
    rst $38
    ldh a, [$08]
    db $eb
    pop af
    push af
    db $f4
    ld c, d
    rst $38
    ldh a, [$08]
    jr nz, jr_02c_543b

    pop af
    push af
    db $f4
    add b
    rst $38
    add b
    cp $7c
    db $ed
    ld a, [bc]
    add b
    pop hl
    rst $20
    push hl
    nop
    rst $18
    add sp, -$13
    db $ed
    call nz, $40f1
    db $e3
    adc c
    rst $38
    ei
    ld_long a, $ff00
    rst $38
    jp z, $fc00

    call z, $e040
    sbc l
    rst $38
    rst $38
    set 0, c
    db $eb
    add b
    jp nz, $ff00

    db $dd
    db $e4
    jr nc, jr_02c_54b0

    rst $08
    add b
    rst $38
    rst $38
    xor e
    dec a
    jp nz, Jump_000_0b0b

    pop af
    and $00
    rst $18
    nop
    db $fd
    or b
    ret nz

    push hl
    xor a
    and c
    add b
    rst $38
    ld [hl], b
    cp b
    add b
    call nz, $ff00
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $20
    ld [hl], c
    xor c
    nop
    rst $38
    rst $38
    adc l
    ld sp, hl
    add c
    ld [hl], h
    ld [c], a
    pop af

jr_02c_54b0:
    and d
    nop
    add b
    rst $38
    ld a, a
    adc l
    dec [hl]
    db $e4
    db $f4
    add d
    nop
    rst $18
    pop hl
    jp hl


    add b
    sbc a
    add c
    rst $38
    add b
    nop
    sbc a
    nop
    sbc a
    add b
    rst $38
    nop
    sbc d
    dec d
    ld_long $ff00, a
    pop hl
    rst $20
    ld [$ff00], sp
    pop af
    adc c
    rst $38
    ld d, h
    rst $20
    cp a
    pop af
    add hl, bc
    rst $38
    nop
    db $ed
    ld hl, sp-$3e
    di
    call nz, $0000
    cp a
    add b
    rst $08
    ld a, b
    jp nz, $c471

    nop
    cp a
    nop
    ld [hl], b
    ld a, l
    and e
    ret nz

    ld b, h
    ld b, b
    adc c
    rst $38
    adc h
    adc [hl]
    db $ed
    xor c
    nop
    rst $38
    nop
    ld l, e
    ei
    and b
    inc c
    rst $38
    pop hl
    ld sp, $b02c
    ld h, h
    add b
    rst $38
    jp z, Jump_000_0cad

    dec c
    rst $38
    pop hl
    cp e
    pop hl
    nop
    nop
    ld a, a
    db $fc
    sub c
    ret nz

    db $e3
    cp [hl]
    pop hl
    add b
    sbc a
    nop
    ld [hl], b
    pop bc
    push hl
    ret nz

    pop hl
    nop
    nop
    sbc a
    db $fd
    adc a
    ret nz

    rst $20
    nop
    rst $38
    rrca
    ld [hl], c
    jp nz, $81c0

    rst $20
    nop
    rst $38
    nop
    nop
    ld l, e
    add d
    push bc
    ld a, l
    jp nz, $83ec

    adc d
    rst $38
    ld [bc], a
    rst $08
    pop bc
    db $e3
    ld b, b
    db $e3
    nop
    inc c
    rst $38
    cp $76
    ld b, b
    ld [c], a
    adc e
    rst $38
    add e
    or l
    ret nz

    ld b, e
    nop
    rst $38
    nop
    ld [$fa00], a
    add sp, -$44
    ld b, d
    add b
    rst $38
    adc a
    inc c
    cp d
    ld [$df00], a
    cp $4c
    ld a, a
    db $ed
    nop
    add b
    rst $38
    add c
    xor e
    dec a
    xor $00
    rst $38
    nop
    ld e, h
    rst $10
    rst $38
    nop
    ld e, e
    db $d3
    rst $38
    nop
    nop
    ld e, e
    push de
    cp a
    nop
    ld e, e
    db $d3
    reti


    nop
    ld e, a
    ld b, b
    ld d, a
    dec l
    rst $38
    db $d3
    rst $38
    nop
    jp c, $ffff

    rst $38
    rst $38
    ld [de], a
    add hl, hl
    ld d, d
    add d
    cp a
    rst $38
    rst $38
    add b
    ccf
    ld h, $b6
    nop
    ld a, b
    xor [hl]
    ret nc

    xor [hl]
    and [hl]
    rst $38
    ret nc

    db $fc
    nop
    or $d0
    db $dd
    rst $30
    ld c, a
    db $dd
    jr c, jr_02c_55ac

jr_02c_55ac:
    pop de
    ld h, a
    rst $38
    rst $38
    ret nc

    rst $18
    rst $38
    rst $38
    ld d, b
    rst $18
    or b
    rst $38
    ld l, h
    rst $18
    nop
    rst $18
    nop
    ret nz

    rst $18
    sbc b
    ld l, [hl]
    ld a, [c]
    rst $30
    sub b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add b
    cp a
    nop
    rst $38
    rst $38
    ld a, a
    ld [hl], l
    nop
    cp $c0
    rst $18
    ret nz

    rst $38
    or b
    rst $18
    rst $38
    rst $38
    ld b, d
    inc h
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
    nop
    nop
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld hl, sp+$46
    ld hl, sp+$46
    rst $08
    add hl, hl
    nop
    nop
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    and $43
    nop
    ld c, e
    ld h, b
    ld b, l
    ld a, [bc]
    db $10
    rst $28
    ld e, a
    and $43
    nop
    ld c, e
    ld h, b
    ld b, l
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    rst $38
    ld a, a
    ld h, b
    dec sp
    ld b, b
    ld a, $0e
    inc l
    rst $38
    ld a, a
    sbc a
    ld a, l
    inc de
    ld h, c
    ld c, $2c
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ei
    rst $38
    nop
    cp $eb
    ld [hl+], a
    rst $18
    nop
    xor a
    ld d, b
    rst $38
    jp c, $fd25

    ld b, d
    cp a
    ld [hl+], a
    db $fd
    adc b
    rst $38
    db $eb
    dec d
    rst $30
    push af
    inc bc
    and $0e
    ret c

    rst $38
    add hl, de
    pop hl
    daa
    and [hl]
    ld l, a
    ret z

    ld e, l
    ld c, h
    rst $38
    db $db
    sub b
    cp a

jr_02c_5765:
    db $fd
    inc bc
    ld a, [$fa02]
    rst $38
    ld b, $f4
    dec b
    db $e4
    dec c
    reti


    dec sp
    ld h, d
    rst $28
    rst $20
    add h
    sbc a
    jr z, @-$2e

    ldh [rP1], a
    jp c, $ff00

jr_02c_577e:
    db $fd
    inc b
    ei
    ld hl, $46ff
    and a
    jr c, jr_02c_577e

    cp $4f
    add sp, -$02
    pop hl
    sub a
    ret c

    sub a
    ret nc

    cp a
    cpl
    or b
    ld e, a
    ld h, b
    sbc a
    ret nz

    and b
    push hl
    cp $ff
    ld bc, $03f1
    and $0f
    cp b
    ld a, [hl]
    ret z

    rst $38
    ld l, a
    jp z, Jump_02c_486d

    ld [$dd90], a
    sub b
    rst $38
    rst $18
    jr z, jr_02c_5765

    ld b, b
    ld l, e
    add b
    rst $30
    rst $38
    push af
    nop
    xor [hl]
    ldh [$03], a
    xor [hl]
    ldh [$0d], a
    ret


    dec de
    or d
    rst $38
    ld [hl], a
    call nz, $c96f
    dec c
    jp nc, $d21b

    rst $38
    dec sp
    db $e4
    scf
    db $e4
    scf
    and [hl]
    ld [hl], l
    ret z

    rst $28
    ld l, a
    ret z

    ld l, a
    ld sp, hl
    add b
    pop hl
    add hl, sp
    pop hl
    rst $20
    rst $38
    ld b, $1f
    add hl, de
    rst $38
    ld [c], a
    db $fd
    db $10
    ld a, [$fbff]
    nop
    rst $30
    rlca
    ret c

    rra

jr_02c_57ec:
    ldh [$78], a
    rst $38
    add a
    rst $20
    ld a, [de]
    sbc l
    ld h, b
    ld a, d
    add b
    db $fd
    db $fc
    jp nc, $d0e0

    pop hl
    rst $30
    inc b
    rst $28
    jr jr_02c_581e

    ldh [$f7], a
    rst $28
    nop
    rst $10
    ldh [$e0], a
    rrca
    ret c

    jr c, jr_02c_57ec

    rst $38
    scf
    and a
    ld l, a
    ret z

    ld e, a
    ret z

    ld e, d
    ret z

    rst $38
    ld e, l
    nop
    rst $38
    db $10
    ld a, [$ad00]
    nop

jr_02c_581e:
    rst $38
    rst $18
    db $e4

jr_02c_5821:
    rst $38
    jr jr_02c_5821

    inc b

jr_02c_5825:
    rra
    ld [c], a
    db $fd
    rst $20
    db $10
    push hl
    rst $28
    ldh a, [rNR31]
    db $fc
    dec b
    ld e, $ff
    db $e3

jr_02c_5833:
    and $4f
    add sp, -$71
    ret z

    cpl
    sbc b
    rst $28
    rla
    jr c, jr_02c_5825

    ldh a, [$f6]
    jp Jump_02c_6fc8


jr_02c_5843:
    ld [$cdff], a
    ld c, b
    sbc d
    db $10
    dec a
    ldh [rIE], a
    jr nz, @+$01

    db $fd
    ld [de], a
    db $eb
    nop
    rst $30
    sub e
    cp b
    cpl
    rst $30
    ld h, b
    ld e, a
    ret nz

    jr c, jr_02c_5843

    ld [$309f], sp
    ld a, a
    rst $38
    ld d, b
    ld l, d
    ld b, h
    db $fd
    add b
    rst $38
    jr z, @-$09

    ld sp, hl
    nop
    ldh [$e0], a
    ret nz

    jp Jump_000_01fc


    db $e3
    rlca
    sbc h
    ld e, a
    inc a
    ld h, b
    db $e3
    add e
    sbc a
    ld d, b

jr_02c_587b:
    pop hl
    sbc b

jr_02c_587d:
    ld d, b
    ld [c], a
    rst $38
    jr jr_02c_587d

    ld [c], a
    push af
    nop
    rst $38
    cp $01
    rst $38
    rst $20
    rrca
    ret c

    ccf
    ld h, b
    ld hl, sp-$79
    rst $20
    ei
    jr jr_02c_5833

    ld d, b
    pop hl
    pop bc
    ld sp, hl
    ld b, $c7
    jr c, jr_02c_591b

    ld a, [hl-]
    ret nz

    db $dd
    inc b

jr_02c_58a0:
    ei
    jr nz, jr_02c_58a0

    ret nz

    push hl
    rst $18
    cp $01
    rst $38
    ld bc, $faf9

jr_02c_58ac:
    pop bc
    rlca
    db $f4
    rst $38
    ld b, $48
    rst $28
    sub b
    jp c, $dd90

    inc h
    sbc a
    xor e
    jr nz, jr_02c_587b

    ld d, b
    ld a, l
    ldh [$c3], a
    ld e, [hl]
    jp $ffe7


    rrca
    sbc b
    jr c, jr_02c_5928

    rst $20
    add a
    sbc a
    ld [$ffff], sp
    nop
    xor a
    jr nz, jr_02c_58ac

    ld b, b
    db $ed
    rlca
    rst $30
    rst $38
    jr @-$06

    ldh a, [$e1]
    dec bc
    sbc h
    inc sp
    ld a, b
    cp l
    ld b, a
    ld e, [hl]
    ldh [$bf], a
    ret nz

    ld a, a
    add b
    inc [hl]
    pop bc
    sub b
    rst $38
    or a
    inc h
    ld l, a
    ld b, h
    ei
    add b
    rst $38
    ld b, b
    rst $28
    cp a
    ld [bc], a
    ld e, e
    ld [hl+], a
    add b
    ldh [rOBP0], a
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

jr_02c_591b:
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

jr_02c_5928:
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

    inc a
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
    ldh [$a3], a
    cp l
    ld a, [hl]
    jp $9fff


    nop
    jp Jump_000_3c3c


    jp $e0f9


    ld [hl], d
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
    ld [hl], b
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
    rst $18
    ld bc, $0603
    ld c, $18
    ldh a, [$c8]
    dec de
    ld a, b
    rst $20
    ld h, a
    ldh [$df], a
    ld d, [hl]
    ld [c], a
    add [hl]
    and e
    ld d, b
    xor a
    dec h
    rst $38
    jp c, $b807

    rlca
    db $fd
    and d
    ld e, a
    ldh [rIE], a
    rla
    push hl
    cp d
    ld b, d
    db $fd
    db $fd
    db $fd
    rst $18
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    rst $28
    ei
    rst $28
    rst $38
    or $e0
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

jr_02c_5a0a:
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

    cp $da
    and c

jr_02c_5a1c:
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

    add sp, $76
    ldh [$fa], a
    cp $ad
    db $fd
    ld e, e
    rst $08
    rst $18

jr_02c_5a38:
    adc b
    push af
    db $10
    push de
    add d
    db $76
    ret nz

    jr jr_02c_5a1c

    rst $38
    inc a
    and l
    ld a, [hl]
    jp $c366


    ld h, [hl]
    sbc c

jr_02c_5a4a:
    db $fd
    ld b, d
    jp nz, $b781

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
    or d
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
    jr @-$68

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
    sub h
    add l
    rst $38
    rst $10
    jr c, jr_02c_5a4a

    inc e
    push hl
    ld c, $cb
    inc e
    ei
    rst $10
    jr c, jr_02c_5a0a

    add h
    inc a
    add a
    ld a, h
    rst $30

jr_02c_5a8d:
    inc c
    ld hl, sp-$02

jr_02c_5a90:
    ldh [rNR44], a
    ret nz

    ld h, h
    and d
    db $10
    rst $28
    jr jr_02c_5a90

    inc c
    rst $20
    rst $28
    jr jr_02c_5a8d

    adc l
    db $e3
    dec a
    and b
    rst $28
    jr c, jr_02c_5a38

    ld a, l
    ld l, h
    ld d, [hl]
    add a
    rst $08
    inc a
    rst $38
    inc b
    ei
    cp $e0
    db $fc
    ld b, h
    add c
    ld b, c
    adc h
    rst $38
    add b
    cp a
    ld b, b
    rst $38
    ld h, b
    rst $38
    rst $18
    jr nz, @+$01

    and b
    cp a
    jr nz, @+$71

    db $10
    rst $30
    rst $30
    ld d, b
    rst $30
    ldh a, [$e3]
    and b
    ld a, a
    and b
    ld l, a
    ei
    ret nc

    scf
    cp $e1
    db $10
    rst $30
    ld [$08db], sp
    rst $38
    ei
    ld b, h
    rst $38
    and h
    cp l
    ld c, $5b
    ld [bc], a
    rst $38
    or $41
    rst $38
    cp a
    ret nz

    ld e, a
    ld h, b
    ld e, a
    ld a, a
    ld h, b
    cpl
    or b
    cpl
    or b
    rla
    ret c

    cp $e1
    cp $c0
    ldh [$df], a
    or b
    ld l, a
    ldh [$2f], a
    call nc, $ff33
    db $ec
    dec e
    ld a, [c]
    ld c, $fd
    inc bc
    add b
    cp a
    cp $b2
    pop hl
    jr nz, @-$0f

    db $10
    or e
    inc c
    db $ed
    ld [hl+], a
    ld a, h
    ld d, a
    and b
    inc sp
    add l
    ld c, $ce
    ld [hl-], a
    cp a
    ld d, b
    ld b, b
    add b
    ld a, l
    ld bc, $a030
    inc a
    ld a, [hl-]
    push hl
    db $dd
    ld [bc], a
    ld l, b
    and b
    ld sp, hl
    ld d, b
    adc b
    ldh [rNR13], a
    add h
    ld sp, hl
    ld c, $ef
    ld sp, $ffbe
    ld c, a
    ld [hl], b
    cp a
    ret nz

    ld bc, $06fd
    rst $20
    sbc a
    add hl, sp
    ld a, $c7
    ld hl, sp+$3f
    or $64
    sub c
    ld h, b
    rst $00
    rst $00
    jr c, jr_02c_5b82

    rst $00
    or d
    and b
    add [hl]
    ld h, e
    ld l, d
    pop hl
    add sp, $1b
    ld a, [c]
    cp $e2
    rra
    ld e, [hl]
    pop hl
    ld [hl], c
    ld h, a
    jr nz, @-$3b

    inc e
    inc e
    rst $28
    db $e3
    db $e3
    add b
    cp a
    dec h
    and b
    rst $38
    ld b, b
    ld e, a
    rst $28
    ld b, b
    ld e, a
    add b
    cp a
    cp $e1
    db $e3
    jp $f33e


    cp a
    ld [hl], b
    ld h, b
    ld h, b
    sub b
    ldh [rIE], a
    ld [$14eb], sp
    rst $38
    rst $30
    add b
    rst $38

jr_02c_5b82:
    sub b
    xor a
    ld d, b
    ld e, d
    ld h, l
    rst $38
    db $fd
    ld b, d
    rst $38
    ld b, b
    rst $38
    ret z

    xor e
    sub h
    rst $38
    rst $30
    inc bc
    rst $38
    dec b
    cp $2b
    db $fc
    dec c
    rst $38
    ld a, [$fd32]
    ld d, l
    ld [$d7a8], a
    db $f4
    rst $38
    adc e
    rst $20
    rst $38
    jp c, $f53d

    ld a, [bc]
    xor d
    rst $38
    ld d, l
    ld b, c
    cp [hl]
    inc d
    rst $38
    xor b
    rst $38
    ld [hl], l
    rst $38
    rst $38
    sub l
    db $eb
    dec bc
    push af
    and l
    ei
    ld c, d
    rst $38
    rst $30
    and [hl]
    ei
    call $97f3
    jp hl


    ld c, a
    ei
    pop af
    push af
    inc e
    ret nz

    ld a, [c]
    db $fd
    xor c
    cp $52
    ld a, a
    db $fd
    add c
    cp $2a
    push de
    sub l
    db $eb
    add l
    and b
    cp $fd
    ld [$99df], a
    sbc a
    ld c, l
    daa
    rla
    and e
    rst $38
    di
    db $db
    pop hl
    xor $f1
    or h
    ei
    ld b, c
    rst $38
    rst $38
    rst $18
    sbc a
    sbc h
    ld c, a
    ld h, $17
    and d
    rst $38
    di
    jp c, $eee1

    ld [hl], c
    db $f4
    dec sp
    ld sp, hl
    db $fc
    and b
    and b
    sbc l
    and b
    cp $fc
    rst $38
    ld a, [$fbfd]
    cp a
    ldh a, [$fd]
    cp $f9
    rst $38
    ld a, a
    cp $e0
    rst $38
    rst $38
    ld a, a
    cp a
    rst $38
    ld e, a
    rst $38
    rra
    rst $28
    ld a, a
    rst $38
    rst $38
    rst $18
    rst $38
    db $f4
    ei
    jp hl


    or $ef
    rst $38
    ret nz

    ld a, [c]
    ld sp, hl
    db $e3
    rst $38
    ret nc

    rst $28
    add l
    rst $38
    jp c, Jump_000_04bb

    xor a
    rst $38
    ld d, a
    rst $38
    add a
    rst $28
    ld a, e
    rst $18
    cp a
    rst $30
    ld a, [de]
    and b
    ld d, a
    db $fd
    xor c
    cp a
    ld a, [hl]
    call $f3e3
    rst $30
    or $ba
    ld [c], a
    push af
    rst $38
    cp $bf
    ld_long $fff4, a
    jp $efbf


    dec hl
    rst $18
    rst $28
    cp d
    ld [c], a
    ld e, a
    ld d, d
    ldh [$bf], a
    or $80
    and c
    ldh [$7b], a
    rst $38
    db $fd
    and b
    ldh [$f4], a
    ei
    rst $38
    cp $e6
    add c
    ld a, [$e55e]
    ld e, a
    ld d, l
    ld [c], a
    di
    rst $38
    ld [$d8f7], a
    rst $38
    rst $20
    db $fd
    ei
    rst $28
    rst $38
    set 7, a
    and d
    rst $38
    rst $18
    ld l, b
    sub a
    rst $38
    rst $38
    rst $28
    rst $38
    ld [hl], a
    inc a
    ret z

    ld [c], a
    sbc [hl]
    pop hl
    ld l, c
    rst $38
    db $d3
    rst $28
    rst $30
    ldh [$ba], a
    ld [c], a
    ld a, a
    or $ff
    xor [hl]
    ei
    push af
    rst $38
    or a
    ld l, h
    ldh [$c8], a
    ld h, $e4
    xor d
    ldh [rNR12], a
    db $eb
    ei
    inc sp
    ldh [rP1], a
    add sp, -$49
    ld [c], a
    ei
    rra
    add c
    inc sp
    ldh [$fe], a
    rst $38
    rst $28
    ei
    ld d, b
    ld h, h
    cp b
    add b
    add h
    jp hl


    ld d, a
    ld h, [hl]
    ld [c], a
    db $fd
    rst $28
    db $eb
    db $fc
    or d
    add sp, -$21
    rst $30
    cp l
    ld h, d
    ld [$b415], a
    jp z, Jump_000_26bf

    add hl, sp
    db $dd
    or b
    add b
    sbc l
    jp z, $ff7f

    xor e
    ld l, [hl]
    and $84
    pop bc
    ld a, l
    ld [$ec6a], a
    adc d
    rst $38
    ld d, l
    rst $38
    xor a

Jump_02c_5ce7:
    ld l, e
    ret z

    pop af
    xor a
    and b
    pop bc
    ld e, e
    call z, $e9cc
    db $fd
    cp $54
    ei
    ld h, a
    add c
    rst $38
    ld d, h
    cp b
    ldh [$36], a
    jp $bf40


    ld e, [hl]
    ld h, b
    xor $bc
    ldh [$ab], a
    rst $38
    ld a, [hl]
    dec h
    jp nz, $ff00

    add h
    dec bc
    rst $38
    ld a, [hl+]
    ld a, h
    ret nz

    cp l
    ld a, [$7ec6]
    pop hl
    or h
    jp $cd04


    and a
    push af
    rst $38
    cp a
    cp c
    push hl
    ld l, [hl]
    ld h, b
    xor d
    add hl, bc
    ldh [$ca], a
    ld a, $09
    db $ec
    xor a
    rst $38
    ld d, d
    db $fd
    xor d
    ret c

    ldh [$fb], a
    and c
    ld a, $c6
    and e
    dec hl
    push de
    dec b
    ld a, [$d454]
    pop hl
    ld [$2ee2], a
    ld e, d
    pop bc
    ld l, [hl]
    cp e
    ld bc, $e0c4
    ld d, a
    inc h
    ld [c], a
    cp b
    db $e3
    adc c
    dec d
    ld l, $e2
    ldh [$e3], a
    push af
    ld l, $e4
    inc de
    ld h, b
    adc d
    and $a9
    rst $20
    cp $48
    rst $30
    xor d
    db $e3
    ld c, $e3
    ld d, l
    rst $38
    ld [de], a
    ld bc, $ccef
    db $e3
    add c
    ld h, b
    rst $38
    db $ec
    nop
    nop
    nop
    rst $38
    ld h, b
    ld h, c
    ld d, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    di
    ld h, a
    ld l, b
    or $ff
    db $ec
    pop af
    ld l, c
    ld l, d
    ld l, e
    ld d, c
    ccf
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld d, c
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
    nop
    adc a
    rst $38
    nop
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    rst $38
    cp $ec
    db $ed
    ld d, c
    ld d, c
    ld d, c
    ld h, a
    ld l, b
    ld d, c
    ld e, d
    pop bc
    ld e, e
    or $e4
    nop
    rst $38
    db $ec
    db $eb
    pop bc
    ldh [$bc], a
    pop hl
    ld e, h
    ld e, l
    adc [hl]
    cp d
    ldh [rHDMA4], a
    ld d, l
    ld d, c
    nop
    ei
    sub c
    db $e3
    adc h
    ld [c], a
    ld d, c
    call z, $e0d3
    add e
    ldh [$5a], a
    ld e, e
    add e
    ldh [$7d], a
    ldh [$5e], a
    ld e, a
    adc [hl]
    ld a, b
    ldh [rRP], a
    ld d, a
    ld d, c
    ld c, c
    rst $20
    add l
    pop af
    ld d, h
    ldh [$5a], a
    pop bc
    ld e, e
    adc l
    pop hl
    ld c, [hl]
    ldh [$d3], a
    pop hl
    adc b
    ld [c], a
    ccf
    ldh [$79], a
    ld a, d
    ld a, $3a
    ldh [$71], a
    ld [hl], d
    ld e, b
    ld e, c
    ld [hl], e
    nop
    or $8e
    db $e3
    and e
    ld h, a
    ld l, b
    rst $08
    pop hl
    pop de
    ldh [$d3], a
    ld [c], a
    ld [hl], e
    adc b
    ld [c], a
    ld d, b
    db $fd
    ld c, [hl]
    rst $38
    ldh [rHDMA3], a
    ld c, [hl]
    ld d, b
    ld [hl], h
    ld [hl], l
    db $76
    rst $00
    ld [hl], a
    ld a, b
    ld d, c
    nop
    push af
    adc [hl]
    push hl
    ld d, a
    ld [c], a
    ld d, c
    ld d, c
    ld a, h
    db $d3
    db $e3
    add a
    pop hl

jr_02c_5e31:
    ld d, b
    ld c, l
    add hl, hl
    add hl, hl

jr_02c_5e35:
    jr z, jr_02c_5e35

    ldh [$03], a
    ld c, l
    ld d, b
    ld a, b
    ld [c], a
    nop
    ret nc

    sbc $c3
    ld h, c
    ld [c], a
    rst $08
    ld [c], a
    sub c
    pop hl
    ld a, [de]
    db $d3
    ldh [rHDMA1], a
    add [hl]
    pop hl
    ld d, e
    ld c, [hl]
    pop bc
    db $e4
    cp a
    db $e3
    nop
    ld a, [c]
    add b
    rst $38
    db $e3
    adc [hl]
    db $e4
    sub b
    pop hl
    sub c
    ldh [$92], a
    pop hl
    or $e3
    pop bc
    push hl
    jr z, jr_02c_5ea9

    add hl, hl
    ld c, a
    and e
    and b
    nop
    pop de
    jr nz, jr_02c_5e31

    sub b
    pop hl
    ld d, e
    dec d
    ldh [$32], a
    set 4, h
    ld c, l
    or $e6
    pop bc
    push hl
    jr z, jr_02c_5ecc

    inc sp
    pop bc
    nop
    rst $08
    ld h, b
    db $10
    ld [c], a
    sbc b
    pop bc
    sub b
    db $e4
    db $fc
    db $eb
    pop bc
    rst $20
    ld c, l
    ld d, b
    inc sp
    pop bc
    add b
    nop
    pop af
    ld h, c
    ret nz

    sbc b
    pop bc
    pop bc
    db $fd
    inc sp
    jp nz, $f600

    add d
    db $fc
    add hl, hl
    ld [hl], c
    ld d, d
    cp e

jr_02c_5ea3:
    and d
    nop
    push af
    add d
    db $ec
    ld a, [hl+]

jr_02c_5ea9:
    dec hl
    jr nc, @+$01

    ldh [rSCX], a
    dec hl
    ld a, [hl+]
    ld [bc], a
    db $ec
    cp b
    and b
    nop
    ld a, [c]
    adc e
    and b
    ld d, d
    inc b
    add sp, $07
    ld a, [hl+]
    dec hl
    ld bc, $e4ff
    cp [hl]
    ldh [rSTAT], a
    rst $20
    ld bc, $00a1
    db $d3

jr_02c_5ec9:
    ld a, [$80e2]

jr_02c_5ecc:
    ld c, a
    push bc
    rst $00
    ld l, $01
    ld bc, $1617
    rrca
    ld [hl+], a
    inc hl
    ld d, $17
    cp d
    pop hl
    ld a, e
    pop hl
    jr nc, jr_02c_5ea3

    ld l, $a2
    cp b
    nop
    jp nc, $c2c2

    pop bc
    add sp, $0c
    ld b, $00
    rst $38
    ldh [rTMA], a
    dec bc
    inc hl
    ld [hl+], a
    cp h
    ld [c], a
    ld l, $04
    jp nz, $a3a0

    ld h, a
    adc d
    ret nc

    add l
    or b
    pop hl
    add d
    cp a
    pop hl
    ld d, [hl]
    and b
    ld b, h
    pop hl
    add hl, de
    jr jr_02c_5ec9

    pop hl
    dec sp
    ld a, a
    inc [hl]
    nop
    jr c, jr_02c_5f4a

    ld b, c
    ld b, e
    ld b, h
    cp a
    ld [c], a
    ld b, c
    ld d, d
    ld l, $a5
    adc $66
    ld e, c
    add h
    sbc a
    add e
    ld h, $81
    ld c, a
    jp nz, $97e4

    ld bc, $0217
    jp nz, Jump_000_3be1

    ret nz

    ldh [$bf], a
    pop hl
    inc a
    rlca
    ld b, d
    ld bc, $432f
    and l
    or d
    ld h, b
    ld d, e
    adc d
    rlca
    jp $8426


    ld l, a
    ld c, a
    add hl, hl
    jr z, jr_02c_5f73

    jp nz, $16e1

    ld b, $c7
    ldh [$fc], a
    pop bc

jr_02c_5f4a:
    ldh [$c0], a
    pop hl
    scf
    dec sp
    dec sp
    ld a, $4a
    ld bc, $2f81
    pop bc
    add e
    dec h
    add d
    ld c, c
    ld h, [hl]
    ccf
    push hl
    ld h, $85
    cp [hl]
    pop bc
    inc l
    ld [hl], $05
    pop hl
    scf
    nop
    ret nz

    ld [$3d48], a
    add b
    pop hl
    ld [bc], a
    and c
    call nz, Call_02c_61f4
    nop

jr_02c_5f73:
    db $ec
    ld d, b
    daa
    add b
    ld h, $85
    add b
    ldh [$2f], a
    ld bc, $3f7f
    ld c, b
    nop
    scf
    nop
    nop
    dec [hl]
    add c
    pop hl
    ei
    dec sp
    dec [hl]
    ld b, b
    pop hl
    dec sp
    ld c, b
    ccf
    ld bc, $102c
    ld [bc], a
    and e
    ld a, h
    ld h, d
    adc $46
    ld [$4e61], a
    adc e
    jp nz, $8367

    ld a, a
    pop bc
    adc a
    cpl
    ld bc, $483d
    dec bc
    ldh [$bf], a
    db $e3
    pop bc
    db $e3
    nop
    rrca
    add hl, bc
    ld bc, $3101
    add d
    add e
    rst $20
    ld h, d
    adc $46
    ld h, [hl]
    add c
    cp b
    ld h, $85
    sbc a
    ld h, c
    ld b, b
    pop bc
    inc l
    ld bc, $c04a
    ldh [$3b], a
    xor $bf
    ldh [$33], a
    inc sp
    inc sp
    pop bc
    db $e3
    jr @+$1b

    ld bc, $2c41
    nop
    add d
    ld b, b
    and b
    add hl, sp
    ld h, c
    ld c, c
    ld b, [hl]
    xor h
    ld h, b
    jr z, @-$6d

    adc l
    rrca
    ld sp, $4201
    ld a, $c6
    pop bc
    ld a, [hl]
    ldh [rIE], a
    and b
    jp Jump_000_07c0


    nop
    ld b, $0c
    add c
    ldh [$82], a
    add l
    dec [hl]
    ld b, b
    ld [c], a
    daa
    dec d
    add [hl]
    ld e, $4c
    adc c
    inc l
    ld bc, $403d
    ld b, [hl]
    ret nz

    db $fd
    ret nz

    ret nz

    pop hl
    inc bc
    nop
    ld b, $7c
    and c
    pop bc
    and c
    add d
    add h
    ld a, [c]
    jr nz, jr_02c_6015

jr_02c_6015:
    rst $00

jr_02c_6016:
    ld h, b
    ld h, d
    ld h, h
    cp e
    db $eb
    ld a, a
    ldh [$3f], a
    ld a, a
    pop hl
    ret nz

    ld [c], a
    ld b, [hl]
    ld b, a
    add d
    and [hl]
    ldh [rSC], a
    ld [c], a
    and $43
    ld c, c
    ld l, l
    add hl, bc
    adc e
    ld a, $c0
    ld b, d
    ld b, l
    ld b, [hl]
    ld b, $80
    pop hl
    ld b, [hl]
    ld b, l
    add [hl]
    and c
    pop bc
    push hl
    add h
    ld h, b
    inc a
    ld b, d
    nop
    call $ae70
    ld hl, $4260
    ld c, b
    ld h, l
    cp [hl]
    and b
    ld b, h
    ld b, e
    ld c, c
    rst $38
    ldh [rP1], a
    adc c
    and b
    add b
    adc c
    add d
    call nz, Call_000_2a67
    ld [$db20], a
    inc hl
    ret nz

    ld l, c
    add e
    add b
    inc l

jr_02c_6063:
    cp [hl]
    pop hl
    add e
    ld [c], a
    dec hl
    ld a, [hl+]
    inc b
    ld h, [hl]
    ld d, d
    ld [c], a
    inc hl
    nop
    xor c
    nop
    ld c, l
    ld b, l
    adc [hl]
    jr nz, jr_02c_6016

    ld [hl+], a
    ld a, $84
    inc bc

jr_02c_607a:
    add [hl]
    inc b
    add a
    ld [hl], c
    ld b, d
    sub l
    db $e4
    jr jr_02c_60d6

    add hl, hl
    xor [hl]
    inc hl
    ld e, l
    inc hl
    ld e, d
    ld e, e
    cp [hl]
    ld h, l
    pop bc
    ld h, b
    add h
    ld h, d
    add [hl]
    or h
    ld c, b
    ld c, l
    ld d, b
    ld [c], a
    inc hl
    ld d, e
    add hl, bc
    nop
    and [hl]
    adc [hl]
    inc hl
    ld e, h
    ld bc, $815d
    ld d, d
    push bc
    ld b, l
    ld [c], a
    dec h
    ld h, a
    ld [$2587], sp
    cp d
    and $bf
    push af
    ret nz

    add l
    add l

Jump_02c_60b1:
    cp d
    ld [bc], a
    nop
    ret


    cp h
    ld h, l
    ld c, d
    nop
    sbc [hl]
    nop
    ld d, h
    ld d, l
    nop
    rst $38
    dec l
    jr z, jr_02c_6063

    jp $0700


    jr nz, jr_02c_6140

    inc bc

jr_02c_60c8:
    nop
    xor d
    nop
    ld b, a
    or $20
    nop
    ld a, [hl]
    ld b, c
    ld [hl+], a
    nop
    cp [hl]
    dec hl
    rrca

jr_02c_60d6:
    inc hl
    ld l, $02
    call nz, Call_02c_53a0
    add hl, bc
    nop
    ld l, e
    ret nz

jr_02c_60e0:
    ld a, e
    ld b, d
    pop bc
    inc bc
    ld d, h
    nop
    ld a, e
    inc h
    ld b, b
    jr nz, jr_02c_607a

    nop
    ld d, h
    ld d, l
    inc bc
    ld a, c
    ld a, d
    and b
    ret nz

    call nz, $cea3
    db $eb
    nop
    daa
    or $00
    pop bc
    rlca
    nop
    ret nz

    ld [$6468], sp
    ld c, b
    and c
    add l
    db $eb
    nop
    ld c, e
    ld a, e
    ld [$43b7], sp
    inc c
    db $e3
    nop
    xor [hl]
    nop
    ld c, e
    call nz, $ee85
    nop
    rst $28
    jr z, jr_02c_60e0

    ld l, [hl]
    ld b, e
    and a
    ld b, e
    adc l
    ld b, d
    nop
    ret c

    db $f4
    nop
    db $ec
    jr z, jr_02c_616e

    or b
    and c
    and a
    ld b, [hl]
    add l
    ld a, [c]
    nop
    rst $28
    or $c9
    nop
    ld e, b
    add b
    jp hl


    and h
    add l
    push af
    nop
    pop af
    jr z, jr_02c_60c8

    and d
    and c
    ld e, l
    push af
    nop

jr_02c_6140:
    ld sp, hl
    nop
    or $ff
    nop
    db $fc
    or $ff
    nop
    ld_long a, $fff6
    nop
    db $fd
    or $ff
    nop
    rst $38
    nop
    or $ff
    nop
    rst $38
    nop
    rst $38
    sbc c
    rst $38
    nop
    rst $38
    adc a
    rst $38
    nop
    rst $38
    or $ff
    nop
    nop
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    rst $38

jr_02c_616e:
    or $ff
    nop
    ld b, h
    nop
    nop
    nop
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
    nop
    rst $38
    or $ff
    ld a, e
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    add l
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    ld a, e
    rst $38
    ld [c], a
    and $6e
    ld [c], a
    db $fd
    pop hl
    nop
    or $e3
    nop
    rst $38
    db $ec
    db $eb
    rst $38
    db $e4
    ld [hl], c
    db $e4
    ld c, c
    add sp, -$7b
    pop af
    jp nc, Jump_000_00e5

    adc e
    db $e4
    adc a
    rst $20
    add b
    db $e3
    add hl, bc
    db $e4
    nop
    rst $30
    ret


    add sp, -$09
    rst $20
    xor l
    ld [$00b8], a
    or $5c
    jp hl


    add b
    ld [$0d4d], a
    ld c, l
    rst $38
    ldh [$2d], a
    jp $2d4d


    ld l, c
    add sp, $00
    ld a, [c]
    ld e, h
    rst $20
    cp $eb
    ld l, l
    dec hl
    ld b, e
    dec hl
    ld a, [bc]
    cp $e0

Call_02c_61f4:
    cp a
    db $e4
    add l
    di
    ld c, $e8
    dec c
    sub b
    pop hl

jr_02c_61fd:
    ld bc, $920d
    db $e3
    adc b
    pop hl
    pop bc
    db $e4
    cp a
    push hl
    nop
    ret nc

    sub b
    xor $91
    ldh [$6c], a
    ld d, c
    ld [c], a
    or $e0
    dec bc
    ld a, [bc]
    pop bc
    push hl
    ld a, [bc]
    ld l, e
    ld a, $e1
    or b
    nop
    pop de
    jr nz, @-$36

    dec d
    ldh [$c1], a
    ld [c], a
    dec hl
    dec hl
    or $e5
    dec bc
    ld [bc], a
    pop bc
    and $4a
    add b
    db $e4
    nop
    call $c752
    push bc
    db $e3
    db $fc
    db $eb
    ld a, a
    ldh [rTMA], a
    pop bc
    db $e4
    dec c
    ld l, l
    jp z, $0aa8

    call $a177
    pop bc
    and $cc
    push hl
    nop
    ld a, b
    pop hl
    xor [hl]
    push hl
    pop bc
    ldh [rP1], a
    push de
    ld [$c1e9], sp
    db $e3
    cp a
    and $6f
    add sp, $28
    ld b, b
    ret nz

    nop
    or h
    ld b, e
    ldh a, [$0b]
    rst $38
    ld [c], a
    dec hl

jr_02c_6263:
    rst $38
    ldh [$2e], a
    and $03
    dec l
    ld c, l
    nop
    call nc, $a454
    inc c
    jp hl


    rst $38
    and $bf
    rst $20
    ld b, c
    db $e4
    jr c, jr_02c_61fd

    or e
    ld a, c
    add c
    pop bc
    ld [$6b6b], a
    ld c, e
    rst $38
    ldh [$bd], a
    add sp, -$50
    ld [bc], a
    ldh [$85], a
    xor d
    nop
    srl c
    add b
    ld c, l
    dec l
    pop bc
    ld [$102b], a
    ld a, e
    ldh [$bd], a
    pop hl
    cp h
    pop hl
    add b
    and b
    dec bc
    inc b
    jp $c900


    adc e
    xor h
    jr nc, jr_02c_6263

    ld [c], a
    sub $e1
    pop bc
    db $e3
    rst $38
    ret nz

    ld c, e
    dec hl
    ld a, c
    ldh [$bb], a
    ldh [rTMA], a
    ld hl, sp-$40
    dec bc
    ld a, [bc]
    ld [bc], a
    and h
    nop
    xor b
    ld e, c
    adc h
    ld b, a
    ld h, b
    jp nz, $eee4

    ld b, e
    ldh [rOCPD], a
    dec bc
    dec hl
    ld b, b
    ldh [$2b], a
    dec bc
    dec hl
    ld b, b
    cp a
    ldh [$bc], a
    pop hl
    ld [bc], a
    and [hl]
    ld c, c
    xor a
    ret nz

    jp hl


    add e
    db $e4
    ld l, e
    add [hl]
    ret nz

    add b
    ld bc, $3ce1
    ldh [$b5], a
    ld [c], a
    db $76
    ldh [$c1], a
    add d
    ld h, a

jr_02c_62e7:
    ld l, a
    db $d3
    ld l, e
    ld a, [bc]
    ld bc, $c62b
    ldh [rLY], a
    ld [c], a
    call $c0e0
    ld [$c300], a
    nop
    pop af
    ld [hl+], a
    add c
    nop
    inc h
    push hl

jr_02c_62fe:
    db $dd
    add b
    dec bc
    pop hl
    inc b
    ld [c], a
    add b
    db $e4
    ccf
    pop hl
    or b
    pop hl
    nop
    pop bc
    jr jr_02c_632e

    adc b
    call nz, $ea41
    ld h, c
    ld c, l
    ld l, l
    ld h, $88
    db $f4
    ldh [$c0], a
    ld [c], a
    ld bc, $400b
    ldh [$84], a
    pop bc
    pop bc
    db $e4
    ld [hl-], a
    pop bc
    add b
    and h
    nop
    adc d
    sbc e
    add c
    ld [bc], a
    ld h, $83

jr_02c_632e:
    ld c, e
    sbc a
    ld h, c
    pop bc
    pop hl
    add $a1

jr_02c_6335:
    ld b, d
    pop hl
    set 4, d
    add b
    and c
    jr nz, jr_02c_62fe

    db $e3
    cp l
    add e
    ret nz

    rst $20
    ld c, c
    ld b, e
    xor h
    ld h, b
    ld a, [bc]
    ld h, $85
    cp $e2
    jr jr_02c_62e7

    ld h, b
    adc $a0
    ld b, $c0
    dec hl
    dec hl
    ld bc, $f9c2
    ldh [$38], a
    jp nz, $b310

    and b
    add b
    and d
    sbc c
    ld c, b
    ld h, $44
    dec l
    ld d, b
    adc [hl]
    ld b, l
    and c
    ld a, [bc]
    and c
    ld b, b
    jp $c1e7


    and $af
    ld c, c
    rst $00
    inc h
    xor $82

jr_02c_6375:
    cp e
    add sp, $6b
    ld a, a
    and $02
    call z, Call_02c_6ba1
    ld b, b
    and e
    add d
    ld [c], a
    add d
    add h
    nop
    ret nc

    ld b, a
    and b

jr_02c_6388:
    ld e, a
    ld h, l
    nop
    reti


    and b
    ld c, c
    and e
    ld b, e
    and c
    dec b
    db $e4
    jr nc, jr_02c_6375

    ld [bc], a
    jp hl


    nop
    call $2140
    nop
    ld l, b
    add e
    inc sp
    pop hl
    sbc b
    ret nz

    ld d, d
    and c
    jp Jump_000_05a2


    push hl
    add h
    jp nz, $8002

    jr nz, jr_02c_6388

    db $e4
    ld c, c
    ld [hl], b
    jr z, jr_02c_6335

    rra
    ld b, c
    or a
    pop bc
    dec bc
    rst $08
    add e
    ld b, $e6
    ldh [$a7], a
    call nz, $c302
    ld d, l
    add l
    reti


    daa
    xor $e6
    dec c
    dec l
    dec l
    dec b
    dec c
    pop bc
    pop hl
    ld a, [bc]
    ld b, a
    add b
    ld bc, $8484
    pop hl
    pop bc
    push hl
    pop bc
    add $10
    ld c, c
    ld d, b
    rra
    ld h, $37
    call nz, $8205
    ld c, e
    add h
    db $e4
    daa
    jp $8602


    nop
    nop
    or c
    ld d, a
    ld h, $fe
    jp $a6f2


    ld [hl], h
    ldh [$c1], a
    and $c2
    ld h, b
    nop
    xor $00
    sub c
    ld c, $76
    rst $00
    rst $30
    ld c, b
    pop bc
    db $e3
    ld e, e
    inc l
    adc c
    ld sp, $e47e
    db $fd
    add hl, hl
    inc b
    db $eb
    ret nz

    cp $e1
    ld l, l
    ret nz

    db $eb
    nop
    ld l, [hl]
    and [hl]
    rst $00
    ld a, [hl]
    db $eb
    inc c
    ld h, c
    jr nz, @+$10

    jp nz, Jump_02c_4206

    adc $ec
    add l
    ld a, [bc]
    cp l
    ld h, $4d
    adc [hl]
    ldh [$84], a
    and $00
    call Call_000_2e44
    ld [$5300], sp
    or c
    ld l, c
    ldh a, [$60]
    ld [$8482], a
    and $1c
    ret z

    jr nc, jr_02c_6487

    xor $b7
    ld [$e7c0], sp
    ld [$6d83], a
    dec l
    jp nc, $8567

    ei
    nop
    or $f0
    ld h, a
    ld c, d
    ret c

    push af
    ld [hl-], a
    ldh a, [$28]
    jp z, $f885

    ld a, e
    ld sp, hl
    add sp, -$57
    nop
    ld e, l
    ld hl, sp+$00
    xor $28
    ld d, c
    add l
    rst $38
    or $ff
    ret c

    sub $a3
    ld_long a, $fff6
    nop
    sbc c
    rst $38
    or $ff
    sbc c
    rst $38
    add l
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    ld a, e
    rst $38
    nop
    or $ff
    nop
    rst $38
    or $ff
    add l
    rst $38

jr_02c_6487:
    or $ff
    nop
    rst $38
    or $ff
    ld a, e
    rst $38
    nop
    or $ff
    sbc c
    rst $38
    add l
    ld a, [$0000]
    nop
    ld b, c
    nop
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
    rrca
    rst $38
    rst $30
    nop
    ldh [rIE], a
    ldh [$f5], a
    ret z

    db $e3
    ret nz

    rst $28
    jp hl


    rst $20
    and a
    pop hl

jr_02c_64b5:
    and b
    db $ec
    ld h, a

jr_02c_64b8:
    xor $00
    add b
    db $eb
    ld c, b
    rst $28
    ld h, b
    ld [$f028], a
    ldh [$f9], a
    jr nz, jr_02c_64b5

    ldh [rIE], a
    and b
    rst $38
    nop
    ldh [$f0], a
    adc b
    ret c

    ldh [rIE], a
    add b
    push bc
    ld c, c
    db $d3
    jr nz, @+$01

    ld b, b
    or $20
    pop de
    nop
    db $ec
    xor [hl]
    nop
    call $adcf
    jr nz, jr_02c_64b8

    ret nc

    or $c0
    or d
    ldh [rIE], a
    ldh [$fc], a
    nop
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
    ld h, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $f5
    pop af
    pop af
    pop hl
    db $fc

jr_02c_6519:
    jr jr_02c_6519

    pop hl
    ld [c], a
    ei
    cp l
    db $ec
    inc de
    inc de
    ldh [rIE], a
    ldh [rIE], a
    ldh [$e9], a
    nop
    ld h, c
    ld a, [$ee1d]
    and b
    add sp, $01
    ld a, [c]
    ldh [rIE], a
    jp z, $ffdf

    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and $00
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
    nop
    nop
    ld bc, $1500
    ld [de], a
    nop
    nop
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rra
    inc bc
    ld a, l
    ld e, h
    ld e, b
    ld b, b
    inc d
    inc l
    cp c
    ld a, [hl]
    jp nc, Jump_000_0c69

    ld c, l
    dec h
    inc h
    rra
    ld c, b
    ld c, l
    ld c, c
    ret


    jr c, jr_02c_6626

    inc e
    cp b
    ld a, h
    ld [hl], d
    ld a, h
    ccf
    inc bc
    cpl
    ld d, b
    sbc a
    ld bc, $4235
    ld c, l
    ld hl, $7fff
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    db $fd
    rst $38
    rst $38
    xor $c5
    ld a, [$eadf]
    rst $18
    push af

jr_02c_6626:
    rst $38
    rst $38
    rst $08
    rst $18
    ei
    rst $38
    rst $08
    rst $38
    rst $18
    or $fc
    pop hl
    rst $18
    ldh [$da], a
    pop hl
    nop
    rst $38
    ccf
    rst $38
    rst $38
    nop
    ldh [$80], a
    ld [hl], b
    add b
    rst $38
    ret nz

    ccf
    rst $38
    ret nz

    cp a
    rst $38
    xor b
    rst $38
    push af
    ld b, b
    cp a
    sub a
    nop
    rst $38
    xor d
    cp a
    ldh [rHDMA5], a
    ld a, [$f6e0]
    ldh [rHDMA5], a
    cp [hl]
    db $dd
    ldh [rIE], a
    sub $f9
    ld h, d
    db $fd
    db $fc
    db $eb
    ld [c], a
    rst $38
    db $fd
    ld d, [hl]
    ld sp, hl
    and d
    db $fd
    ld b, $f9
    xor d
    rst $38
    ld d, l
    cp $01
    db $fc
    rst $38
    ld a, [$efff]
    rst $38
    rst $38
    db $dd
    rst $38
    or [hl]
    rst $38
    add sp, -$01
    ld [hl], d
    ld e, a
    db $fd
    rst $10
    ld hl, sp+$62
    db $fd
    add b
    pop hl
    ld d, l
    ld a, e
    ldh [$e9], a
    xor d
    cp d
    ldh [$b2], a
    pop hl
    nop
    cp $ec
    xor d
    ld d, l
    nop
    sub a
    rst $38
    ld d, l
    xor d
    and h
    pop hl
    ld d, l
    db $e3
    db $e3
    ld c, a
    ldh [$d5], a
    xor d
    ld c, e
    ldh [$ea], a
    ld a, [$c0e0]
    ld a, [$e0e0]
    cp $e0
    ldh a, [$fa]
    cp $e2
    ld hl, sp-$02
    ld [c], a
    ld d, h
    rst $38
    db $fc
    rst $38
    xor e
    ei
    cp $54
    or h
    and $11
    rst $38
    ld h, d
    cp a
    call nz, Call_02c_7fff
    adc b
    rst $38
    inc sp
    db $dd
    ld h, [hl]
    cp e
    call z, $77ff
    adc b
    rst $38
    db $10
    rst $38
    adc b
    rst $38
    ld b, [hl]
    rst $28
    db $fd
    inc hl
    cp $11
    ld hl, sp-$1c
    ccf
    pop de
    ccf
    rst $38
    and d
    ld a, a
    ld b, h
    rst $38
    adc b
    db $dd
    ld de, $ffbb
    ld [hl+], a
    db $76
    ld b, l
    db $fc
    adc e
    ld hl, sp+$17
    db $fc
    rst $18
    adc e
    db $fc
    ld b, l
    cp $22
    rst $00
    ldh [$88], a
    db $fd
    rst $38
    ld b, h
    ld a, [hl]
    and d
    db $e4
    ld de, $2288
    db $10
    rst $38
    ld b, h
    nop
    adc b
    nop
    ld de, $2200
    ld bc, $44ff
    ld [bc], a
    adc b
    ld c, a
    db $10
    inc hl
    adc b
    ld de, $44f7
    nop
    ld [hl+], a
    ldh a, [$e0]
    adc b
    nop
    ld b, h
    add b
    inc bc
    ld [hl+], a
    db $10
    ld sp, hl
    pop hl
    pop af
    ldh [$f8], a
    pop hl
    rst $38
    pop hl
    reti


    ldh [$f0], a
    ldh [$fc], a
    pop de
    ld [c], a
    ldh a, [$e2]
    pop bc
    adc b
    inc bc
    db $10
    add e
    db $10
    cp e
    pop bc
    ret z

    ld hl, sp-$1b
    rst $38
    nop
    ld h, [hl]
    ret c

    pop hl
    sbc c
    cp $f9
    pop hl
    sbc c
    ld de, $99bb
    ret nz

    ret z

    nop
    cp a
    nop
    add b
    ld [$ddc0], sp
    ret nz

    pop bc
    ldh [$d9], a
    rst $38
    pop de
    db $db
    sbc c
    ld [hl], e
    ret nz

jr_02c_675f:
    and $01
    ld h, [hl]
    or a
    add c
    di
    ret nz

    ld hl, sp-$1b
    sbc c
    ld h, [hl]
    adc $e3
    sbc c
    cp $e7
    pop bc
    sbc c
    ld d, l
    cp e
    ld [hl], e
    ret nz

    rst $38
    nop
    rst $18
    ld [hl], d
    add b
    ld [c], a
    ret nz

    ld h, a
    ld hl, sp-$20
    rst $38
    reti


    ld e, a
    or l
    db $db
    rst $38
    rst $38
    sbc c
    ld h, [hl]
    ret nz

    ld h, [hl]
    ei
    ldh [$fb], a
    sbc c
    ld h, [hl]
    ld hl, sp-$20
    rst $38
    add e
    ld a, a
    rrca
    rst $38
    sub c
    rrca
    ld a, [$f8e0]
    push hl
    jr nz, jr_02c_675f

    ld h, [hl]
    add sp, -$20
    xor b
    jp $ff99


    ld h, [hl]
    pop bc
    cp $f0
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $20
    cp $01
    cp $f0
    db $e3
    ld [hl], b
    db $e4
    dec de
    nop
    ld a, e
    di
    nop
    ei

jr_02c_67bb:
    cp $e1
    ld h, b
    db $e4
    add sp, $00
    ld [hl], $00
    ld e, a
    scf
    nop
    rst $20
    nop
    rrca
    add sp, -$20
    dec de
    ld d, b
    jp hl


    ld c, a
    nop
    ld a, [hl]
    nop
    ld a, b
    ld b, b
    jp hl


    jr nc, jr_02c_67bb

    ld a, b
    add sp, -$20
    ld a, l
    ld a, a
    cp $e0
    ld b, a
    nop
    ld d, $00
    ldh a, [$e0]
    ldh a, [$5f]
    dec d
    nop
    halt
    rst $30
    cp $e0
    or $00
    db $e4
    ld e, a
    ret nc

    nop
    or [hl]
    nop
    ld [hl], a
    xor $e0
    or a
    add sp, -$20
    ld e, l
    ld d, $a0
    ld [$0036], a
    or b
    and b
    ldh a, [rNR22]
    ret nz

    ldh [$f9], a
    or $fe
    pop hl
    ret nz

    call nz, Call_000_00d8
    ld l, [hl]
    nop
    cpl
    sub d
    cp $e2
    db $76
    db $e4
    ldh [$60], a
    jp hl


    ld l, [hl]
    db $e4
    ldh [$a0], a
    ret


    adc b
    ccf
    nop
    db $10
    add b
    db $10
    ret nz

    ret z

    ld hl, sp-$1b
    sub h
    xor l
    ccf
    ld [hl], e
    ret nz

    rst $20
    nop
    ld h, a
    add b
    sub b
    pop bc
    ld hl, sp-$1d
    ld hl, sp+$7f
    and c
    sub b
    ret


    or b
    pop bc
    inc bc
    rst $38
    add b
    ld a, a
    add d
    cp a
    ld a, h
    db $10
    ldh [rSTAT], a
    add b
    add c
    ld e, $a0
    ld sp, hl
    rst $38
    cp $02
    db $fc
    ld h, h
    add b
    inc b
    nop
    ld [$00eb], sp
    ld hl, sp+$0e
    ret nz

    rst $38
    ld [$8180], a
    ld a, a
    ld c, h
    rst $38
    inc bc
    ld b, b
    nop
    jr nz, jr_02c_6866

jr_02c_6866:
    ccf
    nop
    ld bc, $00fd
    and b
    jp $fe01


    add c
    ld a, [hl]
    db $10
    rrca
    ld h, a
    inc b
    inc bc
    inc bc
    db $ec
    and d
    ld e, $c0
    nop
    ret nz

    jp hl


    ret nz

    sub $8d
    pop bc

jr_02c_6882:
    add b
    nop
    sub $e1
    jr nz, jr_02c_6882

jr_02c_6888:
    ldh [rSTAT], a
    nop
    cp a
    add [hl]
    nop
    sbc b
    nop
    ld [bc], a
    nop
    or [hl]
    pop hl
    ld [$fa3e], sp
    ldh [rDIV], a
    nop
    jp nz, Jump_000_3300

    cp [hl]
    ldh [$fe], a
    pop hl
    rra
    inc bc
    nop
    rlca
    nop
    rra
    push af
    add d
    rst $38
    db $ed
    nop
    nop
    nop
    rst $30
    nop
    rlca
    inc b
    rst $38
    xor $07
    nop
    nop
    nop
    di
    ld a, [hl-]
    ld a, [hl-]
    ei
    ldh [rIE], a
    rst $38
    nop
    nop
    dec b
    dec bc
    call $ff08
    db $ec
    dec bc
    dec b
    ret nz

    rst $38
    ret nz

    add sp, $0c
    add hl, bc
    ld a, [c]
    rst $38
    db $ec
    inc c
    ret nz

    rst $38
    add b
    jp hl


    dec c
    ld a, [bc]
    cpl
    cpl
    ret


    ld a, [bc]
    rst $38
    and $f4
    ldh [$0d], a
    ret nz

    rst $38
    ld b, b
    jp hl


    rrca
    jr jr_02c_6888

    ld bc, $1801
    db $10
    ld de, $e3fe
    db $f4
    pop hl
    ld c, $fc
    ret nz

    rst $38
    nop
    jp hl


    ld c, $16
    ld [bc], a
    ld [bc], a
    ld d, $11
    ld a, a
    dec de
    ld a, [de]
    inc e
    inc e
    ld a, [de]
    dec de
    db $10
    db $f4
    pop hl
    ld sp, hl
    rrca
    ret nz

    rst $38
    add b
    ld [$0316], a
    inc bc
    ld d, $10
    ld a, a
    add hl, de
    rra
    ld bc, $1f01
    add hl, de
    ld de, $e1f4
    db $fc
    add b
    rst $38
    add b
    db $eb
    ld l, $20
    ld hl, $112e
    add hl, de
    rst $38
    dec e
    ld [bc], a
    ld [bc], a
    dec e
    add hl, de
    db $10
    ld l, $20
    di
    inc h
    ld l, $80
    rst $38
    nop
    db $ec
    ld [hl+], a
    inc hl
    jr jr_02c_694c

    rst $38
    add hl, de
    dec e
    inc bc
    inc bc
    dec e
    add hl, de
    ld de, $f318
    ld [hl+], a
    dec h
    nop
    rst $38
    nop
    db $ec

jr_02c_694c:
    ld de, $0f0e
    db $10
    rst $38
    ld de, $3219
    inc sp
    inc [hl]
    dec [hl]
    add hl, de
    db $10
    ld hl, sp-$0c
    pop hl
    add b
    rst $38
    add b
    ret nc

    jr nc, jr_02c_6998

    scf
    jr c, @+$3b

    add hl, bc
    jr nc, @-$7e

    rst $18
    add b
    sub $31
    rst $38
    ldh [$80], a
    rst $18
    add b
    sub $00
    call nz, $80dc
    rst $18
    add b
    ret nc

    ld h, $27
    ld l, $c1
    and h
    db $10
    ld l, $b3
    ld a, [hl+]
    dec hl
    add b
    rst $18
    add b
    xor l
    jr z, jr_02c_69b2

    add b
    and a
    inc l
    add hl, bc
    dec l
    nop
    rst $38
    add b
    xor h
    rrca
    cp $e3
    add h
    pop bc
    db $f4

jr_02c_6998:
    db $e3
    ret nz

    rst $38
    inc a
    jp hl


    add sp, $00
    add l
    ld b, $13
    ld [de], a
    ld b, $00
    sbc a
    ld hl, sp+$78
    inc bc
    dec d
    inc d
    adc b
    pop hl
    rst $10
    push hl
    ret nz

    rst $38
    ret c

jr_02c_69b2:
    push hl
    cp $f3
    add $ff
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

Call_02c_6a55:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    ld l, e
    inc l
    inc c
    rst $38
    rst $28
    inc l
    rst $38
    ldh [$08], a
    ld [$e0e6], sp
    inc bc
    inc l
    inc l
    db $fd
    and $fe
    or $c9
    db $eb
    rst $10
    and $c0
    ldh [rIE], a
    rst $38
    nop
    ret nz

    db $eb
    cp b
    ld_long $ffc0, a
    add c
    rst $20
    ld a, e
    db $e4
    ld [hl], c
    db $e4
    add b
    rst $38
    ld b, c
    db $eb
    ccf
    dec bc
    ld c, l
    ld c, $2e
    ld l, l
    dec bc
    rst $38
    db $e4
    db $f4
    ld [c], a
    db $fc
    ret nz

    rst $38
    ret nz

    ld [$0e0d], a
    ld l, $2d
    dec bc
    ld c, d
    rra
    ld c, d
    ld a, [bc]
    ld a, [bc]
    ld c, d
    ld l, d
    db $f4
    db $e3
    ret nz

    rst $38
    ret nz

    rst $28
    ccf
    ld a, [bc]
    ld l, d
    ld c, $2e
    ld c, d
    ld a, [hl+]
    ret nz

    xor $80
    sbc $f6
    add b
    pop hl
    dec c
    dec c
    ret nz

    ldh [$0a], a
    ld c, $2e
    ld a, [hl+]
    add b
    ret nz

    ldh [$f4], a
    pop hl
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    add $c4
    jp nz, Jump_000_020a

    rst $38
    pop hl
    ld a, [hl+]
    cp c
    jp $ffc0


    add b
    rst $08
    ret nz

    db $e4
    add b
    rst $18
    ret nz

    push de
    nop
    add b
    db $e3
    add b
    rst $18
    ld b, b
    call nc, $a4ff
    ret nz

    ldh a, [$80]
    rst $18
    ret nz

    pop bc
    ret nz

    push hl
    add b
    ret nz

    rst $18
    ret nz

    adc l
    ret nz

    rst $38
    add b
    rst $18
    db $fc
    db $eb
    ret nz

    rst $38
    ld b, c
    adc b
    call z, $ff8e
    push hl
    dec bc
    dec bc
    db $ec
    rst $38
    push hl
    ret nz

    rst $38
    ld bc, $8c87
    inc e
    rst $38
    db $e4
    ret nz

    pop hl
    adc h
    adc h
    xor h
    rst $38
    ld [c], a
    ld b, b
    xor d
    cp h

Jump_02c_6b2e:
    ei
    ld bc, $ff08
    db $f4
    sbc e
    ld l, h
    ret nz

    rst $38
    ret nz

    ld a, [$7f81]
    ld a, a
    ld l, [hl]
    rst $38
    rst $38
    nop
    ret nz

    rst $38
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
    cp h
    ld [c], a
    ld bc, $ff6c
    jp hl


    ret nz

    rst $38
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
    cp c
    rst $38
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38

Call_02c_6b80:
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
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    or e
    call z, $c0ff
    rst $38
    rst $38

Call_02c_6ba1:
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    ret nz

    rst $38
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
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    ret nz

    rst $38
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
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    call z, $c0ff
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    ei
    nop
    nop
    nop
    dec b
    rrca
    rst $38
    rst $20
    nop
    rst $38
    pop af
    ldh [$fe], a
    cp $e0
    ld hl, sp-$17
    ldh [$ef], a
    nop
    ei
    ld [$f3e0], a
    or $ec
    and b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    nop
    and $00
    ld a, [$dfc4]
    jp nc, $f7a5

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02c_6c2f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02c_6c38:
    nop
    rst $38
    rst $38

jr_02c_6c3b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    xor c
    nop
    rst $38
    rst $38
    db $fd
    db $fc
    jr z, jr_02c_6c2f

    ld [c], a
    ld c, b
    rst $10
    ld sp, hl
    ld e, b
    inc d
    cp d
    rst $38
    ld hl, sp-$09
    jr jr_02c_6c3b

    ld [c], a
    jr c, jr_02c_6c38

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    db $f4
    di
    inc de
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    nop
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
    nop
    nop
    ld [bc], a
    nop
    ccf
    ccf
    nop
    nop
    ld hl, sp+$46
    ld hl, sp+$46
    rst $08
    add hl, hl
    nop
    nop
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ret z

    inc bc
    call nz, $0306
    ld [bc], a
    ld [bc], a
    ld bc, $03c8
    ldh a, [$03]
    call nz, $0306
    ld [bc], a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
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
    dec h
    ei
    rst $38
    nop
    cp $eb
    ld [hl+], a
    rst $18
    nop
    xor a
    ld d, b
    rst $38
    jp c, $fd25

    ld b, d
    cp a
    ld [hl+], a
    db $fd
    adc b
    rst $38
    db $eb
    dec d
    rst $30
    push af
    inc bc
    and $0e
    ret c

    rst $38
    add hl, de
    pop hl
    daa
    and [hl]
    ld l, a
    ret z

    ld e, l
    ld c, h
    rst $38
    db $db
    sub b
    cp a

jr_02c_6d93:
    db $fd
    inc bc
    ld a, [$fa02]
    rst $38
    ld b, $f4
    dec b
    db $e4
    dec c
    reti


    dec sp
    ld h, d
    rst $28
    rst $20
    add h
    sbc a
    jr z, @-$2e

    ldh [rP1], a
    jp c, $ff00

jr_02c_6dac:
    db $fd
    inc b
    ei
    ld hl, $46ff
    and a
    jr c, jr_02c_6dac

    cp $4f
    add sp, -$02
    pop hl
    sub a
    ret c

    sub a
    ret nc

    cp a
    cpl
    or b
    ld e, a
    ld h, b
    sbc a
    ret nz

    and b
    push hl
    cp $ff
    ld bc, $03f1
    and $0f
    cp b
    ld a, [hl]
    ret z

    rst $38
    ld l, a
    jp z, Jump_02c_486d

    ld [$dd90], a
    sub b
    rst $38
    rst $18
    jr z, jr_02c_6d93

    ld b, b
    ld l, e
    add b
    rst $30
    rst $38
    push af
    nop
    xor [hl]
    ldh [$03], a
    xor [hl]
    ldh [$0d], a
    ret


    dec de
    or d
    rst $38
    ld [hl], a
    call nz, $c96f
    dec c
    jp nc, $d21b

    rst $38
    dec sp
    db $e4
    scf
    db $e4
    scf
    and [hl]
    ld [hl], l
    ret z

    rst $28
    ld l, a
    ret z

    ld l, a
    ld sp, hl
    add b
    pop hl
    add hl, sp
    pop hl
    rst $20
    rst $38
    ld b, $1f
    add hl, de
    rst $38
    ld [c], a
    db $fd
    db $10
    ld a, [$fbff]
    nop
    rst $30
    rlca
    ret c

    rra

jr_02c_6e1a:
    ldh [$78], a
    rst $38
    add a
    rst $20
    ld a, [de]
    sbc l
    ld h, b
    ld a, d
    add b
    db $fd
    db $fc
    jp nc, $d0e0

    pop hl
    rst $30
    inc b
    rst $28
    jr jr_02c_6e4c

    ldh [$f7], a
    rst $28
    nop
    rst $10
    ldh [$e0], a
    rrca
    ret c

    jr c, jr_02c_6e1a

    rst $38
    scf
    and a
    ld l, a
    ret z

    ld e, a
    ret z

    ld e, d
    ret z

    rst $38
    ld e, l
    nop
    rst $38
    db $10
    ld a, [$ad00]
    nop

jr_02c_6e4c:
    rst $38
    rst $18
    db $e4

jr_02c_6e4f:
    rst $38
    jr jr_02c_6e4f

    inc b

jr_02c_6e53:
    rra
    ld [c], a
    db $fd
    rst $20
    db $10
    push hl
    rst $28
    ldh a, [rNR31]
    db $fc
    dec b
    ld e, $ff
    db $e3

jr_02c_6e61:
    and $4f
    add sp, -$71
    ret z

    cpl
    sbc b
    rst $28
    rla
    jr c, jr_02c_6e53

    ldh a, [$f6]
    jp Jump_02c_6fc8


jr_02c_6e71:
    ld [$cdff], a
    ld c, b
    sbc d
    db $10
    dec a
    ldh [rIE], a
    jr nz, @+$01

    db $fd
    ld [de], a
    db $eb
    nop
    rst $30
    sub e
    cp b
    cpl
    rst $30
    ld h, b
    ld e, a
    ret nz

    jr c, jr_02c_6e71

    ld [$309f], sp
    ld a, a
    rst $38
    ld d, b
    ld l, d
    ld b, h
    db $fd
    add b
    rst $38
    jr z, @-$09

    ld sp, hl
    nop
    ldh [$e0], a
    ret nz

    jp Jump_000_01fc


    db $e3
    rlca
    sbc h
    ld e, a
    inc a
    ld h, b
    db $e3
    add e
    sbc a
    ld d, b

jr_02c_6ea9:
    pop hl
    sbc b

jr_02c_6eab:
    ld d, b
    ld [c], a
    rst $38
    jr jr_02c_6eab

    ld [c], a
    push af
    nop
    rst $38
    cp $01
    rst $38
    rst $20
    rrca
    ret c

    ccf
    ld h, b
    ld hl, sp-$79
    rst $20
    ei
    jr jr_02c_6e61

    ld d, b
    pop hl
    pop bc
    ld sp, hl
    ld b, $c7
    jr c, jr_02c_6f49

    ld a, [hl-]
    ret nz

    db $dd
    inc b

jr_02c_6ece:
    ei
    jr nz, jr_02c_6ece

    ret nz

    push hl
    rst $18
    cp $01
    rst $38
    ld bc, $faf9

jr_02c_6eda:
    pop bc
    rlca
    db $f4
    rst $38
    ld b, $48
    rst $28
    sub b
    jp c, $dd90

    inc h
    sbc a
    xor e
    jr nz, jr_02c_6ea9

    ld d, b
    ld a, l
    ldh [$c3], a
    ld e, [hl]
    jp $ffe7


    rrca
    sbc b
    jr c, jr_02c_6f56

    rst $20
    add a
    sbc a
    ld [$ffff], sp
    nop
    xor a
    jr nz, jr_02c_6eda

    ld b, b
    db $ed
    rlca
    rst $30
    rst $38
    jr @-$06

    ldh a, [$e1]
    dec bc
    sbc h
    inc sp
    ld a, b
    cp l
    ld b, a
    ld e, [hl]
    ldh [$bf], a
    ret nz

    ld a, a
    add b
    inc [hl]
    pop bc
    sub b
    rst $38
    or a
    inc h
    ld l, a
    ld b, h
    ei
    add b
    rst $38
    ld b, b
    rst $28
    cp a
    ld [bc], a
    ld e, e
    ld [hl+], a
    add b
    ldh [rOBP0], a
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

Call_02c_6f40:
    ld [$6d4a], a
    ld c, b
    ld l, a
    ld d, b
    rst $38
    push af
    sub b

jr_02c_6f49:
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

jr_02c_6f56:
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

    inc a
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
    ldh [$a3], a
    cp l
    ld a, [hl]
    jp $9fff


    nop
    jp Jump_000_3c3c


    jp $e0f9


    ld [hl], d
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
    ld [hl], b
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
    rst $18
    ld bc, $0603
    ld c, $18
    ldh a, [$c8]
    dec de
    ld a, b
    rst $20
    ld h, a
    ldh [$df], a
    ld d, [hl]
    ld [c], a
    add [hl]
    and e
    ld d, b
    xor a
    dec h
    rst $38
    jp c, $b807

    rlca
    db $fd
    and d
    ld e, a
    ldh [rIE], a
    rla
    push hl
    cp d
    ld b, d
    db $fd
    db $fd
    db $fd
    rst $18
    rst $38
    rst $38

Jump_02c_6fc8:
    ei
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    rst $28
    ei
    rst $28
    rst $38
    or $e0
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

jr_02c_7038:
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

    cp $da
    and c

jr_02c_704a:
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

    add sp, $76
    ldh [$fa], a
    cp $ad
    db $fd
    ld e, e
    rst $08
    rst $18

jr_02c_7066:
    adc b
    push af
    db $10
    push de
    add d
    db $76
    ret nz

    jr jr_02c_704a

    rst $38
    inc a
    and l
    ld a, [hl]
    jp $c366


    ld h, [hl]
    sbc c

jr_02c_7078:
    db $fd
    ld b, d
    jp nz, $b781

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
    or d
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
    jr @-$68

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
    sub h
    add l
    rst $38
    rst $10
    jr c, jr_02c_7078

    inc e
    push hl
    ld c, $cb
    inc e
    ei
    rst $10
    jr c, jr_02c_7038

    add h
    inc a
    add a
    ld a, h
    rst $30

jr_02c_70bb:
    inc c
    ld hl, sp-$02

jr_02c_70be:
    ldh [rNR44], a
    ret nz

    ld h, h
    and d
    db $10
    rst $28
    jr jr_02c_70be

    inc c
    rst $20
    rst $28
    jr jr_02c_70bb

    adc l
    db $e3
    dec a
    and b
    rst $28
    jr c, jr_02c_7066

    ld a, l
    ld l, h
    ld d, [hl]
    add a
    rst $08
    inc a
    rst $38
    inc b
    ei
    cp $e0
    db $fc
    ld b, h
    add c
    ld b, c
    adc h
    rst $38
    add b
    cp a
    ld b, b
    rst $38
    ld h, b
    rst $38
    rst $18
    jr nz, @+$01

    and b
    cp a
    jr nz, @+$71

    db $10
    rst $30
    rst $30
    ld d, b
    rst $30
    ldh a, [$e3]
    and b
    ld a, a
    and b
    ld l, a
    ei
    ret nc

    scf
    cp $e1
    db $10
    rst $30
    ld [$08db], sp
    rst $38
    ei
    ld b, h
    rst $38
    and h
    cp l
    ld c, $5b
    ld [bc], a
    rst $38
    or $41
    rst $38
    cp a
    ret nz

    ld e, a
    ld h, b
    ld e, a
    ld a, a
    ld h, b
    cpl
    or b
    cpl
    or b
    rla
    ret c

    cp $e1
    cp $c0
    ldh [$df], a
    or b
    ld l, a
    ldh [$2f], a
    call nc, $ff33
    db $ec
    dec e
    ld a, [c]
    ld c, $fd
    inc bc
    add b
    cp a
    cp $b2
    pop hl
    jr nz, @-$0f

    db $10
    or e
    inc c
    db $ed
    ld [hl+], a
    ld a, h
    ld d, a
    and b
    inc sp
    add l
    ld c, $ce
    ld [hl-], a
    cp a
    ld d, b
    ld b, b
    add b
    ld a, l
    ld bc, $a030
    inc a
    ld a, [hl-]
    push hl
    db $dd
    ld [bc], a
    ld l, b
    and b
    ld sp, hl
    ld d, b
    adc b
    ldh [rNR13], a
    add h
    ld sp, hl
    ld c, $ef
    ld sp, $ffbe
    ld c, a
    ld [hl], b
    cp a
    ret nz

    ld bc, $06fd
    rst $20
    sbc a
    add hl, sp
    ld a, $c7
    ld hl, sp+$3f
    or $64
    sub c
    ld h, b
    rst $00
    rst $00
    jr c, jr_02c_71b0

    rst $00
    or d
    and b
    add [hl]
    ld h, e
    ld l, d
    pop hl
    add sp, $1b
    ld a, [c]
    cp $e2
    rra
    ld e, [hl]
    pop hl
    ld [hl], c
    ld h, a
    jr nz, @-$3b

    inc e
    inc e
    rst $28
    db $e3
    db $e3
    add b
    cp a
    dec h
    and b
    rst $38
    ld b, b
    ld e, a
    rst $28
    ld b, b
    ld e, a
    add b
    cp a
    cp $e1
    db $e3
    jp $f33e


    cp a
    ld [hl], b
    ld h, b
    ld h, b
    sub b
    ldh [rIE], a
    ld [$14eb], sp
    rst $38
    rst $30
    add b
    rst $38

jr_02c_71b0:
    sub b
    xor a
    ld d, b
    ld e, d
    ld h, l
    rst $38
    db $fd
    ld b, d
    rst $38
    ld b, b
    rst $38
    ret z

    xor e
    sub h
    rst $38
    rst $30
    inc bc
    rst $38
    dec b
    cp $2b
    db $fc
    dec c
    rst $38
    ld a, [$fd32]
    ld d, l
    ld [$d7a8], a
    db $f4
    rst $38
    adc e
    rst $20
    rst $38
    jp c, $f53d

    ld a, [bc]
    xor d
    rst $38
    ld d, l
    ld b, c
    cp [hl]
    inc d
    rst $38
    xor b
    rst $38
    ld [hl], l
    rst $38
    rst $38
    sub l
    db $eb
    dec bc
    push af
    and l
    ei
    ld c, d
    rst $38
    rst $30
    and [hl]
    ei
    call $97f3
    jp hl


    ld c, a
    ei
    pop af
    push af
    inc e
    ret nz

    ld a, [c]
    db $fd
    xor c
    cp $52
    ld a, a
    db $fd
    add c
    cp $2a
    push de
    sub l
    db $eb
    add l
    and b
    cp $fd
    ld [$99df], a
    sbc a
    ld c, l
    daa
    rla
    and e
    rst $38
    di
    db $db
    pop hl
    xor $f1
    or h
    ei
    ld b, c
    rst $38
    rst $38
    rst $18
    sbc a
    sbc h
    ld c, a
    ld h, $17
    and d
    rst $38
    di
    jp c, $eee1

    ld [hl], c
    db $f4
    dec sp
    ld sp, hl
    rst $38
    rst $38
    rst $38
    db $fc
    cp $f9
    db $fc
    ei
    cp $df
    pop hl
    db $f4
    set 4, b
    rst $18
    cp $e1
    cp a
    ld a, a
    rst $38
    ld e, a
    cp a
    rra
    rst $38
    scf
    rst $08
    dec bc
    rst $30
    rst $38
    ld h, e
    rst $38
    db $d3
    sbc a
    sub e
    sbc a
    ld hl, sp-$79
    rst $38
    ret nc

    cpl
    add b
    ld a, a
    adc h
    ld a, a
    sbc d
    ld [hl], e
    rst $38
    ld d, d
    or e
    adc h
    rst $38
    ldh a, [$ef]
    ld l, l
    di
    rst $38
    ld [bc], a
    db $fd
    ret nz

    ccf
    add b
    ld a, a
    ld [bc], a
    rst $38
    rst $38
    ld d, $ff
    ld bc, $17ff
    rst $38
    add sp, -$09
    rst $38
    pop af
    rst $38
    cp $fe
    rst $38
    cp $f7
    cp $ff
    xor l
    db $fc
    ld b, [hl]
    cp $eb
    rst $38
    scf
    rst $38
    db $fd
    adc a
    ld [bc], a
    and b
    ld a, a
    ld a, a
    ld l, a
    ld a, a
    ld a, $3f
    ei
    ld a, e
    ld a, a
    and c
    ldh [rIE], a
    ld a, [$fcfd]
    ei
    rst $38
    pop hl
    rst $38
    ret nc

    rst $28
    push hl
    rst $18
    jp z, $ffff

    rst $20
    rst $18
    ccf
    rst $38
    rra
    rst $38
    cp a
    rst $38
    ld a, a
    ld d, a
    rst $38
    db $eb
    rst $38
    ld a, a
    rst $38
    db $db
    ret c

    add b
    rst $38
    adc e
    rst $38
    ld b, l
    cp a
    sub a
    ld a, a
    dec hl
    rst $38
    rst $18
    sbc a
    ld a, a
    dec l
    rst $38
    sbc a
    ld [$75e0], a
    rst $38
    or l
    ld a, [$80c2]
    ld a, [hl]
    cp [hl]
    add b
    cp $ff
    ld h, d
    ldh [rIE], a
    rst $20
    push hl
    rst $38
    di
    and b
    pop hl
    sbc h
    ldh [$ee], a
    cp $5e
    ccf
    cp $fb
    rst $38
    rst $30
    rst $38
    rst $08
    and b
    ld [c], a
    db $fc
    db $e3
    nop
    ld sp, $ffa0
    db $ec
    nop
    nop
    nop
    pop bc
    ld d, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    ld [$5b5a], a
    jr c, @-$02

    rst $28
    rst $38
    rst $38
    jp Jump_02c_5ce7


    ld e, l
    ld d, c
    db $fc
    xor $ff
    rst $38
    ld e, $c3
    rst $20
    ld e, [hl]
    ld e, a
    ld e, d
    ld e, e
    db $fc
    db $ed
    call nz, $e2ff
    pop hl
    nop
    jp Jump_02c_7ee4


    rst $38
    ld [$c3f4], sp
    push hl
    ld a, [hl]
    di
    ld a, d
    db $fd
    adc d
    db $e4
    ld a, [hl]
    or $18
    ld a, d
    db $fd
    inc d
    and $fc
    add $54
    ld d, l
    db $f4
    set 0, e
    rst $18
    db $fc
    call nz, Call_02c_541b
    ld d, l
    add d
    ld [c], a
    ld d, [hl]
    ld d, a
    ld a, [hl]
    ld [$f83b], a
    adc d
    db $eb
    inc c
    rst $00
    pop hl
    add d
    pop hl
    ld e, b
    ld e, c
    ld a, [hl]
    jp hl


    dec sp
    ld sp, hl
    add [hl]
    ret


    adc d
    ldh [rP1], a
    rst $00
    pop hl
    add d
    ld [c], a
    ld a, [hl]
    add sp, $3b
    db $f4
    sub d
    and e
    add [hl]
    rst $00
    adc d
    db $e3
    cp e
    db $e3
    add c
    ld d, c
    or a
    ld [c], a
    ld hl, sp-$3d
    dec sp
    jp hl


    adc d
    ret nc

    ld [$8ae6], sp
    db $e4
    ld e, b
    rla
    ld e, c
    ld d, b
    ld c, [hl]
    rst $38
    ldh [$50], a
    ld a, d
    push hl
    dec sp
    ld [$d18a], a
    db $fc
    sbc d
    and d
    adc d
    and $51
    ld d, c
    ld d, b
    ld c, l
    jr z, jr_02c_73bb

    rrca
    jr z, jr_02c_73be

    ld c, l
    ld d, b
    db $fc
    pop bc
    db $76
    ldh [$3b], a
    ld [$f67e], a
    ld a, [de]
    ld [$51e2], sp
    add [hl]
    ldh [rHDMA3], a
    ld c, [hl]
    pop bc
    ld [c], a
    cp a
    pop hl
    ld a, d
    pop bc
    nop
    dec sp

jr_02c_73af:
    db $ed
    adc d
    xor [hl]
    add [hl]
    ret


    add [hl]
    db $e3
    db $fc
    push hl
    ld a, [hl]
    pop hl
    dec sp

jr_02c_73bb:
    xor $00
    di

jr_02c_73be:
    jr jr_02c_73c8

    db $e4
    pop bc
    ld [$e03d], a
    ld c, [hl]
    ld d, e
    dec sp

jr_02c_73c8:
    db $ec
    nop
    db $f4
    jr jr_02c_73af

    nop
    add d
    db $ec
    dec sp
    db $ed
    ld a, d
    or c
    add d
    add sp, -$3f
    di
    dec sp
    add sp, $3f
    rlc h
    rst $00
    inc b
    inc c
    add c
    res 4, d
    ld d, d
    pop bc
    pop af
    cp c
    jp nz, $a4f4

    db $fc
    xor c
    sbc [hl]
    adc l
    cp d
    db $10
    and b
    ld c, a
    push bc
    jp Jump_000_2b2a


    jr nc, @+$01

    pop hl
    dec hl
    add c

jr_02c_73fb:
    ld a, [hl+]
    cp a
    jp hl


    ld hl, sp-$5b
    ldh a, [$66]
    sbc d
    add a
    sbc d
    and e
    jp $2ec5


    dec l
    ld bc, $e6ff
    dec hl
    ld a, [hl+]
    ld [hl], h
    call nz, Call_000_3b4f
    ret nz

    ld hl, sp-$5d
    ldh a, [rPCM12]
    adc c
    sbc d
    add l
    inc d
    and h
    pop bc
    rst $20
    ld b, h

jr_02c_7420:
    ld d, $23
    ld [hl+], a
    daa
    inc hl
    ld d, $17
    or a
    ldh [$7a], a
    db $e4
    ld d, d
    ld hl, sp-$5b
    ld [hl], d
    ld l, d
    add sp, $2c
    add c
    jr @-$59

    db $10
    and b
    ld c, a
    add d
    db $e4
    ld b, h
    ld b, e
    ld b, c
    db $ed
    nop
    rst $38
    ldh [$3b], a
    ld b, $bb
    ldh [$15], a
    inc b
    ld bc, $0123
    ld l, $80
    pop hl
    ld hl, sp-$5d
    ldh a, [rKEY1]
    ld d, b
    sub h
    and b
    jr jr_02c_73fb

    ld l, h
    ld [bc], a
    ld [c], a
    ld b, e
    ldh [rSCY], a
    inc a
    pop bc
    ld [c], a
    nop
    dec sp
    rst $38
    ldh [$6f], a
    jr c, jr_02c_7466

jr_02c_7466:
    inc d
    inc c
    cp a
    pop hl
    ld c, a
    ld d, c
    ccf
    and $a4
    ldh a, [rDMA]
    sbc $81
    ld c, l
    sbc d
    and a
    inc c
    and d
    dec l
    pop bc
    pop hl
    ld c, d
    db $eb
    nop
    jr c, @-$3d

    ld [c], a
    jr c, @+$01

    ldh [rP1], a
    jr c, jr_02c_748c

    add a
    dec e
    ld bc, $fc2f

jr_02c_748c:
    xor h
    ld l, [hl]
    ld b, e
    sbc d
    xor d
    inc c
    and h
    inc l
    scf
    ld bc, $3c3f
    ret nz

    ldh [rP1], a
    jr c, jr_02c_7420

    db $e3
    add hl, sp
    ldh [$1f], a
    jr c, jr_02c_74a3

jr_02c_74a3:
    add hl, bc
    ld bc, $fc2f
    xor e
    ld l, [hl]
    ld b, h
    push de
    or c
    ccf
    cpl
    ld bc, $3c3d
    inc a
    ld a, $c9
    pop hl
    ld b, e
    ld [c], a
    ld b, $7e
    ld [c], a
    jr jr_02c_74d5

    cp $c1
    db $fc
    and e
    db $f4
    ld c, c
    ld b, c
    and $cf
    adc b
    cp a
    cpl
    ld bc, $3c4a
    inc a
    ld b, b
    adc b
    ld [c], a
    ld [hl], $09
    ld [hl], $43
    ldh [$f7], a

jr_02c_74d5:
    jp nz, Jump_000_3f1f

    ldh [$fc], a
    and h
    db $76
    ld c, h
    jp c, Jump_02c_4262

    cp e
    jp hl


    inc l
    add b
    ldh [rSTAT], a
    ldh [$fe], a
    push hl
    ret nz

    push hl
    ld bc, $a5fc
    call nc, Call_000_296e
    ld l, b
    dec h
    ld d, b
    ld a, d
    add sp, $2d
    nop
    ldh [$3e], a
    ld a, [hl-]
    add e
    ld a, [hl-]
    ld a, [hl-]
    ld b, $e2
    pop bc
    pop bc
    scf
    ret nz

    cp a
    jp nz, Jump_02c_60b1

    ld c, a
    ldh [rP1], a
    db $ec
    sbc $21
    rst $08
    ld h, c
    ld a, d
    db $e3
    ld [hl], h
    call nz, Call_02c_4c2f
    inc a
    rra
    ld b, b
    inc sp
    inc sp
    dec [hl]
    dec sp
    cp l
    ret nz

    cp c
    ldh [$b7], a
    ld [c], a
    ld bc, $fe21
    and d
    db $fc
    and e
    ld a, d
    adc c
    xor $21
    and d
    ld h, d
    db $f4
    and l
    inc sp
    pop bc
    and a
    cpl
    ld c, h
    ld a, $08
    pop bc
    cp a
    ldh [$37], a
    ret nz

    ld [c], a
    ld a, [hl-]
    inc sp
    nop
    ld b, $ff
    and b
    inc sp
    ld h, c
    add hl, hl
    ld d, d
    db $fc
    add e
    ldh a, [$08]
    ld [hl], b
    adc d
    add c
    cp l
    push hl
    sla b
    add b
    and c
    inc l
    ld bc, $c820
    and c
    or a
    dec sp
    dec [hl]
    add hl, sp
    ret nz

    db $e3
    ld [de], a
    dec d
    ld a, [hl-]
    and b
    ld l, $40
    pop bc
    pop hl
    cp h
    and b
    db $ec
    ld hl, $096e
    xor d

jr_02c_756f:
    ld [hl+], a
    ld e, a
    ld h, a
    ld d, d
    call Call_02c_6f40
    dec l
    ld bc, $020e
    add a
    and c
    inc [hl]
    add hl, sp
    ccf
    pop hl
    inc bc
    ld b, $22
    add d
    and b
    pop bc
    db $e4
    cp h
    add b
    nop
    res 5, d
    dec h
    inc b
    add e
    ld [$a300], a
    add hl, hl
    cp $a0
    dec e
    cp a
    pop hl
    inc [hl]
    add hl, sp
    ld b, $00
    inc bc
    and b
    cp [hl]
    add c
    ld a, [hl-]
    add l
    or h
    ld b, b
    nop
    db $eb
    ld [hl], e
    add l
    add d
    ld h, [hl]
    ret nz

    add l
    inc bc
    dec e
    dec d
    rst $00
    add c
    add d
    add c
    add e
    db $e4
    ld [hl], l
    ld b, h
    ld l, d
    inc h
    nop
    add a
    jr jr_02c_7624

    daa
    ld c, l
    ld [hl+], a
    dec bc
    ld b, c
    add hl, hl
    add hl, hl
    ld [bc], a
    add a
    cp l
    ld h, d
    jr nz, jr_02c_756f

    nop
    ld a, l
    ld h, b
    dec h
    ld [hl+], a
    ld a, [hl]
    adc d
    jp hl


    ld [$0192], sp
    jp z, $8223

    ld h, [hl]
    ld b, b
    ld l, d
    nop
    jp Jump_02c_7ec4


    xor h
    nop
    ld l, h
    ld c, d
    jr nz, jr_02c_7664

    ld d, e
    ld b, l
    rst $20
    cp c
    dec bc
    nop
    ld c, h
    nop
    ld a, l
    ld d, d
    jp nz, $4541

    jp hl


    ld a, [hl]
    ld l, e
    nop
    ld c, c
    ld [hl], d
    xor d
    ld a, c
    ld h, $08
    push bc
    nop
    sub a
    rlca
    nop
    ld d, l
    ld [hl], d
    xor e
    jr c, jr_02c_762b

    inc b
    ld h, d
    ld b, l
    rst $20
    dec a
    ld a, [bc]
    nop
    ld c, e
    nop
    ld [hl], d
    xor d
    rst $30
    dec b
    ld [$bfc8], sp
    rrca
    nop
    inc l
    ld [hl], d
    xor c
    inc a
    ld b, $d2
    ld b, c
    nop
    jp Jump_02c_7ed2


    ld b, h

jr_02c_7624:
    ld a, [hl]
    daa
    xor l
    ld hl, $c3f8
    ld [hl], d

jr_02c_762b:
    push bc
    ld [$08c2], sp
    xor c
    nop
    cp a
    dec c
    ld a, d
    add hl, bc
    ld h, a
    ld h, d
    ldh a, [$28]
    ld h, [hl]
    add e
    adc d
    xor b
    jp Jump_02c_7ace


    jp z, $b100

    add l
    db $fc
    push hl
    inc hl
    add h
    adc d
    xor b
    jp Jump_02c_76f2


    add a
    ld [hl], d
    xor b
    scf
    db $e4
    nop
    ld c, l
    and e
    jp $c7a0


    adc $7e
    xor $f4
    add a
    sbc [hl]
    ld b, h
    or c
    call nz, $a386
    nop

jr_02c_7664:
    ld b, l
    ret nc

    cp l
    di
    db $f4
    rst $00
    sub d
    inc h
    res 0, h
    ld a, [hl]
    cp $f4
    xor c
    ld h, [hl]
    adc e
    nop
    ld c, l
    and e
    nop
    ei
    db $f4
    xor h
    db $f4
    call $d745
    db $f4
    or d
    db $f4
    call $e57e
    nop
    ret nz

    ei
    ld l, [hl]
    add a
    db $f4
    call z, $ffc3
    ld l, [hl]
    xor h
    db $f4
    rrc b
    db $fd
    db $f4
    call c, Call_000_0800
    cp $f4
    rst $10
    ld hl, sp-$19
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    pop bc
    dec c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    ld [$0e0e], a
    jr nz, @-$02

    rst $28
    rst $38
    rst $38
    jp $c0e7


    rst $38
    jp Jump_000_0efb


    rst $38
    ldh a, [$c4]
    rst $38
    nop
    add e
    and $7e
    rst $38
    ld [$c3f6], sp
    push hl
    ld a, [hl]
    di
    cp d
    db $fd
    adc d
    db $e4
    ld a, [hl]
    or $00
    ret nz

    rst $38
    ld a, [hl]
    ei
    ld a, [hl-]
    db $fc
    ld [$fce7], sp
    push de
    ld a, e
    ld hl, sp-$7a

Jump_02c_76f2:
    bit 7, d
    db $d3
    nop
    ret nz

    cp $7e
    ei
    dec sp
    db $f4
    jp c, $86c3

    call $a7b8
    add d
    db $ed
    inc [hl]
    call $9e14
    db $ec
    inc d
    add sp, $4d
    rst $38
    ldh [$2d], a
    add d
    xor $c0
    rst $28
    ld e, $eb
    cp $56
    add $6d
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld c, l
    dec l
    ld l, b
    add d
    db $ed
    ld [hl], d
    xor a
    ld a, [hl]
    db $ed
    dec c
    add [hl]
    ldh [$0d], a
    ld c, l
    pop bc
    ld [c], a
    nop
    cp a
    pop hl
    add d
    xor $72
    xor e
    sbc h
    ret nc

    push bc
    db $e4
    cp a
    push hl
    add d
    db $ed
    ret nz

    db $ed
    jr jr_02c_775c

    call $eac1
    dec a
    ldh [rKEY1], a
    dec l
    dec sp
    db $ec
    nop
    or $08
    rst $20
    nop
    cp l
    db $ec

jr_02c_7750:
    dec sp
    db $eb
    ret nc

    ld a, b
    pop bc
    ld a, [c]
    dec sp
    db $ed
    inc b
    ret nc

    ld e, $a7

jr_02c_775c:
    pop bc
    pop af
    ld h, b
    cp c
    jp nz, $8a60

    ld d, [hl]
    ld [hl], a
    push bc
    call nz, $e3ff
    dec hl
    dec hl
    cp a
    jp hl


    ld h, b
    ldh [rOCPS], a
    add h
    rst $08
    sbc b
    ld h, d
    ld a, [bc]
    jp nz, $e8ff

    dec hl
    dec hl
    ld [hl], h
    call nz, $b670
    and c
    ld h, b
    ld h, a

jr_02c_7781:
    call nc, $c155
    and $6b
    ld l, e
    ld c, e
    rst $38
    pop hl
    ret nz

    ld a, d
    rst $20
    ld hl, sp-$5a
    ld [hl], d
    ld l, d
    call c, Call_000_0267
    rst $20
    jp nz, Jump_000_2be2

    dec hl
    adc l
    ld l, e
    cp l
    db $e4
    ld c, e
    dec hl
    jr c, jr_02c_7781

    add b
    db $e3
    ld a, [hl]
    or d
    ld l, l
    adc a
    dec c
    ld l, l
    ld l, l
    ld l, l
    jr jr_02c_7750

    ld [bc], a
    ld [c], a
    dec b
    ldh [rWX], a
    ld de, $c20b
    pop hl
    ld a, l
    push hl
    ld a, d
    pop hl
    dec hl
    add b
    ldh [$e4], a
    ld c, e
    ld d, h
    jp nz, $ffa8

    pop hl
    sbc d
    and a
    inc c
    and d
    ld l, e
    pop bc
    ldh [rWX], a
    add d
    ldh [$2b], a
    inc bc
    dec hl
    dec hl
    add c
    db $e3
    ld [hl], l
    ldh [$39], a
    pop hl
    scf
    xor e
    sub d
    and $59
    and [hl]
    ld c, c
    ld l, l
    ld a, b
    pop hl
    call Call_02c_6b80
    add d
    ldh [$88], a
    ret nz

    dec hl
    nop
    db $e3
    jr nz, jr_02c_7867

    pop hl
    ret nz

    ld [c], a
    scf
    xor e
    ld l, [hl]
    ld b, h
    push de
    or c
    dec hl
    ret nz

    db $e3
    ld [bc], a
    db $e4
    jr nz, jr_02c_7878

    ldh [$b5], a
    ld [c], a
    cp $c1
    db $fc
    and a
    xor $25
    dec l
    rst $38
    ldh [rHDMA3], a
    xor l
    nop
    jp nc, $ffc0

    ret nz

    nop
    ld [c], a
    ret nz

    ld [c], a
    ld hl, sp-$3d
    ldh a, [$a0]
    db $fc
    and a
    ldh a, [$29]
    nop
    db $e3
    add b
    cp e
    db $eb
    ret nz

    pop hl
    inc bc
    pop hl
    cp [hl]
    jp $e3c0


    dec l
    pop hl
    db $fc
    and a
    inc b
    ld [hl], h

jr_02c_7830:
    ld b, a
    xor b
    dec h
    ld c, l
    ld a, d
    add sp, -$80
    pop hl
    add $c1
    rlca
    ld [c], a
    cp c
    push hl
    nop
    ld [hl], c
    and c
    db $fc
    and l
    db $f4
    jr z, jr_02c_7830

    ld h, $7a
    db $e3
    inc sp
    db $e3
    adc [hl]
    and b
    rst $00
    push bc
    inc b
    cp l
    push bc
    cp $a0
    ld l, e
    add b
    push af
    db $ed
    ld c, c
    ld a, b
    ld [c], a
    call $c1c2
    and d
    inc b
    ccf
    push bc
    add d
    db $e4
    dec bc
    inc a
    and b

jr_02c_7867:
    db $76
    dec l
    ld a, [bc]
    ld l, l
    cp a
    jp $c38a


    inc b
    rst $38
    and h
    ld b, e
    ld [c], a
    ld l, e
    xor l
    add c
    inc a

jr_02c_7878:
    and d
    ld [hl], h
    dec hl
    adc [hl]
    dec c
    ccf
    jp nz, $0700

    db $e3
    ld a, $a1
    rst $38
    add h
    pop bc
    db $e4
    inc a
    and e
    nop
    ld [$2c88], a
    ld [bc], a
    add b
    ld l, b
    ld c, e
    add b
    dec a
    push hl
    ld a, b
    add l
    ld l, e
    inc bc
    ld [c], a
    ld a, [bc]
    dec bc
    dec d
    and b
    ldh [$80], a
    adc $2c
    xor h
    ld c, h
    ld b, c
    add b
    and d
    inc a
    adc b
    ld l, e
    ld c, e
    ld a, [bc]
    dec sp
    dec bc
    ld a, [hl+]
    pop bc
    ld [c], a
    ld c, l
    ld c, $0e
    db $fd
    ldh [rPCM12], a
    rlca
    ldh [rNR21], a
    dec l
    ld a, [c]
    and b
    inc bc
    adc d
    ld [hl], a
    jp $e384


    dec l
    dec l
    ld l, l
    ld bc, $394d
    jr nc, @+$2e

    xor h
    cp a
    pop hl
    ld a, [hl]
    ldh [$c6], a
    add h
    push bc
    db $e3
    ld b, l
    db $e4
    ld bc, $820d
    ldh [$b9], a
    db $10
    add b
    ld l, h
    ld [hl], b
    and c
    ld a, a
    ld c, a
    ld b, $e2
    ld a, h
    inc sp
    nop
    db $fc
    ld c, l
    ld a, h
    push hl
    pop bc
    db $eb
    ld b, l
    db $eb
    ld a, [hl]
    ld l, e
    cp $2e
    ld [hl], d
    and l
    ld a, c
    ld h, $00
    ld [$7ca5], sp
    inc de
    ld a, [hl]
    cpl
    and [hl]
    add e
    ld a, b
    rst $20
    ld a, d
    rrca
    add b
    ld hl, sp-$26
    ld h, [hl]
    nop
    cp a
    and $08
    ret z

    cp a
    rrca
    nop
    ld l, $c0
    add sp, $72
    jp $e102


    ld e, [hl]
    ld a, [bc]
    nop
    ret nz

    ldh a, [$82]
    db $eb
    add sp, $25
    push bc
    ld bc, $c208
    sbc $ec
    rst $38
    rst $28
    add d
    rst $28
    nop
    ld a, $e2
    ld a, e
    ld [c], a
    adc l
    and c
    ldh [$d0], a
    ld a, d
    db $10
    ld [hl], d
    xor e
    ld h, [hl]
    add [hl]
    adc b
    ld c, [hl]
    nop
    db $fc
    pop af
    add d
    rst $28
    ld c, a
    dec hl
    rst $00
    adc $c0
    pop af
    add d
    ldh a, [$5c]
    adc a
    cp l
    db $fc
    nop
    db $f4
    pop de
    ld a, [hl]
    rst $38
    ld [hl], b
    ld c, $66
    adc h
    ld b, $31
    ld a, d
    push de
    db $f4
    reti


    rst $38
    ld a, [$7600]
    ld [$cc76], sp
    jp c, $ff47

    rst $38
    db $76
    ld [bc], a
    inc d
    inc l
    jp $c0ff


    db $ec
    nop
    ld l, b
    sub c
    rst $38
    rst $38
    add sp, -$69
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc h
    call c, $0000
    nop
    add c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    ldh [rIF], a
    nop
    rst $38
    ldh [$e3], a
    ld a, [$f8df]
    call nz, $bde5
    db $f4
    and a
    rst $20
    sbc h
    ld a, [c]
    adc b
    ld [$7b00], a
    rst $28
    ld l, b
    db $ec
    or e
    ld [$e14c], a
    ld c, c
    db $ec
    ldh [$ed], a
    add hl, hl
    db $ed
    ld [hl], e
    jp hl


    nop
    adc a
    ld a, [c]
    ld sp, hl
    add $f0
    push de
    ret c

    push bc
    adc $d5
    ldh [$e9], a
    xor d
    pop de
    sbc b
    ret


    nop
    xor d
    pop de
    cpl
    or $e0
    push af
    ldh [$cc], a
    cpl
    rst $28
    ld h, $c8
    ld a, [de]
    pop de
    inc h
    ret z

    nop
    db $fc
    or h
    inc bc
    add $dc
    cp [hl]
    sbc [hl]
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
    rst $38
    rst $38
    ld a, [$0000]
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
    db $f4
    di
    pop af
    rst $38
    and $e0
    rst $38
    or d
    db $eb
    ld bc, $e013
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [$f8], a
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

Jump_02c_7ace:
    nop
    nop
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
    ld bc, $405e
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    cp $fe
    jr nz, jr_02c_7b03

    jr jr_02c_7b73

jr_02c_7b03:
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

jr_02c_7b1f:
    inc b
    ld a, [de]
    inc de
    cp $fe
    jr z, jr_02c_7b5b

    cp $ff
    jr nz, jr_02c_7b1f

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
    jr nz, jr_02c_7b1f

jr_02c_7b5b:
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
    ld hl, $7b87
    call Call_000_23e8
    add sp, $02

jr_02c_7b73:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld hl, $7b87
    call Call_000_2449
    pop hl
    pop de
    pop bc
    pop af
    ret


    rst $30
    add b
    inc bc
    jr nz, jr_02c_7b90

    rst $30
    nop
    inc bc
    ret nz

jr_02c_7b90:
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

jr_02c_7ba2:
    ld a, [hl]
    cp $ff
    jr z, jr_02c_7bc4

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
    jr nz, jr_02c_7ba2

    ld a, b
    call Call_02c_7bce
    ld a, c
    cp $04
    jr nz, jr_02c_7ba2

jr_02c_7bc4:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_02c_7bce:
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

jr_02c_7be4:
    ld a, [$c32f]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $405e
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
    jr nz, jr_02c_7c0d

    ld hl, sp+$00
    ld c, [hl]
    ld b, $00
    ld hl, $c338
    add hl, bc
    ld a, [hl]
    ld [$c33c], a
    jr jr_02c_7be4

jr_02c_7c0d:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02c_7ec4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02c_7ed2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02c_7ee4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_02c_7f93:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_02c_7fff:
    rst $38
